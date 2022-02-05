; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $03a", ROMX[$4000], BANK[$3a]

	inc [hl]                                         ; $4000: $34
	add d                                            ; $4001: $82
	sbc [hl]                                         ; $4002: $9e
	ldh [c], a                                       ; $4003: $e2
	db $dd                                           ; $4004: $dd
	ld [bc], a                                       ; $4005: $02
	sbc $e2                                          ; $4006: $de $e2
	sbc [hl]                                         ; $4008: $9e
	rra                                              ; $4009: $1f
	jp c, $d9ff                                      ; $400a: $da $ff $d9

	db $fd                                           ; $400d: $fd
	reti                                             ; $400e: $d9


	inc bc                                           ; $400f: $03
	reti                                             ; $4010: $d9


	ld d, a                                          ; $4011: $57
	db $dd                                           ; $4012: $dd
	xor b                                            ; $4013: $a8
	sbc [hl]                                         ; $4014: $9e
	xor d                                            ; $4015: $aa
	sbc $ba                                          ; $4016: $de $ba
	db $dd                                           ; $4018: $dd
	rst $38                                          ; $4019: $ff
	sbc e                                            ; $401a: $9b
	db $fc                                           ; $401b: $fc
	ccf                                              ; $401c: $3f
	ld a, a                                          ; $401d: $7f
	rst $38                                          ; $401e: $ff
	ld sp, hl                                        ; $401f: $f9
	sbc $ff                                          ; $4020: $de $ff
	sbc d                                            ; $4022: $9a
	rlca                                             ; $4023: $07
	ld [hl], b                                       ; $4024: $70
	rst $38                                          ; $4025: $ff
	rst $38                                          ; $4026: $ff
	cp $5b                                           ; $4027: $fe $5b
	ldh a, [$9a]                                     ; $4029: $f0 $9a
	rst $38                                          ; $402b: $ff
	pop af                                           ; $402c: $f1
	db $fd                                           ; $402d: $fd
	rst $38                                          ; $402e: $ff
	rst SubAFromDE                                          ; $402f: $df
	ld e, e                                          ; $4030: $5b
	ldh a, [$9a]                                     ; $4031: $f0 $9a
	ldh a, [$c0]                                     ; $4033: $f0 $c0
	call nc, $08ff                                   ; $4035: $d4 $ff $08
	ld e, e                                          ; $4038: $5b
	ldh a, [$9a]                                     ; $4039: $f0 $9a
	ld de, $1e00                                     ; $403b: $11 $00 $1e
	and e                                            ; $403e: $a3
	jr @-$05                                         ; $403f: $18 $f9

	sbc [hl]                                         ; $4041: $9e
	ld hl, sp-$22                                    ; $4042: $f8 $de
	ei                                               ; $4044: $fb
	sbc d                                            ; $4045: $9a
	dec sp                                           ; $4046: $3b
	db $db                                           ; $4047: $db
	ei                                               ; $4048: $fb
	dec de                                           ; $4049: $1b
	rra                                              ; $404a: $1f
	jp c, $dc1c                                      ; $404b: $da $1c $dc

	rst $38                                          ; $404e: $ff
	sbc h                                            ; $404f: $9c
	cp $fb                                           ; $4050: $fe $fb
	rst AddAOntoHL                                          ; $4052: $ef
	db $fc                                           ; $4053: $fc
	sbc h                                            ; $4054: $9c
	ld bc, $1f07                                     ; $4055: $01 $07 $1f
	ld [hl], a                                       ; $4058: $77
	db $f4                                           ; $4059: $f4
	sbc e                                            ; $405a: $9b
	cp [hl]                                          ; $405b: $be
	ld hl, sp-$20                                    ; $405c: $f8 $e0
	add b                                            ; $405e: $80
	ld [hl], a                                       ; $405f: $77
	db $f4                                           ; $4060: $f4
	ld a, a                                          ; $4061: $7f
	adc d                                            ; $4062: $8a
	rst SubAFromDE                                          ; $4063: $df
	rst $38                                          ; $4064: $ff
	ld [hl], e                                       ; $4065: $73
	db $f4                                           ; $4066: $f4
	cp $77                                           ; $4067: $fe $77
	db $f4                                           ; $4069: $f4
	db $dd                                           ; $406a: $dd
	rst $38                                          ; $406b: $ff
	sbc l                                            ; $406c: $9d
	rrca                                             ; $406d: $0f
	inc bc                                           ; $406e: $03
	ld e, a                                          ; $406f: $5f
	adc b                                            ; $4070: $88
	sbc $ff                                          ; $4071: $de $ff
	sbc d                                            ; $4073: $9a
	rra                                              ; $4074: $1f
	cp a                                             ; $4075: $bf
	rst AddAOntoHL                                          ; $4076: $ef
	ei                                               ; $4077: $fb
	ld a, $77                                        ; $4078: $3e $77
	db $ec                                           ; $407a: $ec
	sbc h                                            ; $407b: $9c
	ret nz                                           ; $407c: $c0

	ldh a, [$fc]                                     ; $407d: $f0 $fc
	call c, $deff                                    ; $407f: $dc $ff $de
	call $ed9d                                       ; $4082: $cd $9d $ed
	db $ec                                           ; $4085: $ec
	sbc $ee                                          ; $4086: $de $ee
	sbc [hl]                                         ; $4088: $9e
	or a                                             ; $4089: $b7
	sbc $b3                                          ; $408a: $de $b3
	sbc $93                                          ; $408c: $de $93
	sbc h                                            ; $408e: $9c
	sbc e                                            ; $408f: $9b
	rst SubAFromBC                                          ; $4090: $e7
	rst SubAFromBC                                          ; $4091: $e7
	call c, $9cc7                                    ; $4092: $dc $c7 $9c
	add a                                            ; $4095: $87
	rra                                              ; $4096: $1f
	rra                                              ; $4097: $1f
	call c, $9e3f                                    ; $4098: $dc $3f $9e
	ld a, a                                          ; $409b: $7f
	db $dd                                           ; $409c: $dd
	call $cfdd                                       ; $409d: $cd $dd $cf
	reti                                             ; $40a0: $d9


	ld a, a                                          ; $40a1: $7f
	add b                                            ; $40a2: $80
	cp l                                             ; $40a3: $bd
	db $fd                                           ; $40a4: $fd
	cp l                                             ; $40a5: $bd
	db $fd                                           ; $40a6: $fd
	rst $38                                          ; $40a7: $ff
	cp $fe                                           ; $40a8: $fe $fe
	db $fc                                           ; $40aa: $fc
	ld l, b                                          ; $40ab: $68
	ld l, b                                          ; $40ac: $68
	ld l, c                                          ; $40ad: $69
	ld l, e                                          ; $40ae: $6b
	jp hl                                            ; $40af: $e9


	ld [$fcfe], a                                    ; $40b0: $ea $fe $fc
	rst $38                                          ; $40b3: $ff
	rst SubAFromBC                                          ; $40b4: $e7
	db $db                                           ; $40b5: $db
	xor b                                            ; $40b6: $a8
	ld d, a                                          ; $40b7: $57
	inc l                                            ; $40b8: $2c
	ld e, c                                          ; $40b9: $59
	or b                                             ; $40ba: $b0
	cp a                                             ; $40bb: $bf
	ldh [$c0], a                                     ; $40bc: $e0 $c0
	sub a                                            ; $40be: $97
	cpl                                              ; $40bf: $2f
	ld e, a                                          ; $40c0: $5f
	cp h                                             ; $40c1: $bc
	sbc [hl]                                         ; $40c2: $9e
	ld a, h                                          ; $40c3: $7c
	sbc $ff                                          ; $40c4: $de $ff
	ld a, a                                          ; $40c6: $7f
	sub h                                            ; $40c7: $94
	ld [hl], e                                       ; $40c8: $73
	cp $77                                           ; $40c9: $fe $77
	adc l                                            ; $40cb: $8d
	rst $38                                          ; $40cc: $ff
	sbc $e2                                          ; $40cd: $de $e2
	sub l                                            ; $40cf: $95
	ld h, d                                          ; $40d0: $62
	and d                                            ; $40d1: $a2
	ldh [c], a                                       ; $40d2: $e2
	ld h, d                                          ; $40d3: $62
	ldh [c], a                                       ; $40d4: $e2
	rst $38                                          ; $40d5: $ff
	rst $38                                          ; $40d6: $ff
	cp a                                             ; $40d7: $bf
	cp a                                             ; $40d8: $bf
	ld a, a                                          ; $40d9: $7f
	ld a, e                                          ; $40da: $7b
	ld l, e                                          ; $40db: $6b
	call c, $9cfd                                    ; $40dc: $dc $fd $9c
	db $dd                                           ; $40df: $dd
	call Call_03a_62cd                               ; $40e0: $cd $cd $62
	ret nz                                           ; $40e3: $c0

	sbc $5f                                          ; $40e4: $de $5f
	adc e                                            ; $40e6: $8b
	ld b, e                                          ; $40e7: $43
	ld d, a                                          ; $40e8: $57
	ld [hl], a                                       ; $40e9: $77
	scf                                              ; $40ea: $37
	xor d                                            ; $40eb: $aa
	or b                                             ; $40ec: $b0
	and d                                            ; $40ed: $a2
	or b                                             ; $40ee: $b0
	cp h                                             ; $40ef: $bc
	xor b                                            ; $40f0: $a8
	sbc b                                            ; $40f1: $98
	ret                                              ; $40f2: $c9


	ld a, a                                          ; $40f3: $7f
	rra                                              ; $40f4: $1f
	ld b, $ff                                        ; $40f5: $06 $ff
	ld hl, sp+$40                                    ; $40f7: $f8 $40
	inc e                                            ; $40f9: $1c
	ccf                                              ; $40fa: $3f
	ld h, e                                          ; $40fb: $63
	nop                                              ; $40fc: $00
	sbc b                                            ; $40fd: $98
	jr nc, @-$7e                                     ; $40fe: $30 $80

	ret nz                                           ; $4100: $c0

	db $fc                                           ; $4101: $fc
	nop                                              ; $4102: $00
	nop                                              ; $4103: $00
	ldh [$f3], a                                     ; $4104: $e0 $f3
	sbc l                                            ; $4106: $9d
	sub b                                            ; $4107: $90

jr_03a_4108:
	jr nz, jr_03a_4108                               ; $4108: $20 $fe

	sbc e                                            ; $410a: $9b
	jr jr_03a_414b                                   ; $410b: $18 $3e

	ld a, a                                          ; $410d: $7f
	ld l, a                                          ; $410e: $6f
	ld [hl], d                                       ; $410f: $72
	cp b                                             ; $4110: $b8
	sbc e                                            ; $4111: $9b
	add b                                            ; $4112: $80
	ld h, b                                          ; $4113: $60
	ld d, b                                          ; $4114: $50
	ld hl, sp-$04                                    ; $4115: $f8 $fc
	sbc e                                            ; $4117: $9b
	add b                                            ; $4118: $80
	and b                                            ; $4119: $a0
	nop                                              ; $411a: $00
	ld [bc], a                                       ; $411b: $02
	db $fc                                           ; $411c: $fc
	sbc l                                            ; $411d: $9d
	inc bc                                           ; $411e: $03
	rrca                                             ; $411f: $0f
	ld h, [hl]                                       ; $4120: $66
	ldh [hDisp1_OBP1], a                                     ; $4121: $e0 $94
	dec de                                           ; $4123: $1b
	ld a, [de]                                       ; $4124: $1a
	dec de                                           ; $4125: $1b
	dec de                                           ; $4126: $1b
	ld a, [hl-]                                      ; $4127: $3a
	ld hl, sp-$08                                    ; $4128: $f8 $f8
	sbc b                                            ; $412a: $98
	inc e                                            ; $412b: $1c
	dec e                                            ; $412c: $1d
	rra                                              ; $412d: $1f
	ld [hl-], a                                      ; $412e: $32
	ldh [rRP], a                                     ; $412f: $e0 $56
	ld l, b                                          ; $4131: $68
	sbc h                                            ; $4132: $9c
	db $fc                                           ; $4133: $fc
	ldh a, [$c0]                                     ; $4134: $f0 $c0
	ld hl, sp+$57                                    ; $4136: $f8 $57
	db $f4                                           ; $4138: $f4
	db $fd                                           ; $4139: $fd
	sbc l                                            ; $413a: $9d
	rlca                                             ; $413b: $07
	ld bc, $dff3                                     ; $413c: $01 $f3 $df
	rst $38                                          ; $413f: $ff
	ld a, a                                          ; $4140: $7f
	ld d, [hl]                                       ; $4141: $56
	ld [hl], a                                       ; $4142: $77
	db $ec                                           ; $4143: $ec
	sbc $e6                                          ; $4144: $de $e6
	adc d                                            ; $4146: $8a
	or $70                                           ; $4147: $f6 $70
	ld [hl], e                                       ; $4149: $73
	rrca                                             ; $414a: $0f

jr_03a_414b:
	ld a, a                                          ; $414b: $7f
	sbc e                                            ; $414c: $9b
	sbc e                                            ; $414d: $9b
	db $db                                           ; $414e: $db
	db $eb                                           ; $414f: $eb
	ld l, a                                          ; $4150: $6f
	inc a                                            ; $4151: $3c
	inc sp                                           ; $4152: $33
	ld c, h                                          ; $4153: $4c
	add a                                            ; $4154: $87
	add a                                            ; $4155: $87
	add e                                            ; $4156: $83
	inc sp                                           ; $4157: $33
	di                                               ; $4158: $f3
	di                                               ; $4159: $f3
	rst JumpTable                                          ; $415a: $c7
	add a                                            ; $415b: $87
	sbc $7f                                          ; $415c: $de $7f
	sub a                                            ; $415e: $97
	rst GetHLinHL                                          ; $415f: $cf
	rrca                                             ; $4160: $0f
	rrca                                             ; $4161: $0f
	ccf                                              ; $4162: $3f
	ld a, a                                          ; $4163: $7f
	rst GetHLinHL                                          ; $4164: $cf
	ret z                                            ; $4165: $c8

	adc $de                                          ; $4166: $ce $de
	rst GetHLinHL                                          ; $4168: $cf
	sbc d                                            ; $4169: $9a
	ret nz                                           ; $416a: $c0

	rst GetHLinHL                                          ; $416b: $cf
	ld a, a                                          ; $416c: $7f
	ld [hl], a                                       ; $416d: $77
	ld [hl], c                                       ; $416e: $71
	sbc $70                                          ; $416f: $de $70
	rst SubAFromDE                                          ; $4171: $df
	ld a, a                                          ; $4172: $7f
	adc h                                            ; $4173: $8c
	db $fd                                           ; $4174: $fd
	ld a, [bc]                                       ; $4175: $0a
	ld a, [bc]                                       ; $4176: $0a
	sub h                                            ; $4177: $94
	call nc, $29a8                                   ; $4178: $d4 $a8 $29
	pop de                                           ; $417b: $d1
	db $fc                                           ; $417c: $fc
	ld sp, hl                                        ; $417d: $f9
	ld sp, hl                                        ; $417e: $f9
	ld [hl], e                                       ; $417f: $73
	inc sp                                           ; $4180: $33
	ld h, a                                          ; $4181: $67
	rst SubAFromBC                                          ; $4182: $e7

Jump_03a_4183:
	rst GetHLinHL                                          ; $4183: $cf
	cp a                                             ; $4184: $bf
	nop                                              ; $4185: $00
	ld b, b                                          ; $4186: $40
	ld a, e                                          ; $4187: $7b
	ld [hl], l                                       ; $4188: $75
	ld a, a                                          ; $4189: $7f
	or c                                             ; $418a: $b1
	ld a, e                                          ; $418b: $7b
	ei                                               ; $418c: $fb
	sbc h                                            ; $418d: $9c
	ret nz                                           ; $418e: $c0

	add b                                            ; $418f: $80
	add b                                            ; $4190: $80
	ld [hl], e                                       ; $4191: $73
	ld l, a                                          ; $4192: $6f
	ld [hl], d                                       ; $4193: $72
	cp l                                             ; $4194: $bd
	ld l, a                                          ; $4195: $6f
	ld h, l                                          ; $4196: $65
	rst SubAFromDE                                          ; $4197: $df
	rst $38                                          ; $4198: $ff
	sbc $e2                                          ; $4199: $de $e2
	call c, $d9e0                                    ; $419b: $dc $e0 $d9
	rst $38                                          ; $419e: $ff
	rst SubAFromDE                                          ; $419f: $df
	call $8ddc                                       ; $41a0: $cd $dc $8d
	ld a, d                                          ; $41a3: $7a
	ret nz                                           ; $41a4: $c0

	db $db                                           ; $41a5: $db
	ld b, e                                          ; $41a6: $43
	adc a                                            ; $41a7: $8f
	dec sp                                           ; $41a8: $3b
	rra                                              ; $41a9: $1f
	ld c, $46                                        ; $41aa: $0e $46
	ld b, [hl]                                       ; $41ac: $46
	ld d, d                                          ; $41ad: $52
	ld d, b                                          ; $41ae: $50
	ld d, h                                          ; $41af: $54
	call z, $f0e4                                    ; $41b0: $cc $e4 $f0
	cp b                                             ; $41b3: $b8
	ld hl, sp-$04                                    ; $41b4: $f8 $fc
	xor $ee                                          ; $41b6: $ee $ee
	pop af                                           ; $41b8: $f1
	add b                                            ; $41b9: $80
	inc b                                            ; $41ba: $04
	ld bc, $2310                                     ; $41bb: $01 $10 $23
	nop                                              ; $41be: $00
	jr nz, jr_03a_41c1                               ; $41bf: $20 $00

jr_03a_41c1:
	add b                                            ; $41c1: $80
	dec de                                           ; $41c2: $1b
	ld a, $2f                                        ; $41c3: $3e $2f
	ld e, h                                          ; $41c5: $5c
	rst $38                                          ; $41c6: $ff
	rst SubAFromDE                                          ; $41c7: $df
	rst $38                                          ; $41c8: $ff
	ld a, a                                          ; $41c9: $7f
	ld [de], a                                       ; $41ca: $12
	add c                                            ; $41cb: $81
	stop                                             ; $41cc: $10 $00
	ld a, [bc]                                       ; $41ce: $0a
	nop                                              ; $41cf: $00
	add hl, bc                                       ; $41d0: $09
	dec b                                            ; $41d1: $05
	db $ed                                           ; $41d2: $ed
	ld a, [hl]                                       ; $41d3: $7e
	rst AddAOntoHL                                          ; $41d4: $ef
	rst $38                                          ; $41d5: $ff
	push af                                          ; $41d6: $f5
	rst $38                                          ; $41d7: $ff
	or $9d                                           ; $41d8: $f6 $9d
	ld a, [$7a08]                                    ; $41da: $fa $08 $7a
	adc $91                                          ; $41dd: $ce $91
	db $10                                           ; $41df: $10
	ld [bc], a                                       ; $41e0: $02
	inc h                                            ; $41e1: $24
	ld b, b                                          ; $41e2: $40
	db $f4                                           ; $41e3: $f4
	db $fc                                           ; $41e4: $fc
	db $fc                                           ; $41e5: $fc
	cp $ef                                           ; $41e6: $fe $ef
	db $fd                                           ; $41e8: $fd
	db $db                                           ; $41e9: $db
	cp a                                             ; $41ea: $bf
	ld a, $f8                                        ; $41eb: $3e $f8
	ld l, [hl]                                       ; $41ed: $6e
	sub l                                            ; $41ee: $95
	ld a, e                                          ; $41ef: $7b
	ld [hl], b                                       ; $41f0: $70
	call c, $d97f                                    ; $41f1: $dc $7f $d9
	jr @+$74                                         ; $41f4: $18 $72

	ldh [$9c], a                                     ; $41f6: $e0 $9c
	db $fc                                           ; $41f8: $fc
	call c, $fa1c                                    ; $41f9: $dc $1c $fa
	sbc [hl]                                         ; $41fc: $9e
	inc bc                                           ; $41fd: $03
	ld c, d                                          ; $41fe: $4a
	ldh [$62], a                                     ; $41ff: $e0 $62
	cp b                                             ; $4201: $b8
	inc bc                                           ; $4202: $03
	ldh a, [rWX]                                     ; $4203: $f0 $4b
	ldh a, [$8e]                                     ; $4205: $f0 $8e
	ld a, [hl]                                       ; $4207: $7e
	ld a, b                                          ; $4208: $78
	ld h, b                                          ; $4209: $60
	ld h, d                                          ; $420a: $62
	dec sp                                           ; $420b: $3b
	ld a, e                                          ; $420c: $7b
	ld a, e                                          ; $420d: $7b
	ei                                               ; $420e: $fb
	ld [hl], c                                       ; $420f: $71
	ld h, a                                          ; $4210: $67
	ld a, a                                          ; $4211: $7f
	ld e, l                                          ; $4212: $5d
	dec b                                            ; $4213: $05
	ld b, l                                          ; $4214: $45
	ld d, l                                          ; $4215: $55
	push de                                          ; $4216: $d5
	rlca                                             ; $4217: $07
	jp c, Jump_03a_7f27                              ; $4218: $da $27 $7f

	ld d, h                                          ; $421b: $54
	db $db                                           ; $421c: $db
	rst SubAFromDE                                          ; $421d: $df
	rst SubAFromDE                                          ; $421e: $df
	call z, $cfdb                                    ; $421f: $cc $db $cf
	reti                                             ; $4222: $d9


	ld a, a                                          ; $4223: $7f
	sbc [hl]                                         ; $4224: $9e
	ld h, e                                          ; $4225: $63
	ld a, e                                          ; $4226: $7b
	ld h, a                                          ; $4227: $67
	sbc [hl]                                         ; $4228: $9e
	cp $7b                                           ; $4229: $fe $7b
	add h                                            ; $422b: $84
	ld a, a                                          ; $422c: $7f
	dec [hl]                                         ; $422d: $35
	rst SubAFromHL                                          ; $422e: $d7
	rst $38                                          ; $422f: $ff
	ld e, c                                          ; $4230: $59
	jr nz, jr_03a_4276                               ; $4231: $20 $43

	ldh a, [rAUD2HIGH]                               ; $4233: $f0 $19
	nop                                              ; $4235: $00
	sbc l                                            ; $4236: $9d
	inc sp                                           ; $4237: $33
	ld b, l                                          ; $4238: $45
	call c, $9955                                    ; $4239: $dc $55 $99
	ld b, h                                          ; $423c: $44
	dec [hl]                                         ; $423d: $35
	inc sp                                           ; $423e: $33
	inc sp                                           ; $423f: $33
	ld b, l                                          ; $4240: $45
	ld d, h                                          ; $4241: $54
	ld [hl], e                                       ; $4242: $73
	or $de                                           ; $4243: $f6 $de
	inc sp                                           ; $4245: $33
	sbc l                                            ; $4246: $9d
	ld b, l                                          ; $4247: $45
	ld b, h                                          ; $4248: $44
	ld [hl], a                                       ; $4249: $77
	ld [$f67b], a                                    ; $424a: $ea $7b $f6
	db $dd                                           ; $424d: $dd
	add h                                            ; $424e: $84
	reti                                             ; $424f: $d9


	ldh [$d9], a                                     ; $4250: $e0 $d9
	rst $38                                          ; $4252: $ff
	rst SubAFromDE                                          ; $4253: $df
	call $ed9d                                       ; $4254: $cd $9d $ed
	db $dd                                           ; $4257: $dd
	db $dd                                           ; $4258: $dd
	db $fd                                           ; $4259: $fd
	sbc e                                            ; $425a: $9b
	ld b, e                                          ; $425b: $43
	ld d, e                                          ; $425c: $53
	ld [hl], e                                       ; $425d: $73
	ld h, e                                          ; $425e: $63
	db $dd                                           ; $425f: $dd
	inc bc                                           ; $4260: $03
	db $dd                                           ; $4261: $dd
	ld d, l                                          ; $4262: $55
	db $dd                                           ; $4263: $dd
	ld d, a                                          ; $4264: $57
	db $dd                                           ; $4265: $dd
	ld a, [$f8de]                                    ; $4266: $fa $de $f8
	sbc e                                            ; $4269: $9b
	ld a, [rRAMG]                                    ; $426a: $fa $00 $00
	ld bc, $fe7b                                     ; $426d: $01 $7b $fe
	sbc l                                            ; $4270: $9d
	nop                                              ; $4271: $00
	ld [bc], a                                       ; $4272: $02
	ld [hl], a                                       ; $4273: $77
	ld sp, hl                                        ; $4274: $f9
	add b                                            ; $4275: $80

jr_03a_4276:
	ld [bc], a                                       ; $4276: $02
	inc bc                                           ; $4277: $03
	rlca                                             ; $4278: $07
	dec b                                            ; $4279: $05

Jump_03a_427a:
	nop                                              ; $427a: $00
	nop                                              ; $427b: $00
	add [hl]                                         ; $427c: $86
	ld b, b                                          ; $427d: $40
	nop                                              ; $427e: $00
	dec d                                            ; $427f: $15
	add [hl]                                         ; $4280: $86
	ld hl, rIE                                     ; $4281: $21 $ff $ff
	ld a, c                                          ; $4284: $79
	cp a                                             ; $4285: $bf
	rst $38                                          ; $4286: $ff
	ld [$ce69], a                                    ; $4287: $ea $69 $ce
	ld [bc], a                                       ; $428a: $02
	ld [bc], a                                       ; $428b: $02
	nop                                              ; $428c: $00
	inc b                                            ; $428d: $04
	ld d, b                                          ; $428e: $50
	ld b, b                                          ; $428f: $40
	ld [$fd00], sp                                   ; $4290: $08 $00 $fd
	db $fd                                           ; $4293: $fd
	rst $38                                          ; $4294: $ff
	sub [hl]                                         ; $4295: $96
	ei                                               ; $4296: $fb
	xor a                                            ; $4297: $af
	cp a                                             ; $4298: $bf
	rst FarCall                                          ; $4299: $f7
	rst $38                                          ; $429a: $ff
	ld bc, $5040                                     ; $429b: $01 $40 $50
	ld h, b                                          ; $429e: $60
	db $fd                                           ; $429f: $fd
	sbc e                                            ; $42a0: $9b
	cp $bf                                           ; $42a1: $fe $bf
	xor a                                            ; $42a3: $af
	sbc a                                            ; $42a4: $9f
	db $dd                                           ; $42a5: $dd
	rst $38                                          ; $42a6: $ff
	ld sp, hl                                        ; $42a7: $f9
	sbc l                                            ; $42a8: $9d
	ld a, h                                          ; $42a9: $7c
	ld [hl], b                                       ; $42aa: $70
	db $db                                           ; $42ab: $db
	ld b, b                                          ; $42ac: $40
	reti                                             ; $42ad: $d9


	jr @-$25                                         ; $42ae: $18 $d9

	inc e                                            ; $42b0: $1c
	reti                                             ; $42b1: $d9


	inc bc                                           ; $42b2: $03
	reti                                             ; $42b3: $d9


	ld bc, $ffdf                                     ; $42b4: $01 $df $ff
	add a                                            ; $42b7: $87
	rra                                              ; $42b8: $1f
	jr nz, jr_03a_42db                               ; $42b9: $20 $20

	nop                                              ; $42bb: $00
	ld [bc], a                                       ; $42bc: $02
	ld [bc], a                                       ; $42bd: $02
	rst $38                                          ; $42be: $ff
	rst $38                                          ; $42bf: $ff
	ldh [$df], a                                     ; $42c0: $e0 $df
	rst SubAFromDE                                          ; $42c2: $df
	rst $38                                          ; $42c3: $ff
	db $fd                                           ; $42c4: $fd
	cp l                                             ; $42c5: $bd
	rst $38                                          ; $42c6: $ff
	rst $38                                          ; $42c7: $ff
	ld a, a                                          ; $42c8: $7f
	ld [hl], b                                       ; $42c9: $70
	ld a, [hl]                                       ; $42ca: $7e
	ld a, [hl]                                       ; $42cb: $7e
	ld a, l                                          ; $42cc: $7d
	ld a, e                                          ; $42cd: $7b
	rst $38                                          ; $42ce: $ff
	rst $38                                          ; $42cf: $ff
	db $db                                           ; $42d0: $db
	add b                                            ; $42d1: $80
	sbc $ff                                          ; $42d2: $de $ff
	db $dd                                           ; $42d4: $dd
	rst GetHLinHL                                          ; $42d5: $cf
	sbc e                                            ; $42d6: $9b
	adc $ff                                          ; $42d7: $ce $ff
	rst $38                                          ; $42d9: $ff
	ret nz                                           ; $42da: $c0

jr_03a_42db:
	ld l, e                                          ; $42db: $6b
	jr c, @-$6d                                      ; $42dc: $38 $91

	ei                                               ; $42de: $fb
	ld sp, hl                                        ; $42df: $f9
	ld hl, sp-$80                                    ; $42e0: $f8 $80
	nop                                              ; $42e2: $00
	nop                                              ; $42e3: $00
	rst $38                                          ; $42e4: $ff
	rst $38                                          ; $42e5: $ff
	inc b                                            ; $42e6: $04
	ld b, $07                                        ; $42e7: $06 $07
	rlca                                             ; $42e9: $07
	inc bc                                           ; $42ea: $03
	inc bc                                           ; $42eb: $03
	call c, $deeb                                    ; $42ec: $dc $eb $de
	db $db                                           ; $42ef: $db
	sbc [hl]                                         ; $42f0: $9e
	push de                                          ; $42f1: $d5
	sbc $95                                          ; $42f2: $de $95
	sbc e                                            ; $42f4: $9b
	sub h                                            ; $42f5: $94
	and h                                            ; $42f6: $a4
	and l                                            ; $42f7: $a5
	and l                                            ; $42f8: $a5
	reti                                             ; $42f9: $d9


	daa                                              ; $42fa: $27
	call c, $dedf                                    ; $42fb: $dc $df $de
	rst $38                                          ; $42fe: $ff
	reti                                             ; $42ff: $d9


	adc $d9                                          ; $4300: $ce $d9
	ld a, a                                          ; $4302: $7f
	ld sp, hl                                        ; $4303: $f9
	reti                                             ; $4304: $d9


	rst $38                                          ; $4305: $ff
	ccf                                              ; $4306: $3f
	ldh a, [$99]                                     ; $4307: $f0 $99
	ccf                                              ; $4309: $3f
	ld a, a                                          ; $430a: $7f
	ld h, b                                          ; $430b: $60
	ld a, a                                          ; $430c: $7f
	ld a, b                                          ; $430d: $78
	ld l, a                                          ; $430e: $6f
	call c, $9bff                                    ; $430f: $dc $ff $9b
	ldh [$e7], a                                     ; $4312: $e0 $e7
	ldh a, [$e0]                                     ; $4314: $f0 $e0
	db $fd                                           ; $4316: $fd
	sbc $e0                                          ; $4317: $de $e0
	sbc [hl]                                         ; $4319: $9e
	rra                                              ; $431a: $1f
	jp c, $dcff                                      ; $431b: $da $ff $dc

	db $fd                                           ; $431e: $fd
	sbc h                                            ; $431f: $9c
	sbc l                                            ; $4320: $9d
	adc l                                            ; $4321: $8d
	adc l                                            ; $4322: $8d
	call c, $de03                                    ; $4323: $dc $03 $de
	ld b, e                                          ; $4326: $43
	sbc $57                                          ; $4327: $de $57
	call c, $9c55                                    ; $4329: $dc $55 $9c
	add sp, -$16                                     ; $432c: $e8 $ea
	ld [$fadd], a                                    ; $432e: $ea $dd $fa
	sbc [hl]                                         ; $4331: $9e
	ld [$7bfe], a                                    ; $4332: $ea $fe $7b
	ld h, a                                          ; $4335: $67
	rst SubAFromDE                                          ; $4336: $df
	inc b                                            ; $4337: $04
	ld a, [hl]                                       ; $4338: $7e
	push bc                                          ; $4339: $c5
	sbc $07                                          ; $433a: $de $07
	rst SubAFromDE                                          ; $433c: $df
	inc bc                                           ; $433d: $03
	sbc [hl]                                         ; $433e: $9e
	ld [bc], a                                       ; $433f: $02
	call c, Call_03a_7fe0                            ; $4340: $dc $e0 $7f
	cp d                                             ; $4343: $ba

Jump_03a_4344:
	sub e                                            ; $4344: $93
	or b                                             ; $4345: $b0
	rst AddAOntoHL                                          ; $4346: $ef
	ld l, a                                          ; $4347: $6f
	cpl                                              ; $4348: $2f
	cpl                                              ; $4349: $2f
	ld l, a                                          ; $434a: $6f
	rst AddAOntoHL                                          ; $434b: $ef
	cpl                                              ; $434c: $2f
	cpl                                              ; $434d: $2f
	nop                                              ; $434e: $00
	ld b, h                                          ; $434f: $44
	db $10                                           ; $4350: $10
	ld [hl], d                                       ; $4351: $72
	ret nc                                           ; $4352: $d0

	sbc h                                            ; $4353: $9c
	rst $38                                          ; $4354: $ff
	cp e                                             ; $4355: $bb
	rst AddAOntoHL                                          ; $4356: $ef
	ld h, d                                          ; $4357: $62
	ret nc                                           ; $4358: $d0

	ld a, d                                          ; $4359: $7a
	sub b                                            ; $435a: $90
	ld a, d                                          ; $435b: $7a
	ld hl, sp-$21                                    ; $435c: $f8 $df
	rst $38                                          ; $435e: $ff
	sbc [hl]                                         ; $435f: $9e
	cp $7b                                           ; $4360: $fe $7b
	db $fd                                           ; $4362: $fd
	ld sp, hl                                        ; $4363: $f9
	reti                                             ; $4364: $d9


	ld b, b                                          ; $4365: $40
	ld b, $c0                                        ; $4366: $06 $c0
	add [hl]                                         ; $4368: $86
	ld [de], a                                       ; $4369: $12
	ld [hl], $24                                     ; $436a: $36 $24
	inc h                                            ; $436c: $24
	ld hl, $0100                                     ; $436d: $21 $00 $01
	inc de                                           ; $4370: $13
	xor l                                            ; $4371: $ad
	adc c                                            ; $4372: $89
	sbc e                                            ; $4373: $9b
	sbc e                                            ; $4374: $9b
	sbc [hl]                                         ; $4375: $9e
	cp h                                             ; $4376: $bc
	cp h                                             ; $4377: $bc
	xor b                                            ; $4378: $a8
	ld [hl], a                                       ; $4379: $77
	ld l, [hl]                                       ; $437a: $6e
	call c, $72b9                                    ; $437b: $dc $b9 $72
	db $e4                                           ; $437e: $e4
	ret z                                            ; $437f: $c8

	sub b                                            ; $4380: $90
	add b                                            ; $4381: $80
	ld a, d                                          ; $4382: $7a
	call c, $8ffd                                    ; $4383: $dc $fd $8f
	call z, $c8c0                                    ; $4386: $cc $c0 $c8
	ret z                                            ; $4389: $c8

	ret nz                                           ; $438a: $c0

	ret nz                                           ; $438b: $c0

	add sp, -$18                                     ; $438c: $e8 $e8
	ldh [$e0], a                                     ; $438e: $e0 $e0
	pop hl                                           ; $4390: $e1
	ldh [c], a                                       ; $4391: $e2
	db $ec                                           ; $4392: $ec
	add sp, -$40                                     ; $4393: $e8 $c0
	ret nz                                           ; $4395: $c0

	db $fd                                           ; $4396: $fd
	sbc c                                            ; $4397: $99
	ld [bc], a                                       ; $4398: $02
	inc b                                            ; $4399: $04
	add hl, bc                                       ; $439a: $09
	ld [de], a                                       ; $439b: $12
	ld b, e                                          ; $439c: $43
	add c                                            ; $439d: $81
	ld a, e                                          ; $439e: $7b
	adc d                                            ; $439f: $8a
	cp $de                                           ; $43a0: $fe $de
	db $db                                           ; $43a2: $db
	rst SubAFromDE                                          ; $43a3: $df
	rst SubAFromHL                                          ; $43a4: $d7
	sbc $f7                                          ; $43a5: $de $f7
	rst SubAFromDE                                          ; $43a7: $df
	and l                                            ; $43a8: $a5
	sbc c                                            ; $43a9: $99
	and [hl]                                         ; $43aa: $a6
	xor d                                            ; $43ab: $aa
	xor d                                            ; $43ac: $aa
	adc d                                            ; $43ad: $8a
	adc d                                            ; $43ae: $8a
	adc h                                            ; $43af: $8c
	reti                                             ; $43b0: $d9


	daa                                              ; $43b1: $27
	sbc [hl]                                         ; $43b2: $9e
	rst $38                                          ; $43b3: $ff
	jp c, $dedf                                      ; $43b4: $da $df $de

	adc $9d                                          ; $43b7: $ce $9d
	rst GetHLinHL                                          ; $43b9: $cf
	ret nz                                           ; $43ba: $c0

	sbc $c7                                          ; $43bb: $de $c7
	call c, $de7f                                    ; $43bd: $dc $7f $de
	ld a, b                                          ; $43c0: $78
	ld [hl], a                                       ; $43c1: $77
	ld b, l                                          ; $43c2: $45
	sbc e                                            ; $43c3: $9b
	dec de                                           ; $43c4: $1b
	db $db                                           ; $43c5: $db
	db $db                                           ; $43c6: $db
	ret c                                            ; $43c7: $d8

	db $dd                                           ; $43c8: $dd
	rst $38                                          ; $43c9: $ff
	sbc e                                            ; $43ca: $9b
	db $fc                                           ; $43cb: $fc
	inc a                                            ; $43cc: $3c
	inc a                                            ; $43cd: $3c
	ld a, $76                                        ; $43ce: $3e $76
	dec b                                            ; $43d0: $05
	rst SubAFromDE                                          ; $43d1: $df
	cp $9d                                           ; $43d2: $fe $9d
	rlca                                             ; $43d4: $07
	rst FarCall                                          ; $43d5: $f7
	db $dd                                           ; $43d6: $dd
	rst $38                                          ; $43d7: $ff
	rst SubAFromDE                                          ; $43d8: $df
	inc bc                                           ; $43d9: $03
	sbc b                                            ; $43da: $98
	ei                                               ; $43db: $fb
	add hl, bc                                       ; $43dc: $09
	ld a, a                                          ; $43dd: $7f
	ld [hl], d                                       ; $43de: $72
	ld a, a                                          ; $43df: $7f
	ld a, d                                          ; $43e0: $7a
	ld a, d                                          ; $43e1: $7a
	ld a, e                                          ; $43e2: $7b
	db $fd                                           ; $43e3: $fd
	sbc l                                            ; $43e4: $9d
	ldh [$ed], a                                     ; $43e5: $e0 $ed
	db $d3                                           ; $43e7: $d3
	ldh [$d9], a                                     ; $43e8: $e0 $d9
	rst $38                                          ; $43ea: $ff
	db $db                                           ; $43eb: $db
	adc l                                            ; $43ec: $8d
	sbc l                                            ; $43ed: $9d
	call $d99d                                       ; $43ee: $cd $9d $d9
	ld b, e                                          ; $43f1: $43
	rst SubAFromDE                                          ; $43f2: $df
	ld d, a                                          ; $43f3: $57
	call c, $9c77                                    ; $43f4: $dc $77 $9c
	ld d, a                                          ; $43f7: $57
	ld [$dcea], a                                    ; $43f8: $ea $ea $dc
	xor d                                            ; $43fb: $aa
	sub h                                            ; $43fc: $94
	add sp, $04                                      ; $43fd: $e8 $04
	dec b                                            ; $43ff: $05
	inc b                                            ; $4400: $04
	dec b                                            ; $4401: $05
	rlca                                             ; $4402: $07
	inc b                                            ; $4403: $04
	rst $38                                          ; $4404: $ff
	rst $38                                          ; $4405: $ff
	rlca                                             ; $4406: $07
	ld b, $7b                                        ; $4407: $06 $7b
	cp $de                                           ; $4409: $fe $de
	rlca                                             ; $440b: $07
	sbc l                                            ; $440c: $9d
	ldh a, [$b0]                                     ; $440d: $f0 $b0
	ld a, e                                          ; $440f: $7b
	cp $9c                                           ; $4410: $fe $9c
	ldh a, [rIE]                                     ; $4412: $f0 $ff
	rst $38                                          ; $4414: $ff
	db $dd                                           ; $4415: $dd

jr_03a_4416:
	cpl                                              ; $4416: $2f
	ld a, [hl]                                       ; $4417: $7e
	cp h                                             ; $4418: $bc
	halt                                             ; $4419: $76
	ret nc                                           ; $441a: $d0

	sbc e                                            ; $441b: $9b
	ld [bc], a                                       ; $441c: $02
	db $10                                           ; $441d: $10

jr_03a_441e:
	inc b                                            ; $441e: $04
	ld [bc], a                                       ; $441f: $02
	halt                                             ; $4420: $76
	ld d, b                                          ; $4421: $50
	sbc e                                            ; $4422: $9b
	db $fd                                           ; $4423: $fd
	rst AddAOntoHL                                          ; $4424: $ef
	ei                                               ; $4425: $fb
	db $fd                                           ; $4426: $fd
	ld [hl], e                                       ; $4427: $73
	ldh a, [$9c]                                     ; $4428: $f0 $9c
	add b                                            ; $442a: $80
	inc [hl]                                         ; $442b: $34
	ld b, b                                          ; $442c: $40
	ld [hl], a                                       ; $442d: $77
	ldh a, [$9b]                                     ; $442e: $f0 $9b
	db $fc                                           ; $4430: $fc
	ld a, a                                          ; $4431: $7f
	jp z, Jump_03a_66b8                              ; $4432: $ca $b8 $66

	jr nc, jr_03a_4416                               ; $4435: $30 $df

	rst $38                                          ; $4437: $ff
	db $db                                           ; $4438: $db
	ld b, b                                          ; $4439: $40
	rst SubAFromDE                                          ; $443a: $df
	rst $38                                          ; $443b: $ff
	db $db                                           ; $443c: $db
	jr jr_03a_441e                                   ; $443d: $18 $df

	rst $38                                          ; $443f: $ff
	db $db                                           ; $4440: $db
	inc e                                            ; $4441: $1c
	ld [hl], a                                       ; $4442: $77
	ld e, h                                          ; $4443: $5c
	db $dd                                           ; $4444: $dd
	inc bc                                           ; $4445: $03
	rst SubAFromDE                                          ; $4446: $df
	rst $38                                          ; $4447: $ff
	ld h, l                                          ; $4448: $65
	add d                                            ; $4449: $82
	sbc e                                            ; $444a: $9b
	daa                                              ; $444b: $27
	ld c, $0c                                        ; $444c: $0e $0c
	ld [$d077], sp                                   ; $444e: $08 $77 $d0
	sbc d                                            ; $4451: $9a
	sub b                                            ; $4452: $90
	or b                                             ; $4453: $b0
	and b                                            ; $4454: $a0
	or b                                             ; $4455: $b0
	add b                                            ; $4456: $80
	ld a, e                                          ; $4457: $7b
	ld e, d                                          ; $4458: $5a
	ld a, l                                          ; $4459: $7d
	dec bc                                           ; $445a: $0b
	ld a, [hl]                                       ; $445b: $7e
	db $e3                                           ; $445c: $e3
	sbc [hl]                                         ; $445d: $9e
	rlca                                             ; $445e: $07
	ld a, e                                          ; $445f: $7b
	ldh a, [$67]                                     ; $4460: $f0 $67
	cp b                                             ; $4462: $b8
	ld a, d                                          ; $4463: $7a
	rst JumpTable                                          ; $4464: $c7
	ld [hl], e                                       ; $4465: $73
	ld b, d                                          ; $4466: $42
	db $db                                           ; $4467: $db
	ret nz                                           ; $4468: $c0

	rst SubAFromDE                                          ; $4469: $df
	rst $38                                          ; $446a: $ff
	sbc e                                            ; $446b: $9b
	inc h                                            ; $446c: $24
	ld c, c                                          ; $446d: $49
	sub b                                            ; $446e: $90
	ld hl, $e877                                     ; $446f: $21 $77 $e8
	ld h, a                                          ; $4472: $67
	ldh [$df], a                                     ; $4473: $e0 $df
	rst FarCall                                          ; $4475: $f7
	db $db                                           ; $4476: $db
	or a                                             ; $4477: $b7
	rst SubAFromDE                                          ; $4478: $df
	adc h                                            ; $4479: $8c
	db $dd                                           ; $447a: $dd
	call z, $c89d                                    ; $447b: $cc $9d $c8
	ld c, b                                          ; $447e: $48
	ld d, c                                          ; $447f: $51
	add b                                            ; $4480: $80
	sbc $df                                          ; $4481: $de $df
	jp c, $9ecf                                      ; $4483: $da $cf $9e

	ret                                              ; $4486: $c9


	jp c, $9b70                                      ; $4487: $da $70 $9b

	halt                                             ; $448a: $76
	ret c                                            ; $448b: $d8

	call c, $dedc                                    ; $448c: $dc $dc $de
	db $dd                                           ; $448f: $dd
	rst SubAFromDE                                          ; $4490: $df
	reti                                             ; $4491: $d9


	call c, $de3e                                    ; $4492: $dc $3e $de
	ccf                                              ; $4495: $3f
	ld a, l                                          ; $4496: $7d
	call c, $0793                                    ; $4497: $dc $93 $07
	add a                                            ; $449a: $87
	inc bc                                           ; $449b: $03
	sub e                                            ; $449c: $93
	di                                               ; $449d: $f3
	and e                                            ; $449e: $a3
	add hl, bc                                       ; $449f: $09
	dec b                                            ; $44a0: $05
	dec b                                            ; $44a1: $05
	inc b                                            ; $44a2: $04
	inc b                                            ; $44a3: $04
	ld h, $78                                        ; $44a4: $26 $78
	ld hl, sp-$66                                    ; $44a6: $f8 $9a
	ld hl, sp-$07                                    ; $44a8: $f8 $f9
	cp $ff                                           ; $44aa: $fe $ff
	db $f4                                           ; $44ac: $f4
	call c, $98e0                                    ; $44ad: $dc $e0 $98
	pop hl                                           ; $44b0: $e1
	ldh [$e0], a                                     ; $44b1: $e0 $e0
	ld h, c                                          ; $44b3: $61
	ld a, a                                          ; $44b4: $7f
	ldh [$e0], a                                     ; $44b5: $e0 $e0
	db $db                                           ; $44b7: $db
	ld h, b                                          ; $44b8: $60
	reti                                             ; $44b9: $d9


	rst $38                                          ; $44ba: $ff
	adc a                                            ; $44bb: $8f
	ld c, l                                          ; $44bc: $4d
	cp l                                             ; $44bd: $bd
	db $fd                                           ; $44be: $fd
	db $fd                                           ; $44bf: $fd
	ld sp, hl                                        ; $44c0: $f9
	di                                               ; $44c1: $f3
	rst SubAFromBC                                          ; $44c2: $e7
	adc a                                            ; $44c3: $8f
	di                                               ; $44c4: $f3
	ld b, e                                          ; $44c5: $43
	inc bc                                           ; $44c6: $03
	inc bc                                           ; $44c7: $03
	rlca                                             ; $44c8: $07
	rrca                                             ; $44c9: $0f
	rra                                              ; $44ca: $1f
	ld a, a                                          ; $44cb: $7f
	ld [hl], l                                       ; $44cc: $75
	add d                                            ; $44cd: $82
	sbc e                                            ; $44ce: $9b
	ld d, h                                          ; $44cf: $54
	ld b, h                                          ; $44d0: $44
	ld b, h                                          ; $44d1: $44
	ld bc, $8079                                     ; $44d2: $01 $79 $80
	sbc d                                            ; $44d5: $9a
	ld [$bbeb], a                                    ; $44d6: $ea $eb $bb
	cp e                                             ; $44d9: $bb
	cp $79                                           ; $44da: $fe $79
	cp e                                             ; $44dc: $bb
	ld a, [hl]                                       ; $44dd: $7e
	ld [hl], d                                       ; $44de: $72
	sbc h                                            ; $44df: $9c
	rst $38                                          ; $44e0: $ff
	rrca                                             ; $44e1: $0f
	rst FarCall                                          ; $44e2: $f7
	db $dd                                           ; $44e3: $dd
	rlca                                             ; $44e4: $07
	db $dd                                           ; $44e5: $dd
	rst $38                                          ; $44e6: $ff
	sub a                                            ; $44e7: $97
	db $10                                           ; $44e8: $10
	rra                                              ; $44e9: $1f
	ld [hl], b                                       ; $44ea: $70
	inc e                                            ; $44eb: $1c
	ld e, $bd                                        ; $44ec: $1e $bd
	dec sp                                           ; $44ee: $3b
	rst FarCall                                          ; $44ef: $f7
	ld [hl], l                                       ; $44f0: $75
	and e                                            ; $44f1: $a3
	ld h, c                                          ; $44f2: $61
	inc e                                            ; $44f3: $1c
	ld a, h                                          ; $44f4: $7c
	and h                                            ; $44f5: $a4
	ld [hl], e                                       ; $44f6: $73
	ld b, b                                          ; $44f7: $40
	ld e, a                                          ; $44f8: $5f
	ldh a, [$7b]                                     ; $44f9: $f0 $7b
	cp $53                                           ; $44fb: $fe $53
	ldh a, [$7e]                                     ; $44fd: $f0 $7e
	rst JumpTable                                          ; $44ff: $c7
	ld h, a                                          ; $4500: $67
	ldh a, [$9d]                                     ; $4501: $f0 $9d
	ldh a, [$fc]                                     ; $4503: $f0 $fc
	ld l, a                                          ; $4505: $6f
	ldh [$9d], a                                     ; $4506: $e0 $9d
	rrca                                             ; $4508: $0f
	inc bc                                           ; $4509: $03
	ld l, e                                          ; $450a: $6b
	ldh [hDisp1_OBP1], a                                     ; $450b: $e0 $94
	ccf                                              ; $450d: $3f
	rrca                                             ; $450e: $0f
	jp $ff00                                         ; $450f: $c3 $00 $ff


	rra                                              ; $4512: $1f
	rst $38                                          ; $4513: $ff
	nop                                              ; $4514: $00
	ret nz                                           ; $4515: $c0

	ldh a, [$3c]                                     ; $4516: $f0 $3c
	ld e, a                                          ; $4518: $5f
	ret nc                                           ; $4519: $d0

	ld a, [hl]                                       ; $451a: $7e
	rst SubAFromBC                                          ; $451b: $e7
	daa                                              ; $451c: $27
	or b                                             ; $451d: $b0
	sbc b                                            ; $451e: $98
	nop                                              ; $451f: $00
	ld a, a                                          ; $4520: $7f
	ld b, b                                          ; $4521: $40
	ld b, b                                          ; $4522: $40
	ld b, c                                          ; $4523: $41
	ld b, d                                          ; $4524: $42
	ld b, h                                          ; $4525: $44
	ld a, e                                          ; $4526: $7b
	db $f4                                           ; $4527: $f4
	rst SubAFromDE                                          ; $4528: $df
	ret nz                                           ; $4529: $c0

	sub a                                            ; $452a: $97
	pop bc                                           ; $452b: $c1
	jp $ffc6                                         ; $452c: $c3 $c6 $ff


	nop                                              ; $452f: $00
	cp $32                                           ; $4530: $fe $32
	jp nz, $02de                                     ; $4532: $c2 $de $02

	ld a, e                                          ; $4535: $7b
	ldh a, [$9c]                                     ; $4536: $f0 $9c
	dec sp                                           ; $4538: $3b
	db $e3                                           ; $4539: $e3
	add e                                            ; $453a: $83
	ld a, d                                          ; $453b: $7a
	ld [hl], a                                       ; $453c: $77
	rst SubAFromDE                                          ; $453d: $df
	or a                                             ; $453e: $b7
	db $dd                                           ; $453f: $dd
	scf                                              ; $4540: $37
	sbc e                                            ; $4541: $9b
	ld [hl], $00                                     ; $4542: $36 $00
	ld c, b                                          ; $4544: $48
	ld c, b                                          ; $4545: $48
	db $dd                                           ; $4546: $dd
	ret z                                            ; $4547: $c8

	sbc l                                            ; $4548: $9d
	ret                                              ; $4549: $c9


	rst $38                                          ; $454a: $ff
	sbc $27                                          ; $454b: $de $27
	call c, $6c07                                    ; $454d: $dc $07 $6c
	ld b, d                                          ; $4550: $42
	rst SubAFromDE                                          ; $4551: $df
	rst $38                                          ; $4552: $ff
	ld a, [hl]                                       ; $4553: $7e
	add $87                                          ; $4554: $c6 $87
	rst GetHLinHL                                          ; $4556: $cf
	call $cbcd                                       ; $4557: $cd $cd $cb
	ret                                              ; $455a: $c9


	ret z                                            ; $455b: $c8

	ld [hl], b                                       ; $455c: $70
	halt                                             ; $455d: $76
	ld [hl], b                                       ; $455e: $70
	ld [hl], d                                       ; $455f: $72
	ld [hl], d                                       ; $4560: $72
	ld [hl], b                                       ; $4561: $70
	ld [hl], b                                       ; $4562: $70
	ld [hl], d                                       ; $4563: $72
	ret c                                            ; $4564: $d8

	ld e, b                                          ; $4565: $58
	ld e, h                                          ; $4566: $5c
	ld d, h                                          ; $4567: $54
	ld d, h                                          ; $4568: $54
	ret nc                                           ; $4569: $d0

	ld d, h                                          ; $456a: $54
	call nc, $bf3f                                   ; $456b: $d4 $3f $bf
	db $dd                                           ; $456e: $dd
	ccf                                              ; $456f: $3f
	ld a, a                                          ; $4570: $7f
	ei                                               ; $4571: $fb
	sub l                                            ; $4572: $95
	and e                                            ; $4573: $a3
	pop bc                                           ; $4574: $c1
	db $d3                                           ; $4575: $d3
	di                                               ; $4576: $f3
	pop af                                           ; $4577: $f1
	ld [hl], c                                       ; $4578: $71
	ld h, [hl]                                       ; $4579: $66
	jr c, jr_03a_457f                                ; $457a: $38 $03

	add e                                            ; $457c: $83
	db $dd                                           ; $457d: $dd
	add c                                            ; $457e: $81

jr_03a_457f:
	sbc l                                            ; $457f: $9d
	add a                                            ; $4580: $87
	rst $38                                          ; $4581: $ff
	ld b, [hl]                                       ; $4582: $46
	ret nz                                           ; $4583: $c0

	reti                                             ; $4584: $d9


	ld h, b                                          ; $4585: $60
	reti                                             ; $4586: $d9


	rst $38                                          ; $4587: $ff
	sbc b                                            ; $4588: $98
	inc hl                                           ; $4589: $23
	ld b, $0c                                        ; $458a: $06 $0c
	jr nc, @+$01                                     ; $458c: $30 $ff

	ret nz                                           ; $458e: $c0

	add $71                                          ; $458f: $c6 $71
	ld b, b                                          ; $4591: $40
	ld a, d                                          ; $4592: $7a
	ld sp, $ba7d                                     ; $4593: $31 $7d $ba
	sbc [hl]                                         ; $4596: $9e
	ld a, a                                          ; $4597: $7f
	ld a, e                                          ; $4598: $7b
	ld e, b                                          ; $4599: $58
	sbc h                                            ; $459a: $9c

Call_03a_459b:
	nop                                              ; $459b: $00
	ld h, [hl]                                       ; $459c: $66
	sbc c                                            ; $459d: $99
	ld l, a                                          ; $459e: $6f
	ld c, b                                          ; $459f: $48
	ld a, e                                          ; $45a0: $7b
	db $ec                                           ; $45a1: $ec
	sbc l                                            ; $45a2: $9d
	add b                                            ; $45a3: $80
	ret nz                                           ; $45a4: $c0

	ld [hl], e                                       ; $45a5: $73
	ldh a, [$79]                                     ; $45a6: $f0 $79
	adc l                                            ; $45a8: $8d
	ld [hl], e                                       ; $45a9: $73
	ldh a, [hDisp1_WX]                                     ; $45aa: $f0 $96
	ld c, $09                                        ; $45ac: $0e $09
	inc bc                                           ; $45ae: $03
	ld b, $ff                                        ; $45af: $06 $ff
	rlca                                             ; $45b1: $07
	ld h, [hl]                                       ; $45b2: $66
	sbc [hl]                                         ; $45b3: $9e
	rra                                              ; $45b4: $1f
	sbc $ff                                          ; $45b5: $de $ff
	sbc [hl]                                         ; $45b7: $9e
	inc b                                            ; $45b8: $04
	sbc $fd                                          ; $45b9: $de $fd
	sbc h                                            ; $45bb: $9c
	sbc a                                            ; $45bc: $9f
	adc a                                            ; $45bd: $8f
	rlca                                             ; $45be: $07
	ld a, c                                          ; $45bf: $79
	jp nz, $7cff                                     ; $45c0: $c2 $ff $7c

	inc l                                            ; $45c3: $2c
	sbc l                                            ; $45c4: $9d
	ld hl, sp-$04                                    ; $45c5: $f8 $fc
	ld [hl], a                                       ; $45c7: $77
	ldh [hDisp1_BGP], a                                     ; $45c8: $e0 $92
	cp $fd                                           ; $45ca: $fe $fd
	ei                                               ; $45cc: $fb
	rst $38                                          ; $45cd: $ff
	rst FarCall                                          ; $45ce: $f7
	cp $06                                           ; $45cf: $fe $06
	ld b, $01                                        ; $45d1: $06 $01
	inc bc                                           ; $45d3: $03
	rlca                                             ; $45d4: $07
	ld b, $0e                                        ; $45d5: $06 $0e
	reti                                             ; $45d7: $d9


	rst $38                                          ; $45d8: $ff
	sbc h                                            ; $45d9: $9c
	rst GetHLinHL                                          ; $45da: $cf
	rrca                                             ; $45db: $0f
	rrca                                             ; $45dc: $0f
	ld [hl], b                                       ; $45dd: $70
	add c                                            ; $45de: $81
	sub $ff                                          ; $45df: $d6 $ff
	ld l, c                                          ; $45e1: $69
	pop de                                           ; $45e2: $d1
	db $db                                           ; $45e3: $db
	rst $38                                          ; $45e4: $ff
	rst SubAFromDE                                          ; $45e5: $df
	ldh a, [$9e]                                     ; $45e6: $f0 $9e
	di                                               ; $45e8: $f3
	ld l, e                                          ; $45e9: $6b
	ldh a, [$9c]                                     ; $45ea: $f0 $9c
	db $fc                                           ; $45ec: $fc
	cp e                                             ; $45ed: $bb
	and $7b                                          ; $45ee: $e6 $7b
	ld d, b                                          ; $45f0: $50
	ld a, h                                          ; $45f1: $7c
	ld b, b                                          ; $45f2: $40
	sbc d                                            ; $45f3: $9a
	ld bc, $1f7c                                     ; $45f4: $01 $7c $1f
	rlca                                             ; $45f7: $07
	ld bc, $e077                                     ; $45f8: $01 $77 $e0
	adc [hl]                                         ; $45fb: $8e
	push af                                          ; $45fc: $f5
	ei                                               ; $45fd: $fb
	cp [hl]                                          ; $45fe: $be
	call $3d83                                       ; $45ff: $cd $83 $3d
	push de                                          ; $4602: $d5
	adc l                                            ; $4603: $8d
	ld c, $06                                        ; $4604: $0e $06
	jp Jump_03a_7df3                                 ; $4606: $c3 $f3 $7d


	rst $38                                          ; $4609: $ff
	cp a                                             ; $460a: $bf
	ld a, a                                          ; $460b: $7f
	ccf                                              ; $460c: $3f
	ld a, e                                          ; $460d: $7b
	db $eb                                           ; $460e: $eb
	ld a, a                                          ; $460f: $7f
	ld e, l                                          ; $4610: $5d
	sbc l                                            ; $4611: $9d
	ld h, [hl]                                       ; $4612: $66
	ccf                                              ; $4613: $3f
	ld [hl], a                                       ; $4614: $77
	cp [hl]                                          ; $4615: $be
	ld a, [hl]                                       ; $4616: $7e
	ld c, d                                          ; $4617: $4a
	ld l, e                                          ; $4618: $6b
	ld l, e                                          ; $4619: $6b
	ld [hl], e                                       ; $461a: $73
	ld d, b                                          ; $461b: $50
	ld l, a                                          ; $461c: $6f
	or b                                             ; $461d: $b0
	rst SubAFromDE                                          ; $461e: $df
	ld a, a                                          ; $461f: $7f
	ld a, [hl]                                       ; $4620: $7e
	ld e, [hl]                                       ; $4621: $5e
	sbc d                                            ; $4622: $9a
	cp $03                                           ; $4623: $fe $03
	ld h, [hl]                                       ; $4625: $66
	cp e                                             ; $4626: $bb
	rst $38                                          ; $4627: $ff
	ld a, d                                          ; $4628: $7a
	ld e, [hl]                                       ; $4629: $5e
	ld a, c                                          ; $462a: $79
	ld sp, $ff99                                     ; $462b: $31 $99 $ff
	sbc a                                            ; $462e: $9f
	rst SubAFromBC                                          ; $462f: $e7
	ld [hl], e                                       ; $4630: $73
	add hl, de                                       ; $4631: $19
	inc c                                            ; $4632: $0c
	ld a, d                                          ; $4633: $7a
	inc d                                            ; $4634: $14
	ld a, e                                          ; $4635: $7b
	ld h, c                                          ; $4636: $61
	ld [hl], d                                       ; $4637: $72
	ld c, $de                                        ; $4638: $0e $de
	jp z, $ff9a                                      ; $463a: $ca $9a $ff

	sbc h                                            ; $463d: $9c
	inc bc                                           ; $463e: $03
	nop                                              ; $463f: $00
	sub b                                            ; $4640: $90
	sbc $74                                          ; $4641: $de $74
	sub a                                            ; $4643: $97
	ld a, a                                          ; $4644: $7f
	inc bc                                           ; $4645: $03
	add b                                            ; $4646: $80
	ret nz                                           ; $4647: $c0

	ldh [$d6], a                                     ; $4648: $e0 $d6
	sbc $de                                          ; $464a: $de $de
	ld a, d                                          ; $464c: $7a
	ld b, h                                          ; $464d: $44
	sbc l                                            ; $464e: $9d
	ld a, $01                                        ; $464f: $3e $01
	sbc $3f                                          ; $4651: $de $3f
	ld a, d                                          ; $4653: $7a
	inc [hl]                                         ; $4654: $34
	ld a, a                                          ; $4655: $7f
	adc l                                            ; $4656: $8d
	sbc e                                            ; $4657: $9b
	nop                                              ; $4658: $00
	rlca                                             ; $4659: $07
	ld a, a                                          ; $465a: $7f
	rst $38                                          ; $465b: $ff
	ld a, d                                          ; $465c: $7a
	dec h                                            ; $465d: $25
	ld [hl], a                                       ; $465e: $77
	ld de, $ffdd                                     ; $465f: $11 $dd $ff
	sbc l                                            ; $4662: $9d
	rrca                                             ; $4663: $0f
	ld [hl], b                                       ; $4664: $70
	ld [hl], a                                       ; $4665: $77
	or $9e                                           ; $4666: $f6 $9e
	rrca                                             ; $4668: $0f
	ld e, a                                          ; $4669: $5f
	ld d, l                                          ; $466a: $55
	sbc [hl]                                         ; $466b: $9e
	ldh [$fd], a                                     ; $466c: $e0 $fd
	sbc $e0                                          ; $466e: $de $e0
	ld [hl], a                                       ; $4670: $77
	nop                                              ; $4671: $00
	ld [hl], e                                       ; $4672: $73
	dec h                                            ; $4673: $25
	sbc e                                            ; $4674: $9b
	rst SubAFromDE                                          ; $4675: $df
	sbc $d9                                          ; $4676: $de $d9
	sub $7b                                          ; $4678: $d6 $7b
	cp $d9                                           ; $467a: $fe $d9
	rst $38                                          ; $467c: $ff
	sub a                                            ; $467d: $97
	cp $f5                                           ; $467e: $fe $f5
	ld a, a                                          ; $4680: $7f
	sbc l                                            ; $4681: $9d
	ld l, a                                          ; $4682: $6f
	sbc l                                            ; $4683: $9d
	ld l, [hl]                                       ; $4684: $6e
	sbc l                                            ; $4685: $9d
	reti                                             ; $4686: $d9


	rst $38                                          ; $4687: $ff
	sub a                                            ; $4688: $97
	ld h, [hl]                                       ; $4689: $66
	rst SubAFromDE                                          ; $468a: $df
	ld a, [hl]                                       ; $468b: $7e
	reti                                             ; $468c: $d9


	ld a, [hl]                                       ; $468d: $7e
	reti                                             ; $468e: $d9


	cp $db                                           ; $468f: $fe $db
	ld h, e                                          ; $4691: $63
	ldh a, [$9c]                                     ; $4692: $f0 $9c
	cp $76                                           ; $4694: $fe $76
	sbc [hl]                                         ; $4696: $9e
	ld a, e                                          ; $4697: $7b
	cp $7e                                           ; $4698: $fe $7e
	reti                                             ; $469a: $d9


	jp c, $fffd                                      ; $469b: $da $fd $ff

	db $db                                           ; $469e: $db
	call z, $ffd9                                    ; $469f: $cc $d9 $ff
	rst SubAFromDE                                          ; $46a2: $df
	ld b, $de                                        ; $46a3: $06 $de
	add $df                                          ; $46a5: $c6 $df
	rst JumpTable                                          ; $46a7: $c7
	ld a, l                                          ; $46a8: $7d
	rst SubAFromBC                                          ; $46a9: $e7
	jp c, $9bff                                      ; $46aa: $da $ff $9b

	rst AddAOntoHL                                          ; $46ad: $ef
	rrca                                             ; $46ae: $0f
	inc c                                            ; $46af: $0c
	rrca                                             ; $46b0: $0f
	ld [hl], h                                       ; $46b1: $74
	and c                                            ; $46b2: $a1
	reti                                             ; $46b3: $d9


	rst $38                                          ; $46b4: $ff
	sbc h                                            ; $46b5: $9c
	jp c, $d0aa                                      ; $46b6: $da $aa $d0

	ld [hl], a                                       ; $46b9: $77
	di                                               ; $46ba: $f3
	ld a, a                                          ; $46bb: $7f
	db $fd                                           ; $46bc: $fd
	sbc [hl]                                         ; $46bd: $9e
	push de                                          ; $46be: $d5
	db $db                                           ; $46bf: $db
	rst $38                                          ; $46c0: $ff
	ld a, a                                          ; $46c1: $7f
	ld a, [hl+]                                      ; $46c2: $2a
	sbc l                                            ; $46c3: $9d
	cp $f7                                           ; $46c4: $fe $f7
	ld [hl], a                                       ; $46c6: $77
	ldh a, [$de]                                     ; $46c7: $f0 $de
	rst FarCall                                          ; $46c9: $f7
	call c, $9bff                                    ; $46ca: $dc $ff $9b
	ld [bc], a                                       ; $46cd: $02
	db $db                                           ; $46ce: $db
	ld bc, $57fd                                     ; $46cf: $01 $fd $57
	ret nc                                           ; $46d2: $d0

	sbc d                                            ; $46d3: $9a
	dec c                                            ; $46d4: $0d
	dec e                                            ; $46d5: $1d
	db $ed                                           ; $46d6: $ed
	push af                                          ; $46d7: $f5
	dec b                                            ; $46d8: $05
	sbc $fd                                          ; $46d9: $de $fd
	reti                                             ; $46db: $d9


	rst $38                                          ; $46dc: $ff
	sub a                                            ; $46dd: $97
	ld a, a                                          ; $46de: $7f
	add hl, sp                                       ; $46df: $39
	ld h, [hl]                                       ; $46e0: $66
	add hl, sp                                       ; $46e1: $39
	ld h, [hl]                                       ; $46e2: $66
	ld a, c                                          ; $46e3: $79
	ld a, a                                          ; $46e4: $7f
	dec a                                            ; $46e5: $3d
	ld h, e                                          ; $46e6: $63
	ld [hl], b                                       ; $46e7: $70
	sbc l                                            ; $46e8: $9d
	db $db                                           ; $46e9: $db
	ld a, a                                          ; $46ea: $7f
	ld [hl], a                                       ; $46eb: $77
	cp $9e                                           ; $46ec: $fe $9e
	db $dd                                           ; $46ee: $dd
	reti                                             ; $46ef: $d9


	rst $38                                          ; $46f0: $ff
	sbc d                                            ; $46f1: $9a
	or $dd                                           ; $46f2: $f6 $dd
	rst SubAFromBC                                          ; $46f4: $e7
	sbc c                                            ; $46f5: $99
	ld h, [hl]                                       ; $46f6: $66
	ld a, e                                          ; $46f7: $7b
	cp $d9                                           ; $46f8: $fe $d9
	rst $38                                          ; $46fa: $ff
	sbc [hl]                                         ; $46fb: $9e
	db $fc                                           ; $46fc: $fc
	sbc $f8                                          ; $46fd: $de $f8
	db $dd                                           ; $46ff: $dd
	ldh a, [$d9]                                     ; $4700: $f0 $d9
	rst $38                                          ; $4702: $ff
	adc a                                            ; $4703: $8f
	ret z                                            ; $4704: $c8

	ld h, h                                          ; $4705: $64
	ld sp, $6d58                                     ; $4706: $31 $58 $6d
	scf                                              ; $4709: $37
	cp e                                             ; $470a: $bb
	cp l                                             ; $470b: $bd
	ldh a, [$f8]                                     ; $470c: $f0 $f8
	cp $bf                                           ; $470e: $fe $bf
	sbc [hl]                                         ; $4710: $9e
	adc $c6                                          ; $4711: $ce $c6
	jp $dffd                                         ; $4713: $c3 $fd $df


	ld a, a                                          ; $4716: $7f
	ld a, a                                          ; $4717: $7f
	db $fd                                           ; $4718: $fd
	ld h, [hl]                                       ; $4719: $66
	ld [hl-], a                                      ; $471a: $32
	ld a, d                                          ; $471b: $7a
	push de                                          ; $471c: $d5
	ld [hl], e                                       ; $471d: $73
	add c                                            ; $471e: $81
	ld h, a                                          ; $471f: $67
	ldh a, [$9d]                                     ; $4720: $f0 $9d
	ret nz                                           ; $4722: $c0

	ccf                                              ; $4723: $3f
	ld l, a                                          ; $4724: $6f
	ldh a, [$73]                                     ; $4725: $f0 $73
	ld sp, hl                                        ; $4727: $f9
	sbc $ff                                          ; $4728: $de $ff
	rra                                              ; $472a: $1f
	nop                                              ; $472b: $00
	sbc e                                            ; $472c: $9b
	inc sp                                           ; $472d: $33
	ld b, h                                          ; $472e: $44
	ld b, h                                          ; $472f: $44
	ld b, l                                          ; $4730: $45
	sbc $55                                          ; $4731: $de $55
	sbc [hl]                                         ; $4733: $9e
	ld b, h                                          ; $4734: $44
	sbc $33                                          ; $4735: $de $33
	sbc l                                            ; $4737: $9d
	ld b, a                                          ; $4738: $47
	ld h, h                                          ; $4739: $64
	ccf                                              ; $473a: $3f
	or $9d                                           ; $473b: $f6 $9d
	ld b, e                                          ; $473d: $43
	ld [hl], e                                       ; $473e: $73
	sbc $33                                          ; $473f: $de $33
	ld [hl], a                                       ; $4741: $77
	or $9e                                           ; $4742: $f6 $9e
	scf                                              ; $4744: $37
	jp c, Jump_03a_5777                              ; $4745: $da $77 $57

	or $fb                                           ; $4748: $f6 $fb
	add c                                            ; $474a: $81
	sbc [hl]                                         ; $474b: $9e
	ldh [c], a                                       ; $474c: $e2
	db $dd                                           ; $474d: $dd
	ld [bc], a                                       ; $474e: $02
	sbc $e2                                          ; $474f: $de $e2
	sbc [hl]                                         ; $4751: $9e
	rra                                              ; $4752: $1f
	jp c, $d9ff                                      ; $4753: $da $ff $d9

	db $fd                                           ; $4756: $fd
	reti                                             ; $4757: $d9


	inc bc                                           ; $4758: $03
	db $dd                                           ; $4759: $dd
	xor b                                            ; $475a: $a8
	sbc [hl]                                         ; $475b: $9e
	xor d                                            ; $475c: $aa
	sbc $ba                                          ; $475d: $de $ba
	ld [hl], e                                       ; $475f: $73
	db $e4                                           ; $4760: $e4
	sbc $ed                                          ; $4761: $de $ed
	db $dd                                           ; $4763: $dd
	rst $38                                          ; $4764: $ff
	sbc e                                            ; $4765: $9b
	db $fc                                           ; $4766: $fc
	ccf                                              ; $4767: $3f
	ld a, a                                          ; $4768: $7f
	rst $38                                          ; $4769: $ff
	ld sp, hl                                        ; $476a: $f9
	sbc $ff                                          ; $476b: $de $ff
	sbc d                                            ; $476d: $9a
	rlca                                             ; $476e: $07
	ld [hl], b                                       ; $476f: $70
	rst $38                                          ; $4770: $ff
	rst $38                                          ; $4771: $ff
	cp $5b                                           ; $4772: $fe $5b
	ldh a, [$9a]                                     ; $4774: $f0 $9a
	rst $38                                          ; $4776: $ff
	pop af                                           ; $4777: $f1
	db $fd                                           ; $4778: $fd
	rst $38                                          ; $4779: $ff
	rst SubAFromDE                                          ; $477a: $df
	ld e, e                                          ; $477b: $5b
	ldh a, [$9a]                                     ; $477c: $f0 $9a
	ldh a, [$c0]                                     ; $477e: $f0 $c0
	call nc, $08ff                                   ; $4780: $d4 $ff $08
	ld e, e                                          ; $4783: $5b
	ldh a, [$9a]                                     ; $4784: $f0 $9a
	ld de, $1e00                                     ; $4786: $11 $00 $1e
	and e                                            ; $4789: $a3
	jr @-$05                                         ; $478a: $18 $f9

	sbc [hl]                                         ; $478c: $9e
	ld hl, sp-$22                                    ; $478d: $f8 $de
	ei                                               ; $478f: $fb
	sbc d                                            ; $4790: $9a
	dec sp                                           ; $4791: $3b
	db $db                                           ; $4792: $db
	ei                                               ; $4793: $fb
	dec de                                           ; $4794: $1b
	rra                                              ; $4795: $1f
	jp c, $dc1c                                      ; $4796: $da $1c $dc

	rst $38                                          ; $4799: $ff
	sbc h                                            ; $479a: $9c
	cp $fb                                           ; $479b: $fe $fb
	rst AddAOntoHL                                          ; $479d: $ef
	db $fc                                           ; $479e: $fc
	sbc h                                            ; $479f: $9c
	ld bc, $1f07                                     ; $47a0: $01 $07 $1f
	ld [hl], a                                       ; $47a3: $77
	db $f4                                           ; $47a4: $f4
	sbc e                                            ; $47a5: $9b
	cp [hl]                                          ; $47a6: $be
	ld hl, sp-$20                                    ; $47a7: $f8 $e0
	add b                                            ; $47a9: $80
	ld [hl], a                                       ; $47aa: $77
	db $f4                                           ; $47ab: $f4
	ld a, a                                          ; $47ac: $7f
	adc d                                            ; $47ad: $8a
	rst SubAFromDE                                          ; $47ae: $df
	rst $38                                          ; $47af: $ff
	ld [hl], e                                       ; $47b0: $73
	db $f4                                           ; $47b1: $f4
	cp $77                                           ; $47b2: $fe $77
	db $f4                                           ; $47b4: $f4
	db $dd                                           ; $47b5: $dd
	rst $38                                          ; $47b6: $ff
	sbc l                                            ; $47b7: $9d
	rrca                                             ; $47b8: $0f
	inc bc                                           ; $47b9: $03
	ld e, a                                          ; $47ba: $5f
	adc b                                            ; $47bb: $88
	sbc $ff                                          ; $47bc: $de $ff
	sbc d                                            ; $47be: $9a
	rra                                              ; $47bf: $1f
	cp a                                             ; $47c0: $bf
	rst AddAOntoHL                                          ; $47c1: $ef
	ei                                               ; $47c2: $fb
	ld a, $77                                        ; $47c3: $3e $77
	db $ec                                           ; $47c5: $ec
	sbc h                                            ; $47c6: $9c
	ret nz                                           ; $47c7: $c0

	ldh a, [$fc]                                     ; $47c8: $f0 $fc
	call c, $9eff                                    ; $47ca: $dc $ff $9e
	or a                                             ; $47cd: $b7
	sbc $b3                                          ; $47ce: $de $b3
	sbc $93                                          ; $47d0: $de $93
	sub h                                            ; $47d2: $94
	sbc e                                            ; $47d3: $9b
	ld l, d                                          ; $47d4: $6a
	ld a, [hl]                                       ; $47d5: $7e
	ld e, [hl]                                       ; $47d6: $5e
	ld e, a                                          ; $47d7: $5f
	ld a, a                                          ; $47d8: $7f
	ld a, a                                          ; $47d9: $7f
	ld a, l                                          ; $47da: $7d
	ld [hl], l                                       ; $47db: $75
	rra                                              ; $47dc: $1f
	rra                                              ; $47dd: $1f
	call c, $9e3f                                    ; $47de: $dc $3f $9e
	ld a, a                                          ; $47e1: $7f
	jp c, $9ef8                                      ; $47e2: $da $f8 $9e

	cp b                                             ; $47e5: $b8
	db $dd                                           ; $47e6: $dd
	call $cfdd                                       ; $47e7: $cd $dd $cf
	reti                                             ; $47ea: $d9


	ld a, a                                          ; $47eb: $7f
	add b                                            ; $47ec: $80
	cp l                                             ; $47ed: $bd
	db $fd                                           ; $47ee: $fd
	cp l                                             ; $47ef: $bd
	db $fd                                           ; $47f0: $fd
	rst $38                                          ; $47f1: $ff
	cp $fe                                           ; $47f2: $fe $fe
	db $fc                                           ; $47f4: $fc
	ld l, b                                          ; $47f5: $68
	ld l, b                                          ; $47f6: $68
	ld l, c                                          ; $47f7: $69
	ld l, e                                          ; $47f8: $6b
	jp hl                                            ; $47f9: $e9


	ld [$fcfe], a                                    ; $47fa: $ea $fe $fc
	rst $38                                          ; $47fd: $ff
	rst SubAFromBC                                          ; $47fe: $e7
	db $db                                           ; $47ff: $db
	xor b                                            ; $4800: $a8
	ld d, a                                          ; $4801: $57
	inc l                                            ; $4802: $2c
	ld e, c                                          ; $4803: $59
	or b                                             ; $4804: $b0
	cp a                                             ; $4805: $bf
	ldh [$c0], a                                     ; $4806: $e0 $c0
	sub a                                            ; $4808: $97
	cpl                                              ; $4809: $2f
	ld e, a                                          ; $480a: $5f
	cp h                                             ; $480b: $bc
	sbc [hl]                                         ; $480c: $9e
	ld a, h                                          ; $480d: $7c
	sbc $ff                                          ; $480e: $de $ff
	ld a, a                                          ; $4810: $7f
	sub h                                            ; $4811: $94
	ld [hl], e                                       ; $4812: $73
	cp $77                                           ; $4813: $fe $77
	adc l                                            ; $4815: $8d
	rst $38                                          ; $4816: $ff
	sbc $e2                                          ; $4817: $de $e2
	sub l                                            ; $4819: $95
	ld h, d                                          ; $481a: $62
	and d                                            ; $481b: $a2
	ldh [c], a                                       ; $481c: $e2
	ld h, d                                          ; $481d: $62
	ldh [c], a                                       ; $481e: $e2
	rst $38                                          ; $481f: $ff
	rst $38                                          ; $4820: $ff
	cp a                                             ; $4821: $bf
	cp a                                             ; $4822: $bf
	ld a, a                                          ; $4823: $7f
	ld a, e                                          ; $4824: $7b
	ld l, e                                          ; $4825: $6b
	call c, $9cfd                                    ; $4826: $dc $fd $9c
	db $dd                                           ; $4829: $dd
	call Call_03a_62cd                               ; $482a: $cd $cd $62
	ret nz                                           ; $482d: $c0

	sub e                                            ; $482e: $93
	or b                                             ; $482f: $b0
	and d                                            ; $4830: $a2
	or b                                             ; $4831: $b0
	cp h                                             ; $4832: $bc
	xor b                                            ; $4833: $a8
	sbc b                                            ; $4834: $98
	ret                                              ; $4835: $c9


	rst $38                                          ; $4836: $ff
	rst AddAOntoHL                                          ; $4837: $ef
	db $fd                                           ; $4838: $fd
	rst AddAOntoHL                                          ; $4839: $ef
	db $eb                                           ; $483a: $eb
	ld a, e                                          ; $483b: $7b
	ld b, c                                          ; $483c: $41
	sub a                                            ; $483d: $97
	ld a, a                                          ; $483e: $7f
	rra                                              ; $483f: $1f
	ld b, $ff                                        ; $4840: $06 $ff
	ld hl, sp+$40                                    ; $4842: $f8 $40
	inc e                                            ; $4844: $1c
	ccf                                              ; $4845: $3f
	ld h, e                                          ; $4846: $63
	nop                                              ; $4847: $00
	sbc b                                            ; $4848: $98
	jr nc, @-$7e                                     ; $4849: $30 $80

	ret nz                                           ; $484b: $c0

	db $fc                                           ; $484c: $fc
	nop                                              ; $484d: $00
	nop                                              ; $484e: $00
	ldh [$e0], a                                     ; $484f: $e0 $e0
	reti                                             ; $4851: $d9


	sbc [hl]                                         ; $4852: $9e
	ld [bc], a                                       ; $4853: $02
	db $fc                                           ; $4854: $fc
	sbc l                                            ; $4855: $9d
	inc bc                                           ; $4856: $03
	rrca                                             ; $4857: $0f
	ld h, [hl]                                       ; $4858: $66
	ldh [hDisp1_OBP1], a                                     ; $4859: $e0 $94
	dec de                                           ; $485b: $1b
	ld a, [de]                                       ; $485c: $1a
	dec de                                           ; $485d: $1b
	dec de                                           ; $485e: $1b
	ld a, [hl-]                                      ; $485f: $3a
	ld hl, sp-$08                                    ; $4860: $f8 $f8
	sbc b                                            ; $4862: $98
	inc e                                            ; $4863: $1c
	dec e                                            ; $4864: $1d
	rra                                              ; $4865: $1f
	ld [hl-], a                                      ; $4866: $32
	ldh [rRP], a                                     ; $4867: $e0 $56
	ld l, b                                          ; $4869: $68
	sbc h                                            ; $486a: $9c
	db $fc                                           ; $486b: $fc
	ldh a, [$c0]                                     ; $486c: $f0 $c0
	ld hl, sp+$57                                    ; $486e: $f8 $57
	db $f4                                           ; $4870: $f4
	db $fd                                           ; $4871: $fd
	sbc l                                            ; $4872: $9d
	rlca                                             ; $4873: $07
	ld bc, $dff3                                     ; $4874: $01 $f3 $df
	rst $38                                          ; $4877: $ff
	ld a, a                                          ; $4878: $7f
	ld d, [hl]                                       ; $4879: $56
	ld [hl], a                                       ; $487a: $77
	db $ec                                           ; $487b: $ec
	rst SubAFromDE                                          ; $487c: $df
	sbc e                                            ; $487d: $9b
	sub c                                            ; $487e: $91
	db $db                                           ; $487f: $db
	bit 5, a                                         ; $4880: $cb $6f
	inc a                                            ; $4882: $3c
	inc sp                                           ; $4883: $33
	ld c, h                                          ; $4884: $4c
	ld a, l                                          ; $4885: $7d
	ld l, l                                          ; $4886: $6d
	dec l                                            ; $4887: $2d
	dec a                                            ; $4888: $3d
	ccf                                              ; $4889: $3f
	ld a, a                                          ; $488a: $7f
	inc a                                            ; $488b: $3c
	inc sp                                           ; $488c: $33
	sbc $7f                                          ; $488d: $de $7f
	sbc b                                            ; $488f: $98
	rst GetHLinHL                                          ; $4890: $cf
	rrca                                             ; $4891: $0f
	rrca                                             ; $4892: $0f
	ccf                                              ; $4893: $3f
	ld a, a                                          ; $4894: $7f
	cp b                                             ; $4895: $b8
	ld hl, sp-$23                                    ; $4896: $f8 $dd
	db $fc                                           ; $4898: $fc
	rst SubAFromDE                                          ; $4899: $df
	ld hl, sp-$64                                    ; $489a: $f8 $9c
	rst GetHLinHL                                          ; $489c: $cf
	ret z                                            ; $489d: $c8

	adc $de                                          ; $489e: $ce $de
	rst GetHLinHL                                          ; $48a0: $cf
	sbc d                                            ; $48a1: $9a
	ret nz                                           ; $48a2: $c0

	rst GetHLinHL                                          ; $48a3: $cf
	ld a, a                                          ; $48a4: $7f
	ld [hl], a                                       ; $48a5: $77
	ld [hl], c                                       ; $48a6: $71
	sbc $70                                          ; $48a7: $de $70
	rst SubAFromDE                                          ; $48a9: $df
	ld a, a                                          ; $48aa: $7f
	adc h                                            ; $48ab: $8c
	db $fd                                           ; $48ac: $fd
	ld a, [bc]                                       ; $48ad: $0a
	ld a, [bc]                                       ; $48ae: $0a
	sub h                                            ; $48af: $94
	call nc, $29a8                                   ; $48b0: $d4 $a8 $29
	pop de                                           ; $48b3: $d1
	db $fc                                           ; $48b4: $fc
	ld sp, hl                                        ; $48b5: $f9
	ld sp, hl                                        ; $48b6: $f9
	ld [hl], e                                       ; $48b7: $73
	inc sp                                           ; $48b8: $33
	ld h, a                                          ; $48b9: $67
	rst SubAFromBC                                          ; $48ba: $e7
	rst GetHLinHL                                          ; $48bb: $cf
	cp a                                             ; $48bc: $bf
	nop                                              ; $48bd: $00
	ld b, b                                          ; $48be: $40
	ld a, e                                          ; $48bf: $7b
	ld [hl], l                                       ; $48c0: $75
	ld a, a                                          ; $48c1: $7f
	or c                                             ; $48c2: $b1
	ld a, e                                          ; $48c3: $7b
	ei                                               ; $48c4: $fb
	sbc h                                            ; $48c5: $9c
	ret nz                                           ; $48c6: $c0

	add b                                            ; $48c7: $80
	add b                                            ; $48c8: $80
	ld [hl], e                                       ; $48c9: $73
	ld l, a                                          ; $48ca: $6f
	ld [hl], d                                       ; $48cb: $72
	cp l                                             ; $48cc: $bd
	ld l, a                                          ; $48cd: $6f
	ld h, l                                          ; $48ce: $65
	rst SubAFromDE                                          ; $48cf: $df
	rst $38                                          ; $48d0: $ff
	sbc $e2                                          ; $48d1: $de $e2
	call c, $d9e0                                    ; $48d3: $dc $e0 $d9
	rst $38                                          ; $48d6: $ff
	rst SubAFromDE                                          ; $48d7: $df
	call $8ddc                                       ; $48d8: $cd $dc $8d
	ld a, d                                          ; $48db: $7a
	ret nz                                           ; $48dc: $c0

	db $db                                           ; $48dd: $db
	ld b, e                                          ; $48de: $43
	sbc h                                            ; $48df: $9c
	call z, $f0e4                                    ; $48e0: $cc $e4 $f0
	ld a, e                                          ; $48e3: $7b
	sub l                                            ; $48e4: $95
	rst SubAFromDE                                          ; $48e5: $df
	xor $9b                                          ; $48e6: $ee $9b
	rst FarCall                                          ; $48e8: $f7
	db $db                                           ; $48e9: $db
	xor $f6                                          ; $48ea: $ee $f6
	sbc $be                                          ; $48ec: $de $be
	sbc [hl]                                         ; $48ee: $9e
	cp d                                             ; $48ef: $ba
	ldh [$cd], a                                     ; $48f0: $e0 $cd
	sbc e                                            ; $48f2: $9b
	ld h, b                                          ; $48f3: $60
	jr nc, jr_03a_4906                               ; $48f4: $30 $10

	or b                                             ; $48f6: $b0
	db $fd                                           ; $48f7: $fd
	sbc c                                            ; $48f8: $99
	db $10                                           ; $48f9: $10
	ld d, b                                          ; $48fa: $50
	ld [hl], b                                       ; $48fb: $70
	ld h, b                                          ; $48fc: $60
	ld a, $f8                                        ; $48fd: $3e $f8
	ld l, [hl]                                       ; $48ff: $6e
	sub l                                            ; $4900: $95
	ld a, e                                          ; $4901: $7b
	ld [hl], b                                       ; $4902: $70
	call c, $d97f                                    ; $4903: $dc $7f $d9

jr_03a_4906:
	jr jr_03a_497a                                   ; $4906: $18 $72

	ldh [$9c], a                                     ; $4908: $e0 $9c
	db $fc                                           ; $490a: $fc
	call c, $fa1c                                    ; $490b: $dc $1c $fa
	sbc [hl]                                         ; $490e: $9e
	inc bc                                           ; $490f: $03
	ld c, d                                          ; $4910: $4a
	ldh [$62], a                                     ; $4911: $e0 $62
	cp b                                             ; $4913: $b8
	inc bc                                           ; $4914: $03
	ldh a, [rWX]                                     ; $4915: $f0 $4b
	ldh a, [hDisp1_WX]                                     ; $4917: $f0 $96
	ld [hl], c                                       ; $4919: $71
	ld h, a                                          ; $491a: $67
	ld a, a                                          ; $491b: $7f
	ld e, l                                          ; $491c: $5d
	dec b                                            ; $491d: $05
	ld b, l                                          ; $491e: $45
	ld d, l                                          ; $491f: $55
	push de                                          ; $4920: $d5
	rrca                                             ; $4921: $0f
	ld a, c                                          ; $4922: $79
	add a                                            ; $4923: $87
	rst SubAFromDE                                          ; $4924: $df
	ld a, $df                                        ; $4925: $3e $df
	ld l, $7c                                        ; $4927: $2e $7c
	and $db                                          ; $4929: $e6 $db
	rst SubAFromDE                                          ; $492b: $df
	reti                                             ; $492c: $d9


	ld hl, sp-$21                                    ; $492d: $f8 $df
	call z, $cfdb                                    ; $492f: $cc $db $cf
	reti                                             ; $4932: $d9


	ld a, a                                          ; $4933: $7f
	sbc [hl]                                         ; $4934: $9e
	ld h, e                                          ; $4935: $63
	ld a, e                                          ; $4936: $7b
	ld h, a                                          ; $4937: $67
	sbc [hl]                                         ; $4938: $9e
	cp $7b                                           ; $4939: $fe $7b
	add h                                            ; $493b: $84
	sbc [hl]                                         ; $493c: $9e
	rst SubAFromDE                                          ; $493d: $df
	sub $ff                                          ; $493e: $d6 $ff
	ld e, c                                          ; $4940: $59
	jr nz, jr_03a_4986                               ; $4941: $20 $43

	ldh a, [$15]                                     ; $4943: $f0 $15
	nop                                              ; $4945: $00
	sbc l                                            ; $4946: $9d
	inc sp                                           ; $4947: $33
	ld b, l                                          ; $4948: $45
	call c, $9c55                                    ; $4949: $dc $55 $9c
	ld b, h                                          ; $494c: $44
	dec [hl]                                         ; $494d: $35
	inc sp                                           ; $494e: $33
	ld h, a                                          ; $494f: $67
	or $de                                           ; $4950: $f6 $de
	inc sp                                           ; $4952: $33
	sbc h                                            ; $4953: $9c
	ld b, l                                          ; $4954: $45
	ld d, [hl]                                       ; $4955: $56
	ld h, l                                          ; $4956: $65
	ld l, a                                          ; $4957: $6f
	or $f1                                           ; $4958: $f6 $f1
	add h                                            ; $495a: $84
	reti                                             ; $495b: $d9


	ldh [$d9], a                                     ; $495c: $e0 $d9
	rst $38                                          ; $495e: $ff
	rst SubAFromDE                                          ; $495f: $df
	call $ed9d                                       ; $4960: $cd $9d $ed
	db $dd                                           ; $4963: $dd
	db $dd                                           ; $4964: $dd
	db $fd                                           ; $4965: $fd
	sbc e                                            ; $4966: $9b
	ld b, e                                          ; $4967: $43
	ld d, e                                          ; $4968: $53

jr_03a_4969:
	ld [hl], e                                       ; $4969: $73
	ld h, e                                          ; $496a: $63
	db $dd                                           ; $496b: $dd
	inc bc                                           ; $496c: $03
	db $dd                                           ; $496d: $dd
	ld a, [$f8de]                                    ; $496e: $fa $de $f8
	sbc [hl]                                         ; $4971: $9e
	ld a, [$afda]                                    ; $4972: $fa $da $af
	sbc [hl]                                         ; $4975: $9e
	xor l                                            ; $4976: $ad
	db $eb                                           ; $4977: $eb
	sbc l                                            ; $4978: $9d
	dec d                                            ; $4979: $15

jr_03a_497a:
	ld [de], a                                       ; $497a: $12
	db $fd                                           ; $497b: $fd
	rst SubAFromDE                                          ; $497c: $df
	db $10                                           ; $497d: $10
	add b                                            ; $497e: $80
	ld [de], a                                       ; $497f: $12
	pop af                                           ; $4980: $f1
	inc b                                            ; $4981: $04
	ld [$060a], sp                                   ; $4982: $08 $0a $06
	dec b                                            ; $4985: $05

jr_03a_4986:
	ld [hl+], a                                      ; $4986: $22
	ld a, [bc]                                       ; $4987: $0a
	ret nc                                           ; $4988: $d0

	nop                                              ; $4989: $00
	inc e                                            ; $498a: $1c
	inc b                                            ; $498b: $04
	ld [bc], a                                       ; $498c: $02
	ld [bc], a                                       ; $498d: $02
	ld bc, $2131                                     ; $498e: $01 $31 $21
	ret nc                                           ; $4991: $d0

	ldh [$98], a                                     ; $4992: $e0 $98
	ld [hl-], a                                      ; $4994: $32
	jr nc, jr_03a_49f7                               ; $4995: $30 $60

	ld c, b                                          ; $4997: $48
	db $f4                                           ; $4998: $f4
	ld h, b                                          ; $4999: $60
	ld b, b                                          ; $499a: $40
	ld c, [hl]                                       ; $499b: $4e
	reti                                             ; $499c: $d9


	ldh [$9c], a                                     ; $499d: $e0 $9c
	ret nz                                           ; $499f: $c0

	adc $d8                                          ; $49a0: $ce $d8
	ld sp, hl                                        ; $49a2: $f9
	sbc l                                            ; $49a3: $9d
	ld a, h                                          ; $49a4: $7c
	ld [hl], b                                       ; $49a5: $70
	db $db                                           ; $49a6: $db
	ld b, b                                          ; $49a7: $40
	reti                                             ; $49a8: $d9


	jr @-$25                                         ; $49a9: $18 $d9

	inc e                                            ; $49ab: $1c
	reti                                             ; $49ac: $d9


	inc bc                                           ; $49ad: $03
	reti                                             ; $49ae: $d9


	ld bc, $ffdf                                     ; $49af: $01 $df $ff
	add a                                            ; $49b2: $87
	rra                                              ; $49b3: $1f
	jr nz, jr_03a_49d6                               ; $49b4: $20 $20

	nop                                              ; $49b6: $00
	ld [bc], a                                       ; $49b7: $02
	ld [bc], a                                       ; $49b8: $02
	rst $38                                          ; $49b9: $ff
	rst $38                                          ; $49ba: $ff
	ldh [$df], a                                     ; $49bb: $e0 $df
	rst SubAFromDE                                          ; $49bd: $df
	rst $38                                          ; $49be: $ff
	db $fd                                           ; $49bf: $fd
	cp l                                             ; $49c0: $bd
	rst $38                                          ; $49c1: $ff
	rst $38                                          ; $49c2: $ff
	ld a, a                                          ; $49c3: $7f
	ld [hl], b                                       ; $49c4: $70
	ld a, [hl]                                       ; $49c5: $7e
	ld a, [hl]                                       ; $49c6: $7e
	ld a, l                                          ; $49c7: $7d
	ld a, e                                          ; $49c8: $7b
	rst $38                                          ; $49c9: $ff
	rst $38                                          ; $49ca: $ff
	db $db                                           ; $49cb: $db
	add b                                            ; $49cc: $80
	sbc $ff                                          ; $49cd: $de $ff
	db $dd                                           ; $49cf: $dd
	rst GetHLinHL                                          ; $49d0: $cf
	sbc e                                            ; $49d1: $9b
	adc $ff                                          ; $49d2: $ce $ff
	rst $38                                          ; $49d4: $ff
	ret nz                                           ; $49d5: $c0

jr_03a_49d6:
	ld l, e                                          ; $49d6: $6b
	jr c, jr_03a_4969                                ; $49d7: $38 $90

	ei                                               ; $49d9: $fb
	ld sp, hl                                        ; $49da: $f9
	ld hl, sp-$80                                    ; $49db: $f8 $80
	nop                                              ; $49dd: $00
	nop                                              ; $49de: $00
	rst $38                                          ; $49df: $ff
	rst $38                                          ; $49e0: $ff
	inc b                                            ; $49e1: $04
	ld b, $07                                        ; $49e2: $06 $07
	rlca                                             ; $49e4: $07
	inc bc                                           ; $49e5: $03
	inc bc                                           ; $49e6: $03
	push de                                          ; $49e7: $d5
	sbc $95                                          ; $49e8: $de $95
	sbc d                                            ; $49ea: $9a
	sub h                                            ; $49eb: $94
	and h                                            ; $49ec: $a4
	and l                                            ; $49ed: $a5
	and l                                            ; $49ee: $a5
	ld l, $de                                        ; $49ef: $2e $de
	ld l, [hl]                                       ; $49f1: $6e
	sbc e                                            ; $49f2: $9b
	ld l, a                                          ; $49f3: $6f
	ld e, a                                          ; $49f4: $5f
	ld e, [hl]                                       ; $49f5: $5e
	ld e, [hl]                                       ; $49f6: $5e

jr_03a_49f7:
	call c, $dedf                                    ; $49f7: $dc $df $de
	rst $38                                          ; $49fa: $ff
	reti                                             ; $49fb: $d9


	ld hl, sp-$27                                    ; $49fc: $f8 $d9
	adc $d9                                          ; $49fe: $ce $d9
	ld a, a                                          ; $4a00: $7f
	ld sp, hl                                        ; $4a01: $f9
	reti                                             ; $4a02: $d9


	rst $38                                          ; $4a03: $ff
	ccf                                              ; $4a04: $3f
	ldh a, [$99]                                     ; $4a05: $f0 $99
	ccf                                              ; $4a07: $3f
	ld a, a                                          ; $4a08: $7f
	ld h, b                                          ; $4a09: $60
	ld a, a                                          ; $4a0a: $7f
	ld a, b                                          ; $4a0b: $78
	ld l, a                                          ; $4a0c: $6f
	call c, $9bff                                    ; $4a0d: $dc $ff $9b
	ldh [$e7], a                                     ; $4a10: $e0 $e7
	ldh a, [$e0]                                     ; $4a12: $f0 $e0
	db $fd                                           ; $4a14: $fd
	sbc $e0                                          ; $4a15: $de $e0
	sbc [hl]                                         ; $4a17: $9e

jr_03a_4a18:
	rra                                              ; $4a18: $1f
	jp c, $dcff                                      ; $4a19: $da $ff $dc

	db $fd                                           ; $4a1c: $fd
	sbc h                                            ; $4a1d: $9c
	sbc l                                            ; $4a1e: $9d
	adc l                                            ; $4a1f: $8d
	adc l                                            ; $4a20: $8d
	call c, $de03                                    ; $4a21: $dc $03 $de
	ld b, e                                          ; $4a24: $43
	sbc h                                            ; $4a25: $9c
	add sp, -$16                                     ; $4a26: $e8 $ea
	ld [$fadd], a                                    ; $4a28: $ea $dd $fa
	sbc e                                            ; $4a2b: $9b
	ld [$bdbf], a                                    ; $4a2c: $ea $bf $bd
	cp l                                             ; $4a2f: $bd
	db $dd                                           ; $4a30: $dd
	xor a                                            ; $4a31: $af
	sbc [hl]                                         ; $4a32: $9e
	cp l                                             ; $4a33: $bd
	cp $7b                                           ; $4a34: $fe $7b
	ld h, a                                          ; $4a36: $67
	sbc h                                            ; $4a37: $9c
	inc b                                            ; $4a38: $04
	dec b                                            ; $4a39: $05
	inc bc                                           ; $4a3a: $03
	db $dd                                           ; $4a3b: $dd
	rlca                                             ; $4a3c: $07
	rst SubAFromDE                                          ; $4a3d: $df
	inc bc                                           ; $4a3e: $03
	sub h                                            ; $4a3f: $94
	ld [bc], a                                       ; $4a40: $02
	rst SubAFromHL                                          ; $4a41: $d7
	ld b, c                                          ; $4a42: $41
	jr nz, jr_03a_4a65                               ; $4a43: $20 $20

	ld h, b                                          ; $4a45: $60
	ldh [rAUD4POLY], a                               ; $4a46: $e0 $22
	ld [hl+], a                                      ; $4a48: $22
	pop af                                           ; $4a49: $f1
	or $dc                                           ; $4a4a: $f6 $dc
	ldh a, [$80]                                     ; $4a4c: $f0 $80
	or l                                             ; $4a4e: $b5
	pop af                                           ; $4a4f: $f1
	sbc c                                            ; $4a50: $99
	dec d                                            ; $4a51: $15
	rrca                                             ; $4a52: $0f
	rlca                                             ; $4a53: $07
	dec l                                            ; $4a54: $2d
	adc h                                            ; $4a55: $8c
	ld h, a                                          ; $4a56: $67
	ldh [rSVBK], a                                   ; $4a57: $e0 $70
	jr jr_03a_4a77                                   ; $4a59: $18 $1c

	inc c                                            ; $4a5b: $0c
	ld b, $67                                        ; $4a5c: $06 $67
	inc hl                                           ; $4a5e: $23
	ret c                                            ; $4a5f: $d8

	jr nz, @-$4d                                     ; $4a60: $20 $b1

	and e                                            ; $4a62: $a3
	and $6b                                          ; $4a63: $e6 $6b

jr_03a_4a65:
	ld c, h                                          ; $4a65: $4c
	jr c, jr_03a_4a18                                ; $4a66: $38 $b0

	pop af                                           ; $4a68: $f1
	jp $e5fa                                         ; $4a69: $c3 $fa $e5


	rst SubAFromBC                                          ; $4a6c: $e7
	sbc h                                            ; $4a6d: $9c
	and $ec                                          ; $4a6e: $e6 $ec
	nop                                              ; $4a70: $00
	ld a, e                                          ; $4a71: $7b
	inc h                                            ; $4a72: $24
	ld [hl], a                                       ; $4a73: $77
	db $fc                                           ; $4a74: $fc
	sbc l                                            ; $4a75: $9d
	ld b, b                                          ; $4a76: $40

jr_03a_4a77:
	ret nz                                           ; $4a77: $c0

	sbc $40                                          ; $4a78: $de $40
	ld a, e                                          ; $4a7a: $7b
	db $fc                                           ; $4a7b: $fc
	ld b, $c0                                        ; $4a7c: $06 $c0
	add [hl]                                         ; $4a7e: $86
	ld [de], a                                       ; $4a7f: $12
	ld [hl], $24                                     ; $4a80: $36 $24
	inc h                                            ; $4a82: $24
	ld hl, $0100                                     ; $4a83: $21 $00 $01
	inc de                                           ; $4a86: $13
	xor l                                            ; $4a87: $ad
	adc c                                            ; $4a88: $89
	sbc e                                            ; $4a89: $9b
	sbc e                                            ; $4a8a: $9b
	sbc [hl]                                         ; $4a8b: $9e
	cp h                                             ; $4a8c: $bc
	cp h                                             ; $4a8d: $bc
	xor b                                            ; $4a8e: $a8
	ld [hl], a                                       ; $4a8f: $77
	ld l, [hl]                                       ; $4a90: $6e
	call c, $72b9                                    ; $4a91: $dc $b9 $72
	db $e4                                           ; $4a94: $e4
	ret z                                            ; $4a95: $c8

	sub b                                            ; $4a96: $90
	add b                                            ; $4a97: $80
	ld [hl], a                                       ; $4a98: $77
	cp b                                             ; $4a99: $b8
	cp $8f                                           ; $4a9a: $fe $8f
	call z, $c8c0                                    ; $4a9c: $cc $c0 $c8
	ret z                                            ; $4a9f: $c8

	ret nz                                           ; $4aa0: $c0

	ret nz                                           ; $4aa1: $c0

	add sp, -$18                                     ; $4aa2: $e8 $e8
	ldh [$e0], a                                     ; $4aa4: $e0 $e0
	pop hl                                           ; $4aa6: $e1
	ldh [c], a                                       ; $4aa7: $e2
	db $ec                                           ; $4aa8: $ec
	add sp, -$40                                     ; $4aa9: $e8 $c0
	ret nz                                           ; $4aab: $c0

	db $fd                                           ; $4aac: $fd
	sbc b                                            ; $4aad: $98
	ld [bc], a                                       ; $4aae: $02
	inc b                                            ; $4aaf: $04
	add hl, bc                                       ; $4ab0: $09
	ld [de], a                                       ; $4ab1: $12
	ld b, e                                          ; $4ab2: $43
	add c                                            ; $4ab3: $81
	ld bc, $dffc                                     ; $4ab4: $01 $fc $df
	and l                                            ; $4ab7: $a5
	sub a                                            ; $4ab8: $97
	and [hl]                                         ; $4ab9: $a6
	xor d                                            ; $4aba: $aa
	xor d                                            ; $4abb: $aa
	adc d                                            ; $4abc: $8a
	adc d                                            ; $4abd: $8a
	adc h                                            ; $4abe: $8c
	ld e, [hl]                                       ; $4abf: $5e
	ld e, [hl]                                       ; $4ac0: $5e
	sbc $5d                                          ; $4ac1: $de $5d
	rst SubAFromDE                                          ; $4ac3: $df
	ld a, l                                          ; $4ac4: $7d
	sbc [hl]                                         ; $4ac5: $9e
	ld a, e                                          ; $4ac6: $7b
	reti                                             ; $4ac7: $d9


	rst SubAFromDE                                          ; $4ac8: $df
	ld e, d                                          ; $4ac9: $5a
	ret nz                                           ; $4aca: $c0

	sbc l                                            ; $4acb: $9d
	rst GetHLinHL                                          ; $4acc: $cf
	ret nz                                           ; $4acd: $c0

	sbc $c7                                          ; $4ace: $de $c7
	call c, $de7f                                    ; $4ad0: $dc $7f $de
	ld a, b                                          ; $4ad3: $78
	halt                                             ; $4ad4: $76
	push de                                          ; $4ad5: $d5
	sbc e                                            ; $4ad6: $9b
	dec de                                           ; $4ad7: $1b
	db $db                                           ; $4ad8: $db
	db $db                                           ; $4ad9: $db
	ret c                                            ; $4ada: $d8

	db $dd                                           ; $4adb: $dd
	rst $38                                          ; $4adc: $ff
	sbc e                                            ; $4add: $9b
	db $fc                                           ; $4ade: $fc
	inc a                                            ; $4adf: $3c
	inc a                                            ; $4ae0: $3c
	ld a, $fe                                        ; $4ae1: $3e $fe
	sbc $fe                                          ; $4ae3: $de $fe
	sbc l                                            ; $4ae5: $9d
	rlca                                             ; $4ae6: $07
	rst FarCall                                          ; $4ae7: $f7
	db $dd                                           ; $4ae8: $dd
	rst $38                                          ; $4ae9: $ff
	rst SubAFromDE                                          ; $4aea: $df
	inc bc                                           ; $4aeb: $03
	sbc b                                            ; $4aec: $98
	ei                                               ; $4aed: $fb
	add hl, bc                                       ; $4aee: $09
	ld a, a                                          ; $4aef: $7f
	ld [hl], d                                       ; $4af0: $72
	ld a, a                                          ; $4af1: $7f
	ld a, d                                          ; $4af2: $7a
	ld a, d                                          ; $4af3: $7a
	ld a, e                                          ; $4af4: $7b
	db $fd                                           ; $4af5: $fd
	sbc l                                            ; $4af6: $9d
	ldh [$ed], a                                     ; $4af7: $e0 $ed
	db $d3                                           ; $4af9: $d3
	ldh [$d9], a                                     ; $4afa: $e0 $d9
	rst $38                                          ; $4afc: $ff
	db $db                                           ; $4afd: $db
	adc l                                            ; $4afe: $8d
	sbc l                                            ; $4aff: $9d
	call $d99d                                       ; $4b00: $cd $9d $d9
	ld b, e                                          ; $4b03: $43
	rst SubAFromDE                                          ; $4b04: $df
	ld [$aadc], a                                    ; $4b05: $ea $dc $aa
	sbc e                                            ; $4b08: $9b
	add sp, -$43                                     ; $4b09: $e8 $bd
	cp l                                             ; $4b0b: $bd
	db $fd                                           ; $4b0c: $fd
	sbc $dd                                          ; $4b0d: $de $dd
	sub e                                            ; $4b0f: $93
	db $fd                                           ; $4b10: $fd
	cp a                                             ; $4b11: $bf
	inc b                                            ; $4b12: $04
	dec b                                            ; $4b13: $05
	inc b                                            ; $4b14: $04
	dec b                                            ; $4b15: $05
	rlca                                             ; $4b16: $07
	inc b                                            ; $4b17: $04
	rst $38                                          ; $4b18: $ff
	rst $38                                          ; $4b19: $ff
	rlca                                             ; $4b1a: $07
	ld b, $7b                                        ; $4b1b: $06 $7b
	cp $de                                           ; $4b1d: $fe $de
	rlca                                             ; $4b1f: $07
	add b                                            ; $4b20: $80
	dec h                                            ; $4b21: $25
	ld [hl+], a                                      ; $4b22: $22
	ld hl, $e020                                     ; $4b23: $21 $20 $e0
	ld h, b                                          ; $4b26: $60
	ldh a, [$f0]                                     ; $4b27: $f0 $f0
	or $b1                                           ; $4b29: $f6 $b1
	pop af                                           ; $4b2b: $f1
	or b                                             ; $4b2c: $b0
	ldh a, [$f0]                                     ; $4b2d: $f0 $f0
	rst $38                                          ; $4b2f: $ff
	rst $38                                          ; $4b30: $ff
	ld d, c                                          ; $4b31: $51
	adc d                                            ; $4b32: $8a
	ld e, l                                          ; $4b33: $5d
	xor a                                            ; $4b34: $af
	dec bc                                           ; $4b35: $0b
	ld b, $00                                        ; $4b36: $06 $00
	nop                                              ; $4b38: $00
	inc hl                                           ; $4b39: $23
	ld sp, $7cc8                                     ; $4b3a: $31 $c8 $7c
	ld b, $03                                        ; $4b3d: $06 $03
	rst $38                                          ; $4b3f: $ff
	sub b                                            ; $4b40: $90
	rst $38                                          ; $4b41: $ff
	or b                                             ; $4b42: $b0

Jump_03a_4b43:
	and b                                            ; $4b43: $a0
	sbc l                                            ; $4b44: $9d
	ld e, a                                          ; $4b45: $5f
	jp nc, $00c8                                     ; $4b46: $d2 $c8 $00

	nop                                              ; $4b49: $00
	ret c                                            ; $4b4a: $d8

	ld hl, sp-$0d                                    ; $4b4b: $f8 $f3
	cp [hl]                                          ; $4b4d: $be
	inc a                                            ; $4b4e: $3c
	jr nc, jr_03a_4bc3                               ; $4b4f: $30 $72

	jr nc, @+$73                                     ; $4b51: $30 $71

	ldh [c], a                                       ; $4b53: $e2
	ld a, d                                          ; $4b54: $7a
	jp $c27a                                         ; $4b55: $c3 $7a $c2


	rst SubAFromDE                                          ; $4b58: $df
	rst $38                                          ; $4b59: $ff
	db $db                                           ; $4b5a: $db
	jr @-$1f                                         ; $4b5b: $18 $df

	rst $38                                          ; $4b5d: $ff
	db $db                                           ; $4b5e: $db
	inc e                                            ; $4b5f: $1c
	ld [hl], a                                       ; $4b60: $77
	ld e, h                                          ; $4b61: $5c
	db $dd                                           ; $4b62: $dd
	inc bc                                           ; $4b63: $03
	rst SubAFromDE                                          ; $4b64: $df
	rst $38                                          ; $4b65: $ff
	ld h, l                                          ; $4b66: $65
	add d                                            ; $4b67: $82
	sbc e                                            ; $4b68: $9b
	daa                                              ; $4b69: $27
	ld c, $0c                                        ; $4b6a: $0e $0c
	ld [$d077], sp                                   ; $4b6c: $08 $77 $d0
	sbc d                                            ; $4b6f: $9a
	sub b                                            ; $4b70: $90
	or b                                             ; $4b71: $b0
	and b                                            ; $4b72: $a0
	or b                                             ; $4b73: $b0
	add b                                            ; $4b74: $80
	ld a, e                                          ; $4b75: $7b
	ld e, d                                          ; $4b76: $5a
	sbc [hl]                                         ; $4b77: $9e
	ld bc, $e37a                                     ; $4b78: $01 $7a $e3
	sbc [hl]                                         ; $4b7b: $9e
	rlca                                             ; $4b7c: $07
	ld a, e                                          ; $4b7d: $7b
	ldh a, [$65]                                     ; $4b7e: $f0 $65
	ld [$c77a], a                                    ; $4b80: $ea $7a $c7
	ld [hl], e                                       ; $4b83: $73
	ld b, d                                          ; $4b84: $42
	db $db                                           ; $4b85: $db
	ret nz                                           ; $4b86: $c0

	rst SubAFromDE                                          ; $4b87: $df
	rst $38                                          ; $4b88: $ff
	sbc e                                            ; $4b89: $9b
	inc h                                            ; $4b8a: $24
	ld c, c                                          ; $4b8b: $49
	sub b                                            ; $4b8c: $90
	ld hl, $e877                                     ; $4b8d: $21 $77 $e8
	ld h, a                                          ; $4b90: $67
	ldh [$df], a                                     ; $4b91: $e0 $df
	adc h                                            ; $4b93: $8c
	db $dd                                           ; $4b94: $dd
	call z, $c89d                                    ; $4b95: $cc $9d $c8
	ld c, b                                          ; $4b98: $48
	db $db                                           ; $4b99: $db
	ld a, e                                          ; $4b9a: $7b
	sbc l                                            ; $4b9b: $9d
	ld a, a                                          ; $4b9c: $7f
	rst $38                                          ; $4b9d: $ff
	ld b, [hl]                                       ; $4b9e: $46
	ret nz                                           ; $4b9f: $c0

	jp c, $9ecf                                      ; $4ba0: $da $cf $9e

	ret                                              ; $4ba3: $c9


	jp c, $9b70                                      ; $4ba4: $da $70 $9b

	halt                                             ; $4ba7: $76
	ret c                                            ; $4ba8: $d8

	call c, $dedc                                    ; $4ba9: $dc $dc $de
	db $dd                                           ; $4bac: $dd
	rst SubAFromDE                                          ; $4bad: $df
	reti                                             ; $4bae: $d9


	call c, $de3e                                    ; $4baf: $dc $3e $de
	ccf                                              ; $4bb2: $3f
	ld a, l                                          ; $4bb3: $7d
	call c, $0793                                    ; $4bb4: $dc $93 $07
	add a                                            ; $4bb7: $87
	inc bc                                           ; $4bb8: $03
	sub e                                            ; $4bb9: $93
	di                                               ; $4bba: $f3
	and e                                            ; $4bbb: $a3
	add hl, bc                                       ; $4bbc: $09
	dec b                                            ; $4bbd: $05
	dec b                                            ; $4bbe: $05
	inc b                                            ; $4bbf: $04
	inc b                                            ; $4bc0: $04
	ld h, $78                                        ; $4bc1: $26 $78

jr_03a_4bc3:
	ld hl, sp-$66                                    ; $4bc3: $f8 $9a
	ld hl, sp-$07                                    ; $4bc5: $f8 $f9
	cp $ff                                           ; $4bc7: $fe $ff
	db $f4                                           ; $4bc9: $f4
	call c, $98e0                                    ; $4bca: $dc $e0 $98
	pop hl                                           ; $4bcd: $e1
	ldh [$e0], a                                     ; $4bce: $e0 $e0
	ld h, c                                          ; $4bd0: $61
	ld a, a                                          ; $4bd1: $7f
	ldh [$e0], a                                     ; $4bd2: $e0 $e0
	db $db                                           ; $4bd4: $db
	ld h, b                                          ; $4bd5: $60
	reti                                             ; $4bd6: $d9


	rst $38                                          ; $4bd7: $ff
	adc a                                            ; $4bd8: $8f
	ld c, l                                          ; $4bd9: $4d
	cp l                                             ; $4bda: $bd
	db $fd                                           ; $4bdb: $fd
	db $fd                                           ; $4bdc: $fd
	ld sp, hl                                        ; $4bdd: $f9
	di                                               ; $4bde: $f3
	rst SubAFromBC                                          ; $4bdf: $e7
	adc a                                            ; $4be0: $8f
	di                                               ; $4be1: $f3
	ld b, e                                          ; $4be2: $43
	inc bc                                           ; $4be3: $03
	inc bc                                           ; $4be4: $03
	rlca                                             ; $4be5: $07
	rrca                                             ; $4be6: $0f
	rra                                              ; $4be7: $1f
	ld a, a                                          ; $4be8: $7f
	ld a, c                                          ; $4be9: $79
	add b                                            ; $4bea: $80
	rst SubAFromDE                                          ; $4beb: $df
	ld [$bbdf], a                                    ; $4bec: $ea $df $bb
	sbc [hl]                                         ; $4bef: $9e
	cp $dc                                           ; $4bf0: $fe $dc
	cp a                                             ; $4bf2: $bf
	db $dd                                           ; $4bf3: $dd
	rst $38                                          ; $4bf4: $ff
	ld a, a                                          ; $4bf5: $7f
	jp nz, $727e                                     ; $4bf6: $c2 $7e $72

	sbc h                                            ; $4bf9: $9c
	rst $38                                          ; $4bfa: $ff
	rrca                                             ; $4bfb: $0f
	rst FarCall                                          ; $4bfc: $f7
	db $dd                                           ; $4bfd: $dd
	rlca                                             ; $4bfe: $07
	db $dd                                           ; $4bff: $dd
	rst $38                                          ; $4c00: $ff
	sub a                                            ; $4c01: $97
	db $10                                           ; $4c02: $10
	rra                                              ; $4c03: $1f
	ld [hl], b                                       ; $4c04: $70
	inc e                                            ; $4c05: $1c
	ld e, $bd                                        ; $4c06: $1e $bd
	dec sp                                           ; $4c08: $3b
	rst FarCall                                          ; $4c09: $f7
	ld a, e                                          ; $4c0a: $7b
	add sp, -$28                                     ; $4c0b: $e8 $d8
	rst $38                                          ; $4c0d: $ff
	ld a, a                                          ; $4c0e: $7f
	ld c, c                                          ; $4c0f: $49
	ld a, h                                          ; $4c10: $7c
	xor c                                            ; $4c11: $a9
	ld d, c                                          ; $4c12: $51
	inc c                                            ; $4c13: $0c
	ld [hl], a                                       ; $4c14: $77
	cp $53                                           ; $4c15: $fe $53
	ldh a, [$7e]                                     ; $4c17: $f0 $7e
	rst JumpTable                                          ; $4c19: $c7
	ld h, a                                          ; $4c1a: $67
	ldh a, [$9d]                                     ; $4c1b: $f0 $9d
	ldh a, [$fc]                                     ; $4c1d: $f0 $fc
	ld l, a                                          ; $4c1f: $6f
	ldh [$9d], a                                     ; $4c20: $e0 $9d
	rrca                                             ; $4c22: $0f
	inc bc                                           ; $4c23: $03
	ld l, e                                          ; $4c24: $6b
	ldh [hDisp1_OBP1], a                                     ; $4c25: $e0 $94
	ccf                                              ; $4c27: $3f
	rrca                                             ; $4c28: $0f
	jp $ff00                                         ; $4c29: $c3 $00 $ff


	rra                                              ; $4c2c: $1f
	rst $38                                          ; $4c2d: $ff
	nop                                              ; $4c2e: $00
	ret nz                                           ; $4c2f: $c0

	ldh a, [$3c]                                     ; $4c30: $f0 $3c
	ld e, a                                          ; $4c32: $5f
	ret nc                                           ; $4c33: $d0

	ld a, [hl]                                       ; $4c34: $7e
	rst SubAFromBC                                          ; $4c35: $e7
	daa                                              ; $4c36: $27
	or b                                             ; $4c37: $b0
	sbc b                                            ; $4c38: $98
	nop                                              ; $4c39: $00
	ld a, a                                          ; $4c3a: $7f
	ld b, b                                          ; $4c3b: $40
	ld b, b                                          ; $4c3c: $40
	ld b, c                                          ; $4c3d: $41
	ld b, d                                          ; $4c3e: $42
	ld b, h                                          ; $4c3f: $44
	ld a, e                                          ; $4c40: $7b
	db $f4                                           ; $4c41: $f4
	rst SubAFromDE                                          ; $4c42: $df
	ret nz                                           ; $4c43: $c0

	sub a                                            ; $4c44: $97
	pop bc                                           ; $4c45: $c1
	jp $ffc6                                         ; $4c46: $c3 $c6 $ff


	nop                                              ; $4c49: $00
	cp $32                                           ; $4c4a: $fe $32
	jp nz, $02de                                     ; $4c4c: $c2 $de $02

	ld a, e                                          ; $4c4f: $7b
	ldh a, [$9c]                                     ; $4c50: $f0 $9c
	dec sp                                           ; $4c52: $3b
	db $e3                                           ; $4c53: $e3
	add e                                            ; $4c54: $83
	ld a, d                                          ; $4c55: $7a
	ld [hl], a                                       ; $4c56: $77
	rst SubAFromDE                                          ; $4c57: $df
	ld c, b                                          ; $4c58: $48
	db $dd                                           ; $4c59: $dd
	ret z                                            ; $4c5a: $c8

	sbc [hl]                                         ; $4c5b: $9e
	ret                                              ; $4c5c: $c9


	ret c                                            ; $4c5d: $d8

	rst $38                                          ; $4c5e: $ff
	ld l, h                                          ; $4c5f: $6c
	ld b, d                                          ; $4c60: $42
	ld h, h                                          ; $4c61: $64
	ld b, b                                          ; $4c62: $40
	ld a, h                                          ; $4c63: $7c
	add c                                            ; $4c64: $81
	ld a, [hl]                                       ; $4c65: $7e
	add $87                                          ; $4c66: $c6 $87
	rst GetHLinHL                                          ; $4c68: $cf
	call $cbcd                                       ; $4c69: $cd $cd $cb
	ret                                              ; $4c6c: $c9


	ret z                                            ; $4c6d: $c8

	ld [hl], b                                       ; $4c6e: $70
	halt                                             ; $4c6f: $76
	ld [hl], b                                       ; $4c70: $70
	ld [hl], d                                       ; $4c71: $72
	ld [hl], d                                       ; $4c72: $72
	ld [hl], b                                       ; $4c73: $70
	ld [hl], b                                       ; $4c74: $70
	ld [hl], d                                       ; $4c75: $72
	ret c                                            ; $4c76: $d8

	ld e, b                                          ; $4c77: $58
	ld e, h                                          ; $4c78: $5c
	ld d, h                                          ; $4c79: $54
	ld d, h                                          ; $4c7a: $54
	ret nc                                           ; $4c7b: $d0

	ld d, h                                          ; $4c7c: $54
	call nc, $bf3f                                   ; $4c7d: $d4 $3f $bf
	db $dd                                           ; $4c80: $dd
	ccf                                              ; $4c81: $3f
	ld a, a                                          ; $4c82: $7f
	ei                                               ; $4c83: $fb
	sub l                                            ; $4c84: $95
	and e                                            ; $4c85: $a3
	pop bc                                           ; $4c86: $c1
	db $d3                                           ; $4c87: $d3
	di                                               ; $4c88: $f3
	pop af                                           ; $4c89: $f1
	ld [hl], c                                       ; $4c8a: $71
	ld h, [hl]                                       ; $4c8b: $66
	jr c, jr_03a_4c91                                ; $4c8c: $38 $03

	add e                                            ; $4c8e: $83
	db $dd                                           ; $4c8f: $dd
	add c                                            ; $4c90: $81

jr_03a_4c91:
	sub h                                            ; $4c91: $94
	add a                                            ; $4c92: $87
	rst $38                                          ; $4c93: $ff
	ld a, a                                          ; $4c94: $7f
	ld a, a                                          ; $4c95: $7f
	jr nc, jr_03a_4cc8                               ; $4c96: $30 $30

	sub b                                            ; $4c98: $90
	sub b                                            ; $4c99: $90
	db $10                                           ; $4c9a: $10
	db $10                                           ; $4c9b: $10
	rst $38                                          ; $4c9c: $ff
	ld a, e                                          ; $4c9d: $7b
	or $df                                           ; $4c9e: $f6 $df
	cp a                                             ; $4ca0: $bf
	sbc l                                            ; $4ca1: $9d
	ccf                                              ; $4ca2: $3f
	rst $38                                          ; $4ca3: $ff
	reti                                             ; $4ca4: $d9


	ld h, b                                          ; $4ca5: $60
	reti                                             ; $4ca6: $d9


	rst $38                                          ; $4ca7: $ff
	sbc b                                            ; $4ca8: $98
	inc hl                                           ; $4ca9: $23
	ld b, $0c                                        ; $4caa: $06 $0c
	jr nc, @+$01                                     ; $4cac: $30 $ff

	ret nz                                           ; $4cae: $c0

	add $71                                          ; $4caf: $c6 $71
	ld b, b                                          ; $4cb1: $40
	ld a, d                                          ; $4cb2: $7a
	ld sp, $307c                                     ; $4cb3: $31 $7c $30
	sbc [hl]                                         ; $4cb6: $9e
	ld a, a                                          ; $4cb7: $7f
	ld a, e                                          ; $4cb8: $7b
	ld e, b                                          ; $4cb9: $58
	sbc h                                            ; $4cba: $9c
	nop                                              ; $4cbb: $00
	ld h, [hl]                                       ; $4cbc: $66
	sbc c                                            ; $4cbd: $99
	ld l, a                                          ; $4cbe: $6f
	ld c, b                                          ; $4cbf: $48
	ld a, e                                          ; $4cc0: $7b
	db $ec                                           ; $4cc1: $ec
	sbc l                                            ; $4cc2: $9d
	add b                                            ; $4cc3: $80
	ret nz                                           ; $4cc4: $c0

	ld [hl], e                                       ; $4cc5: $73
	ldh a, [$79]                                     ; $4cc6: $f0 $79

jr_03a_4cc8:
	sub l                                            ; $4cc8: $95
	ld [hl], e                                       ; $4cc9: $73
	ldh a, [hDisp1_WX]                                     ; $4cca: $f0 $96
	ld c, $09                                        ; $4ccc: $0e $09
	inc bc                                           ; $4cce: $03
	ld b, $ff                                        ; $4ccf: $06 $ff
	rlca                                             ; $4cd1: $07
	ld h, [hl]                                       ; $4cd2: $66
	sbc [hl]                                         ; $4cd3: $9e
	rra                                              ; $4cd4: $1f
	sbc $ff                                          ; $4cd5: $de $ff
	sbc [hl]                                         ; $4cd7: $9e
	inc b                                            ; $4cd8: $04
	sbc $fd                                          ; $4cd9: $de $fd
	sbc h                                            ; $4cdb: $9c
	sbc a                                            ; $4cdc: $9f
	adc a                                            ; $4cdd: $8f
	rlca                                             ; $4cde: $07
	ld a, c                                          ; $4cdf: $79
	jp nz, $9bff                                     ; $4ce0: $c2 $ff $9b

	ldh [$f0], a                                     ; $4ce3: $e0 $f0
	ld hl, sp-$04                                    ; $4ce5: $f8 $fc
	ld [hl], a                                       ; $4ce7: $77
	ldh [hDisp1_BGP], a                                     ; $4ce8: $e0 $92
	cp $fd                                           ; $4cea: $fe $fd
	ei                                               ; $4cec: $fb
	rst $38                                          ; $4ced: $ff
	rst FarCall                                          ; $4cee: $f7
	cp $06                                           ; $4cef: $fe $06
	ld b, $01                                        ; $4cf1: $06 $01
	inc bc                                           ; $4cf3: $03
	rlca                                             ; $4cf4: $07
	ld b, $0e                                        ; $4cf5: $06 $0e
	reti                                             ; $4cf7: $d9


	rst $38                                          ; $4cf8: $ff
	sbc h                                            ; $4cf9: $9c
	rst GetHLinHL                                          ; $4cfa: $cf
	rrca                                             ; $4cfb: $0f
	rrca                                             ; $4cfc: $0f
	ld [hl], b                                       ; $4cfd: $70
	add c                                            ; $4cfe: $81
	sub $ff                                          ; $4cff: $d6 $ff
	ld l, c                                          ; $4d01: $69
	pop de                                           ; $4d02: $d1
	db $db                                           ; $4d03: $db
	rst $38                                          ; $4d04: $ff
	rst SubAFromDE                                          ; $4d05: $df
	ldh a, [$9e]                                     ; $4d06: $f0 $9e
	di                                               ; $4d08: $f3
	ld l, e                                          ; $4d09: $6b
	ldh a, [$9c]                                     ; $4d0a: $f0 $9c
	db $fc                                           ; $4d0c: $fc
	cp e                                             ; $4d0d: $bb
	and $7a                                          ; $4d0e: $e6 $7a
	db $10                                           ; $4d10: $10
	ld a, h                                          ; $4d11: $7c
	ld b, b                                          ; $4d12: $40
	sbc d                                            ; $4d13: $9a
	ld bc, $1f7c                                     ; $4d14: $01 $7c $1f
	rlca                                             ; $4d17: $07
	ld bc, $e077                                     ; $4d18: $01 $77 $e0
	adc [hl]                                         ; $4d1b: $8e
	push af                                          ; $4d1c: $f5
	ei                                               ; $4d1d: $fb
	cp [hl]                                          ; $4d1e: $be
	call $3d83                                       ; $4d1f: $cd $83 $3d
	push de                                          ; $4d22: $d5
	adc l                                            ; $4d23: $8d
	ld c, $06                                        ; $4d24: $0e $06
	jp Jump_03a_7df3                                 ; $4d26: $c3 $f3 $7d


	rst $38                                          ; $4d29: $ff
	cp a                                             ; $4d2a: $bf
	ld a, a                                          ; $4d2b: $7f
	ccf                                              ; $4d2c: $3f
	ld a, e                                          ; $4d2d: $7b
	db $eb                                           ; $4d2e: $eb
	ld a, a                                          ; $4d2f: $7f
	ld e, l                                          ; $4d30: $5d
	sbc l                                            ; $4d31: $9d
	ld h, [hl]                                       ; $4d32: $66
	ccf                                              ; $4d33: $3f
	ld [hl], a                                       ; $4d34: $77
	cp [hl]                                          ; $4d35: $be
	ld a, [hl]                                       ; $4d36: $7e
	ld c, d                                          ; $4d37: $4a
	ld l, e                                          ; $4d38: $6b
	ld l, e                                          ; $4d39: $6b
	ld [hl], e                                       ; $4d3a: $73
	ld d, b                                          ; $4d3b: $50
	ld l, a                                          ; $4d3c: $6f
	or b                                             ; $4d3d: $b0
	rst SubAFromDE                                          ; $4d3e: $df
	ld a, a                                          ; $4d3f: $7f
	ld a, [hl]                                       ; $4d40: $7e
	ld e, [hl]                                       ; $4d41: $5e
	sbc d                                            ; $4d42: $9a
	cp $03                                           ; $4d43: $fe $03
	ld h, [hl]                                       ; $4d45: $66
	cp e                                             ; $4d46: $bb
	rst $38                                          ; $4d47: $ff
	ld a, d                                          ; $4d48: $7a
	ld e, [hl]                                       ; $4d49: $5e
	ld a, c                                          ; $4d4a: $79
	ld sp, $ff99                                     ; $4d4b: $31 $99 $ff
	sbc a                                            ; $4d4e: $9f
	rst SubAFromBC                                          ; $4d4f: $e7
	ld [hl], e                                       ; $4d50: $73
	add hl, de                                       ; $4d51: $19
	inc c                                            ; $4d52: $0c
	ld a, d                                          ; $4d53: $7a
	inc d                                            ; $4d54: $14
	ld a, e                                          ; $4d55: $7b
	ld h, c                                          ; $4d56: $61
	ld [hl], d                                       ; $4d57: $72
	ld c, $de                                        ; $4d58: $0e $de
	jp z, $ff9a                                      ; $4d5a: $ca $9a $ff

	sbc h                                            ; $4d5d: $9c
	inc bc                                           ; $4d5e: $03
	nop                                              ; $4d5f: $00
	sub b                                            ; $4d60: $90
	sbc $74                                          ; $4d61: $de $74
	sub a                                            ; $4d63: $97
	ld a, a                                          ; $4d64: $7f
	inc bc                                           ; $4d65: $03
	add b                                            ; $4d66: $80
	ret nz                                           ; $4d67: $c0

	ldh [$d6], a                                     ; $4d68: $e0 $d6
	sbc $de                                          ; $4d6a: $de $de
	ld a, d                                          ; $4d6c: $7a
	ld b, h                                          ; $4d6d: $44
	sbc l                                            ; $4d6e: $9d
	ld a, $01                                        ; $4d6f: $3e $01
	sbc $3f                                          ; $4d71: $de $3f
	ld a, d                                          ; $4d73: $7a
	inc [hl]                                         ; $4d74: $34
	ld a, a                                          ; $4d75: $7f
	adc l                                            ; $4d76: $8d
	sbc e                                            ; $4d77: $9b
	nop                                              ; $4d78: $00
	rlca                                             ; $4d79: $07
	ld a, a                                          ; $4d7a: $7f
	rst $38                                          ; $4d7b: $ff
	ld a, d                                          ; $4d7c: $7a
	dec h                                            ; $4d7d: $25
	ld [hl], a                                       ; $4d7e: $77
	ld de, $ffdd                                     ; $4d7f: $11 $dd $ff
	sbc l                                            ; $4d82: $9d
	rrca                                             ; $4d83: $0f
	ld [hl], b                                       ; $4d84: $70
	ld [hl], a                                       ; $4d85: $77
	or $9e                                           ; $4d86: $f6 $9e
	rrca                                             ; $4d88: $0f
	ld e, a                                          ; $4d89: $5f
	ld d, l                                          ; $4d8a: $55
	sbc [hl]                                         ; $4d8b: $9e
	ldh [$fd], a                                     ; $4d8c: $e0 $fd
	sbc $e0                                          ; $4d8e: $de $e0
	ld [hl], a                                       ; $4d90: $77
	nop                                              ; $4d91: $00
	ld [hl], e                                       ; $4d92: $73
	dec h                                            ; $4d93: $25
	sbc e                                            ; $4d94: $9b
	rst SubAFromDE                                          ; $4d95: $df
	sbc $d9                                          ; $4d96: $de $d9
	sub $7b                                          ; $4d98: $d6 $7b
	cp $d9                                           ; $4d9a: $fe $d9
	rst $38                                          ; $4d9c: $ff
	sub a                                            ; $4d9d: $97
	cp $f5                                           ; $4d9e: $fe $f5
	ld a, a                                          ; $4da0: $7f
	sbc l                                            ; $4da1: $9d
	ld l, a                                          ; $4da2: $6f
	sbc l                                            ; $4da3: $9d
	ld l, [hl]                                       ; $4da4: $6e
	sbc l                                            ; $4da5: $9d
	reti                                             ; $4da6: $d9


	rst $38                                          ; $4da7: $ff
	sub a                                            ; $4da8: $97
	ld h, [hl]                                       ; $4da9: $66
	rst SubAFromDE                                          ; $4daa: $df
	ld a, [hl]                                       ; $4dab: $7e
	reti                                             ; $4dac: $d9


	ld a, [hl]                                       ; $4dad: $7e
	reti                                             ; $4dae: $d9


	cp $db                                           ; $4daf: $fe $db
	ld h, e                                          ; $4db1: $63
	ldh a, [$9c]                                     ; $4db2: $f0 $9c
	cp $76                                           ; $4db4: $fe $76
	sbc [hl]                                         ; $4db6: $9e
	ld a, e                                          ; $4db7: $7b
	cp $7e                                           ; $4db8: $fe $7e
	reti                                             ; $4dba: $d9


	jp c, $fffd                                      ; $4dbb: $da $fd $ff

	db $db                                           ; $4dbe: $db
	call z, $ffd9                                    ; $4dbf: $cc $d9 $ff
	rst SubAFromDE                                          ; $4dc2: $df
	ld b, $de                                        ; $4dc3: $06 $de
	add $df                                          ; $4dc5: $c6 $df
	rst JumpTable                                          ; $4dc7: $c7
	ld a, l                                          ; $4dc8: $7d
	rst SubAFromBC                                          ; $4dc9: $e7
	jp c, $9bff                                      ; $4dca: $da $ff $9b

	rst AddAOntoHL                                          ; $4dcd: $ef
	rrca                                             ; $4dce: $0f
	inc c                                            ; $4dcf: $0c
	rrca                                             ; $4dd0: $0f
	ld [hl], h                                       ; $4dd1: $74
	and c                                            ; $4dd2: $a1
	reti                                             ; $4dd3: $d9


	rst $38                                          ; $4dd4: $ff
	sbc h                                            ; $4dd5: $9c
	jp c, $d0aa                                      ; $4dd6: $da $aa $d0

	ld [hl], a                                       ; $4dd9: $77
	di                                               ; $4dda: $f3
	ld a, a                                          ; $4ddb: $7f
	db $fd                                           ; $4ddc: $fd
	sbc [hl]                                         ; $4ddd: $9e
	push de                                          ; $4dde: $d5
	db $db                                           ; $4ddf: $db
	rst $38                                          ; $4de0: $ff
	ld a, a                                          ; $4de1: $7f
	ld a, [hl+]                                      ; $4de2: $2a
	sbc l                                            ; $4de3: $9d
	cp $f7                                           ; $4de4: $fe $f7
	ld [hl], a                                       ; $4de6: $77
	ldh a, [$de]                                     ; $4de7: $f0 $de
	rst FarCall                                          ; $4de9: $f7
	call c, $9bff                                    ; $4dea: $dc $ff $9b
	ld [bc], a                                       ; $4ded: $02
	db $db                                           ; $4dee: $db
	ld bc, $57fd                                     ; $4def: $01 $fd $57
	ret nc                                           ; $4df2: $d0

	sbc d                                            ; $4df3: $9a
	dec c                                            ; $4df4: $0d
	dec e                                            ; $4df5: $1d
	db $ed                                           ; $4df6: $ed
	push af                                          ; $4df7: $f5
	dec b                                            ; $4df8: $05
	sbc $fd                                          ; $4df9: $de $fd
	reti                                             ; $4dfb: $d9


	rst $38                                          ; $4dfc: $ff
	sub a                                            ; $4dfd: $97
	ld a, a                                          ; $4dfe: $7f
	add hl, sp                                       ; $4dff: $39
	ld h, [hl]                                       ; $4e00: $66
	add hl, sp                                       ; $4e01: $39
	ld h, [hl]                                       ; $4e02: $66
	ld a, c                                          ; $4e03: $79
	ld a, a                                          ; $4e04: $7f
	dec a                                            ; $4e05: $3d
	ld h, e                                          ; $4e06: $63
	ld [hl], b                                       ; $4e07: $70
	sbc l                                            ; $4e08: $9d
	db $db                                           ; $4e09: $db
	ld a, a                                          ; $4e0a: $7f
	ld [hl], a                                       ; $4e0b: $77
	cp $9e                                           ; $4e0c: $fe $9e
	db $dd                                           ; $4e0e: $dd
	reti                                             ; $4e0f: $d9


	rst $38                                          ; $4e10: $ff
	sbc d                                            ; $4e11: $9a
	or $dd                                           ; $4e12: $f6 $dd
	rst SubAFromBC                                          ; $4e14: $e7
	sbc c                                            ; $4e15: $99
	ld h, [hl]                                       ; $4e16: $66
	ld a, e                                          ; $4e17: $7b
	cp $d9                                           ; $4e18: $fe $d9
	rst $38                                          ; $4e1a: $ff
	sbc [hl]                                         ; $4e1b: $9e
	db $fc                                           ; $4e1c: $fc
	ld [hl], l                                       ; $4e1d: $75
	adc d                                            ; $4e1e: $8a
	sbc $f0                                          ; $4e1f: $de $f0
	reti                                             ; $4e21: $d9


	rst $38                                          ; $4e22: $ff
	adc a                                            ; $4e23: $8f
	ret z                                            ; $4e24: $c8

	ld h, h                                          ; $4e25: $64
	ld sp, $6d58                                     ; $4e26: $31 $58 $6d
	scf                                              ; $4e29: $37
	cp e                                             ; $4e2a: $bb
	cp l                                             ; $4e2b: $bd
	ldh a, [$f8]                                     ; $4e2c: $f0 $f8
	cp $bf                                           ; $4e2e: $fe $bf
	sbc [hl]                                         ; $4e30: $9e
	adc $c6                                          ; $4e31: $ce $c6
	jp $dffd                                         ; $4e33: $c3 $fd $df


	ld a, a                                          ; $4e36: $7f
	ld a, a                                          ; $4e37: $7f
	db $fd                                           ; $4e38: $fd
	ld h, [hl]                                       ; $4e39: $66
	ld [hl-], a                                      ; $4e3a: $32
	ld a, d                                          ; $4e3b: $7a
	push de                                          ; $4e3c: $d5
	ld [hl], e                                       ; $4e3d: $73
	add c                                            ; $4e3e: $81
	ld h, a                                          ; $4e3f: $67
	ldh a, [$9d]                                     ; $4e40: $f0 $9d
	ret nz                                           ; $4e42: $c0

	ccf                                              ; $4e43: $3f
	ld l, a                                          ; $4e44: $6f
	ldh a, [$73]                                     ; $4e45: $f0 $73
	ld sp, hl                                        ; $4e47: $f9
	sbc $ff                                          ; $4e48: $de $ff
	rra                                              ; $4e4a: $1f
	nop                                              ; $4e4b: $00
	sbc e                                            ; $4e4c: $9b
	inc sp                                           ; $4e4d: $33
	ld b, h                                          ; $4e4e: $44
	ld h, [hl]                                       ; $4e4f: $66
	ld h, l                                          ; $4e50: $65
	sbc $55                                          ; $4e51: $de $55
	sbc [hl]                                         ; $4e53: $9e
	ld b, h                                          ; $4e54: $44
	sbc $33                                          ; $4e55: $de $33
	sbc l                                            ; $4e57: $9d
	ld b, a                                          ; $4e58: $47
	ld [hl], a                                       ; $4e59: $77
	ccf                                              ; $4e5a: $3f
	or $9d                                           ; $4e5b: $f6 $9d
	ld b, e                                          ; $4e5d: $43
	ld [hl], e                                       ; $4e5e: $73
	sbc $33                                          ; $4e5f: $de $33
	ld [hl], a                                       ; $4e61: $77
	or $9e                                           ; $4e62: $f6 $9e
	scf                                              ; $4e64: $37
	jp c, Jump_03a_5777                              ; $4e65: $da $77 $57

	or $59                                           ; $4e68: $f6 $59
	add d                                            ; $4e6a: $82
	sbc [hl]                                         ; $4e6b: $9e
	ldh [c], a                                       ; $4e6c: $e2
	db $dd                                           ; $4e6d: $dd
	ld [bc], a                                       ; $4e6e: $02
	sbc $e2                                          ; $4e6f: $de $e2
	sbc [hl]                                         ; $4e71: $9e
	rra                                              ; $4e72: $1f
	jp nc, $d9ff                                     ; $4e73: $d2 $ff $d9

	inc bc                                           ; $4e76: $03
	rst SubAFromDE                                          ; $4e77: $df
	xor c                                            ; $4e78: $a9
	rst SubAFromDE                                          ; $4e79: $df
	xor b                                            ; $4e7a: $a8
	sbc [hl]                                         ; $4e7b: $9e
	xor d                                            ; $4e7c: $aa
	sbc $ba                                          ; $4e7d: $de $ba
	rst SubAFromDE                                          ; $4e7f: $df
	cp $df                                           ; $4e80: $fe $df
	rst $38                                          ; $4e82: $ff
	sbc [hl]                                         ; $4e83: $9e
	db $fd                                           ; $4e84: $fd
	sbc $ed                                          ; $4e85: $de $ed
	ld sp, hl                                        ; $4e87: $f9
	reti                                             ; $4e88: $d9


	rst $38                                          ; $4e89: $ff
	ld c, e                                          ; $4e8a: $4b
	ldh a, [$9e]                                     ; $4e8b: $f0 $9e
	ei                                               ; $4e8d: $fb
	ld h, e                                          ; $4e8e: $63
	ldh a, [$9e]                                     ; $4e8f: $f0 $9e
	rst SubAFromDE                                          ; $4e91: $df
	scf                                              ; $4e92: $37
	ldh [$9d], a                                     ; $4e93: $e0 $9d
	cp $fd                                           ; $4e95: $fe $fd
	ld e, e                                          ; $4e97: $5b
	ldh a, [$9a]                                     ; $4e98: $f0 $9a
	rst AddAOntoHL                                          ; $4e9a: $ef
	rst $38                                          ; $4e9b: $ff
	ld a, a                                          ; $4e9c: $7f
	ei                                               ; $4e9d: $fb
	ld e, a                                          ; $4e9e: $5f
	reti                                             ; $4e9f: $d9


	db $10                                           ; $4ea0: $10
	jp c, $9ee7                                      ; $4ea1: $da $e7 $9e

	ld h, a                                          ; $4ea4: $67
	db $fc                                           ; $4ea5: $fc
	sbc h                                            ; $4ea6: $9c
	inc bc                                           ; $4ea7: $03
	rrca                                             ; $4ea8: $0f
	ld a, a                                          ; $4ea9: $7f
	call c, $9cff                                    ; $4eaa: $dc $ff $9c
	db $fc                                           ; $4ead: $fc
	di                                               ; $4eae: $f3
	adc a                                            ; $4eaf: $8f
	ld a, e                                          ; $4eb0: $7b
	db $f4                                           ; $4eb1: $f4
	sbc d                                            ; $4eb2: $9a
	ccf                                              ; $4eb3: $3f
	cp $fb                                           ; $4eb4: $fe $fb
	xor $b8                                          ; $4eb6: $ee $b8
	ld a, e                                          ; $4eb8: $7b
	db $f4                                           ; $4eb9: $f4
	sbc d                                            ; $4eba: $9a
	rst GetHLinHL                                          ; $4ebb: $cf
	ccf                                              ; $4ebc: $3f
	db $fc                                           ; $4ebd: $fc
	ldh a, [$c0]                                     ; $4ebe: $f0 $c0
	ld [hl], a                                       ; $4ec0: $77
	db $f4                                           ; $4ec1: $f4
	sbc e                                            ; $4ec2: $9b
	ldh [$80], a                                     ; $4ec3: $e0 $80
	nop                                              ; $4ec5: $00
	nop                                              ; $4ec6: $00
	ld [hl], a                                       ; $4ec7: $77
	db $f4                                           ; $4ec8: $f4
	ld [hl], e                                       ; $4ec9: $73
	cp b                                             ; $4eca: $b8
	sub [hl]                                         ; $4ecb: $96
	adc a                                            ; $4ecc: $8f
	daa                                              ; $4ecd: $27
	add hl, bc                                       ; $4ece: $09
	ld a, $17                                        ; $4ecf: $3e $17
	ld bc, $0f07                                     ; $4ed1: $01 $07 $0f
	inc bc                                           ; $4ed4: $03
	ei                                               ; $4ed5: $fb
	sub e                                            ; $4ed6: $93
	or b                                             ; $4ed7: $b0
	db $ec                                           ; $4ed8: $ec
	ei                                               ; $4ed9: $fb
	cp $7f                                           ; $4eda: $fe $7f
	sbc a                                            ; $4edc: $9f
	ld h, a                                          ; $4edd: $67
	reti                                             ; $4ede: $d9


	rst SubAFromDE                                          ; $4edf: $df
	rst FarCall                                          ; $4ee0: $f7
	db $fd                                           ; $4ee1: $fd
	ccf                                              ; $4ee2: $3f
	ld [hl], a                                       ; $4ee3: $77
	db $ec                                           ; $4ee4: $ec
	sbc [hl]                                         ; $4ee5: $9e
	inc sp                                           ; $4ee6: $33
	sbc $b3                                          ; $4ee7: $de $b3
	sbc $93                                          ; $4ee9: $de $93
	sbc e                                            ; $4eeb: $9b
	sbc e                                            ; $4eec: $9b
	xor $fe                                          ; $4eed: $ee $fe
	sbc $7b                                          ; $4eef: $de $7b
	ld l, [hl]                                       ; $4ef1: $6e
	sbc e                                            ; $4ef2: $9b
	db $fd                                           ; $4ef3: $fd
	push af                                          ; $4ef4: $f5
	rra                                              ; $4ef5: $1f
	rra                                              ; $4ef6: $1f
	call c, $9e3f                                    ; $4ef7: $dc $3f $9e
	ld a, a                                          ; $4efa: $7f
	jp c, $9ef8                                      ; $4efb: $da $f8 $9e

	cp b                                             ; $4efe: $b8
	db $dd                                           ; $4eff: $dd
	call $cfdd                                       ; $4f00: $cd $dd $cf
	reti                                             ; $4f03: $d9


	ld a, a                                          ; $4f04: $7f
	sub a                                            ; $4f05: $97
	jr z, jr_03a_4f70                                ; $4f06: $28 $68

	add hl, hl                                       ; $4f08: $29
	ld l, c                                          ; $4f09: $69
	jp hl                                            ; $4f0a: $e9


	ld [$fdfe], a                                    ; $4f0b: $ea $fe $fd
	sbc $6d                                          ; $4f0e: $de $6d
	adc d                                            ; $4f10: $8a
	ld l, a                                          ; $4f11: $6f
	rst AddAOntoHL                                          ; $4f12: $ef
	xor $fe                                          ; $4f13: $ee $fe
	db $fc                                           ; $4f15: $fc
	rst $38                                          ; $4f16: $ff
	rst SubAFromBC                                          ; $4f17: $e7
	db $db                                           ; $4f18: $db
	xor b                                            ; $4f19: $a8
	ld d, a                                          ; $4f1a: $57
	inc l                                            ; $4f1b: $2c
	ld e, c                                          ; $4f1c: $59
	or b                                             ; $4f1d: $b0
	cp a                                             ; $4f1e: $bf
	ldh [$c0], a                                     ; $4f1f: $e0 $c0
	sub a                                            ; $4f21: $97
	cpl                                              ; $4f22: $2f
	ld e, a                                          ; $4f23: $5f
	cp h                                             ; $4f24: $bc
	ld a, h                                          ; $4f25: $7c
	ld [hl], a                                       ; $4f26: $77
	dec l                                            ; $4f27: $2d
	ld l, a                                          ; $4f28: $6f
	cp $77                                           ; $4f29: $fe $77
	dec a                                            ; $4f2b: $3d
	rst $38                                          ; $4f2c: $ff
	sbc $e2                                          ; $4f2d: $de $e2
	sub l                                            ; $4f2f: $95
	ld h, d                                          ; $4f30: $62
	and d                                            ; $4f31: $a2
	ldh [c], a                                       ; $4f32: $e2
	ld h, d                                          ; $4f33: $62
	ldh [c], a                                       ; $4f34: $e2
	rst $38                                          ; $4f35: $ff
	rst $38                                          ; $4f36: $ff
	cp a                                             ; $4f37: $bf
	cp a                                             ; $4f38: $bf
	ld a, a                                          ; $4f39: $7f
	ld l, a                                          ; $4f3a: $6f
	ld c, d                                          ; $4f3b: $4a
	rst SubAFromDE                                          ; $4f3c: $df
	rst $38                                          ; $4f3d: $ff
	sbc h                                            ; $4f3e: $9c
	rst SubAFromDE                                          ; $4f3f: $df
	rst GetHLinHL                                          ; $4f40: $cf
	rst GetHLinHL                                          ; $4f41: $cf
	reti                                             ; $4f42: $d9


	inc bc                                           ; $4f43: $03
	adc a                                            ; $4f44: $8f
	xor b                                            ; $4f45: $a8
	or b                                             ; $4f46: $b0
	and d                                            ; $4f47: $a2
	or c                                             ; $4f48: $b1
	cp h                                             ; $4f49: $bc
	xor b                                            ; $4f4a: $a8
	sbc b                                            ; $4f4b: $98
	ret                                              ; $4f4c: $c9


	rst $38                                          ; $4f4d: $ff
	rst AddAOntoHL                                          ; $4f4e: $ef
	db $fd                                           ; $4f4f: $fd
	xor $eb                                          ; $4f50: $ee $eb
	rst $38                                          ; $4f52: $ff
	rst $38                                          ; $4f53: $ff
	cp [hl]                                          ; $4f54: $be
	ld h, e                                          ; $4f55: $63
	nop                                              ; $4f56: $00
	sbc b                                            ; $4f57: $98
	push af                                          ; $4f58: $f5
	db $eb                                           ; $4f59: $eb
	ld e, a                                          ; $4f5a: $5f
	cp a                                             ; $4f5b: $bf
	ld [hl], a                                       ; $4f5c: $77
	xor e                                            ; $4f5d: $ab
	ld d, l                                          ; $4f5e: $55
	ld sp, hl                                        ; $4f5f: $f9
	sub a                                            ; $4f60: $97
	push af                                          ; $4f61: $f5
	rst AddAOntoHL                                          ; $4f62: $ef
	cp a                                             ; $4f63: $bf
	ld [hl], a                                       ; $4f64: $77
	rst AddAOntoHL                                          ; $4f65: $ef
	ld e, l                                          ; $4f66: $5d
	xor a                                            ; $4f67: $af
	rst SubAFromDE                                          ; $4f68: $df
	db $fd                                           ; $4f69: $fd
	sbc h                                            ; $4f6a: $9c
	db $10                                           ; $4f6b: $10
	jr c, jr_03a_4fad                                ; $4f6c: $38 $3f

	halt                                             ; $4f6e: $76
	ldh [c], a                                       ; $4f6f: $e2

jr_03a_4f70:
	ld a, [hl]                                       ; $4f70: $7e
	jp nc, $c062                                     ; $4f71: $d2 $62 $c0

	sbc h                                            ; $4f74: $9c
	ld b, b                                          ; $4f75: $40
	ret nz                                           ; $4f76: $c0

	db $eb                                           ; $4f77: $eb
	ld a, d                                          ; $4f78: $7a
	call nz, $ff99                                   ; $4f79: $c4 $99 $ff
	ld e, a                                          ; $4f7c: $5f
	rst AddAOntoHL                                          ; $4f7d: $ef
	rst $38                                          ; $4f7e: $ff
	nop                                              ; $4f7f: $00
	jr nz, jr_03a_4ff8                               ; $4f80: $20 $76

	pop hl                                           ; $4f82: $e1
	ld a, a                                          ; $4f83: $7f
	ldh [hDisp1_OBP1], a                                     ; $4f84: $e0 $94
	rst AddAOntoHL                                          ; $4f86: $ef
	sbc l                                            ; $4f87: $9d
	db $eb                                           ; $4f88: $eb
	rst FarCall                                          ; $4f89: $f7
	db $fc                                           ; $4f8a: $fc
	pop af                                           ; $4f8b: $f1
	rst JumpTable                                          ; $4f8c: $c7
	rra                                              ; $4f8d: $1f
	ld de, $3313                                     ; $4f8e: $11 $13 $33
	sbc $f3                                          ; $4f91: $de $f3
	rst SubAFromDE                                          ; $4f93: $df
	ldh a, [$97]                                     ; $4f94: $f0 $97
	and [hl]                                         ; $4f96: $a6
	db $e4                                           ; $4f97: $e4
	rst JumpTable                                          ; $4f98: $c7
	rlca                                             ; $4f99: $07
	ld h, [hl]                                       ; $4f9a: $66
	db $e4                                           ; $4f9b: $e4
	db $e4                                           ; $4f9c: $e4
	add h                                            ; $4f9d: $84
	ld b, [hl]                                       ; $4f9e: $46
	ldh [rPCM34], a                                  ; $4f9f: $e0 $77
	db $f4                                           ; $4fa1: $f4
	cp $9e                                           ; $4fa2: $fe $9e
	ld [bc], a                                       ; $4fa4: $02
	di                                               ; $4fa5: $f3
	sbc l                                            ; $4fa6: $9d
	add hl, bc                                       ; $4fa7: $09
	ld de, $97f9                                     ; $4fa8: $11 $f9 $97
	rrca                                             ; $4fab: $0f
	rla                                              ; $4fac: $17

jr_03a_4fad:
	ld c, $1b                                        ; $4fad: $0e $1b
	scf                                              ; $4faf: $37
	ldh [c], a                                       ; $4fb0: $e2
	ld c, h                                          ; $4fb1: $4c
	ld [hl+], a                                      ; $4fb2: $22
	ld sp, hl                                        ; $4fb3: $f9
	sbc b                                            ; $4fb4: $98
	or [hl]                                          ; $4fb5: $b6
	rst $38                                          ; $4fb6: $ff
	db $fd                                           ; $4fb7: $fd
	cp $f5                                           ; $4fb8: $fe $f5
	ei                                               ; $4fba: $fb
	scf                                              ; $4fbb: $37
	ld l, [hl]                                       ; $4fbc: $6e
	ld a, b                                          ; $4fbd: $78
	cp $df                                           ; $4fbe: $fe $df
	sbc e                                            ; $4fc0: $9b
	sbc c                                            ; $4fc1: $99
	db $db                                           ; $4fc2: $db
	res 5, a                                         ; $4fc3: $cb $af
	cp h                                             ; $4fc5: $bc
	di                                               ; $4fc6: $f3
	call z, $047a                                    ; $4fc7: $cc $7a $04
	sbc d                                            ; $4fca: $9a
	db $fd                                           ; $4fcb: $fd
	ld a, a                                          ; $4fcc: $7f
	ld a, a                                          ; $4fcd: $7f
	inc a                                            ; $4fce: $3c
	inc sp                                           ; $4fcf: $33
	sbc $7f                                          ; $4fd0: $de $7f
	sbc b                                            ; $4fd2: $98
	rst GetHLinHL                                          ; $4fd3: $cf
	rrca                                             ; $4fd4: $0f
	rrca                                             ; $4fd5: $0f
	ccf                                              ; $4fd6: $3f
	ld a, a                                          ; $4fd7: $7f
	cp b                                             ; $4fd8: $b8
	ld hl, sp-$23                                    ; $4fd9: $f8 $dd
	db $fc                                           ; $4fdb: $fc
	rst SubAFromDE                                          ; $4fdc: $df
	ld hl, sp-$64                                    ; $4fdd: $f8 $9c
	rst GetHLinHL                                          ; $4fdf: $cf
	ret z                                            ; $4fe0: $c8

	adc $de                                          ; $4fe1: $ce $de
	rst GetHLinHL                                          ; $4fe3: $cf
	sbc d                                            ; $4fe4: $9a
	ret nz                                           ; $4fe5: $c0

	rst GetHLinHL                                          ; $4fe6: $cf
	ld a, a                                          ; $4fe7: $7f
	ld [hl], a                                       ; $4fe8: $77
	ld [hl], c                                       ; $4fe9: $71
	sbc $70                                          ; $4fea: $de $70
	rst SubAFromDE                                          ; $4fec: $df
	ld a, a                                          ; $4fed: $7f
	adc h                                            ; $4fee: $8c
	db $fc                                           ; $4fef: $fc
	ld a, [bc]                                       ; $4ff0: $0a
	ld a, [bc]                                       ; $4ff1: $0a
	sub h                                            ; $4ff2: $94
	push de                                          ; $4ff3: $d5
	xor e                                            ; $4ff4: $ab
	dec hl                                           ; $4ff5: $2b
	rst SubAFromHL                                          ; $4ff6: $d7
	db $fc                                           ; $4ff7: $fc

jr_03a_4ff8:
	ld sp, hl                                        ; $4ff8: $f9
	ld sp, hl                                        ; $4ff9: $f9
	ld [hl], e                                       ; $4ffa: $73
	inc sp                                           ; $4ffb: $33
	ld h, a                                          ; $4ffc: $67
	rst SubAFromBC                                          ; $4ffd: $e7
	rst GetHLinHL                                          ; $4ffe: $cf
	cp a                                             ; $4fff: $bf
	ld a, a                                          ; $5000: $7f
	ld b, b                                          ; $5001: $40
	ld [hl], d                                       ; $5002: $72
	call $e57a                                       ; $5003: $cd $7a $e5
	sbc h                                            ; $5006: $9c
	ret nz                                           ; $5007: $c0

	add b                                            ; $5008: $80
	add b                                            ; $5009: $80
	ld [hl], c                                       ; $500a: $71
	xor $6b                                          ; $500b: $ee $6b
	db $fc                                           ; $500d: $fc
	ld [hl], a                                       ; $500e: $77
	dec h                                            ; $500f: $25
	rst SubAFromDE                                          ; $5010: $df
	rst $38                                          ; $5011: $ff
	sbc $e2                                          ; $5012: $de $e2
	call c, $d9e0                                    ; $5014: $dc $e0 $d9
	rst $38                                          ; $5017: $ff
	rst SubAFromDE                                          ; $5018: $df
	rst GetHLinHL                                          ; $5019: $cf
	call c, Call_03a_7a8f                            ; $501a: $dc $8f $7a
	ret nz                                           ; $501d: $c0

	db $db                                           ; $501e: $db
	ld b, e                                          ; $501f: $43
	sub e                                            ; $5020: $93
	call z, $f0e4                                    ; $5021: $cc $e4 $f0
	cp e                                             ; $5024: $bb
	ld hl, sp-$01                                    ; $5025: $f8 $ff
	rst AddAOntoHL                                          ; $5027: $ef
	rst AddAOntoHL                                          ; $5028: $ef
	rst FarCall                                          ; $5029: $f7
	db $db                                           ; $502a: $db
	rst AddAOntoHL                                          ; $502b: $ef
	db $f4                                           ; $502c: $f4
	db $dd                                           ; $502d: $dd
	cp a                                             ; $502e: $bf
	ld sp, hl                                        ; $502f: $f9
	sub d                                            ; $5030: $92
	db $eb                                           ; $5031: $eb
	rst SubAFromHL                                          ; $5032: $d7
	cp a                                             ; $5033: $bf
	ld a, l                                          ; $5034: $7d
	cp e                                             ; $5035: $bb
	halt                                             ; $5036: $76
	rst $38                                          ; $5037: $ff
	db $dd                                           ; $5038: $dd
	ld bc, $0703                                     ; $5039: $01 $03 $07
	rrca                                             ; $503c: $0f
	ld e, $de                                        ; $503d: $1e $de
	ccf                                              ; $503f: $3f
	sbc e                                            ; $5040: $9b
	ei                                               ; $5041: $fb
	rst FarCall                                          ; $5042: $f7
	rst $38                                          ; $5043: $ff
	rst GetHLinHL                                          ; $5044: $cf
	call $9dff                                       ; $5045: $cd $ff $9d
	pop hl                                           ; $5048: $e1
	rst AddAOntoHL                                          ; $5049: $ef
	ld l, [hl]                                       ; $504a: $6e
	ld l, e                                          ; $504b: $6b
	sbc e                                            ; $504c: $9b
	cp $f9                                           ; $504d: $fe $f9
	ei                                               ; $504f: $fb
	db $fd                                           ; $5050: $fd
	halt                                             ; $5051: $76
	or b                                             ; $5052: $b0
	halt                                             ; $5053: $76
	ldh [$9a], a                                     ; $5054: $e0 $9a
	db $e3                                           ; $5056: $e3
	rst SubAFromBC                                          ; $5057: $e7
	xor $e5                                          ; $5058: $ee $e5
	ld a, a                                          ; $505a: $7f
	ld a, d                                          ; $505b: $7a
	ldh [hDisp1_OBP0], a                                     ; $505c: $e0 $93
	add b                                            ; $505e: $80
	ld b, b                                          ; $505f: $40
	ret nz                                           ; $5060: $c0

	ret nz                                           ; $5061: $c0

	ldh a, [hDisp1_OBP0]                                     ; $5062: $f0 $93
	ld [hl-], a                                      ; $5064: $32
	ld d, b                                          ; $5065: $50
	ldh a, [c]                                       ; $5066: $f2
	ld d, b                                          ; $5067: $50
	ldh a, [rSVBK]                                   ; $5068: $f0 $70
	reti                                             ; $506a: $d9


	inc b                                            ; $506b: $04
	cp $9a                                           ; $506c: $fe $9a
	add b                                            ; $506e: $80
	ld [$0b00], sp                                   ; $506f: $08 $00 $0b
	dec bc                                           ; $5072: $0b
	ld a, [$0199]                                    ; $5073: $fa $99 $01
	nop                                              ; $5076: $00
	ld bc, $0010                                     ; $5077: $01 $10 $00
	ld d, h                                          ; $507a: $54
	ld a, e                                          ; $507b: $7b
	ld e, b                                          ; $507c: $58
	ld h, [hl]                                       ; $507d: $66
	ld c, c                                          ; $507e: $49
	sbc d                                            ; $507f: $9a
	sub h                                            ; $5080: $94
	ld c, d                                          ; $5081: $4a
	ld l, $73                                        ; $5082: $2e $73
	dec bc                                           ; $5084: $0b
	ld e, e                                          ; $5085: $5b
	ldh a, [$9a]                                     ; $5086: $f0 $9a
	ld [$3211], sp                                   ; $5088: $08 $11 $32
	dec h                                            ; $508b: $25
	adc d                                            ; $508c: $8a
	ld e, e                                          ; $508d: $5b
	ldh a, [$9a]                                     ; $508e: $f0 $9a
	dec bc                                           ; $5090: $0b
	ld d, [hl]                                       ; $5091: $56
	dec hl                                           ; $5092: $2b
	ld e, a                                          ; $5093: $5f
	cp a                                             ; $5094: $bf
	ld e, e                                          ; $5095: $5b
	ldh a, [$8e]                                     ; $5096: $f0 $8e
	pop af                                           ; $5098: $f1
	rst SubAFromBC                                          ; $5099: $e7
	rst SubAFromDE                                          ; $509a: $df
	ld a, l                                          ; $509b: $7d
	push af                                          ; $509c: $f5
	push bc                                          ; $509d: $c5
	push de                                          ; $509e: $d5
	push de                                          ; $509f: $d5
	rrca                                             ; $50a0: $0f
	rra                                              ; $50a1: $1f
	ccf                                              ; $50a2: $3f
	rst $38                                          ; $50a3: $ff
	cp [hl]                                          ; $50a4: $be
	ld a, $2e                                        ; $50a5: $3e $2e
	ld l, $ff                                        ; $50a7: $2e $ff
	jp c, $d9df                                      ; $50a9: $da $df $d9

	ld hl, sp-$21                                    ; $50ac: $f8 $df
	call z, $cfdb                                    ; $50ae: $cc $db $cf
	reti                                             ; $50b1: $d9


	ld a, a                                          ; $50b2: $7f
	sbc l                                            ; $50b3: $9d
	ld l, a                                          ; $50b4: $6f
	ld a, [hl]                                       ; $50b5: $7e
	ld [hl], a                                       ; $50b6: $77
	ld e, d                                          ; $50b7: $5a
	ld a, c                                          ; $50b8: $79
	cp l                                             ; $50b9: $bd
	ld a, e                                          ; $50ba: $7b
	ld d, l                                          ; $50bb: $55
	halt                                             ; $50bc: $76
	and b                                            ; $50bd: $a0
	inc e                                            ; $50be: $1c
	sub l                                            ; $50bf: $95
	ld l, a                                          ; $50c0: $6f
	ldh a, [rAUD1LEN]                                ; $50c1: $f0 $11
	nop                                              ; $50c3: $00
	sbc l                                            ; $50c4: $9d
	inc sp                                           ; $50c5: $33
	ld b, l                                          ; $50c6: $45
	call c, $9c55                                    ; $50c7: $dc $55 $9c
	ld b, h                                          ; $50ca: $44
	dec [hl]                                         ; $50cb: $35
	inc sp                                           ; $50cc: $33
	ld h, a                                          ; $50cd: $67
	or $de                                           ; $50ce: $f6 $de
	inc sp                                           ; $50d0: $33
	ld h, e                                          ; $50d1: $63
	or $11                                           ; $50d2: $f6 $11
	add l                                            ; $50d4: $85
	reti                                             ; $50d5: $d9


	ldh [$d9], a                                     ; $50d6: $e0 $d9
	rst $38                                          ; $50d8: $ff
	rst SubAFromDE                                          ; $50d9: $df
	rst GetHLinHL                                          ; $50da: $cf
	sbc l                                            ; $50db: $9d
	rst AddAOntoHL                                          ; $50dc: $ef
	rst SubAFromDE                                          ; $50dd: $df
	db $dd                                           ; $50de: $dd
	rst $38                                          ; $50df: $ff
	sbc e                                            ; $50e0: $9b
	ld b, e                                          ; $50e1: $43
	ld d, e                                          ; $50e2: $53
	ld [hl], e                                       ; $50e3: $73
	ld h, e                                          ; $50e4: $63
	db $dd                                           ; $50e5: $dd
	inc bc                                           ; $50e6: $03
	db $dd                                           ; $50e7: $dd
	ld a, [$f8de]                                    ; $50e8: $fa $de $f8
	sbc [hl]                                         ; $50eb: $9e
	ld a, [$afda]                                    ; $50ec: $fa $da $af
	sbc [hl]                                         ; $50ef: $9e
	xor l                                            ; $50f0: $ad
	ld a, [$019b]                                    ; $50f1: $fa $9b $01
	rst $38                                          ; $50f4: $ff
	ei                                               ; $50f5: $fb
	ei                                               ; $50f6: $fb
	db $dd                                           ; $50f7: $dd
	rst $38                                          ; $50f8: $ff
	sbc b                                            ; $50f9: $98
	cp $7f                                           ; $50fa: $fe $7f
	ld a, a                                          ; $50fc: $7f
	rst $38                                          ; $50fd: $ff
	rst $38                                          ; $50fe: $ff
	cp a                                             ; $50ff: $bf
	rst AddAOntoHL                                          ; $5100: $ef
	sbc $ff                                          ; $5101: $de $ff
	ld a, e                                          ; $5103: $7b
	ld hl, sp-$65                                    ; $5104: $f8 $9b
	rst $38                                          ; $5106: $ff
	rst AddAOntoHL                                          ; $5107: $ef
	rst AddAOntoHL                                          ; $5108: $ef
	cpl                                              ; $5109: $2f
	db $dd                                           ; $510a: $dd
	rst $38                                          ; $510b: $ff
	sbc e                                            ; $510c: $9b
	db $fd                                           ; $510d: $fd
	rst $38                                          ; $510e: $ff
	cp $fd                                           ; $510f: $fe $fd
	push de                                          ; $5111: $d5
	rst $38                                          ; $5112: $ff
	sbc [hl]                                         ; $5113: $9e
	cp a                                             ; $5114: $bf
	sub $ff                                          ; $5115: $d6 $ff
	sub a                                            ; $5117: $97
	ld h, [hl]                                       ; $5118: $66
	ldh [c], a                                       ; $5119: $e2
	rst AddAOntoHL                                          ; $511a: $ef
	push hl                                          ; $511b: $e5
	rst AddAOntoHL                                          ; $511c: $ef
	rst AddAOntoHL                                          ; $511d: $ef
	ld l, [hl]                                       ; $511e: $6e
	rst AddAOntoHL                                          ; $511f: $ef
	reti                                             ; $5120: $d9


	ret nz                                           ; $5121: $c0

	rst SubAFromDE                                          ; $5122: $df
	ret nc                                           ; $5123: $d0

	sbc c                                            ; $5124: $99
	ldh a, [rSVBK]                                   ; $5125: $f0 $70
	or d                                             ; $5127: $b2
	ld [hl], d                                       ; $5128: $72
	db $e3                                           ; $5129: $e3
	or e                                             ; $512a: $b3
	reti                                             ; $512b: $d9


	inc b                                            ; $512c: $04
	sub a                                            ; $512d: $97
	dec de                                           ; $512e: $1b
	dec sp                                           ; $512f: $3b
	ld e, e                                          ; $5130: $5b
	or e                                             ; $5131: $b3
	ld e, e                                          ; $5132: $5b
	cp e                                             ; $5133: $bb
	db $db                                           ; $5134: $db
	ei                                               ; $5135: $fb
	reti                                             ; $5136: $d9


	ld bc, $ff96                                     ; $5137: $01 $96 $ff
	rla                                              ; $513a: $17
	ld de, $b133                                     ; $513b: $11 $33 $b1
	add c                                            ; $513e: $81
	or c                                             ; $513f: $b1
	ldh [rIE], a                                     ; $5140: $e0 $ff
	sbc $ee                                          ; $5142: $de $ee
	sub d                                            ; $5144: $92
	ld c, [hl]                                       ; $5145: $4e
	ld a, [hl]                                       ; $5146: $7e
	ld c, [hl]                                       ; $5147: $4e
	ld c, $ff                                        ; $5148: $0e $ff
	ld l, e                                          ; $514a: $6b
	inc hl                                           ; $514b: $23
	ld l, e                                          ; $514c: $6b
	inc hl                                           ; $514d: $23
	ld hl, $5101                                     ; $514e: $21 $01 $51
	rst $38                                          ; $5151: $ff
	db $db                                           ; $5152: $db
	call c, $8c85                                    ; $5153: $dc $85 $8c
	rst $38                                          ; $5156: $ff
	ld h, l                                          ; $5157: $65
	ld h, c                                          ; $5158: $61
	ld h, l                                          ; $5159: $65
	ld h, b                                          ; $515a: $60
	ld h, c                                          ; $515b: $61
	ld l, c                                          ; $515c: $69
	ld l, c                                          ; $515d: $69
	ld b, b                                          ; $515e: $40
	jp c, $dade                                      ; $515f: $da $de $da

	rst SubAFromDE                                          ; $5162: $df
	sbc $d6                                          ; $5163: $de $d6
	sub $ff                                          ; $5165: $d6 $ff
	ld c, h                                          ; $5167: $4c
	ld c, b                                          ; $5168: $48
	ld c, b                                          ; $5169: $48
	nop                                              ; $516a: $00
	ld hl, $2021                                     ; $516b: $21 $21 $20
	rst $38                                          ; $516e: $ff
	db $dd                                           ; $516f: $dd
	or a                                             ; $5170: $b7
	sbc $96                                          ; $5171: $de $96
	sbc [hl]                                         ; $5173: $9e
	push de                                          ; $5174: $d5
	sbc $95                                          ; $5175: $de $95
	sbc d                                            ; $5177: $9a
	sub h                                            ; $5178: $94
	and h                                            ; $5179: $a4
	and l                                            ; $517a: $a5
	and l                                            ; $517b: $a5
	ld l, $de                                        ; $517c: $2e $de
	ld l, [hl]                                       ; $517e: $6e
	sbc e                                            ; $517f: $9b
	ld l, a                                          ; $5180: $6f
	ld e, a                                          ; $5181: $5f
	ld e, [hl]                                       ; $5182: $5e
	ld e, [hl]                                       ; $5183: $5e
	call c, $dedf                                    ; $5184: $dc $df $de
	rst $38                                          ; $5187: $ff
	reti                                             ; $5188: $d9


	ld hl, sp-$27                                    ; $5189: $f8 $d9
	rst GetHLinHL                                          ; $518b: $cf
	reti                                             ; $518c: $d9


	ld a, a                                          ; $518d: $7f
	reti                                             ; $518e: $d9


	rst $38                                          ; $518f: $ff
	rst SubAFromDE                                          ; $5190: $df
	ldh a, [$df]                                     ; $5191: $f0 $df
	ldh [$df], a                                     ; $5193: $e0 $df
	ret nz                                           ; $5195: $c0

	rst SubAFromDE                                          ; $5196: $df
	add b                                            ; $5197: $80
	reti                                             ; $5198: $d9


	rst $38                                          ; $5199: $ff
	ld sp, hl                                        ; $519a: $f9
	ld a, e                                          ; $519b: $7b
	ld [hl-], a                                      ; $519c: $32
	sub c                                            ; $519d: $91
	ld h, b                                          ; $519e: $60
	ld a, a                                          ; $519f: $7f
	ld a, a                                          ; $51a0: $7f
	ld a, b                                          ; $51a1: $78
	ld l, a                                          ; $51a2: $6f
	nop                                              ; $51a3: $00
	nop                                              ; $51a4: $00
	ld a, a                                          ; $51a5: $7f
	rst $38                                          ; $51a6: $ff
	ldh [$e0], a                                     ; $51a7: $e0 $e0
	rst SubAFromBC                                          ; $51a9: $e7
	ldh a, [$e0]                                     ; $51aa: $f0 $e0
	db $fd                                           ; $51ac: $fd
	sbc $e0                                          ; $51ad: $de $e0
	sbc [hl]                                         ; $51af: $9e
	rra                                              ; $51b0: $1f
	jp c, $dcff                                      ; $51b1: $da $ff $dc

	db $fd                                           ; $51b4: $fd
	sbc h                                            ; $51b5: $9c
	sbc l                                            ; $51b6: $9d
	adc l                                            ; $51b7: $8d
	adc l                                            ; $51b8: $8d
	call c, $de03                                    ; $51b9: $dc $03 $de
	ld b, e                                          ; $51bc: $43
	sbc $e8                                          ; $51bd: $de $e8
	db $dd                                           ; $51bf: $dd
	ld a, [$ea9e]                                    ; $51c0: $fa $9e $ea
	sbc $bf                                          ; $51c3: $de $bf
	db $dd                                           ; $51c5: $dd
	xor a                                            ; $51c6: $af
	sub d                                            ; $51c7: $92
	cp l                                             ; $51c8: $bd
	inc c                                            ; $51c9: $0c
	ld b, $04                                        ; $51ca: $06 $04
	inc b                                            ; $51cc: $04
	ld b, $01                                        ; $51cd: $06 $01
	inc bc                                           ; $51cf: $03
	ld [bc], a                                       ; $51d0: $02
	ld hl, sp-$02                                    ; $51d1: $f8 $fe
	db $fc                                           ; $51d3: $fc
	db $fc                                           ; $51d4: $fc
	ld a, d                                          ; $51d5: $7a
	jp c, $fe8e                                      ; $51d6: $da $8e $fe

	rst GetHLinHL                                          ; $51d9: $cf
	ld l, a                                          ; $51da: $6f
	cpl                                              ; $51db: $2f
	cpl                                              ; $51dc: $2f
	rst AddAOntoHL                                          ; $51dd: $ef
	rst SubAFromDE                                          ; $51de: $df
	rst AddAOntoHL                                          ; $51df: $ef
	cpl                                              ; $51e0: $2f
	sbc $6e                                          ; $51e1: $de $6e
	cpl                                              ; $51e3: $2f
	cpl                                              ; $51e4: $2f
	ld l, a                                          ; $51e5: $6f
	rst GetHLinHL                                          ; $51e6: $cf
	rst AddAOntoHL                                          ; $51e7: $ef
	xor a                                            ; $51e8: $af
	ld l, d                                          ; $51e9: $6a
	or d                                             ; $51ea: $b2
	ret c                                            ; $51eb: $d8

	rst $38                                          ; $51ec: $ff
	ld [hl], e                                       ; $51ed: $73
	di                                               ; $51ee: $f3
	ld l, [hl]                                       ; $51ef: $6e
	ld l, l                                          ; $51f0: $6d
	call c, $97ff                                    ; $51f1: $dc $ff $97
	db $ed                                           ; $51f4: $ed
	db $eb                                           ; $51f5: $eb
	rst AddAOntoHL                                          ; $51f6: $ef
	db $eb                                           ; $51f7: $eb
	db $ec                                           ; $51f8: $ec
	rst AddAOntoHL                                          ; $51f9: $ef
	rst AddAOntoHL                                          ; $51fa: $ef
	db $ed                                           ; $51fb: $ed
	reti                                             ; $51fc: $d9


	ret nz                                           ; $51fd: $c0

	sbc [hl]                                         ; $51fe: $9e
	di                                               ; $51ff: $f3
	sbc $53                                          ; $5200: $de $53
	sbc h                                            ; $5202: $9c
	di                                               ; $5203: $f3
	ld [hl], e                                       ; $5204: $73
	di                                               ; $5205: $f3
	ld h, d                                          ; $5206: $62
	ret nz                                           ; $5207: $c0

	sbc b                                            ; $5208: $98
	ld l, e                                          ; $5209: $6b
	cp e                                             ; $520a: $bb
	ei                                               ; $520b: $fb
	ei                                               ; $520c: $fb
	ld d, e                                          ; $520d: $53
	ld a, e                                          ; $520e: $7b
	cp e                                             ; $520f: $bb
	ld h, d                                          ; $5210: $62
	ret nz                                           ; $5211: $c0

	sbc l                                            ; $5212: $9d
	xor b                                            ; $5213: $a8
	add sp, -$25                                     ; $5214: $e8 $db
	xor b                                            ; $5216: $a8
	reti                                             ; $5217: $d9


	ld b, $9c                                        ; $5218: $06 $9c
	pop de                                           ; $521a: $d1
	push de                                          ; $521b: $d5
	push de                                          ; $521c: $d5
	sbc $d4                                          ; $521d: $de $d4
	rst SubAFromDE                                          ; $521f: $df
	call c, $0c9c                                    ; $5220: $dc $9c $0c
	ld [$dc08], sp                                   ; $5223: $08 $08 $dc
	add hl, bc                                       ; $5226: $09
	sbc l                                            ; $5227: $9d
	ld l, c                                          ; $5228: $69
	ld l, b                                          ; $5229: $68
	sbc $78                                          ; $522a: $de $78
	rst SubAFromDE                                          ; $522c: $df
	ld l, b                                          ; $522d: $68
	sbc h                                            ; $522e: $9c
	ld l, c                                          ; $522f: $69
	sub $d7                                          ; $5230: $d6 $d7
	sbc $c7                                          ; $5232: $de $c7
	rst SubAFromDE                                          ; $5234: $df
	rst SubAFromHL                                          ; $5235: $d7
	sbc [hl]                                         ; $5236: $9e
	sub $de                                          ; $5237: $d6 $de
	ld [hl+], a                                      ; $5239: $22
	rst SubAFromDE                                          ; $523a: $df
	ld [hl-], a                                      ; $523b: $32
	sbc h                                            ; $523c: $9c
	ld [hl], $34                                     ; $523d: $36 $34
	dec [hl]                                         ; $523f: $35
	sbc $94                                          ; $5240: $de $94
	rst SubAFromDE                                          ; $5242: $df
	add h                                            ; $5243: $84
	sub d                                            ; $5244: $92
	add b                                            ; $5245: $80
	add d                                            ; $5246: $82
	add d                                            ; $5247: $82
	and l                                            ; $5248: $a5
	and l                                            ; $5249: $a5
	and [hl]                                         ; $524a: $a6
	xor d                                            ; $524b: $aa
	xor d                                            ; $524c: $aa
	adc d                                            ; $524d: $8a
	adc d                                            ; $524e: $8a
	adc h                                            ; $524f: $8c
	ld e, [hl]                                       ; $5250: $5e
	ld e, [hl]                                       ; $5251: $5e
	sbc $5d                                          ; $5252: $de $5d
	rst SubAFromDE                                          ; $5254: $df
	ld a, l                                          ; $5255: $7d
	sbc [hl]                                         ; $5256: $9e
	ld a, e                                          ; $5257: $7b
	reti                                             ; $5258: $d9


	rst SubAFromDE                                          ; $5259: $df
	ld e, [hl]                                       ; $525a: $5e
	ret nz                                           ; $525b: $c0

	sbc c                                            ; $525c: $99
	adc $cf                                          ; $525d: $ce $cf
	ret z                                            ; $525f: $c8

	set 0, a                                         ; $5260: $cb $c7
	rst JumpTable                                          ; $5262: $c7
	call c, $9c7f                                    ; $5263: $dc $7f $9c
	ld a, h                                          ; $5266: $7c
	ld a, b                                          ; $5267: $78
	ld a, b                                          ; $5268: $78
	ld a, d                                          ; $5269: $7a
	sub $9a                                          ; $526a: $d6 $9a
	rst $38                                          ; $526c: $ff
	dec de                                           ; $526d: $1b
	db $db                                           ; $526e: $db
	db $db                                           ; $526f: $db
	ret c                                            ; $5270: $d8

	halt                                             ; $5271: $76
	sub $9b                                          ; $5272: $d6 $9b
	db $fc                                           ; $5274: $fc
	inc a                                            ; $5275: $3c
	inc a                                            ; $5276: $3c
	ld a, $7b                                        ; $5277: $3e $7b
	ldh a, [$de]                                     ; $5279: $f0 $de
	cp $9d                                           ; $527b: $fe $9d
	rlca                                             ; $527d: $07
	rst FarCall                                          ; $527e: $f7
	ld [hl], a                                       ; $527f: $77
	ldh a, [$df]                                     ; $5280: $f0 $df
	inc bc                                           ; $5282: $03
	sbc b                                            ; $5283: $98
	ei                                               ; $5284: $fb
	add hl, bc                                       ; $5285: $09
	ld a, a                                          ; $5286: $7f
	ld [hl], d                                       ; $5287: $72
	ld a, a                                          ; $5288: $7f
	ld a, d                                          ; $5289: $7a
	ld a, d                                          ; $528a: $7a

jr_03a_528b:
	ld a, e                                          ; $528b: $7b
	db $fd                                           ; $528c: $fd
	sbc l                                            ; $528d: $9d
	ldh [$ed], a                                     ; $528e: $e0 $ed
	db $d3                                           ; $5290: $d3
	ldh [$d9], a                                     ; $5291: $e0 $d9
	rst $38                                          ; $5293: $ff
	db $db                                           ; $5294: $db
	adc l                                            ; $5295: $8d
	sbc l                                            ; $5296: $9d
	call $d99d                                       ; $5297: $cd $9d $d9
	ld b, e                                          ; $529a: $43
	rst SubAFromDE                                          ; $529b: $df
	ld [$aadc], a                                    ; $529c: $ea $dc $aa
	sbc e                                            ; $529f: $9b
	add sp, -$43                                     ; $52a0: $e8 $bd
	cp l                                             ; $52a2: $bd
	db $fd                                           ; $52a3: $fd
	sbc $dd                                          ; $52a4: $de $dd
	sbc e                                            ; $52a6: $9b
	db $fd                                           ; $52a7: $fd
	cp a                                             ; $52a8: $bf
	rlca                                             ; $52a9: $07
	ld b, $73                                        ; $52aa: $06 $73
	cp $9c                                           ; $52ac: $fe $9c
	rlca                                             ; $52ae: $07
	rst $38                                          ; $52af: $ff
	cp $77                                           ; $52b0: $fe $77
	cp $7f                                           ; $52b2: $fe $7f
	or $7e                                           ; $52b4: $f6 $7e
	adc $77                                          ; $52b6: $ce $77
	cp $99                                           ; $52b8: $fe $99
	add sp, $6e                                      ; $52ba: $e8 $6e
	rst SubAFromBC                                          ; $52bc: $e7
	cpl                                              ; $52bd: $2f
	rst AddAOntoHL                                          ; $52be: $ef
	dec l                                            ; $52bf: $2d
	ld a, e                                          ; $52c0: $7b
	ld hl, sp-$62                                    ; $52c1: $f8 $9e
	ld l, $76                                        ; $52c3: $2e $76
	ccf                                              ; $52c5: $3f
	sbc l                                            ; $52c6: $9d
	ld e, a                                          ; $52c7: $5f
	ld a, a                                          ; $52c8: $7f
	ld [hl], a                                       ; $52c9: $77
	sub d                                            ; $52ca: $92
	ld l, [hl]                                       ; $52cb: $6e
	ld c, d                                          ; $52cc: $4a
	ld b, a                                          ; $52cd: $47
	ld hl, sp-$69                                    ; $52ce: $f8 $97
	xor $eb                                          ; $52d0: $ee $eb
	rst AddAOntoHL                                          ; $52d2: $ef
	ld l, a                                          ; $52d3: $6f
	db $ed                                           ; $52d4: $ed
	rst AddAOntoHL                                          ; $52d5: $ef
	nop                                              ; $52d6: $00
	nop                                              ; $52d7: $00
	db $db                                           ; $52d8: $db
	ret nz                                           ; $52d9: $c0

	rst $38                                          ; $52da: $ff
	sub a                                            ; $52db: $97
	ld [hl], e                                       ; $52dc: $73
	ldh a, [c]                                       ; $52dd: $f2
	or e                                             ; $52de: $b3
	ldh a, [c]                                       ; $52df: $f2
	di                                               ; $52e0: $f3
	di                                               ; $52e1: $f3
	nop                                              ; $52e2: $00
	nop                                              ; $52e3: $00
	reti                                             ; $52e4: $d9


	inc b                                            ; $52e5: $04
	sbc c                                            ; $52e6: $99
	ld [hl], e                                       ; $52e7: $73
	ei                                               ; $52e8: $fb
	db $d3                                           ; $52e9: $d3
	cp e                                             ; $52ea: $bb
	db $d3                                           ; $52eb: $d3
	ei                                               ; $52ec: $fb
	ld a, c                                          ; $52ed: $79
	rra                                              ; $52ee: $1f
	call c, $ff01                                    ; $52ef: $dc $01 $ff
	rst SubAFromDE                                          ; $52f2: $df
	jr z, jr_03a_528b                                ; $52f3: $28 $96

	ld [hl], c                                       ; $52f5: $71
	ld d, a                                          ; $52f6: $57
	ld e, e                                          ; $52f7: $5b
	ld e, a                                          ; $52f8: $5f
	rst $38                                          ; $52f9: $ff
	rst $38                                          ; $52fa: $ff
	add [hl]                                         ; $52fb: $86
	add [hl]                                         ; $52fc: $86
	adc [hl]                                         ; $52fd: $8e
	sbc $ae                                          ; $52fe: $de $ae
	rst SubAFromDE                                          ; $5300: $df
	rst $38                                          ; $5301: $ff
	rst SubAFromDE                                          ; $5302: $df
	ret c                                            ; $5303: $d8

	sbc c                                            ; $5304: $99
	ldh a, [c]                                       ; $5305: $f2
	ld a, d                                          ; $5306: $7a
	ld [hl+], a                                      ; $5307: $22
	ld [hl+], a                                      ; $5308: $22
	rst $38                                          ; $5309: $ff
	rst $38                                          ; $530a: $ff
	sbc $0d                                          ; $530b: $de $0d
	sbc c                                            ; $530d: $99
	adc l                                            ; $530e: $8d
	db $dd                                           ; $530f: $dd
	db $dd                                           ; $5310: $dd
	rst $38                                          ; $5311: $ff
	rst $38                                          ; $5312: $ff
	ld l, c                                          ; $5313: $69
	sbc $6d                                          ; $5314: $de $6d
	sbc d                                            ; $5316: $9a
	ld l, c                                          ; $5317: $69
	db $e3                                           ; $5318: $e3
	rst $38                                          ; $5319: $ff
	rst $38                                          ; $531a: $ff
	sub $de                                          ; $531b: $d6 $de
	jp nc, $d689                                     ; $531d: $d2 $89 $d6

	ld e, h                                          ; $5320: $5c
	rst $38                                          ; $5321: $ff
	rst $38                                          ; $5322: $ff
	inc [hl]                                         ; $5323: $34
	inc [hl]                                         ; $5324: $34
	or c                                             ; $5325: $b1
	db $ed                                           ; $5326: $ed
	ld c, l                                          ; $5327: $4d
	ld c, l                                          ; $5328: $4d
	rst $38                                          ; $5329: $ff
	rst $38                                          ; $532a: $ff
	add d                                            ; $532b: $82
	add d                                            ; $532c: $82
	ld b, $16                                        ; $532d: $06 $16
	or [hl]                                          ; $532f: $b6
	cp [hl]                                          ; $5330: $be
	rst $38                                          ; $5331: $ff
	rst $38                                          ; $5332: $ff
	adc h                                            ; $5333: $8c
	adc h                                            ; $5334: $8c
	db $dd                                           ; $5335: $dd
	call z, $c89d                                    ; $5336: $cc $9d $c8
	ld c, b                                          ; $5339: $48
	db $db                                           ; $533a: $db
	ld a, e                                          ; $533b: $7b
	ld a, a                                          ; $533c: $7f
	ld h, d                                          ; $533d: $62
	ld b, [hl]                                       ; $533e: $46
	ret nz                                           ; $533f: $c0

	db $db                                           ; $5340: $db
	rst JumpTable                                          ; $5341: $c7
	sbc l                                            ; $5342: $9d
	rst GetHLinHL                                          ; $5343: $cf
	ret                                              ; $5344: $c9


	db $db                                           ; $5345: $db
	ld a, b                                          ; $5346: $78
	sbc d                                            ; $5347: $9a
	ld [hl], b                                       ; $5348: $70
	halt                                             ; $5349: $76
	ret c                                            ; $534a: $d8

	call c, $dedc                                    ; $534b: $dc $dc $de
	db $dd                                           ; $534e: $dd
	rst SubAFromDE                                          ; $534f: $df
	reti                                             ; $5350: $d9


	call c, $de3e                                    ; $5351: $dc $3e $de
	ccf                                              ; $5354: $3f
	adc c                                            ; $5355: $89
	rlca                                             ; $5356: $07
	inc bc                                           ; $5357: $03
	rlca                                             ; $5358: $07
	add a                                            ; $5359: $87
	inc bc                                           ; $535a: $03
	sub e                                            ; $535b: $93
	di                                               ; $535c: $f3
	and e                                            ; $535d: $a3
	add hl, bc                                       ; $535e: $09
	dec b                                            ; $535f: $05
	dec b                                            ; $5360: $05
	inc b                                            ; $5361: $04
	inc b                                            ; $5362: $04
	ld h, $02                                        ; $5363: $26 $02
	ld [bc], a                                       ; $5365: $02
	rst $38                                          ; $5366: $ff
	ld hl, sp-$07                                    ; $5367: $f8 $f9
	cp $ff                                           ; $5369: $fe $ff
	db $f4                                           ; $536b: $f4
	call c, $98e0                                    ; $536c: $dc $e0 $98
	pop hl                                           ; $536f: $e1
	ldh [$e0], a                                     ; $5370: $e0 $e0
	ld h, c                                          ; $5372: $61
	ld a, a                                          ; $5373: $7f
	ldh [$e0], a                                     ; $5374: $e0 $e0
	db $db                                           ; $5376: $db
	ld h, b                                          ; $5377: $60
	reti                                             ; $5378: $d9


	rst $38                                          ; $5379: $ff
	adc [hl]                                         ; $537a: $8e
	ld c, l                                          ; $537b: $4d
	cp l                                             ; $537c: $bd
	db $fd                                           ; $537d: $fd
	db $fd                                           ; $537e: $fd
	ld sp, hl                                        ; $537f: $f9
	di                                               ; $5380: $f3
	rst SubAFromBC                                          ; $5381: $e7
	adc a                                            ; $5382: $8f
	di                                               ; $5383: $f3
	ld b, e                                          ; $5384: $43
	inc bc                                           ; $5385: $03
	inc bc                                           ; $5386: $03
	rlca                                             ; $5387: $07
	rrca                                             ; $5388: $0f
	rra                                              ; $5389: $1f
	ld a, a                                          ; $538a: $7f
	add sp, -$23                                     ; $538b: $e8 $dd
	ld [$bbdf], a                                    ; $538d: $ea $df $bb
	sbc [hl]                                         ; $5390: $9e
	cp $dc                                           ; $5391: $fe $dc
	cp a                                             ; $5393: $bf
	sbc $ff                                          ; $5394: $de $ff
	sbc [hl]                                         ; $5396: $9e
	rlca                                             ; $5397: $07
	halt                                             ; $5398: $76
	jp z, $ff9b                                      ; $5399: $ca $9b $ff

	rrca                                             ; $539c: $0f
	rst FarCall                                          ; $539d: $f7
	rst $38                                          ; $539e: $ff
	sbc $07                                          ; $539f: $de $07
	db $dd                                           ; $53a1: $dd
	rst $38                                          ; $53a2: $ff
	sub [hl]                                         ; $53a3: $96
	db $10                                           ; $53a4: $10
	rra                                              ; $53a5: $1f
	ld [hl], b                                       ; $53a6: $70
	inc e                                            ; $53a7: $1c
	rra                                              ; $53a8: $1f
	cp l                                             ; $53a9: $bd
	dec sp                                           ; $53aa: $3b
	rst FarCall                                          ; $53ab: $f7
	rst AddAOntoHL                                          ; $53ac: $ef
	ld l, c                                          ; $53ad: $69
	adc d                                            ; $53ae: $8a
	halt                                             ; $53af: $76
	rst SubAFromHL                                          ; $53b0: $d7
	ld a, l                                          ; $53b1: $7d
	dec bc                                           ; $53b2: $0b
	ld a, c                                          ; $53b3: $79
	add hl, bc                                       ; $53b4: $09
	sbc [hl]                                         ; $53b5: $9e
	nop                                              ; $53b6: $00
	ld l, l                                          ; $53b7: $6d
	inc b                                            ; $53b8: $04
	ld [hl], a                                       ; $53b9: $77
	ldh a, [$7f]                                     ; $53ba: $f0 $7f
	db $fc                                           ; $53bc: $fc
	ld a, e                                          ; $53bd: $7b
	ld a, [$0471]                                    ; $53be: $fa $71 $04
	ld h, a                                          ; $53c1: $67
	ldh a, [$9e]                                     ; $53c2: $f0 $9e
	ld b, b                                          ; $53c4: $40
	ld h, e                                          ; $53c5: $63
	ldh a, [$9c]                                     ; $53c6: $f0 $9c
	inc c                                            ; $53c8: $0c
	ldh [c], a                                       ; $53c9: $e2
	db $fc                                           ; $53ca: $fc
	ld l, a                                          ; $53cb: $6f
	ldh [$9d], a                                     ; $53cc: $e0 $9d
	rra                                              ; $53ce: $1f
	inc bc                                           ; $53cf: $03
	ld l, a                                          ; $53d0: $6f
	ldh [$9a], a                                     ; $53d1: $e0 $9a
	ccf                                              ; $53d3: $3f
	rrca                                             ; $53d4: $0f
	jp $ff00                                         ; $53d5: $c3 $00 $ff


	ld a, b                                          ; $53d8: $78
	ldh a, [c]                                       ; $53d9: $f2
	sbc h                                            ; $53da: $9c
	ret nz                                           ; $53db: $c0

	ldh a, [$3c]                                     ; $53dc: $f0 $3c
	ld e, a                                          ; $53de: $5f
	ret nc                                           ; $53df: $d0

	sbc [hl]                                         ; $53e0: $9e
	ret nz                                           ; $53e1: $c0

	ld c, e                                          ; $53e2: $4b
	ret nz                                           ; $53e3: $c0

	ld e, e                                          ; $53e4: $5b
	or b                                             ; $53e5: $b0
	sbc c                                            ; $53e6: $99
	ld a, a                                          ; $53e7: $7f
	ld b, b                                          ; $53e8: $40
	ld b, b                                          ; $53e9: $40
	ld b, c                                          ; $53ea: $41
	ld b, d                                          ; $53eb: $42
	ld b, h                                          ; $53ec: $44
	ld a, e                                          ; $53ed: $7b
	db $f4                                           ; $53ee: $f4
	rst SubAFromDE                                          ; $53ef: $df
	ret nz                                           ; $53f0: $c0

	sbc h                                            ; $53f1: $9c
	pop bc                                           ; $53f2: $c1
	jp Jump_03a_79c6                                 ; $53f3: $c3 $c6 $79


	jp nc, $329d                                     ; $53f6: $d2 $9d $32

	jp nz, $02de                                     ; $53f9: $c2 $de $02

	ld a, e                                          ; $53fc: $7b
	ldh a, [$97]                                     ; $53fd: $f0 $97
	dec sp                                           ; $53ff: $3b
	db $e3                                           ; $5400: $e3
	add e                                            ; $5401: $83
	inc bc                                           ; $5402: $03
	inc bc                                           ; $5403: $03
	rst $38                                          ; $5404: $ff
	ld c, b                                          ; $5405: $48
	ld c, b                                          ; $5406: $48
	db $dd                                           ; $5407: $dd
	ret z                                            ; $5408: $c8

	sbc [hl]                                         ; $5409: $9e
	ret                                              ; $540a: $c9


	ret c                                            ; $540b: $d8

	rst $38                                          ; $540c: $ff
	ld l, h                                          ; $540d: $6c
	ld b, d                                          ; $540e: $42
	ld h, h                                          ; $540f: $64
	ld b, b                                          ; $5410: $40
	ld a, h                                          ; $5411: $7c
	add c                                            ; $5412: $81
	ld a, [hl]                                       ; $5413: $7e
	add $87                                          ; $5414: $c6 $87
	rst GetHLinHL                                          ; $5416: $cf
	call $cbcd                                       ; $5417: $cd $cd $cb
	ret                                              ; $541a: $c9


	ret z                                            ; $541b: $c8

	ld [hl], b                                       ; $541c: $70
	halt                                             ; $541d: $76
	ld [hl], b                                       ; $541e: $70
	ld [hl], d                                       ; $541f: $72
	ld [hl], d                                       ; $5420: $72
	ld [hl], b                                       ; $5421: $70
	ld [hl], b                                       ; $5422: $70
	ld [hl], d                                       ; $5423: $72
	ret c                                            ; $5424: $d8

	ld e, b                                          ; $5425: $58
	ld e, h                                          ; $5426: $5c
	ld d, h                                          ; $5427: $54
	ld d, h                                          ; $5428: $54
	ret nc                                           ; $5429: $d0

	ld d, h                                          ; $542a: $54
	call nc, $bf3f                                   ; $542b: $d4 $3f $bf
	db $dd                                           ; $542e: $dd
	ccf                                              ; $542f: $3f
	ld a, a                                          ; $5430: $7f
	ei                                               ; $5431: $fb
	sub l                                            ; $5432: $95
	and e                                            ; $5433: $a3
	pop bc                                           ; $5434: $c1
	db $d3                                           ; $5435: $d3
	di                                               ; $5436: $f3
	pop af                                           ; $5437: $f1
	ld [hl], c                                       ; $5438: $71
	ld h, [hl]                                       ; $5439: $66
	jr c, jr_03a_543f                                ; $543a: $38 $03

	add e                                            ; $543c: $83
	db $dd                                           ; $543d: $dd
	add c                                            ; $543e: $81

jr_03a_543f:
	sub h                                            ; $543f: $94
	add a                                            ; $5440: $87
	rst $38                                          ; $5441: $ff
	ld a, a                                          ; $5442: $7f
	ld a, a                                          ; $5443: $7f
	jr nc, jr_03a_5476                               ; $5444: $30 $30

	sub b                                            ; $5446: $90
	sub b                                            ; $5447: $90
	db $10                                           ; $5448: $10
	db $10                                           ; $5449: $10
	rst $38                                          ; $544a: $ff
	ld a, e                                          ; $544b: $7b
	or $df                                           ; $544c: $f6 $df
	cp a                                             ; $544e: $bf
	sbc l                                            ; $544f: $9d
	ccf                                              ; $5450: $3f
	rst $38                                          ; $5451: $ff
	reti                                             ; $5452: $d9


	ld h, b                                          ; $5453: $60
	reti                                             ; $5454: $d9


	rst $38                                          ; $5455: $ff
	sub e                                            ; $5456: $93
	inc hl                                           ; $5457: $23
	rlca                                             ; $5458: $07
	rrca                                             ; $5459: $0f
	ccf                                              ; $545a: $3f
	ret nz                                           ; $545b: $c0

	ret nz                                           ; $545c: $c0

	add $d8                                          ; $545d: $c6 $d8
	rst $38                                          ; $545f: $ff
	cp $fc                                           ; $5460: $fe $fc
	ldh a, [$7b]                                     ; $5462: $f0 $7b
	ld c, d                                          ; $5464: $4a
	ld l, c                                          ; $5465: $69
	jp z, $669b                                      ; $5466: $ca $9b $66

	sbc c                                            ; $5469: $99
	rst $38                                          ; $546a: $ff
	ld a, h                                          ; $546b: $7c
	ld l, a                                          ; $546c: $6f
	ld c, a                                          ; $546d: $4f
	sbc [hl]                                         ; $546e: $9e
	ldh a, [rOCPD]                                   ; $546f: $f0 $6b
	ldh a, [$fc]                                     ; $5471: $f0 $fc
	sbc $ff                                          ; $5473: $de $ff
	sbc [hl]                                         ; $5475: $9e

jr_03a_5476:
	ld e, $de                                        ; $5476: $1e $de
	rst $38                                          ; $5478: $ff
	sub e                                            ; $5479: $93
	ld b, $05                                        ; $547a: $06 $05
	ld h, h                                          ; $547c: $64
	sbc h                                            ; $547d: $9c
	rrca                                             ; $547e: $0f

Call_03a_547f:
	add hl, bc                                       ; $547f: $09
	inc bc                                           ; $5480: $03
	ld b, $04                                        ; $5481: $06 $04
	db $fc                                           ; $5483: $fc
	db $fd                                           ; $5484: $fd
	db $fd                                           ; $5485: $fd
	ld l, a                                          ; $5486: $6f
	inc e                                            ; $5487: $1c
	rst $38                                          ; $5488: $ff
	sbc [hl]                                         ; $5489: $9e
	ldh [$79], a                                     ; $548a: $e0 $79
	and h                                            ; $548c: $a4
	ld [hl], a                                       ; $548d: $77
	rst SubAFromDE                                          ; $548e: $df
	sub c                                            ; $548f: $91
	cp $fd                                           ; $5490: $fe $fd
	ei                                               ; $5492: $fb
	rst $38                                          ; $5493: $ff
	ld b, $fe                                        ; $5494: $06 $fe
	ld b, $06                                        ; $5496: $06 $06
	ld bc, $0703                                     ; $5498: $01 $03 $07
	ld b, $0e                                        ; $549b: $06 $0e
	rrca                                             ; $549d: $0f
	ld l, e                                          ; $549e: $6b
	or b                                             ; $549f: $b0
	rst SubAFromDE                                          ; $54a0: $df
	rst GetHLinHL                                          ; $54a1: $cf
	sbc l                                            ; $54a2: $9d
	rrca                                             ; $54a3: $0f
	add b                                            ; $54a4: $80
	db $fd                                           ; $54a5: $fd
	ld a, a                                          ; $54a6: $7f
	add c                                            ; $54a7: $81
	ld h, d                                          ; $54a8: $62
	adc h                                            ; $54a9: $8c
	ld h, a                                          ; $54aa: $67
	or b                                             ; $54ab: $b0
	ld [hl], e                                       ; $54ac: $73
	ldh a, [$df]                                     ; $54ad: $f0 $df
	ldh a, [$79]                                     ; $54af: $f0 $79
	ld l, [hl]                                       ; $54b1: $6e
	ld [hl], e                                       ; $54b2: $73
	ldh a, [$9c]                                     ; $54b3: $f0 $9c
	db $fc                                           ; $54b5: $fc
	ld bc, $77c3                                     ; $54b6: $01 $c3 $77
	db $e4                                           ; $54b9: $e4
	rst SubAFromDE                                          ; $54ba: $df
	ld bc, $fe9d                                     ; $54bb: $01 $9d $fe
	inc a                                            ; $54be: $3c
	ld l, a                                          ; $54bf: $6f
	ldh [$8e], a                                     ; $54c0: $e0 $8e
	push af                                          ; $54c2: $f5
	ei                                               ; $54c3: $fb
	cp $fd                                           ; $54c4: $fe $fd
	ld bc, $d539                                     ; $54c6: $01 $39 $d5
	adc l                                            ; $54c9: $8d
	ld c, $06                                        ; $54ca: $0e $06
	inc bc                                           ; $54cc: $03
	inc bc                                           ; $54cd: $03
	ld bc, $bfff                                     ; $54ce: $01 $ff $bf
	ld a, a                                          ; $54d1: $7f
	ccf                                              ; $54d2: $3f
	ld a, e                                          ; $54d3: $7b
	db $eb                                           ; $54d4: $eb
	rst SubAFromDE                                          ; $54d5: $df
	add b                                            ; $54d6: $80
	sbc [hl]                                         ; $54d7: $9e
	and [hl]                                         ; $54d8: $a6
	ld a, d                                          ; $54d9: $7a
	dec h                                            ; $54da: $25
	cp $de                                           ; $54db: $fe $de
	ld a, a                                          ; $54dd: $7f
	ld l, [hl]                                       ; $54de: $6e
	and l                                            ; $54df: $a5
	ld a, e                                          ; $54e0: $7b
	ld d, b                                          ; $54e1: $50
	ld l, d                                          ; $54e2: $6a
	sbc a                                            ; $54e3: $9f
	rst SubAFromDE                                          ; $54e4: $df
	ld a, a                                          ; $54e5: $7f
	ld a, [hl]                                       ; $54e6: $7e
	rrca                                             ; $54e7: $0f
	sbc c                                            ; $54e8: $99
	nop                                              ; $54e9: $00
	inc bc                                           ; $54ea: $03
	ld h, [hl]                                       ; $54eb: $66
	cp e                                             ; $54ec: $bb
	rst $38                                          ; $54ed: $ff
	rst $38                                          ; $54ee: $ff
	ld a, c                                          ; $54ef: $79
	inc sp                                           ; $54f0: $33
	sbc $ff                                          ; $54f1: $de $ff
	sbc c                                            ; $54f3: $99
	adc a                                            ; $54f4: $8f
	rst SubAFromBC                                          ; $54f5: $e7
	di                                               ; $54f6: $f3
	ld a, c                                          ; $54f7: $79
	inc c                                            ; $54f8: $0c
	cp $7b                                           ; $54f9: $fe $7b
	jr c, @-$62                                      ; $54fb: $38 $9c

	ld hl, sp-$04                                    ; $54fd: $f8 $fc
	cp $7a                                           ; $54ff: $fe $7a
	ld e, d                                          ; $5501: $5a
	sbc [hl]                                         ; $5502: $9e
	rst $38                                          ; $5503: $ff
	sbc $ca                                          ; $5504: $de $ca
	ld a, a                                          ; $5506: $7f
	ret nz                                           ; $5507: $c0

	sbc h                                            ; $5508: $9c
	ld a, a                                          ; $5509: $7f
	jr nz, @-$6e                                     ; $550a: $20 $90

	sbc $74                                          ; $550c: $de $74
	rst SubAFromDE                                          ; $550e: $df
	ld a, a                                          ; $550f: $7f
	sbc c                                            ; $5510: $99
	add b                                            ; $5511: $80
	ret nz                                           ; $5512: $c0

	ldh [$d6], a                                     ; $5513: $e0 $d6
	sbc $de                                          ; $5515: $de $de
	ld [hl], e                                       ; $5517: $73
	ld b, b                                          ; $5518: $40
	sbc $3f                                          ; $5519: $de $3f
	ld l, a                                          ; $551b: $6f
	ld l, e                                          ; $551c: $6b
	sbc d                                            ; $551d: $9a
	rlca                                             ; $551e: $07
	ld a, a                                          ; $551f: $7f
	ret nz                                           ; $5520: $c0

	ccf                                              ; $5521: $3f
	ldh [$6f], a                                     ; $5522: $e0 $6f
	ld h, l                                          ; $5524: $65
	ld [hl], a                                       ; $5525: $77
	dec l                                            ; $5526: $2d
	sbc e                                            ; $5527: $9b
	ld [hl], b                                       ; $5528: $70
	ret nz                                           ; $5529: $c0

	rra                                              ; $552a: $1f
	ldh a, [$6f]                                     ; $552b: $f0 $6f
	ld h, l                                          ; $552d: $65
	ld a, e                                          ; $552e: $7b
	db $eb                                           ; $552f: $eb
	cp $73                                           ; $5530: $fe $73
	ld a, [$e0de]                                    ; $5532: $fa $de $e0
	ld [hl], a                                       ; $5535: $77
	or h                                             ; $5536: $b4
	db $dd                                           ; $5537: $dd
	rst $38                                          ; $5538: $ff
	sbc d                                            ; $5539: $9a
	rst GetHLinHL                                          ; $553a: $cf
	rst SubAFromDE                                          ; $553b: $df
	sbc $d9                                          ; $553c: $de $d9
	sub $7b                                          ; $553e: $d6 $7b
	cp $d9                                           ; $5540: $fe $d9
	rst $38                                          ; $5542: $ff
	sub a                                            ; $5543: $97
	cp $f5                                           ; $5544: $fe $f5
	ld a, a                                          ; $5546: $7f
	sbc l                                            ; $5547: $9d
	ld l, a                                          ; $5548: $6f
	sbc l                                            ; $5549: $9d
	ld l, [hl]                                       ; $554a: $6e
	sbc l                                            ; $554b: $9d
	reti                                             ; $554c: $d9


	rst $38                                          ; $554d: $ff
	sub a                                            ; $554e: $97
	ld h, [hl]                                       ; $554f: $66
	rst SubAFromDE                                          ; $5550: $df
	ld a, [hl]                                       ; $5551: $7e
	reti                                             ; $5552: $d9


	ld a, [hl]                                       ; $5553: $7e
	reti                                             ; $5554: $d9


	cp $db                                           ; $5555: $fe $db
	reti                                             ; $5557: $d9


	rst $38                                          ; $5558: $ff
	sbc e                                            ; $5559: $9b
	ld l, h                                          ; $555a: $6c
	db $fc                                           ; $555b: $fc
	ld [hl], h                                       ; $555c: $74
	sbc h                                            ; $555d: $9c
	ld a, e                                          ; $555e: $7b
	cp $7a                                           ; $555f: $fe $7a
	add $db                                          ; $5561: $c6 $db
	db $fd                                           ; $5563: $fd
	rst $38                                          ; $5564: $ff
	db $db                                           ; $5565: $db
	call z, $ffd9                                    ; $5566: $cc $d9 $ff
	rst SubAFromDE                                          ; $5569: $df
	ld b, $de                                        ; $556a: $06 $de
	add $df                                          ; $556c: $c6 $df
	rst JumpTable                                          ; $556e: $c7
	ld a, l                                          ; $556f: $7d
	rst SubAFromBC                                          ; $5570: $e7
	jp c, $9bff                                      ; $5571: $da $ff $9b

	rst AddAOntoHL                                          ; $5574: $ef
	rrca                                             ; $5575: $0f
	inc c                                            ; $5576: $0c
	rrca                                             ; $5577: $0f
	ld [hl], a                                       ; $5578: $77
	dec e                                            ; $5579: $1d
	reti                                             ; $557a: $d9


	rst $38                                          ; $557b: $ff
	sbc h                                            ; $557c: $9c
	jp c, $d0aa                                      ; $557d: $da $aa $d0

	ld [hl], e                                       ; $5580: $73
	dec c                                            ; $5581: $0d
	sbc l                                            ; $5582: $9d
	rst $38                                          ; $5583: $ff
	push de                                          ; $5584: $d5
	db $db                                           ; $5585: $db
	rst $38                                          ; $5586: $ff
	ld a, a                                          ; $5587: $7f
	ld a, [hl+]                                      ; $5588: $2a
	sbc l                                            ; $5589: $9d
	cp $f7                                           ; $558a: $fe $f7
	ld [hl], a                                       ; $558c: $77
	ldh a, [$de]                                     ; $558d: $f0 $de
	rst FarCall                                          ; $558f: $f7
	call c, $9bff                                    ; $5590: $dc $ff $9b
	ld [bc], a                                       ; $5593: $02
	db $db                                           ; $5594: $db
	ld bc, $57fd                                     ; $5595: $01 $fd $57
	ret nc                                           ; $5598: $d0

	sbc d                                            ; $5599: $9a
	dec c                                            ; $559a: $0d

Call_03a_559b:
	dec e                                            ; $559b: $1d
	db $ed                                           ; $559c: $ed
	push af                                          ; $559d: $f5
	dec b                                            ; $559e: $05
	sbc $fd                                          ; $559f: $de $fd
	ret c                                            ; $55a1: $d8

	rst $38                                          ; $55a2: $ff
	sbc b                                            ; $55a3: $98
	cp c                                             ; $55a4: $b9
	and $b9                                          ; $55a5: $e6 $b9
	and $f9                                          ; $55a7: $e6 $f9
	rst $38                                          ; $55a9: $ff
	cp l                                             ; $55aa: $bd
	reti                                             ; $55ab: $d9


	ld a, a                                          ; $55ac: $7f
	sbc h                                            ; $55ad: $9c
	ld h, [hl]                                       ; $55ae: $66
	db $db                                           ; $55af: $db
	ld a, a                                          ; $55b0: $7f
	ld [hl], a                                       ; $55b1: $77
	cp $78                                           ; $55b2: $fe $78
	ld h, $db                                        ; $55b4: $26 $db
	rst $38                                          ; $55b6: $ff
	sbc d                                            ; $55b7: $9a
	or $dd                                           ; $55b8: $f6 $dd
	rst SubAFromBC                                          ; $55ba: $e7
	sbc c                                            ; $55bb: $99
	ld h, [hl]                                       ; $55bc: $66
	ld a, e                                          ; $55bd: $7b
	cp $d9                                           ; $55be: $fe $d9
	rst $38                                          ; $55c0: $ff
	sbc [hl]                                         ; $55c1: $9e
	db $fc                                           ; $55c2: $fc
	ld [hl], l                                       ; $55c3: $75
	adc d                                            ; $55c4: $8a
	sbc $f0                                          ; $55c5: $de $f0
	reti                                             ; $55c7: $d9


	rst $38                                          ; $55c8: $ff
	sub a                                            ; $55c9: $97
	ret z                                            ; $55ca: $c8

	db $e4                                           ; $55cb: $e4
	or d                                             ; $55cc: $b2
	sbc c                                            ; $55cd: $99
	xor h                                            ; $55ce: $ac
	sub [hl]                                         ; $55cf: $96
	xor e                                            ; $55d0: $ab
	or l                                             ; $55d1: $b5
	halt                                             ; $55d2: $76
	or b                                             ; $55d3: $b0
	sbc e                                            ; $55d4: $9b
	rst SubAFromDE                                          ; $55d5: $df
	rst GetHLinHL                                          ; $55d6: $cf
	rst JumpTable                                          ; $55d7: $c7
	jp $e472                                         ; $55d8: $c3 $72 $e4


	rst $38                                          ; $55db: $ff
	ld [hl], d                                       ; $55dc: $72
	ld hl, $2866                                     ; $55dd: $21 $66 $28
	ld l, [hl]                                       ; $55e0: $6e
	inc hl                                           ; $55e1: $23
	cpl                                              ; $55e2: $2f
	ldh a, [rAUD4POLY]                               ; $55e3: $f0 $22
	nop                                              ; $55e5: $00
	sbc l                                            ; $55e6: $9d
	inc sp                                           ; $55e7: $33
	ld b, l                                          ; $55e8: $45
	sbc $55                                          ; $55e9: $de $55
	rst SubAFromDE                                          ; $55eb: $df
	ld h, [hl]                                       ; $55ec: $66
	sbc [hl]                                         ; $55ed: $9e
	ld b, h                                          ; $55ee: $44
	sbc $33                                          ; $55ef: $de $33
	scf                                              ; $55f1: $37
	or $9d                                           ; $55f2: $f6 $9d
	ld b, e                                          ; $55f4: $43
	ld [hl], e                                       ; $55f5: $73
	sbc $33                                          ; $55f6: $de $33
	ld [hl], a                                       ; $55f8: $77
	or $9e                                           ; $55f9: $f6 $9e
	scf                                              ; $55fb: $37
	db $db                                           ; $55fc: $db
	ld [hl], a                                       ; $55fd: $77
	ld a, e                                          ; $55fe: $7b
	pop af                                           ; $55ff: $f1
	ld l, e                                          ; $5600: $6b
	or $9c                                           ; $5601: $f6 $9c
	ld [hl], a                                       ; $5603: $77
	inc sp                                           ; $5604: $33
	inc sp                                           ; $5605: $33
	ld e, c                                          ; $5606: $59
	add d                                            ; $5607: $82
	sbc [hl]                                         ; $5608: $9e
	ldh [c], a                                       ; $5609: $e2
	db $dd                                           ; $560a: $dd
	ld [bc], a                                       ; $560b: $02
	sbc $e2                                          ; $560c: $de $e2
	sbc [hl]                                         ; $560e: $9e
	rra                                              ; $560f: $1f
	jp nc, $d9ff                                     ; $5610: $d2 $ff $d9

	inc bc                                           ; $5613: $03
	rst SubAFromDE                                          ; $5614: $df
	xor c                                            ; $5615: $a9
	rst SubAFromDE                                          ; $5616: $df
	xor b                                            ; $5617: $a8
	sbc [hl]                                         ; $5618: $9e
	xor d                                            ; $5619: $aa
	sbc $ba                                          ; $561a: $de $ba
	rst SubAFromDE                                          ; $561c: $df
	cp $df                                           ; $561d: $fe $df
	rst $38                                          ; $561f: $ff
	sbc [hl]                                         ; $5620: $9e
	db $fd                                           ; $5621: $fd
	sbc $ed                                          ; $5622: $de $ed
	ld sp, hl                                        ; $5624: $f9
	reti                                             ; $5625: $d9


	rst $38                                          ; $5626: $ff
	ld c, e                                          ; $5627: $4b
	ldh a, [$9e]                                     ; $5628: $f0 $9e
	ei                                               ; $562a: $fb
	ld h, e                                          ; $562b: $63
	ldh a, [$9e]                                     ; $562c: $f0 $9e
	rst SubAFromDE                                          ; $562e: $df
	scf                                              ; $562f: $37
	ldh [$9d], a                                     ; $5630: $e0 $9d
	cp $fd                                           ; $5632: $fe $fd
	ld d, a                                          ; $5634: $57
	ldh a, [$9b]                                     ; $5635: $f0 $9b
	rst AddAOntoHL                                          ; $5637: $ef
	ld a, a                                          ; $5638: $7f
	ei                                               ; $5639: $fb
	ld e, a                                          ; $563a: $5f
	reti                                             ; $563b: $d9


	db $10                                           ; $563c: $10
	jp c, $9ee7                                      ; $563d: $da $e7 $9e

	ld h, a                                          ; $5640: $67
	db $fc                                           ; $5641: $fc
	sbc h                                            ; $5642: $9c
	inc bc                                           ; $5643: $03
	rrca                                             ; $5644: $0f
	ld a, a                                          ; $5645: $7f
	call c, $9cff                                    ; $5646: $dc $ff $9c
	db $fc                                           ; $5649: $fc
	di                                               ; $564a: $f3
	adc a                                            ; $564b: $8f
	ld a, e                                          ; $564c: $7b
	db $f4                                           ; $564d: $f4
	sbc [hl]                                         ; $564e: $9e
	ccf                                              ; $564f: $3f
	ld a, e                                          ; $5650: $7b
	rst FarCall                                          ; $5651: $f7
	sbc [hl]                                         ; $5652: $9e
	ldh a, [$7b]                                     ; $5653: $f0 $7b
	db $f4                                           ; $5655: $f4
	sbc d                                            ; $5656: $9a
	rst GetHLinHL                                          ; $5657: $cf
	ld a, $f8                                        ; $5658: $3e $f8
	ldh [$80], a                                     ; $565a: $e0 $80
	ld [hl], a                                       ; $565c: $77
	db $f4                                           ; $565d: $f4
	sbc [hl]                                         ; $565e: $9e
	ret nz                                           ; $565f: $c0

	cp $77                                           ; $5660: $fe $77
	db $f4                                           ; $5662: $f4
	ld [hl], e                                       ; $5663: $73
	cp b                                             ; $5664: $b8
	sub [hl]                                         ; $5665: $96
	rrca                                             ; $5666: $0f
	daa                                              ; $5667: $27
	add hl, bc                                       ; $5668: $09
	inc a                                            ; $5669: $3c
	inc de                                           ; $566a: $13
	dec b                                            ; $566b: $05
	dec bc                                           ; $566c: $0b
	rrca                                             ; $566d: $0f
	inc bc                                           ; $566e: $03
	ei                                               ; $566f: $fb
	sub e                                            ; $5670: $93
	ldh a, [$fc]                                     ; $5671: $f0 $fc
	rst $38                                          ; $5673: $ff
	rst $38                                          ; $5674: $ff
	ld a, a                                          ; $5675: $7f
	sbc a                                            ; $5676: $9f
	rst SubAFromBC                                          ; $5677: $e7
	sbc c                                            ; $5678: $99
	sbc a                                            ; $5679: $9f
	rst SubAFromBC                                          ; $567a: $e7
	ld sp, hl                                        ; $567b: $f9
	ld a, $77                                        ; $567c: $3e $77
	db $ec                                           ; $567e: $ec
	sbc [hl]                                         ; $567f: $9e
	inc sp                                           ; $5680: $33
	sbc $b3                                          ; $5681: $de $b3
	sbc $93                                          ; $5683: $de $93
	sbc e                                            ; $5685: $9b
	sbc e                                            ; $5686: $9b
	xor $fe                                          ; $5687: $ee $fe
	sbc $7b                                          ; $5689: $de $7b
	ld l, [hl]                                       ; $568b: $6e
	sbc e                                            ; $568c: $9b
	db $fd                                           ; $568d: $fd
	push af                                          ; $568e: $f5
	rra                                              ; $568f: $1f
	rra                                              ; $5690: $1f
	call c, $9e3f                                    ; $5691: $dc $3f $9e
	ld a, a                                          ; $5694: $7f
	jp c, $9ef8                                      ; $5695: $da $f8 $9e

	cp b                                             ; $5698: $b8
	db $dd                                           ; $5699: $dd
	call $cfdd                                       ; $569a: $cd $dd $cf
	reti                                             ; $569d: $d9


	ld a, a                                          ; $569e: $7f
	sub e                                            ; $569f: $93
	ld a, [hl+]                                      ; $56a0: $2a
	ld l, d                                          ; $56a1: $6a
	dec hl                                           ; $56a2: $2b
	ld l, c                                          ; $56a3: $69
	jp hl                                            ; $56a4: $e9


	ld [$fdfe], a                                    ; $56a5: $ea $fe $fd
	ld l, b                                          ; $56a8: $68
	ld l, b                                          ; $56a9: $68
	ld l, c                                          ; $56aa: $69
	ld l, e                                          ; $56ab: $6b
	ld a, e                                          ; $56ac: $7b
	ld hl, sp+$7f                                    ; $56ad: $f8 $7f
	or d                                             ; $56af: $b2
	sub b                                            ; $56b0: $90
	rst SubAFromBC                                          ; $56b1: $e7
	db $db                                           ; $56b2: $db
	xor b                                            ; $56b3: $a8
	ld d, a                                          ; $56b4: $57
	inc l                                            ; $56b5: $2c
	ld e, c                                          ; $56b6: $59
	or b                                             ; $56b7: $b0
	cp a                                             ; $56b8: $bf
	ldh [$c0], a                                     ; $56b9: $e0 $c0
	sub a                                            ; $56bb: $97
	cpl                                              ; $56bc: $2f
	ld e, a                                          ; $56bd: $5f
	cp h                                             ; $56be: $bc
	ld a, h                                          ; $56bf: $7c
	ld [hl], a                                       ; $56c0: $77
	dec l                                            ; $56c1: $2d
	ld l, a                                          ; $56c2: $6f
	cp $77                                           ; $56c3: $fe $77
	dec a                                            ; $56c5: $3d
	rst $38                                          ; $56c6: $ff
	sbc $e2                                          ; $56c7: $de $e2
	sub l                                            ; $56c9: $95
	ld h, d                                          ; $56ca: $62
	and d                                            ; $56cb: $a2
	ldh [c], a                                       ; $56cc: $e2
	ld h, d                                          ; $56cd: $62
	ldh [c], a                                       ; $56ce: $e2
	rst $38                                          ; $56cf: $ff
	rst $38                                          ; $56d0: $ff
	cp a                                             ; $56d1: $bf
	cp a                                             ; $56d2: $bf
	ld a, a                                          ; $56d3: $7f
	ld l, a                                          ; $56d4: $6f
	ld c, d                                          ; $56d5: $4a
	rst SubAFromDE                                          ; $56d6: $df
	rst $38                                          ; $56d7: $ff
	sbc h                                            ; $56d8: $9c
	rst SubAFromDE                                          ; $56d9: $df
	rst GetHLinHL                                          ; $56da: $cf
	rst GetHLinHL                                          ; $56db: $cf
	reti                                             ; $56dc: $d9


	inc bc                                           ; $56dd: $03
	adc a                                            ; $56de: $8f
	xor b                                            ; $56df: $a8
	or b                                             ; $56e0: $b0
	and d                                            ; $56e1: $a2
	or c                                             ; $56e2: $b1
	cp h                                             ; $56e3: $bc
	xor b                                            ; $56e4: $a8
	sbc b                                            ; $56e5: $98
	ret                                              ; $56e6: $c9


	rst $38                                          ; $56e7: $ff
	rst AddAOntoHL                                          ; $56e8: $ef
	db $fd                                           ; $56e9: $fd
	xor $eb                                          ; $56ea: $ee $eb
	rst $38                                          ; $56ec: $ff
	rst $38                                          ; $56ed: $ff
	cp [hl]                                          ; $56ee: $be
	ld h, e                                          ; $56ef: $63
	nop                                              ; $56f0: $00
	sbc b                                            ; $56f1: $98
	push af                                          ; $56f2: $f5
	db $eb                                           ; $56f3: $eb
	ld e, a                                          ; $56f4: $5f
	cp a                                             ; $56f5: $bf
	ld [hl], a                                       ; $56f6: $77
	xor e                                            ; $56f7: $ab
	ld d, l                                          ; $56f8: $55
	ld sp, hl                                        ; $56f9: $f9
	sub a                                            ; $56fa: $97
	push af                                          ; $56fb: $f5
	ei                                               ; $56fc: $fb
	cp a                                             ; $56fd: $bf
	ld [hl], a                                       ; $56fe: $77
	rst AddAOntoHL                                          ; $56ff: $ef
	ld e, l                                          ; $5700: $5d
	xor a                                            ; $5701: $af
	rst SubAFromDE                                          ; $5702: $df
	ld sp, hl                                        ; $5703: $f9
	rst SubAFromDE                                          ; $5704: $df
	rst AddAOntoHL                                          ; $5705: $ef
	ld [hl], a                                       ; $5706: $77
	cp b                                             ; $5707: $b8
	sbc l                                            ; $5708: $9d
	cp [hl]                                          ; $5709: $be
	ld e, a                                          ; $570a: $5f
	ld sp, hl                                        ; $570b: $f9
	ld a, a                                          ; $570c: $7f
	call nz, Call_03a_6c7f                           ; $570d: $c4 $7f $6c
	sbc h                                            ; $5710: $9c
	rst $38                                          ; $5711: $ff
	ld e, a                                          ; $5712: $5f
	rst AddAOntoHL                                          ; $5713: $ef
	ld [hl], e                                       ; $5714: $73
	ldh [rPCM12], a                                  ; $5715: $e0 $76
	db $ed                                           ; $5717: $ed
	sub h                                            ; $5718: $94
	rst AddAOntoHL                                          ; $5719: $ef
	db $dd                                           ; $571a: $dd
	db $eb                                           ; $571b: $eb
	rst FarCall                                          ; $571c: $f7
	db $fc                                           ; $571d: $fc
	pop af                                           ; $571e: $f1
	rst JumpTable                                          ; $571f: $c7
	rra                                              ; $5720: $1f
	ld de, $3313                                     ; $5721: $11 $13 $33
	sbc $f3                                          ; $5724: $de $f3
	rst SubAFromDE                                          ; $5726: $df
	ldh a, [$97]                                     ; $5727: $f0 $97
	and [hl]                                         ; $5729: $a6
	db $e4                                           ; $572a: $e4
	rst JumpTable                                          ; $572b: $c7
	rlca                                             ; $572c: $07
	ld h, [hl]                                       ; $572d: $66
	db $e4                                           ; $572e: $e4
	db $e4                                           ; $572f: $e4
	add h                                            ; $5730: $84
	ld b, [hl]                                       ; $5731: $46
	ldh [rPCM34], a                                  ; $5732: $e0 $77
	db $f4                                           ; $5734: $f4
	cp $9e                                           ; $5735: $fe $9e
	ld [bc], a                                       ; $5737: $02
	di                                               ; $5738: $f3
	sbc l                                            ; $5739: $9d
	add hl, bc                                       ; $573a: $09
	ld de, $97f9                                     ; $573b: $11 $f9 $97
	rla                                              ; $573e: $17
	ld l, $04                                        ; $573f: $2e $04
	inc bc                                           ; $5741: $03
	dec b                                            ; $5742: $05
	add b                                            ; $5743: $80
	ld b, h                                          ; $5744: $44
	ld [hl+], a                                      ; $5745: $22
	ld sp, hl                                        ; $5746: $f9
	sub a                                            ; $5747: $97
	ld [hl], $ef                                     ; $5748: $36 $ef
	db $db                                           ; $574a: $db
	or [hl]                                          ; $574b: $b6
	ld l, l                                          ; $574c: $6d
	ld e, e                                          ; $574d: $5b
	daa                                              ; $574e: $27
	ld b, a                                          ; $574f: $47
	ld sp, hl                                        ; $5750: $f9
	rst SubAFromDE                                          ; $5751: $df
	sbc e                                            ; $5752: $9b
	sbc c                                            ; $5753: $99
	db $db                                           ; $5754: $db
	res 5, a                                         ; $5755: $cb $af
	cp h                                             ; $5757: $bc
	di                                               ; $5758: $f3
	call z, $047a                                    ; $5759: $cc $7a $04
	sbc d                                            ; $575c: $9a
	db $fd                                           ; $575d: $fd
	ld a, a                                          ; $575e: $7f
	ld a, a                                          ; $575f: $7f
	inc a                                            ; $5760: $3c
	inc sp                                           ; $5761: $33
	sbc $7f                                          ; $5762: $de $7f
	sbc b                                            ; $5764: $98
	rst GetHLinHL                                          ; $5765: $cf
	rrca                                             ; $5766: $0f
	rrca                                             ; $5767: $0f
	ccf                                              ; $5768: $3f
	ld a, a                                          ; $5769: $7f
	cp b                                             ; $576a: $b8
	ld hl, sp-$23                                    ; $576b: $f8 $dd
	db $fc                                           ; $576d: $fc
	rst SubAFromDE                                          ; $576e: $df
	ld hl, sp-$64                                    ; $576f: $f8 $9c
	rst GetHLinHL                                          ; $5771: $cf
	ret z                                            ; $5772: $c8

	adc $de                                          ; $5773: $ce $de
	rst GetHLinHL                                          ; $5775: $cf
	sbc d                                            ; $5776: $9a

Jump_03a_5777:
	ret nz                                           ; $5777: $c0

	rst GetHLinHL                                          ; $5778: $cf
	ld a, a                                          ; $5779: $7f
	ld [hl], a                                       ; $577a: $77
	ld [hl], c                                       ; $577b: $71
	sbc $70                                          ; $577c: $de $70
	rst SubAFromDE                                          ; $577e: $df
	ld a, a                                          ; $577f: $7f
	adc h                                            ; $5780: $8c
	db $fc                                           ; $5781: $fc
	ld a, [bc]                                       ; $5782: $0a
	ld a, [bc]                                       ; $5783: $0a
	sub h                                            ; $5784: $94
	push de                                          ; $5785: $d5
	xor e                                            ; $5786: $ab
	dec hl                                           ; $5787: $2b
	rst SubAFromHL                                          ; $5788: $d7
	db $fc                                           ; $5789: $fc
	ld sp, hl                                        ; $578a: $f9
	ld sp, hl                                        ; $578b: $f9
	ld [hl], e                                       ; $578c: $73
	inc sp                                           ; $578d: $33
	ld h, a                                          ; $578e: $67
	rst SubAFromBC                                          ; $578f: $e7
	rst GetHLinHL                                          ; $5790: $cf
	cp a                                             ; $5791: $bf
	ld a, a                                          ; $5792: $7f
	ld b, b                                          ; $5793: $40
	ld [hl], d                                       ; $5794: $72
	call $e57a                                       ; $5795: $cd $7a $e5
	sbc l                                            ; $5798: $9d
	ret nz                                           ; $5799: $c0

	add b                                            ; $579a: $80
	ld a, d                                          ; $579b: $7a
	ld b, d                                          ; $579c: $42
	ld [hl], a                                       ; $579d: $77
	db $f4                                           ; $579e: $f4
	ld l, a                                          ; $579f: $6f
	db $fc                                           ; $57a0: $fc
	ld [hl], l                                       ; $57a1: $75
	push hl                                          ; $57a2: $e5
	rst SubAFromDE                                          ; $57a3: $df
	rst $38                                          ; $57a4: $ff
	sbc $e2                                          ; $57a5: $de $e2
	call c, $d9e0                                    ; $57a7: $dc $e0 $d9
	rst $38                                          ; $57aa: $ff
	rst SubAFromDE                                          ; $57ab: $df
	rst GetHLinHL                                          ; $57ac: $cf
	call c, Call_03a_7a8f                            ; $57ad: $dc $8f $7a
	ret nz                                           ; $57b0: $c0

	db $db                                           ; $57b1: $db
	ld b, e                                          ; $57b2: $43
	sub e                                            ; $57b3: $93
	call z, $f0e4                                    ; $57b4: $cc $e4 $f0
	cp e                                             ; $57b7: $bb
	ld hl, sp-$01                                    ; $57b8: $f8 $ff
	rst AddAOntoHL                                          ; $57ba: $ef
	rst AddAOntoHL                                          ; $57bb: $ef
	rst FarCall                                          ; $57bc: $f7
	db $db                                           ; $57bd: $db
	rst AddAOntoHL                                          ; $57be: $ef
	db $f4                                           ; $57bf: $f4
	db $dd                                           ; $57c0: $dd
	cp a                                             ; $57c1: $bf
	ld h, d                                          ; $57c2: $62
	ldh a, [$98]                                     ; $57c3: $f0 $98
	rst SubAFromHL                                          ; $57c5: $d7
	cp a                                             ; $57c6: $bf
	ld a, l                                          ; $57c7: $7d
	cp e                                             ; $57c8: $bb
	halt                                             ; $57c9: $76
	rst $38                                          ; $57ca: $ff
	db $dd                                           ; $57cb: $dd
	ld sp, hl                                        ; $57cc: $f9
	sbc e                                            ; $57cd: $9b
	ld a, [$fef5]                                    ; $57ce: $fa $f5 $fe
	rst GetHLinHL                                          ; $57d1: $cf
	sbc $ff                                          ; $57d2: $de $ff
	sbc [hl]                                         ; $57d4: $9e
	rst FarCall                                          ; $57d5: $f7
	ld sp, hl                                        ; $57d6: $f9
	sub [hl]                                         ; $57d7: $96
	cp [hl]                                          ; $57d8: $be
	ld [hl], l                                       ; $57d9: $75
	rst AddAOntoHL                                          ; $57da: $ef
	rst FarCall                                          ; $57db: $f7
	adc $fd                                          ; $57dc: $ce $fd
	sbc $dd                                          ; $57de: $de $dd
	inc bc                                           ; $57e0: $03
	sbc $07                                          ; $57e1: $de $07
	sub e                                            ; $57e3: $93
	add e                                            ; $57e4: $83
	ld d, c                                          ; $57e5: $51
	ld d, c                                          ; $57e6: $51
	ld [hl], b                                       ; $57e7: $70
	db $fc                                           ; $57e8: $fc
	ld sp, hl                                        ; $57e9: $f9
	ei                                               ; $57ea: $fb
	db $fd                                           ; $57eb: $fd
	cp $ff                                           ; $57ec: $fe $ff
	ei                                               ; $57ee: $fb
	push af                                          ; $57ef: $f5
	halt                                             ; $57f0: $76
	ldh [$9a], a                                     ; $57f1: $e0 $9a
	db $e3                                           ; $57f3: $e3
	rst SubAFromBC                                          ; $57f4: $e7
	db $ec                                           ; $57f5: $ec
	pop hl                                           ; $57f6: $e1
	ld a, [hl]                                       ; $57f7: $7e
	ld a, d                                          ; $57f8: $7a
	ldh [hDisp1_OBP0], a                                     ; $57f9: $e0 $93
	add b                                            ; $57fb: $80
	ld b, b                                          ; $57fc: $40
	ret nz                                           ; $57fd: $c0

	ret nz                                           ; $57fe: $c0

	ret nc                                           ; $57ff: $d0

	inc de                                           ; $5800: $13
	ld [hl-], a                                      ; $5801: $32
	ld d, b                                          ; $5802: $50
	sub d                                            ; $5803: $92
	ld d, b                                          ; $5804: $50
	ldh a, [$71]                                     ; $5805: $f0 $71
	reti                                             ; $5807: $d9


	inc b                                            ; $5808: $04
	cp $9a                                           ; $5809: $fe $9a
	add b                                            ; $580b: $80
	ld [$0b00], sp                                   ; $580c: $08 $00 $0b
	dec bc                                           ; $580f: $0b
	ld a, [$0199]                                    ; $5810: $fa $99 $01
	nop                                              ; $5813: $00
	ld bc, $0010                                     ; $5814: $01 $10 $00
	ld d, h                                          ; $5817: $54
	ld a, e                                          ; $5818: $7b
	ld e, b                                          ; $5819: $58
	ld h, [hl]                                       ; $581a: $66
	ld c, c                                          ; $581b: $49
	sbc d                                            ; $581c: $9a
	sub h                                            ; $581d: $94
	ld c, d                                          ; $581e: $4a
	ld l, $73                                        ; $581f: $2e $73
	dec bc                                           ; $5821: $0b
	ld e, e                                          ; $5822: $5b
	ldh a, [$9a]                                     ; $5823: $f0 $9a
	ld [$3211], sp                                   ; $5825: $08 $11 $32
	dec h                                            ; $5828: $25
	adc d                                            ; $5829: $8a
	ld e, e                                          ; $582a: $5b
	ldh a, [$9a]                                     ; $582b: $f0 $9a
	dec bc                                           ; $582d: $0b
	ld d, [hl]                                       ; $582e: $56
	dec hl                                           ; $582f: $2b
	ld e, a                                          ; $5830: $5f
	cp a                                             ; $5831: $bf
	ld e, e                                          ; $5832: $5b
	ldh a, [$8e]                                     ; $5833: $f0 $8e
	pop af                                           ; $5835: $f1
	rst SubAFromBC                                          ; $5836: $e7
	rst SubAFromDE                                          ; $5837: $df
	ld a, l                                          ; $5838: $7d
	push af                                          ; $5839: $f5
	push bc                                          ; $583a: $c5
	push de                                          ; $583b: $d5
	push de                                          ; $583c: $d5
	rrca                                             ; $583d: $0f
	rra                                              ; $583e: $1f
	ccf                                              ; $583f: $3f
	rst $38                                          ; $5840: $ff
	cp [hl]                                          ; $5841: $be
	ld a, $2e                                        ; $5842: $3e $2e
	ld l, $ff                                        ; $5844: $2e $ff
	jp c, $d9df                                      ; $5846: $da $df $d9

	ld hl, sp-$21                                    ; $5849: $f8 $df
	call z, $cfdb                                    ; $584b: $cc $db $cf
	reti                                             ; $584e: $d9


	ld a, a                                          ; $584f: $7f
	sbc l                                            ; $5850: $9d
	ld l, a                                          ; $5851: $6f
	ld a, [hl]                                       ; $5852: $7e
	ld a, b                                          ; $5853: $78
	sub a                                            ; $5854: $97
	halt                                             ; $5855: $76
	dec b                                            ; $5856: $05
	ld a, b                                          ; $5857: $78
	db $d3                                           ; $5858: $d3
	halt                                             ; $5859: $76
	and b                                            ; $585a: $a0
	inc e                                            ; $585b: $1c
	sub l                                            ; $585c: $95
	ld l, a                                          ; $585d: $6f
	ldh a, [rAUD1LEN]                                ; $585e: $f0 $11
	nop                                              ; $5860: $00
	sbc l                                            ; $5861: $9d
	inc sp                                           ; $5862: $33
	ld b, l                                          ; $5863: $45
	call c, $9c55                                    ; $5864: $dc $55 $9c
	ld b, h                                          ; $5867: $44
	dec [hl]                                         ; $5868: $35
	inc sp                                           ; $5869: $33
	ld h, a                                          ; $586a: $67
	or $de                                           ; $586b: $f6 $de
	inc sp                                           ; $586d: $33
	ld h, e                                          ; $586e: $63
	or $3e                                           ; $586f: $f6 $3e
	add l                                            ; $5871: $85
	reti                                             ; $5872: $d9


	ldh [$d9], a                                     ; $5873: $e0 $d9
	rst $38                                          ; $5875: $ff
	rst SubAFromDE                                          ; $5876: $df
	rst GetHLinHL                                          ; $5877: $cf
	sbc l                                            ; $5878: $9d
	rst AddAOntoHL                                          ; $5879: $ef
	rst SubAFromDE                                          ; $587a: $df
	db $dd                                           ; $587b: $dd
	rst $38                                          ; $587c: $ff
	sbc e                                            ; $587d: $9b
	ld b, e                                          ; $587e: $43
	ld d, e                                          ; $587f: $53
	ld [hl], e                                       ; $5880: $73
	ld h, e                                          ; $5881: $63
	db $dd                                           ; $5882: $dd
	inc bc                                           ; $5883: $03
	db $dd                                           ; $5884: $dd
	ld a, [$f8de]                                    ; $5885: $fa $de $f8
	sbc [hl]                                         ; $5888: $9e
	ld a, [$afda]                                    ; $5889: $fa $da $af
	sbc [hl]                                         ; $588c: $9e
	xor l                                            ; $588d: $ad
	ld sp, hl                                        ; $588e: $f9
	sbc h                                            ; $588f: $9c
	rst $38                                          ; $5890: $ff
	ei                                               ; $5891: $fb
	ei                                               ; $5892: $fb
	db $dd                                           ; $5893: $dd
	rst $38                                          ; $5894: $ff
	sbc [hl]                                         ; $5895: $9e
	cp $fb                                           ; $5896: $fe $fb
	add b                                            ; $5898: $80
	ld [bc], a                                       ; $5899: $02
	ld bc, $fffe                                     ; $589a: $01 $fe $ff
	rst $38                                          ; $589d: $ff
	push af                                          ; $589e: $f5
	ei                                               ; $589f: $fb
	rst AddAOntoHL                                          ; $58a0: $ef
	xor $2f                                          ; $58a1: $ee $2f
	nop                                              ; $58a3: $00
	inc e                                            ; $58a4: $1c
	inc b                                            ; $58a5: $04
	ld b, $03                                        ; $58a6: $06 $03
	ld bc, $2131                                     ; $58a8: $01 $31 $21
	rst $38                                          ; $58ab: $ff
	rst SubAFromDE                                          ; $58ac: $df
	xor a                                            ; $58ad: $af
	rst $38                                          ; $58ae: $ff
	cp a                                             ; $58af: $bf
	rst SubAFromDE                                          ; $58b0: $df
	rst $38                                          ; $58b1: $ff
	push af                                          ; $58b2: $f5
	ld h, b                                          ; $58b3: $60
	ldh [$ee], a                                     ; $58b4: $e0 $ee
	reti                                             ; $58b6: $d9


	ldh a, [$8c]                                     ; $58b7: $f0 $8c
	ret nz                                           ; $58b9: $c0

	adc $d8                                          ; $58ba: $ce $d8
	rst $38                                          ; $58bc: $ff
	rst FarCall                                          ; $58bd: $f7
	rst $38                                          ; $58be: $ff
	db $fd                                           ; $58bf: $fd
	rst $38                                          ; $58c0: $ff
	rst SubAFromHL                                          ; $58c1: $d7
	rst $38                                          ; $58c2: $ff
	db $fd                                           ; $58c3: $fd
	ld h, [hl]                                       ; $58c4: $66
	ld h, d                                          ; $58c5: $62
	ld l, a                                          ; $58c6: $6f
	ld h, h                                          ; $58c7: $64
	ld l, l                                          ; $58c8: $6d
	ld l, d                                          ; $58c9: $6a
	ld h, [hl]                                       ; $58ca: $66
	ld l, a                                          ; $58cb: $6f
	reti                                             ; $58cc: $d9


	ret nz                                           ; $58cd: $c0

	sub a                                            ; $58ce: $97
	jp nc, $50b0                                     ; $58cf: $d2 $b0 $50

	ld de, $7212                                     ; $58d2: $11 $12 $72
	di                                               ; $58d5: $f3
	or e                                             ; $58d6: $b3
	reti                                             ; $58d7: $d9


	inc b                                            ; $58d8: $04
	sub a                                            ; $58d9: $97
	dec de                                           ; $58da: $1b
	dec sp                                           ; $58db: $3b
	ld e, e                                          ; $58dc: $5b
	or e                                             ; $58dd: $b3
	ld e, e                                          ; $58de: $5b
	cp e                                             ; $58df: $bb
	db $db                                           ; $58e0: $db
	ei                                               ; $58e1: $fb
	reti                                             ; $58e2: $d9


	ld bc, $ff96                                     ; $58e3: $01 $96 $ff
	rla                                              ; $58e6: $17
	ld de, $b133                                     ; $58e7: $11 $33 $b1
	add c                                            ; $58ea: $81
	or c                                             ; $58eb: $b1
	ldh [rIE], a                                     ; $58ec: $e0 $ff
	sbc $ee                                          ; $58ee: $de $ee
	sub d                                            ; $58f0: $92
	ld c, [hl]                                       ; $58f1: $4e
	ld a, [hl]                                       ; $58f2: $7e
	ld c, [hl]                                       ; $58f3: $4e
	ld c, $ff                                        ; $58f4: $0e $ff
	ld l, e                                          ; $58f6: $6b
	inc hl                                           ; $58f7: $23
	ld l, e                                          ; $58f8: $6b
	inc hl                                           ; $58f9: $23
	ld hl, $5101                                     ; $58fa: $21 $01 $51
	rst $38                                          ; $58fd: $ff
	db $db                                           ; $58fe: $db
	call c, $8c85                                    ; $58ff: $dc $85 $8c
	rst $38                                          ; $5902: $ff
	ld h, l                                          ; $5903: $65
	ld h, c                                          ; $5904: $61
	ld h, l                                          ; $5905: $65
	ld h, b                                          ; $5906: $60
	ld h, c                                          ; $5907: $61
	ld l, c                                          ; $5908: $69
	ld l, c                                          ; $5909: $69
	ld b, b                                          ; $590a: $40
	jp c, $dade                                      ; $590b: $da $de $da

	rst SubAFromDE                                          ; $590e: $df
	sbc $d6                                          ; $590f: $de $d6
	sub $ff                                          ; $5911: $d6 $ff
	ld c, h                                          ; $5913: $4c
	ld c, b                                          ; $5914: $48
	ld c, b                                          ; $5915: $48
	nop                                              ; $5916: $00
	ld hl, $2021                                     ; $5917: $21 $21 $20
	rst $38                                          ; $591a: $ff
	db $dd                                           ; $591b: $dd
	or a                                             ; $591c: $b7
	sbc $96                                          ; $591d: $de $96
	sbc [hl]                                         ; $591f: $9e
	push de                                          ; $5920: $d5
	sbc $95                                          ; $5921: $de $95
	sbc d                                            ; $5923: $9a
	sub h                                            ; $5924: $94
	and h                                            ; $5925: $a4
	and l                                            ; $5926: $a5
	and l                                            ; $5927: $a5
	ld l, $de                                        ; $5928: $2e $de
	ld l, [hl]                                       ; $592a: $6e
	sbc e                                            ; $592b: $9b
	ld l, a                                          ; $592c: $6f
	ld e, a                                          ; $592d: $5f
	ld e, [hl]                                       ; $592e: $5e
	ld e, [hl]                                       ; $592f: $5e
	call c, $dedf                                    ; $5930: $dc $df $de
	rst $38                                          ; $5933: $ff
	reti                                             ; $5934: $d9


	ld hl, sp-$27                                    ; $5935: $f8 $d9
	rst GetHLinHL                                          ; $5937: $cf
	reti                                             ; $5938: $d9


	ld a, a                                          ; $5939: $7f
	reti                                             ; $593a: $d9


	rst $38                                          ; $593b: $ff
	rst SubAFromDE                                          ; $593c: $df
	ldh a, [$df]                                     ; $593d: $f0 $df
	ldh [$df], a                                     ; $593f: $e0 $df
	ret nz                                           ; $5941: $c0

	rst SubAFromDE                                          ; $5942: $df
	add b                                            ; $5943: $80
	reti                                             ; $5944: $d9


	rst $38                                          ; $5945: $ff
	ld h, e                                          ; $5946: $63
	ld [$2a7f], sp                                   ; $5947: $08 $7f $2a
	sub c                                            ; $594a: $91
	ld h, b                                          ; $594b: $60
	ld a, a                                          ; $594c: $7f
	ld a, a                                          ; $594d: $7f
	ld a, b                                          ; $594e: $78
	ld l, a                                          ; $594f: $6f
	nop                                              ; $5950: $00
	nop                                              ; $5951: $00
	ld a, a                                          ; $5952: $7f
	rst $38                                          ; $5953: $ff
	ldh [$e0], a                                     ; $5954: $e0 $e0
	rst SubAFromBC                                          ; $5956: $e7
	ldh a, [$e0]                                     ; $5957: $f0 $e0
	db $fd                                           ; $5959: $fd
	sbc $e0                                          ; $595a: $de $e0
	sbc [hl]                                         ; $595c: $9e
	rra                                              ; $595d: $1f
	jp c, $dcff                                      ; $595e: $da $ff $dc

	db $fd                                           ; $5961: $fd
	sbc h                                            ; $5962: $9c
	sbc l                                            ; $5963: $9d
	adc l                                            ; $5964: $8d
	adc l                                            ; $5965: $8d
	call c, $de03                                    ; $5966: $dc $03 $de
	ld b, e                                          ; $5969: $43
	sbc $e8                                          ; $596a: $de $e8
	sbc $fa                                          ; $596c: $de $fa
	sbc l                                            ; $596e: $9d
	ei                                               ; $596f: $fb
	db $eb                                           ; $5970: $eb
	sbc $bf                                          ; $5971: $de $bf
	sbc $af                                          ; $5973: $de $af
	add b                                            ; $5975: $80
	xor [hl]                                         ; $5976: $ae
	cp h                                             ; $5977: $bc
	inc b                                            ; $5978: $04
	ld b, $04                                        ; $5979: $06 $04
	inc b                                            ; $597b: $04
	ld b, $05                                        ; $597c: $06 $05
	rlca                                             ; $597e: $07
	ld b, $f8                                        ; $597f: $06 $f8
	cp $fc                                           ; $5981: $fe $fc
	db $fc                                           ; $5983: $fc
	cp $f9                                           ; $5984: $fe $f9
	rst $38                                          ; $5986: $ff
	cp $c0                                           ; $5987: $fe $c0
	ld h, b                                          ; $5989: $60
	jr nz, jr_03a_59ac                               ; $598a: $20 $20

	ldh [$d0], a                                     ; $598c: $e0 $d0
	ldh [rAUD4LEN], a                                ; $598e: $e0 $20
	rst SubAFromDE                                          ; $5990: $df
	ld l, a                                          ; $5991: $6f
	cpl                                              ; $5992: $2f
	cpl                                              ; $5993: $2f
	ld l, a                                          ; $5994: $6f
	ld a, [hl]                                       ; $5995: $7e
	add h                                            ; $5996: $84
	add h                                            ; $5997: $84
	xor a                                            ; $5998: $af
	ldh [rSVBK], a                                   ; $5999: $e0 $70
	jr jr_03a_59b9                                   ; $599b: $18 $1c

	inc c                                            ; $599d: $0c
	ld b, $67                                        ; $599e: $06 $67
	inc hl                                           ; $59a0: $23
	rst $38                                          ; $59a1: $ff
	ld a, a                                          ; $59a2: $7f
	cp $ff                                           ; $59a3: $fe $ff
	cp a                                             ; $59a5: $bf
	rst $38                                          ; $59a6: $ff
	rst $38                                          ; $59a7: $ff
	ld [hl], a                                       ; $59a8: $77
	ldh a, [$f1]                                     ; $59a9: $f0 $f1
	db $e3                                           ; $59ab: $e3

jr_03a_59ac:
	ld a, [$e765]                                    ; $59ac: $fa $65 $e7
	and $bc                                          ; $59af: $e6 $bc
	ei                                               ; $59b1: $fb
	rst $38                                          ; $59b2: $ff
	halt                                             ; $59b3: $76
	sub b                                            ; $59b4: $90
	ld a, a                                          ; $59b5: $7f
	db $ec                                           ; $59b6: $ec
	sub a                                            ; $59b7: $97
	db $ed                                           ; $59b8: $ed

jr_03a_59b9:
	ld l, e                                          ; $59b9: $6b
	ld l, a                                          ; $59ba: $6f
	ld l, e                                          ; $59bb: $6b
	ld l, h                                          ; $59bc: $6c
	rst AddAOntoHL                                          ; $59bd: $ef
	ld l, a                                          ; $59be: $6f
	ld l, l                                          ; $59bf: $6d
	reti                                             ; $59c0: $d9


	ret nz                                           ; $59c1: $c0

	sbc [hl]                                         ; $59c2: $9e
	di                                               ; $59c3: $f3
	sbc $53                                          ; $59c4: $de $53
	sbc l                                            ; $59c6: $9d
	di                                               ; $59c7: $f3
	ld [hl], e                                       ; $59c8: $73
	ld e, [hl]                                       ; $59c9: $5e
	ret nz                                           ; $59ca: $c0

	sbc b                                            ; $59cb: $98
	ld l, e                                          ; $59cc: $6b
	cp e                                             ; $59cd: $bb
	ei                                               ; $59ce: $fb
	ei                                               ; $59cf: $fb
	ld d, e                                          ; $59d0: $53
	ld a, e                                          ; $59d1: $7b
	cp e                                             ; $59d2: $bb
	ld h, d                                          ; $59d3: $62
	ret nz                                           ; $59d4: $c0

	sbc l                                            ; $59d5: $9d
	xor b                                            ; $59d6: $a8
	add sp, -$25                                     ; $59d7: $e8 $db
	xor b                                            ; $59d9: $a8
	reti                                             ; $59da: $d9


	ld b, $9c                                        ; $59db: $06 $9c
	pop de                                           ; $59dd: $d1
	push de                                          ; $59de: $d5
	push de                                          ; $59df: $d5
	sbc $d4                                          ; $59e0: $de $d4
	rst SubAFromDE                                          ; $59e2: $df
	call c, $0c9c                                    ; $59e3: $dc $9c $0c
	ld [$dc08], sp                                   ; $59e6: $08 $08 $dc
	add hl, bc                                       ; $59e9: $09
	sbc l                                            ; $59ea: $9d
	ld l, c                                          ; $59eb: $69
	ld l, b                                          ; $59ec: $68
	sbc $78                                          ; $59ed: $de $78
	rst SubAFromDE                                          ; $59ef: $df
	ld l, b                                          ; $59f0: $68
	sbc h                                            ; $59f1: $9c
	ld l, c                                          ; $59f2: $69
	sub $d7                                          ; $59f3: $d6 $d7
	sbc $c7                                          ; $59f5: $de $c7
	rst SubAFromDE                                          ; $59f7: $df
	rst SubAFromHL                                          ; $59f8: $d7
	sbc [hl]                                         ; $59f9: $9e
	sub $de                                          ; $59fa: $d6 $de
	ld [hl+], a                                      ; $59fc: $22
	rst SubAFromDE                                          ; $59fd: $df
	ld [hl-], a                                      ; $59fe: $32
	sbc h                                            ; $59ff: $9c
	ld [hl], $34                                     ; $5a00: $36 $34
	dec [hl]                                         ; $5a02: $35
	sbc $94                                          ; $5a03: $de $94
	rst SubAFromDE                                          ; $5a05: $df
	add h                                            ; $5a06: $84
	sub d                                            ; $5a07: $92
	add b                                            ; $5a08: $80
	add d                                            ; $5a09: $82
	add d                                            ; $5a0a: $82
	and l                                            ; $5a0b: $a5
	and l                                            ; $5a0c: $a5
	and [hl]                                         ; $5a0d: $a6
	xor d                                            ; $5a0e: $aa
	xor d                                            ; $5a0f: $aa
	adc d                                            ; $5a10: $8a
	adc d                                            ; $5a11: $8a
	adc h                                            ; $5a12: $8c
	ld e, [hl]                                       ; $5a13: $5e
	ld e, [hl]                                       ; $5a14: $5e
	sbc $5d                                          ; $5a15: $de $5d
	rst SubAFromDE                                          ; $5a17: $df
	ld a, l                                          ; $5a18: $7d
	sbc [hl]                                         ; $5a19: $9e
	ld a, e                                          ; $5a1a: $7b
	reti                                             ; $5a1b: $d9


	rst SubAFromDE                                          ; $5a1c: $df
	ld e, [hl]                                       ; $5a1d: $5e
	ret nz                                           ; $5a1e: $c0

	sbc c                                            ; $5a1f: $99
	adc $cf                                          ; $5a20: $ce $cf
	ret z                                            ; $5a22: $c8

	set 0, a                                         ; $5a23: $cb $c7
	rst JumpTable                                          ; $5a25: $c7
	call c, $9c7f                                    ; $5a26: $dc $7f $9c
	ld a, h                                          ; $5a29: $7c
	ld a, b                                          ; $5a2a: $78
	ld a, b                                          ; $5a2b: $78
	ld a, d                                          ; $5a2c: $7a
	sub $9a                                          ; $5a2d: $d6 $9a
	rst $38                                          ; $5a2f: $ff
	dec de                                           ; $5a30: $1b
	db $db                                           ; $5a31: $db
	db $db                                           ; $5a32: $db
	ret c                                            ; $5a33: $d8

	halt                                             ; $5a34: $76
	sub $9b                                          ; $5a35: $d6 $9b
	db $fc                                           ; $5a37: $fc
	inc a                                            ; $5a38: $3c
	inc a                                            ; $5a39: $3c
	ld a, $7b                                        ; $5a3a: $3e $7b
	ldh a, [$de]                                     ; $5a3c: $f0 $de
	cp $9d                                           ; $5a3e: $fe $9d
	rlca                                             ; $5a40: $07
	rst FarCall                                          ; $5a41: $f7
	ld [hl], a                                       ; $5a42: $77
	ldh a, [$df]                                     ; $5a43: $f0 $df
	inc bc                                           ; $5a45: $03
	sbc b                                            ; $5a46: $98
	ei                                               ; $5a47: $fb
	add hl, bc                                       ; $5a48: $09
	ld a, a                                          ; $5a49: $7f
	ld [hl], d                                       ; $5a4a: $72
	ld a, a                                          ; $5a4b: $7f
	ld a, d                                          ; $5a4c: $7a
	ld a, d                                          ; $5a4d: $7a
	ld a, e                                          ; $5a4e: $7b
	db $fd                                           ; $5a4f: $fd
	sbc l                                            ; $5a50: $9d
	ldh [$ed], a                                     ; $5a51: $e0 $ed
	db $d3                                           ; $5a53: $d3
	ldh [$d9], a                                     ; $5a54: $e0 $d9
	rst $38                                          ; $5a56: $ff
	db $db                                           ; $5a57: $db
	adc l                                            ; $5a58: $8d
	sbc l                                            ; $5a59: $9d
	call $d99d                                       ; $5a5a: $cd $9d $d9
	ld b, e                                          ; $5a5d: $43
	rst SubAFromDE                                          ; $5a5e: $df
	ld [$aadc], a                                    ; $5a5f: $ea $dc $aa
	sbc e                                            ; $5a62: $9b
	add sp, -$43                                     ; $5a63: $e8 $bd
	cp l                                             ; $5a65: $bd
	db $fd                                           ; $5a66: $fd
	sbc $dd                                          ; $5a67: $de $dd
	sbc e                                            ; $5a69: $9b
	db $fd                                           ; $5a6a: $fd
	cp a                                             ; $5a6b: $bf
	rlca                                             ; $5a6c: $07
	ld b, $73                                        ; $5a6d: $06 $73
	cp $9e                                           ; $5a6f: $fe $9e
	rlca                                             ; $5a71: $07
	ld a, d                                          ; $5a72: $7a
	push af                                          ; $5a73: $f5
	ld a, e                                          ; $5a74: $7b
	cp $7f                                           ; $5a75: $fe $7f
	or $9d                                           ; $5a77: $f6 $9d
	ldh [$a0], a                                     ; $5a79: $e0 $a0
	ld [hl], a                                       ; $5a7b: $77
	cp $9b                                           ; $5a7c: $fe $9b
	db $ec                                           ; $5a7e: $ec
	ld l, [hl]                                       ; $5a7f: $6e
	rst AddAOntoHL                                          ; $5a80: $ef
	cpl                                              ; $5a81: $2f
	ld a, e                                          ; $5a82: $7b
	cp $96                                           ; $5a83: $fe $96
	xor a                                            ; $5a85: $af
	db $ec                                           ; $5a86: $ec
	ld l, $23                                        ; $5a87: $2e $23
	ld sp, $7cc8                                     ; $5a89: $31 $c8 $7c
	ld c, $06                                        ; $5a8c: $0e $06
	ld [hl], a                                       ; $5a8e: $77
	sub d                                            ; $5a8f: $92
	ld a, d                                          ; $5a90: $7a
	ld d, [hl]                                       ; $5a91: $56
	ld a, d                                          ; $5a92: $7a
	ld c, d                                          ; $5a93: $4a
	sub [hl]                                         ; $5a94: $96
	ld hl, sp-$48                                    ; $5a95: $f8 $b8
	ei                                               ; $5a97: $fb
	cp $fc                                           ; $5a98: $fe $fc
	ld hl, sp+$00                                    ; $5a9a: $f8 $00
	nop                                              ; $5a9c: $00
	ld a, [$5075]                                    ; $5a9d: $fa $75 $50
	ld a, c                                          ; $5aa0: $79
	ld d, d                                          ; $5aa1: $52
	sbc l                                            ; $5aa2: $9d
	ld l, [hl]                                       ; $5aa3: $6e
	db $eb                                           ; $5aa4: $eb
	ld a, d                                          ; $5aa5: $7a
	jp Jump_03a_427a                                 ; $5aa6: $c3 $7a $42


	db $db                                           ; $5aa9: $db
	ret nz                                           ; $5aaa: $c0

	rst $38                                          ; $5aab: $ff
	sub a                                            ; $5aac: $97
	ld [hl], e                                       ; $5aad: $73
	ldh a, [c]                                       ; $5aae: $f2
	or e                                             ; $5aaf: $b3
	ldh a, [c]                                       ; $5ab0: $f2
	di                                               ; $5ab1: $f3
	di                                               ; $5ab2: $f3
	nop                                              ; $5ab3: $00
	nop                                              ; $5ab4: $00
	reti                                             ; $5ab5: $d9


	inc b                                            ; $5ab6: $04
	sub a                                            ; $5ab7: $97
	ld [hl], e                                       ; $5ab8: $73
	ei                                               ; $5ab9: $fb
	db $d3                                           ; $5aba: $d3
	cp e                                             ; $5abb: $bb
	db $d3                                           ; $5abc: $d3
	ei                                               ; $5abd: $fb
	nop                                              ; $5abe: $00
	nop                                              ; $5abf: $00
	db $db                                           ; $5ac0: $db
	ld bc, $dfff                                     ; $5ac1: $01 $ff $df
	jr z, @-$68                                      ; $5ac4: $28 $96

	ld [hl], c                                       ; $5ac6: $71
	ld d, a                                          ; $5ac7: $57
	ld e, e                                          ; $5ac8: $5b
	ld e, a                                          ; $5ac9: $5f
	rst $38                                          ; $5aca: $ff
	rst $38                                          ; $5acb: $ff
	add [hl]                                         ; $5acc: $86
	add [hl]                                         ; $5acd: $86
	adc [hl]                                         ; $5ace: $8e
	sbc $ae                                          ; $5acf: $de $ae
	rst SubAFromDE                                          ; $5ad1: $df
	rst $38                                          ; $5ad2: $ff
	rst SubAFromDE                                          ; $5ad3: $df
	ret c                                            ; $5ad4: $d8

	sbc c                                            ; $5ad5: $99
	ldh a, [c]                                       ; $5ad6: $f2
	ld a, d                                          ; $5ad7: $7a
	ld [hl+], a                                      ; $5ad8: $22
	ld [hl+], a                                      ; $5ad9: $22
	rst $38                                          ; $5ada: $ff
	rst $38                                          ; $5adb: $ff
	sbc $0d                                          ; $5adc: $de $0d
	sbc c                                            ; $5ade: $99
	adc l                                            ; $5adf: $8d
	db $dd                                           ; $5ae0: $dd
	db $dd                                           ; $5ae1: $dd
	rst $38                                          ; $5ae2: $ff
	rst $38                                          ; $5ae3: $ff
	ld l, c                                          ; $5ae4: $69
	sbc $6d                                          ; $5ae5: $de $6d
	sbc d                                            ; $5ae7: $9a
	ld l, c                                          ; $5ae8: $69
	db $e3                                           ; $5ae9: $e3
	rst $38                                          ; $5aea: $ff
	rst $38                                          ; $5aeb: $ff
	sub $de                                          ; $5aec: $d6 $de
	jp nc, $d689                                     ; $5aee: $d2 $89 $d6

	ld e, h                                          ; $5af1: $5c
	rst $38                                          ; $5af2: $ff
	rst $38                                          ; $5af3: $ff
	inc [hl]                                         ; $5af4: $34
	inc [hl]                                         ; $5af5: $34
	or c                                             ; $5af6: $b1
	db $ed                                           ; $5af7: $ed
	ld c, l                                          ; $5af8: $4d
	ld c, l                                          ; $5af9: $4d
	rst $38                                          ; $5afa: $ff
	rst $38                                          ; $5afb: $ff
	add d                                            ; $5afc: $82
	add d                                            ; $5afd: $82
	ld b, $16                                        ; $5afe: $06 $16
	or [hl]                                          ; $5b00: $b6
	cp [hl]                                          ; $5b01: $be
	rst $38                                          ; $5b02: $ff
	rst $38                                          ; $5b03: $ff
	adc h                                            ; $5b04: $8c
	adc h                                            ; $5b05: $8c
	db $dd                                           ; $5b06: $dd
	call z, $c89d                                    ; $5b07: $cc $9d $c8
	ld c, b                                          ; $5b0a: $48
	db $db                                           ; $5b0b: $db
	ld a, e                                          ; $5b0c: $7b
	ld a, l                                          ; $5b0d: $7d
	call z, $c046                                    ; $5b0e: $cc $46 $c0
	db $db                                           ; $5b11: $db
	rst JumpTable                                          ; $5b12: $c7
	sbc l                                            ; $5b13: $9d
	rst GetHLinHL                                          ; $5b14: $cf
	ret                                              ; $5b15: $c9


	db $db                                           ; $5b16: $db
	ld a, b                                          ; $5b17: $78
	sbc d                                            ; $5b18: $9a
	ld [hl], b                                       ; $5b19: $70
	halt                                             ; $5b1a: $76
	ret c                                            ; $5b1b: $d8

	call c, $dedc                                    ; $5b1c: $dc $dc $de
	db $dd                                           ; $5b1f: $dd
	rst SubAFromDE                                          ; $5b20: $df
	reti                                             ; $5b21: $d9


	call c, $de3e                                    ; $5b22: $dc $3e $de
	ccf                                              ; $5b25: $3f
	adc c                                            ; $5b26: $89
	rlca                                             ; $5b27: $07
	inc bc                                           ; $5b28: $03
	rlca                                             ; $5b29: $07
	add a                                            ; $5b2a: $87
	inc bc                                           ; $5b2b: $03
	sub e                                            ; $5b2c: $93
	di                                               ; $5b2d: $f3
	and e                                            ; $5b2e: $a3
	add hl, bc                                       ; $5b2f: $09
	dec b                                            ; $5b30: $05
	dec b                                            ; $5b31: $05
	inc b                                            ; $5b32: $04
	inc b                                            ; $5b33: $04
	ld h, $02                                        ; $5b34: $26 $02
	ld [bc], a                                       ; $5b36: $02
	rst $38                                          ; $5b37: $ff
	ld hl, sp-$07                                    ; $5b38: $f8 $f9
	cp $ff                                           ; $5b3a: $fe $ff
	db $f4                                           ; $5b3c: $f4
	call c, $98e0                                    ; $5b3d: $dc $e0 $98
	pop hl                                           ; $5b40: $e1
	ldh [$e0], a                                     ; $5b41: $e0 $e0
	ld h, c                                          ; $5b43: $61
	ld a, a                                          ; $5b44: $7f
	ldh [$e0], a                                     ; $5b45: $e0 $e0
	db $db                                           ; $5b47: $db
	ld h, b                                          ; $5b48: $60
	reti                                             ; $5b49: $d9


	rst $38                                          ; $5b4a: $ff
	adc [hl]                                         ; $5b4b: $8e
	ld c, l                                          ; $5b4c: $4d
	cp l                                             ; $5b4d: $bd
	db $fd                                           ; $5b4e: $fd
	db $fd                                           ; $5b4f: $fd
	ld sp, hl                                        ; $5b50: $f9
	di                                               ; $5b51: $f3
	rst SubAFromBC                                          ; $5b52: $e7
	adc a                                            ; $5b53: $8f
	di                                               ; $5b54: $f3
	ld b, e                                          ; $5b55: $43
	inc bc                                           ; $5b56: $03
	inc bc                                           ; $5b57: $03
	rlca                                             ; $5b58: $07
	rrca                                             ; $5b59: $0f
	rra                                              ; $5b5a: $1f
	ld a, a                                          ; $5b5b: $7f
	add sp, -$23                                     ; $5b5c: $e8 $dd
	ld [$bbdf], a                                    ; $5b5e: $ea $df $bb
	sbc [hl]                                         ; $5b61: $9e
	cp $dc                                           ; $5b62: $fe $dc
	cp a                                             ; $5b64: $bf
	sbc $ff                                          ; $5b65: $de $ff
	sbc [hl]                                         ; $5b67: $9e
	rlca                                             ; $5b68: $07
	halt                                             ; $5b69: $76
	jp z, $ff9d                                      ; $5b6a: $ca $9d $ff

	rrca                                             ; $5b6d: $0f
	ld a, e                                          ; $5b6e: $7b
	rst FarCall                                          ; $5b6f: $f7
	ld a, d                                          ; $5b70: $7a
	cp h                                             ; $5b71: $bc
	sbc $ff                                          ; $5b72: $de $ff
	sub l                                            ; $5b74: $95
	dec d                                            ; $5b75: $15
	inc d                                            ; $5b76: $14
	db $f4                                           ; $5b77: $f4
	inc e                                            ; $5b78: $1c
	ld e, $bd                                        ; $5b79: $1e $bd
	dec sp                                           ; $5b7b: $3b
	rst FarCall                                          ; $5b7c: $f7
	xor $ef                                          ; $5b7d: $ee $ef
	ld l, c                                          ; $5b7f: $69
	jr @+$75                                         ; $5b80: $18 $73

	db $fc                                           ; $5b82: $fc
	ld a, c                                          ; $5b83: $79
	add hl, bc                                       ; $5b84: $09
	ld [hl], c                                       ; $5b85: $71
	inc d                                            ; $5b86: $14
	ld h, a                                          ; $5b87: $67
	ldh a, [$7b]                                     ; $5b88: $f0 $7b
	ld a, [$f053]                                    ; $5b8a: $fa $53 $f0
	sbc [hl]                                         ; $5b8d: $9e
	ld b, b                                          ; $5b8e: $40
	ld h, e                                          ; $5b8f: $63
	ldh a, [$9c]                                     ; $5b90: $f0 $9c
	inc c                                            ; $5b92: $0c
	ldh [c], a                                       ; $5b93: $e2
	db $fc                                           ; $5b94: $fc
	ld l, a                                          ; $5b95: $6f
	ldh [$9d], a                                     ; $5b96: $e0 $9d
	rra                                              ; $5b98: $1f
	inc bc                                           ; $5b99: $03
	ld l, a                                          ; $5b9a: $6f
	ldh [$9a], a                                     ; $5b9b: $e0 $9a
	ccf                                              ; $5b9d: $3f
	rrca                                             ; $5b9e: $0f
	jp $ff00                                         ; $5b9f: $c3 $00 $ff


	ld a, b                                          ; $5ba2: $78
	ldh a, [c]                                       ; $5ba3: $f2
	sbc h                                            ; $5ba4: $9c
	ret nz                                           ; $5ba5: $c0

	ldh a, [$3c]                                     ; $5ba6: $f0 $3c
	ld e, a                                          ; $5ba8: $5f
	ret nc                                           ; $5ba9: $d0

	sbc [hl]                                         ; $5baa: $9e
	ret nz                                           ; $5bab: $c0

	rra                                              ; $5bac: $1f
	or b                                             ; $5bad: $b0
	sbc c                                            ; $5bae: $99
	ld a, a                                          ; $5baf: $7f
	ld b, b                                          ; $5bb0: $40
	ld b, b                                          ; $5bb1: $40
	ld b, c                                          ; $5bb2: $41
	ld b, d                                          ; $5bb3: $42
	ld b, h                                          ; $5bb4: $44
	ld a, e                                          ; $5bb5: $7b
	db $f4                                           ; $5bb6: $f4
	rst SubAFromDE                                          ; $5bb7: $df
	ret nz                                           ; $5bb8: $c0

	sbc h                                            ; $5bb9: $9c
	pop bc                                           ; $5bba: $c1
	jp Jump_03a_79c6                                 ; $5bbb: $c3 $c6 $79


	jp nc, $329d                                     ; $5bbe: $d2 $9d $32

	jp nz, $02de                                     ; $5bc1: $c2 $de $02

	ld a, e                                          ; $5bc4: $7b
	ldh a, [$97]                                     ; $5bc5: $f0 $97
	dec sp                                           ; $5bc7: $3b
	db $e3                                           ; $5bc8: $e3
	add e                                            ; $5bc9: $83
	inc bc                                           ; $5bca: $03
	inc bc                                           ; $5bcb: $03
	rst $38                                          ; $5bcc: $ff
	ld c, b                                          ; $5bcd: $48
	ld c, b                                          ; $5bce: $48
	db $dd                                           ; $5bcf: $dd
	ret z                                            ; $5bd0: $c8

	sbc [hl]                                         ; $5bd1: $9e
	ret                                              ; $5bd2: $c9


	ret c                                            ; $5bd3: $d8

	rst $38                                          ; $5bd4: $ff
	ld l, h                                          ; $5bd5: $6c
	ld b, d                                          ; $5bd6: $42
	ld h, h                                          ; $5bd7: $64
	ld b, b                                          ; $5bd8: $40
	ld a, h                                          ; $5bd9: $7c

jr_03a_5bda:
	add c                                            ; $5bda: $81
	ld a, [hl]                                       ; $5bdb: $7e
	add $87                                          ; $5bdc: $c6 $87
	rst GetHLinHL                                          ; $5bde: $cf
	call $cbcd                                       ; $5bdf: $cd $cd $cb
	ret                                              ; $5be2: $c9


	ret z                                            ; $5be3: $c8

	ld [hl], b                                       ; $5be4: $70
	halt                                             ; $5be5: $76
	ld [hl], b                                       ; $5be6: $70
	ld [hl], d                                       ; $5be7: $72
	ld [hl], d                                       ; $5be8: $72
	ld [hl], b                                       ; $5be9: $70
	ld [hl], b                                       ; $5bea: $70
	ld [hl], d                                       ; $5beb: $72
	ret c                                            ; $5bec: $d8

	ld e, b                                          ; $5bed: $58
	ld e, h                                          ; $5bee: $5c
	ld d, h                                          ; $5bef: $54
	ld d, h                                          ; $5bf0: $54
	ret nc                                           ; $5bf1: $d0

	ld d, h                                          ; $5bf2: $54
	call nc, $bf3f                                   ; $5bf3: $d4 $3f $bf
	db $dd                                           ; $5bf6: $dd
	ccf                                              ; $5bf7: $3f
	ld a, a                                          ; $5bf8: $7f
	ei                                               ; $5bf9: $fb
	sub l                                            ; $5bfa: $95
	and e                                            ; $5bfb: $a3
	pop bc                                           ; $5bfc: $c1
	db $d3                                           ; $5bfd: $d3
	di                                               ; $5bfe: $f3
	pop af                                           ; $5bff: $f1
	ld [hl], c                                       ; $5c00: $71
	ld h, [hl]                                       ; $5c01: $66
	jr c, jr_03a_5c07                                ; $5c02: $38 $03

	add e                                            ; $5c04: $83
	db $dd                                           ; $5c05: $dd
	add c                                            ; $5c06: $81

jr_03a_5c07:
	sub h                                            ; $5c07: $94
	add a                                            ; $5c08: $87
	rst $38                                          ; $5c09: $ff
	ld a, a                                          ; $5c0a: $7f
	ld a, a                                          ; $5c0b: $7f
	jr nc, jr_03a_5c3e                               ; $5c0c: $30 $30

	sub b                                            ; $5c0e: $90
	sub b                                            ; $5c0f: $90
	db $10                                           ; $5c10: $10
	db $10                                           ; $5c11: $10
	rst $38                                          ; $5c12: $ff
	ld a, e                                          ; $5c13: $7b
	or $df                                           ; $5c14: $f6 $df
	cp a                                             ; $5c16: $bf
	sbc l                                            ; $5c17: $9d
	ccf                                              ; $5c18: $3f
	rst $38                                          ; $5c19: $ff
	reti                                             ; $5c1a: $d9


	ld h, b                                          ; $5c1b: $60
	reti                                             ; $5c1c: $d9


	rst $38                                          ; $5c1d: $ff
	sub e                                            ; $5c1e: $93
	inc hl                                           ; $5c1f: $23
	rlca                                             ; $5c20: $07
	rrca                                             ; $5c21: $0f
	ccf                                              ; $5c22: $3f
	ret nz                                           ; $5c23: $c0

	ret nz                                           ; $5c24: $c0

	add $d8                                          ; $5c25: $c6 $d8
	rst $38                                          ; $5c27: $ff
	cp $fc                                           ; $5c28: $fe $fc
	ldh a, [$7b]                                     ; $5c2a: $f0 $7b
	ld c, d                                          ; $5c2c: $4a
	ld l, [hl]                                       ; $5c2d: $6e
	db $ec                                           ; $5c2e: $ec
	sbc d                                            ; $5c2f: $9a
	nop                                              ; $5c30: $00
	ld h, [hl]                                       ; $5c31: $66
	sbc c                                            ; $5c32: $99
	rst $38                                          ; $5c33: $ff
	ld a, h                                          ; $5c34: $7c
	ld l, a                                          ; $5c35: $6f
	ld c, a                                          ; $5c36: $4f
	sbc [hl]                                         ; $5c37: $9e
	ldh a, [rOCPD]                                   ; $5c38: $f0 $6b
	ldh a, [$fc]                                     ; $5c3a: $f0 $fc
	sbc $ff                                          ; $5c3c: $de $ff

jr_03a_5c3e:
	sbc [hl]                                         ; $5c3e: $9e
	ld e, $de                                        ; $5c3f: $1e $de
	rst $38                                          ; $5c41: $ff
	ld a, h                                          ; $5c42: $7c
	jr nc, jr_03a_5bda                               ; $5c43: $30 $95

	ld h, h                                          ; $5c45: $64
	sbc h                                            ; $5c46: $9c
	rrca                                             ; $5c47: $0f
	add hl, bc                                       ; $5c48: $09
	inc bc                                           ; $5c49: $03
	ld b, $04                                        ; $5c4a: $06 $04
	db $fc                                           ; $5c4c: $fc
	db $fd                                           ; $5c4d: $fd
	db $fd                                           ; $5c4e: $fd
	ld l, a                                          ; $5c4f: $6f
	inc e                                            ; $5c50: $1c
	rst $38                                          ; $5c51: $ff
	sbc [hl]                                         ; $5c52: $9e
	ldh [$79], a                                     ; $5c53: $e0 $79
	and h                                            ; $5c55: $a4
	ld [hl], a                                       ; $5c56: $77
	rst SubAFromDE                                          ; $5c57: $df
	sub d                                            ; $5c58: $92
	cp $fd                                           ; $5c59: $fe $fd
	ei                                               ; $5c5b: $fb
	rst $38                                          ; $5c5c: $ff
	ld b, $fe                                        ; $5c5d: $06 $fe
	ld b, $06                                        ; $5c5f: $06 $06
	ld bc, $0703                                     ; $5c61: $01 $03 $07
	ld b, $0e                                        ; $5c64: $06 $0e

jr_03a_5c66:
	ld a, d                                          ; $5c66: $7a
	adc c                                            ; $5c67: $89
	ld [hl], e                                       ; $5c68: $73
	ldh [$df], a                                     ; $5c69: $e0 $df
	rst GetHLinHL                                          ; $5c6b: $cf
	sbc l                                            ; $5c6c: $9d
	rrca                                             ; $5c6d: $0f
	add b                                            ; $5c6e: $80
	db $fd                                           ; $5c6f: $fd
	ld a, a                                          ; $5c70: $7f
	add c                                            ; $5c71: $81
	ld e, [hl]                                       ; $5c72: $5e
	adc h                                            ; $5c73: $8c
	ld l, e                                          ; $5c74: $6b
	or b                                             ; $5c75: $b0
	ld [hl], e                                       ; $5c76: $73
	ldh a, [$df]                                     ; $5c77: $f0 $df
	ldh a, [$79]                                     ; $5c79: $f0 $79
	ld l, [hl]                                       ; $5c7b: $6e
	ld [hl], e                                       ; $5c7c: $73
	ldh a, [$9c]                                     ; $5c7d: $f0 $9c
	db $fc                                           ; $5c7f: $fc
	ld bc, $77c3                                     ; $5c80: $01 $c3 $77
	db $e4                                           ; $5c83: $e4
	rst SubAFromDE                                          ; $5c84: $df
	ld bc, $fe9d                                     ; $5c85: $01 $9d $fe
	inc a                                            ; $5c88: $3c
	ld l, a                                          ; $5c89: $6f
	ldh [$8e], a                                     ; $5c8a: $e0 $8e
	push af                                          ; $5c8c: $f5
	ei                                               ; $5c8d: $fb
	cp $fd                                           ; $5c8e: $fe $fd
	ld bc, $d539                                     ; $5c90: $01 $39 $d5
	adc l                                            ; $5c93: $8d
	ld c, $06                                        ; $5c94: $0e $06
	inc bc                                           ; $5c96: $03
	inc bc                                           ; $5c97: $03
	ld bc, $bfff                                     ; $5c98: $01 $ff $bf
	ld a, a                                          ; $5c9b: $7f
	ccf                                              ; $5c9c: $3f
	ld a, e                                          ; $5c9d: $7b
	db $eb                                           ; $5c9e: $eb
	rst SubAFromDE                                          ; $5c9f: $df
	add b                                            ; $5ca0: $80
	sbc [hl]                                         ; $5ca1: $9e
	and [hl]                                         ; $5ca2: $a6
	ld a, d                                          ; $5ca3: $7a
	dec h                                            ; $5ca4: $25
	cp $de                                           ; $5ca5: $fe $de
	ld a, a                                          ; $5ca7: $7f
	ld l, [hl]                                       ; $5ca8: $6e
	and l                                            ; $5ca9: $a5
	ld a, e                                          ; $5caa: $7b
	ld d, b                                          ; $5cab: $50
	ld l, d                                          ; $5cac: $6a
	sbc a                                            ; $5cad: $9f
	rst SubAFromDE                                          ; $5cae: $df
	ld a, a                                          ; $5caf: $7f
	ld a, [hl]                                       ; $5cb0: $7e
	rrca                                             ; $5cb1: $0f
	sbc c                                            ; $5cb2: $99
	nop                                              ; $5cb3: $00
	inc bc                                           ; $5cb4: $03
	ld h, [hl]                                       ; $5cb5: $66
	cp e                                             ; $5cb6: $bb
	rst $38                                          ; $5cb7: $ff
	rst $38                                          ; $5cb8: $ff
	ld a, c                                          ; $5cb9: $79
	inc sp                                           ; $5cba: $33
	sbc $ff                                          ; $5cbb: $de $ff
	sbc c                                            ; $5cbd: $99
	adc a                                            ; $5cbe: $8f
	rst SubAFromBC                                          ; $5cbf: $e7
	di                                               ; $5cc0: $f3
	ld a, c                                          ; $5cc1: $79
	inc c                                            ; $5cc2: $0c
	cp $7b                                           ; $5cc3: $fe $7b
	jr c, @-$62                                      ; $5cc5: $38 $9c

	ld hl, sp-$04                                    ; $5cc7: $f8 $fc
	cp $7a                                           ; $5cc9: $fe $7a
	ld e, d                                          ; $5ccb: $5a
	sbc [hl]                                         ; $5ccc: $9e
	rst $38                                          ; $5ccd: $ff
	sbc $ca                                          ; $5cce: $de $ca
	ld a, a                                          ; $5cd0: $7f
	ret nz                                           ; $5cd1: $c0

	sbc h                                            ; $5cd2: $9c
	ld a, a                                          ; $5cd3: $7f
	jr nz, jr_03a_5c66                               ; $5cd4: $20 $90

	sbc $74                                          ; $5cd6: $de $74
	rst SubAFromDE                                          ; $5cd8: $df
	ld a, a                                          ; $5cd9: $7f
	sbc c                                            ; $5cda: $99
	add b                                            ; $5cdb: $80
	ret nz                                           ; $5cdc: $c0

	ldh [$d6], a                                     ; $5cdd: $e0 $d6
	sbc $de                                          ; $5cdf: $de $de
	ld [hl], e                                       ; $5ce1: $73
	ld b, b                                          ; $5ce2: $40
	sbc $3f                                          ; $5ce3: $de $3f
	ld l, a                                          ; $5ce5: $6f
	ld l, e                                          ; $5ce6: $6b
	sbc d                                            ; $5ce7: $9a
	rlca                                             ; $5ce8: $07
	ld a, a                                          ; $5ce9: $7f
	ret nz                                           ; $5cea: $c0

	ccf                                              ; $5ceb: $3f
	ldh [$6f], a                                     ; $5cec: $e0 $6f
	ld h, l                                          ; $5cee: $65
	ld [hl], a                                       ; $5cef: $77
	dec l                                            ; $5cf0: $2d
	sbc e                                            ; $5cf1: $9b
	ld [hl], b                                       ; $5cf2: $70
	ret nz                                           ; $5cf3: $c0

	rra                                              ; $5cf4: $1f
	ldh a, [$6f]                                     ; $5cf5: $f0 $6f
	ld h, l                                          ; $5cf7: $65
	ld a, e                                          ; $5cf8: $7b
	db $eb                                           ; $5cf9: $eb
	cp $73                                           ; $5cfa: $fe $73
	ld a, [$e0de]                                    ; $5cfc: $fa $de $e0
	ld [hl], a                                       ; $5cff: $77
	or h                                             ; $5d00: $b4
	db $dd                                           ; $5d01: $dd
	rst $38                                          ; $5d02: $ff
	sbc d                                            ; $5d03: $9a
	rst GetHLinHL                                          ; $5d04: $cf
	rst SubAFromDE                                          ; $5d05: $df
	sbc $d9                                          ; $5d06: $de $d9
	sub $7b                                          ; $5d08: $d6 $7b
	cp $d9                                           ; $5d0a: $fe $d9
	rst $38                                          ; $5d0c: $ff
	sub a                                            ; $5d0d: $97
	cp $f5                                           ; $5d0e: $fe $f5
	ld a, a                                          ; $5d10: $7f
	sbc l                                            ; $5d11: $9d
	ld l, a                                          ; $5d12: $6f
	sbc l                                            ; $5d13: $9d
	ld l, [hl]                                       ; $5d14: $6e
	sbc l                                            ; $5d15: $9d
	reti                                             ; $5d16: $d9


	rst $38                                          ; $5d17: $ff
	sub a                                            ; $5d18: $97
	ld h, [hl]                                       ; $5d19: $66
	rst SubAFromDE                                          ; $5d1a: $df
	ld a, [hl]                                       ; $5d1b: $7e
	reti                                             ; $5d1c: $d9


	ld a, [hl]                                       ; $5d1d: $7e
	reti                                             ; $5d1e: $d9


	cp $db                                           ; $5d1f: $fe $db
	reti                                             ; $5d21: $d9


	rst $38                                          ; $5d22: $ff
	sbc e                                            ; $5d23: $9b
	ld l, h                                          ; $5d24: $6c
	db $fc                                           ; $5d25: $fc
	ld [hl], h                                       ; $5d26: $74
	sbc h                                            ; $5d27: $9c
	ld a, e                                          ; $5d28: $7b
	cp $7a                                           ; $5d29: $fe $7a
	add $db                                          ; $5d2b: $c6 $db
	db $fd                                           ; $5d2d: $fd
	rst $38                                          ; $5d2e: $ff
	db $db                                           ; $5d2f: $db
	call z, $ffd9                                    ; $5d30: $cc $d9 $ff
	rst SubAFromDE                                          ; $5d33: $df
	ld b, $de                                        ; $5d34: $06 $de
	add $df                                          ; $5d36: $c6 $df
	rst JumpTable                                          ; $5d38: $c7
	ld a, l                                          ; $5d39: $7d
	rst SubAFromBC                                          ; $5d3a: $e7
	jp c, $9bff                                      ; $5d3b: $da $ff $9b

	rst AddAOntoHL                                          ; $5d3e: $ef
	rrca                                             ; $5d3f: $0f
	inc c                                            ; $5d40: $0c
	rrca                                             ; $5d41: $0f
	ld [hl], a                                       ; $5d42: $77
	dec e                                            ; $5d43: $1d
	reti                                             ; $5d44: $d9


	rst $38                                          ; $5d45: $ff
	sbc h                                            ; $5d46: $9c
	jp c, $d0aa                                      ; $5d47: $da $aa $d0

	ld [hl], e                                       ; $5d4a: $73
	dec c                                            ; $5d4b: $0d
	sbc l                                            ; $5d4c: $9d
	rst $38                                          ; $5d4d: $ff
	push de                                          ; $5d4e: $d5
	db $db                                           ; $5d4f: $db
	rst $38                                          ; $5d50: $ff
	ld a, a                                          ; $5d51: $7f
	ld a, [hl+]                                      ; $5d52: $2a
	sbc l                                            ; $5d53: $9d
	cp $f7                                           ; $5d54: $fe $f7
	ld [hl], a                                       ; $5d56: $77
	ldh a, [$de]                                     ; $5d57: $f0 $de
	rst FarCall                                          ; $5d59: $f7
	call c, $9bff                                    ; $5d5a: $dc $ff $9b
	ld [bc], a                                       ; $5d5d: $02
	db $db                                           ; $5d5e: $db
	ld bc, $57fd                                     ; $5d5f: $01 $fd $57
	ret nc                                           ; $5d62: $d0

	sbc d                                            ; $5d63: $9a
	dec c                                            ; $5d64: $0d
	dec e                                            ; $5d65: $1d
	db $ed                                           ; $5d66: $ed
	push af                                          ; $5d67: $f5
	dec b                                            ; $5d68: $05
	sbc $fd                                          ; $5d69: $de $fd
	ret c                                            ; $5d6b: $d8

	rst $38                                          ; $5d6c: $ff
	sbc b                                            ; $5d6d: $98
	cp c                                             ; $5d6e: $b9
	and $b9                                          ; $5d6f: $e6 $b9
	and $f9                                          ; $5d71: $e6 $f9
	rst $38                                          ; $5d73: $ff
	cp l                                             ; $5d74: $bd
	reti                                             ; $5d75: $d9


	ld a, a                                          ; $5d76: $7f
	sbc h                                            ; $5d77: $9c
	ld h, [hl]                                       ; $5d78: $66
	db $db                                           ; $5d79: $db
	ld a, a                                          ; $5d7a: $7f
	ld [hl], a                                       ; $5d7b: $77
	cp $78                                           ; $5d7c: $fe $78
	ld h, $db                                        ; $5d7e: $26 $db
	rst $38                                          ; $5d80: $ff
	sbc d                                            ; $5d81: $9a
	or $dd                                           ; $5d82: $f6 $dd
	rst SubAFromBC                                          ; $5d84: $e7
	sbc c                                            ; $5d85: $99
	ld h, [hl]                                       ; $5d86: $66
	ld a, e                                          ; $5d87: $7b
	cp $d9                                           ; $5d88: $fe $d9
	rst $38                                          ; $5d8a: $ff
	sbc [hl]                                         ; $5d8b: $9e
	db $fc                                           ; $5d8c: $fc
	ld [hl], l                                       ; $5d8d: $75
	adc d                                            ; $5d8e: $8a
	sbc $f0                                          ; $5d8f: $de $f0
	reti                                             ; $5d91: $d9


	rst $38                                          ; $5d92: $ff
	sub a                                            ; $5d93: $97
	ret z                                            ; $5d94: $c8

	db $e4                                           ; $5d95: $e4
	or d                                             ; $5d96: $b2
	sbc c                                            ; $5d97: $99
	xor h                                            ; $5d98: $ac
	sub [hl]                                         ; $5d99: $96
	xor e                                            ; $5d9a: $ab
	or l                                             ; $5d9b: $b5
	halt                                             ; $5d9c: $76
	or b                                             ; $5d9d: $b0
	sbc e                                            ; $5d9e: $9b
	rst SubAFromDE                                          ; $5d9f: $df
	rst GetHLinHL                                          ; $5da0: $cf
	rst JumpTable                                          ; $5da1: $c7
	jp $e472                                         ; $5da2: $c3 $72 $e4


	rst $38                                          ; $5da5: $ff
	ld [hl], d                                       ; $5da6: $72
	ld hl, $2866                                     ; $5da7: $21 $66 $28
	ld l, [hl]                                       ; $5daa: $6e
	inc hl                                           ; $5dab: $23
	cpl                                              ; $5dac: $2f
	ldh a, [rAUD4POLY]                               ; $5dad: $f0 $22
	nop                                              ; $5daf: $00
	sbc l                                            ; $5db0: $9d
	inc sp                                           ; $5db1: $33
	ld b, l                                          ; $5db2: $45
	sbc $55                                          ; $5db3: $de $55
	rst SubAFromDE                                          ; $5db5: $df
	ld h, [hl]                                       ; $5db6: $66
	sbc [hl]                                         ; $5db7: $9e
	ld b, h                                          ; $5db8: $44
	sbc $33                                          ; $5db9: $de $33
	scf                                              ; $5dbb: $37
	or $9d                                           ; $5dbc: $f6 $9d
	ld b, e                                          ; $5dbe: $43
	ld [hl], e                                       ; $5dbf: $73
	sbc $33                                          ; $5dc0: $de $33
	ld [hl], a                                       ; $5dc2: $77
	or $9e                                           ; $5dc3: $f6 $9e
	scf                                              ; $5dc5: $37
	db $db                                           ; $5dc6: $db
	ld [hl], a                                       ; $5dc7: $77
	ld a, e                                          ; $5dc8: $7b
	pop af                                           ; $5dc9: $f1
	ld l, e                                          ; $5dca: $6b
	or $9c                                           ; $5dcb: $f6 $9c
	ld [hl], a                                       ; $5dcd: $77
	inc sp                                           ; $5dce: $33
	inc sp                                           ; $5dcf: $33
	ld d, a                                          ; $5dd0: $57
	inc bc                                           ; $5dd1: $03
	sbc b                                            ; $5dd2: $98
	ld l, a                                          ; $5dd3: $6f
	ccf                                              ; $5dd4: $3f
	nop                                              ; $5dd5: $00
	nop                                              ; $5dd6: $00
	ld b, b                                          ; $5dd7: $40
	ccf                                              ; $5dd8: $3f
	ld a, a                                          ; $5dd9: $7f
	sbc $3f                                          ; $5dda: $de $3f

jr_03a_5ddc:
	sub a                                            ; $5ddc: $97
	ld b, a                                          ; $5ddd: $47
	ccf                                              ; $5dde: $3f
	ld e, a                                          ; $5ddf: $5f
	ccf                                              ; $5de0: $3f
	jr nz, jr_03a_5e02                               ; $5de1: $20 $1f

	rst $38                                          ; $5de3: $ff
	rst $38                                          ; $5de4: $ff
	cp $dc                                           ; $5de5: $fe $dc
	rst $38                                          ; $5de7: $ff
	add a                                            ; $5de8: $87
	ld hl, sp-$01                                    ; $5de9: $f8 $ff
	adc $f9                                          ; $5deb: $ce $f9
	ccf                                              ; $5ded: $3f
	ret nz                                           ; $5dee: $c0

	sub $ec                                          ; $5def: $d6 $ec
	nop                                              ; $5df1: $00
	nop                                              ; $5df2: $00
	ld [bc], a                                       ; $5df3: $02
	db $fc                                           ; $5df4: $fc
	cp $fc                                           ; $5df5: $fe $fc
	add $fc                                          ; $5df7: $c6 $fc
	ld e, $e4                                        ; $5df9: $1e $e4
	ld a, $e4                                        ; $5dfb: $3e $e4
	ld a, [$e404]                                    ; $5dfd: $fa $04 $e4
	ld a, a                                          ; $5e00: $7f
	ld [hl], a                                       ; $5e01: $77

jr_03a_5e02:
	ldh [$9e], a                                     ; $5e02: $e0 $9e
	ld a, a                                          ; $5e04: $7f
	ld a, e                                          ; $5e05: $7b
	cp $97                                           ; $5e06: $fe $97
	ld e, a                                          ; $5e08: $5f
	ldh a, [$5f]                                     ; $5e09: $f0 $5f
	ldh a, [rIE]                                     ; $5e0b: $f0 $ff
	nop                                              ; $5e0d: $00
	ld de, $6bfc                                     ; $5e0e: $11 $fc $6b
	ret nc                                           ; $5e11: $d0

	sub [hl]                                         ; $5e12: $96
	jp c, $1aff                                      ; $5e13: $da $ff $1a

	rst FarCall                                          ; $5e16: $f7
	inc de                                           ; $5e17: $13
	rst $38                                          ; $5e18: $ff
	db $10                                           ; $5e19: $10
	jr nz, jr_03a_5ddc                               ; $5e1a: $20 $c0

	cp $de                                           ; $5e1c: $fe $de
	ldh a, [$97]                                     ; $5e1e: $f0 $97
	add b                                            ; $5e20: $80
	ldh a, [rP1]                                     ; $5e21: $f0 $00
	ret nc                                           ; $5e23: $d0

	nop                                              ; $5e24: $00
	ldh [rAUD1SWEEP], a                              ; $5e25: $e0 $10
	ldh a, [$f1]                                     ; $5e27: $f0 $f1
	ld a, a                                          ; $5e29: $7f
	sub h                                            ; $5e2a: $94
	rst $38                                          ; $5e2b: $ff
	sub c                                            ; $5e2c: $91
	ld h, b                                          ; $5e2d: $60
	rra                                              ; $5e2e: $1f
	ld e, a                                          ; $5e2f: $5f
	ccf                                              ; $5e30: $3f
	ld e, [hl]                                       ; $5e31: $5e
	ccf                                              ; $5e32: $3f
	ld b, c                                          ; $5e33: $41
	ld a, $61                                        ; $5e34: $3e $61
	ld e, $67                                        ; $5e36: $1e $67
	nop                                              ; $5e38: $00
	ld bc, $6ffe                                     ; $5e39: $01 $fe $6f
	ret nz                                           ; $5e3c: $c0

	sbc b                                            ; $5e3d: $98
	ld bc, $f9ff                                     ; $5e3e: $01 $ff $f9
	rlca                                             ; $5e41: $07
	db $fd                                           ; $5e42: $fd
	inc bc                                           ; $5e43: $03
	cp $73                                           ; $5e44: $fe $73
	pop af                                           ; $5e46: $f1
	ld a, a                                          ; $5e47: $7f
	db $fc                                           ; $5e48: $fc
	ld a, a                                          ; $5e49: $7f
	sub b                                            ; $5e4a: $90
	ld a, a                                          ; $5e4b: $7f
	cp $96                                           ; $5e4c: $fe $96
	ld b, $fc                                        ; $5e4e: $06 $fc
	ldh [c], a                                       ; $5e50: $e2
	db $fc                                           ; $5e51: $fc
	ld e, $e0                                        ; $5e52: $1e $e0
	ld a, [de]                                       ; $5e54: $1a
	ld bc, $7303                                     ; $5e55: $01 $03 $73
	and c                                            ; $5e58: $a1
	sbc b                                            ; $5e59: $98
	ret nz                                           ; $5e5a: $c0

	ccf                                              ; $5e5b: $3f
	ld hl, $221e                                     ; $5e5c: $21 $1e $22
	inc e                                            ; $5e5f: $1c
	inc e                                            ; $5e60: $1c
	ld a, e                                          ; $5e61: $7b
	db $e4                                           ; $5e62: $e4
	sbc [hl]                                         ; $5e63: $9e
	cp a                                             ; $5e64: $bf
	ld a, e                                          ; $5e65: $7b
	ldh a, [hDisp0_OBP0]                                     ; $5e66: $f0 $86
	cp $7f                                           ; $5e68: $fe $7f
	ld d, c                                          ; $5e6a: $51
	ld l, $43                                        ; $5e6b: $2e $43
	ld a, $63                                        ; $5e6d: $3e $63
	ld e, $7f                                        ; $5e6f: $1e $7f
	nop                                              ; $5e71: $00
	inc b                                            ; $5e72: $04
	nop                                              ; $5e73: $00
	db $ed                                           ; $5e74: $ed
	db $10                                           ; $5e75: $10
	db $fd                                           ; $5e76: $fd
	ld sp, hl                                        ; $5e77: $f9
	add h                                            ; $5e78: $84
	ld sp, hl                                        ; $5e79: $f9
	db $ec                                           ; $5e7a: $ec
	ld bc, $01cc                                     ; $5e7b: $01 $cc $01
	call $8d00                                       ; $5e7e: $cd $00 $8d
	cp $8d                                           ; $5e81: $fe $8d
	ld a, a                                          ; $5e83: $7f
	add b                                            ; $5e84: $80
	rst $38                                          ; $5e85: $ff
	rst $38                                          ; $5e86: $ff
	db $fd                                           ; $5e87: $fd
	rst $38                                          ; $5e88: $ff
	ld a, [bc]                                       ; $5e89: $0a
	db $fd                                           ; $5e8a: $fd
	ld a, [bc]                                       ; $5e8b: $0a
	db $fd                                           ; $5e8c: $fd
	ld [hl-], a                                      ; $5e8d: $32
	call $00ed                                       ; $5e8e: $cd $ed $00
	rst $38                                          ; $5e91: $ff
	nop                                              ; $5e92: $00
	cp $01                                           ; $5e93: $fe $01
	db $dd                                           ; $5e95: $dd
	rst $38                                          ; $5e96: $ff
	add b                                            ; $5e97: $80
	and b                                            ; $5e98: $a0
	rst $38                                          ; $5e99: $ff
	add b                                            ; $5e9a: $80
	rst $38                                          ; $5e9b: $ff
	ldh [$9f], a                                     ; $5e9c: $e0 $9f
	ld a, a                                          ; $5e9e: $7f
	add b                                            ; $5e9f: $80
	ret nc                                           ; $5ea0: $d0

	nop                                              ; $5ea1: $00
	ret nc                                           ; $5ea2: $d0

	rrca                                             ; $5ea3: $0f
	adc a                                            ; $5ea4: $8f
	rst SubAFromDE                                          ; $5ea5: $df
	adc [hl]                                         ; $5ea6: $8e
	rst SubAFromDE                                          ; $5ea7: $df
	ret                                              ; $5ea8: $c9


	sbc [hl]                                         ; $5ea9: $9e
	call z, $c89f                                    ; $5eaa: $cc $9f $c8
	sbc a                                            ; $5ead: $9f
	rst SubAFromDE                                          ; $5eae: $df
	nop                                              ; $5eaf: $00
	db $fc                                           ; $5eb0: $fc
	inc bc                                           ; $5eb1: $03
	ld e, h                                          ; $5eb2: $5c
	and e                                            ; $5eb3: $a3
	db $fd                                           ; $5eb4: $fd
	rst $38                                          ; $5eb5: $ff
	rst $38                                          ; $5eb6: $ff
	ld a, e                                          ; $5eb7: $7b
	sub d                                            ; $5eb8: $92
	ld a, a                                          ; $5eb9: $7f
	cp $91                                           ; $5eba: $fe $91
	ld e, $fc                                        ; $5ebc: $1e $fc
	add [hl]                                         ; $5ebe: $86
	ld a, h                                          ; $5ebf: $7c
	ld [bc], a                                       ; $5ec0: $02
	rst $38                                          ; $5ec1: $ff
	ld [bc], a                                       ; $5ec2: $02
	rst $38                                          ; $5ec3: $ff
	ld [hl-], a                                      ; $5ec4: $32
	rst $38                                          ; $5ec5: $ff
	ld b, d                                          ; $5ec6: $42
	rst AddAOntoHL                                          ; $5ec7: $ef
	ld b, e                                          ; $5ec8: $43
	adc $73                                          ; $5ec9: $ce $73
	cp $91                                           ; $5ecb: $fe $91
	rst GetHLinHL                                          ; $5ecd: $cf
	ld a, a                                          ; $5ece: $7f
	rst $38                                          ; $5ecf: $ff
	ld d, e                                          ; $5ed0: $53
	rst $38                                          ; $5ed1: $ff
	ld e, a                                          ; $5ed2: $5f
	or e                                             ; $5ed3: $b3
	ld e, a                                          ; $5ed4: $5f
	or e                                             ; $5ed5: $b3
	ld l, e                                          ; $5ed6: $6b
	or a                                             ; $5ed7: $b7
	xor e                                            ; $5ed8: $ab
	ld [hl], a                                       ; $5ed9: $77
	daa                                              ; $5eda: $27
	sbc $ff                                          ; $5edb: $de $ff
	ld a, e                                          ; $5edd: $7b
	xor a                                            ; $5ede: $af
	ld a, e                                          ; $5edf: $7b
	cp $88                                           ; $5ee0: $fe $88
	ld c, a                                          ; $5ee2: $4f
	rst $38                                          ; $5ee3: $ff
	ld b, c                                          ; $5ee4: $41
	rst $38                                          ; $5ee5: $ff
	ld a, c                                          ; $5ee6: $79
	or c                                             ; $5ee7: $b1
	add hl, sp                                       ; $5ee8: $39
	or c                                             ; $5ee9: $b1
	dec c                                            ; $5eea: $0d
	or c                                             ; $5eeb: $b1
	cp a                                             ; $5eec: $bf
	nop                                              ; $5eed: $00
	ld a, a                                          ; $5eee: $7f
	ccf                                              ; $5eef: $3f
	ld a, $39                                        ; $5ef0: $3e $39
	ld e, $21                                        ; $5ef2: $1e $21
	add hl, bc                                       ; $5ef4: $09
	scf                                              ; $5ef5: $37
	dec [hl]                                         ; $5ef6: $35
	ccf                                              ; $5ef7: $3f
	ld hl, $0577                                     ; $5ef8: $21 $77 $05
	sbc [hl]                                         ; $5efb: $9e
	rrca                                             ; $5efc: $0f
	reti                                             ; $5efd: $d9


	rst $38                                          ; $5efe: $ff
	sbc l                                            ; $5eff: $9d
	add hl, sp                                       ; $5f00: $39
	rst $38                                          ; $5f01: $ff
	ld a, e                                          ; $5f02: $7b
	ld h, l                                          ; $5f03: $65
	sbc h                                            ; $5f04: $9c
	cp $26                                           ; $5f05: $fe $26
	ret c                                            ; $5f07: $d8

	ld [hl], a                                       ; $5f08: $77
	inc [hl]                                         ; $5f09: $34
	sub l                                            ; $5f0a: $95
	or [hl]                                          ; $5f0b: $b6
	ld c, b                                          ; $5f0c: $48
	ld a, d                                          ; $5f0d: $7a
	add h                                            ; $5f0e: $84
	or [hl]                                          ; $5f0f: $b6
	db $fc                                           ; $5f10: $fc
	add b                                            ; $5f11: $80
	add b                                            ; $5f12: $80
	cp $80                                           ; $5f13: $fe $80
	ld a, e                                          ; $5f15: $7b
	jp $ff97                                         ; $5f16: $c3 $97 $ff


	ld c, $f1                                        ; $5f19: $0e $f1
	dec a                                            ; $5f1b: $3d
	ret nz                                           ; $5f1c: $c0

	rlca                                             ; $5f1d: $07
	ld hl, sp+$3c                                    ; $5f1e: $f8 $3c
	ld a, d                                          ; $5f20: $7a
	sub [hl]                                         ; $5f21: $96
	sbc l                                            ; $5f22: $9d
	ei                                               ; $5f23: $fb
	inc b                                            ; $5f24: $04
	ld [hl], a                                       ; $5f25: $77
	inc hl                                           ; $5f26: $23
	sub a                                            ; $5f27: $97
	db $10                                           ; $5f28: $10
	rst AddAOntoHL                                          ; $5f29: $ef
	cp h                                             ; $5f2a: $bc
	ld b, e                                          ; $5f2b: $43
	xor d                                            ; $5f2c: $aa
	ld d, a                                          ; $5f2d: $57
	jr @-$17                                         ; $5f2e: $18 $e7

	halt                                             ; $5f30: $76
	or $76                                           ; $5f31: $f6 $76
	call nz, $b09a                                   ; $5f33: $c4 $9a $b0
	ret nz                                           ; $5f36: $c0

	sub b                                            ; $5f37: $90
	ldh [$d0], a                                     ; $5f38: $e0 $d0
	sbc $f0                                          ; $5f3a: $de $f0
	rst $38                                          ; $5f3c: $ff
	ld a, $c0                                        ; $5f3d: $3e $c0
	sbc h                                            ; $5f3f: $9c
	ld a, [hl]                                       ; $5f40: $7e
	ld bc, $7a7f                                     ; $5f41: $01 $7f $7a
	ld d, d                                          ; $5f44: $52
	sbc [hl]                                         ; $5f45: $9e
	ld [hl], b                                       ; $5f46: $70
	ld [hl], a                                       ; $5f47: $77
	cp $fe                                           ; $5f48: $fe $fe
	ld a, [hl]                                       ; $5f4a: $7e
	or [hl]                                          ; $5f4b: $b6
	ld [hl], a                                       ; $5f4c: $77
	ret nz                                           ; $5f4d: $c0

	sbc [hl]                                         ; $5f4e: $9e
	ld sp, hl                                        ; $5f4f: $f9
	ld a, e                                          ; $5f50: $7b
	xor e                                            ; $5f51: $ab
	ld a, a                                          ; $5f52: $7f
	dec de                                           ; $5f53: $1b
	ld a, d                                          ; $5f54: $7a
	and a                                            ; $5f55: $a7
	ld a, e                                          ; $5f56: $7b
	ret nz                                           ; $5f57: $c0

	halt                                             ; $5f58: $76
	ld d, h                                          ; $5f59: $54
	ld a, a                                          ; $5f5a: $7f
	cp $95                                           ; $5f5b: $fe $95
	and d                                            ; $5f5d: $a2
	call c, $c4fa                                    ; $5f5e: $dc $fa $c4
	cp [hl]                                          ; $5f61: $be
	ld b, b                                          ; $5f62: $40
	nop                                              ; $5f63: $00
	nop                                              ; $5f64: $00
	ld b, $fc                                        ; $5f65: $06 $fc
	ld [hl], a                                       ; $5f67: $77
	ldh [$97], a                                     ; $5f68: $e0 $97
	inc bc                                           ; $5f6a: $03
	db $fc                                           ; $5f6b: $fc
	add hl, bc                                       ; $5f6c: $09
	or $7f                                           ; $5f6d: $f6 $7f
	add b                                            ; $5f6f: $80
	cp $01                                           ; $5f70: $fe $01
	ld [hl], e                                       ; $5f72: $73
	and b                                            ; $5f73: $a0
	sbc $ff                                          ; $5f74: $de $ff
	adc d                                            ; $5f76: $8a
	jr c, @+$01                                      ; $5f77: $38 $ff

	scf                                              ; $5f79: $37
	ld hl, sp-$09                                    ; $5f7a: $f8 $f7
	jr c, @-$07                                      ; $5f7c: $38 $f7

	jr c, jr_03a_5f80                                ; $5f7e: $38 $00

jr_03a_5f80:
	nop                                              ; $5f80: $00
	ld bc, $05ff                                     ; $5f81: $01 $ff $05
	ld hl, sp-$04                                    ; $5f84: $f8 $fc
	ld sp, hl                                        ; $5f86: $f9
	adc h                                            ; $5f87: $8c
	ld a, c                                          ; $5f88: $79
	db $fd                                           ; $5f89: $fd
	ld [$7bf5], sp                                   ; $5f8a: $08 $f5 $7b
	cp $ff                                           ; $5f8d: $fe $ff
	sbc d                                            ; $5f8f: $9a
	push af                                          ; $5f90: $f5
	ld hl, sp+$01                                    ; $5f91: $f8 $01
	cp $ff                                           ; $5f93: $fe $ff
	ld a, d                                          ; $5f95: $7a
	sub $9a                                          ; $5f96: $d6 $9a
	adc h                                            ; $5f98: $8c
	pop bc                                           ; $5f99: $c1
	adc d                                            ; $5f9a: $8a
	pop bc                                           ; $5f9b: $c1
	add $7b                                          ; $5f9c: $c6 $7b
	ret nc                                           ; $5f9e: $d0

	add b                                            ; $5f9f: $80
	add a                                            ; $5fa0: $87
	rst $38                                          ; $5fa1: $ff

jr_03a_5fa2:
	add b                                            ; $5fa2: $80
	ld a, a                                          ; $5fa3: $7f
	rst $38                                          ; $5fa4: $ff
	rst $38                                          ; $5fa5: $ff
	ld b, $ff                                        ; $5fa6: $06 $ff
	ld sp, hl                                        ; $5fa8: $f9
	ld c, $1a                                        ; $5fa9: $0e $1a
	db $ec                                           ; $5fab: $ec
	adc d                                            ; $5fac: $8a
	ld a, h                                          ; $5fad: $7c
	ld bc, $9f00                                     ; $5fae: $01 $00 $9f
	rst $38                                          ; $5fb1: $ff
	ld b, b                                          ; $5fb2: $40
	sbc a                                            ; $5fb3: $9f
	rst SubAFromDE                                          ; $5fb4: $df
	rst SubAFromDE                                          ; $5fb5: $df
	rst $38                                          ; $5fb6: $ff
	rra                                              ; $5fb7: $1f
	ld sp, hl                                        ; $5fb8: $f9
	ld [$0ef8], sp                                   ; $5fb9: $08 $f8 $0e
	ld a, b                                          ; $5fbc: $78
	ld c, $30                                        ; $5fbd: $0e $30
	sbc c                                            ; $5fbf: $99
	nop                                              ; $5fc0: $00
	inc h                                            ; $5fc1: $24
	rra                                              ; $5fc2: $1f
	nop                                              ; $5fc3: $00
	cp $f8                                           ; $5fc4: $fe $f8
	ld a, e                                          ; $5fc6: $7b
	cp $9c                                           ; $5fc7: $fe $9c
	ld c, d                                          ; $5fc9: $4a
	db $fc                                           ; $5fca: $fc
	ld c, e                                          ; $5fcb: $4b
	ld a, e                                          ; $5fcc: $7b
	cp $8b                                           ; $5fcd: $fe $8b
	ld b, e                                          ; $5fcf: $43
	inc b                                            ; $5fd0: $04
	inc bc                                           ; $5fd1: $03
	db $fc                                           ; $5fd2: $fc
	inc de                                           ; $5fd3: $13
	rst GetHLinHL                                          ; $5fd4: $cf
	inc bc                                           ; $5fd5: $03
	rst GetHLinHL                                          ; $5fd6: $cf
	add e                                            ; $5fd7: $83
	rst GetHLinHL                                          ; $5fd8: $cf
	and e                                            ; $5fd9: $a3
	rst GetHLinHL                                          ; $5fda: $cf
	sub e                                            ; $5fdb: $93
	rst GetHLinHL                                          ; $5fdc: $cf
	add e                                            ; $5fdd: $83
	ld c, a                                          ; $5fde: $4f
	or e                                             ; $5fdf: $b3
	ld c, a                                          ; $5fe0: $4f
	cp e                                             ; $5fe1: $bb
	ld b, a                                          ; $5fe2: $47
	sbc $ff                                          ; $5fe3: $de $ff
	sbc [hl]                                         ; $5fe5: $9e
	cp a                                             ; $5fe6: $bf
	ld a, e                                          ; $5fe7: $7b
	cp $86                                           ; $5fe8: $fe $86
	ccf                                              ; $5fea: $3f
	rst $38                                          ; $5feb: $ff
	ccf                                              ; $5fec: $3f
	rst SubAFromBC                                          ; $5fed: $e7
	cp a                                             ; $5fee: $bf
	rst FarCall                                          ; $5fef: $f7
	cp a                                             ; $5ff0: $bf
	rst SubAFromBC                                          ; $5ff1: $e7
	cp a                                             ; $5ff2: $bf
	ld [$00b1], sp                                   ; $5ff3: $08 $b1 $00
	or c                                             ; $5ff6: $b1
	inc b                                            ; $5ff7: $04
	or a                                             ; $5ff8: $b7
	inc b                                            ; $5ff9: $04
	or c                                             ; $5ffa: $b1
	ld [$06b1], sp                                   ; $5ffb: $08 $b1 $06
	or c                                             ; $5ffe: $b1
	ld b, b                                          ; $5fff: $40
	or c                                             ; $6000: $b1
	nop                                              ; $6001: $00
	pop af                                           ; $6002: $f1
	db $dd                                           ; $6003: $dd
	ccf                                              ; $6004: $3f
	sub b                                            ; $6005: $90
	rlca                                             ; $6006: $07
	ccf                                              ; $6007: $3f
	ld b, $3f                                        ; $6008: $06 $3f
	dec h                                            ; $600a: $25
	ld e, $3d                                        ; $600b: $1e $3d
	ld b, $3c                                        ; $600d: $06 $3c
	ld b, $3e                                        ; $600f: $06 $3e
	ld a, $38                                        ; $6011: $3e $38
	rst $38                                          ; $6013: $ff
	sbc b                                            ; $6014: $98
	ld a, e                                          ; $6015: $7b
	ld h, b                                          ; $6016: $60
	sub l                                            ; $6017: $95
	sbc $37                                          ; $6018: $de $37
	rst FarCall                                          ; $601a: $f7
	ld bc, $80fb                                     ; $601b: $01 $fb $80
	dec de                                           ; $601e: $1b
	add b                                            ; $601f: $80
	jr jr_03a_5fa2                                   ; $6020: $18 $80

	ld [hl], a                                       ; $6022: $77
	ld [hl-], a                                      ; $6023: $32
	sbc [hl]                                         ; $6024: $9e
	sbc $7b                                          ; $6025: $de $7b
	cp $96                                           ; $6027: $fe $96
	sbc d                                            ; $6029: $9a
	db $fc                                           ; $602a: $fc
	adc [hl]                                         ; $602b: $8e
	ld [hl], b                                       ; $602c: $70
	add d                                            ; $602d: $82
	ld a, h                                          ; $602e: $7c
	cp $fc                                           ; $602f: $fe $fc
	rst $38                                          ; $6031: $ff
	ld a, c                                          ; $6032: $79
	add [hl]                                         ; $6033: $86
	ld a, a                                          ; $6034: $7f
	ld l, h                                          ; $6035: $6c
	sub a                                            ; $6036: $97
	adc h                                            ; $6037: $8c
	ld a, a                                          ; $6038: $7f
	add b                                            ; $6039: $80
	ld a, a                                          ; $603a: $7f
	ld a, [hl]                                       ; $603b: $7e
	ld bc, $d22d                                     ; $603c: $01 $2d $d2
	db $db                                           ; $603f: $db
	rst $38                                          ; $6040: $ff
	sbc h                                            ; $6041: $9c
	inc b                                            ; $6042: $04
	rst $38                                          ; $6043: $ff
	ld c, $7b                                        ; $6044: $0e $7b
	cp $89                                           ; $6046: $fe $89
	ldh [$1f], a                                     ; $6048: $e0 $1f
	rst AddAOntoHL                                          ; $604a: $ef
	db $10                                           ; $604b: $10
	rst $38                                          ; $604c: $ff
	rst $38                                          ; $604d: $ff
	ldh a, [$f0]                                     ; $604e: $f0 $f0
	sub b                                            ; $6050: $90
	ldh a, [rAUD1SWEEP]                              ; $6051: $f0 $10
	ldh a, [$50]                                     ; $6053: $f0 $50
	ldh a, [$30]                                     ; $6055: $f0 $30
	ret nz                                           ; $6057: $c0

	sub b                                            ; $6058: $90
	nop                                              ; $6059: $00
	db $10                                           ; $605a: $10
	ldh [$f0], a                                     ; $605b: $e0 $f0
	ldh [$f1], a                                     ; $605d: $e0 $f1
	halt                                             ; $605f: $76
	jp nz, Jump_03a_7e95                             ; $6060: $c2 $95 $7e

	scf                                              ; $6063: $37
	ld [hl], a                                       ; $6064: $77
	ld a, [hl+]                                      ; $6065: $2a
	ld [hl], d                                       ; $6066: $72
	ld l, $73                                        ; $6067: $2e $73
	ld h, $72                                        ; $6069: $26 $72
	inc b                                            ; $606b: $04
	ld l, l                                          ; $606c: $6d
	ld b, l                                          ; $606d: $45
	ld a, [hl]                                       ; $606e: $7e
	ld d, [hl]                                       ; $606f: $56
	sub a                                            ; $6070: $97
	adc a                                            ; $6071: $8f
	ld a, l                                          ; $6072: $7d
	ld d, l                                          ; $6073: $55
	cpl                                              ; $6074: $2f
	ret c                                            ; $6075: $d8

	daa                                              ; $6076: $27
	cp h                                             ; $6077: $bc
	ld [bc], a                                       ; $6078: $02
	ld a, c                                          ; $6079: $79
	add h                                            ; $607a: $84
	sub c                                            ; $607b: $91
	db $fc                                           ; $607c: $fc
	ld l, [hl]                                       ; $607d: $6e
	sbc h                                            ; $607e: $9c
	and $1c                                          ; $607f: $e6 $1c
	cp $04                                           ; $6081: $fe $04
	sbc [hl]                                         ; $6083: $9e
	inc b                                            ; $6084: $04
	sub $0c                                          ; $6085: $d6 $0c
	ld a, [$0200]                                    ; $6087: $fa $00 $02
	ld a, e                                          ; $608a: $7b
	ldh [$7e], a                                     ; $608b: $e0 $7e
	ld d, $94                                        ; $608d: $16 $94
	ld b, a                                          ; $608f: $47
	cp b                                             ; $6090: $b8
	ld b, a                                          ; $6091: $47
	cp b                                             ; $6092: $b8
	dec b                                            ; $6093: $05
	ld a, [$7a85]                                    ; $6094: $fa $85 $7a
	rst $38                                          ; $6097: $ff
	nop                                              ; $6098: $00
	ld a, a                                          ; $6099: $7f
	ld [hl], e                                       ; $609a: $73
	ret nc                                           ; $609b: $d0

	add b                                            ; $609c: $80
	dec b                                            ; $609d: $05
	cp $85                                           ; $609e: $fe $85
	ld a, [hl]                                       ; $60a0: $7e
	add [hl]                                         ; $60a1: $86
	ld a, a                                          ; $60a2: $7f
	ld c, b                                          ; $60a3: $48
	rst $38                                          ; $60a4: $ff
	ldh a, [rIF]                                     ; $60a5: $f0 $0f
	ldh [$1f], a                                     ; $60a7: $e0 $1f
	db $fc                                           ; $60a9: $fc
	ld sp, hl                                        ; $60aa: $f9
	call $2df8                                       ; $60ab: $cd $f8 $2d
	ret c                                            ; $60ae: $d8

	push hl                                          ; $60af: $e5
	jr jr_03a_60d7                                   ; $60b0: $18 $25

	ret c                                            ; $60b2: $d8

	ld h, l                                          ; $60b3: $65
	sbc b                                            ; $60b4: $98
	ld a, l                                          ; $60b5: $7d
	add b                                            ; $60b6: $80
	dec a                                            ; $60b7: $3d
	ret nz                                           ; $60b8: $c0

	rst $38                                          ; $60b9: $ff
	rst $38                                          ; $60ba: $ff
	ei                                               ; $60bb: $fb
	ld a, e                                          ; $60bc: $7b
	ld a, $9b                                        ; $60bd: $3e $9b
	ld l, e                                          ; $60bf: $6b
	sbc h                                            ; $60c0: $9c
	rst AddAOntoHL                                          ; $60c1: $ef
	jr jr_03a_613b                                   ; $60c2: $18 $77

	cp $80                                           ; $60c4: $fe $80
	ld c, a                                          ; $60c6: $4f
	cp b                                             ; $60c7: $b8
	cp $ff                                           ; $60c8: $fe $ff
	cp $eb                                           ; $60ca: $fe $eb
	cp $c7                                           ; $60cc: $fe $c7
	ld a, [$f0ce]                                    ; $60ce: $fa $ce $f0
	ld c, h                                          ; $60d1: $4c
	pop hl                                           ; $60d2: $e1
	ld e, e                                          ; $60d3: $5b
	add e                                            ; $60d4: $83
	ld a, h                                          ; $60d5: $7c
	add a                                            ; $60d6: $87

jr_03a_60d7:
	ld l, a                                          ; $60d7: $6f
	rrca                                             ; $60d8: $0f
	rra                                              ; $60d9: $1f
	rra                                              ; $60da: $1f
	rrca                                             ; $60db: $0f
	rra                                              ; $60dc: $1f
	rrca                                             ; $60dd: $0f
	ld e, l                                          ; $60de: $5d
	rrca                                             ; $60df: $0f
	ld a, l                                          ; $60e0: $7d
	rrca                                             ; $60e1: $0f
	ld c, l                                          ; $60e2: $4d
	ccf                                              ; $60e3: $3f
	sbc c                                            ; $60e4: $99
	sub b                                            ; $60e5: $90
	ld c, a                                          ; $60e6: $4f
	add hl, bc                                       ; $60e7: $09
	rst GetHLinHL                                          ; $60e8: $cf
	ld hl, sp-$04                                    ; $60e9: $f8 $fc
	ld hl, sp-$04                                    ; $60eb: $f8 $fc
	sbc b                                            ; $60ed: $98
	ld e, $50                                        ; $60ee: $1e $50
	add a                                            ; $60f0: $87
	nop                                              ; $60f1: $00
	sub a                                            ; $60f2: $97
	nop                                              ; $60f3: $00
	or a                                             ; $60f4: $b7
	ld [hl], a                                       ; $60f5: $77
	cp $8a                                           ; $60f6: $fe $8a
	inc bc                                           ; $60f8: $03
	ld c, a                                          ; $60f9: $4f
	inc bc                                           ; $60fa: $03
	rst AddAOntoHL                                          ; $60fb: $ef
	inc bc                                           ; $60fc: $03
	sbc a                                            ; $60fd: $9f
	rlca                                             ; $60fe: $07
	add e                                            ; $60ff: $83
	rlca                                             ; $6100: $07
	add e                                            ; $6101: $83
	daa                                              ; $6102: $27
	jp $e307                                         ; $6103: $c3 $07 $e3


	rlca                                             ; $6106: $07
	di                                               ; $6107: $f3
	ld [hl], a                                       ; $6108: $77
	xor a                                            ; $6109: $af
	ld h, a                                          ; $610a: $67
	xor a                                            ; $610b: $af
	cpl                                              ; $610c: $2f
	sbc $ff                                          ; $610d: $de $ff
	sbc d                                            ; $610f: $9a
	dec bc                                           ; $6110: $0b
	rst FarCall                                          ; $6111: $f7
	ei                                               ; $6112: $fb
	rlca                                             ; $6113: $07
	rlca                                             ; $6114: $07
	sbc $ff                                          ; $6115: $de $ff
	sub a                                            ; $6117: $97
	add b                                            ; $6118: $80
	ld [hl], c                                       ; $6119: $71
	ld e, d                                          ; $611a: $5a
	and c                                            ; $611b: $a1
	ld e, l                                          ; $611c: $5d
	and d                                            ; $611d: $a2
	rst SubAFromDE                                          ; $611e: $df
	jr nz, @+$77                                     ; $611f: $20 $75

	ld a, c                                          ; $6121: $79
	sbc e                                            ; $6122: $9b
	cp a                                             ; $6123: $bf
	ld b, b                                          ; $6124: $40
	rrca                                             ; $6125: $0f
	ldh a, [rAUD3ENA]                                ; $6126: $f0 $1a
	nop                                              ; $6128: $00
	rst SubAFromDE                                          ; $6129: $df
	ld h, [hl]                                       ; $612a: $66
	sbc [hl]                                         ; $612b: $9e
	ld [hl], $d8                                     ; $612c: $36 $d8
	ld h, [hl]                                       ; $612e: $66
	sbc [hl]                                         ; $612f: $9e
	ld [hl], l                                       ; $6130: $75
	db $dd                                           ; $6131: $dd
	ld h, [hl]                                       ; $6132: $66
	sub d                                            ; $6133: $92
	ld [hl], a                                       ; $6134: $77
	ld h, [hl]                                       ; $6135: $66
	ld h, [hl]                                       ; $6136: $66
	ld h, a                                          ; $6137: $67
	halt                                             ; $6138: $76
	halt                                             ; $6139: $76
	ld h, l                                          ; $613a: $65

jr_03a_613b:
	ld d, l                                          ; $613b: $55
	ld h, [hl]                                       ; $613c: $66
	ld h, [hl]                                       ; $613d: $66
	ld d, [hl]                                       ; $613e: $56
	ld h, [hl]                                       ; $613f: $66
	ld h, [hl]                                       ; $6140: $66
	ld h, $05                                        ; $6141: $26 $05
	rst SubAFromDE                                          ; $6143: $df
	ld a, $8a                                        ; $6144: $3e $8a
	jr nc, jr_03a_6186                               ; $6146: $30 $3e

jr_03a_6148:
	inc b                                            ; $6148: $04
	ccf                                              ; $6149: $3f
	dec b                                            ; $614a: $05
	ccf                                              ; $614b: $3f
	dec b                                            ; $614c: $05
	ld a, $0d                                        ; $614d: $3e $0d
	ld a, $03                                        ; $614f: $3e $03
	ld b, $3f                                        ; $6151: $06 $3f
	ld c, $88                                        ; $6153: $0e $88
	sbc h                                            ; $6155: $9c
	adc b                                            ; $6156: $88
	jr jr_03a_6148                                   ; $6157: $18 $ef

	jr @+$01                                         ; $6159: $18 $ff

	ld l, a                                          ; $615b: $6f
	cp $80                                           ; $615c: $fe $80
	ld [$08ff], sp                                   ; $615e: $08 $ff $08
	ld a, d                                          ; $6161: $7a
	db $fc                                           ; $6162: $fc
	adc d                                            ; $6163: $8a
	db $fc                                           ; $6164: $fc
	jp c, $987c                                      ; $6165: $da $7c $98

	ld a, h                                          ; $6168: $7c
	sbc $3c                                          ; $6169: $de $3c
	rst SubAFromDE                                          ; $616b: $df
	inc a                                            ; $616c: $3c
	ret nz                                           ; $616d: $c0

	nop                                              ; $616e: $00

Call_03a_616f:
	db $dd                                           ; $616f: $dd
	nop                                              ; $6170: $00
	rst $38                                          ; $6171: $ff
	rst $38                                          ; $6172: $ff
	ld a, a                                          ; $6173: $7f
	ld a, a                                          ; $6174: $7f
	ld a, [hl-]                                      ; $6175: $3a
	dec sp                                           ; $6176: $3b
	inc a                                            ; $6177: $3c
	ccf                                              ; $6178: $3f
	db $f4                                           ; $6179: $f4
	rst FarCall                                          ; $617a: $f7
	cp $ff                                           ; $617b: $fe $ff
	add c                                            ; $617d: $81
	inc hl                                           ; $617e: $23
	inc bc                                           ; $617f: $03
	add c                                            ; $6180: $81
	ld bc, rIE                                     ; $6181: $01 $ff $ff
	rra                                              ; $6184: $1f
	rst $38                                          ; $6185: $ff

jr_03a_6186:
	dec c                                            ; $6186: $0d
	rst $38                                          ; $6187: $ff
	rlca                                             ; $6188: $07
	rst $38                                          ; $6189: $ff
	inc bc                                           ; $618a: $03
	ei                                               ; $618b: $fb
	adc e                                            ; $618c: $8b
	ei                                               ; $618d: $fb
	add b                                            ; $618e: $80
	ret c                                            ; $618f: $d8

	pop bc                                           ; $6190: $c1
	sub b                                            ; $6191: $90
	ldh a, [$f0]                                     ; $6192: $f0 $f0
	nop                                              ; $6194: $00
	ldh a, [$e0]                                     ; $6195: $f0 $e0
	ld [hl], b                                       ; $6197: $70
	ldh [rSVBK], a                                   ; $6198: $e0 $70
	ldh a, [$60]                                     ; $619a: $f0 $60
	ld a, e                                          ; $619c: $7b
	or $ee                                           ; $619d: $f6 $ee
	sub e                                            ; $619f: $93
	ld a, a                                          ; $61a0: $7f
	ccf                                              ; $61a1: $3f
	ld e, l                                          ; $61a2: $5d
	ccf                                              ; $61a3: $3f
	ld b, e                                          ; $61a4: $43
	inc a                                            ; $61a5: $3c
	ld b, a                                          ; $61a6: $47
	jr c, @+$78                                      ; $61a7: $38 $76

	add hl, bc                                       ; $61a9: $09
	ld a, [hl]                                       ; $61aa: $7e
	ld bc, $dffd                                     ; $61ab: $01 $fd $df
	rst $38                                          ; $61ae: $ff
	sub [hl]                                         ; $61af: $96
	daa                                              ; $61b0: $27
	rst $38                                          ; $61b1: $ff
	inc a                                            ; $61b2: $3c
	inc bc                                           ; $61b3: $03
	adc l                                            ; $61b4: $8d
	ld [hl], d                                       ; $61b5: $72
	rlca                                             ; $61b6: $07
	ld hl, sp-$01                                    ; $61b7: $f8 $ff
	db $fc                                           ; $61b9: $fc
	sub h                                            ; $61ba: $94
	cp $fc                                           ; $61bb: $fe $fc
	cp $fc                                           ; $61bd: $fe $fc
	add [hl]                                         ; $61bf: $86
	ld a, h                                          ; $61c0: $7c
	or h                                             ; $61c1: $b4
	ld c, h                                          ; $61c2: $4c
	cp $00                                           ; $61c3: $fe $00
	cp $6f                                           ; $61c5: $fe $6f
	ret nc                                           ; $61c7: $d0

	db $dd                                           ; $61c8: $dd
	rst $38                                          ; $61c9: $ff
	sbc b                                            ; $61ca: $98
	rst SubAFromDE                                          ; $61cb: $df
	rst $38                                          ; $61cc: $ff
	db $d3                                           ; $61cd: $d3
	rst FarCall                                          ; $61ce: $f7
	db $db                                           ; $61cf: $db
	rst FarCall                                          ; $61d0: $f7
	dec bc                                           ; $61d1: $0b
	db $fd                                           ; $61d2: $fd
	add b                                            ; $61d3: $80
	pop bc                                           ; $61d4: $c1
	rst SubAFromBC                                          ; $61d5: $e7
	add b                                            ; $61d6: $80
	jp $8780                                         ; $61d7: $c3 $80 $87


	nop                                              ; $61da: $00
	cp a                                             ; $61db: $bf
	nop                                              ; $61dc: $00
	rst $38                                          ; $61dd: $ff
	nop                                              ; $61de: $00
	db $e3                                           ; $61df: $e3
	add b                                            ; $61e0: $80
	ld h, e                                          ; $61e1: $63
	db $e3                                           ; $61e2: $e3
	nop                                              ; $61e3: $00
	db $fc                                           ; $61e4: $fc
	ld hl, sp+$7c                                    ; $61e5: $f8 $7c
	ld hl, sp+$5c                                    ; $61e7: $f8 $5c
	ld sp, hl                                        ; $61e9: $f9
	ld e, l                                          ; $61ea: $5d
	ld sp, hl                                        ; $61eb: $f9
	ld b, h                                          ; $61ec: $44

jr_03a_61ed:
	ld sp, hl                                        ; $61ed: $f9
	ld a, h                                          ; $61ee: $7c
	add c                                            ; $61ef: $81
	ld a, h                                          ; $61f0: $7c
	add c                                            ; $61f1: $81
	cp h                                             ; $61f2: $bc
	sbc h                                            ; $61f3: $9c
	add hl, sp                                       ; $61f4: $39
	dec d                                            ; $61f5: $15

jr_03a_61f6:
	ld [$ac77], sp                                   ; $61f6: $08 $77 $ac
	db $dd                                           ; $61f9: $dd
	rst $38                                          ; $61fa: $ff
	sub [hl]                                         ; $61fb: $96
	add a                                            ; $61fc: $87
	ld sp, hl                                        ; $61fd: $f9
	rst FarCall                                          ; $61fe: $f7
	adc c                                            ; $61ff: $89
	pop bc                                           ; $6200: $c1
	cp a                                             ; $6201: $bf
	sub a                                            ; $6202: $97
	jr c, jr_03a_6206                                ; $6203: $38 $01

	ld [hl], e                                       ; $6205: $73

jr_03a_6206:
	ldh a, [$7f]                                     ; $6206: $f0 $7f
	ld d, d                                          ; $6208: $52
	adc d                                            ; $6209: $8a
	inc e                                            ; $620a: $1c
	rst $38                                          ; $620b: $ff
	ld a, [hl-]                                      ; $620c: $3a
	db $dd                                           ; $620d: $dd
	ldh a, [c]                                       ; $620e: $f2
	cp l                                             ; $620f: $bd
	sub c                                            ; $6210: $91
	rst GetHLinHL                                          ; $6211: $cf
	pop de                                           ; $6212: $d1
	ret nz                                           ; $6213: $c0

	ret nz                                           ; $6214: $c0

	rst GetHLinHL                                          ; $6215: $cf
	rst AddAOntoHL                                          ; $6216: $ef
	rst GetHLinHL                                          ; $6217: $cf
	rst GetHLinHL                                          ; $6218: $cf
	rst AddAOntoHL                                          ; $6219: $ef
	pop bc                                           ; $621a: $c1
	rst GetHLinHL                                          ; $621b: $cf
	ldh [$ef], a                                     ; $621c: $e0 $ef
	ldh a, [$7b]                                     ; $621e: $f0 $7b
	dec de                                           ; $6220: $1b
	sbc c                                            ; $6221: $99
	db $fc                                           ; $6222: $fc
	inc bc                                           ; $6223: $03
	inc c                                            ; $6224: $0c
	di                                               ; $6225: $f3
	db $fc                                           ; $6226: $fc
	ei                                               ; $6227: $fb
	ld [hl], a                                       ; $6228: $77
	cp $9e                                           ; $6229: $fe $9e
	call z, $fe7b                                    ; $622b: $cc $7b $fe
	sbc l                                            ; $622e: $9d
	inc bc                                           ; $622f: $03
	rst $38                                          ; $6230: $ff
	ld c, a                                          ; $6231: $4f
	cp $77                                           ; $6232: $fe $77
	jr nz, jr_03a_62ad                               ; $6234: $20 $77

	cp $90                                           ; $6236: $fe $90
	rst AddAOntoHL                                          ; $6238: $ef
	rra                                              ; $6239: $1f
	rrca                                             ; $623a: $0f
	rst $38                                          ; $623b: $ff
	cp a                                             ; $623c: $bf
	rst $38                                          ; $623d: $ff
	ccf                                              ; $623e: $3f
	rst $38                                          ; $623f: $ff
	jp $f03c                                         ; $6240: $c3 $3c $f0


	rrca                                             ; $6243: $0f
	db $fc                                           ; $6244: $fc
	inc bc                                           ; $6245: $03
	rst $38                                          ; $6246: $ff
	ld a, e                                          ; $6247: $7b
	add c                                            ; $6248: $81
	ld l, a                                          ; $6249: $6f
	cp $dd                                           ; $624a: $fe $dd
	ccf                                              ; $624c: $3f
	sbc h                                            ; $624d: $9c
	dec sp                                           ; $624e: $3b
	ccf                                              ; $624f: $3f
	dec bc                                           ; $6250: $0b
	ld a, e                                          ; $6251: $7b
	cp $7f                                           ; $6252: $fe $7f
	push af                                          ; $6254: $f5
	ld a, e                                          ; $6255: $7b
	add [hl]                                         ; $6256: $86
	ld a, a                                          ; $6257: $7f
	ld [hl], b                                       ; $6258: $70
	add [hl]                                         ; $6259: $86
	rst $38                                          ; $625a: $ff
	adc l                                            ; $625b: $8d
	db $fc                                           ; $625c: $fc
	and h                                            ; $625d: $a4
	adc h                                            ; $625e: $8c
	jr nz, jr_03a_61ed                               ; $625f: $20 $8c

	inc b                                            ; $6261: $04
	adc h                                            ; $6262: $8c
	jr z, jr_03a_6267                                ; $6263: $28 $02

	ld h, b                                          ; $6265: $60
	ld [bc], a                                       ; $6266: $02

jr_03a_6267:
	ld h, [hl]                                       ; $6267: $66
	nop                                              ; $6268: $00
	ld a, a                                          ; $6269: $7f
	db $fc                                           ; $626a: $fc
	cp a                                             ; $626b: $bf
	ld a, h                                          ; $626c: $7c
	cp a                                             ; $626d: $bf
	ld a, h                                          ; $626e: $7c
	cpl                                              ; $626f: $2f
	ld a, h                                          ; $6270: $7c
	rst $38                                          ; $6271: $ff
	ld a, h                                          ; $6272: $7c
	ld l, a                                          ; $6273: $6f
	jr nz, jr_03a_61f6                               ; $6274: $20 $80

	sbc $a1                                          ; $6276: $de $a1
	ld a, h                                          ; $6278: $7c
	cp $fc                                           ; $6279: $fe $fc
	db $fc                                           ; $627b: $fc
	ld hl, sp-$34                                    ; $627c: $f8 $cc
	pop af                                           ; $627e: $f1
	ret z                                            ; $627f: $c8

	ldh a, [$08]                                     ; $6280: $f0 $08
	nop                                              ; $6282: $00
	ld [$00bc], sp                                   ; $6283: $08 $bc $00
	db $10                                           ; $6286: $10
	pop bc                                           ; $6287: $c1
	sub c                                            ; $6288: $91
	ld b, b                                          ; $6289: $40
	add e                                            ; $628a: $83
	ld h, b                                          ; $628b: $60
	ld b, a                                          ; $628c: $47
	and b                                            ; $628d: $a0
	inc h                                            ; $628e: $24
	ld b, e                                          ; $628f: $43
	ld b, b                                          ; $6290: $40
	rlca                                             ; $6291: $07
	reti                                             ; $6292: $d9


	ld b, $12                                        ; $6293: $06 $12
	add d                                            ; $6295: $82
	db $e4                                           ; $6296: $e4
	cp $ff                                           ; $6297: $fe $ff
	ld a, [hl]                                       ; $6299: $7e
	rst $38                                          ; $629a: $ff
	db $e3                                           ; $629b: $e3
	ld a, [hl]                                       ; $629c: $7e
	cp [hl]                                          ; $629d: $be
	ld a, a                                          ; $629e: $7f
	cp $3f                                           ; $629f: $fe $3f
	rst $38                                          ; $62a1: $ff
	ccf                                              ; $62a2: $3f
	ld b, c                                          ; $62a3: $41
	ld a, $20                                        ; $62a4: $3e $20
	ld b, b                                          ; $62a6: $40
	ld e, d                                          ; $62a7: $5a
	ld bc, $7b9f                                     ; $62a8: $01 $9f $7b
	db $fd                                           ; $62ab: $fd
	ei                                               ; $62ac: $fb

jr_03a_62ad:
	rst $38                                          ; $62ad: $ff
	ei                                               ; $62ae: $fb
	add hl, bc                                       ; $62af: $09
	di                                               ; $62b0: $f3
	rst $38                                          ; $62b1: $ff
	ei                                               ; $62b2: $fb
	ld [hl], a                                       ; $62b3: $77
	cp [hl]                                          ; $62b4: $be
	sub b                                            ; $62b5: $90
	inc bc                                           ; $62b6: $03
	db $fc                                           ; $62b7: $fc
	rst $38                                          ; $62b8: $ff
	rst $38                                          ; $62b9: $ff
	ld e, a                                          ; $62ba: $5f
	rst $38                                          ; $62bb: $ff
	inc a                                            ; $62bc: $3c
	ld hl, sp-$08                                    ; $62bd: $f8 $f8
	ldh a, [$fb]                                     ; $62bf: $f0 $fb
	pop af                                           ; $62c1: $f1
	rst $38                                          ; $62c2: $ff
	nop                                              ; $62c3: $00
	inc bc                                           ; $62c4: $03
	ld [hl], a                                       ; $62c5: $77
	adc l                                            ; $62c6: $8d
	ld a, e                                          ; $62c7: $7b
	inc h                                            ; $62c8: $24
	sub e                                            ; $62c9: $93
	ld a, l                                          ; $62ca: $7d
	inc bc                                           ; $62cb: $03
	add d                                            ; $62cc: $82

Call_03a_62cd:
	dec b                                            ; $62cd: $05
	cp $fd                                           ; $62ce: $fe $fd
	nop                                              ; $62d0: $00
	rst $38                                          ; $62d1: $ff
	db $fc                                           ; $62d2: $fc
	db $fc                                           ; $62d3: $fc
	ld bc, $7afe                                     ; $62d4: $01 $fe $7a
	ld l, l                                          ; $62d7: $6d
	rst SubAFromDE                                          ; $62d8: $df
	rst $38                                          ; $62d9: $ff
	ld a, [hl]                                       ; $62da: $7e
	jp nz, $819e                                     ; $62db: $c2 $9e $81

	ld [hl], a                                       ; $62de: $77
	ld a, [$95ff]                                    ; $62df: $fa $ff $95
	sub b                                            ; $62e2: $90
	rrca                                             ; $62e3: $0f
	cp $be                                           ; $62e4: $fe $be
	ld l, h                                          ; $62e6: $6c
	ldh a, [c]                                       ; $62e7: $f2
	call c, $d862                                    ; $62e8: $dc $62 $d8
	ld h, [hl]                                       ; $62eb: $66
	sbc $fe                                          ; $62ec: $de $fe
	add b                                            ; $62ee: $80
	ld [bc], a                                       ; $62ef: $02
	rlca                                             ; $62f0: $07
	ld bc, $00e3                                     ; $62f1: $01 $e3 $00
	ld [hl], a                                       ; $62f4: $77
	add b                                            ; $62f5: $80
	ld a, e                                          ; $62f6: $7b
	add h                                            ; $62f7: $84
	xor [hl]                                         ; $62f8: $ae
	ret c                                            ; $62f9: $d8

	call nz, $874c                                   ; $62fa: $c4 $4c $87
	rrca                                             ; $62fd: $0f
	rlca                                             ; $62fe: $07
	sbc a                                            ; $62ff: $9f
	rlca                                             ; $6300: $07
	cp a                                             ; $6301: $bf
	inc e                                            ; $6302: $1c
	ld sp, hl                                        ; $6303: $f9
	inc c                                            ; $6304: $0c
	ld a, c                                          ; $6305: $79
	inc c                                            ; $6306: $0c
	ld a, c                                          ; $6307: $79
	dec c                                            ; $6308: $0d
	ld a, c                                          ; $6309: $79
	ld a, h                                          ; $630a: $7c
	ld a, l                                          ; $630b: $7d
	inc b                                            ; $630c: $04
	ld a, l                                          ; $630d: $7d
	sub [hl]                                         ; $630e: $96
	ld e, $22                                        ; $630f: $1e $22
	ld de, $a721                                     ; $6311: $11 $21 $a7
	rst $38                                          ; $6314: $ff
	add l                                            ; $6315: $85
	rst $38                                          ; $6316: $ff
	add c                                            ; $6317: $81
	ld a, e                                          ; $6318: $7b
	cp $9b                                           ; $6319: $fe $9b
	ld [bc], a                                       ; $631b: $02
	db $fd                                           ; $631c: $fd
	ld [bc], a                                       ; $631d: $02
	db $fd                                           ; $631e: $fd
	db $fd                                           ; $631f: $fd
	add b                                            ; $6320: $80
	or e                                             ; $6321: $b3
	cp $b3                                           ; $6322: $fe $b3
	db $fd                                           ; $6324: $fd
	or e                                             ; $6325: $b3
	db $fd                                           ; $6326: $fd
	add hl, sp                                       ; $6327: $39
	rst FarCall                                          ; $6328: $f7
	add hl, sp                                       ; $6329: $39
	rst FarCall                                          ; $632a: $f7
	ccf                                              ; $632b: $3f
	pop af                                           ; $632c: $f1
	rla                                              ; $632d: $17
	inc bc                                           ; $632e: $03
	rra                                              ; $632f: $1f
	inc bc                                           ; $6330: $03
	ld sp, hl                                        ; $6331: $f9
	rst $38                                          ; $6332: $ff
	ld sp, hl                                        ; $6333: $f9
	rst $38                                          ; $6334: $ff
	db $fd                                           ; $6335: $fd
	rst $38                                          ; $6336: $ff
	call c, $feff                                    ; $6337: $dc $ff $fe
	rst SubAFromDE                                          ; $633a: $df
	xor $cf                                          ; $633b: $ee $cf
	rst $38                                          ; $633d: $ff
	rst JumpTable                                          ; $633e: $c7
	di                                               ; $633f: $f3
	ld a, a                                          ; $6340: $7f
	or $9c                                           ; $6341: $f6 $9c
	ei                                               ; $6343: $fb
	ret nc                                           ; $6344: $d0

	rst $38                                          ; $6345: $ff
	ld l, e                                          ; $6346: $6b
	cp $9e                                           ; $6347: $fe $9e
	rrca                                             ; $6349: $0f
	ld a, d                                          ; $634a: $7a
	and $4a                                          ; $634b: $e6 $4a
	jp nz, $c076                                     ; $634d: $c2 $76 $c0

	rst SubAFromDE                                          ; $6350: $df
	rst $38                                          ; $6351: $ff
	sbc [hl]                                         ; $6352: $9e
	rst FarCall                                          ; $6353: $f7
	ld l, d                                          ; $6354: $6a
	cp d                                             ; $6355: $ba
	adc e                                            ; $6356: $8b
	ld b, a                                          ; $6357: $47
	cp a                                             ; $6358: $bf
	rra                                              ; $6359: $1f
	add a                                            ; $635a: $87
	rst $38                                          ; $635b: $ff
	nop                                              ; $635c: $00
	ei                                               ; $635d: $fb
	inc b                                            ; $635e: $04
	ei                                               ; $635f: $fb
	inc b                                            ; $6360: $04
	db $d3                                           ; $6361: $d3
	inc l                                            ; $6362: $2c
	pop bc                                           ; $6363: $c1
	ld a, $81                                        ; $6364: $3e $81
	ld a, [hl]                                       ; $6366: $7e
	add b                                            ; $6367: $80
	ld a, a                                          ; $6368: $7f
	add b                                            ; $6369: $80
	ld a, a                                          ; $636a: $7f
	ld a, d                                          ; $636b: $7a
	ld h, e                                          ; $636c: $63
	ld h, d                                          ; $636d: $62
	or h                                             ; $636e: $b4
	adc e                                            ; $636f: $8b
	rst $38                                          ; $6370: $ff
	ld bc, $03fe                                     ; $6371: $01 $fe $03
	add h                                            ; $6374: $84
	ld l, h                                          ; $6375: $6c
	call c, $3828                                    ; $6376: $dc $28 $38
	ret nc                                           ; $6379: $d0

	ldh a, [$a0]                                     ; $637a: $f0 $a0
	ldh [$c0], a                                     ; $637c: $e0 $c0
	ret nz                                           ; $637e: $c0

	add b                                            ; $637f: $80
	add b                                            ; $6380: $80
	nop                                              ; $6381: $00
	rst AddAOntoHL                                          ; $6382: $ef
	db $10                                           ; $6383: $10
	rst FarCall                                          ; $6384: $f7
	sub d                                            ; $6385: $92
	rlca                                             ; $6386: $07
	nop                                              ; $6387: $00
	ld [$f100], sp                                   ; $6388: $08 $00 $f1
	inc bc                                           ; $638b: $03
	ld [$0b07], sp                                   ; $638c: $08 $07 $0b
	ld b, $09                                        ; $638f: $06 $09
	ld b, $07                                        ; $6391: $06 $07
	ld [hl], l                                       ; $6393: $75
	add $71                                          ; $6394: $c6 $71
	jp nz, $3089                                     ; $6396: $c2 $89 $30

	add b                                            ; $6399: $80
	inc d                                            ; $639a: $14
	dec bc                                           ; $639b: $0b
	ld [$e1ff], sp                                   ; $639c: $08 $ff $e1
	ld e, $00                                        ; $639f: $1e $00
	nop                                              ; $63a1: $00
	ldh a, [rP1]                                     ; $63a2: $f0 $00
	jr jr_03a_63a6                                   ; $63a4: $18 $00

jr_03a_63a6:
	rst AddAOntoHL                                          ; $63a6: $ef
	ldh [rP1], a                                     ; $63a7: $e0 $00
	ldh [rAUD4LEN], a                                ; $63a9: $e0 $20
	ret nz                                           ; $63ab: $c0

	ld b, b                                          ; $63ac: $40
	add b                                            ; $63ad: $80
	ld sp, hl                                        ; $63ae: $f9
	ld l, [hl]                                       ; $63af: $6e
	adc h                                            ; $63b0: $8c
	ld e, a                                          ; $63b1: $5f
	cp l                                             ; $63b2: $bd
	adc h                                            ; $63b3: $8c
	ldh a, [c]                                       ; $63b4: $f2
	inc c                                            ; $63b5: $0c

jr_03a_63b6:
	ld [bc], a                                       ; $63b6: $02
	ld bc, $0303                                     ; $63b7: $01 $03 $03
	rlca                                             ; $63ba: $07
	inc bc                                           ; $63bb: $03
	ld [bc], a                                       ; $63bc: $02
	rlca                                             ; $63bd: $07
	ld b, $07                                        ; $63be: $06 $07
	rlca                                             ; $63c0: $07
	rrca                                             ; $63c1: $0f
	rlca                                             ; $63c2: $07
	rst $38                                          ; $63c3: $ff
	rlca                                             ; $63c4: $07
	rrca                                             ; $63c5: $0f
	cp $71                                           ; $63c6: $fe $71
	db $e4                                           ; $63c8: $e4
	ld a, [hl]                                       ; $63c9: $7e
	sbc l                                            ; $63ca: $9d
	sbc d                                            ; $63cb: $9a
	ld bc, $73fb                                     ; $63cc: $01 $fb $73
	add a                                            ; $63cf: $87
	rlca                                             ; $63d0: $07
	ld a, e                                          ; $63d1: $7b
	ld e, h                                          ; $63d2: $5c
	db $fd                                           ; $63d3: $fd
	rst SubAFromDE                                          ; $63d4: $df
	add b                                            ; $63d5: $80
	db $dd                                           ; $63d6: $dd
	ret nz                                           ; $63d7: $c0

	ld a, a                                          ; $63d8: $7f
	ld a, [hl]                                       ; $63d9: $7e
	ld a, a                                          ; $63da: $7f
	cp $9d                                           ; $63db: $fe $9d
	ld a, a                                          ; $63dd: $7f
	ret nz                                           ; $63de: $c0

	ld a, d                                          ; $63df: $7a
	sbc [hl]                                         ; $63e0: $9e
	or $7f                                           ; $63e1: $f6 $7f
	pop hl                                           ; $63e3: $e1
	sbc c                                            ; $63e4: $99
	add a                                            ; $63e5: $87
	ld a, a                                          ; $63e6: $7f
	jp $003b                                         ; $63e7: $c3 $3b $00


	nop                                              ; $63ea: $00
	ld [hl], l                                       ; $63eb: $75
	ld b, l                                          ; $63ec: $45
	sub a                                            ; $63ed: $97
	dec b                                            ; $63ee: $05
	nop                                              ; $63ef: $00
	add hl, bc                                       ; $63f0: $09
	ld bc, $03fb                                     ; $63f1: $01 $fb $03
	jr nz, jr_03a_63b6                               ; $63f4: $20 $c0

	ld h, a                                          ; $63f6: $67
	sbc b                                            ; $63f7: $98
	ld a, a                                          ; $63f8: $7f
	inc [hl]                                         ; $63f9: $34
	ld [hl], a                                       ; $63fa: $77
	dec [hl]                                         ; $63fb: $35
	ld [hl], h                                       ; $63fc: $74
	ldh [hDisp1_SCY], a                                     ; $63fd: $e0 $90
	dec l                                            ; $63ff: $2d
	ccf                                              ; $6400: $3f
	pop af                                           ; $6401: $f1
	rra                                              ; $6402: $1f
	add hl, bc                                       ; $6403: $09
	rrca                                             ; $6404: $0f
	rlca                                             ; $6405: $07
	rst SubAFromBC                                          ; $6406: $e7
	rst SubAFromBC                                          ; $6407: $e7
	or $27                                           ; $6408: $f6 $27
	rst FarCall                                          ; $640a: $f7
	ei                                               ; $640b: $fb
	rst $38                                          ; $640c: $ff
	db $eb                                           ; $640d: $eb
	ld a, d                                          ; $640e: $7a
	ld l, d                                          ; $640f: $6a
	ld a, l                                          ; $6410: $7d
	inc hl                                           ; $6411: $23
	sbc l                                            ; $6412: $9d
	rst SubAFromBC                                          ; $6413: $e7
	ld hl, sp-$22                                    ; $6414: $f8 $de
	rst $38                                          ; $6416: $ff
	sub h                                            ; $6417: $94
	ldh [rIE], a                                     ; $6418: $e0 $ff
	rst $38                                          ; $641a: $ff
	ei                                               ; $641b: $fb
	cp a                                             ; $641c: $bf
	rst JumpTable                                          ; $641d: $c7
	add b                                            ; $641e: $80
	ld a, a                                          ; $641f: $7f
	add hl, de                                       ; $6420: $19
	rst SubAFromDE                                          ; $6421: $df
	nop                                              ; $6422: $00
	ld a, e                                          ; $6423: $7b
	sub l                                            ; $6424: $95
	ld [hl], e                                       ; $6425: $73
	pop de                                           ; $6426: $d1
	ld a, [hl]                                       ; $6427: $7e
	adc $9e                                          ; $6428: $ce $9e
	inc a                                            ; $642a: $3c
	ld a, e                                          ; $642b: $7b
	db $fc                                           ; $642c: $fc
	sbc h                                            ; $642d: $9c
	add h                                            ; $642e: $84
	ld a, a                                          ; $642f: $7f
	db $fc                                           ; $6430: $fc
	ld a, e                                          ; $6431: $7b
	ld a, [$a87d]                                    ; $6432: $fa $7d $a8
	ld a, a                                          ; $6435: $7f
	halt                                             ; $6436: $76
	sbc [hl]                                         ; $6437: $9e
	ld [bc], a                                       ; $6438: $02
	ld a, e                                          ; $6439: $7b
	cp $5e                                           ; $643a: $fe $5e
	jp nz, $f47f                                     ; $643c: $c2 $7f $f4

	sbc l                                            ; $643f: $9d
	ld [hl], e                                       ; $6440: $73
	adc a                                            ; $6441: $8f
	ld l, [hl]                                       ; $6442: $6e
	cp h                                             ; $6443: $bc
	ld a, e                                          ; $6444: $7b
	xor b                                            ; $6445: $a8
	sbc d                                            ; $6446: $9a
	rst JumpTable                                          ; $6447: $c7
	ld a, a                                          ; $6448: $7f
	rst JumpTable                                          ; $6449: $c7
	ccf                                              ; $644a: $3f
	rst JumpTable                                          ; $644b: $c7
	ld e, [hl]                                       ; $644c: $5e
	db $d3                                           ; $644d: $d3
	ld l, a                                          ; $644e: $6f
	cp $7b                                           ; $644f: $fe $7b
	db $db                                           ; $6451: $db
	ld a, [hl]                                       ; $6452: $7e
	rrca                                             ; $6453: $0f
	ld a, a                                          ; $6454: $7f
	cp $5b                                           ; $6455: $fe $5b
	rst AddAOntoHL                                          ; $6457: $ef
	rst SubAFromDE                                          ; $6458: $df
	rst $38                                          ; $6459: $ff
	adc d                                            ; $645a: $8a
	cp h                                             ; $645b: $bc
	ret c                                            ; $645c: $d8

	ldh a, [hDisp1_SCY]                                     ; $645d: $f0 $90
	ldh a, [hDisp0_SCY]                                     ; $645f: $f0 $83
	rst SubAFromBC                                          ; $6461: $e7
	add a                                            ; $6462: $87
	adc a                                            ; $6463: $8f
	rst GetHLinHL                                          ; $6464: $cf
	rst SubAFromDE                                          ; $6465: $df
	adc a                                            ; $6466: $8f
	ld hl, sp-$0d                                    ; $6467: $f8 $f3
	ei                                               ; $6469: $fb
	ld [hl], e                                       ; $646a: $73
	ld a, e                                          ; $646b: $7b
	ld [bc], a                                       ; $646c: $02
	nop                                              ; $646d: $00
	nop                                              ; $646e: $00
	rra                                              ; $646f: $1f
	ld a, e                                          ; $6470: $7b
	add h                                            ; $6471: $84
	rst SubAFromDE                                          ; $6472: $df
	rst $38                                          ; $6473: $ff
	ld a, l                                          ; $6474: $7d
	db $10                                           ; $6475: $10
	ld a, l                                          ; $6476: $7d
	xor c                                            ; $6477: $a9
	ld l, l                                          ; $6478: $6d
	add sp, $77                                      ; $6479: $e8 $77
	ld d, d                                          ; $647b: $52
	ld [hl], a                                       ; $647c: $77
	ld a, a                                          ; $647d: $7f
	adc h                                            ; $647e: $8c
	ld hl, sp-$19                                    ; $647f: $f8 $e7
	rst FarCall                                          ; $6481: $f7
	rst AddAOntoHL                                          ; $6482: $ef
	ld [hl], a                                       ; $6483: $77
	rst AddAOntoHL                                          ; $6484: $ef
	scf                                              ; $6485: $37
	cpl                                              ; $6486: $2f
	or h                                             ; $6487: $b4
	rrca                                             ; $6488: $0f
	call nc, $d48f                                   ; $6489: $d4 $8f $d4
	rst GetHLinHL                                          ; $648c: $cf
	rst SubAFromHL                                          ; $648d: $d7
	rst GetHLinHL                                          ; $648e: $cf
	add b                                            ; $648f: $80
	rst $38                                          ; $6490: $ff
	add b                                            ; $6491: $80
	call c, $67ff                                    ; $6492: $dc $ff $67
	or e                                             ; $6495: $b3
	adc a                                            ; $6496: $8f
	nop                                              ; $6497: $00
	ld hl, sp+$00                                    ; $6498: $f8 $00
	di                                               ; $649a: $f3
	pop af                                           ; $649b: $f1
	rst FarCall                                          ; $649c: $f7
	ldh a, [c]                                       ; $649d: $f2
	rst FarCall                                          ; $649e: $f7
	inc b                                            ; $649f: $04
	ldh a, [c]                                       ; $64a0: $f2
	inc b                                            ; $64a1: $04
	ldh a, [rTIMA]                                   ; $64a2: $f0 $05
	pop af                                           ; $64a4: $f1
	di                                               ; $64a5: $f3
	pop af                                           ; $64a6: $f1
	sbc $07                                          ; $64a7: $de $07
	sbc $ff                                          ; $64a9: $de $ff
	rst SubAFromDE                                          ; $64ab: $df
	inc bc                                           ; $64ac: $03
	rst SubAFromDE                                          ; $64ad: $df
	ld bc, $1f9a                                     ; $64ae: $01 $9a $1f
	ld h, b                                          ; $64b1: $60
	rst $38                                          ; $64b2: $ff
	ld e, $fd                                        ; $64b3: $1e $fd
	ld [hl], e                                       ; $64b5: $73
	or c                                             ; $64b6: $b1
	ld l, h                                          ; $64b7: $6c
	and b                                            ; $64b8: $a0
	db $dd                                           ; $64b9: $dd
	rst $38                                          ; $64ba: $ff
	sub a                                            ; $64bb: $97
	ld b, l                                          ; $64bc: $45
	cp e                                             ; $64bd: $bb
	rst $38                                          ; $64be: $ff
	rst $38                                          ; $64bf: $ff
	ret nz                                           ; $64c0: $c0

	rst $38                                          ; $64c1: $ff
	ret nz                                           ; $64c2: $c0

	cp a                                             ; $64c3: $bf
	sbc $9f                                          ; $64c4: $de $9f
	sbc b                                            ; $64c6: $98
	rst SubAFromDE                                          ; $64c7: $df
	ret nz                                           ; $64c8: $c0

	rst SubAFromDE                                          ; $64c9: $df
	ldh [$df], a                                     ; $64ca: $e0 $df
	ccf                                              ; $64cc: $3f
	rst GetHLinHL                                          ; $64cd: $cf
	ld [hl], a                                       ; $64ce: $77
	cp l                                             ; $64cf: $bd
	ld [hl], l                                       ; $64d0: $75
	ld c, h                                          ; $64d1: $4c
	ld l, a                                          ; $64d2: $6f
	xor [hl]                                         ; $64d3: $ae
	rst SubAFromDE                                          ; $64d4: $df
	rst $38                                          ; $64d5: $ff
	adc [hl]                                         ; $64d6: $8e
	or $f3                                           ; $64d7: $f6 $f3
	or $03                                           ; $64d9: $f6 $03
	ldh [c], a                                       ; $64db: $e2
	rla                                              ; $64dc: $17
	rst AddAOntoHL                                          ; $64dd: $ef
	rst SubAFromBC                                          ; $64de: $e7
	rst AddAOntoHL                                          ; $64df: $ef
	and $9f                                          ; $64e0: $e6 $9f
	db $e4                                           ; $64e2: $e4
	sbc [hl]                                         ; $64e3: $9e
	db $e4                                           ; $64e4: $e4
	or $ec                                           ; $64e5: $f6 $ec
	nop                                              ; $64e7: $00
	ld a, e                                          ; $64e8: $7b
	ld l, [hl]                                       ; $64e9: $6e
	adc d                                            ; $64ea: $8a
	ld a, h                                          ; $64eb: $7c
	add b                                            ; $64ec: $80
	nop                                              ; $64ed: $00
	ret nz                                           ; $64ee: $c0

	rlca                                             ; $64ef: $07
	nop                                              ; $64f0: $00
	dec hl                                           ; $64f1: $2b
	rla                                              ; $64f2: $17
	ld e, a                                          ; $64f3: $5f
	ccf                                              ; $64f4: $3f
	ld hl, sp+$7f                                    ; $64f5: $f8 $7f
	ccf                                              ; $64f7: $3f
	rst SubAFromBC                                          ; $64f8: $e7
	ldh [$f0], a                                     ; $64f9: $e0 $f0
	nop                                              ; $64fb: $00
	nop                                              ; $64fc: $00
	inc hl                                           ; $64fd: $23
	rra                                              ; $64fe: $1f
	ccf                                              ; $64ff: $3f
	ld a, e                                          ; $6500: $7b
	ld d, h                                          ; $6501: $54
	ld [hl], a                                       ; $6502: $77
	adc $92                                          ; $6503: $ce $92
	db $fc                                           ; $6505: $fc
	di                                               ; $6506: $f3
	rrca                                             ; $6507: $0f
	ld [$0467], sp                                   ; $6508: $08 $67 $04
	push af                                          ; $650b: $f5
	ldh [c], a                                       ; $650c: $e2
	ei                                               ; $650d: $fb
	ldh a, [c]                                       ; $650e: $f2
	dec de                                           ; $650f: $1b
	cp $0b                                           ; $6510: $fe $0b
	ld a, e                                          ; $6512: $7b
	cp $9e                                           ; $6513: $fe $9e
	cp a                                             ; $6515: $bf
	ld a, d                                          ; $6516: $7a
	ld l, h                                          ; $6517: $6c
	sub c                                            ; $6518: $91
	rst $38                                          ; $6519: $ff
	jr nz, @+$01                                     ; $651a: $20 $ff

	db $10                                           ; $651c: $10
	ld [$fdff], sp                                   ; $651d: $08 $ff $fd
	ld b, $ff                                        ; $6520: $06 $ff
	inc bc                                           ; $6522: $03
	cp $01                                           ; $6523: $fe $01
	ei                                               ; $6525: $fb
	rlca                                             ; $6526: $07
	ld a, c                                          ; $6527: $79
	rrca                                             ; $6528: $0f
	halt                                             ; $6529: $76
	add b                                            ; $652a: $80
	ld l, a                                          ; $652b: $6f
	sbc a                                            ; $652c: $9f
	sub d                                            ; $652d: $92
	add b                                            ; $652e: $80
	inc bc                                           ; $652f: $03
	rst $38                                          ; $6530: $ff
	add e                                            ; $6531: $83
	rst $38                                          ; $6532: $ff
	and e                                            ; $6533: $a3
	ld a, a                                          ; $6534: $7f
	db $d3                                           ; $6535: $d3
	ccf                                              ; $6536: $3f
	dec bc                                           ; $6537: $0b
	rst $38                                          ; $6538: $ff
	rst $38                                          ; $6539: $ff
	rlca                                             ; $653a: $07
	ld [hl], h                                       ; $653b: $74
	ld e, b                                          ; $653c: $58
	ld a, a                                          ; $653d: $7f
	ld d, d                                          ; $653e: $52
	sbc l                                            ; $653f: $9d
	ld [hl], a                                       ; $6540: $77
	rst $38                                          ; $6541: $ff
	ld a, d                                          ; $6542: $7a
	jr @-$22                                         ; $6543: $18 $dc

	rst $38                                          ; $6545: $ff
	ld a, a                                          ; $6546: $7f
	xor h                                            ; $6547: $ac
	ld a, h                                          ; $6548: $7c
	ld a, [hl-]                                      ; $6549: $3a
	ld b, [hl]                                       ; $654a: $46
	ret nz                                           ; $654b: $c0

	ld a, a                                          ; $654c: $7f
	cp $9e                                           ; $654d: $fe $9e
	ld b, c                                          ; $654f: $41
	ld l, a                                          ; $6550: $6f
	db $10                                           ; $6551: $10
	ld a, [$cf97]                                    ; $6552: $fa $97 $cf
	sbc a                                            ; $6555: $9f
	rst GetHLinHL                                          ; $6556: $cf
	sbc a                                            ; $6557: $9f
	rst SubAFromDE                                          ; $6558: $df
	sbc a                                            ; $6559: $9f
	rst AddAOntoHL                                          ; $655a: $ef
	sbc a                                            ; $655b: $9f
	ld e, d                                          ; $655c: $5a
	dec c                                            ; $655d: $0d
	ld a, e                                          ; $655e: $7b
	ld l, $5f                                        ; $655f: $2e $5f
	ldh [rPCM34], a                                  ; $6561: $e0 $77
	ldh a, [rPCM34]                                  ; $6563: $f0 $77
	or d                                             ; $6565: $b2
	ld sp, hl                                        ; $6566: $f9
	sbc l                                            ; $6567: $9d
	adc a                                            ; $6568: $8f
	rst SubAFromDE                                          ; $6569: $df
	ld [hl], a                                       ; $656a: $77
	cp $9d                                           ; $656b: $fe $9d
	rst AddAOntoHL                                          ; $656d: $ef
	rst SubAFromDE                                          ; $656e: $df
	ld h, e                                          ; $656f: $63
	pop hl                                           ; $6570: $e1
	jp c, $f9ff                                      ; $6571: $da $ff $f9

	sbc c                                            ; $6574: $99
	rst FarCall                                          ; $6575: $f7
	pop af                                           ; $6576: $f1
	push af                                          ; $6577: $f5
	di                                               ; $6578: $f3
	push af                                          ; $6579: $f5
	di                                               ; $657a: $f3
	ld [hl], a                                       ; $657b: $77
	ldh a, [$de]                                     ; $657c: $f0 $de
	ld bc, $f67e                                     ; $657e: $01 $7e $f6
	sub [hl]                                         ; $6581: $96
	ld [bc], a                                       ; $6582: $02
	jp z, $f3fc                                      ; $6583: $ca $fc $f3

	db $fc                                           ; $6586: $fc
	call z, $f0f3                                    ; $6587: $cc $f3 $f0
	add b                                            ; $658a: $80
	ld a, c                                          ; $658b: $79
	ld e, h                                          ; $658c: $5c
	ld [hl], a                                       ; $658d: $77
	cp $98                                           ; $658e: $fe $98
	nop                                              ; $6590: $00
	ld [bc], a                                       ; $6591: $02
	ld bc, $0301                                     ; $6592: $01 $01 $03
	ld e, b                                          ; $6595: $58
	cp a                                             ; $6596: $bf
	rst FarCall                                          ; $6597: $f7
	ld a, a                                          ; $6598: $7f
	add l                                            ; $6599: $85
	rst SubAFromDE                                          ; $659a: $df
	rst $38                                          ; $659b: $ff
	sub h                                            ; $659c: $94
	sbc a                                            ; $659d: $9f
	rst $38                                          ; $659e: $ff
	rst FarCall                                          ; $659f: $f7
	rrca                                             ; $65a0: $0f
	ld a, [bc]                                       ; $65a1: $0a
	ld b, $06                                        ; $65a2: $06 $06
	inc bc                                           ; $65a4: $03
	dec b                                            ; $65a5: $05
	inc bc                                           ; $65a6: $03
	ld bc, $0366                                     ; $65a7: $01 $66 $03
	ld h, e                                          ; $65aa: $63
	or b                                             ; $65ab: $b0
	sbc c                                            ; $65ac: $99
	ld e, [hl]                                       ; $65ad: $5e
	db $ec                                           ; $65ae: $ec
	sbc $ec                                          ; $65af: $de $ec
	cp $cc                                           ; $65b1: $fe $cc
	ld e, a                                          ; $65b3: $5f
	ldh a, [$7e]                                     ; $65b4: $f0 $7e
	add hl, hl                                       ; $65b6: $29
	ld a, d                                          ; $65b7: $7a
	sub b                                            ; $65b8: $90
	ld c, e                                          ; $65b9: $4b
	ld h, b                                          ; $65ba: $60
	ld [hl], d                                       ; $65bb: $72
	ld c, b                                          ; $65bc: $48
	ld a, [$0f9d]                                    ; $65bd: $fa $9d $0f
	ld a, [$fe77]                                    ; $65c0: $fa $77 $fe
	ld e, a                                          ; $65c3: $5f
	ldh a, [rOCPS]                                   ; $65c4: $f0 $6a
	sub $9b                                          ; $65c6: $d6 $9b
	ld hl, sp+$07                                    ; $65c8: $f8 $07
	inc b                                            ; $65ca: $04
	ld [bc], a                                       ; $65cb: $02
	ld a, d                                          ; $65cc: $7a
	inc a                                            ; $65cd: $3c
	ld a, e                                          ; $65ce: $7b
	di                                               ; $65cf: $f3
	sub l                                            ; $65d0: $95
	ld b, b                                          ; $65d1: $40
	jr nz, @+$01                                     ; $65d2: $20 $ff

	rst $38                                          ; $65d4: $ff
	db $10                                           ; $65d5: $10
	ei                                               ; $65d6: $fb
	inc c                                            ; $65d7: $0c
	rst $38                                          ; $65d8: $ff
	ld b, $fd                                        ; $65d9: $06 $fd
	ld a, d                                          ; $65db: $7a
	jp nc, $037a                                     ; $65dc: $d2 $7a $03

	ld h, [hl]                                       ; $65df: $66
	or [hl]                                          ; $65e0: $b6
	ld [hl], d                                       ; $65e1: $72
	or d                                             ; $65e2: $b2
	ld a, a                                          ; $65e3: $7f
	ldh [c], a                                       ; $65e4: $e2
	ld a, a                                          ; $65e5: $7f
	inc de                                           ; $65e6: $13
	ld a, e                                          ; $65e7: $7b
	ld a, l                                          ; $65e8: $7d
	ld [hl], l                                       ; $65e9: $75
	sbc [hl]                                         ; $65ea: $9e
	ld l, c                                          ; $65eb: $69
	sbc h                                            ; $65ec: $9c
	ld e, a                                          ; $65ed: $5f
	push hl                                          ; $65ee: $e5
	ld a, a                                          ; $65ef: $7f
	adc d                                            ; $65f0: $8a
	sbc e                                            ; $65f1: $9b
	ldh a, [$7f]                                     ; $65f2: $f0 $7f
	db $fc                                           ; $65f4: $fc
	rra                                              ; $65f5: $1f
	ldh [$a1], a                                     ; $65f6: $e0 $a1
	ld a, [hl]                                       ; $65f8: $7e
	adc $78                                          ; $65f9: $ce $78
	ld d, e                                          ; $65fb: $53
	ld a, a                                          ; $65fc: $7f
	cp $96                                           ; $65fd: $fe $96
	dec b                                            ; $65ff: $05
	rlca                                             ; $6600: $07
	dec b                                            ; $6601: $05
	rrca                                             ; $6602: $0f
	dec b                                            ; $6603: $05
	rrca                                             ; $6604: $0f
	rrca                                             ; $6605: $0f
	rlca                                             ; $6606: $07
	rlca                                             ; $6607: $07
	ld l, [hl]                                       ; $6608: $6e
	ret                                              ; $6609: $c9


	sub l                                            ; $660a: $95
	pop bc                                           ; $660b: $c1
	nop                                              ; $660c: $00
	and d                                            ; $660d: $a2
	ld b, b                                          ; $660e: $40
	add d                                            ; $660f: $82
	ld h, b                                          ; $6610: $60
	and h                                            ; $6611: $a4
	ld [hl], d                                       ; $6612: $72
	or b                                             ; $6613: $b0
	ld a, [hl]                                       ; $6614: $7e
	db $fd                                           ; $6615: $fd
	sbc [hl]                                         ; $6616: $9e
	ld [$fe73], sp                                   ; $6617: $08 $73 $fe
	sbc [hl]                                         ; $661a: $9e
	db $10                                           ; $661b: $10
	ld a, e                                          ; $661c: $7b
	cp $80                                           ; $661d: $fe $80
	jr z, jr_03a_6631                                ; $661f: $28 $10

	inc b                                            ; $6621: $04
	inc bc                                           ; $6622: $03
	ld [$0207], sp                                   ; $6623: $08 $07 $02
	dec c                                            ; $6626: $0d
	ld d, $09                                        ; $6627: $16 $09
	inc de                                           ; $6629: $13
	ld [$182c], sp                                   ; $662a: $08 $2c $18
	ld c, b                                          ; $662d: $48
	inc a                                            ; $662e: $3c
	ld e, b                                          ; $662f: $58
	inc a                                            ; $6630: $3c

jr_03a_6631:
	add b                                            ; $6631: $80
	add b                                            ; $6632: $80
	ld b, b                                          ; $6633: $40
	ret nz                                           ; $6634: $c0

	nop                                              ; $6635: $00
	ret nz                                           ; $6636: $c0

	jr nz, jr_03a_6699                               ; $6637: $20 $60

	add b                                            ; $6639: $80
	jr nz, jr_03a_667c                               ; $663a: $20 $40

	add b                                            ; $663c: $80
	sub b                                            ; $663d: $90
	sbc h                                            ; $663e: $9c
	ld [hl], b                                       ; $663f: $70
	ldh a, [$30]                                     ; $6640: $f0 $30
	ldh [$b1], a                                     ; $6642: $e0 $b1
	sub l                                            ; $6644: $95
	ld e, a                                          ; $6645: $5f
	ld h, b                                          ; $6646: $60
	jr nz, jr_03a_6688                               ; $6647: $20 $3f

	rla                                              ; $6649: $17
	jr jr_03a_6657                                   ; $664a: $18 $0b

	inc c                                            ; $664c: $0c
	dec b                                            ; $664d: $05
	ld b, $6a                                        ; $664e: $06 $6a
	or b                                             ; $6650: $b0
	sbc h                                            ; $6651: $9c
	jr nz, jr_03a_6664                               ; $6652: $20 $10

	rst $38                                          ; $6654: $ff
	ld h, d                                          ; $6655: $62
	or d                                             ; $6656: $b2

jr_03a_6657:
	ld c, [hl]                                       ; $6657: $4e
	or b                                             ; $6658: $b0
	halt                                             ; $6659: $76
	or d                                             ; $665a: $b2
	ld a, [hl]                                       ; $665b: $7e
	sub e                                            ; $665c: $93
	ld a, a                                          ; $665d: $7f
	inc a                                            ; $665e: $3c
	sbc h                                            ; $665f: $9c
	rst $38                                          ; $6660: $ff
	pop af                                           ; $6661: $f1
	rrca                                             ; $6662: $0f
	ld [hl], l                                       ; $6663: $75

jr_03a_6664:
	ld h, [hl]                                       ; $6664: $66
	ld l, a                                          ; $6665: $6f
	cp $2d                                           ; $6666: $fe $2d
	nop                                              ; $6668: $00
	rst SubAFromDE                                          ; $6669: $df
	ld [hl], a                                       ; $666a: $77
	sbc c                                            ; $666b: $99
	ld [hl], l                                       ; $666c: $75
	ld h, [hl]                                       ; $666d: $66
	ld h, [hl]                                       ; $666e: $66
	ld d, l                                          ; $666f: $55
	ld h, [hl]                                       ; $6670: $66
	ld [hl], a                                       ; $6671: $77
	db $dd                                           ; $6672: $dd
	ld h, [hl]                                       ; $6673: $66
	ld a, a                                          ; $6674: $7f
	ei                                               ; $6675: $fb
	sbc c                                            ; $6676: $99
	halt                                             ; $6677: $76
	ld h, a                                          ; $6678: $67
	halt                                             ; $6679: $76
	ld [hl], a                                       ; $667a: $77
	ld h, [hl]                                       ; $667b: $66

jr_03a_667c:
	ld d, [hl]                                       ; $667c: $56
	sbc $66                                          ; $667d: $de $66
	rst SubAFromDE                                          ; $667f: $df
	ld d, l                                          ; $6680: $55
	ret c                                            ; $6681: $d8

	ld h, [hl]                                       ; $6682: $66
	sbc [hl]                                         ; $6683: $9e
	ld d, a                                          ; $6684: $57
	reti                                             ; $6685: $d9


	ld h, [hl]                                       ; $6686: $66
	sbc [hl]                                         ; $6687: $9e

jr_03a_6688:
	ld h, a                                          ; $6688: $67
	ld [hl], e                                       ; $6689: $73
	db $db                                           ; $668a: $db
	ld [hl], e                                       ; $668b: $73
	or $99                                           ; $668c: $f6 $99
	ld h, a                                          ; $668e: $67
	ld h, [hl]                                       ; $668f: $66
	ld h, l                                          ; $6690: $65
	ld h, h                                          ; $6691: $64
	ld h, [hl]                                       ; $6692: $66
	ld h, [hl]                                       ; $6693: $66
	xor a                                            ; $6694: $af
	ld bc, $95f9                                     ; $6695: $01 $f9 $95
	ret nz                                           ; $6698: $c0

jr_03a_6699:
	nop                                              ; $6699: $00
	ldh a, [$60]                                     ; $669a: $f0 $60
	ld a, h                                          ; $669c: $7c
	jr c, jr_03a_66be                                ; $669d: $38 $1f

	ld c, $7d                                        ; $669f: $0e $7d
	rlca                                             ; $66a1: $07
	ld [hl], a                                       ; $66a2: $77
	cp $9e                                           ; $66a3: $fe $9e
	dec a                                            ; $66a5: $3d
	ld a, e                                          ; $66a6: $7b
	cp $9e                                           ; $66a7: $fe $9e
	dec e                                            ; $66a9: $1d
	ld a, e                                          ; $66aa: $7b
	cp $7f                                           ; $66ab: $fe $7f
	ld a, [$1399]                                    ; $66ad: $fa $99 $13
	pop hl                                           ; $66b0: $e1
	inc de                                           ; $66b1: $13
	pop hl                                           ; $66b2: $e1
	ld de, $67e3                                     ; $66b3: $11 $e3 $67
	cp $9b                                           ; $66b6: $fe $9b

Jump_03a_66b8:
	ld bc, $14e3                                     ; $66b8: $01 $e3 $14
	ld [$fe4f], sp                                   ; $66bb: $08 $4f $fe

jr_03a_66be:
	sbc c                                            ; $66be: $99
	inc b                                            ; $66bf: $04
	inc bc                                           ; $66c0: $03
	inc b                                            ; $66c1: $04
	inc bc                                           ; $66c2: $03
	ld [bc], a                                       ; $66c3: $02
	ld bc, $fe77                                     ; $66c4: $01 $77 $fe
	sbc h                                            ; $66c7: $9c
	ld bc, $0100                                     ; $66c8: $01 $00 $01
	db $fd                                           ; $66cb: $fd
	sbc [hl]                                         ; $66cc: $9e
	rst $38                                          ; $66cd: $ff
	ld d, a                                          ; $66ce: $57
	cp $9b                                           ; $66cf: $fe $9b
	add b                                            ; $66d1: $80
	ld a, a                                          ; $66d2: $7f
	ld c, e                                          ; $66d3: $4b
	sbc h                                            ; $66d4: $9c
	ld h, a                                          ; $66d5: $67
	cp $9d                                           ; $66d6: $fe $9d
	ld c, a                                          ; $66d8: $4f
	sbc b                                            ; $66d9: $98
	ld [hl], a                                       ; $66da: $77
	cp $53                                           ; $66db: $fe $53
	pop hl                                           ; $66dd: $e1
	dec sp                                           ; $66de: $3b
	cp $9e                                           ; $66df: $fe $9e
	ldh [$7b], a                                     ; $66e1: $e0 $7b
	cp $9d                                           ; $66e3: $fe $9d
	db $ec                                           ; $66e5: $ec
	ld bc, $fc6f                                     ; $66e6: $01 $6f $fc
	sbc [hl]                                         ; $66e9: $9e

jr_03a_66ea:
	db $ed                                           ; $66ea: $ed
	ld a, e                                          ; $66eb: $7b
	db $f4                                           ; $66ec: $f4
	ld a, e                                          ; $66ed: $7b
	xor e                                            ; $66ee: $ab
	sbc h                                            ; $66ef: $9c
	ld bc, $9124                                     ; $66f0: $01 $24 $91
	ld e, a                                          ; $66f3: $5f
	db $fc                                           ; $66f4: $fc
	sbc e                                            ; $66f5: $9b
	rst AddAOntoHL                                          ; $66f6: $ef
	rra                                              ; $66f7: $1f
	rst $38                                          ; $66f8: $ff
	rrca                                             ; $66f9: $0f
	ld [hl], a                                       ; $66fa: $77
	db $fc                                           ; $66fb: $fc
	ld h, e                                          ; $66fc: $63
	cp $03                                           ; $66fd: $fe $03
	rst $38                                          ; $66ff: $ff
	inc bc                                           ; $6700: $03
	rst $38                                          ; $6701: $ff
	inc bc                                           ; $6702: $03
	rst $38                                          ; $6703: $ff
	push bc                                          ; $6704: $c5
	rst $38                                          ; $6705: $ff
	sbc [hl]                                         ; $6706: $9e
	inc bc                                           ; $6707: $03
	ld a, e                                          ; $6708: $7b
	ld [$7ef5], sp                                   ; $6709: $08 $f5 $7e
	adc $9e                                          ; $670c: $ce $9e
	dec [hl]                                         ; $670e: $35
	ld a, e                                          ; $670f: $7b
	cp $9c                                           ; $6710: $fe $9c
	dec h                                            ; $6712: $25
	rlca                                             ; $6713: $07
	dec l                                            ; $6714: $2d
	ld l, e                                          ; $6715: $6b
	cp $97                                           ; $6716: $fe $97
	ld [bc], a                                       ; $6718: $02
	pop hl                                           ; $6719: $e1
	nop                                              ; $671a: $00
	db $e3                                           ; $671b: $e3
	nop                                              ; $671c: $00
	db $e3                                           ; $671d: $e3
	ld [bc], a                                       ; $671e: $02
	pop hl                                           ; $671f: $e1
	ld [hl], a                                       ; $6720: $77
	ld hl, sp-$68                                    ; $6721: $f8 $98
	jr nz, @-$3b                                     ; $6723: $20 $c3

	jr nz, jr_03a_66ea                               ; $6725: $20 $c3

	inc d                                            ; $6727: $14
	ld [$7b34], sp                                   ; $6728: $08 $34 $7b
	cp $9d                                           ; $672b: $fe $9d
	inc b                                            ; $672d: $04
	jr jr_03a_67aa                                   ; $672e: $18 $7a

	add $9e                                          ; $6730: $c6 $9e
	jr @+$79                                         ; $6732: $18 $77

	cp $f1                                           ; $6734: $fe $f1
	ld a, [hl]                                       ; $6736: $7e
	adc $9d                                          ; $6737: $ce $9d
	ld b, b                                          ; $6739: $40
	ccf                                              ; $673a: $3f
	ld [hl], a                                       ; $673b: $77
	cp $92                                           ; $673c: $fe $92
	jr nz, jr_03a_675f                               ; $673e: $20 $1f

	jr nz, jr_03a_6761                               ; $6740: $20 $1f

	db $10                                           ; $6742: $10
	rrca                                             ; $6743: $0f
	db $10                                           ; $6744: $10
	rrca                                             ; $6745: $0f
	ld c, [hl]                                       ; $6746: $4e
	sbc c                                            ; $6747: $99
	ld c, h                                          ; $6748: $4c
	sbc c                                            ; $6749: $99
	ld c, [hl]                                       ; $674a: $4e
	ld a, e                                          ; $674b: $7b
	cp $77                                           ; $674c: $fe $77
	ld a, [$fc77]                                    ; $674e: $fa $77 $fc
	ld l, [hl]                                       ; $6751: $6e
	reti                                             ; $6752: $d9


	sub a                                            ; $6753: $97
	ld bc, $00fe                                     ; $6754: $01 $fe $00
	rst $38                                          ; $6757: $ff
	ld hl, $1dde                                     ; $6758: $21 $de $1d
	ldh [c], a                                       ; $675b: $e2
	ld [hl], a                                       ; $675c: $77
	or $77                                           ; $675d: $f6 $77

jr_03a_675f:
	cp $99                                           ; $675f: $fe $99

jr_03a_6761:
	add c                                            ; $6761: $81
	ld a, [hl]                                       ; $6762: $7e
	ld bc, wPtrToScriptStack                                     ; $6763: $01 $fe $d1
	ld l, $77                                        ; $6766: $2e $77
	or $76                                           ; $6768: $f6 $76
	call z, $fc77                                    ; $676a: $cc $77 $fc
	ld a, a                                          ; $676d: $7f
	cp $77                                           ; $676e: $fe $77
	rst SubAFromHL                                          ; $6770: $d7
	sbc d                                            ; $6771: $9a
	ld a, a                                          ; $6772: $7f
	nop                                              ; $6773: $00
	dec h                                            ; $6774: $25
	sub b                                            ; $6775: $90
	ld bc, $fc73                                     ; $6776: $01 $73 $fc
	ld a, a                                          ; $6779: $7f
	cp $7f                                           ; $677a: $fe $7f
	db $e3                                           ; $677c: $e3
	ld a, a                                          ; $677d: $7f
	db $db                                           ; $677e: $db
	ld a, e                                          ; $677f: $7b

jr_03a_6780:
	db $ec                                           ; $6780: $ec
	ld e, [hl]                                       ; $6781: $5e
	add $02                                          ; $6782: $c6 $02
	ret nz                                           ; $6784: $c0

	inc bc                                           ; $6785: $03
	rst $38                                          ; $6786: $ff
	inc bc                                           ; $6787: $03
	rst $38                                          ; $6788: $ff
	inc bc                                           ; $6789: $03
	rst $38                                          ; $678a: $ff
	ld a, a                                          ; $678b: $7f
	ld l, a                                          ; $678c: $6f
	ldh a, [c]                                       ; $678d: $f2
	ld h, [hl]                                       ; $678e: $66
	ret z                                            ; $678f: $c8

	ld a, a                                          ; $6790: $7f
	cp $92                                           ; $6791: $fe $92
	dec c                                            ; $6793: $0d
	rlca                                             ; $6794: $07
	rrca                                             ; $6795: $0f
	dec b                                            ; $6796: $05
	rrca                                             ; $6797: $0f
	dec b                                            ; $6798: $05
	db $10                                           ; $6799: $10
	db $e3                                           ; $679a: $e3
	jr jr_03a_6780                                   ; $679b: $18 $e3

	inc e                                            ; $679d: $1c
	db $e3                                           ; $679e: $e3
	inc c                                            ; $679f: $0c
	ld [hl], e                                       ; $67a0: $73
	cp $7f                                           ; $67a1: $fe $7f
	ld hl, sp+$7f                                    ; $67a3: $f8 $7f
	cp $8f                                           ; $67a5: $fe $8f
	jr nz, jr_03a_67c5                               ; $67a7: $20 $1c

	and b                                            ; $67a9: $a0

jr_03a_67aa:
	ld e, $e4                                        ; $67aa: $1e $e4
	ld a, [de]                                       ; $67ac: $1a
	db $f4                                           ; $67ad: $f4
	ld a, [bc]                                       ; $67ae: $0a
	db $e4                                           ; $67af: $e4
	dec bc                                           ; $67b0: $0b
	db $e4                                           ; $67b1: $e4
	dec bc                                           ; $67b2: $0b
	db $f4                                           ; $67b3: $f4
	dec bc                                           ; $67b4: $0b
	db $e4                                           ; $67b5: $e4
	dec de                                           ; $67b6: $1b
	ld c, d                                          ; $67b7: $4a
	jp nz, $0098                                     ; $67b8: $c2 $98 $00

	db $10                                           ; $67bb: $10
	rrca                                             ; $67bc: $0f
	ld [$0807], sp                                   ; $67bd: $08 $07 $08
	rlca                                             ; $67c0: $07
	ld [hl], l                                       ; $67c1: $75
	ld l, d                                          ; $67c2: $6a
	ld l, l                                          ; $67c3: $6d
	ld l, b                                          ; $67c4: $68

jr_03a_67c5:
	ld a, [hl]                                       ; $67c5: $7e
	call z, $fe7f                                    ; $67c6: $cc $7f $fe
	ld [hl], l                                       ; $67c9: $75
	adc b                                            ; $67ca: $88
	sub h                                            ; $67cb: $94
	ld c, e                                          ; $67cc: $4b
	sbc b                                            ; $67cd: $98
	ld b, b                                          ; $67ce: $40
	sbc b                                            ; $67cf: $98
	ld b, b                                          ; $67d0: $40
	add b                                            ; $67d1: $80
	ld b, b                                          ; $67d2: $40
	add b                                            ; $67d3: $80
	db $f4                                           ; $67d4: $f4
	ei                                               ; $67d5: $fb
	nop                                              ; $67d6: $00
	ld a, e                                          ; $67d7: $7b
	adc e                                            ; $67d8: $8b
	ld [hl], a                                       ; $67d9: $77
	cp $fb                                           ; $67da: $fe $fb
	halt                                             ; $67dc: $76
	call z, $f47f                                    ; $67dd: $cc $7f $f4
	sbc [hl]                                         ; $67e0: $9e
	push bc                                          ; $67e1: $c5
	ld [hl], e                                       ; $67e2: $73
	xor $7e                                          ; $67e3: $ee $7e
	call c, $3f9e                                    ; $67e5: $dc $9e $3f
	ld b, c                                          ; $67e8: $41
	ld [hl], b                                       ; $67e9: $70
	sbc h                                            ; $67ea: $9c
	ld a, [hl]                                       ; $67eb: $7e
	add c                                            ; $67ec: $81
	rst $38                                          ; $67ed: $ff
	ld a, d                                          ; $67ee: $7a
	add $67                                          ; $67ef: $c6 $67
	call z, $c05e                                    ; $67f1: $cc $5e $c0
	sbc l                                            ; $67f4: $9d
	ldh a, [rIF]                                     ; $67f5: $f0 $0f
	ld l, e                                          ; $67f7: $6b
	ldh a, [$de]                                     ; $67f8: $f0 $de
	rst $38                                          ; $67fa: $ff
	sbc [hl]                                         ; $67fb: $9e
	daa                                              ; $67fc: $27
	ld a, e                                          ; $67fd: $7b
	cp $9c                                           ; $67fe: $fe $9c
	ret c                                            ; $6800: $d8

	daa                                              ; $6801: $27
	add b                                            ; $6802: $80
	ld h, e                                          ; $6803: $63
	ldh a, [$73]                                     ; $6804: $f0 $73
	jr z, @+$7d                                      ; $6806: $28 $7b

	sbc a                                            ; $6808: $9f
	ld e, e                                          ; $6809: $5b
	ldh a, [$7b]                                     ; $680a: $f0 $7b
	sbc d                                            ; $680c: $9a
	sbc c                                            ; $680d: $99
	add hl, bc                                       ; $680e: $09
	nop                                              ; $680f: $00
	db $fd                                           ; $6810: $fd
	inc bc                                           ; $6811: $03
	cp $01                                           ; $6812: $fe $01
	ld l, a                                          ; $6814: $6f
	db $e4                                           ; $6815: $e4
	ld l, a                                          ; $6816: $6f
	and $78                                          ; $6817: $e6 $78
	ldh [$6f], a                                     ; $6819: $e0 $6f
	ldh [$7a], a                                     ; $681b: $e0 $7a
	ld a, [bc]                                       ; $681d: $0a
	ld a, a                                          ; $681e: $7f
	cp $9c                                           ; $681f: $fe $9c
	ld a, a                                          ; $6821: $7f
	rst $38                                          ; $6822: $ff
	ld a, a                                          ; $6823: $7f
	ld [hl], e                                       ; $6824: $73
	pop de                                           ; $6825: $d1
	sbc l                                            ; $6826: $9d
	pop hl                                           ; $6827: $e1
	ret nz                                           ; $6828: $c0

	ld l, a                                          ; $6829: $6f
	push bc                                          ; $682a: $c5
	ld l, e                                          ; $682b: $6b
	sub $9d                                          ; $682c: $d6 $9d
	rst $38                                          ; $682e: $ff
	ld d, e                                          ; $682f: $53
	ld a, d                                          ; $6830: $7a
	ld c, d                                          ; $6831: $4a
	ld d, a                                          ; $6832: $57
	ldh a, [hDisp1_SCX]                                     ; $6833: $f0 $91
	rst AddAOntoHL                                          ; $6835: $ef
	rst JumpTable                                          ; $6836: $c7
	inc bc                                           ; $6837: $03
	rst $38                                          ; $6838: $ff
	inc bc                                           ; $6839: $03
	rst $38                                          ; $683a: $ff
	rlca                                             ; $683b: $07
	rst $38                                          ; $683c: $ff
	ldh a, [$f0]                                     ; $683d: $f0 $f0
	rst $38                                          ; $683f: $ff
	ld hl, sp+$0f                                    ; $6840: $f8 $0f
	ld hl, sp+$0e                                    ; $6842: $f8 $0e
	nop                                              ; $6844: $00
	sbc h                                            ; $6845: $9c

jr_03a_6846:
	inc sp                                           ; $6846: $33
	ld h, [hl]                                       ; $6847: $66

jr_03a_6848:
	ld d, l                                          ; $6848: $55
	jp c, Jump_03a_4344                              ; $6849: $da $44 $43

	or $9c                                           ; $684c: $f6 $9c
	ld b, l                                          ; $684e: $45
	ld [hl], a                                       ; $684f: $77
	ld [hl], a                                       ; $6850: $77
	ldh a, [c]                                       ; $6851: $f2
	inc b                                            ; $6852: $04
	rst $38                                          ; $6853: $ff
	sbc b                                            ; $6854: $98
	inc bc                                           ; $6855: $03
	ld bc, $1f3c                                     ; $6856: $01 $3c $1f
	ret nz                                           ; $6859: $c0

	rst $38                                          ; $685a: $ff
	nop                                              ; $685b: $00
	ld l, e                                          ; $685c: $6b
	cp $94                                           ; $685d: $fe $94
	rrca                                             ; $685f: $0f
	dec b                                            ; $6860: $05
	rrca                                             ; $6861: $0f
	dec b                                            ; $6862: $05
	xor a                                            ; $6863: $af
	add l                                            ; $6864: $85
	rst AddAOntoHL                                          ; $6865: $ef
	rst JumpTable                                          ; $6866: $c7
	rst AddAOntoHL                                          ; $6867: $ef
	rst JumpTable                                          ; $6868: $c7
	rst $38                                          ; $6869: $ff
	ld a, e                                          ; $686a: $7b
	cp $9b                                           ; $686b: $fe $9b
	db $fc                                           ; $686d: $fc
	rst SubAFromBC                                          ; $686e: $e7
	inc e                                            ; $686f: $1c
	db $e3                                           ; $6870: $e3
	ld c, a                                          ; $6871: $4f
	cp $9d                                           ; $6872: $fe $9d
	db $ec                                           ; $6874: $ec
	inc de                                           ; $6875: $13
	ld d, a                                          ; $6876: $57
	cp $97                                           ; $6877: $fe $97
	db $e4                                           ; $6879: $e4
	inc de                                           ; $687a: $13
	add b                                            ; $687b: $80
	nop                                              ; $687c: $00
	add b                                            ; $687d: $80
	nop                                              ; $687e: $00
	ld b, b                                          ; $687f: $40
	add b                                            ; $6880: $80
	ld [hl], a                                       ; $6881: $77
	cp $97                                           ; $6882: $fe $97
	jr nz, jr_03a_6846                               ; $6884: $20 $c0

	jr nz, jr_03a_6848                               ; $6886: $20 $c0

	db $10                                           ; $6888: $10
	ldh [rSB], a                                     ; $6889: $e0 $01
	nop                                              ; $688b: $00
	ld [hl], a                                       ; $688c: $77
	cp $f6                                           ; $688d: $fe $f6
	sbc l                                            ; $688f: $9d
	rst $38                                          ; $6890: $ff
	ccf                                              ; $6891: $3f
	ld a, e                                          ; $6892: $7b
	xor d                                            ; $6893: $aa
	sub h                                            ; $6894: $94
	add e                                            ; $6895: $83
	ld a, h                                          ; $6896: $7c
	add b                                            ; $6897: $80
	ld a, a                                          ; $6898: $7f
	ld b, b                                          ; $6899: $40
	ccf                                              ; $689a: $3f
	ld b, b                                          ; $689b: $40
	ccf                                              ; $689c: $3f
	jr nz, @+$21                                     ; $689d: $20 $1f

	nop                                              ; $689f: $00
	sbc $ff                                          ; $68a0: $de $ff
	ld a, e                                          ; $68a2: $7b
	db $fc                                           ; $68a3: $fc
	sbc b                                            ; $68a4: $98
	nop                                              ; $68a5: $00
	rra                                              ; $68a6: $1f
	ldh [$3f], a                                     ; $68a7: $e0 $3f
	ret nz                                           ; $68a9: $c0

	cp a                                             ; $68aa: $bf
	ld b, b                                          ; $68ab: $40
	ld [hl], a                                       ; $68ac: $77
	push af                                          ; $68ad: $f5
	ld l, a                                          ; $68ae: $6f
	ldh a, [$63]                                     ; $68af: $f0 $63
	cp $03                                           ; $68b1: $fe $03
	ldh a, [rPCM34]                                  ; $68b3: $f0 $77
	di                                               ; $68b5: $f3
	sub l                                            ; $68b6: $95
	ldh a, [rIF]                                     ; $68b7: $f0 $0f
	ret nz                                           ; $68b9: $c0

	ccf                                              ; $68ba: $3f
	add b                                            ; $68bb: $80
	ld a, a                                          ; $68bc: $7f
	ldh [$1f], a                                     ; $68bd: $e0 $1f
	ldh a, [rIF]                                     ; $68bf: $f0 $0f
	ld l, a                                          ; $68c1: $6f
	ldh a, [$67]                                     ; $68c2: $f0 $67
	cp $9d                                           ; $68c4: $fe $9d
	inc b                                            ; $68c6: $04
	ei                                               ; $68c7: $fb
	ld c, a                                          ; $68c8: $4f
	ldh a, [$73]                                     ; $68c9: $f0 $73
	pop de                                           ; $68cb: $d1
	ld d, e                                          ; $68cc: $53
	ldh a, [$9c]                                     ; $68cd: $f0 $9c
	cp a                                             ; $68cf: $bf
	nop                                              ; $68d0: $00
	cp a                                             ; $68d1: $bf
	ld d, a                                          ; $68d2: $57
	pop af                                           ; $68d3: $f1
	ld a, a                                          ; $68d4: $7f
	ld b, d                                          ; $68d5: $42
	sbc [hl]                                         ; $68d6: $9e
	ld a, a                                          ; $68d7: $7f
	ld c, a                                          ; $68d8: $4f
	cp $53                                           ; $68d9: $fe $53
	db $e3                                           ; $68db: $e3
	dec sp                                           ; $68dc: $3b
	cp $7f                                           ; $68dd: $fe $7f
	adc a                                            ; $68df: $8f
	ld a, e                                          ; $68e0: $7b
	cp $9d                                           ; $68e1: $fe $9d
	ldh a, [$2f]                                     ; $68e3: $f0 $2f
	ld a, e                                          ; $68e5: $7b
	cp $7f                                           ; $68e6: $fe $7f
	ld a, [$fe77]                                    ; $68e8: $fa $77 $fe
	ld b, a                                          ; $68eb: $47
	ldh [hDisp1_WX], a                                     ; $68ec: $e0 $96
	sbc h                                            ; $68ee: $9c
	rst SubAFromBC                                          ; $68ef: $e7
	call nz, Call_03a_78ff                           ; $68f0: $c4 $ff $78
	rst $38                                          ; $68f3: $ff
	jr c, @+$01                                      ; $68f4: $38 $ff

	db $10                                           ; $68f6: $10
	ld [hl], e                                       ; $68f7: $73
	ldh a, [c]                                       ; $68f8: $f2
	sbc l                                            ; $68f9: $9d
	ld bc, $56ff                                     ; $68fa: $01 $ff $56
	call nz, $189b                                   ; $68fd: $c4 $9b $18
	rst SubAFromBC                                          ; $6900: $e7
	rra                                              ; $6901: $1f
	rst $38                                          ; $6902: $ff
	ld l, [hl]                                       ; $6903: $6e
	jp z, $fe77                                      ; $6904: $ca $77 $fe

	ld a, a                                          ; $6907: $7f
	ld hl, sp-$6b                                    ; $6908: $f8 $95
	ld a, a                                          ; $690a: $7f
	rst SubAFromDE                                          ; $690b: $df
	ld h, b                                          ; $690c: $60
	cp a                                             ; $690d: $bf
	db $10                                           ; $690e: $10
	ldh [rAUD1SWEEP], a                              ; $690f: $e0 $10
	ldh [$08], a                                     ; $6911: $e0 $08
	ldh a, [rPCM34]                                  ; $6913: $f0 $77
	cp $77                                           ; $6915: $fe $77
	ld d, e                                          ; $6917: $53
	sbc l                                            ; $6918: $9d
	jr c, @-$37                                      ; $6919: $38 $c7

	rst FarCall                                          ; $691b: $f7
	add l                                            ; $691c: $85
	jp $f900                                         ; $691d: $c3 $00 $f9


	db $fc                                           ; $6920: $fc
	dec c                                            ; $6921: $0d
	cp $20                                           ; $6922: $fe $20
	rra                                              ; $6924: $1f
	jr nz, jr_03a_6946                               ; $6925: $20 $1f

	rla                                              ; $6927: $17
	ld [$0c13], sp                                   ; $6928: $08 $13 $0c
	db $10                                           ; $692b: $10
	rrca                                             ; $692c: $0f
	ld [$1a01], a                                    ; $692d: $ea $01 $1a
	pop hl                                           ; $6930: $e1
	rst $38                                          ; $6931: $ff
	rst $38                                          ; $6932: $ff
	ccf                                              ; $6933: $3f
	ret nz                                           ; $6934: $c0

	ld a, a                                          ; $6935: $7f
	add b                                            ; $6936: $80
	ld h, a                                          ; $6937: $67
	sub e                                            ; $6938: $93
	ld a, [hl]                                       ; $6939: $7e
	cp h                                             ; $693a: $bc
	ld e, a                                          ; $693b: $5f
	db $f4                                           ; $693c: $f4
	ld c, a                                          ; $693d: $4f
	cp $96                                           ; $693e: $fe $96
	add sp, $17                                      ; $6940: $e8 $17
	ret nz                                           ; $6942: $c0

	ld a, a                                          ; $6943: $7f
	add sp, $77                                      ; $6944: $e8 $77

jr_03a_6946:
	or e                                             ; $6946: $b3
	ld a, h                                          ; $6947: $7c
	db $fc                                           ; $6948: $fc
	halt                                             ; $6949: $76
	add e                                            ; $694a: $83
	ld a, e                                          ; $694b: $7b
	cp $7f                                           ; $694c: $fe $7f
	jp z, $bc76                                      ; $694e: $ca $76 $bc

	sub h                                            ; $6951: $94
	jp $ff3c                                         ; $6952: $c3 $3c $ff


	rst $38                                          ; $6955: $ff
	and b                                            ; $6956: $a0
	ld e, a                                          ; $6957: $5f
	ld b, b                                          ; $6958: $40
	cp a                                             ; $6959: $bf
	db $fd                                           ; $695a: $fd
	ld [bc], a                                       ; $695b: $02
	rst $38                                          ; $695c: $ff
	ld a, d                                          ; $695d: $7a
	ld l, b                                          ; $695e: $68
	sbc [hl]                                         ; $695f: $9e
	ld b, b                                          ; $6960: $40
	ld [hl], d                                       ; $6961: $72
	pop hl                                           ; $6962: $e1
	ld a, a                                          ; $6963: $7f
	db $ec                                           ; $6964: $ec
	sub d                                            ; $6965: $92
	ld c, $f1                                        ; $6966: $0e $f1
	rra                                              ; $6968: $1f
	ldh [$bf], a                                     ; $6969: $e0 $bf
	ld b, b                                          ; $696b: $40
	ld [bc], a                                       ; $696c: $02
	db $fd                                           ; $696d: $fd
	inc bc                                           ; $696e: $03
	nop                                              ; $696f: $00
	ldh a, [rIF]                                     ; $6970: $f0 $0f
	ld hl, sp+$7b                                    ; $6972: $f8 $7b
	db $ed                                           ; $6974: $ed
	ld a, a                                          ; $6975: $7f
	ldh [$7e], a                                     ; $6976: $e0 $7e
	xor b                                            ; $6978: $a8
	halt                                             ; $6979: $76
	ld hl, sp-$64                                    ; $697a: $f8 $9c
	ld a, a                                          ; $697c: $7f
	ccf                                              ; $697d: $3f
	cp a                                             ; $697e: $bf
	ld d, d                                          ; $697f: $52
	ldh a, [c]                                       ; $6980: $f2
	ld a, a                                          ; $6981: $7f
	inc [hl]                                         ; $6982: $34
	sbc e                                            ; $6983: $9b
	add c                                            ; $6984: $81
	rst $38                                          ; $6985: $ff
	ld b, c                                          ; $6986: $41
	cp a                                             ; $6987: $bf
	ld h, a                                          ; $6988: $67
	pop af                                           ; $6989: $f1
	ld a, [hl]                                       ; $698a: $7e
	cp d                                             ; $698b: $ba
	sbc c                                            ; $698c: $99
	rst AddAOntoHL                                          ; $698d: $ef
	nop                                              ; $698e: $00
	rst SubAFromBC                                          ; $698f: $e7
	db $10                                           ; $6990: $10
	cp l                                             ; $6991: $bd
	ld e, $56                                        ; $6992: $1e $56
	call nz, $ea7f                                   ; $6994: $c4 $7f $ea
	sbc [hl]                                         ; $6997: $9e
	cp $7b                                           ; $6998: $fe $7b
	xor b                                            ; $699a: $a8
	ld e, e                                          ; $699b: $5b
	cp $9d                                           ; $699c: $fe $9d
	nop                                              ; $699e: $00
	or b                                             ; $699f: $b0
	ld c, e                                          ; $69a0: $4b
	ldh a, [$9d]                                     ; $69a1: $f0 $9d
	ld c, $00                                        ; $69a3: $0e $00
	halt                                             ; $69a5: $76
	add $6f                                          ; $69a6: $c6 $6f
	cp $7e                                           ; $69a8: $fe $7e
	call nz, $6f9b                                   ; $69aa: $c4 $9b $6f
	db $10                                           ; $69ad: $10
	add a                                            ; $69ae: $87
	jr c, jr_03a_69f8                                ; $69af: $38 $47

	ld b, l                                          ; $69b1: $45
	sub [hl]                                         ; $69b2: $96
	ld b, $ff                                        ; $69b3: $06 $ff
	jr @+$01                                         ; $69b5: $18 $ff

	ld a, a                                          ; $69b7: $7f
	rst $38                                          ; $69b8: $ff
	ld [hl], b                                       ; $69b9: $70
	rst $38                                          ; $69ba: $ff
	rra                                              ; $69bb: $1f
	ld [hl], d                                       ; $69bc: $72
	sub [hl]                                         ; $69bd: $96
	adc l                                            ; $69be: $8d
	ld a, a                                          ; $69bf: $7f
	ld a, [$ff00]                                    ; $69c0: $fa $00 $ff
	inc bc                                           ; $69c3: $03
	db $fc                                           ; $69c4: $fc
	ei                                               ; $69c5: $fb
	ldh a, [rAUD3LEVEL]                              ; $69c6: $f0 $1c
	db $e3                                           ; $69c8: $e3
	rst FarCall                                          ; $69c9: $f7
	rst AddAOntoHL                                          ; $69ca: $ef
	db $fc                                           ; $69cb: $fc
	rst $38                                          ; $69cc: $ff
	db $e3                                           ; $69cd: $e3
	db $fc                                           ; $69ce: $fc
	inc b                                            ; $69cf: $04
	ld [$f46d], sp                                   ; $69d0: $08 $6d $f4
	ld l, l                                          ; $69d3: $6d
	cp d                                             ; $69d4: $ba
	sbc l                                            ; $69d5: $9d
	adc h                                            ; $69d6: $8c
	ld [hl], e                                       ; $69d7: $73
	ld [hl], l                                       ; $69d8: $75
	and b                                            ; $69d9: $a0
	ld h, a                                          ; $69da: $67
	ldh a, [$99]                                     ; $69db: $f0 $99
	db $f4                                           ; $69dd: $f4
	dec bc                                           ; $69de: $0b
	db $f4                                           ; $69df: $f4
	dec bc                                           ; $69e0: $0b
	nop                                              ; $69e1: $00
	inc c                                            ; $69e2: $0c
	ld h, a                                          ; $69e3: $67
	ldh a, [$9c]                                     ; $69e4: $f0 $9c
	cp $ff                                           ; $69e6: $fe $ff
	rlca                                             ; $69e8: $07
	ld a, e                                          ; $69e9: $7b

jr_03a_69ea:
	rst FarCall                                          ; $69ea: $f7
	sbc l                                            ; $69eb: $9d
	ld [bc], a                                       ; $69ec: $02
	ld a, c                                          ; $69ed: $79
	ld [hl], a                                       ; $69ee: $77
	xor h                                            ; $69ef: $ac
	ld a, a                                          ; $69f0: $7f
	add hl, sp                                       ; $69f1: $39
	sbc c                                            ; $69f2: $99
	ret nz                                           ; $69f3: $c0

	rra                                              ; $69f4: $1f
	rst GetHLinHL                                          ; $69f5: $cf
	sbc a                                            ; $69f6: $9f
	ld a, a                                          ; $69f7: $7f

jr_03a_69f8:
	rst SubAFromDE                                          ; $69f8: $df
	ld [hl], e                                       ; $69f9: $73
	rrca                                             ; $69fa: $0f
	sbc l                                            ; $69fb: $9d
	nop                                              ; $69fc: $00
	ld a, a                                          ; $69fd: $7f
	ld a, d                                          ; $69fe: $7a
	ret z                                            ; $69ff: $c8

	sbc [hl]                                         ; $6a00: $9e
	rst SubAFromDE                                          ; $6a01: $df
	ld a, e                                          ; $6a02: $7b
	cp $99                                           ; $6a03: $fe $99
	xor [hl]                                         ; $6a05: $ae
	ret nc                                           ; $6a06: $d0

	or e                                             ; $6a07: $b3
	call z, $f40b                                    ; $6a08: $cc $0b $f4
	ld e, a                                          ; $6a0b: $5f
	add l                                            ; $6a0c: $85
	ld a, a                                          ; $6a0d: $7f
	ld b, h                                          ; $6a0e: $44
	sbc [hl]                                         ; $6a0f: $9e
	sbc b                                            ; $6a10: $98
	ld a, e                                          ; $6a11: $7b
	ld a, [$3780]                                    ; $6a12: $fa $80 $37
	ld c, a                                          ; $6a15: $4f
	xor e                                            ; $6a16: $ab
	ld d, a                                          ; $6a17: $57
	daa                                              ; $6a18: $27
	dec de                                           ; $6a19: $1b
	and a                                            ; $6a1a: $a7
	ld e, e                                          ; $6a1b: $5b
	ld h, a                                          ; $6a1c: $67
	dec bc                                           ; $6a1d: $0b
	inc a                                            ; $6a1e: $3c
	inc bc                                           ; $6a1f: $03
	inc h                                            ; $6a20: $24
	nop                                              ; $6a21: $00
	inc h                                            ; $6a22: $24
	nop                                              ; $6a23: $00
	add d                                            ; $6a24: $82
	rst $38                                          ; $6a25: $ff
	ret nz                                           ; $6a26: $c0

	add b                                            ; $6a27: $80
	jr nc, jr_03a_69ea                               ; $6a28: $30 $c0

	ld a, $f0                                        ; $6a2a: $3e $f0
	inc e                                            ; $6a2c: $1c
	rst $38                                          ; $6a2d: $ff
	ld c, a                                          ; $6a2e: $4f
	cp a                                             ; $6a2f: $bf
	ld d, a                                          ; $6a30: $57
	cpl                                              ; $6a31: $2f
	ld b, e                                          ; $6a32: $43
	sbc h                                            ; $6a33: $9c
	daa                                              ; $6a34: $27
	inc b                                            ; $6a35: $04
	ei                                               ; $6a36: $fb
	db $fd                                           ; $6a37: $fd
	sub l                                            ; $6a38: $95

Jump_03a_6a39:
	ld [bc], a                                       ; $6a39: $02
	nop                                              ; $6a3a: $00
	nop                                              ; $6a3b: $00
	cp $ff                                           ; $6a3c: $fe $ff
	cp $f0                                           ; $6a3e: $fe $f0
	rst $38                                          ; $6a40: $ff
	db $fc                                           ; $6a41: $fc
	db $fc                                           ; $6a42: $fc
	ld [hl], a                                       ; $6a43: $77
	xor [hl]                                         ; $6a44: $ae
	rst $38                                          ; $6a45: $ff
	ld a, [hl]                                       ; $6a46: $7e
	call nc, $c399                                   ; $6a47: $d4 $99 $c3
	ld a, h                                          ; $6a4a: $7c
	ld h, e                                          ; $6a4b: $63
	call c, $ed12                                    ; $6a4c: $dc $12 $ed
	ld a, d                                          ; $6a4f: $7a
	rst GetHLinHL                                          ; $6a50: $cf
	ld [hl], l                                       ; $6a51: $75
	call c, Call_03a_616f                            ; $6a52: $dc $6f $61
	ld a, a                                          ; $6a55: $7f
	di                                               ; $6a56: $f3
	sbc e                                            ; $6a57: $9b
	ld a, a                                          ; $6a58: $7f
	ret nz                                           ; $6a59: $c0

jr_03a_6a5a:
	ccf                                              ; $6a5a: $3f
	rst $38                                          ; $6a5b: $ff
	ld a, c                                          ; $6a5c: $79
	ld d, h                                          ; $6a5d: $54
	sub a                                            ; $6a5e: $97
	adc [hl]                                         ; $6a5f: $8e
	ld bc, $c020                                     ; $6a60: $01 $20 $c0
	ccf                                              ; $6a63: $3f
	rst SubAFromDE                                          ; $6a64: $df
	ccf                                              ; $6a65: $3f
	rst SubAFromDE                                          ; $6a66: $df
	halt                                             ; $6a67: $76
	di                                               ; $6a68: $f3
	adc l                                            ; $6a69: $8d
	ld e, a                                          ; $6a6a: $5f
	and a                                            ; $6a6b: $a7
	rst SubAFromDE                                          ; $6a6c: $df
	and c                                            ; $6a6d: $a1
	ccf                                              ; $6a6e: $3f
	ldh a, [rIE]                                     ; $6a6f: $f0 $ff
	ld [$fedd], sp                                   ; $6a71: $08 $dd $fe
	sbc $ff                                          ; $6a74: $de $ff
	ccf                                              ; $6a76: $3f
	nop                                              ; $6a77: $00
	cp $01                                           ; $6a78: $fe $01
	jr nz, jr_03a_6a5a                               ; $6a7a: $20 $de

	sbc $fe                                          ; $6a7c: $de $fe
	sbc [hl]                                         ; $6a7e: $9e
	ld a, $77                                        ; $6a7f: $3e $77
	cp $94                                           ; $6a81: $fe $94
	sbc $3e                                          ; $6a83: $de $3e
	cp l                                             ; $6a85: $bd
	ld b, d                                          ; $6a86: $42
	inc bc                                           ; $6a87: $03
	db $fc                                           ; $6a88: $fc
	ld a, a                                          ; $6a89: $7f
	rst $38                                          ; $6a8a: $ff
	ld b, b                                          ; $6a8b: $40
	rst $38                                          ; $6a8c: $ff
	ld [hl], e                                       ; $6a8d: $73
	ld a, e                                          ; $6a8e: $7b
	ld a, [$047f]                                    ; $6a8f: $fa $7f $04
	sbc d                                            ; $6a92: $9a
	dec e                                            ; $6a93: $1d
	jp $c001                                         ; $6a94: $c3 $01 $c0


	ldh [$73], a                                     ; $6a97: $e0 $73
	or b                                             ; $6a99: $b0
	ld [hl], a                                       ; $6a9a: $77
	jr nc, @+$80                                     ; $6a9b: $30 $7e

	ld h, [hl]                                       ; $6a9d: $66
	rst SubAFromDE                                          ; $6a9e: $df
	rst $38                                          ; $6a9f: $ff
	ld a, l                                          ; $6aa0: $7d
	pop bc                                           ; $6aa1: $c1
	sbc [hl]                                         ; $6aa2: $9e
	rra                                              ; $6aa3: $1f

jr_03a_6aa4:
	ld a, c                                          ; $6aa4: $79
	db $10                                           ; $6aa5: $10
	ld a, e                                          ; $6aa6: $7b
	db $f4                                           ; $6aa7: $f4
	sub a                                            ; $6aa8: $97
	nop                                              ; $6aa9: $00
	dec bc                                           ; $6aaa: $0b
	ldh a, [rIF]                                     ; $6aab: $f0 $0f
	di                                               ; $6aad: $f3
	cp $f7                                           ; $6aae: $fe $f7
	db $fc                                           ; $6ab0: $fc
	ld a, e                                          ; $6ab1: $7b
	cp $7e                                           ; $6ab2: $fe $7e
	adc c                                            ; $6ab4: $89
	ld a, a                                          ; $6ab5: $7f
	call z, $9177                                    ; $6ab6: $cc $77 $91
	ld a, a                                          ; $6ab9: $7f
	adc $77                                          ; $6aba: $ce $77
	cp $df                                           ; $6abc: $fe $df
	rst $38                                          ; $6abe: $ff
	adc e                                            ; $6abf: $8b
	add d                                            ; $6ac0: $82
	ld a, h                                          ; $6ac1: $7c
	ret nz                                           ; $6ac2: $c0

	inc a                                            ; $6ac3: $3c
	rra                                              ; $6ac4: $1f
	ldh a, [$f0]                                     ; $6ac5: $f0 $f0
	ldh [$e7], a                                     ; $6ac7: $e0 $e7
	ldh [$e7], a                                     ; $6ac9: $e0 $e7
	rst AddAOntoHL                                          ; $6acb: $ef
	and $ef                                          ; $6acc: $e6 $ef
	db $ec                                           ; $6ace: $ec
	rst AddAOntoHL                                          ; $6acf: $ef
	ld [$1010], sp                                   ; $6ad0: $08 $10 $10
	jr nz, jr_03a_6b4c                               ; $6ad3: $20 $77

	ld e, [hl]                                       ; $6ad5: $5e
	ld h, b                                          ; $6ad6: $60
	cp e                                             ; $6ad7: $bb
	ld [hl], e                                       ; $6ad8: $73
	db $f4                                           ; $6ad9: $f4
	ld h, a                                          ; $6ada: $67
	ldh a, [$7b]                                     ; $6adb: $f0 $7b
	call nz, $f053                                   ; $6add: $c4 $53 $f0
	sbc l                                            ; $6ae0: $9d
	ld hl, sp+$07                                    ; $6ae1: $f8 $07
	ld c, a                                          ; $6ae3: $4f
	ldh a, [$6f]                                     ; $6ae4: $f0 $6f
	ret nc                                           ; $6ae6: $d0

	ld a, a                                          ; $6ae7: $7f
	db $db                                           ; $6ae8: $db
	ld a, a                                          ; $6ae9: $7f

jr_03a_6aea:
	db $10                                           ; $6aea: $10
	adc [hl]                                         ; $6aeb: $8e
	ld hl, sp+$01                                    ; $6aec: $f8 $01
	or $f9                                           ; $6aee: $f6 $f9
	inc b                                            ; $6af0: $04
	rst $38                                          ; $6af1: $ff
	ld b, $fd                                        ; $6af2: $06 $fd
	ld b, d                                          ; $6af4: $42
	dec a                                            ; $6af5: $3d
	db $10                                           ; $6af6: $10
	rrca                                             ; $6af7: $0f
	nop                                              ; $6af8: $00
	inc bc                                           ; $6af9: $03
	nop                                              ; $6afa: $00
	ld bc, $de80                                     ; $6afb: $01 $80 $de
	rst $38                                          ; $6afe: $ff
	ld a, [hl]                                       ; $6aff: $7e
	db $fd                                           ; $6b00: $fd
	sbc l                                            ; $6b01: $9d
	db $fd                                           ; $6b02: $fd
	cp $72                                           ; $6b03: $fe $72
	add h                                            ; $6b05: $84
	ld a, e                                          ; $6b06: $7b
	reti                                             ; $6b07: $d9


	ld a, a                                          ; $6b08: $7f
	ld a, b                                          ; $6b09: $78
	ld [hl], h                                       ; $6b0a: $74
	jr nc, jr_03a_6aa4                               ; $6b0b: $30 $97

	rst SubAFromDE                                          ; $6b0d: $df
	jr nz, jr_03a_6aea                               ; $6b0e: $20 $da

	dec h                                            ; $6b10: $25
	nop                                              ; $6b11: $00
	rst $38                                          ; $6b12: $ff

jr_03a_6b13:
	db $db                                           ; $6b13: $db
	inc h                                            ; $6b14: $24
	ld e, a                                          ; $6b15: $5f
	cp $80                                           ; $6b16: $fe $80
	pop de                                           ; $6b18: $d1
	ld hl, $21d0                                     ; $6b19: $21 $d0 $21
	ret c                                            ; $6b1c: $d8

	ld hl, $31dc                                     ; $6b1d: $21 $dc $31
	ld e, $ff                                        ; $6b20: $1e $ff
	jp nc, $d83f                                     ; $6b22: $d2 $3f $d8

	cpl                                              ; $6b25: $2f
	sbc $29                                          ; $6b26: $de $29
	rst $38                                          ; $6b28: $ff
	cp $87                                           ; $6b29: $fe $87
	rst $38                                          ; $6b2b: $ff
	di                                               ; $6b2c: $f3
	adc a                                            ; $6b2d: $8f
	add c                                            ; $6b2e: $81
	ei                                               ; $6b2f: $fb
	ld hl, sp-$05                                    ; $6b30: $f8 $fb
	ld hl, sp-$07                                    ; $6b32: $f8 $f9

jr_03a_6b34:
	adc b                                            ; $6b34: $88
	ldh a, [c]                                       ; $6b35: $f2
	ld hl, sp+$7e                                    ; $6b36: $f8 $7e
	and c                                            ; $6b38: $a1
	ld a, e                                          ; $6b39: $7b
	add $93                                          ; $6b3a: $c6 $93
	sbc a                                            ; $6b3c: $9f
	ldh [$e7], a                                     ; $6b3d: $e0 $e7
	ld hl, sp-$07                                    ; $6b3f: $f8 $f9
	ld a, [hl]                                       ; $6b41: $7e
	cp $3f                                           ; $6b42: $fe $3f
	rra                                              ; $6b44: $1f
	ld a, a                                          ; $6b45: $7f
	daa                                              ; $6b46: $27
	rra                                              ; $6b47: $1f
	ld h, [hl]                                       ; $6b48: $66
	ld [hl], d                                       ; $6b49: $72
	ld a, e                                          ; $6b4a: $7b
	halt                                             ; $6b4b: $76

jr_03a_6b4c:
	db $db                                           ; $6b4c: $db
	rst $38                                          ; $6b4d: $ff
	ld a, e                                          ; $6b4e: $7b
	db $f4                                           ; $6b4f: $f4
	ld a, [hl]                                       ; $6b50: $7e
	ld a, [$6f7d]                                    ; $6b51: $fa $7d $6f
	sub [hl]                                         ; $6b54: $96
	xor a                                            ; $6b55: $af
	rra                                              ; $6b56: $1f
	sbc a                                            ; $6b57: $9f
	jr c, jr_03a_6b13                                ; $6b58: $38 $b9

	ld a, $b0                                        ; $6b5a: $3e $b0
	ccf                                              ; $6b5c: $3f
	ldh a, [$7a]                                     ; $6b5d: $f0 $7a
	and e                                            ; $6b5f: $a3
	ld l, a                                          ; $6b60: $6f
	ld h, d                                          ; $6b61: $62
	sub l                                            ; $6b62: $95
	jr nc, jr_03a_6b34                               ; $6b63: $30 $cf

	rlca                                             ; $6b65: $07
	ld hl, sp+$07                                    ; $6b66: $f8 $07
	ld hl, sp+$00                                    ; $6b68: $f8 $00
	rst $38                                          ; $6b6a: $ff
	dec l                                            ; $6b6b: $2d
	jp nc, $fa71                                     ; $6b6c: $d2 $71 $fa

	ld a, e                                          ; $6b6f: $7b
	db $ed                                           ; $6b70: $ed
	adc [hl]                                         ; $6b71: $8e
	ld h, b                                          ; $6b72: $60
	rra                                              ; $6b73: $1f
	ldh [$1f], a                                     ; $6b74: $e0 $1f
	inc b                                            ; $6b76: $04
	ld hl, sp-$67                                    ; $6b77: $f8 $99
	ld h, [hl]                                       ; $6b79: $66
	ld c, $01                                        ; $6b7a: $0e $01
	ld bc, $fcfe                                     ; $6b7c: $01 $fe $fc
	rst $38                                          ; $6b7f: $ff
	ld c, $fd                                        ; $6b80: $0e $fd
	ld b, $7b                                        ; $6b82: $06 $7b
	cp $7e                                           ; $6b84: $fe $7e
	adc $9a                                          ; $6b86: $ce $9a
	rst SubAFromDE                                          ; $6b88: $df
	rrca                                             ; $6b89: $0f
	rlca                                             ; $6b8a: $07
	rst $38                                          ; $6b8b: $ff
	db $fc                                           ; $6b8c: $fc
	ld a, e                                          ; $6b8d: $7b
	cp $9d                                           ; $6b8e: $fe $9d
	call c, Call_03a_76e7                            ; $6b90: $dc $e7 $76
	ret nc                                           ; $6b93: $d0

	ld a, [hl]                                       ; $6b94: $7e
	rrca                                             ; $6b95: $0f
	sbc [hl]                                         ; $6b96: $9e
	ld hl, sp+$7b                                    ; $6b97: $f8 $7b
	ld a, [$149d]                                    ; $6b99: $fa $9d $14
	rst AddAOntoHL                                          ; $6b9c: $ef
	ld l, a                                          ; $6b9d: $6f
	cp $9d                                           ; $6b9e: $fe $9d
	rla                                              ; $6ba0: $17
	db $ec                                           ; $6ba1: $ec
	ld a, c                                          ; $6ba2: $79
	ld c, e                                          ; $6ba3: $4b
	ld a, a                                          ; $6ba4: $7f
	cp h                                             ; $6ba5: $bc
	ld a, b                                          ; $6ba6: $78
	add h                                            ; $6ba7: $84
	ld l, a                                          ; $6ba8: $6f
	ld [$ffdf], sp                                   ; $6ba9: $08 $df $ff
	ld a, e                                          ; $6bac: $7b
	ret z                                            ; $6bad: $c8

	sbc l                                            ; $6bae: $9d
	ld bc, $7405                                     ; $6baf: $01 $05 $74
	ldh [rOCPD], a                                   ; $6bb2: $e0 $6b
	ldh a, [$df]                                     ; $6bb4: $f0 $df
	rst $38                                          ; $6bb6: $ff
	sbc [hl]                                         ; $6bb7: $9e
	add b                                            ; $6bb8: $80
	ld l, d                                          ; $6bb9: $6a
	xor $67                                          ; $6bba: $ee $67
	ldh a, [$7f]                                     ; $6bbc: $f0 $7f
	ld a, a                                          ; $6bbe: $7f
	ld c, a                                          ; $6bbf: $4f
	ldh a, [$9e]                                     ; $6bc0: $f0 $9e
	ldh a, [rWX]                                     ; $6bc2: $f0 $4b
	ldh a, [$66]                                     ; $6bc4: $f0 $66
	cp [hl]                                          ; $6bc6: $be
	ld h, [hl]                                       ; $6bc7: $66
	cp h                                             ; $6bc8: $bc
	sbc e                                            ; $6bc9: $9b
	jr nc, jr_03a_6bdb                               ; $6bca: $30 $0f

	ld [bc], a                                       ; $6bcc: $02
	ld bc, $f05f                                     ; $6bcd: $01 $5f $f0
	ld a, [hl]                                       ; $6bd0: $7e
	adc $77                                          ; $6bd1: $ce $77
	ld sp, hl                                        ; $6bd3: $f9
	ld a, h                                          ; $6bd4: $7c
	call nc, Call_03a_547f                           ; $6bd5: $d4 $7f $54
	sbc h                                            ; $6bd8: $9c
	inc l                                            ; $6bd9: $2c
	inc bc                                           ; $6bda: $03

jr_03a_6bdb:
	and e                                            ; $6bdb: $a3
	ld a, e                                          ; $6bdc: $7b
	ld h, $9b                                        ; $6bdd: $26 $9b
	rst GetHLinHL                                          ; $6bdf: $cf
	jr nc, @+$11                                     ; $6be0: $30 $0f

	ldh a, [rPCM12]                                  ; $6be2: $f0 $76
	ld a, b                                          ; $6be4: $78

jr_03a_6be5:
	ld a, a                                          ; $6be5: $7f
	ld c, [hl]                                       ; $6be6: $4e
	ld [hl], a                                       ; $6be7: $77
	cp $7f                                           ; $6be8: $fe $7f
	ld [$cc76], a                                    ; $6bea: $ea $76 $cc
	ld a, a                                          ; $6bed: $7f
	ldh a, [$80]                                     ; $6bee: $f0 $80
	ldh [$3f], a                                     ; $6bf0: $e0 $3f
	ld sp, hl                                        ; $6bf2: $f9
	ld b, $f8                                        ; $6bf3: $06 $f8
	rlca                                             ; $6bf5: $07
	ei                                               ; $6bf6: $fb
	inc b                                            ; $6bf7: $04
	ei                                               ; $6bf8: $fb
	ld b, h                                          ; $6bf9: $44
	sbc $29                                          ; $6bfa: $de $29
	ret z                                            ; $6bfc: $c8

	ccf                                              ; $6bfd: $3f
	ld e, $e9                                        ; $6bfe: $1e $e9
	jr z, @+$01                                      ; $6c00: $28 $ff

	ld e, $e9                                        ; $6c02: $1e $e9
	ld e, h                                          ; $6c04: $5c
	xor e                                            ; $6c05: $ab
	sbc $29                                          ; $6c06: $de $29
	sbc $29                                          ; $6c08: $de $29
	ld hl, sp-$7e                                    ; $6c0a: $f8 $82
	ld hl, sp-$7d                                    ; $6c0c: $f8 $83
	add sp, -$7b                                     ; $6c0e: $e8 $85
	sub l                                            ; $6c10: $95
	jp c, $cbb7                                      ; $6c11: $da $b7 $cb

	or a                                             ; $6c14: $b7
	ei                                               ; $6c15: $fb
	sub a                                            ; $6c16: $97
	ei                                               ; $6c17: $fb
	add a                                            ; $6c18: $87
	ei                                               ; $6c19: $fb
	add [hl]                                         ; $6c1a: $86
	ld d, e                                          ; $6c1b: $53
	rrca                                             ; $6c1c: $0f
	dec bc                                           ; $6c1d: $0b
	ld h, a                                          ; $6c1e: $67
	xor e                                            ; $6c1f: $ab
	rlca                                             ; $6c20: $07
	ld c, b                                          ; $6c21: $48
	add a                                            ; $6c22: $87
	jr z, @-$37                                      ; $6c23: $28 $c7

	sbc [hl]                                         ; $6c25: $9e
	rst SubAFromBC                                          ; $6c26: $e7
	jp hl                                            ; $6c27: $e9


	rst FarCall                                          ; $6c28: $f7
	or h                                             ; $6c29: $b4
	jp c, Jump_03a_77ff                              ; $6c2a: $da $ff $77

	sbc h                                            ; $6c2d: $9c
	sub a                                            ; $6c2e: $97
	ld a, $c1                                        ; $6c2f: $3e $c1
	add b                                            ; $6c31: $80
	rst $38                                          ; $6c32: $ff
	ld a, a                                          ; $6c33: $7f
	add b                                            ; $6c34: $80
	cp a                                             ; $6c35: $bf
	ccf                                              ; $6c36: $3f
	ld [hl], a                                       ; $6c37: $77
	cp $7f                                           ; $6c38: $fe $7f
	pop af                                           ; $6c3a: $f1
	sbc b                                            ; $6c3b: $98
	or b                                             ; $6c3c: $b0
	rst GetHLinHL                                          ; $6c3d: $cf
	ldh [rIE], a                                     ; $6c3e: $e0 $ff
	jr c, @+$01                                      ; $6c40: $38 $ff

	ld e, $75                                        ; $6c42: $1e $75
	db $dd                                           ; $6c44: $dd
	ld l, a                                          ; $6c45: $6f
	ld e, e                                          ; $6c46: $5b
	ld a, h                                          ; $6c47: $7c
	jr nc, jr_03a_6be5                               ; $6c48: $30 $9b

	cp $03                                           ; $6c4a: $fe $03
	db $fc                                           ; $6c4c: $fc
	rlca                                             ; $6c4d: $07
	ld [hl], l                                       ; $6c4e: $75
	xor c                                            ; $6c4f: $a9
	ld [hl], e                                       ; $6c50: $73
	ldh a, [$7f]                                     ; $6c51: $f0 $7f
	sub $6e                                          ; $6c53: $d6 $6e
	adc b                                            ; $6c55: $88
	sbc [hl]                                         ; $6c56: $9e
	db $fd                                           ; $6c57: $fd
	ld l, e                                          ; $6c58: $6b
	ldh a, [$7e]                                     ; $6c59: $f0 $7e
	db $eb                                           ; $6c5b: $eb
	sbc [hl]                                         ; $6c5c: $9e
	rst JumpTable                                          ; $6c5d: $c7
	ld l, [hl]                                       ; $6c5e: $6e
	halt                                             ; $6c5f: $76
	rst SubAFromDE                                          ; $6c60: $df
	rst FarCall                                          ; $6c61: $f7
	ld [hl], e                                       ; $6c62: $73
	add hl, sp                                       ; $6c63: $39
	ld a, l                                          ; $6c64: $7d
	cp $9e                                           ; $6c65: $fe $9e
	rra                                              ; $6c67: $1f
	ld a, c                                          ; $6c68: $79
	ld hl, sp-$66                                    ; $6c69: $f8 $9a
	pop af                                           ; $6c6b: $f1
	ld [$fcb7], sp                                   ; $6c6c: $08 $b7 $fc
	di                                               ; $6c6f: $f3
	ld a, c                                          ; $6c70: $79
	sub b                                            ; $6c71: $90
	ld a, [hl]                                       ; $6c72: $7e
	ld a, d                                          ; $6c73: $7a
	ld a, h                                          ; $6c74: $7c
	ldh [c], a                                       ; $6c75: $e2
	ld [hl], c                                       ; $6c76: $71
	ld [$f979], sp                                   ; $6c77: $08 $79 $f9
	ld c, h                                          ; $6c7a: $4c
	ld b, b                                          ; $6c7b: $40
	scf                                              ; $6c7c: $37
	ldh a, [$7f]                                     ; $6c7d: $f0 $7f

Call_03a_6c7f:
	sbc d                                            ; $6c7f: $9a
	ld a, a                                          ; $6c80: $7f
	inc e                                            ; $6c81: $1c
	ld a, a                                          ; $6c82: $7f
	cp $76                                           ; $6c83: $fe $76
	ld d, h                                          ; $6c85: $54
	ld l, a                                          ; $6c86: $6f
	ldh a, [$7f]                                     ; $6c87: $f0 $7f
	db $fd                                           ; $6c89: $fd
	sbc [hl]                                         ; $6c8a: $9e
	push hl                                          ; $6c8b: $e5
	ld l, l                                          ; $6c8c: $6d
	and l                                            ; $6c8d: $a5
	dec hl                                           ; $6c8e: $2b
	ret nc                                           ; $6c8f: $d0

	ld c, a                                          ; $6c90: $4f
	ldh a, [$7f]                                     ; $6c91: $f0 $7f
	sub a                                            ; $6c93: $97
	ld a, [hl]                                       ; $6c94: $7e
	pop bc                                           ; $6c95: $c1
	ld e, a                                          ; $6c96: $5f
	cp $96                                           ; $6c97: $fe $96
	and b                                            ; $6c99: $a0
	add b                                            ; $6c9a: $80
	and b                                            ; $6c9b: $a0
	sbc a                                            ; $6c9c: $9f
	cp a                                             ; $6c9d: $bf
	sbc a                                            ; $6c9e: $9f
	xor a                                            ; $6c9f: $af
	sbc a                                            ; $6ca0: $9f
	and a                                            ; $6ca1: $a7
	ld a, e                                          ; $6ca2: $7b
	ld a, [$ff9e]                                    ; $6ca3: $fa $9e $ff
	ld a, e                                          ; $6ca6: $7b
	cp $9e                                           ; $6ca7: $fe $9e
	ld [$fb79], sp                                   ; $6ca9: $08 $79 $fb
	ld l, c                                          ; $6cac: $69
	sub $71                                          ; $6cad: $d6 $71
	ld l, [hl]                                       ; $6caf: $6e
	ld a, [hl]                                       ; $6cb0: $7e
	call z, $3f91                                    ; $6cb1: $cc $91 $3f
	add h                                            ; $6cb4: $84
	ld e, c                                          ; $6cb5: $59
	and $dd                                          ; $6cb6: $e6 $dd
	ldh [c], a                                       ; $6cb8: $e2
	xor $d1                                          ; $6cb9: $ee $d1
	rst SubAFromBC                                          ; $6cbb: $e7
	ret c                                            ; $6cbc: $d8

	di                                               ; $6cbd: $f3
	adc h                                            ; $6cbe: $8c
	ld a, e                                          ; $6cbf: $7b
	add h                                            ; $6cc0: $84
	halt                                             ; $6cc1: $76
	call z, $fe7f                                    ; $6cc2: $cc $7f $fe
	sub b                                            ; $6cc5: $90
	sbc [hl]                                         ; $6cc6: $9e
	ld l, c                                          ; $6cc7: $69
	jr c, @+$01                                      ; $6cc8: $38 $ff

	ld a, $ff                                        ; $6cca: $3e $ff
	cp [hl]                                          ; $6ccc: $be
	pop bc                                           ; $6ccd: $c1
	ld c, [hl]                                       ; $6cce: $4e
	pop af                                           ; $6ccf: $f1
	ei                                               ; $6cd0: $fb
	add [hl]                                         ; $6cd1: $86
	ei                                               ; $6cd2: $fb
	add [hl]                                         ; $6cd3: $86
	di                                               ; $6cd4: $f3
	ld a, e                                          ; $6cd5: $7b
	cp $80                                           ; $6cd6: $fe $80
	ldh [c], a                                       ; $6cd8: $e2
	rst SubAFromHL                                          ; $6cd9: $d7
	ei                                               ; $6cda: $fb
	or a                                             ; $6cdb: $b7
	db $fd                                           ; $6cdc: $fd
	add d                                            ; $6cdd: $82
	db $fd                                           ; $6cde: $fd
	add d                                            ; $6cdf: $82
	sub [hl]                                         ; $6ce0: $96
	cp a                                             ; $6ce1: $bf
	rst $38                                          ; $6ce2: $ff
	add a                                            ; $6ce3: $87
	rst $38                                          ; $6ce4: $ff
	add a                                            ; $6ce5: $87
	db $fd                                           ; $6ce6: $fd
	add a                                            ; $6ce7: $87
	rst AddAOntoHL                                          ; $6ce8: $ef
	rst $38                                          ; $6ce9: $ff
	pop af                                           ; $6cea: $f1
	rst $38                                          ; $6ceb: $ff
	ei                                               ; $6cec: $fb
	add h                                            ; $6ced: $84
	di                                               ; $6cee: $f3
	adc h                                            ; $6cef: $8c
	daa                                              ; $6cf0: $27
	rst $38                                          ; $6cf1: $ff
	rst SubAFromDE                                          ; $6cf2: $df
	rst $38                                          ; $6cf3: $ff
	dec hl                                           ; $6cf4: $2b
	rst FarCall                                          ; $6cf5: $f7
	db $eb                                           ; $6cf6: $eb
	ld a, b                                          ; $6cf7: $78
	ld [hl+], a                                      ; $6cf8: $22
	add b                                            ; $6cf9: $80
	ld h, c                                          ; $6cfa: $61
	sbc $fe                                          ; $6cfb: $de $fe
	ld bc, $ff3f                                     ; $6cfd: $01 $3f $ff
	rlca                                             ; $6d00: $07
	ccf                                              ; $6d01: $3f
	inc de                                           ; $6d02: $13
	ccf                                              ; $6d03: $3f
	inc e                                            ; $6d04: $1c
	inc sp                                           ; $6d05: $33
	dec de                                           ; $6d06: $1b
	inc [hl]                                         ; $6d07: $34
	sbc b                                            ; $6d08: $98
	inc [hl]                                         ; $6d09: $34
	dec de                                           ; $6d0a: $1b
	or h                                             ; $6d0b: $b4
	sbc d                                            ; $6d0c: $9a
	or h                                             ; $6d0d: $b4
	sbc e                                            ; $6d0e: $9b
	or h                                             ; $6d0f: $b4
	adc a                                            ; $6d10: $8f
	ldh a, [$e7]                                     ; $6d11: $f0 $e7
	ld hl, sp-$05                                    ; $6d13: $f8 $fb
	db $fc                                           ; $6d15: $fc
	ld a, $ff                                        ; $6d16: $3e $ff
	adc a                                            ; $6d18: $8f
	sbc c                                            ; $6d19: $99
	ld a, a                                          ; $6d1a: $7f
	inc hl                                           ; $6d1b: $23
	rra                                              ; $6d1c: $1f
	rlc a                                            ; $6d1d: $cb $07
	db $f4                                           ; $6d1f: $f4
	ld a, d                                          ; $6d20: $7a
	ld a, [$366f]                                    ; $6d21: $fa $6f $36
	db $db                                           ; $6d24: $db
	rst $38                                          ; $6d25: $ff
	ld a, d                                          ; $6d26: $7a
	and c                                            ; $6d27: $a1
	ld a, h                                          ; $6d28: $7c
	inc l                                            ; $6d29: $2c
	ld a, l                                          ; $6d2a: $7d
	or c                                             ; $6d2b: $b1
	ld h, e                                          ; $6d2c: $63
	ldh a, [$df]                                     ; $6d2d: $f0 $df
	rst $38                                          ; $6d2f: $ff
	sub e                                            ; $6d30: $93
	ret c                                            ; $6d31: $d8

	inc bc                                           ; $6d32: $03
	ld de, $7707                                     ; $6d33: $11 $07 $77
	inc bc                                           ; $6d36: $03
	rrca                                             ; $6d37: $0f
	di                                               ; $6d38: $f3
	ei                                               ; $6d39: $fb
	rst FarCall                                          ; $6d3a: $f7
	di                                               ; $6d3b: $f3
	rst $38                                          ; $6d3c: $ff
	ld [hl], a                                       ; $6d3d: $77
	cp $71                                           ; $6d3e: $fe $71
	xor [hl]                                         ; $6d40: $ae
	ld e, e                                          ; $6d41: $5b
	jr nz, jr_03a_6d73                               ; $6d42: $20 $2f

	nop                                              ; $6d44: $00
	sbc l                                            ; $6d45: $9d
	ld h, e                                          ; $6d46: $63
	ld h, [hl]                                       ; $6d47: $66
	db $db                                           ; $6d48: $db
	ld d, l                                          ; $6d49: $55
	rst SubAFromDE                                          ; $6d4a: $df
	ld [hl], a                                       ; $6d4b: $77
	rst SubAFromDE                                          ; $6d4c: $df
	ld h, [hl]                                       ; $6d4d: $66
	ld e, a                                          ; $6d4e: $5f
	or $97                                           ; $6d4f: $f6 $97
	ld h, [hl]                                       ; $6d51: $66
	ld h, l                                          ; $6d52: $65
	ld d, l                                          ; $6d53: $55
	ld d, l                                          ; $6d54: $55
	ld h, e                                          ; $6d55: $63
	ld d, l                                          ; $6d56: $55
	ld d, [hl]                                       ; $6d57: $56
	ld h, l                                          ; $6d58: $65
	db $dd                                           ; $6d59: $dd
	ld h, [hl]                                       ; $6d5a: $66
	rst SubAFromDE                                          ; $6d5b: $df
	ld b, h                                          ; $6d5c: $44
	sbc [hl]                                         ; $6d5d: $9e
	ld d, l                                          ; $6d5e: $55
	ld a, e                                          ; $6d5f: $7b
	ldh a, [$dd]                                     ; $6d60: $f0 $dd
	ld h, [hl]                                       ; $6d62: $66
	sbc l                                            ; $6d63: $9d
	ld h, h                                          ; $6d64: $64
	ld b, [hl]                                       ; $6d65: $46
	sbc $55                                          ; $6d66: $de $55
	sbc [hl]                                         ; $6d68: $9e
	ld d, a                                          ; $6d69: $57
	ld [hl], e                                       ; $6d6a: $73
	or $df                                           ; $6d6b: $f6 $df
	ld b, h                                          ; $6d6d: $44
	ld a, a                                          ; $6d6e: $7f
	jp nc, Jump_03a_759e                             ; $6d6f: $d2 $9e $75

	ld a, l                                          ; $6d72: $7d

jr_03a_6d73:
	add e                                            ; $6d73: $83
	rst SubAFromDE                                          ; $6d74: $df
	db $ed                                           ; $6d75: $ed
	adc a                                            ; $6d76: $8f
	db $dd                                           ; $6d77: $dd
	call c, $dddc                                    ; $6d78: $dc $dc $dd
	sub l                                            ; $6d7b: $95
	or h                                             ; $6d7c: $b4
	add [hl]                                         ; $6d7d: $86
	add [hl]                                         ; $6d7e: $86
	and [hl]                                         ; $6d7f: $a6
	and a                                            ; $6d80: $a7
	and a                                            ; $6d81: $a7
	and [hl]                                         ; $6d82: $a6
	xor $cf                                          ; $6d83: $ee $cf
	inc de                                           ; $6d85: $13
	ld d, c                                          ; $6d86: $51
	sbc $55                                          ; $6d87: $de $55
	rst SubAFromDE                                          ; $6d89: $df
	dec d                                            ; $6d8a: $15
	sbc h                                            ; $6d8b: $9c
	ld d, l                                          ; $6d8c: $55
	ld de, $deb9                                     ; $6d8d: $11 $b9 $de
	cp e                                             ; $6d90: $bb
	rst SubAFromDE                                          ; $6d91: $df
	ei                                               ; $6d92: $fb
	sbc l                                            ; $6d93: $9d
	cp e                                             ; $6d94: $bb
	nop                                              ; $6d95: $00
	sbc $10                                          ; $6d96: $de $10
	sbc $14                                          ; $6d98: $de $14
	sbc l                                            ; $6d9a: $9d
	inc c                                            ; $6d9b: $0c
	ld hl, sp-$25                                    ; $6d9c: $f8 $db
	add sp, -$62                                     ; $6d9e: $e8 $9e
	ld hl, sp-$24                                    ; $6da0: $f8 $dc
	ld a, a                                          ; $6da2: $7f
	sbc h                                            ; $6da3: $9c
	rst $38                                          ; $6da4: $ff
	ccf                                              ; $6da5: $3f
	xor a                                            ; $6da6: $af
	ld sp, hl                                        ; $6da7: $f9
	sub h                                            ; $6da8: $94
	ld a, [$d9d9]                                    ; $6da9: $fa $d9 $d9
	pop de                                           ; $6dac: $d1
	jp nc, $d5d0                                     ; $6dad: $d2 $d0 $d5

	ld e, a                                          ; $6db0: $5f
	ccf                                              ; $6db1: $3f
	scf                                              ; $6db2: $37
	scf                                              ; $6db3: $37
	call c, $df3f                                    ; $6db4: $dc $3f $df
	rst $38                                          ; $6db7: $ff
	sbc c                                            ; $6db8: $99
	ldh a, [c]                                       ; $6db9: $f2
	ld l, l                                          ; $6dba: $6d
	ld h, b                                          ; $6dbb: $60
	cp e                                             ; $6dbc: $bb
	add d                                            ; $6dbd: $82
	add l                                            ; $6dbe: $85
	call c, $dfff                                    ; $6dbf: $dc $ff $df
	db $fc                                           ; $6dc2: $fc
	sub l                                            ; $6dc3: $95
	cp $94                                           ; $6dc4: $fe $94
	ld b, l                                          ; $6dc6: $45
	ld a, a                                          ; $6dc7: $7f
	db $db                                           ; $6dc8: $db
	rst FarCall                                          ; $6dc9: $f7
	rst FarCall                                          ; $6dca: $f7
	pop af                                           ; $6dcb: $f1
	ret nc                                           ; $6dcc: $d0

	rst AddAOntoHL                                          ; $6dcd: $ef
	sbc $bf                                          ; $6dce: $de $bf
	sub e                                            ; $6dd0: $93
	ccf                                              ; $6dd1: $3f
	ld a, a                                          ; $6dd2: $7f
	rst $38                                          ; $6dd3: $ff
	rst $38                                          ; $6dd4: $ff
	ei                                               ; $6dd5: $fb
	ei                                               ; $6dd6: $fb
	ldh a, [c]                                       ; $6dd7: $f2
	db $e4                                           ; $6dd8: $e4
	db $fc                                           ; $6dd9: $fc
	pop af                                           ; $6dda: $f1
	rst SubAFromBC                                          ; $6ddb: $e7
	ld c, a                                          ; $6ddc: $4f
	reti                                             ; $6ddd: $d9


	rst $38                                          ; $6dde: $ff
	add b                                            ; $6ddf: $80
	reti                                             ; $6de0: $d9


	jp $a7a3                                         ; $6de1: $c3 $a3 $a7


	adc a                                            ; $6de4: $8f
	cp a                                             ; $6de5: $bf
	ccf                                              ; $6de6: $3f
	or l                                             ; $6de7: $b5
	rst SubAFromBC                                          ; $6de8: $e7
	rst SubAFromBC                                          ; $6de9: $e7
	rst GetHLinHL                                          ; $6dea: $cf
	rst SubAFromDE                                          ; $6deb: $df
	rst $38                                          ; $6dec: $ff
	ld a, a                                          ; $6ded: $7f
	rst $38                                          ; $6dee: $ff
	ld a, e                                          ; $6def: $7b
	ld a, l                                          ; $6df0: $7d
	sub e                                            ; $6df1: $93
	jp Jump_03a_7072                                 ; $6df2: $c3 $72 $70


	ld sp, hl                                        ; $6df5: $f9
	db $eb                                           ; $6df6: $eb
	or $f2                                           ; $6df7: $f6 $f2
	db $fc                                           ; $6df9: $fc
	db $fc                                           ; $6dfa: $fc
	adc l                                            ; $6dfb: $8d
	rst GetHLinHL                                          ; $6dfc: $cf
	add a                                            ; $6dfd: $87
	add a                                            ; $6dfe: $87
	add a                                            ; $6dff: $87
	rst GetHLinHL                                          ; $6e00: $cf
	rst SubAFromBC                                          ; $6e01: $e7
	and e                                            ; $6e02: $a3
	ld a, a                                          ; $6e03: $7f
	ld c, c                                          ; $6e04: $49
	add e                                            ; $6e05: $83
	and b                                            ; $6e06: $a0
	ld [hl+], a                                      ; $6e07: $22
	ld b, e                                          ; $6e08: $43
	ld [hl], a                                       ; $6e09: $77
	ld h, a                                          ; $6e0a: $67
	rst $38                                          ; $6e0b: $ff
	rst JumpTable                                          ; $6e0c: $c7
	ret                                              ; $6e0d: $c9


	rst SubAFromDE                                          ; $6e0e: $df
	rst $38                                          ; $6e0f: $ff
	rst $38                                          ; $6e10: $ff
	db $dd                                           ; $6e11: $dd
	rst $38                                          ; $6e12: $ff
	add a                                            ; $6e13: $87
	add d                                            ; $6e14: $82
	rra                                              ; $6e15: $1f
	cpl                                              ; $6e16: $2f
	ld [hl], a                                       ; $6e17: $77
	db $db                                           ; $6e18: $db
	rst $38                                          ; $6e19: $ff
	add b                                            ; $6e1a: $80
	di                                               ; $6e1b: $f3
	db $e3                                           ; $6e1c: $e3
	di                                               ; $6e1d: $f3
	or l                                             ; $6e1e: $b5
	rst FarCall                                          ; $6e1f: $f7
	inc de                                           ; $6e20: $13
	ld d, a                                          ; $6e21: $57
	db $dd                                           ; $6e22: $dd
	ld a, h                                          ; $6e23: $7c
	call nz, $faee                                   ; $6e24: $c4 $ee $fa
	ld hl, sp-$04                                    ; $6e27: $f8 $fc
	cp $7e                                           ; $6e29: $fe $7e
	rst $38                                          ; $6e2b: $ff
	db $fd                                           ; $6e2c: $fd
	cp $f3                                           ; $6e2d: $fe $f3
	ei                                               ; $6e2f: $fb
	ld sp, $1680                                     ; $6e30: $31 $80 $16
	ld h, c                                          ; $6e33: $61
	push bc                                          ; $6e34: $c5
	xor [hl]                                         ; $6e35: $ae
	db $e3                                           ; $6e36: $e3
	di                                               ; $6e37: $f3
	jp $9300                                         ; $6e38: $c3 $00 $93


	ld [$3a1e], sp                                   ; $6e3b: $08 $1e $3a
	ld [hl], c                                       ; $6e3e: $71
	rst $38                                          ; $6e3f: $ff
	db $fd                                           ; $6e40: $fd
	rst $38                                          ; $6e41: $ff
	rst AddAOntoHL                                          ; $6e42: $ef
	rst SubAFromDE                                          ; $6e43: $df
	rst $38                                          ; $6e44: $ff
	ld sp, hl                                        ; $6e45: $f9
	db $fd                                           ; $6e46: $fd
	db $dd                                           ; $6e47: $dd
	rst $38                                          ; $6e48: $ff
	sbc l                                            ; $6e49: $9d
	ld l, a                                          ; $6e4a: $6f
	ld a, a                                          ; $6e4b: $7f
	ld a, e                                          ; $6e4c: $7b
	ld h, b                                          ; $6e4d: $60
	sub [hl]                                         ; $6e4e: $96
	cp a                                             ; $6e4f: $bf
	sbc a                                            ; $6e50: $9f
	ld e, $3f                                        ; $6e51: $1e $3f
	db $fd                                           ; $6e53: $fd
	pop af                                           ; $6e54: $f1
	sbc a                                            ; $6e55: $9f
	rst SubAFromBC                                          ; $6e56: $e7
	rst GetHLinHL                                          ; $6e57: $cf
	sbc $ff                                          ; $6e58: $de $ff
	sub h                                            ; $6e5a: $94
	cp $ff                                           ; $6e5b: $fe $ff
	rst $38                                          ; $6e5d: $ff
	and h                                            ; $6e5e: $a4
	or l                                             ; $6e5f: $b5
	dec a                                            ; $6e60: $3d
	pop af                                           ; $6e61: $f1
	ld hl, sp-$1c                                    ; $6e62: $f8 $e4
	ld sp, hl                                        ; $6e64: $f9
	ccf                                              ; $6e65: $3f
	sbc $f8                                          ; $6e66: $de $f8
	sub b                                            ; $6e68: $90
	ld a, b                                          ; $6e69: $78
	ldh a, [$f8]                                     ; $6e6a: $f0 $f8
	rst JumpTable                                          ; $6e6c: $c7
	pop bc                                           ; $6e6d: $c1
	ldh a, [$71]                                     ; $6e6e: $f0 $71
	ld sp, hl                                        ; $6e70: $f9
	or c                                             ; $6e71: $b1
	ld [hl], c                                       ; $6e72: $71
	ldh a, [$72]                                     ; $6e73: $f0 $72
	di                                               ; $6e75: $f3
	ccf                                              ; $6e76: $3f
	sbc a                                            ; $6e77: $9f
	ld a, e                                          ; $6e78: $7b
	sub e                                            ; $6e79: $93
	ld a, e                                          ; $6e7a: $7b
	ld d, b                                          ; $6e7b: $50
	rst SubAFromDE                                          ; $6e7c: $df
	add e                                            ; $6e7d: $83
	add [hl]                                         ; $6e7e: $86
	add c                                            ; $6e7f: $81
	db $10                                           ; $6e80: $10
	rla                                              ; $6e81: $17
	or l                                             ; $6e82: $b5
	cp $7e                                           ; $6e83: $fe $7e
	rst SubAFromBC                                          ; $6e85: $e7
	and $f2                                          ; $6e86: $e6 $f2
	pop af                                           ; $6e88: $f1
	ld sp, hl                                        ; $6e89: $f9
	ld a, e                                          ; $6e8a: $7b
	ld [hl], e                                       ; $6e8b: $73
	di                                               ; $6e8c: $f3
	pop bc                                           ; $6e8d: $c1
	ld h, c                                          ; $6e8e: $61
	ld [hl], e                                       ; $6e8f: $73
	ccf                                              ; $6e90: $3f
	rrca                                             ; $6e91: $0f
	dec b                                            ; $6e92: $05
	call z, $ffcf                                    ; $6e93: $cc $cf $ff
	ld e, a                                          ; $6e96: $5f
	ld e, a                                          ; $6e97: $5f
	ld l, a                                          ; $6e98: $6f
	dec e                                            ; $6e99: $1d
	add b                                            ; $6e9a: $80
	push af                                          ; $6e9b: $f5
	push hl                                          ; $6e9c: $e5
	db $e4                                           ; $6e9d: $e4
	push bc                                          ; $6e9e: $c5
	add l                                            ; $6e9f: $85
	add h                                            ; $6ea0: $84
	rst GetHLinHL                                          ; $6ea1: $cf
	add a                                            ; $6ea2: $87
	adc [hl]                                         ; $6ea3: $8e
	sbc [hl]                                         ; $6ea4: $9e
	sbc a                                            ; $6ea5: $9f
	cp [hl]                                          ; $6ea6: $be
	cp $ff                                           ; $6ea7: $fe $ff
	or a                                             ; $6ea9: $b7
	ld d, c                                          ; $6eaa: $51
	ld d, c                                          ; $6eab: $51
	push de                                          ; $6eac: $d5
	ld d, l                                          ; $6ead: $55
	dec d                                            ; $6eae: $15
	ld de, $fb79                                     ; $6eaf: $11 $79 $fb
	cp a                                             ; $6eb2: $bf
	cp a                                             ; $6eb3: $bf
	dec sp                                           ; $6eb4: $3b
	cp e                                             ; $6eb5: $bb
	ei                                               ; $6eb6: $fb
	rst $38                                          ; $6eb7: $ff
	rst FarCall                                          ; $6eb8: $f7
	rst $38                                          ; $6eb9: $ff
	db $db                                           ; $6eba: $db
	inc c                                            ; $6ebb: $0c
	sbc l                                            ; $6ebc: $9d
	jr c, @+$11                                      ; $6ebd: $38 $0f

	db $db                                           ; $6ebf: $db
	ld hl, sp-$21                                    ; $6ec0: $f8 $df
	db $fc                                           ; $6ec2: $fc
	sub a                                            ; $6ec3: $97
	ret                                              ; $6ec4: $c9


	ld d, b                                          ; $6ec5: $50
	ret nc                                           ; $6ec6: $d0

	jr nz, jr_03a_6ec9                               ; $6ec7: $20 $00

jr_03a_6ec9:
	nop                                              ; $6ec9: $00
	ldh a, [$f8]                                     ; $6eca: $f0 $f8
	ld a, [$f080]                                    ; $6ecc: $fa $80 $f0
	inc sp                                           ; $6ecf: $33
	ccf                                              ; $6ed0: $3f
	dec sp                                           ; $6ed1: $3b
	dec sp                                           ; $6ed2: $3b
	dec a                                            ; $6ed3: $3d
	ccf                                              ; $6ed4: $3f
	ccf                                              ; $6ed5: $3f
	inc a                                            ; $6ed6: $3c
	inc de                                           ; $6ed7: $13
	inc de                                           ; $6ed8: $13
	rla                                              ; $6ed9: $17
	rla                                              ; $6eda: $17
	inc de                                           ; $6edb: $13
	db $10                                           ; $6edc: $10
	rra                                              ; $6edd: $1f
	rra                                              ; $6ede: $1f
	add h                                            ; $6edf: $84
	ret                                              ; $6ee0: $c9


	rst FarCall                                          ; $6ee1: $f7
	cp a                                             ; $6ee2: $bf
	rst AddAOntoHL                                          ; $6ee3: $ef
	ei                                               ; $6ee4: $fb
	rst $38                                          ; $6ee5: $ff
	nop                                              ; $6ee6: $00
	ei                                               ; $6ee7: $fb
	rst $38                                          ; $6ee8: $ff
	ei                                               ; $6ee9: $fb
	rst SubAFromBC                                          ; $6eea: $e7
	rst SubAFromBC                                          ; $6eeb: $e7
	daa                                              ; $6eec: $27
	rst SubAFromDE                                          ; $6eed: $df
	rst $38                                          ; $6eee: $ff
	sub a                                            ; $6eef: $97
	add b                                            ; $6ef0: $80
	pop hl                                           ; $6ef1: $e1
	inc bc                                           ; $6ef2: $03
	inc hl                                           ; $6ef3: $23
	rst SubAFromBC                                          ; $6ef4: $e7
	and $c2                                          ; $6ef5: $e6 $c2
	ld hl, sp-$27                                    ; $6ef7: $f8 $d9
	rst $38                                          ; $6ef9: $ff
	add h                                            ; $6efa: $84
	rra                                              ; $6efb: $1f
	sbc a                                            ; $6efc: $9f
	rst SubAFromHL                                          ; $6efd: $d7
	xor [hl]                                         ; $6efe: $ae
	db $db                                           ; $6eff: $db
	rst JumpTable                                          ; $6f00: $c7
	ld b, c                                          ; $6f01: $41
	ld [hl], c                                       ; $6f02: $71
	cp $fe                                           ; $6f03: $fe $fe
	rst $38                                          ; $6f05: $ff
	rst FarCall                                          ; $6f06: $f7
	rst SubAFromBC                                          ; $6f07: $e7
	db $e3                                           ; $6f08: $e3
	rst SubAFromBC                                          ; $6f09: $e7
	rst $38                                          ; $6f0a: $ff
	scf                                              ; $6f0b: $37
	cp l                                             ; $6f0c: $bd
	cp a                                             ; $6f0d: $bf
	and e                                            ; $6f0e: $a3
	and b                                            ; $6f0f: $a0
	and b                                            ; $6f10: $a0
	or b                                             ; $6f11: $b0
	or c                                             ; $6f12: $b1
	ld a, c                                          ; $6f13: $79
	ld a, a                                          ; $6f14: $7f
	ld h, e                                          ; $6f15: $63
	db $dd                                           ; $6f16: $dd
	ld h, c                                          ; $6f17: $61
	sbc c                                            ; $6f18: $99
	ld h, b                                          ; $6f19: $60
	call c, $d0db                                    ; $6f1a: $dc $db $d0
	rst SubAFromHL                                          ; $6f1d: $d7
	db $dd                                           ; $6f1e: $dd
	sbc $c9                                          ; $6f1f: $de $c9
	sbc d                                            ; $6f21: $9a
	rst AddAOntoHL                                          ; $6f22: $ef
	db $fd                                           ; $6f23: $fd
	rst $38                                          ; $6f24: $ff
	ld hl, sp-$20                                    ; $6f25: $f8 $e0
	sbc $f0                                          ; $6f27: $de $f0
	add b                                            ; $6f29: $80
	db $d3                                           ; $6f2a: $d3
	sbc c                                            ; $6f2b: $99
	ld a, [hl-]                                      ; $6f2c: $3a
	adc [hl]                                         ; $6f2d: $8e
	ld c, a                                          ; $6f2e: $4f
	xor $ac                                          ; $6f2f: $ee $ac
	rst SubAFromDE                                          ; $6f31: $df
	rst AddAOntoHL                                          ; $6f32: $ef
	rst SubAFromBC                                          ; $6f33: $e7
	push hl                                          ; $6f34: $e5
	ld [hl], c                                       ; $6f35: $71
	jr nc, @+$13                                     ; $6f36: $30 $11

	ld d, e                                          ; $6f38: $53
	ld h, c                                          ; $6f39: $61
	db $fd                                           ; $6f3a: $fd
	sbc a                                            ; $6f3b: $9f
	dec e                                            ; $6f3c: $1d
	sbc l                                            ; $6f3d: $9d
	inc [hl]                                         ; $6f3e: $34
	rst JumpTable                                          ; $6f3f: $c7
	sub a                                            ; $6f40: $97
	ld [hl], $9f                                     ; $6f41: $36 $9f
	dec c                                            ; $6f43: $0d
	sbc a                                            ; $6f44: $9f
	ccf                                              ; $6f45: $3f
	db $fd                                           ; $6f46: $fd
	db $fc                                           ; $6f47: $fc
	add sp, -$7a                                     ; $6f48: $e8 $86
	ret                                              ; $6f4a: $c9


	ei                                               ; $6f4b: $fb
	cp a                                             ; $6f4c: $bf
	ldh [$e3], a                                     ; $6f4d: $e0 $e3
	ld h, e                                          ; $6f4f: $63
	dec h                                            ; $6f50: $25
	ld b, c                                          ; $6f51: $41
	add [hl]                                         ; $6f52: $86
	rst FarCall                                          ; $6f53: $f7
	pop af                                           ; $6f54: $f1
	db $e3                                           ; $6f55: $e3
	rst FarCall                                          ; $6f56: $f7
	rst SubAFromBC                                          ; $6f57: $e7
	jp Jump_03a_4183                                 ; $6f58: $c3 $83 $41


	pop hl                                           ; $6f5b: $e1
	and b                                            ; $6f5c: $a0
	ldh [$c0], a                                     ; $6f5d: $e0 $c0
	ldh [$f1], a                                     ; $6f5f: $e0 $f1
	pop af                                           ; $6f61: $f1
	rst SubAFromBC                                          ; $6f62: $e7
	ld h, a                                          ; $6f63: $67
	adc a                                            ; $6f64: $8f
	sub h                                            ; $6f65: $94
	ld l, l                                          ; $6f66: $6d
	ld a, a                                          ; $6f67: $7f
	dec c                                            ; $6f68: $0d
	push af                                          ; $6f69: $f5
	ld l, a                                          ; $6f6a: $6f
	rra                                              ; $6f6b: $1f
	db $fd                                           ; $6f6c: $fd
	rst $38                                          ; $6f6d: $ff
	rst SubAFromDE                                          ; $6f6e: $df
	add e                                            ; $6f6f: $83
	ldh [rPCM34], a                                  ; $6f70: $e0 $77
	or c                                             ; $6f72: $b1
	add b                                            ; $6f73: $80
	ldh [hDisp0_SCX], a                                     ; $6f74: $e0 $84
	ld h, a                                          ; $6f76: $67
	dec sp                                           ; $6f77: $3b
	scf                                              ; $6f78: $37
	ld h, l                                          ; $6f79: $65
	ld a, b                                          ; $6f7a: $78
	ld [hl], h                                       ; $6f7b: $74
	ld a, $ff                                        ; $6f7c: $3e $ff
	rst $38                                          ; $6f7e: $ff
	db $f4                                           ; $6f7f: $f4
	ld l, b                                          ; $6f80: $68
	ld a, [hl-]                                      ; $6f81: $3a
	daa                                              ; $6f82: $27
	cpl                                              ; $6f83: $2f
	ccf                                              ; $6f84: $3f
	dec e                                            ; $6f85: $1d
	ld a, [hl]                                       ; $6f86: $7e
	cp $0d                                           ; $6f87: $fe $0d
	push af                                          ; $6f89: $f5
	ldh [c], a                                       ; $6f8a: $e2
	ld hl, sp-$4a                                    ; $6f8b: $f8 $b6
	db $e3                                           ; $6f8d: $e3
	add c                                            ; $6f8e: $81
	ld bc, $fbf3                                     ; $6f8f: $01 $f3 $fb
	db $fd                                           ; $6f92: $fd
	sbc d                                            ; $6f93: $9a
	db $f4                                           ; $6f94: $f4
	db $fc                                           ; $6f95: $fc
	di                                               ; $6f96: $f3
	rst $38                                          ; $6f97: $ff
	adc a                                            ; $6f98: $8f
	ld a, d                                          ; $6f99: $7a
	ld sp, $9c9d                                     ; $6f9a: $31 $9d $9c
	sbc b                                            ; $6f9d: $98
	db $db                                           ; $6f9e: $db
	rst $38                                          ; $6f9f: $ff
	rst SubAFromDE                                          ; $6fa0: $df
	ld a, a                                          ; $6fa1: $7f
	sub d                                            ; $6fa2: $92
	cp e                                             ; $6fa3: $bb
	inc a                                            ; $6fa4: $3c
	ld [hl], b                                       ; $6fa5: $70
	jp hl                                            ; $6fa6: $e9


	rst AddAOntoHL                                          ; $6fa7: $ef
	ld h, [hl]                                       ; $6fa8: $66
	ld h, b                                          ; $6fa9: $60
	cp e                                             ; $6faa: $bb
	or $f7                                           ; $6fab: $f6 $f7
	rst AddAOntoHL                                          ; $6fad: $ef
	rst JumpTable                                          ; $6fae: $c7
	add $de                                          ; $6faf: $c6 $de
	ret nz                                           ; $6fb1: $c0

	sub a                                            ; $6fb2: $97
	ld b, [hl]                                       ; $6fb3: $46
	inc a                                            ; $6fb4: $3c
	jr jr_03a_6fb8                                   ; $6fb5: $18 $01

	ret nz                                           ; $6fb7: $c0

jr_03a_6fb8:
	db $e3                                           ; $6fb8: $e3
	rst JumpTable                                          ; $6fb9: $c7
	rst JumpTable                                          ; $6fba: $c7
	db $dd                                           ; $6fbb: $dd
	rst $38                                          ; $6fbc: $ff
	sub [hl]                                         ; $6fbd: $96
	cp a                                             ; $6fbe: $bf
	ld a, a                                          ; $6fbf: $7f
	cp $fc                                           ; $6fc0: $fe $fc
	ld b, a                                          ; $6fc2: $47
	ld d, e                                          ; $6fc3: $53
	reti                                             ; $6fc4: $d9


	ld sp, hl                                        ; $6fc5: $f9
	rst $38                                          ; $6fc6: $ff
	ld a, d                                          ; $6fc7: $7a
	ld c, b                                          ; $6fc8: $48
	sbc l                                            ; $6fc9: $9d
	cp e                                             ; $6fca: $bb
	rst AddAOntoHL                                          ; $6fcb: $ef
	db $db                                           ; $6fcc: $db
	rst $38                                          ; $6fcd: $ff
	sub h                                            ; $6fce: $94
	pop bc                                           ; $6fcf: $c1
	jr @+$50                                         ; $6fd0: $18 $4e

	ld b, d                                          ; $6fd2: $42
	ei                                               ; $6fd3: $fb
	rst $38                                          ; $6fd4: $ff
	db $fc                                           ; $6fd5: $fc
	cp h                                             ; $6fd6: $bc
	cp a                                             ; $6fd7: $bf
	rst SubAFromBC                                          ; $6fd8: $e7
	rst FarCall                                          ; $6fd9: $f7
	sbc $ff                                          ; $6fda: $de $ff
	sub [hl]                                         ; $6fdc: $96
	ei                                               ; $6fdd: $fb
	rst SubAFromDE                                          ; $6fde: $df
	add l                                            ; $6fdf: $85
	ld h, e                                          ; $6fe0: $63
	ld [hl], c                                       ; $6fe1: $71
	ld [hl], e                                       ; $6fe2: $73
	rst $38                                          ; $6fe3: $ff
	and $6e                                          ; $6fe4: $e6 $6e
	db $db                                           ; $6fe6: $db
	rst $38                                          ; $6fe7: $ff
	sub h                                            ; $6fe8: $94
	ei                                               ; $6fe9: $fb
	sub a                                            ; $6fea: $97
	rra                                              ; $6feb: $1f
	ld hl, sp+$0c                                    ; $6fec: $f8 $0c
	sbc h                                            ; $6fee: $9c
	db $fc                                           ; $6fef: $fc
	db $fd                                           ; $6ff0: $fd
	ld sp, $d771                                     ; $6ff1: $31 $71 $d7
	ld a, d                                          ; $6ff4: $7a
	or h                                             ; $6ff5: $b4
	rst SubAFromDE                                          ; $6ff6: $df
	ld hl, sp-$69                                    ; $6ff7: $f8 $97
	rst GetHLinHL                                          ; $6ff9: $cf
	adc a                                            ; $6ffa: $8f
	add sp, $30                                      ; $6ffb: $e8 $30
	jr nc, jr_03a_7027                               ; $6ffd: $30 $28

	ccf                                              ; $6fff: $3f
	nop                                              ; $7000: $00
	sbc $ff                                          ; $7001: $de $ff
	rst $38                                          ; $7003: $ff
	sbc [hl]                                         ; $7004: $9e
	db $10                                           ; $7005: $10
	ld [hl], e                                       ; $7006: $73
	ld sp, hl                                        ; $7007: $f9
	sbc e                                            ; $7008: $9b
	ld [bc], a                                       ; $7009: $02
	ld bc, $ff7e                                     ; $700a: $01 $7e $ff
	ld a, e                                          ; $700d: $7b
	rst FarCall                                          ; $700e: $f7
	sbc e                                            ; $700f: $9b
	ret nz                                           ; $7010: $c0

	inc bc                                           ; $7011: $03
	ld bc, $7300                                     ; $7012: $01 $00 $73
	ldh a, [$df]                                     ; $7015: $f0 $df
	ldh a, [hDisp1_WX]                                     ; $7017: $f0 $96
	dec de                                           ; $7019: $1b
	cp $00                                           ; $701a: $fe $00
	rst $38                                          ; $701c: $ff
	inc bc                                           ; $701d: $03
	ccf                                              ; $701e: $3f
	ldh a, [$e0]                                     ; $701f: $f0 $e0
	jr nz, jr_03a_709e                               ; $7021: $20 $7b

	ldh a, [hDisp1_WY]                                     ; $7023: $f0 $95
	db $fc                                           ; $7025: $fc
	ret nz                                           ; $7026: $c0

jr_03a_7027:
	nop                                              ; $7027: $00
	ld sp, $2fef                                     ; $7028: $31 $ef $2f
	nop                                              ; $702b: $00
	rst $38                                          ; $702c: $ff
	db $fc                                           ; $702d: $fc
	add hl, de                                       ; $702e: $19
	db $fd                                           ; $702f: $fd
	ld a, e                                          ; $7030: $7b
	pop hl                                           ; $7031: $e1
	add b                                            ; $7032: $80
	rst SubAFromBC                                          ; $7033: $e7
	or h                                             ; $7034: $b4
	cp h                                             ; $7035: $bc
	or c                                             ; $7036: $b1
	cp c                                             ; $7037: $b9
	ld [hl], c                                       ; $7038: $71
	sbc a                                            ; $7039: $9f
	rlca                                             ; $703a: $07
	rst $38                                          ; $703b: $ff
	ld h, c                                          ; $703c: $61
	ld h, c                                          ; $703d: $61
	ld h, l                                          ; $703e: $65
	ld h, l                                          ; $703f: $65
	rst $38                                          ; $7040: $ff
	ld h, e                                          ; $7041: $63
	inc bc                                           ; $7042: $03
	rst $38                                          ; $7043: $ff
	ld sp, hl                                        ; $7044: $f9
	ret z                                            ; $7045: $c8

	call nz, $d3dc                                   ; $7046: $c4 $dc $d3
	bit 7, d                                         ; $7049: $cb $7a
	dec sp                                           ; $704b: $3b
	ldh [$f0], a                                     ; $704c: $e0 $f0
	ld hl, sp-$20                                    ; $704e: $f8 $e0
	db $ec                                           ; $7050: $ec
	or h                                             ; $7051: $b4
	sub h                                            ; $7052: $94
	or h                                             ; $7053: $b4
	rst FarCall                                          ; $7054: $f7
	ld e, l                                          ; $7055: $5d
	ld b, e                                          ; $7056: $43
	ld h, d                                          ; $7057: $62
	ld a, h                                          ; $7058: $7c
	ld bc, $3000                                     ; $7059: $01 $00 $30
	rst $38                                          ; $705c: $ff
	db $e3                                           ; $705d: $e3
	ld [hl], l                                       ; $705e: $75
	pop de                                           ; $705f: $d1
	ld a, e                                          ; $7060: $7b
	call $c485                                       ; $7061: $cd $85 $c4
	inc c                                            ; $7064: $0c
	xor $de                                          ; $7065: $ee $de
	adc b                                            ; $7067: $88
	nop                                              ; $7068: $00
	ld bc, $fbc7                                     ; $7069: $01 $c7 $fb
	di                                               ; $706c: $f3
	ld sp, $7731                                     ; $706d: $31 $31 $77
	nop                                              ; $7070: $00
	nop                                              ; $7071: $00

Jump_03a_7072:
	ld hl, sp-$1f                                    ; $7072: $f8 $e1
	call z, $001c                                    ; $7074: $cc $1c $00
	pop bc                                           ; $7077: $c1
	ld [bc], a                                       ; $7078: $02
	rst $38                                          ; $7079: $ff
	rst FarCall                                          ; $707a: $f7
	rlca                                             ; $707b: $07
	inc sp                                           ; $707c: $33
	ld a, e                                          ; $707d: $7b
	or d                                             ; $707e: $b2
	ld a, a                                          ; $707f: $7f
	rst SubAFromHL                                          ; $7080: $d7
	add b                                            ; $7081: $80
	rrca                                             ; $7082: $0f
	ld l, a                                          ; $7083: $6f
	cp a                                             ; $7084: $bf
	ld l, a                                          ; $7085: $6f
	sbc h                                            ; $7086: $9c
	rst $38                                          ; $7087: $ff
	jr nc, jr_03a_70f7                               ; $7088: $30 $6d

	ld a, a                                          ; $708a: $7f
	rst $38                                          ; $708b: $ff
	ld a, a                                          ; $708c: $7f
	cp a                                             ; $708d: $bf
	ld h, e                                          ; $708e: $63
	nop                                              ; $708f: $00
	rst $38                                          ; $7090: $ff
	sbc a                                            ; $7091: $9f
	add b                                            ; $7092: $80
	and d                                            ; $7093: $a2
	ld c, d                                          ; $7094: $4a
	ld h, b                                          ; $7095: $60
	nop                                              ; $7096: $00
	db $fc                                           ; $7097: $fc
	ld a, a                                          ; $7098: $7f
	rst $38                                          ; $7099: $ff
	di                                               ; $709a: $f3
	pop bc                                           ; $709b: $c1
	add l                                            ; $709c: $85
	sbc a                                            ; $709d: $9f

jr_03a_709e:
	rst $38                                          ; $709e: $ff
	inc bc                                           ; $709f: $03
	rst $38                                          ; $70a0: $ff
	sub h                                            ; $70a1: $94
	rra                                              ; $70a2: $1f
	rrca                                             ; $70a3: $0f
	cp $7f                                           ; $70a4: $fe $7f
	ccf                                              ; $70a6: $3f
	rst SubAFromDE                                          ; $70a7: $df
	ld a, a                                          ; $70a8: $7f
	rst $38                                          ; $70a9: $ff
	cp a                                             ; $70aa: $bf
	inc sp                                           ; $70ab: $33
	ld a, a                                          ; $70ac: $7f
	ld a, e                                          ; $70ad: $7b
	ld hl, $bf92                                     ; $70ae: $21 $92 $bf
	rst $38                                          ; $70b1: $ff
	rst $38                                          ; $70b2: $ff
	rst GetHLinHL                                          ; $70b3: $cf
	rst SubAFromDE                                          ; $70b4: $df
	db $e4                                           ; $70b5: $e4
	rst $38                                          ; $70b6: $ff
	ld sp, hl                                        ; $70b7: $f9
	and l                                            ; $70b8: $a5
	ld b, h                                          ; $70b9: $44
	db $fc                                           ; $70ba: $fc
	rst $38                                          ; $70bb: $ff
	db $fc                                           ; $70bc: $fc
	sbc $ff                                          ; $70bd: $de $ff
	sbc [hl]                                         ; $70bf: $9e
	ld a, d                                          ; $70c0: $7a
	sbc $ff                                          ; $70c1: $de $ff
	rst SubAFromDE                                          ; $70c3: $df
	rst SubAFromDE                                          ; $70c4: $df
	rst SubAFromDE                                          ; $70c5: $df
	ei                                               ; $70c6: $fb
	sbc e                                            ; $70c7: $9b
	ld [hl], a                                       ; $70c8: $77
	ld b, a                                          ; $70c9: $47
	ld a, [hl-]                                      ; $70ca: $3a
	ld b, $74                                        ; $70cb: $06 $74
	or [hl]                                          ; $70cd: $b6
	rst SubAFromDE                                          ; $70ce: $df
	rst $38                                          ; $70cf: $ff
	ld a, [hl]                                       ; $70d0: $7e
	reti                                             ; $70d1: $d9


	sub a                                            ; $70d2: $97
	cp b                                             ; $70d3: $b8
	adc a                                            ; $70d4: $8f
	sbc a                                            ; $70d5: $9f
	jp nc, $c7ce                                     ; $70d6: $d2 $ce $c7

	ccf                                              ; $70d9: $3f
	ccf                                              ; $70da: $3f
	ld [hl], l                                       ; $70db: $75
	ld d, c                                          ; $70dc: $51
	db $dd                                           ; $70dd: $dd
	rst $38                                          ; $70de: $ff
	sub d                                            ; $70df: $92
	ld b, l                                          ; $70e0: $45
	xor c                                            ; $70e1: $a9
	rst JumpTable                                          ; $70e2: $c7
	db $ed                                           ; $70e3: $ed
	push de                                          ; $70e4: $d5
	rst GetHLinHL                                          ; $70e5: $cf
	cp [hl]                                          ; $70e6: $be
	rst $38                                          ; $70e7: $ff
	ld hl, sp-$40                                    ; $70e8: $f8 $c0
	ldh [$e6], a                                     ; $70ea: $e0 $e6
	xor $79                                          ; $70ec: $ee $79
	ld b, b                                          ; $70ee: $40
	dec d                                            ; $70ef: $15
	nop                                              ; $70f0: $00
	call c, $9c33                                    ; $70f1: $dc $33 $9c
	ld d, [hl]                                       ; $70f4: $56
	ld h, l                                          ; $70f5: $65
	ld h, [hl]                                       ; $70f6: $66

jr_03a_70f7:
	jp c, $9d33                                      ; $70f7: $da $33 $9d

	ld d, l                                          ; $70fa: $55
	ld [hl], $77                                     ; $70fb: $36 $77
	ei                                               ; $70fd: $fb
	ld [hl], e                                       ; $70fe: $73
	or $9e                                           ; $70ff: $f6 $9e
	ld d, [hl]                                       ; $7101: $56
	sbc $33                                          ; $7102: $de $33
	ld c, l                                          ; $7104: $4d
	add l                                            ; $7105: $85
	add l                                            ; $7106: $85
	rst FarCall                                          ; $7107: $f7
	ld e, a                                          ; $7108: $5f
	ld hl, sp-$32                                    ; $7109: $f8 $ce
	jr nc, jr_03a_710d                               ; $710b: $30 $00

jr_03a_710d:
	nop                                              ; $710d: $00
	inc b                                            ; $710e: $04
	ei                                               ; $710f: $fb
	cp a                                             ; $7110: $bf
	rst $38                                          ; $7111: $ff
	ldh a, [$c0]                                     ; $7112: $f0 $c0
	nop                                              ; $7114: $00
	nop                                              ; $7115: $00
	inc bc                                           ; $7116: $03
	db $fc                                           ; $7117: $fc
	add $f0                                          ; $7118: $c6 $f0
	nop                                              ; $711a: $00
	ld bc, $800c                                     ; $711b: $01 $0c $80
	nop                                              ; $711e: $00
	rst $38                                          ; $711f: $ff
	ld hl, sp-$02                                    ; $7120: $f8 $fe
	sub e                                            ; $7122: $93
	inc bc                                           ; $7123: $03
	ld a, a                                          ; $7124: $7f
	rst $38                                          ; $7125: $ff
	xor $00                                          ; $7126: $ee $00
	nop                                              ; $7128: $00
	rla                                              ; $7129: $17
	nop                                              ; $712a: $00
	inc bc                                           ; $712b: $03
	adc c                                            ; $712c: $89
	nop                                              ; $712d: $00
	db $10                                           ; $712e: $10
	cp $82                                           ; $712f: $fe $82
	rst $38                                          ; $7131: $ff
	db $fc                                           ; $7132: $fc
	halt                                             ; $7133: $76
	rst $38                                          ; $7134: $ff
	nop                                              ; $7135: $00
	nop                                              ; $7136: $00
	pop bc                                           ; $7137: $c1
	ld a, a                                          ; $7138: $7f
	rla                                              ; $7139: $17
	cp $ff                                           ; $713a: $fe $ff
	rst $38                                          ; $713c: $ff
	nop                                              ; $713d: $00
	inc bc                                           ; $713e: $03
	ccf                                              ; $713f: $3f
	rst $38                                          ; $7140: $ff
	rst $38                                          ; $7141: $ff
	ld bc, $0000                                     ; $7142: $01 $00 $00
	inc a                                            ; $7145: $3c
	db $e4                                           ; $7146: $e4
	add b                                            ; $7147: $80
	add a                                            ; $7148: $87
	ld c, a                                          ; $7149: $4f
	ld sp, hl                                        ; $714a: $f9
	ld a, b                                          ; $714b: $78
	rst AddAOntoHL                                          ; $714c: $ef
	inc bc                                           ; $714d: $03
	db $dd                                           ; $714e: $dd
	rst $38                                          ; $714f: $ff
	sub e                                            ; $7150: $93
	cp $03                                           ; $7151: $fe $03
	nop                                              ; $7153: $00
	rst FarCall                                          ; $7154: $f7
	ld bc, $ff03                                     ; $7155: $01 $03 $ff
	ld a, [hl]                                       ; $7158: $7e
	add e                                            ; $7159: $83
	ld c, a                                          ; $715a: $4f
	nop                                              ; $715b: $00
	rrca                                             ; $715c: $0f
	db $dd                                           ; $715d: $dd
	rst $38                                          ; $715e: $ff
	sub h                                            ; $715f: $94
	ld a, h                                          ; $7160: $7c
	or b                                             ; $7161: $b0
	nop                                              ; $7162: $00
	db $db                                           ; $7163: $db
	rst $38                                          ; $7164: $ff
	ei                                               ; $7165: $fb
	add $ff                                          ; $7166: $c6 $ff
	ret nz                                           ; $7168: $c0

	halt                                             ; $7169: $76
	sbc a                                            ; $716a: $9f
	sbc $ff                                          ; $716b: $de $ff
	sbc h                                            ; $716d: $9c
	ld sp, hl                                        ; $716e: $f9
	rst $38                                          ; $716f: $ff
	ld a, a                                          ; $7170: $7f
	ld a, e                                          ; $7171: $7b
	cp h                                             ; $7172: $bc
	ld a, a                                          ; $7173: $7f
	call nz, Call_03a_459b                           ; $7174: $c4 $9b $45
	cp $48                                           ; $7177: $fe $48
	ld h, e                                          ; $7179: $63
	db $dd                                           ; $717a: $dd
	rst $38                                          ; $717b: $ff
	add b                                            ; $717c: $80
	cp h                                             ; $717d: $bc
	db $fc                                           ; $717e: $fc
	db $f4                                           ; $717f: $f4
	nop                                              ; $7180: $00
	nop                                              ; $7181: $00
	jp $ef7d                                         ; $7182: $c3 $7d $ef


	rst $38                                          ; $7185: $ff
	sbc $00                                          ; $7186: $de $00
	cp a                                             ; $7188: $bf
	ld hl, sp-$01                                    ; $7189: $f8 $ff
	ei                                               ; $718b: $fb
	rst $38                                          ; $718c: $ff
	rst $38                                          ; $718d: $ff
	jr nz, jr_03a_7190                               ; $718e: $20 $00

jr_03a_7190:
	nop                                              ; $7190: $00
	rlca                                             ; $7191: $07
	jr c, jr_03a_71f3                                ; $7192: $38 $5f

	cp $9c                                           ; $7194: $fe $9c
	add hl, sp                                       ; $7196: $39
	ld b, b                                          ; $7197: $40
	or $3f                                           ; $7198: $f6 $3f
	rst $38                                          ; $719a: $ff
	db $e3                                           ; $719b: $e3
	rst SubAFromDE                                          ; $719c: $df
	rst $38                                          ; $719d: $ff
	sub a                                            ; $719e: $97
	ld b, $3f                                        ; $719f: $06 $3f
	add hl, bc                                       ; $71a1: $09
	ret nz                                           ; $71a2: $c0

	rst $38                                          ; $71a3: $ff
	db $fc                                           ; $71a4: $fc
	ld [hl], c                                       ; $71a5: $71
	rlca                                             ; $71a6: $07
	ld a, e                                          ; $71a7: $7b
	sub c                                            ; $71a8: $91
	ld [hl], a                                       ; $71a9: $77
	and e                                            ; $71aa: $a3
	sbc [hl]                                         ; $71ab: $9e
	ld hl, sp+$7b                                    ; $71ac: $f8 $7b
	sub c                                            ; $71ae: $91
	adc d                                            ; $71af: $8a
	nop                                              ; $71b0: $00
	xor $ad                                          ; $71b1: $ee $ad
	db $fc                                           ; $71b3: $fc
	ldh a, [$80]                                     ; $71b4: $f0 $80
	di                                               ; $71b6: $f3
	rst $38                                          ; $71b7: $ff
	rst $38                                          ; $71b8: $ff
	pop af                                           ; $71b9: $f1
	jp nc, $0f03                                     ; $71ba: $d2 $03 $0f

	ld a, a                                          ; $71bd: $7f
	inc c                                            ; $71be: $0c
	nop                                              ; $71bf: $00
	nop                                              ; $71c0: $00
	ret nz                                           ; $71c1: $c0

	ei                                               ; $71c2: $fb
	halt                                             ; $71c3: $76
	jr nz, @+$79                                     ; $71c4: $20 $77

	db $e3                                           ; $71c6: $e3
	sbc e                                            ; $71c7: $9b
	ccf                                              ; $71c8: $3f
	inc b                                            ; $71c9: $04
	adc c                                            ; $71ca: $89
	rst SubAFromDE                                          ; $71cb: $df
	cp $9c                                           ; $71cc: $fe $9c
	ld bc, $7f7f                                     ; $71ce: $01 $7f $7f
	ld a, e                                          ; $71d1: $7b
	ld l, b                                          ; $71d2: $68
	sbc d                                            ; $71d3: $9a
	db $fc                                           ; $71d4: $fc
	add b                                            ; $71d5: $80
	rra                                              ; $71d6: $1f
	add b                                            ; $71d7: $80
	add b                                            ; $71d8: $80
	ld [hl], a                                       ; $71d9: $77
	ld [hl-], a                                      ; $71da: $32
	sbc l                                            ; $71db: $9d
	ld a, a                                          ; $71dc: $7f
	ldh [$de], a                                     ; $71dd: $e0 $de
	rst $38                                          ; $71df: $ff
	sbc h                                            ; $71e0: $9c
	ld hl, sp-$3f                                    ; $71e1: $f8 $c1
	rra                                              ; $71e3: $1f
	ld a, e                                          ; $71e4: $7b
	dec a                                            ; $71e5: $3d
	ld a, e                                          ; $71e6: $7b
	and h                                            ; $71e7: $a4
	adc c                                            ; $71e8: $89
	ld a, $e0                                        ; $71e9: $3e $e0
	add sp, -$01                                     ; $71eb: $e8 $ff
	rst JumpTable                                          ; $71ed: $c7
	add e                                            ; $71ee: $83
	sub a                                            ; $71ef: $97
	ld l, a                                          ; $71f0: $6f
	ld a, a                                          ; $71f1: $7f
	rst $38                                          ; $71f2: $ff

jr_03a_71f3:
	rst $38                                          ; $71f3: $ff
	xor a                                            ; $71f4: $af
	adc a                                            ; $71f5: $8f
	inc b                                            ; $71f6: $04
	ld h, b                                          ; $71f7: $60
	sub b                                            ; $71f8: $90
	add b                                            ; $71f9: $80
	nop                                              ; $71fa: $00
	nop                                              ; $71fb: $00
	ld d, b                                          ; $71fc: $50
	rst $38                                          ; $71fd: $ff
	rst FarCall                                          ; $71fe: $f7
	db $dd                                           ; $71ff: $dd
	rst $38                                          ; $7200: $ff
	sbc e                                            ; $7201: $9b
	sbc a                                            ; $7202: $9f
	inc bc                                           ; $7203: $03
	rst $38                                          ; $7204: $ff
	rrca                                             ; $7205: $0f
	db $fd                                           ; $7206: $fd
	sbc h                                            ; $7207: $9c
	ld h, c                                          ; $7208: $61
	rst $38                                          ; $7209: $ff
	db $f4                                           ; $720a: $f4
	ld a, e                                          ; $720b: $7b
	halt                                             ; $720c: $76
	sub [hl]                                         ; $720d: $96
	rst FarCall                                          ; $720e: $f7
	cp a                                             ; $720f: $bf
	ld a, a                                          ; $7210: $7f
	rst GetHLinHL                                          ; $7211: $cf
	rst $38                                          ; $7212: $ff
	rst $38                                          ; $7213: $ff
	ld a, a                                          ; $7214: $7f
	rlca                                             ; $7215: $07
	rrca                                             ; $7216: $0f
	ld a, e                                          ; $7217: $7b
	rst SubAFromHL                                          ; $7218: $d7
	sbc b                                            ; $7219: $98
	ld [hl], d                                       ; $721a: $72
	nop                                              ; $721b: $00
	add b                                            ; $721c: $80
	ld bc, $f141                                     ; $721d: $01 $41 $f1
	di                                               ; $7220: $f3
	ld l, a                                          ; $7221: $6f
	ld a, l                                          ; $7222: $7d
	sbc $ff                                          ; $7223: $de $ff
	sub a                                            ; $7225: $97
	jp nz, $0103                                     ; $7226: $c2 $03 $01

	ld a, $06                                        ; $7229: $3e $06
	rlca                                             ; $722b: $07
	rlca                                             ; $722c: $07
	ld bc, $387b                                     ; $722d: $01 $7b $38
	sbc e                                            ; $7230: $9b
	pop bc                                           ; $7231: $c1
	ld sp, hl                                        ; $7232: $f9
	ld hl, sp-$08                                    ; $7233: $f8 $f8
	ld [hl], a                                       ; $7235: $77
	ld c, h                                          ; $7236: $4c
	halt                                             ; $7237: $76
	rst SubAFromHL                                          ; $7238: $d7
	sbc l                                            ; $7239: $9d
	rst $38                                          ; $723a: $ff
	rra                                              ; $723b: $1f
	call c, $9eff                                    ; $723c: $dc $ff $9e
	db $fc                                           ; $723f: $fc
	db $fc                                           ; $7240: $fc
	sbc [hl]                                         ; $7241: $9e
	rlca                                             ; $7242: $07
	ld a, e                                          ; $7243: $7b
	ret z                                            ; $7244: $c8

	db $dd                                           ; $7245: $dd
	rst $38                                          ; $7246: $ff
	sbc [hl]                                         ; $7247: $9e
	ld hl, sp+$7b                                    ; $7248: $f8 $7b
	sbc a                                            ; $724a: $9f
	rst $38                                          ; $724b: $ff
	ld l, a                                          ; $724c: $6f
	and $df                                          ; $724d: $e6 $df
	rst $38                                          ; $724f: $ff
	sbc [hl]                                         ; $7250: $9e
	ldh [$6f], a                                     ; $7251: $e0 $6f
	sub $9e                                          ; $7253: $d6 $9e
	ld h, b                                          ; $7255: $60
	ld a, e                                          ; $7256: $7b
	ld d, e                                          ; $7257: $53
	ld [hl], a                                       ; $7258: $77
	sub $9e                                          ; $7259: $d6 $9e
	sbc a                                            ; $725b: $9f
	ld a, e                                          ; $725c: $7b
	ld d, e                                          ; $725d: $53
	halt                                             ; $725e: $76
	xor h                                            ; $725f: $ac
	sbc e                                            ; $7260: $9b
	rst $38                                          ; $7261: $ff
	ld [$1c00], a                                    ; $7262: $ea $00 $1c
	sbc $ff                                          ; $7265: $de $ff
	rst $38                                          ; $7267: $ff
	sbc h                                            ; $7268: $9c
	dec d                                            ; $7269: $15
	rst $38                                          ; $726a: $ff
	db $e3                                           ; $726b: $e3
	ld [hl], a                                       ; $726c: $77
	ldh a, [$9c]                                     ; $726d: $f0 $9c
	adc c                                            ; $726f: $89
	dec sp                                           ; $7270: $3b
	rst FarCall                                          ; $7271: $f7
	ld a, e                                          ; $7272: $7b
	ld a, $7f                                        ; $7273: $3e $7f
	ldh a, [$9c]                                     ; $7275: $f0 $9c
	halt                                             ; $7277: $76
	call nz, $7b08                                   ; $7278: $c4 $08 $7b
	ld a, $7b                                        ; $727b: $3e $7b
	ldh [$6f], a                                     ; $727d: $e0 $6f
	inc bc                                           ; $727f: $03
	db $fc                                           ; $7280: $fc
	sbc e                                            ; $7281: $9b
	ld bc, $0607                                     ; $7282: $01 $07 $06
	di                                               ; $7285: $f3
	ld a, e                                          ; $7286: $7b
	ld h, [hl]                                       ; $7287: $66
	sbc [hl]                                         ; $7288: $9e
	adc a                                            ; $7289: $8f
	cp $9e                                           ; $728a: $fe $9e
	inc c                                            ; $728c: $0c
	ld a, d                                          ; $728d: $7a
	ld c, e                                          ; $728e: $4b
	sbc [hl]                                         ; $728f: $9e
	ld [hl], b                                       ; $7290: $70
	cp $9e                                           ; $7291: $fe $9e
	adc a                                            ; $7293: $8f
	sbc $ff                                          ; $7294: $de $ff
	ld [hl], a                                       ; $7296: $77
	ret c                                            ; $7297: $d8

	ld [hl], a                                       ; $7298: $77
	db $f4                                           ; $7299: $f4
	db $fd                                           ; $729a: $fd
	db $dd                                           ; $729b: $dd
	rst $38                                          ; $729c: $ff
	push af                                          ; $729d: $f5
	ld a, a                                          ; $729e: $7f
	ld [hl-], a                                      ; $729f: $32
	sbc [hl]                                         ; $72a0: $9e
	inc bc                                           ; $72a1: $03
	ld l, a                                          ; $72a2: $6f
	ld e, l                                          ; $72a3: $5d
	sbc l                                            ; $72a4: $9d
	inc b                                            ; $72a5: $04
	db $fc                                           ; $72a6: $fc
	ld [hl], a                                       ; $72a7: $77
	reti                                             ; $72a8: $d9


	ld a, d                                          ; $72a9: $7a
	inc a                                            ; $72aa: $3c
	ld l, a                                          ; $72ab: $6f
	pop af                                           ; $72ac: $f1
	ld a, a                                          ; $72ad: $7f
	ld [hl], a                                       ; $72ae: $77
	halt                                             ; $72af: $76
	pop de                                           ; $72b0: $d1
	rst $38                                          ; $72b1: $ff
	sbc e                                            ; $72b2: $9b
	db $fc                                           ; $72b3: $fc
	ld sp, hl                                        ; $72b4: $f9
	db $fc                                           ; $72b5: $fc
	ld [bc], a                                       ; $72b6: $02
	call c, $9d03                                    ; $72b7: $dc $03 $9d
	ld b, $03                                        ; $72ba: $06 $03
	ld [hl], a                                       ; $72bc: $77
	ld [hl], c                                       ; $72bd: $71
	ld [hl], d                                       ; $72be: $72
	add hl, sp                                       ; $72bf: $39
	rst SubAFromDE                                          ; $72c0: $df
	rst $38                                          ; $72c1: $ff
	sbc [hl]                                         ; $72c2: $9e
	add b                                            ; $72c3: $80
	ld l, e                                          ; $72c4: $6b
	cp h                                             ; $72c5: $bc
	ld l, e                                          ; $72c6: $6b
	scf                                              ; $72c7: $37
	ld a, a                                          ; $72c8: $7f
	ldh a, [c]                                       ; $72c9: $f2
	ld l, e                                          ; $72ca: $6b
	ldh a, [$d9]                                     ; $72cb: $f0 $d9
	rst $38                                          ; $72cd: $ff
	sbc [hl]                                         ; $72ce: $9e
	add hl, bc                                       ; $72cf: $09
	ld c, e                                          ; $72d0: $4b
	ldh a, [$67]                                     ; $72d1: $f0 $67
	adc h                                            ; $72d3: $8c
	rst SubAFromDE                                          ; $72d4: $df
	rst $38                                          ; $72d5: $ff
	sbc [hl]                                         ; $72d6: $9e
	ld e, $6f                                        ; $72d7: $1e $6f
	pop de                                           ; $72d9: $d1
	ld l, a                                          ; $72da: $6f
	rst AddAOntoHL                                          ; $72db: $ef
	sbc $ff                                          ; $72dc: $de $ff
	ld [hl], a                                       ; $72de: $77
	inc [hl]                                         ; $72df: $34
	rst SubAFromDE                                          ; $72e0: $df
	rst $38                                          ; $72e1: $ff
	sbc [hl]                                         ; $72e2: $9e
	ldh a, [$7b]                                     ; $72e3: $f0 $7b
	rst FarCall                                          ; $72e5: $f7
	ld l, a                                          ; $72e6: $6f
	rst AddAOntoHL                                          ; $72e7: $ef
	sbc l                                            ; $72e8: $9d
	add a                                            ; $72e9: $87
	pop af                                           ; $72ea: $f1
	ld [hl], d                                       ; $72eb: $72
	inc b                                            ; $72ec: $04
	sbc $ff                                          ; $72ed: $de $ff
	sbc [hl]                                         ; $72ef: $9e
	sbc h                                            ; $72f0: $9c
	ld l, a                                          ; $72f1: $6f
	rst SubAFromDE                                          ; $72f2: $df
	ld a, a                                          ; $72f3: $7f
	db $fc                                           ; $72f4: $fc
	ld [hl], d                                       ; $72f5: $72
	jp c, $cd63                                      ; $72f6: $da $63 $cd

	ld e, e                                          ; $72f9: $5b
	sub l                                            ; $72fa: $95
	inc sp                                           ; $72fb: $33
	ldh a, [$9d]                                     ; $72fc: $f0 $9d
	rra                                              ; $72fe: $1f
	db $fc                                           ; $72ff: $fc
	ld l, [hl]                                       ; $7300: $6e
	sbc e                                            ; $7301: $9b
	ld l, e                                          ; $7302: $6b
	adc l                                            ; $7303: $8d
	ld h, e                                          ; $7304: $63
	ld [de], a                                       ; $7305: $12
	dec hl                                           ; $7306: $2b
	ldh a, [hDisp1_SCY]                                     ; $7307: $f0 $90
	ld a, [$f8f0]                                    ; $7309: $fa $f0 $f8
	ld [bc], a                                       ; $730c: $02
	ld c, $0e                                        ; $730d: $0e $0e
	inc b                                            ; $730f: $04
	ld c, $06                                        ; $7310: $0e $06
	cp $06                                           ; $7312: $fe $06
	ld b, $04                                        ; $7314: $06 $04
	inc b                                            ; $7316: $04
	ld [$ce79], sp                                   ; $7317: $08 $79 $ce
	xor $9d                                          ; $731a: $ee $9d
	ld bc, $791f                                     ; $731c: $01 $1f $79
	ld h, [hl]                                       ; $731f: $66
	ld sp, hl                                        ; $7320: $f9
	sbc c                                            ; $7321: $99
	inc c                                            ; $7322: $0c
	ld a, $7f                                        ; $7323: $3e $7f
	call $8381                                       ; $7325: $cd $81 $83
	push af                                          ; $7328: $f5
	sbc e                                            ; $7329: $9b
	inc e                                            ; $732a: $1c
	xor [hl]                                         ; $732b: $ae
	ld a, a                                          ; $732c: $7f
	or e                                             ; $732d: $b3
	jp hl                                            ; $732e: $e9


	rst SubAFromDE                                          ; $732f: $df
	inc bc                                           ; $7330: $03
	ld [hl], e                                       ; $7331: $73
	cp a                                             ; $7332: $bf
	ld a, e                                          ; $7333: $7b
	ld hl, sp+$7a                                    ; $7334: $f8 $7a
	cp c                                             ; $7336: $b9
	ld a, a                                          ; $7337: $7f
	ld sp, hl                                        ; $7338: $f9
	ld a, l                                          ; $7339: $7d
	add sp, -$72                                     ; $733a: $e8 $8e
	rst GetHLinHL                                          ; $733c: $cf
	jr nc, jr_03a_73b7                               ; $733d: $30 $78

	ldh a, [$e0]                                     ; $733f: $f0 $e0
	and b                                            ; $7341: $a0
	ret nz                                           ; $7342: $c0

	rst $38                                          ; $7343: $ff
	cp a                                             ; $7344: $bf
	ld c, b                                          ; $7345: $48
	adc b                                            ; $7346: $88
	db $10                                           ; $7347: $10
	jr nc, jr_03a_73aa                               ; $7348: $30 $60

	ld [hl], b                                       ; $734a: $70
	rst $38                                          ; $734b: $ff
	ld e, $fc                                        ; $734c: $1e $fc
	ld a, l                                          ; $734e: $7d

jr_03a_734f:
	ld e, h                                          ; $734f: $5c
	ld l, [hl]                                       ; $7350: $6e
	ld bc, $3267                                     ; $7351: $01 $67 $32
	ld h, e                                          ; $7354: $63
	ld hl, sp-$20                                    ; $7355: $f8 $e0
	db $db                                           ; $7357: $db
	sbc l                                            ; $7358: $9d
	db $10                                           ; $7359: $10
	jr z, jr_03a_734f                                ; $735a: $28 $f3

	sbc l                                            ; $735c: $9d
	ld b, b                                          ; $735d: $40
	ld [$7bf8], sp                                   ; $735e: $08 $f8 $7b
	or $9b                                           ; $7361: $f6 $9b
	dec b                                            ; $7363: $05
	adc d                                            ; $7364: $8a
	and l                                            ; $7365: $a5
	ld e, d                                          ; $7366: $5a
	ld d, e                                          ; $7367: $53
	ldh [c], a                                       ; $7368: $e2
	sbc h                                            ; $7369: $9c
	and b                                            ; $736a: $a0
	ld d, b                                          ; $736b: $50
	xor d                                            ; $736c: $aa
	ld b, a                                          ; $736d: $47
	cp a                                             ; $736e: $bf
	rst FarCall                                          ; $736f: $f7
	sbc d                                            ; $7370: $9a
	inc b                                            ; $7371: $04
	ld [bc], a                                       ; $7372: $02
	dec b                                            ; $7373: $05
	ld [bc], a                                       ; $7374: $02
	ld c, b                                          ; $7375: $48
	ld e, e                                          ; $7376: $5b
	ldh a, [$9e]                                     ; $7377: $f0 $9e
	ld b, b                                          ; $7379: $40
	ld l, [hl]                                       ; $737a: $6e
	add b                                            ; $737b: $80
	di                                               ; $737c: $f3
	sbc [hl]                                         ; $737d: $9e
	inc b                                            ; $737e: $04
	ld h, e                                          ; $737f: $63
	inc b                                            ; $7380: $04
	sub h                                            ; $7381: $94
	db $10                                           ; $7382: $10
	inc c                                            ; $7383: $0c
	inc h                                            ; $7384: $24
	jr jr_03a_73ab                                   ; $7385: $18 $24

jr_03a_7387:
	ret c                                            ; $7387: $d8

	ld h, h                                          ; $7388: $64
	nop                                              ; $7389: $00
	inc c                                            ; $738a: $0c
	jr jr_03a_73a5                                   ; $738b: $18 $18

	ld a, e                                          ; $738d: $7b
	db $fd                                           ; $738e: $fd
	sbc [hl]                                         ; $738f: $9e
	jr jr_03a_740d                                   ; $7390: $18 $7b

	ld c, $9a                                        ; $7392: $0e $9a
	inc b                                            ; $7394: $04
	add hl, bc                                       ; $7395: $09
	dec bc                                           ; $7396: $0b
	rrca                                             ; $7397: $0f
	dec b                                            ; $7398: $05
	ld a, [$0a97]                                    ; $7399: $fa $97 $0a
	ld l, b                                          ; $739c: $68
	ld e, b                                          ; $739d: $58
	ret nz                                           ; $739e: $c0

	ret nz                                           ; $739f: $c0

	sbc $d5                                          ; $73a0: $de $d5
	ld h, e                                          ; $73a2: $63
	ld a, c                                          ; $73a3: $79
	ld b, l                                          ; $73a4: $45

jr_03a_73a5:
	rst SubAFromDE                                          ; $73a5: $df
	jr jr_03a_7387                                   ; $73a6: $18 $df

	jr nz, jr_03a_7429                               ; $73a8: $20 $7f

jr_03a_73aa:
	or l                                             ; $73aa: $b5

jr_03a_73ab:
	sbc b                                            ; $73ab: $98
	adc a                                            ; $73ac: $8f
	ld l, l                                          ; $73ad: $6d
	ld e, $00                                        ; $73ae: $1e $00
	ld b, b                                          ; $73b0: $40
	ld c, b                                          ; $73b1: $48
	push hl                                          ; $73b2: $e5
	ld [hl], d                                       ; $73b3: $72
	ld [$089c], a                                    ; $73b4: $ea $9c $08

jr_03a_73b7:
	rrca                                             ; $73b7: $0f
	rlca                                             ; $73b8: $07
	ld a, e                                          ; $73b9: $7b
	ld hl, sp-$6e                                    ; $73ba: $f8 $92
	ld b, $0f                                        ; $73bc: $06 $0f
	ld a, l                                          ; $73be: $7d
	ldh a, [rTAC]                                    ; $73bf: $f0 $07
	cp $00                                           ; $73c1: $fe $00
	ld b, $09                                        ; $73c3: $06 $09
	ld [hl], b                                       ; $73c5: $70
	add d                                            ; $73c6: $82
	ld c, $fe                                        ; $73c7: $0e $fe
	ld [hl], e                                       ; $73c9: $73
	add hl, bc                                       ; $73ca: $09
	ld a, h                                          ; $73cb: $7c
	ld h, l                                          ; $73cc: $65
	sbc l                                            ; $73cd: $9d
	ld h, b                                          ; $73ce: $60
	or b                                             ; $73cf: $b0
	ld [hl], a                                       ; $73d0: $77
	ld sp, hl                                        ; $73d1: $f9
	sbc b                                            ; $73d2: $98
	ld b, b                                          ; $73d3: $40
	jr nz, @+$12                                     ; $73d4: $20 $10

	ld [$0100], sp                                   ; $73d6: $08 $00 $01
	ld bc, $03de                                     ; $73d9: $01 $de $03
	ld a, d                                          ; $73dc: $7a
	rst JumpTable                                          ; $73dd: $c7
	ld [hl], l                                       ; $73de: $75
	add d                                            ; $73df: $82
	ld a, b                                          ; $73e0: $78
	ld e, d                                          ; $73e1: $5a
	add a                                            ; $73e2: $87
	or b                                             ; $73e3: $b0
	ld a, b                                          ; $73e4: $78
	ldh a, [$d0]                                     ; $73e5: $f0 $d0
	and b                                            ; $73e7: $a0
	ld a, b                                          ; $73e8: $78
	ld hl, sp-$10                                    ; $73e9: $f8 $f0
	ret z                                            ; $73eb: $c8

	add h                                            ; $73ec: $84
	inc c                                            ; $73ed: $0c
	inc a                                            ; $73ee: $3c
	ld a, b                                          ; $73ef: $78
	call nz, $0c84                                   ; $73f0: $c4 $84 $0c
	adc b                                            ; $73f3: $88
	nop                                              ; $73f4: $00
	ld [$0120], sp                                   ; $73f5: $08 $20 $01
	add d                                            ; $73f8: $82
	ld d, b                                          ; $73f9: $50
	ld a, [bc]                                       ; $73fa: $0a
	ld hl, sp+$7f                                    ; $73fb: $f8 $7f
	ld b, d                                          ; $73fd: $42
	sbc d                                            ; $73fe: $9a
	adc b                                            ; $73ff: $88
	dec d                                            ; $7400: $15
	ld a, [hl+]                                      ; $7401: $2a
	ld b, l                                          ; $7402: $45
	adc d                                            ; $7403: $8a
	rst FarCall                                          ; $7404: $f7
	sbc h                                            ; $7405: $9c
	ld d, c                                          ; $7406: $51
	xor d                                            ; $7407: $aa
	ld d, l                                          ; $7408: $55
	ld a, e                                          ; $7409: $7b
	cp $f8                                           ; $740a: $fe $f8
	sbc l                                            ; $740c: $9d

jr_03a_740d:
	and d                                            ; $740d: $a2
	ld [hl], l                                       ; $740e: $75
	ld [hl], a                                       ; $740f: $77
	ldh a, [$9e]                                     ; $7410: $f0 $9e

jr_03a_7412:
	xor a                                            ; $7412: $af
	ld sp, hl                                        ; $7413: $f9
	ld a, a                                          ; $7414: $7f
	call nc, Call_03a_7499                           ; $7415: $d4 $99 $74
	cp a                                             ; $7418: $bf
	ld d, l                                          ; $7419: $55
	xor e                                            ; $741a: $ab
	ld d, a                                          ; $741b: $57
	xor $63                                          ; $741c: $ee $63
	ld [de], a                                       ; $741e: $12
	sbc b                                            ; $741f: $98
	ldh [c], a                                       ; $7420: $e2
	ld d, l                                          ; $7421: $55
	xor d                                            ; $7422: $aa
	push de                                          ; $7423: $d5
	cp d                                             ; $7424: $ba
	ld [hl], l                                       ; $7425: $75
	xor e                                            ; $7426: $ab
	ld sp, hl                                        ; $7427: $f9
	sub a                                            ; $7428: $97

jr_03a_7429:
	and c                                            ; $7429: $a1
	ld a, [bc]                                       ; $742a: $0a
	dec d                                            ; $742b: $15
	xor d                                            ; $742c: $aa
	ld h, l                                          ; $742d: $65
	cp d                                             ; $742e: $ba
	ld e, e                                          ; $742f: $5b
	ld l, $72                                        ; $7430: $2e $72
	db $db                                           ; $7432: $db
	sbc h                                            ; $7433: $9c
	ld b, b                                          ; $7434: $40
	inc h                                            ; $7435: $24
	pop de                                           ; $7436: $d1
	ld [hl], a                                       ; $7437: $77
	or h                                             ; $7438: $b4
	sbc h                                            ; $7439: $9c
	ld d, c                                          ; $743a: $51
	xor e                                            ; $743b: $ab
	rst SubAFromHL                                          ; $743c: $d7
	ld l, e                                          ; $743d: $6b
	ret nz                                           ; $743e: $c0

	sub l                                            ; $743f: $95
	jr z, jr_03a_7492                                ; $7440: $28 $50

	ld bc, $41aa                                     ; $7442: $01 $aa $41
	sub a                                            ; $7445: $97
	ld a, [hl+]                                      ; $7446: $2a
	ld d, l                                          ; $7447: $55
	xor d                                            ; $7448: $aa
	sub $f9                                          ; $7449: $d6 $f9
	sbc l                                            ; $744b: $9d
	jr z, jr_03a_745e                                ; $744c: $28 $10

	ld a, e                                          ; $744e: $7b
	ldh a, [c]                                       ; $744f: $f2
	ld a, a                                          ; $7450: $7f
	and c                                            ; $7451: $a1
	ld l, a                                          ; $7452: $6f
	or b                                             ; $7453: $b0
	sub h                                            ; $7454: $94
	ld [bc], a                                       ; $7455: $02
	ld b, b                                          ; $7456: $40
	ld de, $0000                                     ; $7457: $11 $00 $00
	adc b                                            ; $745a: $88
	ld d, h                                          ; $745b: $54
	xor c                                            ; $745c: $a9
	halt                                             ; $745d: $76

jr_03a_745e:
	rst SubAFromDE                                          ; $745e: $df
	db $eb                                           ; $745f: $eb
	ld l, [hl]                                       ; $7460: $6e
	ld [hl], h                                       ; $7461: $74
	sub l                                            ; $7462: $95
	jr nz, @+$16                                     ; $7463: $20 $14

	ld a, [bc]                                       ; $7465: $0a
	dec b                                            ; $7466: $05
	dec hl                                           ; $7467: $2b
	ld e, $7c                                        ; $7468: $1e $7c
	xor d                                            ; $746a: $aa
	ld d, l                                          ; $746b: $55
	cp d                                             ; $746c: $ba
	ld [hl], l                                       ; $746d: $75
	db $eb                                           ; $746e: $eb
	add d                                            ; $746f: $82
	inc bc                                           ; $7470: $03
	dec d                                            ; $7471: $15
	xor d                                            ; $7472: $aa
	ld b, l                                          ; $7473: $45
	xor b                                            ; $7474: $a8
	ld e, b                                          ; $7475: $58
	add sp, -$70                                     ; $7476: $e8 $90
	jr z, jr_03a_7412                                ; $7478: $28 $98

	ld b, b                                          ; $747a: $40
	jr c, jr_03a_748d                                ; $747b: $38 $10

	jr @+$12                                         ; $747d: $18 $10

	ld a, b                                          ; $747f: $78
	ret nc                                           ; $7480: $d0

	ld [hl], b                                       ; $7481: $70
	or b                                             ; $7482: $b0
	ldh a, [$0d]                                     ; $7483: $f0 $0d
	dec c                                            ; $7485: $0d
	rra                                              ; $7486: $1f
	inc e                                            ; $7487: $1c
	jr z, jr_03a_74ae                                ; $7488: $28 $24

	jr nz, jr_03a_749c                               ; $748a: $20 $10

	ld [bc], a                                       ; $748c: $02

jr_03a_748d:
	ld a, [$2295]                                    ; $748d: $fa $95 $22
	and e                                            ; $7490: $a3
	ld a, a                                          ; $7491: $7f

jr_03a_7492:
	ccf                                              ; $7492: $3f
	ccf                                              ; $7493: $3f
	ld [$9bca], a                                    ; $7494: $ea $ca $9b
	ret nz                                           ; $7497: $c0

	ld b, b                                          ; $7498: $40

Call_03a_7499:
	ei                                               ; $7499: $fb
	add a                                            ; $749a: $87
	rrca                                             ; $749b: $0f

jr_03a_749c:
	sub b                                            ; $749c: $90
	sub c                                            ; $749d: $91
	add c                                            ; $749e: $81
	rrca                                             ; $749f: $0f
	rra                                              ; $74a0: $1f
	dec e                                            ; $74a1: $1d
	jr jr_03a_74ad                                   ; $74a2: $18 $09

	add hl, de                                       ; $74a4: $19
	ld [$783e], sp                                   ; $74a5: $08 $3e $78
	ld a, b                                          ; $74a8: $78
	ld [$ff0c], sp                                   ; $74a9: $08 $0c $ff
	ld l, a                                          ; $74ac: $6f

jr_03a_74ad:
	ei                                               ; $74ad: $fb

jr_03a_74ae:
	ld c, l                                          ; $74ae: $4d
	ld b, [hl]                                       ; $74af: $46
	ld l, l                                          ; $74b0: $6d
	ld sp, hl                                        ; $74b1: $f9
	ld hl, sp+$78                                    ; $74b2: $f8 $78

jr_03a_74b4:
	halt                                             ; $74b4: $76
	ld a, [hl]                                       ; $74b5: $7e
	jp $ff8c                                         ; $74b6: $c3 $8c $ff


	ld a, a                                          ; $74b9: $7f
	ccf                                              ; $74ba: $3f
	ld a, b                                          ; $74bb: $78
	cp h                                             ; $74bc: $bc
	call c, $1ede                                    ; $74bd: $dc $de $1e
	ld a, [hl]                                       ; $74c0: $7e
	cp [hl]                                          ; $74c1: $be
	sbc $84                                          ; $74c2: $de $84
	jp nz, $e1e2                                     ; $74c4: $c2 $e2 $e1

	pop hl                                           ; $74c7: $e1
	add c                                            ; $74c8: $81
	pop bc                                           ; $74c9: $c1
	pop hl                                           ; $74ca: $e1
	ld a, d                                          ; $74cb: $7a
	jp nz, $01de                                     ; $74cc: $c2 $de $01

	ld a, d                                          ; $74cf: $7a
	rst JumpTable                                          ; $74d0: $c7
	ld a, d                                          ; $74d1: $7a
	jp $02df                                         ; $74d2: $c3 $df $02


	rst SubAFromDE                                          ; $74d5: $df
	inc bc                                           ; $74d6: $03
	ld a, l                                          ; $74d7: $7d
	add h                                            ; $74d8: $84
	adc c                                            ; $74d9: $89
	ld h, b                                          ; $74da: $60
	ret nz                                           ; $74db: $c0

	ld hl, sp-$08                                    ; $74dc: $f8 $f8
	ld de, $18e2                                     ; $74de: $11 $e2 $18
	jr c, @-$0e                                      ; $74e1: $38 $f0

	ld hl, sp+$04                                    ; $74e3: $f8 $04
	inc b                                            ; $74e5: $04
	db $ed                                           ; $74e6: $ed
	ld a, [$3a05]                                    ; $74e7: $fa $05 $3a
	rst SubAFromDE                                          ; $74ea: $df
	or $5f                                           ; $74eb: $f6 $5f
	rst $38                                          ; $74ed: $ff
	cp a                                             ; $74ee: $bf
	rst FarCall                                          ; $74ef: $f7
	ld l, l                                          ; $74f0: $6d
	sub $7d                                          ; $74f1: $d6 $7d
	ret z                                            ; $74f3: $c8

	adc l                                            ; $74f4: $8d
	ccf                                              ; $74f5: $3f
	cp $6b                                           ; $74f6: $fe $6b
	rst $38                                          ; $74f8: $ff
	ld a, l                                          ; $74f9: $7d
	sbc $9f                                          ; $74fa: $de $9f
	push de                                          ; $74fc: $d5
	nop                                              ; $74fd: $00
	nop                                              ; $74fe: $00
	inc d                                            ; $74ff: $14
	nop                                              ; $7500: $00
	ld [bc], a                                       ; $7501: $02
	ld hl, $2a60                                     ; $7502: $21 $60 $2a
	rst SubAFromHL                                          ; $7505: $d7
	xor a                                            ; $7506: $af
	ld a, e                                          ; $7507: $7b
	xor d                                            ; $7508: $aa
	sbc h                                            ; $7509: $9c
	sbc $6f                                          ; $750a: $de $6f
	push af                                          ; $750c: $f5
	ld [hl], d                                       ; $750d: $72
	ld l, b                                          ; $750e: $68
	sub h                                            ; $750f: $94
	ld hl, $0a90                                     ; $7510: $21 $90 $0a
	db $dd                                           ; $7513: $dd
	cp a                                             ; $7514: $bf
	db $fd                                           ; $7515: $fd
	rst $38                                          ; $7516: $ff
	rst $38                                          ; $7517: $ff
	db $fd                                           ; $7518: $fd
	rst SubAFromDE                                          ; $7519: $df
	ld l, d                                          ; $751a: $6a
	ei                                               ; $751b: $fb
	sub a                                            ; $751c: $97
	jr nz, jr_03a_74b4                               ; $751d: $20 $95

	ld [hl], a                                       ; $751f: $77
	ld a, [hl]                                       ; $7520: $7e
	rst $38                                          ; $7521: $ff
	ld [$baf5], a                                    ; $7522: $ea $f5 $ba
	ld [hl], d                                       ; $7525: $72
	and b                                            ; $7526: $a0
	add b                                            ; $7527: $80
	dec d                                            ; $7528: $15
	ld a, [bc]                                       ; $7529: $0a
	dec b                                            ; $752a: $05
	xor d                                            ; $752b: $aa
	ld d, l                                          ; $752c: $55
	ld d, a                                          ; $752d: $57
	cp [hl]                                          ; $752e: $be
	push af                                          ; $752f: $f5
	ld a, [$8ed5]                                    ; $7530: $fa $d5 $8e
	inc d                                            ; $7533: $14
	ld a, [bc]                                       ; $7534: $0a
	nop                                              ; $7535: $00
	ld bc, $050a                                     ; $7536: $01 $0a $05
	ld a, [hl+]                                      ; $7539: $2a
	ld [hl], c                                       ; $753a: $71
	db $eb                                           ; $753b: $eb
	push af                                          ; $753c: $f5
	ld d, a                                          ; $753d: $57
	ld a, [bc]                                       ; $753e: $0a
	nop                                              ; $753f: $00
	and d                                            ; $7540: $a2
	ld d, l                                          ; $7541: $55
	xor d                                            ; $7542: $aa
	push af                                          ; $7543: $f5
	rst $38                                          ; $7544: $ff
	xor b                                            ; $7545: $a8
	push af                                          ; $7546: $f5
	db $db                                           ; $7547: $db
	rst $38                                          ; $7548: $ff
	sub e                                            ; $7549: $93
	ld [hl], l                                       ; $754a: $75
	xor a                                            ; $754b: $af
	add hl, de                                       ; $754c: $19
	dec b                                            ; $754d: $05
	ld b, b                                          ; $754e: $40
	and b                                            ; $754f: $a0
	ret nc                                           ; $7550: $d0

	ld hl, sp-$76                                    ; $7551: $f8 $8a
	ld d, b                                          ; $7553: $50
	and $fa                                          ; $7554: $e6 $fa
	db $dd                                           ; $7556: $dd
	rst $38                                          ; $7557: $ff
	sbc d                                            ; $7558: $9a
	ld l, e                                          ; $7559: $6b
	sbc $f5                                          ; $755a: $de $f5
	ld h, d                                          ; $755c: $62
	adc l                                            ; $755d: $8d
	ld a, e                                          ; $755e: $7b
	add [hl]                                         ; $755f: $86
	sbc c                                            ; $7560: $99
	db $10                                           ; $7561: $10
	ld hl, $9d0a                                     ; $7562: $21 $0a $9d
	ld [hl], d                                       ; $7565: $72
	rst FarCall                                          ; $7566: $f7
	ld a, e                                          ; $7567: $7b
	and l                                            ; $7568: $a5
	sbc e                                            ; $7569: $9b
	jp c, Jump_03a_6a39                              ; $756a: $da $39 $6a

	ld d, h                                          ; $756d: $54
	halt                                             ; $756e: $76
	push bc                                          ; $756f: $c5
	sbc e                                            ; $7570: $9b
	dec h                                            ; $7571: $25
	add $95                                          ; $7572: $c6 $95
	xor e                                            ; $7574: $ab
	sbc $ff                                          ; $7575: $de $ff
	sbc d                                            ; $7577: $9a
	ld d, l                                          ; $7578: $55
	ld a, [bc]                                       ; $7579: $0a
	ld b, a                                          ; $757a: $47
	ld a, [bc]                                       ; $757b: $0a
	ld d, b                                          ; $757c: $50
	ld a, d                                          ; $757d: $7a
	ld [hl-], a                                      ; $757e: $32
	ld a, a                                          ; $757f: $7f
	cp l                                             ; $7580: $bd
	sub h                                            ; $7581: $94
	cp b                                             ; $7582: $b8
	push af                                          ; $7583: $f5
	xor a                                            ; $7584: $af
	ld [hl], l                                       ; $7585: $75
	rst $38                                          ; $7586: $ff
	rst $38                                          ; $7587: $ff
	ld d, b                                          ; $7588: $50
	add d                                            ; $7589: $82
	ld d, b                                          ; $758a: $50
	ld [hl+], a                                      ; $758b: $22
	jr nz, jr_03a_7609                               ; $758c: $20 $7b

	rst SubAFromDE                                          ; $758e: $df
	sbc d                                            ; $758f: $9a
	xor a                                            ; $7590: $af
	ld a, l                                          ; $7591: $7d
	xor a                                            ; $7592: $af
	db $dd                                           ; $7593: $dd
	rst SubAFromDE                                          ; $7594: $df
	ld a, e                                          ; $7595: $7b
	rst SubAFromDE                                          ; $7596: $df
	rst SubAFromDE                                          ; $7597: $df
	ret nc                                           ; $7598: $d0

	sub l                                            ; $7599: $95
	ldh [$f0], a                                     ; $759a: $e0 $f0
	ldh [hDisp1_SCY], a                                     ; $759c: $e0 $90

Jump_03a_759e:
	and b                                            ; $759e: $a0
	and b                                            ; $759f: $a0
	jr nz, jr_03a_75c2                               ; $75a0: $20 $20

	jr nc, jr_03a_75c4                               ; $75a2: $30 $20

	ld a, b                                          ; $75a4: $78
	or c                                             ; $75a5: $b1
	ld a, [hl]                                       ; $75a6: $7e
	adc a                                            ; $75a7: $8f
	ld h, l                                          ; $75a8: $65
	add [hl]                                         ; $75a9: $86
	ld a, [$9b9d]                                    ; $75aa: $fa $9d $9b
	ld c, h                                          ; $75ad: $4c
	ld h, h                                          ; $75ae: $64
	inc a                                            ; $75af: $3c
	ld [hl], c                                       ; $75b0: $71
	cp a                                             ; $75b1: $bf
	adc d                                            ; $75b2: $8a
	nop                                              ; $75b3: $00
	db $f4                                           ; $75b4: $f4
	inc h                                            ; $75b5: $24
	ld b, $e2                                        ; $75b6: $06 $e2
	add d                                            ; $75b8: $82
	jp $1911                                         ; $75b9: $c3 $11 $19


	inc c                                            ; $75bc: $0c
	sbc $ff                                          ; $75bd: $de $ff
	rra                                              ; $75bf: $1f
	ld a, a                                          ; $75c0: $7f
	ccf                                              ; $75c1: $3f

jr_03a_75c2:
	rrca                                             ; $75c2: $0f
	rlca                                             ; $75c3: $07

jr_03a_75c4:
	pop af                                           ; $75c4: $f1
	pop af                                           ; $75c5: $f1
	ld a, e                                          ; $75c6: $7b
	ld a, e                                          ; $75c7: $7b
	ld a, d                                          ; $75c8: $7a
	sbc [hl]                                         ; $75c9: $9e
	sbc c                                            ; $75ca: $99
	ccf                                              ; $75cb: $3f
	ld a, $1e                                        ; $75cc: $3e $1e
	inc b                                            ; $75ce: $04
	inc b                                            ; $75cf: $04
	add b                                            ; $75d0: $80
	sbc $c0                                          ; $75d1: $de $c0
	adc a                                            ; $75d3: $8f
	xor $b6                                          ; $75d4: $ee $b6
	ret nc                                           ; $75d6: $d0

	call c, $f8fc                                    ; $75d7: $dc $fc $f8
	ld hl, sp-$10                                    ; $75da: $f8 $f0
	ld [hl], c                                       ; $75dc: $71
	ld a, c                                          ; $75dd: $79
	ld a, $3a                                        ; $75de: $3e $3a
	ld [bc], a                                       ; $75e0: $02
	inc b                                            ; $75e1: $04
	inc b                                            ; $75e2: $04
	ld [$c276], sp                                   ; $75e3: $08 $76 $c2
	db $dd                                           ; $75e6: $dd
	ld bc, $f867                                     ; $75e7: $01 $67 $f8
	sbc d                                            ; $75ea: $9a
	ldh a, [c]                                       ; $75eb: $f2
	ldh a, [$e0]                                     ; $75ec: $f0 $e0
	push de                                          ; $75ee: $d5
	pop bc                                           ; $75ef: $c1
	sbc $e0                                          ; $75f0: $de $e0
	rst SubAFromDE                                          ; $75f2: $df
	rst $38                                          ; $75f3: $ff
	sbc l                                            ; $75f4: $9d
	ei                                               ; $75f5: $fb
	jp z, $8f7a                                      ; $75f6: $ca $7a $8f

	ld a, e                                          ; $75f9: $7b
	ld c, a                                          ; $75fa: $4f
	sbc d                                            ; $75fb: $9a
	or [hl]                                          ; $75fc: $b6
	ld l, l                                          ; $75fd: $6d
	ld d, d                                          ; $75fe: $52
	jr c, @+$74                                      ; $75ff: $38 $72

	ld a, e                                          ; $7601: $7b
	ld c, a                                          ; $7602: $4f
	adc b                                            ; $7603: $88
	ld c, c                                          ; $7604: $49
	sub d                                            ; $7605: $92
	xor l                                            ; $7606: $ad
	rst JumpTable                                          ; $7607: $c7
	adc l                                            ; $7608: $8d

jr_03a_7609:
	rst $38                                          ; $7609: $ff
	ld a, [$a9f5]                                    ; $760a: $fa $f5 $a9
	ld d, d                                          ; $760d: $52
	xor b                                            ; $760e: $a8
	dec d                                            ; $760f: $15
	and b                                            ; $7610: $a0
	adc b                                            ; $7611: $88
	dec b                                            ; $7612: $05
	ld a, [bc]                                       ; $7613: $0a
	ld d, [hl]                                       ; $7614: $56
	xor l                                            ; $7615: $ad
	ld d, a                                          ; $7616: $57
	ld [$775f], a                                    ; $7617: $ea $5f $77
	xor $7b                                          ; $761a: $ee $7b
	inc bc                                           ; $761c: $03
	adc a                                            ; $761d: $8f
	jp c, $3add                                      ; $761e: $da $dd $3a

	nop                                              ; $7621: $00
	ld de, $55aa                                     ; $7622: $11 $aa $55
	ld a, [bc]                                       ; $7625: $0a
	dec h                                            ; $7626: $25
	ld [hl+], a                                      ; $7627: $22
	push bc                                          ; $7628: $c5
	rst $38                                          ; $7629: $ff
	push de                                          ; $762a: $d5
	ld a, [hl+]                                      ; $762b: $2a
	ld d, a                                          ; $762c: $57
	ld b, [hl]                                       ; $762d: $46
	db $fd                                           ; $762e: $fd
	sbc e                                            ; $762f: $9b
	ld a, [hl+]                                      ; $7630: $2a
	push de                                          ; $7631: $d5
	xor b                                            ; $7632: $a8
	cp c                                             ; $7633: $b9
	db $dd                                           ; $7634: $dd
	rst $38                                          ; $7635: $ff
	ld a, a                                          ; $7636: $7f
	pop hl                                           ; $7637: $e1

Call_03a_7638:
	sbc l                                            ; $7638: $9d
	ld d, b                                          ; $7639: $50
	and b                                            ; $763a: $a0
	halt                                             ; $763b: $76
	push de                                          ; $763c: $d5
	ld a, c                                          ; $763d: $79
	call z, Call_03a_797e                            ; $763e: $cc $7e $79
	sbc $ff                                          ; $7641: $de $ff
	ld a, h                                          ; $7643: $7c
	add d                                            ; $7644: $82
	sub [hl]                                         ; $7645: $96
	add hl, hl                                       ; $7646: $29
	ld h, $4b                                        ; $7647: $26 $4b
	cp a                                             ; $7649: $bf
	ccf                                              ; $764a: $3f
	rst $38                                          ; $764b: $ff
	ei                                               ; $764c: $fb
	rst $38                                          ; $764d: $ff
	rst SubAFromDE                                          ; $764e: $df
	call c, $26ff                                    ; $764f: $dc $ff $26
	nop                                              ; $7652: $00
	sub l                                            ; $7653: $95
	ld d, h                                          ; $7654: $54
	ld b, l                                          ; $7655: $45
	inc sp                                           ; $7656: $33
	ld d, [hl]                                       ; $7657: $56
	ld h, [hl]                                       ; $7658: $66
	ld d, h                                          ; $7659: $54
	ld b, h                                          ; $765a: $44
	ld b, h                                          ; $765b: $44
	ld b, l                                          ; $765c: $45
	inc sp                                           ; $765d: $33
	db $db                                           ; $765e: $db
	ld b, h                                          ; $765f: $44
	sbc [hl]                                         ; $7660: $9e
	ld b, l                                          ; $7661: $45
	db $db                                           ; $7662: $db
	ld d, l                                          ; $7663: $55
	sbc e                                            ; $7664: $9b
	scf                                              ; $7665: $37
	inc sp                                           ; $7666: $33
	scf                                              ; $7667: $37
	scf                                              ; $7668: $37
	reti                                             ; $7669: $d9


	inc sp                                           ; $766a: $33
	rst SubAFromDE                                          ; $766b: $df
	ld [hl], a                                       ; $766c: $77
	jp c, $9e33                                      ; $766d: $da $33 $9e

	scf                                              ; $7670: $37
	ld h, e                                          ; $7671: $63
	or $7f                                           ; $7672: $f6 $7f
	db $ec                                           ; $7674: $ec
	db $dd                                           ; $7675: $dd
	inc sp                                           ; $7676: $33
	dec bc                                           ; $7677: $0b
	add e                                            ; $7678: $83
	sub a                                            ; $7679: $97
	nop                                              ; $767a: $00
	ld d, $12                                        ; $767b: $16 $12
	inc c                                            ; $767d: $0c
	inc c                                            ; $767e: $0c
	add h                                            ; $767f: $84
	push bc                                          ; $7680: $c5
	push bc                                          ; $7681: $c5
	reti                                             ; $7682: $d9


	rst $38                                          ; $7683: $ff
	adc a                                            ; $7684: $8f
	nop                                              ; $7685: $00
	sbc b                                            ; $7686: $98
	and b                                            ; $7687: $a0
	ld h, b                                          ; $7688: $60
	ret nz                                           ; $7689: $c0

	add b                                            ; $768a: $80
	add b                                            ; $768b: $80
	ei                                               ; $768c: $fb
	rst $38                                          ; $768d: $ff
	rst SubAFromBC                                          ; $768e: $e7
	rst SubAFromDE                                          ; $768f: $df
	sbc a                                            ; $7690: $9f
	cp a                                             ; $7691: $bf
	rst $38                                          ; $7692: $ff
	rst $38                                          ; $7693: $ff
	sub a                                            ; $7694: $97
	ld a, [$0a9e]                                    ; $7695: $fa $9e $0a
	reti                                             ; $7698: $d9


	rst $38                                          ; $7699: $ff
	sbc $02                                          ; $769a: $de $02

jr_03a_769c:
	sbc d                                            ; $769c: $9a
	inc bc                                           ; $769d: $03
	ld bc, $0001                                     ; $769e: $01 $01 $00
	or d                                             ; $76a1: $b2
	reti                                             ; $76a2: $d9


	rst $38                                          ; $76a3: $ff
	adc a                                            ; $76a4: $8f
	ei                                               ; $76a5: $fb
	ld [$7af3], a                                    ; $76a6: $ea $f3 $7a
	ld a, l                                          ; $76a9: $7d
	rst $38                                          ; $76aa: $ff
	cp a                                             ; $76ab: $bf
	rst JumpTable                                          ; $76ac: $c7
	ld b, $1f                                        ; $76ad: $06 $1f
	rrca                                             ; $76af: $0f
	add l                                            ; $76b0: $85
	add d                                            ; $76b1: $82
	add b                                            ; $76b2: $80
	ret nz                                           ; $76b3: $c0

	ld hl, sp-$22                                    ; $76b4: $f8 $de
	rst $38                                          ; $76b6: $ff
	sbc [hl]                                         ; $76b7: $9e
	ld a, a                                          ; $76b8: $7f
	ld a, e                                          ; $76b9: $7b
	db $fd                                           ; $76ba: $fd
	sbc [hl]                                         ; $76bb: $9e
	ccf                                              ; $76bc: $3f
	cp $df                                           ; $76bd: $fe $df
	add b                                            ; $76bf: $80
	rst SubAFromDE                                          ; $76c0: $df
	ret nz                                           ; $76c1: $c0

	sbc e                                            ; $76c2: $9b
	ldh [rTAC], a                                    ; $76c3: $e0 $07
	inc bc                                           ; $76c5: $03
	nop                                              ; $76c6: $00
	call c, $9b06                                    ; $76c7: $dc $06 $9b
	add b                                            ; $76ca: $80
	add h                                            ; $76cb: $84
	add a                                            ; $76cc: $87
	add l                                            ; $76cd: $85
	db $dd                                           ; $76ce: $dd
	add h                                            ; $76cf: $84
	sbc [hl]                                         ; $76d0: $9e
	ld [hl], c                                       ; $76d1: $71
	sbc $61                                          ; $76d2: $de $61
	sbc d                                            ; $76d4: $9a
	add c                                            ; $76d5: $81
	ld de, $0101                                     ; $76d6: $11 $01 $01
	adc e                                            ; $76d9: $8b
	sbc $9b                                          ; $76da: $de $9b
	adc [hl]                                         ; $76dc: $8e
	ld a, e                                          ; $76dd: $7b
	dec bc                                           ; $76de: $0b
	inc bc                                           ; $76df: $03
	inc bc                                           ; $76e0: $03
	inc a                                            ; $76e1: $3c
	jr c, jr_03a_769c                                ; $76e2: $38 $b8

	sbc b                                            ; $76e4: $98
	db $ed                                           ; $76e5: $ed
	and h                                            ; $76e6: $a4

Call_03a_76e7:
	ldh [c], a                                       ; $76e7: $e2
	and $07                                          ; $76e8: $e6 $07
	rrca                                             ; $76ea: $0f
	rra                                              ; $76eb: $1f
	ccf                                              ; $76ec: $3f
	ccf                                              ; $76ed: $3f
	sbc $7f                                          ; $76ee: $de $7f
	adc h                                            ; $76f0: $8c
	ld [hl], b                                       ; $76f1: $70
	add hl, de                                       ; $76f2: $19
	ld de, $8504                                     ; $76f3: $11 $04 $85
	push hl                                          ; $76f6: $e5
	ld d, e                                          ; $76f7: $53
	ld de, $e60f                                     ; $76f8: $11 $0f $e6
	db $ec                                           ; $76fb: $ec
	ld hl, sp-$08                                    ; $76fc: $f8 $f8
	ldh a, [$f8]                                     ; $76fe: $f0 $f8
	cp $f1                                           ; $7700: $fe $f1
	cp c                                             ; $7702: $b9
	cp l                                             ; $7703: $bd
	ld a, e                                          ; $7704: $7b
	ld a, c                                          ; $7705: $79
	sbc h                                            ; $7706: $9c
	rst $38                                          ; $7707: $ff
	and $00                                          ; $7708: $e6 $00
	sbc $40                                          ; $770a: $de $40
	db $fd                                           ; $770c: $fd
	add b                                            ; $770d: $80
	ld d, $1d                                        ; $770e: $16 $1d
	dec e                                            ; $7710: $1d
	sbc l                                            ; $7711: $9d
	cp c                                             ; $7712: $b9
	sbc c                                            ; $7713: $99
	pop bc                                           ; $7714: $c1
	add e                                            ; $7715: $83
	add hl, bc                                       ; $7716: $09
	add d                                            ; $7717: $82
	add b                                            ; $7718: $80
	ld [bc], a                                       ; $7719: $02
	nop                                              ; $771a: $00
	jr nz, jr_03a_7755                               ; $771b: $20 $38

	ld a, l                                          ; $771d: $7d
	xor a                                            ; $771e: $af
	db $ec                                           ; $771f: $ec
	ld a, [hl]                                       ; $7720: $7e
	ld e, [hl]                                       ; $7721: $5e
	db $fd                                           ; $7722: $fd
	cp l                                             ; $7723: $bd
	cp a                                             ; $7724: $bf
	cp $62                                           ; $7725: $fe $62
	ld a, a                                          ; $7727: $7f
	db $dd                                           ; $7728: $dd
	rst $38                                          ; $7729: $ff
	cp [hl]                                          ; $772a: $be
	cp $fe                                           ; $772b: $fe $fe
	sub [hl]                                         ; $772d: $96
	ld a, a                                          ; $772e: $7f
	jr nz, jr_03a_7751                               ; $772f: $20 $20

	ld hl, $2020                                     ; $7731: $21 $20 $20
	nop                                              ; $7734: $00
	ld bc, $dc01                                     ; $7735: $01 $01 $dc
	rst SubAFromDE                                          ; $7738: $df
	ld [hl], a                                       ; $7739: $77
	ld h, b                                          ; $773a: $60
	rst SubAFromDE                                          ; $773b: $df
	ei                                               ; $773c: $fb
	sbc d                                            ; $773d: $9a
	cp $fb                                           ; $773e: $fe $fb
	ei                                               ; $7740: $fb
	ldh a, [$75]                                     ; $7741: $f0 $75
	db $dd                                           ; $7743: $dd
	rst $38                                          ; $7744: $ff
	sbc l                                            ; $7745: $9d
	db $fc                                           ; $7746: $fc
	db $fd                                           ; $7747: $fd
	ld a, e                                          ; $7748: $7b
	pop af                                           ; $7749: $f1
	sub h                                            ; $774a: $94
	db $ed                                           ; $774b: $ed
	or b                                             ; $774c: $b0
	push de                                          ; $774d: $d5
	xor d                                            ; $774e: $aa
	ld d, l                                          ; $774f: $55
	xor d                                            ; $7750: $aa

jr_03a_7751:
	ld d, l                                          ; $7751: $55
	db $fc                                           ; $7752: $fc
	di                                               ; $7753: $f3
	rst GetHLinHL                                          ; $7754: $cf

jr_03a_7755:
	ccf                                              ; $7755: $3f
	db $dd                                           ; $7756: $dd
	rst $38                                          ; $7757: $ff
	rst SubAFromDE                                          ; $7758: $df
	sbc b                                            ; $7759: $98
	sbc b                                            ; $775a: $98
	sbc c                                            ; $775b: $99
	sbc b                                            ; $775c: $98
	sub b                                            ; $775d: $90
	sub b                                            ; $775e: $90
	db $10                                           ; $775f: $10

jr_03a_7760:
	ld de, $dae8                                     ; $7760: $11 $e8 $da
	jp hl                                            ; $7763: $e9


	add b                                            ; $7764: $80
	ld [hl], b                                       ; $7765: $70
	jr jr_03a_7760                                   ; $7766: $18 $f8

	reti                                             ; $7768: $d9


	pop af                                           ; $7769: $f1
	pop hl                                           ; $776a: $e1
	sub c                                            ; $776b: $91
	ld sp, hl                                        ; $776c: $f9
	rrca                                             ; $776d: $0f
	rst $38                                          ; $776e: $ff
	ccf                                              ; $776f: $3f
	ld a, $0e                                        ; $7770: $3e $0e
	ld e, $fe                                        ; $7772: $1e $fe
	cp $0d                                           ; $7774: $fe $0d
	add l                                            ; $7776: $85
	ld bc, $25b5                                     ; $7777: $01 $b5 $25
	dec h                                            ; $777a: $25
	and l                                            ; $777b: $a5
	dec h                                            ; $777c: $25
	di                                               ; $777d: $f3
	ei                                               ; $777e: $fb
	rst $38                                          ; $777f: $ff
	ld c, a                                          ; $7780: $4f
	db $db                                           ; $7781: $db
	db $db                                           ; $7782: $db
	ld e, e                                          ; $7783: $5b
	sub [hl]                                         ; $7784: $96
	db $db                                           ; $7785: $db
	call nc, $d0aa                                   ; $7786: $d4 $aa $d0
	xor b                                            ; $7789: $a8
	ret nz                                           ; $778a: $c0

	xor b                                            ; $778b: $a8
	ret nz                                           ; $778c: $c0

	sub b                                            ; $778d: $90
	reti                                             ; $778e: $d9


	rst $38                                          ; $778f: $ff
	sub a                                            ; $7790: $97
	adc l                                            ; $7791: $8d
	dec b                                            ; $7792: $05
	ld bc, $6321                                     ; $7793: $01 $21 $63
	ld h, l                                          ; $7796: $65
	push hl                                          ; $7797: $e5
	db $ed                                           ; $7798: $ed
	ret c                                            ; $7799: $d8

	rst $38                                          ; $779a: $ff
	ld a, [hl]                                       ; $779b: $7e
	cp $98                                           ; $779c: $fe $98
	ld a, a                                          ; $779e: $7f
	nop                                              ; $779f: $00
	nop                                              ; $77a0: $00
	rst $38                                          ; $77a1: $ff
	ld bc, $07ff                                     ; $77a2: $01 $ff $07
	reti                                             ; $77a5: $d9


	rst $38                                          ; $77a6: $ff
	db $db                                           ; $77a7: $db
	ccf                                              ; $77a8: $3f
	ret c                                            ; $77a9: $d8

	rst $38                                          ; $77aa: $ff
	sbc [hl]                                         ; $77ab: $9e
	ret nc                                           ; $77ac: $d0

	db $db                                           ; $77ad: $db
	cp $7e                                           ; $77ae: $fe $7e
	call $ffdb                                       ; $77b0: $cd $db $ff
	sub l                                            ; $77b3: $95
	ret nz                                           ; $77b4: $c0

	or b                                             ; $77b5: $b0
	ld a, a                                          ; $77b6: $7f
	ld b, [hl]                                       ; $77b7: $46
	inc b                                            ; $77b8: $04
	dec b                                            ; $77b9: $05
	ld a, [bc]                                       ; $77ba: $0a
	inc b                                            ; $77bb: $04
	rst $38                                          ; $77bc: $ff
	ld c, a                                          ; $77bd: $4f
	sbc $7f                                          ; $77be: $de $7f
	sbc c                                            ; $77c0: $99
	ld a, [hl]                                       ; $77c1: $7e
	ld a, h                                          ; $77c2: $7c
	ld a, b                                          ; $77c3: $78
	rra                                              ; $77c4: $1f
	rra                                              ; $77c5: $1f
	rst $38                                          ; $77c6: $ff
	sbc $7f                                          ; $77c7: $de $7f
	rst SubAFromDE                                          ; $77c9: $df
	rst $38                                          ; $77ca: $ff
	sbc $e0                                          ; $77cb: $de $e0
	sbc [hl]                                         ; $77cd: $9e
	add b                                            ; $77ce: $80
	db $fd                                           ; $77cf: $fd
	rst SubAFromDE                                          ; $77d0: $df
	inc b                                            ; $77d1: $04
	sub c                                            ; $77d2: $91
	ld [hl], b                                       ; $77d3: $70
	cp h                                             ; $77d4: $bc

Jump_03a_77d5:
	sbc l                                            ; $77d5: $9d
	sbc c                                            ; $77d6: $99
	sbc l                                            ; $77d7: $9d
	sbc h                                            ; $77d8: $9c
	add [hl]                                         ; $77d9: $86
	add [hl]                                         ; $77da: $86
	cp [hl]                                          ; $77db: $be
	ld a, a                                          ; $77dc: $7f
	ld l, a                                          ; $77dd: $6f
	ld h, a                                          ; $77de: $67
	ld h, e                                          ; $77df: $63
	ld h, e                                          ; $77e0: $63
	sbc $01                                          ; $77e1: $de $01
	sbc d                                            ; $77e3: $9a
	ld h, c                                          ; $77e4: $61
	db $dd                                           ; $77e5: $dd
	add hl, hl                                       ; $77e6: $29
	ld a, [$de3a]                                    ; $77e7: $fa $3a $de
	inc bc                                           ; $77ea: $03
	add d                                            ; $77eb: $82
	add e                                            ; $77ec: $83
	db $e3                                           ; $77ed: $e3
	ei                                               ; $77ee: $fb
	inc bc                                           ; $77ef: $03
	inc bc                                           ; $77f0: $03
	di                                               ; $77f1: $f3
	di                                               ; $77f2: $f3
	ei                                               ; $77f3: $fb
	ld a, [$8c8c]                                    ; $77f4: $fa $8c $8c
	add [hl]                                         ; $77f7: $86
	add [hl]                                         ; $77f8: $86
	ld a, a                                          ; $77f9: $7f
	ccf                                              ; $77fa: $3f
	ccf                                              ; $77fb: $3f
	rra                                              ; $77fc: $1f
	ld c, a                                          ; $77fd: $4f
	ld c, a                                          ; $77fe: $4f

Jump_03a_77ff:
	ld c, e                                          ; $77ff: $4b
	ld c, e                                          ; $7800: $4b
	jp $0105                                         ; $7801: $c3 $05 $01


	nop                                              ; $7804: $00
	and b                                            ; $7805: $a0
	ld [$7ae0], sp                                   ; $7806: $08 $e0 $7a
	ld [hl], a                                       ; $7809: $77
	sbc l                                            ; $780a: $9d
	rst SubAFromDE                                          ; $780b: $df
	rst $38                                          ; $780c: $ff
	sbc l                                            ; $780d: $9d
	rra                                              ; $780e: $1f
	rlca                                             ; $780f: $07
	ld a, d                                          ; $7810: $7a
	jp z, $b877                                      ; $7811: $ca $77 $b8

	sbc d                                            ; $7814: $9a
	sub b                                            ; $7815: $90
	add h                                            ; $7816: $84
	adc h                                            ; $7817: $8c
	and b                                            ; $7818: $a0
	ld h, b                                          ; $7819: $60
	ld a, d                                          ; $781a: $7a
	ldh a, [c]                                       ; $781b: $f2
	sub l                                            ; $781c: $95
	ld h, e                                          ; $781d: $63
	inc bc                                           ; $781e: $03
	ld b, $06                                        ; $781f: $06 $06
	inc b                                            ; $7821: $04
	inc bc                                           ; $7822: $03
	ld b, $2f                                        ; $7823: $06 $2f
	dec a                                            ; $7825: $3d
	dec a                                            ; $7826: $3d
	sbc $1b                                          ; $7827: $de $1b
	ld a, a                                          ; $7829: $7f
	inc e                                            ; $782a: $1c
	rst SubAFromDE                                          ; $782b: $df
	rst JumpTable                                          ; $782c: $c7
	rst SubAFromDE                                          ; $782d: $df
	inc sp                                           ; $782e: $33
	sbc c                                            ; $782f: $99
	dec sp                                           ; $7830: $3b
	dec a                                            ; $7831: $3d
	sbc a                                            ; $7832: $9f
	di                                               ; $7833: $f3
	ldh [$d4], a                                     ; $7834: $e0 $d4
	sbc $fd                                          ; $7836: $de $fd
	ld a, a                                          ; $7838: $7f
	ld b, l                                          ; $7839: $45
	sbc $f8                                          ; $783a: $de $f8
	rst SubAFromDE                                          ; $783c: $df
	ld bc, $8199                                     ; $783d: $01 $99 $81
	pop af                                           ; $7840: $f1
	ldh a, [rP1]                                     ; $7841: $f0 $00
	jr nz, @+$23                                     ; $7843: $20 $21

	db $dd                                           ; $7845: $dd
	rst $38                                          ; $7846: $ff
	sbc $1f                                          ; $7847: $de $1f
	adc [hl]                                         ; $7849: $8e
	ld e, $fa                                        ; $784a: $1e $fa

jr_03a_784c:
	db $ed                                           ; $784c: $ed
	ld a, [$ead5]                                    ; $784d: $fa $d5 $ea
	and l                                            ; $7850: $a5
	ld [$f755], a                                    ; $7851: $ea $55 $f7
	rst FarCall                                          ; $7854: $f7
	rst AddAOntoHL                                          ; $7855: $ef
	rst AddAOntoHL                                          ; $7856: $ef
	rst SubAFromDE                                          ; $7857: $df
	rst SubAFromDE                                          ; $7858: $df
	cp a                                             ; $7859: $bf
	cp a                                             ; $785a: $bf
	halt                                             ; $785b: $76
	call nz, $fe7b                                   ; $785c: $c4 $7b $fe
	sbc [hl]                                         ; $785f: $9e
	reti                                             ; $7860: $d9


	jp c, $9eff                                      ; $7861: $da $ff $9e

	ld [hl], a                                       ; $7864: $77
	sbc $13                                          ; $7865: $de $13
	sbc d                                            ; $7867: $9a
	ld de, $3531                                     ; $7868: $11 $31 $35
	ld [hl-], a                                      ; $786b: $32
	jr c, jr_03a_784c                                ; $786c: $38 $de

	jp hl                                            ; $786e: $e9


	add b                                            ; $786f: $80
	db $eb                                           ; $7870: $eb
	set 1, e                                         ; $7871: $cb $cb
	call $f9cf                                       ; $7873: $cd $cf $f9
	db $fc                                           ; $7876: $fc
	ld sp, $8335                                     ; $7877: $31 $35 $83

Call_03a_787a:
	jr nz, @-$06                                     ; $787a: $20 $f8

	db $fc                                           ; $787c: $fc
	cp $ff                                           ; $787d: $fe $ff
	cp $fa                                           ; $787f: $fe $fa
	db $fc                                           ; $7881: $fc
	rst $38                                          ; $7882: $ff
	daa                                              ; $7883: $27
	inc bc                                           ; $7884: $03
	dec b                                            ; $7885: $05
	ld bc, $b905                                     ; $7886: $01 $05 $b9
	ld sp, hl                                        ; $7889: $f9
	ld a, c                                          ; $788a: $79
	ld bc, $fbef                                     ; $788b: $01 $ef $fb
	rst $38                                          ; $788e: $ff
	sub h                                            ; $788f: $94
	rst $38                                          ; $7890: $ff
	ld b, a                                          ; $7891: $47
	rlca                                             ; $7892: $07
	add a                                            ; $7893: $87
	rst $38                                          ; $7894: $ff
	ld bc, $c080                                     ; $7895: $01 $80 $c0
	nop                                              ; $7898: $00
	nop                                              ; $7899: $00
	ld b, b                                          ; $789a: $40
	sbc $80                                          ; $789b: $de $80
	reti                                             ; $789d: $d9


	rst $38                                          ; $789e: $ff
	sbc d                                            ; $789f: $9a
	db $ed                                           ; $78a0: $ed
	db $ec                                           ; $78a1: $ec
	db $ec                                           ; $78a2: $ec
	ldh [rAUD4GO], a                                 ; $78a3: $e0 $23
	cp $6d                                           ; $78a5: $fe $6d
	add e                                            ; $78a7: $83
	rst $38                                          ; $78a8: $ff
	rst SubAFromDE                                          ; $78a9: $df
	ld l, l                                          ; $78aa: $6d
	sbc [hl]                                         ; $78ab: $9e
	ld bc, $fd73                                     ; $78ac: $01 $73 $fd
	ld c, [hl]                                       ; $78af: $4e
	jp nz, $3f9d                                     ; $78b0: $c2 $9d $3f

	ld [hl], h                                       ; $78b3: $74
	jp c, $9eff                                      ; $78b4: $da $ff $9e

	add e                                            ; $78b7: $83
	ld l, [hl]                                       ; $78b8: $6e
	jp $fe9d                                         ; $78b9: $c3 $9d $fe


	ld bc, $ffd9                                     ; $78bc: $01 $d9 $ff
	sub h                                            ; $78bf: $94
	ld sp, $2323                                     ; $78c0: $31 $23 $23
	rlca                                             ; $78c3: $07
	ld b, a                                          ; $78c4: $47
	ccf                                              ; $78c5: $3f
	rst $38                                          ; $78c6: $ff
	ccf                                              ; $78c7: $3f
	ld a, b                                          ; $78c8: $78
	ld [hl], b                                       ; $78c9: $70
	ld [hl], b                                       ; $78ca: $70
	sbc $60                                          ; $78cb: $de $60
	ld a, a                                          ; $78cd: $7f
	adc b                                            ; $78ce: $88
	db $db                                           ; $78cf: $db
	rst $38                                          ; $78d0: $ff
	sbc l                                            ; $78d1: $9d
	sbc a                                            ; $78d2: $9f
	cpl                                              ; $78d3: $2f
	ld a, [$c096]                                    ; $78d4: $fa $96 $c0
	sbc l                                            ; $78d7: $9d
	sbc l                                            ; $78d8: $9d
	sbc h                                            ; $78d9: $9c
	sbc l                                            ; $78da: $9d
	sbc a                                            ; $78db: $9f
	sbc a                                            ; $78dc: $9f
	sbc l                                            ; $78dd: $9d
	sbc h                                            ; $78de: $9c
	reti                                             ; $78df: $d9


	ld h, e                                          ; $78e0: $63
	sub d                                            ; $78e1: $92
	ld hl, sp-$18                                    ; $78e2: $f8 $e8
	ld hl, sp-$27                                    ; $78e4: $f8 $d9
	db $eb                                           ; $78e6: $eb
	db $eb                                           ; $78e7: $eb
	ei                                               ; $78e8: $fb
	di                                               ; $78e9: $f3
	inc bc                                           ; $78ea: $03
	inc de                                           ; $78eb: $13
	inc bc                                           ; $78ec: $03
	inc bc                                           ; $78ed: $03
	inc de                                           ; $78ee: $13
	ld a, e                                          ; $78ef: $7b
	db $fc                                           ; $78f0: $fc
	db $dd                                           ; $78f1: $dd
	add $de                                          ; $78f2: $c6 $de
	ret nz                                           ; $78f4: $c0

	sbc [hl]                                         ; $78f5: $9e
	ld b, b                                          ; $78f6: $40
	sbc $09                                          ; $78f7: $de $09
	sbc l                                            ; $78f9: $9d
	dec c                                            ; $78fa: $0d
	rrca                                             ; $78fb: $0f

jr_03a_78fc:
	cp $9a                                           ; $78fc: $fe $9a
	ld a, h                                          ; $78fe: $7c

Call_03a_78ff:
	ld e, a                                          ; $78ff: $5f
	inc l                                            ; $7900: $2c
	ccf                                              ; $7901: $3f
	add hl, de                                       ; $7902: $19
	sbc $10                                          ; $7903: $de $10
	sbc e                                            ; $7905: $9b
	inc bc                                           ; $7906: $03
	jr nz, jr_03a_7919                               ; $7907: $20 $10

	ld bc, $07dd                                     ; $7909: $01 $dd $07
	ld a, [hl]                                       ; $790c: $7e
	jp z, $bc7f                                      ; $790d: $ca $7f $bc

	rst SubAFromDE                                          ; $7910: $df
	or b                                             ; $7911: $b0
	sbc e                                            ; $7912: $9b
	xor a                                            ; $7913: $af
	or b                                             ; $7914: $b0
	ld b, e                                          ; $7915: $43
	ld bc, $9bfd                                     ; $7916: $01 $fd $9b

jr_03a_7919:
	db $10                                           ; $7919: $10
	rrca                                             ; $791a: $0f
	sbc c                                            ; $791b: $99
	jr jr_03a_78fc                                   ; $791c: $18 $de

	ld hl, sp-$66                                    ; $791e: $f8 $9a
	ldh a, [c]                                       ; $7920: $f2
	nop                                              ; $7921: $00
	nop                                              ; $7922: $00
	ld h, a                                          ; $7923: $67
	rst SubAFromBC                                          ; $7924: $e7
	sbc $05                                          ; $7925: $de $05
	sbc d                                            ; $7927: $9a
	dec c                                            ; $7928: $0d
	rst $38                                          ; $7929: $ff
	rst $38                                          ; $792a: $ff
	or h                                             ; $792b: $b4
	ld a, h                                          ; $792c: $7c
	call c, $9efc                                    ; $792d: $dc $fc $9e
	cp h                                             ; $7930: $bc
	reti                                             ; $7931: $d9


	ld hl, sp-$01                                    ; $7932: $f8 $ff
	sub a                                            ; $7934: $97
	dec e                                            ; $7935: $1d
	ld bc, $0305                                     ; $7936: $01 $05 $03
	ld c, e                                          ; $7939: $4b
	rlca                                             ; $793a: $07
	rra                                              ; $793b: $1f
	rra                                              ; $793c: $1f
	sbc $02                                          ; $793d: $de $02
	adc h                                            ; $793f: $8c
	inc b                                            ; $7940: $04
	inc h                                            ; $7941: $24
	ld l, b                                          ; $7942: $68
	adc a                                            ; $7943: $8f
	rst GetHLinHL                                          ; $7944: $cf
	rra                                              ; $7945: $1f
	ld l, d                                          ; $7946: $6a
	push de                                          ; $7947: $d5
	ld [$aa55], a                                    ; $7948: $ea $55 $aa
	ld a, d                                          ; $794b: $7a
	ld [hl], l                                       ; $794c: $75
	ld [$2ad5], a                                    ; $794d: $ea $d5 $2a
	dec d                                            ; $7950: $15
	xor d                                            ; $7951: $aa
	ld d, l                                          ; $7952: $55
	ld l, [hl]                                       ; $7953: $6e
	pop bc                                           ; $7954: $c1
	ld a, a                                          ; $7955: $7f
	cp $6b                                           ; $7956: $fe $6b
	ld sp, hl                                        ; $7958: $f9
	sbc c                                            ; $7959: $99
	ld d, l                                          ; $795a: $55
	jr nc, jr_03a_7998                               ; $795b: $30 $3b

	ccf                                              ; $795d: $3f
	cpl                                              ; $795e: $2f
	ccf                                              ; $795f: $3f
	ld a, d                                          ; $7960: $7a
	sbc b                                            ; $7961: $98
	sbc $cf                                          ; $7962: $de $cf
	ld [hl], c                                       ; $7964: $71
	ld d, b                                          ; $7965: $50
	ld a, d                                          ; $7966: $7a
	rst FarCall                                          ; $7967: $f7
	sbc d                                            ; $7968: $9a
	pop af                                           ; $7969: $f1
	db $f4                                           ; $796a: $f4
	xor $ee                                          ; $796b: $ee $ee
	ld c, $70                                        ; $796d: $0e $70
	and h                                            ; $796f: $a4
	sbc $f1                                          ; $7970: $de $f1
	sbc h                                            ; $7972: $9c
	inc bc                                           ; $7973: $03
	ld sp, hl                                        ; $7974: $f9
	db $fd                                           ; $7975: $fd
	db $dd                                           ; $7976: $dd
	rst $38                                          ; $7977: $ff
	sbc [hl]                                         ; $7978: $9e
	rrca                                             ; $7979: $0f
	ld [hl], e                                       ; $797a: $73
	ld a, [$ffde]                                    ; $797b: $fa $de $ff

Call_03a_797e:
	reti                                             ; $797e: $d9


	add b                                            ; $797f: $80
	reti                                             ; $7980: $d9


	rst $38                                          ; $7981: $ff
	ld hl, $8c00                                     ; $7982: $21 $00 $8c
	ld [hl], l                                       ; $7985: $75
	ld d, l                                          ; $7986: $55
	ld d, a                                          ; $7987: $57
	ld b, l                                          ; $7988: $45
	dec [hl]                                         ; $7989: $35
	ld b, l                                          ; $798a: $45
	ld d, a                                          ; $798b: $57
	ld d, l                                          ; $798c: $55
	dec [hl]                                         ; $798d: $35
	ld d, l                                          ; $798e: $55
	ld [hl], h                                       ; $798f: $74
	ld b, h                                          ; $7990: $44
	ld b, a                                          ; $7991: $47
	ld [hl], l                                       ; $7992: $75
	inc sp                                           ; $7993: $33
	ld h, [hl]                                       ; $7994: $66
	inc sp                                           ; $7995: $33
	ld d, l                                          ; $7996: $55
	inc sp                                           ; $7997: $33

jr_03a_7998:
	ld a, e                                          ; $7998: $7b
	or $97                                           ; $7999: $f6 $97
	ld [hl], a                                       ; $799b: $77
	ld [hl], l                                       ; $799c: $75
	inc [hl]                                         ; $799d: $34
	ld d, [hl]                                       ; $799e: $56
	inc [hl]                                         ; $799f: $34
	ld d, l                                          ; $79a0: $55
	ld b, h                                          ; $79a1: $44
	ld b, l                                          ; $79a2: $45
	ret nc                                           ; $79a3: $d0

	add h                                            ; $79a4: $84
	pop af                                           ; $79a5: $f1
	sub l                                            ; $79a6: $95
	rst $38                                          ; $79a7: $ff
	pop bc                                           ; $79a8: $c1
	ld e, a                                          ; $79a9: $5f
	ld a, a                                          ; $79aa: $7f
	rst $38                                          ; $79ab: $ff
	ld a, a                                          ; $79ac: $7f
	ld l, l                                          ; $79ad: $6d
	ld l, l                                          ; $79ae: $6d
	nop                                              ; $79af: $00
	ccf                                              ; $79b0: $3f
	sbc $ff                                          ; $79b1: $de $ff
	sbc d                                            ; $79b3: $9a
	db $ed                                           ; $79b4: $ed
	rst $38                                          ; $79b5: $ff
	rst $38                                          ; $79b6: $ff
	pop hl                                           ; $79b7: $e1
	rst $38                                          ; $79b8: $ff
	sbc $f9                                          ; $79b9: $de $f9
	sbc $79                                          ; $79bb: $de $79
	sbc [hl]                                         ; $79bd: $9e
	rra                                              ; $79be: $1f
	db $db                                           ; $79bf: $db
	rst $38                                          ; $79c0: $ff
	sbc e                                            ; $79c1: $9b
	xor a                                            ; $79c2: $af
	rst $38                                          ; $79c3: $ff
	ld d, a                                          ; $79c4: $57
	ld d, [hl]                                       ; $79c5: $56

Jump_03a_79c6:
	db $dd                                           ; $79c6: $dd
	ld d, d                                          ; $79c7: $52
	sbc h                                            ; $79c8: $9c
	ld d, b                                          ; $79c9: $50
	rst $38                                          ; $79ca: $ff
	cp $db                                           ; $79cb: $fe $db
	rst $38                                          ; $79cd: $ff
	sub [hl]                                         ; $79ce: $96
	cp a                                             ; $79cf: $bf
	ld c, a                                          ; $79d0: $4f
	ld c, a                                          ; $79d1: $4f
	ld e, a                                          ; $79d2: $5f
	ld c, $2c                                        ; $79d3: $0e $2c
	add hl, de                                       ; $79d5: $19
	ld e, b                                          ; $79d6: $58
	db $fc                                           ; $79d7: $fc
	sbc $b8                                          ; $79d8: $de $b8
	adc a                                            ; $79da: $8f
	ld sp, hl                                        ; $79db: $f9
	ei                                               ; $79dc: $fb

Call_03a_79dd:
	rst $38                                          ; $79dd: $ff
	rst $38                                          ; $79de: $ff
	rst AddAOntoHL                                          ; $79df: $ef
	ccf                                              ; $79e0: $3f
	ld hl, sp-$08                                    ; $79e1: $f8 $f8
	jr nz, jr_03a_7a09                               ; $79e3: $20 $24

	add e                                            ; $79e5: $83
	push hl                                          ; $79e6: $e5

jr_03a_79e7:
	ret nz                                           ; $79e7: $c0

	ld h, b                                          ; $79e8: $60
	ld hl, $dd27                                     ; $79e9: $21 $27 $dd
	rst $38                                          ; $79ec: $ff
	rst SubAFromDE                                          ; $79ed: $df
	sbc h                                            ; $79ee: $9c
	sub a                                            ; $79ef: $97
	ld [bc], a                                       ; $79f0: $02
	nop                                              ; $79f1: $00
	ldh [$61], a                                     ; $79f2: $e0 $61
	rst SubAFromDE                                          ; $79f4: $df
	ld e, [hl]                                       ; $79f5: $5e
	ld h, e                                          ; $79f6: $63
	ld h, e                                          ; $79f7: $63
	db $db                                           ; $79f8: $db
	rst $38                                          ; $79f9: $ff
	adc a                                            ; $79fa: $8f
	ld h, $86                                        ; $79fb: $26 $86
	bit 0, a                                         ; $79fd: $cb $47
	set 7, a                                         ; $79ff: $cb $ff
	db $db                                           ; $7a01: $db
	inc bc                                           ; $7a02: $03
	sbc a                                            ; $7a03: $9f
	rst $38                                          ; $7a04: $ff
	or $fe                                           ; $7a05: $f6 $fe
	cp $fa                                           ; $7a07: $fe $fa

jr_03a_7a09:
	ldh [c], a                                       ; $7a09: $e2
	ld [hl+], a                                      ; $7a0a: $22
	sbc $40                                          ; $7a0b: $de $40
	sbc d                                            ; $7a0d: $9a
	ld b, e                                          ; $7a0e: $43
	ld c, [hl]                                       ; $7a0f: $4e
	inc e                                            ; $7a10: $1c
	jr c, jr_03a_7a45                                ; $7a11: $38 $32

	db $fd                                           ; $7a13: $fd
	add c                                            ; $7a14: $81
	ld bc, $4743                                     ; $7a15: $01 $43 $47
	ld c, a                                          ; $7a18: $4f
	rra                                              ; $7a19: $1f
	ccf                                              ; $7a1a: $3f
	rst SubAFromBC                                          ; $7a1b: $e7
	add a                                            ; $7a1c: $87
	dec bc                                           ; $7a1d: $0b
	inc l                                            ; $7a1e: $2c
	sub b                                            ; $7a1f: $90
	ld b, b                                          ; $7a20: $40
	rlca                                             ; $7a21: $07
	rlca                                             ; $7a22: $07
	inc e                                            ; $7a23: $1c
	ld a, h                                          ; $7a24: $7c
	db $fc                                           ; $7a25: $fc
	ldh a, [$e0]                                     ; $7a26: $f0 $e0
	add b                                            ; $7a28: $80
	add c                                            ; $7a29: $81
	ld hl, sp-$80                                    ; $7a2a: $f8 $80
	add c                                            ; $7a2c: $81
	add b                                            ; $7a2d: $80
	ld [bc], a                                       ; $7a2e: $02
	inc b                                            ; $7a2f: $04
	ld b, $1f                                        ; $7a30: $06 $1f
	ld bc, $df77                                     ; $7a32: $01 $77 $df
	rst SubAFromDE                                          ; $7a35: $df
	inc bc                                           ; $7a36: $03
	sbc d                                            ; $7a37: $9a
	add $00                                          ; $7a38: $c6 $00
	nop                                              ; $7a3a: $00
	add b                                            ; $7a3b: $80
	ret nz                                           ; $7a3c: $c0

	ld [hl], a                                       ; $7a3d: $77
	ld e, b                                          ; $7a3e: $58
	ld a, a                                          ; $7a3f: $7f
	ld e, e                                          ; $7a40: $5b
	sbc [hl]                                         ; $7a41: $9e
	ld a, a                                          ; $7a42: $7f
	ld [hl], a                                       ; $7a43: $77
	ld e, l                                          ; $7a44: $5d

jr_03a_7a45:
	sub a                                            ; $7a45: $97
	inc a                                            ; $7a46: $3c
	inc e                                            ; $7a47: $1c
	inc e                                            ; $7a48: $1c
	jr jr_03a_79e7                                   ; $7a49: $18 $9c

	inc e                                            ; $7a4b: $1c
	ld e, h                                          ; $7a4c: $5c
	ld e, c                                          ; $7a4d: $59
	reti                                             ; $7a4e: $d9


	ld hl, sp-$72                                    ; $7a4f: $f8 $8e
	rla                                              ; $7a51: $17
	rrca                                             ; $7a52: $0f
	ld l, a                                          ; $7a53: $6f
	rst SubAFromDE                                          ; $7a54: $df
	sbc a                                            ; $7a55: $9f
	cp a                                             ; $7a56: $bf
	cp a                                             ; $7a57: $bf
	ld a, a                                          ; $7a58: $7f
	ld l, b                                          ; $7a59: $68
	ld [hl], b                                       ; $7a5a: $70
	db $10                                           ; $7a5b: $10
	jr nz, @+$22                                     ; $7a5c: $20 $20

	ld b, b                                          ; $7a5e: $40
	ld b, b                                          ; $7a5f: $40
	add b                                            ; $7a60: $80
	ld [hl], l                                       ; $7a61: $75
	ld l, e                                          ; $7a62: $6b
	ld e, b                                          ; $7a63: $58
	sbc [hl]                                         ; $7a64: $9e
	adc d                                            ; $7a65: $8a
	ld [hl], a                                       ; $7a66: $77
	ret nz                                           ; $7a67: $c0

	cp $8b                                           ; $7a68: $fe $8b
	ld d, l                                          ; $7a6a: $55
	xor d                                            ; $7a6b: $aa
	push de                                          ; $7a6c: $d5
	ld a, [$fefd]                                    ; $7a6d: $fa $fd $fe
	ei                                               ; $7a70: $fb
	cp $aa                                           ; $7a71: $fe $aa
	ld d, l                                          ; $7a73: $55
	ld a, [hl+]                                      ; $7a74: $2a
	dec b                                            ; $7a75: $05
	ld [bc], a                                       ; $7a76: $02
	ld bc, $0104                                ; $7a77: $01 $04 $01
	add hl, de                                       ; $7a7a: $19
	dec de                                           ; $7a7b: $1b
	add hl, de                                       ; $7a7c: $19
	jr @-$20                                         ; $7a7d: $18 $de

	rrca                                             ; $7a7f: $0f
	sbc h                                            ; $7a80: $9c
	rra                                              ; $7a81: $1f
	cp $fc                                           ; $7a82: $fe $fc
	ld l, e                                          ; $7a84: $6b
	rst SubAFromHL                                          ; $7a85: $d7
	sub a                                            ; $7a86: $97
	rst $38                                          ; $7a87: $ff
	ret nz                                           ; $7a88: $c0

	nop                                              ; $7a89: $00
	ld l, [hl]                                       ; $7a8a: $6e
	ld a, a                                          ; $7a8b: $7f
	ld [hl], l                                       ; $7a8c: $75
	ld [hl], l                                       ; $7a8d: $75
	nop                                              ; $7a8e: $00

Call_03a_7a8f:
	ld a, d                                          ; $7a8f: $7a
	rst $38                                          ; $7a90: $ff
	sbc [hl]                                         ; $7a91: $9e
	sbc a                                            ; $7a92: $9f
	sbc $8e                                          ; $7a93: $de $8e
	sbc e                                            ; $7a95: $9b
	di                                               ; $7a96: $f3
	ei                                               ; $7a97: $fb
	ld [hl], e                                       ; $7a98: $73
	rlca                                             ; $7a99: $07
	db $dd                                           ; $7a9a: $dd
	rst SubAFromDE                                          ; $7a9b: $df
	sbc e                                            ; $7a9c: $9b
	rrca                                             ; $7a9d: $0f
	rlca                                             ; $7a9e: $07
	adc a                                            ; $7a9f: $8f
	rst $38                                          ; $7aa0: $ff
	db $dd                                           ; $7aa1: $dd
	ccf                                              ; $7aa2: $3f
	rst SubAFromDE                                          ; $7aa3: $df
	add b                                            ; $7aa4: $80
	ld l, d                                          ; $7aa5: $6a
	ret c                                            ; $7aa6: $d8

	jp c, $feff                                      ; $7aa7: $da $ff $fe

	sbc h                                            ; $7aaa: $9c
	inc b                                            ; $7aab: $04
	pop hl                                           ; $7aac: $e1
	ld e, $73                                        ; $7aad: $1e $73
	db $eb                                           ; $7aaf: $eb
	sbc d                                            ; $7ab0: $9a
	inc bc                                           ; $7ab1: $03
	ld e, $e0                                        ; $7ab2: $1e $e0
	nop                                              ; $7ab4: $00
	nop                                              ; $7ab5: $00
	sbc $69                                          ; $7ab6: $de $69
	rst SubAFromDE                                          ; $7ab8: $df
	jp hl                                            ; $7ab9: $e9


	sbc h                                            ; $7aba: $9c
	ld l, c                                          ; $7abb: $69
	ld l, e                                          ; $7abc: $6b
	ld a, e                                          ; $7abd: $7b
	reti                                             ; $7abe: $d9


	rst $38                                          ; $7abf: $ff
	sbc [hl]                                         ; $7ac0: $9e
	ld a, c                                          ; $7ac1: $79
	db $dd                                           ; $7ac2: $dd
	add hl, hl                                       ; $7ac3: $29
	sbc e                                            ; $7ac4: $9b
	add hl, sp                                       ; $7ac5: $39
	dec a                                            ; $7ac6: $3d
	dec a                                            ; $7ac7: $3d
	xor a                                            ; $7ac8: $af
	jp c, $95ff                                      ; $7ac9: $da $ff $95

	ld e, b                                          ; $7acc: $58
	ld d, l                                          ; $7acd: $55
	ld d, b                                          ; $7ace: $50
	ld d, [hl]                                       ; $7acf: $56
	ld e, a                                          ; $7ad0: $5f
	ld e, a                                          ; $7ad1: $5f
	ld [hl], c                                       ; $7ad2: $71
	ld [hl], b                                       ; $7ad3: $70
	rst $38                                          ; $7ad4: $ff
	ld a, [$ffdb]                                    ; $7ad5: $fa $db $ff
	sub [hl]                                         ; $7ad8: $96
	ld a, b                                          ; $7ad9: $78
	ld [hl-], a                                      ; $7ada: $32
	inc sp                                           ; $7adb: $33
	scf                                              ; $7adc: $37
	ld [hl], l                                       ; $7add: $75
	di                                               ; $7ade: $f3
	di                                               ; $7adf: $f3
	ld [hl], e                                       ; $7ae0: $73
	rst SubAFromDE                                          ; $7ae1: $df
	sbc $ff                                          ; $7ae2: $de $ff
	ld a, a                                          ; $7ae4: $7f
	ld a, h                                          ; $7ae5: $7c
	rst SubAFromDE                                          ; $7ae6: $df
	db $fc                                           ; $7ae7: $fc
	sub a                                            ; $7ae8: $97
	dec a                                            ; $7ae9: $3d
	ld a, a                                          ; $7aea: $7f
	sbc $c0                                          ; $7aeb: $de $c0
	add b                                            ; $7aed: $80
	nop                                              ; $7aee: $00
	add b                                            ; $7aef: $80
	add b                                            ; $7af0: $80
	sbc $ff                                          ; $7af1: $de $ff
	sbc [hl]                                         ; $7af3: $9e
	ccf                                              ; $7af4: $3f
	db $dd                                           ; $7af5: $dd
	rra                                              ; $7af6: $1f
	sbc d                                            ; $7af7: $9a
	rst $38                                          ; $7af8: $ff
	or c                                             ; $7af9: $b1
	add c                                            ; $7afa: $81
	inc bc                                           ; $7afb: $03
	rlca                                             ; $7afc: $07
	cp $9e                                           ; $7afd: $fe $9e
	ld hl, sp+$77                                    ; $7aff: $f8 $77
	dec bc                                           ; $7b01: $0b
	cp $97                                           ; $7b02: $fe $97
	ld b, e                                          ; $7b04: $43
	ld d, e                                          ; $7b05: $53
	ld b, e                                          ; $7b06: $43
	jp Jump_03a_4b43                                 ; $7b07: $c3 $43 $4b


	ld b, a                                          ; $7b0a: $47
	rst AddAOntoHL                                          ; $7b0b: $ef
	call c, $9722                                    ; $7b0c: $dc $22 $97
	ld h, $3a                                        ; $7b0f: $26 $3a
	ld [hl-], a                                      ; $7b11: $32
	ld hl, $0c06                                     ; $7b12: $21 $06 $0c
	jr nc, jr_03a_7b57                               ; $7b15: $30 $40

	ld a, e                                          ; $7b17: $7b
	ret nc                                           ; $7b18: $d0

jr_03a_7b19:
	sbc e                                            ; $7b19: $9b
	ld e, [hl]                                       ; $7b1a: $5e
	ld a, b                                          ; $7b1b: $78
	ld [hl], b                                       ; $7b1c: $70
	ld b, b                                          ; $7b1d: $40
	db $fd                                           ; $7b1e: $fd
	sbc [hl]                                         ; $7b1f: $9e
	jr nz, jr_03a_7b91                               ; $7b20: $20 $6f

	ld h, b                                          ; $7b22: $60
	ld l, e                                          ; $7b23: $6b
	ld [de], a                                       ; $7b24: $12
	rst $38                                          ; $7b25: $ff
	adc a                                            ; $7b26: $8f
	rlca                                             ; $7b27: $07
	dec h                                            ; $7b28: $25
	ld b, $42                                        ; $7b29: $06 $42
	ld b, a                                          ; $7b2b: $47
	add [hl]                                         ; $7b2c: $86
	adc [hl]                                         ; $7b2d: $8e
	db $10                                           ; $7b2e: $10
	inc bc                                           ; $7b2f: $03
	inc bc                                           ; $7b30: $03
	ld bc, $0001                                     ; $7b31: $01 $01 $00
	ld bc, $0f01                                     ; $7b34: $01 $01 $0f
	ld a, d                                          ; $7b37: $7a
	pop bc                                           ; $7b38: $c1
	sbc d                                            ; $7b39: $9a
	add b                                            ; $7b3a: $80
	ld b, b                                          ; $7b3b: $40
	ld h, b                                          ; $7b3c: $60
	and b                                            ; $7b3d: $a0
	jr nz, jr_03a_7b19                               ; $7b3e: $20 $d9

	rst $38                                          ; $7b40: $ff
	sub [hl]                                         ; $7b41: $96
	add sp, $2a                                      ; $7b42: $e8 $2a
	cp h                                             ; $7b44: $bc
	ld [hl], b                                       ; $7b45: $70
	or b                                             ; $7b46: $b0
	ld e, d                                          ; $7b47: $5a
	cp d                                             ; $7b48: $ba
	ld a, e                                          ; $7b49: $7b
	ld sp, hl                                        ; $7b4a: $f9
	halt                                             ; $7b4b: $76
	ld b, e                                          ; $7b4c: $43
	sbc $ff                                          ; $7b4d: $de $ff
	sub d                                            ; $7b4f: $92
	ld a, a                                          ; $7b50: $7f
	ld c, a                                          ; $7b51: $4f
	rst JumpTable                                          ; $7b52: $c7
	db $db                                           ; $7b53: $db
	db $dd                                           ; $7b54: $dd
	sub $d3                                          ; $7b55: $d6 $d3

jr_03a_7b57:
	pop de                                           ; $7b57: $d1
	add b                                            ; $7b58: $80
	or b                                             ; $7b59: $b0
	jr c, jr_03a_7b98                                ; $7b5a: $38 $3c

	ld a, $de                                        ; $7b5c: $3e $de
	ccf                                              ; $7b5e: $3f
	db $db                                           ; $7b5f: $db
	rst $38                                          ; $7b60: $ff
	sbc l                                            ; $7b61: $9d
	ld a, a                                          ; $7b62: $7f
	cp a                                             ; $7b63: $bf
	ei                                               ; $7b64: $fb
	ld a, [hl]                                       ; $7b65: $7e
	add l                                            ; $7b66: $85
	ld [hl], a                                       ; $7b67: $77
	ld e, c                                          ; $7b68: $59
	ld l, e                                          ; $7b69: $6b
	ld [$9c73], sp                                   ; $7b6a: $08 $73 $9c
	ld a, [hl]                                       ; $7b6d: $7e
	jr c, @-$65                                      ; $7b6e: $38 $99

	ld a, a                                          ; $7b70: $7f
	rra                                              ; $7b71: $1f
	ld e, $1c                                        ; $7b72: $1e $1c
	dec de                                           ; $7b74: $1b
	dec de                                           ; $7b75: $1b
	db $db                                           ; $7b76: $db
	rst $38                                          ; $7b77: $ff
	rst SubAFromDE                                          ; $7b78: $df
	db $fc                                           ; $7b79: $fc
	adc a                                            ; $7b7a: $8f
	ccf                                              ; $7b7b: $3f
	cp e                                             ; $7b7c: $bb
	sbc a                                            ; $7b7d: $9f
	sbc a                                            ; $7b7e: $9f
	ld a, a                                          ; $7b7f: $7f
	di                                               ; $7b80: $f3
	db $ed                                           ; $7b81: $ed
	sbc [hl]                                         ; $7b82: $9e
	call nz, $e0c4                                   ; $7b83: $c4 $c4 $e0
	ldh [$80], a                                     ; $7b86: $e0 $80
	inc c                                            ; $7b88: $0c
	ld e, $7f                                        ; $7b89: $1e $7f
	ld a, d                                          ; $7b8b: $7a
	ld [hl], l                                       ; $7b8c: $75
	sbc b                                            ; $7b8d: $98
	ccf                                              ; $7b8e: $3f
	rst SubAFromDE                                          ; $7b8f: $df
	rst GetHLinHL                                          ; $7b90: $cf

jr_03a_7b91:
	rst FarCall                                          ; $7b91: $f7
	ld [hl], a                                       ; $7b92: $77
	ld a, a                                          ; $7b93: $7f
	ld a, a                                          ; $7b94: $7f
	ld a, e                                          ; $7b95: $7b
	cpl                                              ; $7b96: $2f
	sbc h                                            ; $7b97: $9c

jr_03a_7b98:
	ccf                                              ; $7b98: $3f
	rrca                                             ; $7b99: $0f
	adc a                                            ; $7b9a: $8f
	ld [hl], a                                       ; $7b9b: $77
	ret z                                            ; $7b9c: $c8

	db $dd                                           ; $7b9d: $dd
	ld bc, $c05a                                     ; $7b9e: $01 $5a $c0
	db $f4                                           ; $7ba1: $f4
	db $db                                           ; $7ba2: $db
	ld l, c                                          ; $7ba3: $69
	sbc [hl]                                         ; $7ba4: $9e
	ld l, a                                          ; $7ba5: $6f
	ld a, e                                          ; $7ba6: $7b
	jp nc, $ffdb                                     ; $7ba7: $d2 $db $ff

	sbc $29                                          ; $7baa: $de $29
	sbc d                                            ; $7bac: $9a
	cpl                                              ; $7bad: $2f
	ccf                                              ; $7bae: $3f
	rst $38                                          ; $7baf: $ff
	ei                                               ; $7bb0: $fb
	db $eb                                           ; $7bb1: $eb
	reti                                             ; $7bb2: $d9


	rst $38                                          ; $7bb3: $ff
	sbc d                                            ; $7bb4: $9a
	ld [hl], a                                       ; $7bb5: $77
	ld e, a                                          ; $7bb6: $5f
	db $fd                                           ; $7bb7: $fd
	push af                                          ; $7bb8: $f5
	push de                                          ; $7bb9: $d5
	sbc $55                                          ; $7bba: $de $55
	halt                                             ; $7bbc: $76
	ret nc                                           ; $7bbd: $d0

	db $dd                                           ; $7bbe: $dd
	rst $38                                          ; $7bbf: $ff
	ld a, [hl]                                       ; $7bc0: $7e
	add $db                                          ; $7bc1: $c6 $db
	ld [hl], e                                       ; $7bc3: $73
	reti                                             ; $7bc4: $d9


	db $fc                                           ; $7bc5: $fc
	halt                                             ; $7bc6: $76
	call nz, $809b                                   ; $7bc7: $c4 $9b $80
	adc d                                            ; $7bca: $8a
	cp a                                             ; $7bcb: $bf
	rst AddAOntoHL                                          ; $7bcc: $ef
	db $db                                           ; $7bcd: $db
	rra                                              ; $7bce: $1f
	ld a, e                                          ; $7bcf: $7b
	sub e                                            ; $7bd0: $93
	sub e                                            ; $7bd1: $93
	rlca                                             ; $7bd2: $07
	dec e                                            ; $7bd3: $1d
	ld [hl], h                                       ; $7bd4: $74
	push af                                          ; $7bd5: $f5
	ld l, d                                          ; $7bd6: $6a
	sub l                                            ; $7bd7: $95
	xor d                                            ; $7bd8: $aa
	nop                                              ; $7bd9: $00
	ld bc, $0802                                     ; $7bda: $01 $02 $08
	nop                                              ; $7bdd: $00
	ld a, d                                          ; $7bde: $7a
	db $e4                                           ; $7bdf: $e4
	sub [hl]                                         ; $7be0: $96
	db $eb                                           ; $7be1: $eb
	ld a, a                                          ; $7be2: $7f
	nop                                              ; $7be3: $00
	nop                                              ; $7be4: $00
	ld d, b                                          ; $7be5: $50
	and b                                            ; $7be6: $a0
	ld b, b                                          ; $7be7: $40
	nop                                              ; $7be8: $00
	or $6a                                           ; $7be9: $f6 $6a
	jr c, jr_03a_7c58                                ; $7beb: $38 $6b

	ld sp, hl                                        ; $7bed: $f9
	ld hl, sp+$7f                                    ; $7bee: $f8 $7f
	reti                                             ; $7bf0: $d9


	rst $38                                          ; $7bf1: $ff
	sbc e                                            ; $7bf2: $9b
	dec b                                            ; $7bf3: $05
	add hl, bc                                       ; $7bf4: $09
	dec bc                                           ; $7bf5: $0b
	inc bc                                           ; $7bf6: $03
	ld sp, hl                                        ; $7bf7: $f9
	sbc e                                            ; $7bf8: $9b
	add hl, de                                       ; $7bf9: $19
	db $eb                                           ; $7bfa: $eb
	sub a                                            ; $7bfb: $97
	or b                                             ; $7bfc: $b0
	ld a, c                                          ; $7bfd: $79
	call nc, Call_03a_559b                           ; $7bfe: $d4 $9b $55
	rlca                                             ; $7c01: $07
	rra                                              ; $7c02: $1f
	ld a, a                                          ; $7c03: $7f
	ld a, d                                          ; $7c04: $7a
	call nz, Call_03a_787a                           ; $7c05: $c4 $7a $78
	ld a, c                                          ; $7c08: $79
	sub $79                                          ; $7c09: $d6 $79
	di                                               ; $7c0b: $f3
	sbc l                                            ; $7c0c: $9d
	ld e, $bf                                        ; $7c0d: $1e $bf
	ld a, d                                          ; $7c0f: $7a
	db $eb                                           ; $7c10: $eb
	sub h                                            ; $7c11: $94
	ccf                                              ; $7c12: $3f
	rla                                              ; $7c13: $17
	rrca                                             ; $7c14: $0f
	rlca                                             ; $7c15: $07
	cp c                                             ; $7c16: $b9
	ld e, l                                          ; $7c17: $5d
	dec l                                            ; $7c18: $2d
	ld l, [hl]                                       ; $7c19: $6e
	ld l, [hl]                                       ; $7c1a: $6e
	rra                                              ; $7c1b: $1f
	ccf                                              ; $7c1c: $3f
	ld h, e                                          ; $7c1d: $63
	ld d, b                                          ; $7c1e: $50
	sbc $d0                                          ; $7c1f: $de $d0
	sbc d                                            ; $7c21: $9a
	ld d, e                                          ; $7c22: $53
	db $d3                                           ; $7c23: $d3
	rla                                              ; $7c24: $17
	ld d, a                                          ; $7c25: $57
	cp a                                             ; $7c26: $bf
	sbc $3f                                          ; $7c27: $de $3f
	rst SubAFromDE                                          ; $7c29: $df
	cp a                                             ; $7c2a: $bf
	sbc $ff                                          ; $7c2b: $de $ff
	sub h                                            ; $7c2d: $94
	rst SubAFromDE                                          ; $7c2e: $df
	ld l, a                                          ; $7c2f: $6f
	scf                                              ; $7c30: $37
	dec de                                           ; $7c31: $1b
	ld c, l                                          ; $7c32: $4d
	ld b, [hl]                                       ; $7c33: $46
	ld b, e                                          ; $7c34: $43
	pop bc                                           ; $7c35: $c1
	ldh [$f0], a                                     ; $7c36: $e0 $f0
	ld hl, sp+$61                                    ; $7c38: $f8 $61
	sbc [hl]                                         ; $7c3a: $9e
	ld d, [hl]                                       ; $7c3b: $56
	or b                                             ; $7c3c: $b0
	ld a, c                                          ; $7c3d: $79
	add e                                            ; $7c3e: $83
	halt                                             ; $7c3f: $76
	ld hl, $f062                                     ; $7c40: $21 $62 $f0
	ld [hl], a                                       ; $7c43: $77
	or a                                             ; $7c44: $b7
	rst SubAFromDE                                          ; $7c45: $df
	db $10                                           ; $7c46: $10
	rst SubAFromDE                                          ; $7c47: $df
	ret nc                                           ; $7c48: $d0

	reti                                             ; $7c49: $d9


	rst $38                                          ; $7c4a: $ff
	sbc b                                            ; $7c4b: $98
	rrca                                             ; $7c4c: $0f
	rst $38                                          ; $7c4d: $ff
	db $fd                                           ; $7c4e: $fd
	db $fd                                           ; $7c4f: $fd
	dec b                                            ; $7c50: $05
	rra                                              ; $7c51: $1f
	rra                                              ; $7c52: $1f
	ld l, d                                          ; $7c53: $6a
	and b                                            ; $7c54: $a0
	rst SubAFromDE                                          ; $7c55: $df
	rst $38                                          ; $7c56: $ff
	reti                                             ; $7c57: $d9


jr_03a_7c58:
	ld bc, $c056                                     ; $7c58: $01 $56 $c0
	ld a, l                                          ; $7c5b: $7d
	add hl, sp                                       ; $7c5c: $39
	sbc l                                            ; $7c5d: $9d
	inc hl                                           ; $7c5e: $23
	sub b                                            ; $7c5f: $90
	db $fc                                           ; $7c60: $fc
	sbc c                                            ; $7c61: $99
	inc bc                                           ; $7c62: $03
	inc e                                            ; $7c63: $1c
	ld h, b                                          ; $7c64: $60
	ld a, a                                          ; $7c65: $7f
	db $fd                                           ; $7c66: $fd
	ld sp, hl                                        ; $7c67: $f9
	call c, $d9e9                                    ; $7c68: $dc $e9 $d9
	rst $38                                          ; $7c6b: $ff
	reti                                             ; $7c6c: $d9


	xor e                                            ; $7c6d: $ab
	reti                                             ; $7c6e: $d9


	rst $38                                          ; $7c6f: $ff
	reti                                             ; $7c70: $d9


	ld d, l                                          ; $7c71: $55
	reti                                             ; $7c72: $d9


	rst $38                                          ; $7c73: $ff
	db $dd                                           ; $7c74: $dd
	ld [hl], e                                       ; $7c75: $73
	sbc e                                            ; $7c76: $9b
	ld [hl], d                                       ; $7c77: $72
	ld [hl], b                                       ; $7c78: $70
	ldh a, [$f0]                                     ; $7c79: $f0 $f0
	db $dd                                           ; $7c7b: $dd
	db $fc                                           ; $7c7c: $fc
	ld a, h                                          ; $7c7d: $7c
	add sp, -$21                                     ; $7c7e: $e8 $df
	db $fc                                           ; $7c80: $fc
	sub h                                            ; $7c81: $94
	pop bc                                           ; $7c82: $c1
	ldh [c], a                                       ; $7c83: $e2
	push de                                          ; $7c84: $d5
	ldh a, [c]                                       ; $7c85: $f2
	ld d, l                                          ; $7c86: $55
	xor d                                            ; $7c87: $aa
	ld d, h                                          ; $7c88: $54
	jr z, jr_03a_7c8b                                ; $7c89: $28 $00

jr_03a_7c8b:
	nop                                              ; $7c8b: $00
	ld h, b                                          ; $7c8c: $60
	ld a, c                                          ; $7c8d: $79
	ld a, b                                          ; $7c8e: $78
	rst $38                                          ; $7c8f: $ff
	sub a                                            ; $7c90: $97
	ld d, h                                          ; $7c91: $54
	xor b                                            ; $7c92: $a8
	ld d, d                                          ; $7c93: $52
	add h                                            ; $7c94: $84
	jr z, jr_03a_7ce7                                ; $7c95: $28 $50

	inc h                                            ; $7c97: $24
	ld c, b                                          ; $7c98: $48
	ld e, [hl]                                       ; $7c99: $5e
	rst SubAFromDE                                          ; $7c9a: $df
	sbc c                                            ; $7c9b: $99
	nop                                              ; $7c9c: $00
	db $10                                           ; $7c9d: $10
	ld [$2a11], sp                                   ; $7c9e: $08 $11 $2a
	ld d, l                                          ; $7ca1: $55
	ld sp, hl                                        ; $7ca2: $f9
	sbc b                                            ; $7ca3: $98
	ret nz                                           ; $7ca4: $c0

	add hl, bc                                       ; $7ca5: $09
	ld [hl+], a                                      ; $7ca6: $22
	ld d, b                                          ; $7ca7: $50
	xor d                                            ; $7ca8: $aa
	ld d, l                                          ; $7ca9: $55
	xor d                                            ; $7caa: $aa
	ld h, e                                          ; $7cab: $63
	ldh a, [$98]                                     ; $7cac: $f0 $98
	xor e                                            ; $7cae: $ab
	ld d, [hl]                                       ; $7caf: $56
	xor h                                            ; $7cb0: $ac
	ld d, l                                          ; $7cb1: $55
	and [hl]                                         ; $7cb2: $a6
	ld c, l                                          ; $7cb3: $4d
	cp d                                             ; $7cb4: $ba
	ld h, e                                          ; $7cb5: $63
	ldh a, [$98]                                     ; $7cb6: $f0 $98
	ld a, [hl+]                                      ; $7cb8: $2a
	ld d, h                                          ; $7cb9: $54
	xor e                                            ; $7cba: $ab
	ld d, h                                          ; $7cbb: $54
	xor c                                            ; $7cbc: $a9
	ld d, l                                          ; $7cbd: $55
	xor c                                            ; $7cbe: $a9
	ld [hl], a                                       ; $7cbf: $77
	ldh a, [$78]                                     ; $7cc0: $f0 $78
	ld b, d                                          ; $7cc2: $42
	rst SubAFromDE                                          ; $7cc3: $df
	inc bc                                           ; $7cc4: $03
	sub a                                            ; $7cc5: $97
	ld d, b                                          ; $7cc6: $50
	and c                                            ; $7cc7: $a1
	ld b, e                                          ; $7cc8: $43
	rst JumpTable                                          ; $7cc9: $c7
	adc a                                            ; $7cca: $8f
	rra                                              ; $7ccb: $1f
	cp a                                             ; $7ccc: $bf
	rst $38                                          ; $7ccd: $ff
	ld e, [hl]                                       ; $7cce: $5e
	adc $d3                                          ; $7ccf: $ce $d3
	rst $38                                          ; $7cd1: $ff
	sub a                                            ; $7cd2: $97
	cp a                                             ; $7cd3: $bf
	ld d, a                                          ; $7cd4: $57
	scf                                              ; $7cd5: $37
	scf                                              ; $7cd6: $37
	dec e                                            ; $7cd7: $1d
	inc e                                            ; $7cd8: $1c
	inc c                                            ; $7cd9: $0c
	inc b                                            ; $7cda: $04
	ld a, d                                          ; $7cdb: $7a
	add $df                                          ; $7cdc: $c6 $df
	rst AddAOntoHL                                          ; $7cde: $ef
	rst SubAFromDE                                          ; $7cdf: $df
	rst FarCall                                          ; $7ce0: $f7
	sub [hl]                                         ; $7ce1: $96
	ei                                               ; $7ce2: $fb
	ret nz                                           ; $7ce3: $c0

	ldh [$c0], a                                     ; $7ce4: $e0 $c0
	db $e4                                           ; $7ce6: $e4

jr_03a_7ce7:
	db $e4                                           ; $7ce7: $e4
	and $fb                                          ; $7ce8: $e6 $fb
	add hl, de                                       ; $7cea: $19
	reti                                             ; $7ceb: $d9


	rst $38                                          ; $7cec: $ff
	ld [hl], d                                       ; $7ced: $72
	or b                                             ; $7cee: $b0
	sbc h                                            ; $7cef: $9c
	ld e, $0f                                        ; $7cf0: $1e $0f
	sub a                                            ; $7cf2: $97
	ld h, [hl]                                       ; $7cf3: $66
	or b                                             ; $7cf4: $b0
	ld a, h                                          ; $7cf5: $7c
	inc a                                            ; $7cf6: $3c
	ld [hl], l                                       ; $7cf7: $75
	add hl, hl                                       ; $7cf8: $29
	ld a, a                                          ; $7cf9: $7f
	and l                                            ; $7cfa: $a5
	reti                                             ; $7cfb: $d9


	rst $38                                          ; $7cfc: $ff
	call c, Call_03a_7fd8                            ; $7cfd: $dc $d8 $7f
	push hl                                          ; $7d00: $e5
	sbc [hl]                                         ; $7d01: $9e
	db $fc                                           ; $7d02: $fc
	reti                                             ; $7d03: $d9


	rst $38                                          ; $7d04: $ff
	rst SubAFromDE                                          ; $7d05: $df
	rra                                              ; $7d06: $1f
	sbc $1d                                          ; $7d07: $de $1d
	sbc h                                            ; $7d09: $9c
	dec a                                            ; $7d0a: $3d
	dec e                                            ; $7d0b: $1d

jr_03a_7d0c:
	dec e                                            ; $7d0c: $1d
	ld d, $c0                                        ; $7d0d: $16 $c0
	ld [hl], e                                       ; $7d0f: $73
	jr c, jr_03a_7d0c                                ; $7d10: $38 $fa

	ld a, [hl]                                       ; $7d12: $7e
	sub c                                            ; $7d13: $91
	rst SubAFromDE                                          ; $7d14: $df
	call $ed9e                                       ; $7d15: $cd $9e $ed
	sbc $ef                                          ; $7d18: $de $ef
	rst SubAFromDE                                          ; $7d1a: $df
	ld l, c                                          ; $7d1b: $69
	db $db                                           ; $7d1c: $db
	ld a, c                                          ; $7d1d: $79
	sbc e                                            ; $7d1e: $9b
	or a                                             ; $7d1f: $b7
	or $f2                                           ; $7d20: $f6 $f2
	or $dd                                           ; $7d22: $f6 $dd
	di                                               ; $7d24: $f3
	sbc [hl]                                         ; $7d25: $9e
	ei                                               ; $7d26: $fb
	db $db                                           ; $7d27: $db
	xor e                                            ; $7d28: $ab
	ld a, h                                          ; $7d29: $7c
	add hl, sp                                       ; $7d2a: $39
	add e                                            ; $7d2b: $83
	ld a, e                                          ; $7d2c: $7b
	ld a, a                                          ; $7d2d: $7f
	di                                               ; $7d2e: $f3
	db $ec                                           ; $7d2f: $ec
	reti                                             ; $7d30: $d9


	ld h, e                                          ; $7d31: $63
	add e                                            ; $7d32: $83
	ld d, a                                          ; $7d33: $57
	ld d, a                                          ; $7d34: $57
	ld e, [hl]                                       ; $7d35: $5e
	db $fc                                           ; $7d36: $fc
	ld [hl], e                                       ; $7d37: $73
	xor $9d                                          ; $7d38: $ee $9d
	ld a, [hl]                                       ; $7d3a: $7e
	ld a, [$ad5d]                                    ; $7d3b: $fa $5d $ad
	ld d, h                                          ; $7d3e: $54
	xor b                                            ; $7d3f: $a8
	ldh [rLCDC], a                                   ; $7d40: $e0 $40
	add b                                            ; $7d42: $80
	db $fc                                           ; $7d43: $fc
	cp $de                                           ; $7d44: $fe $de
	cp b                                             ; $7d46: $b8
	ld [hl], b                                       ; $7d47: $70
	ld a, d                                          ; $7d48: $7a
	adc $7d                                          ; $7d49: $ce $7d
	and h                                            ; $7d4b: $a4
	di                                               ; $7d4c: $f3
	sbc l                                            ; $7d4d: $9d
	ld [hl+], a                                      ; $7d4e: $22
	ld b, b                                          ; $7d4f: $40
	ld [hl], b                                       ; $7d50: $70
	ld l, c                                          ; $7d51: $69
	ld hl, sp-$68                                    ; $7d52: $f8 $98
	xor d                                            ; $7d54: $aa
	dec d                                            ; $7d55: $15
	ld a, [hl+]                                      ; $7d56: $2a
	ld de, $1102                                     ; $7d57: $11 $02 $11
	ld [hl+], a                                      ; $7d5a: $22
	ld h, b                                          ; $7d5b: $60
	ld h, b                                          ; $7d5c: $60
	ld a, d                                          ; $7d5d: $7a
	call nz, $159e                                   ; $7d5e: $c4 $9e $15
	ld d, [hl]                                       ; $7d61: $56
	ret nz                                           ; $7d62: $c0

	sbc d                                            ; $7d63: $9a

jr_03a_7d64:
	sub d                                            ; $7d64: $92
	ld d, l                                          ; $7d65: $55
	xor d                                            ; $7d66: $aa
	ld [hl], l                                       ; $7d67: $75
	jp z, $f05b                                      ; $7d68: $ca $5b $f0

	sub [hl]                                         ; $7d6b: $96
	xor c                                            ; $7d6c: $a9
	ld [hl], c                                       ; $7d6d: $71
	xor c                                            ; $7d6e: $a9
	ld d, c                                          ; $7d6f: $51
	xor e                                            ; $7d70: $ab
	ld d, e                                          ; $7d71: $53
	or e                                             ; $7d72: $b3
	ccf                                              ; $7d73: $3f
	inc bc                                           ; $7d74: $03
	call c, $9e07                                    ; $7d75: $dc $07 $9e
	rra                                              ; $7d78: $1f
	ld l, c                                          ; $7d79: $69
	db $db                                           ; $7d7a: $db
	ld a, [hl+]                                      ; $7d7b: $2a
	jp $ffde                                         ; $7d7c: $c3 $de $ff


	sub a                                            ; $7d7f: $97
	ld a, [$fff2]                                    ; $7d80: $fa $f2 $ff
	db $ed                                           ; $7d83: $ed
	rst $38                                          ; $7d84: $ff
	cp $fb                                           ; $7d85: $fe $fb
	ei                                               ; $7d87: $fb
	ld a, c                                          ; $7d88: $79
	ret                                              ; $7d89: $c9


	rst SubAFromDE                                          ; $7d8a: $df
	cp $77                                           ; $7d8b: $fe $77
	db $10                                           ; $7d8d: $10
	sbc b                                            ; $7d8e: $98
	dec b                                            ; $7d8f: $05
	rst JumpTable                                          ; $7d90: $c7
	ld b, e                                          ; $7d91: $43
	and e                                            ; $7d92: $a3
	cp a                                             ; $7d93: $bf
	rst SubAFromDE                                          ; $7d94: $df
	rst GetHLinHL                                          ; $7d95: $cf
	ld l, e                                          ; $7d96: $6b
	ret z                                            ; $7d97: $c8

	sub [hl]                                         ; $7d98: $96
	ccf                                              ; $7d99: $3f
	rst GetHLinHL                                          ; $7d9a: $cf
	sub a                                            ; $7d9b: $97
	jp z, $0286                                      ; $7d9c: $ca $86 $02

	ld [bc], a                                       ; $7d9f: $02
	add d                                            ; $7da0: $82
	ld [bc], a                                       ; $7da1: $02
	ld h, d                                          ; $7da2: $62
	ldh a, [rIE]                                     ; $7da3: $f0 $ff
	rst SubAFromDE                                          ; $7da5: $df
	ld [bc], a                                       ; $7da6: $02
	ld a, d                                          ; $7da7: $7a
	ld h, l                                          ; $7da8: $65
	reti                                             ; $7da9: $d9


	rst $38                                          ; $7daa: $ff
	sub a                                            ; $7dab: $97
	ld hl, sp+$30                                    ; $7dac: $f8 $30
	ld [hl], b                                       ; $7dae: $70
	ldh a, [$b0]                                     ; $7daf: $f0 $b0
	ld [hl], b                                       ; $7db1: $70
	jr nc, jr_03a_7d64                               ; $7db2: $30 $b0

	reti                                             ; $7db4: $d9


	rst $38                                          ; $7db5: $ff
	sbc [hl]                                         ; $7db6: $9e
	ccf                                              ; $7db7: $3f
	halt                                             ; $7db8: $76
	ret nz                                           ; $7db9: $c0

	rst SubAFromDE                                          ; $7dba: $df
	dec b                                            ; $7dbb: $05
	sbc [hl]                                         ; $7dbc: $9e
	dec c                                            ; $7dbd: $0d
	ld h, e                                          ; $7dbe: $63
	ret nc                                           ; $7dbf: $d0

	sbc [hl]                                         ; $7dc0: $9e
	add c                                            ; $7dc1: $81
	ld [hl], a                                       ; $7dc2: $77
	cp $9d                                           ; $7dc3: $fe $9d
	ld b, c                                          ; $7dc5: $41
	add c                                            ; $7dc6: $81
	ld a, c                                          ; $7dc7: $79
	ld d, a                                          ; $7dc8: $57
	ld a, e                                          ; $7dc9: $7b
	cp $7c                                           ; $7dca: $fe $7c
	inc hl                                           ; $7dcc: $23
	pop af                                           ; $7dcd: $f1
	rst SubAFromDE                                          ; $7dce: $df
	rst AddAOntoHL                                          ; $7dcf: $ef
	rst SubAFromDE                                          ; $7dd0: $df
	db $eb                                           ; $7dd1: $eb
	sbc e                                            ; $7dd2: $9b
	ld hl, sp-$18                                    ; $7dd3: $f8 $e8
	ldh a, [c]                                       ; $7dd5: $f2
	call nz, Call_03a_79dd                           ; $7dd6: $c4 $dd $79
	add a                                            ; $7dd9: $87
	ld l, e                                          ; $7dda: $6b
	ld l, a                                          ; $7ddb: $6f
	ld a, l                                          ; $7ddc: $7d
	ld a, e                                          ; $7ddd: $7b
	ldh [$fa], a                                     ; $7dde: $e0 $fa
	ld a, c                                          ; $7de0: $79
	ld [$9665], a                                    ; $7de1: $ea $65 $96
	ld a, [bc]                                       ; $7de4: $0a
	or h                                             ; $7de5: $b4
	xor a                                            ; $7de6: $af
	cp l                                             ; $7de7: $bd
	halt                                             ; $7de8: $76
	push af                                          ; $7de9: $f5
	sbc e                                            ; $7dea: $9b
	ld l, a                                          ; $7deb: $6f
	db $fc                                           ; $7dec: $fc
	ld a, b                                          ; $7ded: $78
	cp [hl]                                          ; $7dee: $be
	db $f4                                           ; $7def: $f4
	add sp, -$20                                     ; $7df0: $e8 $e0
	halt                                             ; $7df2: $76

Jump_03a_7df3:
	sub h                                            ; $7df3: $94
	sbc l                                            ; $7df4: $9d
	call z, Call_03a_7638                            ; $7df5: $cc $38 $76
	jp nc, $cfe0                                     ; $7df8: $d2 $e0 $cf

	sbc e                                            ; $7dfb: $9b
	ld [bc], a                                       ; $7dfc: $02
	dec b                                            ; $7dfd: $05
	ld [bc], a                                       ; $7dfe: $02
	dec b                                            ; $7dff: $05
	ld [hl], b                                       ; $7e00: $70
	ld e, e                                          ; $7e01: $5b
	ld h, c                                          ; $7e02: $61
	sub b                                            ; $7e03: $90
	ld a, c                                          ; $7e04: $79
	adc [hl]                                         ; $7e05: $8e
	sbc h                                            ; $7e06: $9c
	ld d, h                                          ; $7e07: $54
	xor h                                            ; $7e08: $ac
	ld c, b                                          ; $7e09: $48
	ld [hl], l                                       ; $7e0a: $75
	ei                                               ; $7e0b: $fb
	sub c                                            ; $7e0c: $91
	rlca                                             ; $7e0d: $07
	rrca                                             ; $7e0e: $0f
	rrca                                             ; $7e0f: $0f
	ccf                                              ; $7e10: $3f
	or h                                             ; $7e11: $b4
	ld [$3826], a                                    ; $7e12: $ea $26 $38
	adc c                                            ; $7e15: $89
	rst SubAFromHL                                          ; $7e16: $d7
	dec hl                                           ; $7e17: $2b
	ld e, a                                          ; $7e18: $5f
	ld a, e                                          ; $7e19: $7b
	push af                                          ; $7e1a: $f5
	ld l, l                                          ; $7e1b: $6d
	or c                                             ; $7e1c: $b1
	sbc h                                            ; $7e1d: $9c
	and a                                            ; $7e1e: $a7
	add a                                            ; $7e1f: $87
	xor a                                            ; $7e20: $af
	pop bc                                           ; $7e21: $c1
	rst $38                                          ; $7e22: $ff
	call nc, $dfff                                   ; $7e23: $d4 $ff $df
	db $fd                                           ; $7e26: $fd
	ld a, [hl]                                       ; $7e27: $7e
	ld [hl], $5c                                     ; $7e28: $36 $5c
	ld e, b                                          ; $7e2a: $58
	rst SubAFromDE                                          ; $7e2b: $df
	rst $38                                          ; $7e2c: $ff
	sbc c                                            ; $7e2d: $99
	db $e3                                           ; $7e2e: $e3
	and $f6                                          ; $7e2f: $e6 $f6
	ei                                               ; $7e31: $fb
	ld a, [hl]                                       ; $7e32: $7e
	ld a, [hl]                                       ; $7e33: $7e
	ld a, b                                          ; $7e34: $78
	inc [hl]                                         ; $7e35: $34
	sub b                                            ; $7e36: $90
	sbc a                                            ; $7e37: $9f
	rst SubAFromDE                                          ; $7e38: $df
	rst GetHLinHL                                          ; $7e39: $cf
	rst AddAOntoHL                                          ; $7e3a: $ef
	rst SubAFromBC                                          ; $7e3b: $e7
	rst FarCall                                          ; $7e3c: $f7
	di                                               ; $7e3d: $f3
	add d                                            ; $7e3e: $82
	add d                                            ; $7e3f: $82
	ld [bc], a                                       ; $7e40: $02
	add d                                            ; $7e41: $82
	ld [$5042], sp                                   ; $7e42: $08 $42 $50
	ld de, $ffdb                                     ; $7e45: $11 $db $ff
	rst SubAFromDE                                          ; $7e48: $df
	rst AddAOntoHL                                          ; $7e49: $ef
	ld a, c                                          ; $7e4a: $79
	add c                                            ; $7e4b: $81
	ld [hl], b                                       ; $7e4c: $70
	db $eb                                           ; $7e4d: $eb
	reti                                             ; $7e4e: $d9


	rst $38                                          ; $7e4f: $ff
	call c, $9cf0                                    ; $7e50: $dc $f0 $9c
	ld hl, sp+$78                                    ; $7e53: $f8 $78
	jr nc, @-$25                                     ; $7e55: $30 $d9

	rst $38                                          ; $7e57: $ff
	sbc $0d                                          ; $7e58: $de $0d
	sbc d                                            ; $7e5a: $9a
	rlca                                             ; $7e5b: $07
	inc bc                                           ; $7e5c: $03
	dec c                                            ; $7e5d: $0d
	rrca                                             ; $7e5e: $0f
	rrca                                             ; $7e5f: $0f
	reti                                             ; $7e60: $d9


	rst $38                                          ; $7e61: $ff
	ld a, [hl]                                       ; $7e62: $7e
	add $91                                          ; $7e63: $c6 $91
	ld b, c                                          ; $7e65: $41
	pop bc                                           ; $7e66: $c1
	ld b, e                                          ; $7e67: $43
	pop bc                                           ; $7e68: $c1
	ld b, e                                          ; $7e69: $43
	pop hl                                           ; $7e6a: $e1
	cp a                                             ; $7e6b: $bf
	ld a, a                                          ; $7e6c: $7f
	cp a                                             ; $7e6d: $bf
	ccf                                              ; $7e6e: $3f
	cp l                                             ; $7e6f: $bd
	ccf                                              ; $7e70: $3f
	cp l                                             ; $7e71: $bd
	rra                                              ; $7e72: $1f
	ld [hl], $00                                     ; $7e73: $36 $00
	sub l                                            ; $7e75: $95
	ld [hl], h                                       ; $7e76: $74
	ld b, h                                          ; $7e77: $44
	ld [hl], a                                       ; $7e78: $77
	inc sp                                           ; $7e79: $33
	ld [hl], a                                       ; $7e7a: $77
	inc sp                                           ; $7e7b: $33
	inc [hl]                                         ; $7e7c: $34
	ld d, l                                          ; $7e7d: $55
	ld b, h                                          ; $7e7e: $44
	ld b, l                                          ; $7e7f: $45
	sbc $77                                          ; $7e80: $de $77
	sbc d                                            ; $7e82: $9a
	halt                                             ; $7e83: $76
	ld [hl], e                                       ; $7e84: $73
	inc sp                                           ; $7e85: $33
	inc [hl]                                         ; $7e86: $34
	ld b, l                                          ; $7e87: $45
	ld [hl], e                                       ; $7e88: $73
	or $df                                           ; $7e89: $f6 $df
	inc sp                                           ; $7e8b: $33
	sub a                                            ; $7e8c: $97
	dec [hl]                                         ; $7e8d: $35
	inc [hl]                                         ; $7e8e: $34
	ld b, h                                          ; $7e8f: $44
	inc sp                                           ; $7e90: $33
	dec [hl]                                         ; $7e91: $35
	ld [hl], a                                       ; $7e92: $77
	ld [hl], a                                       ; $7e93: $77
	ld [hl], e                                       ; $7e94: $73

Jump_03a_7e95:
	sbc $33                                          ; $7e95: $de $33
	ld [hl], a                                       ; $7e97: $77
	or $9c                                           ; $7e98: $f6 $9c
	ld [hl], h                                       ; $7e9a: $74
	ld b, e                                          ; $7e9b: $43
	ld b, e                                          ; $7e9c: $43
	db $dd                                           ; $7e9d: $dd
	inc sp                                           ; $7e9e: $33
	ld [hl], a                                       ; $7e9f: $77
	or $7f                                           ; $7ea0: $f6 $7f
	db $fc                                           ; $7ea2: $fc
	sbc [hl]                                         ; $7ea3: $9e
	ld d, e                                          ; $7ea4: $53
	ld [hl], a                                       ; $7ea5: $77
	db $eb                                           ; $7ea6: $eb
	ld a, a                                          ; $7ea7: $7f
	or $93                                           ; $7ea8: $f6 $93
	add d                                            ; $7eaa: $82
	ld sp, hl                                        ; $7eab: $f9
	reti                                             ; $7eac: $d9


	rst $38                                          ; $7ead: $ff
	sbc [hl]                                         ; $7eae: $9e
	ld bc, $f04b                                     ; $7eaf: $01 $4b $f0
	sub a                                            ; $7eb2: $97
	ld e, h                                          ; $7eb3: $5c
	cp $5d                                           ; $7eb4: $fe $5d
	halt                                             ; $7eb6: $76
	ld e, b                                          ; $7eb7: $58
	ld a, [hl-]                                      ; $7eb8: $3a
	ld d, h                                          ; $7eb9: $54
	ld a, [de]                                       ; $7eba: $1a
	reti                                             ; $7ebb: $d9


	rst $38                                          ; $7ebc: $ff
	add d                                            ; $7ebd: $82
	dec b                                            ; $7ebe: $05
	ld a, [bc]                                       ; $7ebf: $0a
	dec d                                            ; $7ec0: $15
	dec bc                                           ; $7ec1: $0b
	ld d, $0d                                        ; $7ec2: $16 $0d
	ld d, $2d                                        ; $7ec4: $16 $2d
	ld a, [$eaf5]                                    ; $7ec6: $fa $f5 $ea
	db $f4                                           ; $7ec9: $f4
	add sp, -$10                                     ; $7eca: $e8 $f0
	add sp, -$30                                     ; $7ecc: $e8 $d0
	ld d, h                                          ; $7ece: $54
	xor d                                            ; $7ecf: $aa
	ld d, l                                          ; $7ed0: $55
	ld a, [$77ed]                                    ; $7ed1: $fa $ed $77
	xor [hl]                                         ; $7ed4: $ae
	ld d, a                                          ; $7ed5: $57
	xor e                                            ; $7ed6: $ab
	ld d, l                                          ; $7ed7: $55
	xor d                                            ; $7ed8: $aa
	dec b                                            ; $7ed9: $05
	ld [bc], a                                       ; $7eda: $02
	cp $97                                           ; $7edb: $fe $97
	dec d                                            ; $7edd: $15
	ld a, [bc]                                       ; $7ede: $0a
	dec b                                            ; $7edf: $05
	add b                                            ; $7ee0: $80
	nop                                              ; $7ee1: $00
	add b                                            ; $7ee2: $80
	ld b, b                                          ; $7ee3: $40
	and b                                            ; $7ee4: $a0
	sbc $ff                                          ; $7ee5: $de $ff
	sub e                                            ; $7ee7: $93
	ld a, a                                          ; $7ee8: $7f
	rst $38                                          ; $7ee9: $ff
	ld a, a                                          ; $7eea: $7f
	cp a                                             ; $7eeb: $bf
	ld e, a                                          ; $7eec: $5f
	ei                                               ; $7eed: $fb
	or l                                             ; $7eee: $b5
	ld l, d                                          ; $7eef: $6a
	dec d                                            ; $7ef0: $15
	ld a, [hl+]                                      ; $7ef1: $2a
	dec d                                            ; $7ef2: $15
	ld [$b063], sp                                   ; $7ef3: $08 $63 $b0
	sub a                                            ; $7ef6: $97
	rst $38                                          ; $7ef7: $ff
	rst SubAFromDE                                          ; $7ef8: $df
	xor a                                            ; $7ef9: $af
	ld d, a                                          ; $7efa: $57
	xor a                                            ; $7efb: $af
	ld e, a                                          ; $7efc: $5f
	xor a                                            ; $7efd: $af
	ld d, a                                          ; $7efe: $57
	pop bc                                           ; $7eff: $c1
	rst $38                                          ; $7f00: $ff
	reti                                             ; $7f01: $d9


	rst $38                                          ; $7f02: $ff
	sbc h                                            ; $7f03: $9c
	or c                                             ; $7f04: $b1
	cp c                                             ; $7f05: $b9
	cp c                                             ; $7f06: $b9
	call c, $9cf9                                    ; $7f07: $dc $f9 $9c
	call z, $c4c4                                    ; $7f0a: $cc $c4 $c4

jr_03a_7f0d:
	call c, $8afc                                    ; $7f0d: $dc $fc $8a
	xor a                                            ; $7f10: $af
	xor b                                            ; $7f11: $a8
	and b                                            ; $7f12: $a0
	xor d                                            ; $7f13: $aa
	or l                                             ; $7f14: $b5
	and b                                            ; $7f15: $a0
	or h                                             ; $7f16: $b4
	xor d                                            ; $7f17: $aa
	ret nc                                           ; $7f18: $d0

	ret nc                                           ; $7f19: $d0

	rst SubAFromDE                                          ; $7f1a: $df
	push de                                          ; $7f1b: $d5
	jp z, $cbdf                                      ; $7f1c: $ca $df $cb

	push de                                          ; $7f1f: $d5
	ldh a, [rP1]                                     ; $7f20: $f0 $00
	nop                                              ; $7f22: $00
	xor b                                            ; $7f23: $a8
	ld d, b                                          ; $7f24: $50
	cp $df                                           ; $7f25: $fe $df

Jump_03a_7f27:
	rlca                                             ; $7f27: $07
	sbc h                                            ; $7f28: $9c
	rst $38                                          ; $7f29: $ff
	ld d, a                                          ; $7f2a: $57
	xor a                                            ; $7f2b: $af
	sbc $ff                                          ; $7f2c: $de $ff
	ld b, a                                          ; $7f2e: $47
	jr nc, jr_03a_7f0d                               ; $7f2f: $30 $dc

	ld b, $9c                                        ; $7f31: $06 $9c
	rrca                                             ; $7f33: $0f
	jr c, jr_03a_7f96                                ; $7f34: $38 $60

	call c, $dffc                                    ; $7f36: $dc $fc $df
	rst $38                                          ; $7f39: $ff
	sbc h                                            ; $7f3a: $9c
	pop af                                           ; $7f3b: $f1
	jr jr_03a_7f5a                                   ; $7f3c: $18 $1c

	ld a, e                                          ; $7f3e: $7b
	cp $9a                                           ; $7f3f: $fe $9a
	ld hl, sp+$0c                                    ; $7f41: $f8 $0c
	ld a, [hl-]                                      ; $7f43: $3a
	ld h, a                                          ; $7f44: $67
	ld h, e                                          ; $7f45: $63
	ld a, e                                          ; $7f46: $7b
	cp $97                                           ; $7f47: $fe $97
	rst FarCall                                          ; $7f49: $f7
	rst $38                                          ; $7f4a: $ff
	add a                                            ; $7f4b: $87
	rla                                              ; $7f4c: $17
	rra                                              ; $7f4d: $1f
	rra                                              ; $7f4e: $1f
	db $10                                           ; $7f4f: $10
	db $10                                           ; $7f50: $10
	ld a, e                                          ; $7f51: $7b
	ei                                               ; $7f52: $fb
	sbc h                                            ; $7f53: $9c
	ld hl, sp-$09                                    ; $7f54: $f8 $f7
	cp $de                                           ; $7f56: $fe $de
	ldh [$8e], a                                     ; $7f58: $e0 $8e

jr_03a_7f5a:
	rst AddAOntoHL                                          ; $7f5a: $ef
	add sp, -$01                                     ; $7f5b: $e8 $ff
	ld hl, sp+$00                                    ; $7f5d: $f8 $00
	nop                                              ; $7f5f: $00
	ld a, $ff                                        ; $7f60: $3e $ff
	rst $38                                          ; $7f62: $ff
	ret nz                                           ; $7f63: $c0

	ld a, a                                          ; $7f64: $7f
	ldh [rP1], a                                     ; $7f65: $e0 $00
	nop                                              ; $7f67: $00
	ld bc, $80ff                                     ; $7f68: $01 $ff $80
	db $fd                                           ; $7f6b: $fd
	sbc h                                            ; $7f6c: $9c
	inc e                                            ; $7f6d: $1c
	ld a, l                                          ; $7f6e: $7d
	db $fc                                           ; $7f6f: $fc
	ld a, e                                          ; $7f70: $7b
	dec l                                            ; $7f71: $2d
	rst $38                                          ; $7f72: $ff
	sbc l                                            ; $7f73: $9d
	inc bc                                           ; $7f74: $03
	cp $fc                                           ; $7f75: $fe $fc
	sbc l                                            ; $7f77: $9d
	ld [hl], c                                       ; $7f78: $71
	rst $38                                          ; $7f79: $ff
	ld a, e                                          ; $7f7a: $7b
	adc h                                            ; $7f7b: $8c
	cp $9e                                           ; $7f7c: $fe $9e
	rrca                                             ; $7f7e: $0f
	ld a, e                                          ; $7f7f: $7b
	sub $fc                                          ; $7f80: $d6 $fc
	sbc d                                            ; $7f82: $9a
	jr nz, @-$2e                                     ; $7f83: $20 $d0

	add sp, -$2c                                     ; $7f85: $e8 $d4
	jp z, $ffd9                                      ; $7f87: $ca $d9 $ff

	db $fd                                           ; $7f8a: $fd
	ld a, d                                          ; $7f8b: $7a
	cp h                                             ; $7f8c: $bc
	ld a, a                                          ; $7f8d: $7f
	push bc                                          ; $7f8e: $c5
	jp c, $97ff                                      ; $7f8f: $da $ff $97

	ld [hl], h                                       ; $7f92: $74
	cp d                                             ; $7f93: $ba
	ld [hl], h                                       ; $7f94: $74
	xor d                                            ; $7f95: $aa

jr_03a_7f96:
	ld d, h                                          ; $7f96: $54
	ld l, d                                          ; $7f97: $6a
	dec [hl]                                         ; $7f98: $35
	ld a, [hl]                                       ; $7f99: $7e
	reti                                             ; $7f9a: $d9


	rst $38                                          ; $7f9b: $ff
	sub [hl]                                         ; $7f9c: $96
	ld d, $2f                                        ; $7f9d: $16 $2f
	ld [de], a                                       ; $7f9f: $12
	dec hl                                           ; $7fa0: $2b
	dec d                                            ; $7fa1: $15
	ld a, [bc]                                       ; $7fa2: $0a
	dec d                                            ; $7fa3: $15
	nop                                              ; $7fa4: $00
	add sp, $7b                                      ; $7fa5: $e8 $7b
	res 2, e                                         ; $7fa7: $cb $93
	ld [$eaf5], a                                    ; $7fa9: $ea $f5 $ea
	rst $38                                          ; $7fac: $ff
	xor d                                            ; $7fad: $aa
	ld d, l                                          ; $7fae: $55
	xor d                                            ; $7faf: $aa
	ld d, a                                          ; $7fb0: $57
	db $ed                                           ; $7fb1: $ed
	ld a, [$aa55]                                    ; $7fb2: $fa $55 $aa
	db $fd                                           ; $7fb5: $fd
	adc h                                            ; $7fb6: $8c
	ld [bc], a                                       ; $7fb7: $02
	dec b                                            ; $7fb8: $05
	xor d                                            ; $7fb9: $aa
	ld d, l                                          ; $7fba: $55
	call nc, $d5aa                                   ; $7fbb: $d4 $aa $d5
	xor d                                            ; $7fbe: $aa
	ld d, l                                          ; $7fbf: $55
	and b                                            ; $7fc0: $a0
	ld b, d                                          ; $7fc1: $42
	dec b                                            ; $7fc2: $05
	dec hl                                           ; $7fc3: $2b
	ld d, l                                          ; $7fc4: $55
	ld a, [hl+]                                      ; $7fc5: $2a
	ld d, l                                          ; $7fc6: $55
	xor d                                            ; $7fc7: $aa
	ld e, a                                          ; $7fc8: $5f
	cp a                                             ; $7fc9: $bf
	ld [hl], a                                       ; $7fca: $77
	or b                                             ; $7fcb: $b0
	sbc d                                            ; $7fcc: $9a
	add c                                            ; $7fcd: $81
	ld b, b                                          ; $7fce: $40
	ld [bc], a                                       ; $7fcf: $02
	sub l                                            ; $7fd0: $95
	ld c, d                                          ; $7fd1: $4a
	halt                                             ; $7fd2: $76
	or b                                             ; $7fd3: $b0
	ld a, a                                          ; $7fd4: $7f
	ldh a, [c]                                       ; $7fd5: $f2
	rst SubAFromDE                                          ; $7fd6: $df
	rst $38                                          ; $7fd7: $ff

Call_03a_7fd8:
	ld a, [hl]                                       ; $7fd8: $7e
	sbc b                                            ; $7fd9: $98
	sbc c                                            ; $7fda: $99
	dec hl                                           ; $7fdb: $2b
	rla                                              ; $7fdc: $17
	daa                                              ; $7fdd: $27
	adc e                                            ; $7fde: $8b
	ld d, l                                          ; $7fdf: $55

Call_03a_7fe0:
	xor d                                            ; $7fe0: $aa
	ld [bc], a                                       ; $7fe1: $02
	rst JumpTable                                          ; $7fe2: $c7
	jp c, $dcff                                      ; $7fe3: $da $ff $dc

	ld sp, hl                                        ; $7fe6: $f9
	sbc h                                            ; $7fe7: $9c
	pop bc                                           ; $7fe8: $c1
	sub c                                            ; $7fe9: $91
	or c                                             ; $7fea: $b1
	db $db                                           ; $7feb: $db
	db $fc                                           ; $7fec: $fc
	sbc e                                            ; $7fed: $9b
	db $ec                                           ; $7fee: $ec
	call z, $aab5                                    ; $7fef: $cc $b5 $aa
	ld [hl], a                                       ; $7ff2: $77
	cp $9b                                           ; $7ff3: $fe $9b
	cp a                                             ; $7ff5: $bf
	xor a                                            ; $7ff6: $af
	jp z, Jump_03a_77d5                              ; $7ff7: $ca $d5 $77

	cp $9d                                           ; $7ffa: $fe $9d
	ret nz                                           ; $7ffc: $c0

	ret nc                                           ; $7ffd: $d0

	cp $52                                           ; $7ffe: $fe $52
