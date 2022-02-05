; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $02a", ROMX[$4000], BANK[$2a]

	ccf                                              ; $4000: $3f
	dec b                                            ; $4001: $05
	pop bc                                           ; $4002: $c1
	rst $38                                          ; $4003: $ff
	inc bc                                           ; $4004: $03
	rst $38                                          ; $4005: $ff
	ret c                                            ; $4006: $d8

	rst $38                                          ; $4007: $ff
	sbc c                                            ; $4008: $99
	sbc a                                            ; $4009: $9f
	rst $38                                          ; $400a: $ff
	rra                                              ; $400b: $1f
	cp a                                             ; $400c: $bf
	rra                                              ; $400d: $1f
	cp a                                             ; $400e: $bf
	rst JumpTable                                          ; $400f: $c7
	rst $38                                          ; $4010: $ff
	sbc c                                            ; $4011: $99
	db $e3                                           ; $4012: $e3
	rst $38                                          ; $4013: $ff
	jp $c3e7                                         ; $4014: $c3 $e7 $c3


	rst SubAFromBC                                          ; $4017: $e7
	push de                                          ; $4018: $d5
	rst $38                                          ; $4019: $ff
	sbc h                                            ; $401a: $9c
	ldh [c], a                                       ; $401b: $e2
	rst $38                                          ; $401c: $ff
	jp nz, $f05b                                     ; $401d: $c2 $5b $f0

	sbc c                                            ; $4020: $99
	rra                                              ; $4021: $1f
	rst $38                                          ; $4022: $ff
	rra                                              ; $4023: $1f
	ccf                                              ; $4024: $3f
	rra                                              ; $4025: $1f
	ccf                                              ; $4026: $3f
	rst SubAFromHL                                          ; $4027: $d7
	rst $38                                          ; $4028: $ff
	sbc c                                            ; $4029: $99
	ld hl, sp-$01                                    ; $402a: $f8 $ff
	ldh a, [$f9]                                     ; $402c: $f0 $f9
	ldh a, [$f9]                                     ; $402e: $f0 $f9
	inc bc                                           ; $4030: $03
	adc c                                            ; $4031: $89
	inc bc                                           ; $4032: $03
	rst $38                                          ; $4033: $ff
	inc bc                                           ; $4034: $03
	rst $38                                          ; $4035: $ff
	inc bc                                           ; $4036: $03
	rst $38                                          ; $4037: $ff
	inc bc                                           ; $4038: $03
	rst $38                                          ; $4039: $ff
	inc bc                                           ; $403a: $03
	rst $38                                          ; $403b: $ff
	rst GetHLinHL                                          ; $403c: $cf
	rst $38                                          ; $403d: $ff
	adc d                                            ; $403e: $8a
	cp $ff                                           ; $403f: $fe $ff
	db $fc                                           ; $4041: $fc
	cp $f8                                           ; $4042: $fe $f8
	db $fc                                           ; $4044: $fc
	ldh a, [$f9]                                     ; $4045: $f0 $f9
	inc e                                            ; $4047: $1c
	cp a                                             ; $4048: $bf
	db $10                                           ; $4049: $10
	cp h                                             ; $404a: $bc
	nop                                              ; $404b: $00
	or c                                             ; $404c: $b1
	ld bc, $0787                                     ; $404d: $01 $87 $07
	rra                                              ; $4050: $1f
	rra                                              ; $4051: $1f
	ld a, a                                          ; $4052: $7f
	ld a, a                                          ; $4053: $7f
	sbc $ff                                          ; $4054: $de $ff
	sub l                                            ; $4056: $95
	db $fc                                           ; $4057: $fc
	rst $38                                          ; $4058: $ff
	ld h, b                                          ; $4059: $60
	cp $60                                           ; $405a: $fe $60
	ldh a, [$f0]                                     ; $405c: $f0 $f0
	rst $38                                          ; $405e: $ff
	add b                                            ; $405f: $80
	cp $bf                                           ; $4060: $fe $bf
	add b                                            ; $4062: $80
	db $fc                                           ; $4063: $fc
	add a                                            ; $4064: $87
	ret nz                                           ; $4065: $c0

	ldh [rSB], a                                     ; $4066: $e0 $01
	rst GetHLinHL                                          ; $4068: $cf
	ld bc, $0303                                     ; $4069: $01 $03 $03
	rra                                              ; $406c: $1f
	ld c, $3f                                        ; $406d: $0e $3f
	inc b                                            ; $406f: $04
	rrca                                             ; $4070: $0f
	ld [$307e], sp                                   ; $4071: $08 $7e $30
	ld a, h                                          ; $4074: $7c
	ld h, b                                          ; $4075: $60
	ld sp, hl                                        ; $4076: $f9
	ret nz                                           ; $4077: $c0

	and $80                                          ; $4078: $e6 $80
	and $80                                          ; $407a: $e6 $80
	call z, $80bd                                    ; $407c: $cc $bd $80
	jr jr_02a_40b3                                   ; $407f: $18 $32

	ld h, $8b                                        ; $4081: $26 $8b
	inc b                                            ; $4083: $04
	ld c, [hl]                                       ; $4084: $4e
	rra                                              ; $4085: $1f
	ld a, a                                          ; $4086: $7f

jr_02a_4087:
	jr c, jr_02a_4108                                ; $4087: $38 $7f

	jr c, jr_02a_4087                                ; $4089: $38 $fc

	ld a, h                                          ; $408b: $7c
	rst $38                                          ; $408c: $ff
	jr nc, jr_02a_410e                               ; $408d: $30 $7f

	jr nz, @+$72                                     ; $408f: $20 $70

	jr nz, jr_02a_4112                               ; $4091: $20 $7f

	jr nc, jr_02a_410d                               ; $4093: $30 $78

Jump_02a_4095:
	add b                                            ; $4095: $80
	di                                               ; $4096: $f3
	cp a                                             ; $4097: $bf
	add b                                            ; $4098: $80
	rlca                                             ; $4099: $07
	sub e                                            ; $409a: $93
	inc bc                                           ; $409b: $03
	rst GetHLinHL                                          ; $409c: $cf
	ld bc, $0383                                     ; $409d: $01 $83 $03
	rra                                              ; $40a0: $1f
	rrca                                             ; $40a1: $0f
	sbc a                                            ; $40a2: $9f
	rrca                                             ; $40a3: $0f
	ccf                                              ; $40a4: $3f
	ld a, a                                          ; $40a5: $7f
	rst $38                                          ; $40a6: $ff
	ld [hl], a                                       ; $40a7: $77
	xor d                                            ; $40a8: $aa
	inc bc                                           ; $40a9: $03
	rst $38                                          ; $40aa: $ff
	inc bc                                           ; $40ab: $03
	rst $38                                          ; $40ac: $ff
	inc bc                                           ; $40ad: $03
	rst $38                                          ; $40ae: $ff
	inc bc                                           ; $40af: $03
	rst $38                                          ; $40b0: $ff
	inc bc                                           ; $40b1: $03
	rst $38                                          ; $40b2: $ff

jr_02a_40b3:
	inc bc                                           ; $40b3: $03
	rst $38                                          ; $40b4: $ff
	halt                                             ; $40b5: $76
	ret                                              ; $40b6: $c9


	sbc e                                            ; $40b7: $9b
	pop hl                                           ; $40b8: $e1
	di                                               ; $40b9: $f3
	db $e3                                           ; $40ba: $e3
	rst FarCall                                          ; $40bb: $f7
	ld [hl], l                                       ; $40bc: $75
	cp b                                             ; $40bd: $b8
	sbc c                                            ; $40be: $99
	ret nz                                           ; $40bf: $c0

	db $e3                                           ; $40c0: $e3
	ldh [$f0], a                                     ; $40c1: $e0 $f0
	ldh a, [hDisp1_LCDC]                                     ; $40c3: $f0 $8f
	ld [hl], a                                       ; $40c5: $77
	inc hl                                           ; $40c6: $23
	ld a, l                                          ; $40c7: $7d
	cp l                                             ; $40c8: $bd
	sbc b                                            ; $40c9: $98
	jp nz, $02e5                                     ; $40ca: $c2 $e5 $02

	push bc                                          ; $40cd: $c5
	ld [bc], a                                       ; $40ce: $02
	dec e                                            ; $40cf: $1d
	ld e, $72                                        ; $40d0: $1e $72
	ret nz                                           ; $40d2: $c0

	ld a, [hl]                                       ; $40d3: $7e
	db $e4                                           ; $40d4: $e4
	sub h                                            ; $40d5: $94
	ld [$1397], sp                                   ; $40d6: $08 $97 $13
	inc l                                            ; $40d9: $2c
	ld bc, $0132                                     ; $40da: $01 $32 $01
	rlca                                             ; $40dd: $07
	inc bc                                           ; $40de: $03
	adc a                                            ; $40df: $8f
	rrca                                             ; $40e0: $0f
	halt                                             ; $40e1: $76
	or d                                             ; $40e2: $b2
	sub l                                            ; $40e3: $95
	ldh a, [c]                                       ; $40e4: $f2
	ret nz                                           ; $40e5: $c0

	ld h, $c0                                        ; $40e6: $26 $c0
	inc h                                            ; $40e8: $24
	ret nz                                           ; $40e9: $c0

	jr nz, @-$1e                                     ; $40ea: $20 $e0

	di                                               ; $40ec: $f3
	di                                               ; $40ed: $f3
	sbc $ff                                          ; $40ee: $de $ff
	ld a, l                                          ; $40f0: $7d
	and c                                            ; $40f1: $a1
	sub d                                            ; $40f2: $92
	ld [$181c], sp                                   ; $40f3: $08 $1c $18
	inc h                                            ; $40f6: $24
	jr nc, jr_02a_4142                               ; $40f7: $30 $49

	ld h, b                                          ; $40f9: $60
	sub e                                            ; $40fa: $93
	add c                                            ; $40fb: $81
	rst SubAFromBC                                          ; $40fc: $e7
	add e                                            ; $40fd: $83
	rst GetHLinHL                                          ; $40fe: $cf
	rst GetHLinHL                                          ; $40ff: $cf
	sbc $ff                                          ; $4100: $de $ff
	sub d                                            ; $4102: $92
	ld h, b                                          ; $4103: $60
	di                                               ; $4104: $f3
	ld b, e                                          ; $4105: $43
	and a                                            ; $4106: $a7
	add h                                            ; $4107: $84

jr_02a_4108:
	ld c, e                                          ; $4108: $4b
	add b                                            ; $4109: $80
	ld c, h                                          ; $410a: $4c
	add b                                            ; $410b: $80
	pop bc                                           ; $410c: $c1

jr_02a_410d:
	add b                                            ; $410d: $80

jr_02a_410e:
	db $e3                                           ; $410e: $e3
	jp Jump_02a_7a75                                 ; $410f: $c3 $75 $7a


jr_02a_4112:
	rst SubAFromDE                                          ; $4112: $df
	ccf                                              ; $4113: $3f
	rst SubAFromDE                                          ; $4114: $df
	rst $38                                          ; $4115: $ff
	sub l                                            ; $4116: $95
	inc bc                                           ; $4117: $03
	ld a, a                                          ; $4118: $7f
	add b                                            ; $4119: $80
	ld a, a                                          ; $411a: $7f
	add b                                            ; $411b: $80
	rst $38                                          ; $411c: $ff
	ldh [rIE], a                                     ; $411d: $e0 $ff
	rst $38                                          ; $411f: $ff
	pop hl                                           ; $4120: $e1
	reti                                             ; $4121: $d9


	rst $38                                          ; $4122: $ff
	sbc l                                            ; $4123: $9d
	inc bc                                           ; $4124: $03
	rst $38                                          ; $4125: $ff
	cp [hl]                                          ; $4126: $be
	rst $38                                          ; $4127: $ff
	rst $38                                          ; $4128: $ff
	cp $d7                                           ; $4129: $fe $d7
	rst $38                                          ; $412b: $ff
	cp [hl]                                          ; $412c: $be
	rst $38                                          ; $412d: $ff
	rst $38                                          ; $412e: $ff
	rra                                              ; $412f: $1f
	ld a, e                                          ; $4130: $7b
	call c, Call_02a_4161                            ; $4131: $dc $61 $41
	cp [hl]                                          ; $4134: $be
	rst $38                                          ; $4135: $ff
	rst $38                                          ; $4136: $ff
	rst $38                                          ; $4137: $ff
	reti                                             ; $4138: $d9


	rst $38                                          ; $4139: $ff
	sbc [hl]                                         ; $413a: $9e
	ret nz                                           ; $413b: $c0

	ld d, e                                          ; $413c: $53
	ldh a, [$7f]                                     ; $413d: $f0 $7f
	ld [hl], a                                       ; $413f: $77
	cp a                                             ; $4140: $bf
	rst $38                                          ; $4141: $ff

jr_02a_4142:
	rst $38                                          ; $4142: $ff
	sbc l                                            ; $4143: $9d
	ld bc, $6e86                                     ; $4144: $01 $86 $6e
	ld [hl], e                                       ; $4147: $73
	ld [hl], a                                       ; $4148: $77
	ldh a, [c]                                       ; $4149: $f2
	ld a, a                                          ; $414a: $7f
	xor [hl]                                         ; $414b: $ae
	ld a, e                                          ; $414c: $7b
	sub a                                            ; $414d: $97
	ld a, a                                          ; $414e: $7f
	bit 6, b                                         ; $414f: $cb $70
	rst SubAFromBC                                          ; $4151: $e7
	ld [hl], e                                       ; $4152: $73
	ld sp, hl                                        ; $4153: $f9
	inc bc                                           ; $4154: $03
	rst $38                                          ; $4155: $ff
	inc bc                                           ; $4156: $03
	rst $38                                          ; $4157: $ff

jr_02a_4158:
	inc bc                                           ; $4158: $03
	rst $38                                          ; $4159: $ff
	jp z, $8cff                                      ; $415a: $ca $ff $8c

	add a                                            ; $415d: $87
	rst $38                                          ; $415e: $ff
	inc sp                                           ; $415f: $33
	rst GetHLinHL                                          ; $4160: $cf

Call_02a_4161:
	ld a, c                                          ; $4161: $79
	add a                                            ; $4162: $87
	inc a                                            ; $4163: $3c
	jp $e19e                                         ; $4164: $c3 $9e $e1


	rst GetHLinHL                                          ; $4167: $cf
	ldh a, [$f9]                                     ; $4168: $f0 $f9
	cp $f9                                           ; $416a: $fe $f9
	cp $fb                                           ; $416c: $fe $fb
	db $fc                                           ; $416e: $fc
	di                                               ; $416f: $f3
	ld a, e                                          ; $4170: $7b
	cp $89                                           ; $4171: $fe $89
	rst FarCall                                          ; $4173: $f7
	ld hl, sp+$66                                    ; $4174: $f8 $66
	ld sp, hl                                        ; $4176: $f9
	ld h, $f9                                        ; $4177: $26 $f9
	sbc b                                            ; $4179: $98
	ld a, a                                          ; $417a: $7f
	sub a                                            ; $417b: $97
	ld a, b                                          ; $417c: $78
	sub a                                            ; $417d: $97
	ld a, b                                          ; $417e: $78
	jr nc, @+$01                                     ; $417f: $30 $ff

	inc a                                            ; $4181: $3c
	rst $38                                          ; $4182: $ff
	ld a, l                                          ; $4183: $7d
	cp $61                                           ; $4184: $fe $61
	cp $df                                           ; $4186: $fe $df
	ldh [$7b], a                                     ; $4188: $e0 $7b
	cpl                                              ; $418a: $2f
	cp a                                             ; $418b: $bf
	rst $38                                          ; $418c: $ff
	ldh [hDisp1_LCDC], a                                     ; $418d: $e0 $8f
	rra                                              ; $418f: $1f
	rst AddAOntoHL                                          ; $4190: $ef
	rra                                              ; $4191: $1f
	rst GetHLinHL                                          ; $4192: $cf
	ccf                                              ; $4193: $3f
	ret nz                                           ; $4194: $c0

	ccf                                              ; $4195: $3f
	rst $38                                          ; $4196: $ff
	nop                                              ; $4197: $00
	inc bc                                           ; $4198: $03
	rst $38                                          ; $4199: $ff
	db $fd                                           ; $419a: $fd
	inc bc                                           ; $419b: $03
	db $fd                                           ; $419c: $fd
	inc bc                                           ; $419d: $03
	ld bc, $ffdc                                     ; $419e: $01 $dc $ff
	adc c                                            ; $41a1: $89
	rlca                                             ; $41a2: $07
	rst $38                                          ; $41a3: $ff
	ldh a, [c]                                       ; $41a4: $f2
	rrca                                             ; $41a5: $0f
	db $dd                                           ; $41a6: $dd
	db $e3                                           ; $41a7: $e3
	db $dd                                           ; $41a8: $dd
	db $e3                                           ; $41a9: $e3
	sbc c                                            ; $41aa: $99
	rst SubAFromBC                                          ; $41ab: $e7
	cp e                                             ; $41ac: $bb
	rst JumpTable                                          ; $41ad: $c7
	cp e                                             ; $41ae: $bb
	rst JumpTable                                          ; $41af: $c7
	inc sp                                           ; $41b0: $33
	rst GetHLinHL                                          ; $41b1: $cf
	ld [hl], e                                       ; $41b2: $73
	adc a                                            ; $41b3: $8f
	ld [hl], a                                       ; $41b4: $77
	adc a                                            ; $41b5: $8f
	db $fd                                           ; $41b6: $fd
	cp $77                                           ; $41b7: $fe $77
	cp $77                                           ; $41b9: $fe $77
	xor h                                            ; $41bb: $ac
	ld [hl], a                                       ; $41bc: $77
	xor d                                            ; $41bd: $aa
	ld a, a                                          ; $41be: $7f
	xor h                                            ; $41bf: $ac
	sub d                                            ; $41c0: $92
	ret c                                            ; $41c1: $d8

	ccf                                              ; $41c2: $3f
	db $d3                                           ; $41c3: $d3
	inc a                                            ; $41c4: $3c
	rst SubAFromHL                                          ; $41c5: $d7
	jr c, jr_02a_4158                                ; $41c6: $38 $90

	ld a, a                                          ; $41c8: $7f
	cp b                                             ; $41c9: $b8
	ld a, a                                          ; $41ca: $7f
	cp a                                             ; $41cb: $bf
	ld a, a                                          ; $41cc: $7f
	ccf                                              ; $41cd: $3f
	ld a, d                                          ; $41ce: $7a
	ld b, c                                          ; $41cf: $41
	ld l, a                                          ; $41d0: $6f
	or b                                             ; $41d1: $b0
	cp a                                             ; $41d2: $bf
	rst $38                                          ; $41d3: $ff
	rst $38                                          ; $41d4: $ff
	ld a, [hl]                                       ; $41d5: $7e
	add d                                            ; $41d6: $82
	add b                                            ; $41d7: $80
	jp c, $d8e7                                      ; $41d8: $da $e7 $d8

	rst SubAFromBC                                          ; $41db: $e7
	inc bc                                           ; $41dc: $03
	rst $38                                          ; $41dd: $ff
	pop af                                           ; $41de: $f1
	rrca                                             ; $41df: $0f
	ld sp, hl                                        ; $41e0: $f9
	rlca                                             ; $41e1: $07
	add hl, sp                                       ; $41e2: $39
	rst JumpTable                                          ; $41e3: $c7
	dec sp                                           ; $41e4: $3b
	rst JumpTable                                          ; $41e5: $c7
	ld [hl], d                                       ; $41e6: $72
	adc a                                            ; $41e7: $8f
	halt                                             ; $41e8: $76
	adc a                                            ; $41e9: $8f
	and $1f                                          ; $41ea: $e6 $1f
	ld [hl], $cf                                     ; $41ec: $36 $cf
	ld [hl], $cf                                     ; $41ee: $36 $cf
	inc [hl]                                         ; $41f0: $34
	rst GetHLinHL                                          ; $41f1: $cf
	ld [hl], l                                       ; $41f2: $75
	adc [hl]                                         ; $41f3: $8e
	ld h, l                                          ; $41f4: $65
	sbc [hl]                                         ; $41f5: $9e
	ld l, c                                          ; $41f6: $69
	sbc c                                            ; $41f7: $99
	sbc [hl]                                         ; $41f8: $9e
	jp hl                                            ; $41f9: $e9


	ld e, $cb                                        ; $41fa: $1e $cb
	inc a                                            ; $41fc: $3c
	rst AddAOntoHL                                          ; $41fd: $ef
	ld [hl], e                                       ; $41fe: $73
	add [hl]                                         ; $41ff: $86
	ld a, a                                          ; $4200: $7f
	cp $9c                                           ; $4201: $fe $9c
	rst SubAFromDE                                          ; $4203: $df
	ccf                                              ; $4204: $3f
	sbc a                                            ; $4205: $9f
	ld a, e                                          ; $4206: $7b
	cp h                                             ; $4207: $bc
	sbc l                                            ; $4208: $9d
	cp e                                             ; $4209: $bb
	ld a, h                                          ; $420a: $7c
	push de                                          ; $420b: $d5
	rst $38                                          ; $420c: $ff
	ld a, a                                          ; $420d: $7f
	or d                                             ; $420e: $b2
	ld a, d                                          ; $420f: $7a
	xor l                                            ; $4210: $ad
	inc bc                                           ; $4211: $03
	rst $38                                          ; $4212: $ff
	inc bc                                           ; $4213: $03
	rst $38                                          ; $4214: $ff
	inc bc                                           ; $4215: $03
	rst $38                                          ; $4216: $ff
	push de                                          ; $4217: $d5
	rst $38                                          ; $4218: $ff
	sbc b                                            ; $4219: $98
	rst SubAFromBC                                          ; $421a: $e7
	ld hl, sp-$0d                                    ; $421b: $f8 $f3
	db $fc                                           ; $421d: $fc
	ld sp, hl                                        ; $421e: $f9
	cp $fc                                           ; $421f: $fe $fc
	ld a, b                                          ; $4221: $78
	jr nc, jr_02a_4290                               ; $4222: $30 $6c

	ld a, [hl+]                                      ; $4224: $2a
	sub a                                            ; $4225: $97
	adc [hl]                                         ; $4226: $8e
	ld [hl], c                                       ; $4227: $71
	call z, $fd33                                    ; $4228: $cc $33 $fd
	inc bc                                           ; $422b: $03
	ld sp, hl                                        ; $422c: $f9
	rlca                                             ; $422d: $07
	halt                                             ; $422e: $76
	or b                                             ; $422f: $b0
	sub [hl]                                         ; $4230: $96
	ld a, [hl]                                       ; $4231: $7e
	add c                                            ; $4232: $81
	ld a, a                                          ; $4233: $7f
	add b                                            ; $4234: $80
	rst SubAFromDE                                          ; $4235: $df
	ldh [$c3], a                                     ; $4236: $e0 $c3
	db $fc                                           ; $4238: $fc
	db $e3                                           ; $4239: $e3
	ld a, e                                          ; $423a: $7b
	ld [$fe77], sp                                   ; $423b: $08 $77 $fe
	sbc h                                            ; $423e: $9c
	ld [hl], a                                       ; $423f: $77
	ld hl, sp+$33                                    ; $4240: $f8 $33
	ld a, d                                          ; $4242: $7a
	ld b, $79                                        ; $4243: $06 $79
	and l                                            ; $4245: $a5
	ld [hl], e                                       ; $4246: $73

jr_02a_4247:
	ld b, $7e                                        ; $4247: $06 $7e
	xor [hl]                                         ; $4249: $ae
	sub [hl]                                         ; $424a: $96
	add c                                            ; $424b: $81
	ld a, [hl]                                       ; $424c: $7e
	rst $38                                          ; $424d: $ff
	nop                                              ; $424e: $00
	ldh a, [c]                                       ; $424f: $f2
	rrca                                             ; $4250: $0f
	ld [bc], a                                       ; $4251: $02
	rst $38                                          ; $4252: $ff
	ld c, $de                                        ; $4253: $0e $de
	rst $38                                          ; $4255: $ff
	sub [hl]                                         ; $4256: $96
	ld sp, hl                                        ; $4257: $f9
	rst $38                                          ; $4258: $ff
	jr nc, @+$01                                     ; $4259: $30 $ff

	sub $39                                          ; $425b: $d6 $39
	rst SubAFromHL                                          ; $425d: $d7
	jr c, jr_02a_4247                                ; $425e: $38 $e7

	ld a, e                                          ; $4260: $7b
	jr nz, jr_02a_42e0                               ; $4261: $20 $7d

	ld c, b                                          ; $4263: $48
	ld [hl], l                                       ; $4264: $75
	rst AddAOntoHL                                          ; $4265: $ef
	ld a, a                                          ; $4266: $7f
	or h                                             ; $4267: $b4
	adc e                                            ; $4268: $8b
	jr c, @+$01                                      ; $4269: $38 $ff

	add e                                            ; $426b: $83
	ld a, h                                          ; $426c: $7c
	and $f9                                          ; $426d: $e6 $f9
	xor $f1                                          ; $426f: $ee $f1
	call z, $9df3                                    ; $4271: $cc $f3 $9d
	db $e3                                           ; $4274: $e3
	add hl, sp                                       ; $4275: $39
	rst JumpTable                                          ; $4276: $c7
	ld a, e                                          ; $4277: $7b
	add a                                            ; $4278: $87
	di                                               ; $4279: $f3
	rrca                                             ; $427a: $0f
	rst SubAFromBC                                          ; $427b: $e7
	rra                                              ; $427c: $1f
	ld l, l                                          ; $427d: $6d
	cp a                                             ; $427e: $bf
	ld a, a                                          ; $427f: $7f
	db $e4                                           ; $4280: $e4
	ld a, a                                          ; $4281: $7f
	or a                                             ; $4282: $b7
	ld a, a                                          ; $4283: $7f
	adc d                                            ; $4284: $8a
	ld a, a                                          ; $4285: $7f
	and [hl]                                         ; $4286: $a6
	ld a, l                                          ; $4287: $7d
	add b                                            ; $4288: $80
	sub [hl]                                         ; $4289: $96
	sbc c                                            ; $428a: $99
	and $bf                                          ; $428b: $e6 $bf
	ret nz                                           ; $428d: $c0

	ccf                                              ; $428e: $3f
	ret nz                                           ; $428f: $c0

jr_02a_4290:
	ld a, h                                          ; $4290: $7c
	add e                                            ; $4291: $83
	pop af                                           ; $4292: $f1
	ld a, e                                          ; $4293: $7b

jr_02a_4294:
	db $e4                                           ; $4294: $e4
	ld a, [hl]                                       ; $4295: $7e
	ld [$ec7e], a                                    ; $4296: $ea $7e $ec
	sbc b                                            ; $4299: $98
	call z, $993f                                    ; $429a: $cc $3f $99
	ld a, [hl]                                       ; $429d: $7e
	add hl, sp                                       ; $429e: $39
	cp $73                                           ; $429f: $fe $73
	ld a, e                                          ; $42a1: $7b
	adc [hl]                                         ; $42a2: $8e
	ld a, a                                          ; $42a3: $7f
	ld h, [hl]                                       ; $42a4: $66
	add h                                            ; $42a5: $84
	adc $f1                                          ; $42a6: $ce $f1
	sbc h                                            ; $42a8: $9c
	db $e3                                           ; $42a9: $e3
	db $db                                           ; $42aa: $db
	inc a                                            ; $42ab: $3c
	db $d3                                           ; $42ac: $d3

jr_02a_42ad:
	inc a                                            ; $42ad: $3c
	sub a                                            ; $42ae: $97
	ld a, b                                          ; $42af: $78
	or [hl]                                          ; $42b0: $b6
	ld a, c                                          ; $42b1: $79
	ld h, $f9                                        ; $42b2: $26 $f9
	ld l, [hl]                                       ; $42b4: $6e
	pop af                                           ; $42b5: $f1
	ld c, h                                          ; $42b6: $4c
	di                                               ; $42b7: $f3
	call c, $33e3                                    ; $42b8: $dc $e3 $33
	db $fc                                           ; $42bb: $fc
	ld [hl], a                                       ; $42bc: $77
	ld hl, sp+$67                                    ; $42bd: $f8 $67
	ld hl, sp+$4e                                    ; $42bf: $f8 $4e
	ld a, e                                          ; $42c1: $7b
	and $7f                                          ; $42c2: $e6 $7f
	ld h, b                                          ; $42c4: $60
	ld a, a                                          ; $42c5: $7f
	ld e, h                                          ; $42c6: $5c
	ld a, a                                          ; $42c7: $7f
	xor [hl]                                         ; $42c8: $ae
	ld a, [hl]                                       ; $42c9: $7e
	ld a, d                                          ; $42ca: $7a
	ld l, [hl]                                       ; $42cb: $6e
	ld a, b                                          ; $42cc: $78
	inc bc                                           ; $42cd: $03
	rst $38                                          ; $42ce: $ff
	inc bc                                           ; $42cf: $03
	rst $38                                          ; $42d0: $ff
	inc bc                                           ; $42d1: $03
	rst $38                                          ; $42d2: $ff
	ret nc                                           ; $42d3: $d0

	rst $38                                          ; $42d4: $ff
	sbc c                                            ; $42d5: $99
	rst JumpTable                                          ; $42d6: $c7
	rst $38                                          ; $42d7: $ff
	adc c                                            ; $42d8: $89
	rst SubAFromBC                                          ; $42d9: $e7
	db $fc                                           ; $42da: $fc
	rst $38                                          ; $42db: $ff
	ld l, l                                          ; $42dc: $6d
	ldh [c], a                                       ; $42dd: $e2
	sub b                                            ; $42de: $90
	pop af                                           ; $42df: $f1

jr_02a_42e0:
	db $fc                                           ; $42e0: $fc
	db $e3                                           ; $42e1: $e3
	ld hl, sp-$3c                                    ; $42e2: $f8 $c4
	pop af                                           ; $42e4: $f1
	sub b                                            ; $42e5: $90
	db $e3                                           ; $42e6: $e3
	rst SubAFromBC                                          ; $42e7: $e7
	jr jr_02a_42ad                                   ; $42e8: $18 $c3

	inc a                                            ; $42ea: $3c
	reti                                             ; $42eb: $d9


	ld a, $9c                                        ; $42ec: $3e $9c
	ld h, e                                          ; $42ee: $63
	ld l, d                                          ; $42ef: $6a
	ld a, l                                          ; $42f0: $7d
	add b                                            ; $42f1: $80
	sbc [hl]                                         ; $42f2: $9e
	call c, $2a7b                                    ; $42f3: $dc $7b $2a
	ld e, d                                          ; $42f6: $5a
	jr z, jr_02a_4294                                ; $42f7: $28 $9b

	nop                                              ; $42f9: $00
	inc a                                            ; $42fa: $3c
	jp $da81                                         ; $42fb: $c3 $81 $da


	rst $38                                          ; $42fe: $ff
	sbc b                                            ; $42ff: $98
	ld hl, sp-$01                                    ; $4300: $f8 $ff
	ld hl, sp-$04                                    ; $4302: $f8 $fc
	sub e                                            ; $4304: $93
	ld a, h                                          ; $4305: $7c
	jr c, jr_02a_4372                                ; $4306: $38 $6a

	add h                                            ; $4308: $84
	ld [hl], h                                       ; $4309: $74
	or d                                             ; $430a: $b2
	sbc [hl]                                         ; $430b: $9e
	rrca                                             ; $430c: $0f
	ld a, b                                          ; $430d: $78
	ld a, d                                          ; $430e: $7a
	sbc l                                            ; $430f: $9d
	cp $01                                           ; $4310: $fe $01
	ld h, h                                          ; $4312: $64
	adc e                                            ; $4313: $8b
	ld a, h                                          ; $4314: $7c
	and a                                            ; $4315: $a7
	sbc d                                            ; $4316: $9a
	add c                                            ; $4317: $81
	db $e3                                           ; $4318: $e3
	adc [hl]                                         ; $4319: $8e
	ld a, a                                          ; $431a: $7f
	ld a, $d8                                        ; $431b: $3e $d8
	rst $38                                          ; $431d: $ff
	ld a, a                                          ; $431e: $7f
	sub h                                            ; $431f: $94
	sbc b                                            ; $4320: $98
	ldh a, [$fc]                                     ; $4321: $f0 $fc
	ld a, [hl]                                       ; $4323: $7e
	add c                                            ; $4324: $81
	ld a, b                                          ; $4325: $78
	add a                                            ; $4326: $87
	inc bc                                           ; $4327: $03
	jp c, Jump_02a_7dff                              ; $4328: $da $ff $7d

	jp $3c9d                                         ; $432b: $c3 $9d $3c


	ld a, [hl]                                       ; $432e: $7e
	ld d, l                                          ; $432f: $55
	adc $9a                                          ; $4330: $ce $9a
	ld hl, $01ff                                     ; $4332: $21 $ff $01
	ld [hl], e                                       ; $4335: $73
	add hl, sp                                       ; $4336: $39
	ld a, c                                          ; $4337: $79
	ld c, b                                          ; $4338: $48
	ld a, h                                          ; $4339: $7c
	ldh a, [$9e]                                     ; $433a: $f0 $9e
	rst GetHLinHL                                          ; $433c: $cf
	call c, $94ff                                    ; $433d: $dc $ff $94
	add b                                            ; $4340: $80
	rst $38                                          ; $4341: $ff
	add b                                            ; $4342: $80
	ret nz                                           ; $4343: $c0

	rst SubAFromDE                                          ; $4344: $df
	ldh [$df], a                                     ; $4345: $e0 $df
	ldh [$cf], a                                     ; $4347: $e0 $cf
	ldh a, [$e0]                                     ; $4349: $f0 $e0
	call c, $92ff                                    ; $434b: $dc $ff $92
	ld h, b                                          ; $434e: $60
	rst $38                                          ; $434f: $ff
	ld b, b                                          ; $4350: $40
	ldh [$e7], a                                     ; $4351: $e0 $e7
	rra                                              ; $4353: $1f
	call z, $1a3f                                    ; $4354: $cc $3f $1a
	rst $38                                          ; $4357: $ff
	ld a, d                                          ; $4358: $7a
	rst $38                                          ; $4359: $ff
	ld a, [$fe7b]                                    ; $435a: $fa $7b $fe
	sbc [hl]                                         ; $435d: $9e
	inc c                                            ; $435e: $0c
	ld [hl], a                                       ; $435f: $77
	sub b                                            ; $4360: $90
	ld a, e                                          ; $4361: $7b
	adc d                                            ; $4362: $8a
	sbc d                                            ; $4363: $9a
	cpl                                              ; $4364: $2f
	rst $38                                          ; $4365: $ff
	xor a                                            ; $4366: $af
	rst $38                                          ; $4367: $ff
	ld l, a                                          ; $4368: $6f
	ld a, e                                          ; $4369: $7b
	db $fc                                           ; $436a: $fc
	nop                                              ; $436b: $00
	add hl, sp                                       ; $436c: $39
	inc bc                                           ; $436d: $03
	rst $38                                          ; $436e: $ff
	inc bc                                           ; $436f: $03
	rst $38                                          ; $4370: $ff
	ld a, a                                          ; $4371: $7f

jr_02a_4372:
	ld l, [hl]                                       ; $4372: $6e
	sub a                                            ; $4373: $97
	jp $c0a0                                         ; $4374: $c3 $a0 $c0


	ret z                                            ; $4377: $c8

	ldh a, [$e2]                                     ; $4378: $f0 $e2
	db $fc                                           ; $437a: $fc
	ld hl, sp-$26                                    ; $437b: $f8 $da
	rst $38                                          ; $437d: $ff
	sbc b                                            ; $437e: $98
	ld bc, $03c7                                     ; $437f: $01 $c7 $03
	rrca                                             ; $4382: $0f
	daa                                              ; $4383: $27
	rra                                              ; $4384: $1f
	adc a                                            ; $4385: $8f
	ld d, [hl]                                       ; $4386: $56
	sbc $c4                                          ; $4387: $de $c4
	rst $38                                          ; $4389: $ff
	add b                                            ; $438a: $80
	db $f4                                           ; $438b: $f4
	ld hl, sp-$0f                                    ; $438c: $f8 $f1
	ld hl, sp-$10                                    ; $438e: $f8 $f0
	ld sp, hl                                        ; $4390: $f9
	db $eb                                           ; $4391: $eb
	pop af                                           ; $4392: $f1
	ldh [c], a                                       ; $4393: $e2
	pop af                                           ; $4394: $f1
	ldh [$f0], a                                     ; $4395: $e0 $f0
	ret nc                                           ; $4397: $d0

	db $e3                                           ; $4398: $e3
	push bc                                          ; $4399: $c5
	db $e3                                           ; $439a: $e3
	rla                                              ; $439b: $17
	rrca                                             ; $439c: $0f
	ld b, [hl]                                       ; $439d: $46
	adc a                                            ; $439e: $8f
	add a                                            ; $439f: $87
	adc $54                                          ; $43a0: $ce $54
	adc [hl]                                         ; $43a2: $8e
	adc [hl]                                         ; $43a3: $8e
	inc e                                            ; $43a4: $1c

jr_02a_43a5:
	ld e, d                                          ; $43a5: $5a
	inc a                                            ; $43a6: $3c
	jr c, jr_02a_43a5                                ; $43a7: $38 $fc

	ld hl, sp-$80                                    ; $43a9: $f8 $80
	db $fc                                           ; $43ab: $fc
	ld [bc], a                                       ; $43ac: $02
	add c                                            ; $43ad: $81
	adc b                                            ; $43ae: $88
	ld de, $3910                                     ; $43af: $11 $10 $39
	jr nc, @+$7b                                     ; $43b2: $30 $79

	or b                                             ; $43b4: $b0
	ld a, c                                          ; $43b5: $79
	db $eb                                           ; $43b6: $eb
	ld [hl], c                                       ; $43b7: $71
	ld h, c                                          ; $43b8: $61
	di                                               ; $43b9: $f3
	ld d, a                                          ; $43ba: $57
	db $e3                                           ; $43bb: $e3
	add sp, -$10                                     ; $43bc: $e8 $f0
	pop de                                           ; $43be: $d1
	ldh [c], a                                       ; $43bf: $e2
	ldh [c], a                                       ; $43c0: $e2
	rst JumpTable                                          ; $43c1: $c7
	add [hl]                                         ; $43c2: $86
	rst GetHLinHL                                          ; $43c3: $cf
	rst SubAFromHL                                          ; $43c4: $d7
	adc a                                            ; $43c5: $8f
	ld c, h                                          ; $43c6: $4c
	sbc a                                            ; $43c7: $9f
	inc c                                            ; $43c8: $0c
	sbc [hl]                                         ; $43c9: $9e
	sbc d                                            ; $43ca: $9a
	ld [$5a9c], sp                                   ; $43cb: $08 $9c $5a
	inc a                                            ; $43ce: $3c
	jr jr_02a_444c                                   ; $43cf: $18 $7b

	cp $80                                           ; $43d1: $fe $80
	inc [hl]                                         ; $43d3: $34
	ld hl, sp-$10                                    ; $43d4: $f8 $f0
	ld hl, sp+$30                                    ; $43d6: $f8 $30
	ld hl, sp+$28                                    ; $43d8: $f8 $28
	ld [hl], c                                       ; $43da: $71
	and d                                            ; $43db: $a2
	ld [hl], c                                       ; $43dc: $71
	dec b                                            ; $43dd: $05
	ld h, e                                          ; $43de: $63
	dec bc                                           ; $43df: $0b
	rst JumpTable                                          ; $43e0: $c7
	rla                                              ; $43e1: $17
	adc a                                            ; $43e2: $8f
	ld l, $1f                                        ; $43e3: $2e $1f
	ld e, [hl]                                       ; $43e5: $5e
	ccf                                              ; $43e6: $3f
	ld a, $7f                                        ; $43e7: $3e $7f
	dec e                                            ; $43e9: $1d
	ld a, $9c                                        ; $43ea: $3e $9c
	ld a, $4e                                        ; $43ec: $3e $4e
	add c                                            ; $43ee: $81
	db $10                                           ; $43ef: $10
	adc a                                            ; $43f0: $8f
	rrca                                             ; $43f1: $0f
	add d                                            ; $43f2: $82
	sbc a                                            ; $43f3: $9f
	add b                                            ; $43f4: $80
	rra                                              ; $43f5: $1f
	nop                                              ; $43f6: $00
	ld bc, $033d                                     ; $43f7: $01 $3d $03
	inc bc                                           ; $43fa: $03
	ccf                                              ; $43fb: $3f
	ccf                                              ; $43fc: $3f
	ld a, a                                          ; $43fd: $7f
	ld b, b                                          ; $43fe: $40
	ldh [$c0], a                                     ; $43ff: $e0 $c0
	ld sp, hl                                        ; $4401: $f9
	ldh a, [$f9]                                     ; $4402: $f0 $f9
	ld [$e0f1], a                                    ; $4404: $ea $f1 $e0
	di                                               ; $4407: $f3
	pop hl                                           ; $4408: $e1
	di                                               ; $4409: $f3
	push de                                          ; $440a: $d5
	db $e3                                           ; $440b: $e3
	pop bc                                           ; $440c: $c1
	rst SubAFromBC                                          ; $440d: $e7
	cpl                                              ; $440e: $2f
	rra                                              ; $440f: $1f
	ld [bc], a                                       ; $4410: $02
	jp c, $ff03                                      ; $4411: $da $03 $ff

	inc bc                                           ; $4414: $03
	rst $38                                          ; $4415: $ff
	inc bc                                           ; $4416: $03
	rst $38                                          ; $4417: $ff
	inc bc                                           ; $4418: $03
	rst $38                                          ; $4419: $ff
	ret z                                            ; $441a: $c8

	rst $38                                          ; $441b: $ff
	sbc b                                            ; $441c: $98
	jp $a3e7                                         ; $441d: $c3 $e7 $a3


	rst JumpTable                                          ; $4420: $c7
	adc a                                            ; $4421: $8f
	rst JumpTable                                          ; $4422: $c7
	add a                                            ; $4423: $87
	ret c                                            ; $4424: $d8

	rst $38                                          ; $4425: $ff
	ld a, [hl]                                       ; $4426: $7e
	adc $9b                                          ; $4427: $ce $9b
	ld a, [$fdfc]                                    ; $4429: $fa $fc $fd
	cp $65                                           ; $442c: $fe $65
	ld a, [hl]                                       ; $442e: $7e
	rst SubAFromDE                                          ; $442f: $df
	rst $38                                          ; $4430: $ff
	sbc e                                            ; $4431: $9b
	and e                                            ; $4432: $a3
	ld b, a                                          ; $4433: $47
	rlca                                             ; $4434: $07
	rrca                                             ; $4435: $0f
	ld d, a                                          ; $4436: $57
	inc e                                            ; $4437: $1c
	sbc b                                            ; $4438: $98
	db $10                                           ; $4439: $10
	adc b                                            ; $443a: $88
	ld b, b                                          ; $443b: $40
	add c                                            ; $443c: $81
	and h                                            ; $443d: $a4
	jp $d8c1                                         ; $443e: $c3 $c1 $d8


	rst $38                                          ; $4441: $ff
	ld a, [hl]                                       ; $4442: $7e
	xor h                                            ; $4443: $ac
	sbc d                                            ; $4444: $9a
	ld d, l                                          ; $4445: $55
	db $e3                                           ; $4446: $e3
	jp $c3e7                                         ; $4447: $c3 $e7 $c3


	ret c                                            ; $444a: $d8

	rst $38                                          ; $444b: $ff

jr_02a_444c:
	sbc b                                            ; $444c: $98
	ld [$4a9e], sp                                   ; $444d: $08 $9e $4a
	sbc h                                            ; $4450: $9c
	ld c, e                                          ; $4451: $4b
	sbc h                                            ; $4452: $9c
	inc c                                            ; $4453: $0c
	ret c                                            ; $4454: $d8

	rst $38                                          ; $4455: $ff
	sbc c                                            ; $4456: $99
	inc bc                                           ; $4457: $03
	ld a, a                                          ; $4458: $7f
	ld bc, $f907                                     ; $4459: $01 $07 $f9
	rlca                                             ; $445c: $07
	ld h, l                                          ; $445d: $65
	ld e, [hl]                                       ; $445e: $5e
	ld [hl], a                                       ; $445f: $77
	sub b                                            ; $4460: $90
	sbc h                                            ; $4461: $9c
	xor e                                            ; $4462: $ab
	rst JumpTable                                          ; $4463: $c7
	add e                                            ; $4464: $83
	ld a, c                                          ; $4465: $79
	ld l, [hl]                                       ; $4466: $6e
	inc bc                                           ; $4467: $03
	rst $38                                          ; $4468: $ff
	inc bc                                           ; $4469: $03
	rst $38                                          ; $446a: $ff
	inc bc                                           ; $446b: $03
	rst $38                                          ; $446c: $ff
	inc bc                                           ; $446d: $03
	rst $38                                          ; $446e: $ff
	ret c                                            ; $446f: $d8

	rst $38                                          ; $4470: $ff
	sub [hl]                                         ; $4471: $96
	ei                                               ; $4472: $fb
	rst $38                                          ; $4473: $ff
	pop hl                                           ; $4474: $e1
	db $eb                                           ; $4475: $eb
	push af                                          ; $4476: $f5
	rst FarCall                                          ; $4477: $f7
	db $ed                                           ; $4478: $ed
	db $ed                                           ; $4479: $ed
	db $db                                           ; $447a: $db

Call_02a_447b:
	ld h, h                                          ; $447b: $64
	and a                                            ; $447c: $a7
	sub a                                            ; $447d: $97
	db $dd                                           ; $447e: $dd
	xor [hl]                                         ; $447f: $ae
	rst SubAFromDE                                          ; $4480: $df
	xor b                                            ; $4481: $a8
	cp l                                             ; $4482: $bd
	ld h, [hl]                                       ; $4483: $66
	and $7d                                          ; $4484: $e6 $7d
	jp c, $dfff                                      ; $4486: $da $ff $df

	ld a, a                                          ; $4489: $7f
	sbc b                                            ; $448a: $98
	rst FarCall                                          ; $448b: $f7
	db $fd                                           ; $448c: $fd
	ld [hl+], a                                      ; $448d: $22
	ld a, [hl+]                                      ; $448e: $2a
	rst FarCall                                          ; $448f: $f7
	rst $38                                          ; $4490: $ff
	rst FarCall                                          ; $4491: $f7
	ld h, [hl]                                       ; $4492: $66
	db $db                                           ; $4493: $db
	sub a                                            ; $4494: $97
	cp $f1                                           ; $4495: $fe $f1
	db $eb                                           ; $4497: $eb
	inc [hl]                                         ; $4498: $34
	dec a                                            ; $4499: $3d
	ldh [c], a                                       ; $449a: $e2
	ei                                               ; $449b: $fb
	db $e4                                           ; $449c: $e4
	sbc $ff                                          ; $449d: $de $ff
	ld a, [hl]                                       ; $449f: $7e
	push de                                          ; $44a0: $d5
	sub l                                            ; $44a1: $95
	ld hl, sp-$07                                    ; $44a2: $f8 $f9
	ld a, $3f                                        ; $44a4: $3e $3f
	db $fc                                           ; $44a6: $fc
	db $fd                                           ; $44a7: $fd
	ld a, [hl-]                                      ; $44a8: $3a
	ld a, e                                          ; $44a9: $7b
	or [hl]                                          ; $44aa: $b6
	cp $75                                           ; $44ab: $fe $75
	ld c, e                                          ; $44ad: $4b
	sub h                                            ; $44ae: $94
	ld c, h                                          ; $44af: $4c
	xor $1f                                          ; $44b0: $ee $1f
	sbc a                                            ; $44b2: $9f
	ld a, b                                          ; $44b3: $78
	ld a, e                                          ; $44b4: $7b
	adc h                                            ; $44b5: $8c
	rrca                                             ; $44b6: $0f
	ld hl, sp+$7d                                    ; $44b7: $f8 $7d
	ldh a, [c]                                       ; $44b9: $f2

jr_02a_44ba:
	ld [hl], a                                       ; $44ba: $77
	pop de                                           ; $44bb: $d1
	sub e                                            ; $44bc: $93
	ld [hl], a                                       ; $44bd: $77
	adc [hl]                                         ; $44be: $8e
	rst SubAFromHL                                          ; $44bf: $d7
	ld l, $ff                                        ; $44c0: $2e $ff
	inc c                                            ; $44c2: $0c
	ld d, l                                          ; $44c3: $55
	xor [hl]                                         ; $44c4: $ae
	rst FarCall                                          ; $44c5: $f7
	ld [$ad52], sp                                   ; $44c6: $08 $52 $ad
	ld l, a                                          ; $44c9: $6f
	and h                                            ; $44ca: $a4
	sub [hl]                                         ; $44cb: $96
	ld a, h                                          ; $44cc: $7c
	sbc e                                            ; $44cd: $9b
	rst SubAFromDE                                          ; $44ce: $df
	jr c, jr_02a_452d                                ; $44cf: $38 $5c

	cp e                                             ; $44d1: $bb
	rst AddAOntoHL                                          ; $44d2: $ef
	sub b                                            ; $44d3: $90
	sbc b                                            ; $44d4: $98
	ld [hl], e                                       ; $44d5: $73
	or d                                             ; $44d6: $b2
	sub h                                            ; $44d7: $94
	rst SubAFromDE                                          ; $44d8: $df
	ccf                                              ; $44d9: $3f
	rst SubAFromDE                                          ; $44da: $df
	jr c, jr_02a_44ba                                ; $44db: $38 $dd

	ld [hl-], a                                      ; $44dd: $32
	or a                                             ; $44de: $b7
	ld l, d                                          ; $44df: $6a
	cp e                                             ; $44e0: $bb
	ld h, [hl]                                       ; $44e1: $66
	and [hl]                                         ; $44e2: $a6
	ld [hl], e                                       ; $44e3: $73
	sub d                                            ; $44e4: $92
	sub d                                            ; $44e5: $92
	db $fd                                           ; $44e6: $fd
	ei                                               ; $44e7: $fb
	db $fd                                           ; $44e8: $fd
	db $d3                                           ; $44e9: $d3
	ld a, e                                          ; $44ea: $7b
	rst SubAFromBC                                          ; $44eb: $e7
	ld [hl], l                                       ; $44ec: $75
	db $eb                                           ; $44ed: $eb
	ld l, e                                          ; $44ee: $6b
	rst SubAFromDE                                          ; $44ef: $df
	rst SubAFromDE                                          ; $44f0: $df
	cp a                                             ; $44f1: $bf
	cp a                                             ; $44f2: $bf
	call c, $93ff                                    ; $44f3: $dc $ff $93
	cp $c3                                           ; $44f6: $fe $c3
	swap [hl]                                        ; $44f8: $cb $36
	cp $67                                           ; $44fa: $fe $67
	rst FarCall                                          ; $44fc: $f7
	rrca                                             ; $44fd: $0f
	adc a                                            ; $44fe: $8f
	ld a, [hl]                                       ; $44ff: $7e
	ld a, [hl]                                       ; $4500: $7e
	db $fd                                           ; $4501: $fd
	ld a, e                                          ; $4502: $7b
	or b                                             ; $4503: $b0
	rst SubAFromDE                                          ; $4504: $df
	adc e                                            ; $4505: $8b
	sub l                                            ; $4506: $95
	ld [hl], a                                       ; $4507: $77
	rst FarCall                                          ; $4508: $f7
	ld c, $4f                                        ; $4509: $0e $4f
	cp h                                             ; $450b: $bc
	cp [hl]                                          ; $450c: $be
	ld a, c                                          ; $450d: $79
	ld a, d                                          ; $450e: $7a
	push af                                          ; $450f: $f5
	xor $7b                                          ; $4510: $ee $7b
	ldh a, [rOCPD]                                   ; $4512: $f0 $6b
	ld h, b                                          ; $4514: $60
	inc bc                                           ; $4515: $03
	dec e                                            ; $4516: $1d
	inc bc                                           ; $4517: $03
	rst $38                                          ; $4518: $ff
	inc bc                                           ; $4519: $03
	rst $38                                          ; $451a: $ff
	inc bc                                           ; $451b: $03
	rst $38                                          ; $451c: $ff
	inc bc                                           ; $451d: $03
	rst $38                                          ; $451e: $ff
	call $9aff                                       ; $451f: $cd $ff $9a
	rst FarCall                                          ; $4522: $f7
	ld hl, sp-$11                                    ; $4523: $f8 $ef
	ldh a, [$f0]                                     ; $4525: $f0 $f0
	push de                                          ; $4527: $d5
	rst $38                                          ; $4528: $ff
	cp a                                             ; $4529: $bf
	rst $38                                          ; $452a: $ff
	nop                                              ; $452b: $00
	inc bc                                           ; $452c: $03

jr_02a_452d:
	ldh a, [$03]                                     ; $452d: $f0 $03
	ldh a, [rAUD4GO]                                 ; $452f: $f0 $23
	ldh a, [$9d]                                     ; $4531: $f0 $9d
	cp $01                                           ; $4533: $fe $01
	ld c, e                                          ; $4535: $4b
	ldh [$7e], a                                     ; $4536: $e0 $7e
	jp Jump_02a_5c03                                 ; $4538: $c3 $03 $5c


	inc bc                                           ; $453b: $03
	rst $38                                          ; $453c: $ff
	sub $ff                                          ; $453d: $d6 $ff
	add hl, hl                                       ; $453f: $29
	nop                                              ; $4540: $00
	db $ec                                           ; $4541: $ec
	sbc [hl]                                         ; $4542: $9e
	ld bc, $11de                                     ; $4543: $01 $de $11
	ld a, [$22db]                                    ; $4546: $fa $db $22
	sbc [hl]                                         ; $4549: $9e
	jr nz, @+$59                                     ; $454a: $20 $57

	or $9e                                           ; $454c: $f6 $9e
	inc bc                                           ; $454e: $03
	db $db                                           ; $454f: $db
	inc sp                                           ; $4550: $33
	sbc [hl]                                         ; $4551: $9e
	jr nc, jr_02a_45cf                               ; $4552: $30 $7b

	or $9d                                           ; $4554: $f6 $9d
	jr nc, jr_02a_455c                               ; $4556: $30 $04

	db $dd                                           ; $4558: $dd
	ld b, h                                          ; $4559: $44
	db $fc                                           ; $455a: $fc
	ld [hl], a                                       ; $455b: $77

jr_02a_455c:
	or $9e                                           ; $455c: $f6 $9e
	ld b, b                                          ; $455e: $40
	cp $9e                                           ; $455f: $fe $9e
	dec b                                            ; $4561: $05
	db $db                                           ; $4562: $db
	ld d, l                                          ; $4563: $55
	db $fc                                           ; $4564: $fc
	ld [hl], e                                       ; $4565: $73
	db $f4                                           ; $4566: $f4
	rst $38                                          ; $4567: $ff
	ld d, d                                          ; $4568: $52
	add h                                            ; $4569: $84
	ldh [$bd], a                                     ; $456a: $e0 $bd
	sbc h                                            ; $456c: $9c
	ccf                                              ; $456d: $3f
	rlca                                             ; $456e: $07
	ld bc, $9dfc                                     ; $456f: $01 $fc $9d
	rra                                              ; $4572: $1f
	inc bc                                           ; $4573: $03
	cp $90                                           ; $4574: $fe $90
	cp $2f                                           ; $4576: $fe $2f
	rrca                                             ; $4578: $0f
	and e                                            ; $4579: $a3
	ld [hl], a                                       ; $457a: $77
	cp a                                             ; $457b: $bf
	db $dd                                           ; $457c: $dd
	nop                                              ; $457d: $00
	ld a, h                                          ; $457e: $7c
	ld [de], a                                       ; $457f: $12
	add hl, bc                                       ; $4580: $09
	push bc                                          ; $4581: $c5
	push hl                                          ; $4582: $e5
	push de                                          ; $4583: $d5
	ld l, a                                          ; $4584: $6f
	db $fc                                           ; $4585: $fc
	sbc h                                            ; $4586: $9c
	sub a                                            ; $4587: $97
	ld a, b                                          ; $4588: $78
	add b                                            ; $4589: $80
	db $fc                                           ; $458a: $fc
	sbc h                                            ; $458b: $9c
	rrca                                             ; $458c: $0f
	rst $38                                          ; $458d: $ff
	rst $38                                          ; $458e: $ff
	db $fc                                           ; $458f: $fc
	sbc h                                            ; $4590: $9c
	db $fd                                           ; $4591: $fd
	inc bc                                           ; $4592: $03
	ld a, a                                          ; $4593: $7f
	db $fc                                           ; $4594: $fc
	sbc l                                            ; $4595: $9d
	cp $ff                                           ; $4596: $fe $ff
	ld l, a                                          ; $4598: $6f
	add sp, -$64                                     ; $4599: $e8 $9c
	nop                                              ; $459b: $00
	ret nz                                           ; $459c: $c0

	cp h                                             ; $459d: $bc
	ei                                               ; $459e: $fb
	sbc l                                            ; $459f: $9d
	ldh [$78], a                                     ; $45a0: $e0 $78
	ldh [rAUD3LOW], a                                ; $45a2: $e0 $1d
	sbc e                                            ; $45a4: $9b
	ld bc, $0f07                                     ; $45a5: $01 $07 $0f
	rra                                              ; $45a8: $1f
	ld [hl], e                                       ; $45a9: $73
	ld hl, sp-$67                                    ; $45aa: $f8 $99
	ld [bc], a                                       ; $45ac: $02
	inc b                                            ; $45ad: $04
	add hl, bc                                       ; $45ae: $09
	nop                                              ; $45af: $00
	rlca                                             ; $45b0: $07
	ccf                                              ; $45b1: $3f
	sbc $ff                                          ; $45b2: $de $ff
	sub b                                            ; $45b4: $90
	db $fc                                           ; $45b5: $fc
	ldh a, [rP1]                                     ; $45b6: $f0 $00
	inc bc                                           ; $45b8: $03
	inc e                                            ; $45b9: $1c
	ld h, e                                          ; $45ba: $63
	sbc h                                            ; $45bb: $9c
	ld h, e                                          ; $45bc: $63
	adc a                                            ; $45bd: $8f
	ccf                                              ; $45be: $3f
	ld a, a                                          ; $45bf: $7f
	rst $38                                          ; $45c0: $ff
	rst $38                                          ; $45c1: $ff
	cp $e0                                           ; $45c2: $fe $e0
	ld a, d                                          ; $45c4: $7a
	ld [$279b], a                                    ; $45c5: $ea $9b $27
	rst FarCall                                          ; $45c8: $f7
	ld a, a                                          ; $45c9: $7f
	sbc a                                            ; $45ca: $9f
	ld a, e                                          ; $45cb: $7b
	db $f4                                           ; $45cc: $f4
	db $dd                                           ; $45cd: $dd
	rst $38                                          ; $45ce: $ff

jr_02a_45cf:
	ld l, [hl]                                       ; $45cf: $6e
	sbc h                                            ; $45d0: $9c
	sbc [hl]                                         ; $45d1: $9e
	ret nz                                           ; $45d2: $c0

	ret c                                            ; $45d3: $d8

	rst $38                                          ; $45d4: $ff
	sbc [hl]                                         ; $45d5: $9e
	ccf                                              ; $45d6: $3f
	halt                                             ; $45d7: $76
	sbc c                                            ; $45d8: $99
	sbc e                                            ; $45d9: $9b
	ldh a, [$0c]                                     ; $45da: $f0 $0c
	ret nz                                           ; $45dc: $c0

	db $fc                                           ; $45dd: $fc
	ld e, a                                          ; $45de: $5f
	xor $9c                                          ; $45df: $ee $9c
	rlca                                             ; $45e1: $07
	nop                                              ; $45e2: $00
	ld b, $7a                                        ; $45e3: $06 $7a
	ld a, l                                          ; $45e5: $7d
	sbc l                                            ; $45e6: $9d
	ret nz                                           ; $45e7: $c0

	ld hl, sp+$7b                                    ; $45e8: $f8 $7b
	db $d3                                           ; $45ea: $d3
	sub b                                            ; $45eb: $90
	ret nz                                           ; $45ec: $c0

	ld h, b                                          ; $45ed: $60
	or b                                             ; $45ee: $b0
	ret c                                            ; $45ef: $d8

	db $ec                                           ; $45f0: $ec
	or $fa                                           ; $45f1: $f6 $fa
	nop                                              ; $45f3: $00
	add b                                            ; $45f4: $80
	ret nz                                           ; $45f5: $c0

	ld h, b                                          ; $45f6: $60
	jr nc, @+$1a                                     ; $45f7: $30 $18

	inc c                                            ; $45f9: $0c
	add $e0                                          ; $45fa: $c6 $e0
	ld a, $df                                        ; $45fc: $3e $df
	ld bc, $03df                                     ; $45fe: $01 $df $03
	ld a, a                                          ; $4601: $7f
	rra                                              ; $4602: $1f
	ld [hl], e                                       ; $4603: $73
	rst FarCall                                          ; $4604: $f7
	rst SubAFromDE                                          ; $4605: $df
	ld [bc], a                                       ; $4606: $02
	ld a, d                                          ; $4607: $7a
	rst SubAFromDE                                          ; $4608: $df
	sub [hl]                                         ; $4609: $96
	cp $fc                                           ; $460a: $fe $fc
	ld sp, hl                                        ; $460c: $f9
	di                                               ; $460d: $f3
	rst SubAFromBC                                          ; $460e: $e7
	db $10                                           ; $460f: $10
	jr nz, jr_02a_4653                               ; $4610: $20 $41

	add e                                            ; $4612: $83
	ld a, d                                          ; $4613: $7a
	cp c                                             ; $4614: $b9
	sbc d                                            ; $4615: $9a
	ld a, $c0                                        ; $4616: $3e $c0
	adc h                                            ; $4618: $8c
	jr nc, jr_02a_4662                               ; $4619: $30 $47

	halt                                             ; $461b: $76
	rst SubAFromHL                                          ; $461c: $d7
	halt                                             ; $461d: $76
	call nc, $f89e                                   ; $461e: $d4 $9e $f8
	halt                                             ; $4621: $76
	rst JumpTable                                          ; $4622: $c7
	sbc [hl]                                         ; $4623: $9e
	rra                                              ; $4624: $1f
	reti                                             ; $4625: $d9


	rst $38                                          ; $4626: $ff
	sbc [hl]                                         ; $4627: $9e
	ldh [$fc], a                                     ; $4628: $e0 $fc
	ret c                                            ; $462a: $d8

	rst $38                                          ; $462b: $ff
	db $fc                                           ; $462c: $fc
	sbc l                                            ; $462d: $9d
	inc b                                            ; $462e: $04
	ld [bc], a                                       ; $462f: $02
	ld c, a                                          ; $4630: $4f
	ldh a, [$9b]                                     ; $4631: $f0 $9b
	ld b, b                                          ; $4633: $40
	inc h                                            ; $4634: $24
	nop                                              ; $4635: $00
	ldh a, [$d9]                                     ; $4636: $f0 $d9
	rst $38                                          ; $4638: $ff
	sbc [hl]                                         ; $4639: $9e
	rrca                                             ; $463a: $0f
	cp $98                                           ; $463b: $fe $98
	db $10                                           ; $463d: $10

jr_02a_463e:
	ld [$1f3f], sp                                   ; $463e: $08 $3f $1f
	rrca                                             ; $4641: $0f
	rst JumpTable                                          ; $4642: $c7
	di                                               ; $4643: $f3
	sbc $ff                                          ; $4644: $de $ff
	sub b                                            ; $4646: $90
	ldh [c], a                                       ; $4647: $e2
	pop af                                           ; $4648: $f1
	ld hl, sp-$04                                    ; $4649: $f8 $fc
	ld a, $0e                                        ; $464b: $3e $0e
	rlca                                             ; $464d: $07
	inc bc                                           ; $464e: $03
	nop                                              ; $464f: $00
	add b                                            ; $4650: $80
	add b                                            ; $4651: $80
	ret nz                                           ; $4652: $c0

jr_02a_4653:
	ld b, b                                          ; $4653: $40
	ldh [$c0], a                                     ; $4654: $e0 $c0
	ld a, e                                          ; $4656: $7b
	or e                                             ; $4657: $b3
	ld [hl], a                                       ; $4658: $77
	rst FarCall                                          ; $4659: $f7
	sbc l                                            ; $465a: $9d
	ld h, b                                          ; $465b: $60
	jr nz, jr_02a_463e                               ; $465c: $20 $e0

	ld l, c                                          ; $465e: $69
	ld d, e                                          ; $465f: $53
	add hl, hl                                       ; $4660: $29
	ld e, e                                          ; $4661: $5b

jr_02a_4662:
	ldh a, [hDisp1_BGP]                                     ; $4662: $f0 $92
	dec b                                            ; $4664: $05
	rlca                                             ; $4665: $07
	scf                                              ; $4666: $37
	ccf                                              ; $4667: $3f
	dec c                                            ; $4668: $0d
	inc bc                                           ; $4669: $03
	ld [$fe09], sp                                   ; $466a: $08 $09 $fe
	db $fc                                           ; $466d: $fc
	db $ec                                           ; $466e: $ec
	ldh a, [$fe]                                     ; $466f: $f0 $fe
	sbc $ff                                          ; $4671: $de $ff
	add b                                            ; $4673: $80
	rst AddAOntoHL                                          ; $4674: $ef
	rst SubAFromDE                                          ; $4675: $df
	rst FarCall                                          ; $4676: $f7
	rst GetHLinHL                                          ; $4677: $cf
	ccf                                              ; $4678: $3f
	call c, Call_02a_61b0                            ; $4679: $dc $b0 $61
	inc a                                            ; $467c: $3c
	ld a, b                                          ; $467d: $78
	ld a, b                                          ; $467e: $78
	ldh a, [$e0]                                     ; $467f: $f0 $e0
	db $e3                                           ; $4681: $e3
	rst GetHLinHL                                          ; $4682: $cf
	sbc a                                            ; $4683: $9f
	rst $38                                          ; $4684: $ff
	rst $38                                          ; $4685: $ff
	push af                                          ; $4686: $f5
	rst $38                                          ; $4687: $ff
	ld [hl], a                                       ; $4688: $77
	ld a, e                                          ; $4689: $7b
	db $ec                                           ; $468a: $ec
	db $ec                                           ; $468b: $ec
	nop                                              ; $468c: $00
	nop                                              ; $468d: $00
	ld a, [bc]                                       ; $468e: $0a
	ld a, [bc]                                       ; $468f: $0a
	sbc d                                            ; $4690: $9a
	sub [hl]                                         ; $4691: $96
	scf                                              ; $4692: $37
	sbc d                                            ; $4693: $9a
	scf                                              ; $4694: $37
	rst $38                                          ; $4695: $ff
	cp $ce                                           ; $4696: $fe $ce
	rst AddAOntoHL                                          ; $4698: $ef
	sbc $e7                                          ; $4699: $de $e7
	adc c                                            ; $469b: $89
	db $e3                                           ; $469c: $e3
	ld [bc], a                                       ; $469d: $02
	inc bc                                           ; $469e: $03
	inc sp                                           ; $469f: $33
	ld sp, $3939                                     ; $46a0: $31 $39 $39
	jr c, jr_02a_46e1                                ; $46a3: $38 $3c

	cp $f7                                           ; $46a5: $fe $f7
	di                                               ; $46a7: $f3
	ld a, c                                          ; $46a8: $79
	ld a, c                                          ; $46a9: $79
	inc a                                            ; $46aa: $3c
	cp h                                             ; $46ab: $bc
	cp h                                             ; $46ac: $bc
	inc bc                                           ; $46ad: $03
	add hl, de                                       ; $46ae: $19
	dec e                                            ; $46af: $1d
	adc [hl]                                         ; $46b0: $8e
	adc [hl]                                         ; $46b1: $8e
	sbc $c7                                          ; $46b2: $de $c7
	add b                                            ; $46b4: $80
	cp $76                                           ; $46b5: $fe $76
	dec sp                                           ; $46b7: $3b
	cp e                                             ; $46b8: $bb
	sbc l                                            ; $46b9: $9d
	call $c6cc                                       ; $46ba: $cd $cc $c6
	inc de                                           ; $46bd: $13
	sbc e                                            ; $46be: $9b
	call $e6cc                                       ; $46bf: $cd $cc $e6
	halt                                             ; $46c2: $76
	ld [hl], a                                       ; $46c3: $77
	ld a, e                                          ; $46c4: $7b
	db $fd                                           ; $46c5: $fd
	ld a, $8d                                        ; $46c6: $3e $8d
	rst JumpTable                                          ; $46c8: $c7
	and d                                            ; $46c9: $a2
	db $d3                                           ; $46ca: $d3
	pop af                                           ; $46cb: $f1
	jp hl                                            ; $46cc: $e9


	ld b, $c3                                        ; $46cd: $06 $c3
	di                                               ; $46cf: $f3
	ld sp, hl                                        ; $46d0: $f9
	db $fd                                           ; $46d1: $fd
	ld a, h                                          ; $46d2: $7c
	ld e, [hl]                                       ; $46d3: $5e
	add b                                            ; $46d4: $80
	ld e, [hl]                                       ; $46d5: $5e
	ei                                               ; $46d6: $fb
	db $fd                                           ; $46d7: $fd
	ld l, h                                          ; $46d8: $6c
	ld h, [hl]                                       ; $46d9: $66
	or [hl]                                          ; $46da: $b6
	or d                                             ; $46db: $b2
	sub e                                            ; $46dc: $93
	ld e, e                                          ; $46dd: $5b
	dec c                                            ; $46de: $0d
	ld b, $b7                                        ; $46df: $06 $b7

jr_02a_46e1:
	cp e                                             ; $46e1: $bb
	db $db                                           ; $46e2: $db
	rst SubAFromDE                                          ; $46e3: $df
	db $fd                                           ; $46e4: $fd
	db $ed                                           ; $46e5: $ed
	ldh [$d0], a                                     ; $46e6: $e0 $d0
	ldh a, [$c8]                                     ; $46e8: $f0 $c8
	ld hl, sp+$68                                    ; $46ea: $f8 $68
	ld [hl], h                                       ; $46ec: $74
	inc [hl]                                         ; $46ed: $34
	cp a                                             ; $46ee: $bf
	cp a                                             ; $46ef: $bf
	ld e, a                                          ; $46f0: $5f
	ld a, a                                          ; $46f1: $7f
	cpl                                              ; $46f2: $2f
	cp [hl]                                          ; $46f3: $be
	sbc l                                            ; $46f4: $9d
	sbc [hl]                                         ; $46f5: $9e
	sbc $57                                          ; $46f6: $de $57
	ld h, b                                          ; $46f8: $60
	sbc e                                            ; $46f9: $9b
	add hl, sp                                       ; $46fa: $39
	sub $d6                                          ; $46fb: $d6 $d6
	or $57                                           ; $46fd: $f6 $57
	ldh a, [$9b]                                     ; $46ff: $f0 $9b
	or [hl]                                          ; $4701: $b6
	or l                                             ; $4702: $b5
	sub l                                            ; $4703: $95
	sub l                                            ; $4704: $95
	ld d, a                                          ; $4705: $57
	ldh a, [$9b]                                     ; $4706: $f0 $9b
	ld h, e                                          ; $4708: $63
	xor l                                            ; $4709: $ad
	xor l                                            ; $470a: $ad
	db $ed                                           ; $470b: $ed
	ld d, a                                          ; $470c: $57
	ldh a, [$9e]                                     ; $470d: $f0 $9e
	sub b                                            ; $470f: $90
	sbc $6d                                          ; $4710: $de $6d
	ld d, a                                          ; $4712: $57
	ldh a, [$9e]                                     ; $4713: $f0 $9e
	dec [hl]                                         ; $4715: $35
	sbc $b5                                          ; $4716: $de $b5
	ld d, a                                          ; $4718: $57
	ldh a, [$9e]                                     ; $4719: $f0 $9e
	ldh a, [c]                                       ; $471b: $f2
	sbc $ed                                          ; $471c: $de $ed
	ld d, a                                          ; $471e: $57
	ldh a, [$9e]                                     ; $471f: $f0 $9e
	dec bc                                           ; $4721: $0b
	sbc $ba                                          ; $4722: $de $ba
	ld d, a                                          ; $4724: $57
	ldh a, [$9b]                                     ; $4725: $f0 $9b
	ld [hl], $d6                                     ; $4727: $36 $d6
	jp nc, Jump_02a_57d2                             ; $4729: $d2 $d2 $57

	ldh a, [$9b]                                     ; $472c: $f0 $9b
	call $bdb5                                       ; $472e: $cd $b5 $bd
	cp l                                             ; $4731: $bd
	ld b, $c0                                        ; $4732: $06 $c0
	sub a                                            ; $4734: $97
	add hl, bc                                       ; $4735: $09
	ld [de], a                                       ; $4736: $12
	inc de                                           ; $4737: $13
	dec d                                            ; $4738: $15
	inc d                                            ; $4739: $14
	dec h                                            ; $473a: $25
	dec h                                            ; $473b: $25
	add hl, hl                                       ; $473c: $29
	ld a, b                                          ; $473d: $78
	ld l, c                                          ; $473e: $69
	halt                                             ; $473f: $76
	pop bc                                           ; $4740: $c1
	sub h                                            ; $4741: $94
	rst $38                                          ; $4742: $ff
	jp hl                                            ; $4743: $e9


	jp z, $9553                                      ; $4744: $ca $53 $95

	sub l                                            ; $4747: $95
	ld h, h                                          ; $4748: $64
	inc h                                            ; $4749: $24
	xor b                                            ; $474a: $a8
	ccf                                              ; $474b: $3f
	ld a, a                                          ; $474c: $7f
	sbc $fe                                          ; $474d: $de $fe
	rst SubAFromDE                                          ; $474f: $df
	cp [hl]                                          ; $4750: $be
	add b                                            ; $4751: $80
	inc a                                            ; $4752: $3c

jr_02a_4753:
	xor h                                            ; $4753: $ac
	call z, $d8d4                                    ; $4754: $cc $d4 $d8
	ld c, d                                          ; $4757: $4a
	ret z                                            ; $4758: $c8

	xor b                                            ; $4759: $a8
	adc b                                            ; $475a: $88
	ld [hl], a                                       ; $475b: $77
	ld [hl], a                                       ; $475c: $77
	ld l, a                                          ; $475d: $6f
	ld l, a                                          ; $475e: $6f
	db $ed                                           ; $475f: $ed
	xor l                                            ; $4760: $ad
	adc l                                            ; $4761: $8d
	adc h                                            ; $4762: $8c
	di                                               ; $4763: $f3
	di                                               ; $4764: $f3
	jp nc, $b8ba                                     ; $4765: $d2 $ba $b8

	jr c, @-$42                                      ; $4768: $38 $bc

	jr c, jr_02a_4788                                ; $476a: $38 $1c

	inc e                                            ; $476c: $1c
	inc a                                            ; $476d: $3c
	inc l                                            ; $476e: $2c
	ld l, $ac                                        ; $476f: $2e $ac
	rst SubAFromDE                                          ; $4771: $df
	jr z, jr_02a_4753                                ; $4772: $28 $df

	sbc [hl]                                         ; $4774: $9e
	rst SubAFromDE                                          ; $4775: $df
	sbc d                                            ; $4776: $9a
	sbc e                                            ; $4777: $9b
	xor e                                            ; $4778: $ab
	jp nz, $caeb                                     ; $4779: $c2 $eb $ca

	db $dd                                           ; $477c: $dd
	db $e3                                           ; $477d: $e3
	sbc $c2                                          ; $477e: $de $c2
	sub e                                            ; $4780: $93
	db $e3                                           ; $4781: $e3
	add $6e                                          ; $4782: $c6 $6e
	ld h, [hl]                                       ; $4784: $66
	inc hl                                           ; $4785: $23
	inc hl                                           ; $4786: $23
	dec hl                                           ; $4787: $2b

jr_02a_4788:
	inc hl                                           ; $4788: $23
	ld [hl], e                                       ; $4789: $73
	ld a, e                                          ; $478a: $7b
	or e                                             ; $478b: $b3
	inc sp                                           ; $478c: $33
	sbc $31                                          ; $478d: $de $31
	rst SubAFromDE                                          ; $478f: $df
	add hl, sp                                       ; $4790: $39
	sub a                                            ; $4791: $97
	ld a, e                                          ; $4792: $7b
	ld a, c                                          ; $4793: $79
	inc [hl]                                         ; $4794: $34
	ld a, $1c                                        ; $4795: $3e $1c
	sbc l                                            ; $4797: $9d
	inc e                                            ; $4798: $1c
	inc e                                            ; $4799: $1c
	sbc $2c                                          ; $479a: $de $2c
	add b                                            ; $479c: $80
	inc d                                            ; $479d: $14
	ld d, [hl]                                       ; $479e: $56
	ld d, [hl]                                       ; $479f: $56
	rst SubAFromHL                                          ; $47a0: $d7
	rst FarCall                                          ; $47a1: $f7
	ld c, e                                          ; $47a2: $4b
	ld l, e                                          ; $47a3: $6b
	ld c, e                                          ; $47a4: $4b
	ld c, c                                          ; $47a5: $49
	ld l, c                                          ; $47a6: $69
	set 3, a                                         ; $47a7: $cb $df
	db $db                                           ; $47a9: $db
	ld l, l                                          ; $47aa: $6d
	ld c, c                                          ; $47ab: $49
	ld c, c                                          ; $47ac: $49
	ret                                              ; $47ad: $c9


	ret                                              ; $47ae: $c9


	jp hl                                            ; $47af: $e9


	jp hl                                            ; $47b0: $e9


	db $ed                                           ; $47b1: $ed

jr_02a_47b2:
	cp h                                             ; $47b2: $bc
	inc a                                            ; $47b3: $3c
	ld a, $1a                                        ; $47b4: $3e $1a
	ld a, d                                          ; $47b6: $7a
	ld a, [hl-]                                      ; $47b7: $3a
	or d                                             ; $47b8: $b2
	ld a, [hl-]                                      ; $47b9: $3a
	ld c, [hl]                                       ; $47ba: $4e
	ld c, [hl]                                       ; $47bb: $4e
	rst SubAFromDE                                          ; $47bc: $df
	ld c, $9b                                        ; $47bd: $0e $9b
	rrca                                             ; $47bf: $0f
	ld c, a                                          ; $47c0: $4f
	ld e, a                                          ; $47c1: $5f
	rst SubAFromHL                                          ; $47c2: $d7
	ld sp, hl                                        ; $47c3: $f9
	sbc $f6                                          ; $47c4: $de $f6
	sbc l                                            ; $47c6: $9d
	sub $39                                          ; $47c7: $d6 $39
	ld e, e                                          ; $47c9: $5b
	ld d, b                                          ; $47ca: $50
	sbc $a5                                          ; $47cb: $de $a5
	sbc l                                            ; $47cd: $9d
	or l                                             ; $47ce: $b5
	or [hl]                                          ; $47cf: $b6
	ld e, e                                          ; $47d0: $5b
	ldh a, [$9e]                                     ; $47d1: $f0 $9e
	inc hl                                           ; $47d3: $23
	sbc $ad                                          ; $47d4: $de $ad
	sbc [hl]                                         ; $47d6: $9e
	ld l, l                                          ; $47d7: $6d
	ld e, e                                          ; $47d8: $5b
	ldh a, [$9e]                                     ; $47d9: $f0 $9e
	dec c                                            ; $47db: $0d
	db $dd                                           ; $47dc: $dd
	ld l, l                                          ; $47dd: $6d
	ld e, e                                          ; $47de: $5b
	ldh a, [$dd]                                     ; $47df: $f0 $dd
	or l                                             ; $47e1: $b5
	sbc [hl]                                         ; $47e2: $9e
	call z, $f05b                                    ; $47e3: $cc $5b $f0

jr_02a_47e6:
	sbc [hl]                                         ; $47e6: $9e
	pop hl                                           ; $47e7: $e1
	sbc $ed                                          ; $47e8: $de $ed
	sbc [hl]                                         ; $47ea: $9e
	dec l                                            ; $47eb: $2d
	ld e, e                                          ; $47ec: $5b
	ldh a, [$dd]                                     ; $47ed: $f0 $dd
	cp d                                             ; $47ef: $ba
	sbc [hl]                                         ; $47f0: $9e
	cp e                                             ; $47f1: $bb
	ld e, e                                          ; $47f2: $5b
	ldh a, [$de]                                     ; $47f3: $f0 $de
	call nc, $d69d                                   ; $47f5: $d4 $9d $d6
	ld [hl], $5b                                     ; $47f8: $36 $5b
	ldh a, [$9a]                                     ; $47fa: $f0 $9a
	call $f5f5                                       ; $47fc: $cd $f5 $f5
	or a                                             ; $47ff: $b7
	call $f05b                                       ; $4800: $cd $5b $f0
	jp hl                                            ; $4803: $e9


	sub a                                            ; $4804: $97
	dec hl                                           ; $4805: $2b
	ld a, [hl+]                                      ; $4806: $2a
	ld a, [hl+]                                      ; $4807: $2a
	dec hl                                           ; $4808: $2b
	ld l, d                                          ; $4809: $6a
	ld a, [hl+]                                      ; $480a: $2a
	ld c, d                                          ; $480b: $4a
	ld c, d                                          ; $480c: $4a
	db $dd                                           ; $480d: $dd
	ld a, $7e                                        ; $480e: $3e $7e
	call z, Call_02a_7fdf                            ; $4810: $cc $df $7f
	rst SubAFromDE                                          ; $4813: $df
	jr z, jr_02a_47b2                                ; $4814: $28 $9c

	xor d                                            ; $4816: $aa
	jr z, jr_02a_4882                                ; $4817: $28 $69

	sbc $29                                          ; $4819: $de $29
	sbc $3c                                          ; $481b: $de $3c
	rst SubAFromDE                                          ; $481d: $df
	cp [hl]                                          ; $481e: $be
	sbc $fe                                          ; $481f: $de $fe
	sbc h                                            ; $4821: $9c
	xor b                                            ; $4822: $a8
	ret c                                            ; $4823: $d8

	sbc d                                            ; $4824: $9a
	sbc $98                                          ; $4825: $de $98
	sbc d                                            ; $4827: $9a
	sub h                                            ; $4828: $94
	call c, $ad8c                                    ; $4829: $dc $8c $ad
	db $ed                                           ; $482c: $ed
	sbc $ef                                          ; $482d: $de $ef
	adc e                                            ; $482f: $8b
	rst $38                                          ; $4830: $ff
	rst FarCall                                          ; $4831: $f7
	ld a, [hl-]                                      ; $4832: $3a
	inc a                                            ; $4833: $3c
	ld a, c                                          ; $4834: $79
	ld a, c                                          ; $4835: $79
	ld a, b                                          ; $4836: $78
	add hl, sp                                       ; $4837: $39
	add hl, sp                                       ; $4838: $39
	ld [hl], c                                       ; $4839: $71
	jr z, jr_02a_47e6                                ; $483a: $28 $aa

	xor [hl]                                         ; $483c: $ae
	xor [hl]                                         ; $483d: $ae
	xor a                                            ; $483e: $af
	rst AddAOntoHL                                          ; $483f: $ef
	rst AddAOntoHL                                          ; $4840: $ef
	rst SubAFromDE                                          ; $4841: $df
	sbc $cc                                          ; $4842: $de $cc
	db $dd                                           ; $4844: $dd
	db $ec                                           ; $4845: $ec
	sub l                                            ; $4846: $95
	db $fc                                           ; $4847: $fc
	db $fd                                           ; $4848: $fd
	db $e3                                           ; $4849: $e3
	rst FarCall                                          ; $484a: $f7
	or a                                             ; $484b: $b7
	or a                                             ; $484c: $b7
	cp a                                             ; $484d: $bf
	ccf                                              ; $484e: $3f
	scf                                              ; $484f: $37
	scf                                              ; $4850: $37
	sbc $73                                          ; $4851: $de $73
	add b                                            ; $4853: $80
	ld [hl], c                                       ; $4854: $71
	ld [hl], e                                       ; $4855: $73
	or e                                             ; $4856: $b3
	rst FarCall                                          ; $4857: $f7
	ld a, [hl]                                       ; $4858: $7e
	dec a                                            ; $4859: $3d
	cp l                                             ; $485a: $bd
	db $dd                                           ; $485b: $dd
	rst SubAFromDE                                          ; $485c: $df
	rst SubAFromDE                                          ; $485d: $df
	sbc $9c                                          ; $485e: $de $9c
	sbc c                                            ; $4860: $99
	cp c                                             ; $4861: $b9
	cp c                                             ; $4862: $b9
	xor e                                            ; $4863: $ab
	ld a, d                                          ; $4864: $7a
	rst $38                                          ; $4865: $ff
	rst $38                                          ; $4866: $ff
	rst GetHLinHL                                          ; $4867: $cf
	ei                                               ; $4868: $fb
	rst AddAOntoHL                                          ; $4869: $ef
	rst AddAOntoHL                                          ; $486a: $ef
	cp $ff                                           ; $486b: $fe $ff
	rst AddAOntoHL                                          ; $486d: $ef
	ld c, h                                          ; $486e: $4c
	ld a, c                                          ; $486f: $79
	db $fd                                           ; $4870: $fd
	reti                                             ; $4871: $d9


	jp c, $ca95                                      ; $4872: $da $95 $ca

	jp nc, $b494                                     ; $4875: $d2 $94 $b4

	ld l, c                                          ; $4878: $69
	rst FarCall                                          ; $4879: $f7
	ld l, a                                          ; $487a: $6f
	ld l, a                                          ; $487b: $6f
	ld a, a                                          ; $487c: $7f
	ld a, a                                          ; $487d: $7f
	sbc $ff                                          ; $487e: $de $ff
	sbc c                                            ; $4880: $99
	cp a                                             ; $4881: $bf

jr_02a_4882:
	ld a, [hl-]                                      ; $4882: $3a
	ld l, [hl]                                       ; $4883: $6e
	ld l, a                                          ; $4884: $6f
	ld c, [hl]                                       ; $4885: $4e
	ld c, l                                          ; $4886: $4d
	sbc $df                                          ; $4887: $de $df
	sub a                                            ; $4889: $97
	sub $b2                                          ; $488a: $d6 $b2
	or d                                             ; $488c: $b2
	di                                               ; $488d: $f3
	di                                               ; $488e: $f3
	pop hl                                           ; $488f: $e1
	pop hl                                           ; $4890: $e1
	push hl                                          ; $4891: $e5
	ldh [rHDMA1], a                                  ; $4892: $e0 $51
	rst SubAFromDE                                          ; $4894: $df
	ld c, c                                          ; $4895: $49
	rst SubAFromDE                                          ; $4896: $df
	call Call_02a_4d9b                               ; $4897: $cd $9b $4d
	ld c, [hl]                                       ; $489a: $4e
	adc $cd                                          ; $489b: $ce $cd
	db $dd                                           ; $489d: $dd
	ld a, a                                          ; $489e: $7f
	ld a, e                                          ; $489f: $7b
	ld sp, $bf96                                     ; $48a0: $31 $96 $bf
	add hl, hl                                       ; $48a3: $29
	add hl, hl                                       ; $48a4: $29
	dec d                                            ; $48a5: $15
	sub h                                            ; $48a6: $94
	sub h                                            ; $48a7: $94
	jp z, $69ca                                      ; $48a8: $ca $ca $69

	sbc $fe                                          ; $48ab: $de $fe
	call c, $80ff                                    ; $48ad: $dc $ff $80
	call c, $dade                                    ; $48b0: $dc $de $da
	add $eb                                          ; $48b3: $c6 $eb
	ld l, a                                          ; $48b5: $6f
	ld a, [hl]                                       ; $48b6: $7e
	ld a, l                                          ; $48b7: $7d
	rst FarCall                                          ; $48b8: $f7
	di                                               ; $48b9: $f3
	rst FarCall                                          ; $48ba: $f7
	rst $38                                          ; $48bb: $ff
	cp l                                             ; $48bc: $bd
	ld sp, hl                                        ; $48bd: $f9
	reti                                             ; $48be: $d9


	jp c, Jump_02a_7372                              ; $48bf: $da $72 $73

	ld [hl], a                                       ; $48c2: $77
	ld a, a                                          ; $48c3: $7f
	ld a, l                                          ; $48c4: $7d
	ld a, a                                          ; $48c5: $7f
	db $eb                                           ; $48c6: $eb
	rst JumpTable                                          ; $48c7: $c7
	rst $38                                          ; $48c8: $ff
	cp $dc                                           ; $48c9: $fe $dc
	ret c                                            ; $48cb: $d8

	cp $ff                                           ; $48cc: $fe $ff
	rst FarCall                                          ; $48ce: $f7
	add [hl]                                         ; $48cf: $86
	db $e3                                           ; $48d0: $e3
	db $fd                                           ; $48d1: $fd
	rst FarCall                                          ; $48d2: $f7
	db $dd                                           ; $48d3: $dd
	rst $38                                          ; $48d4: $ff
	rst $38                                          ; $48d5: $ff
	rst FarCall                                          ; $48d6: $f7
	rst $38                                          ; $48d7: $ff
	ld a, a                                          ; $48d8: $7f
	scf                                              ; $48d9: $37
	ld l, $6e                                        ; $48da: $2e $6e
	ld c, h                                          ; $48dc: $4c
	ld c, b                                          ; $48dd: $48
	adc b                                            ; $48de: $88
	add b                                            ; $48df: $80
	add b                                            ; $48e0: $80
	ei                                               ; $48e1: $fb
	rst FarCall                                          ; $48e2: $f7
	xor $fa                                          ; $48e3: $ee $fa
	rst $38                                          ; $48e5: $ff
	ldh a, [$f3]                                     ; $48e6: $f0 $f3
	pop hl                                           ; $48e8: $e1
	sbc $1f                                          ; $48e9: $de $1f
	adc h                                            ; $48eb: $8c
	ld e, $0a                                        ; $48ec: $1e $0a
	inc bc                                           ; $48ee: $03
	ld bc, $ff01                                     ; $48ef: $01 $01 $ff
	ld c, e                                          ; $48f2: $4b
	rlca                                             ; $48f3: $07
	ld c, $1b                                        ; $48f4: $0e $1b
	cp a                                             ; $48f6: $bf
	ld a, a                                          ; $48f7: $7f
	ld a, [hl-]                                      ; $48f8: $3a
	rst $38                                          ; $48f9: $ff
	add a                                            ; $48fa: $87
	rrca                                             ; $48fb: $0f
	dec de                                           ; $48fc: $1b
	ld [hl-], a                                      ; $48fd: $32
	ld a, [hl]                                       ; $48fe: $7e
	ld a, e                                          ; $48ff: $7b
	xor e                                            ; $4900: $ab
	sub b                                            ; $4901: $90
	cp a                                             ; $4902: $bf
	cp $75                                           ; $4903: $fe $75
	ld a, a                                          ; $4905: $7f
	cp a                                             ; $4906: $bf
	ld a, l                                          ; $4907: $7d
	dec de                                           ; $4908: $1b
	ld a, a                                          ; $4909: $7f
	rst JumpTable                                          ; $490a: $c7
	rst FarCall                                          ; $490b: $f7
	xor $cc                                          ; $490c: $ee $cc
	ld c, a                                          ; $490e: $4f
	ld c, $0c                                        ; $490f: $0e $0c
	ld a, b                                          ; $4911: $78
	dec a                                            ; $4912: $3d
	sub a                                            ; $4913: $97
	push hl                                          ; $4914: $e5
	ld h, l                                          ; $4915: $65
	ld l, c                                          ; $4916: $69
	db $dd                                           ; $4917: $dd
	ld c, c                                          ; $4918: $49
	push hl                                          ; $4919: $e5
	push bc                                          ; $491a: $c5
	push bc                                          ; $491b: $c5
	sbc $cd                                          ; $491c: $de $cd
	sbc l                                            ; $491e: $9d
	ld c, c                                          ; $491f: $49
	reti                                             ; $4920: $d9


	ldh [$61], a                                     ; $4921: $e0 $61
	rst SubAFromDE                                          ; $4923: $df
	ld bc, $fd7b                                     ; $4924: $01 $7b $fd
	rst SubAFromDE                                          ; $4927: $df
	ld bc, $039e                                     ; $4928: $01 $9e $03
	ld [hl], a                                       ; $492b: $77
	or $dd                                           ; $492c: $f6 $dd
	ld bc, $cd97                                     ; $492e: $01 $97 $cd
	ret                                              ; $4931: $c9


	ret                                              ; $4932: $c9


	push de                                          ; $4933: $d5
	sub l                                            ; $4934: $95
	sub l                                            ; $4935: $95
	sbc l                                            ; $4936: $9d
	xor l                                            ; $4937: $ad
	sbc $bf                                          ; $4938: $de $bf
	sub d                                            ; $493a: $92
	dec sp                                           ; $493b: $3b
	ld a, e                                          ; $493c: $7b
	ld a, e                                          ; $493d: $7b
	ld [hl], e                                       ; $493e: $73
	ld [hl], e                                       ; $493f: $73
	push hl                                          ; $4940: $e5
	or d                                             ; $4941: $b2
	cp e                                             ; $4942: $bb
	cp a                                             ; $4943: $bf
	cp e                                             ; $4944: $bb
	db $db                                           ; $4945: $db
	reti                                             ; $4946: $d9


	reti                                             ; $4947: $d9


	call c, $deff                                    ; $4948: $dc $ff $de
	cp a                                             ; $494b: $bf
	add b                                            ; $494c: $80
	ld l, d                                          ; $494d: $6a
	cp l                                             ; $494e: $bd
	or a                                             ; $494f: $b7
	db $db                                           ; $4950: $db
	ld a, [hl]                                       ; $4951: $7e
	cp $f6                                           ; $4952: $fe $f6
	sbc a                                            ; $4954: $9f
	db $dd                                           ; $4955: $dd
	db $eb                                           ; $4956: $eb
	rst AddAOntoHL                                          ; $4957: $ef
	rst FarCall                                          ; $4958: $f7
	di                                               ; $4959: $f3
	jr nc, @+$7a                                     ; $495a: $30 $78

	ld a, b                                          ; $495c: $78
	call $bf9f                                       ; $495d: $cd $9f $bf
	db $fd                                           ; $4960: $fd
	sbc $69                                          ; $4961: $de $69
	add hl, bc                                       ; $4963: $09
	ld [hl], d                                       ; $4964: $72
	add a                                            ; $4965: $87
	adc c                                            ; $4966: $89
	sbc a                                            ; $4967: $9f
	rst $38                                          ; $4968: $ff
	db $fd                                           ; $4969: $fd
	call z, $9c51                                    ; $496a: $cc $51 $9c
	inc hl                                           ; $496d: $23
	ld hl, sp+$60                                    ; $496e: $f8 $60
	cp $9c                                           ; $4970: $fe $9c
	inc b                                            ; $4972: $04
	add $0d                                          ; $4973: $c6 $0d
	ld a, [$029d]                                    ; $4975: $fa $9d $02
	ld bc, $9bf2                                     ; $4978: $01 $f2 $9b
	ld c, h                                          ; $497b: $4c
	sub [hl]                                         ; $497c: $96
	rst SubAFromBC                                          ; $497d: $e7
	ld [hl], h                                       ; $497e: $74

Jump_02a_497f:
	db $fd                                           ; $497f: $fd
	sbc e                                            ; $4980: $9b
	sub d                                            ; $4981: $92
	and d                                            ; $4982: $a2

jr_02a_4983:
	ld b, h                                          ; $4983: $44
	jr c, jr_02a_4983                                ; $4984: $38 $fd

	sub e                                            ; $4986: $93
	dec de                                           ; $4987: $1b
	ld a, [de]                                       ; $4988: $1a
	add hl, de                                       ; $4989: $19
	dec de                                           ; $498a: $1b
	rlca                                             ; $498b: $07
	rra                                              ; $498c: $1f
	ccf                                              ; $498d: $3f
	ccf                                              ; $498e: $3f
	inc c                                            ; $498f: $0c
	dec c                                            ; $4990: $0d
	rrca                                             ; $4991: $0f
	rrca                                             ; $4992: $0f
	db $dd                                           ; $4993: $dd
	rra                                              ; $4994: $1f
	adc a                                            ; $4995: $8f
	sub c                                            ; $4996: $91
	reti                                             ; $4997: $d9


	or c                                             ; $4998: $b1
	and l                                            ; $4999: $a5
	cp l                                             ; $499a: $bd
	ld [hl], l                                       ; $499b: $75
	ld d, a                                          ; $499c: $57
	ld [hl], a                                       ; $499d: $77
	reti                                             ; $499e: $d9


	sub c                                            ; $499f: $91
	sub c                                            ; $49a0: $91
	or c                                             ; $49a1: $b1
	and c                                            ; $49a2: $a1
	xor c                                            ; $49a3: $a9
	ld l, c                                          ; $49a4: $69
	ld c, c                                          ; $49a5: $49
	ldh [$d2], a                                     ; $49a6: $e0 $d2
	sbc [hl]                                         ; $49a8: $9e
	ld [bc], a                                       ; $49a9: $02
	ldh a, [c]                                       ; $49aa: $f2

jr_02a_49ab:
	sbc [hl]                                         ; $49ab: $9e
	ld sp, $9ef2                                     ; $49ac: $31 $f2 $9e
	sub b                                            ; $49af: $90
	ldh a, [c]                                       ; $49b0: $f2
	sbc [hl]                                         ; $49b1: $9e
	ld [$9ef2], sp                                   ; $49b2: $08 $f2 $9e
	add $f2                                          ; $49b5: $c6 $f2
	sbc [hl]                                         ; $49b7: $9e
	jr nc, jr_02a_49ab                               ; $49b8: $30 $f1

	dec d                                            ; $49ba: $15
	nop                                              ; $49bb: $00
	push af                                          ; $49bc: $f5

jr_02a_49bd:
	rst SubAFromDE                                          ; $49bd: $df
	inc sp                                           ; $49be: $33
	sbc [hl]                                         ; $49bf: $9e
	jr nc, jr_02a_49bd                               ; $49c0: $30 $fb

	sbc e                                            ; $49c2: $9b
	inc bc                                           ; $49c3: $03
	inc sp                                           ; $49c4: $33
	nop                                              ; $49c5: $00
	inc sp                                           ; $49c6: $33
	db $fc                                           ; $49c7: $fc
	call $e766                                       ; $49c8: $cd $66 $e7
	sbc $11                                          ; $49cb: $de $11
	sbc [hl]                                         ; $49cd: $9e
	db $10                                           ; $49ce: $10
	cp [hl]                                          ; $49cf: $be
	add [hl]                                         ; $49d0: $86
	pop af                                           ; $49d1: $f1
	sub l                                            ; $49d2: $95
	ld bc, $0302                                     ; $49d3: $01 $02 $03
	inc bc                                           ; $49d6: $03
	rlca                                             ; $49d7: $07
	inc bc                                           ; $49d8: $03
	dec b                                            ; $49d9: $05
	ld b, $03                                        ; $49da: $06 $03
	inc bc                                           ; $49dc: $03
	sbc $02                                          ; $49dd: $de $02
	rst SubAFromDE                                          ; $49df: $df
	ld b, $99                                        ; $49e0: $06 $99
	dec b                                            ; $49e2: $05
	xor c                                            ; $49e3: $a9
	cp c                                             ; $49e4: $b9
	cp c                                             ; $49e5: $b9
	ld sp, $de51                                     ; $49e6: $31 $51 $de
	ld [hl], c                                       ; $49e9: $71
	sbc d                                            ; $49ea: $9a
	ld [hl], a                                       ; $49eb: $77
	ld h, a                                          ; $49ec: $67
	ld h, a                                          ; $49ed: $67
	rst AddAOntoHL                                          ; $49ee: $ef
	rst AddAOntoHL                                          ; $49ef: $ef
	sbc $cf                                          ; $49f0: $de $cf
	sbc e                                            ; $49f2: $9b
	reti                                             ; $49f3: $d9


	ld sp, hl                                        ; $49f4: $f9
	ld a, c                                          ; $49f5: $79
	ld sp, hl                                        ; $49f6: $f9
	sbc $d9                                          ; $49f7: $de $d9
	sbc d                                            ; $49f9: $9a
	pop de                                           ; $49fa: $d1
	cp a                                             ; $49fb: $bf
	sbc a                                            ; $49fc: $9f
	sbc a                                            ; $49fd: $9f
	rra                                              ; $49fe: $1f
	db $dd                                           ; $49ff: $dd
	ccf                                              ; $4a00: $3f
	sub d                                            ; $4a01: $92
	db $eb                                           ; $4a02: $eb
	or a                                             ; $4a03: $b7
	rst SubAFromDE                                          ; $4a04: $df
	xor d                                            ; $4a05: $aa
	or a                                             ; $4a06: $b7
	cp l                                             ; $4a07: $bd
	or e                                             ; $4a08: $b3
	ld sp, $cc9c                                     ; $4a09: $31 $9c $cc
	and $f7                                          ; $4a0c: $e6 $f7
	ld sp, hl                                        ; $4a0e: $f9
	sbc $ff                                          ; $4a0f: $de $ff
	sub [hl]                                         ; $4a11: $96
	sbc d                                            ; $4a12: $9a
	ldh [$f0], a                                     ; $4a13: $e0 $f0
	ld hl, sp-$08                                    ; $4a15: $f8 $f8
	ld a, h                                          ; $4a17: $7c
	db $fc                                           ; $4a18: $fc
	cp $3c                                           ; $4a19: $fe $3c
	db $fd                                           ; $4a1b: $fd
	rst SubAFromDE                                          ; $4a1c: $df
	add b                                            ; $4a1d: $80
	sub h                                            ; $4a1e: $94
	ret nz                                           ; $4a1f: $c0

	dec c                                            ; $4a20: $0d
	rrca                                             ; $4a21: $0f
	inc bc                                           ; $4a22: $03
	nop                                              ; $4a23: $00
	ld bc, $0004                                     ; $4a24: $01 $04 $00
	nop                                              ; $4a27: $00
	inc bc                                           ; $4a28: $03
	ld bc, $7ffe                                     ; $4a29: $01 $fe $7f
	push af                                          ; $4a2c: $f5
	ld a, e                                          ; $4a2d: $7b
	db $ec                                           ; $4a2e: $ec
	sbc e                                            ; $4a2f: $9b
	inc b                                            ; $4a30: $04
	inc e                                            ; $4a31: $1c
	xor b                                            ; $4a32: $a8
	add b                                            ; $4a33: $80
	ld a, e                                          ; $4a34: $7b
	ld sp, hl                                        ; $4a35: $f9
	rst $38                                          ; $4a36: $ff
	sbc d                                            ; $4a37: $9a
	inc c                                            ; $4a38: $0c
	stop                                             ; $4a39: $10 $00
	nop                                              ; $4a3b: $00
	jr nz, jr_02a_4aa9                               ; $4a3c: $20 $6b

	adc d                                            ; $4a3e: $8a
	ld [hl], a                                       ; $4a3f: $77
	and $73                                          ; $4a40: $e6 $73
	rst FarCall                                          ; $4a42: $f7
	adc l                                            ; $4a43: $8d
	ld e, $6f                                        ; $4a44: $1e $6f
	ld l, a                                          ; $4a46: $6f
	dec l                                            ; $4a47: $2d
	rst GetHLinHL                                          ; $4a48: $cf
	ld c, e                                          ; $4a49: $4b
	adc l                                            ; $4a4a: $8d
	sub a                                            ; $4a4b: $97
	ccf                                              ; $4a4c: $3f
	ld a, $3e                                        ; $4a4d: $3e $3e
	ld a, [hl]                                       ; $4a4f: $7e
	ld a, l                                          ; $4a50: $7d
	db $fd                                           ; $4a51: $fd
	ei                                               ; $4a52: $fb
	ld a, [$a7e7]                                    ; $4a53: $fa $e7 $a7
	sbc $e7                                          ; $4a56: $de $e7
	ld a, a                                          ; $4a58: $7f
	db $fc                                           ; $4a59: $fc
	sub [hl]                                         ; $4a5a: $96
	ld h, a                                          ; $4a5b: $67
	ld e, c                                          ; $4a5c: $59
	reti                                             ; $4a5d: $d9


	sbc c                                            ; $4a5e: $99
	cp c                                             ; $4a5f: $b9
	add hl, sp                                       ; $4a60: $39
	ld a, c                                          ; $4a61: $79
	ld a, c                                          ; $4a62: $79
	ld sp, hl                                        ; $4a63: $f9
	jp hl                                            ; $4a64: $e9


	ld a, a                                          ; $4a65: $7f
	ld c, b                                          ; $4a66: $48
	rst SubAFromDE                                          ; $4a67: $df
	ld [bc], a                                       ; $4a68: $02
	ld [hl], a                                       ; $4a69: $77
	sbc l                                            ; $4a6a: $9d
	ld sp, hl                                        ; $4a6b: $f9
	sbc d                                            ; $4a6c: $9a
	add $22                                          ; $4a6d: $c6 $22
	ldh [c], a                                       ; $4a6f: $e2
	ld [hl+], a                                      ; $4a70: $22
	jp nz, $dff6                                     ; $4a71: $c2 $f6 $df

	ld c, d                                          ; $4a74: $4a
	sbc h                                            ; $4a75: $9c

jr_02a_4a76:
	add hl, sp                                       ; $4a76: $39
	ld c, d                                          ; $4a77: $4a
	ld sp, $dff6                                     ; $4a78: $31 $f6 $df
	ld d, h                                          ; $4a7b: $54
	sbc h                                            ; $4a7c: $9c
	sbc $44                                          ; $4a7d: $de $44
	add h                                            ; $4a7f: $84
	or $9a                                           ; $4a80: $f6 $9a
	add hl, de                                       ; $4a82: $19
	add hl, bc                                       ; $4a83: $09
	ld [$0809], sp                                   ; $4a84: $08 $09 $08
	or $df                                           ; $4a87: $f6 $df
	add hl, hl                                       ; $4a89: $29
	sbc h                                            ; $4a8a: $9c
	rst SubAFromBC                                          ; $4a8b: $e7
	add hl, hl                                       ; $4a8c: $29
	add $f6                                          ; $4a8d: $c6 $f6
	rst SubAFromDE                                          ; $4a8f: $df
	ld c, b                                          ; $4a90: $48
	sbc h                                            ; $4a91: $9c
	jr c, @+$4a                                      ; $4a92: $38 $48

	jr nc, jr_02a_4a76                               ; $4a94: $30 $e0

	sbc $9a                                          ; $4a96: $de $9a
	ld b, $0e                                        ; $4a98: $06 $0e
	ld b, $0a                                        ; $4a9a: $06 $0a
	ld c, $de                                        ; $4a9c: $0e $de
	inc c                                            ; $4a9e: $0c
	rst SubAFromDE                                          ; $4a9f: $df
	dec b                                            ; $4aa0: $05
	rst SubAFromDE                                          ; $4aa1: $df
	dec c                                            ; $4aa2: $0d
	sbc [hl]                                         ; $4aa3: $9e
	add hl, bc                                       ; $4aa4: $09
	sbc $0b                                          ; $4aa5: $de $0b
	sbc l                                            ; $4aa7: $9d
	or d                                             ; $4aa8: $b2

jr_02a_4aa9:
	di                                               ; $4aa9: $f3
	db $db                                           ; $4aaa: $db
	db $e3                                           ; $4aab: $e3
	sbc l                                            ; $4aac: $9d
	rst GetHLinHL                                          ; $4aad: $cf
	adc [hl]                                         ; $4aae: $8e
	db $db                                           ; $4aaf: $db
	sbc [hl]                                         ; $4ab0: $9e
	sbc $91                                          ; $4ab1: $de $91
	sbc d                                            ; $4ab3: $9a
	sub d                                            ; $4ab4: $92
	and d                                            ; $4ab5: $a2
	and d                                            ; $4ab6: $a2
	ld [hl+], a                                      ; $4ab7: $22
	inc h                                            ; $4ab8: $24
	db $db                                           ; $4ab9: $db
	ld a, a                                          ; $4aba: $7f
	rst SubAFromDE                                          ; $4abb: $df
	rst $38                                          ; $4abc: $ff
	sbc $22                                          ; $4abd: $de $22
	sbc d                                            ; $4abf: $9a
	inc h                                            ; $4ac0: $24
	ld b, h                                          ; $4ac1: $44
	ld c, l                                          ; $4ac2: $4d
	ld c, l                                          ; $4ac3: $4d
	ld e, c                                          ; $4ac4: $59
	reti                                             ; $4ac5: $d9


	rst $38                                          ; $4ac6: $ff
	sub a                                            ; $4ac7: $97
	ld e, [hl]                                       ; $4ac8: $5e
	cpl                                              ; $4ac9: $2f
	sub a                                            ; $4aca: $97
	sbc l                                            ; $4acb: $9d
	sub e                                            ; $4acc: $93
	ld [de], a                                       ; $4acd: $12
	ld [de], a                                       ; $4ace: $12
	ld h, $7a                                        ; $4acf: $26 $7a
	cp c                                             ; $4ad1: $b9
	sbc [hl]                                         ; $4ad2: $9e
	cp $dd                                           ; $4ad3: $fe $dd
	rst $38                                          ; $4ad5: $ff
	ld a, d                                          ; $4ad6: $7a
	sub $9a                                          ; $4ad7: $d6 $9a
	ret nz                                           ; $4ad9: $c0

	ld h, b                                          ; $4ada: $60
	ld hl, sp-$23                                    ; $4adb: $f8 $dd
	ei                                               ; $4add: $fb
	ld [hl], d                                       ; $4ade: $72
	or c                                             ; $4adf: $b1
	sbc h                                            ; $4ae0: $9c
	ldh [$3e], a                                     ; $4ae1: $e0 $3e
	rlca                                             ; $4ae3: $07
	ei                                               ; $4ae4: $fb
	sbc l                                            ; $4ae5: $9d
	inc bc                                           ; $4ae6: $03
	and e                                            ; $4ae7: $a3
	ld l, e                                          ; $4ae8: $6b
	ld a, [bc]                                       ; $4ae9: $0a
	sub l                                            ; $4aea: $95
	add $07                                          ; $4aeb: $c6 $07
	rrca                                             ; $4aed: $0f
	dec de                                           ; $4aee: $1b
	scf                                              ; $4aef: $37
	cpl                                              ; $4af0: $2f
	ld l, [hl]                                       ; $4af1: $6e
	jp z, $030d                                      ; $4af2: $ca $0d $03

	ld a, e                                          ; $4af5: $7b
	rst FarCall                                          ; $4af6: $f7
	add b                                            ; $4af7: $80
	ld [hl], e                                       ; $4af8: $73
	jp $0787                                         ; $4af9: $c3 $87 $07


	sub a                                            ; $4afc: $97
	xor [hl]                                         ; $4afd: $ae
	cpl                                              ; $4afe: $2f
	ld e, l                                          ; $4aff: $5d
	ld e, [hl]                                       ; $4b00: $5e
	cp d                                             ; $4b01: $ba
	cp l                                             ; $4b02: $bd
	dec [hl]                                         ; $4b03: $35
	ld a, [$f5f5]                                    ; $4b04: $fa $f5 $f5
	db $eb                                           ; $4b07: $eb
	db $eb                                           ; $4b08: $eb
	rst SubAFromHL                                          ; $4b09: $d7
	rst SubAFromHL                                          ; $4b0a: $d7
	rst AddAOntoHL                                          ; $4b0b: $ef
	rst SubAFromBC                                          ; $4b0c: $e7
	rst FarCall                                          ; $4b0d: $f7
	rst FarCall                                          ; $4b0e: $f7
	di                                               ; $4b0f: $f3
	di                                               ; $4b10: $f3
	rst FarCall                                          ; $4b11: $f7
	ld [hl], a                                       ; $4b12: $77
	ld [hl], a                                       ; $4b13: $77
	ld sp, hl                                        ; $4b14: $f9
	jp hl                                            ; $4b15: $e9


	jp hl                                            ; $4b16: $e9


	call c, $e0ed                                    ; $4b17: $dc $ed $e0
	ret z                                            ; $4b1a: $c8

	sbc d                                            ; $4b1b: $9a
	sub e                                            ; $4b1c: $93
	and h                                            ; $4b1d: $a4
	call nz, $93a4                                   ; $4b1e: $c4 $a4 $93
	or $9a                                           ; $4b21: $f6 $9a
	inc h                                            ; $4b23: $24
	or l                                             ; $4b24: $b5
	xor l                                            ; $4b25: $ad
	and l                                            ; $4b26: $a5
	dec h                                            ; $4b27: $25
	or $9a                                           ; $4b28: $f6 $9a
	ret z                                            ; $4b2a: $c8

	dec l                                            ; $4b2b: $2d
	ld [$2828], a                                    ; $4b2c: $ea $28 $28
	or $9e                                           ; $4b2f: $f6 $9e
	cp b                                             ; $4b31: $b8
	sbc $90                                          ; $4b32: $de $90
	sbc [hl]                                         ; $4b34: $9e
	cp b                                             ; $4b35: $b8
	ldh [$cf], a                                     ; $4b36: $e0 $cf
	sbc $0d                                          ; $4b38: $de $0d
	sbc d                                            ; $4b3a: $9a
	rrca                                             ; $4b3b: $0f
	dec bc                                           ; $4b3c: $0b
	rlca                                             ; $4b3d: $07
	rrca                                             ; $4b3e: $0f
	rlca                                             ; $4b3f: $07
	sbc $0b                                          ; $4b40: $de $0b
	sbc b                                            ; $4b42: $98
	add hl, bc                                       ; $4b43: $09
	dec c                                            ; $4b44: $0d
	dec c                                            ; $4b45: $0d
	dec b                                            ; $4b46: $05
	dec b                                            ; $4b47: $05
	push hl                                          ; $4b48: $e5
	rst SubAFromBC                                          ; $4b49: $e7
	call c, $9ce6                                    ; $4b4a: $dc $e6 $9c
	and h                                            ; $4b4d: $a4
	sbc [hl]                                         ; $4b4e: $9e
	sbc h                                            ; $4b4f: $9c
	call c, $9c9d                                    ; $4b50: $dc $9d $9c
	rst SubAFromDE                                          ; $4b53: $df
	ld b, h                                          ; $4b54: $44
	ld b, h                                          ; $4b55: $44
	sbc $48                                          ; $4b56: $de $48
	rst SubAFromDE                                          ; $4b58: $df
	adc b                                            ; $4b59: $88
	sbc [hl]                                         ; $4b5a: $9e
	sub c                                            ; $4b5b: $91
	reti                                             ; $4b5c: $d9


	rst $38                                          ; $4b5d: $ff
	sbc d                                            ; $4b5e: $9a
	sbc c                                            ; $4b5f: $99
	sbc d                                            ; $4b60: $9a
	cp d                                             ; $4b61: $ba
	cp d                                             ; $4b62: $ba
	or d                                             ; $4b63: $b2
	sbc $f7                                          ; $4b64: $de $f7
	reti                                             ; $4b66: $d9


	rst $38                                          ; $4b67: $ff
	rst SubAFromDE                                          ; $4b68: $df
	daa                                              ; $4b69: $27
	rst SubAFromDE                                          ; $4b6a: $df
	ld l, a                                          ; $4b6b: $6f
	reti                                             ; $4b6c: $d9


	rst $38                                          ; $4b6d: $ff
	sbc e                                            ; $4b6e: $9b
	db $fd                                           ; $4b6f: $fd
	pop af                                           ; $4b70: $f1

jr_02a_4b71:
	jp hl                                            ; $4b71: $e9


	db $d3                                           ; $4b72: $d3
	call c, $9dff                                    ; $4b73: $dc $ff $9d
	ld a, [hl]                                       ; $4b76: $7e
	jr c, jr_02a_4b71                                ; $4b77: $38 $f8

	sbc e                                            ; $4b79: $9b
	cp $f8                                           ; $4b7a: $fe $f8
	ldh [$c0], a                                     ; $4b7c: $e0 $c0
	ld a, c                                          ; $4b7e: $79
	add h                                            ; $4b7f: $84
	sbc l                                            ; $4b80: $9d
	nop                                              ; $4b81: $00
	ld a, h                                          ; $4b82: $7c
	ld a, [$0597]                                    ; $4b83: $fa $97 $05
	ld a, [bc]                                       ; $4b86: $0a
	ld a, [bc]                                       ; $4b87: $0a
	inc c                                            ; $4b88: $0c
	inc c                                            ; $4b89: $0c
	jr jr_02a_4ba5                                   ; $4b8a: $18 $19

	ld de, $0fdd                                     ; $4b8c: $11 $dd $0f
	sbc $1f                                          ; $4b8f: $de $1f
	sub d                                            ; $4b91: $92
	ccf                                              ; $4b92: $3f
	add hl, sp                                       ; $4b93: $39
	ld e, e                                          ; $4b94: $5b
	ld l, e                                          ; $4b95: $6b
	or e                                             ; $4b96: $b3
	sub a                                            ; $4b97: $97
	and a                                            ; $4b98: $a7
	cpl                                              ; $4b99: $2f
	cpl                                              ; $4b9a: $2f
	rst AddAOntoHL                                          ; $4b9b: $ef
	rst AddAOntoHL                                          ; $4b9c: $ef
	rst SubAFromDE                                          ; $4b9d: $df
	rst SubAFromDE                                          ; $4b9e: $df
	db $dd                                           ; $4b9f: $dd
	rst $38                                          ; $4ba0: $ff
	rst SubAFromDE                                          ; $4ba1: $df
	ld [hl], a                                       ; $4ba2: $77
	sbc [hl]                                         ; $4ba3: $9e
	ld l, l                                          ; $4ba4: $6d

jr_02a_4ba5:
	db $dd                                           ; $4ba5: $dd
	ld l, $9c                                        ; $4ba6: $2e $9c
	ld h, $ed                                        ; $4ba8: $26 $ed
	db $ed                                           ; $4baa: $ed
	call c, Call_02a_7ef7                            ; $4bab: $dc $f7 $7e
	ld [hl], b                                       ; $4bae: $70
	ld a, a                                          ; $4baf: $7f
	jp $80dd                                         ; $4bb0: $c3 $dd $80


	sbc [hl]                                         ; $4bb3: $9e
	ret nz                                           ; $4bb4: $c0

Jump_02a_4bb5:
	ld [hl], l                                       ; $4bb5: $75
	inc hl                                           ; $4bb6: $23
	db $dd                                           ; $4bb7: $dd
	add b                                            ; $4bb8: $80
	rst SubAFromBC                                          ; $4bb9: $e7
	sbc d                                            ; $4bba: $9a
	ld [hl-], a                                      ; $4bbb: $32
	ld c, d                                          ; $4bbc: $4a
	ld a, d                                          ; $4bbd: $7a
	ld c, d                                          ; $4bbe: $4a
	ld c, e                                          ; $4bbf: $4b

jr_02a_4bc0:
	or $dd                                           ; $4bc0: $f6 $dd
	jr nz, @+$58                                     ; $4bc2: $20 $56

	rst AddAOntoHL                                          ; $4bc4: $ef
	sbc d                                            ; $4bc5: $9a
	rst SubAFromBC                                          ; $4bc6: $e7
	sub d                                            ; $4bc7: $92
	ldh [c], a                                       ; $4bc8: $e2
	sub d                                            ; $4bc9: $92
	sub a                                            ; $4bca: $97
	ld d, a                                          ; $4bcb: $57
	ret nc                                           ; $4bcc: $d0

	sbc e                                            ; $4bcd: $9b
	ld b, d                                          ; $4bce: $42
	ld e, e                                          ; $4bcf: $5b
	ld c, d                                          ; $4bd0: $4a
	ld [hl-], a                                      ; $4bd1: $32
	or $9a                                           ; $4bd2: $f6 $9a
	ld a, [hl]                                       ; $4bd4: $7e
	ld c, c                                          ; $4bd5: $49
	ret                                              ; $4bd6: $c9


	ld c, b                                          ; $4bd7: $48
	ld c, c                                          ; $4bd8: $49
	or $9a                                           ; $4bd9: $f6 $9a
	ldh [rP1], a                                     ; $4bdb: $e0 $00
	ret nz                                           ; $4bdd: $c0

	jr nz, jr_02a_4bc0                               ; $4bde: $20 $e0

	ldh [$e0], a                                     ; $4be0: $e0 $e0
	sbc [hl]                                         ; $4be2: $9e
	dec b                                            ; $4be3: $05
	ld a, b                                          ; $4be4: $78
	ld b, d                                          ; $4be5: $42
	ld a, h                                          ; $4be6: $7c
	sub h                                            ; $4be7: $94
	ld a, a                                          ; $4be8: $7f
	cp $df                                           ; $4be9: $fe $df
	rlca                                             ; $4beb: $07
	db $dd                                           ; $4bec: $dd
	inc bc                                           ; $4bed: $03
	rst SubAFromDE                                          ; $4bee: $df
	ld bc, $7496                                     ; $4bef: $01 $96 $74
	db $f4                                           ; $4bf2: $f4
	ld [hl], l                                       ; $4bf3: $75
	ld [hl], l                                       ; $4bf4: $75
	inc sp                                           ; $4bf5: $33
	ld [hl], e                                       ; $4bf6: $73
	ld [hl], e                                       ; $4bf7: $73
	inc sp                                           ; $4bf8: $33
	rst GetHLinHL                                          ; $4bf9: $cf
	sbc $4f                                          ; $4bfa: $de $4f
	sbc [hl]                                         ; $4bfc: $9e
	ld l, a                                          ; $4bfd: $6f
	sbc $2f                                          ; $4bfe: $de $2f

jr_02a_4c00:
	rst SubAFromDE                                          ; $4c00: $df
	sub c                                            ; $4c01: $91
	sbc $11                                          ; $4c02: $de $11
	sbc $21                                          ; $4c04: $de $21
	ret c                                            ; $4c06: $d8

	rst $38                                          ; $4c07: $ff
	ld a, d                                          ; $4c08: $7a
	rst AddAOntoHL                                          ; $4c09: $ef
	db $dd                                           ; $4c0a: $dd
	ldh [$d9], a                                     ; $4c0b: $e0 $d9
	rst $38                                          ; $4c0d: $ff
	sbc d                                            ; $4c0e: $9a
	or a                                             ; $4c0f: $b7
	ccf                                              ; $4c10: $3f
	ccf                                              ; $4c11: $3f
	ld a, $3c                                        ; $4c12: $3e $3c
	sbc $18                                          ; $4c14: $de $18
	sbc l                                            ; $4c16: $9d
	db $fd                                           ; $4c17: $fd
	ld sp, hl                                        ; $4c18: $f9
	sbc $e0                                          ; $4c19: $de $e0
	sbc $f0                                          ; $4c1b: $de $f0
	cp $df                                           ; $4c1d: $fe $df
	jr nc, jr_02a_4c00                               ; $4c1f: $30 $df

	jr c, jr_02a_4c97                                ; $4c21: $38 $74

	ld sp, $10de                                     ; $4c23: $31 $de $10
	rst SubAFromDE                                          ; $4c26: $df
	ld [$97f1], sp                                   ; $4c27: $08 $f1 $97
	ld de, $3232                                     ; $4c2a: $11 $32 $32
	ld [hl], d                                       ; $4c2d: $72
	inc h                                            ; $4c2e: $24
	ld b, h                                          ; $4c2f: $44
	ld b, l                                          ; $4c30: $45
	ret                                              ; $4c31: $c9


	db $dd                                           ; $4c32: $dd
	ccf                                              ; $4c33: $3f
	db $dd                                           ; $4c34: $dd
	ld a, a                                          ; $4c35: $7f
	sub a                                            ; $4c36: $97
	ld c, a                                          ; $4c37: $4f
	ld e, a                                          ; $4c38: $5f
	ld e, a                                          ; $4c39: $5f
	sbc a                                            ; $4c3a: $9f
	sbc a                                            ; $4c3b: $9f
	cp a                                             ; $4c3c: $bf
	ccf                                              ; $4c3d: $3f
	ccf                                              ; $4c3e: $3f
	sbc $ff                                          ; $4c3f: $de $ff
	sub h                                            ; $4c41: $94
	rst FarCall                                          ; $4c42: $f7
	ldh a, [c]                                       ; $4c43: $f2
	pop hl                                           ; $4c44: $e1
	ldh [$e0], a                                     ; $4c45: $e0 $e0
	ld h, $a7                                        ; $4c47: $26 $a7
	sub e                                            ; $4c49: $93
	sub e                                            ; $4c4a: $93
	di                                               ; $4c4b: $f3
	ei                                               ; $4c4c: $fb
	db $db                                           ; $4c4d: $db
	rst $38                                          ; $4c4e: $ff
	sub e                                            ; $4c4f: $93
	ld a, a                                          ; $4c50: $7f
	rra                                              ; $4c51: $1f
	add a                                            ; $4c52: $87
	ld h, b                                          ; $4c53: $60
	add b                                            ; $4c54: $80
	ld b, b                                          ; $4c55: $40
	ld b, b                                          ; $4c56: $40
	ld h, b                                          ; $4c57: $60
	ld b, b                                          ; $4c58: $40
	and b                                            ; $4c59: $a0
	and b                                            ; $4c5a: $a0
	ldh a, [$dd]                                     ; $4c5b: $f0 $dd
	ret nz                                           ; $4c5d: $c0

	db $dd                                           ; $4c5e: $dd
	ldh [$e6], a                                     ; $4c5f: $e0 $e6
	sbc d                                            ; $4c61: $9a
	inc e                                            ; $4c62: $1c
	ld [de], a                                       ; $4c63: $12
	inc e                                            ; $4c64: $1c
	ld [de], a                                       ; $4c65: $12
	ld [de], a                                       ; $4c66: $12
	ld d, [hl]                                       ; $4c67: $56
	rst GetHLinHL                                          ; $4c68: $cf
	sbc e                                            ; $4c69: $9b
	adc b                                            ; $4c6a: $88
	xor $81                                          ; $4c6b: $ee $81
	rst AddAOntoHL                                          ; $4c6d: $ef
	or $9a                                           ; $4c6e: $f6 $9a
	ld [hl], a                                       ; $4c70: $77
	ld b, h                                          ; $4c71: $44
	ld [hl], a                                       ; $4c72: $77
	ld b, h                                          ; $4c73: $44
	ld [hl], h                                       ; $4c74: $74
	or $9a                                           ; $4c75: $f6 $9a
	dec h                                            ; $4c77: $25
	and l                                            ; $4c78: $a5
	dec h                                            ; $4c79: $25
	xor c                                            ; $4c7a: $a9
	or c                                             ; $4c7b: $b1
	or $9a                                           ; $4c7c: $f6 $9a
	call c, $d212                                    ; $4c7e: $dc $12 $d2
	ld [de], a                                       ; $4c81: $12
	call c, $dff3                                    ; $4c82: $dc $f3 $df
	ret nz                                           ; $4c85: $c0

	pop hl                                           ; $4c86: $e1
	rst SubAFromDE                                          ; $4c87: $df
	ld bc, $0794                                     ; $4c88: $01 $94 $07
	dec e                                            ; $4c8b: $1d
	rla                                              ; $4c8c: $17
	inc hl                                           ; $4c8d: $23
	ld [hl], e                                       ; $4c8e: $73
	inc sp                                           ; $4c8f: $33
	ld bc, $0301                                     ; $4c90: $01 $01 $03
	ld c, $3c                                        ; $4c93: $0e $3c
	sbc $7e                                          ; $4c95: $de $7e

jr_02a_4c97:
	sbc l                                            ; $4c97: $9d
	ld [hl], c                                       ; $4c98: $71
	pop bc                                           ; $4c99: $c1
	sbc $01                                          ; $4c9a: $de $01
	sbc h                                            ; $4c9c: $9c
	add a                                            ; $4c9d: $87
	sbc a                                            ; $4c9e: $9f
	ld a, a                                          ; $4c9f: $7f
	ld [hl], a                                       ; $4ca0: $77
	cpl                                              ; $4ca1: $2f
	sbc e                                            ; $4ca2: $9b
	rst $38                                          ; $4ca3: $ff
	ld a, b                                          ; $4ca4: $78
	ld h, b                                          ; $4ca5: $60
	nop                                              ; $4ca6: $00
	call c, $de21                                    ; $4ca7: $dc $21 $de
	and c                                            ; $4caa: $a1
	reti                                             ; $4cab: $d9


	rst $38                                          ; $4cac: $ff
	rst SubAFromDE                                          ; $4cad: $df
	ldh [$9d], a                                     ; $4cae: $e0 $9d
	db $fc                                           ; $4cb0: $fc
	cp $70                                           ; $4cb1: $fe $70
	ld d, a                                          ; $4cb3: $57
	sbc h                                            ; $4cb4: $9c
	rst $38                                          ; $4cb5: $ff
	db $e3                                           ; $4cb6: $e3
	pop hl                                           ; $4cb7: $e1
	ld a, e                                          ; $4cb8: $7b
	ld de, $e099                                     ; $4cb9: $11 $99 $e0
	ld [$040c], sp                                   ; $4cbc: $08 $0c $04
	inc b                                            ; $4cbf: $04
	ld b, $de                                        ; $4cc0: $06 $de
	inc bc                                           ; $4cc2: $03
	rst SubAFromDE                                          ; $4cc3: $df
	ld hl, sp-$22                                    ; $4cc4: $f8 $de
	db $fc                                           ; $4cc6: $fc
	sbc $fe                                          ; $4cc7: $de $fe
	sbc l                                            ; $4cc9: $9d
	ld e, $1f                                        ; $4cca: $1e $1f
	ld a, c                                          ; $4ccc: $79
	xor b                                            ; $4ccd: $a8
	sub [hl]                                         ; $4cce: $96
	rst $38                                          ; $4ccf: $ff
	ld hl, sp-$20                                    ; $4cd0: $f8 $e0
	inc b                                            ; $4cd2: $04
	ld [bc], a                                       ; $4cd3: $02
	ld bc, $0000                                     ; $4cd4: $01 $00 $00
	rrca                                             ; $4cd7: $0f
	halt                                             ; $4cd8: $76
	or c                                             ; $4cd9: $b1
	ld a, l                                          ; $4cda: $7d
	call nz, $937e                                   ; $4cdb: $c4 $7e $93
	sbc [hl]                                         ; $4cde: $9e
	ld a, [hl]                                       ; $4cdf: $7e
	ei                                               ; $4ce0: $fb
	sbc c                                            ; $4ce1: $99
	jp $003c                                         ; $4ce2: $c3 $3c $00


	ld c, c                                          ; $4ce5: $49
	ld c, c                                          ; $4ce6: $49
	adc c                                            ; $4ce7: $89
	call c, $d992                                    ; $4ce8: $dc $92 $d9
	rst $38                                          ; $4ceb: $ff
	ld [hl], d                                       ; $4cec: $72
	cp e                                             ; $4ced: $bb
	sbc [hl]                                         ; $4cee: $9e
	ld a, a                                          ; $4cef: $7f
	ld a, e                                          ; $4cf0: $7b
	xor b                                            ; $4cf1: $a8
	call c, $dfc0                                    ; $4cf2: $dc $c0 $df

jr_02a_4cf5:
	add b                                            ; $4cf5: $80
	reti                                             ; $4cf6: $d9


	rst $38                                          ; $4cf7: $ff
	sbc [hl]                                         ; $4cf8: $9e
	jr jr_02a_4cf5                                   ; $4cf9: $18 $fa

	sbc [hl]                                         ; $4cfb: $9e
	db $fd                                           ; $4cfc: $fd
	jp c, $9dff                                      ; $4cfd: $da $ff $9d

	ld e, $03                                        ; $4d00: $1e $03
	ld a, [$a090]                                    ; $4d02: $fa $90 $a0
	db $f4                                           ; $4d05: $f4
	cp $f3                                           ; $4d06: $fe $f3
	rst FarCall                                          ; $4d08: $f7
	rst SubAFromBC                                          ; $4d09: $e7
	rst SubAFromBC                                          ; $4d0a: $e7
	nop                                              ; $4d0b: $00
	ret nz                                           ; $4d0c: $c0

	ld a, b                                          ; $4d0d: $78
	rrca                                             ; $4d0e: $0f
	inc bc                                           ; $4d0f: $03
	inc b                                            ; $4d10: $04
	inc b                                            ; $4d11: $04
	dec b                                            ; $4d12: $05
	ld [hl], a                                       ; $4d13: $77
	sbc a                                            ; $4d14: $9f
	sbc e                                            ; $4d15: $9b
	add b                                            ; $4d16: $80
	and b                                            ; $4d17: $a0
	ldh [rAUD1SWEEP], a                              ; $4d18: $e0 $10
	db $fd                                           ; $4d1a: $fd
	ld a, e                                          ; $4d1b: $7b
	sub [hl]                                         ; $4d1c: $96
	ld [hl], a                                       ; $4d1d: $77
	adc a                                            ; $4d1e: $8f
	ldh [$9e], a                                     ; $4d1f: $e0 $9e
	rst SubAFromDE                                          ; $4d21: $df
	ld bc, $f767                                     ; $4d22: $01 $67 $f7
	adc a                                            ; $4d25: $8f
	ld l, c                                          ; $4d26: $69
	ld a, a                                          ; $4d27: $7f
	ld [hl], a                                       ; $4d28: $77
	ld a, a                                          ; $4d29: $7f
	rst SubAFromDE                                          ; $4d2a: $df
	cp e                                             ; $4d2b: $bb
	rst AddAOntoHL                                          ; $4d2c: $ef
	ld e, l                                          ; $4d2d: $5d
	ccf                                              ; $4d2e: $3f
	add hl, hl                                       ; $4d2f: $29
	ld c, l                                          ; $4d30: $4d
	ld b, h                                          ; $4d31: $44
	db $e4                                           ; $4d32: $e4
	and $b2                                          ; $4d33: $e6 $b2
	or e                                             ; $4d35: $b3
	sbc $3f                                          ; $4d36: $de $3f
	rst SubAFromDE                                          ; $4d38: $df
	sbc a                                            ; $4d39: $9f
	sbc h                                            ; $4d3a: $9c
	rst SubAFromDE                                          ; $4d3b: $df
	rst GetHLinHL                                          ; $4d3c: $cf
	rst GetHLinHL                                          ; $4d3d: $cf
	ld [hl], e                                       ; $4d3e: $73
	ld l, b                                          ; $4d3f: $68
	sbc $40                                          ; $4d40: $de $40
	call c, $dea0                                    ; $4d42: $dc $a0 $de
	sub b                                            ; $4d45: $90
	pop de                                           ; $4d46: $d1
	rst $38                                          ; $4d47: $ff
	reti                                             ; $4d48: $d9


	ldh [$de], a                                     ; $4d49: $e0 $de
	add c                                            ; $4d4b: $81
	ld [hl], l                                       ; $4d4c: $75
	rst SubAFromBC                                          ; $4d4d: $e7
	sbc [hl]                                         ; $4d4e: $9e
	ldh a, [$de]                                     ; $4d4f: $f0 $de
	ld a, a                                          ; $4d51: $7f
	rst SubAFromDE                                          ; $4d52: $df
	ccf                                              ; $4d53: $3f
	rst SubAFromDE                                          ; $4d54: $df
	rra                                              ; $4d55: $1f
	sub l                                            ; $4d56: $95
	rrca                                             ; $4d57: $0f
	rst $38                                          ; $4d58: $ff
	rst $38                                          ; $4d59: $ff
	ldh a, [$80]                                     ; $4d5a: $f0 $80
	add b                                            ; $4d5c: $80
	ld b, e                                          ; $4d5d: $43
	ld a, h                                          ; $4d5e: $7c
	jr nz, jr_02a_4d61                               ; $4d5f: $20 $00

jr_02a_4d61:
	ld a, e                                          ; $4d61: $7b
	or $9d                                           ; $4d62: $f6 $9d
	ld hl, sp-$3d                                    ; $4d64: $f8 $c3
	ld a, c                                          ; $4d66: $79
	ld d, c                                          ; $4d67: $51
	sub b                                            ; $4d68: $90
	add hl, sp                                       ; $4d69: $39
	db $fc                                           ; $4d6a: $fc
	add d                                            ; $4d6b: $82
	inc a                                            ; $4d6c: $3c
	ei                                               ; $4d6d: $fb
	cp $ff                                           ; $4d6e: $fe $ff
	cp $c7                                           ; $4d70: $fe $c7
	inc bc                                           ; $4d72: $03
	ld bc, $c73c                                     ; $4d73: $01 $3c $c7
	ld bc, $de00                                     ; $4d76: $01 $00 $de
	and h                                            ; $4d79: $a4
	call c, $d1a5                                    ; $4d7a: $dc $a5 $d1
	rst $38                                          ; $4d7d: $ff
	ld h, h                                          ; $4d7e: $64
	ld h, l                                          ; $4d7f: $65
	reti                                             ; $4d80: $d9


	rst $38                                          ; $4d81: $ff
	ld sp, hl                                        ; $4d82: $f9
	ld b, a                                          ; $4d83: $47
	ldh a, [$9e]                                     ; $4d84: $f0 $9e
	rst AddAOntoHL                                          ; $4d86: $ef
	sbc $cf                                          ; $4d87: $de $cf
	rst SubAFromDE                                          ; $4d89: $df
	rst SubAFromDE                                          ; $4d8a: $df
	rst SubAFromDE                                          ; $4d8b: $df
	sbc a                                            ; $4d8c: $9f
	db $dd                                           ; $4d8d: $dd
	add hl, bc                                       ; $4d8e: $09
	db $dd                                           ; $4d8f: $dd
	ld [de], a                                       ; $4d90: $12
	adc a                                            ; $4d91: $8f
	add sp, -$04                                     ; $4d92: $e8 $fc
	ld hl, sp-$0c                                    ; $4d94: $f8 $f4
	call c, $beee                                    ; $4d96: $dc $ee $be
	sbc $18                                          ; $4d99: $de $18

Call_02a_4d9b:
	ld [$1c0c], sp                                   ; $4d9b: $08 $0c $1c
	inc [hl]                                         ; $4d9e: $34
	inc [hl]                                         ; $4d9f: $34
	ld h, d                                          ; $4da0: $62
	ld h, d                                          ; $4da1: $62
	ldh [$a1], a                                     ; $4da2: $e0 $a1
	ld a, a                                          ; $4da4: $7f
	ld a, [hl-]                                      ; $4da5: $3a
	rst SubAFromDE                                          ; $4da6: $df
	ld b, $dd                                        ; $4da7: $06 $dd
	inc b                                            ; $4da9: $04
	ld a, l                                          ; $4daa: $7d
	sub c                                            ; $4dab: $91
	rst SubAFromDE                                          ; $4dac: $df
	inc bc                                           ; $4dad: $03
	db $dd                                           ; $4dae: $dd
	rlca                                             ; $4daf: $07
	ld a, h                                          ; $4db0: $7c
	jp z, $ee87                                      ; $4db1: $ca $87 $ee

	rst $38                                          ; $4db4: $ff
	ld a, e                                          ; $4db5: $7b
	ld [hl], a                                       ; $4db6: $77
	ld a, l                                          ; $4db7: $7d
	dec sp                                           ; $4db8: $3b
	ld de, $1919                                     ; $4db9: $11 $19 $19
	ld [$8c8c], sp                                   ; $4dbc: $08 $8c $8c
	add [hl]                                         ; $4dbf: $86
	add $ef                                          ; $4dc0: $c6 $ef
	rst SubAFromBC                                          ; $4dc2: $e7
	rst SubAFromBC                                          ; $4dc3: $e7
	di                                               ; $4dc4: $f3
	di                                               ; $4dc5: $f3
	ld a, e                                          ; $4dc6: $7b
	ld sp, hl                                        ; $4dc7: $f9
	cp c                                             ; $4dc8: $b9
	jr nz, jr_02a_4deb                               ; $4dc9: $20 $20

	ld a, d                                          ; $4dcb: $7a
	jp z, $c894                                      ; $4dcc: $ca $94 $c8

	ld c, b                                          ; $4dcf: $48
	ld l, b                                          ; $4dd0: $68
	ret nc                                           ; $4dd1: $d0

	ret nc                                           ; $4dd2: $d0

	ret z                                            ; $4dd3: $c8

	ret z                                            ; $4dd4: $c8

	add sp, -$1c                                     ; $4dd5: $e8 $e4
	db $f4                                           ; $4dd7: $f4
	db $f4                                           ; $4dd8: $f4
	db $dd                                           ; $4dd9: $dd
	ld a, a                                          ; $4dda: $7f
	halt                                             ; $4ddb: $76
	rst SubAFromDE                                          ; $4ddc: $df
	call c, $de7f                                    ; $4ddd: $dc $7f $de
	ccf                                              ; $4de0: $3f
	reti                                             ; $4de1: $d9


	ldh [$7d], a                                     ; $4de2: $e0 $7d
	adc c                                            ; $4de4: $89
	ld l, l                                          ; $4de5: $6d
	ld [hl], d                                       ; $4de6: $72
	sbc l                                            ; $4de7: $9d
	rlca                                             ; $4de8: $07
	inc bc                                           ; $4de9: $03
	ld l, [hl]                                       ; $4dea: $6e

jr_02a_4deb:
	ld l, l                                          ; $4deb: $6d
	sub [hl]                                         ; $4dec: $96
	ld hl, $1313                                     ; $4ded: $21 $13 $13
	dec bc                                           ; $4df0: $0b
	adc e                                            ; $4df1: $8b
	rst JumpTable                                          ; $4df2: $c7
	push hl                                          ; $4df3: $e5
	ei                                               ; $4df4: $fb
	cp $de                                           ; $4df5: $fe $de
	db $fc                                           ; $4df7: $fc
	sbc e                                            ; $4df8: $9b
	ld a, h                                          ; $4df9: $7c
	inc a                                            ; $4dfa: $3c
	ld e, $06                                        ; $4dfb: $1e $06
	ld b, a                                          ; $4dfd: $47
	nop                                              ; $4dfe: $00
	sbc [hl]                                         ; $4dff: $9e
	and l                                            ; $4e00: $a5
	db $dd                                           ; $4e01: $dd
	push hl                                          ; $4e02: $e5
	sbc $f5                                          ; $4e03: $de $f5
	ld a, h                                          ; $4e05: $7c
	ld h, e                                          ; $4e06: $63
	ld [hl], a                                       ; $4e07: $77
	cp c                                             ; $4e08: $b9
	sbc l                                            ; $4e09: $9d
	ld a, a                                          ; $4e0a: $7f
	sbc a                                            ; $4e0b: $9f
	ld b, $d0                                        ; $4e0c: $06 $d0
	db $db                                           ; $4e0e: $db
	rst $38                                          ; $4e0f: $ff
	rst SubAFromDE                                          ; $4e10: $df
	cp $f9                                           ; $4e11: $fe $f9
	sub [hl]                                         ; $4e13: $96
	sbc a                                            ; $4e14: $9f
	cp a                                             ; $4e15: $bf
	ccf                                              ; $4e16: $3f
	ccf                                              ; $4e17: $3f
	ld a, $3f                                        ; $4e18: $3e $3f

jr_02a_4e1a:
	ld a, a                                          ; $4e1a: $7f
	ld a, l                                          ; $4e1b: $7d
	ld [de], a                                       ; $4e1c: $12
	sbc $24                                          ; $4e1d: $de $24
	rst SubAFromDE                                          ; $4e1f: $df
	dec h                                            ; $4e20: $25
	sbc b                                            ; $4e21: $98
	ld c, c                                          ; $4e22: $49
	ld c, e                                          ; $4e23: $4b
	cp $7f                                           ; $4e24: $fe $7f
	cp a                                             ; $4e26: $bf
	rst $38                                          ; $4e27: $ff
	rst $38                                          ; $4e28: $ff
	ld a, c                                          ; $4e29: $79
	ld b, b                                          ; $4e2a: $40
	sbc h                                            ; $4e2b: $9c
	ld b, d                                          ; $4e2c: $42
	jp nz, $dec1                                     ; $4e2d: $c2 $c1 $de

	add c                                            ; $4e30: $81
	ld a, [$7366]                                    ; $4e31: $fa $66 $73
	ld a, e                                          ; $4e34: $7b
	rst FarCall                                          ; $4e35: $f7
	ldh [$b1], a                                     ; $4e36: $e0 $b1
	ld a, h                                          ; $4e38: $7c
	xor b                                            ; $4e39: $a8
	sbc b                                            ; $4e3a: $98
	dec b                                            ; $4e3b: $05
	ld [bc], a                                       ; $4e3c: $02
	inc bc                                           ; $4e3d: $03
	dec b                                            ; $4e3e: $05
	dec bc                                           ; $4e3f: $0b
	dec b                                            ; $4e40: $05
	rlca                                             ; $4e41: $07
	ld a, e                                          ; $4e42: $7b
	rrca                                             ; $4e43: $0f
	ld a, [hl]                                       ; $4e44: $7e
	cp h                                             ; $4e45: $bc
	add b                                            ; $4e46: $80
	rlca                                             ; $4e47: $07
	rrca                                             ; $4e48: $0f
	ld a, $1d                                        ; $4e49: $3e $1d
	rra                                              ; $4e4b: $1f
	adc [hl]                                         ; $4e4c: $8e
	ld c, a                                          ; $4e4d: $4f
	rst JumpTable                                          ; $4e4e: $c7
	and a                                            ; $4e4f: $a7
	ld h, e                                          ; $4e50: $63
	jp $e1e3                                         ; $4e51: $c3 $e3 $e1


	pop af                                           ; $4e54: $f1
	ldh a, [$78]                                     ; $4e55: $f0 $78
	ld a, b                                          ; $4e57: $78
	cp h                                             ; $4e58: $bc
	db $fc                                           ; $4e59: $fc
	db $fc                                           ; $4e5a: $fc
	ld e, [hl]                                       ; $4e5b: $5e
	sbc [hl]                                         ; $4e5c: $9e
	sbc [hl]                                         ; $4e5d: $9e
	rst AddAOntoHL                                          ; $4e5e: $ef
	rst AddAOntoHL                                          ; $4e5f: $ef
	ld a, a                                          ; $4e60: $7f
	inc h                                            ; $4e61: $24
	inc h                                            ; $4e62: $24
	or d                                             ; $4e63: $b2
	ldh a, [c]                                       ; $4e64: $f2
	ldh a, [c]                                       ; $4e65: $f2
	rst SubAFromDE                                          ; $4e66: $df
	reti                                             ; $4e67: $d9


	sbc [hl]                                         ; $4e68: $9e
	ret                                              ; $4e69: $c9


	ld a, b                                          ; $4e6a: $78
	ld l, h                                          ; $4e6b: $6c
	sbc c                                            ; $4e6c: $99
	ld a, [hl]                                       ; $4e6d: $7e
	ld a, a                                          ; $4e6e: $7f
	ld [hl], c                                       ; $4e6f: $71
	ld bc, $0f0f                                     ; $4e70: $01 $0f $0f
	ld a, e                                          ; $4e73: $7b
	rst GetHLinHL                                          ; $4e74: $cf
	ld a, e                                          ; $4e75: $7b
	adc $9e                                          ; $4e76: $ce $9e
	ld c, $7b                                        ; $4e78: $0e $7b
	ld b, d                                          ; $4e7a: $42
	rst SubAFromDE                                          ; $4e7b: $df
	jr nz, jr_02a_4e1a                               ; $4e7c: $20 $9c

	cpl                                              ; $4e7e: $2f
	cp a                                             ; $4e7f: $bf
	cp a                                             ; $4e80: $bf
	jp c, $9ce0                                      ; $4e81: $da $e0 $9c

	db $e3                                           ; $4e84: $e3
	rst $38                                          ; $4e85: $ff
	ldh [$75], a                                     ; $4e86: $e0 $75
	sub [hl]                                         ; $4e88: $96
	sbc l                                            ; $4e89: $9d
	ld sp, hl                                        ; $4e8a: $f9
	ret nz                                           ; $4e8b: $c0

	db $fc                                           ; $4e8c: $fc
	sbc d                                            ; $4e8d: $9a
	rlca                                             ; $4e8e: $07
	ccf                                              ; $4e8f: $3f
	rst $38                                          ; $4e90: $ff
	rst $38                                          ; $4e91: $ff
	ld bc, $0d77                                     ; $4e92: $01 $77 $0d
	sbc l                                            ; $4e95: $9d
	sub c                                            ; $4e96: $91
	adc b                                            ; $4e97: $88
	ld [hl], h                                       ; $4e98: $74
	ld b, c                                          ; $4e99: $41
	sbc [hl]                                         ; $4e9a: $9e
	nop                                              ; $4e9b: $00
	ld [hl], d                                       ; $4e9c: $72
	and l                                            ; $4e9d: $a5
	ld a, [hl]                                       ; $4e9e: $7e
	or [hl]                                          ; $4e9f: $b6
	sbc $ff                                          ; $4ea0: $de $ff
	sub a                                            ; $4ea2: $97
	sbc $01                                          ; $4ea3: $de $01
	ld bc, $8482                                     ; $4ea5: $01 $82 $84
	ld c, b                                          ; $4ea8: $48
	ld d, c                                          ; $4ea9: $51
	rst SubAFromHL                                          ; $4eaa: $d7
	sbc $ff                                          ; $4eab: $de $ff
	rst SubAFromDE                                          ; $4ead: $df
	dec c                                            ; $4eae: $0d
	rst SubAFromDE                                          ; $4eaf: $df
	rst $38                                          ; $4eb0: $ff
	sbc e                                            ; $4eb1: $9b
	cpl                                              ; $4eb2: $2f
	ld e, a                                          ; $4eb3: $5f
	rra                                              ; $4eb4: $1f
	rra                                              ; $4eb5: $1f
	sbc $0d                                          ; $4eb6: $de $0d
	db $db                                           ; $4eb8: $db
	rst $38                                          ; $4eb9: $ff
	sbc h                                            ; $4eba: $9c
	sbc a                                            ; $4ebb: $9f
	add c                                            ; $4ebc: $81
	ldh [$72], a                                     ; $4ebd: $e0 $72
	ret nc                                           ; $4ebf: $d0

	db $dd                                           ; $4ec0: $dd
	add b                                            ; $4ec1: $80
	sbc [hl]                                         ; $4ec2: $9e
	ldh a, [$dc]                                     ; $4ec3: $f0 $dc
	rst $38                                          ; $4ec5: $ff
	sbc h                                            ; $4ec6: $9c
	rra                                              ; $4ec7: $1f
	inc bc                                           ; $4ec8: $03
	ldh [$f9], a                                     ; $4ec9: $e0 $f9
	sbc $fe                                          ; $4ecb: $de $fe
	sbc $fc                                          ; $4ecd: $de $fc
	sbc l                                            ; $4ecf: $9d
	ld sp, hl                                        ; $4ed0: $f9
	add hl, sp                                       ; $4ed1: $39
	ld h, h                                          ; $4ed2: $64
	ret z                                            ; $4ed3: $c8

	sbc h                                            ; $4ed4: $9c
	ld a, [hl]                                       ; $4ed5: $7e
	ld a, e                                          ; $4ed6: $7b
	ei                                               ; $4ed7: $fb
	call c, $9dfd                                    ; $4ed8: $dc $fd $9d
	ld c, e                                          ; $4edb: $4b
	ld c, [hl]                                       ; $4edc: $4e
	db $dd                                           ; $4edd: $dd
	sub [hl]                                         ; $4ede: $96
	rst SubAFromDE                                          ; $4edf: $df
	ld h, $db                                        ; $4ee0: $26 $db
	rst $38                                          ; $4ee2: $ff
	sbc [hl]                                         ; $4ee3: $9e
	rst FarCall                                          ; $4ee4: $f7
	ld l, d                                          ; $4ee5: $6a
	sub b                                            ; $4ee6: $90
	sbc l                                            ; $4ee7: $9d
	ld [$da09], sp                                   ; $4ee8: $08 $09 $da
	add b                                            ; $4eeb: $80
	ld [hl], e                                       ; $4eec: $73
	or e                                             ; $4eed: $b3
	ld [hl], e                                       ; $4eee: $73
	rst FarCall                                          ; $4eef: $f7
	ldh [$b2], a                                     ; $4ef0: $e0 $b2
	add e                                            ; $4ef2: $83
	jr jr_02a_4f01                                   ; $4ef3: $18 $0c

	ld d, $1f                                        ; $4ef5: $16 $1f
	rla                                              ; $4ef7: $17
	inc de                                           ; $4ef8: $13
	ld de, $0f09                                     ; $4ef9: $11 $09 $0f
	dec de                                           ; $4efc: $1b
	add hl, de                                       ; $4efd: $19
	db $10                                           ; $4efe: $10
	jr jr_02a_4f1d                                   ; $4eff: $18 $1c

jr_02a_4f01:
	ld e, $1e                                        ; $4f01: $1e $1e
	ret nc                                           ; $4f03: $d0

	ldh a, [$f0]                                     ; $4f04: $f0 $f0
	add sp, -$08                                     ; $4f06: $e8 $f8
	ld hl, sp-$0c                                    ; $4f08: $f8 $f4
	db $fc                                           ; $4f0a: $fc
	cp a                                             ; $4f0b: $bf
	sbc a                                            ; $4f0c: $9f
	sbc a                                            ; $4f0d: $9f
	rra                                              ; $4f0e: $1f
	sbc $0f                                          ; $4f0f: $de $0f
	sbc d                                            ; $4f11: $9a
	rlca                                             ; $4f12: $07
	ld [hl], a                                       ; $4f13: $77
	ld [hl], a                                       ; $4f14: $77
	ld a, a                                          ; $4f15: $7f
	ld a, e                                          ; $4f16: $7b
	db $dd                                           ; $4f17: $dd
	ld a, a                                          ; $4f18: $7f
	rst SubAFromDE                                          ; $4f19: $df
	call z, $c49d                                    ; $4f1a: $cc $9d $c4

jr_02a_4f1d:
	rst JumpTable                                          ; $4f1d: $c7

jr_02a_4f1e:
	db $dd                                           ; $4f1e: $dd
	ret nz                                           ; $4f1f: $c0

	ld l, [hl]                                       ; $4f20: $6e
	ld bc, $db7c                                     ; $4f21: $01 $7c $db
	sbc e                                            ; $4f24: $9b
	ldh a, [$03]                                     ; $4f25: $f0 $03
	inc e                                            ; $4f27: $1c
	ldh [rPCM12], a                                  ; $4f28: $e0 $76
	sub b                                            ; $4f2a: $90
	ld a, h                                          ; $4f2b: $7c
	ld h, c                                          ; $4f2c: $61
	sbc l                                            ; $4f2d: $9d
	ldh a, [$c8]                                     ; $4f2e: $f0 $c8
	ld d, l                                          ; $4f30: $55
	ret c                                            ; $4f31: $d8

	sbc l                                            ; $4f32: $9d
	ldh [$1f], a                                     ; $4f33: $e0 $1f
	ld [hl], a                                       ; $4f35: $77
	add hl, hl                                       ; $4f36: $29
	sbc l                                            ; $4f37: $9d
	ld b, $1b                                        ; $4f38: $06 $1b
	jp c, $98ff                                      ; $4f3a: $da $ff $98

	db $fc                                           ; $4f3d: $fc
	ld c, h                                          ; $4f3e: $4c
	cp $0d                                           ; $4f3f: $fe $0d
	dec bc                                           ; $4f41: $0b
	ld a, e                                          ; $4f42: $7b
	cp a                                             ; $4f43: $bf
	ld a, b                                          ; $4f44: $78
	ld c, a                                          ; $4f45: $4f
	ld a, a                                          ; $4f46: $7f
	res 0, d                                         ; $4f47: $cb $82
	db $f4                                           ; $4f49: $f4
	db $e4                                           ; $4f4a: $e4
	jp nz, $0706                                     ; $4f4b: $c2 $06 $07

	db $fd                                           ; $4f4e: $fd
	inc sp                                           ; $4f4f: $33
	push de                                          ; $4f50: $d5
	cp $ef                                           ; $4f51: $fe $ef
	rst AddAOntoHL                                          ; $4f53: $ef
	dec hl                                           ; $4f54: $2b
	add hl, hl                                       ; $4f55: $29
	rst $38                                          ; $4f56: $ff
	rst $38                                          ; $4f57: $ff
	dec sp                                           ; $4f58: $3b
	add hl, de                                       ; $4f59: $19
	jr jr_02a_4f74                                   ; $4f5a: $18 $18

	db $dd                                           ; $4f5c: $dd
	rst SubAFromDE                                          ; $4f5d: $df
	ldh [c], a                                       ; $4f5e: $e2
	ld [bc], a                                       ; $4f5f: $02
	add b                                            ; $4f60: $80
	ld h, b                                          ; $4f61: $60
	ld e, b                                          ; $4f62: $58
	halt                                             ; $4f63: $76
	dec a                                            ; $4f64: $3d
	rra                                              ; $4f65: $1f
	db $dd                                           ; $4f66: $dd
	rst $38                                          ; $4f67: $ff
	sbc c                                            ; $4f68: $99
	cp a                                             ; $4f69: $bf
	adc a                                            ; $4f6a: $8f
	jp $3fe0                                         ; $4f6b: $c3 $e0 $3f


	inc bc                                           ; $4f6e: $03
	ld [hl], c                                       ; $4f6f: $71
	ret c                                            ; $4f70: $d8

	sbc [hl]                                         ; $4f71: $9e
	ld h, b                                          ; $4f72: $60
	reti                                             ; $4f73: $d9


jr_02a_4f74:
	rst $38                                          ; $4f74: $ff
	ld a, [hl]                                       ; $4f75: $7e
	sub e                                            ; $4f76: $93
	sbc l                                            ; $4f77: $9d
	ccf                                              ; $4f78: $3f
	rlca                                             ; $4f79: $07
	ld [hl], c                                       ; $4f7a: $71
	ld [hl], $9e                                     ; $4f7b: $36 $9e
	ldh a, [$6d]                                     ; $4f7d: $f0 $6d
	jr z, jr_02a_4f1e                                ; $4f7f: $28 $9d

	ld bc, $ddc1                                     ; $4f81: $01 $c1 $dd
	rst $38                                          ; $4f84: $ff
	ld a, l                                          ; $4f85: $7d
	ld d, l                                          ; $4f86: $55
	rst SubAFromDE                                          ; $4f87: $df
	ld bc, $0097                                     ; $4f88: $01 $97 $00
	ldh [$1f], a                                     ; $4f8b: $e0 $1f
	add b                                            ; $4f8d: $80
	ret nz                                           ; $4f8e: $c0

	ldh [$fd], a                                     ; $4f8f: $e0 $fd
	db $fd                                           ; $4f91: $fd
	db $dd                                           ; $4f92: $dd
	db $fc                                           ; $4f93: $fc
	rst SubAFromDE                                          ; $4f94: $df
	cp $df                                           ; $4f95: $fe $df
	ld h, $df                                        ; $4f97: $26 $df
	ld b, a                                          ; $4f99: $47
	sbc [hl]                                         ; $4f9a: $9e
	rst JumpTable                                          ; $4f9b: $c7
	ld a, d                                          ; $4f9c: $7a
	dec l                                            ; $4f9d: $2d
	rst SubAFromDE                                          ; $4f9e: $df
	rst $38                                          ; $4f9f: $ff

jr_02a_4fa0:
	adc c                                            ; $4fa0: $89

jr_02a_4fa1:
	db $fd                                           ; $4fa1: $fd
	db $ec                                           ; $4fa2: $ec
	xor $6d                                          ; $4fa3: $ee $6d
	ld d, a                                          ; $4fa5: $57
	rla                                              ; $4fa6: $17
	add hl, bc                                       ; $4fa7: $09
	add hl, bc                                       ; $4fa8: $09
	dec bc                                           ; $4fa9: $0b
	dec de                                           ; $4faa: $1b
	dec de                                           ; $4fab: $1b
	sbc d                                            ; $4fac: $9a
	cp b                                             ; $4fad: $b8
	ld hl, sp-$80                                    ; $4fae: $f8 $80
	add b                                            ; $4fb0: $80
	ret nz                                           ; $4fb1: $c0

	nop                                              ; $4fb2: $00
	ret nz                                           ; $4fb3: $c0

	ldh [$a0], a                                     ; $4fb4: $e0 $a0
	ldh [$de], a                                     ; $4fb6: $e0 $de
	add b                                            ; $4fb8: $80
	sbc d                                            ; $4fb9: $9a
	ret nz                                           ; $4fba: $c0

	ld b, b                                          ; $4fbb: $40
	ld b, b                                          ; $4fbc: $40
	ld h, b                                          ; $4fbd: $60
	jr nz, jr_02a_4fa0                               ; $4fbe: $20 $e0

	or c                                             ; $4fc0: $b1
	sbc [hl]                                         ; $4fc1: $9e
	jr jr_02a_4fa1                                   ; $4fc2: $18 $dd

	ld [$049c], sp                                   ; $4fc4: $08 $9c $04
	inc c                                            ; $4fc7: $0c
	inc b                                            ; $4fc8: $04
	db $db                                           ; $4fc9: $db
	rrca                                             ; $4fca: $0f
	rst SubAFromDE                                          ; $4fcb: $df
	rlca                                             ; $4fcc: $07
	adc l                                            ; $4fcd: $8d
	db $fc                                           ; $4fce: $fc
	ld a, d                                          ; $4fcf: $7a
	ld a, [hl]                                       ; $4fd0: $7e
	inc a                                            ; $4fd1: $3c
	inc a                                            ; $4fd2: $3c
	ld e, $1e                                        ; $4fd3: $1e $1e
	ld c, $07                                        ; $4fd5: $0e $07
	add a                                            ; $4fd7: $87
	add e                                            ; $4fd8: $83
	jp $e1c3                                         ; $4fd9: $c3 $c3 $e1


	pop hl                                           ; $4fdc: $e1
	pop af                                           ; $4fdd: $f1
	ld a, a                                          ; $4fde: $7f
	ld e, a                                          ; $4fdf: $5f
	db $db                                           ; $4fe0: $db
	ccf                                              ; $4fe1: $3f
	ld a, a                                          ; $4fe2: $7f
	ld a, h                                          ; $4fe3: $7c
	db $db                                           ; $4fe4: $db
	ldh [hDisp1_WX], a                                     ; $4fe5: $e0 $96
	db $f4                                           ; $4fe7: $f4
	db $ec                                           ; $4fe8: $ec
	rst AddAOntoHL                                          ; $4fe9: $ef
	ldh [$e0], a                                     ; $4fea: $e0 $e0
	ldh a, [$f0]                                     ; $4fec: $f0 $f0
	ld hl, sp+$1f                                    ; $4fee: $f8 $1f
	db $dd                                           ; $4ff0: $dd
	ccf                                              ; $4ff1: $3f
	rst SubAFromDE                                          ; $4ff2: $df
	rra                                              ; $4ff3: $1f
	sbc c                                            ; $4ff4: $99
	rrca                                             ; $4ff5: $0f
	nop                                              ; $4ff6: $00
	inc bc                                           ; $4ff7: $03
	db $fd                                           ; $4ff8: $fd
	rst $38                                          ; $4ff9: $ff
	rrca                                             ; $4ffa: $0f
	ld [hl], d                                       ; $4ffb: $72
	ret nz                                           ; $4ffc: $c0

	ld a, h                                          ; $4ffd: $7c
	xor l                                            ; $4ffe: $ad
	ld [hl], l                                       ; $4fff: $75
	db $d3                                           ; $5000: $d3
	sub e                                            ; $5001: $93
	ld l, a                                          ; $5002: $6f
	cp a                                             ; $5003: $bf
	db $fc                                           ; $5004: $fc
	ldh a, [$c1]                                     ; $5005: $f0 $c1
	ld [bc], a                                       ; $5007: $02
	inc b                                            ; $5008: $04
	add hl, bc                                       ; $5009: $09
	ldh a, [$c0]                                     ; $500a: $f0 $c0
	inc bc                                           ; $500c: $03
	rrca                                             ; $500d: $0f
	ld a, c                                          ; $500e: $79
	add d                                            ; $500f: $82
	sub [hl]                                         ; $5010: $96
	cp $ce                                           ; $5011: $fe $ce
	rra                                              ; $5013: $1f
	dec h                                            ; $5014: $25
	push bc                                          ; $5015: $c5
	dec de                                           ; $5016: $1b
	dec hl                                           ; $5017: $2b
	ld d, e                                          ; $5018: $53
	and $7b                                          ; $5019: $e6 $7b
	db $f4                                           ; $501b: $f4
	sub d                                            ; $501c: $92
	rst $38                                          ; $501d: $ff
	db $ed                                           ; $501e: $ed
	db $dd                                           ; $501f: $dd
	cp l                                             ; $5020: $bd
	dec sp                                           ; $5021: $3b
	ld bc, $1211                                     ; $5022: $01 $11 $12
	inc [hl]                                         ; $5025: $34
	db $fc                                           ; $5026: $fc
	cp d                                             ; $5027: $ba
	halt                                             ; $5028: $76
	halt                                             ; $5029: $76
	call c, $91ff                                    ; $502a: $dc $ff $91
	rst GetHLinHL                                          ; $502d: $cf
	adc e                                            ; $502e: $8b
	adc e                                            ; $502f: $8b
	adc a                                            ; $5030: $8f
	db $e3                                           ; $5031: $e3
	add hl, de                                       ; $5032: $19
	ld b, $81                                        ; $5033: $06 $81
	call nz, $f1e2                                   ; $5035: $c4 $e2 $f1
	ldh a, [$fc]                                     ; $5038: $f0 $fc
	cp $7a                                           ; $503a: $fe $7a
	ld [$b07f], a                                    ; $503c: $ea $7f $b0
	adc l                                            ; $503f: $8d
	call c, $fcf3                                    ; $5040: $dc $f3 $fc
	cp $bf                                           ; $5043: $fe $bf
	rst SubAFromDE                                          ; $5045: $df
	sbc $dc                                          ; $5046: $de $dc
	ccf                                              ; $5048: $3f
	rrca                                             ; $5049: $0f
	inc bc                                           ; $504a: $03
	ld bc, $e0c0                                     ; $504b: $01 $c0 $e0
	pop hl                                           ; $504e: $e1
	db $e3                                           ; $504f: $e3
	rlca                                             ; $5050: $07
	ld hl, sp+$4c                                    ; $5051: $f8 $4c
	jr c, jr_02a_50cd                                ; $5053: $38 $78

	ld d, c                                          ; $5055: $51
	ld a, h                                          ; $5056: $7c
	ld d, d                                          ; $5057: $52
	ld a, b                                          ; $5058: $78
	ld h, b                                          ; $5059: $60
	db $dd                                           ; $505a: $dd
	ldh [$9c], a                                     ; $505b: $e0 $9c
	rst JumpTable                                          ; $505d: $c7
	ld hl, sp-$7d                                    ; $505e: $f8 $83
	ld a, d                                          ; $5060: $7a
	add $df                                          ; $5061: $c6 $df
	rst $38                                          ; $5063: $ff
	sbc [hl]                                         ; $5064: $9e

jr_02a_5065:
	rst SubAFromDE                                          ; $5065: $df
	sbc $ff                                          ; $5066: $de $ff
	ld [hl], h                                       ; $5068: $74
	di                                               ; $5069: $f3
	sub [hl]                                         ; $506a: $96
	pop hl                                           ; $506b: $e1
	ld hl, $01e1                                     ; $506c: $21 $e1 $01
	rla                                              ; $506f: $17
	rla                                              ; $5070: $17
	inc d                                            ; $5071: $14
	db $10                                           ; $5072: $10
	db $10                                           ; $5073: $10
	sbc $20                                          ; $5074: $de $20
	rst SubAFromDE                                          ; $5076: $df
	ld hl, sp-$62                                    ; $5077: $f8 $9e
	ei                                               ; $5079: $fb
	call c, $99ff                                    ; $507a: $dc $ff $99
	ldh a, [$60]                                     ; $507d: $f0 $60
	ld d, b                                          ; $507f: $50
	jr nz, jr_02a_50a2                               ; $5080: $20 $20

	jr nc, @-$20                                     ; $5082: $30 $de

	jr nz, jr_02a_5065                               ; $5084: $20 $df

	or b                                             ; $5086: $b0
	rst SubAFromDE                                          ; $5087: $df
	ldh a, [$de]                                     ; $5088: $f0 $de
	ldh [$e0], a                                     ; $508a: $e0 $e0
	or c                                             ; $508c: $b1
	inc a                                            ; $508d: $3c
	nop                                              ; $508e: $00
	ei                                               ; $508f: $fb
	sbc $11                                          ; $5090: $de $11
	sbc [hl]                                         ; $5092: $9e
	db $10                                           ; $5093: $10
	ld d, a                                          ; $5094: $57
	or $9e                                           ; $5095: $f6 $9e
	ld bc, $f663                                     ; $5097: $01 $63 $f6
	sbc e                                            ; $509a: $9b
	inc h                                            ; $509b: $24
	nop                                              ; $509c: $00
	ld bc, $7710                                     ; $509d: $01 $10 $77
	or $9d                                           ; $50a0: $f6 $9d

jr_02a_50a2:
	ld [bc], a                                       ; $50a2: $02
	jr nz, jr_02a_5120                               ; $50a3: $20 $7b

	or $df                                           ; $50a5: $f6 $df
	ld [hl+], a                                      ; $50a7: $22
	cp $97                                           ; $50a8: $fe $97
	ld [hl+], a                                      ; $50aa: $22
	db $10                                           ; $50ab: $10
	ld [de], a                                       ; $50ac: $12
	ld b, d                                          ; $50ad: $42
	ld [bc], a                                       ; $50ae: $02
	ld [hl+], a                                      ; $50af: $22
	ld [hl+], a                                      ; $50b0: $22
	jr nz, jr_02a_512e                               ; $50b1: $20 $7b

	or $9b                                           ; $50b3: $f6 $9b
	ld hl, $2212                                     ; $50b5: $21 $12 $22
	ld [de], a                                       ; $50b8: $12
	ld l, e                                          ; $50b9: $6b
	or $9c                                           ; $50ba: $f6 $9c
	rla                                              ; $50bc: $17
	ld [hl], a                                       ; $50bd: $77
	ld [hl], d                                       ; $50be: $72
	ld l, a                                          ; $50bf: $6f
	or $9e                                           ; $50c0: $f6 $9e
	daa                                              ; $50c2: $27
	sbc $55                                          ; $50c3: $de $55
	sbc [hl]                                         ; $50c5: $9e
	ld [hl], a                                       ; $50c6: $77
	ld c, a                                          ; $50c7: $4f
	or $5b                                           ; $50c8: $f6 $5b
	add b                                            ; $50ca: $80
	adc h                                            ; $50cb: $8c
	ld b, e                                          ; $50cc: $43

jr_02a_50cd:
	add $99                                          ; $50cd: $c6 $99
	daa                                              ; $50cf: $27
	rst $38                                          ; $50d0: $ff
	ei                                               ; $50d1: $fb
	rst $38                                          ; $50d2: $ff
	db $fc                                           ; $50d3: $fc
	cp $fd                                           ; $50d4: $fe $fd
	rst $38                                          ; $50d6: $ff
	rst $38                                          ; $50d7: $ff
	jp c, $0f07                                      ; $50d8: $da $07 $0f

	ld e, $d7                                        ; $50db: $1e $d7
	xor a                                            ; $50dd: $af
	ld a, a                                          ; $50de: $7f
	db $dd                                           ; $50df: $dd
	rst $38                                          ; $50e0: $ff
	sub c                                            ; $50e1: $91
	ld e, a                                          ; $50e2: $5f
	ld a, c                                          ; $50e3: $79
	ld sp, hl                                        ; $50e4: $f9
	pop af                                           ; $50e5: $f1
	add e                                            ; $50e6: $83
	ld [bc], a                                       ; $50e7: $02
	db $f4                                           ; $50e8: $f4
	ld hl, sp+$58                                    ; $50e9: $f8 $58
	inc hl                                           ; $50eb: $23
	ld h, a                                          ; $50ec: $67
	rst AddAOntoHL                                          ; $50ed: $ef
	rst AddAOntoHL                                          ; $50ee: $ef
	rst SubAFromDE                                          ; $50ef: $df
	sbc $ff                                          ; $50f0: $de $ff
	add b                                            ; $50f2: $80
	cp $fc                                           ; $50f3: $fe $fc
	cp c                                             ; $50f5: $b9
	add hl, sp                                       ; $50f6: $39
	ld [hl], c                                       ; $50f7: $71
	ld h, e                                          ; $50f8: $63
	add [hl]                                         ; $50f9: $86
	nop                                              ; $50fa: $00
	call c, $ef77                                    ; $50fb: $dc $77 $ef
	jp hl                                            ; $50fe: $e9


	pop af                                           ; $50ff: $f1
	cp $f0                                           ; $5100: $fe $f0
	ldh a, [$3e]                                     ; $5102: $f0 $3e
	rst $38                                          ; $5104: $ff
	cpl                                              ; $5105: $2f
	dec c                                            ; $5106: $0d
	dec b                                            ; $5107: $05
	inc bc                                           ; $5108: $03
	nop                                              ; $5109: $00
	nop                                              ; $510a: $00
	cpl                                              ; $510b: $2f
	rlca                                             ; $510c: $07
	ldh [$a0], a                                     ; $510d: $e0 $a0
	ld b, b                                          ; $510f: $40
	ldh [rP1], a                                     ; $5110: $e0 $00
	sub h                                            ; $5112: $94
	nop                                              ; $5113: $00
	jr nz, jr_02a_5136                               ; $5114: $20 $20

	ldh [$e0], a                                     ; $5116: $e0 $e0
	ret nz                                           ; $5118: $c0

	add b                                            ; $5119: $80
	nop                                              ; $511a: $00
	nop                                              ; $511b: $00
	jp $fe01                                         ; $511c: $c3 $01 $fe


	sbc h                                            ; $511f: $9c

jr_02a_5120:
	ld [$3c18], sp                                   ; $5120: $08 $18 $3c
	ld sp, hl                                        ; $5123: $f9
	inc b                                            ; $5124: $04
	nop                                              ; $5125: $00
	sbc $44                                          ; $5126: $de $44
	ld e, d                                          ; $5128: $5a
	add b                                            ; $5129: $80
	adc h                                            ; $512a: $8c
	ld b, e                                          ; $512b: $43
	add $99                                          ; $512c: $c6 $99

jr_02a_512e:
	daa                                              ; $512e: $27
	rst $38                                          ; $512f: $ff
	rst $38                                          ; $5130: $ff
	ei                                               ; $5131: $fb
	rst $38                                          ; $5132: $ff
	cp $fd                                           ; $5133: $fe $fd
	rst $38                                          ; $5135: $ff

jr_02a_5136:
	rst $38                                          ; $5136: $ff
	jp c, $0700                                      ; $5137: $da $00 $07

	rrca                                             ; $513a: $0f
	rst SubAFromHL                                          ; $513b: $d7
	xor a                                            ; $513c: $af
	ld a, a                                          ; $513d: $7f
	call c, $92ff                                    ; $513e: $dc $ff $92
	ld a, c                                          ; $5141: $79
	ld sp, hl                                        ; $5142: $f9
	pop af                                           ; $5143: $f1
	add e                                            ; $5144: $83
	ld [bc], a                                       ; $5145: $02
	inc b                                            ; $5146: $04
	ldh a, [$f8]                                     ; $5147: $f0 $f8
	inc hl                                           ; $5149: $23
	ld h, a                                          ; $514a: $67
	rst AddAOntoHL                                          ; $514b: $ef
	rst AddAOntoHL                                          ; $514c: $ef
	rst SubAFromDE                                          ; $514d: $df
	sbc $ff                                          ; $514e: $de $ff
	add b                                            ; $5150: $80
	cp $fc                                           ; $5151: $fe $fc
	cp c                                             ; $5153: $b9
	add hl, sp                                       ; $5154: $39
	ld [hl], c                                       ; $5155: $71
	ld h, e                                          ; $5156: $63
	add [hl]                                         ; $5157: $86
	nop                                              ; $5158: $00
	db $fc                                           ; $5159: $fc
	call c, $ef77                                    ; $515a: $dc $77 $ef
	pop af                                           ; $515d: $f1
	cp $f0                                           ; $515e: $fe $f0
	ldh a, [rAUD3HIGH]                               ; $5160: $f0 $1e
	ld a, $ff                                        ; $5162: $3e $ff
	cpl                                              ; $5164: $2f
	dec b                                            ; $5165: $05
	inc bc                                           ; $5166: $03
	nop                                              ; $5167: $00
	nop                                              ; $5168: $00
	ld e, a                                          ; $5169: $5f
	daa                                              ; $516a: $27
	nop                                              ; $516b: $00
	ldh [rLCDC], a                                   ; $516c: $e0 $40
	ldh [rP1], a                                     ; $516e: $e0 $00
	sub h                                            ; $5170: $94
	nop                                              ; $5171: $00
	ld e, b                                          ; $5172: $58
	jr nz, @+$22                                     ; $5173: $20 $20

	ldh [$c0], a                                     ; $5175: $e0 $c0
	add b                                            ; $5177: $80
	nop                                              ; $5178: $00
	nop                                              ; $5179: $00
	jp $fe01                                         ; $517a: $c3 $01 $fe


	sbc h                                            ; $517d: $9c
	ld [$3c18], sp                                   ; $517e: $08 $18 $3c
	ld sp, hl                                        ; $5181: $f9
	inc b                                            ; $5182: $04
	nop                                              ; $5183: $00
	sbc $44                                          ; $5184: $de $44
	ld d, a                                          ; $5186: $57
	add b                                            ; $5187: $80
	sbc e                                            ; $5188: $9b
	ld b, e                                          ; $5189: $43
	add $99                                          ; $518a: $c6 $99
	daa                                              ; $518c: $27
	db $dd                                           ; $518d: $dd
	rst $38                                          ; $518e: $ff
	sbc d                                            ; $518f: $9a
	cp $fd                                           ; $5190: $fe $fd
	rst $38                                          ; $5192: $ff
	rst $38                                          ; $5193: $ff
	jp c, $9cfe                                      ; $5194: $da $fe $9c

	rst SubAFromHL                                          ; $5197: $d7
	xor a                                            ; $5198: $af
	ld a, a                                          ; $5199: $7f
	call c, $92ff                                    ; $519a: $dc $ff $92
	ld a, c                                          ; $519d: $79
	ld sp, hl                                        ; $519e: $f9
	pop af                                           ; $519f: $f1
	add e                                            ; $51a0: $83
	ld [bc], a                                       ; $51a1: $02
	inc b                                            ; $51a2: $04
	nop                                              ; $51a3: $00
	nop                                              ; $51a4: $00
	inc hl                                           ; $51a5: $23
	ld h, a                                          ; $51a6: $67
	rst AddAOntoHL                                          ; $51a7: $ef
	rst AddAOntoHL                                          ; $51a8: $ef
	rst SubAFromDE                                          ; $51a9: $df
	ld [hl], a                                       ; $51aa: $77
	ldh [$98], a                                     ; $51ab: $e0 $98
	db $fc                                           ; $51ad: $fc
	cp c                                             ; $51ae: $b9
	add hl, sp                                       ; $51af: $39
	ld [hl], c                                       ; $51b0: $71
	ld h, e                                          ; $51b1: $63
	add [hl]                                         ; $51b2: $86
	nop                                              ; $51b3: $00
	sbc $ff                                          ; $51b4: $de $ff
	sbc d                                            ; $51b6: $9a
	ccf                                              ; $51b7: $3f
	rst AddAOntoHL                                          ; $51b8: $ef
	cp $f0                                           ; $51b9: $fe $f0
	ldh a, [$fe]                                     ; $51bb: $f0 $fe
	sub h                                            ; $51bd: $94
	rst $38                                          ; $51be: $ff
	rra                                              ; $51bf: $1f
	inc bc                                           ; $51c0: $03
	nop                                              ; $51c1: $00
	nop                                              ; $51c2: $00
	rst AddAOntoHL                                          ; $51c3: $ef
	rst SubAFromBC                                          ; $51c4: $e7

jr_02a_51c5:
	ret nz                                           ; $51c5: $c0

	ld hl, sp-$20                                    ; $51c6: $f8 $e0
	ldh [$fd], a                                     ; $51c8: $e0 $fd
	sub a                                            ; $51ca: $97
	jr jr_02a_51c5                                   ; $51cb: $18 $f8

	ldh [$80], a                                     ; $51cd: $e0 $80
	nop                                              ; $51cf: $00
	nop                                              ; $51d0: $00
	jp $fe01                                         ; $51d1: $c3 $01 $fe


	sbc h                                            ; $51d4: $9c
	ld [$3c18], sp                                   ; $51d5: $08 $18 $3c
	cp $77                                           ; $51d8: $fe $77
	or $9e                                           ; $51da: $f6 $9e
	nop                                              ; $51dc: $00
	inc b                                            ; $51dd: $04
	nop                                              ; $51de: $00
	sbc $44                                          ; $51df: $de $44
	ld d, [hl]                                       ; $51e1: $56
	add b                                            ; $51e2: $80
	sbc e                                            ; $51e3: $9b
	ld b, e                                          ; $51e4: $43
	add $99                                          ; $51e5: $c6 $99
	daa                                              ; $51e7: $27
	db $dd                                           ; $51e8: $dd
	rst $38                                          ; $51e9: $ff
	sbc d                                            ; $51ea: $9a
	cp $fd                                           ; $51eb: $fe $fd
	rst $38                                          ; $51ed: $ff
	rst $38                                          ; $51ee: $ff
	jp c, $9cfe                                      ; $51ef: $da $fe $9c

	rst SubAFromHL                                          ; $51f2: $d7
	xor a                                            ; $51f3: $af
	ld a, a                                          ; $51f4: $7f
	call c, $92ff                                    ; $51f5: $dc $ff $92
	ld a, c                                          ; $51f8: $79
	ld sp, hl                                        ; $51f9: $f9
	pop af                                           ; $51fa: $f1
	add e                                            ; $51fb: $83
	ld [bc], a                                       ; $51fc: $02
	inc b                                            ; $51fd: $04
	nop                                              ; $51fe: $00
	nop                                              ; $51ff: $00
	inc hl                                           ; $5200: $23
	ld h, a                                          ; $5201: $67
	rst AddAOntoHL                                          ; $5202: $ef
	rst AddAOntoHL                                          ; $5203: $ef
	rst SubAFromDE                                          ; $5204: $df
	ld [hl], a                                       ; $5205: $77
	ldh [$98], a                                     ; $5206: $e0 $98
	db $fc                                           ; $5208: $fc
	cp c                                             ; $5209: $b9
	add hl, sp                                       ; $520a: $39
	ld [hl], c                                       ; $520b: $71
	ld h, e                                          ; $520c: $63
	add [hl]                                         ; $520d: $86
	nop                                              ; $520e: $00
	sbc $ff                                          ; $520f: $de $ff
	sbc d                                            ; $5211: $9a
	ld a, a                                          ; $5212: $7f
	rst SubAFromDE                                          ; $5213: $df
	rst FarCall                                          ; $5214: $f7
	ldh a, [$f0]                                     ; $5215: $f0 $f0
	cp $94                                           ; $5217: $fe $94
	ldh a, [$3f]                                     ; $5219: $f0 $3f
	rrca                                             ; $521b: $0f
	nop                                              ; $521c: $00
	nop                                              ; $521d: $00
	rst AddAOntoHL                                          ; $521e: $ef
	rst SubAFromBC                                          ; $521f: $e7
	ret nz                                           ; $5220: $c0

	cp b                                             ; $5221: $b8
	ldh [$e0], a                                     ; $5222: $e0 $e0
	db $fc                                           ; $5224: $fc
	sbc b                                            ; $5225: $98
	ld a, b                                          ; $5226: $78
	ldh a, [$c0]                                     ; $5227: $f0 $c0
	nop                                              ; $5229: $00
	nop                                              ; $522a: $00
	jp $fe01                                         ; $522b: $c3 $01 $fe


	sbc h                                            ; $522e: $9c
	ld [$3c18], sp                                   ; $522f: $08 $18 $3c
	cp $77                                           ; $5232: $fe $77
	or $9e                                           ; $5234: $f6 $9e
	nop                                              ; $5236: $00
	inc b                                            ; $5237: $04
	nop                                              ; $5238: $00
	sbc $44                                          ; $5239: $de $44
	ld e, h                                          ; $523b: $5c
	add b                                            ; $523c: $80
	adc h                                            ; $523d: $8c
	ld b, e                                          ; $523e: $43
	call nz, $3f9b                                   ; $523f: $c4 $9b $3f
	cp $f7                                           ; $5242: $fe $f7
	xor $dc                                          ; $5244: $ee $dc
	cp $ff                                           ; $5246: $fe $ff
	rst $38                                          ; $5248: $ff
	db $fd                                           ; $5249: $fd
	jp $1f0f                                         ; $524a: $c3 $0f $1f


	ld a, $df                                        ; $524d: $3e $df
	and a                                            ; $524f: $a7
	ld a, a                                          ; $5250: $7f
	sbc $ff                                          ; $5251: $de $ff
	sub b                                            ; $5253: $90
	ld a, a                                          ; $5254: $7f
	ld e, a                                          ; $5255: $5f
	ld [hl], c                                       ; $5256: $71
	ld sp, hl                                        ; $5257: $f9
	ld sp, hl                                        ; $5258: $f9
	add e                                            ; $5259: $83
	ldh [c], a                                       ; $525a: $e2
	db $fc                                           ; $525b: $fc
	ld hl, sp+$48                                    ; $525c: $f8 $48
	inc hl                                           ; $525e: $23
	ld h, a                                          ; $525f: $67
	rst AddAOntoHL                                          ; $5260: $ef
	rst AddAOntoHL                                          ; $5261: $ef
	rst SubAFromDE                                          ; $5262: $df
	sbc $ff                                          ; $5263: $de $ff
	add b                                            ; $5265: $80
	cp $fc                                           ; $5266: $fe $fc
	cp c                                             ; $5268: $b9
	add hl, sp                                       ; $5269: $39
	ld [hl], c                                       ; $526a: $71
	ld h, e                                          ; $526b: $63
	add [hl]                                         ; $526c: $86
	nop                                              ; $526d: $00
	ld a, h                                          ; $526e: $7c
	rst FarCall                                          ; $526f: $f7
	rst GetHLinHL                                          ; $5270: $cf
	jp hl                                            ; $5271: $e9


	pop af                                           ; $5272: $f1
	cp $f0                                           ; $5273: $fe $f0
	ldh a, [$fe]                                     ; $5275: $f0 $fe
	cpl                                              ; $5277: $2f
	cpl                                              ; $5278: $2f
	dec c                                            ; $5279: $0d
	dec b                                            ; $527a: $05
	inc bc                                           ; $527b: $03
	nop                                              ; $527c: $00
	nop                                              ; $527d: $00
	cpl                                              ; $527e: $2f
	rlca                                             ; $527f: $07
	ldh [$a0], a                                     ; $5280: $e0 $a0
	ld b, b                                          ; $5282: $40
	ldh [rP1], a                                     ; $5283: $e0 $00
	sub h                                            ; $5285: $94
	nop                                              ; $5286: $00
	jr nz, jr_02a_52a9                               ; $5287: $20 $20

	ldh [$e0], a                                     ; $5289: $e0 $e0
	ret nz                                           ; $528b: $c0

	add b                                            ; $528c: $80
	nop                                              ; $528d: $00
	nop                                              ; $528e: $00
	jp $fe01                                         ; $528f: $c3 $01 $fe


	sbc h                                            ; $5292: $9c
	ld [$3c18], sp                                   ; $5293: $08 $18 $3c
	ld sp, hl                                        ; $5296: $f9
	inc b                                            ; $5297: $04
	nop                                              ; $5298: $00
	sbc $44                                          ; $5299: $de $44
	ld e, e                                          ; $529b: $5b
	add b                                            ; $529c: $80
	adc h                                            ; $529d: $8c
	ld b, e                                          ; $529e: $43
	call nz, $3f9b                                   ; $529f: $c4 $9b $3f
	rst $38                                          ; $52a2: $ff
	cp $f7                                           ; $52a3: $fe $f7
	xor $fe                                          ; $52a5: $ee $fe
	rst $38                                          ; $52a7: $ff
	rst $38                                          ; $52a8: $ff

jr_02a_52a9:
	db $fd                                           ; $52a9: $fd
	jp nz, $0f01                                     ; $52aa: $c2 $01 $0f

	rra                                              ; $52ad: $1f
	rst SubAFromDE                                          ; $52ae: $df
	and a                                            ; $52af: $a7
	ld a, a                                          ; $52b0: $7f
	db $dd                                           ; $52b1: $dd
	rst $38                                          ; $52b2: $ff
	sub c                                            ; $52b3: $91
	ld a, a                                          ; $52b4: $7f
	ld [hl], c                                       ; $52b5: $71
	ld sp, hl                                        ; $52b6: $f9
	ld sp, hl                                        ; $52b7: $f9
	add e                                            ; $52b8: $83
	ld [bc], a                                       ; $52b9: $02
	ldh [$fc], a                                     ; $52ba: $e0 $fc
	ld hl, sp+$23                                    ; $52bc: $f8 $23
	ld h, a                                          ; $52be: $67
	rst AddAOntoHL                                          ; $52bf: $ef
	rst AddAOntoHL                                          ; $52c0: $ef
	rst SubAFromDE                                          ; $52c1: $df
	sbc $ff                                          ; $52c2: $de $ff
	add b                                            ; $52c4: $80
	cp $fc                                           ; $52c5: $fe $fc
	cp c                                             ; $52c7: $b9
	add hl, sp                                       ; $52c8: $39
	ld [hl], c                                       ; $52c9: $71
	ld h, e                                          ; $52ca: $63
	add [hl]                                         ; $52cb: $86
	nop                                              ; $52cc: $00
	call c, $f77c                                    ; $52cd: $dc $7c $f7
	jp hl                                            ; $52d0: $e9


	pop af                                           ; $52d1: $f1
	cp $f0                                           ; $52d2: $fe $f0
	ldh a, [$3e]                                     ; $52d4: $f0 $3e
	cp $2f                                           ; $52d6: $fe $2f
	dec c                                            ; $52d8: $0d
	dec b                                            ; $52d9: $05
	inc bc                                           ; $52da: $03
	nop                                              ; $52db: $00
	nop                                              ; $52dc: $00
	ld c, a                                          ; $52dd: $4f
	daa                                              ; $52de: $27
	nop                                              ; $52df: $00
	and b                                            ; $52e0: $a0
	ld b, b                                          ; $52e1: $40
	ldh [rP1], a                                     ; $52e2: $e0 $00
	sub h                                            ; $52e4: $94
	nop                                              ; $52e5: $00
	ld c, b                                          ; $52e6: $48
	jr nz, jr_02a_5309                               ; $52e7: $20 $20

	ldh [$c0], a                                     ; $52e9: $e0 $c0
	add b                                            ; $52eb: $80
	nop                                              ; $52ec: $00
	nop                                              ; $52ed: $00
	jp $fe01                                         ; $52ee: $c3 $01 $fe


	sbc h                                            ; $52f1: $9c
	ld [$3c18], sp                                   ; $52f2: $08 $18 $3c
	ld sp, hl                                        ; $52f5: $f9
	inc b                                            ; $52f6: $04
	nop                                              ; $52f7: $00
	sbc $44                                          ; $52f8: $de $44
	ld d, [hl]                                       ; $52fa: $56
	nop                                              ; $52fb: $00
	sub h                                            ; $52fc: $94
	ld b, e                                          ; $52fd: $43
	cp $c4                                           ; $52fe: $fe $c4
	rst $38                                          ; $5300: $ff
	sbc e                                            ; $5301: $9b
	rst $38                                          ; $5302: $ff
	ccf                                              ; $5303: $3f
	db $fd                                           ; $5304: $fd
	rst $38                                          ; $5305: $ff
	jp nz, $beff                                     ; $5306: $c2 $ff $be

jr_02a_5309:
	rst $38                                          ; $5309: $ff
	rst $38                                          ; $530a: $ff
	rst SubAFromDE                                          ; $530b: $df
	sub [hl]                                         ; $530c: $96
	ld [hl], c                                       ; $530d: $71
	and a                                            ; $530e: $a7
	ld sp, hl                                        ; $530f: $f9
	ld a, a                                          ; $5310: $7f
	ld sp, hl                                        ; $5311: $f9
	rst $38                                          ; $5312: $ff
	add e                                            ; $5313: $83
	rst $38                                          ; $5314: $ff
	ld [bc], a                                       ; $5315: $02
	ld l, a                                          ; $5316: $6f
	ldh a, [hDisp1_SCX]                                     ; $5317: $f0 $91
	inc hl                                           ; $5319: $23
	cp $67                                           ; $531a: $fe $67
	db $fc                                           ; $531c: $fc
	rst AddAOntoHL                                          ; $531d: $ef
	cp c                                             ; $531e: $b9
	rst AddAOntoHL                                          ; $531f: $ef
	add hl, sp                                       ; $5320: $39
	rst SubAFromDE                                          ; $5321: $df
	ld [hl], c                                       ; $5322: $71
	rst $38                                          ; $5323: $ff
	ld h, e                                          ; $5324: $63
	rst $38                                          ; $5325: $ff
	add [hl]                                         ; $5326: $86
	ld l, a                                          ; $5327: $6f
	db $ec                                           ; $5328: $ec
	sub [hl]                                         ; $5329: $96
	ei                                               ; $532a: $fb
	rlca                                             ; $532b: $07
	rst SubAFromDE                                          ; $532c: $df
	ccf                                              ; $532d: $3f
	ld a, h                                          ; $532e: $7c
	rst $38                                          ; $532f: $ff
	cp $03                                           ; $5330: $fe $03
	ldh a, [$bd]                                     ; $5332: $f0 $bd
	ldh a, [$ef]                                     ; $5334: $f0 $ef
	rst SubAFromBC                                          ; $5336: $e7
	ret nz                                           ; $5337: $c0

	rst SubAFromDE                                          ; $5338: $df
	ldh [$9a], a                                     ; $5339: $e0 $9a
	ldh a, [$38]                                     ; $533b: $f0 $38
	ld hl, sp-$20                                    ; $533d: $f8 $e0
	add b                                            ; $533f: $80
	db $fd                                           ; $5340: $fd
	sbc [hl]                                         ; $5341: $9e
	jp $01bd                                         ; $5342: $c3 $bd $01


	nop                                              ; $5345: $00
	nop                                              ; $5346: $00
	ld bc, $019d                                     ; $5347: $01 $9d $01
	ld [$18bf], sp                                   ; $534a: $08 $bf $18
	inc a                                            ; $534d: $3c
	sbc [hl]                                         ; $534e: $9e
	nop                                              ; $534f: $00
	inc b                                            ; $5350: $04
	nop                                              ; $5351: $00
	sbc $44                                          ; $5352: $de $44
	ld d, l                                          ; $5354: $55
	nop                                              ; $5355: $00
	sub h                                            ; $5356: $94
	ld b, e                                          ; $5357: $43
	cp $c4                                           ; $5358: $fe $c4
	rst $38                                          ; $535a: $ff
	sbc e                                            ; $535b: $9b
	rst $38                                          ; $535c: $ff
	ccf                                              ; $535d: $3f
	db $fd                                           ; $535e: $fd
	rst $38                                          ; $535f: $ff
	jp nz, $beff                                     ; $5360: $c2 $ff $be

	rst $38                                          ; $5363: $ff
	rst $38                                          ; $5364: $ff
	rst SubAFromDE                                          ; $5365: $df
	sub [hl]                                         ; $5366: $96
	ld [hl], c                                       ; $5367: $71
	and a                                            ; $5368: $a7
	ld sp, hl                                        ; $5369: $f9
	ld a, a                                          ; $536a: $7f
	ld sp, hl                                        ; $536b: $f9
	rst $38                                          ; $536c: $ff
	add e                                            ; $536d: $83
	rst $38                                          ; $536e: $ff
	ld [bc], a                                       ; $536f: $02
	ld l, a                                          ; $5370: $6f
	ldh a, [hDisp1_SCX]                                     ; $5371: $f0 $91
	inc hl                                           ; $5373: $23
	cp $67                                           ; $5374: $fe $67
	db $fc                                           ; $5376: $fc
	rst AddAOntoHL                                          ; $5377: $ef
	cp c                                             ; $5378: $b9
	rst AddAOntoHL                                          ; $5379: $ef
	add hl, sp                                       ; $537a: $39
	rst SubAFromDE                                          ; $537b: $df
	ld [hl], c                                       ; $537c: $71
	rst $38                                          ; $537d: $ff
	ld h, e                                          ; $537e: $63
	rst $38                                          ; $537f: $ff
	add [hl]                                         ; $5380: $86
	ld l, a                                          ; $5381: $6f
	db $ec                                           ; $5382: $ec
	ld a, a                                          ; $5383: $7f
	cp $98                                           ; $5384: $fe $98
	rst FarCall                                          ; $5386: $f7
	rrca                                             ; $5387: $0f
	rst SubAFromDE                                          ; $5388: $df
	ccf                                              ; $5389: $3f
	ld a, a                                          ; $538a: $7f
	ld hl, sp-$10                                    ; $538b: $f8 $f0
	cp h                                             ; $538d: $bc
	ldh a, [$ef]                                     ; $538e: $f0 $ef
	rst SubAFromBC                                          ; $5390: $e7
	ret nz                                           ; $5391: $c0

	ret nz                                           ; $5392: $c0

	sbc d                                            ; $5393: $9a
	ldh [$f0], a                                     ; $5394: $e0 $f0
	ldh a, [$f8]                                     ; $5396: $f0 $f8
	jr c, @-$01                                      ; $5398: $38 $fd

	sbc [hl]                                         ; $539a: $9e
	jp $01bd                                         ; $539b: $c3 $bd $01


	nop                                              ; $539e: $00
	nop                                              ; $539f: $00
	nop                                              ; $53a0: $00
	sbc b                                            ; $53a1: $98
	ld bc, $0109                                     ; $53a2: $01 $09 $01
	jr jr_02a_53a7                                   ; $53a5: $18 $00

jr_02a_53a7:
	inc a                                            ; $53a7: $3c
	nop                                              ; $53a8: $00
	inc b                                            ; $53a9: $04
	nop                                              ; $53aa: $00
	sbc $44                                          ; $53ab: $de $44
	ld b, e                                          ; $53ad: $43
	nop                                              ; $53ae: $00
	add b                                            ; $53af: $80
	sbc [hl]                                         ; $53b0: $9e
	di                                               ; $53b1: $f3
	xor h                                            ; $53b2: $ac
	rst FarCall                                          ; $53b3: $f7
	dec [hl]                                         ; $53b4: $35
	rst $38                                          ; $53b5: $ff
	ld a, [hl]                                       ; $53b6: $7e
	rst GetHLinHL                                          ; $53b7: $cf
	rst $38                                          ; $53b8: $ff
	add c                                            ; $53b9: $81
	or a                                             ; $53ba: $b7
	ld a, b                                          ; $53bb: $78
	ld a, l                                          ; $53bc: $7d
	cp $cf                                           ; $53bd: $fe $cf
	rst GetHLinHL                                          ; $53bf: $cf
	pop af                                           ; $53c0: $f1
	sbc a                                            ; $53c1: $9f
	ld sp, hl                                        ; $53c2: $f9
	sbc a                                            ; $53c3: $9f
	ld sp, hl                                        ; $53c4: $f9
	ccf                                              ; $53c5: $3f
	ld a, c                                          ; $53c6: $79
	cp a                                             ; $53c7: $bf
	ld sp, hl                                        ; $53c8: $f9
	cp a                                             ; $53c9: $bf
	ld sp, hl                                        ; $53ca: $f9
	ccf                                              ; $53cb: $3f
	db $fd                                           ; $53cc: $fd
	ld e, a                                          ; $53cd: $5f
	db $fd                                           ; $53ce: $fd
	adc h                                            ; $53cf: $8c
	rst SubAFromDE                                          ; $53d0: $df
	add a                                            ; $53d1: $87
	jp $e9e3                                         ; $53d2: $c3 $e3 $e9


	ld a, b                                          ; $53d5: $78
	ld hl, sp-$58                                    ; $53d6: $f8 $a8
	cp b                                             ; $53d8: $b8
	ld [$dc38], sp                                   ; $53d9: $08 $38 $dc
	ld [hl], b                                       ; $53dc: $70
	nop                                              ; $53dd: $00
	nop                                              ; $53de: $00
	ld bc, $5200                                     ; $53df: $01 $00 $52
	ld e, a                                          ; $53e2: $5f
	ld [hl], a                                       ; $53e3: $77
	cp $95                                           ; $53e4: $fe $95
	sub b                                            ; $53e6: $90
	sbc a                                            ; $53e7: $9f
	sub b                                            ; $53e8: $90
	sbc a                                            ; $53e9: $9f
	and b                                            ; $53ea: $a0
	cp a                                             ; $53eb: $bf
	and b                                            ; $53ec: $a0
	cp a                                             ; $53ed: $bf
	ret nz                                           ; $53ee: $c0

	rst $38                                          ; $53ef: $ff
	dec b                                            ; $53f0: $05
	nop                                              ; $53f1: $00
	sbc l                                            ; $53f2: $9d
	ld b, h                                          ; $53f3: $44
	ld b, a                                          ; $53f4: $47
	ld b, h                                          ; $53f5: $44
	nop                                              ; $53f6: $00
	add b                                            ; $53f7: $80
	sbc [hl]                                         ; $53f8: $9e
	di                                               ; $53f9: $f3
	xor h                                            ; $53fa: $ac
	rst FarCall                                          ; $53fb: $f7
	dec [hl]                                         ; $53fc: $35
	rst $38                                          ; $53fd: $ff
	ld a, [hl]                                       ; $53fe: $7e
	rst GetHLinHL                                          ; $53ff: $cf
	rst $38                                          ; $5400: $ff
	add c                                            ; $5401: $81
	rst $38                                          ; $5402: $ff
	nop                                              ; $5403: $00
	or a                                             ; $5404: $b7
	ld a, b                                          ; $5405: $78
	ld a, l                                          ; $5406: $7d
	cp $f1                                           ; $5407: $fe $f1
	sbc a                                            ; $5409: $9f
	ld sp, hl                                        ; $540a: $f9
	sbc a                                            ; $540b: $9f
	ld sp, hl                                        ; $540c: $f9
	ccf                                              ; $540d: $3f
	ld a, c                                          ; $540e: $79
	cp a                                             ; $540f: $bf
	ld sp, hl                                        ; $5410: $f9
	cp a                                             ; $5411: $bf
	ld sp, hl                                        ; $5412: $f9
	ccf                                              ; $5413: $3f
	db $fd                                           ; $5414: $fd
	ld e, a                                          ; $5415: $5f
	db $fd                                           ; $5416: $fd
	sub c                                            ; $5417: $91
	ld e, a                                          ; $5418: $5f
	rst GetHLinHL                                          ; $5419: $cf
	rst GetHLinHL                                          ; $541a: $cf
	add a                                            ; $541b: $87
	jp $e9e3                                         ; $541c: $c3 $e3 $e9


	xor b                                            ; $541f: $a8
	cp b                                             ; $5420: $b8
	ld [$dc38], sp                                   ; $5421: $08 $38 $dc
	ld [hl], b                                       ; $5424: $70
	nop                                              ; $5425: $00
	cp a                                             ; $5426: $bf
	ld bc, $90d2                                     ; $5427: $01 $d2 $90
	rst SubAFromDE                                          ; $542a: $df
	ld d, d                                          ; $542b: $52
	ld e, a                                          ; $542c: $5f
	ld d, d                                          ; $542d: $52
	ld e, a                                          ; $542e: $5f
	sub b                                            ; $542f: $90
	sbc a                                            ; $5430: $9f
	sub b                                            ; $5431: $90
	sbc a                                            ; $5432: $9f
	and b                                            ; $5433: $a0
	cp a                                             ; $5434: $bf
	and b                                            ; $5435: $a0
	cp a                                             ; $5436: $bf
	ret nz                                           ; $5437: $c0

	rst $38                                          ; $5438: $ff
	dec b                                            ; $5439: $05
	nop                                              ; $543a: $00
	sbc l                                            ; $543b: $9d
	ld b, h                                          ; $543c: $44
	ld b, a                                          ; $543d: $47
	ld b, b                                          ; $543e: $40
	nop                                              ; $543f: $00
	sub e                                            ; $5440: $93
	sbc [hl]                                         ; $5441: $9e
	di                                               ; $5442: $f3
	xor h                                            ; $5443: $ac
	rst FarCall                                          ; $5444: $f7
	dec [hl]                                         ; $5445: $35
	rst $38                                          ; $5446: $ff
	ld a, [hl]                                       ; $5447: $7e
	rst GetHLinHL                                          ; $5448: $cf
	rst $38                                          ; $5449: $ff
	add c                                            ; $544a: $81
	rst $38                                          ; $544b: $ff
	nop                                              ; $544c: $00
	ld [hl], a                                       ; $544d: $77
	cp $8f                                           ; $544e: $fe $8f
	pop af                                           ; $5450: $f1
	sbc a                                            ; $5451: $9f
	ld sp, hl                                        ; $5452: $f9
	sbc a                                            ; $5453: $9f
	ld sp, hl                                        ; $5454: $f9
	ccf                                              ; $5455: $3f
	ld a, c                                          ; $5456: $79
	cp a                                             ; $5457: $bf
	ld sp, hl                                        ; $5458: $f9
	cp a                                             ; $5459: $bf
	ld sp, hl                                        ; $545a: $f9
	ccf                                              ; $545b: $3f
	db $fd                                           ; $545c: $fd
	ld e, a                                          ; $545d: $5f
	db $fd                                           ; $545e: $fd
	ld e, a                                          ; $545f: $5f
	ld [hl], a                                       ; $5460: $77
	db $ec                                           ; $5461: $ec
	sub c                                            ; $5462: $91
	ccf                                              ; $5463: $3f
	ret nz                                           ; $5464: $c0

	rst $38                                          ; $5465: $ff
	rst $38                                          ; $5466: $ff
	ld a, h                                          ; $5467: $7c
	ld a, [hl]                                       ; $5468: $7e
	call c, $0070                                    ; $5469: $dc $70 $00
	nop                                              ; $546c: $00
	ld bc, $5200                                     ; $546d: $01 $00 $52
	ld e, a                                          ; $5470: $5f
	ld [hl], a                                       ; $5471: $77
	cp $95                                           ; $5472: $fe $95
	sub b                                            ; $5474: $90
	sbc a                                            ; $5475: $9f
	sub b                                            ; $5476: $90
	sbc a                                            ; $5477: $9f
	and b                                            ; $5478: $a0
	cp a                                             ; $5479: $bf
	and b                                            ; $547a: $a0
	cp a                                             ; $547b: $bf
	ret nz                                           ; $547c: $c0

	rst $38                                          ; $547d: $ff
	dec b                                            ; $547e: $05
	nop                                              ; $547f: $00
	sbc l                                            ; $5480: $9d
	ld b, h                                          ; $5481: $44
	ld b, a                                          ; $5482: $47
	ld a, $00                                        ; $5483: $3e $00
	sub e                                            ; $5485: $93
	sbc [hl]                                         ; $5486: $9e
	di                                               ; $5487: $f3
	xor h                                            ; $5488: $ac
	rst FarCall                                          ; $5489: $f7
	dec [hl]                                         ; $548a: $35
	rst $38                                          ; $548b: $ff
	ld a, [hl]                                       ; $548c: $7e
	rst GetHLinHL                                          ; $548d: $cf
	rst $38                                          ; $548e: $ff
	add c                                            ; $548f: $81
	rst $38                                          ; $5490: $ff
	nop                                              ; $5491: $00
	ld [hl], a                                       ; $5492: $77
	cp $8f                                           ; $5493: $fe $8f
	pop af                                           ; $5495: $f1
	sbc a                                            ; $5496: $9f
	ld sp, hl                                        ; $5497: $f9
	sbc a                                            ; $5498: $9f
	ld sp, hl                                        ; $5499: $f9
	ccf                                              ; $549a: $3f
	ld a, c                                          ; $549b: $79
	cp a                                             ; $549c: $bf
	ld sp, hl                                        ; $549d: $f9
	cp a                                             ; $549e: $bf
	ld sp, hl                                        ; $549f: $f9
	ccf                                              ; $54a0: $3f
	db $fd                                           ; $54a1: $fd
	ld e, a                                          ; $54a2: $5f
	db $fd                                           ; $54a3: $fd
	ld e, a                                          ; $54a4: $5f
	ld l, a                                          ; $54a5: $6f
	ld [$df93], a                                    ; $54a6: $ea $93 $df
	db $e3                                           ; $54a9: $e3
	ld a, [hl]                                       ; $54aa: $7e
	rst $38                                          ; $54ab: $ff
	cp h                                             ; $54ac: $bc
	ld a, b                                          ; $54ad: $78
	nop                                              ; $54ae: $00
	nop                                              ; $54af: $00
	ld bc, $5200                                     ; $54b0: $01 $00 $52
	ld e, a                                          ; $54b3: $5f
	ld [hl], a                                       ; $54b4: $77
	cp $95                                           ; $54b5: $fe $95
	sub b                                            ; $54b7: $90
	sbc a                                            ; $54b8: $9f
	sub b                                            ; $54b9: $90
	sbc a                                            ; $54ba: $9f
	and b                                            ; $54bb: $a0
	cp a                                             ; $54bc: $bf
	and b                                            ; $54bd: $a0
	cp a                                             ; $54be: $bf
	ret nz                                           ; $54bf: $c0

	rst $38                                          ; $54c0: $ff
	dec b                                            ; $54c1: $05
	nop                                              ; $54c2: $00
	sbc l                                            ; $54c3: $9d
	ld b, h                                          ; $54c4: $44
	ld b, a                                          ; $54c5: $47
	ld b, c                                          ; $54c6: $41
	add b                                            ; $54c7: $80
	adc h                                            ; $54c8: $8c
	sbc [hl]                                         ; $54c9: $9e
	and h                                            ; $54ca: $a4
	dec a                                            ; $54cb: $3d
	ld a, a                                          ; $54cc: $7f
	rst FarCall                                          ; $54cd: $f7
	db $fd                                           ; $54ce: $fd
	rst GetHLinHL                                          ; $54cf: $cf
	rst JumpTable                                          ; $54d0: $c7
	di                                               ; $54d1: $f3
	rst $38                                          ; $54d2: $ff
	rst $38                                          ; $54d3: $ff
	jp Jump_02a_7eb8                                 ; $54d4: $c3 $b8 $7e


	rst $38                                          ; $54d7: $ff
	set 6, c                                         ; $54d8: $cb $f1
	ld sp, hl                                        ; $54da: $f9
	ld a, c                                          ; $54db: $79
	sbc $f9                                          ; $54dc: $de $f9
	rst SubAFromDE                                          ; $54de: $df
	db $fd                                           ; $54df: $fd
	rst SubAFromDE                                          ; $54e0: $df
	sbc a                                            ; $54e1: $9f
	rst SubAFromDE                                          ; $54e2: $df
	cp a                                             ; $54e3: $bf
	rst SubAFromDE                                          ; $54e4: $df
	ccf                                              ; $54e5: $3f
	adc l                                            ; $54e6: $8d
	ld e, a                                          ; $54e7: $5f
	rst SubAFromDE                                          ; $54e8: $df
	add e                                            ; $54e9: $83
	pop hl                                           ; $54ea: $e1
	ld a, b                                          ; $54eb: $78
	xor b                                            ; $54ec: $a8
	ld [$00dc], sp                                   ; $54ed: $08 $dc $00
	ld bc, $e8c1                                     ; $54f0: $01 $c1 $e8
	ld hl, sp-$48                                    ; $54f3: $f8 $b8
	jr c, jr_02a_5567                                ; $54f5: $38 $70

	nop                                              ; $54f7: $00
	nop                                              ; $54f8: $00
	sbc $52                                          ; $54f9: $de $52
	rst SubAFromDE                                          ; $54fb: $df
	sub b                                            ; $54fc: $90
	rst SubAFromDE                                          ; $54fd: $df
	and b                                            ; $54fe: $a0
	sbc [hl]                                         ; $54ff: $9e
	ret nz                                           ; $5500: $c0

	sbc $5f                                          ; $5501: $de $5f
	ld [hl], a                                       ; $5503: $77
	db $dd                                           ; $5504: $dd
	sbc [hl]                                         ; $5505: $9e
	rst $38                                          ; $5506: $ff
	dec b                                            ; $5507: $05
	nop                                              ; $5508: $00
	sbc l                                            ; $5509: $9d
	ld b, h                                          ; $550a: $44
	ld b, a                                          ; $550b: $47
	ld b, d                                          ; $550c: $42
	add b                                            ; $550d: $80
	adc h                                            ; $550e: $8c
	sbc [hl]                                         ; $550f: $9e
	and h                                            ; $5510: $a4
	dec a                                            ; $5511: $3d
	ld a, a                                          ; $5512: $7f
	rst $38                                          ; $5513: $ff
	rst FarCall                                          ; $5514: $f7
	db $fd                                           ; $5515: $fd
	rst GetHLinHL                                          ; $5516: $cf
	di                                               ; $5517: $f3
	rst $38                                          ; $5518: $ff
	rst $38                                          ; $5519: $ff
	jp $3880                                         ; $551a: $c3 $80 $38


	ld a, [hl]                                       ; $551d: $7e
	rst $38                                          ; $551e: $ff
	pop af                                           ; $551f: $f1
	ld sp, hl                                        ; $5520: $f9
	ld a, c                                          ; $5521: $79
	sbc $f9                                          ; $5522: $de $f9
	rst SubAFromDE                                          ; $5524: $df
	db $fd                                           ; $5525: $fd
	rst SubAFromDE                                          ; $5526: $df
	sbc a                                            ; $5527: $9f
	rst SubAFromDE                                          ; $5528: $df
	cp a                                             ; $5529: $bf
	rst SubAFromDE                                          ; $552a: $df
	ccf                                              ; $552b: $3f
	rst SubAFromDE                                          ; $552c: $df
	ld e, a                                          ; $552d: $5f
	add h                                            ; $552e: $84
	rst JumpTable                                          ; $552f: $c7
	add e                                            ; $5530: $83
	ld a, b                                          ; $5531: $78
	xor b                                            ; $5532: $a8
	ld [$00dc], sp                                   ; $5533: $08 $dc $00
	ld bc, $c9cb                                     ; $5536: $01 $cb $c9
	ld hl, sp-$48                                    ; $5539: $f8 $b8
	jr c, jr_02a_55ad                                ; $553b: $38 $70

	nop                                              ; $553d: $00
	nop                                              ; $553e: $00
	jp nc, $5252                                     ; $553f: $d2 $52 $52

	sub b                                            ; $5542: $90
	sub b                                            ; $5543: $90
	and b                                            ; $5544: $a0
	and b                                            ; $5545: $a0
	ret nz                                           ; $5546: $c0

	rst SubAFromDE                                          ; $5547: $df
	ld e, a                                          ; $5548: $5f
	ld e, a                                          ; $5549: $5f
	ld [hl], a                                       ; $554a: $77
	db $dd                                           ; $554b: $dd
	sbc [hl]                                         ; $554c: $9e
	rst $38                                          ; $554d: $ff
	dec b                                            ; $554e: $05
	nop                                              ; $554f: $00
	sbc l                                            ; $5550: $9d
	ld b, h                                          ; $5551: $44
	ld b, a                                          ; $5552: $47
	ccf                                              ; $5553: $3f
	add b                                            ; $5554: $80
	sbc e                                            ; $5555: $9b
	sbc [hl]                                         ; $5556: $9e
	and h                                            ; $5557: $a4
	dec a                                            ; $5558: $3d
	ld a, a                                          ; $5559: $7f
	db $dd                                           ; $555a: $dd
	rst $38                                          ; $555b: $ff
	sbc d                                            ; $555c: $9a
	di                                               ; $555d: $f3
	rst $38                                          ; $555e: $ff
	rst $38                                          ; $555f: $ff
	jp $fe80                                         ; $5560: $c3 $80 $fe


	sbc h                                            ; $5563: $9c
	pop af                                           ; $5564: $f1
	ld sp, hl                                        ; $5565: $f9
	ld a, c                                          ; $5566: $79

jr_02a_5567:
	sbc $f9                                          ; $5567: $de $f9
	rst SubAFromDE                                          ; $5569: $df
	db $fd                                           ; $556a: $fd
	rst SubAFromDE                                          ; $556b: $df
	sbc a                                            ; $556c: $9f
	rst SubAFromDE                                          ; $556d: $df
	cp a                                             ; $556e: $bf
	rst SubAFromDE                                          ; $556f: $df
	ccf                                              ; $5570: $3f
	rst SubAFromDE                                          ; $5571: $df
	ld e, a                                          ; $5572: $5f
	adc a                                            ; $5573: $8f
	rst GetHLinHL                                          ; $5574: $cf
	add e                                            ; $5575: $83
	jr c, @+$7e                                      ; $5576: $38 $7c

	rst JumpTable                                          ; $5578: $c7
	call c, Boot                                     ; $5579: $dc $00 $01
	nop                                              ; $557c: $00
	nop                                              ; $557d: $00
	ld a, h                                          ; $557e: $7c
	cp $ff                                           ; $557f: $fe $ff
	ld [hl], b                                       ; $5581: $70
	nop                                              ; $5582: $00
	nop                                              ; $5583: $00
	sbc $52                                          ; $5584: $de $52
	rst SubAFromDE                                          ; $5586: $df
	sub b                                            ; $5587: $90
	rst SubAFromDE                                          ; $5588: $df
	and b                                            ; $5589: $a0
	sbc [hl]                                         ; $558a: $9e
	ret nz                                           ; $558b: $c0

	sbc $5f                                          ; $558c: $de $5f
	ld [hl], a                                       ; $558e: $77
	db $dd                                           ; $558f: $dd
	sbc [hl]                                         ; $5590: $9e
	rst $38                                          ; $5591: $ff
	dec b                                            ; $5592: $05
	nop                                              ; $5593: $00
	sbc l                                            ; $5594: $9d
	ld b, h                                          ; $5595: $44
	ld b, a                                          ; $5596: $47
	ld a, $80                                        ; $5597: $3e $80
	sbc e                                            ; $5599: $9b
	sbc [hl]                                         ; $559a: $9e
	and h                                            ; $559b: $a4
	dec a                                            ; $559c: $3d
	ld a, a                                          ; $559d: $7f
	db $dd                                           ; $559e: $dd
	rst $38                                          ; $559f: $ff
	sbc d                                            ; $55a0: $9a
	di                                               ; $55a1: $f3
	rst $38                                          ; $55a2: $ff
	rst $38                                          ; $55a3: $ff
	jp $fe80                                         ; $55a4: $c3 $80 $fe


	sbc h                                            ; $55a7: $9c
	pop af                                           ; $55a8: $f1
	ld sp, hl                                        ; $55a9: $f9
	ld a, c                                          ; $55aa: $79
	sbc $f9                                          ; $55ab: $de $f9

jr_02a_55ad:
	rst SubAFromDE                                          ; $55ad: $df
	db $fd                                           ; $55ae: $fd
	rst SubAFromDE                                          ; $55af: $df
	sbc a                                            ; $55b0: $9f
	rst SubAFromDE                                          ; $55b1: $df
	cp a                                             ; $55b2: $bf
	rst SubAFromDE                                          ; $55b3: $df
	ccf                                              ; $55b4: $3f
	rst SubAFromDE                                          ; $55b5: $df
	ld e, a                                          ; $55b6: $5f
	sub a                                            ; $55b7: $97
	rst GetHLinHL                                          ; $55b8: $cf
	add e                                            ; $55b9: $83
	nop                                              ; $55ba: $00
	ld a, b                                          ; $55bb: $78
	cp $fb                                           ; $55bc: $fe $fb
	nop                                              ; $55be: $00
	ld bc, $9afe                                     ; $55bf: $01 $fe $9a
	db $fc                                           ; $55c2: $fc
	cp $87                                           ; $55c3: $fe $87
	nop                                              ; $55c5: $00
	nop                                              ; $55c6: $00
	sbc $52                                          ; $55c7: $de $52
	rst SubAFromDE                                          ; $55c9: $df
	sub b                                            ; $55ca: $90
	rst SubAFromDE                                          ; $55cb: $df
	and b                                            ; $55cc: $a0
	sbc [hl]                                         ; $55cd: $9e
	ret nz                                           ; $55ce: $c0

	sbc $5f                                          ; $55cf: $de $5f
	ld [hl], a                                       ; $55d1: $77
	db $dd                                           ; $55d2: $dd
	sbc [hl]                                         ; $55d3: $9e
	rst $38                                          ; $55d4: $ff
	dec b                                            ; $55d5: $05
	nop                                              ; $55d6: $00
	sbc l                                            ; $55d7: $9d
	ld b, h                                          ; $55d8: $44
	ld b, a                                          ; $55d9: $47
	jr nz, jr_02a_55dc                               ; $55da: $20 $00

jr_02a_55dc:
	add h                                            ; $55dc: $84
	db $fc                                           ; $55dd: $fc
	call z, $c4fc                                    ; $55de: $cc $fc $c4
	ld h, [hl]                                       ; $55e1: $66
	jp nz, $8072                                     ; $55e2: $c2 $72 $80

	ret nc                                           ; $55e5: $d0

	ldh [rSVBK], a                                   ; $55e6: $e0 $70
	ret nz                                           ; $55e8: $c0

	and b                                            ; $55e9: $a0
	ld h, b                                          ; $55ea: $60
	ldh [rP1], a                                     ; $55eb: $e0 $00
	ld e, h                                          ; $55ed: $5c
	cp $bc                                           ; $55ee: $fe $bc
	ld b, b                                          ; $55f0: $40
	ldh [rP1], a                                     ; $55f1: $e0 $00
	ldh a, [rAUD2LOW]                                ; $55f3: $f0 $18
	ldh a, [rP1]                                     ; $55f5: $f0 $00
	ldh [$73], a                                     ; $55f7: $e0 $73
	cp $04                                           ; $55f9: $fe $04
	nop                                              ; $55fb: $00
	sbc [hl]                                         ; $55fc: $9e
	ld d, c                                          ; $55fd: $51
	jr nz, jr_02a_5600                               ; $55fe: $20 $00

jr_02a_5600:
	add h                                            ; $5600: $84
	db $fc                                           ; $5601: $fc
	call z, $c4fc                                    ; $5602: $cc $fc $c4
	ld h, [hl]                                       ; $5605: $66
	jp nz, $8072                                     ; $5606: $c2 $72 $80

	ret nc                                           ; $5609: $d0

	ldh [rSVBK], a                                   ; $560a: $e0 $70
	ret nz                                           ; $560c: $c0

	and b                                            ; $560d: $a0
	ld h, b                                          ; $560e: $60
	ldh [rP1], a                                     ; $560f: $e0 $00
	ld a, h                                          ; $5611: $7c
	cp $bc                                           ; $5612: $fe $bc
	ld a, b                                          ; $5614: $78
	ldh [rP1], a                                     ; $5615: $e0 $00
	ldh a, [rAUD2LOW]                                ; $5617: $f0 $18
	ldh a, [rP1]                                     ; $5619: $f0 $00
	ldh [$73], a                                     ; $561b: $e0 $73
	cp $04                                           ; $561d: $fe $04
	nop                                              ; $561f: $00
	sbc [hl]                                         ; $5620: $9e
	ld d, c                                          ; $5621: $51
	ld hl, $df80                                     ; $5622: $21 $80 $df
	db $fc                                           ; $5625: $fc
	add h                                            ; $5626: $84
	ld h, [hl]                                       ; $5627: $66
	ld [hl], d                                       ; $5628: $72
	ret nc                                           ; $5629: $d0

	ld [hl], b                                       ; $562a: $70
	and b                                            ; $562b: $a0
	ldh [$cc], a                                     ; $562c: $e0 $cc
	call nz, $80c2                                   ; $562e: $c4 $c2 $80
	ldh [$c0], a                                     ; $5631: $e0 $c0
	ld h, b                                          ; $5633: $60
	nop                                              ; $5634: $00
	ld a, h                                          ; $5635: $7c
	cp $fc                                           ; $5636: $fe $fc
	ldh [$f0], a                                     ; $5638: $e0 $f0
	ldh a, [$e0]                                     ; $563a: $f0 $e0
	ldh [$fe], a                                     ; $563c: $e0 $fe
	ld a, h                                          ; $563e: $7c
	jr c, jr_02a_5641                                ; $563f: $38 $00

jr_02a_5641:
	jr jr_02a_5641                                   ; $5641: $18 $fe

	inc b                                            ; $5643: $04
	nop                                              ; $5644: $00
	sbc [hl]                                         ; $5645: $9e
	ld d, c                                          ; $5646: $51
	inc hl                                           ; $5647: $23
	nop                                              ; $5648: $00
	add [hl]                                         ; $5649: $86
	db $fc                                           ; $564a: $fc
	call z, $c4fc                                    ; $564b: $cc $fc $c4
	ld h, [hl]                                       ; $564e: $66
	jp nz, $8072                                     ; $564f: $c2 $72 $80

	ret nc                                           ; $5652: $d0

	ldh [rSVBK], a                                   ; $5653: $e0 $70
	ret nz                                           ; $5655: $c0

	and b                                            ; $5656: $a0
	ld h, b                                          ; $5657: $60
	ldh [rP1], a                                     ; $5658: $e0 $00
	ld a, h                                          ; $565a: $7c
	cp $fe                                           ; $565b: $fe $fe
	ld a, h                                          ; $565d: $7c
	cp h                                             ; $565e: $bc
	ld a, h                                          ; $565f: $7c
	call c, $f838                                    ; $5660: $dc $38 $f8
	cp a                                             ; $5663: $bf
	ldh a, [$f0]                                     ; $5664: $f0 $f0
	sbc h                                            ; $5666: $9c
	jr @-$0e                                         ; $5667: $18 $f0

	nop                                              ; $5669: $00
	inc b                                            ; $566a: $04
	nop                                              ; $566b: $00
	sbc [hl]                                         ; $566c: $9e
	ld d, c                                          ; $566d: $51
	jr nz, jr_02a_5670                               ; $566e: $20 $00

jr_02a_5670:
	add [hl]                                         ; $5670: $86
	db $fc                                           ; $5671: $fc
	call z, $c4fc                                    ; $5672: $cc $fc $c4
	ld h, [hl]                                       ; $5675: $66
	jp nz, $8072                                     ; $5676: $c2 $72 $80

	ret nc                                           ; $5679: $d0

jr_02a_567a:
	ldh [rSVBK], a                                   ; $567a: $e0 $70
	ret nz                                           ; $567c: $c0

	and b                                            ; $567d: $a0
	ld h, b                                          ; $567e: $60
	ld h, c                                          ; $567f: $61
	add b                                            ; $5680: $80
	ld l, d                                          ; $5681: $6a
	db $fc                                           ; $5682: $fc
	ld hl, sp+$00                                    ; $5683: $f8 $00
	ldh [rP1], a                                     ; $5685: $e0 $00
	ret nc                                           ; $5687: $d0

	jr c, jr_02a_567a                                ; $5688: $38 $f0

	ld a, e                                          ; $568a: $7b
	ld a, [$fe77]                                    ; $568b: $fa $77 $fe
	inc b                                            ; $568e: $04
	nop                                              ; $568f: $00

jr_02a_5690:
	sbc [hl]                                         ; $5690: $9e
	ld d, b                                          ; $5691: $50
	ld hl, $8300                                     ; $5692: $21 $00 $83
	db $fc                                           ; $5695: $fc

jr_02a_5696:
	call z, $c4fc                                    ; $5696: $cc $fc $c4
	ld h, [hl]                                       ; $5699: $66
	jp nz, $8072                                     ; $569a: $c2 $72 $80

	ret nc                                           ; $569d: $d0

	ldh [rSVBK], a                                   ; $569e: $e0 $70
	ret nz                                           ; $56a0: $c0

	and b                                            ; $56a1: $a0
	ld h, b                                          ; $56a2: $60
	ld h, b                                          ; $56a3: $60
	add b                                            ; $56a4: $80
	rst $38                                          ; $56a5: $ff
	cp $fe                                           ; $56a6: $fe $fe
	ld a, h                                          ; $56a8: $7c
	ret nz                                           ; $56a9: $c0

	jr c, @-$0e                                      ; $56aa: $38 $f0

	nop                                              ; $56ac: $00
	ret nc                                           ; $56ad: $d0

	jr c, jr_02a_5690                                ; $56ae: $38 $e0

	nop                                              ; $56b0: $00
	ld [hl], a                                       ; $56b1: $77
	cp $04                                           ; $56b2: $fe $04
	nop                                              ; $56b4: $00
	sbc [hl]                                         ; $56b5: $9e
	ld d, b                                          ; $56b6: $50
	ld [hl+], a                                      ; $56b7: $22
	add b                                            ; $56b8: $80
	rst SubAFromDE                                          ; $56b9: $df
	db $fc                                           ; $56ba: $fc
	add l                                            ; $56bb: $85
	ld h, [hl]                                       ; $56bc: $66
	ld [hl], d                                       ; $56bd: $72
	ret nc                                           ; $56be: $d0

	ld [hl], b                                       ; $56bf: $70
	and b                                            ; $56c0: $a0
	ldh [$cc], a                                     ; $56c1: $e0 $cc
	call nz, $80c2                                   ; $56c3: $c4 $c2 $80
	ldh [$c0], a                                     ; $56c6: $e0 $c0
	ld h, b                                          ; $56c8: $60
	nop                                              ; $56c9: $00
	cp $7e                                           ; $56ca: $fe $7e
	cp h                                             ; $56cc: $bc
	ret z                                            ; $56cd: $c8

	ldh a, [$d0]                                     ; $56ce: $f0 $d0
	ldh [$e0], a                                     ; $56d0: $e0 $e0
	cp $fc                                           ; $56d2: $fe $fc
	ld a, b                                          ; $56d4: $78
	jr nc, jr_02a_5696                               ; $56d5: $30 $bf

	jr c, jr_02a_56d9                                ; $56d7: $38 $00

jr_02a_56d9:
	inc b                                            ; $56d9: $04
	nop                                              ; $56da: $00
	sbc [hl]                                         ; $56db: $9e
	ld d, b                                          ; $56dc: $50
	inc hl                                           ; $56dd: $23
	add b                                            ; $56de: $80
	rst SubAFromDE                                          ; $56df: $df
	db $fc                                           ; $56e0: $fc
	add c                                            ; $56e1: $81
	ld h, [hl]                                       ; $56e2: $66
	ld [hl], d                                       ; $56e3: $72
	ret nc                                           ; $56e4: $d0

	ld [hl], b                                       ; $56e5: $70
	and b                                            ; $56e6: $a0
	ld h, b                                          ; $56e7: $60
	call z, $c2c4                                    ; $56e8: $cc $c4 $c2
	add b                                            ; $56eb: $80
	ldh [$c0], a                                     ; $56ec: $e0 $c0
	ld h, b                                          ; $56ee: $60
	add b                                            ; $56ef: $80
	rst $38                                          ; $56f0: $ff
	ld a, a                                          ; $56f1: $7f

jr_02a_56f2:
	db $fc                                           ; $56f2: $fc
	cp [hl]                                          ; $56f3: $be
	call c, $d0f0                                    ; $56f4: $dc $f0 $d0
	ldh [rIE], a                                     ; $56f7: $e0 $ff
	cp $7e                                           ; $56f9: $fe $7e
	ld a, h                                          ; $56fb: $7c
	jr c, jr_02a_56fe                                ; $56fc: $38 $00

jr_02a_56fe:
	jr c, jr_02a_5700                                ; $56fe: $38 $00

jr_02a_5700:
	inc b                                            ; $5700: $04
	nop                                              ; $5701: $00
	sbc [hl]                                         ; $5702: $9e
	ld d, b                                          ; $5703: $50
	ld e, c                                          ; $5704: $59
	add b                                            ; $5705: $80
	add b                                            ; $5706: $80
	rra                                              ; $5707: $1f
	dec a                                            ; $5708: $3d
	ccf                                              ; $5709: $3f
	ld a, l                                          ; $570a: $7d
	ld [hl], a                                       ; $570b: $77
	db $fd                                           ; $570c: $fd
	rst $38                                          ; $570d: $ff
	cp $f0                                           ; $570e: $fe $f0
	db $e3                                           ; $5710: $e3
	rst SubAFromBC                                          ; $5711: $e7
	adc $d8                                          ; $5712: $ce $d8
	add e                                            ; $5714: $83
	add a                                            ; $5715: $87
	adc a                                            ; $5716: $8f
	ld a, b                                          ; $5717: $78
	db $fc                                           ; $5718: $fc
	cp h                                             ; $5719: $bc
	db $fc                                           ; $571a: $fc
	cp $de                                           ; $571b: $fe $de
	rst AddAOntoHL                                          ; $571d: $ef
	rst FarCall                                          ; $571e: $f7
	ld hl, sp-$04                                    ; $571f: $f8 $fc
	ret z                                            ; $5721: $c8

	ld [$e000], sp                                   ; $5722: $08 $00 $e0
	ldh a, [hDisp1_SCX]                                     ; $5725: $f0 $91
	ld hl, sp+$0f                                    ; $5727: $f8 $0f
	rrca                                             ; $5729: $0f
	ld c, $04                                        ; $572a: $0e $04
	add hl, bc                                       ; $572c: $09
	ld bc, $0303                                     ; $572d: $01 $03 $03
	ld b, $06                                        ; $5730: $06 $06
	inc b                                            ; $5732: $04
	inc b                                            ; $5733: $04
	ld [$7ffe], sp                                   ; $5734: $08 $fe $7f
	db $e3                                           ; $5737: $e3
	add [hl]                                         ; $5738: $86
	rst AddAOntoHL                                          ; $5739: $ef
	db $fd                                           ; $573a: $fd
	ld sp, hl                                        ; $573b: $f9
	db $f4                                           ; $573c: $f4
	ld a, [$1eff]                                    ; $573d: $fa $ff $1e
	ld a, a                                          ; $5740: $7f
	ccf                                              ; $5741: $3f
	rrca                                             ; $5742: $0f
	add hl, bc                                       ; $5743: $09
	dec c                                            ; $5744: $0d
	rlca                                             ; $5745: $07
	nop                                              ; $5746: $00
	ld l, a                                          ; $5747: $6f
	ld [hl], $24                                     ; $5748: $36 $24
	ldh [$a0], a                                     ; $574a: $e0 $a0
	ld b, b                                          ; $574c: $40
	add b                                            ; $574d: $80
	ldh [$78], a                                     ; $574e: $e0 $78

jr_02a_5750:
	jr z, jr_02a_56f2                                ; $5750: $28 $a0

	sbc $e0                                          ; $5752: $de $e0
	sbc h                                            ; $5754: $9c
	ret nz                                           ; $5755: $c0

	nop                                              ; $5756: $00
	ld bc, $9dfc                                     ; $5757: $01 $fc $9d
	jr nc, jr_02a_57cc                               ; $575a: $30 $70

	ld sp, hl                                        ; $575c: $f9
	inc b                                            ; $575d: $04
	nop                                              ; $575e: $00
	sbc $55                                          ; $575f: $de $55
	ld e, d                                          ; $5761: $5a
	add b                                            ; $5762: $80
	add b                                            ; $5763: $80
	rra                                              ; $5764: $1f
	dec a                                            ; $5765: $3d
	ccf                                              ; $5766: $3f
	ld a, l                                          ; $5767: $7d
	ld [hl], a                                       ; $5768: $77
	rst $38                                          ; $5769: $ff
	cp $fb                                           ; $576a: $fe $fb
	ldh a, [$e3]                                     ; $576c: $f0 $e3
	rst SubAFromBC                                          ; $576e: $e7
	adc $d8                                          ; $576f: $ce $d8
	add b                                            ; $5771: $80
	add c                                            ; $5772: $81
	add a                                            ; $5773: $87
	ld a, b                                          ; $5774: $78
	db $fc                                           ; $5775: $fc
	cp h                                             ; $5776: $bc
	db $fc                                           ; $5777: $fc
	cp $fe                                           ; $5778: $fe $fe
	ccf                                              ; $577a: $3f
	rst AddAOntoHL                                          ; $577b: $ef
	ld hl, sp-$04                                    ; $577c: $f8 $fc
	ret z                                            ; $577e: $c8

	ld [rRAMG], sp                                   ; $577f: $08 $00 $00
	ret nz                                           ; $5782: $c0

	sub d                                            ; $5783: $92
	ldh a, [rIF]                                     ; $5784: $f0 $0f
	rrca                                             ; $5786: $0f
	ld c, $04                                        ; $5787: $0e $04
	add hl, bc                                       ; $5789: $09
	ld bc, $0303                                     ; $578a: $01 $03 $03
	ld b, $06                                        ; $578d: $06 $06
	inc b                                            ; $578f: $04
	inc b                                            ; $5790: $04
	ld a, e                                          ; $5791: $7b
	rst AddAOntoHL                                          ; $5792: $ef
	add e                                            ; $5793: $83
	nop                                              ; $5794: $00
	rst $38                                          ; $5795: $ff
	cp $ff                                           ; $5796: $fe $ff
	db $ed                                           ; $5798: $ed
	ld sp, hl                                        ; $5799: $f9
	db $f4                                           ; $579a: $f4
	ld a, [$0fff]                                    ; $579b: $fa $ff $0f
	rra                                              ; $579e: $1f
	ld a, a                                          ; $579f: $7f
	ccf                                              ; $57a0: $3f
	add hl, bc                                       ; $57a1: $09
	dec c                                            ; $57a2: $0d
	rlca                                             ; $57a3: $07
	nop                                              ; $57a4: $00
	rst FarCall                                          ; $57a5: $f7
	ld a, $24                                        ; $57a6: $3e $24
	ldh [$a0], a                                     ; $57a8: $e0 $a0
	ld b, b                                          ; $57aa: $40
	add b                                            ; $57ab: $80
	ldh [$f8], a                                     ; $57ac: $e0 $f8
	jr z, jr_02a_5750                                ; $57ae: $28 $a0

	sbc $e0                                          ; $57b0: $de $e0
	sbc h                                            ; $57b2: $9c
	ret nz                                           ; $57b3: $c0

	nop                                              ; $57b4: $00
	ld bc, $9dfc                                     ; $57b5: $01 $fc $9d
	jr nc, jr_02a_582a                               ; $57b8: $30 $70

	ld sp, hl                                        ; $57ba: $f9
	inc b                                            ; $57bb: $04
	nop                                              ; $57bc: $00
	sbc $55                                          ; $57bd: $de $55
	ld d, a                                          ; $57bf: $57
	nop                                              ; $57c0: $00
	sub e                                            ; $57c1: $93
	rra                                              ; $57c2: $1f
	ldh a, [$3d]                                     ; $57c3: $f0 $3d
	db $e3                                           ; $57c5: $e3
	ccf                                              ; $57c6: $3f
	rst SubAFromBC                                          ; $57c7: $e7
	ld a, l                                          ; $57c8: $7d
	adc $77                                          ; $57c9: $ce $77
	ret c                                            ; $57cb: $d8

jr_02a_57cc:
	rst $38                                          ; $57cc: $ff
	add b                                            ; $57cd: $80
	ld [hl], a                                       ; $57ce: $77
	cp $96                                           ; $57cf: $fe $96
	ld a, b                                          ; $57d1: $78

Jump_02a_57d2:
	ld hl, sp-$04                                    ; $57d2: $f8 $fc
	db $fc                                           ; $57d4: $fc
	cp h                                             ; $57d5: $bc
	ret z                                            ; $57d6: $c8

	db $fc                                           ; $57d7: $fc
	ld [$bdfe], sp                                   ; $57d8: $08 $fe $bd
	cp $ff                                           ; $57db: $fe $ff
	rst $38                                          ; $57dd: $ff
	rrca                                             ; $57de: $0f
	sbc e                                            ; $57df: $9b
	ld b, $0f                                        ; $57e0: $06 $0f
	ld b, $0e                                        ; $57e2: $06 $0e
	sbc $04                                          ; $57e4: $de $04
	sbc h                                            ; $57e6: $9c
	add hl, bc                                       ; $57e7: $09
	ld [$bd01], sp                                   ; $57e8: $08 $01 $bd
	inc bc                                           ; $57eb: $03
	inc bc                                           ; $57ec: $03
	rst $38                                          ; $57ed: $ff
	rst SubAFromBC                                          ; $57ee: $e7
	sub h                                            ; $57ef: $94
	jr @-$06                                         ; $57f0: $18 $f8

	rlca                                             ; $57f2: $07
	rst FarCall                                          ; $57f3: $f7
	ld a, b                                          ; $57f4: $78
	rst SubAFromDE                                          ; $57f5: $df
	ccf                                              ; $57f6: $3f
	db $fc                                           ; $57f7: $fc
	dec c                                            ; $57f8: $0d
	ld a, [$7707]                                    ; $57f9: $fa $07 $77
	sbc $7f                                          ; $57fc: $de $7f
	ret c                                            ; $57fe: $d8

	sub h                                            ; $57ff: $94
	inc e                                            ; $5800: $1c
	ldh [$f0], a                                     ; $5801: $e0 $f0
	nop                                              ; $5803: $00
	ld hl, sp-$08                                    ; $5804: $f8 $f8
	ld h, b                                          ; $5806: $60
	ldh a, [$80]                                     ; $5807: $f0 $80
	ret nz                                           ; $5809: $c0

	ldh [$b9], a                                     ; $580a: $e0 $b9
	ld bc, $0000                                     ; $580c: $01 $00 $00
	nop                                              ; $580f: $00
	nop                                              ; $5810: $00
	nop                                              ; $5811: $00
	jr nc, jr_02a_5884                               ; $5812: $30 $70

	sbc [hl]                                         ; $5814: $9e
	nop                                              ; $5815: $00
	inc b                                            ; $5816: $04
	nop                                              ; $5817: $00
	sbc $55                                          ; $5818: $de $55
	ld d, e                                          ; $581a: $53
	add b                                            ; $581b: $80
	sbc d                                            ; $581c: $9a
	rra                                              ; $581d: $1f
	dec a                                            ; $581e: $3d
	ccf                                              ; $581f: $3f
	ld a, l                                          ; $5820: $7d
	ld [hl], a                                       ; $5821: $77
	sbc $ff                                          ; $5822: $de $ff
	sbc d                                            ; $5824: $9a
	ldh a, [$e3]                                     ; $5825: $f0 $e3
	rst SubAFromBC                                          ; $5827: $e7
	adc $d8                                          ; $5828: $ce $d8

jr_02a_582a:
	sbc $80                                          ; $582a: $de $80
	sub e                                            ; $582c: $93
	ld a, b                                          ; $582d: $78
	db $fc                                           ; $582e: $fc
	cp h                                             ; $582f: $bc
	db $fc                                           ; $5830: $fc
	cp $fe                                           ; $5831: $fe $fe
	rst $38                                          ; $5833: $ff
	rst $38                                          ; $5834: $ff

jr_02a_5835:
	ld hl, sp-$04                                    ; $5835: $f8 $fc
	ret z                                            ; $5837: $c8

	ld [$dffd], sp                                   ; $5838: $08 $fd $df
	rrca                                             ; $583b: $0f
	sub l                                            ; $583c: $95
	ld c, $04                                        ; $583d: $0e $04
	add hl, bc                                       ; $583f: $09
	ld bc, $0303                                     ; $5840: $01 $03 $03
	ld b, $06                                        ; $5843: $06 $06
	inc b                                            ; $5845: $04
	inc b                                            ; $5846: $04
	ld [hl], a                                       ; $5847: $77
	rst AddAOntoHL                                          ; $5848: $ef
	sbc $ff                                          ; $5849: $de $ff
	sbc d                                            ; $584b: $9a
	db $fc                                           ; $584c: $fc
	rst FarCall                                          ; $584d: $f7
	rst AddAOntoHL                                          ; $584e: $ef
	ei                                               ; $584f: $fb
	rst $38                                          ; $5850: $ff
	cp $92                                           ; $5851: $fe $92
	inc bc                                           ; $5853: $03
	jr c, jr_02a_5875                                ; $5854: $38 $1f

	rlca                                             ; $5856: $07
	nop                                              ; $5857: $00
	rst $38                                          ; $5858: $ff
	cp $fc                                           ; $5859: $fe $fc
	jr nc, jr_02a_5835                               ; $585b: $30 $d8

jr_02a_585d:
	ldh a, [$80]                                     ; $585d: $f0 $80
	ldh [$fe], a                                     ; $585f: $e0 $fe
	sbc c                                            ; $5861: $99
	ret nz                                           ; $5862: $c0

	jr c, jr_02a_585d                                ; $5863: $38 $f8

	ldh [rP1], a                                     ; $5865: $e0 $00
	ld bc, $9dfc                                     ; $5867: $01 $fc $9d
	jr nc, @+$72                                     ; $586a: $30 $70

	ld sp, hl                                        ; $586c: $f9
	inc b                                            ; $586d: $04
	nop                                              ; $586e: $00
	sbc $55                                          ; $586f: $de $55
	ld e, b                                          ; $5871: $58
	add b                                            ; $5872: $80
	add b                                            ; $5873: $80
	rra                                              ; $5874: $1f

jr_02a_5875:
	ccf                                              ; $5875: $3f
	ld a, $7b                                        ; $5876: $3e $7b
	ld l, a                                          ; $5878: $6f
	rst $38                                          ; $5879: $ff
	rst FarCall                                          ; $587a: $f7
	db $ec                                           ; $587b: $ec
	ldh a, [$e3]                                     ; $587c: $f0 $e3
	rst SubAFromBC                                          ; $587e: $e7
	call z, $83d0                                    ; $587f: $cc $d0 $83
	adc a                                            ; $5882: $8f
	sbc [hl]                                         ; $5883: $9e

jr_02a_5884:
	ld hl, sp-$04                                    ; $5884: $f8 $fc
	ld a, h                                          ; $5886: $7c
	db $fc                                           ; $5887: $fc
	cp $de                                           ; $5888: $fe $de
	rst AddAOntoHL                                          ; $588a: $ef
	ld [hl], a                                       ; $588b: $77
	ld hl, sp-$04                                    ; $588c: $f8 $fc
	adc h                                            ; $588e: $8c
	ld [$e000], sp                                   ; $588f: $08 $00 $e0
	ldh a, [hDisp1_SCX]                                     ; $5892: $f0 $91
	ld a, b                                          ; $5894: $78
	rrca                                             ; $5895: $0f
	rrca                                             ; $5896: $0f
	ld c, $04                                        ; $5897: $0e $04
	add hl, bc                                       ; $5899: $09
	ld bc, $0303                                     ; $589a: $01 $03 $03
	ld b, $06                                        ; $589d: $06 $06
	inc b                                            ; $589f: $04
	inc b                                            ; $58a0: $04
	ld [$85fe], sp                                   ; $58a1: $08 $fe $85
	ld hl, sp-$12                                    ; $58a4: $f8 $ee
	rst SubAFromDE                                          ; $58a6: $df
	db $fd                                           ; $58a7: $fd
	ld sp, hl                                        ; $58a8: $f9
	db $f4                                           ; $58a9: $f4
	ld a, [$7cff]                                    ; $58aa: $fa $ff $7c
	ccf                                              ; $58ad: $3f
	cpl                                              ; $58ae: $2f
	rrca                                             ; $58af: $0f
	add hl, bc                                       ; $58b0: $09
	dec c                                            ; $58b1: $0d
	rlca                                             ; $58b2: $07
	nop                                              ; $58b3: $00
	cpl                                              ; $58b4: $2f
	ld [hl], $a4                                     ; $58b5: $36 $a4
	ldh [$a0], a                                     ; $58b7: $e0 $a0
	ld b, b                                          ; $58b9: $40
	add b                                            ; $58ba: $80
	ldh [$38], a                                     ; $58bb: $e0 $38
	jr z, @-$21                                      ; $58bd: $28 $dd

	ldh [$9c], a                                     ; $58bf: $e0 $9c
	ret nz                                           ; $58c1: $c0

	nop                                              ; $58c2: $00
	ld bc, $9dfc                                     ; $58c3: $01 $fc $9d
	jr nc, jr_02a_5938                               ; $58c6: $30 $70

	ld sp, hl                                        ; $58c8: $f9
	inc b                                            ; $58c9: $04
	nop                                              ; $58ca: $00
	sbc $55                                          ; $58cb: $de $55
	ld e, c                                          ; $58cd: $59
	add b                                            ; $58ce: $80
	add b                                            ; $58cf: $80
	rra                                              ; $58d0: $1f
	ccf                                              ; $58d1: $3f
	ld a, $7b                                        ; $58d2: $3e $7b
	ld l, a                                          ; $58d4: $6f
	rst $38                                          ; $58d5: $ff
	db $fd                                           ; $58d6: $fd
	rst FarCall                                          ; $58d7: $f7
	ldh a, [$e3]                                     ; $58d8: $f0 $e3
	rst SubAFromBC                                          ; $58da: $e7
	call z, $80d0                                    ; $58db: $cc $d0 $80
	add e                                            ; $58de: $83
	adc a                                            ; $58df: $8f
	ld hl, sp-$04                                    ; $58e0: $f8 $fc
	ld a, h                                          ; $58e2: $7c
	db $fc                                           ; $58e3: $fc
	cp $fe                                           ; $58e4: $fe $fe
	rst $38                                          ; $58e6: $ff
	rst AddAOntoHL                                          ; $58e7: $ef
	ld hl, sp-$04                                    ; $58e8: $f8 $fc
	adc h                                            ; $58ea: $8c
	ld [rRAMG], sp                                   ; $58eb: $08 $00 $00
	ret nz                                           ; $58ee: $c0

	sub d                                            ; $58ef: $92
	ldh a, [rIF]                                     ; $58f0: $f0 $0f
	rrca                                             ; $58f2: $0f
	ld c, $04                                        ; $58f3: $0e $04
	add hl, bc                                       ; $58f5: $09
	ld bc, $0303                                     ; $58f6: $01 $03 $03

jr_02a_58f9:
	ld b, $06                                        ; $58f9: $06 $06
	inc b                                            ; $58fb: $04
	inc b                                            ; $58fc: $04
	ld a, e                                          ; $58fd: $7b
	rst AddAOntoHL                                          ; $58fe: $ef
	add h                                            ; $58ff: $84
	nop                                              ; $5900: $00
	xor $de                                          ; $5901: $ee $de
	rst AddAOntoHL                                          ; $5903: $ef
	db $fd                                           ; $5904: $fd
	ld sp, hl                                        ; $5905: $f9
	db $f4                                           ; $5906: $f4
	ld a, [$1eff]                                    ; $5907: $fa $ff $1e
	ccf                                              ; $590a: $3f
	ld a, a                                          ; $590b: $7f
	cpl                                              ; $590c: $2f
	add hl, bc                                       ; $590d: $09
	dec c                                            ; $590e: $0d
	rlca                                             ; $590f: $07
	nop                                              ; $5910: $00
	ld [hl], a                                       ; $5911: $77
	ld a, $a4                                        ; $5912: $3e $a4
	ldh [$a0], a                                     ; $5914: $e0 $a0
	ld b, b                                          ; $5916: $40
	add b                                            ; $5917: $80
	ldh [$78], a                                     ; $5918: $e0 $78
	jr z, jr_02a_58f9                                ; $591a: $28 $dd

	ldh [$9c], a                                     ; $591c: $e0 $9c
	ret nz                                           ; $591e: $c0

	nop                                              ; $591f: $00
	ld bc, $9dfc                                     ; $5920: $01 $fc $9d
	jr nc, @+$72                                     ; $5923: $30 $70

	ld sp, hl                                        ; $5925: $f9
	inc b                                            ; $5926: $04
	nop                                              ; $5927: $00
	sbc $55                                          ; $5928: $de $55
	ld d, a                                          ; $592a: $57
	nop                                              ; $592b: $00
	sub e                                            ; $592c: $93
	rra                                              ; $592d: $1f
	ldh a, [$3f]                                     ; $592e: $f0 $3f
	db $e3                                           ; $5930: $e3
	ld a, $e7                                        ; $5931: $3e $e7
	ld a, e                                          ; $5933: $7b
	call z, $d06f                                    ; $5934: $cc $6f $d0
	rst $38                                          ; $5937: $ff

jr_02a_5938:
	add b                                            ; $5938: $80
	ld [hl], a                                       ; $5939: $77
	cp $df                                           ; $593a: $fe $df
	ld hl, sp-$21                                    ; $593c: $f8 $df
	db $fc                                           ; $593e: $fc
	sbc d                                            ; $593f: $9a
	ld a, h                                          ; $5940: $7c
	adc h                                            ; $5941: $8c
	db $fc                                           ; $5942: $fc
	ld [$bdfe], sp                                   ; $5943: $08 $fe $bd
	cp $ff                                           ; $5946: $fe $ff
	rst $38                                          ; $5948: $ff
	rrca                                             ; $5949: $0f
	sbc e                                            ; $594a: $9b
	ld b, $0f                                        ; $594b: $06 $0f
	ld b, $0e                                        ; $594d: $06 $0e
	sbc $04                                          ; $594f: $de $04
	sbc h                                            ; $5951: $9c
	add hl, bc                                       ; $5952: $09
	ld [$bd01], sp                                   ; $5953: $08 $01 $bd
	inc bc                                           ; $5956: $03
	inc bc                                           ; $5957: $03
	rst $38                                          ; $5958: $ff
	rst SubAFromBC                                          ; $5959: $e7
	sub h                                            ; $595a: $94
	jr @-$06                                         ; $595b: $18 $f8

	rlca                                             ; $595d: $07
	rst FarCall                                          ; $595e: $f7
	ld a, b                                          ; $595f: $78
	rst SubAFromDE                                          ; $5960: $df
	ccf                                              ; $5961: $3f
	db $fc                                           ; $5962: $fc
	dec c                                            ; $5963: $0d
	ld a, [$7707]                                    ; $5964: $fa $07 $77
	sbc $7f                                          ; $5967: $de $7f
	ret c                                            ; $5969: $d8

	sub h                                            ; $596a: $94
	inc e                                            ; $596b: $1c
	ldh [$f0], a                                     ; $596c: $e0 $f0
	nop                                              ; $596e: $00
	ld hl, sp-$08                                    ; $596f: $f8 $f8
	ld h, b                                          ; $5971: $60
	ldh a, [$80]                                     ; $5972: $f0 $80
	ret nz                                           ; $5974: $c0

	ldh [$b9], a                                     ; $5975: $e0 $b9
	ld bc, $0000                                     ; $5977: $01 $00 $00
	nop                                              ; $597a: $00
	nop                                              ; $597b: $00
	nop                                              ; $597c: $00
	jr nc, jr_02a_59ef                               ; $597d: $30 $70

	sbc [hl]                                         ; $597f: $9e
	nop                                              ; $5980: $00
	inc b                                            ; $5981: $04
	nop                                              ; $5982: $00
	sbc $55                                          ; $5983: $de $55
	ld d, e                                          ; $5985: $53
	add b                                            ; $5986: $80
	sbc d                                            ; $5987: $9a
	rra                                              ; $5988: $1f
	ccf                                              ; $5989: $3f
	ld a, $7b                                        ; $598a: $3e $7b
	ld l, a                                          ; $598c: $6f
	sbc $ff                                          ; $598d: $de $ff
	sbc d                                            ; $598f: $9a
	ldh a, [$e3]                                     ; $5990: $f0 $e3
	rst SubAFromBC                                          ; $5992: $e7
	call z, $ded0                                    ; $5993: $cc $d0 $de
	add b                                            ; $5996: $80
	sub e                                            ; $5997: $93
	ld hl, sp-$04                                    ; $5998: $f8 $fc
	ld a, h                                          ; $599a: $7c
	db $fc                                           ; $599b: $fc
	cp $fe                                           ; $599c: $fe $fe
	rst $38                                          ; $599e: $ff
	rst $38                                          ; $599f: $ff

jr_02a_59a0:
	ld hl, sp-$04                                    ; $59a0: $f8 $fc
	adc h                                            ; $59a2: $8c
	ld [$dffd], sp                                   ; $59a3: $08 $fd $df
	rrca                                             ; $59a6: $0f
	sub l                                            ; $59a7: $95
	ld c, $04                                        ; $59a8: $0e $04
	add hl, bc                                       ; $59aa: $09
	ld bc, $0303                                     ; $59ab: $01 $03 $03
	ld b, $06                                        ; $59ae: $06 $06
	inc b                                            ; $59b0: $04
	inc b                                            ; $59b1: $04
	ld [hl], a                                       ; $59b2: $77
	rst AddAOntoHL                                          ; $59b3: $ef
	sbc $ff                                          ; $59b4: $de $ff
	sbc d                                            ; $59b6: $9a
	db $fc                                           ; $59b7: $fc
	rst FarCall                                          ; $59b8: $f7
	rst AddAOntoHL                                          ; $59b9: $ef
	ei                                               ; $59ba: $fb
	rst $38                                          ; $59bb: $ff
	cp $92                                           ; $59bc: $fe $92
	inc bc                                           ; $59be: $03
	jr c, jr_02a_59e0                                ; $59bf: $38 $1f

	rlca                                             ; $59c1: $07
	nop                                              ; $59c2: $00
	rst $38                                          ; $59c3: $ff
	cp $fc                                           ; $59c4: $fe $fc
	jr nc, jr_02a_59a0                               ; $59c6: $30 $d8

jr_02a_59c8:
	ldh a, [$80]                                     ; $59c8: $f0 $80
	ldh [$fe], a                                     ; $59ca: $e0 $fe
	sbc c                                            ; $59cc: $99
	ret nz                                           ; $59cd: $c0

	jr c, jr_02a_59c8                                ; $59ce: $38 $f8

	ldh [rP1], a                                     ; $59d0: $e0 $00
	ld bc, $9dfc                                     ; $59d2: $01 $fc $9d
	jr nc, jr_02a_5a47                               ; $59d5: $30 $70

	ld sp, hl                                        ; $59d7: $f9
	inc b                                            ; $59d8: $04
	nop                                              ; $59d9: $00
	sbc $55                                          ; $59da: $de $55
	ld b, h                                          ; $59dc: $44
	add b                                            ; $59dd: $80
	add [hl]                                         ; $59de: $86
	ld a, b                                          ; $59df: $78

jr_02a_59e0:
	ld [hl], h                                       ; $59e0: $74
	db $fc                                           ; $59e1: $fc
	rst $38                                          ; $59e2: $ff
	ei                                               ; $59e3: $fb
	rst $38                                          ; $59e4: $ff
	db $fd                                           ; $59e5: $fd
	cp $30                                           ; $59e6: $fe $30
	jr z, jr_02a_5a48                                ; $59e8: $28 $5e

	ld a, a                                          ; $59ea: $7f
	ld b, a                                          ; $59eb: $47
	nop                                              ; $59ec: $00
	ld e, $3f                                        ; $59ed: $1e $3f

jr_02a_59ef:
	ld a, [$4a5a]                                    ; $59ef: $fa $5a $4a
	adc d                                            ; $59f2: $8a
	push bc                                          ; $59f3: $c5
	ld l, l                                          ; $59f4: $6d
	db $fd                                           ; $59f5: $fd
	cp l                                             ; $59f6: $bd
	ld c, a                                          ; $59f7: $4f
	sbc $0f                                          ; $59f8: $de $0f
	add b                                            ; $59fa: $80
	adc a                                            ; $59fb: $8f
	rst JumpTable                                          ; $59fc: $c7
	daa                                              ; $59fd: $27
	rlca                                             ; $59fe: $07
	or a                                             ; $59ff: $b7
	db $e3                                           ; $5a00: $e3
	ld [hl], d                                       ; $5a01: $72
	ld a, d                                          ; $5a02: $7a
	ld e, [hl]                                       ; $5a03: $5e
	ld [$2044], a                                    ; $5a04: $ea $44 $20
	ld a, a                                          ; $5a07: $7f
	ld h, a                                          ; $5a08: $67
	di                                               ; $5a09: $f3
	ld a, [$6efe]                                    ; $5a0a: $fa $fe $6e
	ld l, h                                          ; $5a0d: $6c
	jr c, @-$61                                      ; $5a0e: $38 $9d

	dec e                                            ; $5a10: $1d
	call c, Call_02a_5cdc                            ; $5a11: $dc $dc $5c
	sbc [hl]                                         ; $5a14: $9e
	ld a, $3a                                        ; $5a15: $3e $3a
	rlca                                             ; $5a17: $07
	add a                                            ; $5a18: $87
	add a                                            ; $5a19: $87
	sbc d                                            ; $5a1a: $9a
	rst GetHLinHL                                          ; $5a1b: $cf
	adc a                                            ; $5a1c: $8f
	rrca                                             ; $5a1d: $0f
	rra                                              ; $5a1e: $1f
	rra                                              ; $5a1f: $1f
	inc b                                            ; $5a20: $04
	nop                                              ; $5a21: $00
	rst SubAFromDE                                          ; $5a22: $df
	ld d, l                                          ; $5a23: $55
	ld b, h                                          ; $5a24: $44
	nop                                              ; $5a25: $00
	sub h                                            ; $5a26: $94
	ld a, b                                          ; $5a27: $78

jr_02a_5a28:
	jr nc, jr_02a_5a9e                               ; $5a28: $30 $74

	jr z, jr_02a_5a28                                ; $5a2a: $28 $fc

	ld e, [hl]                                       ; $5a2c: $5e
	rst $38                                          ; $5a2d: $ff
	ld a, a                                          ; $5a2e: $7f
	ei                                               ; $5a2f: $fb
	ld b, a                                          ; $5a30: $47
	rst $38                                          ; $5a31: $ff
	cp a                                             ; $5a32: $bf
	rst $38                                          ; $5a33: $ff
	db $db                                           ; $5a34: $db
	add b                                            ; $5a35: $80
	inc a                                            ; $5a36: $3c
	ld a, [$5a4f]                                    ; $5a37: $fa $4f $5a
	rrca                                             ; $5a3a: $0f
	ld c, d                                          ; $5a3b: $4a
	rrca                                             ; $5a3c: $0f
	adc d                                            ; $5a3d: $8a
	rrca                                             ; $5a3e: $0f
	push bc                                          ; $5a3f: $c5
	adc a                                            ; $5a40: $8f
	ld l, l                                          ; $5a41: $6d
	rst JumpTable                                          ; $5a42: $c7
	db $fd                                           ; $5a43: $fd
	daa                                              ; $5a44: $27
	dec a                                            ; $5a45: $3d
	rlca                                             ; $5a46: $07

jr_02a_5a47:
	cp [hl]                                          ; $5a47: $be

jr_02a_5a48:
	ld a, a                                          ; $5a48: $7f
	rst $38                                          ; $5a49: $ff
	ld a, a                                          ; $5a4a: $7f
	ld [hl], e                                       ; $5a4b: $73
	di                                               ; $5a4c: $f3
	ld a, d                                          ; $5a4d: $7a
	ei                                               ; $5a4e: $fb
	ld e, [hl]                                       ; $5a4f: $5e
	cp $ea                                           ; $5a50: $fe $ea
	ld l, [hl]                                       ; $5a52: $6e
	ld b, h                                          ; $5a53: $44
	ld l, h                                          ; $5a54: $6c
	adc l                                            ; $5a55: $8d
	jr nz, jr_02a_5a90                               ; $5a56: $20 $38

	sbc l                                            ; $5a58: $9d
	rlca                                             ; $5a59: $07
	sbc l                                            ; $5a5a: $9d
	rlca                                             ; $5a5b: $07
	ld e, h                                          ; $5a5c: $5c
	add a                                            ; $5a5d: $87
	call c, $dc8f                                    ; $5a5e: $dc $8f $dc
	rst GetHLinHL                                          ; $5a61: $cf
	sbc [hl]                                         ; $5a62: $9e
	rrca                                             ; $5a63: $0f
	ld a, $1f                                        ; $5a64: $3e $1f
	ld a, [hl-]                                      ; $5a66: $3a
	rra                                              ; $5a67: $1f
	inc b                                            ; $5a68: $04
	nop                                              ; $5a69: $00
	rst SubAFromDE                                          ; $5a6a: $df
	ld d, l                                          ; $5a6b: $55
	ld b, b                                          ; $5a6c: $40
	nop                                              ; $5a6d: $00
	sub h                                            ; $5a6e: $94
	ld a, b                                          ; $5a6f: $78

jr_02a_5a70:
	jr nc, @+$76                                     ; $5a70: $30 $74

	jr z, jr_02a_5a70                                ; $5a72: $28 $fc

	ld e, [hl]                                       ; $5a74: $5e
	rst $38                                          ; $5a75: $ff
	ld a, a                                          ; $5a76: $7f
	ei                                               ; $5a77: $fb
	ld b, a                                          ; $5a78: $47
	rst $38                                          ; $5a79: $ff
	cp [hl]                                          ; $5a7a: $be
	rst $38                                          ; $5a7b: $ff
	db $fc                                           ; $5a7c: $fc
	ld a, [$4f8f]                                    ; $5a7d: $fa $8f $4f
	ld e, d                                          ; $5a80: $5a
	rrca                                             ; $5a81: $0f
	ld c, d                                          ; $5a82: $4a
	rrca                                             ; $5a83: $0f
	adc d                                            ; $5a84: $8a
	rrca                                             ; $5a85: $0f
	push bc                                          ; $5a86: $c5
	adc a                                            ; $5a87: $8f
	ld l, l                                          ; $5a88: $6d
	rst JumpTable                                          ; $5a89: $c7
	db $fd                                           ; $5a8a: $fd
	daa                                              ; $5a8b: $27
	dec a                                            ; $5a8c: $3d
	rlca                                             ; $5a8d: $07
	ldh a, [$bd]                                     ; $5a8e: $f0 $bd

jr_02a_5a90:
	nop                                              ; $5a90: $00
	jr nc, jr_02a_5aa1                               ; $5a91: $30 $0e

	pop de                                           ; $5a93: $d1
	adc b                                            ; $5a94: $88
	ldh [$7f], a                                     ; $5a95: $e0 $7f
	rst $38                                          ; $5a97: $ff
	ld b, [hl]                                       ; $5a98: $46
	ld l, a                                          ; $5a99: $6f
	jr nz, jr_02a_5ad4                               ; $5a9a: $20 $38

	dec e                                            ; $5a9c: $1d
	rlca                                             ; $5a9d: $07

jr_02a_5a9e:
	dec e                                            ; $5a9e: $1d
	rlca                                             ; $5a9f: $07
	inc e                                            ; $5aa0: $1c

jr_02a_5aa1:
	rlca                                             ; $5aa1: $07
	inc e                                            ; $5aa2: $1c
	rrca                                             ; $5aa3: $0f
	ld e, h                                          ; $5aa4: $5c
	rst GetHLinHL                                          ; $5aa5: $cf
	sbc [hl]                                         ; $5aa6: $9e
	rst GetHLinHL                                          ; $5aa7: $cf
	ld a, $1f                                        ; $5aa8: $3e $1f
	ld a, [hl-]                                      ; $5aaa: $3a
	rra                                              ; $5aab: $1f
	inc b                                            ; $5aac: $04
	nop                                              ; $5aad: $00
	rst SubAFromDE                                          ; $5aae: $df
	ld d, l                                          ; $5aaf: $55
	inc a                                            ; $5ab0: $3c
	add b                                            ; $5ab1: $80
	sub d                                            ; $5ab2: $92
	ld a, b                                          ; $5ab3: $78
	ld [hl], h                                       ; $5ab4: $74
	db $fc                                           ; $5ab5: $fc
	rst $38                                          ; $5ab6: $ff
	ei                                               ; $5ab7: $fb
	rst $38                                          ; $5ab8: $ff
	rst $38                                          ; $5ab9: $ff
	db $fc                                           ; $5aba: $fc
	jr nc, jr_02a_5ae5                               ; $5abb: $30 $28

	ld e, [hl]                                       ; $5abd: $5e
	ld a, a                                          ; $5abe: $7f
	ld b, a                                          ; $5abf: $47
	cp $96                                           ; $5ac0: $fe $96
	ld a, [$4a5a]                                    ; $5ac2: $fa $5a $4a
	adc d                                            ; $5ac5: $8a
	push bc                                          ; $5ac6: $c5
	ld l, l                                          ; $5ac7: $6d
	db $fd                                           ; $5ac8: $fd
	dec a                                            ; $5ac9: $3d
	ld c, a                                          ; $5aca: $4f
	sbc $0f                                          ; $5acb: $de $0f
	sbc d                                            ; $5acd: $9a
	adc a                                            ; $5ace: $8f
	rst JumpTable                                          ; $5acf: $c7
	daa                                              ; $5ad0: $27
	rlca                                             ; $5ad1: $07
	ldh a, [$fe]                                     ; $5ad2: $f0 $fe

jr_02a_5ad4:
	sbc e                                            ; $5ad4: $9b
	ccf                                              ; $5ad5: $3f
	nop                                              ; $5ad6: $00
	db $ed                                           ; $5ad7: $ed
	ld a, a                                          ; $5ad8: $7f
	ei                                               ; $5ad9: $fb
	sbc e                                            ; $5ada: $9b
	di                                               ; $5adb: $f3
	ccf                                              ; $5adc: $3f
	dec e                                            ; $5add: $1d
	dec e                                            ; $5ade: $1d
	sbc $1c                                          ; $5adf: $de $1c
	sbc h                                            ; $5ae1: $9c
	ld e, $fe                                        ; $5ae2: $1e $fe
	cp d                                             ; $5ae4: $ba

jr_02a_5ae5:
	sbc $07                                          ; $5ae5: $de $07
	sbc $0f                                          ; $5ae7: $de $0f
	sbc l                                            ; $5ae9: $9d
	rst SubAFromDE                                          ; $5aea: $df
	rra                                              ; $5aeb: $1f
	inc b                                            ; $5aec: $04
	nop                                              ; $5aed: $00
	rst SubAFromDE                                          ; $5aee: $df
	ld d, l                                          ; $5aef: $55
	ld b, h                                          ; $5af0: $44
	add b                                            ; $5af1: $80
	add b                                            ; $5af2: $80
	ld a, b                                          ; $5af3: $78
	ld [hl], b                                       ; $5af4: $70
	cp $f1                                           ; $5af5: $fe $f1
	cp $ff                                           ; $5af7: $fe $ff
	rst $38                                          ; $5af9: $ff
	rst FarCall                                          ; $5afa: $f7
	jr nc, @+$30                                     ; $5afb: $30 $2e

	ld e, a                                          ; $5afd: $5f
	ld a, a                                          ; $5afe: $7f
	ld b, c                                          ; $5aff: $41
	nop                                              ; $5b00: $00
	ld e, $3f                                        ; $5b01: $1e $3f
	ld a, [$4a5a]                                    ; $5b03: $fa $5a $4a
	adc d                                            ; $5b06: $8a
	push bc                                          ; $5b07: $c5
	db $ed                                           ; $5b08: $ed
	db $fd                                           ; $5b09: $fd
	cp l                                             ; $5b0a: $bd
	ld c, a                                          ; $5b0b: $4f
	rrca                                             ; $5b0c: $0f
	adc a                                            ; $5b0d: $8f
	rst GetHLinHL                                          ; $5b0e: $cf
	rst AddAOntoHL                                          ; $5b0f: $ef
	daa                                              ; $5b10: $27
	rlca                                             ; $5b11: $07
	adc h                                            ; $5b12: $8c
	rlca                                             ; $5b13: $07
	and e                                            ; $5b14: $a3
	ldh [c], a                                       ; $5b15: $e2
	ld [hl], d                                       ; $5b16: $72
	ld a, d                                          ; $5b17: $7a
	ld e, [hl]                                       ; $5b18: $5e
	ld [$2044], a                                    ; $5b19: $ea $44 $20
	ld h, a                                          ; $5b1c: $67
	ld h, e                                          ; $5b1d: $63
	di                                               ; $5b1e: $f3
	ld a, [$6efe]                                    ; $5b1f: $fa $fe $6e
	ld l, h                                          ; $5b22: $6c
	jr c, jr_02a_5b42                                ; $5b23: $38 $1d

	sbc l                                            ; $5b25: $9d
	sbc $dc                                          ; $5b26: $de $dc
	sub h                                            ; $5b28: $94
	sbc [hl]                                         ; $5b29: $9e
	ld a, $3a                                        ; $5b2a: $3e $3a
	add a                                            ; $5b2c: $87
	add a                                            ; $5b2d: $87
	rst JumpTable                                          ; $5b2e: $c7
	adc a                                            ; $5b2f: $8f
	rrca                                             ; $5b30: $0f
	rrca                                             ; $5b31: $0f
	rra                                              ; $5b32: $1f
	rra                                              ; $5b33: $1f
	inc b                                            ; $5b34: $04
	nop                                              ; $5b35: $00
	rst SubAFromDE                                          ; $5b36: $df
	ld d, l                                          ; $5b37: $55
	ld b, h                                          ; $5b38: $44
	nop                                              ; $5b39: $00
	sub h                                            ; $5b3a: $94
	ld a, b                                          ; $5b3b: $78
	jr nc, jr_02a_5bae                               ; $5b3c: $30 $70

	ld l, $fe                                        ; $5b3e: $2e $fe
	ld e, a                                          ; $5b40: $5f
	pop af                                           ; $5b41: $f1

jr_02a_5b42:
	ld a, a                                          ; $5b42: $7f
	cp $41                                           ; $5b43: $fe $41
	rst $38                                          ; $5b45: $ff
	cp a                                             ; $5b46: $bf
	rst $38                                          ; $5b47: $ff
	db $ed                                           ; $5b48: $ed
	add b                                            ; $5b49: $80
	ld e, $fa                                        ; $5b4a: $1e $fa
	ld c, a                                          ; $5b4c: $4f
	ld e, d                                          ; $5b4d: $5a
	rrca                                             ; $5b4e: $0f
	ld c, d                                          ; $5b4f: $4a
	adc a                                            ; $5b50: $8f
	adc d                                            ; $5b51: $8a
	rst GetHLinHL                                          ; $5b52: $cf
	push bc                                          ; $5b53: $c5
	rst AddAOntoHL                                          ; $5b54: $ef
	db $ed                                           ; $5b55: $ed
	daa                                              ; $5b56: $27
	db $fd                                           ; $5b57: $fd
	rlca                                             ; $5b58: $07
	cp l                                             ; $5b59: $bd
	rlca                                             ; $5b5a: $07
	sbc $3f                                          ; $5b5b: $de $3f
	cp a                                             ; $5b5d: $bf
	ld a, a                                          ; $5b5e: $7f
	ldh a, [c]                                       ; $5b5f: $f2
	ld [hl], e                                       ; $5b60: $73
	ld a, d                                          ; $5b61: $7a
	ld a, [$fe5e]                                    ; $5b62: $fa $5e $fe
	ld [$446e], a                                    ; $5b65: $ea $6e $44
	ld l, h                                          ; $5b68: $6c
	adc l                                            ; $5b69: $8d
	jr nz, jr_02a_5ba4                               ; $5b6a: $20 $38

	sbc l                                            ; $5b6c: $9d
	rlca                                             ; $5b6d: $07
	dec e                                            ; $5b6e: $1d
	add a                                            ; $5b6f: $87
	call c, $dc87                                    ; $5b70: $dc $87 $dc
	rst GetHLinHL                                          ; $5b73: $cf
	call c, $9e0f                                    ; $5b74: $dc $0f $9e
	rrca                                             ; $5b77: $0f
	ld a, $1f                                        ; $5b78: $3e $1f
	ld a, [hl-]                                      ; $5b7a: $3a
	rra                                              ; $5b7b: $1f
	inc b                                            ; $5b7c: $04
	nop                                              ; $5b7d: $00
	rst SubAFromDE                                          ; $5b7e: $df
	ld d, l                                          ; $5b7f: $55
	ld b, b                                          ; $5b80: $40
	nop                                              ; $5b81: $00
	sub h                                            ; $5b82: $94
	ld a, b                                          ; $5b83: $78
	jr nc, jr_02a_5bf6                               ; $5b84: $30 $70

	ld l, $fe                                        ; $5b86: $2e $fe
	ld e, a                                          ; $5b88: $5f
	pop af                                           ; $5b89: $f1
	ld a, a                                          ; $5b8a: $7f
	cp $41                                           ; $5b8b: $fe $41
	rst $38                                          ; $5b8d: $ff
	cp [hl]                                          ; $5b8e: $be
	rst $38                                          ; $5b8f: $ff
	db $fc                                           ; $5b90: $fc
	ld a, [$4f8f]                                    ; $5b91: $fa $8f $4f
	ld e, d                                          ; $5b94: $5a
	rrca                                             ; $5b95: $0f
	ld c, d                                          ; $5b96: $4a
	adc a                                            ; $5b97: $8f
	adc d                                            ; $5b98: $8a
	rst GetHLinHL                                          ; $5b99: $cf
	push bc                                          ; $5b9a: $c5
	rst AddAOntoHL                                          ; $5b9b: $ef
	db $ed                                           ; $5b9c: $ed
	daa                                              ; $5b9d: $27
	db $fd                                           ; $5b9e: $fd
	rlca                                             ; $5b9f: $07
	dec a                                            ; $5ba0: $3d
	rlca                                             ; $5ba1: $07
	ldh a, [$bd]                                     ; $5ba2: $f0 $bd

jr_02a_5ba4:
	nop                                              ; $5ba4: $00
	jr nc, jr_02a_5bb5                               ; $5ba5: $30 $0e

	pop de                                           ; $5ba7: $d1
	adc b                                            ; $5ba8: $88
	ldh [$7f], a                                     ; $5ba9: $e0 $7f
	rst $38                                          ; $5bab: $ff
	ld b, [hl]                                       ; $5bac: $46
	ld l, a                                          ; $5bad: $6f

jr_02a_5bae:
	jr nz, jr_02a_5be8                               ; $5bae: $20 $38

	dec e                                            ; $5bb0: $1d
	rlca                                             ; $5bb1: $07
	dec e                                            ; $5bb2: $1d
	rlca                                             ; $5bb3: $07
	inc e                                            ; $5bb4: $1c

jr_02a_5bb5:
	rlca                                             ; $5bb5: $07
	inc e                                            ; $5bb6: $1c
	rrca                                             ; $5bb7: $0f
	ld e, h                                          ; $5bb8: $5c
	rst GetHLinHL                                          ; $5bb9: $cf
	sbc [hl]                                         ; $5bba: $9e
	rst GetHLinHL                                          ; $5bbb: $cf
	ld a, $1f                                        ; $5bbc: $3e $1f
	ld a, [hl-]                                      ; $5bbe: $3a
	rra                                              ; $5bbf: $1f
	inc b                                            ; $5bc0: $04
	nop                                              ; $5bc1: $00
	rst SubAFromDE                                          ; $5bc2: $df
	ld d, l                                          ; $5bc3: $55
	inc a                                            ; $5bc4: $3c
	add b                                            ; $5bc5: $80
	sub d                                            ; $5bc6: $92
	ld a, b                                          ; $5bc7: $78
	ld [hl], b                                       ; $5bc8: $70
	cp $f1                                           ; $5bc9: $fe $f1
	cp $ff                                           ; $5bcb: $fe $ff
	rst $38                                          ; $5bcd: $ff
	db $fc                                           ; $5bce: $fc
	jr nc, jr_02a_5bff                               ; $5bcf: $30 $2e

	ld e, a                                          ; $5bd1: $5f
	ld a, a                                          ; $5bd2: $7f
	ld b, c                                          ; $5bd3: $41
	cp $8e                                           ; $5bd4: $fe $8e
	ld a, [$4a5a]                                    ; $5bd6: $fa $5a $4a
	adc d                                            ; $5bd9: $8a
	push bc                                          ; $5bda: $c5
	db $ed                                           ; $5bdb: $ed
	db $fd                                           ; $5bdc: $fd
	dec a                                            ; $5bdd: $3d
	ld c, a                                          ; $5bde: $4f
	rrca                                             ; $5bdf: $0f
	adc a                                            ; $5be0: $8f
	rst GetHLinHL                                          ; $5be1: $cf
	rst AddAOntoHL                                          ; $5be2: $ef
	daa                                              ; $5be3: $27
	rlca                                             ; $5be4: $07
	rlca                                             ; $5be5: $07
	ldh a, [$fe]                                     ; $5be6: $f0 $fe

jr_02a_5be8:
	sbc e                                            ; $5be8: $9b
	ccf                                              ; $5be9: $3f
	nop                                              ; $5bea: $00
	db $ed                                           ; $5beb: $ed
	ld a, a                                          ; $5bec: $7f
	ei                                               ; $5bed: $fb
	sbc e                                            ; $5bee: $9b
	di                                               ; $5bef: $f3
	ccf                                              ; $5bf0: $3f
	dec e                                            ; $5bf1: $1d
	dec e                                            ; $5bf2: $1d
	sbc $1c                                          ; $5bf3: $de $1c
	sbc h                                            ; $5bf5: $9c

jr_02a_5bf6:
	ld e, $fe                                        ; $5bf6: $1e $fe
	cp d                                             ; $5bf8: $ba
	sbc $07                                          ; $5bf9: $de $07
	sbc $0f                                          ; $5bfb: $de $0f
	sbc l                                            ; $5bfd: $9d
	rst SubAFromDE                                          ; $5bfe: $df

jr_02a_5bff:
	rra                                              ; $5bff: $1f
	inc b                                            ; $5c00: $04
	nop                                              ; $5c01: $00
	rst SubAFromDE                                          ; $5c02: $df

Jump_02a_5c03:
	ld d, l                                          ; $5c03: $55
	ld b, l                                          ; $5c04: $45
	nop                                              ; $5c05: $00
	add b                                            ; $5c06: $80
	ld a, c                                          ; $5c07: $79
	rst GetHLinHL                                          ; $5c08: $cf
	ld [hl], d                                       ; $5c09: $72
	rst SubAFromDE                                          ; $5c0a: $df
	di                                               ; $5c0b: $f3
	sbc a                                            ; $5c0c: $9f
	rst FarCall                                          ; $5c0d: $f7
	sbc h                                            ; $5c0e: $9c
	rst FarCall                                          ; $5c0f: $f7
	inc e                                            ; $5c10: $1c
	db $ec                                           ; $5c11: $ec
	dec sp                                           ; $5c12: $3b
	ei                                               ; $5c13: $fb
	scf                                              ; $5c14: $37
	rst FarCall                                          ; $5c15: $f7
	cpl                                              ; $5c16: $2f
	cp [hl]                                          ; $5c17: $be
	db $e3                                           ; $5c18: $e3
	cp a                                             ; $5c19: $bf
	db $e3                                           ; $5c1a: $e3
	rst $38                                          ; $5c1b: $ff
	di                                               ; $5c1c: $f3
	rst SubAFromDE                                          ; $5c1d: $df
	cp c                                             ; $5c1e: $b9
	rst FarCall                                          ; $5c1f: $f7
	adc l                                            ; $5c20: $8d
	ld a, e                                          ; $5c21: $7b
	add a                                            ; $5c22: $87
	rst SubAFromDE                                          ; $5c23: $df
	pop hl                                           ; $5c24: $e1
	rst AddAOntoHL                                          ; $5c25: $ef
	add b                                            ; $5c26: $80
	pop af                                           ; $5c27: $f1
	db $fc                                           ; $5c28: $fc
	inc c                                            ; $5c29: $0c
	cp $0e                                           ; $5c2a: $fe $0e
	ld a, a                                          ; $5c2c: $7f
	rrca                                             ; $5c2d: $0f
	dec e                                            ; $5c2e: $1d
	dec c                                            ; $5c2f: $0d
	adc c                                            ; $5c30: $89
	ld [$0de6], sp                                   ; $5c31: $08 $e6 $0d
	ld a, e                                          ; $5c34: $7b
	add a                                            ; $5c35: $87
	cp a                                             ; $5c36: $bf
	nop                                              ; $5c37: $00
	ld [hl], a                                       ; $5c38: $77
	ld a, c                                          ; $5c39: $79
	dec a                                            ; $5c3a: $3d
	ccf                                              ; $5c3b: $3f
	cp $eb                                           ; $5c3c: $fe $eb
	and [hl]                                         ; $5c3e: $a6
	db $eb                                           ; $5c3f: $eb
	cpl                                              ; $5c40: $2f
	db $e3                                           ; $5c41: $e3
	ld l, l                                          ; $5c42: $6d
	rst JumpTable                                          ; $5c43: $c7
	db $dd                                           ; $5c44: $dd
	add a                                            ; $5c45: $87
	sbc l                                            ; $5c46: $9d
	call $0407                                       ; $5c47: $cd $07 $04
	nop                                              ; $5c4a: $00
	rst SubAFromDE                                          ; $5c4b: $df
	ld d, l                                          ; $5c4c: $55
	ld b, l                                          ; $5c4d: $45
	nop                                              ; $5c4e: $00
	add b                                            ; $5c4f: $80
	ld a, c                                          ; $5c50: $79
	rst GetHLinHL                                          ; $5c51: $cf
	ld [hl], d                                       ; $5c52: $72
	rst SubAFromDE                                          ; $5c53: $df
	di                                               ; $5c54: $f3
	sbc a                                            ; $5c55: $9f
	rst FarCall                                          ; $5c56: $f7
	sbc h                                            ; $5c57: $9c
	rst FarCall                                          ; $5c58: $f7
	inc e                                            ; $5c59: $1c

jr_02a_5c5a:
	rst AddAOntoHL                                          ; $5c5a: $ef
	jr c, @+$01                                      ; $5c5b: $38 $ff

	jr nc, jr_02a_5c5a                               ; $5c5d: $30 $fb

	daa                                              ; $5c5f: $27
	cp [hl]                                          ; $5c60: $be
	db $e3                                           ; $5c61: $e3
	cp a                                             ; $5c62: $bf
	db $e3                                           ; $5c63: $e3
	rst $38                                          ; $5c64: $ff
	di                                               ; $5c65: $f3
	rst SubAFromDE                                          ; $5c66: $df
	cp c                                             ; $5c67: $b9

jr_02a_5c68:
	rst FarCall                                          ; $5c68: $f7
	adc l                                            ; $5c69: $8d
	ei                                               ; $5c6a: $fb
	rlca                                             ; $5c6b: $07
	cp a                                             ; $5c6c: $bf
	ld bc, $80df                                     ; $5c6d: $01 $df $80
	pop hl                                           ; $5c70: $e1
	rst FarCall                                          ; $5c71: $f7
	rrca                                             ; $5c72: $0f
	cp $0e                                           ; $5c73: $fe $0e
	ld a, a                                          ; $5c75: $7f
	rrca                                             ; $5c76: $0f
	dec e                                            ; $5c77: $1d
	dec c                                            ; $5c78: $0d
	adc c                                            ; $5c79: $89
	ld [$0de6], sp                                   ; $5c7a: $08 $e6 $0d
	ld a, e                                          ; $5c7d: $7b
	add a                                            ; $5c7e: $87
	cp a                                             ; $5c7f: $bf
	nop                                              ; $5c80: $00
	rst AddAOntoHL                                          ; $5c81: $ef
	pop af                                           ; $5c82: $f1
	dec a                                            ; $5c83: $3d
	dec sp                                           ; $5c84: $3b
	cp $ff                                           ; $5c85: $fe $ff
	xor [hl]                                         ; $5c87: $ae
	db $eb                                           ; $5c88: $eb
	cpl                                              ; $5c89: $2f
	db $e3                                           ; $5c8a: $e3
	ld l, l                                          ; $5c8b: $6d
	rst JumpTable                                          ; $5c8c: $c7
	db $dd                                           ; $5c8d: $dd
	add a                                            ; $5c8e: $87
	sbc l                                            ; $5c8f: $9d
	call $0407                                       ; $5c90: $cd $07 $04
	nop                                              ; $5c93: $00
	rst SubAFromDE                                          ; $5c94: $df
	ld d, l                                          ; $5c95: $55
	ld b, h                                          ; $5c96: $44
	nop                                              ; $5c97: $00
	add b                                            ; $5c98: $80
	ld a, c                                          ; $5c99: $79
	rst GetHLinHL                                          ; $5c9a: $cf
	ld [hl], d                                       ; $5c9b: $72
	rst SubAFromDE                                          ; $5c9c: $df
	di                                               ; $5c9d: $f3
	sbc a                                            ; $5c9e: $9f
	rst FarCall                                          ; $5c9f: $f7
	sbc h                                            ; $5ca0: $9c
	rst FarCall                                          ; $5ca1: $f7
	inc e                                            ; $5ca2: $1c
	rst AddAOntoHL                                          ; $5ca3: $ef
	jr c, @+$01                                      ; $5ca4: $38 $ff

	jr nc, @+$01                                     ; $5ca6: $30 $ff

	jr nz, jr_02a_5c68                               ; $5ca8: $20 $be

	db $e3                                           ; $5caa: $e3
	cp a                                             ; $5cab: $bf
	db $e3                                           ; $5cac: $e3
	rst $38                                          ; $5cad: $ff
	di                                               ; $5cae: $f3
	rst SubAFromDE                                          ; $5caf: $df

jr_02a_5cb0:
	cp c                                             ; $5cb0: $b9
	rst FarCall                                          ; $5cb1: $f7
	adc l                                            ; $5cb2: $8d
	ei                                               ; $5cb3: $fb
	rlca                                             ; $5cb4: $07
	cp a                                             ; $5cb5: $bf
	ld bc, $9d1f                                     ; $5cb6: $01 $1f $9d
	ld bc, $bfff                                     ; $5cb9: $01 $ff $bf
	cp $7d                                           ; $5cbc: $fe $7d
	add h                                            ; $5cbe: $84
	inc bc                                           ; $5cbf: $03
	dec de                                           ; $5cc0: $1b
	rlca                                             ; $5cc1: $07
	adc a                                            ; $5cc2: $8f
	rra                                              ; $5cc3: $1f
	xor $06                                          ; $5cc4: $ee $06
	ld a, a                                          ; $5cc6: $7f
	add e                                            ; $5cc7: $83
	cp a                                             ; $5cc8: $bf
	nop                                              ; $5cc9: $00
	rst SubAFromDE                                          ; $5cca: $df
	ld bc, $031d                                     ; $5ccb: $01 $1d $03
	xor $c3                                          ; $5cce: $ee $c3
	xor $e3                                          ; $5cd0: $ee $e3
	ld a, a                                          ; $5cd2: $7f
	ei                                               ; $5cd3: $fb
	db $ed                                           ; $5cd4: $ed
	rst FarCall                                          ; $5cd5: $f7
	sbc l                                            ; $5cd6: $9d
	rst JumpTable                                          ; $5cd7: $c7
	call $0407                                       ; $5cd8: $cd $07 $04
	nop                                              ; $5cdb: $00

Call_02a_5cdc:
	rst SubAFromDE                                          ; $5cdc: $df
	ld d, l                                          ; $5cdd: $55
	ld b, d                                          ; $5cde: $42
	nop                                              ; $5cdf: $00
	add b                                            ; $5ce0: $80
	ld a, c                                          ; $5ce1: $79
	rst GetHLinHL                                          ; $5ce2: $cf
	ld [hl], d                                       ; $5ce3: $72
	rst SubAFromDE                                          ; $5ce4: $df
	di                                               ; $5ce5: $f3
	sbc a                                            ; $5ce6: $9f
	rst FarCall                                          ; $5ce7: $f7
	sbc h                                            ; $5ce8: $9c
	rst FarCall                                          ; $5ce9: $f7
	inc e                                            ; $5cea: $1c
	rst AddAOntoHL                                          ; $5ceb: $ef
	jr c, @+$01                                      ; $5cec: $38 $ff

	jr nc, @+$01                                     ; $5cee: $30 $ff

	jr nz, jr_02a_5cb0                               ; $5cf0: $20 $be

	db $e3                                           ; $5cf2: $e3
	cp a                                             ; $5cf3: $bf
	db $e3                                           ; $5cf4: $e3
	rst $38                                          ; $5cf5: $ff
	di                                               ; $5cf6: $f3
	rst SubAFromDE                                          ; $5cf7: $df
	cp c                                             ; $5cf8: $b9
	rst FarCall                                          ; $5cf9: $f7
	adc l                                            ; $5cfa: $8d
	ei                                               ; $5cfb: $fb
	rlca                                             ; $5cfc: $07
	cp a                                             ; $5cfd: $bf
	ld bc, $9d1f                                     ; $5cfe: $01 $1f $9d
	ld bc, $bdff                                     ; $5d01: $01 $ff $bd
	rst $38                                          ; $5d04: $ff
	ld a, a                                          ; $5d05: $7f
	ld e, $8d                                        ; $5d06: $1e $8d
	adc b                                            ; $5d08: $88
	ld c, $e7                                        ; $5d09: $0e $e7
	rrca                                             ; $5d0b: $0f
	ld a, e                                          ; $5d0c: $7b
	add a                                            ; $5d0d: $87
	cp a                                             ; $5d0e: $bf
	nop                                              ; $5d0f: $00
	rra                                              ; $5d10: $1f
	ld bc, $031d                                     ; $5d11: $01 $1d $03
	xor $03                                          ; $5d14: $ee $03
	ld c, $03                                        ; $5d16: $0e $03
	cp a                                             ; $5d18: $bf
	ld a, e                                          ; $5d19: $7b
	db $ed                                           ; $5d1a: $ed
	rst FarCall                                          ; $5d1b: $f7
	db $dd                                           ; $5d1c: $dd
	add a                                            ; $5d1d: $87
	call $0407                                       ; $5d1e: $cd $07 $04
	nop                                              ; $5d21: $00
	rst SubAFromDE                                          ; $5d22: $df
	ld d, l                                          ; $5d23: $55
	ld b, l                                          ; $5d24: $45
	nop                                              ; $5d25: $00
	add b                                            ; $5d26: $80
	ld a, c                                          ; $5d27: $79
	rst GetHLinHL                                          ; $5d28: $cf
	ld [hl], d                                       ; $5d29: $72
	rst SubAFromDE                                          ; $5d2a: $df
	di                                               ; $5d2b: $f3
	sbc a                                            ; $5d2c: $9f
	rst FarCall                                          ; $5d2d: $f7
	sbc h                                            ; $5d2e: $9c
	rst FarCall                                          ; $5d2f: $f7
	inc e                                            ; $5d30: $1c
	rst AddAOntoHL                                          ; $5d31: $ef
	dec sp                                           ; $5d32: $3b
	rst $38                                          ; $5d33: $ff
	scf                                              ; $5d34: $37
	or $2e                                           ; $5d35: $f6 $2e
	cp [hl]                                          ; $5d37: $be
	db $e3                                           ; $5d38: $e3
	cp a                                             ; $5d39: $bf
	di                                               ; $5d3a: $f3
	rst SubAFromDE                                          ; $5d3b: $df
	ei                                               ; $5d3c: $fb
	rst SubAFromBC                                          ; $5d3d: $e7
	sbc l                                            ; $5d3e: $9d
	ei                                               ; $5d3f: $fb
	add l                                            ; $5d40: $85
	rst $38                                          ; $5d41: $ff
	pop bc                                           ; $5d42: $c1
	rst $38                                          ; $5d43: $ff
	pop hl                                           ; $5d44: $e1
	ld a, a                                          ; $5d45: $7f
	add b                                            ; $5d46: $80
	ld [hl], c                                       ; $5d47: $71
	db $fc                                           ; $5d48: $fc
	inc c                                            ; $5d49: $0c
	rst $38                                          ; $5d4a: $ff
	rrca                                             ; $5d4b: $0f
	ld a, a                                          ; $5d4c: $7f
	rrca                                             ; $5d4d: $0f
	dec e                                            ; $5d4e: $1d
	dec c                                            ; $5d4f: $0d
	adc c                                            ; $5d50: $89
	ld [$0de6], sp                                   ; $5d51: $08 $e6 $0d
	ld a, e                                          ; $5d54: $7b
	add a                                            ; $5d55: $87
	cp a                                             ; $5d56: $bf
	nop                                              ; $5d57: $00
	ccf                                              ; $5d58: $3f
	dec a                                            ; $5d59: $3d
	dec l                                            ; $5d5a: $2d
	dec sp                                           ; $5d5b: $3b
	and $eb                                          ; $5d5c: $e6 $eb
	xor [hl]                                         ; $5d5e: $ae
	db $e3                                           ; $5d5f: $e3
	cpl                                              ; $5d60: $2f
	db $e3                                           ; $5d61: $e3
	ld a, l                                          ; $5d62: $7d
	rst JumpTable                                          ; $5d63: $c7
	db $dd                                           ; $5d64: $dd
	add a                                            ; $5d65: $87
	sbc l                                            ; $5d66: $9d
	call $0407                                       ; $5d67: $cd $07 $04
	nop                                              ; $5d6a: $00
	rst SubAFromDE                                          ; $5d6b: $df
	ld d, l                                          ; $5d6c: $55
	ld b, l                                          ; $5d6d: $45
	nop                                              ; $5d6e: $00
	add b                                            ; $5d6f: $80
	ld a, c                                          ; $5d70: $79
	rst GetHLinHL                                          ; $5d71: $cf
	ld [hl], d                                       ; $5d72: $72
	rst SubAFromDE                                          ; $5d73: $df
	di                                               ; $5d74: $f3
	sbc a                                            ; $5d75: $9f
	rst FarCall                                          ; $5d76: $f7
	sbc h                                            ; $5d77: $9c
	rst FarCall                                          ; $5d78: $f7
	inc e                                            ; $5d79: $1c
	rst AddAOntoHL                                          ; $5d7a: $ef
	jr c, @+$01                                      ; $5d7b: $38 $ff

	jr nc, @-$01                                     ; $5d7d: $30 $fd

	inc hl                                           ; $5d7f: $23
	cp [hl]                                          ; $5d80: $be
	db $e3                                           ; $5d81: $e3
	cp a                                             ; $5d82: $bf
	di                                               ; $5d83: $f3
	rst SubAFromDE                                          ; $5d84: $df
	ei                                               ; $5d85: $fb
	rst SubAFromBC                                          ; $5d86: $e7
	sbc l                                            ; $5d87: $9d

jr_02a_5d88:
	ei                                               ; $5d88: $fb
	add l                                            ; $5d89: $85
	rst $38                                          ; $5d8a: $ff
	ld bc, $01bf                                     ; $5d8b: $01 $bf $01
	rst SubAFromDE                                          ; $5d8e: $df
	add b                                            ; $5d8f: $80
	pop hl                                           ; $5d90: $e1
	rst $38                                          ; $5d91: $ff
	rlca                                             ; $5d92: $07
	rst FarCall                                          ; $5d93: $f7
	rrca                                             ; $5d94: $0f
	ld a, a                                          ; $5d95: $7f
	rrca                                             ; $5d96: $0f
	dec e                                            ; $5d97: $1d
	dec c                                            ; $5d98: $0d
	adc c                                            ; $5d99: $89
	ld [$0de6], sp                                   ; $5d9a: $08 $e6 $0d
	ld a, e                                          ; $5d9d: $7b
	add a                                            ; $5d9e: $87
	cp a                                             ; $5d9f: $bf
	nop                                              ; $5da0: $00
	rst $38                                          ; $5da1: $ff
	pop af                                           ; $5da2: $f1
	dec a                                            ; $5da3: $3d
	ccf                                              ; $5da4: $3f
	xor $eb                                          ; $5da5: $ee $eb
	xor [hl]                                         ; $5da7: $ae
	db $e3                                           ; $5da8: $e3
	cpl                                              ; $5da9: $2f
	db $e3                                           ; $5daa: $e3
	ld a, l                                          ; $5dab: $7d
	rst JumpTable                                          ; $5dac: $c7
	db $dd                                           ; $5dad: $dd
	add a                                            ; $5dae: $87
	sbc l                                            ; $5daf: $9d
	call $0407                                       ; $5db0: $cd $07 $04
	nop                                              ; $5db3: $00
	rst SubAFromDE                                          ; $5db4: $df
	ld d, l                                          ; $5db5: $55
	ld b, h                                          ; $5db6: $44
	nop                                              ; $5db7: $00
	add b                                            ; $5db8: $80
	ld a, c                                          ; $5db9: $79
	rst GetHLinHL                                          ; $5dba: $cf
	ld [hl], d                                       ; $5dbb: $72
	rst SubAFromDE                                          ; $5dbc: $df
	di                                               ; $5dbd: $f3
	sbc a                                            ; $5dbe: $9f
	rst FarCall                                          ; $5dbf: $f7
	sbc h                                            ; $5dc0: $9c
	rst FarCall                                          ; $5dc1: $f7
	inc e                                            ; $5dc2: $1c
	rst AddAOntoHL                                          ; $5dc3: $ef
	jr c, @+$01                                      ; $5dc4: $38 $ff

	jr nc, @+$01                                     ; $5dc6: $30 $ff

	jr nz, jr_02a_5d88                               ; $5dc8: $20 $be

	db $e3                                           ; $5dca: $e3
	cp a                                             ; $5dcb: $bf
	di                                               ; $5dcc: $f3
	rst SubAFromDE                                          ; $5dcd: $df
	ei                                               ; $5dce: $fb
	rst SubAFromBC                                          ; $5dcf: $e7

jr_02a_5dd0:
	sbc l                                            ; $5dd0: $9d
	ei                                               ; $5dd1: $fb
	add l                                            ; $5dd2: $85
	rst $38                                          ; $5dd3: $ff
	ld bc, $01bf                                     ; $5dd4: $01 $bf $01
	rra                                              ; $5dd7: $1f
	sbc l                                            ; $5dd8: $9d
	ld bc, $bfff                                     ; $5dd9: $01 $ff $bf
	cp $7d                                           ; $5ddc: $fe $7d
	add h                                            ; $5dde: $84
	inc bc                                           ; $5ddf: $03
	dec de                                           ; $5de0: $1b
	rlca                                             ; $5de1: $07
	adc a                                            ; $5de2: $8f
	rra                                              ; $5de3: $1f
	xor $06                                          ; $5de4: $ee $06
	ld a, a                                          ; $5de6: $7f
	add e                                            ; $5de7: $83
	cp a                                             ; $5de8: $bf
	nop                                              ; $5de9: $00
	rst SubAFromDE                                          ; $5dea: $df
	ld bc, $031d                                     ; $5deb: $01 $1d $03
	xor $c3                                          ; $5dee: $ee $c3
	xor $e3                                          ; $5df0: $ee $e3
	ld a, a                                          ; $5df2: $7f
	ei                                               ; $5df3: $fb
	db $ed                                           ; $5df4: $ed
	rst FarCall                                          ; $5df5: $f7
	sbc l                                            ; $5df6: $9d
	rst JumpTable                                          ; $5df7: $c7
	call $0407                                       ; $5df8: $cd $07 $04
	nop                                              ; $5dfb: $00
	rst SubAFromDE                                          ; $5dfc: $df
	ld d, l                                          ; $5dfd: $55
	ld b, c                                          ; $5dfe: $41
	add b                                            ; $5dff: $80
	add d                                            ; $5e00: $82
	ld a, c                                          ; $5e01: $79
	ld [hl], d                                       ; $5e02: $72
	di                                               ; $5e03: $f3
	rst FarCall                                          ; $5e04: $f7
	rst FarCall                                          ; $5e05: $f7
	rst AddAOntoHL                                          ; $5e06: $ef
	rst $38                                          ; $5e07: $ff
	rst $38                                          ; $5e08: $ff
	rst GetHLinHL                                          ; $5e09: $cf
	rst SubAFromDE                                          ; $5e0a: $df
	sbc a                                            ; $5e0b: $9f
	sbc h                                            ; $5e0c: $9c
	inc e                                            ; $5e0d: $1c
	jr c, jr_02a_5e40                                ; $5e0e: $38 $30

	jr nz, jr_02a_5dd0                               ; $5e10: $20 $be

	cp a                                             ; $5e12: $bf
	rst SubAFromDE                                          ; $5e13: $df
	rst SubAFromBC                                          ; $5e14: $e7
	ei                                               ; $5e15: $fb
	rst $38                                          ; $5e16: $ff
	cp a                                             ; $5e17: $bf
	rra                                              ; $5e18: $1f
	db $e3                                           ; $5e19: $e3
	di                                               ; $5e1a: $f3
	ei                                               ; $5e1b: $fb
	sbc l                                            ; $5e1c: $9d
	add l                                            ; $5e1d: $85
	sbc $01                                          ; $5e1e: $de $01
	rst SubAFromDE                                          ; $5e20: $df
	rst $38                                          ; $5e21: $ff
	sbc c                                            ; $5e22: $99
	ld a, a                                          ; $5e23: $7f
	ld e, $8d                                        ; $5e24: $1e $8d
	rst SubAFromBC                                          ; $5e26: $e7
	ld a, e                                          ; $5e27: $7b
	cp a                                             ; $5e28: $bf
	db $fd                                           ; $5e29: $fd
	sub d                                            ; $5e2a: $92
	ld c, $0f                                        ; $5e2b: $0e $0f
	add a                                            ; $5e2d: $87
	nop                                              ; $5e2e: $00
	rra                                              ; $5e2f: $1f
	dec e                                            ; $5e30: $1d
	xor $0e                                          ; $5e31: $ee $0e
	cp a                                             ; $5e33: $bf
	db $ed                                           ; $5e34: $ed
	db $dd                                           ; $5e35: $dd
	call $de01                                       ; $5e36: $cd $01 $de
	inc bc                                           ; $5e39: $03
	sbc e                                            ; $5e3a: $9b
	ld a, e                                          ; $5e3b: $7b
	rst FarCall                                          ; $5e3c: $f7
	add a                                            ; $5e3d: $87
	rlca                                             ; $5e3e: $07
	inc b                                            ; $5e3f: $04

jr_02a_5e40:
	nop                                              ; $5e40: $00
	rst SubAFromDE                                          ; $5e41: $df
	ld d, l                                          ; $5e42: $55
	ld e, $00                                        ; $5e43: $1e $00
	sub d                                            ; $5e45: $92
	db $f4                                           ; $5e46: $f4
	jr c, jr_02a_5ec1                                ; $5e47: $38 $78

	stop                                             ; $5e49: $10 $00
	nop                                              ; $5e4b: $00
	ld a, h                                          ; $5e4c: $7c
	nop                                              ; $5e4d: $00
	jr c, jr_02a_5e88                                ; $5e4e: $38 $38

	nop                                              ; $5e50: $00
	nop                                              ; $5e51: $00
	jr z, jr_02a_5ecf                                ; $5e52: $28 $7b

	or $fb                                           ; $5e54: $f6 $fb
	sub l                                            ; $5e56: $95
	ld bc, $c780                                     ; $5e57: $01 $80 $c7
	db $e3                                           ; $5e5a: $e3
	db $fd                                           ; $5e5b: $fd
	cp $18                                           ; $5e5c: $fe $18
	ldh [$80], a                                     ; $5e5e: $e0 $80
	nop                                              ; $5e60: $00
	inc b                                            ; $5e61: $04
	nop                                              ; $5e62: $00
	sbc [hl]                                         ; $5e63: $9e
	ld d, b                                          ; $5e64: $50
	jr nz, jr_02a_5e67                               ; $5e65: $20 $00

jr_02a_5e67:
	sub a                                            ; $5e67: $97
	db $f4                                           ; $5e68: $f4
	jr c, @+$7a                                      ; $5e69: $38 $78

	stop                                             ; $5e6b: $10 $00
	nop                                              ; $5e6d: $00
	inc a                                            ; $5e6e: $3c
	jr @-$20                                         ; $5e6f: $18 $de

	inc a                                            ; $5e71: $3c
	sbc e                                            ; $5e72: $9b
	jr jr_02a_5e75                                   ; $5e73: $18 $00

jr_02a_5e75:
	nop                                              ; $5e75: $00
	ld [$f47b], sp                                   ; $5e76: $08 $7b $f4
	db $fd                                           ; $5e79: $fd
	sub l                                            ; $5e7a: $95
	ld bc, $c780                                     ; $5e7b: $01 $80 $c7
	db $e3                                           ; $5e7e: $e3
	db $fd                                           ; $5e7f: $fd
	cp $18                                           ; $5e80: $fe $18
	ldh [$80], a                                     ; $5e82: $e0 $80
	nop                                              ; $5e84: $00
	inc b                                            ; $5e85: $04
	nop                                              ; $5e86: $00
	sbc [hl]                                         ; $5e87: $9e

jr_02a_5e88:
	ld d, b                                          ; $5e88: $50
	jr nz, jr_02a_5e8b                               ; $5e89: $20 $00

jr_02a_5e8b:
	sub [hl]                                         ; $5e8b: $96
	db $f4                                           ; $5e8c: $f4
	jr c, jr_02a_5f07                                ; $5e8d: $38 $78

	stop                                             ; $5e8f: $10 $00
	nop                                              ; $5e91: $00
	inc a                                            ; $5e92: $3c
	jr jr_02a_5f13                                   ; $5e93: $18 $7e

	db $dd                                           ; $5e95: $dd
	inc a                                            ; $5e96: $3c
	sbc h                                            ; $5e97: $9c
	jr jr_02a_5e9a                                   ; $5e98: $18 $00

jr_02a_5e9a:
	nop                                              ; $5e9a: $00
	ld a, e                                          ; $5e9b: $7b
	db $fd                                           ; $5e9c: $fd
	cp $95                                           ; $5e9d: $fe $95
	ld bc, $c780                                     ; $5e9f: $01 $80 $c7
	db $e3                                           ; $5ea2: $e3
	db $fd                                           ; $5ea3: $fd
	cp $18                                           ; $5ea4: $fe $18
	ldh [$80], a                                     ; $5ea6: $e0 $80
	nop                                              ; $5ea8: $00
	inc b                                            ; $5ea9: $04
	nop                                              ; $5eaa: $00
	sbc [hl]                                         ; $5eab: $9e
	ld d, b                                          ; $5eac: $50
	ld [hl+], a                                      ; $5ead: $22
	nop                                              ; $5eae: $00
	adc [hl]                                         ; $5eaf: $8e
	db $f4                                           ; $5eb0: $f4
	jr c, jr_02a_5f2b                                ; $5eb1: $38 $78

	stop                                             ; $5eb3: $10 $00
	nop                                              ; $5eb5: $00
	inc a                                            ; $5eb6: $3c
	jr @+$3e                                         ; $5eb7: $18 $3c

	ld a, [hl]                                       ; $5eb9: $7e
	inc a                                            ; $5eba: $3c
	ld a, [hl]                                       ; $5ebb: $7e
	ld a, [hl]                                       ; $5ebc: $7e
	inc a                                            ; $5ebd: $3c
	inc a                                            ; $5ebe: $3c
	jr jr_02a_5ec1                                   ; $5ebf: $18 $00

jr_02a_5ec1:
	cp [hl]                                          ; $5ec1: $be
	jr jr_02a_5ec4                                   ; $5ec2: $18 $00

jr_02a_5ec4:
	ld bc, $8096                                     ; $5ec4: $01 $96 $80
	rst JumpTable                                          ; $5ec7: $c7
	db $e3                                           ; $5ec8: $e3
	db $fd                                           ; $5ec9: $fd
	cp $18                                           ; $5eca: $fe $18
	ldh [$80], a                                     ; $5ecc: $e0 $80
	nop                                              ; $5ece: $00

jr_02a_5ecf:
	inc b                                            ; $5ecf: $04
	nop                                              ; $5ed0: $00
	sbc [hl]                                         ; $5ed1: $9e
	ld d, b                                          ; $5ed2: $50
	dec e                                            ; $5ed3: $1d
	nop                                              ; $5ed4: $00
	sub c                                            ; $5ed5: $91
	db $f4                                           ; $5ed6: $f4
	jr c, @+$7a                                      ; $5ed7: $38 $78

	db $10                                           ; $5ed9: $10
	ld bc, $fe00                                     ; $5eda: $01 $00 $fe
	add $7c                                          ; $5edd: $c6 $7c
	jr c, jr_02a_5ee1                                ; $5edf: $38 $00

jr_02a_5ee1:
	nop                                              ; $5ee1: $00
	jr z, jr_02a_5ef4                                ; $5ee2: $28 $10

	ld sp, hl                                        ; $5ee4: $f9
	sub l                                            ; $5ee5: $95
	ld bc, $c780                                     ; $5ee6: $01 $80 $c7
	db $e3                                           ; $5ee9: $e3
	db $fd                                           ; $5eea: $fd
	cp $18                                           ; $5eeb: $fe $18
	ldh [$80], a                                     ; $5eed: $e0 $80
	nop                                              ; $5eef: $00
	inc b                                            ; $5ef0: $04
	nop                                              ; $5ef1: $00
	sbc [hl]                                         ; $5ef2: $9e
	ld d, b                                          ; $5ef3: $50

jr_02a_5ef4:
	ld e, $00                                        ; $5ef4: $1e $00
	sub b                                            ; $5ef6: $90
	db $f4                                           ; $5ef7: $f4
	jr c, jr_02a_5f72                                ; $5ef8: $38 $78

	stop                                             ; $5efa: $10 $00
	nop                                              ; $5efc: $00
	cp $c6                                           ; $5efd: $fe $c6
	cp $7c                                           ; $5eff: $fe $7c

jr_02a_5f01:
	ld a, h                                          ; $5f01: $7c
	jr c, jr_02a_5f04                                ; $5f02: $38 $00

jr_02a_5f04:
	nop                                              ; $5f04: $00
	jr jr_02a_5f01                                   ; $5f05: $18 $fa

jr_02a_5f07:
	sub l                                            ; $5f07: $95
	ld bc, $c780                                     ; $5f08: $01 $80 $c7
	db $e3                                           ; $5f0b: $e3
	db $fd                                           ; $5f0c: $fd
	cp $18                                           ; $5f0d: $fe $18
	ldh [$80], a                                     ; $5f0f: $e0 $80
	nop                                              ; $5f11: $00
	inc b                                            ; $5f12: $04

jr_02a_5f13:
	nop                                              ; $5f13: $00
	sbc [hl]                                         ; $5f14: $9e
	ld d, b                                          ; $5f15: $50
	ld hl, $9700                                     ; $5f16: $21 $00 $97
	db $f4                                           ; $5f19: $f4
	jr c, jr_02a_5f94                                ; $5f1a: $38 $78

	stop                                             ; $5f1c: $10 $00
	nop                                              ; $5f1e: $00
	rst $38                                          ; $5f1f: $ff
	rst SubAFromBC                                          ; $5f20: $e7
	sbc $7e                                          ; $5f21: $de $7e
	rst SubAFromDE                                          ; $5f23: $df
	inc a                                            ; $5f24: $3c
	sbc h                                            ; $5f25: $9c
	jr jr_02a_5f28                                   ; $5f26: $18 $00

jr_02a_5f28:
	nop                                              ; $5f28: $00
	ld a, e                                          ; $5f29: $7b
	db $fd                                           ; $5f2a: $fd

jr_02a_5f2b:
	cp $95                                           ; $5f2b: $fe $95
	ld bc, $c780                                     ; $5f2d: $01 $80 $c7
	db $e3                                           ; $5f30: $e3
	db $fd                                           ; $5f31: $fd
	cp $18                                           ; $5f32: $fe $18
	ldh [$80], a                                     ; $5f34: $e0 $80
	nop                                              ; $5f36: $00
	inc b                                            ; $5f37: $04
	nop                                              ; $5f38: $00
	sbc [hl]                                         ; $5f39: $9e
	ld d, b                                          ; $5f3a: $50
	jr nz, jr_02a_5f3d                               ; $5f3b: $20 $00

jr_02a_5f3d:
	sbc c                                            ; $5f3d: $99
	db $f4                                           ; $5f3e: $f4
	jr c, jr_02a_5fb9                                ; $5f3f: $38 $78

	stop                                             ; $5f41: $10 $00
	nop                                              ; $5f43: $00
	sbc $ff                                          ; $5f44: $de $ff
	db $dd                                           ; $5f46: $dd
	ld a, [hl]                                       ; $5f47: $7e
	rst SubAFromDE                                          ; $5f48: $df
	inc a                                            ; $5f49: $3c
	sbc l                                            ; $5f4a: $9d
	jr jr_02a_5f4d                                   ; $5f4b: $18 $00

jr_02a_5f4d:
	cp [hl]                                          ; $5f4d: $be
	jr jr_02a_5f50                                   ; $5f4e: $18 $00

jr_02a_5f50:
	ld bc, $8096                                     ; $5f50: $01 $96 $80
	rst JumpTable                                          ; $5f53: $c7
	db $e3                                           ; $5f54: $e3
	db $fd                                           ; $5f55: $fd
	cp $18                                           ; $5f56: $fe $18
	ldh [$80], a                                     ; $5f58: $e0 $80
	nop                                              ; $5f5a: $00
	inc b                                            ; $5f5b: $04
	nop                                              ; $5f5c: $00
	sbc [hl]                                         ; $5f5d: $9e
	ld d, b                                          ; $5f5e: $50
	sub c                                            ; $5f5f: $91
	add h                                            ; $5f60: $84
	reti                                             ; $5f61: $d9


	rst $38                                          ; $5f62: $ff
	ld sp, hl                                        ; $5f63: $f9
	inc bc                                           ; $5f64: $03
	ldh a, [$db]                                     ; $5f65: $f0 $db
	rst $38                                          ; $5f67: $ff
	sbc [hl]                                         ; $5f68: $9e
	cp $f9                                           ; $5f69: $fe $f9
	sbc $c0                                          ; $5f6b: $de $c0
	rst SubAFromDE                                          ; $5f6d: $df
	add b                                            ; $5f6e: $80
	ei                                               ; $5f6f: $fb
	rst SubAFromDE                                          ; $5f70: $df
	rlca                                             ; $5f71: $07

jr_02a_5f72:
	rst SubAFromDE                                          ; $5f72: $df
	rrca                                             ; $5f73: $0f
	sbc e                                            ; $5f74: $9b
	rra                                              ; $5f75: $1f
	ld a, a                                          ; $5f76: $7f
	rra                                              ; $5f77: $1f
	inc bc                                           ; $5f78: $03
	ld hl, sp-$64                                    ; $5f79: $f8 $9c
	ret nz                                           ; $5f7b: $c0

	ld hl, sp-$02                                    ; $5f7c: $f8 $fe
	call c, $9dff                                    ; $5f7e: $dc $ff $9d
	rra                                              ; $5f81: $1f
	rlca                                             ; $5f82: $07
	ld e, a                                          ; $5f83: $5f
	db $ed                                           ; $5f84: $ed
	jp c, $9eff                                      ; $5f85: $da $ff $9e

	rra                                              ; $5f88: $1f
	inc bc                                           ; $5f89: $03
	sub b                                            ; $5f8a: $90
	inc bc                                           ; $5f8b: $03
	ldh a, [$03]                                     ; $5f8c: $f0 $03
	ldh a, [$03]                                     ; $5f8e: $f0 $03
	ldh a, [$03]                                     ; $5f90: $f0 $03
	ldh a, [$03]                                     ; $5f92: $f0 $03

jr_02a_5f94:
	ldh a, [$03]                                     ; $5f94: $f0 $03
	ldh a, [rSCX]                                    ; $5f96: $f0 $43
	ldh a, [$df]                                     ; $5f98: $f0 $df
	cp $df                                           ; $5f9a: $fe $df
	db $fc                                           ; $5f9c: $fc

Call_02a_5f9d:
	rst SubAFromDE                                          ; $5f9d: $df
	ld hl, sp-$21                                    ; $5f9e: $f8 $df
	ldh a, [$f1]                                     ; $5fa0: $f0 $f1
	sbc h                                            ; $5fa2: $9c
	rra                                              ; $5fa3: $1f
	ccf                                              ; $5fa4: $3f
	ccf                                              ; $5fa5: $3f
	sbc $7f                                          ; $5fa6: $de $7f
	scf                                              ; $5fa8: $37
	ret z                                            ; $5fa9: $c8

	adc a                                            ; $5faa: $8f
	ld bc, $0502                                     ; $5fab: $01 $02 $05
	ld a, [hl+]                                      ; $5fae: $2a
	ld e, a                                          ; $5faf: $5f
	ldh a, [$f8]                                     ; $5fb0: $f0 $f8
	cp $fe                                           ; $5fb2: $fe $fe
	db $fd                                           ; $5fb4: $fd
	ld a, [$bfd4]                                    ; $5fb5: $fa $d4 $bf
	ld h, b                                          ; $5fb8: $60

jr_02a_5fb9:
	rrca                                             ; $5fb9: $0f
	ld bc, $9dfd                                     ; $5fba: $01 $fd $9d
	add b                                            ; $5fbd: $80
	ld hl, sp+$7b                                    ; $5fbe: $f8 $7b
	db $fc                                           ; $5fc0: $fc
	ld [hl], a                                       ; $5fc1: $77
	ld hl, sp-$65                                    ; $5fc2: $f8 $9b
	ld a, b                                          ; $5fc4: $78
	rst $38                                          ; $5fc5: $ff
	rst $38                                          ; $5fc6: $ff
	ld a, a                                          ; $5fc7: $7f
	ld l, a                                          ; $5fc8: $6f
	db $ed                                           ; $5fc9: $ed
	ld d, a                                          ; $5fca: $57
	ret z                                            ; $5fcb: $c8

	ld e, e                                          ; $5fcc: $5b
	db $ed                                           ; $5fcd: $ed
	inc bc                                           ; $5fce: $03
	ld h, b                                          ; $5fcf: $60
	inc bc                                           ; $5fd0: $03
	ldh a, [$03]                                     ; $5fd1: $f0 $03
	ldh a, [$03]                                     ; $5fd3: $f0 $03
	ldh a, [$03]                                     ; $5fd5: $f0 $03
	ldh a, [$03]                                     ; $5fd7: $f0 $03
	ldh a, [$5f]                                     ; $5fd9: $f0 $5f
	ldh a, [$de]                                     ; $5fdb: $f0 $de
	ldh [$75], a                                     ; $5fdd: $e0 $75
	adc [hl]                                         ; $5fdf: $8e
	sbc d                                            ; $5fe0: $9a
	add b                                            ; $5fe1: $80
	ld bc, $0301                                     ; $5fe2: $01 $01 $03
	inc bc                                           ; $5fe5: $03
	sbc $07                                          ; $5fe6: $de $07
	sbc [hl]                                         ; $5fe8: $9e
	rrca                                             ; $5fe9: $0f
	ld b, a                                          ; $5fea: $47
	ret c                                            ; $5feb: $d8

	ld a, a                                          ; $5fec: $7f
	jp hl                                            ; $5fed: $e9


	sbc c                                            ; $5fee: $99
	ld b, $0e                                        ; $5fef: $06 $0e
	inc d                                            ; $5ff1: $14
	inc l                                            ; $5ff2: $2c
	ld e, b                                          ; $5ff3: $58
	cp b                                             ; $5ff4: $b8
	ld a, d                                          ; $5ff5: $7a
	jp nc, $f499                                     ; $5ff6: $d2 $99 $f4

	db $ec                                           ; $5ff9: $ec
	ret c                                            ; $5ffa: $d8

	xor b                                            ; $5ffb: $a8
	ld c, b                                          ; $5ffc: $48
	ret nz                                           ; $5ffd: $c0

	ld l, c                                          ; $5ffe: $69
	ld h, e                                          ; $5fff: $63
	ld l, e                                          ; $6000: $6b
	ld sp, hl                                        ; $6001: $f9
	sbc [hl]                                         ; $6002: $9e
	nop                                              ; $6003: $00
	ld h, a                                          ; $6004: $67
	rst GetHLinHL                                          ; $6005: $cf
	ld h, l                                          ; $6006: $65
	ld l, l                                          ; $6007: $6d
	sbc l                                            ; $6008: $9d
	add b                                            ; $6009: $80
	ldh a, [$71]                                     ; $600a: $f0 $71
	ld c, a                                          ; $600c: $4f
	sbc h                                            ; $600d: $9c
	ld [bc], a                                       ; $600e: $02
	add b                                            ; $600f: $80
	ld [hl], b                                       ; $6010: $70
	ld [hl], e                                       ; $6011: $73
	and $9e                                          ; $6012: $e6 $9e
	inc b                                            ; $6014: $04
	cp $9a                                           ; $6015: $fe $9a
	db $e3                                           ; $6017: $e3
	inc e                                            ; $6018: $1c
	add hl, bc                                       ; $6019: $09
	ld d, $68                                        ; $601a: $16 $68
	ld [hl], a                                       ; $601c: $77
	ld hl, sp-$65                                    ; $601d: $f8 $9b
	ld e, $0c                                        ; $601f: $1e $0c
	jr jr_02a_6093                                   ; $6021: $18 $70

	ld a, d                                          ; $6023: $7a
	or l                                             ; $6024: $b5
	sbc d                                            ; $6025: $9a
	add b                                            ; $6026: $80
	ld h, b                                          ; $6027: $60
	adc b                                            ; $6028: $88
	jr nc, jr_02a_602d                               ; $6029: $30 $02

	ld [hl], e                                       ; $602b: $73
	cp l                                             ; $602c: $bd

jr_02a_602d:
	sbc h                                            ; $602d: $9c
	inc b                                            ; $602e: $04
	rrca                                             ; $602f: $0f
	ld bc, $a26e                                     ; $6030: $01 $6e $a2
	sbc l                                            ; $6033: $9d
	add b                                            ; $6034: $80
	db $10                                           ; $6035: $10
	ld h, a                                          ; $6036: $67
	ld [hl], c                                       ; $6037: $71
	db $db                                           ; $6038: $db
	rst $38                                          ; $6039: $ff
	ld a, a                                          ; $603a: $7f
	db $ed                                           ; $603b: $ed
	inc bc                                           ; $603c: $03
	ld b, b                                          ; $603d: $40
	inc bc                                           ; $603e: $03
	ldh a, [$03]                                     ; $603f: $f0 $03
	ldh a, [$03]                                     ; $6041: $f0 $03
	ldh a, [$2f]                                     ; $6043: $f0 $2f
	ldh a, [$6d]                                     ; $6045: $f0 $6d
	adc [hl]                                         ; $6047: $8e
	pop af                                           ; $6048: $f1
	ld a, h                                          ; $6049: $7c
	ld d, [hl]                                       ; $604a: $56
	rst SubAFromDE                                          ; $604b: $df
	rra                                              ; $604c: $1f
	ld [hl], l                                       ; $604d: $75
	adc l                                            ; $604e: $8d
	ld a, c                                          ; $604f: $79
	and d                                            ; $6050: $a2
	sbc d                                            ; $6051: $9a
	dec bc                                           ; $6052: $0b
	rla                                              ; $6053: $17
	ld l, $5d                                        ; $6054: $2e $5d
	cp d                                             ; $6056: $ba
	halt                                             ; $6057: $76
	ret nc                                           ; $6058: $d0

	sub d                                            ; $6059: $92
	add sp, -$30                                     ; $605a: $e8 $d0
	and b                                            ; $605c: $a0
	ld b, b                                          ; $605d: $40
	ld a, b                                          ; $605e: $78
	ld hl, sp-$30                                    ; $605f: $f8 $d0
	or b                                             ; $6061: $b0
	ld d, b                                          ; $6062: $50
	sub b                                            ; $6063: $90
	db $10                                           ; $6064: $10
	db $10                                           ; $6065: $10
	adc b                                            ; $6066: $88
	jp c, $ff10                                      ; $6067: $da $10 $ff

	ld a, [hl]                                       ; $606a: $7e
	sbc c                                            ; $606b: $99
	ld a, b                                          ; $606c: $78
	add hl, hl                                       ; $606d: $29
	ld h, b                                          ; $606e: $60
	ld d, b                                          ; $606f: $50
	ld a, d                                          ; $6070: $7a
	ld sp, hl                                        ; $6071: $f9
	sbc l                                            ; $6072: $9d
	ldh [$f8], a                                     ; $6073: $e0 $f8
	ld e, e                                          ; $6075: $5b
	and b                                            ; $6076: $a0
	sbc [hl]                                         ; $6077: $9e
	inc bc                                           ; $6078: $03
	ld [hl], c                                       ; $6079: $71
	sub [hl]                                         ; $607a: $96
	sbc l                                            ; $607b: $9d
	ldh a, [rIE]                                     ; $607c: $f0 $ff
	halt                                             ; $607e: $76
	cp e                                             ; $607f: $bb
	db $fd                                           ; $6080: $fd
	add b                                            ; $6081: $80
	and c                                            ; $6082: $a1
	ldh a, [c]                                       ; $6083: $f2
	ld l, c                                          ; $6084: $69
	ld h, [hl]                                       ; $6085: $66
	ld l, l                                          ; $6086: $6d
	ld a, l                                          ; $6087: $7d
	ld a, d                                          ; $6088: $7a
	rst SubAFromHL                                          ; $6089: $d7
	jp nc, $24f4                                     ; $608a: $d2 $f4 $24

	add hl, hl                                       ; $608d: $29
	ld c, d                                          ; $608e: $4a
	ld c, d                                          ; $608f: $4a
	ld c, l                                          ; $6090: $4d
	ld l, l                                          ; $6091: $6d
	ccf                                              ; $6092: $3f

jr_02a_6093:
	add e                                            ; $6093: $83
	ld de, $ab4d                                     ; $6094: $11 $4d $ab
	db $db                                           ; $6097: $db
	and e                                            ; $6098: $a3
	ld b, l                                          ; $6099: $45

Call_02a_609a:
	nop                                              ; $609a: $00
	ld b, b                                          ; $609b: $40
	adc [hl]                                         ; $609c: $8e
	ld [hl-], a                                      ; $609d: $32
	ld b, [hl]                                       ; $609e: $46
	cp d                                             ; $609f: $ba
	ldh [c], a                                       ; $60a0: $e2
	sub h                                            ; $60a1: $94
	add $22                                          ; $60a2: $c6 $22
	cp c                                             ; $60a4: $b9
	xor h                                            ; $60a5: $ac
	inc h                                            ; $60a6: $24
	ld h, $27                                        ; $60a7: $26 $27
	adc e                                            ; $60a9: $8b
	dec c                                            ; $60aa: $0d
	call c, $de46                                    ; $60ab: $dc $46 $de
	ld b, e                                          ; $60ae: $43
	sbc h                                            ; $60af: $9c
	ld b, d                                          ; $60b0: $42
	ld b, [hl]                                       ; $60b1: $46
	add $7b                                          ; $60b2: $c6 $7b
	ret z                                            ; $60b4: $c8

	sub l                                            ; $60b5: $95
	ld b, b                                          ; $60b6: $40
	add hl, hl                                       ; $60b7: $29
	dec hl                                           ; $60b8: $2b
	dec hl                                           ; $60b9: $2b
	ld a, [hl+]                                      ; $60ba: $2a
	nop                                              ; $60bb: $00
	nop                                              ; $60bc: $00
	ld h, b                                          ; $60bd: $60
	inc a                                            ; $60be: $3c
	ld d, $de                                        ; $60bf: $16 $de
	inc d                                            ; $60c1: $14
	ld a, d                                          ; $60c2: $7a
	or l                                             ; $60c3: $b5
	sbc d                                            ; $60c4: $9a
	inc bc                                           ; $60c5: $03
	add b                                            ; $60c6: $80
	ld b, b                                          ; $60c7: $40
	ld c, b                                          ; $60c8: $48
	inc hl                                           ; $60c9: $23
	db $fc                                           ; $60ca: $fc
	sbc h                                            ; $60cb: $9c
	and b                                            ; $60cc: $a0
	or b                                             ; $60cd: $b0
	sbc b                                            ; $60ce: $98
	ld l, [hl]                                       ; $60cf: $6e
	and d                                            ; $60d0: $a2
	ld h, a                                          ; $60d1: $67
	and d                                            ; $60d2: $a2
	ld h, e                                          ; $60d3: $63
	jr nz, @-$60                                     ; $60d4: $20 $9e

	ld a, a                                          ; $60d6: $7f
	inc bc                                           ; $60d7: $03
	nop                                              ; $60d8: $00

Call_02a_60d9:
	inc bc                                           ; $60d9: $03
	ldh a, [$03]                                     ; $60da: $f0 $03
	ldh a, [$fc]                                     ; $60dc: $f0 $fc
	ld a, b                                          ; $60de: $78
	ld d, l                                          ; $60df: $55
	ld [hl], c                                       ; $60e0: $71
	adc [hl]                                         ; $60e1: $8e
	ld a, b                                          ; $60e2: $78
	ld a, b                                          ; $60e3: $78
	ld [hl], c                                       ; $60e4: $71
	adc l                                            ; $60e5: $8d
	ld [hl], d                                       ; $60e6: $72
	ret nc                                           ; $60e7: $d0

	sbc h                                            ; $60e8: $9c
	ld a, [hl+]                                      ; $60e9: $2a
	ld d, l                                          ; $60ea: $55
	xor d                                            ; $60eb: $aa
	ld h, [hl]                                       ; $60ec: $66
	ret nc                                           ; $60ed: $d0

	sbc [hl]                                         ; $60ee: $9e
	ld [hl], h                                       ; $60ef: $74
	ld [hl], a                                       ; $60f0: $77
	ei                                               ; $60f1: $fb
	ld a, e                                          ; $60f2: $7b
	ldh [c], a                                       ; $60f3: $e2
	ld h, l                                          ; $60f4: $65
	and b                                            ; $60f5: $a0
	pop de                                           ; $60f6: $d1
	db $10                                           ; $60f7: $10
	sbc h                                            ; $60f8: $9c
	rra                                              ; $60f9: $1f
	ld c, $07                                        ; $60fa: $0e $07
	ld l, [hl]                                       ; $60fc: $6e
	db $dd                                           ; $60fd: $dd
	ld l, b                                          ; $60fe: $68
	ld l, [hl]                                       ; $60ff: $6e
	ld a, e                                          ; $6100: $7b
	ld b, l                                          ; $6101: $45
	sub d                                            ; $6102: $92
	xor a                                            ; $6103: $af
	rst SubAFromDE                                          ; $6104: $df
	rst FarCall                                          ; $6105: $f7
	ld a, h                                          ; $6106: $7c
	ld a, h                                          ; $6107: $7c
	nop                                              ; $6108: $00
	nop                                              ; $6109: $00
	ret nz                                           ; $610a: $c0

	ld [hl], b                                       ; $610b: $70
	inc a                                            ; $610c: $3c
	rrca                                             ; $610d: $0f
	inc b                                            ; $610e: $04
	inc b                                            ; $610f: $04
	ld d, e                                          ; $6110: $53
	sub d                                            ; $6111: $92
	ld a, e                                          ; $6112: $7b
	ld hl, sp-$64                                    ; $6113: $f8 $9c
	push bc                                          ; $6115: $c5
	and $e4                                          ; $6116: $e6 $e4
	sbc $e8                                          ; $6118: $de $e8
	rst SubAFromDE                                          ; $611a: $df
	ld de, $7f80                                     ; $611b: $11 $80 $7f
	ld a, $3c                                        ; $611e: $3e $3c
	jr c, jr_02a_615a                                ; $6120: $38 $38

	ld hl, sp+$11                                    ; $6122: $f8 $11
	db $10                                           ; $6124: $10
	ld b, h                                          ; $6125: $44
	adc c                                            ; $6126: $89
	adc e                                            ; $6127: $8b
	rla                                              ; $6128: $17
	ld a, a                                          ; $6129: $7f
	rst AddAOntoHL                                          ; $612a: $ef
	di                                               ; $612b: $f3
	db $ec                                           ; $612c: $ec
	rst JumpTable                                          ; $612d: $c7
	adc a                                            ; $612e: $8f
	adc [hl]                                         ; $612f: $8e
	inc e                                            ; $6130: $1c
	jr c, jr_02a_61a3                                ; $6131: $38 $70

	db $fc                                           ; $6133: $fc
	rra                                              ; $6134: $1f
	sub $9a                                          ; $6135: $d6 $9a
	xor [hl]                                         ; $6137: $ae
	xor h                                            ; $6138: $ac
	call nc, $e9d9                                   ; $6139: $d4 $d9 $e9

jr_02a_613c:
	sbc c                                            ; $613c: $99
	db $eb                                           ; $613d: $eb
	adc h                                            ; $613e: $8c
	adc h                                            ; $613f: $8c
	sbc b                                            ; $6140: $98
	sbc b                                            ; $6141: $98
	cp b                                             ; $6142: $b8
	sbc $b0                                          ; $6143: $de $b0
	add a                                            ; $6145: $87
	ld [de], a                                       ; $6146: $12
	ld d, d                                          ; $6147: $52
	ld [hl+], a                                      ; $6148: $22
	and b                                            ; $6149: $a0
	add h                                            ; $614a: $84
	inc b                                            ; $614b: $04
	ld hl, $2c00                                     ; $614c: $21 $00 $2c
	inc l                                            ; $614f: $2c
	ld e, h                                          ; $6150: $5c
	ld e, h                                          ; $6151: $5c
	ld a, b                                          ; $6152: $78
	ld hl, sp-$28                                    ; $6153: $f8 $d8
	reti                                             ; $6155: $d9


	ld hl, $0424                                     ; $6156: $21 $24 $04
	inc b                                            ; $6159: $04

jr_02a_615a:
	ld [bc], a                                       ; $615a: $02
	ld a, [de]                                       ; $615b: $1a
	ld a, [de]                                       ; $615c: $1a
	jr jr_02a_613c                                   ; $615d: $18 $dd

	sbc b                                            ; $615f: $98
	adc a                                            ; $6160: $8f
	sbc h                                            ; $6161: $9c
	sub h                                            ; $6162: $94
	sub h                                            ; $6163: $94
	sub [hl]                                         ; $6164: $96
	ret nc                                           ; $6165: $d0

	adc b                                            ; $6166: $88
	xor d                                            ; $6167: $aa
	inc c                                            ; $6168: $0c
	ld b, l                                          ; $6169: $45
	ld b, h                                          ; $616a: $44
	ld b, b                                          ; $616b: $40
	ld d, h                                          ; $616c: $54
	nop                                              ; $616d: $00
	ld b, b                                          ; $616e: $40
	ld b, c                                          ; $616f: $41
	ld h, c                                          ; $6170: $61
	db $dd                                           ; $6171: $dd
	jr nz, jr_02a_61ee                               ; $6172: $20 $7a

	and d                                            ; $6174: $a2
	sbc d                                            ; $6175: $9a
	ret nz                                           ; $6176: $c0

	ld c, b                                          ; $6177: $48
	ld h, [hl]                                       ; $6178: $66
	ld h, [hl]                                       ; $6179: $66
	ld h, d                                          ; $617a: $62
	ld [hl], d                                       ; $617b: $72
	ld [hl], $de                                     ; $617c: $36 $de
	add b                                            ; $617e: $80
	ld l, [hl]                                       ; $617f: $6e
	and d                                            ; $6180: $a2
	sbc l                                            ; $6181: $9d
	add b                                            ; $6182: $80
	jr nz, jr_02a_61f3                               ; $6183: $20 $6e

	dec h                                            ; $6185: $25
	sbc l                                            ; $6186: $9d
	ld h, b                                          ; $6187: $60
	ld e, b                                          ; $6188: $58
	ld l, [hl]                                       ; $6189: $6e
	and d                                            ; $618a: $a2
	ld [hl], b                                       ; $618b: $70
	db $ec                                           ; $618c: $ec
	ld [bc], a                                       ; $618d: $02
	ldh [$27], a                                     ; $618e: $e0 $27
	ldh a, [$de]                                     ; $6190: $f0 $de
	cp $9e                                           ; $6192: $fe $9e
	db $fc                                           ; $6194: $fc
	ld sp, hl                                        ; $6195: $f9
	sub d                                            ; $6196: $92
	add c                                            ; $6197: $81
	adc d                                            ; $6198: $8a
	dec b                                            ; $6199: $05
	ld a, [bc]                                       ; $619a: $0a
	dec d                                            ; $619b: $15
	ld a, [de]                                       ; $619c: $1a
	inc [hl]                                         ; $619d: $34
	jr z, jr_02a_61a6                                ; $619e: $28 $06

	dec b                                            ; $61a0: $05
	ld a, [bc]                                       ; $61a1: $0a
	inc b                                            ; $61a2: $04

jr_02a_61a3:
	ld [$9efe], sp                                   ; $61a3: $08 $fe $9e

jr_02a_61a6:
	ld d, b                                          ; $61a6: $50
	ld [hl], d                                       ; $61a7: $72
	jp nc, $d05e                                     ; $61a8: $d2 $5e $d0

	pop af                                           ; $61ab: $f1
	pop de                                           ; $61ac: $d1
	db $10                                           ; $61ad: $10
	pop af                                           ; $61ae: $f1
	sub [hl]                                         ; $61af: $96

Call_02a_61b0:
	ld a, [hl-]                                      ; $61b0: $3a
	ld a, $1e                                        ; $61b1: $3e $1e
	ld e, $0d                                        ; $61b3: $1e $0d
	rrca                                             ; $61b5: $0f
	rrca                                             ; $61b6: $0f
	rlca                                             ; $61b7: $07
	ld b, $de                                        ; $61b8: $06 $de
	ld [bc], a                                       ; $61ba: $02
	ld a, [hl]                                       ; $61bb: $7e
	and a                                            ; $61bc: $a7
	rst SubAFromDE                                          ; $61bd: $df
	ld bc, $3575                                     ; $61be: $01 $75 $35
	sbc e                                            ; $61c1: $9b
	db $10                                           ; $61c2: $10
	jr jr_02a_61d5                                   ; $61c3: $18 $10

	inc d                                            ; $61c5: $14
	ld [hl], e                                       ; $61c6: $73
	ld hl, sp+$7f                                    ; $61c7: $f8 $7f
	rst FarCall                                          ; $61c9: $f7
	sbc e                                            ; $61ca: $9b
	jr jr_02a_61f0                                   ; $61cb: $18 $23

	ld h, [hl]                                       ; $61cd: $66
	rst JumpTable                                          ; $61ce: $c7
	ld [hl], a                                       ; $61cf: $77
	and l                                            ; $61d0: $a5
	sbc e                                            ; $61d1: $9b
	ld [hl], c                                       ; $61d2: $71
	jr nz, @+$43                                     ; $61d3: $20 $41

jr_02a_61d5:
	add e                                            ; $61d5: $83
	ld [hl], d                                       ; $61d6: $72
	adc d                                            ; $61d7: $8a
	add b                                            ; $61d8: $80
	cp $ff                                           ; $61d9: $fe $ff
	rst AddAOntoHL                                          ; $61db: $ef
	ld [hl], a                                       ; $61dc: $77
	dec de                                           ; $61dd: $1b
	adc a                                            ; $61de: $8f
	ld a, l                                          ; $61df: $7d
	ld h, a                                          ; $61e0: $67
	inc bc                                           ; $61e1: $03
	pop bc                                           ; $61e2: $c1
	pop af                                           ; $61e3: $f1
	jr c, jr_02a_6242                                ; $61e4: $38 $5c

	adc h                                            ; $61e6: $8c
	cp $ff                                           ; $61e7: $fe $ff
	ldh [c], a                                       ; $61e9: $e2
	or d                                             ; $61ea: $b2
	push af                                          ; $61eb: $f5
	or l                                             ; $61ec: $b5
	or c                                             ; $61ed: $b1

jr_02a_61ee:
	and d                                            ; $61ee: $a2
	ld h, d                                          ; $61ef: $62

jr_02a_61f0:
	ld l, d                                          ; $61f0: $6a
	or c                                             ; $61f1: $b1
	pop hl                                           ; $61f2: $e1

jr_02a_61f3:
	db $e3                                           ; $61f3: $e3
	db $e3                                           ; $61f4: $e3
	rst SubAFromBC                                          ; $61f5: $e7
	rst FarCall                                          ; $61f6: $f7
	or a                                             ; $61f7: $b7
	add [hl]                                         ; $61f8: $86
	or a                                             ; $61f9: $b7
	adc b                                            ; $61fa: $88
	jp nz, $2020                                     ; $61fb: $c2 $20 $20

	sub h                                            ; $61fe: $94
	sub l                                            ; $61ff: $95
	ld [$d10a], sp                                   ; $6200: $08 $0a $d1
	sub c                                            ; $6203: $91
	sub e                                            ; $6204: $93
	sub e                                            ; $6205: $93
	inc hl                                           ; $6206: $23
	ld [hl+], a                                      ; $6207: $22
	ld h, $24                                        ; $6208: $26 $24
	sbc b                                            ; $620a: $98
	cp h                                             ; $620b: $bc
	inc a                                            ; $620c: $3c
	inc e                                            ; $620d: $1c
	inc d                                            ; $620e: $14
	ld h, [hl]                                       ; $620f: $66
	ld l, d                                          ; $6210: $6a
	dec hl                                           ; $6211: $2b
	sbc $16                                          ; $6212: $de $16
	sub b                                            ; $6214: $90
	ld [hl], $3e                                     ; $6215: $36 $3e
	inc a                                            ; $6217: $3c

jr_02a_6218:
	inc a                                            ; $6218: $3c
	ld a, h                                          ; $6219: $7c
	ld d, h                                          ; $621a: $54
	ld d, [hl]                                       ; $621b: $56
	ld d, d                                          ; $621c: $52
	jp nc, $dbd3                                     ; $621d: $d2 $d3 $db

	sbc e                                            ; $6220: $9b
	sbc e                                            ; $6221: $9b
	jr nz, jr_02a_6244                               ; $6222: $20 $20

	db $dd                                           ; $6224: $dd
	inc h                                            ; $6225: $24
	rst SubAFromDE                                          ; $6226: $df
	ld h, h                                          ; $6227: $64
	sbc [hl]                                         ; $6228: $9e
	ld h, d                                          ; $6229: $62
	db $dd                                           ; $622a: $dd
	ld [hl], e                                       ; $622b: $73
	sbc h                                            ; $622c: $9c
	ld [hl], a                                       ; $622d: $77
	halt                                             ; $622e: $76
	ld h, [hl]                                       ; $622f: $66
	db $db                                           ; $6230: $db
	add b                                            ; $6231: $80
	sbc h                                            ; $6232: $9c
	add c                                            ; $6233: $81
	sub c                                            ; $6234: $91
	jr nz, @-$22                                     ; $6235: $20 $dc

	jr c, jr_02a_6218                                ; $6237: $38 $df

	xor b                                            ; $6239: $a8
	sbc [hl]                                         ; $623a: $9e
	ld e, b                                          ; $623b: $58
	call c, $df48                                    ; $623c: $dc $48 $df
	ld e, b                                          ; $623f: $58
	ld a, l                                          ; $6240: $7d
	ld c, h                                          ; $6241: $4c

jr_02a_6242:
	sbc c                                            ; $6242: $99
	ld e, h                                          ; $6243: $5c

jr_02a_6244:
	xor [hl]                                         ; $6244: $ae
	ld e, l                                          ; $6245: $5d
	cp [hl]                                          ; $6246: $be
	ld e, l                                          ; $6247: $5d
	cp [hl]                                          ; $6248: $be
	ld [hl], a                                       ; $6249: $77
	add h                                            ; $624a: $84
	sbc [hl]                                         ; $624b: $9e
	ld [bc], a                                       ; $624c: $02
	ld a, e                                          ; $624d: $7b
	cp $7a                                           ; $624e: $fe $7a
	or l                                             ; $6250: $b5
	sbc e                                            ; $6251: $9b
	add b                                            ; $6252: $80
	jr nc, jr_02a_6273                               ; $6253: $30 $1e

	cpl                                              ; $6255: $2f
	ld [hl], b                                       ; $6256: $70
	ret nz                                           ; $6257: $c0

	sbc l                                            ; $6258: $9d
	ldh [$fc], a                                     ; $6259: $e0 $fc
	db $db                                           ; $625b: $db
	rst $38                                          ; $625c: $ff
	ld a, e                                          ; $625d: $7b
	db $ed                                           ; $625e: $ed
	sbc [hl]                                         ; $625f: $9e
	ldh a, [$fa]                                     ; $6260: $f0 $fa
	sbc [hl]                                         ; $6262: $9e
	ldh [rDMA], a                                    ; $6263: $e0 $46
	ret nz                                           ; $6265: $c0

	ld a, b                                          ; $6266: $78
	ld d, l                                          ; $6267: $55
	ld [hl], c                                       ; $6268: $71
	adc [hl]                                         ; $6269: $8e
	ld sp, hl                                        ; $626a: $f9
	sbc l                                            ; $626b: $9d
	ld d, b                                          ; $626c: $50
	jr nz, jr_02a_62dd                               ; $626d: $20 $6e

	ret nc                                           ; $626f: $d0

	ldh [$d9], a                                     ; $6270: $e0 $d9
	db $dd                                           ; $6272: $dd

jr_02a_6273:
	jr @-$1f                                         ; $6273: $18 $df

	inc e                                            ; $6275: $1c
	rst SubAFromDE                                          ; $6276: $df
	inc c                                            ; $6277: $0c
	db $db                                           ; $6278: $db
	db $10                                           ; $6279: $10
	rst SubAFromDE                                          ; $627a: $df
	ld [$7ef1], sp                                   ; $627b: $08 $f1 $7e
	rst JumpTable                                          ; $627e: $c7
	ld a, l                                          ; $627f: $7d
	ld [hl], b                                       ; $6280: $70
	rst SubAFromDE                                          ; $6281: $df
	inc bc                                           ; $6282: $03
	db $dd                                           ; $6283: $dd
	ld bc, $906a                                     ; $6284: $01 $6a $90
	sbc b                                            ; $6287: $98
	sub b                                            ; $6288: $90
	and b                                            ; $6289: $a0
	or b                                             ; $628a: $b0
	sbc c                                            ; $628b: $99
	ld l, h                                          ; $628c: $6c
	ldh a, [$f0]                                     ; $628d: $f0 $f0
	ld a, e                                          ; $628f: $7b
	ld hl, sp-$69                                    ; $6290: $f8 $97
	and b                                            ; $6292: $a0
	cp a                                             ; $6293: $bf
	ret nz                                           ; $6294: $c0

	ld b, b                                          ; $6295: $40
	ld h, b                                          ; $6296: $60
	dec a                                            ; $6297: $3d
	ld e, $07                                        ; $6298: $1e $07
	ld [hl], a                                       ; $629a: $77
	and $6b                                          ; $629b: $e6 $6b
	ldh [c], a                                       ; $629d: $e2
	rst $38                                          ; $629e: $ff
	sub l                                            ; $629f: $95
	adc l                                            ; $62a0: $8d
	ld a, a                                          ; $62a1: $7f
	rra                                              ; $62a2: $1f
	rrca                                             ; $62a3: $0f
	rlca                                             ; $62a4: $07
	rra                                              ; $62a5: $1f
	ld a, a                                          ; $62a6: $7f
	rst $38                                          ; $62a7: $ff
	cp $33                                           ; $62a8: $fe $33
	ei                                               ; $62aa: $fb
	sbc l                                            ; $62ab: $9d
	ldh a, [c]                                       ; $62ac: $f2
	ld [hl], d                                       ; $62ad: $72
	call c, $9cf2                                    ; $62ae: $dc $f2 $9c
	ld a, [$9f1f]                                    ; $62b1: $fa $1f $9f
	call c, $801f                                    ; $62b4: $dc $1f $80
	rla                                              ; $62b7: $17
	ld [$5510], sp                                   ; $62b8: $08 $10 $55
	ld [hl], l                                       ; $62bb: $75
	rst SubAFromBC                                          ; $62bc: $e7
	xor $ee                                          ; $62bd: $ee $ee
	xor l                                            ; $62bf: $ad
	inc h                                            ; $62c0: $24
	inc l                                            ; $62c1: $2c
	jr z, @+$2a                                      ; $62c2: $28 $28

	jr c, jr_02a_62f7                                ; $62c4: $38 $31

	ld sp, $af73                                     ; $62c6: $31 $73 $af
	rst GetHLinHL                                          ; $62c9: $cf
	ld d, a                                          ; $62ca: $57
	ld d, [hl]                                       ; $62cb: $56
	sbc [hl]                                         ; $62cc: $9e
	xor h                                            ; $62cd: $ac
	cp h                                             ; $62ce: $bc
	jr c, jr_02a_6349                                ; $62cf: $38 $78

	ld a, b                                          ; $62d1: $78
	ld hl, sp-$07                                    ; $62d2: $f8 $f9
	pop af                                           ; $62d4: $f1
	di                                               ; $62d5: $f3
	ld a, [hl]                                       ; $62d6: $7e
	sbc l                                            ; $62d7: $9d
	add b                                            ; $62d8: $80
	sbc e                                            ; $62d9: $9b
	dec sp                                           ; $62da: $3b
	ld a, $36                                        ; $62db: $3e $36

jr_02a_62dd:
	ld [hl], $74                                     ; $62dd: $36 $74
	ld h, l                                          ; $62df: $65
	jp hl                                            ; $62e0: $e9


	ld h, h                                          ; $62e1: $64
	call nz, $cdc5                                   ; $62e2: $c4 $c5 $cd
	call $9e8f                                       ; $62e5: $cd $8f $9e
	ld e, $66                                        ; $62e8: $1e $66
	ld l, [hl]                                       ; $62ea: $6e
	xor $ec                                          ; $62eb: $ee $ec
	xor $ce                                          ; $62ed: $ee $ce
	jp z, $91bc                                      ; $62ef: $ca $bc $91

	sub c                                            ; $62f2: $91
	ld de, $1313                                     ; $62f3: $11 $13 $13
	inc sp                                           ; $62f6: $33

jr_02a_62f7:
	scf                                              ; $62f7: $37
	sub [hl]                                         ; $62f8: $96
	ld h, a                                          ; $62f9: $67
	ld de, $5112                                     ; $62fa: $11 $12 $51
	ld d, d                                          ; $62fd: $52
	ld h, l                                          ; $62fe: $65
	ld b, d                                          ; $62ff: $42
	push bc                                          ; $6300: $c5
	adc d                                            ; $6301: $8a
	db $dd                                           ; $6302: $dd
	ldh a, [$74]                                     ; $6303: $f0 $74
	sbc b                                            ; $6305: $98
	sbc d                                            ; $6306: $9a
	ld a, l                                          ; $6307: $7d
	cp $7d                                           ; $6308: $fe $7d
	ld a, [$787d]                                    ; $630a: $fa $7d $78
	and l                                            ; $630d: $a5
	ld a, d                                          ; $630e: $7a
	call nz, $059e                                   ; $630f: $c4 $9e $05
	ld [hl], h                                       ; $6312: $74
	sub l                                            ; $6313: $95
	ld a, [hl]                                       ; $6314: $7e
	add $73                                          ; $6315: $c6 $73
	cp $9e                                           ; $6317: $fe $9e
	ld e, a                                          ; $6319: $5f
	reti                                             ; $631a: $d9


	rst $38                                          ; $631b: $ff
	ld l, d                                          ; $631c: $6a
	pop hl                                           ; $631d: $e1
	sub [hl]                                         ; $631e: $96
	ret nz                                           ; $631f: $c0

	ld hl, sp-$10                                    ; $6320: $f8 $f0
	pop af                                           ; $6322: $f1
	pop hl                                           ; $6323: $e1
	pop hl                                           ; $6324: $e1
	jp $87c3                                         ; $6325: $c3 $c3 $87


	db $db                                           ; $6328: $db
	rst $38                                          ; $6329: $ff
	rst SubAFromDE                                          ; $632a: $df
	cp $f9                                           ; $632b: $fe $f9
	ld a, e                                          ; $632d: $7b
	cp l                                             ; $632e: $bd
	ld [bc], a                                       ; $632f: $02
	ret nc                                           ; $6330: $d0

	push hl                                          ; $6331: $e5
	sbc $0e                                          ; $6332: $de $0e
	ld a, c                                          ; $6334: $79
	and d                                            ; $6335: $a2
	rst SubAFromDE                                          ; $6336: $df
	rlca                                             ; $6337: $07
	call c, $de08                                    ; $6338: $dc $08 $de
	inc b                                            ; $633b: $04
	ld l, h                                          ; $633c: $6c
	add sp, $5f                                      ; $633d: $e8 $5f
	xor h                                            ; $633f: $ac
	ld h, d                                          ; $6340: $62
	rst SubAFromBC                                          ; $6341: $e7
	ld a, [$a09e]                                    ; $6342: $fa $9e $a0
	ld a, e                                          ; $6345: $7b
	ld [hl], h                                       ; $6346: $74
	ld a, e                                          ; $6347: $7b
	adc l                                            ; $6348: $8d

jr_02a_6349:
	sbc l                                            ; $6349: $9d
	ret nz                                           ; $634a: $c0

	ld h, b                                          ; $634b: $60
	sbc $40                                          ; $634c: $de $40
	db $dd                                           ; $634e: $dd
	add b                                            ; $634f: $80
	rst SubAFromDE                                          ; $6350: $df
	inc bc                                           ; $6351: $03
	rst SubAFromDE                                          ; $6352: $df
	rlca                                             ; $6353: $07
	rst SubAFromDE                                          ; $6354: $df
	rrca                                             ; $6355: $0f
	sbc l                                            ; $6356: $9d
	rra                                              ; $6357: $1f
	ld a, $6b                                        ; $6358: $3e $6b
	jp nc, $039e                                     ; $635a: $d2 $9e $03

	call c, $9dff                                    ; $635d: $dc $ff $9d
	add [hl]                                         ; $6360: $86
	ld a, a                                          ; $6361: $7f
	ld [hl], e                                       ; $6362: $73
	ld h, b                                          ; $6363: $60
	add b                                            ; $6364: $80
	ccf                                              ; $6365: $3f
	ld hl, sp-$01                                    ; $6366: $f8 $ff
	add e                                            ; $6368: $83
	ldh [c], a                                       ; $6369: $e2
	ldh a, [c]                                       ; $636a: $f2
	jp z, $14e2                                      ; $636b: $ca $e2 $14

	ld b, h                                          ; $636e: $44
	jr z, jr_02a_63b1                                ; $636f: $28 $40

	scf                                              ; $6371: $37
	daa                                              ; $6372: $27
	ld h, a                                          ; $6373: $67
	rst GetHLinHL                                          ; $6374: $cf
	rst GetHLinHL                                          ; $6375: $cf
	rra                                              ; $6376: $1f
	sbc a                                            ; $6377: $9f
	ccf                                              ; $6378: $3f
	cp l                                             ; $6379: $bd
	cp d                                             ; $637a: $ba
	ld e, d                                          ; $637b: $5a
	ld e, h                                          ; $637c: $5c
	ld [hl], l                                       ; $637d: $75
	ld [hl], l                                       ; $637e: $75
	cp d                                             ; $637f: $ba
	cp e                                             ; $6380: $bb
	ld h, e                                          ; $6381: $63
	ld h, a                                          ; $6382: $67
	rst SubAFromBC                                          ; $6383: $e7
	sbc [hl]                                         ; $6384: $9e
	rst SubAFromBC                                          ; $6385: $e7
	sbc $cf                                          ; $6386: $de $cf
	add b                                            ; $6388: $80
	adc $50                                          ; $6389: $ce $50
	ld h, e                                          ; $638b: $63
	and l                                            ; $638c: $a5
	rst JumpTable                                          ; $638d: $c7
	ld c, e                                          ; $638e: $4b
	adc a                                            ; $638f: $8f
	sub [hl]                                         ; $6390: $96
	inc e                                            ; $6391: $1c
	rst AddAOntoHL                                          ; $6392: $ef
	sbc $de                                          ; $6393: $de $de
	cp h                                             ; $6395: $bc
	cp h                                             ; $6396: $bc
	ld a, b                                          ; $6397: $78
	ld a, c                                          ; $6398: $79
	di                                               ; $6399: $f3
	set 1, e                                         ; $639a: $cb $cb
	sub a                                            ; $639c: $97
	sub a                                            ; $639d: $97
	ld l, $2c                                        ; $639e: $2e $2c
	ld e, c                                          ; $63a0: $59
	or c                                             ; $63a1: $b1
	inc a                                            ; $63a2: $3c
	inc a                                            ; $63a3: $3c
	ld a, b                                          ; $63a4: $78
	ld a, b                                          ; $63a5: $78
	pop af                                           ; $63a6: $f1
	di                                               ; $63a7: $f3
	ld a, a                                          ; $63a8: $7f
	db $dd                                           ; $63a9: $dd
	add a                                            ; $63aa: $87
	cp l                                             ; $63ab: $bd
	or l                                             ; $63ac: $b5
	ld e, d                                          ; $63ad: $5a
	ld l, d                                          ; $63ae: $6a
	or h                                             ; $63af: $b4
	ret c                                            ; $63b0: $d8

jr_02a_63b1:
	ld l, b                                          ; $63b1: $68
	or b                                             ; $63b2: $b0
	ld h, a                                          ; $63b3: $67
	ld l, a                                          ; $63b4: $6f
	xor $de                                          ; $63b5: $ee $de
	call c, $b8b8                                    ; $63b7: $dc $b8 $b8
	ld [hl], b                                       ; $63ba: $70
	dec b                                            ; $63bb: $05
	dec bc                                           ; $63bc: $0b
	dec d                                            ; $63bd: $15
	dec bc                                           ; $63be: $0b
	rla                                              ; $63bf: $17
	dec hl                                           ; $63c0: $2b
	ld d, a                                          ; $63c1: $57
	cpl                                              ; $63c2: $2f
	ld sp, hl                                        ; $63c3: $f9
	ld a, [hl]                                       ; $63c4: $7e
	add $96                                          ; $63c5: $c6 $96
	ldh a, [$e8]                                     ; $63c7: $f0 $e8
	ret nc                                           ; $63c9: $d0

	ldh [$d0], a                                     ; $63ca: $e0 $d0
	and c                                            ; $63cc: $a1
	dec bc                                           ; $63cd: $0b
	rla                                              ; $63ce: $17
	rrca                                             ; $63cf: $0f
	halt                                             ; $63d0: $76
	call nz, Call_02a_5f9d                           ; $63d1: $c4 $9d $5f
	ccf                                              ; $63d4: $3f
	ld a, e                                          ; $63d5: $7b
	cp $9b                                           ; $63d6: $fe $9b
	cp a                                             ; $63d8: $bf
	ld a, [hl]                                       ; $63d9: $7e
	cp [hl]                                          ; $63da: $be
	ld a, h                                          ; $63db: $7c
	ld l, [hl]                                       ; $63dc: $6e
	jp c, $fcdf                                      ; $63dd: $da $df $fc

	ld a, l                                          ; $63e0: $7d
	ld c, l                                          ; $63e1: $4d
	sbc l                                            ; $63e2: $9d
	ld bc, $7713                                     ; $63e3: $01 $13 $77
	ld e, h                                          ; $63e6: $5c
	sub a                                            ; $63e7: $97
	add a                                            ; $63e8: $87
	ld c, $0e                                        ; $63e9: $0e $0e
	inc c                                            ; $63eb: $0c
	inc e                                            ; $63ec: $1c
	inc e                                            ; $63ed: $1c
	jr c, @+$3a                                      ; $63ee: $38 $38

	inc [hl]                                         ; $63f0: $34
	nop                                              ; $63f1: $00
	rst $38                                          ; $63f2: $ff
	sbc l                                            ; $63f3: $9d
	ld h, [hl]                                       ; $63f4: $66
	ld h, b                                          ; $63f5: $60
	ld sp, hl                                        ; $63f6: $f9
	sbc l                                            ; $63f7: $9d
	ld h, d                                          ; $63f8: $62
	ld h, $fa                                        ; $63f9: $26 $fa
	sbc e                                            ; $63fb: $9b
	ld b, $22                                        ; $63fc: $06 $22
	ld hl, $fb10                                     ; $63fe: $21 $10 $fb
	sbc h                                            ; $6401: $9c
	ld [bc], a                                       ; $6402: $02
	ld [hl+], a                                      ; $6403: $22
	ld de, $f66b                                     ; $6404: $11 $6b $f6
	sbc h                                            ; $6407: $9c
	ld h, d                                          ; $6408: $62
	ld hl, $6b11                                     ; $6409: $21 $11 $6b
	push af                                          ; $640c: $f5
	sbc l                                            ; $640d: $9d
	ld [hl+], a                                      ; $640e: $22
	ld bc, $f673                                     ; $640f: $01 $73 $f6
	sbc l                                            ; $6412: $9d
	ld [bc], a                                       ; $6413: $02
	ld h, b                                          ; $6414: $60
	ld [hl], e                                       ; $6415: $73
	or $98                                           ; $6416: $f6 $98
	ld de, $0000                                     ; $6418: $11 $00 $00
	ld [hl], d                                       ; $641b: $72
	jr nz, jr_02a_641e                               ; $641c: $20 $00

jr_02a_641e:
	nop                                              ; $641e: $00
	ld l, a                                          ; $641f: $6f
	or $9d                                           ; $6420: $f6 $9d
	ld [hl+], a                                      ; $6422: $22
	ld h, b                                          ; $6423: $60
	adc e                                            ; $6424: $8b
	ld b, $9c                                        ; $6425: $06 $9c
	cp $00                                           ; $6427: $fe $00
	db $fc                                           ; $6429: $fc
	ld a, e                                          ; $642a: $7b
	cp $9e                                           ; $642b: $fe $9e
	ld hl, sp+$7b                                    ; $642d: $f8 $7b
	cp $9e                                           ; $642f: $fe $9e
	ldh a, [$73]                                     ; $6431: $f0 $73
	cp $e0                                           ; $6433: $fe $e0
	pop bc                                           ; $6435: $c1
	sbc c                                            ; $6436: $99
	rlca                                             ; $6437: $07
	inc b                                            ; $6438: $04
	rlca                                             ; $6439: $07
	inc b                                            ; $643a: $04
	inc bc                                           ; $643b: $03
	ld [bc], a                                       ; $643c: $02
	ld h, a                                          ; $643d: $67
	cp $df                                           ; $643e: $fe $df
	ld bc, $c098                                     ; $6440: $01 $98 $c0
	nop                                              ; $6443: $00
	pop bc                                           ; $6444: $c1
	ld bc, $03c2                                     ; $6445: $01 $c2 $03
	ldh [c], a                                       ; $6448: $e2
	ld a, e                                          ; $6449: $7b
	cp $9c                                           ; $644a: $fe $9c
	di                                               ; $644c: $f3
	ld bc, $7bf1                                     ; $644d: $01 $f1 $7b
	sbc d                                            ; $6450: $9a
	add b                                            ; $6451: $80
	and b                                            ; $6452: $a0
	ldh [rLCDC], a                                   ; $6453: $e0 $40
	ret nz                                           ; $6455: $c0

	add c                                            ; $6456: $81
	add c                                            ; $6457: $81
	add [hl]                                         ; $6458: $86
	add a                                            ; $6459: $87
	ld a, b                                          ; $645a: $78
	rst $38                                          ; $645b: $ff
	nop                                              ; $645c: $00
	rst $38                                          ; $645d: $ff
	jp $fcff                                         ; $645e: $c3 $ff $fc


	ccf                                              ; $6461: $3f
	ldh a, [$e0]                                     ; $6462: $f0 $e0
	sbc a                                            ; $6464: $9f
	db $fc                                           ; $6465: $fc
	rlca                                             ; $6466: $07
	rst $38                                          ; $6467: $ff
	rlca                                             ; $6468: $07
	rst $38                                          ; $6469: $ff
	ld c, a                                          ; $646a: $4f
	db $fc                                           ; $646b: $fc
	sbc a                                            ; $646c: $9f
	db $f4                                           ; $646d: $f4
	ccf                                              ; $646e: $3f
	db $e4                                           ; $646f: $e4
	ld a, a                                          ; $6470: $7f
	sbc b                                            ; $6471: $98
	rst JumpTable                                          ; $6472: $c7
	rst $38                                          ; $6473: $ff
	ld [bc], a                                       ; $6474: $02
	rst $38                                          ; $6475: $ff
	ld [bc], a                                       ; $6476: $02
	cp a                                             ; $6477: $bf
	ret nz                                           ; $6478: $c0

	sbc $ff                                          ; $6479: $de $ff
	add b                                            ; $647b: $80
	inc bc                                           ; $647c: $03
	db $fd                                           ; $647d: $fd
	ld e, $e3                                        ; $647e: $1e $e3
	rst $38                                          ; $6480: $ff
	rra                                              ; $6481: $1f
	db $fc                                           ; $6482: $fc
	cp $06                                           ; $6483: $fe $06
	ld sp, hl                                        ; $6485: $f9
	inc c                                            ; $6486: $0c
	ldh a, [c]                                       ; $6487: $f2
	add hl, sp                                       ; $6488: $39
	reti                                             ; $6489: $d9


	rst SubAFromBC                                          ; $648a: $e7
	ld h, [hl]                                       ; $648b: $66
	sbc a                                            ; $648c: $9f
	sbc d                                            ; $648d: $9a
	ld a, h                                          ; $648e: $7c
	jp hl                                            ; $648f: $e9


	ldh a, [$c4]                                     ; $6490: $f0 $c4
	db $e3                                           ; $6492: $e3
	adc c                                            ; $6493: $89
	ld [hl], a                                       ; $6494: $77
	ld e, c                                          ; $6495: $59
	rst SubAFromBC                                          ; $6496: $e7
	sub e                                            ; $6497: $93
	rst GetHLinHL                                          ; $6498: $cf
	dec [hl]                                         ; $6499: $35
	adc a                                            ; $649a: $8f
	add b                                            ; $649b: $80
	ld l, l                                          ; $649c: $6d
	rra                                              ; $649d: $1f
	reti                                             ; $649e: $d9


	ccf                                              ; $649f: $3f
	cp c                                             ; $64a0: $b9
	ld a, a                                          ; $64a1: $7f
	ld l, d                                          ; $64a2: $6a
	rst $38                                          ; $64a3: $ff
	ei                                               ; $64a4: $fb
	adc [hl]                                         ; $64a5: $8e
	db $ed                                           ; $64a6: $ed
	sbc [hl]                                         ; $64a7: $9e
	halt                                             ; $64a8: $76
	sbc l                                            ; $64a9: $9d
	halt                                             ; $64aa: $76
	sbc l                                            ; $64ab: $9d
	ld a, d                                          ; $64ac: $7a
	sbc l                                            ; $64ad: $9d
	db $fc                                           ; $64ae: $fc
	dec de                                           ; $64af: $1b
	db $f4                                           ; $64b0: $f4
	dec de                                           ; $64b1: $1b
	push af                                          ; $64b2: $f5
	dec de                                           ; $64b3: $1b
	add hl, hl                                       ; $64b4: $29
	rst FarCall                                          ; $64b5: $f7
	ld [hl-], a                                      ; $64b6: $32
	rst AddAOntoHL                                          ; $64b7: $ef
	ld d, d                                          ; $64b8: $52
	rst AddAOntoHL                                          ; $64b9: $ef
	ld h, l                                          ; $64ba: $65
	adc e                                            ; $64bb: $8b
	sbc $a5                                          ; $64bc: $de $a5
	sbc $cb                                          ; $64be: $de $cb
	cp h                                             ; $64c0: $bc
	jp z, $12bd                                      ; $64c1: $ca $bd $12

	db $fd                                           ; $64c4: $fd
	ld h, d                                          ; $64c5: $62
	sbc a                                            ; $64c6: $9f
	add $3f                                          ; $64c7: $c6 $3f
	add h                                            ; $64c9: $84
	ld a, a                                          ; $64ca: $7f
	adc l                                            ; $64cb: $8d
	ld a, a                                          ; $64cc: $7f
	add hl, bc                                       ; $64cd: $09
	rst $38                                          ; $64ce: $ff
	ld de, $fe7b                                     ; $64cf: $11 $7b $fe
	sub d                                            ; $64d2: $92
	inc hl                                           ; $64d3: $23
	rst $38                                          ; $64d4: $ff
	ld d, b                                          ; $64d5: $50
	ldh a, [$a0]                                     ; $64d6: $f0 $a0
	ldh [$a1], a                                     ; $64d8: $e0 $a1
	ldh [rWY], a                                     ; $64da: $e0 $4a
	ret nz                                           ; $64dc: $c0

	ld d, l                                          ; $64dd: $55
	ret nz                                           ; $64de: $c0

	ld l, d                                          ; $64df: $6a
	ld [hl], e                                       ; $64e0: $73
	db $fc                                           ; $64e1: $fc
	sbc b                                            ; $64e2: $98
	ld d, a                                          ; $64e3: $57
	nop                                              ; $64e4: $00
	xor a                                            ; $64e5: $af
	nop                                              ; $64e6: $00
	ld e, a                                          ; $64e7: $5f
	nop                                              ; $64e8: $00
	cp a                                             ; $64e9: $bf
	ld a, e                                          ; $64ea: $7b
	db $fc                                           ; $64eb: $fc
	adc b                                            ; $64ec: $88
	cp [hl]                                          ; $64ed: $be
	ld bc, $007f                                     ; $64ee: $01 $7f $00
	cp $01                                           ; $64f1: $fe $01
	ret nz                                           ; $64f3: $c0

	ccf                                              ; $64f4: $3f
	and c                                            ; $64f5: $a1
	ld e, a                                          ; $64f6: $5f
	ld b, d                                          ; $64f7: $42
	cp a                                             ; $64f8: $bf
	add c                                            ; $64f9: $81
	ld a, a                                          ; $64fa: $7f
	ld b, d                                          ; $64fb: $42
	cp a                                             ; $64fc: $bf
	add l                                            ; $64fd: $85
	ld a, a                                          ; $64fe: $7f
	dec bc                                           ; $64ff: $0b
	rst $38                                          ; $6500: $ff
	add l                                            ; $6501: $85
	ld a, a                                          ; $6502: $7f
	db $fc                                           ; $6503: $fc
	db $db                                           ; $6504: $db
	ld hl, sp-$23                                    ; $6505: $f8 $dd
	ldh a, [hDisp1_OBP1]                                     ; $6507: $f0 $94
	pop hl                                           ; $6509: $e1
	ldh [$e1], a                                     ; $650a: $e0 $e1
	ldh [$c3], a                                     ; $650c: $e0 $c3
	rrca                                             ; $650e: $0f
	ld [hl], b                                       ; $650f: $70
	rrca                                             ; $6510: $0f
	ld [hl], b                                       ; $6511: $70
	rra                                              ; $6512: $1f
	ldh [rPCM34], a                                  ; $6513: $e0 $77
	cp $94                                           ; $6515: $fe $94
	ccf                                              ; $6517: $3f
	ret nz                                           ; $6518: $c0

	ccf                                              ; $6519: $3f
	ret nz                                           ; $651a: $c0

	ld a, a                                          ; $651b: $7f
	add b                                            ; $651c: $80
	ldh [rP1], a                                     ; $651d: $e0 $00
	ldh [rP1], a                                     ; $651f: $e0 $00
	ret nz                                           ; $6521: $c0

	ld a, e                                          ; $6522: $7b
	cp $9e                                           ; $6523: $fe $9e
	add b                                            ; $6525: $80
	ld a, e                                          ; $6526: $7b
	cp $e0                                           ; $6527: $fe $e0
	cp l                                             ; $6529: $bd
	db $db                                           ; $652a: $db
	ld bc, $7ef7                                     ; $652b: $01 $f7 $7e
	adc $7e                                          ; $652e: $ce $7e
	ld h, d                                          ; $6530: $62
	add e                                            ; $6531: $83
	ld a, a                                          ; $6532: $7f
	add e                                            ; $6533: $83
	db $fc                                           ; $6534: $fc
	adc a                                            ; $6535: $8f
	di                                               ; $6536: $f3

jr_02a_6537:
	sbc a                                            ; $6537: $9f
	and a                                            ; $6538: $a7
	db $fc                                           ; $6539: $fc
	rst SubAFromDE                                          ; $653a: $df
	ld hl, sp-$01                                    ; $653b: $f8 $ff
	ldh [$39], a                                     ; $653d: $e0 $39
	ccf                                              ; $653f: $3f
	rst JumpTable                                          ; $6540: $c7
	cp $3f                                           ; $6541: $fe $3f
	ld hl, sp-$01                                    ; $6543: $f8 $ff
	jp $07e4                                         ; $6545: $c3 $e4 $07


	adc c                                            ; $6548: $89
	rrca                                             ; $6549: $0f
	sub d                                            ; $654a: $92
	ld e, $d4                                        ; $654b: $1e $d4
	inc e                                            ; $654d: $1c
	ld a, e                                          ; $654e: $7b
	and $9c                                          ; $654f: $e6 $9c
	ccf                                              ; $6551: $3f
	rst GetHLinHL                                          ; $6552: $cf
	db $fc                                           ; $6553: $fc
	ld a, e                                          ; $6554: $7b
	xor $80                                          ; $6555: $ee $80
	pop de                                           ; $6557: $d1
	ld a, $13                                        ; $6558: $3e $13
	ld a, h                                          ; $655a: $7c
	ld h, $f9                                        ; $655b: $26 $f9
	ld c, h                                          ; $655d: $4c
	rst $38                                          ; $655e: $ff
	db $e3                                           ; $655f: $e3
	db $fd                                           ; $6560: $fd
	ld c, $f4                                        ; $6561: $0e $f4
	jr c, jr_02a_6537                                ; $6563: $38 $d2

	ld h, c                                          ; $6565: $61
	adc b                                            ; $6566: $88
	rst JumpTable                                          ; $6567: $c7
	and a                                            ; $6568: $a7
	rra                                              ; $6569: $1f
	adc [hl]                                         ; $656a: $8e
	ld a, h                                          ; $656b: $7c
	ld a, b                                          ; $656c: $78
	ldh a, [rOBP0]                                   ; $656d: $f0 $48
	add a                                            ; $656f: $87
	inc sp                                           ; $6570: $33
	rrca                                             ; $6571: $0f
	rst GetHLinHL                                          ; $6572: $cf
	ccf                                              ; $6573: $3f
	ccf                                              ; $6574: $3f
	di                                               ; $6575: $f3
	ld a, a                                          ; $6576: $7f
	add sp, -$21                                     ; $6577: $e8 $df
	rst $38                                          ; $6579: $ff
	sub [hl]                                         ; $657a: $96
	rrca                                             ; $657b: $0f
	inc bc                                           ; $657c: $03
	rlca                                             ; $657d: $07
	nop                                              ; $657e: $00
	ld [$aaff], a                                    ; $657f: $ea $ff $aa
	rst $38                                          ; $6582: $ff
	ld d, d                                          ; $6583: $52
	ld l, e                                          ; $6584: $6b
	cp $99                                           ; $6585: $fe $99
	jp nc, $f2ff                                     ; $6587: $d2 $ff $f2

	ld a, a                                          ; $658a: $7f
	db $fd                                           ; $658b: $fd
	inc de                                           ; $658c: $13
	ld l, a                                          ; $658d: $6f
	cp $91                                           ; $658e: $fe $91
	reti                                             ; $6590: $d9


	scf                                              ; $6591: $37
	jp hl                                            ; $6592: $e9


	scf                                              ; $6593: $37
	ld sp, hl                                        ; $6594: $f9
	daa                                              ; $6595: $27
	ld sp, hl                                        ; $6596: $f9
	daa                                              ; $6597: $27
	inc d                                            ; $6598: $14
	ei                                               ; $6599: $fb
	inc d                                            ; $659a: $14
	ei                                               ; $659b: $fb
	jr nz, @+$01                                     ; $659c: $20 $ff

	ld [hl], a                                       ; $659e: $77
	cp $9e                                           ; $659f: $fe $9e
	ld b, c                                          ; $65a1: $41
	ld a, e                                          ; $65a2: $7b
	cp $9e                                           ; $65a3: $fe $9e
	ld b, d                                          ; $65a5: $42
	ld a, d                                          ; $65a6: $7a
	adc $9e                                          ; $65a7: $ce $9e
	ld b, l                                          ; $65a9: $45
	ld a, e                                          ; $65aa: $7b
	cp $80                                           ; $65ab: $fe $80
	sub l                                            ; $65ad: $95
	rst AddAOntoHL                                          ; $65ae: $ef
	sbc e                                            ; $65af: $9b
	db $ed                                           ; $65b0: $ed
	dec sp                                           ; $65b1: $3b
	call $8d7a                                       ; $65b2: $cd $7a $8d
	ld c, d                                          ; $65b5: $4a
	sbc l                                            ; $65b6: $9d
	dec [hl]                                         ; $65b7: $35
	ldh [$2a], a                                     ; $65b8: $e0 $2a
	ldh [$15], a                                     ; $65ba: $e0 $15
	ldh a, [rAUD3LEN]                                ; $65bc: $f0 $1b
	ldh a, [rIF]                                     ; $65be: $f0 $0f
	ld hl, sp+$0f                                    ; $65c0: $f8 $0f
	ld hl, sp-$79                                    ; $65c2: $f8 $87
	db $fc                                           ; $65c4: $fc
	add a                                            ; $65c5: $87
	db $fc                                           ; $65c6: $fc
	ld a, l                                          ; $65c7: $7d
	ld [bc], a                                       ; $65c8: $02
	cp $01                                           ; $65c9: $fe $01
	db $fd                                           ; $65cb: $fd
	sbc d                                            ; $65cc: $9a
	ld [bc], a                                       ; $65cd: $02
	ld a, [$f405]                                    ; $65ce: $fa $05 $f4
	dec bc                                           ; $65d1: $0b
	ld [hl], a                                       ; $65d2: $77
	db $fc                                           ; $65d3: $fc
	sbc b                                            ; $65d4: $98
	add sp, $17                                      ; $65d5: $e8 $17
	dec bc                                           ; $65d7: $0b
	rst $38                                          ; $65d8: $ff
	rla                                              ; $65d9: $17
	rst $38                                          ; $65da: $ff
	dec hl                                           ; $65db: $2b
	ld a, e                                          ; $65dc: $7b
	db $fc                                           ; $65dd: $fc
	add l                                            ; $65de: $85
	cpl                                              ; $65df: $2f
	rst $38                                          ; $65e0: $ff
	ld d, a                                          ; $65e1: $57
	rst $38                                          ; $65e2: $ff
	cpl                                              ; $65e3: $2f
	cp $5e                                           ; $65e4: $fe $5e
	cp $c0                                           ; $65e6: $fe $c0
	jp $c7c0                                         ; $65e8: $c3 $c0 $c7


	ret nz                                           ; $65eb: $c0

	add a                                            ; $65ec: $87
	add c                                            ; $65ed: $81
	adc [hl]                                         ; $65ee: $8e
	add c                                            ; $65ef: $81
	ld c, $01                                        ; $65f0: $0e $01
	ld c, $03                                        ; $65f2: $0e $03
	inc e                                            ; $65f4: $1c
	inc bc                                           ; $65f5: $03
	inc e                                            ; $65f6: $1c
	ld a, a                                          ; $65f7: $7f
	add b                                            ; $65f8: $80
	ld a, d                                          ; $65f9: $7a
	rlca                                             ; $65fa: $07
	ld e, e                                          ; $65fb: $5b
	cp $fc                                           ; $65fc: $fe $fc
	ld a, [hl]                                       ; $65fe: $7e
	pop bc                                           ; $65ff: $c1
	ld a, l                                          ; $6600: $7d
	add a                                            ; $6601: $87
	ld a, a                                          ; $6602: $7f
	add hl, de                                       ; $6603: $19
	sbc d                                            ; $6604: $9a
	rst $38                                          ; $6605: $ff
	add b                                            ; $6606: $80
	ld a, a                                          ; $6607: $7f
	ldh a, [rIF]                                     ; $6608: $f0 $0f
	rst FarCall                                          ; $660a: $f7

jr_02a_660b:
	ld a, [hl]                                       ; $660b: $7e
	or b                                             ; $660c: $b0
	sbc l                                            ; $660d: $9d
	db $10                                           ; $660e: $10
	ldh [$7b], a                                     ; $660f: $e0 $7b

Call_02a_6611:
	ld [$d0e0], a                                    ; $6611: $ea $e0 $d0
	db $db                                           ; $6614: $db
	ld bc, $02dd                                     ; $6615: $01 $dd $02
	db $fd                                           ; $6618: $fd
	sbc c                                            ; $6619: $99
	rst $38                                          ; $661a: $ff
	ret nz                                           ; $661b: $c0

	rst $38                                          ; $661c: $ff
	ret nz                                           ; $661d: $c0

	ld a, a                                          ; $661e: $7f
	ld b, b                                          ; $661f: $40
	ld l, a                                          ; $6620: $6f
	cp $91                                           ; $6621: $fe $91
	ld e, e                                          ; $6623: $5b
	ld h, a                                          ; $6624: $67
	ld a, [hl]                                       ; $6625: $7e
	ld a, h                                          ; $6626: $7c
	push hl                                          ; $6627: $e5
	inc a                                            ; $6628: $3c
	rst AddAOntoHL                                          ; $6629: $ef
	jr c, jr_02a_660b                                ; $662a: $38 $df

	ld a, e                                          ; $662c: $7b
	rst SubAFromDE                                          ; $662d: $df
	ld a, h                                          ; $662e: $7c
	rst SubAFromDE                                          ; $662f: $df
	ld [hl], b                                       ; $6630: $70
	ld a, e                                          ; $6631: $7b
	cp $91                                           ; $6632: $fe $91
	ldh a, [$2f]                                     ; $6634: $f0 $2f
	add hl, sp                                       ; $6636: $39
	ldh a, [c]                                       ; $6637: $f2
	ld e, c                                          ; $6638: $59
	push hl                                          ; $6639: $e5
	or e                                             ; $663a: $b3
	db $eb                                           ; $663b: $eb
	ld h, $d4                                        ; $663c: $26 $d4
	ld l, h                                          ; $663e: $6c
	add sp, $58                                      ; $663f: $e8 $58
	sub b                                            ; $6641: $90
	ld a, c                                          ; $6642: $79
	and $9b                                          ; $6643: $e6 $9b
	ld h, b                                          ; $6645: $60
	ldh [$e0], a                                     ; $6646: $e0 $e0
	ret nz                                           ; $6648: $c0

	ld c, [hl]                                       ; $6649: $4e
	jr c, jr_02a_66aa                                ; $664a: $38 $5e

	ld [hl], l                                       ; $664c: $75
	adc a                                            ; $664d: $8f
	inc bc                                           ; $664e: $03
	nop                                              ; $664f: $00
	rlca                                             ; $6650: $07
	nop                                              ; $6651: $00
	rra                                              ; $6652: $1f
	nop                                              ; $6653: $00
	ldh a, [c]                                       ; $6654: $f2
	ccf                                              ; $6655: $3f
	pop af                                           ; $6656: $f1
	rra                                              ; $6657: $1f
	ld a, c                                          ; $6658: $79
	rrca                                             ; $6659: $0f
	ld a, l                                          ; $665a: $7d
	rlca                                             ; $665b: $07
	ei                                               ; $665c: $fb
	rlca                                             ; $665d: $07
	ld a, c                                          ; $665e: $79
	ld e, [hl]                                       ; $665f: $5e
	sbc d                                            ; $6660: $9a
	inc bc                                           ; $6661: $03
	rst $38                                          ; $6662: $ff
	ld bc, $27f8                                     ; $6663: $01 $f8 $27
	ld [hl], a                                       ; $6666: $77
	cp $80                                           ; $6667: $fe $80
	db $fc                                           ; $6669: $fc
	inc hl                                           ; $666a: $23
	db $ec                                           ; $666b: $ec
	inc sp                                           ; $666c: $33
	call c, $fe33                                    ; $666d: $dc $33 $fe
	ld de, $11fe                                     ; $6670: $11 $fe $11
	add h                                            ; $6673: $84
	rst $38                                          ; $6674: $ff
	add h                                            ; $6675: $84
	rst $38                                          ; $6676: $ff
	add l                                            ; $6677: $85
	cp $89                                           ; $6678: $fe $89
	cp $8b                                           ; $667a: $fe $8b
	db $fc                                           ; $667c: $fc
	adc e                                            ; $667d: $8b
	db $fc                                           ; $667e: $fc
	db $d3                                           ; $667f: $d3
	db $fc                                           ; $6680: $fc
	rst SubAFromHL                                          ; $6681: $d7
	ld hl, sp-$2d                                    ; $6682: $f8 $d3
	inc e                                            ; $6684: $1c
	db $db                                           ; $6685: $db
	inc d                                            ; $6686: $14
	sbc d                                            ; $6687: $9a
	adc b                                            ; $6688: $88
	inc d                                            ; $6689: $14
	cp d                                             ; $668a: $ba
	inc d                                            ; $668b: $14
	and d                                            ; $668c: $a2
	inc d                                            ; $668d: $14
	inc b                                            ; $668e: $04
	ld [hl-], a                                      ; $668f: $32
	inc b                                            ; $6690: $04
	ld [hl-], a                                      ; $6691: $32
	inc d                                            ; $6692: $14
	ld [hl+], a                                      ; $6693: $22
	res 6, [hl]                                      ; $6694: $cb $b6
	cpl                                              ; $6696: $2f
	jp nc, Jump_02a_4bb5                             ; $6697: $d2 $b5 $4b

	or a                                             ; $669a: $b7
	ld c, c                                          ; $669b: $49
	sbc e                                            ; $669c: $9b
	ld h, l                                          ; $669d: $65
	ld e, a                                          ; $669e: $5f
	dec h                                            ; $669f: $25
	ld [hl], a                                       ; $66a0: $77
	cp $99                                           ; $66a1: $fe $99
	ret nc                                           ; $66a3: $d0

	cpl                                              ; $66a4: $2f
	and c                                            ; $66a5: $a1
	ld e, a                                          ; $66a6: $5f
	ld d, d                                          ; $66a7: $52
	xor a                                            ; $66a8: $af
	ld [hl], l                                       ; $66a9: $75

jr_02a_66aa:
	adc h                                            ; $66aa: $8c
	ld a, l                                          ; $66ab: $7d
	sub h                                            ; $66ac: $94
	sub h                                            ; $66ad: $94
	ld a, [bc]                                       ; $66ae: $0a
	rst $38                                          ; $66af: $ff
	dec d                                            ; $66b0: $15
	rst $38                                          ; $66b1: $ff
	xor [hl]                                         ; $66b2: $ae
	db $fc                                           ; $66b3: $fc
	ld e, h                                          ; $66b4: $5c
	db $fc                                           ; $66b5: $fc
	cp h                                             ; $66b6: $bc
	db $fc                                           ; $66b7: $fc
	ld a, h                                          ; $66b8: $7c
	sbc $f8                                          ; $66b9: $de $f8
	ld a, [hl]                                       ; $66bb: $7e
	ld b, h                                          ; $66bc: $44
	ld [hl], l                                       ; $66bd: $75
	adc h                                            ; $66be: $8c
	sbc e                                            ; $66bf: $9b
	rlca                                             ; $66c0: $07
	jr c, jr_02a_66ca                                ; $66c1: $38 $07

	jr c, jr_02a_673a                                ; $66c3: $38 $75

	adc h                                            ; $66c5: $8c
	sbc [hl]                                         ; $66c6: $9e
	adc a                                            ; $66c7: $8f
	ld [hl], c                                       ; $66c8: $71
	adc d                                            ; $66c9: $8a

jr_02a_66ca:
	ld a, l                                          ; $66ca: $7d
	adc [hl]                                         ; $66cb: $8e
	ld c, [hl]                                       ; $66cc: $4e
	jp nz, $fe7f                                     ; $66cd: $c2 $7f $fe

	ld a, [hl]                                       ; $66d0: $7e
	add d                                            ; $66d1: $82
	ld c, d                                          ; $66d2: $4a
	or b                                             ; $66d3: $b0
	ld a, a                                          ; $66d4: $7f
	ld de, $f37d                                     ; $66d5: $11 $7d $f3
	sbc [hl]                                         ; $66d8: $9e
	rlca                                             ; $66d9: $07
	ld e, a                                          ; $66da: $5f
	ld [$ba6a], a                                    ; $66db: $ea $6a $ba
	ld a, e                                          ; $66de: $7b
	ld [$a47e], a                                    ; $66df: $ea $7e $a4
	ld [hl], a                                       ; $66e2: $77
	ld [$a452], a                                    ; $66e3: $ea $52 $a4
	ld a, e                                          ; $66e6: $7b
	ld [$4c70], a                                    ; $66e7: $ea $70 $4c

jr_02a_66ea:
	sbc h                                            ; $66ea: $9c
	rlca                                             ; $66eb: $07
	ld [$7b0f], sp                                   ; $66ec: $08 $0f $7b
	ld hl, $ea73                                     ; $66ef: $21 $73 $ea
	rst SubAFromDE                                          ; $66f2: $df
	rrca                                             ; $66f3: $0f
	sbc e                                            ; $66f4: $9b
	ldh a, [c]                                       ; $66f5: $f2
	db $fd                                           ; $66f6: $fd
	ld bc, $77fe                                     ; $66f7: $01 $fe $77
	push bc                                          ; $66fa: $c5
	ld a, [hl]                                       ; $66fb: $7e
	ld [hl], d                                       ; $66fc: $72
	add [hl]                                         ; $66fd: $86
	db $10                                           ; $66fe: $10
	rrca                                             ; $66ff: $0f
	inc b                                            ; $6700: $04
	inc bc                                           ; $6701: $03
	ret nc                                           ; $6702: $d0

	ldh [$80], a                                     ; $6703: $e0 $80
	add b                                            ; $6705: $80
	ld b, b                                          ; $6706: $40
	ret nz                                           ; $6707: $c0

	and b                                            ; $6708: $a0
	ld h, b                                          ; $6709: $60
	and b                                            ; $670a: $a0
	ld h, b                                          ; $670b: $60
	ld d, b                                          ; $670c: $50
	or b                                             ; $670d: $b0
	ld d, b                                          ; $670e: $50
	or b                                             ; $670f: $b0
	jr z, jr_02a_66ea                                ; $6710: $28 $d8

	rla                                              ; $6712: $17
	dec e                                            ; $6713: $1d
	rra                                              ; $6714: $1f
	rrca                                             ; $6715: $0f
	rlca                                             ; $6716: $07
	sbc $03                                          ; $6717: $de $03
	ld a, h                                          ; $6719: $7c
	inc hl                                           ; $671a: $23
	ld a, e                                          ; $671b: $7b
	db $fd                                           ; $671c: $fd
	sbc d                                            ; $671d: $9a
	ld [bc], a                                       ; $671e: $02
	rlca                                             ; $671f: $07
	ld [bc], a                                       ; $6720: $02
	ld b, b                                          ; $6721: $40
	ret nz                                           ; $6722: $c0

	sbc $80                                          ; $6723: $de $80
	sbc b                                            ; $6725: $98
	nop                                              ; $6726: $00
	jr c, jr_02a_6729                                ; $6727: $38 $00

jr_02a_6729:
	ld l, h                                          ; $6729: $6c

jr_02a_672a:
	jr jr_02a_672a                                   ; $672a: $18 $fe

	ld [$fe77], sp                                   ; $672c: $08 $77 $fe
	ld h, [hl]                                       ; $672f: $66
	jp z, $b17f                                      ; $6730: $ca $7f $b1

	halt                                             ; $6733: $76
	ret nc                                           ; $6734: $d0

	ld a, a                                          ; $6735: $7f
	cp $7f                                           ; $6736: $fe $7f
	sbc a                                            ; $6738: $9f
	ld a, h                                          ; $6739: $7c

jr_02a_673a:
	xor d                                            ; $673a: $aa
	ld d, e                                          ; $673b: $53
	ld e, [hl]                                       ; $673c: $5e
	ld a, a                                          ; $673d: $7f
	and e                                            ; $673e: $a3
	ld d, e                                          ; $673f: $53
	ld c, [hl]                                       ; $6740: $4e
	sbc c                                            ; $6741: $99
	ld a, [hl]                                       ; $6742: $7e
	sub c                                            ; $6743: $91
	or $99                                           ; $6744: $f6 $99
	rst AddAOntoHL                                          ; $6746: $ef
	sbc b                                            ; $6747: $98
	ld [hl], a                                       ; $6748: $77
	cp $9c                                           ; $6749: $fe $9c
	ld a, [$f68d]                                    ; $674b: $fa $8d $f6
	ld a, e                                          ; $674e: $7b
	cp $96                                           ; $674f: $fe $96
	ld d, [hl]                                       ; $6751: $56
	ld hl, sp+$66                                    ; $6752: $f8 $66
	ld hl, sp+$6e                                    ; $6754: $f8 $6e
	ldh a, [$6e]                                     ; $6756: $f0 $6e
	ldh a, [$6c]                                     ; $6758: $f0 $6c
	ld a, e                                          ; $675a: $7b
	cp $8e                                           ; $675b: $fe $8e
	ld c, l                                          ; $675d: $4d
	ldh a, [$5b]                                     ; $675e: $f0 $5b
	ldh [rAUD1ENV], a                                ; $6760: $e0 $12
	jr nz, jr_02a_67b4                               ; $6762: $20 $50

	jr nz, jr_02a_6778                               ; $6764: $20 $12

	ld h, b                                          ; $6766: $60
	inc d                                            ; $6767: $14
	ld h, d                                          ; $6768: $62
	sub h                                            ; $6769: $94
	ld h, d                                          ; $676a: $62
	rla                                              ; $676b: $17
	ldh [c], a                                       ; $676c: $e2
	ld d, a                                          ; $676d: $57
	ld a, e                                          ; $676e: $7b
	cp $8e                                           ; $676f: $fe $8e
	ld a, a                                          ; $6771: $7f
	dec h                                            ; $6772: $25
	ld a, [hl]                                       ; $6773: $7e
	dec hl                                           ; $6774: $2b
	cp $2b                                           ; $6775: $fe $2b
	rst $38                                          ; $6777: $ff

jr_02a_6778:
	ld c, e                                          ; $6778: $4b
	cp $57                                           ; $6779: $fe $57
	db $fd                                           ; $677b: $fd
	ld d, a                                          ; $677c: $57
	ld a, [$f56f]                                    ; $677d: $fa $6f $f5
	ld a, a                                          ; $6780: $7f
	dec hl                                           ; $6781: $2b
	ld a, c                                          ; $6782: $79
	sbc b                                            ; $6783: $98
	sbc [hl]                                         ; $6784: $9e
	xor e                                            ; $6785: $ab
	ld a, e                                          ; $6786: $7b
	db $fc                                           ; $6787: $fc
	sub a                                            ; $6788: $97
	xor a                                            ; $6789: $af
	rst $38                                          ; $678a: $ff
	ld e, a                                          ; $678b: $5f
	rst $38                                          ; $678c: $ff
	cp a                                             ; $678d: $bf
	rst $38                                          ; $678e: $ff
	ld a, a                                          ; $678f: $7f
	rst $38                                          ; $6790: $ff
	ld [hl], h                                       ; $6791: $74
	ld e, h                                          ; $6792: $5c
	ld a, c                                          ; $6793: $79
	adc h                                            ; $6794: $8c
	sbc d                                            ; $6795: $9a
	add a                                            ; $6796: $87
	add b                                            ; $6797: $80
	add a                                            ; $6798: $87
	adc b                                            ; $6799: $88
	add a                                            ; $679a: $87
	ld [hl], l                                       ; $679b: $75
	adc h                                            ; $679c: $8c
	ld [hl], h                                       ; $679d: $74
	ld e, h                                          ; $679e: $5c
	ld b, l                                          ; $679f: $45
	adc h                                            ; $67a0: $8c
	inc bc                                           ; $67a1: $03
	cp $1b                                           ; $67a2: $fe $1b
	cp $56                                           ; $67a4: $fe $56
	and h                                            ; $67a6: $a4
	ld [hl], d                                       ; $67a7: $72
	sub b                                            ; $67a8: $90
	ld [hl], d                                       ; $67a9: $72
	cp d                                             ; $67aa: $ba
	ld e, a                                          ; $67ab: $5f
	ld [$a456], a                                    ; $67ac: $ea $56 $a4
	ld [hl], a                                       ; $67af: $77
	ld [$ce7e], a                                    ; $67b0: $ea $7e $ce
	sbc d                                            ; $67b3: $9a

jr_02a_67b4:
	inc h                                            ; $67b4: $24
	inc e                                            ; $67b5: $1c
	rlca                                             ; $67b6: $07
	inc b                                            ; $67b7: $04
	ld bc, $ea63                                     ; $67b8: $01 $63 $ea
	sbc e                                            ; $67bb: $9b
	dec c                                            ; $67bc: $0d
	ld [bc], a                                       ; $67bd: $02
	ld a, l                                          ; $67be: $7d
	ld [bc], a                                       ; $67bf: $02
	ld [hl], a                                       ; $67c0: $77
	ret c                                            ; $67c1: $d8

	ld a, [hl]                                       ; $67c2: $7e
	add sp, $7e                                      ; $67c3: $e8 $7e
	db $e4                                           ; $67c5: $e4
	ld [hl], a                                       ; $67c6: $77
	ld [$ca6e], a                                    ; $67c7: $ea $6e $ca
	sub d                                            ; $67ca: $92
	xor $18                                          ; $67cb: $ee $18
	or $18                                           ; $67cd: $f6 $18
	call c, $bc30                                    ; $67cf: $dc $30 $bc
	ld [hl], b                                       ; $67d2: $70
	ld e, h                                          ; $67d3: $5c
	jr nc, jr_02a_67dd                               ; $67d4: $30 $07

	nop                                              ; $67d6: $00
	rrca                                             ; $67d7: $0f
	ld d, e                                          ; $67d8: $53
	cp $3b                                           ; $67d9: $fe $3b
	ld a, h                                          ; $67db: $7c
	ld a, a                                          ; $67dc: $7f

jr_02a_67dd:
	sub [hl]                                         ; $67dd: $96
	ld l, e                                          ; $67de: $6b
	cp $9b                                           ; $67df: $fe $9b
	cp $03                                           ; $67e1: $fe $03
	cp $03                                           ; $67e3: $fe $03
	ld a, d                                          ; $67e5: $7a
	adc $9d                                          ; $67e6: $ce $9d
	xor l                                            ; $67e8: $ad
	halt                                             ; $67e9: $76
	ld a, e                                          ; $67ea: $7b
	cp $80                                           ; $67eb: $fe $80
	ld [hl], h                                       ; $67ed: $74
	xor a                                            ; $67ee: $af
	or h                                             ; $67ef: $b4
	ld l, a                                          ; $67f0: $6f
	or h                                             ; $67f1: $b4
	ld l, a                                          ; $67f2: $6f
	and h                                            ; $67f3: $a4
	ld a, a                                          ; $67f4: $7f
	ld e, [hl]                                       ; $67f5: $5e
	pop hl                                           ; $67f6: $e1
	ld e, h                                          ; $67f7: $5c
	db $e3                                           ; $67f8: $e3
	ld e, h                                          ; $67f9: $5c
	db $e3                                           ; $67fa: $e3
	ret c                                            ; $67fb: $d8

	rst SubAFromBC                                          ; $67fc: $e7
	ret nc                                           ; $67fd: $d0

	rst AddAOntoHL                                          ; $67fe: $ef
	pop de                                           ; $67ff: $d1
	rst AddAOntoHL                                          ; $6800: $ef
	pop bc                                           ; $6801: $c1
	rst $38                                          ; $6802: $ff
	add d                                            ; $6803: $82
	rst $38                                          ; $6804: $ff
	ld e, a                                          ; $6805: $5f
	ldh [c], a                                       ; $6806: $e2
	ld e, d                                          ; $6807: $5a
	rst SubAFromBC                                          ; $6808: $e7
	sbc h                                            ; $6809: $9c
	rst SubAFromBC                                          ; $680a: $e7
	cp l                                             ; $680b: $bd
	sub e                                            ; $680c: $93
	rst JumpTable                                          ; $680d: $c7
	or l                                             ; $680e: $b5
	rst GetHLinHL                                          ; $680f: $cf
	dec sp                                           ; $6810: $3b
	rst GetHLinHL                                          ; $6811: $cf
	ld l, e                                          ; $6812: $6b
	sbc a                                            ; $6813: $9f
	ld d, a                                          ; $6814: $57
	cp a                                             ; $6815: $bf
	ld [$d5ff], a                                    ; $6816: $ea $ff $d5
	ld [hl], d                                       ; $6819: $72
	ret nc                                           ; $681a: $d0

	halt                                             ; $681b: $76
	call nc, $ffdc                                   ; $681c: $d4 $dc $ff
	db $dd                                           ; $681f: $dd
	cp $dd                                           ; $6820: $fe $dd
	db $fc                                           ; $6822: $fc
	db $db                                           ; $6823: $db
	ld hl, sp-$62                                    ; $6824: $f8 $9e
	ldh a, [$74]                                     ; $6826: $f0 $74
	ld e, h                                          ; $6828: $5c
	ld [hl], l                                       ; $6829: $75
	adc h                                            ; $682a: $8c
	sbc l                                            ; $682b: $9d
	ld c, a                                          ; $682c: $4f
	jr nc, @+$77                                     ; $682d: $30 $75

	adc d                                            ; $682f: $8a
	ld a, l                                          ; $6830: $7d
	adc [hl]                                         ; $6831: $8e
	ld [bc], a                                       ; $6832: $02
	xor $03                                          ; $6833: $ee $03
	cp $03                                           ; $6835: $fe $03
	cp $13                                           ; $6837: $fe $13
	cp $4d                                           ; $6839: $fe $4d
	ld [hl-], a                                      ; $683b: $32
	ld a, a                                          ; $683c: $7f
	cp $7e                                           ; $683d: $fe $7e
	cp d                                             ; $683f: $ba
	sbc l                                            ; $6840: $9d
	inc b                                            ; $6841: $04
	ld hl, sp+$5d                                    ; $6842: $f8 $5d
	ld [hl-], a                                      ; $6844: $32
	ld a, a                                          ; $6845: $7f
	cp $9e                                           ; $6846: $fe $9e
	inc c                                            ; $6848: $0c
	ld l, d                                          ; $6849: $6a
	adc [hl]                                         ; $684a: $8e
	ld h, a                                          ; $684b: $67
	ld [$8c75], a                                    ; $684c: $ea $75 $8c
	ld [hl], a                                       ; $684f: $77
	cp $6e                                           ; $6850: $fe $6e
	adc [hl]                                         ; $6852: $8e
	sbc l                                            ; $6853: $9d
	ld b, $f8                                        ; $6854: $06 $f8
	ld e, a                                          ; $6856: $5f
	add $7e                                          ; $6857: $c6 $7e
	adc [hl]                                         ; $6859: $8e
	ld a, [hl]                                       ; $685a: $7e
	or d                                             ; $685b: $b2
	ld a, a                                          ; $685c: $7f
	ld [$cc76], a                                    ; $685d: $ea $76 $cc
	ld [hl], a                                       ; $6860: $77
	cp $9d                                           ; $6861: $fe $9d
	db $fc                                           ; $6863: $fc
	rlca                                             ; $6864: $07
	ld [hl], a                                       ; $6865: $77
	cp $82                                           ; $6866: $fe $82
	db $fd                                           ; $6868: $fd
	rlca                                             ; $6869: $07
	and h                                            ; $686a: $a4
	ld a, a                                          ; $686b: $7f
	and h                                            ; $686c: $a4
	ld a, a                                          ; $686d: $7f
	ret z                                            ; $686e: $c8

	ld a, a                                          ; $686f: $7f
	ld c, b                                          ; $6870: $48
	rst $38                                          ; $6871: $ff
	ld c, b                                          ; $6872: $48
	rst $38                                          ; $6873: $ff
	ld d, c                                          ; $6874: $51
	rst $38                                          ; $6875: $ff
	sub e                                            ; $6876: $93
	rst $38                                          ; $6877: $ff
	sub a                                            ; $6878: $97
	rst $38                                          ; $6879: $ff
	add [hl]                                         ; $687a: $86
	rst $38                                          ; $687b: $ff
	adc h                                            ; $687c: $8c
	rst $38                                          ; $687d: $ff
	sbc b                                            ; $687e: $98
	rst $38                                          ; $687f: $ff
	db $e3                                           ; $6880: $e3
	rst $38                                          ; $6881: $ff
	rst JumpTable                                          ; $6882: $c7
	rst $38                                          ; $6883: $ff
	sbc a                                            ; $6884: $9f
	db $db                                           ; $6885: $db
	rst $38                                          ; $6886: $ff
	sbc [hl]                                         ; $6887: $9e
	ccf                                              ; $6888: $3f
	ld h, [hl]                                       ; $6889: $66
	rst SubAFromHL                                          ; $688a: $d7
	set 7, a                                         ; $688b: $cb $ff
	ld [hl], h                                       ; $688d: $74
	ld e, h                                          ; $688e: $5c
	ld a, c                                          ; $688f: $79
	adc h                                            ; $6890: $8c
	sbc e                                            ; $6891: $9b
	db $e3                                           ; $6892: $e3
	ldh [$c3], a                                     ; $6893: $e0 $c3
	call nz, $8a79                                   ; $6895: $c4 $79 $8a
	ld a, l                                          ; $6898: $7d
	adc h                                            ; $6899: $8c
	ld [hl], h                                       ; $689a: $74
	ld e, h                                          ; $689b: $5c
	ld l, l                                          ; $689c: $6d
	adc h                                            ; $689d: $8c
	ld bc, $038a                                     ; $689e: $01 $8a $03
	cp $03                                           ; $68a1: $fe $03
	cp $03                                           ; $68a3: $fe $03
	cp $03                                           ; $68a5: $fe $03
	cp $43                                           ; $68a7: $fe $43
	cp $56                                           ; $68a9: $fe $56
	and h                                            ; $68ab: $a4
	ld [hl], a                                       ; $68ac: $77
	cp $56                                           ; $68ad: $fe $56
	and h                                            ; $68af: $a4
	ld [hl], a                                       ; $68b0: $77
	ld [$3f96], a                                    ; $68b1: $ea $96 $3f
	rlca                                             ; $68b4: $07
	ld c, $07                                        ; $68b5: $0e $07
	inc bc                                           ; $68b7: $03
	ld bc, $0080                                     ; $68b8: $01 $80 $00
	nop                                              ; $68bb: $00
	ld l, e                                          ; $68bc: $6b
	ld [$2f9e], a                                    ; $68bd: $ea $9e $2f
	ld [hl], d                                       ; $68c0: $72
	pop hl                                           ; $68c1: $e1
	sbc d                                            ; $68c2: $9a
	ccf                                              ; $68c3: $3f
	ld a, a                                          ; $68c4: $7f
	rlca                                             ; $68c5: $07
	rrca                                             ; $68c6: $0f
	ld bc, $ea7b                                     ; $68c7: $01 $7b $ea
	ld a, a                                          ; $68ca: $7f
	call nc, $ffd5                                   ; $68cb: $d4 $d5 $ff
	rst SubAFromDE                                          ; $68ce: $df
	ccf                                              ; $68cf: $3f
	ld a, a                                          ; $68d0: $7f
	ld [$ffca], a                                    ; $68d1: $ea $ca $ff
	ld h, c                                          ; $68d4: $61
	adc d                                            ; $68d5: $8a
	ld [hl], h                                       ; $68d6: $74
	ld e, h                                          ; $68d7: $5c
	ld h, l                                          ; $68d8: $65
	adc h                                            ; $68d9: $8c
	sbc e                                            ; $68da: $9b
	ld b, a                                          ; $68db: $47
	jr c, @+$11                                      ; $68dc: $38 $0f

	ld [hl], b                                       ; $68de: $70
	inc bc                                           ; $68df: $03
	ld e, [hl]                                       ; $68e0: $5e
	inc bc                                           ; $68e1: $03
	cp $03                                           ; $68e2: $fe $03
	cp $03                                           ; $68e4: $fe $03
	cp $03                                           ; $68e6: $fe $03
	cp $03                                           ; $68e8: $fe $03
	cp $1f                                           ; $68ea: $fe $1f
	cp $56                                           ; $68ec: $fe $56
	and h                                            ; $68ee: $a4
	ld [hl], a                                       ; $68ef: $77
	cp $7d                                           ; $68f0: $fe $7d
	ld e, [hl]                                       ; $68f2: $5e
	ld c, [hl]                                       ; $68f3: $4e
	adc [hl]                                         ; $68f4: $8e
	sbc [hl]                                         ; $68f5: $9e
	ld [bc], a                                       ; $68f6: $02
	ld [hl], d                                       ; $68f7: $72
	cp d                                             ; $68f8: $ba
	ld e, d                                          ; $68f9: $5a
	adc [hl]                                         ; $68fa: $8e
	ld a, [hl]                                       ; $68fb: $7e
	and b                                            ; $68fc: $a0
	sbc h                                            ; $68fd: $9c
	ccf                                              ; $68fe: $3f
	rrca                                             ; $68ff: $0f
	rrca                                             ; $6900: $0f
	halt                                             ; $6901: $76
	adc [hl]                                         ; $6902: $8e
	ld l, a                                          ; $6903: $6f
	ld [$5c74], a                                    ; $6904: $ea $74 $5c
	ld [hl], l                                       ; $6907: $75
	adc h                                            ; $6908: $8c
	sub a                                            ; $6909: $97
	ld h, b                                          ; $690a: $60
	ld hl, $0102                                     ; $690b: $21 $02 $01
	nop                                              ; $690e: $00
	inc bc                                           ; $690f: $03
	add h                                            ; $6910: $84
	inc bc                                           ; $6911: $03
	ld [hl], h                                       ; $6912: $74
	ld e, h                                          ; $6913: $5c
	ld l, l                                          ; $6914: $6d
	adc h                                            ; $6915: $8c
	ld l, l                                          ; $6916: $6d
	adc d                                            ; $6917: $8a
	inc bc                                           ; $6918: $03
	ld a, [hl]                                       ; $6919: $7e
	dec hl                                           ; $691a: $2b
	cp $97                                           ; $691b: $fe $97
	pop af                                           ; $691d: $f1
	nop                                              ; $691e: $00
	ldh [$0e], a                                     ; $691f: $e0 $0e
	ret nz                                           ; $6921: $c0

	ld de, $17c0                                     ; $6922: $11 $c0 $17
	ld h, a                                          ; $6925: $67
	ldh a, [$97]                                     ; $6926: $f0 $97
	db $ec                                           ; $6928: $ec
	nop                                              ; $6929: $00
	ld b, b                                          ; $692a: $40
	adc e                                            ; $692b: $8b
	ld bc, $206a                                     ; $692c: $01 $6a $20
	ld c, h                                          ; $692f: $4c
	ld h, a                                          ; $6930: $67
	ldh a, [$97]                                     ; $6931: $f0 $97
	rst SubAFromBC                                          ; $6933: $e7
	nop                                              ; $6934: $00
	ld bc, $095a                                     ; $6935: $01 $5a $09
	ld d, d                                          ; $6938: $52
	nop                                              ; $6939: $00
	ld h, d                                          ; $693a: $62
	ld h, a                                          ; $693b: $67
	ldh a, [$97]                                     ; $693c: $f0 $97
	cp l                                             ; $693e: $bd
	nop                                              ; $693f: $00
	jr jr_02a_6963                                   ; $6940: $18 $21

	jr @+$27                                         ; $6942: $18 $25

	inc e                                            ; $6944: $1c
	and c                                            ; $6945: $a1
	ld h, a                                          ; $6946: $67
	ldh a, [$97]                                     ; $6947: $f0 $97
	sbc h                                            ; $6949: $9c
	nop                                              ; $694a: $00
	nop                                              ; $694b: $00
	ld l, e                                          ; $694c: $6b
	ld hl, $004a                                     ; $694d: $21 $4a $00
	adc h                                            ; $6950: $8c
	ld c, a                                          ; $6951: $4f
	ret nc                                           ; $6952: $d0

	sbc [hl]                                         ; $6953: $9e
	ld bc, $d063                                     ; $6954: $01 $63 $d0
	sbc e                                            ; $6957: $9b
	ld l, h                                          ; $6958: $6c
	nop                                              ; $6959: $00
	jr nz, jr_02a_69a7                               ; $695a: $20 $4b

	ld a, e                                          ; $695c: $7b
	xor $9e                                          ; $695d: $ee $9e
	ld [de], a                                       ; $695f: $12
	ld h, a                                          ; $6960: $67
	ldh a, [$9b]                                     ; $6961: $f0 $9b

jr_02a_6963:
	db $db                                           ; $6963: $db
	nop                                              ; $6964: $00
	ld bc, $7b4a                                     ; $6965: $01 $4a $7b
	cp $9e                                           ; $6968: $fe $9e
	ld d, d                                          ; $696a: $52
	ld h, a                                          ; $696b: $67
	ldh a, [$97]                                     ; $696c: $f0 $97
	sub a                                            ; $696e: $97
	nop                                              ; $696f: $00
	add b                                            ; $6970: $80
	ld [de], a                                       ; $6971: $12
	nop                                              ; $6972: $00
	ld d, b                                          ; $6973: $50
	nop                                              ; $6974: $00
	ld d, l                                          ; $6975: $55
	ld h, a                                          ; $6976: $67

jr_02a_6977:
	ldh a, [$97]                                     ; $6977: $f0 $97
	ld e, $40                                        ; $6979: $1e $40
	ld c, $50                                        ; $697b: $0e $50
	inc c                                            ; $697d: $0c
	ld d, c                                          ; $697e: $51
	inc c                                            ; $697f: $0c
	ld d, c                                          ; $6980: $51
	ld h, a                                          ; $6981: $67
	ldh a, [$9d]                                     ; $6982: $f0 $9d
	ld e, l                                          ; $6984: $5d
	nop                                              ; $6985: $00
	ld [hl], a                                       ; $6986: $77
	ldh a, [c]                                       ; $6987: $f2
	ld e, a                                          ; $6988: $5f
	ldh a, [$97]                                     ; $6989: $f0 $97
	db $e3                                           ; $698b: $e3
	nop                                              ; $698c: $00

jr_02a_698d:
	ldh [$0d], a                                     ; $698d: $e0 $0d
	db $e4                                           ; $698f: $e4
	add hl, bc                                       ; $6990: $09
	ldh [$03], a                                     ; $6991: $e0 $03
	ld h, a                                          ; $6993: $67
	ldh a, [$98]                                     ; $6994: $f0 $98
	ld h, [hl]                                       ; $6996: $66
	nop                                              ; $6997: $00
	nop                                              ; $6998: $00
	ld e, d                                          ; $6999: $5a
	ld [$0056], sp                                   ; $699a: $08 $56 $00
	ld h, e                                          ; $699d: $63
	or b                                             ; $699e: $b0
	sub l                                            ; $699f: $95
	ret nc                                           ; $69a0: $d0

	ld bc, $9b40                                     ; $69a1: $01 $40 $9b
	ld c, c                                          ; $69a4: $49
	sub d                                            ; $69a5: $92
	add hl, bc                                       ; $69a6: $09

jr_02a_69a7:
	ld [de], a                                       ; $69a7: $12
	add b                                            ; $69a8: $80
	ld a, a                                          ; $69a9: $7f
	ld l, [hl]                                       ; $69aa: $6e
	and h                                            ; $69ab: $a4
	ld a, a                                          ; $69ac: $7f
	ld h, b                                          ; $69ad: $60
	sbc c                                            ; $69ae: $99
	inc b                                            ; $69af: $04

jr_02a_69b0:
	ld l, c                                          ; $69b0: $69
	inc h                                            ; $69b1: $24
	ld e, c                                          ; $69b2: $59
	inc e                                            ; $69b3: $1c
	add b                                            ; $69b4: $80
	ld a, e                                          ; $69b5: $7b
	ld h, a                                          ; $69b6: $67
	sub d                                            ; $69b7: $92
	rst $38                                          ; $69b8: $ff
	ld bc, $c1fe                                     ; $69b9: $01 $fe $c1
	ld a, $63                                        ; $69bc: $3e $63
	nop                                              ; $69be: $00
	nop                                              ; $69bf: $00
	xor [hl]                                         ; $69c0: $ae
	add [hl]                                         ; $69c1: $86
	jr z, jr_02a_69c4                                ; $69c2: $28 $00

jr_02a_69c4:
	ld h, e                                          ; $69c4: $63
	ld h, a                                          ; $69c5: $67
	ret nc                                           ; $69c6: $d0

	sub a                                            ; $69c7: $97
	ld sp, $0000                                     ; $69c8: $31 $00 $00
	rst SubAFromHL                                          ; $69cb: $d7
	ld b, e                                          ; $69cc: $43
	or h                                             ; $69cd: $b4
	db $10                                           ; $69ce: $10
	ld hl, $f067                                     ; $69cf: $21 $67 $f0
	ld a, a                                          ; $69d2: $7f
	add $7f                                          ; $69d3: $c6 $7f
	ld [bc], a                                       ; $69d5: $02
	ld a, e                                          ; $69d6: $7b
	jr nc, jr_02a_6977                               ; $69d7: $30 $9e

	ld a, [de]                                       ; $69d9: $1a
	ld h, b                                          ; $69da: $60
	add sp, -$68                                     ; $69db: $e8 $98
	ld b, h                                          ; $69dd: $44
	nop                                              ; $69de: $00
	ld e, l                                          ; $69df: $5d
	inc c                                            ; $69e0: $0c
	ld d, c                                          ; $69e1: $51
	nop                                              ; $69e2: $00
	ld b, l                                          ; $69e3: $45
	ld h, a                                          ; $69e4: $67
	ldh a, [hDisp1_LCDC]                                     ; $69e5: $f0 $8f
	ld a, a                                          ; $69e7: $7f
	nop                                              ; $69e8: $00
	ccf                                              ; $69e9: $3f
	add b                                            ; $69ea: $80
	sbc a                                            ; $69eb: $9f
	jr nz, jr_02a_698d                               ; $69ec: $20 $9f

	jr nz, jr_02a_69b0                               ; $69ee: $20 $c0

	ld de, $0ee0                                     ; $69f0: $11 $e0 $0e
	ldh [rAUD1LEN], a                                ; $69f3: $e0 $11
	ldh a, [rIF]                                     ; $69f5: $f0 $0f
	ld h, a                                          ; $69f7: $67
	add sp, -$69                                     ; $69f8: $e8 $97
	inc h                                            ; $69fa: $24
	ld c, e                                          ; $69fb: $4b
	ld hl, $60ca                                     ; $69fc: $21 $ca $60
	adc h                                            ; $69ff: $8c
	db $e4                                           ; $6a00: $e4
	dec de                                           ; $6a01: $1b
	ld h, a                                          ; $6a02: $67
	ldh a, [$97]                                     ; $6a03: $f0 $97
	jr nz, @+$5c                                     ; $6a05: $20 $5a

	ld [$0052], sp                                   ; $6a07: $08 $52 $00
	rst SubAFromBC                                          ; $6a0a: $e7
	ld h, e                                          ; $6a0b: $63
	sbc h                                            ; $6a0c: $9c
	ld h, a                                          ; $6a0d: $67
	ldh a, [$7e]                                     ; $6a0e: $f0 $7e
	adc $97                                          ; $6a10: $ce $97
	inc c                                            ; $6a12: $0c
	ld de, $b500                                     ; $6a13: $11 $00 $b5
	sub b                                            ; $6a16: $90
	ld h, a                                          ; $6a17: $67
	di                                               ; $6a18: $f3
	inc c                                            ; $6a19: $0c
	ld l, a                                          ; $6a1a: $6f
	ldh a, [$9e]                                     ; $6a1b: $f0 $9e
	add h                                            ; $6a1d: $84
	halt                                             ; $6a1e: $76
	jp z, $9c9c                                      ; $6a1f: $ca $9c $9c

	adc h                                            ; $6a22: $8c
	ld [hl], e                                       ; $6a23: $73
	ld h, a                                          ; $6a24: $67
	ldh [$9e], a                                     ; $6a25: $e0 $9e
	ld hl, $ca76                                     ; $6a27: $21 $76 $ca
	sbc [hl]                                         ; $6a2a: $9e
	and $5f                                          ; $6a2b: $e6 $5f
	ret nc                                           ; $6a2d: $d0

	ld [hl], a                                       ; $6a2e: $77
	ld a, d                                          ; $6a2f: $7a
	ld a, [hl]                                       ; $6a30: $7e
	ld a, d                                          ; $6a31: $7a
	sbc l                                            ; $6a32: $9d
	inc h                                            ; $6a33: $24
	db $db                                           ; $6a34: $db
	ld h, e                                          ; $6a35: $63
	ld a, b                                          ; $6a36: $78
	ld a, a                                          ; $6a37: $7f
	or d                                             ; $6a38: $b2
	ld a, a                                          ; $6a39: $7f
	xor [hl]                                         ; $6a3a: $ae
	sbc h                                            ; $6a3b: $9c
	jp nc, $b748                                     ; $6a3c: $d2 $48 $b7

	ld h, e                                          ; $6a3f: $63
	ldh [$98], a                                     ; $6a40: $e0 $98
	ld d, $03                                        ; $6a42: $16 $03
	call nc, $9443                                   ; $6a44: $d4 $43 $94
	ld b, e                                          ; $6a47: $43
	cp h                                             ; $6a48: $bc
	ld h, a                                          ; $6a49: $67
	ldh a, [$97]                                     ; $6a4a: $f0 $97
	inc c                                            ; $6a4c: $0c
	ld d, b                                          ; $6a4d: $50
	ld [$0953], sp                                   ; $6a4e: $08 $53 $09
	ld d, d                                          ; $6a51: $52
	add hl, bc                                       ; $6a52: $09
	or $63                                           ; $6a53: $f6 $63
	ldh a, [$7a]                                     ; $6a55: $f0 $7a
	call z, Call_02a_447b                            ; $6a57: $cc $7b $44
	rst SubAFromDE                                          ; $6a5a: $df
	rst $38                                          ; $6a5b: $ff
	ld l, e                                          ; $6a5c: $6b
	ldh a, [rPCM12]                                  ; $6a5d: $f0 $76
	jp z, $249d                                      ; $6a5f: $ca $9d $24

	ld c, c                                          ; $6a62: $49
	ld e, e                                          ; $6a63: $5b
	or b                                             ; $6a64: $b0
	ld [hl], a                                       ; $6a65: $77
	ld h, b                                          ; $6a66: $60
	sbc h                                            ; $6a67: $9c
	ld h, [hl]                                       ; $6a68: $66
	ld [hl+], a                                      ; $6a69: $22
	db $dd                                           ; $6a6a: $dd
	ld h, e                                          ; $6a6b: $63
	ld [$d29c], sp                                   ; $6a6c: $08 $9c $d2
	ld c, c                                          ; $6a6f: $49
	sub d                                            ; $6a70: $92
	ld a, e                                          ; $6a71: $7b
	cp $9e                                           ; $6a72: $fe $9e
	or [hl]                                          ; $6a74: $b6
	ld h, a                                          ; $6a75: $67
	ldh a, [$99]                                     ; $6a76: $f0 $99
	add h                                            ; $6a78: $84
	ld l, c                                          ; $6a79: $69
	inc h                                            ; $6a7a: $24
	ld c, c                                          ; $6a7b: $49
	inc b                                            ; $6a7c: $04
	sbc c                                            ; $6a7d: $99
	ld e, a                                          ; $6a7e: $5f
	ld h, b                                          ; $6a7f: $60
	sbc [hl]                                         ; $6a80: $9e
	ld bc, $ca7a                                     ; $6a81: $01 $7a $ca
	sbc e                                            ; $6a84: $9b
	add b                                            ; $6a85: $80
	inc hl                                           ; $6a86: $23
	add c                                            ; $6a87: $81
	ld a, [hl]                                       ; $6a88: $7e
	ld h, e                                          ; $6a89: $63
	ret nz                                           ; $6a8a: $c0

	ld a, [hl]                                       ; $6a8b: $7e
	jp z, $949a                                      ; $6a8c: $ca $9a $94

	nop                                              ; $6a8f: $00
	ld sp, $ef10                                     ; $6a90: $31 $10 $ef
	ld h, e                                          ; $6a93: $63
	ldh a, [$79]                                     ; $6a94: $f0 $79
	call z, $249d                                    ; $6a96: $cc $9d $24
	ld c, b                                          ; $6a99: $48
	ld e, e                                          ; $6a9a: $5b
	and b                                            ; $6a9b: $a0
	ld a, [hl]                                       ; $6a9c: $7e
	jp z, $d19a                                      ; $6a9d: $ca $9a $d1

	ld b, b                                          ; $6aa0: $40
	add h                                            ; $6aa1: $84
	ld b, b                                          ; $6aa2: $40
	cp a                                             ; $6aa3: $bf
	ld h, a                                          ; $6aa4: $67
	ldh a, [rPCM12]                                  ; $6aa5: $f0 $76
	call z, $079b                                    ; $6aa7: $cc $9b $07
	ld l, b                                          ; $6aaa: $68
	daa                                              ; $6aab: $27
	ret c                                            ; $6aac: $d8

	ld h, a                                          ; $6aad: $67
	ldh a, [$33]                                     ; $6aae: $f0 $33
	nop                                              ; $6ab0: $00
	rst $38                                          ; $6ab1: $ff
	sbc b                                            ; $6ab2: $98
	ld bc, $1111                                     ; $6ab3: $01 $11 $11
	stop                                             ; $6ab6: $10 $00
	rlca                                             ; $6ab8: $07
	ld [hl+], a                                      ; $6ab9: $22
	cp $7b                                           ; $6aba: $fe $7b
	or $9b                                           ; $6abc: $f6 $9b
	ld de, $0700                                     ; $6abe: $11 $00 $07
	ld h, $fd                                        ; $6ac1: $26 $fd
	ld [hl], a                                       ; $6ac3: $77
	or $9e                                           ; $6ac4: $f6 $9e
	nop                                              ; $6ac6: $00
	ld [hl], a                                       ; $6ac7: $77
	or $9d                                           ; $6ac8: $f6 $9d
	dec b                                            ; $6aca: $05
	ld d, c                                          ; $6acb: $51
	ld a, e                                          ; $6acc: $7b
	or $9d                                           ; $6acd: $f6 $9d
	ld b, $20                                        ; $6acf: $06 $20
	db $fd                                           ; $6ad1: $fd
	ld a, e                                          ; $6ad2: $7b
	pop hl                                           ; $6ad3: $e1
	sbc h                                            ; $6ad4: $9c
	nop                                              ; $6ad5: $00
	ld [bc], a                                       ; $6ad6: $02
	ld h, b                                          ; $6ad7: $60
	db $fc                                           ; $6ad8: $fc
	ld a, a                                          ; $6ad9: $7f
	push af                                          ; $6ada: $f5
	sbc l                                            ; $6adb: $9d
	nop                                              ; $6adc: $00
	ld h, d                                          ; $6add: $62
	ld hl, sp+$73                                    ; $6ade: $f8 $73
	db $e3                                           ; $6ae0: $e3
	push hl                                          ; $6ae1: $e5
	rra                                              ; $6ae2: $1f
	ld bc, $9ae9                                     ; $6ae3: $01 $e9 $9a
	dec bc                                           ; $6ae6: $0b
	ld b, $0e                                        ; $6ae7: $06 $0e
	rrca                                             ; $6ae9: $0f
	rra                                              ; $6aea: $1f
	ld a, e                                          ; $6aeb: $7b
	cp $e5                                           ; $6aec: $fe $e5
	sbc [hl]                                         ; $6aee: $9e
	add b                                            ; $6aef: $80
	ld a, e                                          ; $6af0: $7b
	db $fd                                           ; $6af1: $fd
	ld a, a                                          ; $6af2: $7f
	sbc $de                                          ; $6af3: $de $de
	rrca                                             ; $6af5: $0f
	sbc e                                            ; $6af6: $9b
	rlca                                             ; $6af7: $07
	rrca                                             ; $6af8: $0f
	rlca                                             ; $6af9: $07
	rlca                                             ; $6afa: $07
	ret c                                            ; $6afb: $d8

	rrca                                             ; $6afc: $0f
	ld [hl], a                                       ; $6afd: $77
	jp z, $fd7f                                      ; $6afe: $ca $7f $fd

	db $dd                                           ; $6b01: $dd
	rra                                              ; $6b02: $1f
	db $dd                                           ; $6b03: $dd
	ld a, a                                          ; $6b04: $7f
	rst SubAFromDE                                          ; $6b05: $df
	add b                                            ; $6b06: $80
	ld a, a                                          ; $6b07: $7f
	call c, $fd7f                                    ; $6b08: $dc $7f $fd
	sbc h                                            ; $6b0b: $9c
	ret nz                                           ; $6b0c: $c0

	add b                                            ; $6b0d: $80
	add b                                            ; $6b0e: $80
	ret c                                            ; $6b0f: $d8

	ret nz                                           ; $6b10: $c0

	ld a, e                                          ; $6b11: $7b
	or $7f                                           ; $6b12: $f6 $7f
	db $fd                                           ; $6b14: $fd
	ld l, e                                          ; $6b15: $6b
	cp $7f                                           ; $6b16: $fe $7f
	db $fd                                           ; $6b18: $fd
	ld [hl], e                                       ; $6b19: $73
	ret nz                                           ; $6b1a: $c0

	ld [hl], e                                       ; $6b1b: $73
	cp l                                             ; $6b1c: $bd
	reti                                             ; $6b1d: $d9


	rrca                                             ; $6b1e: $0f
	sbc [hl]                                         ; $6b1f: $9e
	ld b, $77                                        ; $6b20: $06 $77
	db $fd                                           ; $6b22: $fd

jr_02a_6b23:
	sub [hl]                                         ; $6b23: $96
	ld b, $03                                        ; $6b24: $06 $03
	ld b, $03                                        ; $6b26: $06 $03
	rlca                                             ; $6b28: $07
	inc bc                                           ; $6b29: $03
	rlca                                             ; $6b2a: $07
	rrca                                             ; $6b2b: $0f
	ld c, $cb                                        ; $6b2c: $0e $cb
	ret nz                                           ; $6b2e: $c0

	sbc h                                            ; $6b2f: $9c
	ldh [$c0], a                                     ; $6b30: $e0 $c0
	ld h, b                                          ; $6b32: $60
	ld a, e                                          ; $6b33: $7b
	cp $9b                                           ; $6b34: $fe $9b
	ld b, b                                          ; $6b36: $40
	ldh [$f0], a                                     ; $6b37: $e0 $f0
	ldh [$67], a                                     ; $6b39: $e0 $67
	ret nz                                           ; $6b3b: $c0

	push de                                          ; $6b3c: $d5
	rrca                                             ; $6b3d: $0f
	sbc d                                            ; $6b3e: $9a
	ld c, $0d                                        ; $6b3f: $0e $0d
	jr jr_02a_6b4f                                   ; $6b41: $18 $0c

	inc c                                            ; $6b43: $0c
	sbc $18                                          ; $6b44: $de $18
	sbc e                                            ; $6b46: $9b
	db $10                                           ; $6b47: $10
	jr c, jr_02a_6bc2                                ; $6b48: $38 $78

	jr nc, jr_02a_6b23                               ; $6b4a: $30 $d7

	ret nz                                           ; $6b4c: $c0

	ld e, a                                          ; $6b4d: $5f
	ld a, [hl]                                       ; $6b4e: $7e

jr_02a_6b4f:
	ld a, a                                          ; $6b4f: $7f
	jp nz, $c67f                                     ; $6b50: $c2 $7f $c6

	sbc d                                            ; $6b53: $9a
	ldh [$60], a                                     ; $6b54: $e0 $60
	jr nc, jr_02a_6bb8                               ; $6b56: $30 $60

	ld h, b                                          ; $6b58: $60
	sbc $30                                          ; $6b59: $de $30
	inc sp                                           ; $6b5b: $33
	ret nz                                           ; $6b5c: $c0

	sub h                                            ; $6b5d: $94
	ld c, $0c                                        ; $6b5e: $0e $0c
	ld c, $1e                                        ; $6b60: $0e $1e
	inc c                                            ; $6b62: $0c
	inc c                                            ; $6b63: $0c
	inc e                                            ; $6b64: $1c
	ld [$3c1c], sp                                   ; $6b65: $08 $1c $3c
	jr jr_02a_6bc9                                   ; $6b68: $18 $5f

	jp nz, $fe77                                     ; $6b6a: $c2 $77 $fe

	ld l, a                                          ; $6b6d: $6f
	jp nz, $fd7f                                     ; $6b6e: $c2 $7f $fd

	ld a, a                                          ; $6b71: $7f
	jp nz, Jump_02a_709a                             ; $6b72: $c2 $9a $70

	ld h, b                                          ; $6b75: $60
	jr nc, jr_02a_6be8                               ; $6b76: $30 $70

	ld [hl], b                                       ; $6b78: $70
	dec hl                                           ; $6b79: $2b
	ret nz                                           ; $6b7a: $c0

	ld a, e                                          ; $6b7b: $7b
	cp a                                             ; $6b7c: $bf
	ld a, e                                          ; $6b7d: $7b
	cp [hl]                                          ; $6b7e: $be
	ld a, a                                          ; $6b7f: $7f
	db $fd                                           ; $6b80: $fd
	ld a, a                                          ; $6b81: $7f
	cp h                                             ; $6b82: $bc
	sbc l                                            ; $6b83: $9d
	ld l, $1c                                        ; $6b84: $2e $1c
	ld c, a                                          ; $6b86: $4f
	ld a, [bc]                                       ; $6b87: $0a
	ld [hl], a                                       ; $6b88: $77
	cp [hl]                                          ; $6b89: $be
	ld [hl], a                                       ; $6b8a: $77
	ret nz                                           ; $6b8b: $c0

	sbc [hl]                                         ; $6b8c: $9e
	ldh a, [$7b]                                     ; $6b8d: $f0 $7b
	jp nz, $30dd                                     ; $6b8f: $c2 $dd $30

	rst SubAFromDE                                          ; $6b92: $df
	ld h, b                                          ; $6b93: $60
	ld d, a                                          ; $6b94: $57
	ret nz                                           ; $6b95: $c0

	ld a, d                                          ; $6b96: $7a
	db $fc                                           ; $6b97: $fc
	sbc $07                                          ; $6b98: $de $07
	ld [hl], a                                       ; $6b9a: $77
	ld [$fb73], sp                                   ; $6b9b: $08 $73 $fb
	rst SubAFromDE                                          ; $6b9e: $df
	inc bc                                           ; $6b9f: $03
	ld a, d                                          ; $6ba0: $7a
	xor b                                            ; $6ba1: $a8
	ld e, a                                          ; $6ba2: $5f
	jp nz, $c37b                                     ; $6ba3: $c2 $7b $c3

	ld l, [hl]                                       ; $6ba6: $6e
	cp d                                             ; $6ba7: $ba
	sbc c                                            ; $6ba8: $99
	ldh [rSVBK], a                                   ; $6ba9: $e0 $70
	ldh [$b0], a                                     ; $6bab: $e0 $b0
	ld [hl], b                                       ; $6bad: $70
	ld a, b                                          ; $6bae: $78
	ld a, e                                          ; $6baf: $7b
	jp $e09b                                         ; $6bb0: $c3 $9b $e0


	ld b, b                                          ; $6bb3: $40
	ret nz                                           ; $6bb4: $c0

	nop                                              ; $6bb5: $00
	ld e, [hl]                                       ; $6bb6: $5e
	ret nz                                           ; $6bb7: $c0

jr_02a_6bb8:
	ld [hl], a                                       ; $6bb8: $77
	jp nz, $0b9e                                     ; $6bb9: $c2 $9e $0b

	ld [hl], e                                       ; $6bbc: $73
	call nz, $019c                                   ; $6bbd: $c4 $9c $01
	inc bc                                           ; $6bc0: $03
	inc bc                                           ; $6bc1: $03

jr_02a_6bc2:
	call c, Call_02a_7f01                            ; $6bc2: $dc $01 $7f
	ld a, [$059d]                                    ; $6bc5: $fa $9d $05
	inc bc                                           ; $6bc8: $03

jr_02a_6bc9:
	ld h, a                                          ; $6bc9: $67
	ret nz                                           ; $6bca: $c0

	halt                                             ; $6bcb: $76
	ld a, d                                          ; $6bcc: $7a
	halt                                             ; $6bcd: $76
	ld d, b                                          ; $6bce: $50
	ld e, a                                          ; $6bcf: $5f
	ld a, h                                          ; $6bd0: $7c
	ld [hl], a                                       ; $6bd1: $77
	ei                                               ; $6bd2: $fb
	ld a, a                                          ; $6bd3: $7f
	ldh a, [c]                                       ; $6bd4: $f2
	ld e, a                                          ; $6bd5: $5f
	add e                                            ; $6bd6: $83
	ld e, a                                          ; $6bd7: $5f
	add [hl]                                         ; $6bd8: $86
	ld a, e                                          ; $6bd9: $7b
	pop bc                                           ; $6bda: $c1
	ld l, e                                          ; $6bdb: $6b
	cp [hl]                                          ; $6bdc: $be
	ld b, a                                          ; $6bdd: $47
	ret nz                                           ; $6bde: $c0

	ld [hl], a                                       ; $6bdf: $77
	cp [hl]                                          ; $6be0: $be
	ld a, e                                          ; $6be1: $7b
	or $da                                           ; $6be2: $f6 $da
	add b                                            ; $6be4: $80
	ld [hl], a                                       ; $6be5: $77
	ld l, $36                                        ; $6be6: $2e $36

jr_02a_6be8:
	nop                                              ; $6be8: $00
	ld a, a                                          ; $6be9: $7f
	db $fd                                           ; $6bea: $fd
	db $dd                                           ; $6beb: $dd
	ld a, a                                          ; $6bec: $7f
	ld h, e                                          ; $6bed: $63
	ldh a, [c]                                       ; $6bee: $f2
	ld e, e                                          ; $6bef: $5b
	ldh [$dd], a                                     ; $6bf0: $e0 $dd
	ccf                                              ; $6bf2: $3f
	ld a, c                                          ; $6bf3: $79
	db $e4                                           ; $6bf4: $e4
	sub $0f                                          ; $6bf5: $d6 $0f
	ld d, a                                          ; $6bf7: $57
	ldh [$df], a                                     ; $6bf8: $e0 $df
	ccf                                              ; $6bfa: $3f
	sbc [hl]                                         ; $6bfb: $9e
	rra                                              ; $6bfc: $1f
	ld a, e                                          ; $6bfd: $7b
	db $fd                                           ; $6bfe: $fd
	ld c, a                                          ; $6bff: $4f
	ldh [$65], a                                     ; $6c00: $e0 $65
	ld bc, $9aeb                                     ; $6c02: $01 $eb $9a
	dec c                                            ; $6c05: $0d
	ld c, $1f                                        ; $6c06: $0e $1f
	rra                                              ; $6c08: $1f
	rrca                                             ; $6c09: $0f
	ld [hl], a                                       ; $6c0a: $77
	db $fd                                           ; $6c0b: $fd
	sbc [hl]                                         ; $6c0c: $9e
	rrca                                             ; $6c0d: $0f
	and $dc                                          ; $6c0e: $e6 $dc
	add b                                            ; $6c10: $80
	sbc $0f                                          ; $6c11: $de $0f
	sub a                                            ; $6c13: $97
	rlca                                             ; $6c14: $07
	rra                                              ; $6c15: $1f
	rrca                                             ; $6c16: $0f
	rrca                                             ; $6c17: $0f
	rra                                              ; $6c18: $1f
	ccf                                              ; $6c19: $3f
	rra                                              ; $6c1a: $1f
	rra                                              ; $6c1b: $1f
	call c, Call_02a_7b3f                            ; $6c1c: $dc $3f $7b
	ld a, [$1fd4]                                    ; $6c1f: $fa $d4 $1f
	sbc d                                            ; $6c22: $9a
	ret nz                                           ; $6c23: $c0

	add b                                            ; $6c24: $80
	add b                                            ; $6c25: $80
	ret nz                                           ; $6c26: $c0

	add b                                            ; $6c27: $80
	jp c, $9ec0                                      ; $6c28: $da $c0 $9e

	ldh [rPCM34], a                                  ; $6c2b: $e0 $77
	db $fd                                           ; $6c2d: $fd
	ld [hl], e                                       ; $6c2e: $73
	cp $7f                                           ; $6c2f: $fe $7f
	db $fd                                           ; $6c31: $fd
	sbc [hl]                                         ; $6c32: $9e
	ld b, b                                          ; $6c33: $40
	ld a, e                                          ; $6c34: $7b
	jp hl                                            ; $6c35: $e9


	ld [hl], a                                       ; $6c36: $77
	and $db                                          ; $6c37: $e6 $db
	rra                                              ; $6c39: $1f
	ld [hl], a                                       ; $6c3a: $77
	sub h                                            ; $6c3b: $94
	db $dd                                           ; $6c3c: $dd
	rrca                                             ; $6c3d: $0f
	sbc [hl]                                         ; $6c3e: $9e
	rlca                                             ; $6c3f: $07
	ld a, e                                          ; $6c40: $7b
	db $fd                                           ; $6c41: $fd
	sbc [hl]                                         ; $6c42: $9e
	inc bc                                           ; $6c43: $03
	ld a, e                                          ; $6c44: $7b
	cp $7f                                           ; $6c45: $fe $7f
	db $fd                                           ; $6c47: $fd
	db $dd                                           ; $6c48: $dd
	inc bc                                           ; $6c49: $03
	ld a, a                                          ; $6c4a: $7f
	ld a, [$0b9d]                                    ; $6c4b: $fa $9d $0b
	rlca                                             ; $6c4e: $07
	db $db                                           ; $6c4f: $db
	ret nz                                           ; $6c50: $c0

	ld a, e                                          ; $6c51: $7b
	sub $6f                                          ; $6c52: $d6 $6f
	adc l                                            ; $6c54: $8d
	ld a, e                                          ; $6c55: $7b
	cp $77                                           ; $6c56: $fe $77
	ei                                               ; $6c58: $fb
	ld [hl], a                                       ; $6c59: $77
	call nz, $ea6f                                   ; $6c5a: $c4 $6f $ea
	ld e, a                                          ; $6c5d: $5f
	ret nz                                           ; $6c5e: $c0

	rst SubAFromDE                                          ; $6c5f: $df
	rra                                              ; $6c60: $1f
	sbc [hl]                                         ; $6c61: $9e
	dec de                                           ; $6c62: $1b
	ld a, e                                          ; $6c63: $7b
	cp $7f                                           ; $6c64: $fe $7f
	db $fd                                           ; $6c66: $fd
	ld a, a                                          ; $6c67: $7f
	db $fc                                           ; $6c68: $fc
	sbc c                                            ; $6c69: $99
	dec c                                            ; $6c6a: $0d
	rra                                              ; $6c6b: $1f
	rra                                              ; $6c6c: $1f
	dec c                                            ; $6c6d: $0d
	rrca                                             ; $6c6e: $0f
	dec c                                            ; $6c6f: $0d
	sbc $0f                                          ; $6c70: $de $0f
	sbc h                                            ; $6c72: $9c
	rra                                              ; $6c73: $1f
	dec e                                            ; $6c74: $1d
	dec sp                                           ; $6c75: $3b
	ld h, a                                          ; $6c76: $67
	ret nz                                           ; $6c77: $c0

	ld a, e                                          ; $6c78: $7b
	ld d, d                                          ; $6c79: $52
	ld [hl], e                                       ; $6c7a: $73
	call nz, $80dd                                   ; $6c7b: $c4 $dd $80
	ld [hl], a                                       ; $6c7e: $77
	rst JumpTable                                          ; $6c7f: $c7
	ld [hl], a                                       ; $6c80: $77
	cp $77                                           ; $6c81: $fe $77
	cp h                                             ; $6c83: $bc
	ld c, a                                          ; $6c84: $4f
	add b                                            ; $6c85: $80
	ld a, e                                          ; $6c86: $7b
	call $0fdf                                       ; $6c87: $cd $df $0f
	sub d                                            ; $6c8a: $92
	dec e                                            ; $6c8b: $1d
	jr jr_02a_6cab                                   ; $6c8c: $18 $1d

	add hl, sp                                       ; $6c8e: $39

jr_02a_6c8f:
	jr jr_02a_6ca9                                   ; $6c8f: $18 $18

	jr c, @+$32                                      ; $6c91: $38 $30

	jr c, @+$32                                      ; $6c93: $38 $30

	ld [hl], b                                       ; $6c95: $70
	ldh [rSVBK], a                                   ; $6c96: $e0 $70
	ccf                                              ; $6c98: $3f
	ret nz                                           ; $6c99: $c0

	ld h, a                                          ; $6c9a: $67
	ld l, $9e                                        ; $6c9b: $2e $9e
	ld h, b                                          ; $6c9d: $60
	ld a, e                                          ; $6c9e: $7b
	db $fd                                           ; $6c9f: $fd
	sbc l                                            ; $6ca0: $9d
	ld h, b                                          ; $6ca1: $60
	ldh [$d9], a                                     ; $6ca2: $e0 $d9
	rra                                              ; $6ca4: $1f
	ld e, e                                          ; $6ca5: $5b
	cp [hl]                                          ; $6ca6: $be
	sbc c                                            ; $6ca7: $99
	dec c                                            ; $6ca8: $0d

jr_02a_6ca9:
	ld e, $0d                                        ; $6ca9: $1e $0d

jr_02a_6cab:
	add hl, bc                                       ; $6cab: $09
	inc e                                            ; $6cac: $1c
	inc c                                            ; $6cad: $0c
	sbc $18                                          ; $6cae: $de $18
	sbc e                                            ; $6cb0: $9b
	db $10                                           ; $6cb1: $10
	jr c, jr_02a_6d2c                                ; $6cb2: $38 $78

	jr nc, jr_02a_6c8f                               ; $6cb4: $30 $d9

	ret nz                                           ; $6cb6: $c0

	ld a, e                                          ; $6cb7: $7b
	adc $6b                                          ; $6cb8: $ce $6b
	adc h                                            ; $6cba: $8c
	ld [hl], a                                       ; $6cbb: $77
	call nz, $f67a                                   ; $6cbc: $c4 $7a $f6
	sbc $60                                          ; $6cbf: $de $60
	sbc e                                            ; $6cc1: $9b
	jr nc, jr_02a_6d24                               ; $6cc2: $30 $60

	ldh [rSVBK], a                                   ; $6cc4: $e0 $70
	ld d, a                                          ; $6cc6: $57
	ret nz                                           ; $6cc7: $c0

	ld l, a                                          ; $6cc8: $6f
	cp [hl]                                          ; $6cc9: $be
	ld a, e                                          ; $6cca: $7b
	ld b, a                                          ; $6ccb: $47
	rst SubAFromDE                                          ; $6ccc: $df
	dec c                                            ; $6ccd: $0d
	sbc [hl]                                         ; $6cce: $9e
	inc c                                            ; $6ccf: $0c
	ld a, e                                          ; $6cd0: $7b
	cp a                                             ; $6cd1: $bf
	rst SubAFromDE                                          ; $6cd2: $df
	inc c                                            ; $6cd3: $0c
	sbc h                                            ; $6cd4: $9c
	jr jr_02a_6d33                                   ; $6cd5: $18 $5c

	jr c, jr_02a_6d38                                ; $6cd7: $38 $5f

	ret nz                                           ; $6cd9: $c0

	ld h, a                                          ; $6cda: $67
	ld a, [hl]                                       ; $6cdb: $7e
	ld [hl], a                                       ; $6cdc: $77
	cp h                                             ; $6cdd: $bc
	ld a, a                                          ; $6cde: $7f
	ret nz                                           ; $6cdf: $c0

	ld a, a                                          ; $6ce0: $7f
	ld h, l                                          ; $6ce1: $65
	ld a, a                                          ; $6ce2: $7f
	ld h, d                                          ; $6ce3: $62
	ld a, e                                          ; $6ce4: $7b
	ret nz                                           ; $6ce5: $c0

	ld e, e                                          ; $6ce6: $5b
	ld b, b                                          ; $6ce7: $40
	ld h, a                                          ; $6ce8: $67
	add b                                            ; $6ce9: $80
	ld a, [hl]                                       ; $6cea: $7e
	cp h                                             ; $6ceb: $bc
	ld a, d                                          ; $6cec: $7a
	cp d                                             ; $6ced: $ba
	sbc l                                            ; $6cee: $9d
	ld b, $0e                                        ; $6cef: $06 $0e
	ld a, e                                          ; $6cf1: $7b
	cp $7f                                           ; $6cf2: $fe $7f
	ld a, [$1f9d]                                    ; $6cf4: $fa $9d $1f
	ld c, $56                                        ; $6cf7: $0e $56
	ret nz                                           ; $6cf9: $c0

	ld h, a                                          ; $6cfa: $67
	jp nz, $c17f                                     ; $6cfb: $c2 $7f $c1

	ld a, a                                          ; $6cfe: $7f
	jp nz, $f09a                                     ; $6cff: $c2 $9a $f0

	ld h, b                                          ; $6d02: $60
	ret nz                                           ; $6d03: $c0

	ld h, b                                          ; $6d04: $60
	ld b, b                                          ; $6d05: $40
	ld d, d                                          ; $6d06: $52
	ret nz                                           ; $6d07: $c0

	sbc d                                            ; $6d08: $9a
	ld c, $0f                                        ; $6d09: $0e $0f
	rlca                                             ; $6d0b: $07
	ld c, $0f                                        ; $6d0c: $0e $0f
	ld a, e                                          ; $6d0e: $7b
	call z, $069c                                    ; $6d0f: $cc $9c $06
	rlca                                             ; $6d12: $07
	ld b, $6a                                        ; $6d13: $06 $6a
	ld a, [hl]                                       ; $6d15: $7e
	ld a, $80                                        ; $6d16: $3e $80
	ld c, c                                          ; $6d18: $49
	rst $38                                          ; $6d19: $ff
	ld [hl], e                                       ; $6d1a: $73
	db $fd                                           ; $6d1b: $fd
	db $ed                                           ; $6d1c: $ed
	sbc [hl]                                         ; $6d1d: $9e
	inc c                                            ; $6d1e: $0c
	ld bc, $66c0                                     ; $6d1f: $01 $c0 $66
	ld [hl], l                                       ; $6d22: $75
	ld a, a                                          ; $6d23: $7f

jr_02a_6d24:
	adc e                                            ; $6d24: $8b
	ld a, e                                          ; $6d25: $7b
	ld d, d                                          ; $6d26: $52
	ld a, e                                          ; $6d27: $7b
	ret c                                            ; $6d28: $d8

	dec h                                            ; $6d29: $25
	ret nz                                           ; $6d2a: $c0

	ld e, l                                          ; $6d2b: $5d

jr_02a_6d2c:
	jp nz, $be55                                     ; $6d2c: $c2 $55 $be

	ld e, l                                          ; $6d2f: $5d
	ret nz                                           ; $6d30: $c0

	db $eb                                           ; $6d31: $eb
	ld a, a                                          ; $6d32: $7f

jr_02a_6d33:
	ld b, l                                          ; $6d33: $45
	halt                                             ; $6d34: $76
	ei                                               ; $6d35: $fb
	halt                                             ; $6d36: $76
	db $f4                                           ; $6d37: $f4

jr_02a_6d38:
	dec hl                                           ; $6d38: $2b
	add h                                            ; $6d39: $84
	sbc [hl]                                         ; $6d3a: $9e
	nop                                              ; $6d3b: $00
	ld l, [hl]                                       ; $6d3c: $6e
	ld [bc], a                                       ; $6d3d: $02
	rst SubAFromDE                                          ; $6d3e: $df
	ret nz                                           ; $6d3f: $c0

	ld l, e                                          ; $6d40: $6b
	sub $21                                          ; $6d41: $d6 $21
	ld b, b                                          ; $6d43: $40
	ld l, c                                          ; $6d44: $69
	ld c, a                                          ; $6d45: $4f
	ld c, e                                          ; $6d46: $4b
	ld a, [hl]                                       ; $6d47: $7e
	rlca                                             ; $6d48: $07
	add b                                            ; $6d49: $80
	ld a, [hl]                                       ; $6d4a: $7e
	add $07                                          ; $6d4b: $c6 $07
	add b                                            ; $6d4d: $80
	halt                                             ; $6d4e: $76
	inc a                                            ; $6d4f: $3c
	ld [hl], a                                       ; $6d50: $77
	or h                                             ; $6d51: $b4
	ld [hl], a                                       ; $6d52: $77
	add b                                            ; $6d53: $80
	ld a, a                                          ; $6d54: $7f
	ld [bc], a                                       ; $6d55: $02
	sbc [hl]                                         ; $6d56: $9e
	cpl                                              ; $6d57: $2f
	dec hl                                           ; $6d58: $2b
	add d                                            ; $6d59: $82
	ld a, b                                          ; $6d5a: $78
	ret nz                                           ; $6d5b: $c0

	ld [hl], e                                       ; $6d5c: $73
	sub d                                            ; $6d5d: $92
	ld c, a                                          ; $6d5e: $4f
	ld a, [hl]                                       ; $6d5f: $7e
	ld a, a                                          ; $6d60: $7f
	cp $9e                                           ; $6d61: $fe $9e
	and b                                            ; $6d63: $a0
	ld h, e                                          ; $6d64: $63
	add b                                            ; $6d65: $80
	dec h                                            ; $6d66: $25
	ld bc, $9ce9                                     ; $6d67: $01 $e9 $9c
	ld c, $0f                                        ; $6d6a: $0e $0f
	rra                                              ; $6d6c: $1f
	ld [hl], e                                       ; $6d6d: $73
	cp $e9                                           ; $6d6e: $fe $e9
	sbc [hl]                                         ; $6d70: $9e
	add b                                            ; $6d71: $80
	ld a, e                                          ; $6d72: $7b
	db $fd                                           ; $6d73: $fd
	db $dd                                           ; $6d74: $dd
	add b                                            ; $6d75: $80
	ld a, a                                          ; $6d76: $7f
	sbc $7f                                          ; $6d77: $de $7f
	db $db                                           ; $6d79: $db
	sub a                                            ; $6d7a: $97
	inc de                                           ; $6d7b: $13
	rla                                              ; $6d7c: $17
	ccf                                              ; $6d7d: $3f
	rla                                              ; $6d7e: $17
	ld a, a                                          ; $6d7f: $7f
	ccf                                              ; $6d80: $3f
	ld a, a                                          ; $6d81: $7f
	ccf                                              ; $6d82: $3f
	ld [hl], a                                       ; $6d83: $77
	db $fd                                           ; $6d84: $fd
	ld [hl], a                                       ; $6d85: $77
	bit 6, a                                         ; $6d86: $cb $77
	ret z                                            ; $6d88: $c8

	reti                                             ; $6d89: $d9


	rrca                                             ; $6d8a: $0f
	db $dd                                           ; $6d8b: $dd
	add b                                            ; $6d8c: $80
	sbc [hl]                                         ; $6d8d: $9e
	ret nz                                           ; $6d8e: $c0

	ld a, e                                          ; $6d8f: $7b
	cp $7f                                           ; $6d90: $fe $7f
	db $fd                                           ; $6d92: $fd
	db $db                                           ; $6d93: $db
	ret nz                                           ; $6d94: $c0

	ld a, e                                          ; $6d95: $7b
	ld hl, sp+$53                                    ; $6d96: $f8 $53
	xor $d5                                          ; $6d98: $ee $d5
	rrca                                             ; $6d9a: $0f
	sbc [hl]                                         ; $6d9b: $9e
	rlca                                             ; $6d9c: $07
	ld a, e                                          ; $6d9d: $7b
	db $fd                                           ; $6d9e: $fd
	sbc h                                            ; $6d9f: $9c
	inc bc                                           ; $6da0: $03
	rlca                                             ; $6da1: $07
	rlca                                             ; $6da2: $07
	sbc $03                                          ; $6da3: $de $03
	sbc [hl]                                         ; $6da5: $9e
	ld bc, $fd7b                                     ; $6da6: $01 $7b $fd
	db $dd                                           ; $6da9: $dd
	ld bc, $059b                                     ; $6daa: $01 $9b $05
	inc bc                                           ; $6dad: $03
	ldh [$c0], a                                     ; $6dae: $e0 $c0
	ld h, a                                          ; $6db0: $67
	cp $9e                                           ; $6db1: $fe $9e
	and b                                            ; $6db3: $a0
	ld [hl], a                                       ; $6db4: $77
	jp $c873                                         ; $6db5: $c3 $73 $c8


	ld a, e                                          ; $6db8: $7b
	add $de                                          ; $6db9: $c6 $de
	ldh [$7b], a                                     ; $6dbb: $e0 $7b
	db $ed                                           ; $6dbd: $ed
	ld a, e                                          ; $6dbe: $7b
	xor $dd                                          ; $6dbf: $ee $dd
	rrca                                             ; $6dc1: $0f
	ld [hl], e                                       ; $6dc2: $73
	sub b                                            ; $6dc3: $90
	ld a, e                                          ; $6dc4: $7b
	ei                                               ; $6dc5: $fb
	sbc b                                            ; $6dc6: $98
	dec c                                            ; $6dc7: $0d
	rra                                              ; $6dc8: $1f
	rrca                                             ; $6dc9: $0f
	dec e                                            ; $6dca: $1d
	dec e                                            ; $6dcb: $1d
	rrca                                             ; $6dcc: $0f
	dec c                                            ; $6dcd: $0d

jr_02a_6dce:
	call c, $9e0f                                    ; $6dce: $dc $0f $9e
	ld b, $73                                        ; $6dd1: $06 $73
	cp $7f                                           ; $6dd3: $fe $7f
	db $ed                                           ; $6dd5: $ed
	ld b, a                                          ; $6dd6: $47

jr_02a_6dd7:
	ret nz                                           ; $6dd7: $c0

	ld [hl], e                                       ; $6dd8: $73
	jp nz, $c0d8                                     ; $6dd9: $c2 $d8 $c0

	ld a, a                                          ; $6ddc: $7f
	ld [$0fcf], a                                    ; $6ddd: $ea $cf $0f
	ld a, e                                          ; $6de0: $7b
	ld b, $9b                                        ; $6de1: $06 $9b
	inc c                                            ; $6de3: $0c
	ld [$1c1c], sp                                   ; $6de4: $08 $1c $1c
	sbc $18                                          ; $6de7: $de $18
	sbc e                                            ; $6de9: $9b
	db $10                                           ; $6dea: $10
	jr c, jr_02a_6e65                                ; $6deb: $38 $78

	jr nc, @+$61                                     ; $6ded: $30 $5f

	ret nz                                           ; $6def: $c0

	ld [hl], a                                       ; $6df0: $77
	sub c                                            ; $6df1: $91
	ld h, a                                          ; $6df2: $67
	jp z, Jump_02a_4095                              ; $6df3: $ca $95 $40

	ldh [$e0], a                                     ; $6df6: $e0 $e0
	ld h, b                                          ; $6df8: $60
	jr nc, jr_02a_6e5b                               ; $6df9: $30 $60

	ld h, b                                          ; $6dfb: $60
	jr nc, jr_02a_6e6e                               ; $6dfc: $30 $70

	jr nc, jr_02a_6dce                               ; $6dfe: $30 $ce

	rrca                                             ; $6e00: $0f
	sbc $0e                                          ; $6e01: $de $0e
	sbc [hl]                                         ; $6e03: $9e
	inc c                                            ; $6e04: $0c
	ld a, e                                          ; $6e05: $7b
	db $fd                                           ; $6e06: $fd
	sbc c                                            ; $6e07: $99
	ld [$0c0c], sp                                   ; $6e08: $08 $0c $0c
	jr jr_02a_6e45                                   ; $6e0b: $18 $38

	jr @+$41                                         ; $6e0d: $18 $3f

	ret nz                                           ; $6e0f: $c0

	ld e, a                                          ; $6e10: $5f
	jp nz, $30dd                                     ; $6e11: $c2 $dd $30

	call z, $dc0f                                    ; $6e14: $cc $0f $dc
	ld c, $77                                        ; $6e17: $0e $77
	cp h                                             ; $6e19: $bc
	sbc l                                            ; $6e1a: $9d
	ld l, $1c                                        ; $6e1b: $2e $1c
	ccf                                              ; $6e1d: $3f
	ld b, b                                          ; $6e1e: $40
	ld [hl], a                                       ; $6e1f: $77
	cp l                                             ; $6e20: $bd
	ld a, a                                          ; $6e21: $7f
	ret nz                                           ; $6e22: $c0

	sbc h                                            ; $6e23: $9c
	ld h, b                                          ; $6e24: $60
	ld [hl], b                                       ; $6e25: $70
	ld a, b                                          ; $6e26: $78
	sbc $30                                          ; $6e27: $de $30
	sbc l                                            ; $6e29: $9d
	jr nz, jr_02a_6e8c                               ; $6e2a: $20 $60

	ld b, [hl]                                       ; $6e2c: $46
	ret nz                                           ; $6e2d: $c0

	ld a, d                                          ; $6e2e: $7a
	pop bc                                           ; $6e2f: $c1
	ld [hl], d                                       ; $6e30: $72
	cp h                                             ; $6e31: $bc
	ld l, a                                          ; $6e32: $6f
	cp $7f                                           ; $6e33: $fe $7f
	ldh a, [$2b]                                     ; $6e35: $f0 $2b
	ret nz                                           ; $6e37: $c0

	rst SubAFromDE                                          ; $6e38: $df
	ld [hl], b                                       ; $6e39: $70
	rst SubAFromDE                                          ; $6e3a: $df
	jr nc, jr_02a_6dd7                               ; $6e3b: $30 $9a

	ld h, b                                          ; $6e3d: $60
	ldh [rLCDC], a                                   ; $6e3e: $e0 $40
	ret nz                                           ; $6e40: $c0

	nop                                              ; $6e41: $00
	push de                                          ; $6e42: $d5
	rrca                                             ; $6e43: $0f
	sbc [hl]                                         ; $6e44: $9e

jr_02a_6e45:
	dec bc                                           ; $6e45: $0b
	ld l, e                                          ; $6e46: $6b
	ret z                                            ; $6e47: $c8

	ld h, $80                                        ; $6e48: $26 $80
	ld a, d                                          ; $6e4a: $7a
	ld c, $72                                        ; $6e4b: $0e $72
	ld [$066e], sp                                   ; $6e4d: $08 $6e $06
	ld l, [hl]                                       ; $6e50: $6e
	ld a, [hl-]                                      ; $6e51: $3a
	halt                                             ; $6e52: $76
	add [hl]                                         ; $6e53: $86
	sbc e                                            ; $6e54: $9b
	rra                                              ; $6e55: $1f
	rla                                              ; $6e56: $17
	ccf                                              ; $6e57: $3f
	rra                                              ; $6e58: $1f
	ld e, [hl]                                       ; $6e59: $5e
	nop                                              ; $6e5a: $00

jr_02a_6e5b:
	ld d, [hl]                                       ; $6e5b: $56
	ld [bc], a                                       ; $6e5c: $02
	halt                                             ; $6e5d: $76
	ld l, c                                          ; $6e5e: $69
	halt                                             ; $6e5f: $76
	inc l                                            ; $6e60: $2c
	sbc c                                            ; $6e61: $99
	rla                                              ; $6e62: $17
	scf                                              ; $6e63: $37
	ld l, a                                          ; $6e64: $6f

jr_02a_6e65:
	cpl                                              ; $6e65: $2f
	ccf                                              ; $6e66: $3f
	ld l, a                                          ; $6e67: $6f
	call c, Call_02a_737f                            ; $6e68: $dc $7f $73
	sbc $d7                                          ; $6e6b: $de $d7
	rrca                                             ; $6e6d: $0f

jr_02a_6e6e:
	ld h, a                                          ; $6e6e: $67
	cp b                                             ; $6e6f: $b8
	sub $c0                                          ; $6e70: $d6 $c0
	ld h, a                                          ; $6e72: $67
	xor $73                                          ; $6e73: $ee $73
	db $ec                                           ; $6e75: $ec
	ld l, a                                          ; $6e76: $6f
	ret nz                                           ; $6e77: $c0

	rst SubAFromDE                                          ; $6e78: $df
	rlca                                             ; $6e79: $07
	ld [hl], a                                       ; $6e7a: $77
	or [hl]                                          ; $6e7b: $b6
	ld a, a                                          ; $6e7c: $7f
	sbc d                                            ; $6e7d: $9a
	db $dd                                           ; $6e7e: $dd
	ccf                                              ; $6e7f: $3f
	ld c, a                                          ; $6e80: $4f
	ret nz                                           ; $6e81: $c0

	ld a, e                                          ; $6e82: $7b
	ldh a, [c]                                       ; $6e83: $f2
	ld a, c                                          ; $6e84: $79
	add b                                            ; $6e85: $80
	sbc l                                            ; $6e86: $9d
	rra                                              ; $6e87: $1f
	scf                                              ; $6e88: $37
	dec h                                            ; $6e89: $25
	add b                                            ; $6e8a: $80
	ld c, h                                          ; $6e8b: $4c

jr_02a_6e8c:
	ld bc, $99e7                                     ; $6e8c: $01 $e7 $99
	rra                                              ; $6e8f: $1f
	ld c, $1e                                        ; $6e90: $0e $1e
	rra                                              ; $6e92: $1f
	rrca                                             ; $6e93: $0f
	rra                                              ; $6e94: $1f
	ldh [c], a                                       ; $6e95: $e2
	sbc [hl]                                         ; $6e96: $9e
	add b                                            ; $6e97: $80
	ld a, e                                          ; $6e98: $7b
	db $dd                                           ; $6e99: $dd
	sub l                                            ; $6e9a: $95
	rrca                                             ; $6e9b: $0f
	rlca                                             ; $6e9c: $07
	rrca                                             ; $6e9d: $0f
	rrca                                             ; $6e9e: $0f
	rlca                                             ; $6e9f: $07
	scf                                              ; $6ea0: $37
	rra                                              ; $6ea1: $1f
	rra                                              ; $6ea2: $1f
	ccf                                              ; $6ea3: $3f
	ld a, a                                          ; $6ea4: $7f
	ld [hl], e                                       ; $6ea5: $73
	cp $7f                                           ; $6ea6: $fe $7f
	ld hl, sp-$63                                    ; $6ea8: $f8 $9d
	cpl                                              ; $6eaa: $2f
	rra                                              ; $6eab: $1f
	ld [hl], a                                       ; $6eac: $77
	ld [$0fdb], a                                    ; $6ead: $ea $db $0f
	rst SubAFromDE                                          ; $6eb0: $df
	add b                                            ; $6eb1: $80
	sbc [hl]                                         ; $6eb2: $9e
	ret nz                                           ; $6eb3: $c0

	ld a, e                                          ; $6eb4: $7b
	cp $77                                           ; $6eb5: $fe $77

jr_02a_6eb7:
	ei                                               ; $6eb7: $fb
	db $dd                                           ; $6eb8: $dd
	ret nz                                           ; $6eb9: $c0

	ld a, e                                          ; $6eba: $7b
	ld a, [$809d]                                    ; $6ebb: $fa $9d $80
	nop                                              ; $6ebe: $00
	ld [hl], e                                       ; $6ebf: $73
	cp $6f                                           ; $6ec0: $fe $6f
	ld [$c0df], a                                    ; $6ec2: $ea $df $c0
	rst GetHLinHL                                          ; $6ec5: $cf
	rrca                                             ; $6ec6: $0f
	adc a                                            ; $6ec7: $8f
	ld c, $0f                                        ; $6ec8: $0e $0f
	ld e, $0d                                        ; $6eca: $1e $0d
	ld [$1c1c], sp                                   ; $6ecc: $08 $1c $1c
	jr jr_02a_6f09                                   ; $6ecf: $18 $38

	jr jr_02a_6ee3                                   ; $6ed1: $18 $10

	jr c, jr_02a_6f45                                ; $6ed3: $38 $70

	jr nc, jr_02a_6eb7                               ; $6ed5: $30 $e0

	ret nz                                           ; $6ed7: $c0

	ld l, a                                          ; $6ed8: $6f
	cp $77                                           ; $6ed9: $fe $77
	add $6f                                          ; $6edb: $c6 $6f
	cp h                                             ; $6edd: $bc
	rst SubAFromDE                                          ; $6ede: $df
	ret nz                                           ; $6edf: $c0

	ld a, a                                          ; $6ee0: $7f
	ldh a, [c]                                       ; $6ee1: $f2
	sub l                                            ; $6ee2: $95

jr_02a_6ee3:
	ld b, b                                          ; $6ee3: $40
	ldh [$e0], a                                     ; $6ee4: $e0 $e0
	ld h, b                                          ; $6ee6: $60
	jr nc, jr_02a_6f49                               ; $6ee7: $30 $60

	ld h, b                                          ; $6ee9: $60
	jr nc, jr_02a_6f1c                               ; $6eea: $30 $30

	ld [hl], b                                       ; $6eec: $70
	scf                                              ; $6eed: $37
	ret nz                                           ; $6eee: $c0

	sub [hl]                                         ; $6eef: $96
	dec c                                            ; $6ef0: $0d
	ld c, $0c                                        ; $6ef1: $0e $0c
	ld c, $0e                                        ; $6ef3: $0e $0e
	inc c                                            ; $6ef5: $0c
	ld [$0c0c], sp                                   ; $6ef6: $08 $0c $0c
	ld a, e                                          ; $6ef9: $7b
	cp h                                             ; $6efa: $bc
	ld h, a                                          ; $6efb: $67
	ret nz                                           ; $6efc: $c0

	ld a, a                                          ; $6efd: $7f
	cp $d9                                           ; $6efe: $fe $d9
	ret nz                                           ; $6f00: $c0

	ld a, e                                          ; $6f01: $7b
	or $7f                                           ; $6f02: $f6 $7f
	jp $e097                                         ; $6f04: $c3 $97 $e0


	ldh a, [$60]                                     ; $6f07: $f0 $60

jr_02a_6f09:
	jr nz, jr_02a_6f7b                               ; $6f09: $20 $70

	ld [hl], b                                       ; $6f0b: $70
	jr nc, jr_02a_6f46                               ; $6f0c: $30 $38

	dec sp                                           ; $6f0e: $3b
	ret nz                                           ; $6f0f: $c0

	ld [hl], a                                       ; $6f10: $77
	cp l                                             ; $6f11: $bd
	ld a, e                                          ; $6f12: $7b
	pop bc                                           ; $6f13: $c1
	ld a, e                                          ; $6f14: $7b
	db $fd                                           ; $6f15: $fd
	sbc e                                            ; $6f16: $9b
	ld e, $0c                                        ; $6f17: $1e $0c
	ld a, [hl-]                                      ; $6f19: $3a
	inc e                                            ; $6f1a: $1c
	ld h, a                                          ; $6f1b: $67

jr_02a_6f1c:
	jp nz, $a09e                                     ; $6f1c: $c2 $9e $a0

	ld [hl], a                                       ; $6f1f: $77
	ld b, e                                          ; $6f20: $43
	ld [hl], e                                       ; $6f21: $73
	ld c, h                                          ; $6f22: $4c
	ld [hl], a                                       ; $6f23: $77
	ret nz                                           ; $6f24: $c0

	ld a, e                                          ; $6f25: $7b
	add d                                            ; $6f26: $82
	ld a, e                                          ; $6f27: $7b
	jp $30df                                         ; $6f28: $c3 $df $30


	sbc l                                            ; $6f2b: $9d
	ld b, b                                          ; $6f2c: $40
	ld h, b                                          ; $6f2d: $60
	reti                                             ; $6f2e: $d9


	rrca                                             ; $6f2f: $0f

jr_02a_6f30:
	halt                                             ; $6f30: $76
	db $fc                                           ; $6f31: $fc
	ld [hl], a                                       ; $6f32: $77
	cp $df                                           ; $6f33: $fe $df
	rlca                                             ; $6f35: $07
	sbc [hl]                                         ; $6f36: $9e
	inc bc                                           ; $6f37: $03
	ld a, e                                          ; $6f38: $7b
	cp $73                                           ; $6f39: $fe $73
	ei                                               ; $6f3b: $fb
	ld a, e                                          ; $6f3c: $7b
	cp $7f                                           ; $6f3d: $fe $7f
	ldh a, [$63]                                     ; $6f3f: $f0 $63
	add d                                            ; $6f41: $82
	call c, Call_02a_6f80                            ; $6f42: $dc $80 $6f

jr_02a_6f45:
	ret nz                                           ; $6f45: $c0

jr_02a_6f46:
	sbc h                                            ; $6f46: $9c
	ldh a, [$e0]                                     ; $6f47: $f0 $e0

jr_02a_6f49:
	add sp, $7b                                      ; $6f49: $e8 $7b
	add h                                            ; $6f4b: $84
	sbc d                                            ; $6f4c: $9a
	ld [hl], b                                       ; $6f4d: $70
	jr nz, jr_02a_6f30                               ; $6f4e: $20 $e0

	ld b, b                                          ; $6f50: $40
	ret nz                                           ; $6f51: $c0

	ld a, [bc]                                       ; $6f52: $0a
	add d                                            ; $6f53: $82
	ld a, a                                          ; $6f54: $7f
	db $fd                                           ; $6f55: $fd
	ld [de], a                                       ; $6f56: $12
	add e                                            ; $6f57: $83
	ld a, a                                          ; $6f58: $7f
	cp $7a                                           ; $6f59: $fe $7a
	add b                                            ; $6f5b: $80
	ld d, $82                                        ; $6f5c: $16 $82
	rst SubAFromDE                                          ; $6f5e: $df
	rrca                                             ; $6f5f: $0f
	ld c, $82                                        ; $6f60: $0e $82
	ld d, [hl]                                       ; $6f62: $56
	add b                                            ; $6f63: $80
	ld l, a                                          ; $6f64: $6f
	ld a, $77                                        ; $6f65: $3e $77
	ld b, h                                          ; $6f67: $44
	rst SubAFromDE                                          ; $6f68: $df
	inc bc                                           ; $6f69: $03
	sbc [hl]                                         ; $6f6a: $9e
	ld bc, $fd7b                                     ; $6f6b: $01 $7b $fd
	db $dd                                           ; $6f6e: $dd
	ld bc, $059d                                     ; $6f6f: $01 $9d $05
	inc bc                                           ; $6f72: $03
	ld e, a                                          ; $6f73: $5f
	ld [bc], a                                       ; $6f74: $02
	db $db                                           ; $6f75: $db
	add b                                            ; $6f76: $80
	ld e, [hl]                                       ; $6f77: $5e
	db $fc                                           ; $6f78: $fc
	ld [hl], e                                       ; $6f79: $73
	dec hl                                           ; $6f7a: $2b

jr_02a_6f7b:
	ld e, e                                          ; $6f7b: $5b
	ret nz                                           ; $6f7c: $c0

	ld a, a                                          ; $6f7d: $7f
	adc h                                            ; $6f7e: $8c
	sbc [hl]                                         ; $6f7f: $9e

Call_02a_6f80:
	dec e                                            ; $6f80: $1d
	ld a, e                                          ; $6f81: $7b
	cp $9c                                           ; $6f82: $fe $9c
	rra                                              ; $6f84: $1f
	dec c                                            ; $6f85: $0d
	dec c                                            ; $6f86: $0d
	ld [hl], d                                       ; $6f87: $72
	rst FarCall                                          ; $6f88: $f7
	sbc d                                            ; $6f89: $9a
	ld c, $07                                        ; $6f8a: $0e $07
	ld c, $07                                        ; $6f8c: $0e $07
	ld b, $7b                                        ; $6f8e: $06 $7b
	ldh a, [c]                                       ; $6f90: $f2
	ld b, [hl]                                       ; $6f91: $46
	jp nz, $3c66                                     ; $6f92: $c2 $66 $3c

	ld h, [hl]                                       ; $6f95: $66
	ld [hl], h                                       ; $6f96: $74
	ld e, a                                          ; $6f97: $5f
	add d                                            ; $6f98: $82
	db $dd                                           ; $6f99: $dd
	rlca                                             ; $6f9a: $07
	ld l, [hl]                                       ; $6f9b: $6e
	add $5f                                          ; $6f9c: $c6 $5f
	add b                                            ; $6f9e: $80
	ld a, a                                          ; $6f9f: $7f
	db $f4                                           ; $6fa0: $f4
	ld h, a                                          ; $6fa1: $67
	ret nz                                           ; $6fa2: $c0

	ld l, e                                          ; $6fa3: $6b
	ld b, a                                          ; $6fa4: $47
	ld a, e                                          ; $6fa5: $7b
	dec bc                                           ; $6fa6: $0b
	rst SubAFromHL                                          ; $6fa7: $d7
	add b                                            ; $6fa8: $80
	ld [hl], a                                       ; $6fa9: $77
	or b                                             ; $6faa: $b0
	ld h, $c2                                        ; $6fab: $26 $c2
	call c, Call_02a_7b1f                            ; $6fad: $dc $1f $7b
	ld l, h                                          ; $6fb0: $6c
	ld d, $c1                                        ; $6fb1: $16 $c1
	ld [hl], a                                       ; $6fb3: $77
	cp [hl]                                          ; $6fb4: $be
	ld [hl], a                                       ; $6fb5: $77
	ld d, h                                          ; $6fb6: $54
	ld e, $c2                                        ; $6fb7: $1e $c2
	halt                                             ; $6fb9: $76
	ret nz                                           ; $6fba: $c0

	ld e, [hl]                                       ; $6fbb: $5e
	jp nz, $fe7f                                     ; $6fbc: $c2 $7f $fe

	sbc [hl]                                         ; $6fbf: $9e
	ld b, b                                          ; $6fc0: $40
	ld l, d                                          ; $6fc1: $6a
	jp nz, Jump_02a_765d                             ; $6fc2: $c2 $5d $76

	ld b, a                                          ; $6fc5: $47
	ld b, d                                          ; $6fc6: $42
	ld l, a                                          ; $6fc7: $6f
	ld b, h                                          ; $6fc8: $44
	ld l, a                                          ; $6fc9: $6f
	ld b, d                                          ; $6fca: $42
	ld a, a                                          ; $6fcb: $7f
	ld a, [$406f]                                    ; $6fcc: $fa $6f $40
	scf                                              ; $6fcf: $37
	ld b, d                                          ; $6fd0: $42
	ld [hl], e                                       ; $6fd1: $73
	cp h                                             ; $6fd2: $bc
	rst SubAFromDE                                          ; $6fd3: $df
	add b                                            ; $6fd4: $80
	sbc [hl]                                         ; $6fd5: $9e
	nop                                              ; $6fd6: $00
	ld e, h                                          ; $6fd7: $5c
	ld bc, $9ae9                                     ; $6fd8: $01 $e9 $9a
	rrca                                             ; $6fdb: $0f
	ld bc, $0f1f                                     ; $6fdc: $01 $1f $0f
	rra                                              ; $6fdf: $1f
	ld a, e                                          ; $6fe0: $7b
	db $fd                                           ; $6fe1: $fd
	jp hl                                            ; $6fe2: $e9


	sbc [hl]                                         ; $6fe3: $9e
	add b                                            ; $6fe4: $80
	ld a, e                                          ; $6fe5: $7b
	db $fd                                           ; $6fe6: $fd
	ld a, a                                          ; $6fe7: $7f
	db $fc                                           ; $6fe8: $fc
	ld a, a                                          ; $6fe9: $7f
	cp $7b                                           ; $6fea: $fe $7b
	db $dd                                           ; $6fec: $dd
	sub l                                            ; $6fed: $95
	ld c, $0f                                        ; $6fee: $0e $0f
	rlca                                             ; $6ff0: $07
	rlca                                             ; $6ff1: $07
	rrca                                             ; $6ff2: $0f
	rra                                              ; $6ff3: $1f
	rrca                                             ; $6ff4: $0f
	rrca                                             ; $6ff5: $0f
	rra                                              ; $6ff6: $1f
	ccf                                              ; $6ff7: $3f
	ld e, a                                          ; $6ff8: $5f
	cp $9e                                           ; $6ff9: $fe $9e
	ld e, $73                                        ; $6ffb: $1e $73
	ld a, [$3fde]                                    ; $6ffd: $fa $de $3f
	ld [hl], a                                       ; $7000: $77
	call c, $fe73                                    ; $7001: $dc $73 $fe
	reti                                             ; $7004: $d9


	add b                                            ; $7005: $80
	ld [hl], e                                       ; $7006: $73
	ldh a, [c]                                       ; $7007: $f2
	ld [hl], a                                       ; $7008: $77
	ret nz                                           ; $7009: $c0

	ld [hl], a                                       ; $700a: $77
	cp [hl]                                          ; $700b: $be
	sbc l                                            ; $700c: $9d
	ld b, b                                          ; $700d: $40
	add b                                            ; $700e: $80
	sbc $3f                                          ; $700f: $de $3f
	call c, Call_02a_771f                            ; $7011: $dc $1f $77
	sub e                                            ; $7014: $93
	rst SubAFromDE                                          ; $7015: $df
	rrca                                             ; $7016: $0f
	ld a, a                                          ; $7017: $7f
	cp b                                             ; $7018: $b8
	ld a, e                                          ; $7019: $7b
	or h                                             ; $701a: $b4
	sbc l                                            ; $701b: $9d
	rlca                                             ; $701c: $07
	inc bc                                           ; $701d: $03
	ld a, e                                          ; $701e: $7b
	db $fd                                           ; $701f: $fd
	db $dd                                           ; $7020: $dd
	inc bc                                           ; $7021: $03
	ld a, a                                          ; $7022: $7f
	ld a, [$0e99]                                    ; $7023: $fa $99 $0e
	rlca                                             ; $7026: $07
	ret nz                                           ; $7027: $c0

	add b                                            ; $7028: $80
	add b                                            ; $7029: $80
	ret nz                                           ; $702a: $c0

	ld [hl], a                                       ; $702b: $77
	cp $7f                                           ; $702c: $fe $7f
	db $fd                                           ; $702e: $fd
	ld l, a                                          ; $702f: $6f
	call z, $c86f                                    ; $7030: $cc $6f $c8
	ld [hl], a                                       ; $7033: $77
	ld [$e09e], a                                    ; $7034: $ea $9e $e0
	ld [hl], a                                       ; $7037: $77
	add sp, -$62                                     ; $7038: $e8 $9e
	nop                                              ; $703a: $00
	ld e, a                                          ; $703b: $5f
	ret nz                                           ; $703c: $c0

	ld a, a                                          ; $703d: $7f
	ld hl, sp-$6e                                    ; $703e: $f8 $92
	dec de                                           ; $7040: $1b
	ccf                                              ; $7041: $3f
	rra                                              ; $7042: $1f
	dec sp                                           ; $7043: $3b
	dec sp                                           ; $7044: $3b
	rra                                              ; $7045: $1f
	dec e                                            ; $7046: $1d
	rra                                              ; $7047: $1f
	rrca                                             ; $7048: $0f
	dec e                                            ; $7049: $1d
	dec e                                            ; $704a: $1d
	rrca                                             ; $704b: $0f
	dec c                                            ; $704c: $0d
	sbc $0f                                          ; $704d: $de $0f
	ld a, a                                          ; $704f: $7f
	rst FarCall                                          ; $7050: $f7
	sbc l                                            ; $7051: $9d
	dec sp                                           ; $7052: $3b

jr_02a_7053:
	dec e                                            ; $7053: $1d
	ld e, a                                          ; $7054: $5f
	ret nz                                           ; $7055: $c0

	ld l, a                                          ; $7056: $6f
	add $6f                                          ; $7057: $c6 $6f
	ld [hl], a                                       ; $7059: $77
	ld [hl], a                                       ; $705a: $77
	db $ed                                           ; $705b: $ed
	ld [hl], e                                       ; $705c: $73
	ld [$c09e], a                                    ; $705d: $ea $9e $c0
	ld d, a                                          ; $7060: $57
	add b                                            ; $7061: $80
	ld [hl], a                                       ; $7062: $77
	cp $7b                                           ; $7063: $fe $7b
	db $fd                                           ; $7065: $fd
	sub d                                            ; $7066: $92
	dec e                                            ; $7067: $1d

Call_02a_7068:
	inc e                                            ; $7068: $1c
	add hl, de                                       ; $7069: $19
	add hl, sp                                       ; $706a: $39
	jr jr_02a_707d                                   ; $706b: $18 $10

	jr c, jr_02a_70a7                                ; $706d: $38 $38

	jr nc, jr_02a_70e1                               ; $706f: $30 $70

	jr nc, jr_02a_7053                               ; $7071: $30 $e0

	ld [hl], b                                       ; $7073: $70
	ld d, a                                          ; $7074: $57
	ret nz                                           ; $7075: $c0

	ld [hl], a                                       ; $7076: $77
	call nz, $c66f                                   ; $7077: $c4 $6f $c6
	db $dd                                           ; $707a: $dd
	ret nz                                           ; $707b: $c0

	sbc [hl]                                         ; $707c: $9e

jr_02a_707d:
	ld h, b                                          ; $707d: $60
	ld a, e                                          ; $707e: $7b
	db $fd                                           ; $707f: $fd
	sbc l                                            ; $7080: $9d
	ld h, b                                          ; $7081: $60
	ldh [rVBK], a                                    ; $7082: $e0 $4f
	ld b, b                                          ; $7084: $40
	db $dd                                           ; $7085: $dd
	rrca                                             ; $7086: $0f
	sbc b                                            ; $7087: $98
	rra                                              ; $7088: $1f
	dec c                                            ; $7089: $0d
	ld e, $0d                                        ; $708a: $1e $0d
	add hl, de                                       ; $708c: $19
	inc c                                            ; $708d: $0c
	inc c                                            ; $708e: $0c
	sbc $18                                          ; $708f: $de $18
	ld a, e                                          ; $7091: $7b
	cp h                                             ; $7092: $bc
	ld d, a                                          ; $7093: $57
	ret nz                                           ; $7094: $c0

	ld [hl], e                                       ; $7095: $73
	jp nz, $8a6f                                     ; $7096: $c2 $6f $8a

	ld a, a                                          ; $7099: $7f

Jump_02a_709a:
	ld b, h                                          ; $709a: $44
	ld a, e                                          ; $709b: $7b
	call nz, Call_02a_609a                           ; $709c: $c4 $9a $60
	jr nc, jr_02a_7101                               ; $709f: $30 $60

	ld h, b                                          ; $70a1: $60
	ldh a, [$3f]                                     ; $70a2: $f0 $3f
	ret nz                                           ; $70a4: $c0

	ld a, a                                          ; $70a5: $7f
	ld b, h                                          ; $70a6: $44

jr_02a_70a7:
	ld a, a                                          ; $70a7: $7f
	cp [hl]                                          ; $70a8: $be
	sub l                                            ; $70a9: $95
	dec e                                            ; $70aa: $1d
	inc c                                            ; $70ab: $0c
	inc e                                            ; $70ac: $1c
	inc c                                            ; $70ad: $0c
	jr jr_02a_70bc                                   ; $70ae: $18 $0c

	ld [$5c1c], sp                                   ; $70b0: $08 $1c $5c
	jr c, jr_02a_7110                                ; $70b3: $38 $5b

	nop                                              ; $70b5: $00
	ld l, e                                          ; $70b6: $6b
	ld a, $6f                                        ; $70b7: $3e $6f
	inc b                                            ; $70b9: $04
	sbc l                                            ; $70ba: $9d
	ld [hl], b                                       ; $70bb: $70

jr_02a_70bc:
	ldh [$7b], a                                     ; $70bc: $e0 $7b
	ld h, c                                          ; $70be: $61
	ld a, a                                          ; $70bf: $7f
	add c                                            ; $70c0: $81
	ld e, e                                          ; $70c1: $5b
	ld b, b                                          ; $70c2: $40
	reti                                             ; $70c3: $d9


	rrca                                             ; $70c4: $0f
	ld a, [hl]                                       ; $70c5: $7e
	cp h                                             ; $70c6: $bc
	ld a, d                                          ; $70c7: $7a
	cp d                                             ; $70c8: $ba
	sbc l                                            ; $70c9: $9d
	ld b, $0e                                        ; $70ca: $06 $0e
	ld a, e                                          ; $70cc: $7b
	cp $7f                                           ; $70cd: $fe $7f
	ld a, [$647e]                                    ; $70cf: $fa $7e $64
	ld b, a                                          ; $70d2: $47
	nop                                              ; $70d3: $00
	ld l, a                                          ; $70d4: $6f
	jp nz, $887f                                     ; $70d5: $c2 $7f $88

	sbc e                                            ; $70d8: $9b
	ldh a, [$60]                                     ; $70d9: $f0 $60
	ldh [rLCDC], a                                   ; $70db: $e0 $40
	halt                                             ; $70dd: $76
	ret nz                                           ; $70de: $c0

	ld [hl+], a                                      ; $70df: $22
	nop                                              ; $70e0: $00

jr_02a_70e1:
	sbc [hl]                                         ; $70e1: $9e
	dec c                                            ; $70e2: $0d
	ld l, a                                          ; $70e3: $6f
	xor c                                            ; $70e4: $a9
	ld e, $00                                        ; $70e5: $1e $00
	ld l, [hl]                                       ; $70e7: $6e
	ld [hl-], a                                      ; $70e8: $32
	ld e, a                                          ; $70e9: $5f
	add b                                            ; $70ea: $80
	ld a, a                                          ; $70eb: $7f
	sub c                                            ; $70ec: $91
	ld a, a                                          ; $70ed: $7f
	sub b                                            ; $70ee: $90
	ld a, e                                          ; $70ef: $7b
	adc b                                            ; $70f0: $88
	ld a, e                                          ; $70f1: $7b
	add c                                            ; $70f2: $81
	halt                                             ; $70f3: $76
	ld b, b                                          ; $70f4: $40
	halt                                             ; $70f5: $76
	ld a, $7f                                        ; $70f6: $3e $7f
	db $fc                                           ; $70f8: $fc
	ld a, a                                          ; $70f9: $7f
	db $f4                                           ; $70fa: $f4
	ld d, [hl]                                       ; $70fb: $56
	ld b, b                                          ; $70fc: $40
	dec sp                                           ; $70fd: $3b
	cp h                                             ; $70fe: $bc
	sbc e                                            ; $70ff: $9b
	nop                                              ; $7100: $00

jr_02a_7101:
	ld e, $0f                                        ; $7101: $1e $0f
	rrca                                             ; $7103: $0f
	add hl, bc                                       ; $7104: $09
	ret nz                                           ; $7105: $c0

	ld l, d                                          ; $7106: $6a
	ld [$c029], sp                                   ; $7107: $08 $29 $c0
	ld l, a                                          ; $710a: $6f
	ret nz                                           ; $710b: $c0

	halt                                             ; $710c: $76
	ld c, c                                          ; $710d: $49
	rst SubAFromDE                                          ; $710e: $df
	rra                                              ; $710f: $1f

jr_02a_7110:
	dec de                                           ; $7110: $1b
	ret nz                                           ; $7111: $c0

	ld d, e                                          ; $7112: $53
	jp nz, $c057                                     ; $7113: $c2 $57 $c0

	jp hl                                            ; $7116: $e9


	sbc l                                            ; $7117: $9d
	ld [bc], a                                       ; $7118: $02
	dec c                                            ; $7119: $0d
	ld a, d                                          ; $711a: $7a
	ld a, b                                          ; $711b: $78
	sbc $1f                                          ; $711c: $de $1f
	rst SubAFromBC                                          ; $711e: $e7
	ld l, a                                          ; $711f: $6f
	xor d                                            ; $7120: $aa
	ld [hl], l                                       ; $7121: $75
	nop                                              ; $7122: $00
	sbc [hl]                                         ; $7123: $9e
	rlca                                             ; $7124: $07
	ld l, e                                          ; $7125: $6b
	ld a, [hl]                                       ; $7126: $7e
	ld b, e                                          ; $7127: $43
	add b                                            ; $7128: $80
	ld a, e                                          ; $7129: $7b
	ld a, [hl]                                       ; $712a: $7e
	ld l, a                                          ; $712b: $6f
	sbc a                                            ; $712c: $9f
	ld e, e                                          ; $712d: $5b
	ld a, [hl]                                       ; $712e: $7e
	ld l, [hl]                                       ; $712f: $6e
	ld a, b                                          ; $7130: $78
	ld h, c                                          ; $7131: $61
	ld [hl], $66                                     ; $7132: $36 $66
	ld bc, $99e7                                     ; $7134: $01 $e7 $99
	ld a, [de]                                       ; $7137: $1a
	inc c                                            ; $7138: $0c
	ccf                                              ; $7139: $3f
	rra                                              ; $713a: $1f
	ccf                                              ; $713b: $3f
	ccf                                              ; $713c: $3f
	push hl                                          ; $713d: $e5
	sbc e                                            ; $713e: $9b
	add b                                            ; $713f: $80
	nop                                              ; $7140: $00
	ret nz                                           ; $7141: $c0

	add b                                            ; $7142: $80
	ld a, e                                          ; $7143: $7b
	db $dd                                           ; $7144: $dd
	sub l                                            ; $7145: $95
	rra                                              ; $7146: $1f
	rrca                                             ; $7147: $0f
	rra                                              ; $7148: $1f
	rrca                                             ; $7149: $0f
	rrca                                             ; $714a: $0f
	xor $cf                                          ; $714b: $ee $cf
	rst SubAFromDE                                          ; $714d: $df
	rst AddAOntoHL                                          ; $714e: $ef
	rst $38                                          ; $714f: $ff
	sbc $7f                                          ; $7150: $de $7f
	sbc [hl]                                         ; $7152: $9e
	ld a, $7b                                        ; $7153: $3e $7b
	db $fd                                           ; $7155: $fd
	sbc e                                            ; $7156: $9b
	rra                                              ; $7157: $1f
	ld a, $3e                                        ; $7158: $3e $3e
	rra                                              ; $715a: $1f
	ld [hl], e                                       ; $715b: $73
	db $eb                                           ; $715c: $eb
	ld a, e                                          ; $715d: $7b
	ei                                               ; $715e: $fb
	ld a, a                                          ; $715f: $7f
	sbc $77                                          ; $7160: $de $77
	cp $df                                           ; $7162: $fe $df
	add b                                            ; $7164: $80
	ccf                                              ; $7165: $3f
	call nz, $fd7f                                   ; $7166: $c4 $7f $fd
	ld [hl], a                                       ; $7169: $77
	and $7f                                          ; $716a: $e6 $7f
	sbc $dd                                          ; $716c: $de $dd
	rra                                              ; $716e: $1f
	ld [hl], a                                       ; $716f: $77
	db $d3                                           ; $7170: $d3
	db $dd                                           ; $7171: $dd
	rrca                                             ; $7172: $0f
	sbc [hl]                                         ; $7173: $9e
	rlca                                             ; $7174: $07
	ld a, e                                          ; $7175: $7b
	db $fd                                           ; $7176: $fd
	rst SubAFromDE                                          ; $7177: $df
	rlca                                             ; $7178: $07
	sbc [hl]                                         ; $7179: $9e
	inc bc                                           ; $717a: $03
	ld a, e                                          ; $717b: $7b
	db $fd                                           ; $717c: $fd
	rst SubAFromDE                                          ; $717d: $df
	inc bc                                           ; $717e: $03
	sbc [hl]                                         ; $717f: $9e
	ld bc, $fe7b                                     ; $7180: $01 $7b $fe
	sbc h                                            ; $7183: $9c
	dec bc                                           ; $7184: $0b
	rlca                                             ; $7185: $07
	add b                                            ; $7186: $80
	call c, Call_02a_7fc0                            ; $7187: $dc $c0 $7f
	ld a, [$c857]                                    ; $718a: $fa $57 $c8
	sbc $80                                          ; $718d: $de $80
	db $db                                           ; $718f: $db
	ret nz                                           ; $7190: $c0

	ld a, e                                          ; $7191: $7b
	xor c                                            ; $7192: $a9
	ld h, e                                          ; $7193: $63
	ret nz                                           ; $7194: $c0

	sbc $1f                                          ; $7195: $de $1f
	sub c                                            ; $7197: $91
	dec sp                                           ; $7198: $3b
	rra                                              ; $7199: $1f
	ccf                                              ; $719a: $3f
	dec de                                           ; $719b: $1b
	dec de                                           ; $719c: $1b
	ccf                                              ; $719d: $3f
	dec e                                            ; $719e: $1d
	ccf                                              ; $719f: $3f
	dec c                                            ; $71a0: $0d
	rra                                              ; $71a1: $1f
	rra                                              ; $71a2: $1f
	dec c                                            ; $71a3: $0d
	rrca                                             ; $71a4: $0f
	dec c                                            ; $71a5: $0d
	sbc $0f                                          ; $71a6: $de $0f
	sbc h                                            ; $71a8: $9c
	rra                                              ; $71a9: $1f
	dec a                                            ; $71aa: $3d
	dec de                                           ; $71ab: $1b
	ld h, a                                          ; $71ac: $67
	ret nz                                           ; $71ad: $c0

	ld a, a                                          ; $71ae: $7f
	sub $77                                          ; $71af: $d6 $77
	cp $73                                           ; $71b1: $fe $73
	call nz, $8873                                   ; $71b3: $c4 $73 $88
	ld [hl], e                                       ; $71b6: $73
	ld l, d                                          ; $71b7: $6a
	sbc $c0                                          ; $71b8: $de $c0
	push hl                                          ; $71ba: $e5
	ld a, [hl]                                       ; $71bb: $7e
	cp $7f                                           ; $71bc: $fe $7f
	xor a                                            ; $71be: $af
	ldh [c], a                                       ; $71bf: $e2
	sbc [hl]                                         ; $71c0: $9e
	add b                                            ; $71c1: $80
	ld a, e                                          ; $71c2: $7b
	ld bc, $fe72                                     ; $71c3: $01 $72 $fe
	sbc e                                            ; $71c6: $9b
	ld c, [hl]                                       ; $71c7: $4e
	adc a                                            ; $71c8: $8f
	xor $cf                                          ; $71c9: $ee $cf
	sbc $ff                                          ; $71cb: $de $ff
	sub l                                            ; $71cd: $95
	ld a, a                                          ; $71ce: $7f
	ccf                                              ; $71cf: $3f
	ld a, a                                          ; $71d0: $7f
	ld a, [hl]                                       ; $71d1: $7e
	ccf                                              ; $71d2: $3f
	rra                                              ; $71d3: $1f
	ld a, $3f                                        ; $71d4: $3e $3f
	ld e, $0e                                        ; $71d6: $1e $0e
	ld a, e                                          ; $71d8: $7b
	ld l, e                                          ; $71d9: $6b
	ld e, a                                          ; $71da: $5f
	nop                                              ; $71db: $00
	ld e, $fe                                        ; $71dc: $1e $fe
	ld l, a                                          ; $71de: $6f
	ld b, b                                          ; $71df: $40
	ld [hl], a                                       ; $71e0: $77
	ld a, $73                                        ; $71e1: $3e $73
	dec sp                                           ; $71e3: $3b
	ld [hl], a                                       ; $71e4: $77
	call z, $1d92                                    ; $71e5: $cc $92 $1d
	add hl, sp                                       ; $71e8: $39
	dec e                                            ; $71e9: $1d
	jr c, jr_02a_7205                                ; $71ea: $38 $19

	ld de, $3838                                     ; $71ec: $11 $38 $38
	jr nc, jr_02a_7261                               ; $71ef: $30 $70

	jr nc, @+$62                                     ; $71f1: $30 $60

	ldh a, [rOCPD]                                   ; $71f3: $f0 $6b
	ld d, $73                                        ; $71f5: $16 $73
	ld a, $77                                        ; $71f7: $3e $77
	dec a                                            ; $71f9: $3d
	ld [hl], a                                       ; $71fa: $77
	ld b, d                                          ; $71fb: $42
	ld l, a                                          ; $71fc: $6f
	db $ec                                           ; $71fd: $ec
	sbc c                                            ; $71fe: $99
	ld h, b                                          ; $71ff: $60
	ret nz                                           ; $7200: $c0

	ld b, b                                          ; $7201: $40
	ldh [$e0], a                                     ; $7202: $e0 $e0
	ld h, b                                          ; $7204: $60

jr_02a_7205:
	ld e, a                                          ; $7205: $5f
	ret nz                                           ; $7206: $c0

	db $db                                           ; $7207: $db
	rrca                                             ; $7208: $0f
	ld a, e                                          ; $7209: $7b
	rst FarCall                                          ; $720a: $f7
	sbc c                                            ; $720b: $99
	dec c                                            ; $720c: $0d
	ld e, $0d                                        ; $720d: $1e $0d
	add hl, bc                                       ; $720f: $09
	inc e                                            ; $7210: $1c
	inc e                                            ; $7211: $1c
	sbc $18                                          ; $7212: $de $18
	sbc e                                            ; $7214: $9b
	db $10                                           ; $7215: $10
	jr c, jr_02a_7290                                ; $7216: $38 $78

	jr nc, jr_02a_7279                               ; $7218: $30 $5f

	ret nz                                           ; $721a: $c0

	ld h, a                                          ; $721b: $67
	inc c                                            ; $721c: $0c
	ld [hl], a                                       ; $721d: $77
	xor $9e                                          ; $721e: $ee $9e
	ldh [$7b], a                                     ; $7220: $e0 $7b
	pop bc                                           ; $7222: $c1
	rst SubAFromDE                                          ; $7223: $df
	ld h, b                                          ; $7224: $60
	sbc e                                            ; $7225: $9b
	jr nz, jr_02a_7298                               ; $7226: $20 $70

	ldh a, [rSVBK]                                   ; $7228: $f0 $70
	ld d, a                                          ; $722a: $57
	ret nz                                           ; $722b: $c0

	ld l, a                                          ; $722c: $6f
	ld a, [hl]                                       ; $722d: $7e
	sbc [hl]                                         ; $722e: $9e
	dec e                                            ; $722f: $1d
	ld a, e                                          ; $7230: $7b
	cp [hl]                                          ; $7231: $be
	sub l                                            ; $7232: $95
	dec e                                            ; $7233: $1d
	inc c                                            ; $7234: $0c
	inc e                                            ; $7235: $1c
	inc c                                            ; $7236: $0c
	jr @+$0e                                         ; $7237: $18 $0c

	ld [$5d1c], sp                                   ; $7239: $08 $1c $5d
	jr c, jr_02a_7295                                ; $723c: $38 $57

	add b                                            ; $723e: $80
	ld l, a                                          ; $723f: $6f
	ld c, [hl]                                       ; $7240: $4e
	ld a, a                                          ; $7241: $7f
	db $fd                                           ; $7242: $fd
	ld a, e                                          ; $7243: $7b
	jp nz, $e09c                                     ; $7244: $c2 $9c $e0

	ld [hl], b                                       ; $7247: $70
	ldh [rPCM34], a                                  ; $7248: $e0 $77
	ld h, c                                          ; $724a: $61
	ld a, a                                          ; $724b: $7f
	or $4e                                           ; $724c: $f6 $4e
	ld b, b                                          ; $724e: $40
	ld l, [hl]                                       ; $724f: $6e
	inc a                                            ; $7250: $3c
	sbc d                                            ; $7251: $9a
	ld b, $0f                                        ; $7252: $06 $0f
	rrca                                             ; $7254: $0f
	ld b, $0e                                        ; $7255: $06 $0e
	ld a, e                                          ; $7257: $7b
	cp $7f                                           ; $7258: $fe $7f
	ld a, [$2f9d]                                    ; $725a: $fa $9d $2f
	ld e, $56                                        ; $725d: $1e $56
	ld b, b                                          ; $725f: $40
	ld l, d                                          ; $7260: $6a

jr_02a_7261:
	inc c                                            ; $7261: $0c
	ld a, a                                          ; $7262: $7f
	jp Jump_02a_497f                                 ; $7263: $c3 $7f $49


	rst SubAFromDE                                          ; $7266: $df
	ldh a, [$df]                                     ; $7267: $f0 $df
	ld h, b                                          ; $7269: $60
	ld [hl], e                                       ; $726a: $73
	xor h                                            ; $726b: $ac
	ld h, e                                          ; $726c: $63
	ret nz                                           ; $726d: $c0

	sbc b                                            ; $726e: $98
	ld c, $0f                                        ; $726f: $0e $0f
	ld c, $07                                        ; $7271: $0e $07
	ld c, $0e                                        ; $7273: $0e $0e
	rlca                                             ; $7275: $07
	ld a, e                                          ; $7276: $7b
	pop bc                                           ; $7277: $c1
	ld [hl], d                                       ; $7278: $72

jr_02a_7279:
	nop                                              ; $7279: $00
	ld [hl], l                                       ; $727a: $75
	cp $7f                                           ; $727b: $fe $7f
	db $fc                                           ; $727d: $fc
	ld a, $00                                        ; $727e: $3e $00
	ld c, [hl]                                       ; $7280: $4e
	cp [hl]                                          ; $7281: $be
	ld a, a                                          ; $7282: $7f
	cp $6e                                           ; $7283: $fe $6e
	add d                                            ; $7285: $82
	ld a, a                                          ; $7286: $7f
	jp $af9d                                         ; $7287: $c3 $9d $af


	rst GetHLinHL                                          ; $728a: $cf
	ld a, c                                          ; $728b: $79
	add c                                            ; $728c: $81
	sbc d                                            ; $728d: $9a
	rst $38                                          ; $728e: $ff
	ld a, [hl]                                       ; $728f: $7e

jr_02a_7290:
	ld a, a                                          ; $7290: $7f
	ccf                                              ; $7291: $3f
	ld a, [hl]                                       ; $7292: $7e
	ld [hl], c                                       ; $7293: $71
	add d                                            ; $7294: $82

jr_02a_7295:
	ld bc, $6580                                     ; $7295: $01 $80 $65

jr_02a_7298:
	add b                                            ; $7298: $80
	rst $38                                          ; $7299: $ff
	ld a, a                                          ; $729a: $7f
	rra                                              ; $729b: $1f
	ld h, [hl]                                       ; $729c: $66

jr_02a_729d:
	db $db                                           ; $729d: $db
	dec e                                            ; $729e: $1d
	ld e, d                                          ; $729f: $5a
	ld a, [hl+]                                      ; $72a0: $2a
	nop                                              ; $72a1: $00
	nop                                              ; $72a2: $00
	ld a, [$5972]                                    ; $72a3: $fa $72 $59
	ld de, $385e                                     ; $72a6: $11 $5e $38
	rra                                              ; $72a9: $1f
	ld d, l                                          ; $72aa: $55
	db $eb                                           ; $72ab: $eb
	ccf                                              ; $72ac: $3f
	ld c, b                                          ; $72ad: $48
	inc sp                                           ; $72ae: $33
	adc a                                            ; $72af: $8f
	ld b, c                                          ; $72b0: $41
	dec hl                                           ; $72b1: $2b
	ld [$201a], sp                                   ; $72b2: $08 $1a $20
	ld a, e                                          ; $72b5: $7b
	dec a                                            ; $72b6: $3d
	ld e, a                                          ; $72b7: $5f
	ld l, d                                          ; $72b8: $6a
	rst $38                                          ; $72b9: $ff
	ld a, a                                          ; $72ba: $7f
	rra                                              ; $72bb: $1f
	ld h, [hl]                                       ; $72bc: $66
	rst SubAFromDE                                          ; $72bd: $df
	ld a, [hl]                                       ; $72be: $7e
	dec l                                            ; $72bf: $2d
	nop                                              ; $72c0: $00
	ld a, [hl]                                       ; $72c1: $7e
	ld e, c                                          ; $72c2: $59
	inc h                                            ; $72c3: $24
	inc e                                            ; $72c4: $1c
	ld c, h                                          ; $72c5: $4c
	ld a, [hl]                                       ; $72c6: $7e
	and l                                            ; $72c7: $a5
	ld l, l                                          ; $72c8: $6d
	ld de, $127f                                     ; $72c9: $11 $7f $12
	nop                                              ; $72cc: $00
	ld a, [de]                                       ; $72cd: $1a
	jr nz, @+$60                                     ; $72ce: $20 $5e

	jr c, jr_02a_731a                                ; $72d0: $38 $48

	inc sp                                           ; $72d2: $33
	db $eb                                           ; $72d3: $eb
	ccf                                              ; $72d4: $3f
	rra                                              ; $72d5: $1f
	ld a, h                                          ; $72d6: $7c
	rra                                              ; $72d7: $1f
	ld a, h                                          ; $72d8: $7c
	rst $38                                          ; $72d9: $ff
	ld a, a                                          ; $72da: $7f
	ld e, a                                          ; $72db: $5f
	ld l, d                                          ; $72dc: $6a
	inc e                                            ; $72dd: $1c
	ld [hl], a                                       ; $72de: $77
	inc h                                            ; $72df: $24
	inc e                                            ; $72e0: $1c
	dec hl                                           ; $72e1: $2b
	ld [$2a5a], sp                                   ; $72e2: $08 $5a $2a
	db $db                                           ; $72e5: $db
	dec e                                            ; $72e6: $1d
	ld e, c                                          ; $72e7: $59
	ld de, $45d1                                     ; $72e8: $11 $d1 $45
	db $eb                                           ; $72eb: $eb
	ccf                                              ; $72ec: $3f
	ld c, b                                          ; $72ed: $48
	inc sp                                           ; $72ee: $33
	or d                                             ; $72ef: $b2
	halt                                             ; $72f0: $76
	ld [$431d], sp                                   ; $72f1: $08 $1d $43
	db $10                                           ; $72f4: $10
	ld a, c                                          ; $72f5: $79
	ld b, d                                          ; $72f6: $42
	nop                                              ; $72f7: $00
	nop                                              ; $72f8: $00
	ld b, e                                          ; $72f9: $43
	adc b                                            ; $72fa: $88
	pop hl                                           ; $72fb: $e1
	add b                                            ; $72fc: $80
	ld h, a                                          ; $72fd: $67
	and b                                            ; $72fe: $a0
	ld h, b                                          ; $72ff: $60
	or b                                             ; $7300: $b0
	ld d, b                                          ; $7301: $50
	or b                                             ; $7302: $b0
	jr c, jr_02a_729d                                ; $7303: $38 $98

	ld [hl], b                                       ; $7305: $70
	or b                                             ; $7306: $b0
	ld [hl], b                                       ; $7307: $70
	cp b                                             ; $7308: $b8
	ld e, b                                          ; $7309: $58
	cp b                                             ; $730a: $b8
	inc a                                            ; $730b: $3c
	inc e                                            ; $730c: $1c
	adc a                                            ; $730d: $8f
	ld c, a                                          ; $730e: $4f
	adc a                                            ; $730f: $8f
	ld b, a                                          ; $7310: $47
	and a                                            ; $7311: $a7
	ld b, a                                          ; $7312: $47
	jp Jump_02a_7f63                                 ; $7313: $c3 $63 $7f


	cp a                                             ; $7316: $bf
	ld a, a                                          ; $7317: $7f
	cp a                                             ; $7318: $bf
	ld e, a                                          ; $7319: $5f

jr_02a_731a:
	cp a                                             ; $731a: $bf
	ccf                                              ; $731b: $3f
	add d                                            ; $731c: $82
	rra                                              ; $731d: $1f
	inc d                                            ; $731e: $14
	sbc b                                            ; $731f: $98
	sub d                                            ; $7320: $92
	or [hl]                                          ; $7321: $b6
	and [hl]                                         ; $7322: $a6
	ld l, $2b                                        ; $7323: $2e $2b
	add hl, hl                                       ; $7325: $29
	inc [hl]                                         ; $7326: $34
	ld a, b                                          ; $7327: $78
	ld [hl], b                                       ; $7328: $70
	ld [hl], b                                       ; $7329: $70
	ld h, b                                          ; $732a: $60
	ldh [$e4], a                                     ; $732b: $e0 $e4
	and $0b                                          ; $732d: $e6 $0b
	add a                                            ; $732f: $87
	adc l                                            ; $7330: $8d
	adc c                                            ; $7331: $89
	sbc c                                            ; $7332: $99
	ld de, $1010                                     ; $7333: $11 $10 $10
	inc [hl]                                         ; $7336: $34
	ld hl, sp-$10                                    ; $7337: $f8 $f0
	ldh a, [$dd]                                     ; $7339: $f0 $dd
	ldh [$80], a                                     ; $733b: $e0 $80
	rst $38                                          ; $733d: $ff
	adc a                                            ; $733e: $8f
	di                                               ; $733f: $f3
	ld sp, hl                                        ; $7340: $f9
	ld a, c                                          ; $7341: $79
	pop af                                           ; $7342: $f1
	db $e3                                           ; $7343: $e3
	add h                                            ; $7344: $84
	add b                                            ; $7345: $80
	adc b                                            ; $7346: $88
	ld [hl], d                                       ; $7347: $72
	ld hl, sp+$38                                    ; $7348: $f8 $38
	jr nc, jr_02a_73ae                               ; $734a: $30 $62

	add h                                            ; $734c: $84
	nop                                              ; $734d: $00
	ld [hl], b                                       ; $734e: $70
	cp h                                             ; $734f: $bc
	ld a, [de]                                       ; $7350: $1a
	ld e, d                                          ; $7351: $5a
	jp nz, $0884                                     ; $7352: $c2 $84 $08

	rst $38                                          ; $7355: $ff
	rst $38                                          ; $7356: $ff
	ld c, a                                          ; $7357: $4f
	rst SubAFromBC                                          ; $7358: $e7
	daa                                              ; $7359: $27
	ccf                                              ; $735a: $3f
	ld a, a                                          ; $735b: $7f
	sub h                                            ; $735c: $94
	db $fc                                           ; $735d: $fc
	inc hl                                           ; $735e: $23
	call Call_02a_6611                               ; $735f: $cd $11 $66
	sbc e                                            ; $7362: $9b
	ld h, h                                          ; $7363: $64
	sbc e                                            ; $7364: $9b
	ld l, a                                          ; $7365: $6f
	ld [hl+], a                                      ; $7366: $22
	call z, $f877                                    ; $7367: $cc $77 $f8
	sbc e                                            ; $736a: $9b
	sbc b                                            ; $736b: $98
	ld h, c                                          ; $736c: $61
	ld bc, $fd01                                     ; $736d: $01 $01 $fd
	sbc l                                            ; $7370: $9d
	inc bc                                           ; $7371: $03

Jump_02a_7372:
	ld c, $67                                        ; $7372: $0e $67
	ldh a, [hDisp1_OBP0]                                     ; $7374: $f0 $93
	ld a, $fc                                        ; $7376: $3e $fc
	db $d3                                           ; $7378: $d3
	db $e4                                           ; $7379: $e4
	sbc c                                            ; $737a: $99
	ld h, [hl]                                       ; $737b: $66
	adc c                                            ; $737c: $89
	ld [hl-], a                                      ; $737d: $32
	ld [bc], a                                       ; $737e: $02

Call_02a_737f:
	inc c                                            ; $737f: $0c
	inc de                                           ; $7380: $13
	ld h, h                                          ; $7381: $64
	ld [hl], a                                       ; $7382: $77
	ld hl, sp-$65                                    ; $7383: $f8 $9b
	db $fc                                           ; $7385: $fc
	ldh a, [$c0]                                     ; $7386: $f0 $c0
	add b                                            ; $7388: $80
	db $fd                                           ; $7389: $fd
	sbc [hl]                                         ; $738a: $9e
	jp nz, $f06b                                     ; $738b: $c2 $6b $f0

	sbc d                                            ; $738e: $9a
	pop bc                                           ; $738f: $c1
	ld b, $19                                        ; $7390: $06 $19
	scf                                              ; $7392: $37
	rst GetHLinHL                                          ; $7393: $cf
	ld a, e                                          ; $7394: $7b
	db $db                                           ; $7395: $db

jr_02a_7396:
	ld a, a                                          ; $7396: $7f
	ld hl, sp-$64                                    ; $7397: $f8 $9c
	jr jr_02a_73cb                                   ; $7399: $18 $30

	pop bc                                           ; $739b: $c1
	ld a, e                                          ; $739c: $7b
	db $db                                           ; $739d: $db
	sbc d                                            ; $739e: $9a
	pop bc                                           ; $739f: $c1
	rlca                                             ; $73a0: $07
	rra                                              ; $73a1: $1f
	ccf                                              ; $73a2: $3f
	cp $7b                                           ; $73a3: $fe $7b
	db $db                                           ; $73a5: $db
	sbc d                                            ; $73a6: $9a
	cp $f9                                           ; $73a7: $fe $f9
	and $c8                                          ; $73a9: $e6 $c8
	ld sp, $db7b                                     ; $73ab: $31 $7b $db

jr_02a_73ae:
	rst SubAFromDE                                          ; $73ae: $df
	rst $38                                          ; $73af: $ff
	sbc c                                            ; $73b0: $99
	cp $f8                                           ; $73b1: $fe $f8
	ldh [hDisp0_SCY], a                                     ; $73b3: $e0 $83
	ld b, $19                                        ; $73b5: $06 $19
	ld l, e                                          ; $73b7: $6b
	ld hl, sp-$62                                    ; $73b8: $f8 $9e
	jr @+$71                                         ; $73ba: $18 $6f

	ld hl, sp+$7f                                    ; $73bc: $f8 $7f
	db $db                                           ; $73be: $db
	call c, $99ff                                    ; $73bf: $dc $ff $99
	db $fc                                           ; $73c2: $fc
	ld sp, hl                                        ; $73c3: $f9
	and $ff                                          ; $73c4: $e6 $ff
	ld l, a                                          ; $73c6: $6f
	rst SubAFromDE                                          ; $73c7: $df
	db $dd                                           ; $73c8: $dd
	rst $38                                          ; $73c9: $ff
	sbc l                                            ; $73ca: $9d

jr_02a_73cb:
	cp $e7                                           ; $73cb: $fe $e7
	ld [hl], e                                       ; $73cd: $73
	db $ed                                           ; $73ce: $ed
	ld a, a                                          ; $73cf: $7f
	db $e4                                           ; $73d0: $e4
	ld c, e                                          ; $73d1: $4b
	ld hl, sp-$6c                                    ; $73d2: $f8 $94
	ld sp, hl                                        ; $73d4: $f9
	rst GetHLinHL                                          ; $73d5: $cf
	db $e4                                           ; $73d6: $e4
	dec h                                            ; $73d7: $25
	xor a                                            ; $73d8: $af
	adc a                                            ; $73d9: $8f
	ld a, a                                          ; $73da: $7f
	ld a, a                                          ; $73db: $7f
	rst $38                                          ; $73dc: $ff
	ld [bc], a                                       ; $73dd: $02
	inc b                                            ; $73de: $04
	sbc $01                                          ; $73df: $de $01
	sbc h                                            ; $73e1: $9c
	inc bc                                           ; $73e2: $03
	dec bc                                           ; $73e3: $0b
	rlca                                             ; $73e4: $07
	ld b, a                                          ; $73e5: $47
	ld hl, sp-$24                                    ; $73e6: $f8 $dc
	rst $38                                          ; $73e8: $ff
	sbc h                                            ; $73e9: $9c
	call z, $bed5                                    ; $73ea: $cc $d5 $be
	jp hl                                            ; $73ed: $e9


	rst SubAFromDE                                          ; $73ee: $df
	ccf                                              ; $73ef: $3f
	sbc $7f                                          ; $73f0: $de $7f
	ld a, e                                          ; $73f2: $7b
	sbc l                                            ; $73f3: $9d
	call c, $dec0                                    ; $73f4: $dc $c0 $de
	add b                                            ; $73f7: $80
	db $db                                           ; $73f8: $db
	ldh [$df], a                                     ; $73f9: $e0 $df
	ret nz                                           ; $73fb: $c0

	ld sp, hl                                        ; $73fc: $f9
	rst SubAFromDE                                          ; $73fd: $df
	jr nz, jr_02a_7396                               ; $73fe: $20 $96

	ld h, b                                          ; $7400: $60
	ld [hl], e                                       ; $7401: $73
	ld [hl], a                                       ; $7402: $77
	ld b, [hl]                                       ; $7403: $46
	ld h, [hl]                                       ; $7404: $66
	xor [hl]                                         ; $7405: $ae
	inc de                                           ; $7406: $13
	inc de                                           ; $7407: $13
	scf                                              ; $7408: $37
	db $dd                                           ; $7409: $dd
	ccf                                              ; $740a: $3f
	sbc e                                            ; $740b: $9b
	ld l, a                                          ; $740c: $6f
	di                                               ; $740d: $f3
	di                                               ; $740e: $f3
	rst FarCall                                          ; $740f: $f7
	db $dd                                           ; $7410: $dd
	rst $38                                          ; $7411: $ff
	sbc e                                            ; $7412: $9b
	rst AddAOntoHL                                          ; $7413: $ef
	inc c                                            ; $7414: $0c
	inc c                                            ; $7415: $0c
	ld [$9efd], sp                                   ; $7416: $08 $fd $9e
	db $10                                           ; $7419: $10
	ld [hl], e                                       ; $741a: $73
	inc de                                           ; $741b: $13
	or $67                                           ; $741c: $f6 $67
	ldh a, [$67]                                     ; $741e: $f0 $67
	ld hl, sp-$79                                    ; $7420: $f8 $87
	ld l, b                                          ; $7422: $68
	pop de                                           ; $7423: $d1
	di                                               ; $7424: $f3
	di                                               ; $7425: $f3
	ld [hl], a                                       ; $7426: $77
	and a                                            ; $7427: $a7
	ld h, a                                          ; $7428: $67
	daa                                              ; $7429: $27
	cp $fc                                           ; $742a: $fe $fc
	ld hl, sp-$08                                    ; $742c: $f8 $f8
	ld a, b                                          ; $742e: $78
	or b                                             ; $742f: $b0
	ld [hl], b                                       ; $7430: $70
	jr nc, jr_02a_7434                               ; $7431: $30 $01

	inc bc                                           ; $7433: $03

jr_02a_7434:
	rlca                                             ; $7434: $07
	rlca                                             ; $7435: $07
	add a                                            ; $7436: $87
	ld c, a                                          ; $7437: $4f
	adc a                                            ; $7438: $8f
	rst GetHLinHL                                          ; $7439: $cf
	db $dd                                           ; $743a: $dd
	rst $38                                          ; $743b: $ff
	ld a, d                                          ; $743c: $7a
	ld e, h                                          ; $743d: $5c
	sbc h                                            ; $743e: $9c
	ccf                                              ; $743f: $3f
	nop                                              ; $7440: $00
	nop                                              ; $7441: $00
	ld a, e                                          ; $7442: $7b
	xor $9c                                          ; $7443: $ee $9c
	ld b, $0d                                        ; $7445: $06 $0d
	ld a, [bc]                                       ; $7447: $0a
	ld [hl], a                                       ; $7448: $77
	add sp, -$65                                     ; $7449: $e8 $9b
	rrca                                             ; $744b: $0f
	ld e, $1d                                        ; $744c: $1e $1d
	ld a, [hl-]                                      ; $744e: $3a
	db $fc                                           ; $744f: $fc
	sbc h                                            ; $7450: $9c
	ld bc, $0502                                     ; $7451: $01 $02 $05
	ld h, a                                          ; $7454: $67
	ldh a, [$80]                                     ; $7455: $f0 $80
	add hl, bc                                       ; $7457: $09
	daa                                              ; $7458: $27
	rst GetHLinHL                                          ; $7459: $cf
	ccf                                              ; $745a: $3f
	ld a, e                                          ; $745b: $7b
	di                                               ; $745c: $f3
	rst JumpTable                                          ; $745d: $c7
	sbc e                                            ; $745e: $9b
	add hl, bc                                       ; $745f: $09
	ld hl, $06c2                                     ; $7460: $21 $c2 $06
	ld a, [bc]                                       ; $7463: $0a
	ld [hl-], a                                      ; $7464: $32
	ld b, l                                          ; $7465: $45
	sbc c                                            ; $7466: $99
	ld c, $3e                                        ; $7467: $0e $3e
	db $fc                                           ; $7469: $fc
	ld hl, sp-$10                                    ; $746a: $f8 $f0
	ret nz                                           ; $746c: $c0

	add d                                            ; $746d: $82
	ld [bc], a                                       ; $746e: $02
	rst FarCall                                          ; $746f: $f7
	reti                                             ; $7470: $d9


	inc sp                                           ; $7471: $33
	rst JumpTable                                          ; $7472: $c7
	adc e                                            ; $7473: $8b
	inc sp                                           ; $7474: $33
	ld b, l                                          ; $7475: $45
	sbc [hl]                                         ; $7476: $9e
	sbc c                                            ; $7477: $99
	ld a, d                                          ; $7478: $7a
	or h                                             ; $7479: $b4
	sbc d                                            ; $747a: $9a
	jp $0906                                         ; $747b: $c3 $06 $09


	scf                                              ; $747e: $37
	rst GetHLinHL                                          ; $747f: $cf
	ld [hl], e                                       ; $7480: $73
	ld hl, sp-$64                                    ; $7481: $f8 $9c
	ld [$c130], sp                                   ; $7483: $08 $30 $c1
	ld [hl], a                                       ; $7486: $77
	ld hl, sp+$7f                                    ; $7487: $f8 $7f
	rst JumpTable                                          ; $7489: $c7
	ld a, [hl]                                       ; $748a: $7e
	sbc l                                            ; $748b: $9d
	ld [hl], d                                       ; $748c: $72
	jp nz, $f69b                                     ; $748d: $c2 $9b $f6

	ret z                                            ; $7490: $c8

	ld sp, $7aff                                     ; $7491: $31 $ff $7a
	db $e4                                           ; $7494: $e4
	ld a, d                                          ; $7495: $7a
	pop de                                           ; $7496: $d1
	sbc [hl]                                         ; $7497: $9e
	ldh a, [$33]                                     ; $7498: $f0 $33
	ld hl, sp-$22                                    ; $749a: $f8 $de
	rst $38                                          ; $749c: $ff
	sbc e                                            ; $749d: $9b
	sbc a                                            ; $749e: $9f
	ret z                                            ; $749f: $c8

	rst GetHLinHL                                          ; $74a0: $cf
	sbc a                                            ; $74a1: $9f
	ld [hl], a                                       ; $74a2: $77
	or $27                                           ; $74a3: $f6 $27
	ld hl, sp+$73                                    ; $74a5: $f8 $73
	call c, $e89c                                    ; $74a7: $dc $9c $e8
	adc $9f                                          ; $74aa: $ce $9f
	ld [hl], a                                       ; $74ac: $77
	ld d, c                                          ; $74ad: $51
	sbc e                                            ; $74ae: $9b
	sbc a                                            ; $74af: $9f
	ldh [$c2], a                                     ; $74b0: $e0 $c2
	adc a                                            ; $74b2: $8f
	dec sp                                           ; $74b3: $3b
	ld hl, sp-$24                                    ; $74b4: $f8 $dc
	rst $38                                          ; $74b6: $ff
	ld a, a                                          ; $74b7: $7f
	ld c, [hl]                                       ; $74b8: $4e
	sbc d                                            ; $74b9: $9a
	ld a, [bc]                                       ; $74ba: $0a
	dec b                                            ; $74bb: $05
	ld [bc], a                                       ; $74bc: $02
	dec b                                            ; $74bd: $05
	ld [bc], a                                       ; $74be: $02
	ld a, e                                          ; $74bf: $7b
	ld b, [hl]                                       ; $74c0: $46
	ld c, a                                          ; $74c1: $4f
	ld hl, sp-$69                                    ; $74c2: $f8 $97
	rst $38                                          ; $74c4: $ff
	rst FarCall                                          ; $74c5: $f7
	rst $38                                          ; $74c6: $ff
	cp a                                             ; $74c7: $bf
	cp a                                             ; $74c8: $bf
	ccf                                              ; $74c9: $3f
	ccf                                              ; $74ca: $3f
	cpl                                              ; $74cb: $2f
	ld [hl], c                                       ; $74cc: $71
	sub e                                            ; $74cd: $93
	ld a, d                                          ; $74ce: $7a
	and a                                            ; $74cf: $a7
	rst SubAFromDE                                          ; $74d0: $df
	ld hl, sp-$25                                    ; $74d1: $f8 $db
	ldh a, [$f9]                                     ; $74d3: $f0 $f9
	rst SubAFromDE                                          ; $74d5: $df
	sbc d                                            ; $74d6: $9a
	sbc $11                                          ; $74d7: $de $11
	sbc $30                                          ; $74d9: $de $30
	sub e                                            ; $74db: $93
	rrca                                             ; $74dc: $0f
	ld c, $0d                                        ; $74dd: $0e $0d
	dec c                                            ; $74df: $0d
	add hl, bc                                       ; $74e0: $09
	add hl, de                                       ; $74e1: $19
	add hl, de                                       ; $74e2: $19
	dec de                                           ; $74e3: $1b
	ld a, a                                          ; $74e4: $7f
	ld a, [hl]                                       ; $74e5: $7e
	db $fd                                           ; $74e6: $fd
	db $fd                                           ; $74e7: $fd
	sbc $f9                                          ; $74e8: $de $f9
	sbc [hl]                                         ; $74ea: $9e
	ei                                               ; $74eb: $fb
	ld a, d                                          ; $74ec: $7a
	db $fc                                           ; $74ed: $fc
	sbc [hl]                                         ; $74ee: $9e
	ld [bc], a                                       ; $74ef: $02
	sbc $06                                          ; $74f0: $de $06
	sbc d                                            ; $74f2: $9a
	inc b                                            ; $74f3: $04
	nop                                              ; $74f4: $00
	and a                                            ; $74f5: $a7
	ld c, a                                          ; $74f6: $4f
	sbc a                                            ; $74f7: $9f
	ld a, d                                          ; $74f8: $7a
	ld e, l                                          ; $74f9: $5d
	sbc e                                            ; $74fa: $9b
	rst $38                                          ; $74fb: $ff
	ld hl, sp-$10                                    ; $74fc: $f8 $f0
	ldh [$6d], a                                     ; $74fe: $e0 $6d
	and a                                            ; $7500: $a7
	sbc h                                            ; $7501: $9c
	rrca                                             ; $7502: $0f
	rra                                              ; $7503: $1f
	ccf                                              ; $7504: $3f
	ld [hl], a                                       ; $7505: $77
	ld l, b                                          ; $7506: $68
	sbc [hl]                                         ; $7507: $9e
	ld hl, sp+$63                                    ; $7508: $f8 $63
	add a                                            ; $750a: $87
	rst $38                                          ; $750b: $ff
	ld a, a                                          ; $750c: $7f
	sub l                                            ; $750d: $95
	sbc d                                            ; $750e: $9a
	inc d                                            ; $750f: $14
	inc [hl]                                         ; $7510: $34
	nop                                              ; $7511: $00
	inc bc                                           ; $7512: $03
	rlca                                             ; $7513: $07
	ld [hl], a                                       ; $7514: $77
	and $df                                          ; $7515: $e6 $df
	cp $7a                                           ; $7517: $fe $7a
	pop hl                                           ; $7519: $e1
	ld a, e                                          ; $751a: $7b
	sub $7f                                          ; $751b: $d6 $7f
	adc b                                            ; $751d: $88
	jp c, $9eff                                      ; $751e: $da $ff $9e

	ld bc, $fedb                                     ; $7521: $01 $db $fe
	ld hl, sp+$6b                                    ; $7524: $f8 $6b
	rst SubAFromBC                                          ; $7526: $e7
	rst SubAFromDE                                          ; $7527: $df
	ld bc, $f86b                                     ; $7528: $01 $6b $f8
	sbc [hl]                                         ; $752b: $9e
	inc bc                                           ; $752c: $03
	db $db                                           ; $752d: $db
	ld bc, $009d                                     ; $752e: $01 $9d $00
	db $fc                                           ; $7531: $fc
	jp c, $f9fe                                      ; $7532: $da $fe $f9

	jp c, Jump_02a_7fff                              ; $7535: $da $ff $7f

	ldh a, [$db]                                     ; $7538: $f0 $db
	cp $9e                                           ; $753a: $fe $9e
	ldh a, [$da]                                     ; $753c: $f0 $da
	ld bc, $b847                                     ; $753e: $01 $47 $b8
	sub e                                            ; $7541: $93
	ldh a, [hLCDCIntHandlerIdx]                                     ; $7542: $f0 $81
	ld a, [hl]                                       ; $7544: $7e
	ld a, [hl]                                       ; $7545: $7e
	ccf                                              ; $7546: $3f
	ccf                                              ; $7547: $3f
	cp a                                             ; $7548: $bf
	ld a, a                                          ; $7549: $7f
	rst $38                                          ; $754a: $ff
	add b                                            ; $754b: $80
	ld bc, $7a41                                     ; $754c: $01 $41 $7a
	dec bc                                           ; $754f: $0b
	sbc b                                            ; $7550: $98
	ld b, b                                          ; $7551: $40
	add b                                            ; $7552: $80
	nop                                              ; $7553: $00
	add b                                            ; $7554: $80
	add b                                            ; $7555: $80
	ld b, b                                          ; $7556: $40
	ld b, b                                          ; $7557: $40
	ld a, e                                          ; $7558: $7b
	ld d, [hl]                                       ; $7559: $56
	sbc [hl]                                         ; $755a: $9e
	add c                                            ; $755b: $81
	ld [hl], d                                       ; $755c: $72
	rra                                              ; $755d: $1f
	ld a, e                                          ; $755e: $7b
	cp a                                             ; $755f: $bf
	ld a, e                                          ; $7560: $7b
	db $fd                                           ; $7561: $fd
	ld a, [hl]                                       ; $7562: $7e
	ld l, l                                          ; $7563: $6d
	sbc l                                            ; $7564: $9d
	pop hl                                           ; $7565: $e1
	add [hl]                                         ; $7566: $86
	ld [hl], a                                       ; $7567: $77
	and b                                            ; $7568: $a0
	ld [hl], a                                       ; $7569: $77
	ld hl, sp-$62                                    ; $756a: $f8 $9e
	db $fd                                           ; $756c: $fd
	ld l, a                                          ; $756d: $6f
	ld hl, sp-$62                                    ; $756e: $f8 $9e
	add a                                            ; $7570: $87
	ld a, e                                          ; $7571: $7b
	ld hl, sp+$71                                    ; $7572: $f8 $71
	ld b, b                                          ; $7574: $40
	sbc d                                            ; $7575: $9a
	db $fd                                           ; $7576: $fd
	pop bc                                           ; $7577: $c1
	rst $38                                          ; $7578: $ff
	rst $38                                          ; $7579: $ff
	ld l, a                                          ; $757a: $6f
	ld a, e                                          ; $757b: $7b
	ret c                                            ; $757c: $d8

	ld a, a                                          ; $757d: $7f
	ld hl, sp-$63                                    ; $757e: $f8 $9d
	db $e3                                           ; $7580: $e3
	rst GetHLinHL                                          ; $7581: $cf
	scf                                              ; $7582: $37
	ld hl, sp-$22                                    ; $7583: $f8 $de
	rst $38                                          ; $7585: $ff
	sbc d                                            ; $7586: $9a
	rst GetHLinHL                                          ; $7587: $cf
	adc $c0                                          ; $7588: $ce $c0
	rst JumpTable                                          ; $758a: $c7
	cp a                                             ; $758b: $bf
	dec de                                           ; $758c: $1b
	ld hl, sp-$24                                    ; $758d: $f8 $dc
	rst $38                                          ; $758f: $ff
	sbc [hl]                                         ; $7590: $9e
	dec hl                                           ; $7591: $2b
	ld l, d                                          ; $7592: $6a
	adc d                                            ; $7593: $8a
	ld b, a                                          ; $7594: $47
	ld hl, sp+$7e                                    ; $7595: $f8 $7e
	ld [$0f96], a                                    ; $7597: $ea $96 $0f
	dec bc                                           ; $759a: $0b
	rrca                                             ; $759b: $0f
	rrca                                             ; $759c: $0f
	rra                                              ; $759d: $1f
	cp a                                             ; $759e: $bf
	jr c, jr_02a_75d9                                ; $759f: $38 $38

	ld a, b                                          ; $75a1: $78
	sbc $70                                          ; $75a2: $de $70
	rst SubAFromDE                                          ; $75a4: $df
	ldh a, [$df]                                     ; $75a5: $f0 $df
	inc a                                            ; $75a7: $3c
	rst SubAFromDE                                          ; $75a8: $df
	ld a, h                                          ; $75a9: $7c
	rst SubAFromDE                                          ; $75aa: $df
	ld a, b                                          ; $75ab: $78
	rst SubAFromDE                                          ; $75ac: $df
	ld hl, sp+$71                                    ; $75ad: $f8 $71
	inc de                                           ; $75af: $13
	ld a, d                                          ; $75b0: $7a
	xor a                                            ; $75b1: $af
	sub [hl]                                         ; $75b2: $96
	db $e4                                           ; $75b3: $e4
	call nz, $ccc4                                   ; $75b4: $c4 $c4 $cc
	call z, $8bcb                                    ; $75b7: $cc $cb $8b
	adc d                                            ; $75ba: $8a
	inc bc                                           ; $75bb: $03
	halt                                             ; $75bc: $76
	sub c                                            ; $75bd: $91
	sbc $07                                          ; $75be: $de $07
	sbc [hl]                                         ; $75c0: $9e
	rra                                              ; $75c1: $1f
	db $dd                                           ; $75c2: $dd
	ld a, $7a                                        ; $75c3: $3e $7a
	adc a                                            ; $75c5: $8f
	ld a, a                                          ; $75c6: $7f
	rra                                              ; $75c7: $1f
	ld d, a                                          ; $75c8: $57
	ld [de], a                                       ; $75c9: $12
	rst $38                                          ; $75ca: $ff
	ld h, b                                          ; $75cb: $60
	rst AddAOntoHL                                          ; $75cc: $ef
	ld c, e                                          ; $75cd: $4b
	ldh a, [$7c]                                     ; $75ce: $f0 $7c
	ld d, e                                          ; $75d0: $53
	sub l                                            ; $75d1: $95
	add b                                            ; $75d2: $80
	ld b, $1e                                        ; $75d3: $06 $1e
	ld a, [hl]                                       ; $75d5: $7e
	cp $fe                                           ; $75d6: $fe $fe
	rlca                                             ; $75d8: $07

jr_02a_75d9:
	rra                                              ; $75d9: $1f
	ld a, h                                          ; $75da: $7c
	ldh a, [rPCM34]                                  ; $75db: $f0 $77
	db $ec                                           ; $75dd: $ec
	ld a, a                                          ; $75de: $7f
	ldh a, [$9c]                                     ; $75df: $f0 $9c
	add d                                            ; $75e1: $82
	ld c, $3e                                        ; $75e2: $0e $3e
	sbc $fe                                          ; $75e4: $de $fe
	ld a, c                                          ; $75e6: $79
	add c                                            ; $75e7: $81
	sbc l                                            ; $75e8: $9d
	or $de                                           ; $75e9: $f6 $de
	ld a, e                                          ; $75eb: $7b
	add sp, -$0b                                     ; $75ec: $e8 $f5
	ld a, [hl]                                       ; $75ee: $7e
	ld e, l                                          ; $75ef: $5d
	sbc l                                            ; $75f0: $9d
	ld e, $3c                                        ; $75f1: $1e $3c
	ld l, d                                          ; $75f3: $6a
	jp nz, $4a7a                                     ; $75f4: $c2 $7a $4a

	ld l, a                                          ; $75f7: $6f
	ldh a, [$d9]                                     ; $75f8: $f0 $d9
	cp $f9                                           ; $75fa: $fe $f9
	pop de                                           ; $75fc: $d1
	cp $d9                                           ; $75fd: $fe $d9
	ld bc, $8862                                     ; $75ff: $01 $62 $88
	jp nc, Jump_02a_7801                             ; $7602: $d2 $01 $78

	cp e                                             ; $7605: $bb
	sub d                                            ; $7606: $92
	rst SubAFromDE                                          ; $7607: $df
	rst AddAOntoHL                                          ; $7608: $ef
	rst FarCall                                          ; $7609: $f7
	ei                                               ; $760a: $fb
	db $fd                                           ; $760b: $fd
	add b                                            ; $760c: $80
	ld b, b                                          ; $760d: $40
	jr nz, @-$6e                                     ; $760e: $20 $90

	ret z                                            ; $7610: $c8

	db $e4                                           ; $7611: $e4
	ldh a, [c]                                       ; $7612: $f2
	ld sp, hl                                        ; $7613: $f9
	ld a, d                                          ; $7614: $7a
	ld a, h                                          ; $7615: $7c
	sbc d                                            ; $7616: $9a
	and b                                            ; $7617: $a0
	ret nc                                           ; $7618: $d0

	add sp, -$0c                                     ; $7619: $e8 $f4
	ld a, [$a274]                                    ; $761b: $fa $74 $a2
	ld [hl], a                                       ; $761e: $77
	rst SubAFromBC                                          ; $761f: $e7
	halt                                             ; $7620: $76
	sbc d                                            ; $7621: $9a
	db $dd                                           ; $7622: $dd
	rst $38                                          ; $7623: $ff
	ld a, [hl]                                       ; $7624: $7e
	add b                                            ; $7625: $80
	db $db                                           ; $7626: $db
	rst $38                                          ; $7627: $ff
	ld a, [hl]                                       ; $7628: $7e
	adc b                                            ; $7629: $88
	ld c, a                                          ; $762a: $4f
	ld hl, sp-$27                                    ; $762b: $f8 $d9
	rst $38                                          ; $762d: $ff
	ld h, l                                          ; $762e: $65
	inc d                                            ; $762f: $14
	ld b, a                                          ; $7630: $47
	ld hl, sp-$28                                    ; $7631: $f8 $d8
	rst $38                                          ; $7633: $ff
	sbc b                                            ; $7634: $98

jr_02a_7635:
	ld e, a                                          ; $7635: $5f
	xor a                                            ; $7636: $af
	ld e, a                                          ; $7637: $5f
	cpl                                              ; $7638: $2f
	rra                                              ; $7639: $1f
	cpl                                              ; $763a: $2f
	ld d, a                                          ; $763b: $57
	ld b, e                                          ; $763c: $43
	ld hl, sp-$26                                    ; $763d: $f8 $da
	rst $38                                          ; $763f: $ff
	ld a, c                                          ; $7640: $79
	ld [de], a                                       ; $7641: $12
	db $fc                                           ; $7642: $fc
	ld b, a                                          ; $7643: $47
	ld hl, sp-$69                                    ; $7644: $f8 $97
	inc bc                                           ; $7646: $03
	inc sp                                           ; $7647: $33
	scf                                              ; $7648: $37
	rra                                              ; $7649: $1f
	ld a, l                                          ; $764a: $7d
	ld a, a                                          ; $764b: $7f
	rra                                              ; $764c: $1f
	rra                                              ; $764d: $1f
	sbc $bc                                          ; $764e: $de $bc
	sbc [hl]                                         ; $7650: $9e
	sbc h                                            ; $7651: $9c
	sbc $78                                          ; $7652: $de $78
	sbc [hl]                                         ; $7654: $9e
	jr c, jr_02a_7635                                ; $7655: $38 $de

	cp [hl]                                          ; $7657: $be
	sbc d                                            ; $7658: $9a
	sbc [hl]                                         ; $7659: $9e
	ld a, [hl]                                       ; $765a: $7e
	ld a, h                                          ; $765b: $7c
	ld a, h                                          ; $765c: $7c

Jump_02a_765d:
	inc a                                            ; $765d: $3c
	sbc $40                                          ; $765e: $de $40
	sbc [hl]                                         ; $7660: $9e
	ld h, b                                          ; $7661: $60
	sbc $80                                          ; $7662: $de $80
	sub [hl]                                         ; $7664: $96
	ret nz                                           ; $7665: $c0

	di                                               ; $7666: $f3
	di                                               ; $7667: $f3
	ldh a, [c]                                       ; $7668: $f2
	ldh a, [c]                                       ; $7669: $f2
	ldh [c], a                                       ; $766a: $e2
	and $e6                                          ; $766b: $e6 $e6
	db $e4                                           ; $766d: $e4
	call c, $de01                                    ; $766e: $dc $01 $de
	inc bc                                           ; $7671: $03
	db $dd                                           ; $7672: $dd
	rrca                                             ; $7673: $0f
	db $dd                                           ; $7674: $dd
	rra                                              ; $7675: $1f
	ld sp, hl                                        ; $7676: $f9
	sbc l                                            ; $7677: $9d
	add b                                            ; $7678: $80
	rra                                              ; $7679: $1f
	ld [hl], e                                       ; $767a: $73
	halt                                             ; $767b: $76
	sbc l                                            ; $767c: $9d
	nop                                              ; $767d: $00
	ldh [rOCPS], a                                   ; $767e: $e0 $6a
	adc a                                            ; $7680: $8f
	sbc l                                            ; $7681: $9d
	db $10                                           ; $7682: $10
	ccf                                              ; $7683: $3f
	call c, Call_02a_7fff                            ; $7684: $dc $ff $7f
	ldh a, [$db]                                     ; $7687: $f0 $db
	rst $38                                          ; $7689: $ff
	sbc d                                            ; $768a: $9a
	nop                                              ; $768b: $00

jr_02a_768c:
	rra                                              ; $768c: $1f
	ld a, $f8                                        ; $768d: $3e $f8
	pop bc                                           ; $768f: $c1
	halt                                             ; $7690: $76
	pop hl                                           ; $7691: $e1
	ld a, e                                          ; $7692: $7b
	jp c, $a97d                                      ; $7693: $da $7d $a9

	ld [hl], b                                       ; $7696: $70
	rst SubAFromDE                                          ; $7697: $df
	ld a, a                                          ; $7698: $7f
	adc l                                            ; $7699: $8d
	sbc e                                            ; $769a: $9b
	rrca                                             ; $769b: $0f
	ld a, a                                          ; $769c: $7f
	rst $38                                          ; $769d: $ff
	cp $75                                           ; $769e: $fe $75
	cp l                                             ; $76a0: $bd
	sbc l                                            ; $76a1: $9d
	rst FarCall                                          ; $76a2: $f7
	cp a                                             ; $76a3: $bf
	ld a, c                                          ; $76a4: $79
	ld b, b                                          ; $76a5: $40
	ld a, c                                          ; $76a6: $79
	sbc h                                            ; $76a7: $9c
	sbc l                                            ; $76a8: $9d
	or $c8                                           ; $76a9: $f6 $c8
	ld [hl], d                                       ; $76ab: $72
	add $7d                                          ; $76ac: $c6 $7d
	push af                                          ; $76ae: $f5
	sbc h                                            ; $76af: $9c
	ccf                                              ; $76b0: $3f
	db $fc                                           ; $76b1: $fc
	ldh a, [$7b]                                     ; $76b2: $f0 $7b
	ldh a, [$7c]                                     ; $76b4: $f0 $7c
	rst SubAFromDE                                          ; $76b6: $df
	sbc h                                            ; $76b7: $9c
	ret nz                                           ; $76b8: $c0

	inc bc                                           ; $76b9: $03
	inc c                                            ; $76ba: $0c
	ld l, l                                          ; $76bb: $6d
	rra                                              ; $76bc: $1f
	sbc l                                            ; $76bd: $9d
	db $fd                                           ; $76be: $fd
	ldh a, [rOCPS]                                   ; $76bf: $f0 $6a
	sbc a                                            ; $76c1: $9f
	ld h, [hl]                                       ; $76c2: $66
	add b                                            ; $76c3: $80
	ld a, a                                          ; $76c4: $7f
	rst FarCall                                          ; $76c5: $f7
	ld l, c                                          ; $76c6: $69
	ld [$e166], sp                                   ; $76c7: $08 $66 $e1
	sbc l                                            ; $76ca: $9d
	ld h, b                                          ; $76cb: $60
	and b                                            ; $76cc: $a0
	ld l, a                                          ; $76cd: $6f
	add a                                            ; $76ce: $87
	adc a                                            ; $76cf: $8f
	ld l, [hl]                                       ; $76d0: $6e
	xor $ee                                          ; $76d1: $ee $ee
	dec e                                            ; $76d3: $1d
	db $fd                                           ; $76d4: $fd
	ei                                               ; $76d5: $fb
	rst SubAFromBC                                          ; $76d6: $e7
	rra                                              ; $76d7: $1f
	add c                                            ; $76d8: $81
	ld b, c                                          ; $76d9: $41
	inc hl                                           ; $76da: $23
	ld [de], a                                       ; $76db: $12
	ld c, $3c                                        ; $76dc: $0e $3c
	ld hl, sp-$20                                    ; $76de: $f8 $e0
	ld [hl], d                                       ; $76e0: $72
	ld [hl], l                                       ; $76e1: $75
	ld a, [hl]                                       ; $76e2: $7e
	ccf                                              ; $76e3: $3f
	ld a, a                                          ; $76e4: $7f
	ld e, b                                          ; $76e5: $58
	ld a, e                                          ; $76e6: $7b
	ld a, h                                          ; $76e7: $7c
	ld l, b                                          ; $76e8: $68
	rst GetHLinHL                                          ; $76e9: $cf

jr_02a_76ea:
	ld [hl], a                                       ; $76ea: $77
	xor l                                            ; $76eb: $ad
	ld a, a                                          ; $76ec: $7f
	db $fc                                           ; $76ed: $fc
	ld h, a                                          ; $76ee: $67
	di                                               ; $76ef: $f3
	ld a, [$609c]                                    ; $76f0: $fa $9c $60
	ld hl, $7b03                                     ; $76f3: $21 $03 $7b
	ld a, [de]                                       ; $76f6: $1a
	adc l                                            ; $76f7: $8d
	ldh [$f8], a                                     ; $76f8: $e0 $f8
	ld l, [hl]                                       ; $76fa: $6e
	ld l, a                                          ; $76fb: $6f
	ld l, a                                          ; $76fc: $6f
	cp b                                             ; $76fd: $b8
	cp a                                             ; $76fe: $bf
	ld e, a                                          ; $76ff: $5f
	daa                                              ; $7700: $27
	jr jr_02a_768c                                   ; $7701: $18 $89

	adc d                                            ; $7703: $8a
	call z, Call_02a_7068                            ; $7704: $cc $68 $70
	inc a                                            ; $7707: $3c
	rra                                              ; $7708: $1f
	rlca                                             ; $7709: $07
	ld [hl], a                                       ; $770a: $77
	dec h                                            ; $770b: $25
	ld a, d                                          ; $770c: $7a
	ld c, h                                          ; $770d: $4c
	sbc [hl]                                         ; $770e: $9e
	jr jr_02a_76ea                                   ; $770f: $18 $d9

	rst $38                                          ; $7711: $ff
	ld h, e                                          ; $7712: $63
	db $10                                           ; $7713: $10
	ld [hl], l                                       ; $7714: $75
	ld l, e                                          ; $7715: $6b
	or $df                                           ; $7716: $f6 $df
	adc a                                            ; $7718: $8f
	rst SubAFromDE                                          ; $7719: $df
	adc l                                            ; $771a: $8d
	add b                                            ; $771b: $80
	adc c                                            ; $771c: $89
	inc bc                                           ; $771d: $03
	inc bc                                           ; $771e: $03

Call_02a_771f:
	ld [bc], a                                       ; $771f: $02
	ld c, a                                          ; $7720: $4f
	ld e, a                                          ; $7721: $5f
	ld a, a                                          ; $7722: $7f
	sbc $de                                          ; $7723: $de $de
	adc $8e                                          ; $7725: $ce $8e
	sbc h                                            ; $7727: $9c
	rst GetHLinHL                                          ; $7728: $cf
	rst SubAFromDE                                          ; $7729: $df
	rst $38                                          ; $772a: $ff
	rst SubAFromDE                                          ; $772b: $df
	rst SubAFromDE                                          ; $772c: $df
	rst GetHLinHL                                          ; $772d: $cf
	adc a                                            ; $772e: $8f
	sbc a                                            ; $772f: $9f
	jr nc, @+$22                                     ; $7730: $30 $20

	nop                                              ; $7732: $00
	jr nz, @+$22                                     ; $7733: $20 $20

	jr nc, jr_02a_77a7                               ; $7735: $30 $70

	ld h, b                                          ; $7737: $60
	db $fc                                           ; $7738: $fc
	db $fc                                           ; $7739: $fc
	ld hl, sp-$23                                    ; $773a: $f8 $dd
	ld sp, hl                                        ; $773c: $f9
	sbc [hl]                                         ; $773d: $9e
	pop af                                           ; $773e: $f1
	ld h, c                                          ; $773f: $61
	sbc h                                            ; $7740: $9c
	ld a, a                                          ; $7741: $7f
	ld l, h                                          ; $7742: $6c
	db $dd                                           ; $7743: $dd
	rlca                                             ; $7744: $07
	sbc [hl]                                         ; $7745: $9e
	rrca                                             ; $7746: $0f
	ld sp, hl                                        ; $7747: $f9
	add a                                            ; $7748: $87
	add hl, bc                                       ; $7749: $09
	inc d                                            ; $774a: $14
	ld a, [hl+]                                      ; $774b: $2a
	ld h, h                                          ; $774c: $64
	ret c                                            ; $774d: $d8

	add sp, -$10                                     ; $774e: $e8 $f0
	ret nz                                           ; $7750: $c0

	jr c, jr_02a_77c7                                ; $7751: $38 $74

	ld [$dbe5], a                                    ; $7753: $ea $e5 $db
	xor $fc                                          ; $7756: $ee $fc
	ld hl, sp+$06                                    ; $7758: $f8 $06
	dec bc                                           ; $775a: $0b
	dec d                                            ; $775b: $15
	ld a, [de]                                       ; $775c: $1a
	inc h                                            ; $775d: $24
	ld de, $0402                                     ; $775e: $11 $02 $04
	ld h, a                                          ; $7761: $67
	ldh a, [$df]                                     ; $7762: $f0 $df
	ld a, a                                          ; $7764: $7f
	rst SubAFromDE                                          ; $7765: $df
	ld a, [hl]                                       ; $7766: $7e
	sbc e                                            ; $7767: $9b
	ld a, h                                          ; $7768: $7c
	ld a, c                                          ; $7769: $79
	ld [hl], a                                       ; $776a: $77
	ld l, a                                          ; $776b: $6f
	ld [hl], a                                       ; $776c: $77
	jr nc, jr_02a_77ee                               ; $776d: $30 $7f

	push bc                                          ; $776f: $c5
	ld a, [hl]                                       ; $7770: $7e
	add l                                            ; $7771: $85
	ld [hl], e                                       ; $7772: $73
	ldh a, [$7c]                                     ; $7773: $f0 $7c
	push de                                          ; $7775: $d5
	sbc [hl]                                         ; $7776: $9e
	ld h, b                                          ; $7777: $60
	ld a, e                                          ; $7778: $7b
	ld hl, sp-$24                                    ; $7779: $f8 $dc
	ld a, a                                          ; $777b: $7f
	sbc [hl]                                         ; $777c: $9e
	add b                                            ; $777d: $80
	add hl, bc                                       ; $777e: $09
	ld h, b                                          ; $777f: $60
	ld l, l                                          ; $7780: $6d
	push de                                          ; $7781: $d5
	rst SubAFromDE                                          ; $7782: $df
	cp a                                             ; $7783: $bf
	ld [hl], a                                       ; $7784: $77
	ld c, b                                          ; $7785: $48
	ld [hl], a                                       ; $7786: $77
	ld b, l                                          ; $7787: $45
	sbc $c0                                          ; $7788: $de $c0
	sbc [hl]                                         ; $778a: $9e
	ld b, b                                          ; $778b: $40
	db $dd                                           ; $778c: $dd
	ret nz                                           ; $778d: $c0

	ld [hl], a                                       ; $778e: $77
	dec [hl]                                         ; $778f: $35

jr_02a_7790:
	db $fd                                           ; $7790: $fd
	add b                                            ; $7791: $80
	ccf                                              ; $7792: $3f
	ld h, e                                          ; $7793: $63
	ld a, h                                          ; $7794: $7c
	ld b, e                                          ; $7795: $43
	ld b, b                                          ; $7796: $40
	ret nz                                           ; $7797: $c0

jr_02a_7798:
	ret z                                            ; $7798: $c8

	adc h                                            ; $7799: $8c
	rra                                              ; $779a: $1f
	inc sp                                           ; $779b: $33
	inc a                                            ; $779c: $3c
	daa                                              ; $779d: $27
	daa                                              ; $779e: $27
	ld l, a                                          ; $779f: $6f
	ld l, a                                          ; $77a0: $6f
	ld c, a                                          ; $77a1: $4f
	rst $38                                          ; $77a2: $ff
	di                                               ; $77a3: $f3
	db $fc                                           ; $77a4: $fc
	rst SubAFromBC                                          ; $77a5: $e7
	rst SubAFromBC                                          ; $77a6: $e7

jr_02a_77a7:
	rst AddAOntoHL                                          ; $77a7: $ef
	rst AddAOntoHL                                          ; $77a8: $ef
	rst GetHLinHL                                          ; $77a9: $cf
	nop                                              ; $77aa: $00
	inc c                                            ; $77ab: $0c
	inc bc                                           ; $77ac: $03
	jr jr_02a_77c7                                   ; $77ad: $18 $18

	db $10                                           ; $77af: $10
	db $10                                           ; $77b0: $10
	sbc [hl]                                         ; $77b1: $9e
	jr nc, jr_02a_7790                               ; $77b2: $30 $dc

	cp $de                                           ; $77b4: $fe $de
	db $fc                                           ; $77b6: $fc
	ld d, c                                          ; $77b7: $51
	jr nz, jr_02a_7798                               ; $77b8: $20 $de

	inc bc                                           ; $77ba: $03
	ld h, e                                          ; $77bb: $63
	ldh a, [$df]                                     ; $77bc: $f0 $df
	ld sp, hl                                        ; $77be: $f9
	rst SubAFromDE                                          ; $77bf: $df
	ld a, [$f29c]                                    ; $77c0: $fa $9c $f2
	db $f4                                           ; $77c3: $f4
	call nz, $287b                                   ; $77c4: $c4 $7b $28

jr_02a_77c7:
	rst SubAFromDE                                          ; $77c7: $df
	ld b, $9a                                        ; $77c8: $06 $9a
	rrca                                             ; $77ca: $0f
	dec c                                            ; $77cb: $0d
	dec e                                            ; $77cc: $1d
	nop                                              ; $77cd: $00
	ld hl, sp+$7b                                    ; $77ce: $f8 $7b
	db $10                                           ; $77d0: $10
	sbc d                                            ; $77d1: $9a
	ldh a, [$f2]                                     ; $77d2: $f0 $f2
	jp nz, $fb03                                     ; $77d4: $c2 $03 $fb

	ld a, d                                          ; $77d7: $7a
	ld e, h                                          ; $77d8: $5c
	ld a, a                                          ; $77d9: $7f
	rst JumpTable                                          ; $77da: $c7
	sbc [hl]                                         ; $77db: $9e
	call c, Call_02a_60d9                            ; $77dc: $dc $d9 $60
	reti                                             ; $77df: $d9


	ld l, [hl]                                       ; $77e0: $6e
	sbc h                                            ; $77e1: $9c
	add c                                            ; $77e2: $81
	adc c                                            ; $77e3: $89
	add c                                            ; $77e4: $81
	call c, $f989                                    ; $77e5: $dc $89 $f9
	reti                                             ; $77e8: $d9


	rst $38                                          ; $77e9: $ff
	ld [hl], e                                       ; $77ea: $73
	ld h, c                                          ; $77eb: $61
	ld [hl], l                                       ; $77ec: $75
	adc a                                            ; $77ed: $8f

jr_02a_77ee:
	jp c, $f9c0                                      ; $77ee: $da $c0 $f9

	add a                                            ; $77f1: $87
	db $e3                                           ; $77f2: $e3
	rst SubAFromBC                                          ; $77f3: $e7
	rst JumpTable                                          ; $77f4: $c7
	adc l                                            ; $77f5: $8d
	dec c                                            ; $77f6: $0d
	add hl, de                                       ; $77f7: $19
	add hl, de                                       ; $77f8: $19
	dec sp                                           ; $77f9: $3b
	ld bc, $0300                                     ; $77fa: $01 $00 $03
	dec b                                            ; $77fd: $05
	dec b                                            ; $77fe: $05
	add hl, bc                                       ; $77ff: $09
	add hl, bc                                       ; $7800: $09

Jump_02a_7801:
	dec de                                           ; $7801: $1b
	rra                                              ; $7802: $1f
	rra                                              ; $7803: $1f
	ccf                                              ; $7804: $3f
	ld a, l                                          ; $7805: $7d
	db $fd                                           ; $7806: $fd
	ld sp, hl                                        ; $7807: $f9
	ld sp, hl                                        ; $7808: $f9
	ei                                               ; $7809: $fb
	cp $df                                           ; $780a: $fe $df
	ld [bc], a                                       ; $780c: $02
	rst SubAFromDE                                          ; $780d: $df
	ld b, $9e                                        ; $780e: $06 $9e
	inc b                                            ; $7810: $04
	ld c, h                                          ; $7811: $4c
	adc c                                            ; $7812: $89
	ld e, e                                          ; $7813: $5b
	ld l, b                                          ; $7814: $68
	ld l, e                                          ; $7815: $6b
	ldh a, [rLY]                                     ; $7816: $f0 $44
	ld h, b                                          ; $7818: $60
	ld b, h                                          ; $7819: $44
	ld e, b                                          ; $781a: $58
	ld a, l                                          ; $781b: $7d
	ld l, d                                          ; $781c: $6a
	db $db                                           ; $781d: $db
	db $fc                                           ; $781e: $fc
	ld h, d                                          ; $781f: $62
	ld h, b                                          ; $7820: $60
	ld h, a                                          ; $7821: $67
	ld l, b                                          ; $7822: $68
	jp c, $92fc                                      ; $7823: $da $fc $92

	pop hl                                           ; $7826: $e1
	ld hl, sp+$7e                                    ; $7827: $f8 $7e
	ld e, $0f                                        ; $7829: $1e $0f
	rlca                                             ; $782b: $07
	inc bc                                           ; $782c: $03
	inc bc                                           ; $782d: $03
	pop hl                                           ; $782e: $e1
	jr c, jr_02a_784f                                ; $782f: $38 $1e

	ld c, $03                                        ; $7831: $0e $03
	ld a, e                                          ; $7833: $7b
	cp d                                             ; $7834: $ba
	ld l, e                                          ; $7835: $6b
	ldh a, [$80]                                     ; $7836: $f0 $80
	ld bc, $c71e                                     ; $7838: $01 $1e $c7
	ld h, c                                          ; $783b: $61
	ld de, $060c                                     ; $783c: $11 $0c $06
	inc bc                                           ; $783f: $03
	inc bc                                           ; $7840: $03
	db $fc                                           ; $7841: $fc
	db $fc                                           ; $7842: $fc
	ld a, h                                          ; $7843: $7c
	inc a                                            ; $7844: $3c
	inc a                                            ; $7845: $3c
	sbc h                                            ; $7846: $9c
	call z, $80e4                                    ; $7847: $cc $e4 $80
	ret nz                                           ; $784a: $c0

	ld b, b                                          ; $784b: $40
	nop                                              ; $784c: $00
	jr nz, @-$7e                                     ; $784d: $20 $80

jr_02a_784f:
	ret z                                            ; $784f: $c8

	ld h, h                                          ; $7850: $64
	ret nz                                           ; $7851: $c0

	ldh [$60], a                                     ; $7852: $e0 $60
	jr nc, jr_02a_788e                               ; $7854: $30 $38

	sbc b                                            ; $7856: $98
	ld a, a                                          ; $7857: $7f
	ldh a, [$7f]                                     ; $7858: $f0 $7f
	ld [$bc99], a                                    ; $785a: $ea $99 $bc
	db $fc                                           ; $785d: $fc
	call c, $347c                                    ; $785e: $dc $7c $34
	sbc b                                            ; $7861: $98
	ld b, e                                          ; $7862: $43
	nop                                              ; $7863: $00
	sbc $81                                          ; $7864: $de $81
	ld a, [hl]                                       ; $7866: $7e
	db $fd                                           ; $7867: $fd
	ld a, a                                          ; $7868: $7f
	db $fd                                           ; $7869: $fd
	ld sp, hl                                        ; $786a: $f9
	reti                                             ; $786b: $d9


	db $fc                                           ; $786c: $fc
	pop af                                           ; $786d: $f1
	reti                                             ; $786e: $d9


	db $fc                                           ; $786f: $fc
	ld b, l                                          ; $7870: $45
	add b                                            ; $7871: $80
	ei                                               ; $7872: $fb
	ld e, [hl]                                       ; $7873: $5e
	ldh [$d9], a                                     ; $7874: $e0 $d9
	ld a, a                                          ; $7876: $7f
	pop af                                           ; $7877: $f1
	reti                                             ; $7878: $d9


	ld a, a                                          ; $7879: $7f
	db $db                                           ; $787a: $db
	rst $38                                          ; $787b: $ff
	sbc l                                            ; $787c: $9d
	ei                                               ; $787d: $fb
	ld sp, hl                                        ; $787e: $f9
	di                                               ; $787f: $f3
	sbc [hl]                                         ; $7880: $9e

jr_02a_7881:
	inc b                                            ; $7881: $04
	ld [hl], l                                       ; $7882: $75
	jr nz, jr_02a_7881                               ; $7883: $20 $fc

	rst SubAFromDE                                          ; $7885: $df
	ccf                                              ; $7886: $3f

jr_02a_7887:
	ld l, a                                          ; $7887: $6f
	db $dd                                           ; $7888: $dd
	rst SubAFromDE                                          ; $7889: $df
	ld b, b                                          ; $788a: $40
	ld c, l                                          ; $788b: $4d
	jr z, jr_02a_7887                                ; $788c: $28 $f9

jr_02a_788e:
	rst SubAFromDE                                          ; $788e: $df
	rrca                                             ; $788f: $0f

jr_02a_7890:
	sbc [hl]                                         ; $7890: $9e
	rra                                              ; $7891: $1f
	call c, $dfff                                    ; $7892: $dc $ff $df
	db $10                                           ; $7895: $10
	ld [hl], h                                       ; $7896: $74
	xor l                                            ; $7897: $ad
	cp $7d                                           ; $7898: $fe $7d
	jr z, jr_02a_7890                                ; $789a: $28 $f4

	sub b                                            ; $789c: $90
	sub b                                            ; $789d: $90
	ld [hl-], a                                      ; $789e: $32
	ld [hl+], a                                      ; $789f: $22
	ld b, a                                          ; $78a0: $47
	rst GetHLinHL                                          ; $78a1: $cf
	adc a                                            ; $78a2: $8f
	rra                                              ; $78a3: $1f
	rra                                              ; $78a4: $1f
	or [hl]                                          ; $78a5: $b6
	ld d, l                                          ; $78a6: $55
	ld h, l                                          ; $78a7: $65
	ret z                                            ; $78a8: $c8

	ret nc                                           ; $78a9: $d0

	sub b                                            ; $78aa: $90
	jr nz, jr_02a_78f8                               ; $78ab: $20 $4b

	ldh [c], a                                       ; $78ad: $e2
	ld a, e                                          ; $78ae: $7b
	ret nz                                           ; $78af: $c0

	ld l, a                                          ; $78b0: $6f
	pop bc                                           ; $78b1: $c1
	ld a, a                                          ; $78b2: $7f
	ret nz                                           ; $78b3: $c0

	cpl                                              ; $78b4: $2f
	pop bc                                           ; $78b5: $c1
	sbc d                                            ; $78b6: $9a
	nop                                              ; $78b7: $00
	jr c, jr_02a_78ed                                ; $78b8: $38 $33

	ld h, e                                          ; $78ba: $63
	rlca                                             ; $78bb: $07
	ld [hl], a                                       ; $78bc: $77
	sbc h                                            ; $78bd: $9c
	sbc d                                            ; $78be: $9a
	ld c, a                                          ; $78bf: $4f
	ld d, h                                          ; $78c0: $54
	ld h, h                                          ; $78c1: $64
	nop                                              ; $78c2: $00
	nop                                              ; $78c3: $00
	ld l, a                                          ; $78c4: $6f
	db $db                                           ; $78c5: $db
	sbc l                                            ; $78c6: $9d
	ld [$f610], sp                                   ; $78c7: $08 $10 $f6
	ld a, c                                          ; $78ca: $79
	cp d                                             ; $78cb: $ba
	sub d                                            ; $78cc: $92
	ld hl, sp-$10                                    ; $78cd: $f8 $f0
	ldh a, [$e2]                                     ; $78cf: $f0 $e2
	rst JumpTable                                          ; $78d1: $c7
	ld bc, $0602                                     ; $78d2: $01 $02 $06
	ld [$3612], sp                                   ; $78d5: $08 $12 $36
	ld h, l                                          ; $78d8: $65
	ret z                                            ; $78d9: $c8

	halt                                             ; $78da: $76
	ld [$049d], sp                                   ; $78db: $08 $9d $04
	ld bc, $dd5f                                     ; $78de: $01 $5f $dd
	sbc l                                            ; $78e1: $9d
	rra                                              ; $78e2: $1f
	dec c                                            ; $78e3: $0d
	db $dd                                           ; $78e4: $dd
	call z, $8c9b                                    ; $78e5: $cc $9b $8c
	sbc b                                            ; $78e8: $98
	nop                                              ; $78e9: $00
	inc d                                            ; $78ea: $14
	db $dd                                           ; $78eb: $dd
	ld d, h                                          ; $78ec: $54

jr_02a_78ed:
	sbc h                                            ; $78ed: $9c
	sub h                                            ; $78ee: $94
	xor b                                            ; $78ef: $a8
	jr nz, @+$71                                     ; $78f0: $20 $6f

	add hl, sp                                       ; $78f2: $39
	sbc [hl]                                         ; $78f3: $9e
	ld [bc], a                                       ; $78f4: $02
	ld sp, hl                                        ; $78f5: $f9
	sbc h                                            ; $78f6: $9c
	and b                                            ; $78f7: $a0

jr_02a_78f8:
	sub c                                            ; $78f8: $91
	db $e3                                           ; $78f9: $e3
	call c, $9cff                                    ; $78fa: $dc $ff $9c
	ld hl, $1c72                                     ; $78fd: $21 $72 $1c
	db $fc                                           ; $7900: $fc
	ld a, [hl]                                       ; $7901: $7e
	ld e, d                                          ; $7902: $5a
	di                                               ; $7903: $f3
	sbc $e7                                          ; $7904: $de $e7
	sbc $c7                                          ; $7906: $de $c7
	sbc l                                            ; $7908: $9d
	rst GetHLinHL                                          ; $7909: $cf
	rrca                                             ; $790a: $0f
	sbc $28                                          ; $790b: $de $28
	sbc $48                                          ; $790d: $de $48
	sbc [hl]                                         ; $790f: $9e
	ret nc                                           ; $7910: $d0

	ld l, a                                          ; $7911: $6f
	xor b                                            ; $7912: $a8
	ld a, a                                          ; $7913: $7f

jr_02a_7914:
	ld a, [$5963]                                    ; $7914: $fa $63 $59
	rst SubAFromDE                                          ; $7917: $df
	rst $38                                          ; $7918: $ff
	sub c                                            ; $7919: $91
	db $e3                                           ; $791a: $e3
	adc c                                            ; $791b: $89
	sbc c                                            ; $791c: $99
	adc b                                            ; $791d: $88
	db $10                                           ; $791e: $10
	jr nc, jr_02a_7921                               ; $791f: $30 $00

jr_02a_7921:
	jr c, jr_02a_7983                                ; $7921: $38 $60

	adc b                                            ; $7923: $88
	adc b                                            ; $7924: $88
	sbc b                                            ; $7925: $98
	jr nz, jr_02a_796a                               ; $7926: $20 $42

	ld l, a                                          ; $7928: $6f
	dec sp                                           ; $7929: $3b
	ld e, a                                          ; $792a: $5f
	cp d                                             ; $792b: $ba
	ld l, d                                          ; $792c: $6a
	sbc a                                            ; $792d: $9f
	ld a, l                                          ; $792e: $7d
	ld b, b                                          ; $792f: $40
	ld l, c                                          ; $7930: $69
	xor e                                            ; $7931: $ab
	ld a, [hl-]                                      ; $7932: $3a
	jr c, jr_02a_7914                                ; $7933: $38 $df

	db $fd                                           ; $7935: $fd
	ld a, h                                          ; $7936: $7c
	db $f4                                           ; $7937: $f4
	sbc e                                            ; $7938: $9b
	ld a, a                                          ; $7939: $7f
	inc b                                            ; $793a: $04
	dec b                                            ; $793b: $05
	dec b                                            ; $793c: $05
	ld a, c                                          ; $793d: $79
	ld d, d                                          ; $793e: $52
	sbc [hl]                                         ; $793f: $9e
	add b                                            ; $7940: $80
	ld b, a                                          ; $7941: $47
	add c                                            ; $7942: $81
	ld a, c                                          ; $7943: $79
	sbc b                                            ; $7944: $98
	sbc d                                            ; $7945: $9a
	ld a, [$fcfc]                                    ; $7946: $fa $fc $fc
	inc e                                            ; $7949: $1c
	inc b                                            ; $794a: $04
	ld a, e                                          ; $794b: $7b
	add sp, $7f                                      ; $794c: $e8 $7f
	add hl, hl                                       ; $794e: $29
	sbc $05                                          ; $794f: $de $05
	sub a                                            ; $7951: $97
	ld b, c                                          ; $7952: $41
	nop                                              ; $7953: $00
	inc bc                                           ; $7954: $03
	inc b                                            ; $7955: $04
	ld bc, $2000                                     ; $7956: $01 $00 $20
	ld [$7362], sp                                   ; $7959: $08 $62 $73
	db $dd                                           ; $795c: $dd
	rst $38                                          ; $795d: $ff
	sbc [hl]                                         ; $795e: $9e
	rst FarCall                                          ; $795f: $f7
	sbc $e0                                          ; $7960: $de $e0
	db $fd                                           ; $7962: $fd
	sbc e                                            ; $7963: $9b
	jr nc, jr_02a_7986                               ; $7964: $30 $20

	jr nz, jr_02a_798f                               ; $7966: $20 $27

	ld [hl], d                                       ; $7968: $72
	rst SubAFromDE                                          ; $7969: $df

jr_02a_796a:
	ld [hl], e                                       ; $796a: $73
	db $fd                                           ; $796b: $fd
	ei                                               ; $796c: $fb
	rst SubAFromDE                                          ; $796d: $df
	cp $7e                                           ; $796e: $fe $7e
	sbc $df                                          ; $7970: $de $df
	db $fc                                           ; $7972: $fc
	rst SubAFromDE                                          ; $7973: $df
	ld hl, sp+$7b                                    ; $7974: $f8 $7b
	add e                                            ; $7976: $83
	ld a, a                                          ; $7977: $7f
	cp a                                             ; $7978: $bf
	sbc l                                            ; $7979: $9d
	inc b                                            ; $797a: $04
	ld [$e85b], sp                                   ; $797b: $08 $5b $e8

jr_02a_797e:
	ld a, a                                          ; $797e: $7f
	jp hl                                            ; $797f: $e9


	rst SubAFromDE                                          ; $7980: $df
	ld hl, sp-$21                                    ; $7981: $f8 $df

jr_02a_7983:
	ldh a, [rIE]                                     ; $7983: $f0 $ff
	sbc e                                            ; $7985: $9b

jr_02a_7986:
	add b                                            ; $7986: $80

jr_02a_7987:
	ld h, b                                          ; $7987: $60
	jr jr_02a_7990                                   ; $7988: $18 $06

	ld [hl], a                                       ; $798a: $77
	ld l, c                                          ; $798b: $69
	ld h, a                                          ; $798c: $67
	ld hl, sp+$35                                    ; $798d: $f8 $35

jr_02a_798f:
	ret c                                            ; $798f: $d8

jr_02a_7990:
	ld a, a                                          ; $7990: $7f
	ld h, b                                          ; $7991: $60
	ei                                               ; $7992: $fb
	ld a, a                                          ; $7993: $7f
	call c, $c049                                    ; $7994: $dc $49 $c0
	sbc [hl]                                         ; $7997: $9e
	rra                                              ; $7998: $1f
	inc [hl]                                         ; $7999: $34
	call nz, $c064                                   ; $799a: $c4 $64 $c0
	db $fd                                           ; $799d: $fd
	reti                                             ; $799e: $d9


jr_02a_799f:
	ldh a, [$d9]                                     ; $799f: $f0 $d9
	db $10                                           ; $79a1: $10
	ld sp, hl                                        ; $79a2: $f9
	reti                                             ; $79a3: $d9


	ldh [$d1], a                                     ; $79a4: $e0 $d1
	rst $38                                          ; $79a6: $ff
	ld d, a                                          ; $79a7: $57
	jr z, jr_02a_7987                                ; $79a8: $28 $dd

	rst $38                                          ; $79aa: $ff
	sub e                                            ; $79ab: $93
	pop af                                           ; $79ac: $f1
	ldh a, [$f8]                                     ; $79ad: $f0 $f8
	ld hl, sp-$04                                    ; $79af: $f8 $fc
	db $fc                                           ; $79b1: $fc
	cp $fe                                           ; $79b2: $fe $fe
	ret nz                                           ; $79b4: $c0

	ret nz                                           ; $79b5: $c0

	ldh [$e0], a                                     ; $79b6: $e0 $e0
	ld [hl], a                                       ; $79b8: $77
	push af                                          ; $79b9: $f5
	rst SubAFromDE                                          ; $79ba: $df
	ccf                                              ; $79bb: $3f
	rst SubAFromDE                                          ; $79bc: $df
	rra                                              ; $79bd: $1f
	ld a, h                                          ; $79be: $7c
	and b                                            ; $79bf: $a0
	ld a, h                                          ; $79c0: $7c
	sbc a                                            ; $79c1: $9f
	reti                                             ; $79c2: $d9


	rst $38                                          ; $79c3: $ff
	ld a, e                                          ; $79c4: $7b
	jr nz, jr_02a_7a46                               ; $79c5: $20 $7f

	ld h, e                                          ; $79c7: $63
	sbc l                                            ; $79c8: $9d
	ld a, a                                          ; $79c9: $7f
	ccf                                              ; $79ca: $3f
	ld h, c                                          ; $79cb: $61
	jr nz, jr_02a_799f                               ; $79cc: $20 $d1

	rst $38                                          ; $79ce: $ff
	db $dd                                           ; $79cf: $dd
	ld a, a                                          ; $79d0: $7f
	sbc [hl]                                         ; $79d1: $9e
	ccf                                              ; $79d2: $3f
	sbc $bf                                          ; $79d3: $de $bf
	daa                                              ; $79d5: $27
	ldh [$9e], a                                     ; $79d6: $e0 $9e
	ld bc, $fede                                     ; $79d8: $01 $de $fe
	ld [hl], e                                       ; $79db: $73
	adc c                                            ; $79dc: $89
	ld c, e                                          ; $79dd: $4b
	jr c, jr_02a_797e                                ; $79de: $38 $9e

	ld bc, $716b                                     ; $79e0: $01 $6b $71
	sbc [hl]                                         ; $79e3: $9e
	cp $da                                           ; $79e4: $fe $da
	ld bc, $cf76                                     ; $79e6: $01 $76 $cf
	db $dd                                           ; $79e9: $dd
	cp $62                                           ; $79ea: $fe $62
	ret nz                                           ; $79ec: $c0

	jp c, $9eff                                      ; $79ed: $da $ff $9e

	ld [bc], a                                       ; $79f0: $02
	ld [hl], e                                       ; $79f1: $73
	pop bc                                           ; $79f2: $c1
	ld a, e                                          ; $79f3: $7b
	cp b                                             ; $79f4: $b8
	ld c, d                                          ; $79f5: $4a
	ld sp, hl                                        ; $79f6: $f9
	ld h, a                                          ; $79f7: $67
	ld e, a                                          ; $79f8: $5f
	adc h                                            ; $79f9: $8c
	rst SubAFromBC                                          ; $79fa: $e7
	ld [hl], e                                       ; $79fb: $73
	dec sp                                           ; $79fc: $3b
	add hl, de                                       ; $79fd: $19
	dec c                                            ; $79fe: $0d
	dec c                                            ; $79ff: $0d
	ld b, $03                                        ; $7a00: $06 $03
	inc h                                            ; $7a02: $24
	sub b                                            ; $7a03: $90
	ret z                                            ; $7a04: $c8

	pop hl                                           ; $7a05: $e1
	push af                                          ; $7a06: $f5
	pop af                                           ; $7a07: $f1
	ld hl, sp-$03                                    ; $7a08: $f8 $fd

jr_02a_7a0a:
	and $72                                          ; $7a0a: $e6 $72
	ld a, [hl-]                                      ; $7a0c: $3a
	ld [hl], e                                       ; $7a0d: $73
	ldh a, [$9a]                                     ; $7a0e: $f0 $9a
	db $db                                           ; $7a10: $db
	rst AddAOntoHL                                          ; $7a11: $ef
	rst FarCall                                          ; $7a12: $f7
	cp $fa                                           ; $7a13: $fe $fa
	ld a, d                                          ; $7a15: $7a
	ld h, h                                          ; $7a16: $64
	ld l, e                                          ; $7a17: $6b
	add b                                            ; $7a18: $80
	ld a, [hl]                                       ; $7a19: $7e
	jr nc, @+$75                                     ; $7a1a: $30 $73

jr_02a_7a1c:
	cp a                                             ; $7a1c: $bf
	rst SubAFromDE                                          ; $7a1d: $df
	add b                                            ; $7a1e: $80
	ld l, d                                          ; $7a1f: $6a
	sbc b                                            ; $7a20: $98
	sbc [hl]                                         ; $7a21: $9e
	add b                                            ; $7a22: $80
	ld l, a                                          ; $7a23: $6f
	add b                                            ; $7a24: $80
	ld a, a                                          ; $7a25: $7f
	add hl, hl                                       ; $7a26: $29
	rst SubAFromDE                                          ; $7a27: $df
	rst $38                                          ; $7a28: $ff
	call c, Call_02a_7b3f                            ; $7a29: $dc $3f $7b
	jr nz, jr_02a_7a0a                               ; $7a2c: $20 $dc

	ld b, b                                          ; $7a2e: $40
	ld b, b                                          ; $7a2f: $40
	ld a, e                                          ; $7a30: $7b
	rst SubAFromDE                                          ; $7a31: $df
	rst $38                                          ; $7a32: $ff
	sbc d                                            ; $7a33: $9a
	db $fd                                           ; $7a34: $fd
	cp $fe                                           ; $7a35: $fe $fe
	ld a, [$7bfa]                                    ; $7a37: $fa $fa $7b
	ld l, b                                          ; $7a3a: $68
	ld a, [hl]                                       ; $7a3b: $7e
	jr nz, jr_02a_7a1c                               ; $7a3c: $20 $de

	ld [bc], a                                       ; $7a3e: $02
	sbc [hl]                                         ; $7a3f: $9e
	ld b, $71                                        ; $7a40: $06 $71
	dec h                                            ; $7a42: $25
	rst SubAFromDE                                          ; $7a43: $df
	inc b                                            ; $7a44: $04
	pop af                                           ; $7a45: $f1

jr_02a_7a46:
	sbc [hl]                                         ; $7a46: $9e
	add b                                            ; $7a47: $80
	ld h, [hl]                                       ; $7a48: $66
	pop af                                           ; $7a49: $f1
	ld [hl+], a                                      ; $7a4a: $22
	ret c                                            ; $7a4b: $d8

	sbc e                                            ; $7a4c: $9b
	rst AddAOntoHL                                          ; $7a4d: $ef
	ld d, l                                          ; $7a4e: $55
	ld a, [hl+]                                      ; $7a4f: $2a
	ld d, l                                          ; $7a50: $55
	ld a, c                                          ; $7a51: $79
	ldh [c], a                                       ; $7a52: $e2
	ld b, a                                          ; $7a53: $47
	ld hl, sp-$27                                    ; $7a54: $f8 $d9
	rst $38                                          ; $7a56: $ff
	sbc l                                            ; $7a57: $9d
	dec d                                            ; $7a58: $15
	ld [bc], a                                       ; $7a59: $02
	ld l, a                                          ; $7a5a: $6f
	jr nz, @+$49                                     ; $7a5b: $20 $47

	ld hl, sp+$46                                    ; $7a5d: $f8 $46
	ld c, b                                          ; $7a5f: $48
	pop af                                           ; $7a60: $f1
	sbc [hl]                                         ; $7a61: $9e
	jr nz, jr_02a_7adf                               ; $7a62: $20 $7b

	ld b, h                                          ; $7a64: $44
	sbc $ff                                          ; $7a65: $de $ff
	sbc [hl]                                         ; $7a67: $9e
	rra                                              ; $7a68: $1f
	sbc $c0                                          ; $7a69: $de $c0
	ld d, e                                          ; $7a6b: $53
	ld b, h                                          ; $7a6c: $44
	ld l, d                                          ; $7a6d: $6a
	rlca                                             ; $7a6e: $07
	ld a, h                                          ; $7a6f: $7c
	daa                                              ; $7a70: $27
	ld d, a                                          ; $7a71: $57
	ld a, h                                          ; $7a72: $7c
	sbc h                                            ; $7a73: $9c
	cp a                                             ; $7a74: $bf

Jump_02a_7a75:
	ld e, a                                          ; $7a75: $5f
	dec hl                                           ; $7a76: $2b
	scf                                              ; $7a77: $37
	ld hl, sp-$26                                    ; $7a78: $f8 $da
	rst $38                                          ; $7a7a: $ff
	sbc e                                            ; $7a7b: $9b
	xor a                                            ; $7a7c: $af
	ld d, l                                          ; $7a7d: $55
	xor d                                            ; $7a7e: $aa
	dec b                                            ; $7a7f: $05
	ld [hl], a                                       ; $7a80: $77
	sub b                                            ; $7a81: $90
	ld b, a                                          ; $7a82: $47
	ld hl, sp-$25                                    ; $7a83: $f8 $db
	rst $38                                          ; $7a85: $ff
	ld a, a                                          ; $7a86: $7f
	ld d, b                                          ; $7a87: $50
	sbc l                                            ; $7a88: $9d
	xor d                                            ; $7a89: $aa
	ld d, l                                          ; $7a8a: $55
	ld [hl], a                                       ; $7a8b: $77
	ld [hl], b                                       ; $7a8c: $70
	ld c, e                                          ; $7a8d: $4b
	ld hl, sp-$63                                    ; $7a8e: $f8 $9d
	cp a                                             ; $7a90: $bf
	adc a                                            ; $7a91: $8f
	ld l, h                                          ; $7a92: $6c
	ld a, [hl]                                       ; $7a93: $7e
	sub a                                            ; $7a94: $97
	add a                                            ; $7a95: $87
	adc d                                            ; $7a96: $8a
	rla                                              ; $7a97: $17
	ld a, [bc]                                       ; $7a98: $0a
	ld [hl], l                                       ; $7a99: $75
	xor b                                            ; $7a9a: $a8
	ld d, b                                          ; $7a9b: $50
	nop                                              ; $7a9c: $00
	ld b, a                                          ; $7a9d: $47
	ld hl, sp-$65                                    ; $7a9e: $f8 $9b
	ld [$1010], sp                                   ; $7aa0: $08 $10 $10
	jr nz, jr_02a_7b1f                               ; $7aa3: $20 $7a

	xor c                                            ; $7aa5: $a9
	sub a                                            ; $7aa6: $97
	add b                                            ; $7aa7: $80
	rrca                                             ; $7aa8: $0f
	ld e, $1e                                        ; $7aa9: $1e $1e
	inc a                                            ; $7aab: $3c
	ld a, h                                          ; $7aac: $7c
	ld a, h                                          ; $7aad: $7c
	ld hl, sp+$78                                    ; $7aae: $f8 $78
	ldh a, [rDMA]                                    ; $7ab0: $f0 $46
	and b                                            ; $7ab2: $a0
	jp $9dff                                         ; $7ab3: $c3 $ff $9d


	pop hl                                           ; $7ab6: $e1
	db $dd                                           ; $7ab7: $dd
	ld a, c                                          ; $7ab8: $79
	and d                                            ; $7ab9: $a2
	ld [hl], a                                       ; $7aba: $77
	ld hl, sp-$62                                    ; $7abb: $f8 $9e
	pop bc                                           ; $7abd: $c1
	cpl                                              ; $7abe: $2f
	ld hl, sp-$65                                    ; $7abf: $f8 $9b
	ei                                               ; $7ac1: $fb
	di                                               ; $7ac2: $f3
	di                                               ; $7ac3: $f3
	rst JumpTable                                          ; $7ac4: $c7
	ld [hl], a                                       ; $7ac5: $77
	add hl, de                                       ; $7ac6: $19
	sbc h                                            ; $7ac7: $9c
	db $db                                           ; $7ac8: $db
	jp $33c3                                         ; $7ac9: $c3 $c3 $33


	ld hl, sp+$6a                                    ; $7acc: $f8 $6a
	nop                                              ; $7ace: $00
	ld a, [hl]                                       ; $7acf: $7e
	ret nz                                           ; $7ad0: $c0

	dec l                                            ; $7ad1: $2d
	add b                                            ; $7ad2: $80
	sub l                                            ; $7ad3: $95
	rst $38                                          ; $7ad4: $ff
	rst GetHLinHL                                          ; $7ad5: $cf
	ccf                                              ; $7ad6: $3f
	rst $38                                          ; $7ad7: $ff
	rst $38                                          ; $7ad8: $ff
	ld sp, hl                                        ; $7ad9: $f9
	ld sp, hl                                        ; $7ada: $f9
	di                                               ; $7adb: $f3
	ld e, a                                          ; $7adc: $5f
	rrca                                             ; $7add: $0f
	ld [hl], e                                       ; $7ade: $73

jr_02a_7adf:
	ld hl, sp-$66                                    ; $7adf: $f8 $9a
	or e                                             ; $7ae1: $b3
	ld e, a                                          ; $7ae2: $5f
	rst FarCall                                          ; $7ae3: $f7
	rst SubAFromDE                                          ; $7ae4: $df
	ld a, a                                          ; $7ae5: $7f
	ld [hl], e                                       ; $7ae6: $73
	ld hl, sp+$7b                                    ; $7ae7: $f8 $7b
	pop af                                           ; $7ae9: $f1
	ld [hl], e                                       ; $7aea: $73
	ld hl, sp+$6d                                    ; $7aeb: $f8 $6d
	ld l, b                                          ; $7aed: $68
	ld [hl], c                                       ; $7aee: $71
	add b                                            ; $7aef: $80
	ld l, l                                          ; $7af0: $6d
	ld e, b                                          ; $7af1: $58
	ld d, e                                          ; $7af2: $53
	ret nz                                           ; $7af3: $c0

	rst SubAFromDE                                          ; $7af4: $df
	cp $93                                           ; $7af5: $fe $93
	ld [hl], b                                       ; $7af7: $70
	jr nz, @+$22                                     ; $7af8: $20 $20

	ld b, c                                          ; $7afa: $41
	add c                                            ; $7afb: $81
	add e                                            ; $7afc: $83
	rlca                                             ; $7afd: $07
	rlca                                             ; $7afe: $07
	sub b                                            ; $7aff: $90
	ldh [$e0], a                                     ; $7b00: $e0 $e0
	pop bc                                           ; $7b02: $c1
	ld [hl], a                                       ; $7b03: $77
	ld hl, sp+$62                                    ; $7b04: $f8 $62
	add b                                            ; $7b06: $80
	rst SubAFromDE                                          ; $7b07: $df
	ret nz                                           ; $7b08: $c0

	sbc b                                            ; $7b09: $98
	add c                                            ; $7b0a: $81
	ld bc, $0703                                     ; $7b0b: $01 $03 $07
	rlca                                             ; $7b0e: $07
	ld h, b                                          ; $7b0f: $60
	ld hl, sp+$6d                                    ; $7b10: $f8 $6d
	ld b, b                                          ; $7b12: $40
	ld h, a                                          ; $7b13: $67
	ld hl, sp-$07                                    ; $7b14: $f8 $f9
	ld h, a                                          ; $7b16: $67
	ldh a, [$9a]                                     ; $7b17: $f0 $9a
	jr jr_02a_7b21                                   ; $7b19: $18 $06

	ld bc, $e080                                     ; $7b1b: $01 $80 $e0
	ld a, e                                          ; $7b1e: $7b

Call_02a_7b1f:
jr_02a_7b1f:
	db $f4                                           ; $7b1f: $f4
	sbc l                                            ; $7b20: $9d

jr_02a_7b21:
	rra                                              ; $7b21: $1f
	rlca                                             ; $7b22: $07
	ld l, a                                          ; $7b23: $6f
	ld hl, sp-$07                                    ; $7b24: $f8 $f9
	ld a, a                                          ; $7b26: $7f
	pop af                                           ; $7b27: $f1
	ld a, l                                          ; $7b28: $7d
	xor h                                            ; $7b29: $ac
	ld [hl], e                                       ; $7b2a: $73
	ldh a, [$7a]                                     ; $7b2b: $f0 $7a
	ld e, c                                          ; $7b2d: $59
	ld [hl], a                                       ; $7b2e: $77
	db $e4                                           ; $7b2f: $e4
	ld a, c                                          ; $7b30: $79
	sbc l                                            ; $7b31: $9d
	sbc [hl]                                         ; $7b32: $9e
	ld h, b                                          ; $7b33: $60
	ld [hl], a                                       ; $7b34: $77
	call nc, $c75e                                   ; $7b35: $d4 $5e $c7
	ld [hl], a                                       ; $7b38: $77
	jp hl                                            ; $7b39: $e9


	ld a, a                                          ; $7b3a: $7f
	db $eb                                           ; $7b3b: $eb
	rst $38                                          ; $7b3c: $ff
	rst $38                                          ; $7b3d: $ff
	rst $38                                          ; $7b3e: $ff

Call_02a_7b3f:
	rst $38                                          ; $7b3f: $ff
	rst $38                                          ; $7b40: $ff
	rst $38                                          ; $7b41: $ff
	rst $38                                          ; $7b42: $ff
	rst $38                                          ; $7b43: $ff
	rst $38                                          ; $7b44: $ff
	rst $38                                          ; $7b45: $ff
	rst $38                                          ; $7b46: $ff
	rst $38                                          ; $7b47: $ff
	rst $38                                          ; $7b48: $ff
	rst $38                                          ; $7b49: $ff
	rst $38                                          ; $7b4a: $ff
	rst $38                                          ; $7b4b: $ff
	rst $38                                          ; $7b4c: $ff
	rst $38                                          ; $7b4d: $ff
	rst $38                                          ; $7b4e: $ff
	rst $38                                          ; $7b4f: $ff
	rst $38                                          ; $7b50: $ff
	rst $38                                          ; $7b51: $ff
	rst $38                                          ; $7b52: $ff
	rst $38                                          ; $7b53: $ff
	rst $38                                          ; $7b54: $ff
	rst $38                                          ; $7b55: $ff
	rst $38                                          ; $7b56: $ff
	rst $38                                          ; $7b57: $ff
	rst $38                                          ; $7b58: $ff
	rst $38                                          ; $7b59: $ff
	rst $38                                          ; $7b5a: $ff
	rst $38                                          ; $7b5b: $ff
	rst $38                                          ; $7b5c: $ff
	rst $38                                          ; $7b5d: $ff
	rst $38                                          ; $7b5e: $ff
	rst $38                                          ; $7b5f: $ff
	rst $38                                          ; $7b60: $ff
	rst $38                                          ; $7b61: $ff
	rst $38                                          ; $7b62: $ff
	rst $38                                          ; $7b63: $ff
	rst $38                                          ; $7b64: $ff
	rst $38                                          ; $7b65: $ff
	rst $38                                          ; $7b66: $ff
	rst $38                                          ; $7b67: $ff
	rst $38                                          ; $7b68: $ff
	rst $38                                          ; $7b69: $ff
	rst $38                                          ; $7b6a: $ff
	rst $38                                          ; $7b6b: $ff
	rst $38                                          ; $7b6c: $ff
	rst $38                                          ; $7b6d: $ff
	rst $38                                          ; $7b6e: $ff
	rst $38                                          ; $7b6f: $ff
	rst $38                                          ; $7b70: $ff
	rst $38                                          ; $7b71: $ff
	rst $38                                          ; $7b72: $ff
	rst $38                                          ; $7b73: $ff
	rst $38                                          ; $7b74: $ff
	rst $38                                          ; $7b75: $ff
	rst $38                                          ; $7b76: $ff
	rst $38                                          ; $7b77: $ff
	rst $38                                          ; $7b78: $ff
	rst $38                                          ; $7b79: $ff
	rst $38                                          ; $7b7a: $ff
	rst $38                                          ; $7b7b: $ff
	rst $38                                          ; $7b7c: $ff
	rst $38                                          ; $7b7d: $ff
	rst $38                                          ; $7b7e: $ff
	rst $38                                          ; $7b7f: $ff
	rst $38                                          ; $7b80: $ff
	rst $38                                          ; $7b81: $ff
	rst $38                                          ; $7b82: $ff
	rst $38                                          ; $7b83: $ff
	rst $38                                          ; $7b84: $ff
	rst $38                                          ; $7b85: $ff
	rst $38                                          ; $7b86: $ff
	rst $38                                          ; $7b87: $ff
	rst $38                                          ; $7b88: $ff
	rst $38                                          ; $7b89: $ff
	rst $38                                          ; $7b8a: $ff
	rst $38                                          ; $7b8b: $ff
	rst $38                                          ; $7b8c: $ff
	rst $38                                          ; $7b8d: $ff
	rst $38                                          ; $7b8e: $ff
	rst $38                                          ; $7b8f: $ff
	rst $38                                          ; $7b90: $ff
	rst $38                                          ; $7b91: $ff
	rst $38                                          ; $7b92: $ff
	rst $38                                          ; $7b93: $ff
	rst $38                                          ; $7b94: $ff
	rst $38                                          ; $7b95: $ff
	rst $38                                          ; $7b96: $ff
	rst $38                                          ; $7b97: $ff
	rst $38                                          ; $7b98: $ff
	rst $38                                          ; $7b99: $ff
	rst $38                                          ; $7b9a: $ff
	rst $38                                          ; $7b9b: $ff
	rst $38                                          ; $7b9c: $ff
	rst $38                                          ; $7b9d: $ff
	rst $38                                          ; $7b9e: $ff
	rst $38                                          ; $7b9f: $ff
	rst $38                                          ; $7ba0: $ff
	rst $38                                          ; $7ba1: $ff
	rst $38                                          ; $7ba2: $ff
	rst $38                                          ; $7ba3: $ff
	rst $38                                          ; $7ba4: $ff
	rst $38                                          ; $7ba5: $ff
	rst $38                                          ; $7ba6: $ff
	rst $38                                          ; $7ba7: $ff
	rst $38                                          ; $7ba8: $ff
	rst $38                                          ; $7ba9: $ff
	rst $38                                          ; $7baa: $ff
	rst $38                                          ; $7bab: $ff
	rst $38                                          ; $7bac: $ff
	rst $38                                          ; $7bad: $ff
	rst $38                                          ; $7bae: $ff
	rst $38                                          ; $7baf: $ff
	rst $38                                          ; $7bb0: $ff
	rst $38                                          ; $7bb1: $ff
	rst $38                                          ; $7bb2: $ff
	rst $38                                          ; $7bb3: $ff
	rst $38                                          ; $7bb4: $ff
	rst $38                                          ; $7bb5: $ff
	rst $38                                          ; $7bb6: $ff
	rst $38                                          ; $7bb7: $ff
	rst $38                                          ; $7bb8: $ff
	rst $38                                          ; $7bb9: $ff
	rst $38                                          ; $7bba: $ff
	rst $38                                          ; $7bbb: $ff
	rst $38                                          ; $7bbc: $ff
	rst $38                                          ; $7bbd: $ff
	rst $38                                          ; $7bbe: $ff
	rst $38                                          ; $7bbf: $ff
	rst $38                                          ; $7bc0: $ff
	rst $38                                          ; $7bc1: $ff
	rst $38                                          ; $7bc2: $ff
	rst $38                                          ; $7bc3: $ff
	rst $38                                          ; $7bc4: $ff
	rst $38                                          ; $7bc5: $ff
	rst $38                                          ; $7bc6: $ff
	rst $38                                          ; $7bc7: $ff
	rst $38                                          ; $7bc8: $ff
	rst $38                                          ; $7bc9: $ff
	rst $38                                          ; $7bca: $ff
	rst $38                                          ; $7bcb: $ff
	rst $38                                          ; $7bcc: $ff
	rst $38                                          ; $7bcd: $ff
	rst $38                                          ; $7bce: $ff
	rst $38                                          ; $7bcf: $ff
	rst $38                                          ; $7bd0: $ff
	rst $38                                          ; $7bd1: $ff
	rst $38                                          ; $7bd2: $ff
	rst $38                                          ; $7bd3: $ff
	rst $38                                          ; $7bd4: $ff
	rst $38                                          ; $7bd5: $ff
	rst $38                                          ; $7bd6: $ff
	rst $38                                          ; $7bd7: $ff
	rst $38                                          ; $7bd8: $ff
	rst $38                                          ; $7bd9: $ff
	rst $38                                          ; $7bda: $ff
	rst $38                                          ; $7bdb: $ff
	rst $38                                          ; $7bdc: $ff
	rst $38                                          ; $7bdd: $ff
	rst $38                                          ; $7bde: $ff
	rst $38                                          ; $7bdf: $ff
	rst $38                                          ; $7be0: $ff
	rst $38                                          ; $7be1: $ff
	rst $38                                          ; $7be2: $ff
	rst $38                                          ; $7be3: $ff
	rst $38                                          ; $7be4: $ff
	rst $38                                          ; $7be5: $ff
	rst $38                                          ; $7be6: $ff
	rst $38                                          ; $7be7: $ff
	rst $38                                          ; $7be8: $ff
	rst $38                                          ; $7be9: $ff
	rst $38                                          ; $7bea: $ff
	rst $38                                          ; $7beb: $ff
	rst $38                                          ; $7bec: $ff
	rst $38                                          ; $7bed: $ff
	rst $38                                          ; $7bee: $ff
	rst $38                                          ; $7bef: $ff
	rst $38                                          ; $7bf0: $ff
	rst $38                                          ; $7bf1: $ff
	rst $38                                          ; $7bf2: $ff
	rst $38                                          ; $7bf3: $ff
	rst $38                                          ; $7bf4: $ff
	rst $38                                          ; $7bf5: $ff
	rst $38                                          ; $7bf6: $ff
	rst $38                                          ; $7bf7: $ff
	rst $38                                          ; $7bf8: $ff
	rst $38                                          ; $7bf9: $ff
	rst $38                                          ; $7bfa: $ff
	rst $38                                          ; $7bfb: $ff
	rst $38                                          ; $7bfc: $ff
	rst $38                                          ; $7bfd: $ff
	rst $38                                          ; $7bfe: $ff
	rst $38                                          ; $7bff: $ff
	rst $38                                          ; $7c00: $ff
	rst $38                                          ; $7c01: $ff
	rst $38                                          ; $7c02: $ff
	rst $38                                          ; $7c03: $ff
	rst $38                                          ; $7c04: $ff
	rst $38                                          ; $7c05: $ff
	rst $38                                          ; $7c06: $ff
	rst $38                                          ; $7c07: $ff
	rst $38                                          ; $7c08: $ff
	rst $38                                          ; $7c09: $ff
	rst $38                                          ; $7c0a: $ff
	rst $38                                          ; $7c0b: $ff
	rst $38                                          ; $7c0c: $ff
	rst $38                                          ; $7c0d: $ff
	rst $38                                          ; $7c0e: $ff
	rst $38                                          ; $7c0f: $ff
	rst $38                                          ; $7c10: $ff
	rst $38                                          ; $7c11: $ff
	rst $38                                          ; $7c12: $ff
	rst $38                                          ; $7c13: $ff
	rst $38                                          ; $7c14: $ff
	rst $38                                          ; $7c15: $ff
	rst $38                                          ; $7c16: $ff
	rst $38                                          ; $7c17: $ff
	rst $38                                          ; $7c18: $ff
	rst $38                                          ; $7c19: $ff
	rst $38                                          ; $7c1a: $ff
	rst $38                                          ; $7c1b: $ff
	rst $38                                          ; $7c1c: $ff
	rst $38                                          ; $7c1d: $ff
	rst $38                                          ; $7c1e: $ff
	rst $38                                          ; $7c1f: $ff
	rst $38                                          ; $7c20: $ff
	rst $38                                          ; $7c21: $ff
	rst $38                                          ; $7c22: $ff
	rst $38                                          ; $7c23: $ff
	rst $38                                          ; $7c24: $ff
	rst $38                                          ; $7c25: $ff
	rst $38                                          ; $7c26: $ff
	rst $38                                          ; $7c27: $ff
	rst $38                                          ; $7c28: $ff
	rst $38                                          ; $7c29: $ff
	rst $38                                          ; $7c2a: $ff
	rst $38                                          ; $7c2b: $ff
	rst $38                                          ; $7c2c: $ff
	rst $38                                          ; $7c2d: $ff
	rst $38                                          ; $7c2e: $ff
	rst $38                                          ; $7c2f: $ff
	rst $38                                          ; $7c30: $ff
	rst $38                                          ; $7c31: $ff
	rst $38                                          ; $7c32: $ff
	rst $38                                          ; $7c33: $ff
	rst $38                                          ; $7c34: $ff
	rst $38                                          ; $7c35: $ff
	rst $38                                          ; $7c36: $ff
	rst $38                                          ; $7c37: $ff
	rst $38                                          ; $7c38: $ff
	rst $38                                          ; $7c39: $ff
	rst $38                                          ; $7c3a: $ff
	rst $38                                          ; $7c3b: $ff
	rst $38                                          ; $7c3c: $ff
	rst $38                                          ; $7c3d: $ff
	rst $38                                          ; $7c3e: $ff
	rst $38                                          ; $7c3f: $ff
	rst $38                                          ; $7c40: $ff
	rst $38                                          ; $7c41: $ff
	rst $38                                          ; $7c42: $ff
	rst $38                                          ; $7c43: $ff
	rst $38                                          ; $7c44: $ff
	rst $38                                          ; $7c45: $ff
	rst $38                                          ; $7c46: $ff
	rst $38                                          ; $7c47: $ff
	rst $38                                          ; $7c48: $ff
	rst $38                                          ; $7c49: $ff
	rst $38                                          ; $7c4a: $ff
	rst $38                                          ; $7c4b: $ff
	rst $38                                          ; $7c4c: $ff
	rst $38                                          ; $7c4d: $ff
	rst $38                                          ; $7c4e: $ff
	rst $38                                          ; $7c4f: $ff
	rst $38                                          ; $7c50: $ff
	rst $38                                          ; $7c51: $ff
	rst $38                                          ; $7c52: $ff
	rst $38                                          ; $7c53: $ff
	rst $38                                          ; $7c54: $ff
	rst $38                                          ; $7c55: $ff
	rst $38                                          ; $7c56: $ff
	rst $38                                          ; $7c57: $ff
	rst $38                                          ; $7c58: $ff
	rst $38                                          ; $7c59: $ff
	rst $38                                          ; $7c5a: $ff
	rst $38                                          ; $7c5b: $ff
	rst $38                                          ; $7c5c: $ff
	rst $38                                          ; $7c5d: $ff
	rst $38                                          ; $7c5e: $ff
	rst $38                                          ; $7c5f: $ff
	rst $38                                          ; $7c60: $ff
	rst $38                                          ; $7c61: $ff
	rst $38                                          ; $7c62: $ff
	rst $38                                          ; $7c63: $ff
	rst $38                                          ; $7c64: $ff
	rst $38                                          ; $7c65: $ff
	rst $38                                          ; $7c66: $ff
	rst $38                                          ; $7c67: $ff
	rst $38                                          ; $7c68: $ff
	rst $38                                          ; $7c69: $ff
	rst $38                                          ; $7c6a: $ff
	rst $38                                          ; $7c6b: $ff
	rst $38                                          ; $7c6c: $ff
	rst $38                                          ; $7c6d: $ff
	rst $38                                          ; $7c6e: $ff
	rst $38                                          ; $7c6f: $ff
	rst $38                                          ; $7c70: $ff
	rst $38                                          ; $7c71: $ff
	rst $38                                          ; $7c72: $ff
	rst $38                                          ; $7c73: $ff
	rst $38                                          ; $7c74: $ff
	rst $38                                          ; $7c75: $ff
	rst $38                                          ; $7c76: $ff
	rst $38                                          ; $7c77: $ff
	rst $38                                          ; $7c78: $ff
	rst $38                                          ; $7c79: $ff
	rst $38                                          ; $7c7a: $ff
	rst $38                                          ; $7c7b: $ff
	rst $38                                          ; $7c7c: $ff
	rst $38                                          ; $7c7d: $ff
	rst $38                                          ; $7c7e: $ff
	rst $38                                          ; $7c7f: $ff
	rst $38                                          ; $7c80: $ff
	rst $38                                          ; $7c81: $ff
	rst $38                                          ; $7c82: $ff
	rst $38                                          ; $7c83: $ff
	rst $38                                          ; $7c84: $ff
	rst $38                                          ; $7c85: $ff
	rst $38                                          ; $7c86: $ff
	rst $38                                          ; $7c87: $ff
	rst $38                                          ; $7c88: $ff
	rst $38                                          ; $7c89: $ff
	rst $38                                          ; $7c8a: $ff
	rst $38                                          ; $7c8b: $ff
	rst $38                                          ; $7c8c: $ff
	rst $38                                          ; $7c8d: $ff
	rst $38                                          ; $7c8e: $ff
	rst $38                                          ; $7c8f: $ff
	rst $38                                          ; $7c90: $ff
	rst $38                                          ; $7c91: $ff
	rst $38                                          ; $7c92: $ff
	rst $38                                          ; $7c93: $ff
	rst $38                                          ; $7c94: $ff
	rst $38                                          ; $7c95: $ff
	rst $38                                          ; $7c96: $ff
	rst $38                                          ; $7c97: $ff
	rst $38                                          ; $7c98: $ff
	rst $38                                          ; $7c99: $ff
	rst $38                                          ; $7c9a: $ff
	rst $38                                          ; $7c9b: $ff
	rst $38                                          ; $7c9c: $ff
	rst $38                                          ; $7c9d: $ff
	rst $38                                          ; $7c9e: $ff
	rst $38                                          ; $7c9f: $ff
	rst $38                                          ; $7ca0: $ff
	rst $38                                          ; $7ca1: $ff
	rst $38                                          ; $7ca2: $ff
	rst $38                                          ; $7ca3: $ff
	rst $38                                          ; $7ca4: $ff
	rst $38                                          ; $7ca5: $ff
	rst $38                                          ; $7ca6: $ff
	rst $38                                          ; $7ca7: $ff
	rst $38                                          ; $7ca8: $ff
	rst $38                                          ; $7ca9: $ff
	rst $38                                          ; $7caa: $ff
	rst $38                                          ; $7cab: $ff
	rst $38                                          ; $7cac: $ff
	rst $38                                          ; $7cad: $ff
	rst $38                                          ; $7cae: $ff
	rst $38                                          ; $7caf: $ff
	rst $38                                          ; $7cb0: $ff
	rst $38                                          ; $7cb1: $ff
	rst $38                                          ; $7cb2: $ff
	rst $38                                          ; $7cb3: $ff
	rst $38                                          ; $7cb4: $ff
	rst $38                                          ; $7cb5: $ff
	rst $38                                          ; $7cb6: $ff
	rst $38                                          ; $7cb7: $ff
	rst $38                                          ; $7cb8: $ff
	rst $38                                          ; $7cb9: $ff
	rst $38                                          ; $7cba: $ff
	rst $38                                          ; $7cbb: $ff
	rst $38                                          ; $7cbc: $ff
	rst $38                                          ; $7cbd: $ff
	rst $38                                          ; $7cbe: $ff
	rst $38                                          ; $7cbf: $ff
	rst $38                                          ; $7cc0: $ff
	rst $38                                          ; $7cc1: $ff
	rst $38                                          ; $7cc2: $ff
	rst $38                                          ; $7cc3: $ff
	rst $38                                          ; $7cc4: $ff
	rst $38                                          ; $7cc5: $ff
	rst $38                                          ; $7cc6: $ff
	rst $38                                          ; $7cc7: $ff
	rst $38                                          ; $7cc8: $ff
	rst $38                                          ; $7cc9: $ff
	rst $38                                          ; $7cca: $ff
	rst $38                                          ; $7ccb: $ff
	rst $38                                          ; $7ccc: $ff
	rst $38                                          ; $7ccd: $ff
	rst $38                                          ; $7cce: $ff
	rst $38                                          ; $7ccf: $ff
	rst $38                                          ; $7cd0: $ff
	rst $38                                          ; $7cd1: $ff
	rst $38                                          ; $7cd2: $ff
	rst $38                                          ; $7cd3: $ff
	rst $38                                          ; $7cd4: $ff
	rst $38                                          ; $7cd5: $ff
	rst $38                                          ; $7cd6: $ff
	rst $38                                          ; $7cd7: $ff
	rst $38                                          ; $7cd8: $ff
	rst $38                                          ; $7cd9: $ff
	rst $38                                          ; $7cda: $ff
	rst $38                                          ; $7cdb: $ff
	rst $38                                          ; $7cdc: $ff
	rst $38                                          ; $7cdd: $ff
	rst $38                                          ; $7cde: $ff
	rst $38                                          ; $7cdf: $ff
	rst $38                                          ; $7ce0: $ff
	rst $38                                          ; $7ce1: $ff
	rst $38                                          ; $7ce2: $ff
	rst $38                                          ; $7ce3: $ff
	rst $38                                          ; $7ce4: $ff
	rst $38                                          ; $7ce5: $ff
	rst $38                                          ; $7ce6: $ff
	rst $38                                          ; $7ce7: $ff
	rst $38                                          ; $7ce8: $ff
	rst $38                                          ; $7ce9: $ff
	rst $38                                          ; $7cea: $ff
	rst $38                                          ; $7ceb: $ff
	rst $38                                          ; $7cec: $ff
	rst $38                                          ; $7ced: $ff
	rst $38                                          ; $7cee: $ff
	rst $38                                          ; $7cef: $ff
	rst $38                                          ; $7cf0: $ff
	rst $38                                          ; $7cf1: $ff
	rst $38                                          ; $7cf2: $ff
	rst $38                                          ; $7cf3: $ff
	rst $38                                          ; $7cf4: $ff
	rst $38                                          ; $7cf5: $ff
	rst $38                                          ; $7cf6: $ff
	rst $38                                          ; $7cf7: $ff
	rst $38                                          ; $7cf8: $ff
	rst $38                                          ; $7cf9: $ff
	rst $38                                          ; $7cfa: $ff
	rst $38                                          ; $7cfb: $ff
	rst $38                                          ; $7cfc: $ff
	rst $38                                          ; $7cfd: $ff
	rst $38                                          ; $7cfe: $ff
	rst $38                                          ; $7cff: $ff
	rst $38                                          ; $7d00: $ff
	rst $38                                          ; $7d01: $ff
	rst $38                                          ; $7d02: $ff
	rst $38                                          ; $7d03: $ff
	rst $38                                          ; $7d04: $ff
	rst $38                                          ; $7d05: $ff
	rst $38                                          ; $7d06: $ff
	rst $38                                          ; $7d07: $ff
	rst $38                                          ; $7d08: $ff
	rst $38                                          ; $7d09: $ff
	rst $38                                          ; $7d0a: $ff
	rst $38                                          ; $7d0b: $ff
	rst $38                                          ; $7d0c: $ff
	rst $38                                          ; $7d0d: $ff
	rst $38                                          ; $7d0e: $ff
	rst $38                                          ; $7d0f: $ff
	rst $38                                          ; $7d10: $ff
	rst $38                                          ; $7d11: $ff
	rst $38                                          ; $7d12: $ff
	rst $38                                          ; $7d13: $ff
	rst $38                                          ; $7d14: $ff
	rst $38                                          ; $7d15: $ff
	rst $38                                          ; $7d16: $ff
	rst $38                                          ; $7d17: $ff
	rst $38                                          ; $7d18: $ff
	rst $38                                          ; $7d19: $ff
	rst $38                                          ; $7d1a: $ff
	rst $38                                          ; $7d1b: $ff
	rst $38                                          ; $7d1c: $ff
	rst $38                                          ; $7d1d: $ff
	rst $38                                          ; $7d1e: $ff
	rst $38                                          ; $7d1f: $ff
	rst $38                                          ; $7d20: $ff
	rst $38                                          ; $7d21: $ff
	rst $38                                          ; $7d22: $ff
	rst $38                                          ; $7d23: $ff
	rst $38                                          ; $7d24: $ff
	rst $38                                          ; $7d25: $ff
	rst $38                                          ; $7d26: $ff
	rst $38                                          ; $7d27: $ff
	rst $38                                          ; $7d28: $ff
	rst $38                                          ; $7d29: $ff
	rst $38                                          ; $7d2a: $ff
	rst $38                                          ; $7d2b: $ff
	rst $38                                          ; $7d2c: $ff
	rst $38                                          ; $7d2d: $ff
	rst $38                                          ; $7d2e: $ff
	rst $38                                          ; $7d2f: $ff
	rst $38                                          ; $7d30: $ff
	rst $38                                          ; $7d31: $ff
	rst $38                                          ; $7d32: $ff
	rst $38                                          ; $7d33: $ff
	rst $38                                          ; $7d34: $ff
	rst $38                                          ; $7d35: $ff
	rst $38                                          ; $7d36: $ff
	rst $38                                          ; $7d37: $ff
	rst $38                                          ; $7d38: $ff
	rst $38                                          ; $7d39: $ff
	rst $38                                          ; $7d3a: $ff
	rst $38                                          ; $7d3b: $ff
	rst $38                                          ; $7d3c: $ff
	rst $38                                          ; $7d3d: $ff
	rst $38                                          ; $7d3e: $ff
	rst $38                                          ; $7d3f: $ff
	rst $38                                          ; $7d40: $ff
	rst $38                                          ; $7d41: $ff
	rst $38                                          ; $7d42: $ff
	rst $38                                          ; $7d43: $ff
	rst $38                                          ; $7d44: $ff
	rst $38                                          ; $7d45: $ff
	rst $38                                          ; $7d46: $ff
	rst $38                                          ; $7d47: $ff
	rst $38                                          ; $7d48: $ff
	rst $38                                          ; $7d49: $ff
	rst $38                                          ; $7d4a: $ff
	rst $38                                          ; $7d4b: $ff
	rst $38                                          ; $7d4c: $ff
	rst $38                                          ; $7d4d: $ff
	rst $38                                          ; $7d4e: $ff
	rst $38                                          ; $7d4f: $ff
	rst $38                                          ; $7d50: $ff
	rst $38                                          ; $7d51: $ff
	rst $38                                          ; $7d52: $ff
	rst $38                                          ; $7d53: $ff
	rst $38                                          ; $7d54: $ff
	rst $38                                          ; $7d55: $ff
	rst $38                                          ; $7d56: $ff
	rst $38                                          ; $7d57: $ff
	rst $38                                          ; $7d58: $ff
	rst $38                                          ; $7d59: $ff
	rst $38                                          ; $7d5a: $ff
	rst $38                                          ; $7d5b: $ff
	rst $38                                          ; $7d5c: $ff
	rst $38                                          ; $7d5d: $ff
	rst $38                                          ; $7d5e: $ff
	rst $38                                          ; $7d5f: $ff
	rst $38                                          ; $7d60: $ff
	rst $38                                          ; $7d61: $ff
	rst $38                                          ; $7d62: $ff
	rst $38                                          ; $7d63: $ff
	rst $38                                          ; $7d64: $ff
	rst $38                                          ; $7d65: $ff
	rst $38                                          ; $7d66: $ff
	rst $38                                          ; $7d67: $ff
	rst $38                                          ; $7d68: $ff
	rst $38                                          ; $7d69: $ff
	rst $38                                          ; $7d6a: $ff
	rst $38                                          ; $7d6b: $ff
	rst $38                                          ; $7d6c: $ff
	rst $38                                          ; $7d6d: $ff
	rst $38                                          ; $7d6e: $ff
	rst $38                                          ; $7d6f: $ff
	rst $38                                          ; $7d70: $ff
	rst $38                                          ; $7d71: $ff
	rst $38                                          ; $7d72: $ff
	rst $38                                          ; $7d73: $ff
	rst $38                                          ; $7d74: $ff
	rst $38                                          ; $7d75: $ff
	rst $38                                          ; $7d76: $ff
	rst $38                                          ; $7d77: $ff
	rst $38                                          ; $7d78: $ff
	rst $38                                          ; $7d79: $ff
	rst $38                                          ; $7d7a: $ff
	rst $38                                          ; $7d7b: $ff
	rst $38                                          ; $7d7c: $ff
	rst $38                                          ; $7d7d: $ff
	rst $38                                          ; $7d7e: $ff
	rst $38                                          ; $7d7f: $ff
	rst $38                                          ; $7d80: $ff
	rst $38                                          ; $7d81: $ff
	rst $38                                          ; $7d82: $ff
	rst $38                                          ; $7d83: $ff
	rst $38                                          ; $7d84: $ff
	rst $38                                          ; $7d85: $ff
	rst $38                                          ; $7d86: $ff
	rst $38                                          ; $7d87: $ff
	rst $38                                          ; $7d88: $ff
	rst $38                                          ; $7d89: $ff
	rst $38                                          ; $7d8a: $ff
	rst $38                                          ; $7d8b: $ff
	rst $38                                          ; $7d8c: $ff
	rst $38                                          ; $7d8d: $ff
	rst $38                                          ; $7d8e: $ff
	rst $38                                          ; $7d8f: $ff
	rst $38                                          ; $7d90: $ff
	rst $38                                          ; $7d91: $ff
	rst $38                                          ; $7d92: $ff
	rst $38                                          ; $7d93: $ff
	rst $38                                          ; $7d94: $ff
	rst $38                                          ; $7d95: $ff
	rst $38                                          ; $7d96: $ff
	rst $38                                          ; $7d97: $ff
	rst $38                                          ; $7d98: $ff
	rst $38                                          ; $7d99: $ff
	rst $38                                          ; $7d9a: $ff
	rst $38                                          ; $7d9b: $ff
	rst $38                                          ; $7d9c: $ff
	rst $38                                          ; $7d9d: $ff
	rst $38                                          ; $7d9e: $ff
	rst $38                                          ; $7d9f: $ff
	rst $38                                          ; $7da0: $ff
	rst $38                                          ; $7da1: $ff
	rst $38                                          ; $7da2: $ff
	rst $38                                          ; $7da3: $ff
	rst $38                                          ; $7da4: $ff
	rst $38                                          ; $7da5: $ff
	rst $38                                          ; $7da6: $ff
	rst $38                                          ; $7da7: $ff
	rst $38                                          ; $7da8: $ff
	rst $38                                          ; $7da9: $ff
	rst $38                                          ; $7daa: $ff
	rst $38                                          ; $7dab: $ff
	rst $38                                          ; $7dac: $ff
	rst $38                                          ; $7dad: $ff
	rst $38                                          ; $7dae: $ff
	rst $38                                          ; $7daf: $ff
	rst $38                                          ; $7db0: $ff
	rst $38                                          ; $7db1: $ff
	rst $38                                          ; $7db2: $ff
	rst $38                                          ; $7db3: $ff
	rst $38                                          ; $7db4: $ff
	rst $38                                          ; $7db5: $ff
	rst $38                                          ; $7db6: $ff
	rst $38                                          ; $7db7: $ff
	rst $38                                          ; $7db8: $ff
	rst $38                                          ; $7db9: $ff
	rst $38                                          ; $7dba: $ff
	rst $38                                          ; $7dbb: $ff
	rst $38                                          ; $7dbc: $ff
	rst $38                                          ; $7dbd: $ff
	rst $38                                          ; $7dbe: $ff
	rst $38                                          ; $7dbf: $ff
	rst $38                                          ; $7dc0: $ff
	rst $38                                          ; $7dc1: $ff
	rst $38                                          ; $7dc2: $ff
	rst $38                                          ; $7dc3: $ff
	rst $38                                          ; $7dc4: $ff
	rst $38                                          ; $7dc5: $ff
	rst $38                                          ; $7dc6: $ff
	rst $38                                          ; $7dc7: $ff
	rst $38                                          ; $7dc8: $ff
	rst $38                                          ; $7dc9: $ff
	rst $38                                          ; $7dca: $ff
	rst $38                                          ; $7dcb: $ff
	rst $38                                          ; $7dcc: $ff
	rst $38                                          ; $7dcd: $ff
	rst $38                                          ; $7dce: $ff
	rst $38                                          ; $7dcf: $ff
	rst $38                                          ; $7dd0: $ff
	rst $38                                          ; $7dd1: $ff
	rst $38                                          ; $7dd2: $ff
	rst $38                                          ; $7dd3: $ff
	rst $38                                          ; $7dd4: $ff
	rst $38                                          ; $7dd5: $ff
	rst $38                                          ; $7dd6: $ff
	rst $38                                          ; $7dd7: $ff
	rst $38                                          ; $7dd8: $ff
	rst $38                                          ; $7dd9: $ff
	rst $38                                          ; $7dda: $ff
	rst $38                                          ; $7ddb: $ff
	rst $38                                          ; $7ddc: $ff
	rst $38                                          ; $7ddd: $ff
	rst $38                                          ; $7dde: $ff
	rst $38                                          ; $7ddf: $ff
	rst $38                                          ; $7de0: $ff
	rst $38                                          ; $7de1: $ff
	rst $38                                          ; $7de2: $ff
	rst $38                                          ; $7de3: $ff
	rst $38                                          ; $7de4: $ff
	rst $38                                          ; $7de5: $ff
	rst $38                                          ; $7de6: $ff
	rst $38                                          ; $7de7: $ff
	rst $38                                          ; $7de8: $ff
	rst $38                                          ; $7de9: $ff
	rst $38                                          ; $7dea: $ff
	rst $38                                          ; $7deb: $ff
	rst $38                                          ; $7dec: $ff
	rst $38                                          ; $7ded: $ff
	rst $38                                          ; $7dee: $ff
	rst $38                                          ; $7def: $ff
	rst $38                                          ; $7df0: $ff
	rst $38                                          ; $7df1: $ff
	rst $38                                          ; $7df2: $ff
	rst $38                                          ; $7df3: $ff
	rst $38                                          ; $7df4: $ff
	rst $38                                          ; $7df5: $ff
	rst $38                                          ; $7df6: $ff
	rst $38                                          ; $7df7: $ff
	rst $38                                          ; $7df8: $ff
	rst $38                                          ; $7df9: $ff
	rst $38                                          ; $7dfa: $ff
	rst $38                                          ; $7dfb: $ff
	rst $38                                          ; $7dfc: $ff
	rst $38                                          ; $7dfd: $ff
	rst $38                                          ; $7dfe: $ff

Jump_02a_7dff:
	rst $38                                          ; $7dff: $ff
	rst $38                                          ; $7e00: $ff
	rst $38                                          ; $7e01: $ff
	rst $38                                          ; $7e02: $ff
	rst $38                                          ; $7e03: $ff
	rst $38                                          ; $7e04: $ff
	rst $38                                          ; $7e05: $ff
	rst $38                                          ; $7e06: $ff
	rst $38                                          ; $7e07: $ff
	rst $38                                          ; $7e08: $ff
	rst $38                                          ; $7e09: $ff
	rst $38                                          ; $7e0a: $ff
	rst $38                                          ; $7e0b: $ff
	rst $38                                          ; $7e0c: $ff
	rst $38                                          ; $7e0d: $ff
	rst $38                                          ; $7e0e: $ff
	rst $38                                          ; $7e0f: $ff
	rst $38                                          ; $7e10: $ff
	rst $38                                          ; $7e11: $ff
	rst $38                                          ; $7e12: $ff
	rst $38                                          ; $7e13: $ff
	rst $38                                          ; $7e14: $ff
	rst $38                                          ; $7e15: $ff
	rst $38                                          ; $7e16: $ff
	rst $38                                          ; $7e17: $ff
	rst $38                                          ; $7e18: $ff
	rst $38                                          ; $7e19: $ff
	rst $38                                          ; $7e1a: $ff
	rst $38                                          ; $7e1b: $ff
	rst $38                                          ; $7e1c: $ff
	rst $38                                          ; $7e1d: $ff
	rst $38                                          ; $7e1e: $ff
	rst $38                                          ; $7e1f: $ff
	rst $38                                          ; $7e20: $ff
	rst $38                                          ; $7e21: $ff
	rst $38                                          ; $7e22: $ff
	rst $38                                          ; $7e23: $ff
	rst $38                                          ; $7e24: $ff
	rst $38                                          ; $7e25: $ff
	rst $38                                          ; $7e26: $ff
	rst $38                                          ; $7e27: $ff
	rst $38                                          ; $7e28: $ff
	rst $38                                          ; $7e29: $ff
	rst $38                                          ; $7e2a: $ff
	rst $38                                          ; $7e2b: $ff
	rst $38                                          ; $7e2c: $ff
	rst $38                                          ; $7e2d: $ff
	rst $38                                          ; $7e2e: $ff
	rst $38                                          ; $7e2f: $ff
	rst $38                                          ; $7e30: $ff
	rst $38                                          ; $7e31: $ff
	rst $38                                          ; $7e32: $ff
	rst $38                                          ; $7e33: $ff
	rst $38                                          ; $7e34: $ff
	rst $38                                          ; $7e35: $ff
	rst $38                                          ; $7e36: $ff
	rst $38                                          ; $7e37: $ff
	rst $38                                          ; $7e38: $ff
	rst $38                                          ; $7e39: $ff
	rst $38                                          ; $7e3a: $ff
	rst $38                                          ; $7e3b: $ff
	rst $38                                          ; $7e3c: $ff
	rst $38                                          ; $7e3d: $ff
	rst $38                                          ; $7e3e: $ff
	rst $38                                          ; $7e3f: $ff
	rst $38                                          ; $7e40: $ff
	rst $38                                          ; $7e41: $ff
	rst $38                                          ; $7e42: $ff
	rst $38                                          ; $7e43: $ff
	rst $38                                          ; $7e44: $ff
	rst $38                                          ; $7e45: $ff
	rst $38                                          ; $7e46: $ff
	rst $38                                          ; $7e47: $ff
	rst $38                                          ; $7e48: $ff
	rst $38                                          ; $7e49: $ff
	rst $38                                          ; $7e4a: $ff
	rst $38                                          ; $7e4b: $ff
	rst $38                                          ; $7e4c: $ff
	rst $38                                          ; $7e4d: $ff
	rst $38                                          ; $7e4e: $ff
	rst $38                                          ; $7e4f: $ff
	rst $38                                          ; $7e50: $ff
	rst $38                                          ; $7e51: $ff
	rst $38                                          ; $7e52: $ff
	rst $38                                          ; $7e53: $ff
	rst $38                                          ; $7e54: $ff
	rst $38                                          ; $7e55: $ff
	rst $38                                          ; $7e56: $ff
	rst $38                                          ; $7e57: $ff
	rst $38                                          ; $7e58: $ff
	rst $38                                          ; $7e59: $ff
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

Jump_02a_7eb8:
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

Call_02a_7ef7:
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

Call_02a_7f01:
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

Jump_02a_7f63:
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

Call_02a_7fc0:
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

Call_02a_7fdf:
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
	rst $38                                          ; $7ff7: $ff
	rst $38                                          ; $7ff8: $ff
	rst $38                                          ; $7ff9: $ff
	rst $38                                          ; $7ffa: $ff
	rst $38                                          ; $7ffb: $ff
	rst $38                                          ; $7ffc: $ff
	rst $38                                          ; $7ffd: $ff
	rst $38                                          ; $7ffe: $ff

Call_02a_7fff:
Jump_02a_7fff:
	rst $38                                          ; $7fff: $ff
