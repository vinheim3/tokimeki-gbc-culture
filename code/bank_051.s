; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $051", ROMX[$4000], BANK[$51]

	ld sp, hl                                        ; $4000: $f9
	db $fc                                           ; $4001: $fc
	ld e, a                                          ; $4002: $5f
	rlca                                             ; $4003: $07
	dec a                                            ; $4004: $3d
	rst $38                                          ; $4005: $ff
	rst GetHLinHL                                          ; $4006: $cf
	db $e3                                           ; $4007: $e3
	ld sp, hl                                        ; $4008: $f9
	cp b                                             ; $4009: $b8
	cp [hl]                                          ; $400a: $be
	ei                                               ; $400b: $fb
	jp $c000                                         ; $400c: $c3 $00 $c0


	rst $38                                          ; $400f: $ff
	rst $38                                          ; $4010: $ff
	ld l, a                                          ; $4011: $6f
	ld hl, $ffdc                                     ; $4012: $21 $dc $ff
	sbc e                                            ; $4015: $9b
	rst SubAFromDE                                          ; $4016: $df
	ld bc, $f300                                     ; $4017: $01 $00 $f3
	ld a, d                                          ; $401a: $7a
	add [hl]                                         ; $401b: $86
	db $db                                           ; $401c: $db
	rst $38                                          ; $401d: $ff
	ld a, a                                          ; $401e: $7f
	ld e, e                                          ; $401f: $5b
	db $db                                           ; $4020: $db
	ret nz                                           ; $4021: $c0

	sub a                                            ; $4022: $97
	push de                                          ; $4023: $d5
	xor d                                            ; $4024: $aa
	push de                                          ; $4025: $d5
	ld [$eaf5], a                                    ; $4026: $ea $f5 $ea
	push af                                          ; $4029: $f5
	ld a, [$2025]                                    ; $402a: $fa $25 $20
	sub a                                            ; $402d: $97
	ld [$4480], sp                                   ; $402e: $08 $80 $44
	and d                                            ; $4031: $a2
	ld d, b                                          ; $4032: $50
	and c                                            ; $4033: $a1
	ld d, b                                          ; $4034: $50
	xor b                                            ; $4035: $a8
	ld a, c                                          ; $4036: $79
	ld [hl], e                                       ; $4037: $73
	rst SubAFromDE                                          ; $4038: $df
	ld bc, $7efe                                     ; $4039: $01 $fe $7e
	add $7d                                          ; $403c: $c6 $7d
	ld [hl], d                                       ; $403e: $72
	ld a, [hl]                                       ; $403f: $7e
	xor h                                            ; $4040: $ac
	sbc l                                            ; $4041: $9d
	add a                                            ; $4042: $87
	adc e                                            ; $4043: $8b
	ld l, d                                          ; $4044: $6a
	cp b                                             ; $4045: $b8
	ld h, a                                          ; $4046: $67
	or c                                             ; $4047: $b1
	ret z                                            ; $4048: $c8

	rst $38                                          ; $4049: $ff
	ld a, [hl]                                       ; $404a: $7e
	ld [hl], h                                       ; $404b: $74
	sbc l                                            ; $404c: $9d
	db $fd                                           ; $404d: $fd
	cp $7b                                           ; $404e: $fe $7b
	cp $9e                                           ; $4050: $fe $9e
	ld a, [$485f]                                    ; $4052: $fa $5f $48
	ld a, [hl]                                       ; $4055: $7e
	ld hl, sp-$63                                    ; $4056: $f8 $9d
	ld b, $0c                                        ; $4058: $06 $0c
	ld a, b                                          ; $405a: $78
	jr c, jr_051_40d3                                ; $405b: $38 $76

	dec bc                                           ; $405d: $0b
	add b                                            ; $405e: $80
	db $fc                                           ; $405f: $fc
	rst $38                                          ; $4060: $ff
	rst $38                                          ; $4061: $ff
	ld hl, $7ffc                                     ; $4062: $21 $fc $7f
	rst $38                                          ; $4065: $ff
	sbc a                                            ; $4066: $9f
	ldh a, [$bf]                                     ; $4067: $f0 $bf
	rra                                              ; $4069: $1f
	db $ed                                           ; $406a: $ed
	ld a, h                                          ; $406b: $7c
	add b                                            ; $406c: $80
	ldh [$9c], a                                     ; $406d: $e0 $9c
	cp b                                             ; $406f: $b8
	and b                                            ; $4070: $a0
	dec de                                           ; $4071: $1b
	ldh a, [$bc]                                     ; $4072: $f0 $bc
	ld h, [hl]                                       ; $4074: $66
	rst $38                                          ; $4075: $ff
	db $e3                                           ; $4076: $e3
	sub a                                            ; $4077: $97
	rla                                              ; $4078: $17
	daa                                              ; $4079: $27
	ld a, a                                          ; $407a: $7f
	cp a                                             ; $407b: $bf
	and a                                            ; $407c: $a7
	rst $38                                          ; $407d: $ff
	sbc e                                            ; $407e: $9b
	xor $97                                          ; $407f: $ee $97
	rst SubAFromHL                                          ; $4081: $d7
	rst AddAOntoHL                                          ; $4082: $ef
	db $fd                                           ; $4083: $fd
	ld a, a                                          ; $4084: $7f
	ld d, h                                          ; $4085: $54
	ld a, a                                          ; $4086: $7f
	db $fd                                           ; $4087: $fd
	reti                                             ; $4088: $d9


	rst $38                                          ; $4089: $ff
	sub a                                            ; $408a: $97
	xor b                                            ; $408b: $a8
	ld [hl], h                                       ; $408c: $74
	add sp, $71                                      ; $408d: $e8 $71
	and d                                            ; $408f: $a2
	ld b, b                                          ; $4090: $40
	and h                                            ; $4091: $a4
	ld c, b                                          ; $4092: $48
	ld [hl], e                                       ; $4093: $73
	pop bc                                           ; $4094: $c1
	ld a, [hl]                                       ; $4095: $7e
	res 3, h                                         ; $4096: $cb $9c
	ldh a, [rTIMA]                                   ; $4098: $f0 $05
	adc d                                            ; $409a: $8a
	ld l, h                                          ; $409b: $6c
	ld e, [hl]                                       ; $409c: $5e

jr_051_409d:
	ld [hl], d                                       ; $409d: $72
	adc a                                            ; $409e: $8f
	dec sp                                           ; $409f: $3b
	ld b, b                                          ; $40a0: $40
	ld a, c                                          ; $40a1: $79
	sub d                                            ; $40a2: $92
	dec a                                            ; $40a3: $3d
	sub b                                            ; $40a4: $90
	sbc l                                            ; $40a5: $9d
	ld sp, hl                                        ; $40a6: $f9
	pop hl                                           ; $40a7: $e1
	ld h, a                                          ; $40a8: $67
	db $10                                           ; $40a9: $10
	sub l                                            ; $40aa: $95
	ld bc, $fcfa                                     ; $40ab: $01 $fa $fc
	db $fd                                           ; $40ae: $fd
	rst AddAOntoHL                                          ; $40af: $ef
	rlc d                                            ; $40b0: $cb $02
	ld bc, $0502                                     ; $40b2: $01 $02 $05
	ld a, b                                          ; $40b5: $78
	sub h                                            ; $40b6: $94
	sbc l                                            ; $40b7: $9d
	nop                                              ; $40b8: $00
	db $fd                                           ; $40b9: $fd
	ld a, e                                          ; $40ba: $7b
	xor e                                            ; $40bb: $ab
	ld a, a                                          ; $40bc: $7f
	cp $9e                                           ; $40bd: $fe $9e
	jp $b477                                         ; $40bf: $c3 $77 $b4


	sbc e                                            ; $40c2: $9b
	rlca                                             ; $40c3: $07
	nop                                              ; $40c4: $00
	nop                                              ; $40c5: $00
	inc a                                            ; $40c6: $3c
	ld l, d                                          ; $40c7: $6a
	ld d, b                                          ; $40c8: $50
	sbc l                                            ; $40c9: $9d
	cp b                                             ; $40ca: $b8
	ld b, b                                          ; $40cb: $40
	ld a, c                                          ; $40cc: $79
	sbc b                                            ; $40cd: $98
	rst SubAFromDE                                          ; $40ce: $df
	rst $38                                          ; $40cf: $ff
	ld a, [hl]                                       ; $40d0: $7e
	ld a, [de]                                       ; $40d1: $1a
	ld h, l                                          ; $40d2: $65

jr_051_40d3:
	call nz, Call_051_579b                           ; $40d3: $c4 $9b $57
	cpl                                              ; $40d6: $2f
	ld e, a                                          ; $40d7: $5f
	add hl, hl                                       ; $40d8: $29
	ld a, e                                          ; $40d9: $7b
	db $ed                                           ; $40da: $ed
	sub e                                            ; $40db: $93
	ldh [$f8], a                                     ; $40dc: $e0 $f8
	ld hl, sp-$04                                    ; $40de: $f8 $fc
	cp $f5                                           ; $40e0: $fe $f5
	ld a, [$faf5]                                    ; $40e2: $fa $f5 $fa
	db $fd                                           ; $40e5: $fd
	ld a, [$75fd]                                    ; $40e6: $fa $fd $75
	ld b, b                                          ; $40e9: $40
	inc sp                                           ; $40ea: $33
	add b                                            ; $40eb: $80
	ld [hl], l                                       ; $40ec: $75
	ld [hl], h                                       ; $40ed: $74
	ld d, a                                          ; $40ee: $57
	ldh a, [$97]                                     ; $40ef: $f0 $97
	ld b, l                                          ; $40f1: $45
	ld [bc], a                                       ; $40f2: $02
	ld hl, $0010                                     ; $40f3: $21 $10 $00
	adc b                                            ; $40f6: $88
	ld b, b                                          ; $40f7: $40
	and h                                            ; $40f8: $a4
	ld a, d                                          ; $40f9: $7a
	ld d, d                                          ; $40fa: $52
	rst SubAFromDE                                          ; $40fb: $df
	rrca                                             ; $40fc: $0f
	ld a, d                                          ; $40fd: $7a
	xor e                                            ; $40fe: $ab
	ld a, e                                          ; $40ff: $7b
	or b                                             ; $4100: $b0
	ld a, e                                          ; $4101: $7b
	xor [hl]                                         ; $4102: $ae
	ld a, [hl]                                       ; $4103: $7e
	xor h                                            ; $4104: $ac
	ret                                              ; $4105: $c9


	rst $38                                          ; $4106: $ff
	sub a                                            ; $4107: $97
	db $f4                                           ; $4108: $f4
	ld a, [$e8f4]                                    ; $4109: $fa $f4 $e8
	db $f4                                           ; $410c: $f4
	add sp, -$30                                     ; $410d: $e8 $d0
	add sp, -$27                                     ; $410f: $e8 $d9
	rst $38                                          ; $4111: $ff
	sbc b                                            ; $4112: $98
	ld bc, $0c07                                     ; $4113: $01 $07 $0c
	add hl, bc                                       ; $4116: $09
	inc bc                                           ; $4117: $03
	ld e, a                                          ; $4118: $5f
	ld [hl], e                                       ; $4119: $73
	ld a, c                                          ; $411a: $79
	jr c, jr_051_409d                                ; $411b: $38 $80

	db $fc                                           ; $411d: $fc
	add sp, -$40                                     ; $411e: $e8 $c0
	rst SubAFromDE                                          ; $4120: $df
	rst FarCall                                          ; $4121: $f7
	ld hl, sp-$14                                    ; $4122: $f8 $ec
	rst $38                                          ; $4124: $ff
	ccf                                              ; $4125: $3f
	rst GetHLinHL                                          ; $4126: $cf
	rra                                              ; $4127: $1f
	or [hl]                                          ; $4128: $b6
	ld a, h                                          ; $4129: $7c
	and $40                                          ; $412a: $e6 $40
	db $fc                                           ; $412c: $fc
	rra                                              ; $412d: $1f

jr_051_412e:
	ld b, $01                                        ; $412e: $06 $01
	and h                                            ; $4130: $a4
	db $fc                                           ; $4131: $fc
	ld [bc], a                                       ; $4132: $02
	ld h, a                                          ; $4133: $67
	ldh a, [c]                                       ; $4134: $f2
	adc [hl]                                         ; $4135: $8e
	ld a, [hl]                                       ; $4136: $7e
	inc a                                            ; $4137: $3c
	ld bc, $e0ff                                     ; $4138: $01 $ff $e0
	ld l, a                                          ; $413b: $6f
	ld a, h                                          ; $413c: $7c
	cp c                                             ; $413d: $b9
	sub d                                            ; $413e: $92
	ld l, [hl]                                       ; $413f: $6e
	inc a                                            ; $4140: $3c
	ld bc, $e0fe                                     ; $4141: $01 $fe $e0
	ldh [$f0], a                                     ; $4144: $e0 $f0
	ld hl, sp+$00                                    ; $4146: $f8 $00
	ldh [$f0], a                                     ; $4148: $e0 $f0
	sbc b                                            ; $414a: $98
	cp h                                             ; $414b: $bc
	ld [hl], a                                       ; $414c: $77
	ld b, a                                          ; $414d: $47
	ld a, e                                          ; $414e: $7b
	inc a                                            ; $414f: $3c
	sbc h                                            ; $4150: $9c
	ccf                                              ; $4151: $3f
	ld bc, $7412                                     ; $4152: $01 $12 $74
	ld e, [hl]                                       ; $4155: $5e
	sbc l                                            ; $4156: $9d
	add l                                            ; $4157: $85
	ld a, [bc]                                       ; $4158: $0a
	ld [hl], c                                       ; $4159: $71
	sub e                                            ; $415a: $93
	ld a, e                                          ; $415b: $7b
	rla                                              ; $415c: $17
	ld b, a                                          ; $415d: $47
	ld d, b                                          ; $415e: $50
	ld [hl], e                                       ; $415f: $73
	ldh a, [c]                                       ; $4160: $f2
	sbc h                                            ; $4161: $9c
	and e                                            ; $4162: $a3
	ld e, l                                          ; $4163: $5d
	xor l                                            ; $4164: $ad
	db $fc                                           ; $4165: $fc
	sbc h                                            ; $4166: $9c
	inc b                                            ; $4167: $04
	ld [bc], a                                       ; $4168: $02
	ld [bc], a                                       ; $4169: $02
	call c, $9dff                                    ; $416a: $dc $ff $9d
	inc bc                                           ; $416d: $03
	jr nz, jr_051_41e6                               ; $416e: $20 $76

	dec b                                            ; $4170: $05
	rst $38                                          ; $4171: $ff
	add b                                            ; $4172: $80
	db $fc                                           ; $4173: $fc
	sbc l                                            ; $4174: $9d
	db $fc                                           ; $4175: $fc
	db $ec                                           ; $4176: $ec
	or $ed                                           ; $4177: $f6 $ed
	db $f4                                           ; $4179: $f4
	db $ed                                           ; $417a: $ed
	rst FarCall                                          ; $417b: $f7
	cp $fe                                           ; $417c: $fe $fe
	inc bc                                           ; $417e: $03
	inc bc                                           ; $417f: $03
	dec b                                            ; $4180: $05
	inc b                                            ; $4181: $04
	inc b                                            ; $4182: $04
	dec b                                            ; $4183: $05
	ld [bc], a                                       ; $4184: $02
	nop                                              ; $4185: $00
	ld [$788c], a                                    ; $4186: $ea $8c $78
	db $fc                                           ; $4189: $fc
	cp [hl]                                          ; $418a: $be
	ld [hl], l                                       ; $418b: $75
	jr nz, jr_051_412e                               ; $418c: $20 $a0

	rlca                                             ; $418e: $07
	rlca                                             ; $418f: $07
	adc a                                            ; $4190: $8f
	sbc a                                            ; $4191: $9f
	sub e                                            ; $4192: $93
	rst SubAFromDE                                          ; $4193: $df
	ld e, a                                          ; $4194: $5f
	ld a, a                                          ; $4195: $7f
	rst $38                                          ; $4196: $ff
	inc bc                                           ; $4197: $03
	ld [bc], a                                       ; $4198: $02
	ld [bc], a                                       ; $4199: $02
	ld b, $07                                        ; $419a: $06 $07
	ld c, $8d                                        ; $419c: $0e $8d
	ld e, $49                                        ; $419e: $1e $49
	ld e, b                                          ; $41a0: $58
	ld h, d                                          ; $41a1: $62
	ld b, b                                          ; $41a2: $40
	sub a                                            ; $41a3: $97
	ld e, h                                          ; $41a4: $5c
	ld a, $7c                                        ; $41a5: $3e $7c
	cp [hl]                                          ; $41a7: $be
	ld e, l                                          ; $41a8: $5d
	adc [hl]                                         ; $41a9: $8e
	dec e                                            ; $41aa: $1d
	ld l, $d9                                        ; $41ab: $2e $d9
	rst $38                                          ; $41ad: $ff
	ld a, [hl]                                       ; $41ae: $7e
	adc l                                            ; $41af: $8d
	sbc [hl]                                         ; $41b0: $9e
	db $fd                                           ; $41b1: $fd
	call c, $de7f                                    ; $41b2: $dc $7f $de
	ld bc, $819a                                     ; $41b5: $01 $9a $81
	add e                                            ; $41b8: $83
	add e                                            ; $41b9: $83
	add a                                            ; $41ba: $87
	add a                                            ; $41bb: $87
	ld a, c                                          ; $41bc: $79
	ld [hl], b                                       ; $41bd: $70
	ld [hl], l                                       ; $41be: $75
	ld l, [hl]                                       ; $41bf: $6e
	sbc [hl]                                         ; $41c0: $9e
	ld a, [$80dd]                                    ; $41c1: $fa $dd $80
	rst SubAFromDE                                          ; $41c4: $df
	ret nz                                           ; $41c5: $c0

	rst SubAFromDE                                          ; $41c6: $df
	ldh [rBGP], a                                    ; $41c7: $e0 $47
	ld h, b                                          ; $41c9: $60
	sub a                                            ; $41ca: $97
	ld b, b                                          ; $41cb: $40
	and d                                            ; $41cc: $a2
	ld d, c                                          ; $41cd: $51
	xor b                                            ; $41ce: $a8
	ld d, h                                          ; $41cf: $54
	xor b                                            ; $41d0: $a8
	ld d, h                                          ; $41d1: $54
	xor d                                            ; $41d2: $aa
	ld a, d                                          ; $41d3: $7a
	ld d, d                                          ; $41d4: $52
	db $fc                                           ; $41d5: $fc
	sbc [hl]                                         ; $41d6: $9e
	rra                                              ; $41d7: $1f
	ld a, c                                          ; $41d8: $79
	ld [hl], d                                       ; $41d9: $72
	sbc e                                            ; $41da: $9b
	add l                                            ; $41db: $85
	inc bc                                           ; $41dc: $03
	ld b, c                                          ; $41dd: $41
	jr nz, @+$6f                                     ; $41de: $20 $6d

	ld [hl], d                                       ; $41e0: $72
	ld a, [hl]                                       ; $41e1: $7e
	xor e                                            ; $41e2: $ab
	pop de                                           ; $41e3: $d1
	rst $38                                          ; $41e4: $ff
	ld a, [hl]                                       ; $41e5: $7e

jr_051_41e6:
	add $77                                          ; $41e6: $c6 $77
	cp $9d                                           ; $41e8: $fe $9d
	db $f4                                           ; $41ea: $f4
	ld [$ffd9], a                                    ; $41eb: $ea $d9 $ff
	ld a, h                                          ; $41ee: $7c
	ld d, e                                          ; $41ef: $53
	ld a, a                                          ; $41f0: $7f
	ld e, h                                          ; $41f1: $5c
	sbc [hl]                                         ; $41f2: $9e
	ld c, a                                          ; $41f3: $4f
	ld a, d                                          ; $41f4: $7a
	inc hl                                           ; $41f5: $23
	sbc e                                            ; $41f6: $9b
	di                                               ; $41f7: $f3
	or $e0                                           ; $41f8: $f6 $e0
	push af                                          ; $41fa: $f5
	db $dd                                           ; $41fb: $dd
	rst $38                                          ; $41fc: $ff
	add b                                            ; $41fd: $80
	ld a, b                                          ; $41fe: $78
	cp a                                             ; $41ff: $bf
	sub e                                            ; $4200: $93
	db $e3                                           ; $4201: $e3
	rst $38                                          ; $4202: $ff
	ld a, a                                          ; $4203: $7f
	rra                                              ; $4204: $1f
	rrca                                             ; $4205: $0f
	ld d, a                                          ; $4206: $57
	adc a                                            ; $4207: $8f
	sub b                                            ; $4208: $90
	call c, $fce6                                    ; $4209: $dc $e6 $fc
	ld sp, hl                                        ; $420c: $f9
	rst $38                                          ; $420d: $ff
	ld a, l                                          ; $420e: $7d
	rst $38                                          ; $420f: $ff
	ld l, a                                          ; $4210: $6f
	cp $7a                                           ; $4211: $fe $7a
	ld a, [$1cb3]                                    ; $4213: $fa $b3 $1c
	db $fd                                           ; $4216: $fd
	rst $38                                          ; $4217: $ff
	ld c, a                                          ; $4218: $4f
	xor $ff                                          ; $4219: $ee $ff
	rst $38                                          ; $421b: $ff
	sub a                                            ; $421c: $97
	ld a, [hl]                                       ; $421d: $7e
	ld h, b                                          ; $421e: $60
	sbc h                                            ; $421f: $9c
	sbc $fc                                          ; $4220: $de $fc
	ld a, b                                          ; $4222: $78
	ld a, e                                          ; $4223: $7b
	ld b, c                                          ; $4224: $41
	ld a, l                                          ; $4225: $7d
	ret z                                            ; $4226: $c8

	sbc b                                            ; $4227: $98
	adc $fc                                          ; $4228: $ce $fc
	ld a, h                                          ; $422a: $7c
	ld a, b                                          ; $422b: $78
	ldh a, [$f0]                                     ; $422c: $f0 $f0
	ldh [$75], a                                     ; $422e: $e0 $75
	sub h                                            ; $4230: $94
	sbc [hl]                                         ; $4231: $9e
	ld d, b                                          ; $4232: $50
	ld h, l                                          ; $4233: $65
	sub e                                            ; $4234: $93
	ld [hl], d                                       ; $4235: $72
	ret nc                                           ; $4236: $d0

	sbc [hl]                                         ; $4237: $9e
	ld d, b                                          ; $4238: $50
	db $f4                                           ; $4239: $f4
	sub a                                            ; $423a: $97
	ld e, l                                          ; $423b: $5d
	adc h                                            ; $423c: $8c
	ld c, $2d                                        ; $423d: $0e $2d
	ld l, c                                          ; $423f: $69
	db $f4                                           ; $4240: $f4
	cp c                                             ; $4241: $b9
	ret nz                                           ; $4242: $c0

	db $fd                                           ; $4243: $fd
	sub h                                            ; $4244: $94
	db $10                                           ; $4245: $10
	ld [$0006], sp                                   ; $4246: $08 $06 $00
	add hl, bc                                       ; $4249: $09
	or [hl]                                          ; $424a: $b6
	nop                                              ; $424b: $00
	xor $4a                                          ; $424c: $ee $4a
	inc bc                                           ; $424e: $03
	db $fc                                           ; $424f: $fc
	ld [hl], c                                       ; $4250: $71
	sub h                                            ; $4251: $94
	rst $38                                          ; $4252: $ff
	sub d                                            ; $4253: $92
	inc bc                                           ; $4254: $03
	nop                                              ; $4255: $00
	ld h, a                                          ; $4256: $67
	ld l, a                                          ; $4257: $6f
	pop hl                                           ; $4258: $e1
	ret nc                                           ; $4259: $d0

	and b                                            ; $425a: $a0
	ld d, b                                          ; $425b: $50
	and b                                            ; $425c: $a0
	ret nc                                           ; $425d: $d0

	inc bc                                           ; $425e: $03
	inc bc                                           ; $425f: $03
	ccf                                              ; $4260: $3f
	ld [hl], h                                       ; $4261: $74
	call nz, Call_051_7f99                           ; $4262: $c4 $99 $7f
	ld d, b                                          ; $4265: $50
	xor b                                            ; $4266: $a8
	push de                                          ; $4267: $d5
	ld [$7a3f], a                                    ; $4268: $ea $3f $7a
	cp b                                             ; $426b: $b8
	reti                                             ; $426c: $d9


	rst $38                                          ; $426d: $ff
	sub a                                            ; $426e: $97
	dec e                                            ; $426f: $1d
	ld a, [hl-]                                      ; $4270: $3a
	ld a, l                                          ; $4271: $7d
	cp $ff                                           ; $4272: $fe $ff
	ld a, a                                          ; $4274: $7f
	xor a                                            ; $4275: $af
	ld d, a                                          ; $4276: $57
	db $dd                                           ; $4277: $dd
	rst $38                                          ; $4278: $ff
	sbc h                                            ; $4279: $9c
	rst SubAFromBC                                          ; $427a: $e7
	pop af                                           ; $427b: $f1
	ld hl, sp+$79                                    ; $427c: $f8 $79
	xor b                                            ; $427e: $a8
	sbc c                                            ; $427f: $99
	ld b, c                                          ; $4280: $41
	add b                                            ; $4281: $80
	ld b, c                                          ; $4282: $41
	ldh [c], a                                       ; $4283: $e2
	add c                                            ; $4284: $81
	ld b, b                                          ; $4285: $40
	ld h, [hl]                                       ; $4286: $66
	or d                                             ; $4287: $b2
	sub a                                            ; $4288: $97
	ld e, l                                          ; $4289: $5d
	xor [hl]                                         ; $428a: $ae
	dec d                                            ; $428b: $15
	ld l, $7e                                        ; $428c: $2e $7e
	cp $5e                                           ; $428e: $fe $5e
	cp e                                             ; $4290: $bb
	ld [hl], l                                       ; $4291: $75
	nop                                              ; $4292: $00
	sbc c                                            ; $4293: $99
	ld hl, sp-$3c                                    ; $4294: $f8 $c4
	inc c                                            ; $4296: $0c
	inc e                                            ; $4297: $1c
	ld c, a                                          ; $4298: $4f
	add l                                            ; $4299: $85
	db $dd                                           ; $429a: $dd
	ld bc, $009c                                     ; $429b: $01 $9c $00
	dec b                                            ; $429e: $05
	add a                                            ; $429f: $87
	call c, $df06                                    ; $42a0: $dc $06 $df
	rlca                                             ; $42a3: $07
	sub l                                            ; $42a4: $95
	db $fc                                           ; $42a5: $fc
	and h                                            ; $42a6: $a4
	inc h                                            ; $42a7: $24
	ld h, $23                                        ; $42a8: $26 $23
	ld hl, $e321                                     ; $42aa: $21 $21 $e3
	ldh [$60], a                                     ; $42ad: $e0 $60
	db $db                                           ; $42af: $db
	ldh [$9b], a                                     ; $42b0: $e0 $9b
	ld d, [hl]                                       ; $42b2: $56
	ld a, d                                          ; $42b3: $7a
	ld c, [hl]                                       ; $42b4: $4e
	add e                                            ; $42b5: $83
	cp $9e                                           ; $42b6: $fe $9e
	add c                                            ; $42b8: $81
	ld sp, hl                                        ; $42b9: $f9
	sbc c                                            ; $42ba: $99
	dec [hl]                                         ; $42bb: $35
	ld a, [hl+]                                      ; $42bc: $2a
	dec [hl]                                         ; $42bd: $35
	ld l, d                                          ; $42be: $6a
	add l                                            ; $42bf: $85
	add d                                            ; $42c0: $82
	ld a, b                                          ; $42c1: $78
	xor [hl]                                         ; $42c2: $ae

Jump_051_42c3:
	ld h, h                                          ; $42c3: $64
	rst $38                                          ; $42c4: $ff
	sub a                                            ; $42c5: $97
	sub b                                            ; $42c6: $90
	ld c, b                                          ; $42c7: $48
	add b                                            ; $42c8: $80
	ld b, h                                          ; $42c9: $44
	and d                                            ; $42ca: $a2
	ld d, b                                          ; $42cb: $50
	add hl, hl                                       ; $42cc: $29
	rra                                              ; $42cd: $1f
	ld [hl], l                                       ; $42ce: $75
	ld [hl], e                                       ; $42cf: $73
	ld a, e                                          ; $42d0: $7b
	or a                                             ; $42d1: $b7
	ld [hl], l                                       ; $42d2: $75
	ld [hl], h                                       ; $42d3: $74
	halt                                             ; $42d4: $76
	xor h                                            ; $42d5: $ac
	ld e, l                                          ; $42d6: $5d
	add b                                            ; $42d7: $80
	ld [hl], l                                       ; $42d8: $75
	ld [hl+], a                                      ; $42d9: $22
	rst SubAFromHL                                          ; $42da: $d7
	rst $38                                          ; $42db: $ff
	ld a, h                                          ; $42dc: $7c
	rst SubAFromBC                                          ; $42dd: $e7

jr_051_42de:
	sbc c                                            ; $42de: $99
	rra                                              ; $42df: $1f
	sbc a                                            ; $42e0: $9f
	ld b, a                                          ; $42e1: $47
	and b                                            ; $42e2: $a0
	ld d, h                                          ; $42e3: $54
	xor d                                            ; $42e4: $aa
	reti                                             ; $42e5: $d9


	rst $38                                          ; $42e6: $ff
	ld a, h                                          ; $42e7: $7c
	cp $6f                                           ; $42e8: $fe $6f
	ld l, b                                          ; $42ea: $68
	ld a, b                                          ; $42eb: $78
	dec [hl]                                         ; $42ec: $35
	call c, Call_051_7cff                            ; $42ed: $dc $ff $7c
	db $ed                                           ; $42f0: $ed
	sbc h                                            ; $42f1: $9c
	inc c                                            ; $42f2: $0c
	ld hl, sp-$10                                    ; $42f3: $f8 $f0
	cp $9b                                           ; $42f5: $fe $9b
	rst FarCall                                          ; $42f7: $f7
	dec bc                                           ; $42f8: $0b
	rst FarCall                                          ; $42f9: $f7
	rst GetHLinHL                                          ; $42fa: $cf
	db $dd                                           ; $42fb: $dd
	rst $38                                          ; $42fc: $ff
	sbc [hl]                                         ; $42fd: $9e
	jr nz, jr_051_42de                               ; $42fe: $20 $de

	ld b, b                                          ; $4300: $40
	sbc e                                            ; $4301: $9b
	jr nz, jr_051_4314                               ; $4302: $20 $10

	inc c                                            ; $4304: $0c
	ld bc, $9379                                     ; $4305: $01 $79 $93
	ld a, a                                          ; $4308: $7f
	adc e                                            ; $4309: $8b
	ld a, l                                          ; $430a: $7d
	ld [hl], a                                       ; $430b: $77
	ld h, b                                          ; $430c: $60
	ret c                                            ; $430d: $d8

	jp hl                                            ; $430e: $e9


	sbc [hl]                                         ; $430f: $9e
	ccf                                              ; $4310: $3f
	ldh a, [c]                                       ; $4311: $f2
	ld a, l                                          ; $4312: $7d
	rrca                                             ; $4313: $0f

jr_051_4314:
	sbc [hl]                                         ; $4314: $9e
	inc bc                                           ; $4315: $03
	ld a, e                                          ; $4316: $7b
	ld l, b                                          ; $4317: $68
	ld l, a                                          ; $4318: $6f
	ld d, l                                          ; $4319: $55
	ld [hl], a                                       ; $431a: $77
	ld sp, hl                                        ; $431b: $f9
	sbc h                                            ; $431c: $9c
	add sp, -$0b                                     ; $431d: $e8 $f5
	ld a, [$6c74]                                    ; $431f: $fa $74 $6c
	ld a, a                                          ; $4322: $7f
	ret c                                            ; $4323: $d8

	halt                                             ; $4324: $76
	ld d, $73                                        ; $4325: $16 $73
	db $d3                                           ; $4327: $d3
	ld a, a                                          ; $4328: $7f
	ld [hl], e                                       ; $4329: $73
	ld a, e                                          ; $432a: $7b
	xor $76                                          ; $432b: $ee $76
	or h                                             ; $432d: $b4
	ld [hl], e                                       ; $432e: $73
	ld [hl], a                                       ; $432f: $77
	sbc [hl]                                         ; $4330: $9e
	ld hl, $cb73                                     ; $4331: $21 $73 $cb
	ld e, a                                          ; $4334: $5f
	ld d, c                                          ; $4335: $51
	ld [hl], l                                       ; $4336: $75
	ld a, a                                          ; $4337: $7f
	sbc [hl]                                         ; $4338: $9e
	dec b                                            ; $4339: $05
	ld e, e                                          ; $433a: $5b
	ldh a, [$9b]                                     ; $433b: $f0 $9b
	rst SubAFromHL                                          ; $433d: $d7
	xor a                                            ; $433e: $af
	ld e, a                                          ; $433f: $5f
	cp a                                             ; $4340: $bf

Jump_051_4341:
	ld a, d                                          ; $4341: $7a
	push bc                                          ; $4342: $c5
	ld l, e                                          ; $4343: $6b
	db $dd                                           ; $4344: $dd
	sbc e                                            ; $4345: $9b
	ldh [rP1], a                                     ; $4346: $e0 $00
	rst JumpTable                                          ; $4348: $c7
	ldh [$7a], a                                     ; $4349: $e0 $7a
	dec hl                                           ; $434b: $2b
	ld a, d                                          ; $434c: $7a
	ldh a, [c]                                       ; $434d: $f2
	sbc [hl]                                         ; $434e: $9e
	inc bc                                           ; $434f: $03
	ld a, c                                          ; $4350: $79
	sub h                                            ; $4351: $94
	halt                                             ; $4352: $76
	db $eb                                           ; $4353: $eb
	sbc l                                            ; $4354: $9d
	and $03                                          ; $4355: $e6 $03
	ei                                               ; $4357: $fb
	ld h, [hl]                                       ; $4358: $66
	rst SubAFromDE                                          ; $4359: $df
	sbc l                                            ; $435a: $9d
	jp $f341                                         ; $435b: $c3 $41 $f3


	sbc [hl]                                         ; $435e: $9e
	ld h, b                                          ; $435f: $60
	ld h, d                                          ; $4360: $62
	add $fb                                          ; $4361: $c6 $fb
	sbc l                                            ; $4363: $9d
	inc d                                            ; $4364: $14
	ld [bc], a                                       ; $4365: $02
	ld a, e                                          ; $4366: $7b
	ld h, a                                          ; $4367: $67
	sbc l                                            ; $4368: $9d
	ld [bc], a                                       ; $4369: $02
	inc b                                            ; $436a: $04
	ld l, d                                          ; $436b: $6a
	or e                                             ; $436c: $b3
	sub l                                            ; $436d: $95
	inc bc                                           ; $436e: $03
	rrca                                             ; $436f: $0f
	rlca                                             ; $4370: $07
	adc e                                            ; $4371: $8b
	dec b                                            ; $4372: $05
	adc e                                            ; $4373: $8b
	dec d                                            ; $4374: $15
	dec hl                                           ; $4375: $2b
	rla                                              ; $4376: $17
	xor a                                            ; $4377: $af
	ld a, c                                          ; $4378: $79
	ld [hl], e                                       ; $4379: $73
	ld h, a                                          ; $437a: $67
	ld l, h                                          ; $437b: $6c
	call nc, $73ff                                   ; $437c: $d4 $ff $73
	ld b, c                                          ; $437f: $41
	sub $ff                                          ; $4380: $d6 $ff
	sbc [hl]                                         ; $4382: $9e
	ld b, b                                          ; $4383: $40
	ld a, c                                          ; $4384: $79
	inc h                                            ; $4385: $24
	ld a, l                                          ; $4386: $7d
	sub h                                            ; $4387: $94
	ld e, e                                          ; $4388: $5b
	ld e, a                                          ; $4389: $5f
	sbc [hl]                                         ; $438a: $9e
	add b                                            ; $438b: $80
	ld a, c                                          ; $438c: $79
	ld [de], a                                       ; $438d: $12
	ld d, a                                          ; $438e: $57
	ldh a, [$7a]                                     ; $438f: $f0 $7a
	sub h                                            ; $4391: $94
	sbc l                                            ; $4392: $9d
	ld d, l                                          ; $4393: $55
	ld a, [$de5f]                                    ; $4394: $fa $5f $de
	sbc d                                            ; $4397: $9a
	ld b, b                                          ; $4398: $40
	jr jr_051_439e                                   ; $4399: $18 $03

	nop                                              ; $439b: $00
	ld b, b                                          ; $439c: $40
	ld a, e                                          ; $439d: $7b

jr_051_439e:
	db $ec                                           ; $439e: $ec
	sbc l                                            ; $439f: $9d
	add b                                            ; $43a0: $80
	ldh [$6e], a                                     ; $43a1: $e0 $6e
	adc [hl]                                         ; $43a3: $8e
	cp $9e                                           ; $43a4: $fe $9e
	jr nc, jr_051_4423                               ; $43a6: $30 $7b

	ld c, l                                          ; $43a8: $4d
	ld [hl], l                                       ; $43a9: $75
	ld l, [hl]                                       ; $43aa: $6e
	sbc [hl]                                         ; $43ab: $9e
	ret nz                                           ; $43ac: $c0

	ld [hl], a                                       ; $43ad: $77
	xor $70                                          ; $43ae: $ee $70
	sub e                                            ; $43b0: $93
	sbc [hl]                                         ; $43b1: $9e
	rra                                              ; $43b2: $1f
	ld a, [$e09e]                                    ; $43b3: $fa $9e $e0
	ld h, h                                          ; $43b6: $64
	add b                                            ; $43b7: $80
	ld h, [hl]                                       ; $43b8: $66
	xor d                                            ; $43b9: $aa
	sbc [hl]                                         ; $43ba: $9e
	ret nz                                           ; $43bb: $c0

	ld l, e                                          ; $43bc: $6b
	ldh a, [$9e]                                     ; $43bd: $f0 $9e
	add b                                            ; $43bf: $80
	ld l, e                                          ; $43c0: $6b
	ld a, [de]                                       ; $43c1: $1a
	ld a, [hl]                                       ; $43c2: $7e
	ld c, c                                          ; $43c3: $49
	ld h, [hl]                                       ; $43c4: $66
	sbc c                                            ; $43c5: $99
	ld b, [hl]                                       ; $43c6: $46
	adc c                                            ; $43c7: $89
	inc bc                                           ; $43c8: $03
	ldh a, [$fb]                                     ; $43c9: $f0 $fb
	ld l, e                                          ; $43cb: $6b
	cp b                                             ; $43cc: $b8
	ld h, a                                          ; $43cd: $67
	adc a                                            ; $43ce: $8f
	ld l, e                                          ; $43cf: $6b
	add sp, -$62                                     ; $43d0: $e8 $9e
	rrca                                             ; $43d2: $0f
	ld h, h                                          ; $43d3: $64
	rst SubAFromDE                                          ; $43d4: $df
	ld a, [hl]                                       ; $43d5: $7e
	db $fd                                           ; $43d6: $fd
	db $fd                                           ; $43d7: $fd
	sbc [hl]                                         ; $43d8: $9e
	inc e                                            ; $43d9: $1c
	ld h, a                                          ; $43da: $67
	db $d3                                           ; $43db: $d3
	ld [hl], a                                       ; $43dc: $77
	ld h, b                                          ; $43dd: $60
	sbc l                                            ; $43de: $9d
	ld bc, $7a0c                                     ; $43df: $01 $0c $7a
	cp [hl]                                          ; $43e2: $be
	ld a, h                                          ; $43e3: $7c
	cp d                                             ; $43e4: $ba
	ld a, e                                          ; $43e5: $7b
	ldh a, [c]                                       ; $43e6: $f2
	sbc [hl]                                         ; $43e7: $9e
	ccf                                              ; $43e8: $3f
	db $dd                                           ; $43e9: $dd
	rst $38                                          ; $43ea: $ff
	sub a                                            ; $43eb: $97
	ld h, c                                          ; $43ec: $61
	ld [bc], a                                       ; $43ed: $02
	dec b                                            ; $43ee: $05
	ld a, [bc]                                       ; $43ef: $0a
	dec d                                            ; $43f0: $15
	xor e                                            ; $43f1: $ab
	ld e, a                                          ; $43f2: $5f
	cp a                                             ; $43f3: $bf
	ld h, h                                          ; $43f4: $64
	ld b, a                                          ; $43f5: $47
	ld a, a                                          ; $43f6: $7f
	or $4e                                           ; $43f7: $f6 $4e
	ret                                              ; $43f9: $c9


	dec a                                            ; $43fa: $3d
	nop                                              ; $43fb: $00
	rst SubAFromDE                                          ; $43fc: $df
	inc sp                                           ; $43fd: $33
	sbc l                                            ; $43fe: $9d
	dec [hl]                                         ; $43ff: $35
	ld [hl], e                                       ; $4400: $73
	reti                                             ; $4401: $d9


	inc sp                                           ; $4402: $33
	ccf                                              ; $4403: $3f
	or $9c                                           ; $4404: $f6 $9c
	ld h, h                                          ; $4406: $64
	ld b, h                                          ; $4407: $44
	ld b, l                                          ; $4408: $45
	ld a, e                                          ; $4409: $7b
	or $9e                                           ; $440a: $f6 $9e
	ld h, [hl]                                       ; $440c: $66
	ld h, a                                          ; $440d: $67
	or $df                                           ; $440e: $f6 $df
	ld h, [hl]                                       ; $4410: $66
	db $dd                                           ; $4411: $dd
	inc sp                                           ; $4412: $33
	sbc [hl]                                         ; $4413: $9e
	ld d, l                                          ; $4414: $55
	sbc $33                                          ; $4415: $de $33
	ld [hl], e                                       ; $4417: $73
	or $9c                                           ; $4418: $f6 $9c
	scf                                              ; $441a: $37
	ld [hl], l                                       ; $441b: $75
	ld d, e                                          ; $441c: $53
	ld a, e                                          ; $441d: $7b
	rst SubAFromBC                                          ; $441e: $e7
	sbc l                                            ; $441f: $9d
	ld h, [hl]                                       ; $4420: $66
	ld h, e                                          ; $4421: $63
	ld [hl], e                                       ; $4422: $73

jr_051_4423:
	or $9e                                           ; $4423: $f6 $9e
	ld [hl], $dd                                     ; $4425: $36 $dd
	ld h, [hl]                                       ; $4427: $66
	ld a, e                                          ; $4428: $7b
	or $9e                                           ; $4429: $f6 $9e
	ld [hl], a                                       ; $442b: $77
	ld h, a                                          ; $442c: $67
	or $9b                                           ; $442d: $f6 $9b
	inc sp                                           ; $442f: $33
	ld [hl], l                                       ; $4430: $75
	inc sp                                           ; $4431: $33
	inc sp                                           ; $4432: $33
	ld a, e                                          ; $4433: $7b
	push af                                          ; $4434: $f5
	call nc, $8033                                   ; $4435: $d4 $33 $80
	rlca                                             ; $4438: $07
	rst $38                                          ; $4439: $ff
	sbc [hl]                                         ; $443a: $9e
	add b                                            ; $443b: $80
	or c                                             ; $443c: $b1
	ld b, b                                          ; $443d: $40
	and b                                            ; $443e: $a0
	ld d, b                                          ; $443f: $50
	xor b                                            ; $4440: $a8
	ld d, b                                          ; $4441: $50
	xor b                                            ; $4442: $a8
	nop                                              ; $4443: $00
	nop                                              ; $4444: $00
	nop                                              ; $4445: $00
	nop                                              ; $4446: $00
	nop                                              ; $4447: $00
	nop                                              ; $4448: $00
	nop                                              ; $4449: $00
	inc bc                                           ; $444a: $03
	nop                                              ; $444b: $00
	nop                                              ; $444c: $00
	cp h                                             ; $444d: $bc
	nop                                              ; $444e: $00
	nop                                              ; $444f: $00
	nop                                              ; $4450: $00
	rlca                                             ; $4451: $07
	ret nz                                           ; $4452: $c0

	sbc h                                            ; $4453: $9c
	ccf                                              ; $4454: $3f
	inc bc                                           ; $4455: $03
	rst $38                                          ; $4456: $ff
	rst FarCall                                          ; $4457: $f7
	ld a, e                                          ; $4458: $7b
	push af                                          ; $4459: $f5
	sbc $ff                                          ; $445a: $de $ff
	rst FarCall                                          ; $445c: $f7
	sub l                                            ; $445d: $95
	ldh [rP1], a                                     ; $445e: $e0 $00
	inc c                                            ; $4460: $0c
	ldh a, [hLCDCIntHandlerIdx]                                     ; $4461: $f0 $81
	cp $50                                           ; $4463: $fe $50
	scf                                              ; $4465: $37
	ld d, b                                          ; $4466: $50
	dec sp                                           ; $4467: $3b
	ld e, a                                          ; $4468: $5f
	db $fc                                           ; $4469: $fc
	sbc c                                            ; $446a: $99
	ret nc                                           ; $446b: $d0

	dec sp                                           ; $446c: $3b
	add $39                                          ; $446d: $c6 $39
	and [hl]                                         ; $446f: $a6
	ld e, c                                          ; $4470: $59
	ld d, a                                          ; $4471: $57
	db $fc                                           ; $4472: $fc
	sub a                                            ; $4473: $97
	and e                                            ; $4474: $a3
	ld e, h                                          ; $4475: $5c
	ld b, d                                          ; $4476: $42
	cp l                                             ; $4477: $bd
	and a                                            ; $4478: $a7
	ld e, b                                          ; $4479: $58
	ld b, [hl]                                       ; $447a: $46
	cp c                                             ; $447b: $b9
	ld h, a                                          ; $447c: $67
	db $fc                                           ; $447d: $fc
	sbc d                                            ; $447e: $9a
	ld e, $e1                                        ; $447f: $1e $e1
	ld a, [de]                                       ; $4481: $1a
	pop hl                                           ; $4482: $e1
	ld [de], a                                       ; $4483: $12
	ld l, e                                          ; $4484: $6b
	cp $97                                           ; $4485: $fe $97
	db $10                                           ; $4487: $10
	db $e3                                           ; $4488: $e3
	sub b                                            ; $4489: $90
	ld h, e                                          ; $448a: $63
	ld c, $f0                                        ; $448b: $0e $f0
	dec c                                            ; $448d: $0d
	ldh a, [$57]                                     ; $448e: $f0 $57
	db $fc                                           ; $4490: $fc
	sbc l                                            ; $4491: $9d
	add hl, hl                                       ; $4492: $29
	add $4f                                          ; $4493: $c6 $4f
	cp $98                                           ; $4495: $fe $98
	ld a, b                                          ; $4497: $78
	rlca                                             ; $4498: $07
	cp b                                             ; $4499: $b8
	rlca                                             ; $449a: $07
	ld a, b                                          ; $449b: $78
	rlca                                             ; $449c: $07
	or b                                             ; $449d: $b0

Call_051_449e:
	ld h, e                                          ; $449e: $63
	db $fc                                           ; $449f: $fc
	sbc c                                            ; $44a0: $99
	db $ec                                           ; $44a1: $ec
	inc de                                           ; $44a2: $13
	db $ec                                           ; $44a3: $ec
	inc de                                           ; $44a4: $13
	add sp, $17                                      ; $44a5: $e8 $17
	ld e, a                                          ; $44a7: $5f
	cp $9b                                           ; $44a8: $fe $9b

jr_051_44aa:
	cp h                                             ; $44aa: $bc
	inc bc                                           ; $44ab: $03
	cp b                                             ; $44ac: $b8
	rlca                                             ; $44ad: $07
	ld d, a                                          ; $44ae: $57
	db $fc                                           ; $44af: $fc
	sbc l                                            ; $44b0: $9d
	ccf                                              ; $44b1: $3f
	ret nz                                           ; $44b2: $c0

	ld l, a                                          ; $44b3: $6f
	cp $9e                                           ; $44b4: $fe $9e
	dec a                                            ; $44b6: $3d
	ld l, e                                          ; $44b7: $6b
	db $fc                                           ; $44b8: $fc
	sbc c                                            ; $44b9: $99
	ld a, [bc]                                       ; $44ba: $0a
	push af                                          ; $44bb: $f5
	dec b                                            ; $44bc: $05
	ld a, [$f40b]                                    ; $44bd: $fa $0b $f4
	ld e, a                                          ; $44c0: $5f
	db $fc                                           ; $44c1: $fc
	sbc e                                            ; $44c2: $9b
	ld a, [hl+]                                      ; $44c3: $2a
	ld de, $11a6                                     ; $44c4: $11 $a6 $11
	ld e, a                                          ; $44c7: $5f

jr_051_44c8:
	db $fc                                           ; $44c8: $fc
	sub h                                            ; $44c9: $94
	ld h, $11                                        ; $44ca: $26 $11
	dec a                                            ; $44cc: $3d
	jp nz, $c13e                                     ; $44cd: $c2 $3e $c1

	dec a                                            ; $44d0: $3d
	jp nz, $c136                                     ; $44d1: $c2 $36 $c1

	dec l                                            ; $44d4: $2d
	ld l, e                                          ; $44d5: $6b
	db $fc                                           ; $44d6: $fc
	sbc e                                            ; $44d7: $9b
	inc e                                            ; $44d8: $1c
	db $e3                                           ; $44d9: $e3
	cp b                                             ; $44da: $b8
	ld b, a                                          ; $44db: $47
	ld h, a                                          ; $44dc: $67
	db $fc                                           ; $44dd: $fc
	adc a                                            ; $44de: $8f
	jr jr_051_44c8                                   ; $44df: $18 $e7

	jr c, jr_051_44aa                                ; $44e1: $38 $c7

	ld h, [hl]                                       ; $44e3: $66
	sbc b                                            ; $44e4: $98
	ld h, l                                          ; $44e5: $65
	sbc b                                            ; $44e6: $98
	ld b, [hl]                                       ; $44e7: $46
	cp b                                             ; $44e8: $b8
	ld b, l                                          ; $44e9: $45
	cp b                                             ; $44ea: $b8
	add $38                                          ; $44eb: $c6 $38
	push bc                                          ; $44ed: $c5
	jr c, jr_051_4567                                ; $44ee: $38 $77

	db $fc                                           ; $44f0: $fc
	sbc [hl]                                         ; $44f1: $9e
	call nc, $eab9                                   ; $44f2: $d4 $b9 $ea
	push af                                          ; $44f5: $f5
	ld a, [$faf5]                                    ; $44f6: $fa $f5 $fa
	db $fd                                           ; $44f9: $fd
	cp $04                                           ; $44fa: $fe $04
	adc e                                            ; $44fc: $8b
	inc bc                                           ; $44fd: $03
	add hl, bc                                       ; $44fe: $09

Jump_051_44ff:
	rlca                                             ; $44ff: $07
	daa                                              ; $4500: $27
	ld e, $4f                                        ; $4501: $1e $4f
	jr c, jr_051_4524                                ; $4503: $38 $1f

	ld [hl], b                                       ; $4505: $70
	cp a                                             ; $4506: $bf
	ld h, b                                          ; $4507: $60
	ccf                                              ; $4508: $3f
	ld h, b                                          ; $4509: $60
	cp a                                             ; $450a: $bf
	ld h, b                                          ; $450b: $60
	ld a, a                                          ; $450c: $7f
	ldh a, [rIE]                                     ; $450d: $f0 $ff
	add b                                            ; $450f: $80
	rst $38                                          ; $4510: $ff
	or e                                             ; $4511: $b3
	rst $38                                          ; $4512: $ff
	rst $38                                          ; $4513: $ff
	rst $38                                          ; $4514: $ff
	cp $f4                                           ; $4515: $fe $f4
	db $fc                                           ; $4517: $fc
	ld a, [$ebf5]                                    ; $4518: $fa $f5 $eb
	rst SubAFromHL                                          ; $451b: $d7
	xor e                                            ; $451c: $ab
	ld d, a                                          ; $451d: $57
	rlca                                             ; $451e: $07
	inc e                                            ; $451f: $1c
	sbc e                                            ; $4520: $9b
	rra                                              ; $4521: $1f
	db $e3                                           ; $4522: $e3
	inc bc                                           ; $4523: $03

jr_051_4524:
	db $fd                                           ; $4524: $fd
	cp e                                             ; $4525: $bb
	ld a, [$ebf5]                                    ; $4526: $fa $f5 $eb
	rst SubAFromHL                                          ; $4529: $d7
	xor a                                            ; $452a: $af
	db $10                                           ; $452b: $10
	sub b                                            ; $452c: $90
	rst FarCall                                          ; $452d: $f7
	sub b                                            ; $452e: $90
	ei                                               ; $452f: $fb
	ld h, b                                          ; $4530: $60
	ld [hl], a                                       ; $4531: $77
	ret nc                                           ; $4532: $d0

	dec de                                           ; $4533: $1b
	add sp, $0f                                      ; $4534: $e8 $0f
	db $f4                                           ; $4536: $f4
	rlca                                             ; $4537: $07
	db $f4                                           ; $4538: $f4
	rlca                                             ; $4539: $07
	ld a, [$4603]                                    ; $453a: $fa $03 $46
	ret nz                                           ; $453d: $c0

	ld d, [hl]                                       ; $453e: $56
	call nz, $fc77                                   ; $453f: $c4 $77 $fc
	halt                                             ; $4542: $76
	call z, $fc57                                    ; $4543: $cc $57 $fc
	ld c, $c0                                        ; $4546: $0e $c0
	sbc [hl]                                         ; $4548: $9e
	add hl, bc                                       ; $4549: $09
	ld a, d                                          ; $454a: $7a
	ret nz                                           ; $454b: $c0

	ld e, [hl]                                       ; $454c: $5e
	call nz, $b476                                   ; $454d: $c4 $76 $b4
	ld d, [hl]                                       ; $4550: $56
	call nz, $c036                                   ; $4551: $c4 $36 $c0
	ld h, [hl]                                       ; $4554: $66
	ret z                                            ; $4555: $c8

	ld h, a                                          ; $4556: $67
	db $fc                                           ; $4557: $fc
	ld d, [hl]                                       ; $4558: $56
	call nz, $fc77                                   ; $4559: $c4 $77 $fc
	sbc e                                            ; $455c: $9b
	jr z, jr_051_4572                                ; $455d: $28 $13

	inc h                                            ; $455f: $24
	inc de                                           ; $4560: $13
	ld [hl], a                                       ; $4561: $77
	db $fc                                           ; $4562: $fc
	sub h                                            ; $4563: $94
	ld [$0433], sp                                   ; $4564: $08 $33 $04

jr_051_4567:
	inc sp                                           ; $4567: $33
	nop                                              ; $4568: $00
	inc sp                                           ; $4569: $33
	ld b, $31                                        ; $456a: $06 $31
	dec l                                            ; $456c: $2d
	jp nz, Jump_051_7a16                             ; $456d: $c2 $16 $7a

	ret z                                            ; $4570: $c8

	ld e, a                                          ; $4571: $5f

jr_051_4572:
	db $fc                                           ; $4572: $fc
	halt                                             ; $4573: $76
	call z, $fc57                                    ; $4574: $cc $57 $fc
	ld h, [hl]                                       ; $4577: $66
	ret z                                            ; $4578: $c8

	ld h, a                                          ; $4579: $67
	db $fc                                           ; $457a: $fc
	ld h, [hl]                                       ; $457b: $66
	db $e4                                           ; $457c: $e4
	ld h, a                                          ; $457d: $67
	cp $76                                           ; $457e: $fe $76
	call z, $fe5f                                    ; $4580: $cc $5f $fe
	sbc h                                            ; $4583: $9c
	cp [hl]                                          ; $4584: $be
	ld h, b                                          ; $4585: $60
	add sp, -$4f                                     ; $4586: $e8 $b1
	ret nc                                           ; $4588: $d0

	ldh [$c0], a                                     ; $4589: $e0 $c0
	call nz, $55aa                                   ; $458b: $c4 $aa $55
	xor [hl]                                         ; $458e: $ae
	ld a, [hl+]                                      ; $458f: $2a
	inc d                                            ; $4590: $14
	nop                                              ; $4591: $00
	nop                                              ; $4592: $00
	nop                                              ; $4593: $00
	nop                                              ; $4594: $00
	ld b, c                                          ; $4595: $41
	adc d                                            ; $4596: $8a
	dec e                                            ; $4597: $1d
	cp c                                             ; $4598: $b9
	dec hl                                           ; $4599: $2b
	ld d, a                                          ; $459a: $57
	cpl                                              ; $459b: $2f
	ld e, a                                          ; $459c: $5f
	xor a                                            ; $459d: $af
	ld e, a                                          ; $459e: $5f
	cp a                                             ; $459f: $bf
	ld a, [$039e]                                    ; $45a0: $fa $9e $03
	ld d, a                                          ; $45a3: $57
	cp $9e                                           ; $45a4: $fe $9e
	ei                                               ; $45a6: $fb
	ld [bc], a                                       ; $45a7: $02
	ret nz                                           ; $45a8: $c0

	ld b, $c0                                        ; $45a9: $06 $c0
	ld a, [hl]                                       ; $45ab: $7e
	adc $4f                                          ; $45ac: $ce $4f
	cp $6d                                           ; $45ae: $fe $6d
	add b                                            ; $45b0: $80
	ld e, a                                          ; $45b1: $5f
	db $fc                                           ; $45b2: $fc
	ld h, [hl]                                       ; $45b3: $66
	ret z                                            ; $45b4: $c8

	sbc l                                            ; $45b5: $9d
	ldh [$1f], a                                     ; $45b6: $e0 $1f
	ld l, a                                          ; $45b8: $6f
	cp $9a                                           ; $45b9: $fe $9a
	xor h                                            ; $45bb: $ac
	inc de                                           ; $45bc: $13
	xor b                                            ; $45bd: $a8
	rla                                              ; $45be: $17
	xor h                                            ; $45bf: $ac
	ld a, c                                          ; $45c0: $79
	ld l, [hl]                                       ; $45c1: $6e
	sbc d                                            ; $45c2: $9a
	call z, $c033                                    ; $45c3: $cc $33 $c0
	scf                                              ; $45c6: $37
	call nz, $fc7b                                   ; $45c7: $c4 $7b $fc
	ld e, [hl]                                       ; $45ca: $5e
	call nz, $3b9e                                   ; $45cb: $c4 $9e $3b
	ld [hl], e                                       ; $45ce: $73
	db $fc                                           ; $45cf: $fc
	ld e, [hl]                                       ; $45d0: $5e
	call nz, $159d                                   ; $45d1: $c4 $9d $15
	ld [$fc77], a                                    ; $45d4: $ea $77 $fc
	sbc e                                            ; $45d7: $9b
	ld [bc], a                                       ; $45d8: $02
	ld sp, $3106                                     ; $45d9: $31 $06 $31
	ld [hl], a                                       ; $45dc: $77
	db $fc                                           ; $45dd: $fc
	ld h, a                                          ; $45de: $67
	cp $02                                           ; $45df: $fe $02
	ret nz                                           ; $45e1: $c0

	ld b, d                                          ; $45e2: $42
	ret nz                                           ; $45e3: $c0

	add b                                            ; $45e4: $80
	ld [hl], $00                                     ; $45e5: $36 $00
	ld e, b                                          ; $45e7: $58
	ld h, $58                                        ; $45e8: $26 $58
	inc h                                            ; $45ea: $24
	ret z                                            ; $45eb: $c8

	inc h                                            ; $45ec: $24
	sub c                                            ; $45ed: $91
	ld l, h                                          ; $45ee: $6c
	reti                                             ; $45ef: $d9


	and h                                            ; $45f0: $a4
	ret c                                            ; $45f1: $d8

	inc h                                            ; $45f2: $24
	cp l                                             ; $45f3: $bd
	ld h, b                                          ; $45f4: $60
	ld a, d                                          ; $45f5: $7a
	ret nz                                           ; $45f6: $c0

	ld [hl], l                                       ; $45f7: $75
	ret nz                                           ; $45f8: $c0

	ld h, e                                          ; $45f9: $63
	call nc, $0700                                   ; $45fa: $d4 $00 $07
	ld c, $ff                                        ; $45fd: $0e $ff
	ld [hl], $ff                                     ; $45ff: $36 $ff
	ld c, a                                          ; $4601: $4f
	sbc a                                            ; $4602: $9f
	ld a, a                                          ; $4603: $7f
	cp l                                             ; $4604: $bd
	cp $fd                                           ; $4605: $fe $fd
	ld a, [$9715]                                    ; $4607: $fa $15 $97
	and b                                            ; $460a: $a0
	db $eb                                           ; $460b: $eb
	ldh [$f7], a                                     ; $460c: $e0 $f7
	ldh [rIF], a                                     ; $460e: $e0 $0f
	and b                                            ; $4610: $a0
	ld d, l                                          ; $4611: $55
	or l                                             ; $4612: $b5
	cp e                                             ; $4613: $bb
	ld [hl], a                                       ; $4614: $77
	rst $38                                          ; $4615: $ff
	rst $38                                          ; $4616: $ff
	rst $38                                          ; $4617: $ff
	rst $38                                          ; $4618: $ff
	rst $38                                          ; $4619: $ff
	rst $38                                          ; $461a: $ff
	rst $38                                          ; $461b: $ff
	rst $38                                          ; $461c: $ff
	db $e4                                           ; $461d: $e4
	or $92                                           ; $461e: $f6 $92
	ld bc, $5aa1                                     ; $4620: $01 $a1 $5a
	add c                                            ; $4623: $81
	ld a, c                                          ; $4624: $79
	add c                                            ; $4625: $81
	ld a, a                                          ; $4626: $7f
	ei                                               ; $4627: $fb
	ld bc, $1fef                                     ; $4628: $01 $ef $1f
	adc b                                            ; $462b: $88
	ld e, h                                          ; $462c: $5c
	cp l                                             ; $462d: $bd
	db $10                                           ; $462e: $10
	db $10                                           ; $462f: $10
	cp a                                             ; $4630: $bf
	db $fd                                           ; $4631: $fd
	sbc h                                            ; $4632: $9c
	inc b                                            ; $4633: $04
	rst $38                                          ; $4634: $ff
	jp nz, $cc7a                                     ; $4635: $c2 $7a $cc

	ld a, a                                          ; $4638: $7f

Jump_051_4639:
	db $fc                                           ; $4639: $fc
	sub l                                            ; $463a: $95
	ld h, [hl]                                       ; $463b: $66
	reti                                             ; $463c: $d9


	jp nz, Jump_051_4639                             ; $463d: $c2 $39 $46

	ld sp, hl                                        ; $4640: $f9
	ld [bc], a                                       ; $4641: $02
	ld sp, hl                                        ; $4642: $f9
	ld [hl-], a                                      ; $4643: $32
	ld sp, hl                                        ; $4644: $f9
	ld e, $c0                                        ; $4645: $1e $c0
	sbc l                                            ; $4647: $9d
	or b                                             ; $4648: $b0
	ld b, e                                          ; $4649: $43
	ld [hl], a                                       ; $464a: $77
	db $fc                                           ; $464b: $fc
	ld [bc], a                                       ; $464c: $02
	ret nz                                           ; $464d: $c0

	ld c, d                                          ; $464e: $4a
	ret nz                                           ; $464f: $c0

	ld h, [hl]                                       ; $4650: $66
	ret z                                            ; $4651: $c8

	ld h, a                                          ; $4652: $67
	cp $76                                           ; $4653: $fe $76
	call z, $fc57                                    ; $4655: $cc $57 $fc
	ld a, [hl]                                       ; $4658: $7e
	add $7e                                          ; $4659: $c6 $7e
	call z, $379e                                    ; $465b: $cc $9e $37
	ld e, e                                          ; $465e: $5b
	db $fc                                           ; $465f: $fc
	ld h, [hl]                                       ; $4660: $66
	ret z                                            ; $4661: $c8

	ld h, a                                          ; $4662: $67
	db $fc                                           ; $4663: $fc
	halt                                             ; $4664: $76
	call z, Call_051_449e                            ; $4665: $cc $9e $44
	ld a, c                                          ; $4668: $79
	add h                                            ; $4669: $84
	ld h, a                                          ; $466a: $67
	db $fc                                           ; $466b: $fc
	ld l, [hl]                                       ; $466c: $6e
	ret z                                            ; $466d: $c8

	sbc e                                            ; $466e: $9b
	ld d, [hl]                                       ; $466f: $56
	add c                                            ; $4670: $81

jr_051_4671:
	ld l, l                                          ; $4671: $6d
	add d                                            ; $4672: $82
	ld l, a                                          ; $4673: $6f
	db $fc                                           ; $4674: $fc
	ld l, [hl]                                       ; $4675: $6e
	ret z                                            ; $4676: $c8

	sbc e                                            ; $4677: $9b
	add hl, sp                                       ; $4678: $39
	add $19                                          ; $4679: $c6 $19
	and $6f                                          ; $467b: $e6 $6f
	db $fc                                           ; $467d: $fc
	ld l, [hl]                                       ; $467e: $6e
	ret z                                            ; $467f: $c8

	sbc e                                            ; $4680: $9b
	add l                                            ; $4681: $85
	ld a, b                                          ; $4682: $78
	add [hl]                                         ; $4683: $86
	ld a, b                                          ; $4684: $78
	ld l, a                                          ; $4685: $6f
	db $fc                                           ; $4686: $fc
	sub l                                            ; $4687: $95
	ldh [$ec], a                                     ; $4688: $e0 $ec
	db $ec                                           ; $468a: $ec
	xor l                                            ; $468b: $ad
	call z, rIE                                    ; $468c: $cc $ff $ff
	nop                                              ; $468f: $00
	ldh a, [c]                                       ; $4690: $f2
	adc l                                            ; $4691: $8d
	sbc $ff                                          ; $4692: $de $ff
	ld a, [hl]                                       ; $4694: $7e
	or $94                                           ; $4695: $f6 $94
	inc bc                                           ; $4697: $03

Jump_051_4698:
	ld [hl], e                                       ; $4698: $73
	di                                               ; $4699: $f3
	db $f4                                           ; $469a: $f4
	rst FarCall                                          ; $469b: $f7
	di                                               ; $469c: $f3
	di                                               ; $469d: $f3
	rst $38                                          ; $469e: $ff
	nop                                              ; $469f: $00
	jr nc, jr_051_4671                               ; $46a0: $30 $cf

	ld [hl], e                                       ; $46a2: $73
	ldh a, [$7a]                                     ; $46a3: $f0 $7a
	ld b, [hl]                                       ; $46a5: $46
	sbc [hl]                                         ; $46a6: $9e
	jr jr_051_4724                                   ; $46a7: $18 $7b

	ld sp, hl                                        ; $46a9: $f9
	ld [hl], a                                       ; $46aa: $77
	db $fd                                           ; $46ab: $fd
	rst SubAFromDE                                          ; $46ac: $df
	rst $38                                          ; $46ad: $ff
	ld a, [hl]                                       ; $46ae: $7e
	cp b                                             ; $46af: $b8
	halt                                             ; $46b0: $76
	call nc, $ffbf                                   ; $46b1: $d4 $bf $ff
	rst $38                                          ; $46b4: $ff
	sbc l                                            ; $46b5: $9d
	rst SubAFromBC                                          ; $46b6: $e7
	jr @-$21                                         ; $46b7: $18 $dd

	rst $38                                          ; $46b9: $ff
	ld a, l                                          ; $46ba: $7d
	sub b                                            ; $46bb: $90
	ld a, a                                          ; $46bc: $7f
	push af                                          ; $46bd: $f5
	sub a                                            ; $46be: $97
	db $db                                           ; $46bf: $db
	inc h                                            ; $46c0: $24
	nop                                              ; $46c1: $00
	db $e3                                           ; $46c2: $e3
	inc bc                                           ; $46c3: $03
	ldh [$f3], a                                     ; $46c4: $e0 $f3
	inc c                                            ; $46c6: $0c
	call c, $73ff                                    ; $46c7: $dc $ff $73
	ldh [c], a                                       ; $46ca: $e2
	sbc e                                            ; $46cb: $9b
	inc a                                            ; $46cc: $3c
	add hl, de                                       ; $46cd: $19
	ld a, c                                          ; $46ce: $79
	ld bc, $d06f                                     ; $46cf: $01 $6f $d0
	ld [hl], a                                       ; $46d2: $77
	ldh a, [$97]                                     ; $46d3: $f0 $97
	ld [hl], b                                       ; $46d5: $70
	ei                                               ; $46d6: $fb
	pop bc                                           ; $46d7: $c1
	dec sp                                           ; $46d8: $3b
	ld b, h                                          ; $46d9: $44
	cp e                                             ; $46da: $bb
	ret nz                                           ; $46db: $c0

	ccf                                              ; $46dc: $3f
	ld h, a                                          ; $46dd: $67
	ldh a, [rPCM12]                                  ; $46de: $f0 $76
	call z, $2793                                    ; $46e0: $cc $93 $27
	ret c                                            ; $46e3: $d8

	ld h, $f9                                        ; $46e4: $26 $f9
	rst SubAFromBC                                          ; $46e6: $e7
	ld hl, sp-$1a                                    ; $46e7: $f8 $e6
	ld sp, hl                                        ; $46e9: $f9
	and a                                            ; $46ea: $a7
	ld a, b                                          ; $46eb: $78
	ld h, $f9                                        ; $46ec: $26 $f9
	ld h, [hl]                                       ; $46ee: $66
	ret z                                            ; $46ef: $c8

	ld l, a                                          ; $46f0: $6f
	db $fc                                           ; $46f1: $fc
	sbc [hl]                                         ; $46f2: $9e
	or h                                             ; $46f3: $b4
	ld b, d                                          ; $46f4: $42
	ret nz                                           ; $46f5: $c0

	sbc l                                            ; $46f6: $9d
	ld de, $77ce                                     ; $46f7: $11 $ce $77
	cp $9e                                           ; $46fa: $fe $9e
	db $10                                           ; $46fc: $10
	ld h, e                                          ; $46fd: $63
	db $fc                                           ; $46fe: $fc
	halt                                             ; $46ff: $76
	call z, Call_051_709b                            ; $4700: $cc $9b $70
	rrca                                             ; $4703: $0f
	or b                                             ; $4704: $b0
	rrca                                             ; $4705: $0f
	ld [hl], a                                       ; $4706: $77
	db $fc                                           ; $4707: $fc
	sbc h                                            ; $4708: $9c

jr_051_4709:
	ld h, b                                          ; $4709: $60
	rra                                              ; $470a: $1f
	and b                                            ; $470b: $a0
	ld c, d                                          ; $470c: $4a
	jp nz, $fe7f                                     ; $470d: $c2 $7f $fe

	adc a                                            ; $4710: $8f
	call nc, $d023                                   ; $4711: $d4 $23 $d0
	daa                                              ; $4714: $27
	call nc, $f023                                   ; $4715: $d4 $23 $f0
	rlca                                             ; $4718: $07
	db $f4                                           ; $4719: $f4
	inc bc                                           ; $471a: $03
	ldh a, [rTAC]                                    ; $471b: $f0 $07
	ret nc                                           ; $471d: $d0

	daa                                              ; $471e: $27
	ret nc                                           ; $471f: $d0

	daa                                              ; $4720: $27
	ld l, [hl]                                       ; $4721: $6e
	ret z                                            ; $4722: $c8

	sbc [hl]                                         ; $4723: $9e

jr_051_4724:
	dec hl                                           ; $4724: $2b
	ld l, e                                          ; $4725: $6b
	db $fc                                           ; $4726: $fc
	sbc l                                            ; $4727: $9d
	ld l, $c1                                        ; $4728: $2e $c1
	ld b, [hl]                                       ; $472a: $46
	ret nz                                           ; $472b: $c0

	halt                                             ; $472c: $76
	call z, Call_051_4c9e                            ; $472d: $cc $9e $4c
	ld e, d                                          ; $4730: $5a
	ret nz                                           ; $4731: $c0

	ld h, [hl]                                       ; $4732: $66
	ret z                                            ; $4733: $c8

	ld [hl], a                                       ; $4734: $77
	db $fc                                           ; $4735: $fc
	sub a                                            ; $4736: $97
	db $ec                                           ; $4737: $ec
	inc bc                                           ; $4738: $03
	ld b, $fb                                        ; $4739: $06 $fb
	ld de, $31ee                                     ; $473b: $11 $ee $31
	adc $77                                          ; $473e: $ce $77
	db $fc                                           ; $4740: $fc
	sbc e                                            ; $4741: $9b
	ld bc, $01fe                                     ; $4742: $01 $fe $01
	cp $7a                                           ; $4745: $fe $7a
	pop hl                                           ; $4747: $e1
	sbc [hl]                                         ; $4748: $9e
	jp $c866                                         ; $4749: $c3 $66 $c8


	ld a, a                                          ; $474c: $7f
	db $fc                                           ; $474d: $fc
	sbc b                                            ; $474e: $98
	adc l                                            ; $474f: $8d
	ld [hl], b                                       ; $4750: $70
	adc [hl]                                         ; $4751: $8e
	ld [hl], b                                       ; $4752: $70
	ld c, a                                          ; $4753: $4f
	or b                                             ; $4754: $b0
	rst FarCall                                          ; $4755: $f7
	cp b                                             ; $4756: $b8
	ei                                               ; $4757: $fb
	rst $38                                          ; $4758: $ff
	db $fd                                           ; $4759: $fd
	ld [rIE], a                                    ; $475a: $ea $ff $ff
	rst $38                                          ; $475d: $ff
	push de                                          ; $475e: $d5
	rst $38                                          ; $475f: $ff
	ld a, a                                          ; $4760: $7f
	inc d                                            ; $4761: $14
	cp l                                             ; $4762: $bd
	ld d, a                                          ; $4763: $57
	cp a                                             ; $4764: $bf
	rst $38                                          ; $4765: $ff
	rst $38                                          ; $4766: $ff
	ld a, l                                          ; $4767: $7d
	ld a, l                                          ; $4768: $7d
	cp a                                             ; $4769: $bf
	rst $38                                          ; $476a: $ff
	rst $38                                          ; $476b: $ff
	ld a, e                                          ; $476c: $7b
	ldh a, [$9e]                                     ; $476d: $f0 $9e
	xor e                                            ; $476f: $ab
	cp e                                             ; $4770: $bb
	rst $38                                          ; $4771: $ff
	rst $38                                          ; $4772: $ff
	rst $38                                          ; $4773: $ff
	rst $38                                          ; $4774: $ff
	cp $dd                                           ; $4775: $fe $dd
	sub d                                            ; $4777: $92
	jr nz, jr_051_4709                               ; $4778: $20 $8f

	db $10                                           ; $477a: $10
	rrca                                             ; $477b: $0f
	sub b                                            ; $477c: $90
	rst FarCall                                          ; $477d: $f7
	ret c                                            ; $477e: $d8

	ld [hl], a                                       ; $477f: $77
	ld hl, sp-$51                                    ; $4780: $f8 $af
	ld [hl], d                                       ; $4782: $72
	rst $38                                          ; $4783: $ff
	adc a                                            ; $4784: $8f
	ld h, e                                          ; $4785: $63
	add $9e                                          ; $4786: $c6 $9e
	ldh a, [$73]                                     ; $4788: $f0 $73
	ld a, [$9c9d]                                    ; $478a: $fa $9d $9c
	ld a, a                                          ; $478d: $7f
	cp e                                             ; $478e: $bb
	xor e                                            ; $478f: $ab
	rst $38                                          ; $4790: $ff
	db $fd                                           ; $4791: $fd
	ld e, d                                          ; $4792: $5a
	rst $38                                          ; $4793: $ff
	rst $38                                          ; $4794: $ff
	sbc e                                            ; $4795: $9b
	ld [bc], a                                       ; $4796: $02
	rst $38                                          ; $4797: $ff
	ld a, c                                          ; $4798: $79
	rst $38                                          ; $4799: $ff
	cp e                                             ; $479a: $bb
	push af                                          ; $479b: $f5
	xor d                                            ; $479c: $aa
	ld d, l                                          ; $479d: $55
	xor d                                            ; $479e: $aa
	rst $38                                          ; $479f: $ff
	rst $38                                          ; $47a0: $ff
	adc e                                            ; $47a1: $8b
	xor d                                            ; $47a2: $aa
	rst $38                                          ; $47a3: $ff
	ld a, a                                          ; $47a4: $7f
	and a                                            ; $47a5: $a7
	ld a, b                                          ; $47a6: $78
	ld [hl], $79                                     ; $47a7: $36 $79
	rst $38                                          ; $47a9: $ff
	ccf                                              ; $47aa: $3f
	ld a, a                                          ; $47ab: $7f
	ccf                                              ; $47ac: $3f
	db $fd                                           ; $47ad: $fd
	ld a, $fe                                        ; $47ae: $3e $fe
	ccf                                              ; $47b0: $3f
	ccf                                              ; $47b1: $3f
	rst $38                                          ; $47b2: $ff
	ld a, a                                          ; $47b3: $7f
	cp a                                             ; $47b4: $bf
	inc d                                            ; $47b5: $14
	ld a, d                                          ; $47b6: $7a
	call z, $db9d                                    ; $47b7: $cc $9d $db
	rst SubAFromBC                                          ; $47ba: $e7
	ld l, [hl]                                       ; $47bb: $6e
	and h                                            ; $47bc: $a4
	sbc e                                            ; $47bd: $9b
	ld a, a                                          ; $47be: $7f
	add b                                            ; $47bf: $80
	ld a, a                                          ; $47c0: $7f
	add b                                            ; $47c1: $80
	halt                                             ; $47c2: $76

Call_051_47c3:
	call z, $ca9d                                    ; $47c3: $cc $9d $ca
	ldh a, [$de]                                     ; $47c6: $f0 $de
	rst $38                                          ; $47c8: $ff
	sbc [hl]                                         ; $47c9: $9e
	ld a, a                                          ; $47ca: $7f
	ld l, a                                          ; $47cb: $6f
	sub b                                            ; $47cc: $90
	ld l, [hl]                                       ; $47cd: $6e
	ret z                                            ; $47ce: $c8

	ld h, [hl]                                       ; $47cf: $66
	add d                                            ; $47d0: $82
	ld a, a                                          ; $47d1: $7f
	cp $76                                           ; $47d2: $fe $76
	call z, Call_051_619d                            ; $47d4: $cc $9d $61
	ld e, $5f                                        ; $47d7: $1e $5f
	ldh a, [$6e]                                     ; $47d9: $f0 $6e
	jp z, $c79e                                      ; $47db: $ca $9e $c7

	ld h, e                                          ; $47de: $63
	ldh a, [$7e]                                     ; $47df: $f0 $7e
	adc $98                                          ; $47e1: $ce $98
	ret nz                                           ; $47e3: $c0

	daa                                              ; $47e4: $27
	ldh [rTAC], a                                    ; $47e5: $e0 $07
	rst $38                                          ; $47e7: $ff
	rst $38                                          ; $47e8: $ff
	pop af                                           ; $47e9: $f1
	ld l, e                                          ; $47ea: $6b
	ldh a, [hDisp1_WX]                                     ; $47eb: $f0 $96
	ld [hl], $c1                                     ; $47ed: $36 $c1
	ld l, $c1                                        ; $47ef: $2e $c1
	halt                                             ; $47f1: $76
	add c                                            ; $47f2: $81
	rst $38                                          ; $47f3: $ff
	rst $38                                          ; $47f4: $ff
	db $fc                                           ; $47f5: $fc
	ld l, e                                          ; $47f6: $6b
	ldh a, [$6e]                                     ; $47f7: $f0 $6e
	ret z                                            ; $47f9: $c8

	ld [hl], a                                       ; $47fa: $77
	and c                                            ; $47fb: $a1
	ld l, a                                          ; $47fc: $6f
	ldh a, [rPCM12]                                  ; $47fd: $f0 $76
	call z, Call_051_489d                            ; $47ff: $cc $9d $48
	scf                                              ; $4802: $37
	call c, Call_051_7eff                            ; $4803: $dc $ff $7e
	ld a, [bc]                                       ; $4806: $0a
	ld a, e                                          ; $4807: $7b
	cp $95                                           ; $4808: $fe $95
	dec [hl]                                         ; $480a: $35
	cp $bd                                           ; $480b: $fe $bd
	ld a, [hl]                                       ; $480d: $7e
	inc [hl]                                         ; $480e: $34
	rst $38                                          ; $480f: $ff
	dec [hl]                                         ; $4810: $35
	cp $34                                           ; $4811: $fe $34
	rst $38                                          ; $4813: $ff
	ld [hl], a                                       ; $4814: $77
	cp $7c                                           ; $4815: $fe $7c
	ld a, [hl]                                       ; $4817: $7e
	sbc c                                            ; $4818: $99
	cp l                                             ; $4819: $bd
	ld a, a                                          ; $481a: $7f
	jr nz, jr_051_483c                               ; $481b: $20 $1f

	ret nc                                           ; $481d: $d0

	cpl                                              ; $481e: $2f
	ld e, [hl]                                       ; $481f: $5e
	ld h, b                                          ; $4820: $60
	sbc [hl]                                         ; $4821: $9e
	or b                                             ; $4822: $b0
	ld a, e                                          ; $4823: $7b
	add $7f                                          ; $4824: $c6 $7f
	ld c, b                                          ; $4826: $48
	sbc [hl]                                         ; $4827: $9e
	ld e, a                                          ; $4828: $5f
	ld [hl], e                                       ; $4829: $73
	cp $9e                                           ; $482a: $fe $9e
	cpl                                              ; $482c: $2f
	ld a, e                                          ; $482d: $7b
	cp $73                                           ; $482e: $fe $73
	cp d                                             ; $4830: $ba
	ld l, e                                          ; $4831: $6b
	or h                                             ; $4832: $b4
	sbc $ff                                          ; $4833: $de $ff
	ld a, a                                          ; $4835: $7f
	ld e, $67                                        ; $4836: $1e $67
	ldh a, [$9e]                                     ; $4838: $f0 $9e
	rra                                              ; $483a: $1f
	ld a, e                                          ; $483b: $7b

jr_051_483c:
	db $fc                                           ; $483c: $fc
	sbc [hl]                                         ; $483d: $9e
	ldh [$5b], a                                     ; $483e: $e0 $5b
	ldh a, [$9e]                                     ; $4840: $f0 $9e
	add b                                            ; $4842: $80
	ld [hl], e                                       ; $4843: $73

Call_051_4844:
	or $9e                                           ; $4844: $f6 $9e
	inc bc                                           ; $4846: $03
	ld d, a                                          ; $4847: $57
	ret nc                                           ; $4848: $d0

	sbc e                                            ; $4849: $9b
	sbc a                                            ; $484a: $9f
	ld h, b                                          ; $484b: $60
	sbc a                                            ; $484c: $9f
	sbc a                                            ; $484d: $9f
	ld e, e                                          ; $484e: $5b
	ldh a, [$9c]                                     ; $484f: $f0 $9c
	ld [$18ff], sp                                   ; $4851: $08 $ff $18
	ld l, e                                          ; $4854: $6b
	jp c, $f06f                                      ; $4855: $da $6f $f0

	ld a, [hl]                                       ; $4858: $7e
	jp nz, $957f                                     ; $4859: $c2 $7f $95

	sbc [hl]                                         ; $485c: $9e
	ld a, [hl+]                                      ; $485d: $2a
	ld e, e                                          ; $485e: $5b
	ldh a, [$9c]                                     ; $485f: $f0 $9c
	add d                                            ; $4861: $82
	rst $38                                          ; $4862: $ff
	db $fd                                           ; $4863: $fd
	ld a, e                                          ; $4864: $7b
	or b                                             ; $4865: $b0
	ld a, a                                          ; $4866: $7f
	add e                                            ; $4867: $83
	ld [hl], l                                       ; $4868: $75
	ld [hl], h                                       ; $4869: $74
	ld a, e                                          ; $486a: $7b
	ld a, [$c47e]                                    ; $486b: $fa $7e $c4
	sbc e                                            ; $486e: $9b
	cp a                                             ; $486f: $bf
	ld a, a                                          ; $4870: $7f
	ld a, a                                          ; $4871: $7f
	cp a                                             ; $4872: $bf
	halt                                             ; $4873: $76
	call z, $fe57                                    ; $4874: $cc $57 $fe
	ld h, [hl]                                       ; $4877: $66
	ld e, b                                          ; $4878: $58
	inc bc                                           ; $4879: $03
	cp $b1                                           ; $487a: $fe $b1
	rst $38                                          ; $487c: $ff
	ld a, [$ffd5]                                    ; $487d: $fa $d5 $ff
	rst $38                                          ; $4880: $ff
	rst $38                                          ; $4881: $ff
	rst $38                                          ; $4882: $ff
	rst $38                                          ; $4883: $ff
	rst $38                                          ; $4884: $ff
	xor d                                            ; $4885: $aa
	ld d, l                                          ; $4886: $55
	rst $38                                          ; $4887: $ff
	rst $38                                          ; $4888: $ff
	rst $38                                          ; $4889: $ff
	rst $38                                          ; $488a: $ff
	rst $38                                          ; $488b: $ff
	or c                                             ; $488c: $b1
	rst $38                                          ; $488d: $ff
	xor e                                            ; $488e: $ab
	ld d, l                                          ; $488f: $55
	rst $38                                          ; $4890: $ff
	rst $38                                          ; $4891: $ff
	rst $38                                          ; $4892: $ff
	rst $38                                          ; $4893: $ff
	rst $38                                          ; $4894: $ff
	rst $38                                          ; $4895: $ff
	rst $38                                          ; $4896: $ff
	rst $38                                          ; $4897: $ff
	rst $38                                          ; $4898: $ff
	rst $38                                          ; $4899: $ff
	rst $38                                          ; $489a: $ff
	rst $38                                          ; $489b: $ff
	rst $38                                          ; $489c: $ff

Call_051_489d:
	cp l                                             ; $489d: $bd
	rst $38                                          ; $489e: $ff
	rst $38                                          ; $489f: $ff
	rst $38                                          ; $48a0: $ff
	rst $38                                          ; $48a1: $ff
	ld [hl], d                                       ; $48a2: $72
	jp z, $fe5f                                      ; $48a3: $ca $5f $fe

	sbc h                                            ; $48a6: $9c
	ld [hl-], a                                      ; $48a7: $32
	rst $38                                          ; $48a8: $ff
	ld a, [hl-]                                      ; $48a9: $3a
	ld a, e                                          ; $48aa: $7b
	cp $9e                                           ; $48ab: $fe $9e
	dec sp                                           ; $48ad: $3b
	ld l, e                                          ; $48ae: $6b
	cp $94                                           ; $48af: $fe $94
	inc sp                                           ; $48b1: $33
	rst $38                                          ; $48b2: $ff
	ld [hl], b                                       ; $48b3: $70
	adc a                                            ; $48b4: $8f
	ld h, b                                          ; $48b5: $60
	sbc a                                            ; $48b6: $9f
	ld d, b                                          ; $48b7: $50
	adc a                                            ; $48b8: $8f
	ld d, b                                          ; $48b9: $50
	adc a                                            ; $48ba: $8f
	ret nz                                           ; $48bb: $c0

	call c, $9dff                                    ; $48bc: $dc $ff $9d
	ld a, [hl]                                       ; $48bf: $7e
	ld bc, $cc76                                     ; $48c0: $01 $76 $cc
	ld l, a                                          ; $48c3: $6f
	cp $9e                                           ; $48c4: $fe $9e
	rst AddAOntoHL                                          ; $48c6: $ef
	ld [hl], e                                       ; $48c7: $73
	cp $9d                                           ; $48c8: $fe $9d
	rst $38                                          ; $48ca: $ff
	ld d, l                                          ; $48cb: $55
	ld a, e                                          ; $48cc: $7b
	inc l                                            ; $48cd: $2c
	ld [hl], e                                       ; $48ce: $73
	db $fc                                           ; $48cf: $fc
	ld [hl], a                                       ; $48d0: $77
	ld sp, hl                                        ; $48d1: $f9
	sbc $ff                                          ; $48d2: $de $ff
	ld b, a                                          ; $48d4: $47
	ldh a, [$9e]                                     ; $48d5: $f0 $9e
	ld b, l                                          ; $48d7: $45
	ld c, a                                          ; $48d8: $4f
	ldh a, [$99]                                     ; $48d9: $f0 $99
	add a                                            ; $48db: $87
	dec e                                            ; $48dc: $1d
	rst SubAFromDE                                          ; $48dd: $df
	ld a, [$f5ff]                                    ; $48de: $fa $ff $f5
	ld [hl], a                                       ; $48e1: $77
	ldh a, [$9e]                                     ; $48e2: $f0 $9e
	xor c                                            ; $48e4: $a9
	ld c, e                                          ; $48e5: $4b
	ret nc                                           ; $48e6: $d0

	ld a, a                                          ; $48e7: $7f
	jp hl                                            ; $48e8: $e9


	inc sp                                           ; $48e9: $33
	ret nz                                           ; $48ea: $c0

	ld [hl], a                                       ; $48eb: $77
	db $f4                                           ; $48ec: $f4
	halt                                             ; $48ed: $76
	ld l, b                                          ; $48ee: $68
	ld l, e                                          ; $48ef: $6b
	ldh a, [rPCM12]                                  ; $48f0: $f0 $76
	call z, $8875                                    ; $48f2: $cc $75 $88
	ld a, a                                          ; $48f5: $7f
	ld hl, sp+$7f                                    ; $48f6: $f8 $7f
	ld a, [$fc7f]                                    ; $48f8: $fa $7f $fc
	ld a, c                                          ; $48fb: $79
	ld hl, sp+$2a                                    ; $48fc: $f8 $2a
	ret nz                                           ; $48fe: $c0

	ld a, l                                          ; $48ff: $7d
	jr jr_051_497f                                   ; $4900: $18 $7d

	inc a                                            ; $4902: $3c
	ld a, [hl]                                       ; $4903: $7e
	ldh [$7d], a                                     ; $4904: $e0 $7d
	ld b, h                                          ; $4906: $44
	ld [hl], l                                       ; $4907: $75
	inc [hl]                                         ; $4908: $34
	ld a, a                                          ; $4909: $7f
	ld hl, sp+$75                                    ; $490a: $f8 $75
	ld b, b                                          ; $490c: $40
	sbc [hl]                                         ; $490d: $9e
	ld d, h                                          ; $490e: $54
	or c                                             ; $490f: $b1
	and b                                            ; $4910: $a0
	ld b, b                                          ; $4911: $40
	xor d                                            ; $4912: $aa
	ld d, l                                          ; $4913: $55
	xor d                                            ; $4914: $aa
	ld b, b                                          ; $4915: $40
	add b                                            ; $4916: $80
	nop                                              ; $4917: $00
	nop                                              ; $4918: $00
	nop                                              ; $4919: $00
	xor d                                            ; $491a: $aa
	ld d, l                                          ; $491b: $55
	and b                                            ; $491c: $a0
	nop                                              ; $491d: $00
	nop                                              ; $491e: $00
	nop                                              ; $491f: $00
	or c                                             ; $4920: $b1
	nop                                              ; $4921: $00
	nop                                              ; $4922: $00
	xor d                                            ; $4923: $aa
	ld d, l                                          ; $4924: $55
	ld [bc], a                                       ; $4925: $02
	ld bc, $0000                                     ; $4926: $01 $00 $00
	nop                                              ; $4929: $00
	nop                                              ; $492a: $00
	rst $38                                          ; $492b: $ff
	ld e, a                                          ; $492c: $5f
	xor d                                            ; $492d: $aa
	ld d, l                                          ; $492e: $55
	ld a, [hl+]                                      ; $492f: $2a
	dec b                                            ; $4930: $05
	or [hl]                                          ; $4931: $b6
	ld [bc], a                                       ; $4932: $02
	nop                                              ; $4933: $00
	rst $38                                          ; $4934: $ff
	rst $38                                          ; $4935: $ff
	rst $38                                          ; $4936: $ff
	ld a, a                                          ; $4937: $7f
	cp a                                             ; $4938: $bf
	ld e, a                                          ; $4939: $5f
	xor a                                            ; $493a: $af
	ld d, a                                          ; $493b: $57
	rst $38                                          ; $493c: $ff
	ld c, d                                          ; $493d: $4a
	ret nz                                           ; $493e: $c0

	ld a, [hl]                                       ; $493f: $7e
	adc $7e                                          ; $4940: $ce $7e
	cp [hl]                                          ; $4942: $be
	ld a, a                                          ; $4943: $7f
	cp $9d                                           ; $4944: $fe $9d
	scf                                              ; $4946: $37
	ei                                               ; $4947: $fb
	ld h, a                                          ; $4948: $67
	cp $96                                           ; $4949: $fe $96
	rrca                                             ; $494b: $0f
	ldh a, [hDisp0_WY]                                     ; $494c: $f0 $88
	ld a, a                                          ; $494e: $7f
	di                                               ; $494f: $f3
	rrca                                             ; $4950: $0f
	ld c, $f1                                        ; $4951: $0e $f1
	ld hl, sp-$27                                    ; $4953: $f8 $d9
	rst $38                                          ; $4955: $ff
	sub e                                            ; $4956: $93
	rrca                                             ; $4957: $0f
	dec sp                                           ; $4958: $3b
	call z, $fceb                                    ; $4959: $cc $eb $fc
	rrca                                             ; $495c: $0f
	rst $38                                          ; $495d: $ff
	dec e                                            ; $495e: $1d
	rst AddAOntoHL                                          ; $495f: $ef
	inc e                                            ; $4960: $1c
	rst AddAOntoHL                                          ; $4961: $ef
	db $ed                                           ; $4962: $ed
	ld l, d                                          ; $4963: $6a
	ret nz                                           ; $4964: $c0

	sbc h                                            ; $4965: $9c
	ld e, a                                          ; $4966: $5f
	push af                                          ; $4967: $f5
	xor a                                            ; $4968: $af
	ld h, e                                          ; $4969: $63
	add hl, bc                                       ; $496a: $09
	ld l, e                                          ; $496b: $6b
	rst FarCall                                          ; $496c: $f7
	ld [hl], e                                       ; $496d: $73
	ld sp, hl                                        ; $496e: $f9
	sbc [hl]                                         ; $496f: $9e
	ld d, a                                          ; $4970: $57
	ld e, a                                          ; $4971: $5f
	ldh a, [$9e]                                     ; $4972: $f0 $9e
	ld [$f966], a                                    ; $4974: $ea $66 $f9
	ld a, e                                          ; $4977: $7b
	db $f4                                           ; $4978: $f4
	sbc [hl]                                         ; $4979: $9e
	xor e                                            ; $497a: $ab
	ld a, e                                          ; $497b: $7b
	db $fc                                           ; $497c: $fc
	sbc c                                            ; $497d: $99
	cp d                                             ; $497e: $ba

jr_051_497f:
	adc a                                            ; $497f: $8f
	sbc l                                            ; $4980: $9d
	sbc d                                            ; $4981: $9a
	sbc a                                            ; $4982: $9f
	ld [hl], l                                       ; $4983: $75
	ld l, a                                          ; $4984: $6f
	ldh a, [rOCPD]                                   ; $4985: $f0 $6b
	call c, $c063                                    ; $4987: $dc $63 $c0
	sbc [hl]                                         ; $498a: $9e
	ld [$f067], a                                    ; $498b: $ea $67 $f0
	ld a, l                                          ; $498e: $7d
	ld e, $6b                                        ; $498f: $1e $6b
	ret nz                                           ; $4991: $c0

	ld l, d                                          ; $4992: $6a
	ret nz                                           ; $4993: $c0

	ld [hl], a                                       ; $4994: $77
	ld sp, hl                                        ; $4995: $f9
	halt                                             ; $4996: $76
	ret nz                                           ; $4997: $c0

	ld d, a                                          ; $4998: $57
	db $fc                                           ; $4999: $fc
	ld b, [hl]                                       ; $499a: $46
	ret nz                                           ; $499b: $c0

	sbc [hl]                                         ; $499c: $9e
	ld [$d5b1], a                                    ; $499d: $ea $b1 $d5
	ld [$a8d4], a                                    ; $49a0: $ea $d4 $a8
	ld d, b                                          ; $49a3: $50
	xor b                                            ; $49a4: $a8
	rst $38                                          ; $49a5: $ff
	add b                                            ; $49a6: $80
	nop                                              ; $49a7: $00
	nop                                              ; $49a8: $00
	nop                                              ; $49a9: $00
	nop                                              ; $49aa: $00
	nop                                              ; $49ab: $00
	nop                                              ; $49ac: $00
	rst $38                                          ; $49ad: $ff
	nop                                              ; $49ae: $00
	inc bc                                           ; $49af: $03
	ldh a, [rIF]                                     ; $49b0: $f0 $0f
	ldh a, [$9e]                                     ; $49b2: $f0 $9e
	dec hl                                           ; $49b4: $2b
	cp c                                             ; $49b5: $b9
	rla                                              ; $49b6: $17
	dec bc                                           ; $49b7: $0b
	dec d                                            ; $49b8: $15
	ld a, [bc]                                       ; $49b9: $0a
	dec b                                            ; $49ba: $05
	ld a, [bc]                                       ; $49bb: $0a
	rst $38                                          ; $49bc: $ff
	rst $38                                          ; $49bd: $ff
	ld c, d                                          ; $49be: $4a
	ret nz                                           ; $49bf: $c0

	ld e, [hl]                                       ; $49c0: $5e
	add $6f                                          ; $49c1: $c6 $6f
	cp $d9                                           ; $49c3: $fe $d9
	rst $38                                          ; $49c5: $ff
	ld a, h                                          ; $49c6: $7c
	push bc                                          ; $49c7: $c5
	ld a, a                                          ; $49c8: $7f
	push de                                          ; $49c9: $d5
	ld [hl], l                                       ; $49ca: $75
	ld a, h                                          ; $49cb: $7c
	ld a, d                                          ; $49cc: $7a
	adc $df                                          ; $49cd: $ce $df
	rst AddAOntoHL                                          ; $49cf: $ef
	sbc c                                            ; $49d0: $99
	rst $38                                          ; $49d1: $ff
	db $ec                                           ; $49d2: $ec
	rst $38                                          ; $49d3: $ff
	db $fc                                           ; $49d4: $fc
	rst AddAOntoHL                                          ; $49d5: $ef
	rra                                              ; $49d6: $1f
	ld a, c                                          ; $49d7: $79
	add c                                            ; $49d8: $81
	sbc l                                            ; $49d9: $9d
	rst FarCall                                          ; $49da: $f7
	rst AddAOntoHL                                          ; $49db: $ef
	halt                                             ; $49dc: $76
	pop af                                           ; $49dd: $f1
	sub e                                            ; $49de: $93
	ld d, a                                          ; $49df: $57
	db $fc                                           ; $49e0: $fc
	xor a                                            ; $49e1: $af
	ld hl, sp+$5f                                    ; $49e2: $f8 $5f
	ldh a, [$bf]                                     ; $49e4: $f0 $bf
	ldh [$5f], a                                     ; $49e6: $e0 $5f
	ldh [$a7], a                                     ; $49e8: $e0 $a7
	ret c                                            ; $49ea: $d8

	ld [hl], c                                       ; $49eb: $71
	call z, $ffbe                                    ; $49ec: $cc $be $ff
	rst $38                                          ; $49ef: $ff
	jp nz, $019a                                     ; $49f0: $c2 $9a $01

	add d                                            ; $49f3: $82
	ld bc, $01fe                                     ; $49f4: $01 $fe $01
	ld [hl], e                                       ; $49f7: $73
	ldh a, [$9a]                                     ; $49f8: $f0 $9a
	inc b                                            ; $49fa: $04
	db $fc                                           ; $49fb: $fc
	inc b                                            ; $49fc: $04
	ret nz                                           ; $49fd: $c0

	ld [de], a                                       ; $49fe: $12
	cp a                                             ; $49ff: $bf
	ld [de], a                                       ; $4a00: $12
	add b                                            ; $4a01: $80
	sbc l                                            ; $4a02: $9d
	ld c, b                                          ; $4a03: $48
	inc [hl]                                         ; $4a04: $34
	ld [hl], e                                       ; $4a05: $73
	ldh a, [hDisp1_OBP1]                                     ; $4a06: $f0 $94
	add b                                            ; $4a08: $80
	or a                                             ; $4a09: $b7
	adc h                                            ; $4a0a: $8c
	rla                                              ; $4a0b: $17
	inc a                                            ; $4a0c: $3c
	db $10                                           ; $4a0d: $10
	jr nc, jr_051_4a10                               ; $4a0e: $30 $00

jr_051_4a10:
	nop                                              ; $4a10: $00
	sub b                                            ; $4a11: $90
	ld h, e                                          ; $4a12: $63
	ld e, a                                          ; $4a13: $5f
	ret nc                                           ; $4a14: $d0

	sbc h                                            ; $4a15: $9c
	ld b, b                                          ; $4a16: $40
	add b                                            ; $4a17: $80
	nop                                              ; $4a18: $00
	ld a, c                                          ; $4a19: $79
	jp nz, $f067                                     ; $4a1a: $c2 $67 $f0

	sub a                                            ; $4a1d: $97
	ccf                                              ; $4a1e: $3f
	nop                                              ; $4a1f: $00
	jp nc, $c40c                                     ; $4a20: $d2 $0c $c4

	ld c, $b5                                        ; $4a23: $0e $b5
	ld c, [hl]                                       ; $4a25: $4e
	ld e, a                                          ; $4a26: $5f
	ldh [$98], a                                     ; $4a27: $e0 $98
	ld de, $190c                                     ; $4a29: $11 $0c $19
	inc c                                            ; $4a2c: $0c
	di                                               ; $4a2d: $f3
	inc c                                            ; $4a2e: $0c
	ld a, [hl]                                       ; $4a2f: $7e
	ld h, e                                          ; $4a30: $63
	ldh a, [$9e]                                     ; $4a31: $f0 $9e
	pop hl                                           ; $4a33: $e1
	cp a                                             ; $4a34: $bf
	and c                                            ; $4a35: $a1
	ld a, a                                          ; $4a36: $7f
	ld a, a                                          ; $4a37: $7f
	call z, $f063                                    ; $4a38: $cc $63 $f0
	ld l, a                                          ; $4a3b: $6f
	cp $77                                           ; $4a3c: $fe $77
	ld e, d                                          ; $4a3e: $5a
	sub e                                            ; $4a3f: $93
	and b                                            ; $4a40: $a0
	ld a, a                                          ; $4a41: $7f
	ret nc                                           ; $4a42: $d0

	ccf                                              ; $4a43: $3f
	ld hl, sp+$1f                                    ; $4a44: $f8 $1f
	ld hl, sp+$0f                                    ; $4a46: $f8 $0f
	db $f4                                           ; $4a48: $f4
	rrca                                             ; $4a49: $0f
	ld a, [$b507]                                    ; $4a4a: $fa $07 $b5
	rst $38                                          ; $4a4d: $ff
	rst $38                                          ; $4a4e: $ff
	rst $38                                          ; $4a4f: $ff
	rst $38                                          ; $4a50: $ff
	rst $38                                          ; $4a51: $ff
	rst $38                                          ; $4a52: $ff
	rst $38                                          ; $4a53: $ff
	rst $38                                          ; $4a54: $ff
	rst $38                                          ; $4a55: $ff
	rst $38                                          ; $4a56: $ff
	rst $38                                          ; $4a57: $ff
	rst $38                                          ; $4a58: $ff
	sbc b                                            ; $4a59: $98
	ld [bc], a                                       ; $4a5a: $02
	db $fd                                           ; $4a5b: $fd
	dec d                                            ; $4a5c: $15
	ld [$d52a], a                                    ; $4a5d: $ea $2a $d5
	ld d, a                                          ; $4a60: $57
	halt                                             ; $4a61: $76
	sbc l                                            ; $4a62: $9d
	ld a, e                                          ; $4a63: $7b
	cp $7e                                           ; $4a64: $fe $7e
	ld h, e                                          ; $4a66: $63
	sbc l                                            ; $4a67: $9d
	xor d                                            ; $4a68: $aa
	ld d, l                                          ; $4a69: $55
	ld a, d                                          ; $4a6a: $7a
	ld e, a                                          ; $4a6b: $5f
	ld [hl], e                                       ; $4a6c: $73
	ret nz                                           ; $4a6d: $c0

	ld d, a                                          ; $4a6e: $57
	ldh a, [$9e]                                     ; $4a6f: $f0 $9e
	rst AddAOntoHL                                          ; $4a71: $ef
	ld c, e                                          ; $4a72: $4b
	ldh a, [$7d]                                     ; $4a73: $f0 $7d
	sub b                                            ; $4a75: $90
	cp a                                             ; $4a76: $bf
	rst $38                                          ; $4a77: $ff
	rst $38                                          ; $4a78: $ff
	sbc l                                            ; $4a79: $9d
	ld a, [bc]                                       ; $4a7a: $0a
	push af                                          ; $4a7b: $f5
	ld [hl], a                                       ; $4a7c: $77
	ldh a, [rPCM34]                                  ; $4a7d: $f0 $77
	rst SubAFromBC                                          ; $4a7f: $e7
	ld a, l                                          ; $4a80: $7d
	jr nz, @+$81                                     ; $4a81: $20 $7f

	ei                                               ; $4a83: $fb
	sbc l                                            ; $4a84: $9d
	dec b                                            ; $4a85: $05
	ld a, [$e477]                                    ; $4a86: $fa $77 $e4
	sbc l                                            ; $4a89: $9d
	xor e                                            ; $4a8a: $ab
	ld d, h                                          ; $4a8b: $54
	ld [hl], a                                       ; $4a8c: $77
	ldh a, [hDisp1_WY]                                     ; $4a8d: $f0 $95
	ld l, e                                          ; $4a8f: $6b
	nop                                              ; $4a90: $00
	xor a                                            ; $4a91: $af
	ld d, e                                          ; $4a92: $53
	ld e, a                                          ; $4a93: $5f
	and e                                            ; $4a94: $a3
	and [hl]                                         ; $4a95: $a6
	ld e, a                                          ; $4a96: $5f
	ld d, b                                          ; $4a97: $50
	xor a                                            ; $4a98: $af
	ld h, a                                          ; $4a99: $67
	sub a                                            ; $4a9a: $97
	ld a, h                                          ; $4a9b: $7c
	db $dd                                           ; $4a9c: $dd
	sub b                                            ; $4a9d: $90
	rst SubAFromDE                                          ; $4a9e: $df
	ccf                                              ; $4a9f: $3f
	rla                                              ; $4aa0: $17
	rst AddAOntoHL                                          ; $4aa1: $ef
	ld b, $f9                                        ; $4aa2: $06 $f9
	add b                                            ; $4aa4: $80
	ld a, a                                          ; $4aa5: $7f
	ldh a, [rIF]                                     ; $4aa6: $f0 $0f
	cp $01                                           ; $4aa8: $fe $01
	rst $38                                          ; $4aaa: $ff
	nop                                              ; $4aab: $00
	rst FarCall                                          ; $4aac: $f7
	ld l, h                                          ; $4aad: $6c
	ld c, c                                          ; $4aae: $49
	ld a, a                                          ; $4aaf: $7f
	cp $93                                           ; $4ab0: $fe $93
	ld l, a                                          ; $4ab2: $6f
	ccf                                              ; $4ab3: $3f
	rst GetHLinHL                                          ; $4ab4: $cf
	ld a, c                                          ; $4ab5: $79
	adc a                                            ; $4ab6: $8f
	ei                                               ; $4ab7: $fb
	inc c                                            ; $4ab8: $0c
	ld [$fcf7], sp                                   ; $4ab9: $08 $f7 $fc
	inc bc                                           ; $4abc: $03
	db $fc                                           ; $4abd: $fc
	cp [hl]                                          ; $4abe: $be
	cp $fe                                           ; $4abf: $fe $fe

jr_051_4ac1:
	inc bc                                           ; $4ac1: $03
	ld a, [hl]                                       ; $4ac2: $7e
	db $db                                           ; $4ac3: $db
	rst SubAFromDE                                          ; $4ac4: $df
	ld hl, sp+$7b                                    ; $4ac5: $f8 $7b
	or b                                             ; $4ac7: $b0
	ld a, l                                          ; $4ac8: $7d
	ld h, h                                          ; $4ac9: $64
	adc e                                            ; $4aca: $8b
	inc e                                            ; $4acb: $1c
	ld bc, $001c                                     ; $4acc: $01 $1c $00
	rlca                                             ; $4acf: $07
	rra                                              ; $4ad0: $1f
	push af                                          ; $4ad1: $f5
	dec bc                                           ; $4ad2: $0b
	ld a, [de]                                       ; $4ad3: $1a
	ld bc, $1300                                     ; $4ad4: $01 $00 $13
	ld h, b                                          ; $4ad7: $60
	rst $38                                          ; $4ad8: $ff
	db $e4                                           ; $4ad9: $e4
	rst $38                                          ; $4ada: $ff
	add b                                            ; $4adb: $80
	rst $38                                          ; $4adc: $ff
	ld a, [hl]                                       ; $4add: $7e
	ccf                                              ; $4ade: $3f
	ld a, e                                          ; $4adf: $7b
	or h                                             ; $4ae0: $b4
	sbc [hl]                                         ; $4ae1: $9e
	rst JumpTable                                          ; $4ae2: $c7
	cp a                                             ; $4ae3: $bf
	add b                                            ; $4ae4: $80
	jr c, @-$67                                      ; $4ae5: $38 $97

	ld de, $8dfb                                     ; $4ae7: $11 $fb $8d
	rst $38                                          ; $4aea: $ff
	inc bc                                           ; $4aeb: $03
	rst $38                                          ; $4aec: $ff
	rrca                                             ; $4aed: $0f
	db $fc                                           ; $4aee: $fc
	ld a, b                                          ; $4aef: $78
	sbc [hl]                                         ; $4af0: $9e
	add d                                            ; $4af1: $82
	push af                                          ; $4af2: $f5
	jr nz, jr_051_4b6a                               ; $4af3: $20 $75

	jr nz, jr_051_4b6e                               ; $4af5: $20 $77

	add b                                            ; $4af7: $80
	rst $38                                          ; $4af8: $ff
	db $e4                                           ; $4af9: $e4
	ei                                               ; $4afa: $fb
	jr c, jr_051_4ac1                                ; $4afb: $38 $c4

	inc a                                            ; $4afd: $3c
	ld c, $f4                                        ; $4afe: $0e $f4
	ld a, e                                          ; $4b00: $7b
	ld b, $fd                                        ; $4b01: $06 $fd
	ld b, $07                                        ; $4b03: $06 $07
	inc hl                                           ; $4b05: $23
	di                                               ; $4b06: $f3
	ld b, $ff                                        ; $4b07: $06 $ff
	daa                                              ; $4b09: $27
	rst FarCall                                          ; $4b0a: $f7
	ld a, [hl]                                       ; $4b0b: $7e
	ld h, e                                          ; $4b0c: $63
	ld hl, $f9c0                                     ; $4b0d: $21 $c0 $f9
	add b                                            ; $4b10: $80
	ld e, $f7                                        ; $4b11: $1e $f7
	ld a, $d7                                        ; $4b13: $3e $d7
	rst $38                                          ; $4b15: $ff
	ld [bc], a                                       ; $4b16: $02
	rst AddAOntoHL                                          ; $4b17: $ef
	db $d3                                           ; $4b18: $d3
	ld l, a                                          ; $4b19: $6f
	db $e3                                           ; $4b1a: $e3
	ld l, a                                          ; $4b1b: $6f
	ld h, a                                          ; $4b1c: $67
	ld l, a                                          ; $4b1d: $6f
	ld c, a                                          ; $4b1e: $4f
	ret nz                                           ; $4b1f: $c0

	inc bc                                           ; $4b20: $03
	nop                                              ; $4b21: $00
	rst $38                                          ; $4b22: $ff
	rra                                              ; $4b23: $1f
	cp $3f                                           ; $4b24: $fe $3f
	ld h, b                                          ; $4b26: $60
	add hl, sp                                       ; $4b27: $39
	ld a, c                                          ; $4b28: $79
	ccf                                              ; $4b29: $3f
	ld a, a                                          ; $4b2a: $7f
	ccf                                              ; $4b2b: $3f
	cp a                                             ; $4b2c: $bf
	rlca                                             ; $4b2d: $07
	cp h                                             ; $4b2e: $bc
	nop                                              ; $4b2f: $00
	sbc e                                            ; $4b30: $9b
	or h                                             ; $4b31: $b4
	ld [bc], a                                       ; $4b32: $02
	rst AddAOntoHL                                          ; $4b33: $ef
	rst $38                                          ; $4b34: $ff
	ld a, e                                          ; $4b35: $7b
	and h                                            ; $4b36: $a4
	sbc l                                            ; $4b37: $9d
	rst JumpTable                                          ; $4b38: $c7
	db $eb                                           ; $4b39: $eb
	db $dd                                           ; $4b3a: $dd
	rst $38                                          ; $4b3b: $ff
	ld a, [hl]                                       ; $4b3c: $7e
	call z, $009b                                    ; $4b3d: $cc $9b $00
	db $10                                           ; $4b40: $10
	db $fd                                           ; $4b41: $fd
	inc bc                                           ; $4b42: $03
	ld a, c                                          ; $4b43: $79
	ld a, [$809a]                                    ; $4b44: $fa $9a $80
	cp a                                             ; $4b47: $bf
	ret nz                                           ; $4b48: $c0

	cp a                                             ; $4b49: $bf
	ret nz                                           ; $4b4a: $c0

	ld a, e                                          ; $4b4b: $7b
	adc c                                            ; $4b4c: $89
	ld l, d                                          ; $4b4d: $6a
	ldh a, [$7f]                                     ; $4b4e: $f0 $7f
	rst FarCall                                          ; $4b50: $f7
	sbc e                                            ; $4b51: $9b
	ld b, b                                          ; $4b52: $40
	rst $38                                          ; $4b53: $ff
	ret nz                                           ; $4b54: $c0

	ld a, a                                          ; $4b55: $7f
	ld l, [hl]                                       ; $4b56: $6e
	xor d                                            ; $4b57: $aa
	sub a                                            ; $4b58: $97
	xor a                                            ; $4b59: $af
	ld d, b                                          ; $4b5a: $50
	ld e, a                                          ; $4b5b: $5f
	and b                                            ; $4b5c: $a0
	cp a                                             ; $4b5d: $bf
	ld b, b                                          ; $4b5e: $40
	ld e, a                                          ; $4b5f: $5f
	and b                                            ; $4b60: $a0
	ld [hl], a                                       ; $4b61: $77
	ld hl, sp+$7f                                    ; $4b62: $f8 $7f
	db $fc                                           ; $4b64: $fc
	ld a, a                                          ; $4b65: $7f
	ld [$227c], sp                                   ; $4b66: $08 $7c $22
	sbc [hl]                                         ; $4b69: $9e

jr_051_4b6a:
	ei                                               ; $4b6a: $fb
	cp e                                             ; $4b6b: $bb
	push af                                          ; $4b6c: $f5
	xor d                                            ; $4b6d: $aa

jr_051_4b6e:
	ld e, l                                          ; $4b6e: $5d
	xor a                                            ; $4b6f: $af
	rst $38                                          ; $4b70: $ff
	ld a, a                                          ; $4b71: $7f
	sbc l                                            ; $4b72: $9d
	add b                                            ; $4b73: $80
	push de                                          ; $4b74: $d5
	or c                                             ; $4b75: $b1
	xor e                                            ; $4b76: $ab
	ld d, l                                          ; $4b77: $55
	ld [$fad5], a                                    ; $4b78: $ea $d5 $fa
	db $fd                                           ; $4b7b: $fd
	rst $38                                          ; $4b7c: $ff
	cp d                                             ; $4b7d: $ba
	push af                                          ; $4b7e: $f5
	ld a, d                                          ; $4b7f: $7a
	cp a                                             ; $4b80: $bf
	ld e, [hl]                                       ; $4b81: $5e
	cp a                                             ; $4b82: $bf
	rst $38                                          ; $4b83: $ff
	rst $38                                          ; $4b84: $ff
	db $eb                                           ; $4b85: $eb
	or c                                             ; $4b86: $b1
	ld d, l                                          ; $4b87: $55
	xor d                                            ; $4b88: $aa
	ld d, l                                          ; $4b89: $55
	cp d                                             ; $4b8a: $ba
	rst SubAFromDE                                          ; $4b8b: $df
	rst $38                                          ; $4b8c: $ff
	rst $38                                          ; $4b8d: $ff
	cp a                                             ; $4b8e: $bf
	rst SubAFromDE                                          ; $4b8f: $df
	rst $38                                          ; $4b90: $ff
	ld a, a                                          ; $4b91: $7f
	rst SubAFromDE                                          ; $4b92: $df
	ld a, a                                          ; $4b93: $7f
	rst $38                                          ; $4b94: $ff
	rst $38                                          ; $4b95: $ff
	rst $38                                          ; $4b96: $ff
	or c                                             ; $4b97: $b1
	rst $38                                          ; $4b98: $ff
	rst AddAOntoHL                                          ; $4b99: $ef
	push de                                          ; $4b9a: $d5
	rst $38                                          ; $4b9b: $ff
	rst $38                                          ; $4b9c: $ff
	rst $38                                          ; $4b9d: $ff
	rst $38                                          ; $4b9e: $ff
	rst $38                                          ; $4b9f: $ff
	rst $38                                          ; $4ba0: $ff
	rst FarCall                                          ; $4ba1: $f7
	ei                                               ; $4ba2: $fb
	rst $38                                          ; $4ba3: $ff
	cp $eb                                           ; $4ba4: $fe $eb
	rst FarCall                                          ; $4ba6: $f7
	ld a, [$0d97]                                    ; $4ba7: $fa $97 $0d
	ld a, [$ca0d]                                    ; $4baa: $fa $0d $ca
	dec e                                            ; $4bad: $1d
	and a                                            ; $4bae: $a7
	jr jr_051_4c08                                   ; $4baf: $18 $57

	cp [hl]                                          ; $4bb1: $be
	xor a                                            ; $4bb2: $af
	ld e, a                                          ; $4bb3: $5f
	push af                                          ; $4bb4: $f5
	sbc [hl]                                         ; $4bb5: $9e
	ld a, [bc]                                       ; $4bb6: $0a
	ld sp, $df00                                     ; $4bb7: $31 $00 $df
	ld b, h                                          ; $4bba: $44
	sbc [hl]                                         ; $4bbb: $9e
	ld b, [hl]                                       ; $4bbc: $46
	jp c, $9c66                                      ; $4bbd: $da $66 $9c

	ld b, e                                          ; $4bc0: $43
	inc sp                                           ; $4bc1: $33
	inc sp                                           ; $4bc2: $33
	ld b, e                                          ; $4bc3: $43
	or $9e                                           ; $4bc4: $f6 $9e
	ld [hl], e                                       ; $4bc6: $73
	ld h, e                                          ; $4bc7: $63
	or $de                                           ; $4bc8: $f6 $de
	ld d, l                                          ; $4bca: $55
	sbc [hl]                                         ; $4bcb: $9e
	ld d, [hl]                                       ; $4bcc: $56
	ld c, a                                          ; $4bcd: $4f
	or $9d                                           ; $4bce: $f6 $9d
	ld h, h                                          ; $4bd0: $64
	ld b, h                                          ; $4bd1: $44
	sbc $55                                          ; $4bd2: $de $55
	sbc [hl]                                         ; $4bd4: $9e
	ld d, h                                          ; $4bd5: $54
	db $dd                                           ; $4bd6: $dd
	ld [hl], a                                       ; $4bd7: $77
	sbc [hl]                                         ; $4bd8: $9e
	ld [hl], h                                       ; $4bd9: $74
	daa                                              ; $4bda: $27
	or $df                                           ; $4bdb: $f6 $df
	ld d, l                                          ; $4bdd: $55
	call c, $9e66                                    ; $4bde: $dc $66 $9e
	ld d, e                                          ; $4be1: $53
	sbc $33                                          ; $4be2: $de $33
	sbc [hl]                                         ; $4be4: $9e
	dec [hl]                                         ; $4be5: $35
	ld [hl], e                                       ; $4be6: $73
	call z, $81f3                                    ; $4be7: $cc $f3 $81
	ld sp, hl                                        ; $4bea: $f9
	reti                                             ; $4beb: $d9


	rst $38                                          ; $4bec: $ff
	inc bc                                           ; $4bed: $03
	ldh a, [$03]                                     ; $4bee: $f0 $03
	ldh a, [$03]                                     ; $4bf0: $f0 $03
	ldh a, [$03]                                     ; $4bf2: $f0 $03
	ldh a, [$03]                                     ; $4bf4: $f0 $03
	ldh a, [$03]                                     ; $4bf6: $f0 $03
	ldh a, [$03]                                     ; $4bf8: $f0 $03
	ldh a, [$03]                                     ; $4bfa: $f0 $03
	ldh a, [$03]                                     ; $4bfc: $f0 $03
	ldh a, [$03]                                     ; $4bfe: $f0 $03
	ldh a, [$03]                                     ; $4c00: $f0 $03
	ldh a, [$03]                                     ; $4c02: $f0 $03
	ldh a, [$03]                                     ; $4c04: $f0 $03
	ldh a, [$03]                                     ; $4c06: $f0 $03

jr_051_4c08:
	ldh a, [$03]                                     ; $4c08: $f0 $03
	ldh a, [$03]                                     ; $4c0a: $f0 $03
	ldh a, [$03]                                     ; $4c0c: $f0 $03
	ldh a, [$03]                                     ; $4c0e: $f0 $03
	ldh a, [$03]                                     ; $4c10: $f0 $03
	ldh a, [$03]                                     ; $4c12: $f0 $03
	ldh a, [$03]                                     ; $4c14: $f0 $03
	ldh a, [$03]                                     ; $4c16: $f0 $03
	ldh a, [$03]                                     ; $4c18: $f0 $03
	ldh a, [$03]                                     ; $4c1a: $f0 $03
	ldh a, [$03]                                     ; $4c1c: $f0 $03
	ldh a, [$03]                                     ; $4c1e: $f0 $03
	ldh a, [$03]                                     ; $4c20: $f0 $03
	ldh a, [$03]                                     ; $4c22: $f0 $03
	ldh a, [$03]                                     ; $4c24: $f0 $03
	ldh a, [$03]                                     ; $4c26: $f0 $03
	ldh a, [$03]                                     ; $4c28: $f0 $03
	ldh a, [$03]                                     ; $4c2a: $f0 $03
	ldh a, [$03]                                     ; $4c2c: $f0 $03
	ldh a, [$03]                                     ; $4c2e: $f0 $03
	ldh a, [$03]                                     ; $4c30: $f0 $03
	ldh a, [$03]                                     ; $4c32: $f0 $03
	ldh a, [$03]                                     ; $4c34: $f0 $03
	ldh a, [$03]                                     ; $4c36: $f0 $03
	ldh a, [$03]                                     ; $4c38: $f0 $03
	ldh a, [$03]                                     ; $4c3a: $f0 $03
	ldh a, [$03]                                     ; $4c3c: $f0 $03
	ldh a, [$03]                                     ; $4c3e: $f0 $03
	ldh a, [$03]                                     ; $4c40: $f0 $03
	ldh a, [$03]                                     ; $4c42: $f0 $03
	ldh a, [$03]                                     ; $4c44: $f0 $03
	ldh a, [$03]                                     ; $4c46: $f0 $03
	ldh a, [$03]                                     ; $4c48: $f0 $03
	ldh a, [$03]                                     ; $4c4a: $f0 $03
	ldh a, [$03]                                     ; $4c4c: $f0 $03
	ldh a, [$03]                                     ; $4c4e: $f0 $03
	ldh a, [$03]                                     ; $4c50: $f0 $03
	ldh a, [$03]                                     ; $4c52: $f0 $03
	ldh a, [$03]                                     ; $4c54: $f0 $03
	ldh a, [$03]                                     ; $4c56: $f0 $03
	ldh a, [$03]                                     ; $4c58: $f0 $03
	ldh a, [$03]                                     ; $4c5a: $f0 $03
	ldh a, [$03]                                     ; $4c5c: $f0 $03
	ldh a, [$03]                                     ; $4c5e: $f0 $03
	ldh a, [$03]                                     ; $4c60: $f0 $03
	ldh a, [$03]                                     ; $4c62: $f0 $03
	ldh a, [$03]                                     ; $4c64: $f0 $03
	ldh a, [$03]                                     ; $4c66: $f0 $03
	ldh a, [$03]                                     ; $4c68: $f0 $03
	ldh a, [$03]                                     ; $4c6a: $f0 $03
	ldh a, [$03]                                     ; $4c6c: $f0 $03
	ldh a, [$03]                                     ; $4c6e: $f0 $03
	ldh a, [$03]                                     ; $4c70: $f0 $03
	ldh a, [$03]                                     ; $4c72: $f0 $03
	ldh a, [$03]                                     ; $4c74: $f0 $03
	ldh a, [$03]                                     ; $4c76: $f0 $03
	ldh a, [$03]                                     ; $4c78: $f0 $03
	ldh a, [$03]                                     ; $4c7a: $f0 $03
	ldh a, [$03]                                     ; $4c7c: $f0 $03
	ldh a, [$03]                                     ; $4c7e: $f0 $03
	ldh a, [$03]                                     ; $4c80: $f0 $03
	ldh a, [$03]                                     ; $4c82: $f0 $03
	ldh a, [$03]                                     ; $4c84: $f0 $03
	ldh a, [$03]                                     ; $4c86: $f0 $03
	ldh a, [$03]                                     ; $4c88: $f0 $03
	ldh a, [$03]                                     ; $4c8a: $f0 $03
	ldh a, [$03]                                     ; $4c8c: $f0 $03
	ldh a, [$03]                                     ; $4c8e: $f0 $03
	ldh a, [$03]                                     ; $4c90: $f0 $03
	ldh a, [$03]                                     ; $4c92: $f0 $03
	ldh a, [$03]                                     ; $4c94: $f0 $03
	ldh a, [$03]                                     ; $4c96: $f0 $03
	ldh a, [rAUD1LOW]                                ; $4c98: $f0 $13
	ldh a, [$9a]                                     ; $4c9a: $f0 $9a
	and b                                            ; $4c9c: $a0
	ld d, b                                          ; $4c9d: $50

Call_051_4c9e:
	and b                                            ; $4c9e: $a0
	ld d, b                                          ; $4c9f: $50
	add sp, $4f                                      ; $4ca0: $e8 $4f
	ldh [$df], a                                     ; $4ca2: $e0 $df
	ld bc, $f04f                                     ; $4ca4: $01 $4f $f0
	sbc l                                            ; $4ca7: $9d
	ld b, h                                          ; $4ca8: $44
	xor [hl]                                         ; $4ca9: $ae
	ld c, e                                          ; $4caa: $4b
	ldh [$9e], a                                     ; $4cab: $e0 $9e
	inc bc                                           ; $4cad: $03
	ld d, a                                          ; $4cae: $57
	ldh a, [$9b]                                     ; $4caf: $f0 $9b
	ld d, b                                          ; $4cb1: $50
	ldh a, [hDisp1_SCY]                                     ; $4cb2: $f0 $90
	ldh a, [$db]                                     ; $4cb4: $f0 $db
	rst $38                                          ; $4cb6: $ff
	sbc [hl]                                         ; $4cb7: $9e
	sbc a                                            ; $4cb8: $9f
	inc bc                                           ; $4cb9: $03
	sub b                                            ; $4cba: $90
	inc bc                                           ; $4cbb: $03
	ldh a, [$fe]                                     ; $4cbc: $f0 $fe
	sbc e                                            ; $4cbe: $9b
	ld [bc], a                                       ; $4cbf: $02
	dec d                                            ; $4cc0: $15
	cpl                                              ; $4cc1: $2f
	ld e, a                                          ; $4cc2: $5f
	db $db                                           ; $4cc3: $db
	rst $38                                          ; $4cc4: $ff
	sbc l                                            ; $4cc5: $9d
	ld a, [$fdf4]                                    ; $4cc6: $fa $f4 $fd
	sbc e                                            ; $4cc9: $9b
	and b                                            ; $4cca: $a0
	ld d, h                                          ; $4ccb: $54
	ld a, [$dbfd]                                    ; $4ccc: $fa $fd $db
	rst $38                                          ; $4ccf: $ff
	sbc l                                            ; $4cd0: $9d
	cpl                                              ; $4cd1: $2f
	rla                                              ; $4cd2: $17
	inc bc                                           ; $4cd3: $03
	ret nz                                           ; $4cd4: $c0

	inc bc                                           ; $4cd5: $03
	ldh a, [$99]                                     ; $4cd6: $f0 $99
	nop                                              ; $4cd8: $00
	ld a, h                                          ; $4cd9: $7c
	ld d, [hl]                                       ; $4cda: $56
	ld a, [hl]                                       ; $4cdb: $7e
	ld d, [hl]                                       ; $4cdc: $56
	ld a, [hl]                                       ; $4cdd: $7e
	db $dd                                           ; $4cde: $dd
	rst $38                                          ; $4cdf: $ff
	sbc [hl]                                         ; $4ce0: $9e
	rst SubAFromHL                                          ; $4ce1: $d7
	ld a, e                                          ; $4ce2: $7b
	cp $fb                                           ; $4ce3: $fe $fb
	sbc l                                            ; $4ce5: $9d
	ld hl, sp-$78                                    ; $4ce6: $f8 $88
	jp c, $9eff                                      ; $4ce8: $da $ff $9e

	adc a                                            ; $4ceb: $8f
	db $fd                                           ; $4cec: $fd
	sbc e                                            ; $4ced: $9b
	jr nz, jr_051_4d21                               ; $4cee: $20 $31

	ld c, b                                          ; $4cf0: $48
	ld a, l                                          ; $4cf1: $7d
	db $db                                           ; $4cf2: $db
	rst $38                                          ; $4cf3: $ff
	sbc [hl]                                         ; $4cf4: $9e
	rst GetHLinHL                                          ; $4cf5: $cf
	ld [hl], e                                       ; $4cf6: $73
	ldh [$9b], a                                     ; $4cf7: $e0 $9b
	dec b                                            ; $4cf9: $05
	ld b, e                                          ; $4cfa: $43
	rst SubAFromBC                                          ; $4cfb: $e7
	rst FarCall                                          ; $4cfc: $f7
	ld e, e                                          ; $4cfd: $5b
	ret nz                                           ; $4cfe: $c0

	sbc d                                            ; $4cff: $9a
	dec b                                            ; $4d00: $05
	dec bc                                           ; $4d01: $0b
	dec b                                            ; $4d02: $05
	db $eb                                           ; $4d03: $eb
	push hl                                          ; $4d04: $e5
	reti                                             ; $4d05: $d9


	rst $38                                          ; $4d06: $ff
	sbc d                                            ; $4d07: $9a
	ld d, b                                          ; $4d08: $50
	ld hl, sp-$03                                    ; $4d09: $f8 $fd
	ld a, [$de7f]                                    ; $4d0b: $fa $7f $de
	rst $38                                          ; $4d0e: $ff
	ld l, e                                          ; $4d0f: $6b
	ld c, a                                          ; $4d10: $4f
	sbc b                                            ; $4d11: $98
	rst $38                                          ; $4d12: $ff
	ld d, e                                          ; $4d13: $53
	ld d, e                                          ; $4d14: $53
	db $d3                                           ; $4d15: $d3
	xor e                                            ; $4d16: $ab
	ld [hl], a                                       ; $4d17: $77
	ei                                               ; $4d18: $fb
	ld a, e                                          ; $4d19: $7b
	pop bc                                           ; $4d1a: $c1
	ld l, e                                          ; $4d1b: $6b
	rst AddAOntoHL                                          ; $4d1c: $ef
	sbc c                                            ; $4d1d: $99
	ld e, a                                          ; $4d1e: $5f
	cp [hl]                                          ; $4d1f: $be
	ld a, a                                          ; $4d20: $7f

jr_051_4d21:
	cp a                                             ; $4d21: $bf
	rst AddAOntoHL                                          ; $4d22: $ef
	rst $38                                          ; $4d23: $ff
	ld h, e                                          ; $4d24: $63
	pop bc                                           ; $4d25: $c1
	sbc b                                            ; $4d26: $98
	rst $38                                          ; $4d27: $ff
	dec b                                            ; $4d28: $05
	xor e                                            ; $4d29: $ab
	rst SubAFromBC                                          ; $4d2a: $e7
	rst AddAOntoHL                                          ; $4d2b: $ef
	halt                                             ; $4d2c: $76
	xor a                                            ; $4d2d: $af
	ld e, a                                          ; $4d2e: $5f
	ldh a, [$9b]                                     ; $4d2f: $f0 $9b
	sbc d                                            ; $4d31: $9a
	push af                                          ; $4d32: $f5
	ld a, $ef                                        ; $4d33: $3e $ef
	ld l, [hl]                                       ; $4d35: $6e
	add $9e                                          ; $4d36: $c6 $9e
	cp a                                             ; $4d38: $bf
	ld l, e                                          ; $4d39: $6b
	and b                                            ; $4d3a: $a0
	sbc d                                            ; $4d3b: $9a
	add b                                            ; $4d3c: $80
	ld bc, $d583                                     ; $4d3d: $01 $83 $d5
	ei                                               ; $4d40: $fb
	ret c                                            ; $4d41: $d8

	rst $38                                          ; $4d42: $ff
	rst $38                                          ; $4d43: $ff
	sbc e                                            ; $4d44: $9b
	ld [$8e14], sp                                   ; $4d45: $08 $14 $8e
	rst SubAFromDE                                          ; $4d48: $df
	rst SubAFromHL                                          ; $4d49: $d7
	rst $38                                          ; $4d4a: $ff
	sbc b                                            ; $4d4b: $98

Call_051_4d4c:
	nop                                              ; $4d4c: $00
	inc b                                            ; $4d4d: $04
	ld [$1e1c], sp                                   ; $4d4e: $08 $1c $1e
	ld e, a                                          ; $4d51: $5f
	cp [hl]                                          ; $4d52: $be
	ret c                                            ; $4d53: $d8

	rst $38                                          ; $4d54: $ff
	sub l                                            ; $4d55: $95
	ld [bc], a                                       ; $4d56: $02
	dec b                                            ; $4d57: $05
	dec bc                                           ; $4d58: $0b
	dec d                                            ; $4d59: $15
	dec hl                                           ; $4d5a: $2b
	ld d, l                                          ; $4d5b: $55
	xor e                                            ; $4d5c: $ab
	push de                                          ; $4d5d: $d5
	rst $38                                          ; $4d5e: $ff
	rst $38                                          ; $4d5f: $ff
	sbc $fe                                          ; $4d60: $de $fe
	add b                                            ; $4d62: $80
	rst $38                                          ; $4d63: $ff
	db $fc                                           ; $4d64: $fc
	rst $38                                          ; $4d65: $ff
	and b                                            ; $4d66: $a0
	rst FarCall                                          ; $4d67: $f7
	nop                                              ; $4d68: $00
	sub h                                            ; $4d69: $94
	or b                                             ; $4d6a: $b0
	ld de, $07e7                                     ; $4d6b: $11 $e7 $07
	rst $38                                          ; $4d6e: $ff
	ld [$081f], sp                                   ; $4d6f: $08 $1f $08
	ld [$1fe9], sp                                   ; $4d72: $08 $e9 $1f
	ld hl, sp+$02                                    ; $4d75: $f8 $02
	ld [hl], a                                       ; $4d77: $77
	nop                                              ; $4d78: $00
	db $10                                           ; $4d79: $10
	add e                                            ; $4d7a: $83
	call nz, $f0f3                                   ; $4d7b: $c4 $f3 $f0
	rst $38                                          ; $4d7e: $ff
	adc b                                            ; $4d7f: $88
	db $fc                                           ; $4d80: $fc
	ld [$0886], sp                                   ; $4d81: $08 $86 $08
	set 7, h                                         ; $4d84: $cb $fc
	adc a                                            ; $4d86: $8f
	and b                                            ; $4d87: $a0
	ret nc                                           ; $4d88: $d0

	add sp, -$2c                                     ; $4d89: $e8 $d4
	xor d                                            ; $4d8b: $aa
	ld d, l                                          ; $4d8c: $55
	db $eb                                           ; $4d8d: $eb
	ld d, l                                          ; $4d8e: $55
	rst $38                                          ; $4d8f: $ff
	ld a, a                                          ; $4d90: $7f
	ccf                                              ; $4d91: $3f
	ccf                                              ; $4d92: $3f
	ld a, a                                          ; $4d93: $7f
	rst $38                                          ; $4d94: $ff
	rra                                              ; $4d95: $1f
	rst $38                                          ; $4d96: $ff
	nop                                              ; $4d97: $00
	db $10                                           ; $4d98: $10
	jr c, jr_051_4e17                                ; $4d99: $38 $7c

	cp [hl]                                          ; $4d9b: $be
	ld [hl], a                                       ; $4d9c: $77
	ccf                                              ; $4d9d: $3f
	jp c, $9aff                                      ; $4d9e: $da $ff $9a

	jr nz, jr_051_4df4                               ; $4da1: $20 $51

	cp e                                             ; $4da3: $bb
	ld a, l                                          ; $4da4: $7d
	rst $38                                          ; $4da5: $ff
	ld e, e                                          ; $4da6: $5b
	ldh a, [$9b]                                     ; $4da7: $f0 $9b
	add b                                            ; $4da9: $80
	push bc                                          ; $4daa: $c5
	db $eb                                           ; $4dab: $eb
	rst SubAFromHL                                          ; $4dac: $d7
	ld [hl], e                                       ; $4dad: $73
	ld e, a                                          ; $4dae: $5f
	jp c, $9aff                                      ; $4daf: $da $ff $9a

	ld d, d                                          ; $4db2: $52
	ld [hl], a                                       ; $4db3: $77
	xor a                                            ; $4db4: $af
	ld [hl], a                                       ; $4db5: $77
	xor a                                            ; $4db6: $af
	ld [hl], d                                       ; $4db7: $72
	call nz, $ffdb                                   ; $4db8: $c4 $db $ff
	sbc c                                            ; $4dbb: $99
	ld hl, sp-$68                                    ; $4dbc: $f8 $98
	ld sp, hl                                        ; $4dbe: $f9
	rst $38                                          ; $4dbf: $ff
	push af                                          ; $4dc0: $f5
	ld a, e                                          ; $4dc1: $7b
	ld [hl], e                                       ; $4dc2: $73
	ccf                                              ; $4dc3: $3f
	call c, $9bff                                    ; $4dc4: $dc $ff $9b
	cp $bd                                           ; $4dc7: $fe $bd
	ei                                               ; $4dc9: $fb
	cp $5b                                           ; $4dca: $fe $5b
	ld d, c                                          ; $4dcc: $51
	sbc [hl]                                         ; $4dcd: $9e
	rst $38                                          ; $4dce: $ff
	ld e, [hl]                                       ; $4dcf: $5e
	add $db                                          ; $4dd0: $c6 $db
	rst $38                                          ; $4dd2: $ff
	sbc h                                            ; $4dd3: $9c
	db $eb                                           ; $4dd4: $eb
	or l                                             ; $4dd5: $b5
	ld a, d                                          ; $4dd6: $7a
	ld l, d                                          ; $4dd7: $6a
	inc [hl]                                         ; $4dd8: $34
	db $db                                           ; $4dd9: $db
	rst $38                                          ; $4dda: $ff
	ld de, wInitialA                                     ; $4ddb: $11 $00 $c1
	inc sp                                           ; $4dde: $33
	inc bc                                           ; $4ddf: $03
	rst $38                                          ; $4de0: $ff
	call nz, $df33                                   ; $4de1: $c4 $33 $df
	ld b, h                                          ; $4de4: $44
	reti                                             ; $4de5: $d9


	inc sp                                           ; $4de6: $33
	sbc l                                            ; $4de7: $9d
	ld b, l                                          ; $4de8: $45
	ld d, h                                          ; $4de9: $54
	db $dd                                           ; $4dea: $dd
	inc sp                                           ; $4deb: $33
	scf                                              ; $4dec: $37
	adc d                                            ; $4ded: $8a
	reti                                             ; $4dee: $d9


	rst $38                                          ; $4def: $ff
	ld sp, hl                                        ; $4df0: $f9
	inc bc                                           ; $4df1: $03
	ldh a, [rIF]                                     ; $4df2: $f0 $0f

jr_051_4df4:
	ldh a, [$9e]                                     ; $4df4: $f0 $9e
	ld a, a                                          ; $4df6: $7f
	jp c, $9eff                                      ; $4df7: $da $ff $9e

	db $fd                                           ; $4dfa: $fd
	db $fd                                           ; $4dfb: $fd
	rst SubAFromDE                                          ; $4dfc: $df
	inc b                                            ; $4dfd: $04
	sbc l                                            ; $4dfe: $9d
	ld b, $e7                                        ; $4dff: $06 $e7
	ld c, e                                          ; $4e01: $4b
	ldh [$9e], a                                     ; $4e02: $e0 $9e
	rrca                                             ; $4e04: $0f
	ld h, e                                          ; $4e05: $63
	ldh a, [$99]                                     ; $4e06: $f0 $99
	ld bc, $7303                                     ; $4e08: $01 $03 $73
	ld [hl], c                                       ; $4e0b: $71
	ld sp, hl                                        ; $4e0c: $f9
	adc a                                            ; $4e0d: $8f
	ret c                                            ; $4e0e: $d8

	rst $38                                          ; $4e0f: $ff
	adc e                                            ; $4e10: $8b
	nop                                              ; $4e11: $00
	ld hl, $fd37                                     ; $4e12: $21 $37 $fd
	reti                                             ; $4e15: $d9


	ret c                                            ; $4e16: $d8

jr_051_4e17:
	inc a                                            ; $4e17: $3c
	ld sp, hl                                        ; $4e18: $f9
	rst $38                                          ; $4e19: $ff
	rst $38                                          ; $4e1a: $ff
	rst SubAFromDE                                          ; $4e1b: $df
	ei                                               ; $4e1c: $fb
	rst $38                                          ; $4e1d: $ff
	cp $fc                                           ; $4e1e: $fe $fc
	db $fd                                           ; $4e20: $fd
	ccf                                              ; $4e21: $3f
	cp a                                             ; $4e22: $bf
	rst $38                                          ; $4e23: $ff
	rst FarCall                                          ; $4e24: $f7
	push de                                          ; $4e25: $d5
	rst $38                                          ; $4e26: $ff
	sbc e                                            ; $4e27: $9b
	ccf                                              ; $4e28: $3f
	rst $38                                          ; $4e29: $ff
	rst $38                                          ; $4e2a: $ff
	rst FarCall                                          ; $4e2b: $f7
	ld [hl], a                                       ; $4e2c: $77
	rst AddAOntoHL                                          ; $4e2d: $ef
	reti                                             ; $4e2e: $d9


	add b                                            ; $4e2f: $80
	reti                                             ; $4e30: $d9


	rst $38                                          ; $4e31: $ff
	sbc h                                            ; $4e32: $9c
	inc a                                            ; $4e33: $3c
	jr c, jr_051_4e6f                                ; $4e34: $38 $39

	sbc $b9                                          ; $4e36: $de $b9
	sbc d                                            ; $4e38: $9a
	sbc c                                            ; $4e39: $99
	adc c                                            ; $4e3a: $89
	rst $38                                          ; $4e3b: $ff
	rst $38                                          ; $4e3c: $ff
	cp $dc                                           ; $4e3d: $fe $dc
	ld a, [hl]                                       ; $4e3f: $7e
	sbc l                                            ; $4e40: $9d
	xor e                                            ; $4e41: $ab
	db $d3                                           ; $4e42: $d3
	ld [hl], a                                       ; $4e43: $77
	cp $9d                                           ; $4e44: $fe $9d
	adc e                                            ; $4e46: $8b
	inc de                                           ; $4e47: $13
	reti                                             ; $4e48: $d9


	rlca                                             ; $4e49: $07
	sub h                                            ; $4e4a: $94
	sub e                                            ; $4e4b: $93
	or d                                             ; $4e4c: $b2
	sub d                                            ; $4e4d: $92
	or d                                             ; $4e4e: $b2
	sub d                                            ; $4e4f: $92
	cp d                                             ; $4e50: $ba
	dec de                                           ; $4e51: $1b
	ld a, [hl-]                                      ; $4e52: $3a
	ldh [$c1], a                                     ; $4e53: $e0 $c1
	pop hl                                           ; $4e55: $e1
	ld a, e                                          ; $4e56: $7b
	cp $7f                                           ; $4e57: $fe $7f
	ld a, [$3cdf]                                    ; $4e59: $fa $df $3c
	adc h                                            ; $4e5c: $8c
	cp h                                             ; $4e5d: $bc
	inc a                                            ; $4e5e: $3c
	sbc h                                            ; $4e5f: $9c
	inc a                                            ; $4e60: $3c
	inc e                                            ; $4e61: $1c
	cp h                                             ; $4e62: $bc
	rst $38                                          ; $4e63: $ff
	rst $38                                          ; $4e64: $ff
	ld a, a                                          ; $4e65: $7f
	rst $38                                          ; $4e66: $ff
	ld a, a                                          ; $4e67: $7f
	rst SubAFromDE                                          ; $4e68: $df
	rst $38                                          ; $4e69: $ff
	ld e, a                                          ; $4e6a: $5f
	ld a, a                                          ; $4e6b: $7f
	rst $38                                          ; $4e6c: $ff
	ld [hl], a                                       ; $4e6d: $77
	rst FarCall                                          ; $4e6e: $f7

jr_051_4e6f:
	rst FarCall                                          ; $4e6f: $f7
	sbc $f3                                          ; $4e70: $de $f3
	reti                                             ; $4e72: $d9


	rst $38                                          ; $4e73: $ff
	sbc l                                            ; $4e74: $9d
	add h                                            ; $4e75: $84
	jp z, $fe77                                      ; $4e76: $ca $77 $fe

	sbc e                                            ; $4e79: $9b
	xor h                                            ; $4e7a: $ac
	jp z, $f5fb                                      ; $4e7b: $ca $fb $f5

	ld [hl], a                                       ; $4e7e: $77
	cp $9b                                           ; $4e7f: $fe $9b
	di                                               ; $4e81: $f3
	push af                                          ; $4e82: $f5
	rst $38                                          ; $4e83: $ff
	ld a, [hl]                                       ; $4e84: $7e
	ld l, e                                          ; $4e85: $6b
	cp $2b                                           ; $4e86: $fe $2b
	ld [$e002], sp                                   ; $4e88: $08 $02 $e0
	db $db                                           ; $4e8b: $db
	rst $38                                          ; $4e8c: $ff
	sbc [hl]                                         ; $4e8d: $9e
	ld hl, sp-$05                                    ; $4e8e: $f8 $fb
	sbc [hl]                                         ; $4e90: $9e
	rlca                                             ; $4e91: $07
	ld [hl], d                                       ; $4e92: $72
	ldh [$9a], a                                     ; $4e93: $e0 $9a
	cp $f8                                           ; $4e95: $fe $f8
	ldh a, [$60]                                     ; $4e97: $f0 $60
	inc bc                                           ; $4e99: $03
	ld a, d                                          ; $4e9a: $7a
	rst $38                                          ; $4e9b: $ff
	adc a                                            ; $4e9c: $8f
	rlca                                             ; $4e9d: $07
	ld a, h                                          ; $4e9e: $7c
	ld sp, hl                                        ; $4e9f: $f9
	di                                               ; $4ea0: $f3
	adc b                                            ; $4ea1: $88
	cp $dd                                           ; $4ea2: $fe $dd
	pop af                                           ; $4ea4: $f1
	rrca                                             ; $4ea5: $0f
	jr nc, jr_051_4ec7                               ; $4ea6: $30 $1f

	add sp, -$10                                     ; $4ea8: $e8 $f0
	rst $38                                          ; $4eaa: $ff
	db $e3                                           ; $4eab: $e3
	add b                                            ; $4eac: $80
	ld a, d                                          ; $4ead: $7a
	ldh [c], a                                       ; $4eae: $e2
	add b                                            ; $4eaf: $80
	ldh a, [$dc]                                     ; $4eb0: $f0 $dc
	scf                                              ; $4eb2: $37
	adc d                                            ; $4eb3: $8a
	rst SubAFromBC                                          ; $4eb4: $e7
	cp c                                             ; $4eb5: $b9
	xor $c4                                          ; $4eb6: $ee $c4
	or e                                             ; $4eb8: $b3
	ld a, $ce                                        ; $4eb9: $3e $ce
	rst FarCall                                          ; $4ebb: $f7
	ld a, a                                          ; $4ebc: $7f
	ld a, a                                          ; $4ebd: $7f
	dec e                                            ; $4ebe: $1d
	cp $7e                                           ; $4ebf: $fe $7e
	or $58                                           ; $4ec1: $f6 $58
	ld c, a                                          ; $4ec3: $4f
	sub $6c                                          ; $4ec4: $d6 $6c
	db $d3                                           ; $4ec6: $d3

jr_051_4ec7:
	sbc $59                                          ; $4ec7: $de $59
	ld hl, sp+$60                                    ; $4ec9: $f8 $60
	ld a, a                                          ; $4ecb: $7f
	ld a, b                                          ; $4ecc: $78
	di                                               ; $4ecd: $f3
	db $ec                                           ; $4ece: $ec
	ld a, a                                          ; $4ecf: $7f
	rst JumpTable                                          ; $4ed0: $c7
	add l                                            ; $4ed1: $85
	ld c, a                                          ; $4ed2: $4f
	ccf                                              ; $4ed3: $3f
	rra                                              ; $4ed4: $1f
	rrca                                             ; $4ed5: $0f
	inc de                                           ; $4ed6: $13
	cpl                                              ; $4ed7: $2f
	dec bc                                           ; $4ed8: $0b
	db $fd                                           ; $4ed9: $fd
	ccf                                              ; $4eda: $3f
	inc bc                                           ; $4edb: $03
	rst $38                                          ; $4edc: $ff
	rlca                                             ; $4edd: $07
	pop hl                                           ; $4ede: $e1
	jr jr_051_4ee7                                   ; $4edf: $18 $06

	inc bc                                           ; $4ee1: $03
	rst $38                                          ; $4ee2: $ff
	rst AddAOntoHL                                          ; $4ee3: $ef
	rst $38                                          ; $4ee4: $ff
	rst GetHLinHL                                          ; $4ee5: $cf
	rst SubAFromDE                                          ; $4ee6: $df

jr_051_4ee7:
	rst AddAOntoHL                                          ; $4ee7: $ef
	db $fd                                           ; $4ee8: $fd
	db $fd                                           ; $4ee9: $fd
	rst $38                                          ; $4eea: $ff
	ld [hl], a                                       ; $4eeb: $77
	db $db                                           ; $4eec: $db
	rst $38                                          ; $4eed: $ff
	sbc e                                            ; $4eee: $9b
	jp c, rIE                                      ; $4eef: $da $ff $ff

	add e                                            ; $4ef2: $83
	rst GetHLinHL                                          ; $4ef3: $cf
	rst $38                                          ; $4ef4: $ff
	sbc l                                            ; $4ef5: $9d
	rst FarCall                                          ; $4ef6: $f7
	rst AddAOntoHL                                          ; $4ef7: $ef
	db $db                                           ; $4ef8: $db
	rst $38                                          ; $4ef9: $ff
	ld a, a                                          ; $4efa: $7f
	ld sp, hl                                        ; $4efb: $f9
	rst SubAFromDE                                          ; $4efc: $df
	add b                                            ; $4efd: $80
	sbc [hl]                                         ; $4efe: $9e
	ret nz                                           ; $4eff: $c0

	db $dd                                           ; $4f00: $dd
	ret nc                                           ; $4f01: $d0

	sbc [hl]                                         ; $4f02: $9e
	ret c                                            ; $4f03: $d8

	ld [hl], a                                       ; $4f04: $77
	di                                               ; $4f05: $f3
	sbc $ef                                          ; $4f06: $de $ef
	sbc l                                            ; $4f08: $9d
	rst SubAFromBC                                          ; $4f09: $e7
	adc e                                            ; $4f0a: $8b
	jp c, $d983                                      ; $4f0b: $da $83 $d9

	ld a, h                                          ; $4f0e: $7c
	sub l                                            ; $4f0f: $95
	adc e                                            ; $4f10: $8b
	ld [de], a                                       ; $4f11: $12
	adc [hl]                                         ; $4f12: $8e
	ld b, $86                                        ; $4f13: $06 $86
	ld b, $84                                        ; $4f15: $06 $84
	ld b, $07                                        ; $4f17: $06 $07
	rlca                                             ; $4f19: $07
	call c, $9203                                    ; $4f1a: $dc $03 $92
	ld bc, $3a1b                                     ; $4f1d: $01 $1b $3a
	rra                                              ; $4f20: $1f
	ccf                                              ; $4f21: $3f
	ld a, a                                          ; $4f22: $7f
	ld l, a                                          ; $4f23: $6f
	ld l, a                                          ; $4f24: $6f
	ld c, a                                          ; $4f25: $4f
	ldh [$c1], a                                     ; $4f26: $e0 $c1
	ldh [$c0], a                                     ; $4f28: $e0 $c0
	db $dd                                           ; $4f2a: $dd
	add b                                            ; $4f2b: $80
	sbc h                                            ; $4f2c: $9c
	inc e                                            ; $4f2d: $1c
	adc h                                            ; $4f2e: $8c
	ld c, h                                          ; $4f2f: $4c
	ld [hl], a                                       ; $4f30: $77
	cp $9b                                           ; $4f31: $fe $9b
	add h                                            ; $4f33: $84
	rst $38                                          ; $4f34: $ff
	ld a, a                                          ; $4f35: $7f
	cp a                                             ; $4f36: $bf
	ld [hl], e                                       ; $4f37: $73
	cp $7e                                           ; $4f38: $fe $7e
	dec sp                                           ; $4f3a: $3b
	sbc c                                            ; $4f3b: $99
	ld [hl], c                                       ; $4f3c: $71
	ld sp, $3071                                     ; $4f3d: $31 $71 $30
	ld [hl], b                                       ; $4f40: $70
	jr nc, @-$25                                     ; $4f41: $30 $d9

	rst $38                                          ; $4f43: $ff
	sbc h                                            ; $4f44: $9c
	xor h                                            ; $4f45: $ac
	adc $ec                                          ; $4f46: $ce $ec
	ld [hl], e                                       ; $4f48: $73
	cp $9d                                           ; $4f49: $fe $9d
	di                                               ; $4f4b: $f3
	pop af                                           ; $4f4c: $f1
	ld l, a                                          ; $4f4d: $6f
	cp $9a                                           ; $4f4e: $fe $9a
	db $fd                                           ; $4f50: $fd
	ld a, [hl]                                       ; $4f51: $7e
	db $fd                                           ; $4f52: $fd
	ld a, [hl]                                       ; $4f53: $7e
	ld a, l                                          ; $4f54: $7d
	ld a, e                                          ; $4f55: $7b
	cp $5e                                           ; $4f56: $fe $5e
	add sp, -$67                                     ; $4f58: $e8 $99
	ld [$0800], sp                                   ; $4f5a: $08 $00 $08
	inc b                                            ; $4f5d: $04
	ld [$d604], sp                                   ; $4f5e: $08 $04 $d6
	rst $38                                          ; $4f61: $ff
	sbc [hl]                                         ; $4f62: $9e
	ldh a, [rHDMA1]                                  ; $4f63: $f0 $51
	push hl                                          ; $4f65: $e5
	ld a, e                                          ; $4f66: $7b
	ldh a, [c]                                       ; $4f67: $f2
	sbc e                                            ; $4f68: $9b
	ld bc, $1f07                                     ; $4f69: $01 $07 $1f
	rst $38                                          ; $4f6c: $ff
	ld [hl], a                                       ; $4f6d: $77
	ldh a, [c]                                       ; $4f6e: $f2
	ld a, [hl]                                       ; $4f6f: $7e
	ret c                                            ; $4f70: $d8

	sbc d                                            ; $4f71: $9a
	ldh [rP1], a                                     ; $4f72: $e0 $00
	add b                                            ; $4f74: $80
	rlca                                             ; $4f75: $07
	rra                                              ; $4f76: $1f
	ld l, l                                          ; $4f77: $6d
	xor h                                            ; $4f78: $ac
	sbc h                                            ; $4f79: $9c
	ld hl, sp-$1f                                    ; $4f7a: $f8 $e1
	add a                                            ; $4f7c: $87
	db $fd                                           ; $4f7d: $fd
	sub l                                            ; $4f7e: $95
	rst SubAFromHL                                          ; $4f7f: $d7
	sbc e                                            ; $4f80: $9b
	jr nz, @+$01                                     ; $4f81: $20 $ff

	add a                                            ; $4f83: $87
	adc d                                            ; $4f84: $8a
	adc l                                            ; $4f85: $8d
	sub a                                            ; $4f86: $97
	rst AddAOntoHL                                          ; $4f87: $ef
	db $fc                                           ; $4f88: $fc
	sbc $ff                                          ; $4f89: $de $ff
	sub h                                            ; $4f8b: $94
	db $fc                                           ; $4f8c: $fc
	ld hl, sp-$08                                    ; $4f8d: $f8 $f8
	add e                                            ; $4f8f: $83
	rst $38                                          ; $4f90: $ff
	rrca                                             ; $4f91: $0f
	ei                                               ; $4f92: $fb
	scf                                              ; $4f93: $37
	xor c                                            ; $4f94: $a9
	or e                                             ; $4f95: $b3
	ld c, a                                          ; $4f96: $4f
	ld a, d                                          ; $4f97: $7a
	sub [hl]                                         ; $4f98: $96
	ld a, a                                          ; $4f99: $7f
	ldh a, [c]                                       ; $4f9a: $f2
	sub e                                            ; $4f9b: $93
	ld [hl], e                                       ; $4f9c: $73
	ld h, a                                          ; $4f9d: $67
	and $db                                          ; $4f9e: $e6 $db
	ld b, $f2                                        ; $4fa0: $06 $f2
	cp a                                             ; $4fa2: $bf
	ld [hl], a                                       ; $4fa3: $77
	call $b8ff                                       ; $4fa4: $cd $ff $b8
	ld a, $7a                                        ; $4fa7: $3e $7a
	rra                                              ; $4fa9: $1f
	sub e                                            ; $4faa: $93
	rst SubAFromBC                                          ; $4fab: $e7
	rst AddAOntoHL                                          ; $4fac: $ef
	ret c                                            ; $4fad: $d8

	ldh a, [$67]                                     ; $4fae: $f0 $67
	ld sp, hl                                        ; $4fb0: $f9
	call nz, $ff80                                   ; $4fb1: $c4 $80 $ff
	xor [hl]                                         ; $4fb4: $ae
	ld h, l                                          ; $4fb5: $65
	cp h                                             ; $4fb6: $bc
	ld a, e                                          ; $4fb7: $7b
	or e                                             ; $4fb8: $b3
	rst SubAFromDE                                          ; $4fb9: $df
	rst $38                                          ; $4fba: $ff
	adc h                                            ; $4fbb: $8c
	call z, $17f6                                    ; $4fbc: $cc $f6 $17
	rst FarCall                                          ; $4fbf: $f7
	dec a                                            ; $4fc0: $3d
	rlca                                             ; $4fc1: $07
	ld h, l                                          ; $4fc2: $65
	ld sp, hl                                        ; $4fc3: $f9
	rst JumpTable                                          ; $4fc4: $c7
	ld h, a                                          ; $4fc5: $67
	sub e                                            ; $4fc6: $93
	ld hl, sp+$1e                                    ; $4fc7: $f8 $1e
	rrca                                             ; $4fc9: $0f
	add e                                            ; $4fca: $83
	rst $38                                          ; $4fcb: $ff
	ld a, a                                          ; $4fcc: $7f
	add hl, sp                                       ; $4fcd: $39
	inc a                                            ; $4fce: $3c
	ld [hl], a                                       ; $4fcf: $77
	and e                                            ; $4fd0: $a3
	ld a, [hl]                                       ; $4fd1: $7e
	xor l                                            ; $4fd2: $ad
	sbc c                                            ; $4fd3: $99
	rra                                              ; $4fd4: $1f
	adc a                                            ; $4fd5: $8f
	rst $38                                          ; $4fd6: $ff
	ld a, a                                          ; $4fd7: $7f
	ccf                                              ; $4fd8: $3f
	rst SubAFromDE                                          ; $4fd9: $df
	halt                                             ; $4fda: $76
	db $db                                           ; $4fdb: $db
	rst SubAFromDE                                          ; $4fdc: $df
	ei                                               ; $4fdd: $fb
	ld [hl], a                                       ; $4fde: $77
	add a                                            ; $4fdf: $87
	call c, $9aff                                    ; $4fe0: $dc $ff $9a
	cp $ba                                           ; $4fe3: $fe $ba
	sub e                                            ; $4fe5: $93
	pop de                                           ; $4fe6: $d1
	ret nz                                           ; $4fe7: $c0

	ld a, c                                          ; $4fe8: $79
	dec [hl]                                         ; $4fe9: $35
	ld a, [hl]                                       ; $4fea: $7e
	rst SubAFromHL                                          ; $4feb: $d7
	sbc h                                            ; $4fec: $9c
	cpl                                              ; $4fed: $2f
	ld [hl], a                                       ; $4fee: $77
	db $fd                                           ; $4fef: $fd
	sbc $ff                                          ; $4ff0: $de $ff
	sbc l                                            ; $4ff2: $9d
	ld a, a                                          ; $4ff3: $7f
	ld a, l                                          ; $4ff4: $7d
	ld a, e                                          ; $4ff5: $7b
	ld a, [$d8df]                                    ; $4ff6: $fa $df $d8
	sbc [hl]                                         ; $4ff9: $9e
	sbc b                                            ; $4ffa: $98
	db $dd                                           ; $4ffb: $dd
	adc c                                            ; $4ffc: $89
	sbc [hl]                                         ; $4ffd: $9e
	add hl, bc                                       ; $4ffe: $09
	sbc $e7                                          ; $4fff: $de $e7
	call c, $dff6                                    ; $5001: $dc $f6 $df
	jp $c29d                                         ; $5004: $c3 $9d $c2


	add $de                                          ; $5007: $c6 $de
	ld b, [hl]                                       ; $5009: $46
	sbc e                                            ; $500a: $9b
	ld c, [hl]                                       ; $500b: $4e
	inc a                                            ; $500c: $3c
	inc a                                            ; $500d: $3c
	dec a                                            ; $500e: $3d
	db $dd                                           ; $500f: $dd
	add hl, sp                                       ; $5010: $39
	adc e                                            ; $5011: $8b
	ld sp, $8686                                     ; $5012: $31 $86 $86
	add h                                            ; $5015: $84
	call nz, Call_051_4844                           ; $5016: $c4 $44 $48
	ld c, b                                          ; $5019: $48
	ld c, c                                          ; $501a: $49
	ld bc, $0301                                     ; $501b: $01 $01 $03
	inc bc                                           ; $501e: $03
	add e                                            ; $501f: $83
	add a                                            ; $5020: $87
	add a                                            ; $5021: $87
	add [hl]                                         ; $5022: $86
	ld c, a                                          ; $5023: $4f
	adc $cf                                          ; $5024: $ce $cf
	ld [hl], a                                       ; $5026: $77
	cp $9b                                           ; $5027: $fe $9b
	adc [hl]                                         ; $5029: $8e
	add b                                            ; $502a: $80
	ld bc, $7300                                     ; $502b: $01 $00 $73
	cp $87                                           ; $502e: $fe $87
	inc b                                            ; $5030: $04

jr_051_5031:
	add l                                            ; $5031: $85
	dec b                                            ; $5032: $05
	add l                                            ; $5033: $85
	dec b                                            ; $5034: $05
	inc d                                            ; $5035: $14
	ld c, $12                                        ; $5036: $0e $12
	rst $38                                          ; $5038: $ff
	ld a, [hl]                                       ; $5039: $7e
	cp $7e                                           ; $503a: $fe $7e
	cp $ee                                           ; $503c: $fe $ee
	db $f4                                           ; $503e: $f4
	db $ec                                           ; $503f: $ec
	ld [hl], b                                       ; $5040: $70
	jr nc, @+$72                                     ; $5041: $30 $70

	ld h, b                                          ; $5043: $60
	ld [hl], d                                       ; $5044: $72
	ld d, d                                          ; $5045: $52
	ld d, d                                          ; $5046: $52
	ld [de], a                                       ; $5047: $12
	db $dd                                           ; $5048: $dd
	rst $38                                          ; $5049: $ff
	db $dd                                           ; $504a: $dd
	db $ed                                           ; $504b: $ed
	sub [hl]                                         ; $504c: $96
	db $ec                                           ; $504d: $ec
	ld c, [hl]                                       ; $504e: $4e
	xor $4e                                          ; $504f: $ee $4e
	cp $5e                                           ; $5051: $fe $5e
	cp [hl]                                          ; $5053: $be
	ld e, [hl]                                       ; $5054: $5e
	di                                               ; $5055: $f3
	sbc $f1                                          ; $5056: $de $f1
	db $dd                                           ; $5058: $dd
	pop hl                                           ; $5059: $e1
	sbc l                                            ; $505a: $9d
	ld e, l                                          ; $505b: $5d
	ld a, $7b                                        ; $505c: $3e $7b
	cp $9c                                           ; $505e: $fe $9c
	ld l, $55                                        ; $5060: $2e $55
	ld a, [hl+]                                      ; $5062: $2a
	reti                                             ; $5063: $d9


	rst $38                                          ; $5064: $ff
	halt                                             ; $5065: $76
	call nz, $c04a                                   ; $5066: $c4 $4a $c0
	rst SubAFromDE                                          ; $5069: $df
	rst $38                                          ; $506a: $ff
	sbc [hl]                                         ; $506b: $9e
	ret nz                                           ; $506c: $c0

	ld a, e                                          ; $506d: $7b
	and [hl]                                         ; $506e: $a6
	db $fd                                           ; $506f: $fd
	ld a, h                                          ; $5070: $7c
	db $db                                           ; $5071: $db
	ld a, e                                          ; $5072: $7b
	ld b, [hl]                                       ; $5073: $46
	sbc l                                            ; $5074: $9d
	db $fc                                           ; $5075: $fc
	pop hl                                           ; $5076: $e1
	ld a, d                                          ; $5077: $7a
	call $fe93                                       ; $5078: $cd $93 $fe
	nop                                              ; $507b: $00
	nop                                              ; $507c: $00
	inc bc                                           ; $507d: $03
	ld e, $f8                                        ; $507e: $1e $f8
	ldh [$80], a                                     ; $5080: $e0 $80
	ld bc, $3fff                                     ; $5082: $01 $ff $3f
	cp $79                                           ; $5085: $fe $79
	sub c                                            ; $5087: $91
	add b                                            ; $5088: $80
	add e                                            ; $5089: $83
	rrca                                             ; $508a: $0f
	nop                                              ; $508b: $00
	ret nz                                           ; $508c: $c0

	ld bc, $0701                                     ; $508d: $01 $01 $07
	rrca                                             ; $5090: $0f
	ld a, a                                          ; $5091: $7f
	rst $38                                          ; $5092: $ff
	sbc [hl]                                         ; $5093: $9e
	cp l                                             ; $5094: $bd
	jp c, $e8f4                                      ; $5095: $da $f4 $e8

	push de                                          ; $5098: $d5
	xor e                                            ; $5099: $ab
	push af                                          ; $509a: $f5
	pop af                                           ; $509b: $f1
	db $e3                                           ; $509c: $e3
	rst SubAFromBC                                          ; $509d: $e7
	rst GetHLinHL                                          ; $509e: $cf
	sbc a                                            ; $509f: $9f
	cp e                                             ; $50a0: $bb
	rst FarCall                                          ; $50a1: $f7
	rst AddAOntoHL                                          ; $50a2: $ef
	ld a, d                                          ; $50a3: $7a
	cp b                                             ; $50a4: $b8
	or b                                             ; $50a5: $b0
	ldh [$c0], a                                     ; $50a6: $e0 $c0
	sbc d                                            ; $50a8: $9a
	add d                                            ; $50a9: $82
	rla                                              ; $50aa: $17
	add hl, sp                                       ; $50ab: $39
	call z, Call_051_7ad0                            ; $50ac: $cc $d0 $7a
	jr nz, jr_051_5031                               ; $50af: $20 $80

	ld bc, $1e0f                                     ; $50b1: $01 $0f $1e
	ldh a, [$b0]                                     ; $50b4: $f0 $b0
	ld b, b                                          ; $50b6: $40
	ld h, b                                          ; $50b7: $60
	ret nz                                           ; $50b8: $c0

	db $10                                           ; $50b9: $10
	ldh a, [$f0]                                     ; $50ba: $f0 $f0
	and b                                            ; $50bc: $a0
	ldh [$60], a                                     ; $50bd: $e0 $60
	ld b, b                                          ; $50bf: $40
	ld b, b                                          ; $50c0: $40
	ldh [$e0], a                                     ; $50c1: $e0 $e0
	nop                                              ; $50c3: $00
	ld e, $1b                                        ; $50c4: $1e $1b
	ld e, $1f                                        ; $50c6: $1e $1f
	ccf                                              ; $50c8: $3f
	ccf                                              ; $50c9: $3f
	dec l                                            ; $50ca: $2d
	dec de                                           ; $50cb: $1b
	rla                                              ; $50cc: $17
	dec e                                            ; $50cd: $1d
	add hl, de                                       ; $50ce: $19
	db $10                                           ; $50cf: $10

Call_051_50d0:
	add b                                            ; $50d0: $80
	stop                                             ; $50d1: $10 $00
	ld e, $07                                        ; $50d3: $1e $07
	dec de                                           ; $50d5: $1b
	ld d, l                                          ; $50d6: $55
	jp nc, Jump_051_5f95                             ; $50d7: $d2 $95 $5f

	jp c, $3fdf                                      ; $50da: $da $df $3f

	cp h                                             ; $50dd: $bc
	cp [hl]                                          ; $50de: $be
	cp a                                             ; $50df: $bf
	ei                                               ; $50e0: $fb
	ld sp, hl                                        ; $50e1: $f9
	ld a, l                                          ; $50e2: $7d
	ld [hl], h                                       ; $50e3: $74
	db $e4                                           ; $50e4: $e4
	adc a                                            ; $50e5: $8f
	ld b, a                                          ; $50e6: $47
	ld b, a                                          ; $50e7: $47
	ld h, a                                          ; $50e8: $67
	ld d, a                                          ; $50e9: $57
	sub a                                            ; $50ea: $97
	sub a                                            ; $50eb: $97
	sbc a                                            ; $50ec: $9f
	ld sp, hl                                        ; $50ed: $f9
	db $fd                                           ; $50ee: $fd
	db $fd                                           ; $50ef: $fd
	ld a, h                                          ; $50f0: $7c
	ld c, d                                          ; $50f1: $4a
	rst SubAFromDE                                          ; $50f2: $df
	db $fc                                           ; $50f3: $fc
	ld a, d                                          ; $50f4: $7a
	sbc e                                            ; $50f5: $9b
	db $db                                           ; $50f6: $db
	rst $38                                          ; $50f7: $ff
	sbc d                                            ; $50f8: $9a
	rlca                                             ; $50f9: $07
	adc $cc                                          ; $50fa: $ce $cc
	sbc c                                            ; $50fc: $99
	pop bc                                           ; $50fd: $c1
	ld e, b                                          ; $50fe: $58
	ldh a, [$9b]                                     ; $50ff: $f0 $9b
	sbc c                                            ; $5101: $99
	reti                                             ; $5102: $d9


	res 0, e                                         ; $5103: $cb $83
	halt                                             ; $5105: $76
	ccf                                              ; $5106: $3f
	rst SubAFromDE                                          ; $5107: $df
	add hl, bc                                       ; $5108: $09
	rst SubAFromDE                                          ; $5109: $df
	ld [$18dd], sp                                   ; $510a: $08 $dd $18
	db $dd                                           ; $510d: $dd
	or $dd                                           ; $510e: $f6 $dd
	and $97                                          ; $5110: $e6 $97
	ld c, d                                          ; $5112: $4a
	ld a, [bc]                                       ; $5113: $0a
	ld c, d                                          ; $5114: $4a
	ld [$9858], sp                                   ; $5115: $08 $58 $98
	ld e, b                                          ; $5118: $58
	sbc b                                            ; $5119: $98
	db $dd                                           ; $511a: $dd
	ld sp, $21dd                                     ; $511b: $31 $dd $21
	db $dd                                           ; $511e: $dd
	ld c, l                                          ; $511f: $4d
	sbc e                                            ; $5120: $9b
	ld c, a                                          ; $5121: $4f
	adc a                                            ; $5122: $8f
	add a                                            ; $5123: $87
	add a                                            ; $5124: $87
	db $dd                                           ; $5125: $dd
	add d                                            ; $5126: $82
	ld a, h                                          ; $5127: $7c
	rst AddAOntoHL                                          ; $5128: $ef
	rst $38                                          ; $5129: $ff
	sub a                                            ; $512a: $97
	adc a                                            ; $512b: $8f
	adc [hl]                                         ; $512c: $8e
	add a                                            ; $512d: $87
	add [hl]                                         ; $512e: $86
	rlca                                             ; $512f: $07
	ld b, $03                                        ; $5130: $06 $03
	ld [bc], a                                       ; $5132: $02
	ld l, [hl]                                       ; $5133: $6e
	jp nz, $fe7f                                     ; $5134: $c2 $7f $fe

	sbc l                                            ; $5137: $9d
	ld a, [hl+]                                      ; $5138: $2a
	ld d, $7b                                        ; $5139: $16 $7b
	cp $9a                                           ; $513b: $fe $9a
	ld a, [de]                                       ; $513d: $1a
	ld a, [hl-]                                      ; $513e: $3a
	ld [de], a                                       ; $513f: $12

jr_051_5140:
	call nc, Call_051_7be8                           ; $5140: $d4 $e8 $7b
	cp $94                                           ; $5143: $fe $94
	db $e4                                           ; $5145: $e4
	call nz, $b3e4                                   ; $5146: $c4 $e4 $b3
	inc hl                                           ; $5149: $23
	inc hl                                           ; $514a: $23
	and e                                            ; $514b: $a3
	jp $c7c3                                         ; $514c: $c3 $c3 $c7


	ld b, a                                          ; $514f: $47
	db $dd                                           ; $5150: $dd
	ld c, h                                          ; $5151: $4c
	rst SubAFromDE                                          ; $5152: $df
	inc c                                            ; $5153: $0c
	rst SubAFromDE                                          ; $5154: $df
	ld [$c67e], sp                                   ; $5155: $08 $7e $c6
	ld a, a                                          ; $5158: $7f
	cp $9b                                           ; $5159: $fe $9b
	sbc [hl]                                         ; $515b: $9e
	ld e, [hl]                                       ; $515c: $5e
	ld e, $7e                                        ; $515d: $1e $7e
	jp c, $9be1                                      ; $515f: $da $e1 $9b

	pop bc                                           ; $5162: $c1
	ld d, l                                          ; $5163: $55
	ld a, [bc]                                       ; $5164: $0a
	inc b                                            ; $5165: $04
	ld [hl], a                                       ; $5166: $77
	cp $66                                           ; $5167: $fe $66
	ret nz                                           ; $5169: $c0

	sbc h                                            ; $516a: $9c
	rst SubAFromDE                                          ; $516b: $df
	inc c                                            ; $516c: $0c
	inc d                                            ; $516d: $14
	ld [hl], e                                       ; $516e: $73
	cp $9e                                           ; $516f: $fe $9e
	inc e                                            ; $5171: $1c
	ld h, c                                          ; $5172: $61
	ld [hl], b                                       ; $5173: $70
	sbc c                                            ; $5174: $99
	rra                                              ; $5175: $1f
	inc bc                                           ; $5176: $03
	nop                                              ; $5177: $00
	ld a, $ff                                        ; $5178: $3e $ff
	nop                                              ; $517a: $00
	ld h, a                                          ; $517b: $67
	ldh a, [hDisp1_WX]                                     ; $517c: $f0 $96
	db $e3                                           ; $517e: $e3
	nop                                              ; $517f: $00
	nop                                              ; $5180: $00
	pop bc                                           ; $5181: $c1
	rst SubAFromBC                                          ; $5182: $e7
	ld a, a                                          ; $5183: $7f
	rst $38                                          ; $5184: $ff
	ld a, a                                          ; $5185: $7f
	ld c, a                                          ; $5186: $4f
	db $dd                                           ; $5187: $dd
	rst $38                                          ; $5188: $ff
	ld a, c                                          ; $5189: $79
	and c                                            ; $518a: $a1
	sbc [hl]                                         ; $518b: $9e
	db $fc                                           ; $518c: $fc
	ld l, l                                          ; $518d: $6d
	add e                                            ; $518e: $83
	sbc d                                            ; $518f: $9a
	cp a                                             ; $5190: $bf
	db $fd                                           ; $5191: $fd
	db $fc                                           ; $5192: $fc
	ldh a, [$c0]                                     ; $5193: $f0 $c0
	db $fc                                           ; $5195: $fc
	sub a                                            ; $5196: $97
	push hl                                          ; $5197: $e5
	jp hl                                            ; $5198: $e9


	db $eb                                           ; $5199: $eb
	di                                               ; $519a: $f3
	push af                                          ; $519b: $f5
	ld sp, hl                                        ; $519c: $f9
	ld hl, sp+$78                                    ; $519d: $f8 $78
	sbc $3f                                          ; $519f: $de $3f
	rst SubAFromDE                                          ; $51a1: $df
	rra                                              ; $51a2: $1f
	sbc d                                            ; $51a3: $9a
	dec e                                            ; $51a4: $1d
	dec bc                                           ; $51a5: $0b
	ld a, [bc]                                       ; $51a6: $0a
	ld l, a                                          ; $51a7: $6f
	ld b, a                                          ; $51a8: $47
	ld a, d                                          ; $51a9: $7a
	jr jr_051_5140                                   ; $51aa: $18 $94

	nop                                              ; $51ac: $00
	add a                                            ; $51ad: $87
	adc e                                            ; $51ae: $8b
	jr nc, jr_051_5211                               ; $51af: $30 $60

	ld b, b                                          ; $51b1: $40
	nop                                              ; $51b2: $00
	nop                                              ; $51b3: $00
	add a                                            ; $51b4: $87
	adc b                                            ; $51b5: $88
	add a                                            ; $51b6: $87
	call c, $9cf8                                    ; $51b7: $dc $f8 $9c
	ld [hl], b                                       ; $51ba: $70
	ldh a, [$a0]                                     ; $51bb: $f0 $a0
	db $fc                                           ; $51bd: $fc
	ld a, a                                          ; $51be: $7f
	ccf                                              ; $51bf: $3f
	sbc h                                            ; $51c0: $9c
	ret nz                                           ; $51c1: $c0

	ld a, $3f                                        ; $51c2: $3e $3f
	sbc $7f                                          ; $51c4: $de $7f
	sbc h                                            ; $51c6: $9c
	ld a, e                                          ; $51c7: $7b
	ccf                                              ; $51c8: $3f
	scf                                              ; $51c9: $37
	ld [hl], d                                       ; $51ca: $72
	ld e, a                                          ; $51cb: $5f
	adc d                                            ; $51cc: $8a
	rlca                                             ; $51cd: $07
	nop                                              ; $51ce: $00
	rrca                                             ; $51cf: $0f
	cp $af                                           ; $51d0: $fe $af
	db $dd                                           ; $51d2: $dd
	and $fe                                          ; $51d3: $e6 $fe
	ld a, [hl]                                       ; $51d5: $7e
	cp a                                             ; $51d6: $bf

jr_051_51d7:
	rst $38                                          ; $51d7: $ff
	push hl                                          ; $51d8: $e5
	ld [hl], l                                       ; $51d9: $75
	scf                                              ; $51da: $37
	dec de                                           ; $51db: $1b
	inc bc                                           ; $51dc: $03
	add e                                            ; $51dd: $83
	ld b, e                                          ; $51de: $43
	add d                                            ; $51df: $82
	cp a                                             ; $51e0: $bf
	ccf                                              ; $51e1: $3f
	ld a, e                                          ; $51e2: $7b
	rst SubAFromDE                                          ; $51e3: $df
	ld a, [hl]                                       ; $51e4: $7e
	ld e, e                                          ; $51e5: $5b
	sbc [hl]                                         ; $51e6: $9e
	dec sp                                           ; $51e7: $3b
	sbc $e0                                          ; $51e8: $de $e0
	sbc $c0                                          ; $51ea: $de $c0
	sbc l                                            ; $51ec: $9d
	ld h, b                                          ; $51ed: $60
	and b                                            ; $51ee: $a0
	jp c, $9eff                                      ; $51ef: $da $ff $9e

	cp e                                             ; $51f2: $bb
	ld sp, hl                                        ; $51f3: $f9
	ld l, e                                          ; $51f4: $6b
	pop af                                           ; $51f5: $f1

jr_051_51f6:
	ld a, b                                          ; $51f6: $78
	ret z                                            ; $51f7: $c8

	ei                                               ; $51f8: $fb
	rst SubAFromDE                                          ; $51f9: $df
	jr jr_051_51d7                                   ; $51fa: $18 $db

	sbc h                                            ; $51fc: $9c
	rst SubAFromDE                                          ; $51fd: $df
	and $db                                          ; $51fe: $e6 $db
	ld h, d                                          ; $5200: $62
	sbc e                                            ; $5201: $9b
	ld a, c                                          ; $5202: $79
	cp c                                             ; $5203: $b9
	ld a, b                                          ; $5204: $78
	cp b                                             ; $5205: $b8
	ld [hl], a                                       ; $5206: $77
	cp $f9                                           ; $5207: $fe $f9
	ld a, [hl]                                       ; $5209: $7e
	call nc, $fe77                                   ; $520a: $d4 $77 $fe
	rst SubAFromDE                                          ; $520d: $df
	ld c, $f9                                        ; $520e: $0e $f9
	ld a, [hl]                                       ; $5210: $7e

jr_051_5211:
	add $df                                          ; $5211: $c6 $df
	ld [bc], a                                       ; $5213: $02
	ld a, b                                          ; $5214: $78
	add hl, sp                                       ; $5215: $39
	ld a, d                                          ; $5216: $7a
	add $7b                                          ; $5217: $c6 $7b
	db $fc                                           ; $5219: $fc
	cp $9d                                           ; $521a: $fe $9d
	ld [hl], d                                       ; $521c: $72
	halt                                             ; $521d: $76
	db $db                                           ; $521e: $db
	db $e4                                           ; $521f: $e4
	sbc [hl]                                         ; $5220: $9e
	add h                                            ; $5221: $84
	halt                                             ; $5222: $76
	and e                                            ; $5223: $a3
	cp $9e                                           ; $5224: $fe $9e
	ld b, l                                          ; $5226: $45
	sbc $05                                          ; $5227: $de $05
	db $dd                                           ; $5229: $dd
	inc c                                            ; $522a: $0c
	db $dd                                           ; $522b: $dd
	ld [$92fd], sp                                   ; $522c: $08 $fd $92
	ld e, $be                                        ; $522f: $1e $be
	ld e, $be                                        ; $5231: $1e $be
	cp [hl]                                          ; $5233: $be
	cp $7e                                           ; $5234: $fe $7e
	cp h                                             ; $5236: $bc
	pop hl                                           ; $5237: $e1
	ld b, c                                          ; $5238: $41
	pop hl                                           ; $5239: $e1
	ld b, c                                          ; $523a: $41
	ld b, c                                          ; $523b: $41
	ld a, c                                          ; $523c: $79
	dec sp                                           ; $523d: $3b
	sbc l                                            ; $523e: $9d
	ld d, h                                          ; $523f: $54
	jr nz, jr_051_52b9                               ; $5240: $20 $77

	cp $9b                                           ; $5242: $fe $9b
	ld d, b                                          ; $5244: $50
	jr z, jr_051_51f6                                ; $5245: $28 $af

	rst SubAFromDE                                          ; $5247: $df
	ld [hl], e                                       ; $5248: $73
	cp $9d                                           ; $5249: $fe $9d
	rst SubAFromHL                                          ; $524b: $d7
	inc c                                            ; $524c: $0c
	sbc $1c                                          ; $524d: $de $1c
	sbc [hl]                                         ; $524f: $9e
	inc a                                            ; $5250: $3c
	ld a, e                                          ; $5251: $7b
	cp $d9                                           ; $5252: $fe $d9
	rst $38                                          ; $5254: $ff
	sbc h                                            ; $5255: $9c
	jr c, jr_051_52c9                                ; $5256: $38 $71

	ld h, a                                          ; $5258: $67
	ld a, c                                          ; $5259: $79
	ldh [$df], a                                     ; $525a: $e0 $df
	ld a, $9c                                        ; $525c: $3e $9c
	rst JumpTable                                          ; $525e: $c7
	adc [hl]                                         ; $525f: $8e
	sbc b                                            ; $5260: $98
	ld a, e                                          ; $5261: $7b
	ccf                                              ; $5262: $3f
	rst SubAFromDE                                          ; $5263: $df
	pop bc                                           ; $5264: $c1
	sub [hl]                                         ; $5265: $96
	ld l, a                                          ; $5266: $6f
	rst SubAFromDE                                          ; $5267: $df
	cp l                                             ; $5268: $bd
	ld sp, hl                                        ; $5269: $f9
	ld a, b                                          ; $526a: $78
	ld e, b                                          ; $526b: $58
	sbc b                                            ; $526c: $98
	sbc b                                            ; $526d: $98
	sbc [hl]                                         ; $526e: $9e
	ld [hl], a                                       ; $526f: $77
	add hl, hl                                       ; $5270: $29
	sbc $ff                                          ; $5271: $de $ff
	sub a                                            ; $5273: $97
	or a                                             ; $5274: $b7
	rst $38                                          ; $5275: $ff
	xor [hl]                                         ; $5276: $ae
	rst $38                                          ; $5277: $ff
	ld [$eaf5], a                                    ; $5278: $ea $f5 $ea
	push af                                          ; $527b: $f5
	ld [hl], d                                       ; $527c: $72
	pop af                                           ; $527d: $f1
	sub b                                            ; $527e: $90
	add b                                            ; $527f: $80
	ret nz                                           ; $5280: $c0

	ldh a, [$f8]                                     ; $5281: $f0 $f8
	db $dd                                           ; $5283: $dd
	db $f4                                           ; $5284: $f4
	cp $ab                                           ; $5285: $fe $ab
	ld d, l                                          ; $5287: $55
	xor e                                            ; $5288: $ab
	ld d, l                                          ; $5289: $55
	add hl, bc                                       ; $528a: $09
	dec b                                            ; $528b: $05
	dec b                                            ; $528c: $05
	ld [bc], a                                       ; $528d: $02
	ld [hl], a                                       ; $528e: $77
	ld l, l                                          ; $528f: $6d
	sub d                                            ; $5290: $92
	add a                                            ; $5291: $87
	call z, Call_051_47c3                            ; $5292: $cc $c3 $47
	ldh [$e0], a                                     ; $5295: $e0 $e0
	and b                                            ; $5297: $a0
	or b                                             ; $5298: $b0
	rst GetHLinHL                                          ; $5299: $cf
	ret c                                            ; $529a: $d8

	ret nz                                           ; $529b: $c0

	ldh [$60], a                                     ; $529c: $e0 $60
	halt                                             ; $529e: $76
	ei                                               ; $529f: $fb
	sub h                                            ; $52a0: $94
	ld bc, $83c3                                     ; $52a1: $01 $c3 $83
	ld b, $03                                        ; $52a4: $06 $03
	nop                                              ; $52a6: $00
	rrca                                             ; $52a7: $0f
	ldh [rP1], a                                     ; $52a8: $e0 $00
	nop                                              ; $52aa: $00
	ld [bc], a                                       ; $52ab: $02
	ld a, d                                          ; $52ac: $7a
	ld a, [bc]                                       ; $52ad: $0a
	ld a, [hl]                                       ; $52ae: $7e
	ld h, c                                          ; $52af: $61
	ld a, l                                          ; $52b0: $7d
	cp $9e                                           ; $52b1: $fe $9e
	rst JumpTable                                          ; $52b3: $c7
	ld a, e                                          ; $52b4: $7b
	ld d, l                                          ; $52b5: $55
	sbc l                                            ; $52b6: $9d
	ldh [rIF], a                                     ; $52b7: $e0 $0f

jr_051_52b9:
	ld a, [$df83]                                    ; $52b9: $fa $83 $df
	ld l, a                                          ; $52bc: $6f
	sbc d                                            ; $52bd: $9a
	dec a                                            ; $52be: $3d
	ld a, a                                          ; $52bf: $7f
	ld a, a                                          ; $52c0: $7f
	rst FarCall                                          ; $52c1: $f7
	cp $e2                                           ; $52c2: $fe $e2
	ld [hl-], a                                      ; $52c4: $32
	rlca                                             ; $52c5: $07
	ld b, $04                                        ; $52c6: $06 $04
	dec b                                            ; $52c8: $05

jr_051_52c9:
	rrca                                             ; $52c9: $0f
	ld c, $ae                                        ; $52ca: $0e $ae
	cp a                                             ; $52cc: $bf
	dec [hl]                                         ; $52cd: $35
	ld a, a                                          ; $52ce: $7f
	push de                                          ; $52cf: $d5
	xor d                                            ; $52d0: $aa
	ld d, l                                          ; $52d1: $55
	xor d                                            ; $52d2: $aa
	and b                                            ; $52d3: $a0
	and b                                            ; $52d4: $a0
	ld h, b                                          ; $52d5: $60
	ld b, b                                          ; $52d6: $40
	ld [hl], a                                       ; $52d7: $77
	dec l                                            ; $52d8: $2d
	sbc d                                            ; $52d9: $9a
	xor $ff                                          ; $52da: $ee $ff
	or [hl]                                          ; $52dc: $b6
	rst $38                                          ; $52dd: $ff
	ld d, l                                          ; $52de: $55
	ld a, e                                          ; $52df: $7b
	ldh a, [$f9]                                     ; $52e0: $f0 $f9
	sbc h                                            ; $52e2: $9c
	rst SubAFromHL                                          ; $52e3: $d7
	db $fd                                           ; $52e4: $fd
	rst AddAOntoHL                                          ; $52e5: $ef
	ld d, e                                          ; $52e6: $53
	ldh a, [hDisp1_WX]                                     ; $52e7: $f0 $96
	sub h                                            ; $52e9: $94
	jp c, $d8d4                                      ; $52ea: $da $d4 $d8

	call nc, Call_051_50d0                           ; $52ed: $d4 $d0 $50
	ld d, b                                          ; $52f0: $50
	ld h, d                                          ; $52f1: $62
	call c, $df20                                    ; $52f2: $dc $20 $df
	and b                                            ; $52f5: $a0
	ld a, [hl]                                       ; $52f6: $7e
	add $9d                                          ; $52f7: $c6 $9d
	ld [hl], b                                       ; $52f9: $70
	or b                                             ; $52fa: $b0
	ld [hl], a                                       ; $52fb: $77
	cp $f9                                           ; $52fc: $fe $f9
	sbc b                                            ; $52fe: $98
	ld c, $1e                                        ; $52ff: $0e $1e
	inc e                                            ; $5301: $1c
	ld a, [bc]                                       ; $5302: $0a
	inc d                                            ; $5303: $14
	ld a, [bc]                                       ; $5304: $0a
	inc d                                            ; $5305: $14
	ld [hl], d                                       ; $5306: $72
	db $f4                                           ; $5307: $f4
	ld a, [$81df]                                    ; $5308: $fa $df $81
	sbc h                                            ; $530b: $9c
	add e                                            ; $530c: $83
	and e                                            ; $530d: $a3
	and e                                            ; $530e: $a3
	ld sp, hl                                        ; $530f: $f9
	rst SubAFromDE                                          ; $5310: $df
	db $e4                                           ; $5311: $e4
	sbc c                                            ; $5312: $99
	pop hl                                           ; $5313: $e1
	ldh [c], a                                       ; $5314: $e2
	pop hl                                           ; $5315: $e1
	jp nz, $c2c5                                     ; $5316: $c2 $c5 $c2

	ld sp, hl                                        ; $5319: $f9
	sbc $08                                          ; $531a: $de $08
	db $dd                                           ; $531c: $dd
	inc c                                            ; $531d: $0c
	sbc [hl]                                         ; $531e: $9e
	add h                                            ; $531f: $84
	ld h, a                                          ; $5320: $67
	pop af                                           ; $5321: $f1
	sub a                                            ; $5322: $97
	ld a, h                                          ; $5323: $7c
	cp h                                             ; $5324: $bc
	ld a, h                                          ; $5325: $7c
	cp b                                             ; $5326: $b8
	ld [hl], h                                       ; $5327: $74
	xor b                                            ; $5328: $a8
	ld [hl], h                                       ; $5329: $74
	add sp, -$22                                     ; $532a: $e8 $de
	inc bc                                           ; $532c: $03
	adc d                                            ; $532d: $8a
	rlca                                             ; $532e: $07
	dec bc                                           ; $532f: $0b
	rla                                              ; $5330: $17
	dec bc                                           ; $5331: $0b
	rla                                              ; $5332: $17
	ld d, b                                          ; $5333: $50
	jr z, jr_051_53a8                                ; $5334: $28 $72

	jr z, jr_051_53a8                                ; $5336: $28 $70

	ld [hl], h                                       ; $5338: $74
	ld [hl], b                                       ; $5339: $70
	ld a, b                                          ; $533a: $78
	xor a                                            ; $533b: $af
	rst SubAFromHL                                          ; $533c: $d7
	adc l                                            ; $533d: $8d
	rst SubAFromHL                                          ; $533e: $d7
	adc a                                            ; $533f: $8f
	adc e                                            ; $5340: $8b
	adc a                                            ; $5341: $8f
	add a                                            ; $5342: $87
	ld a, d                                          ; $5343: $7a
	call nz, $3cdc                                   ; $5344: $c4 $dc $3c
	reti                                             ; $5347: $d9


	rst $38                                          ; $5348: $ff
	adc e                                            ; $5349: $8b
	ld e, $9e                                        ; $534a: $1e $9e
	adc a                                            ; $534c: $8f
	add a                                            ; $534d: $87
	jp $c1c1                                         ; $534e: $c3 $c1 $c1


	ldh [$e1], a                                     ; $5351: $e0 $e1
	ld h, c                                          ; $5353: $61
	ld [hl], b                                       ; $5354: $70
	ld a, b                                          ; $5355: $78
	inc a                                            ; $5356: $3c
	ld a, $3e                                        ; $5357: $3e $3e
	rra                                              ; $5359: $1f
	sbc b                                            ; $535a: $98
	ld a, b                                          ; $535b: $78
	ld hl, sp-$06                                    ; $535c: $f8 $fa
	sbc $ee                                          ; $535e: $de $ee
	ld a, a                                          ; $5360: $7f
	ld c, e                                          ; $5361: $4b
	sbc h                                            ; $5362: $9c
	sbc a                                            ; $5363: $9f
	rra                                              ; $5364: $1f
	dec e                                            ; $5365: $1d
	sbc $19                                          ; $5366: $de $19
	sbc c                                            ; $5368: $99
	jr @+$6c                                         ; $5369: $18 $6a

	ld c, l                                          ; $536b: $4d
	ld b, [hl]                                       ; $536c: $46
	ld b, a                                          ; $536d: $47
	ld b, e                                          ; $536e: $43
	ld a, d                                          ; $536f: $7a
	dec sp                                           ; $5370: $3b
	ld a, l                                          ; $5371: $7d
	halt                                             ; $5372: $76
	ld a, b                                          ; $5373: $78
	dec h                                            ; $5374: $25
	sbc $ff                                          ; $5375: $de $ff

jr_051_5377:
	sub a                                            ; $5377: $97
	jr z, jr_051_53bf                                ; $5378: $28 $45

	xor d                                            ; $537a: $aa
	pop de                                           ; $537b: $d1
	ld a, [$1e1f]                                    ; $537c: $fa $1f $1e
	inc c                                            ; $537f: $0c
	cp $7e                                           ; $5380: $fe $7e
	or e                                             ; $5382: $b3
	adc a                                            ; $5383: $8f
	ei                                               ; $5384: $fb
	rst $38                                          ; $5385: $ff
	rst $38                                          ; $5386: $ff
	sub b                                            ; $5387: $90
	ld d, b                                          ; $5388: $50
	ld e, b                                          ; $5389: $58
	ld a, b                                          ; $538a: $78
	db $fc                                           ; $538b: $fc
	cp $fe                                           ; $538c: $fe $fe
	rst $38                                          ; $538e: $ff
	ldh a, [rSVBK]                                   ; $538f: $f0 $70
	ld [hl], b                                       ; $5391: $70
	jr c, jr_051_5410                                ; $5392: $38 $7c

	ld a, e                                          ; $5394: $7b
	db $dd                                           ; $5395: $dd
	add b                                            ; $5396: $80
	ld e, b                                          ; $5397: $58
	jr nz, jr_051_53ff                               ; $5398: $20 $65

	ld e, $18                                        ; $539a: $1e $18
	inc c                                            ; $539c: $0c
	ld bc, $3f00                                     ; $539d: $01 $00 $3f
	ld [hl], b                                       ; $53a0: $70
	jr nc, jr_051_53e2                               ; $53a1: $30 $3f

	db $10                                           ; $53a3: $10
	ld [$8006], sp                                   ; $53a4: $08 $06 $80
	db $f4                                           ; $53a7: $f4

jr_051_53a8:
	dec e                                            ; $53a8: $1d
	add hl, bc                                       ; $53a9: $09
	ld a, e                                          ; $53aa: $7b
	inc de                                           ; $53ab: $13
	ld h, a                                          ; $53ac: $67
	ld b, $0d                                        ; $53ad: $06 $0d
	ld hl, sp+$0c                                    ; $53af: $f8 $0c
	ld c, h                                          ; $53b1: $4c
	ld hl, sp+$10                                    ; $53b2: $f8 $10
	jr nz, jr_051_5377                               ; $53b4: $20 $c1

	adc d                                            ; $53b6: $8a
	inc bc                                           ; $53b7: $03
	db $eb                                           ; $53b8: $eb
	ldh a, [c]                                       ; $53b9: $f2
	push de                                          ; $53ba: $d5
	and h                                            ; $53bb: $a4
	db $ed                                           ; $53bc: $ed
	ld l, d                                          ; $53bd: $6a
	db $fd                                           ; $53be: $fd

jr_051_53bf:
	ld hl, sp+$1e                                    ; $53bf: $f8 $1e
	ld e, $3c                                        ; $53c1: $1e $3c
	ld a, h                                          ; $53c3: $7c
	ld a, b                                          ; $53c4: $78
	ld hl, sp-$50                                    ; $53c5: $f8 $b0
	jr c, jr_051_541e                                ; $53c7: $38 $55

	ld [hl+], a                                      ; $53c9: $22
	ld d, l                                          ; $53ca: $55
	adc b                                            ; $53cb: $88
	ld [hl], a                                       ; $53cc: $77
	db $fc                                           ; $53cd: $fc
	ld sp, hl                                        ; $53ce: $f9
	rlca                                             ; $53cf: $07
	ldh a, [$dd]                                     ; $53d0: $f0 $dd
	db $10                                           ; $53d2: $10
	sbc e                                            ; $53d3: $9b
	ld de, $9112                                     ; $53d4: $11 $12 $91
	add d                                            ; $53d7: $82
	reti                                             ; $53d8: $d9


	ldh [$97], a                                     ; $53d9: $e0 $97
	ld [hl], b                                       ; $53db: $70
	and d                                            ; $53dc: $a2
	ld h, d                                          ; $53dd: $62
	and d                                            ; $53de: $a2
	ld b, [hl]                                       ; $53df: $46
	and [hl]                                         ; $53e0: $a6
	ld b, [hl]                                       ; $53e1: $46

jr_051_53e2:
	and [hl]                                         ; $53e2: $a6
	ld sp, hl                                        ; $53e3: $f9
	ld a, [hl]                                       ; $53e4: $7e
	add $7f                                          ; $53e5: $c6 $7f
	cp $9e                                           ; $53e7: $fe $9e
	inc e                                            ; $53e9: $1c
	ld a, e                                          ; $53ea: $7b
	cp $f9                                           ; $53eb: $fe $f9
	ld a, e                                          ; $53ed: $7b
	pop hl                                           ; $53ee: $e1
	ld [hl], e                                       ; $53ef: $73
	cp $9c                                           ; $53f0: $fe $9c
	ld bc, $4181                                     ; $53f2: $01 $81 $41
	ld [hl], e                                       ; $53f5: $73
	cp $9d                                           ; $53f6: $fe $9d
	ld b, l                                          ; $53f8: $45
	ld b, d                                          ; $53f9: $42
	ld a, e                                          ; $53fa: $7b
	cp $9c                                           ; $53fb: $fe $9c
	ld b, e                                          ; $53fd: $43
	ld b, a                                          ; $53fe: $47

jr_051_53ff:
	ld b, e                                          ; $53ff: $43
	reti                                             ; $5400: $d9


	add b                                            ; $5401: $80
	sub a                                            ; $5402: $97
	inc b                                            ; $5403: $04
	add h                                            ; $5404: $84
	nop                                              ; $5405: $00
	add b                                            ; $5406: $80
	ld [$8088], sp                                   ; $5407: $08 $88 $80
	add b                                            ; $540a: $80
	halt                                             ; $540b: $76
	cp c                                             ; $540c: $b9
	db $dd                                           ; $540d: $dd
	inc b                                            ; $540e: $04
	sub l                                            ; $540f: $95

jr_051_5410:
	ld d, h                                          ; $5410: $54
	ld [$ea56], a                                    ; $5411: $ea $56 $ea
	ld d, [hl]                                       ; $5414: $56
	adc e                                            ; $5415: $8b
	ld b, e                                          ; $5416: $43
	add e                                            ; $5417: $83
	dec hl                                           ; $5418: $2b
	rla                                              ; $5419: $17
	ld a, e                                          ; $541a: $7b
	cp $9a                                           ; $541b: $fe $9a
	ld [hl], a                                       ; $541d: $77

jr_051_541e:
	ccf                                              ; $541e: $3f
	ld a, a                                          ; $541f: $7f
	ld [hl], b                                       ; $5420: $70
	ld a, b                                          ; $5421: $78
	db $dd                                           ; $5422: $dd
	ld [hl], b                                       ; $5423: $70
	sbc e                                            ; $5424: $9b
	ld [hl], d                                       ; $5425: $72
	ld [hl], h                                       ; $5426: $74
	adc a                                            ; $5427: $8f
	add a                                            ; $5428: $87
	db $db                                           ; $5429: $db
	adc a                                            ; $542a: $8f
	reti                                             ; $542b: $d9


	inc a                                            ; $542c: $3c
	reti                                             ; $542d: $d9


	rst $38                                          ; $542e: $ff
	rst SubAFromDE                                          ; $542f: $df
	ldh a, [$7f]                                     ; $5430: $f0 $7f
	rla                                              ; $5432: $17
	sub b                                            ; $5433: $90
	cp b                                             ; $5434: $b8
	ret c                                            ; $5435: $d8

	inc a                                            ; $5436: $3c
	xor h                                            ; $5437: $ac
	rrca                                             ; $5438: $0f
	rrca                                             ; $5439: $0f
	adc a                                            ; $543a: $8f
	rst GetHLinHL                                          ; $543b: $cf
	rst JumpTable                                          ; $543c: $c7
	ld h, a                                          ; $543d: $67
	inc hl                                           ; $543e: $23
	inc sp                                           ; $543f: $33
	rst $38                                          ; $5440: $ff
	ld [hl], a                                       ; $5441: $77
	ld [hl], a                                       ; $5442: $77
	db $dd                                           ; $5443: $dd
	scf                                              ; $5444: $37
	sbc e                                            ; $5445: $9b
	rra                                              ; $5446: $1f
	ld [$8888], sp                                   ; $5447: $08 $88 $88
	db $dd                                           ; $544a: $dd
	ret z                                            ; $544b: $c8

	sbc l                                            ; $544c: $9d
	ldh [rAUD1ENV], a                                ; $544d: $e0 $12
	sbc $32                                          ; $544f: $de $32
	sbc d                                            ; $5451: $9a
	ld a, [hl-]                                      ; $5452: $3a
	dec sp                                           ; $5453: $3b
	dec sp                                           ; $5454: $3b
	dec a                                            ; $5455: $3d
	rst AddAOntoHL                                          ; $5456: $ef
	sbc $cf                                          ; $5457: $de $cf
	sbc [hl]                                         ; $5459: $9e
	rst JumpTable                                          ; $545a: $c7
	sbc $c6                                          ; $545b: $de $c6
	sbc h                                            ; $545d: $9c
	ld b, l                                          ; $545e: $45
	rst JumpTable                                          ; $545f: $c7
	rst JumpTable                                          ; $5460: $c7
	db $dd                                           ; $5461: $dd
	rst SubAFromBC                                          ; $5462: $e7
	sbc e                                            ; $5463: $9b
	push af                                          ; $5464: $f5
	cp [hl]                                          ; $5465: $be
	inc a                                            ; $5466: $3c
	inc a                                            ; $5467: $3c
	db $dd                                           ; $5468: $dd
	inc e                                            ; $5469: $1c
	add b                                            ; $546a: $80
	ld c, $71                                        ; $546b: $0e $71
	ld a, c                                          ; $546d: $79
	cp [hl]                                          ; $546e: $be
	or e                                             ; $546f: $b3

jr_051_5470:
	pop de                                           ; $5470: $d1
	ret nc                                           ; $5471: $d0

	pop af                                           ; $5472: $f1
	jp hl                                            ; $5473: $e9


	ei                                               ; $5474: $fb
	db $fd                                           ; $5475: $fd
	ld a, h                                          ; $5476: $7c
	ld a, [hl]                                       ; $5477: $7e
	ccf                                              ; $5478: $3f
	ccf                                              ; $5479: $3f
	ld e, $1e                                        ; $547a: $1e $1e
	add b                                            ; $547c: $80
	ret nz                                           ; $547d: $c0

	ld hl, sp+$3c                                    ; $547e: $f8 $3c
	rst JumpTable                                          ; $5480: $c7
	ld a, a                                          ; $5481: $7f
	db $fd                                           ; $5482: $fd
	rst FarCall                                          ; $5483: $f7
	ret nz                                           ; $5484: $c0

	ldh [$f0], a                                     ; $5485: $e0 $f0
	ccf                                              ; $5487: $3f
	add a                                            ; $5488: $87
	rst $38                                          ; $5489: $ff
	adc c                                            ; $548a: $89
	ld e, $1a                                        ; $548b: $1e $1a
	dec bc                                           ; $548d: $0b
	rra                                              ; $548e: $1f
	ld e, $60                                        ; $548f: $1e $60
	rst SubAFromHL                                          ; $5491: $d7
	cp c                                             ; $5492: $b9
	and l                                            ; $5493: $a5
	db $ed                                           ; $5494: $ed
	ld b, $0f                                        ; $5495: $06 $0f
	inc a                                            ; $5497: $3c
	pop hl                                           ; $5498: $e1
	adc a                                            ; $5499: $8f
	cp [hl]                                          ; $549a: $be
	cp a                                             ; $549b: $bf
	cp b                                             ; $549c: $b8
	jp z, $3a98                                      ; $549d: $ca $98 $3a

	ld hl, sp+$76                                    ; $54a0: $f8 $76
	halt                                             ; $54a2: $76
	sbc d                                            ; $54a3: $9a
	ld c, b                                          ; $54a4: $48
	sbc b                                            ; $54a5: $98
	jr z, jr_051_5470                                ; $54a6: $28 $c8

	ld c, $7b                                        ; $54a8: $0e $7b
	adc e                                            ; $54aa: $8b
	sbc l                                            ; $54ab: $9d
	ld [hl+], a                                      ; $54ac: $22
	adc b                                            ; $54ad: $88
	ld [hl], a                                       ; $54ae: $77
	cp $9e                                           ; $54af: $fe $9e
	ld a, [$606c]                                    ; $54b1: $fa $6c $60
	sbc h                                            ; $54b4: $9c
	add b                                            ; $54b5: $80
	ld hl, sp-$01                                    ; $54b6: $f8 $ff
	ld l, a                                          ; $54b8: $6f
	ldh a, [$7f]                                     ; $54b9: $f0 $7f
	cp $f9                                           ; $54bb: $fe $f9
	ld b, a                                          ; $54bd: $47
	ldh a, [$97]                                     ; $54be: $f0 $97
	ld de, $3123                                     ; $54c0: $11 $23 $31
	inc hl                                           ; $54c3: $23
	ld b, l                                          ; $54c4: $45
	ld c, e                                          ; $54c5: $4b
	ld b, a                                          ; $54c6: $47
	ld c, a                                          ; $54c7: $4f
	ld a, b                                          ; $54c8: $78
	db $d3                                           ; $54c9: $d3
	sbc [hl]                                         ; $54ca: $9e
	ret nz                                           ; $54cb: $c0

	db $dd                                           ; $54cc: $dd
	add b                                            ; $54cd: $80
	sub a                                            ; $54ce: $97
	ld c, [hl]                                       ; $54cf: $4e
	xor [hl]                                         ; $54d0: $ae
	ld c, [hl]                                       ; $54d1: $4e
	xor h                                            ; $54d2: $ac
	ld e, [hl]                                       ; $54d3: $5e
	cp h                                             ; $54d4: $bc
	ld e, [hl]                                       ; $54d5: $5e
	cp h                                             ; $54d6: $bc
	ld sp, hl                                        ; $54d7: $f9
	sbc e                                            ; $54d8: $9b
	inc e                                            ; $54d9: $1c
	jr z, @+$1f                                      ; $54da: $28 $1d

	dec a                                            ; $54dc: $3d
	ld [hl], a                                       ; $54dd: $77
	cp $4e                                           ; $54de: $fe $4e
	ret nz                                           ; $54e0: $c0

	sbc l                                            ; $54e1: $9d
	ld [hl+], a                                      ; $54e2: $22
	ld h, d                                          ; $54e3: $62
	ld l, [hl]                                       ; $54e4: $6e
	jp nz, $c184                                     ; $54e5: $c2 $84 $c1

	add c                                            ; $54e8: $81
	ld b, a                                          ; $54e9: $47
	ld h, e                                          ; $54ea: $63
	ld h, [hl]                                       ; $54eb: $66
	ld h, a                                          ; $54ec: $67
	ld h, [hl]                                       ; $54ed: $66
	ld h, l                                          ; $54ee: $65
	add $c5                                          ; $54ef: $c6 $c5
	add b                                            ; $54f1: $80
	add b                                            ; $54f2: $80
	add c                                            ; $54f3: $81
	add b                                            ; $54f4: $80
	add c                                            ; $54f5: $81
	add d                                            ; $54f6: $82
	ld bc, $8002                                     ; $54f7: $01 $02 $80
	add [hl]                                         ; $54fa: $86
	call nz, $c5c6                                   ; $54fb: $c4 $c6 $c5
	add $c3                                          ; $54fe: $c6 $c3
	add $04                                          ; $5500: $c6 $04
	db $fd                                           ; $5502: $fd
	ld a, [hl]                                       ; $5503: $7e
	add hl, bc                                       ; $5504: $09
	sub e                                            ; $5505: $93
	ld bc, $8343                                     ; $5506: $01 $43 $83
	ld d, e                                          ; $5509: $53
	add e                                            ; $550a: $83
	ld d, e                                          ; $550b: $53
	adc e                                            ; $550c: $8b
	rla                                              ; $550d: $17
	adc e                                            ; $550e: $8b
	ccf                                              ; $550f: $3f
	ld a, a                                          ; $5510: $7f
	cp a                                             ; $5511: $bf
	ld a, e                                          ; $5512: $7b
	cp $95                                           ; $5513: $fe $95
	rst $38                                          ; $5515: $ff
	ld a, a                                          ; $5516: $7f
	ld a, d                                          ; $5517: $7a
	ld [hl], l                                       ; $5518: $75
	ld a, [hl]                                       ; $5519: $7e
	dec [hl]                                         ; $551a: $35
	ld a, $37                                        ; $551b: $3e $37
	ld a, $b7                                        ; $551d: $3e $b7
	sbc $8f                                          ; $551f: $de $8f
	call c, $9ecf                                    ; $5521: $dc $cf $9e
	inc e                                            ; $5524: $1c
	call c, $df9c                                    ; $5525: $dc $9c $df
	call c, $e67f                                    ; $5528: $dc $7f $e6
	db $dd                                           ; $552b: $dd
	ld a, a                                          ; $552c: $7f
	rst SubAFromDE                                          ; $552d: $df
	ccf                                              ; $552e: $3f
	sub d                                            ; $552f: $92
	db $10                                           ; $5530: $10
	ld c, b                                          ; $5531: $48
	inc b                                            ; $5532: $04
	and d                                            ; $5533: $a2
	dec bc                                           ; $5534: $0b
	db $10                                           ; $5535: $10
	add d                                            ; $5536: $82
	ld [$0f1f], sp                                   ; $5537: $08 $1f $0f
	rlca                                             ; $553a: $07
	inc bc                                           ; $553b: $03
	ld bc, $7ffe                                     ; $553c: $01 $fe $7f
	ld de, $1e96                                     ; $553f: $11 $96 $1e
	ld c, $0e                                        ; $5542: $0e $0e
	adc [hl]                                         ; $5544: $8e
	add $44                                          ; $5545: $c6 $44
	ldh [$e1], a                                     ; $5547: $e0 $e1
	pop hl                                           ; $5549: $e1
	sbc $f1                                          ; $554a: $de $f1
	sbc e                                            ; $554c: $9b
	ld a, c                                          ; $554d: $79
	ld a, e                                          ; $554e: $7b
	dec a                                            ; $554f: $3d
	dec a                                            ; $5550: $3d
	sbc $7d                                          ; $5551: $de $7d
	sbc h                                            ; $5553: $9c
	ld d, a                                          ; $5554: $57
	ld e, a                                          ; $5555: $5f
	ld e, e                                          ; $5556: $5b
	call c, $dec6                                    ; $5557: $dc $c6 $de
	db $ec                                           ; $555a: $ec
	sbc [hl]                                         ; $555b: $9e
	push af                                          ; $555c: $f5
	db $dd                                           ; $555d: $dd
	di                                               ; $555e: $f3
	rst SubAFromDE                                          ; $555f: $df
	ldh a, [c]                                       ; $5560: $f2
	sbc [hl]                                         ; $5561: $9e
	ld a, [$0edc]                                    ; $5562: $fa $dc $0e
	rst SubAFromDE                                          ; $5565: $df
	rrca                                             ; $5566: $0f
	sbc e                                            ; $5567: $9b
	rlca                                             ; $5568: $07
	push af                                          ; $5569: $f5
	ld a, [$71fd]                                    ; $556a: $fa $fd $71
	ld h, a                                          ; $556d: $67
	sbc [hl]                                         ; $556e: $9e
	ld c, $6f                                        ; $556f: $0e $6f
	pop bc                                           ; $5571: $c1
	add h                                            ; $5572: $84
	nop                                              ; $5573: $00
	rst FarCall                                          ; $5574: $f7
	rst FarCall                                          ; $5575: $f7
	ld [hl], a                                       ; $5576: $77
	sub e                                            ; $5577: $93
	halt                                             ; $5578: $76
	rst $38                                          ; $5579: $ff
	ld a, e                                          ; $557a: $7b
	sbc e                                            ; $557b: $9b
	ld a, [de]                                       ; $557c: $1a
	ld a, [de]                                       ; $557d: $1a
	sbc d                                            ; $557e: $9a
	cp $ff                                           ; $557f: $fe $ff
	ld a, a                                          ; $5581: $7f
	rst $38                                          ; $5582: $ff
	sbc [hl]                                         ; $5583: $9e
	ldh [$ed], a                                     ; $5584: $e0 $ed
	push hl                                          ; $5586: $e5
	db $e3                                           ; $5587: $e3
	cp $27                                           ; $5588: $fe $27
	ld e, h                                          ; $558a: $5c
	ld [hl], b                                       ; $558b: $70
	cp b                                             ; $558c: $b8
	cp b                                             ; $558d: $b8
	sbc $bf                                          ; $558e: $de $bf
	add h                                            ; $5590: $84
	ld hl, sp+$63                                    ; $5591: $f8 $63
	ld c, a                                          ; $5593: $4f
	ld l, h                                          ; $5594: $6c
	rst FarCall                                          ; $5595: $f7
	ld l, [hl]                                       ; $5596: $6e
	cp h                                             ; $5597: $bc
	ldh a, [hLCDCIntHandlerIdx]                                     ; $5598: $f0 $81
	rlca                                             ; $559a: $07
	ld a, a                                          ; $559b: $7f
	sbc a                                            ; $559c: $9f
	sbc b                                            ; $559d: $98
	pop af                                           ; $559e: $f1
	jp $7e0f                                         ; $559f: $c3 $0f $7e


	ld hl, sp-$80                                    ; $55a2: $f8 $80
	ldh a, [$1f]                                     ; $55a4: $f0 $1f
	nop                                              ; $55a6: $00
	jr jr_051_5628                                   ; $55a7: $18 $7f

	cp $f8                                           ; $55a9: $fe $f8
	ldh [$de], a                                     ; $55ab: $e0 $de
	rst $38                                          ; $55ad: $ff
	sbc b                                            ; $55ae: $98
	rst SubAFromBC                                          ; $55af: $e7
	add b                                            ; $55b0: $80
	ld bc, $1f07                                     ; $55b1: $01 $07 $1f
	rst $38                                          ; $55b4: $ff
	nop                                              ; $55b5: $00
	ld l, [hl]                                       ; $55b6: $6e
	or l                                             ; $55b7: $b5
	reti                                             ; $55b8: $d9


	rst $38                                          ; $55b9: $ff
	sub d                                            ; $55ba: $92
	add b                                            ; $55bb: $80
	ld h, b                                          ; $55bc: $60
	sub b                                            ; $55bd: $90
	adc b                                            ; $55be: $88
	add h                                            ; $55bf: $84
	add h                                            ; $55c0: $84
	add d                                            ; $55c1: $82
	add d                                            ; $55c2: $82
	add b                                            ; $55c3: $80
	ldh [$f0], a                                     ; $55c4: $e0 $f0
	ld hl, sp-$04                                    ; $55c6: $f8 $fc
	ld a, c                                          ; $55c8: $79
	rla                                              ; $55c9: $17
	rst SubAFromDE                                          ; $55ca: $df
	rst GetHLinHL                                          ; $55cb: $cf
	sbc c                                            ; $55cc: $99
	rst SubAFromHL                                          ; $55cd: $d7
	adc $f5                                          ; $55ce: $ce $f5
	ld [$eaf5], a                                    ; $55d0: $ea $f5 $ea
	ld a, b                                          ; $55d3: $78
	sub l                                            ; $55d4: $95
	sub d                                            ; $55d5: $92
	ld de, $150a                                     ; $55d6: $11 $0a $15
	ld a, [bc]                                       ; $55d9: $0a
	dec d                                            ; $55da: $15
	ld hl, sp-$14                                    ; $55db: $f8 $ec
	add sp, -$14                                     ; $55dd: $e8 $ec
	ret z                                            ; $55df: $c8

	call z, $ccc8                                    ; $55e0: $cc $c8 $cc
	ld [hl], l                                       ; $55e3: $75
	ld h, a                                          ; $55e4: $67
	db $dd                                           ; $55e5: $dd
	jr nc, jr_051_5666                               ; $55e6: $30 $7e

	add $9c                                          ; $55e8: $c6 $9c
	ccf                                              ; $55ea: $3f
	ld d, $3e                                        ; $55eb: $16 $3e
	ld a, e                                          ; $55ed: $7b
	cp $fe                                           ; $55ee: $fe $fe
	sbc l                                            ; $55f0: $9d
	add hl, bc                                       ; $55f1: $09
	ld bc, $fe7b                                     ; $55f2: $01 $7b $fe
	sub d                                            ; $55f5: $92
	ld h, $66                                        ; $55f6: $26 $66
	ld h, $67                                        ; $55f8: $26 $67
	daa                                              ; $55fa: $27
	ld h, a                                          ; $55fb: $67
	inc hl                                           ; $55fc: $23
	ld h, e                                          ; $55fd: $63
	pop bc                                           ; $55fe: $c1
	add c                                            ; $55ff: $81
	pop bc                                           ; $5600: $c1
	add b                                            ; $5601: $80
	ret nz                                           ; $5602: $c0

	ld a, e                                          ; $5603: $7b
	cp $92                                           ; $5604: $fe $92
	add $85                                          ; $5606: $c6 $85
	add [hl]                                         ; $5608: $86
	add h                                            ; $5609: $84
	add d                                            ; $560a: $82
	adc h                                            ; $560b: $8c
	adc d                                            ; $560c: $8a
	inc c                                            ; $560d: $0c
	ld bc, $0102                                     ; $560e: $01 $02 $01
	inc bc                                           ; $5611: $03
	dec b                                            ; $5612: $05
	ld a, e                                          ; $5613: $7b
	cp $95                                           ; $5614: $fe $95
	db $e3                                           ; $5616: $e3
	and $e0                                          ; $5617: $e6 $e0
	db $e4                                           ; $5619: $e4
	ldh [$64], a                                     ; $561a: $e0 $64
	ld h, b                                          ; $561c: $60
	ld [hl], h                                       ; $561d: $74
	nop                                              ; $561e: $00
	ld bc, $03de                                     ; $561f: $01 $de $03
	sbc $83                                          ; $5622: $de $83
	sub l                                            ; $5624: $95
	ld d, a                                          ; $5625: $57
	ld c, e                                          ; $5626: $4b
	ld [hl], a                                       ; $5627: $77

jr_051_5628:
	ld l, a                                          ; $5628: $6f
	ld [hl], a                                       ; $5629: $77
	ld l, a                                          ; $562a: $6f
	ld a, a                                          ; $562b: $7f
	ld c, a                                          ; $562c: $4f
	cp a                                             ; $562d: $bf
	cp a                                             ; $562e: $bf
	call c, $9c9f                                    ; $562f: $dc $9f $9c
	cp a                                             ; $5632: $bf
	cp d                                             ; $5633: $ba
	or a                                             ; $5634: $b7
	ld a, e                                          ; $5635: $7b
	cp $9c                                           ; $5636: $fe $9c
	cp [hl]                                          ; $5638: $be
	cp d                                             ; $5639: $ba
	cp [hl]                                          ; $563a: $be
	db $dd                                           ; $563b: $dd
	rst GetHLinHL                                          ; $563c: $cf
	db $dd                                           ; $563d: $dd
	rst JumpTable                                          ; $563e: $c7
	sbc $dc                                          ; $563f: $de $dc
	rst SubAFromDE                                          ; $5641: $df
	call z, $e89c                                    ; $5642: $cc $9c $e8
	ldh [$e0], a                                     ; $5645: $e0 $e0
	call c, $de3f                                    ; $5647: $dc $3f $de
	rra                                              ; $564a: $1f
	sbc h                                            ; $564b: $9c
	nop                                              ; $564c: $00
	jr nz, jr_051_5651                               ; $564d: $20 $02

	db $f4                                           ; $564f: $f4
	sbc d                                            ; $5650: $9a

jr_051_5651:
	jr nz, jr_051_56a3                               ; $5651: $20 $50

	ld [$0204], sp                                   ; $5653: $08 $04 $02
	ld a, d                                          ; $5656: $7a
	push af                                          ; $5657: $f5
	ld a, a                                          ; $5658: $7f
	db $e4                                           ; $5659: $e4
	ld a, d                                          ; $565a: $7a
	xor a                                            ; $565b: $af
	ld a, e                                          ; $565c: $7b
	ld hl, sp-$6a                                    ; $565d: $f8 $96
	ld c, e                                          ; $565f: $4b
	ld c, a                                          ; $5660: $4f
	rst SubAFromDE                                          ; $5661: $df
	rst SubAFromHL                                          ; $5662: $d7
	rst $38                                          ; $5663: $ff
	rst AddAOntoHL                                          ; $5664: $ef
	rst AddAOntoHL                                          ; $5665: $ef

jr_051_5666:
	rst JumpTable                                          ; $5666: $c7
	db $fc                                           ; $5667: $fc
	sbc $f8                                          ; $5668: $de $f8
	sbc $f0                                          ; $566a: $de $f0
	ld a, h                                          ; $566c: $7c
	inc hl                                           ; $566d: $23
	rst SubAFromDE                                          ; $566e: $df
	ld a, [$ff9e]                                    ; $566f: $fa $9e $ff
	sbc $fd                                          ; $5672: $de $fd
	sbc [hl]                                         ; $5674: $9e
	cp $de                                           ; $5675: $fe $de
	rlca                                             ; $5677: $07
	db $dd                                           ; $5678: $dd
	inc bc                                           ; $5679: $03
	sbc [hl]                                         ; $567a: $9e
	ld bc, $ffdd                                     ; $567b: $01 $dd $ff
	rst SubAFromDE                                          ; $567e: $df
	ld a, a                                          ; $567f: $7f
	rst SubAFromDE                                          ; $5680: $df
	rst $38                                          ; $5681: $ff
	ld [hl], c                                       ; $5682: $71
	pop bc                                           ; $5683: $c1
	sbc $80                                          ; $5684: $de $80
	sbc e                                            ; $5686: $9b
	cp $64                                           ; $5687: $fe $64
	db $fd                                           ; $5689: $fd
	rst $38                                          ; $568a: $ff
	ld a, e                                          ; $568b: $7b
	sbc $8e                                          ; $568c: $de $8e
	rst $38                                          ; $568e: $ff
	sbc h                                            ; $568f: $9c
	db $fc                                           ; $5690: $fc
	inc b                                            ; $5691: $04
	dec b                                            ; $5692: $05
	rlca                                             ; $5693: $07
	ld b, $06                                        ; $5694: $06 $06
	inc b                                            ; $5696: $04
	rst $38                                          ; $5697: $ff
	cp a                                             ; $5698: $bf
	rst $38                                          ; $5699: $ff
	ld a, a                                          ; $569a: $7f
	ld hl, sp-$80                                    ; $569b: $f8 $80
	ldh [$f8], a                                     ; $569d: $e0 $f8
	ld [hl], l                                       ; $569f: $75
	jp nc, $ca7e                                     ; $56a0: $d2 $7e $ca

jr_051_56a3:
	sbc d                                            ; $56a3: $9a
	rra                                              ; $56a4: $1f
	rlca                                             ; $56a5: $07
	rst $38                                          ; $56a6: $ff
	ld hl, sp-$40                                    ; $56a7: $f8 $c0
	ei                                               ; $56a9: $fb
	sbc l                                            ; $56aa: $9d
	rlca                                             ; $56ab: $07
	ccf                                              ; $56ac: $3f
	call c, $faff                                    ; $56ad: $dc $ff $fa
	sbc [hl]                                         ; $56b0: $9e
	dec b                                            ; $56b1: $05
	reti                                             ; $56b2: $d9


	rst $38                                          ; $56b3: $ff
	sbc $01                                          ; $56b4: $de $01
	rst SubAFromDE                                          ; $56b6: $df
	ld [bc], a                                       ; $56b7: $02
	sbc h                                            ; $56b8: $9c
	ld b, $2e                                        ; $56b9: $06 $2e
	ld d, [hl]                                       ; $56bb: $56
	reti                                             ; $56bc: $d9


	rst $38                                          ; $56bd: $ff
	sub a                                            ; $56be: $97
	add d                                            ; $56bf: $82
	jp $7161                                         ; $56c0: $c3 $61 $71


	ld sp, $1d39                                     ; $56c3: $31 $39 $1d
	dec e                                            ; $56c6: $1d
	ld [hl], d                                       ; $56c7: $72
	ld e, e                                          ; $56c8: $5b
	sbc $ff                                          ; $56c9: $de $ff
	add e                                            ; $56cb: $83
	push af                                          ; $56cc: $f5
	ldh [c], a                                       ; $56cd: $e2
	push hl                                          ; $56ce: $e5
	db $e3                                           ; $56cf: $e3
	ld h, l                                          ; $56d0: $65
	ld h, e                                          ; $56d1: $63
	ld h, c                                          ; $56d2: $61
	ld b, c                                          ; $56d3: $41
	ld a, [bc]                                       ; $56d4: $0a
	dec e                                            ; $56d5: $1d
	ld a, [de]                                       ; $56d6: $1a
	inc e                                            ; $56d7: $1c
	sbc d                                            ; $56d8: $9a
	sbc h                                            ; $56d9: $9c
	sbc [hl]                                         ; $56da: $9e
	cp [hl]                                          ; $56db: $be
	ret z                                            ; $56dc: $c8

	call nc, $9cda                                   ; $56dd: $d4 $da $9c
	adc [hl]                                         ; $56e0: $8e
	adc h                                            ; $56e1: $8c
	adc [hl]                                         ; $56e2: $8e
	sbc h                                            ; $56e3: $9c
	jr nc, jr_051_5706                               ; $56e4: $30 $20

	jr nz, jr_051_5748                               ; $56e6: $20 $60

	sbc $70                                          ; $56e8: $de $70
	sbc c                                            ; $56ea: $99
	ld h, b                                          ; $56eb: $60
	ld a, [hl-]                                      ; $56ec: $3a
	ld d, $3a                                        ; $56ed: $16 $3a
	inc d                                            ; $56ef: $14
	jr c, jr_051_576d                                ; $56f0: $38 $7b

	cp $9a                                           ; $56f2: $fe $9a
	dec b                                            ; $56f4: $05
	add hl, bc                                       ; $56f5: $09
	dec b                                            ; $56f6: $05
	dec bc                                           ; $56f7: $0b
	rlca                                             ; $56f8: $07
	ld a, e                                          ; $56f9: $7b
	cp $94                                           ; $56fa: $fe $94
	ld hl, $a161                                     ; $56fc: $21 $61 $a1
	ld h, c                                          ; $56ff: $61
	and c                                            ; $5700: $a1
	ld h, e                                          ; $5701: $63
	or e                                             ; $5702: $b3
	ld [hl], e                                       ; $5703: $73
	ret nz                                           ; $5704: $c0

	add b                                            ; $5705: $80

jr_051_5706:
	ld b, b                                          ; $5706: $40
	ld [hl], e                                       ; $5707: $73
	cp $7c                                           ; $5708: $fe $7c
	ld e, c                                          ; $570a: $59
	ld a, e                                          ; $570b: $7b
	cp $9a                                           ; $570c: $fe $9a
	adc h                                            ; $570e: $8c
	adc b                                            ; $570f: $88
	adc c                                            ; $5710: $89
	rlca                                             ; $5711: $07
	inc bc                                           ; $5712: $03
	ld [hl], e                                       ; $5713: $73
	cp $96                                           ; $5714: $fe $96
	rlca                                             ; $5716: $07
	ld l, b                                          ; $5717: $68
	ld [hl], h                                       ; $5718: $74
	ld a, b                                          ; $5719: $78
	ld [hl], h                                       ; $571a: $74
	jr c, jr_051_5751                                ; $571b: $38 $34

	cp b                                             ; $571d: $b8
	inc [hl]                                         ; $571e: $34
	db $dd                                           ; $571f: $dd
	add e                                            ; $5720: $83
	db $dd                                           ; $5721: $dd
	jp Jump_051_5f96                                 ; $5722: $c3 $96 $5f


	rst GetHLinHL                                          ; $5725: $cf
	rst SubAFromHL                                          ; $5726: $d7
	rst GetHLinHL                                          ; $5727: $cf
	rst SubAFromHL                                          ; $5728: $d7
	set 2, a                                         ; $5729: $cb $d7
	res 7, a                                         ; $572b: $cb $bf
	jp c, $9b3f                                      ; $572d: $da $3f $9b

	cp d                                             ; $5730: $ba
	sbc d                                            ; $5731: $9a
	sbc h                                            ; $5732: $9c
	sbc b                                            ; $5733: $98
	ld [hl], a                                       ; $5734: $77
	cp $7c                                           ; $5735: $fe $7c
	adc d                                            ; $5737: $8a
	sbc [hl]                                         ; $5738: $9e
	db $e3                                           ; $5739: $e3
	ld [hl], e                                       ; $573a: $73
	cp $8f                                           ; $573b: $fe $8f
	ldh [$60], a                                     ; $573d: $e0 $60
	ldh [$60], a                                     ; $573f: $e0 $60
	call nz, $c644                                   ; $5741: $c4 $44 $c6
	ld b, [hl]                                       ; $5744: $46
	rra                                              ; $5745: $1f
	sbc a                                            ; $5746: $9f
	rra                                              ; $5747: $1f

jr_051_5748:
	sbc a                                            ; $5748: $9f
	ccf                                              ; $5749: $3f
	cp a                                             ; $574a: $bf
	ccf                                              ; $574b: $3f
	cp a                                             ; $574c: $bf
	pop hl                                           ; $574d: $e1
	rst SubAFromDE                                          ; $574e: $df
	rst JumpTable                                          ; $574f: $c7
	sub c                                            ; $5750: $91

jr_051_5751:
	ld b, a                                          ; $5751: $47
	ld b, e                                          ; $5752: $43
	ld b, e                                          ; $5753: $43
	ld b, c                                          ; $5754: $41
	ld h, c                                          ; $5755: $61
	ld [hl], b                                       ; $5756: $70
	ld hl, sp-$08                                    ; $5757: $f8 $f8
	ld a, b                                          ; $5759: $78
	ld a, h                                          ; $575a: $7c
	ld a, h                                          ; $575b: $7c
	ld a, [hl]                                       ; $575c: $7e
	ld a, [hl]                                       ; $575d: $7e
	ld a, a                                          ; $575e: $7f
	ld h, a                                          ; $575f: $67
	jr c, jr_051_57d3                                ; $5760: $38 $71

	sub e                                            ; $5762: $93
	cp $7e                                           ; $5763: $fe $7e
	ld e, c                                          ; $5765: $59
	sub d                                            ; $5766: $92
	ld e, a                                          ; $5767: $5f
	sbc a                                            ; $5768: $9f
	rst GetHLinHL                                          ; $5769: $cf
	rst AddAOntoHL                                          ; $576a: $ef
	rst FarCall                                          ; $576b: $f7
	rst $38                                          ; $576c: $ff

jr_051_576d:
	ret nz                                           ; $576d: $c0

	ldh [$e0], a                                     ; $576e: $e0 $e0
	ld h, b                                          ; $5770: $60
	jr nc, jr_051_5783                               ; $5771: $30 $10

	ld [$c86d], sp                                   ; $5773: $08 $6d $c8
	sbc h                                            ; $5776: $9c
	rst AddAOntoHL                                          ; $5777: $ef
	pop af                                           ; $5778: $f1
	push af                                          ; $5779: $f5
	call c, $9c04                                    ; $577a: $dc $04 $9c
	ld e, $13                                        ; $577d: $1e $13
	inc de                                           ; $577f: $13
	jp c, $9eff                                      ; $5780: $da $ff $9e

jr_051_5783:
	ld hl, sp-$06                                    ; $5783: $f8 $fa
	sbc d                                            ; $5785: $9a
	rlca                                             ; $5786: $07
	nop                                              ; $5787: $00
	ldh [$f8], a                                     ; $5788: $e0 $f8
	db $fc                                           ; $578a: $fc
	halt                                             ; $578b: $76
	cp l                                             ; $578c: $bd
	sbc l                                            ; $578d: $9d
	rst $38                                          ; $578e: $ff
	rra                                              ; $578f: $1f
	ld a, e                                          ; $5790: $7b
	ld b, d                                          ; $5791: $42
	ld a, d                                          ; $5792: $7a
	cp l                                             ; $5793: $bd
	ld a, l                                          ; $5794: $7d
	ld sp, hl                                        ; $5795: $f9
	ei                                               ; $5796: $fb
	reti                                             ; $5797: $d9


	rst $38                                          ; $5798: $ff
	sub a                                            ; $5799: $97
	xor [hl]                                         ; $579a: $ae

Call_051_579b:
	ld d, a                                          ; $579b: $57
	xor [hl]                                         ; $579c: $ae
	ld e, a                                          ; $579d: $5f
	ld l, $17                                        ; $579e: $2e $17
	rrca                                             ; $57a0: $0f
	rla                                              ; $57a1: $17
	reti                                             ; $57a2: $d9


	rst $38                                          ; $57a3: $ff
	rst SubAFromDE                                          ; $57a4: $df
	rrca                                             ; $57a5: $0f
	sbc c                                            ; $57a6: $99
	adc a                                            ; $57a7: $8f
	ld b, a                                          ; $57a8: $47
	add a                                            ; $57a9: $87
	ld b, e                                          ; $57aa: $43
	and e                                            ; $57ab: $a3
	ld [hl], c                                       ; $57ac: $71
	reti                                             ; $57ad: $d9


	rst $38                                          ; $57ae: $ff
	sbc h                                            ; $57af: $9c
	ld b, c                                          ; $57b0: $41
	ld b, e                                          ; $57b1: $43
	ld b, e                                          ; $57b2: $43
	ld [hl], l                                       ; $57b3: $75
	reti                                             ; $57b4: $d9


	sbc e                                            ; $57b5: $9b
	add e                                            ; $57b6: $83
	cp [hl]                                          ; $57b7: $be
	cp h                                             ; $57b8: $bc
	cp h                                             ; $57b9: $bc
	call c, $97fc                                    ; $57ba: $dc $fc $97
	sbc [hl]                                         ; $57bd: $9e
	sbc h                                            ; $57be: $9c
	sbc [hl]                                         ; $57bf: $9e
	cp h                                             ; $57c0: $bc
	cp h                                             ; $57c1: $bc
	inc a                                            ; $57c2: $3c
	ld a, h                                          ; $57c3: $7c
	ld a, h                                          ; $57c4: $7c
	sbc $60                                          ; $57c5: $de $60
	rst SubAFromDE                                          ; $57c7: $df
	ld b, b                                          ; $57c8: $40
	ld a, d                                          ; $57c9: $7a
	ld e, h                                          ; $57ca: $5c
	sbc l                                            ; $57cb: $9d
	jr c, jr_051_57de                                ; $57cc: $38 $10

	ld l, a                                          ; $57ce: $6f
	cp $9d                                           ; $57cf: $fe $9d
	rlca                                             ; $57d1: $07
	rrca                                             ; $57d2: $0f

jr_051_57d3:
	ld l, a                                          ; $57d3: $6f
	cp $94                                           ; $57d4: $fe $94
	or e                                             ; $57d6: $b3
	ld [hl], b                                       ; $57d7: $70
	or b                                             ; $57d8: $b0
	ld [hl], b                                       ; $57d9: $70
	and b                                            ; $57da: $a0
	ld h, b                                          ; $57db: $60
	and b                                            ; $57dc: $a0
	ld h, b                                          ; $57dd: $60

jr_051_57de:
	ld b, b                                          ; $57de: $40
	add e                                            ; $57df: $83
	ld b, e                                          ; $57e0: $43
	ld [hl], e                                       ; $57e1: $73
	cp $7e                                           ; $57e2: $fe $7e
	add $99                                          ; $57e4: $c6 $99
	adc h                                            ; $57e6: $8c
	call Call_051_4d4c                               ; $57e7: $cd $4c $4d
	ld c, [hl]                                       ; $57ea: $4e
	dec c                                            ; $57eb: $0d
	halt                                             ; $57ec: $76
	ld bc, $cd76                                     ; $57ed: $01 $76 $cd
	sub a                                            ; $57f0: $97
	cp b                                             ; $57f1: $b8
	ld [hl], h                                       ; $57f2: $74
	cp b                                             ; $57f3: $b8
	ld d, h                                          ; $57f4: $54
	sbc h                                            ; $57f5: $9c
	ld e, b                                          ; $57f6: $58
	sbc b                                            ; $57f7: $98
	ld c, b                                          ; $57f8: $48
	sbc $c3                                          ; $57f9: $de $c3
	rst SubAFromDE                                          ; $57fb: $df
	db $e3                                           ; $57fc: $e3
	rst SubAFromDE                                          ; $57fd: $df
	rst SubAFromBC                                          ; $57fe: $e7
	sub [hl]                                         ; $57ff: $96
	rst FarCall                                          ; $5800: $f7
	push bc                                          ; $5801: $c5
	db $eb                                           ; $5802: $eb
	push hl                                          ; $5803: $e5
	db $eb                                           ; $5804: $eb
	ldh [$ed], a                                     ; $5805: $e0 $ed
	db $e4                                           ; $5807: $e4
	db $ed                                           ; $5808: $ed
	ld [hl], l                                       ; $5809: $75
	and h                                            ; $580a: $a4
	sbc [hl]                                         ; $580b: $9e
	rra                                              ; $580c: $1f
	sbc $1b                                          ; $580d: $de $1b
	ld a, a                                          ; $580f: $7f
	db $e4                                           ; $5810: $e4
	ld l, a                                          ; $5811: $6f
	cp $6e                                           ; $5812: $fe $6e
	jp nz, $fe7f                                     ; $5814: $c2 $7f $fe

	sbc d                                            ; $5817: $9a
	add [hl]                                         ; $5818: $86
	ld b, [hl]                                       ; $5819: $46
	add [hl]                                         ; $581a: $86
	ld c, [hl]                                       ; $581b: $4e
	adc [hl]                                         ; $581c: $8e
	ld a, e                                          ; $581d: $7b
	cp $70                                           ; $581e: $fe $70
	ld hl, $fe7b                                     ; $5820: $21 $7b $fe
	ld b, d                                          ; $5823: $42
	nop                                              ; $5824: $00
	db $dd                                           ; $5825: $dd
	inc sp                                           ; $5826: $33
	sbc l                                            ; $5827: $9d
	ld [hl], $35                                     ; $5828: $36 $35
	db $dd                                           ; $582a: $dd
	ld d, l                                          ; $582b: $55
	sbc c                                            ; $582c: $99
	inc sp                                           ; $582d: $33
	ld h, [hl]                                       ; $582e: $66
	ld d, l                                          ; $582f: $55
	ld d, l                                          ; $5830: $55
	ld b, [hl]                                       ; $5831: $46
	ld h, l                                          ; $5832: $65
	db $dd                                           ; $5833: $dd
	ld d, l                                          ; $5834: $55
	sbc d                                            ; $5835: $9a
	ld h, h                                          ; $5836: $64
	ld b, l                                          ; $5837: $45
	ld d, l                                          ; $5838: $55
	ld d, l                                          ; $5839: $55
	ld d, [hl]                                       ; $583a: $56
	ld [hl], e                                       ; $583b: $73
	or $9e                                           ; $583c: $f6 $9e
	ld b, h                                          ; $583e: $44
	ld a, e                                          ; $583f: $7b
	or $9e                                           ; $5840: $f6 $9e
	inc sp                                           ; $5842: $33
	ld [hl], e                                       ; $5843: $73
	ldh [c], a                                       ; $5844: $e2
	sbc l                                            ; $5845: $9d
	ld b, [hl]                                       ; $5846: $46
	ld h, e                                          ; $5847: $63
	ld h, a                                          ; $5848: $67
	or $9d                                           ; $5849: $f6 $9d
	ld b, h                                          ; $584b: $44
	inc sp                                           ; $584c: $33
	ld h, e                                          ; $584d: $63
	or $7b                                           ; $584e: $f6 $7b
	adc $6b                                          ; $5850: $ce $6b
	or $de                                           ; $5852: $f6 $de
	ld b, h                                          ; $5854: $44
	ld l, a                                          ; $5855: $6f
	or $9e                                           ; $5856: $f6 $9e
	ld h, h                                          ; $5858: $64
	db $dd                                           ; $5859: $dd
	ld b, h                                          ; $585a: $44
	ld [hl], e                                       ; $585b: $73
	call nz, $369e                                   ; $585c: $c4 $9e $36
	ld h, e                                          ; $585f: $63
	or $9e                                           ; $5860: $f6 $9e
	inc sp                                           ; $5862: $33
	ld h, e                                          ; $5863: $63
	or $92                                           ; $5864: $f6 $92
	add c                                            ; $5866: $81
	rst SubAFromDE                                          ; $5867: $df
	rst $38                                          ; $5868: $ff
	add d                                            ; $5869: $82
	db $fc                                           ; $586a: $fc
	di                                               ; $586b: $f3
	or $f3                                           ; $586c: $f6 $f3
	db $ec                                           ; $586e: $ec
	db $e3                                           ; $586f: $e3
	nop                                              ; $5870: $00
	inc bc                                           ; $5871: $03
	inc c                                            ; $5872: $0c
	inc de                                           ; $5873: $13
	rla                                              ; $5874: $17
	inc de                                           ; $5875: $13
	inc a                                            ; $5876: $3c
	ccf                                              ; $5877: $3f
	rst $38                                          ; $5878: $ff
	rst $38                                          ; $5879: $ff
	rrca                                             ; $587a: $0f
	di                                               ; $587b: $f3
	dec bc                                           ; $587c: $0b
	di                                               ; $587d: $f3
	rrca                                             ; $587e: $0f
	di                                               ; $587f: $f3
	nop                                              ; $5880: $00
	or $0f                                           ; $5881: $f6 $0f
	di                                               ; $5883: $f3
	ld a, [$0ef2]                                    ; $5884: $fa $f2 $0e
	ret c                                            ; $5887: $d8

	rst $38                                          ; $5888: $ff
	rst $38                                          ; $5889: $ff
	sbc c                                            ; $588a: $99
	inc bc                                           ; $588b: $03
	add l                                            ; $588c: $85
	adc l                                            ; $588d: $8d
	ret                                              ; $588e: $c9


	ld c, l                                          ; $588f: $4d
	ld e, c                                          ; $5890: $59
	jp c, $9eff                                      ; $5891: $da $ff $9e

	cp $fa                                           ; $5894: $fe $fa
	sbc [hl]                                         ; $5896: $9e

jr_051_5897:
	ld bc, $ffda                                     ; $5897: $01 $da $ff
	sbc [hl]                                         ; $589a: $9e
	jr c, jr_051_5897                                ; $589b: $38 $fa

	sbc [hl]                                         ; $589d: $9e
	rst JumpTable                                          ; $589e: $c7
	ld e, a                                          ; $589f: $5f
	ret nc                                           ; $58a0: $d0

	ei                                               ; $58a1: $fb
	inc bc                                           ; $58a2: $03
	and b                                            ; $58a3: $a0
	inc bc                                           ; $58a4: $03
	and b                                            ; $58a5: $a0
	inc bc                                           ; $58a6: $03
	and b                                            ; $58a7: $a0
	inc bc                                           ; $58a8: $03
	and b                                            ; $58a9: $a0
	inc bc                                           ; $58aa: $03
	and b                                            ; $58ab: $a0
	inc bc                                           ; $58ac: $03
	and b                                            ; $58ad: $a0
	rra                                              ; $58ae: $1f
	and b                                            ; $58af: $a0
	add a                                            ; $58b0: $87
	ret nz                                           ; $58b1: $c0

	pop de                                           ; $58b2: $d1
	db $db                                           ; $58b3: $db
	rst $38                                          ; $58b4: $ff
	rst $38                                          ; $58b5: $ff
	rst FarCall                                          ; $58b6: $f7
	rst AddAOntoHL                                          ; $58b7: $ef
	rst AddAOntoHL                                          ; $58b8: $ef
	ld a, a                                          ; $58b9: $7f
	ld a, a                                          ; $58ba: $7f
	ld a, [hl]                                       ; $58bb: $7e
	ld h, [hl]                                       ; $58bc: $66
	ld e, e                                          ; $58bd: $5b
	inc [hl]                                         ; $58be: $34
	ld l, h                                          ; $58bf: $6c
	ld l, h                                          ; $58c0: $6c
	ld bc, $b021                                     ; $58c1: $01 $21 $b0
	ld hl, sp-$03                                    ; $58c4: $f8 $fd
	xor a                                            ; $58c6: $af
	cp a                                             ; $58c7: $bf
	cp a                                             ; $58c8: $bf
	sbc $ff                                          ; $58c9: $de $ff
	sbc d                                            ; $58cb: $9a
	ld c, a                                          ; $58cc: $4f
	ld [hl], a                                       ; $58cd: $77
	xor d                                            ; $58ce: $aa
	jr c, jr_051_5902                                ; $58cf: $38 $31

	sbc $ff                                          ; $58d1: $de $ff
	sub c                                            ; $58d3: $91
	adc a                                            ; $58d4: $8f
	cp a                                             ; $58d5: $bf
	add a                                            ; $58d6: $87
	sbc e                                            ; $58d7: $9b
	rlca                                             ; $58d8: $07
	pop hl                                           ; $58d9: $e1
	ld bc, $fef2                                     ; $58da: $01 $f2 $fe
	db $fc                                           ; $58dd: $fc
	db $fc                                           ; $58de: $fc
	cp $fe                                           ; $58df: $fe $fe
	db $fc                                           ; $58e1: $fc
	db $dd                                           ; $58e2: $dd
	ld hl, sp+$7f                                    ; $58e3: $f8 $7f
	ld hl, sp-$63                                    ; $58e5: $f8 $9d
	rst $38                                          ; $58e7: $ff
	ld [bc], a                                       ; $58e8: $02
	db $dd                                           ; $58e9: $dd
	inc b                                            ; $58ea: $04
	sbc e                                            ; $58eb: $9b
	ld [bc], a                                       ; $58ec: $02
	ld bc, $1000                                     ; $58ed: $01 $00 $10
	ld l, e                                          ; $58f0: $6b
	ld a, b                                          ; $58f1: $78
	sbc l                                            ; $58f2: $9d
	jr z, jr_051_5905                                ; $58f3: $28 $10

	ld [hl], a                                       ; $58f5: $77
	or $9c                                           ; $58f6: $f6 $9c
	ld bc, $7f82                                     ; $58f8: $01 $82 $7f
	db $dd                                           ; $58fb: $dd
	ccf                                              ; $58fc: $3f
	sbc e                                            ; $58fd: $9b
	ld a, a                                          ; $58fe: $7f
	rst $38                                          ; $58ff: $ff
	rst $38                                          ; $5900: $ff
	add b                                            ; $5901: $80

jr_051_5902:
	db $dd                                           ; $5902: $dd
	ld b, b                                          ; $5903: $40
	sbc h                                            ; $5904: $9c

jr_051_5905:
	add b                                            ; $5905: $80
	nop                                              ; $5906: $00
	nop                                              ; $5907: $00
	inc bc                                           ; $5908: $03
	and b                                            ; $5909: $a0
	inc bc                                           ; $590a: $03
	and b                                            ; $590b: $a0
	inc bc                                           ; $590c: $03
	and b                                            ; $590d: $a0
	inc bc                                           ; $590e: $03
	and b                                            ; $590f: $a0
	inc bc                                           ; $5910: $03
	and b                                            ; $5911: $a0
	inc bc                                           ; $5912: $03
	and b                                            ; $5913: $a0
	inc de                                           ; $5914: $13
	and b                                            ; $5915: $a0
	call c, $98ff                                    ; $5916: $dc $ff $98
	jr nz, jr_051_592e                               ; $5919: $20 $13

	add hl, de                                       ; $591b: $19
	daa                                              ; $591c: $27
	ld c, h                                          ; $591d: $4c
	ld d, b                                          ; $591e: $50
	jr nc, jr_051_599b                               ; $591f: $30 $7a

	sub b                                            ; $5921: $90
	db $db                                           ; $5922: $db
	rst $38                                          ; $5923: $ff
	sub e                                            ; $5924: $93
	dec b                                            ; $5925: $05
	adc l                                            ; $5926: $8d
	cp c                                             ; $5927: $b9
	ldh a, [c]                                       ; $5928: $f2
	ld [hl+], a                                      ; $5929: $22
	ld b, h                                          ; $592a: $44
	ld h, h                                          ; $592b: $64
	jr jr_051_5931                                   ; $592c: $18 $03

jr_051_592e:
	pop bc                                           ; $592e: $c1
	pop af                                           ; $592f: $f1
	db $fd                                           ; $5930: $fd

jr_051_5931:
	ld [hl], d                                       ; $5931: $72
	ld c, a                                          ; $5932: $4f
	sbc e                                            ; $5933: $9b
	rst $38                                          ; $5934: $ff
	ccf                                              ; $5935: $3f
	rrca                                             ; $5936: $0f
	inc bc                                           ; $5937: $03
	ld [hl], d                                       ; $5938: $72
	ld [hl], b                                       ; $5939: $70
	ld c, [hl]                                       ; $593a: $4e
	ld h, b                                          ; $593b: $60
	sbc h                                            ; $593c: $9c
	add e                                            ; $593d: $83
	rst JumpTable                                          ; $593e: $c7
	rst AddAOntoHL                                          ; $593f: $ef
	call c, $9dff                                    ; $5940: $dc $ff $9d
	ld b, h                                          ; $5943: $44
	jr z, jr_051_59b5                                ; $5944: $28 $6f

	halt                                             ; $5946: $76
	ld a, $40                                        ; $5947: $3e $40
	inc bc                                           ; $5949: $03
	and b                                            ; $594a: $a0
	inc bc                                           ; $594b: $03
	and b                                            ; $594c: $a0
	inc bc                                           ; $594d: $03
	and b                                            ; $594e: $a0
	inc bc                                           ; $594f: $03
	and b                                            ; $5950: $a0
	inc bc                                           ; $5951: $03
	and b                                            ; $5952: $a0
	inc bc                                           ; $5953: $03
	and b                                            ; $5954: $a0
	daa                                              ; $5955: $27
	and b                                            ; $5956: $a0
	ld bc, $0130                                     ; $5957: $01 $30 $01
	jr nc, jr_051_595c                               ; $595a: $30 $00

jr_051_595c:
	ret nc                                           ; $595c: $d0

	inc bc                                           ; $595d: $03
	and b                                            ; $595e: $a0
	inc bc                                           ; $595f: $03
	and b                                            ; $5960: $a0
	inc bc                                           ; $5961: $03
	and b                                            ; $5962: $a0
	inc bc                                           ; $5963: $03
	and b                                            ; $5964: $a0
	inc bc                                           ; $5965: $03
	and b                                            ; $5966: $a0
	inc bc                                           ; $5967: $03
	and b                                            ; $5968: $a0
	dec hl                                           ; $5969: $2b
	and b                                            ; $596a: $a0
	ld bc, $0130                                     ; $596b: $01 $30 $01
	jr nc, jr_051_5970                               ; $596e: $30 $00

jr_051_5970:
	ret nc                                           ; $5970: $d0

	inc bc                                           ; $5971: $03
	and b                                            ; $5972: $a0
	inc bc                                           ; $5973: $03
	and b                                            ; $5974: $a0
	inc bc                                           ; $5975: $03
	and b                                            ; $5976: $a0
	inc bc                                           ; $5977: $03
	and b                                            ; $5978: $a0
	inc bc                                           ; $5979: $03
	and b                                            ; $597a: $a0
	inc bc                                           ; $597b: $03
	and b                                            ; $597c: $a0
	dec hl                                           ; $597d: $2b
	and b                                            ; $597e: $a0
	ld bc, $0130                                     ; $597f: $01 $30 $01
	jr nc, jr_051_5984                               ; $5982: $30 $00

jr_051_5984:
	ret nc                                           ; $5984: $d0

	inc bc                                           ; $5985: $03
	and b                                            ; $5986: $a0
	inc bc                                           ; $5987: $03
	and b                                            ; $5988: $a0
	inc bc                                           ; $5989: $03
	and b                                            ; $598a: $a0
	inc bc                                           ; $598b: $03
	and b                                            ; $598c: $a0
	inc bc                                           ; $598d: $03
	and b                                            ; $598e: $a0
	inc bc                                           ; $598f: $03
	and b                                            ; $5990: $a0
	inc hl                                           ; $5991: $23
	and b                                            ; $5992: $a0
	ld bc, $0130                                     ; $5993: $01 $30 $01
	jr nc, jr_051_5998                               ; $5996: $30 $00

jr_051_5998:
	ret nc                                           ; $5998: $d0

	inc bc                                           ; $5999: $03
	and b                                            ; $599a: $a0

Call_051_599b:
jr_051_599b:
	inc bc                                           ; $599b: $03
	and b                                            ; $599c: $a0
	inc bc                                           ; $599d: $03
	and b                                            ; $599e: $a0
	inc bc                                           ; $599f: $03
	and b                                            ; $59a0: $a0
	inc bc                                           ; $59a1: $03
	and b                                            ; $59a2: $a0
	inc bc                                           ; $59a3: $03
	and b                                            ; $59a4: $a0
	inc sp                                           ; $59a5: $33
	and b                                            ; $59a6: $a0
	ld bc, $0130                                     ; $59a7: $01 $30 $01
	jr nc, jr_051_59ac                               ; $59aa: $30 $00

jr_051_59ac:
	ret nc                                           ; $59ac: $d0

	inc bc                                           ; $59ad: $03
	and b                                            ; $59ae: $a0
	inc bc                                           ; $59af: $03
	and b                                            ; $59b0: $a0
	inc bc                                           ; $59b1: $03
	and b                                            ; $59b2: $a0
	inc bc                                           ; $59b3: $03
	and b                                            ; $59b4: $a0

jr_051_59b5:
	inc bc                                           ; $59b5: $03
	and b                                            ; $59b6: $a0
	inc bc                                           ; $59b7: $03
	and b                                            ; $59b8: $a0
	rra                                              ; $59b9: $1f
	and b                                            ; $59ba: $a0
	ld bc, $0130                                     ; $59bb: $01 $30 $01
	jr nc, jr_051_59c0                               ; $59be: $30 $00

jr_051_59c0:
	ret nc                                           ; $59c0: $d0

	inc bc                                           ; $59c1: $03
	and b                                            ; $59c2: $a0
	inc bc                                           ; $59c3: $03
	and b                                            ; $59c4: $a0
	inc bc                                           ; $59c5: $03
	and b                                            ; $59c6: $a0
	inc bc                                           ; $59c7: $03
	and b                                            ; $59c8: $a0
	inc bc                                           ; $59c9: $03
	and b                                            ; $59ca: $a0
	inc bc                                           ; $59cb: $03
	and b                                            ; $59cc: $a0
	scf                                              ; $59cd: $37
	and b                                            ; $59ce: $a0
	ld bc, $0130                                     ; $59cf: $01 $30 $01
	jr nc, jr_051_59d4                               ; $59d2: $30 $00

jr_051_59d4:
	ret nc                                           ; $59d4: $d0

	inc bc                                           ; $59d5: $03
	and b                                            ; $59d6: $a0
	inc bc                                           ; $59d7: $03
	and b                                            ; $59d8: $a0
	inc bc                                           ; $59d9: $03
	and b                                            ; $59da: $a0
	inc bc                                           ; $59db: $03
	and b                                            ; $59dc: $a0
	inc bc                                           ; $59dd: $03
	and b                                            ; $59de: $a0
	inc bc                                           ; $59df: $03
	and b                                            ; $59e0: $a0
	dec hl                                           ; $59e1: $2b
	and b                                            ; $59e2: $a0
	ld bc, $0130                                     ; $59e3: $01 $30 $01
	jr nc, jr_051_59e8                               ; $59e6: $30 $00

jr_051_59e8:
	ret nc                                           ; $59e8: $d0

	inc bc                                           ; $59e9: $03
	and b                                            ; $59ea: $a0
	inc bc                                           ; $59eb: $03
	and b                                            ; $59ec: $a0
	inc bc                                           ; $59ed: $03
	and b                                            ; $59ee: $a0
	inc bc                                           ; $59ef: $03
	and b                                            ; $59f0: $a0
	inc bc                                           ; $59f1: $03
	and b                                            ; $59f2: $a0
	inc bc                                           ; $59f3: $03
	and b                                            ; $59f4: $a0
	dec hl                                           ; $59f5: $2b
	and b                                            ; $59f6: $a0
	dec d                                            ; $59f7: $15
	nop                                              ; $59f8: $00
	sbc h                                            ; $59f9: $9c
	inc sp                                           ; $59fa: $33
	inc [hl]                                         ; $59fb: $34
	ld b, h                                          ; $59fc: $44

jr_051_59fd:
	ld l, e                                          ; $59fd: $6b
	db $fd                                           ; $59fe: $fd
	scf                                              ; $59ff: $37
	or $9d                                           ; $5a00: $f6 $9d
	ld b, h                                          ; $5a02: $44
	ld b, e                                          ; $5a03: $43
	ld h, a                                          ; $5a04: $67
	db $fd                                           ; $5a05: $fd
	scf                                              ; $5a06: $37
	or $03                                           ; $5a07: $f6 $03
	call nz, $ce43                                   ; $5a09: $c4 $43 $ce
	ld d, l                                          ; $5a0c: $55
	ld bc, $9bff                                     ; $5a0d: $01 $ff $9b
	ld a, a                                          ; $5a10: $7f
	nop                                              ; $5a11: $00
	ld b, b                                          ; $5a12: $40
	ccf                                              ; $5a13: $3f
	ld e, a                                          ; $5a14: $5f
	cp $ff                                           ; $5a15: $fe $ff
	sbc [hl]                                         ; $5a17: $9e
	rst $38                                          ; $5a18: $ff
	ld [hl], a                                       ; $5a19: $77
	db $fd                                           ; $5a1a: $fd
	ld h, e                                          ; $5a1b: $63
	cp $99                                           ; $5a1c: $fe $99
	inc bc                                           ; $5a1e: $03
	ld bc, $03ff                                     ; $5a1f: $01 $ff $03
	inc bc                                           ; $5a22: $03
	rst $38                                          ; $5a23: $ff
	ld e, a                                          ; $5a24: $5f
	cp $f9                                           ; $5a25: $fe $f9
	sub a                                            ; $5a27: $97
	db $10                                           ; $5a28: $10
	ld h, e                                          ; $5a29: $63
	ld [$0073], sp                                   ; $5a2a: $08 $73 $00
	ld a, e                                          ; $5a2d: $7b
	jr nz, @+$7d                                     ; $5a2e: $20 $7b

	ld sp, hl                                        ; $5a30: $f9
	sub a                                            ; $5a31: $97
	ld b, a                                          ; $5a32: $47
	add b                                            ; $5a33: $80
	jr z, jr_051_59fd                                ; $5a34: $28 $c7

	nop                                              ; $5a36: $00
	rst AddAOntoHL                                          ; $5a37: $ef
	add d                                            ; $5a38: $82
	rst AddAOntoHL                                          ; $5a39: $ef
	ld sp, hl                                        ; $5a3a: $f9
	sub a                                            ; $5a3b: $97
	ld [hl+], a                                      ; $5a3c: $22
	nop                                              ; $5a3d: $00
	add b                                            ; $5a3e: $80
	ld [hl+], a                                      ; $5a3f: $22
	ld [$00a2], sp                                   ; $5a40: $08 $a2 $00
	xor d                                            ; $5a43: $aa
	inc bc                                           ; $5a44: $03
	and b                                            ; $5a45: $a0
	inc bc                                           ; $5a46: $03
	and b                                            ; $5a47: $a0
	inc bc                                           ; $5a48: $03
	and b                                            ; $5a49: $a0
	inc bc                                           ; $5a4a: $03
	and b                                            ; $5a4b: $a0
	inc bc                                           ; $5a4c: $03
	and b                                            ; $5a4d: $a0
	inc bc                                           ; $5a4e: $03
	and b                                            ; $5a4f: $a0
	rra                                              ; $5a50: $1f
	and b                                            ; $5a51: $a0
	ld d, a                                          ; $5a52: $57
	db $e4                                           ; $5a53: $e4
	ld [hl], e                                       ; $5a54: $73
	ldh [$5b], a                                     ; $5a55: $e0 $5b
	db $e4                                           ; $5a57: $e4
	ld [hl], e                                       ; $5a58: $73
	add b                                            ; $5a59: $80
	ld c, e                                          ; $5a5a: $4b
	cp $9c                                           ; $5a5b: $fe $9c
	jr nz, jr_051_5aba                               ; $5a5d: $20 $5b

	nop                                              ; $5a5f: $00
	ld e, e                                          ; $5a60: $5b
	cp $7f                                           ; $5a61: $fe $7f
	ldh a, [c]                                       ; $5a63: $f2
	sbc h                                            ; $5a64: $9c
	add d                                            ; $5a65: $82
	ld l, l                                          ; $5a66: $6d
	nop                                              ; $5a67: $00
	ld a, e                                          ; $5a68: $7b
	cp $9b                                           ; $5a69: $fe $9b
	and d                                            ; $5a6b: $a2
	ld l, l                                          ; $5a6c: $6d
	nop                                              ; $5a6d: $00
	rst GetHLinHL                                          ; $5a6e: $cf
	ld a, e                                          ; $5a6f: $7b
	add h                                            ; $5a70: $84
	ld [hl], a                                       ; $5a71: $77
	db $f4                                           ; $5a72: $f4
	sbc d                                            ; $5a73: $9a
	xor d                                            ; $5a74: $aa
	inc d                                            ; $5a75: $14
	xor d                                            ; $5a76: $aa
	nop                                              ; $5a77: $00
	cp [hl]                                          ; $5a78: $be
	ld l, a                                          ; $5a79: $6f
	cp $9b                                           ; $5a7a: $fe $9b
	ld [$00be], sp                                   ; $5a7c: $08 $be $00
	or [hl]                                          ; $5a7f: $b6
	inc bc                                           ; $5a80: $03
	and b                                            ; $5a81: $a0
	inc bc                                           ; $5a82: $03
	and b                                            ; $5a83: $a0
	inc bc                                           ; $5a84: $03
	and b                                            ; $5a85: $a0
	inc bc                                           ; $5a86: $03
	and b                                            ; $5a87: $a0
	inc bc                                           ; $5a88: $03
	and b                                            ; $5a89: $a0
	inc bc                                           ; $5a8a: $03
	and b                                            ; $5a8b: $a0
	rra                                              ; $5a8c: $1f
	and b                                            ; $5a8d: $a0
	ld d, a                                          ; $5a8e: $57
	db $e4                                           ; $5a8f: $e4
	sbc h                                            ; $5a90: $9c
	rst $38                                          ; $5a91: $ff
	ld a, a                                          ; $5a92: $7f
	rst $38                                          ; $5a93: $ff
	ld d, e                                          ; $5a94: $53
	db $e4                                           ; $5a95: $e4
	db $dd                                           ; $5a96: $dd
	rst $38                                          ; $5a97: $ff
	ld d, a                                          ; $5a98: $57
	add h                                            ; $5a99: $84
	db $dd                                           ; $5a9a: $dd
	rst $38                                          ; $5a9b: $ff
	ld a, [hl]                                       ; $5a9c: $7e
	ld c, h                                          ; $5a9d: $4c
	ld a, a                                          ; $5a9e: $7f
	cp $9b                                           ; $5a9f: $fe $9b
	ld [$737b], sp                                   ; $5aa1: $08 $7b $73
	ld [hl], e                                       ; $5aa4: $73
	ld hl, sp+$73                                    ; $5aa5: $f8 $73
	add b                                            ; $5aa7: $80
	rst SubAFromDE                                          ; $5aa8: $df
	ld l, l                                          ; $5aa9: $6d
	ld hl, sp-$65                                    ; $5aaa: $f8 $9b
	or [hl]                                          ; $5aac: $b6
	inc d                                            ; $5aad: $14
	or [hl]                                          ; $5aae: $b6
	nop                                              ; $5aaf: $00
	sbc $a2                                          ; $5ab0: $de $a2
	ld sp, hl                                        ; $5ab2: $f9
	inc bc                                           ; $5ab3: $03
	and b                                            ; $5ab4: $a0
	inc bc                                           ; $5ab5: $03
	and b                                            ; $5ab6: $a0
	inc bc                                           ; $5ab7: $03
	and b                                            ; $5ab8: $a0
	inc bc                                           ; $5ab9: $03

jr_051_5aba:
	and b                                            ; $5aba: $a0
	inc bc                                           ; $5abb: $03
	and b                                            ; $5abc: $a0
	inc bc                                           ; $5abd: $03
	and b                                            ; $5abe: $a0
	rra                                              ; $5abf: $1f
	and b                                            ; $5ac0: $a0
	ld bc, $0130                                     ; $5ac1: $01 $30 $01
	jr nc, jr_051_5ac6                               ; $5ac4: $30 $00

jr_051_5ac6:
	ret nc                                           ; $5ac6: $d0

	inc bc                                           ; $5ac7: $03
	and b                                            ; $5ac8: $a0
	inc bc                                           ; $5ac9: $03
	and b                                            ; $5aca: $a0
	inc bc                                           ; $5acb: $03
	and b                                            ; $5acc: $a0
	inc bc                                           ; $5acd: $03
	and b                                            ; $5ace: $a0
	inc bc                                           ; $5acf: $03
	and b                                            ; $5ad0: $a0
	inc bc                                           ; $5ad1: $03
	and b                                            ; $5ad2: $a0
	dec hl                                           ; $5ad3: $2b
	and b                                            ; $5ad4: $a0
	ld bc, $0130                                     ; $5ad5: $01 $30 $01
	jr nc, jr_051_5ada                               ; $5ad8: $30 $00

jr_051_5ada:
	ret nc                                           ; $5ada: $d0

	inc bc                                           ; $5adb: $03
	and b                                            ; $5adc: $a0
	inc bc                                           ; $5add: $03
	and b                                            ; $5ade: $a0
	inc bc                                           ; $5adf: $03
	and b                                            ; $5ae0: $a0
	inc bc                                           ; $5ae1: $03
	and b                                            ; $5ae2: $a0
	inc bc                                           ; $5ae3: $03
	and b                                            ; $5ae4: $a0
	inc bc                                           ; $5ae5: $03
	and b                                            ; $5ae6: $a0
	daa                                              ; $5ae7: $27
	and b                                            ; $5ae8: $a0
	ld bc, $0130                                     ; $5ae9: $01 $30 $01
	jr nc, jr_051_5aee                               ; $5aec: $30 $00

jr_051_5aee:
	ret nc                                           ; $5aee: $d0

	inc bc                                           ; $5aef: $03
	and b                                            ; $5af0: $a0
	inc bc                                           ; $5af1: $03
	and b                                            ; $5af2: $a0
	inc bc                                           ; $5af3: $03
	and b                                            ; $5af4: $a0
	inc bc                                           ; $5af5: $03
	and b                                            ; $5af6: $a0
	inc bc                                           ; $5af7: $03
	and b                                            ; $5af8: $a0
	inc bc                                           ; $5af9: $03
	and b                                            ; $5afa: $a0
	dec hl                                           ; $5afb: $2b
	and b                                            ; $5afc: $a0
	ld bc, $0130                                     ; $5afd: $01 $30 $01
	jr nc, jr_051_5b02                               ; $5b00: $30 $00

jr_051_5b02:
	ret nc                                           ; $5b02: $d0

	inc bc                                           ; $5b03: $03
	and b                                            ; $5b04: $a0
	inc bc                                           ; $5b05: $03
	and b                                            ; $5b06: $a0
	inc bc                                           ; $5b07: $03
	and b                                            ; $5b08: $a0
	inc bc                                           ; $5b09: $03
	and b                                            ; $5b0a: $a0
	inc bc                                           ; $5b0b: $03
	and b                                            ; $5b0c: $a0
	inc bc                                           ; $5b0d: $03
	and b                                            ; $5b0e: $a0
	cpl                                              ; $5b0f: $2f
	and b                                            ; $5b10: $a0
	ld bc, $0130                                     ; $5b11: $01 $30 $01
	jr nc, jr_051_5b16                               ; $5b14: $30 $00

jr_051_5b16:
	ret nc                                           ; $5b16: $d0

	inc bc                                           ; $5b17: $03
	and b                                            ; $5b18: $a0
	inc bc                                           ; $5b19: $03
	and b                                            ; $5b1a: $a0
	inc bc                                           ; $5b1b: $03
	and b                                            ; $5b1c: $a0
	inc bc                                           ; $5b1d: $03
	and b                                            ; $5b1e: $a0
	inc bc                                           ; $5b1f: $03
	and b                                            ; $5b20: $a0
	inc bc                                           ; $5b21: $03
	and b                                            ; $5b22: $a0
	dec hl                                           ; $5b23: $2b
	and b                                            ; $5b24: $a0
	ld bc, $0130                                     ; $5b25: $01 $30 $01
	jr nc, jr_051_5b2a                               ; $5b28: $30 $00

jr_051_5b2a:
	ret nc                                           ; $5b2a: $d0

	inc bc                                           ; $5b2b: $03
	and b                                            ; $5b2c: $a0
	inc bc                                           ; $5b2d: $03
	and b                                            ; $5b2e: $a0
	inc bc                                           ; $5b2f: $03
	and b                                            ; $5b30: $a0
	inc bc                                           ; $5b31: $03
	and b                                            ; $5b32: $a0
	inc bc                                           ; $5b33: $03
	and b                                            ; $5b34: $a0
	inc bc                                           ; $5b35: $03
	and b                                            ; $5b36: $a0
	dec hl                                           ; $5b37: $2b
	and b                                            ; $5b38: $a0
	ld bc, $0130                                     ; $5b39: $01 $30 $01
	jr nc, jr_051_5b3e                               ; $5b3c: $30 $00

jr_051_5b3e:
	ret nc                                           ; $5b3e: $d0

	inc bc                                           ; $5b3f: $03
	and b                                            ; $5b40: $a0
	inc bc                                           ; $5b41: $03
	and b                                            ; $5b42: $a0
	inc bc                                           ; $5b43: $03
	and b                                            ; $5b44: $a0
	inc bc                                           ; $5b45: $03
	and b                                            ; $5b46: $a0
	inc bc                                           ; $5b47: $03
	and b                                            ; $5b48: $a0
	inc bc                                           ; $5b49: $03
	and b                                            ; $5b4a: $a0
	dec hl                                           ; $5b4b: $2b
	and b                                            ; $5b4c: $a0
	ld bc, $0130                                     ; $5b4d: $01 $30 $01
	jr nc, jr_051_5b52                               ; $5b50: $30 $00

jr_051_5b52:
	ret nc                                           ; $5b52: $d0

	inc bc                                           ; $5b53: $03
	and b                                            ; $5b54: $a0
	inc bc                                           ; $5b55: $03
	and b                                            ; $5b56: $a0
	inc bc                                           ; $5b57: $03
	and b                                            ; $5b58: $a0
	inc bc                                           ; $5b59: $03
	and b                                            ; $5b5a: $a0
	inc bc                                           ; $5b5b: $03
	and b                                            ; $5b5c: $a0
	inc bc                                           ; $5b5d: $03
	and b                                            ; $5b5e: $a0
	dec hl                                           ; $5b5f: $2b
	and b                                            ; $5b60: $a0
	dec d                                            ; $5b61: $15
	nop                                              ; $5b62: $00
	sbc h                                            ; $5b63: $9c
	inc sp                                           ; $5b64: $33
	inc [hl]                                         ; $5b65: $34
	ld b, h                                          ; $5b66: $44
	ld l, e                                          ; $5b67: $6b
	db $fd                                           ; $5b68: $fd
	scf                                              ; $5b69: $37
	or $9d                                           ; $5b6a: $f6 $9d
	ld b, h                                          ; $5b6c: $44
	ld b, e                                          ; $5b6d: $43
	ld h, a                                          ; $5b6e: $67
	db $fd                                           ; $5b6f: $fd
	scf                                              ; $5b70: $37
	or $03                                           ; $5b71: $f6 $03
	call nz, $ce43                                   ; $5b73: $c4 $43 $ce
	sub d                                            ; $5b76: $92
	add c                                            ; $5b77: $81
	jp c, $9aff                                      ; $5b78: $da $ff $9a

	ei                                               ; $5b7b: $fb
	nop                                              ; $5b7c: $00
	inc bc                                           ; $5b7d: $03
	rlca                                             ; $5b7e: $07
	rlca                                             ; $5b7f: $07
	sbc $0f                                          ; $5b80: $de $0f
	sbc [hl]                                         ; $5b82: $9e
	dec bc                                           ; $5b83: $0b
	db $db                                           ; $5b84: $db
	rst $38                                          ; $5b85: $ff
	sbc h                                            ; $5b86: $9c
	rst SubAFromBC                                          ; $5b87: $e7
	jp Jump_051_6bfe                                 ; $5b88: $c3 $fe $6b


	ld hl, sp-$27                                    ; $5b8b: $f8 $d9
	rst $38                                          ; $5b8d: $ff
	sub a                                            ; $5b8e: $97
	nop                                              ; $5b8f: $00
	call nz, $fcfc                                   ; $5b90: $c4 $fc $fc
	ld hl, sp-$08                                    ; $5b93: $f8 $f8
	ldh a, [$f0]                                     ; $5b95: $f0 $f0
	ld h, e                                          ; $5b97: $63
	ldh a, [$fb]                                     ; $5b98: $f0 $fb
	sbc [hl]                                         ; $5b9a: $9e
	ld bc, $ffda                                     ; $5b9b: $01 $da $ff
	sbc [hl]                                         ; $5b9e: $9e
	add e                                            ; $5b9f: $83
	ei                                               ; $5ba0: $fb
	sbc l                                            ; $5ba1: $9d
	ld a, h                                          ; $5ba2: $7c
	rst JumpTable                                          ; $5ba3: $c7
	ld c, e                                          ; $5ba4: $4b
	ldh [$9e], a                                     ; $5ba5: $e0 $9e
	nop                                              ; $5ba7: $00
	inc bc                                           ; $5ba8: $03
	and b                                            ; $5ba9: $a0
	inc bc                                           ; $5baa: $03
	and b                                            ; $5bab: $a0
	inc bc                                           ; $5bac: $03
	and b                                            ; $5bad: $a0
	inc bc                                           ; $5bae: $03
	and b                                            ; $5baf: $a0
	inc bc                                           ; $5bb0: $03
	and b                                            ; $5bb1: $a0
	inc bc                                           ; $5bb2: $03
	and b                                            ; $5bb3: $a0
	rra                                              ; $5bb4: $1f
	and b                                            ; $5bb5: $a0
	add a                                            ; $5bb6: $87
	ei                                               ; $5bb7: $fb
	ld sp, hl                                        ; $5bb8: $f9
	cp $ff                                           ; $5bb9: $fe $ff
	db $fd                                           ; $5bbb: $fd
	db $fc                                           ; $5bbc: $fc
	cp $ff                                           ; $5bbd: $fe $ff
	dec bc                                           ; $5bbf: $0b
	add hl, bc                                       ; $5bc0: $09
	ld b, $07                                        ; $5bc1: $06 $07
	and l                                            ; $5bc3: $a5
	call nc, $b96a                                   ; $5bc4: $d4 $6a $b9
	add c                                            ; $5bc7: $81
	dec c                                            ; $5bc8: $0d
	ld e, $2a                                        ; $5bc9: $1e $2a
	ld b, $11                                        ; $5bcb: $06 $11
	ld [hl], d                                       ; $5bcd: $72
	adc h                                            ; $5bce: $8c
	ld l, a                                          ; $5bcf: $6f
	ld hl, sp-$70                                    ; $5bd0: $f8 $90
	ld [hl], e                                       ; $5bd2: $73
	adc a                                            ; $5bd3: $8f
	rst $38                                          ; $5bd4: $ff
	ld a, a                                          ; $5bd5: $7f
	ld a, a                                          ; $5bd6: $7f
	or a                                             ; $5bd7: $b7
	sub e                                            ; $5bd8: $93
	dec bc                                           ; $5bd9: $0b
	dec c                                            ; $5bda: $0d
	ld b, a                                          ; $5bdb: $47
	ldh [rBCPS], a                                   ; $5bdc: $e0 $68
	ld c, h                                          ; $5bde: $4c
	db $fc                                           ; $5bdf: $fc
	cp $77                                           ; $5be0: $fe $77
	res 3, h                                         ; $5be2: $cb $9c
	cp $fc                                           ; $5be4: $fe $fc
	db $fd                                           ; $5be6: $fd
	ld [hl], a                                       ; $5be7: $77
	ret nc                                           ; $5be8: $d0

	rst SubAFromDE                                          ; $5be9: $df
	inc bc                                           ; $5bea: $03
	adc [hl]                                         ; $5beb: $8e
	ld b, $05                                        ; $5bec: $06 $05
	dec b                                            ; $5bee: $05
	ld b, $03                                        ; $5bef: $06 $03
	ld bc, $0001                                     ; $5bf1: $01 $01 $00
	add $ab                                          ; $5bf4: $c6 $ab
	rst AddAOntoHL                                          ; $5bf6: $ef
	add $10                                          ; $5bf7: $c6 $10
	cp e                                             ; $5bf9: $bb
	add e                                            ; $5bfa: $83
	ld bc, $7bee                                     ; $5bfb: $01 $ee $7b
	ld hl, sp-$64                                    ; $5bfe: $f8 $9c
	add hl, sp                                       ; $5c00: $39
	cp e                                             ; $5c01: $bb
	rst $38                                          ; $5c02: $ff
	ld a, e                                          ; $5c03: $7b
	rst GetHLinHL                                          ; $5c04: $cf
	rst SubAFromDE                                          ; $5c05: $df
	ld a, a                                          ; $5c06: $7f
	rst SubAFromDE                                          ; $5c07: $df
	rst $38                                          ; $5c08: $ff
	rst SubAFromDE                                          ; $5c09: $df
	add b                                            ; $5c0a: $80
	sbc c                                            ; $5c0b: $99
	ret nz                                           ; $5c0c: $c0

	ld b, b                                          ; $5c0d: $40
	ld b, b                                          ; $5c0e: $40
	ret nz                                           ; $5c0f: $c0

	add b                                            ; $5c10: $80
	nop                                              ; $5c11: $00
	inc bc                                           ; $5c12: $03
	and b                                            ; $5c13: $a0
	inc bc                                           ; $5c14: $03
	and b                                            ; $5c15: $a0
	inc bc                                           ; $5c16: $03
	and b                                            ; $5c17: $a0
	inc bc                                           ; $5c18: $03
	and b                                            ; $5c19: $a0
	inc bc                                           ; $5c1a: $03
	and b                                            ; $5c1b: $a0
	inc bc                                           ; $5c1c: $03
	and b                                            ; $5c1d: $a0
	dec de                                           ; $5c1e: $1b
	and b                                            ; $5c1f: $a0
	ld a, e                                          ; $5c20: $7b
	xor [hl]                                         ; $5c21: $ae
	ld a, a                                          ; $5c22: $7f
	ldh [$8a], a                                     ; $5c23: $e0 $8a
	db $fc                                           ; $5c25: $fc
	rst $38                                          ; $5c26: $ff
	ld e, b                                          ; $5c27: $58
	inc a                                            ; $5c28: $3c
	rlca                                             ; $5c29: $07
	ld b, $05                                        ; $5c2a: $06 $05
	inc b                                            ; $5c2c: $04
	inc b                                            ; $5c2d: $04
	inc bc                                           ; $5c2e: $03
	push af                                          ; $5c2f: $f5
	jp z, $e5c4                                      ; $5c30: $ca $c4 $e5

	adc a                                            ; $5c33: $8f
	sbc a                                            ; $5c34: $9f
	ld a, a                                          ; $5c35: $7f
	rst $38                                          ; $5c36: $ff
	ld [hl], a                                       ; $5c37: $77
	ld c, d                                          ; $5c38: $4a
	ld b, h                                          ; $5c39: $44
	ld [hl], a                                       ; $5c3a: $77
	ld hl, sp-$64                                    ; $5c3b: $f8 $9c
	cp $eb                                           ; $5c3d: $fe $eb
	db $fd                                           ; $5c3f: $fd
	db $db                                           ; $5c40: $db
	rst $38                                          ; $5c41: $ff
	sub a                                            ; $5c42: $97
	cp a                                             ; $5c43: $bf
	sub a                                            ; $5c44: $97
	jp $eee1                                         ; $5c45: $c3 $e1 $ee


	and $ca                                          ; $5c48: $e6 $ca
	ld [hl], b                                       ; $5c4a: $70
	ld b, [hl]                                       ; $5c4b: $46
	ld h, b                                          ; $5c4c: $60
	sbc l                                            ; $5c4d: $9d
	add e                                            ; $5c4e: $83
	rst SubAFromHL                                          ; $5c4f: $d7
	db $db                                           ; $5c50: $db
	rst $38                                          ; $5c51: $ff
	sbc h                                            ; $5c52: $9c
	add d                                            ; $5c53: $82
	ld a, h                                          ; $5c54: $7c
	ld a, h                                          ; $5c55: $7c
	ld d, [hl]                                       ; $5c56: $56
	ld d, b                                          ; $5c57: $50
	ld d, [hl]                                       ; $5c58: $56
	ld b, b                                          ; $5c59: $40
	inc bc                                           ; $5c5a: $03
	and b                                            ; $5c5b: $a0
	inc bc                                           ; $5c5c: $03
	and b                                            ; $5c5d: $a0
	inc bc                                           ; $5c5e: $03
	and b                                            ; $5c5f: $a0
	inc bc                                           ; $5c60: $03
	and b                                            ; $5c61: $a0
	inc bc                                           ; $5c62: $03
	and b                                            ; $5c63: $a0
	inc bc                                           ; $5c64: $03
	and b                                            ; $5c65: $a0
	dec hl                                           ; $5c66: $2b
	and b                                            ; $5c67: $a0
	ld bc, $0130                                     ; $5c68: $01 $30 $01
	jr nc, jr_051_5c6d                               ; $5c6b: $30 $00

jr_051_5c6d:
	ret nc                                           ; $5c6d: $d0

	inc bc                                           ; $5c6e: $03
	and b                                            ; $5c6f: $a0
	inc bc                                           ; $5c70: $03
	and b                                            ; $5c71: $a0
	inc bc                                           ; $5c72: $03
	and b                                            ; $5c73: $a0
	inc bc                                           ; $5c74: $03
	and b                                            ; $5c75: $a0
	inc bc                                           ; $5c76: $03
	and b                                            ; $5c77: $a0
	inc bc                                           ; $5c78: $03
	and b                                            ; $5c79: $a0
	daa                                              ; $5c7a: $27
	and b                                            ; $5c7b: $a0
	ld bc, $0130                                     ; $5c7c: $01 $30 $01
	jr nc, jr_051_5c81                               ; $5c7f: $30 $00

jr_051_5c81:
	ret nc                                           ; $5c81: $d0

	inc bc                                           ; $5c82: $03
	and b                                            ; $5c83: $a0
	inc bc                                           ; $5c84: $03
	and b                                            ; $5c85: $a0
	inc bc                                           ; $5c86: $03
	and b                                            ; $5c87: $a0
	inc bc                                           ; $5c88: $03
	and b                                            ; $5c89: $a0
	inc bc                                           ; $5c8a: $03
	and b                                            ; $5c8b: $a0
	inc bc                                           ; $5c8c: $03
	and b                                            ; $5c8d: $a0
	daa                                              ; $5c8e: $27
	and b                                            ; $5c8f: $a0
	ld bc, $0130                                     ; $5c90: $01 $30 $01
	jr nc, jr_051_5c95                               ; $5c93: $30 $00

jr_051_5c95:
	ret nc                                           ; $5c95: $d0

	inc bc                                           ; $5c96: $03
	and b                                            ; $5c97: $a0
	inc bc                                           ; $5c98: $03
	and b                                            ; $5c99: $a0
	inc bc                                           ; $5c9a: $03
	and b                                            ; $5c9b: $a0
	inc bc                                           ; $5c9c: $03
	and b                                            ; $5c9d: $a0
	inc bc                                           ; $5c9e: $03
	and b                                            ; $5c9f: $a0
	inc bc                                           ; $5ca0: $03
	and b                                            ; $5ca1: $a0
	rla                                              ; $5ca2: $17
	and b                                            ; $5ca3: $a0
	ld bc, $0130                                     ; $5ca4: $01 $30 $01
	jr nc, jr_051_5ca9                               ; $5ca7: $30 $00

jr_051_5ca9:
	ret nc                                           ; $5ca9: $d0

	inc bc                                           ; $5caa: $03
	and b                                            ; $5cab: $a0
	inc bc                                           ; $5cac: $03
	and b                                            ; $5cad: $a0
	inc bc                                           ; $5cae: $03
	and b                                            ; $5caf: $a0
	inc bc                                           ; $5cb0: $03
	and b                                            ; $5cb1: $a0
	inc bc                                           ; $5cb2: $03
	and b                                            ; $5cb3: $a0
	inc bc                                           ; $5cb4: $03
	and b                                            ; $5cb5: $a0
	ld b, a                                          ; $5cb6: $47
	and b                                            ; $5cb7: $a0
	ld bc, $0130                                     ; $5cb8: $01 $30 $01
	jr nc, jr_051_5cbd                               ; $5cbb: $30 $00

jr_051_5cbd:
	ret nc                                           ; $5cbd: $d0

	inc bc                                           ; $5cbe: $03
	and b                                            ; $5cbf: $a0
	inc bc                                           ; $5cc0: $03
	and b                                            ; $5cc1: $a0
	inc bc                                           ; $5cc2: $03
	and b                                            ; $5cc3: $a0
	inc bc                                           ; $5cc4: $03
	and b                                            ; $5cc5: $a0
	inc bc                                           ; $5cc6: $03
	and b                                            ; $5cc7: $a0
	inc bc                                           ; $5cc8: $03
	and b                                            ; $5cc9: $a0
	daa                                              ; $5cca: $27
	and b                                            ; $5ccb: $a0
	ld bc, $0130                                     ; $5ccc: $01 $30 $01
	jr nc, jr_051_5cd1                               ; $5ccf: $30 $00

jr_051_5cd1:
	ret nc                                           ; $5cd1: $d0

	inc bc                                           ; $5cd2: $03
	and b                                            ; $5cd3: $a0
	inc bc                                           ; $5cd4: $03
	and b                                            ; $5cd5: $a0
	inc bc                                           ; $5cd6: $03
	and b                                            ; $5cd7: $a0
	inc bc                                           ; $5cd8: $03
	and b                                            ; $5cd9: $a0
	inc bc                                           ; $5cda: $03
	and b                                            ; $5cdb: $a0
	inc bc                                           ; $5cdc: $03
	and b                                            ; $5cdd: $a0
	cpl                                              ; $5cde: $2f
	and b                                            ; $5cdf: $a0
	ld bc, $0130                                     ; $5ce0: $01 $30 $01
	jr nc, jr_051_5ce5                               ; $5ce3: $30 $00

jr_051_5ce5:
	ret nc                                           ; $5ce5: $d0

	inc bc                                           ; $5ce6: $03
	and b                                            ; $5ce7: $a0
	inc bc                                           ; $5ce8: $03
	and b                                            ; $5ce9: $a0
	inc bc                                           ; $5cea: $03
	and b                                            ; $5ceb: $a0
	inc bc                                           ; $5cec: $03
	and b                                            ; $5ced: $a0
	inc bc                                           ; $5cee: $03
	and b                                            ; $5cef: $a0
	inc bc                                           ; $5cf0: $03
	and b                                            ; $5cf1: $a0
	daa                                              ; $5cf2: $27
	and b                                            ; $5cf3: $a0
	ld bc, $0130                                     ; $5cf4: $01 $30 $01
	jr nc, jr_051_5cf9                               ; $5cf7: $30 $00

jr_051_5cf9:
	ret nc                                           ; $5cf9: $d0

	inc bc                                           ; $5cfa: $03
	and b                                            ; $5cfb: $a0
	inc bc                                           ; $5cfc: $03
	and b                                            ; $5cfd: $a0
	inc bc                                           ; $5cfe: $03
	and b                                            ; $5cff: $a0
	inc bc                                           ; $5d00: $03
	and b                                            ; $5d01: $a0
	inc bc                                           ; $5d02: $03
	and b                                            ; $5d03: $a0
	inc bc                                           ; $5d04: $03
	and b                                            ; $5d05: $a0
	cpl                                              ; $5d06: $2f
	and b                                            ; $5d07: $a0
	dec d                                            ; $5d08: $15
	nop                                              ; $5d09: $00
	sbc h                                            ; $5d0a: $9c
	inc sp                                           ; $5d0b: $33
	inc [hl]                                         ; $5d0c: $34
	ld b, h                                          ; $5d0d: $44
	ld l, e                                          ; $5d0e: $6b
	db $fd                                           ; $5d0f: $fd
	scf                                              ; $5d10: $37
	or $9d                                           ; $5d11: $f6 $9d
	ld b, h                                          ; $5d13: $44
	ld b, e                                          ; $5d14: $43
	ld h, a                                          ; $5d15: $67
	db $fd                                           ; $5d16: $fd
	scf                                              ; $5d17: $37
	or $03                                           ; $5d18: $f6 $03
	call nz, $ce43                                   ; $5d1a: $c4 $43 $ce
	cp a                                             ; $5d1d: $bf
	nop                                              ; $5d1e: $00
	sbc h                                            ; $5d1f: $9c
	nop                                              ; $5d20: $00
	ld bc, $5b7e                                     ; $5d21: $01 $7e $5b
	cp $99                                           ; $5d24: $fe $99
	nop                                              ; $5d26: $00
	rst $38                                          ; $5d27: $ff
	rst $38                                          ; $5d28: $ff
	ld bc, $7f81                                     ; $5d29: $01 $81 $7f
	ld e, a                                          ; $5d2c: $5f
	cp $df                                           ; $5d2d: $fe $df
	rst $38                                          ; $5d2f: $ff
	inc bc                                           ; $5d30: $03
	ldh [$03], a                                     ; $5d31: $e0 $03
	ldh [$03], a                                     ; $5d33: $e0 $03
	ldh [$03], a                                     ; $5d35: $e0 $03
	ldh [$03], a                                     ; $5d37: $e0 $03
	ldh [$03], a                                     ; $5d39: $e0 $03
	ldh [$03], a                                     ; $5d3b: $e0 $03
	ldh [$03], a                                     ; $5d3d: $e0 $03
	ldh [$27], a                                     ; $5d3f: $e0 $27
	ldh [$03], a                                     ; $5d41: $e0 $03
	ret nc                                           ; $5d43: $d0

	inc bc                                           ; $5d44: $03
	ldh [$03], a                                     ; $5d45: $e0 $03
	ldh [$03], a                                     ; $5d47: $e0 $03
	ldh [$03], a                                     ; $5d49: $e0 $03
	ldh [$03], a                                     ; $5d4b: $e0 $03
	ldh [$03], a                                     ; $5d4d: $e0 $03
	ldh [$03], a                                     ; $5d4f: $e0 $03
	ldh [$03], a                                     ; $5d51: $e0 $03
	ldh [$2b], a                                     ; $5d53: $e0 $2b
	ldh [$03], a                                     ; $5d55: $e0 $03
	ret nc                                           ; $5d57: $d0

	inc bc                                           ; $5d58: $03
	ldh [$03], a                                     ; $5d59: $e0 $03
	ldh [$03], a                                     ; $5d5b: $e0 $03
	ldh [$03], a                                     ; $5d5d: $e0 $03
	ldh [$03], a                                     ; $5d5f: $e0 $03
	ldh [$03], a                                     ; $5d61: $e0 $03
	ldh [$03], a                                     ; $5d63: $e0 $03
	ldh [$03], a                                     ; $5d65: $e0 $03
	ldh [rSB], a                                     ; $5d67: $e0 $01
	add b                                            ; $5d69: $80
	inc bc                                           ; $5d6a: $03
	ret nc                                           ; $5d6b: $d0

	inc bc                                           ; $5d6c: $03
	ldh [$73], a                                     ; $5d6d: $e0 $73
	ldh [$e0], a                                     ; $5d6f: $e0 $e0
	ld h, c                                          ; $5d71: $61
	inc bc                                           ; $5d72: $03
	jr nz, jr_051_5d78                               ; $5d73: $20 $03

	ldh [rSB], a                                     ; $5d75: $e0 $01
	add b                                            ; $5d77: $80

jr_051_5d78:
	inc bc                                           ; $5d78: $03
	or b                                             ; $5d79: $b0
	rla                                              ; $5d7a: $17
	or b                                             ; $5d7b: $b0
	ldh [$62], a                                     ; $5d7c: $e0 $62
	inc bc                                           ; $5d7e: $03
	jr nz, jr_051_5d84                               ; $5d7f: $20 $03

	ldh [rSB], a                                     ; $5d81: $e0 $01
	add b                                            ; $5d83: $80

jr_051_5d84:
	inc bc                                           ; $5d84: $03
	or b                                             ; $5d85: $b0
	ld bc, $e080                                     ; $5d86: $01 $80 $e0
	ld h, l                                          ; $5d89: $65
	inc bc                                           ; $5d8a: $03
	jr nz, jr_051_5d90                               ; $5d8b: $20 $03

	ldh [rSB], a                                     ; $5d8d: $e0 $01
	add b                                            ; $5d8f: $80

jr_051_5d90:
	inc bc                                           ; $5d90: $03
	or b                                             ; $5d91: $b0
	ld bc, $e080                                     ; $5d92: $01 $80 $e0
	or [hl]                                          ; $5d95: $b6
	ldh [$b2], a                                     ; $5d96: $e0 $b2
	inc bc                                           ; $5d98: $03
	jr nz, jr_051_5d9e                               ; $5d99: $20 $03

	ldh [rSB], a                                     ; $5d9b: $e0 $01
	add b                                            ; $5d9d: $80

jr_051_5d9e:
	inc bc                                           ; $5d9e: $03
	or b                                             ; $5d9f: $b0
	ld bc, $e080                                     ; $5da0: $01 $80 $e0
	ld h, l                                          ; $5da3: $65
	inc bc                                           ; $5da4: $03
	jr nz, jr_051_5daa                               ; $5da5: $20 $03

	ldh [rSB], a                                     ; $5da7: $e0 $01
	add b                                            ; $5da9: $80

jr_051_5daa:
	inc bc                                           ; $5daa: $03
	or b                                             ; $5dab: $b0
	ld bc, $e080                                     ; $5dac: $01 $80 $e0
	ld h, a                                          ; $5daf: $67
	inc bc                                           ; $5db0: $03
	jr nz, jr_051_5db6                               ; $5db1: $20 $03

	ldh [rSB], a                                     ; $5db3: $e0 $01
	add b                                            ; $5db5: $80

jr_051_5db6:
	inc bc                                           ; $5db6: $03
	or b                                             ; $5db7: $b0
	inc bc                                           ; $5db8: $03
	ldh [$03], a                                     ; $5db9: $e0 $03
	ldh [$03], a                                     ; $5dbb: $e0 $03
	ldh [$03], a                                     ; $5dbd: $e0 $03
	ldh [$03], a                                     ; $5dbf: $e0 $03
	ldh [$03], a                                     ; $5dc1: $e0 $03
	ldh [$03], a                                     ; $5dc3: $e0 $03
	ldh [$03], a                                     ; $5dc5: $e0 $03
	ldh [rSB], a                                     ; $5dc7: $e0 $01
	add b                                            ; $5dc9: $80
	inc bc                                           ; $5dca: $03
	or b                                             ; $5dcb: $b0
	inc bc                                           ; $5dcc: $03
	ldh [$03], a                                     ; $5dcd: $e0 $03
	ldh [$03], a                                     ; $5dcf: $e0 $03
	ldh [$03], a                                     ; $5dd1: $e0 $03
	ldh [$03], a                                     ; $5dd3: $e0 $03
	ldh [$03], a                                     ; $5dd5: $e0 $03
	ldh [$03], a                                     ; $5dd7: $e0 $03
	ldh [rAUD3LEN], a                                ; $5dd9: $e0 $1b
	ldh [rAUD1SWEEP], a                              ; $5ddb: $e0 $10
	nop                                              ; $5ddd: $00
	pop bc                                           ; $5dde: $c1
	inc sp                                           ; $5ddf: $33
	sbc [hl]                                         ; $5de0: $9e
	scf                                              ; $5de1: $37
	db $dd                                           ; $5de2: $dd
	ld [hl], a                                       ; $5de3: $77
	sbc [hl]                                         ; $5de4: $9e
	ld [hl], e                                       ; $5de5: $73
	inc bc                                           ; $5de6: $03
	or $33                                           ; $5de7: $f6 $33
	or $cf                                           ; $5de9: $f6 $cf
	inc sp                                           ; $5deb: $33
	ld [hl], $8a                                     ; $5dec: $36 $8a
	reti                                             ; $5dee: $d9


	di                                               ; $5def: $f3
	reti                                             ; $5df0: $d9


	inc c                                            ; $5df1: $0c
	reti                                             ; $5df2: $d9


	ld sp, hl                                        ; $5df3: $f9
	reti                                             ; $5df4: $d9


	ld b, $9b                                        ; $5df5: $06 $9b
	ei                                               ; $5df7: $fb
	cp l                                             ; $5df8: $bd
	ei                                               ; $5df9: $fb
	db $dd                                           ; $5dfa: $dd
	ld [hl], a                                       ; $5dfb: $77
	db $fc                                           ; $5dfc: $fc
	ld sp, hl                                        ; $5dfd: $f9
	reti                                             ; $5dfe: $d9


	adc [hl]                                         ; $5dff: $8e
	reti                                             ; $5e00: $d9


	ld [hl], c                                       ; $5e01: $71
	reti                                             ; $5e02: $d9


	add b                                            ; $5e03: $80
	ldh [$d9], a                                     ; $5e04: $e0 $d9
	add b                                            ; $5e06: $80
	ld bc, $0502                                     ; $5e07: $01 $02 $05
	dec bc                                           ; $5e0a: $0b
	ld d, $14                                        ; $5e0b: $16 $14
	add hl, hl                                       ; $5e0d: $29
	jr nc, jr_051_5e11                               ; $5e0e: $30 $01

	inc bc                                           ; $5e10: $03

jr_051_5e11:
	rlca                                             ; $5e11: $07
	rrca                                             ; $5e12: $0f
	rra                                              ; $5e13: $1f
	rra                                              ; $5e14: $1f
	ccf                                              ; $5e15: $3f
	ccf                                              ; $5e16: $3f
	dec l                                            ; $5e17: $2d
	ld e, d                                          ; $5e18: $5a
	cp l                                             ; $5e19: $bd
	dec sp                                           ; $5e1a: $3b
	ld h, a                                          ; $5e1b: $67
	adc l                                            ; $5e1c: $8d
	add hl, de                                       ; $5e1d: $19
	inc hl                                           ; $5e1e: $23
	or $ed                                           ; $5e1f: $f6 $ed
	db $d3                                           ; $5e21: $d3
	rst SubAFromBC                                          ; $5e22: $e7
	rst SubAFromDE                                          ; $5e23: $df
	cp $ec                                           ; $5e24: $fe $ec
	sub d                                            ; $5e26: $92
	ret c                                            ; $5e27: $d8

	ldh [hLCDCIntHandlerIdx], a                                     ; $5e28: $e0 $81
	rra                                              ; $5e2a: $1f
	rst $38                                          ; $5e2b: $ff
	rst $38                                          ; $5e2c: $ff
	db $db                                           ; $5e2d: $db
	or [hl]                                          ; $5e2e: $b6
	or [hl]                                          ; $5e2f: $b6
	ld a, a                                          ; $5e30: $7f
	rst $38                                          ; $5e31: $ff
	cp $e0                                           ; $5e32: $fe $e0
	db $fc                                           ; $5e34: $fc
	sbc $ff                                          ; $5e35: $de $ff
	rst SubAFromDE                                          ; $5e37: $df
	ld a, a                                          ; $5e38: $7f
	sbc e                                            ; $5e39: $9b
	ld e, a                                          ; $5e3a: $5f
	ld e, l                                          ; $5e3b: $5d
	rst $38                                          ; $5e3c: $ff
	rst $38                                          ; $5e3d: $ff
	ld a, [$ffdc]                                    ; $5e3e: $fa $dc $ff
	sbc l                                            ; $5e41: $9d
	cp [hl]                                          ; $5e42: $be
	rst SubAFromDE                                          ; $5e43: $df
	ld h, a                                          ; $5e44: $67
	ldh a, [$9c]                                     ; $5e45: $f0 $9c
	ld a, [hl]                                       ; $5e47: $7e
	rrca                                             ; $5e48: $0f
	rst FarCall                                          ; $5e49: $f7
	sbc $ff                                          ; $5e4a: $de $ff
	sub a                                            ; $5e4c: $97
	rst AddAOntoHL                                          ; $5e4d: $ef
	ld [hl], a                                       ; $5e4e: $77
	ldh a, [c]                                       ; $5e4f: $f2
	ld sp, hl                                        ; $5e50: $f9
	db $fd                                           ; $5e51: $fd
	ld c, $03                                        ; $5e52: $0e $03
	ld bc, $99fd                                     ; $5e54: $01 $fd $99
	add b                                            ; $5e57: $80
	add [hl]                                         ; $5e58: $86
	ld c, b                                          ; $5e59: $48
	ret nc                                           ; $5e5a: $d0

	ldh a, [$fc]                                     ; $5e5b: $f0 $fc
	ld a, e                                          ; $5e5d: $7b
	ld hl, sp-$66                                    ; $5e5e: $f8 $9a
	add c                                            ; $5e60: $81
	rst JumpTable                                          ; $5e61: $c7
	rst GetHLinHL                                          ; $5e62: $cf
	ld l, a                                          ; $5e63: $6f
	rra                                              ; $5e64: $1f
	ld [hl], a                                       ; $5e65: $77
	rst AddAOntoHL                                          ; $5e66: $ef
	rst $38                                          ; $5e67: $ff

jr_051_5e68:
	rst SubAFromDE                                          ; $5e68: $df
	jr nz, jr_051_5e68                               ; $5e69: $20 $fd

	db $dd                                           ; $5e6b: $dd
	ret nz                                           ; $5e6c: $c0

	db $ed                                           ; $5e6d: $ed
	sbc e                                            ; $5e6e: $9b
	ld [bc], a                                       ; $5e6f: $02
	rlca                                             ; $5e70: $07
	inc bc                                           ; $5e71: $03
	rrca                                             ; $5e72: $0f
	ld [hl], e                                       ; $5e73: $73
	ld h, h                                          ; $5e74: $64
	db $fc                                           ; $5e75: $fc
	adc c                                            ; $5e76: $89
	ld [hl], a                                       ; $5e77: $77
	ld [hl], h                                       ; $5e78: $74
	adc [hl]                                         ; $5e79: $8e
	ld a, [$f8f8]                                    ; $5e7a: $fa $f8 $f8
	nop                                              ; $5e7d: $00
	nop                                              ; $5e7e: $00
	rrca                                             ; $5e7f: $0f
	ldh a, [rP1]                                     ; $5e80: $f0 $00
	inc b                                            ; $5e82: $04
	ld b, $06                                        ; $5e83: $06 $06
	nop                                              ; $5e85: $00
	nop                                              ; $5e86: $00
	ldh a, [$f4]                                     ; $5e87: $f0 $f4
	ld [hl], $13                                     ; $5e89: $36 $13
	ld d, e                                          ; $5e8b: $53

Jump_051_5e8c:
	ld a, e                                          ; $5e8c: $7b
	ld a, e                                          ; $5e8d: $7b
	cp c                                             ; $5e8e: $b9
	sbc e                                            ; $5e8f: $9b
	ld a, b                                          ; $5e90: $78
	inc b                                            ; $5e91: $04
	ld [hl+], a                                      ; $5e92: $22
	ld [hl+], a                                      ; $5e93: $22
	ld l, a                                          ; $5e94: $6f
	db $dd                                           ; $5e95: $dd
	ld a, a                                          ; $5e96: $7f
	db $f4                                           ; $5e97: $f4
	ld h, e                                          ; $5e98: $63
	db $10                                           ; $5e99: $10
	sbc [hl]                                         ; $5e9a: $9e
	di                                               ; $5e9b: $f3
	jp c, $9ee3                                      ; $5e9c: $da $e3 $9e

	inc c                                            ; $5e9f: $0c
	jp c, $df1c                                      ; $5ea0: $da $1c $df

	ld sp, hl                                        ; $5ea3: $f9
	sbc h                                            ; $5ea4: $9c
	reti                                             ; $5ea5: $d9


	ld sp, hl                                        ; $5ea6: $f9
	cp c                                             ; $5ea7: $b9
	ld a, e                                          ; $5ea8: $7b
	db $fc                                           ; $5ea9: $fc
	reti                                             ; $5eaa: $d9


	ld b, $9d                                        ; $5eab: $06 $9d
	cp e                                             ; $5ead: $bb
	db $dd                                           ; $5eae: $dd
	ld l, a                                          ; $5eaf: $6f
	cp $02                                           ; $5eb0: $fe $02
	ret nz                                           ; $5eb2: $c0

	ldh [$da], a                                     ; $5eb3: $e0 $da
	sub h                                            ; $5eb5: $94
	ld [hl+], a                                      ; $5eb6: $22
	ld b, l                                          ; $5eb7: $45
	ld b, l                                          ; $5eb8: $45
	adc e                                            ; $5eb9: $8b
	adc d                                            ; $5eba: $8a
	sub d                                            ; $5ebb: $92
	sub h                                            ; $5ebc: $94
	sub h                                            ; $5ebd: $94
	ccf                                              ; $5ebe: $3f
	ld a, a                                          ; $5ebf: $7f
	ld a, a                                          ; $5ec0: $7f
	call c, $83ff                                    ; $5ec1: $dc $ff $83
	rst JumpTable                                          ; $5ec4: $c7
	dec e                                            ; $5ec5: $1d
	sbc c                                            ; $5ec6: $99
	ld sp, $6931                                     ; $5ec7: $31 $31 $69
	ld l, e                                          ; $5eca: $6b
	ld c, d                                          ; $5ecb: $4a
	or b                                             ; $5ecc: $b0
	ldh [c], a                                       ; $5ecd: $e2
	and $ce                                          ; $5ece: $e6 $ce
	adc $9e                                          ; $5ed0: $ce $9e
	sbc h                                            ; $5ed2: $9c
	cp l                                             ; $5ed3: $bd
	ld a, [bc]                                       ; $5ed4: $0a
	ld b, h                                          ; $5ed5: $44
	ld e, b                                          ; $5ed6: $58
	ld a, d                                          ; $5ed7: $7a
	xor d                                            ; $5ed8: $aa
	or d                                             ; $5ed9: $b2
	or c                                             ; $5eda: $b1
	sub c                                            ; $5edb: $91
	ld h, h                                          ; $5edc: $64
	ld l, [hl]                                       ; $5edd: $6e
	xor $cc                                          ; $5ede: $ee $cc
	sbc $dc                                          ; $5ee0: $de $dc
	sub l                                            ; $5ee2: $95
	db $fd                                           ; $5ee3: $fd
	dec d                                            ; $5ee4: $15
	add hl, hl                                       ; $5ee5: $29
	xor d                                            ; $5ee6: $aa
	jp hl                                            ; $5ee7: $e9


	ld l, d                                          ; $5ee8: $6a
	or [hl]                                          ; $5ee9: $b6
	sub l                                            ; $5eea: $95
	sub l                                            ; $5eeb: $95
	ld c, b                                          ; $5eec: $48
	sbc $44                                          ; $5eed: $de $44
	sub b                                            ; $5eef: $90
	push de                                          ; $5ef0: $d5
	db $dd                                           ; $5ef1: $dd
	rst $38                                          ; $5ef2: $ff
	rst $38                                          ; $5ef3: $ff
	ld d, c                                          ; $5ef4: $51
	jr z, @-$58                                      ; $5ef5: $28 $a6

	add d                                            ; $5ef7: $82
	add d                                            ; $5ef8: $82
	sub e                                            ; $5ef9: $93
	sbc l                                            ; $5efa: $9d
	sub l                                            ; $5efb: $95
	adc d                                            ; $5efc: $8a
	jp $de41                                         ; $5efd: $c3 $41 $de


	ld h, l                                          ; $5f00: $65
	sub c                                            ; $5f01: $91
	ld h, a                                          ; $5f02: $67
	ld l, a                                          ; $5f03: $6f
	ld b, l                                          ; $5f04: $45
	ld sp, $5882                                     ; $5f05: $31 $82 $58
	ld d, b                                          ; $5f08: $50
	ld d, l                                          ; $5f09: $55
	ld [hl], a                                       ; $5f0a: $77
	ld d, a                                          ; $5f0b: $57
	ld [hl+], a                                      ; $5f0c: $22
	ld [bc], a                                       ; $5f0d: $02
	ld de, $de91                                     ; $5f0e: $11 $91 $de
	sbc c                                            ; $5f11: $99
	adc h                                            ; $5f12: $8c
	cp c                                             ; $5f13: $b9
	or e                                             ; $5f14: $b3
	ld a, a                                          ; $5f15: $7f
	cp b                                             ; $5f16: $b8
	adc b                                            ; $5f17: $88
	ld e, b                                          ; $5f18: $58
	ld b, h                                          ; $5f19: $44
	xor h                                            ; $5f1a: $ac
	xor h                                            ; $5f1b: $ac
	ld c, a                                          ; $5f1c: $4f
	ccf                                              ; $5f1d: $3f
	rra                                              ; $5f1e: $1f
	rra                                              ; $5f1f: $1f
	adc a                                            ; $5f20: $8f
	adc a                                            ; $5f21: $8f
	rst JumpTable                                          ; $5f22: $c7
	rst JumpTable                                          ; $5f23: $c7
	jr nz, @-$1e                                     ; $5f24: $20 $e0

	ld a, d                                          ; $5f26: $7a
	ld c, l                                          ; $5f27: $4d
	halt                                             ; $5f28: $76
	call nz, $f090                                   ; $5f29: $c4 $90 $f0
	ldh [$e0], a                                     ; $5f2c: $e0 $e0
	pop hl                                           ; $5f2e: $e1
	ldh [$e0], a                                     ; $5f2f: $e0 $e0
	ldh [c], a                                       ; $5f31: $e2
	nop                                              ; $5f32: $00
	nop                                              ; $5f33: $00
	ld h, $24                                        ; $5f34: $26 $24
	sbc h                                            ; $5f36: $9c
	or $01                                           ; $5f37: $f6 $01
	ld hl, $ee7b                                     ; $5f39: $21 $7b $ee
	add b                                            ; $5f3c: $80
	ld b, b                                          ; $5f3d: $40
	ld h, b                                          ; $5f3e: $60
	ld bc, $0222                                     ; $5f3f: $01 $22 $02
	ld b, $0e                                        ; $5f42: $06 $0e
	ld e, $18                                        ; $5f44: $1e $18
	dec a                                            ; $5f46: $3d
	daa                                              ; $5f47: $27
	dec d                                            ; $5f48: $15
	ld b, h                                          ; $5f49: $44
	dec c                                            ; $5f4a: $0d

jr_051_5f4b:
	dec c                                            ; $5f4b: $0d
	ld c, l                                          ; $5f4c: $4d
	rst GetHLinHL                                          ; $5f4d: $cf
	ret z                                            ; $5f4e: $c8

	sbc b                                            ; $5f4f: $98
	ld [hl+], a                                      ; $5f50: $22
	jr nz, jr_051_5f4b                               ; $5f51: $20 $f8

	ldh a, [$78]                                     ; $5f53: $f0 $78
	add b                                            ; $5f55: $80
	rst GetHLinHL                                          ; $5f56: $cf
	dec sp                                           ; $5f57: $3b
	and b                                            ; $5f58: $a0
	ld d, a                                          ; $5f59: $57
	ld c, [hl]                                       ; $5f5a: $4e
	inc e                                            ; $5f5b: $1c
	add c                                            ; $5f5c: $81
	cp h                                             ; $5f5d: $bc
	ld a, a                                          ; $5f5e: $7f
	jr nc, @-$3a                                     ; $5f5f: $30 $c4

	ld e, [hl]                                       ; $5f61: $5e
	add b                                            ; $5f62: $80
	db $fc                                           ; $5f63: $fc
	db $fc                                           ; $5f64: $fc
	db $e4                                           ; $5f65: $e4
	add sp, $01                                      ; $5f66: $e8 $01
	inc bc                                           ; $5f68: $03
	ld b, c                                          ; $5f69: $41
	add h                                            ; $5f6a: $84
	inc bc                                           ; $5f6b: $03
	ld b, e                                          ; $5f6c: $43
	ld a, [de]                                       ; $5f6d: $1a
	ld a, $fc                                        ; $5f6e: $3e $fc
	ld a, h                                          ; $5f70: $7c
	ld c, $5b                                        ; $5f71: $0e $5b
	ret nz                                           ; $5f73: $c0

	add b                                            ; $5f74: $80
	and b                                            ; $5f75: $a0
	and b                                            ; $5f76: $a0
	or b                                             ; $5f77: $b0
	or b                                             ; $5f78: $b0
	cp b                                             ; $5f79: $b8
	cp b                                             ; $5f7a: $b8
	ld [hl], d                                       ; $5f7b: $72
	ld [hl], e                                       ; $5f7c: $73
	sbc $c0                                          ; $5f7d: $de $c0
	reti                                             ; $5f7f: $d9


	db $e3                                           ; $5f80: $e3
	reti                                             ; $5f81: $d9


	inc e                                            ; $5f82: $1c
	sbc e                                            ; $5f83: $9b
	cp c                                             ; $5f84: $b9
	reti                                             ; $5f85: $d9


	reti                                             ; $5f86: $d9


	cp c                                             ; $5f87: $b9
	ld [hl], a                                       ; $5f88: $77
	cp $62                                           ; $5f89: $fe $62
	ret nz                                           ; $5f8b: $c0

	sbc b                                            ; $5f8c: $98
	sbc l                                            ; $5f8d: $9d
	cp e                                             ; $5f8e: $bb
	db $dd                                           ; $5f8f: $dd
	sbc e                                            ; $5f90: $9b
	cp l                                             ; $5f91: $bd
	sbc e                                            ; $5f92: $9b
	sbc l                                            ; $5f93: $9d
	ld h, d                                          ; $5f94: $62

Jump_051_5f95:
	ret nz                                           ; $5f95: $c0

Jump_051_5f96:
	jp c, Jump_051_5e8c                              ; $5f96: $da $8c $5e

	ret nz                                           ; $5f99: $c0

	db $fd                                           ; $5f9a: $fd
	sbc l                                            ; $5f9b: $9d
	ld b, b                                          ; $5f9c: $40
	db $10                                           ; $5f9d: $10
	halt                                             ; $5f9e: $76
	ld l, h                                          ; $5f9f: $6c
	ld [hl], $b8                                     ; $5fa0: $36 $b8
	db $db                                           ; $5fa2: $db
	ld bc, $02df                                     ; $5fa3: $01 $df $02
	db $db                                           ; $5fa6: $db
	ld bc, $03df                                     ; $5fa7: $01 $df $03
	sub a                                            ; $5faa: $97
	jr jr_051_5fd5                                   ; $5fab: $18 $28

	add hl, hl                                       ; $5fad: $29
	add hl, hl                                       ; $5fae: $29
	xor l                                            ; $5faf: $ad
	cp h                                             ; $5fb0: $bc
	cp h                                             ; $5fb1: $bc
	cp [hl]                                          ; $5fb2: $be
	db $dd                                           ; $5fb3: $dd
	rst $38                                          ; $5fb4: $ff
	sbc [hl]                                         ; $5fb5: $9e
	ld a, a                                          ; $5fb6: $7f
	sbc $6f                                          ; $5fb7: $de $6f
	sub h                                            ; $5fb9: $94
	ld d, d                                          ; $5fba: $52
	ld [de], a                                       ; $5fbb: $12
	ld [de], a                                       ; $5fbc: $12
	ld de, $9111                                     ; $5fbd: $11 $11 $91
	sub e                                            ; $5fc0: $93
	sub e                                            ; $5fc1: $93
	cp l                                             ; $5fc2: $bd
	db $fd                                           ; $5fc3: $fd
	db $fd                                           ; $5fc4: $fd
	call c, $8aff                                    ; $5fc5: $dc $ff $8a
	or a                                             ; $5fc8: $b7
	and l                                            ; $5fc9: $a5
	and a                                            ; $5fca: $a7
	and a                                            ; $5fcb: $a7
	ld l, c                                          ; $5fcc: $69
	ld d, a                                          ; $5fcd: $57
	cp a                                             ; $5fce: $bf
	rst $38                                          ; $5fcf: $ff
	ld sp, hl                                        ; $5fd0: $f9
	ei                                               ; $5fd1: $fb
	ld a, [$fffc]                                    ; $5fd2: $fa $fc $ff

jr_051_5fd5:
	rst $38                                          ; $5fd5: $ff
	ld hl, sp+$60                                    ; $5fd6: $f8 $60
	or l                                             ; $5fd8: $b5
	or l                                             ; $5fd9: $b5
	or $ee                                           ; $5fda: $f6 $ee
	cp $dc                                           ; $5fdc: $fe $dc
	rst $38                                          ; $5fde: $ff
	sub l                                            ; $5fdf: $95
	rst SubAFromDE                                          ; $5fe0: $df
	cp e                                             ; $5fe1: $bb
	or e                                             ; $5fe2: $b3
	and e                                            ; $5fe3: $a3
	ld [bc], a                                       ; $5fe4: $02
	nop                                              ; $5fe5: $00
	ld d, l                                          ; $5fe6: $55
	ld c, l                                          ; $5fe7: $4d
	ld c, c                                          ; $5fe8: $49
	db $db                                           ; $5fe9: $db
	sbc $ff                                          ; $5fea: $de $ff
	sbc l                                            ; $5fec: $9d
	or $ef                                           ; $5fed: $f6 $ef
	sbc $ff                                          ; $5fef: $de $ff
	add b                                            ; $5ff1: $80
	db $ed                                           ; $5ff2: $ed
	ld l, c                                          ; $5ff3: $69
	ld b, b                                          ; $5ff4: $40
	rrca                                             ; $5ff5: $0f
	dec [hl]                                         ; $5ff6: $35
	ld [hl-], a                                      ; $5ff7: $32
	ld [hl], a                                       ; $5ff8: $77
	rst AddAOntoHL                                          ; $5ff9: $ef
	xor a                                            ; $5ffa: $af
	sub $f5                                          ; $5ffb: $d6 $f5
	rst FarCall                                          ; $5ffd: $f7
	ei                                               ; $5ffe: $fb
	rst $38                                          ; $5fff: $ff
	rst $38                                          ; $6000: $ff
	cp a                                             ; $6001: $bf
	rst $38                                          ; $6002: $ff
	ld a, a                                          ; $6003: $7f
	cpl                                              ; $6004: $2f
	rrca                                             ; $6005: $0f
	and h                                            ; $6006: $a4
	cp b                                             ; $6007: $b8
	xor b                                            ; $6008: $a8
	ld d, b                                          ; $6009: $50
	jr nc, jr_051_605c                               ; $600a: $30 $50

	sub b                                            ; $600c: $90
	db $10                                           ; $600d: $10
	rst GetHLinHL                                          ; $600e: $cf

jr_051_600f:
	rst GetHLinHL                                          ; $600f: $cf
	rst SubAFromDE                                          ; $6010: $df
	sub c                                            ; $6011: $91
	cp a                                             ; $6012: $bf
	rst AddAOntoHL                                          ; $6013: $ef
	rst GetHLinHL                                          ; $6014: $cf
	adc a                                            ; $6015: $8f
	rrca                                             ; $6016: $0f
	nop                                              ; $6017: $00
	ld c, $01                                        ; $6018: $0e $01
	add hl, bc                                       ; $601a: $09
	db $10                                           ; $601b: $10
	add hl, bc                                       ; $601c: $09
	ld c, $1d                                        ; $601d: $0e $1d
	db $e3                                           ; $601f: $e3
	ld a, d                                          ; $6020: $7a
	jp $eb80                                         ; $6021: $c3 $80 $eb


	rst SubAFromBC                                          ; $6024: $e7
	pop hl                                           ; $6025: $e1
	db $e3                                           ; $6026: $e3
	jr z, jr_051_6085                                ; $6027: $28 $5c

	cp a                                             ; $6029: $bf
	ld b, a                                          ; $602a: $47
	add [hl]                                         ; $602b: $86
	rst AddAOntoHL                                          ; $602c: $ef
	xor a                                            ; $602d: $af
	rst $38                                          ; $602e: $ff
	ld e, e                                          ; $602f: $5b
	ei                                               ; $6030: $fb
	ld l, h                                          ; $6031: $6c
	adc c                                            ; $6032: $89
	rst JumpTable                                          ; $6033: $c7
	jr z, jr_051_600f                                ; $6034: $28 $d9

	rst $38                                          ; $6036: $ff
	sub h                                            ; $6037: $94
	add l                                            ; $6038: $85
	or h                                             ; $6039: $b4
	ld [hl], h                                       ; $603a: $74
	ldh a, [c]                                       ; $603b: $f2
	ret                                              ; $603c: $c9


	ld [$61a4], a                                    ; $603d: $ea $a4 $61
	ld h, b                                          ; $6040: $60
	ld b, b                                          ; $6041: $40
	rst SubAFromDE                                          ; $6042: $df
	ret nz                                           ; $6043: $c0

	sbc d                                            ; $6044: $9a
	ld [hl], b                                       ; $6045: $70
	sub b                                            ; $6046: $90
	jp c, $0916                                      ; $6047: $da $16 $09

	ld [hl], c                                       ; $604a: $71
	dec de                                           ; $604b: $1b
	sbc l                                            ; $604c: $9d
	sub d                                            ; $604d: $92
	adc c                                            ; $604e: $89
	ld a, [$7195]                                    ; $604f: $fa $95 $71
	ld h, d                                          ; $6052: $62
	inc l                                            ; $6053: $2c
	inc b                                            ; $6054: $04
	dec b                                            ; $6055: $05
	add hl, de                                       ; $6056: $19
	db $e3                                           ; $6057: $e3
	cp l                                             ; $6058: $bd
	adc a                                            ; $6059: $8f
	dec e                                            ; $605a: $1d
	ld a, e                                          ; $605b: $7b

jr_051_605c:
	dec e                                            ; $605c: $1d
	ld a, a                                          ; $605d: $7f
	ld [hl-], a                                      ; $605e: $32
	sbc e                                            ; $605f: $9b
	inc bc                                           ; $6060: $03
	inc a                                            ; $6061: $3c
	ld a, [hl]                                       ; $6062: $7e
	ld h, b                                          ; $6063: $60
	ld a, c                                          ; $6064: $79
	cpl                                              ; $6065: $2f
	ld a, [hl]                                       ; $6066: $7e
	cp l                                             ; $6067: $bd
	ld a, [hl]                                       ; $6068: $7e
	cp b                                             ; $6069: $b8
	sbc c                                            ; $606a: $99
	sbc a                                            ; $606b: $9f
	ldh [rP1], a                                     ; $606c: $e0 $00
	rst $38                                          ; $606e: $ff
	ld b, b                                          ; $606f: $40
	ld b, b                                          ; $6070: $40
	jp c, $9ee3                                      ; $6071: $da $e3 $9e

	ldh [c], a                                       ; $6074: $e2
	reti                                             ; $6075: $d9


	inc e                                            ; $6076: $1c
	halt                                             ; $6077: $76
	call nz, Call_051_599b                           ; $6078: $c4 $9b $59
	cp c                                             ; $607b: $b9
	ld d, c                                          ; $607c: $51
	or c                                             ; $607d: $b1
	db $db                                           ; $607e: $db
	ld b, $df                                        ; $607f: $06 $df
	ld c, $7e                                        ; $6081: $0e $7e
	add $6f                                          ; $6083: $c6 $6f

jr_051_6085:
	cp $f9                                           ; $6085: $fe $f9
	rst SubAFromDE                                          ; $6087: $df
	adc h                                            ; $6088: $8c
	db $db                                           ; $6089: $db
	adc l                                            ; $608a: $8d
	rst SubAFromDE                                          ; $608b: $df
	ld [hl], c                                       ; $608c: $71
	db $db                                           ; $608d: $db
	ld [hl], b                                       ; $608e: $70
	sbc l                                            ; $608f: $9d
	ld b, h                                          ; $6090: $44
	ld de, $fe73                                     ; $6091: $11 $73 $fe
	sbc [hl]                                         ; $6094: $9e
	ld a, [hl+]                                      ; $6095: $2a
	ld e, l                                          ; $6096: $5d
	ld a, b                                          ; $6097: $78
	ld [hl], e                                       ; $6098: $73
	ldh a, [$9e]                                     ; $6099: $f0 $9e
	xor d                                            ; $609b: $aa
	ld h, b                                          ; $609c: $60
	db $e4                                           ; $609d: $e4
	rst SubAFromDE                                          ; $609e: $df
	inc bc                                           ; $609f: $03
	sbc c                                            ; $60a0: $99
	inc de                                           ; $60a1: $13
	ld b, a                                          ; $60a2: $47
	inc de                                           ; $60a3: $13
	ld b, l                                          ; $60a4: $45
	xor l                                            ; $60a5: $ad
	inc bc                                           ; $60a6: $03
	call c, $df02                                    ; $60a7: $dc $02 $df
	ld b, $92                                        ; $60aa: $06 $92
	sbc [hl]                                         ; $60ac: $9e
	cp l                                             ; $60ad: $bd
	db $ed                                           ; $60ae: $ed
	db $ed                                           ; $60af: $ed
	cp l                                             ; $60b0: $bd
	ld [hl], h                                       ; $60b1: $74
	halt                                             ; $60b2: $76
	or [hl]                                          ; $60b3: $b6
	ld l, a                                          ; $60b4: $6f
	ld c, a                                          ; $60b5: $4f
	rra                                              ; $60b6: $1f
	rra                                              ; $60b7: $1f
	ld e, a                                          ; $60b8: $5f
	sbc $df                                          ; $60b9: $de $df
	sub [hl]                                         ; $60bb: $96
	ld d, a                                          ; $60bc: $57
	ld e, a                                          ; $60bd: $5f
	rst $38                                          ; $60be: $ff
	rst FarCall                                          ; $60bf: $f7
	or $cb                                           ; $60c0: $f6 $cb
	db $eb                                           ; $60c2: $eb
	rst FarCall                                          ; $60c3: $f7
	cp $de                                           ; $60c4: $fe $de
	db $fc                                           ; $60c6: $fc
	add [hl]                                         ; $60c7: $86
	sbc l                                            ; $60c8: $9d
	cp h                                             ; $60c9: $bc
	cp h                                             ; $60ca: $bc
	adc h                                            ; $60cb: $8c
	ld a, d                                          ; $60cc: $7a
	ld [hl], a                                       ; $60cd: $77
	rst SubAFromDE                                          ; $60ce: $df
	cp b                                             ; $60cf: $b8
	ld sp, hl                                        ; $60d0: $f9
	rst $38                                          ; $60d1: $ff
	push hl                                          ; $60d2: $e5
	ld a, [$8fc7]                                    ; $60d3: $fa $c7 $8f
	ccf                                              ; $60d6: $3f
	ld [hl], c                                       ; $60d7: $71
	db $fd                                           ; $60d8: $fd
	ld e, a                                          ; $60d9: $5f
	rla                                              ; $60da: $17
	ld c, $ff                                        ; $60db: $0e $ff
	cp a                                             ; $60dd: $bf
	cp $7c                                           ; $60de: $fe $7c
	or b                                             ; $60e0: $b0
	ld a, e                                          ; $60e1: $7b
	ld c, b                                          ; $60e2: $48
	ld a, d                                          ; $60e3: $7a
	db $10                                           ; $60e4: $10
	ld [hl], d                                       ; $60e5: $72
	ld h, h                                          ; $60e6: $64
	add b                                            ; $60e7: $80
	rst AddAOntoHL                                          ; $60e8: $ef
	ld sp, hl                                        ; $60e9: $f9
	ld a, $07                                        ; $60ea: $3e $07
	ld [bc], a                                       ; $60ec: $02
	dec c                                            ; $60ed: $0d
	nop                                              ; $60ee: $00
	add a                                            ; $60ef: $87
	rra                                              ; $60f0: $1f
	jr jr_051_60ff                                   ; $60f1: $18 $0c

	rrca                                             ; $60f3: $0f
	dec bc                                           ; $60f4: $0b
	rlca                                             ; $60f5: $07
	nop                                              ; $60f6: $00
	nop                                              ; $60f7: $00
	cp l                                             ; $60f8: $bd
	db $eb                                           ; $60f9: $eb
	rst $38                                          ; $60fa: $ff
	rst GetHLinHL                                          ; $60fb: $cf
	rla                                              ; $60fc: $17
	sbc c                                            ; $60fd: $99
	dec d                                            ; $60fe: $15

Jump_051_60ff:
jr_051_60ff:
	cp l                                             ; $60ff: $bd
	rst GetHLinHL                                          ; $6100: $cf
	rst $38                                          ; $6101: $ff
	res 3, e                                         ; $6102: $cb $9b
	dec de                                           ; $6104: $1b
	rla                                              ; $6105: $17
	rra                                              ; $6106: $1f
	sbc d                                            ; $6107: $9a
	rra                                              ; $6108: $1f
	db $10                                           ; $6109: $10
	and $ff                                          ; $610a: $e6 $ff
	ccf                                              ; $610c: $3f
	db $fd                                           ; $610d: $fd
	sbc h                                            ; $610e: $9c
	rrca                                             ; $610f: $0f
	ld hl, sp-$01                                    ; $6110: $f8 $ff
	ld [hl], b                                       ; $6112: $70
	ld d, h                                          ; $6113: $54
	ld a, a                                          ; $6114: $7f
	di                                               ; $6115: $f3
	sub l                                            ; $6116: $95
	rst $38                                          ; $6117: $ff
	rra                                              ; $6118: $1f
	dec de                                           ; $6119: $1b
	inc bc                                           ; $611a: $03
	nop                                              ; $611b: $00
	nop                                              ; $611c: $00
	pop bc                                           ; $611d: $c1
	nop                                              ; $611e: $00
	rst $38                                          ; $611f: $ff
	rst $38                                          ; $6120: $ff
	ld a, e                                          ; $6121: $7b
	pop de                                           ; $6122: $d1
	ld a, a                                          ; $6123: $7f
	ld a, [$0895]                                    ; $6124: $fa $95 $08
	and b                                            ; $6127: $a0
	rst $38                                          ; $6128: $ff
	ldh a, [c]                                       ; $6129: $f2
	dec a                                            ; $612a: $3d
	daa                                              ; $612b: $27
	dec bc                                           ; $612c: $0b
	rst $38                                          ; $612d: $ff
	rlca                                             ; $612e: $07
	ret nz                                           ; $612f: $c0

	sbc $ff                                          ; $6130: $de $ff
	sub e                                            ; $6132: $93
	rra                                              ; $6133: $1f
	rlca                                             ; $6134: $07
	pop bc                                           ; $6135: $c1
	ccf                                              ; $6136: $3f
	nop                                              ; $6137: $00
	ld d, l                                          ; $6138: $55
	xor d                                            ; $6139: $aa
	ld d, l                                          ; $613a: $55
	rst $38                                          ; $613b: $ff
	rst $38                                          ; $613c: $ff
	cp $c0                                           ; $613d: $fe $c0
	ld a, e                                          ; $613f: $7b
	rst SubAFromDE                                          ; $6140: $df
	sbc $ff                                          ; $6141: $de $ff
	sub l                                            ; $6143: $95
	ld l, l                                          ; $6144: $6d
	rst $38                                          ; $6145: $ff
	ld bc, $af57                                     ; $6146: $01 $57 $af
	ld h, b                                          ; $6149: $60
	ldh [$e0], a                                     ; $614a: $e0 $e0
	sub d                                            ; $614c: $92
	rst $38                                          ; $614d: $ff
	ld a, e                                          ; $614e: $7b
	ldh a, [$de]                                     ; $614f: $f0 $de
	ret nz                                           ; $6151: $c0

	sbc d                                            ; $6152: $9a
	ld c, a                                          ; $6153: $4f
	rst $38                                          ; $6154: $ff
	rst SubAFromDE                                          ; $6155: $df
	rst $38                                          ; $6156: $ff
	rst $38                                          ; $6157: $ff
	cp $7e                                           ; $6158: $fe $7e
	ld h, e                                          ; $615a: $63
	sbc [hl]                                         ; $615b: $9e
	ccf                                              ; $615c: $3f
	ld [hl], a                                       ; $615d: $77
	ld sp, hl                                        ; $615e: $f9
	sbc l                                            ; $615f: $9d
	nop                                              ; $6160: $00
	cp b                                             ; $6161: $b8
	ld a, c                                          ; $6162: $79
	add e                                            ; $6163: $83
	sbc [hl]                                         ; $6164: $9e
	cp e                                             ; $6165: $bb
	ld a, e                                          ; $6166: $7b
	halt                                             ; $6167: $76
	call c, $9a40                                    ; $6168: $dc $40 $9a
	ld a, a                                          ; $616b: $7f
	nop                                              ; $616c: $00
	nop                                              ; $616d: $00
	db $e3                                           ; $616e: $e3
	ldh [c], a                                       ; $616f: $e2
	ld [hl], a                                       ; $6170: $77
	cp $9d                                           ; $6171: $fe $9d
	xor $3f                                          ; $6173: $ee $3f
	db $db                                           ; $6175: $db
	inc e                                            ; $6176: $1c
	sbc d                                            ; $6177: $9a
	rra                                              ; $6178: $1f
	rst $38                                          ; $6179: $ff
	ld d, c                                          ; $617a: $51
	or c                                             ; $617b: $b1
	ld d, c                                          ; $617c: $51
	ld a, d                                          ; $617d: $7a
	ret nz                                           ; $617e: $c0

	sbc l                                            ; $617f: $9d
	rst SubAFromHL                                          ; $6180: $d7
	rst $38                                          ; $6181: $ff
	sbc $0e                                          ; $6182: $de $0e
	sbc $06                                          ; $6184: $de $06
	sbc l                                            ; $6186: $9d
	rrca                                             ; $6187: $0f
	rst $38                                          ; $6188: $ff
	ld l, [hl]                                       ; $6189: $6e
	jp nz, $bd73                                     ; $618a: $c2 $73 $bd

	ld [hl], a                                       ; $618d: $77
	add d                                            ; $618e: $82
	sbc [hl]                                         ; $618f: $9e
	rst $38                                          ; $6190: $ff
	call c, $7f8d                                    ; $6191: $dc $8d $7f
	or e                                             ; $6194: $b3
	sbc [hl]                                         ; $6195: $9e
	xor d                                            ; $6196: $aa
	call c, Call_051_7c70                            ; $6197: $dc $70 $7c
	ld a, l                                          ; $619a: $7d
	sbc d                                            ; $619b: $9a
	ret nz                                           ; $619c: $c0

Call_051_619d:
	ld d, c                                          ; $619d: $51
	ld a, [hl+]                                      ; $619e: $2a
	ld b, h                                          ; $619f: $44
	ld a, [hl+]                                      ; $61a0: $2a
	ld a, e                                          ; $61a1: $7b
	ld a, a                                          ; $61a2: $7f
	sbc [hl]                                         ; $61a3: $9e
	xor d                                            ; $61a4: $aa
	ld h, [hl]                                       ; $61a5: $66
	pop bc                                           ; $61a6: $c1
	sbc h                                            ; $61a7: $9c
	ld de, $44aa                                     ; $61a8: $11 $aa $44
	ld a, e                                          ; $61ab: $7b
	ldh a, [c]                                       ; $61ac: $f2
	ld a, a                                          ; $61ad: $7f
	cp $f9                                           ; $61ae: $fe $f9
	sub a                                            ; $61b0: $97
	inc d                                            ; $61b1: $14
	xor h                                            ; $61b2: $ac
	ld b, l                                          ; $61b3: $45
	xor l                                            ; $61b4: $ad
	ld d, l                                          ; $61b5: $55
	xor c                                            ; $61b6: $a9
	ld e, e                                          ; $61b7: $5b
	xor e                                            ; $61b8: $ab
	call c, $de07                                    ; $61b9: $dc $07 $de
	rrca                                             ; $61bc: $0f
	rst SubAFromDE                                          ; $61bd: $df
	sub [hl]                                         ; $61be: $96
	sbc c                                            ; $61bf: $99
	and a                                            ; $61c0: $a7
	daa                                              ; $61c1: $27
	cpl                                              ; $61c2: $2f
	cpl                                              ; $61c3: $2f
	ld c, a                                          ; $61c4: $4f
	ld d, a                                          ; $61c5: $57
	reti                                             ; $61c6: $d9


	rst $38                                          ; $61c7: $ff
	sub h                                            ; $61c8: $94
	rst FarCall                                          ; $61c9: $f7
	ld a, e                                          ; $61ca: $7b
	ld e, a                                          ; $61cb: $5f
	ld e, a                                          ; $61cc: $5f
	dec a                                            ; $61cd: $3d
	inc h                                            ; $61ce: $24
	sbc h                                            ; $61cf: $9c
	sub [hl]                                         ; $61d0: $96
	call c, $f0e4                                    ; $61d1: $dc $e4 $f0
	call c, Call_051_7eff                            ; $61d4: $dc $ff $7e
	call nz, $fcdf                                   ; $61d7: $c4 $df $fc
	sbc e                                            ; $61da: $9b
	cp $de                                           ; $61db: $fe $de
	rst AddAOntoHL                                          ; $61dd: $ef
	rst FarCall                                          ; $61de: $f7
	db $fd                                           ; $61df: $fd
	sub [hl]                                         ; $61e0: $96
	add b                                            ; $61e1: $80
	ldh [$f0], a                                     ; $61e2: $e0 $f0
	ld hl, sp-$79                                    ; $61e4: $f8 $87
	inc bc                                           ; $61e6: $03
	nop                                              ; $61e7: $00
	ld [bc], a                                       ; $61e8: $02
	ld [bc], a                                       ; $61e9: $02
	ld a, c                                          ; $61ea: $79
	ld a, [hl-]                                      ; $61eb: $3a
	ld [hl], c                                       ; $61ec: $71
	inc [hl]                                         ; $61ed: $34
	ld [hl], a                                       ; $61ee: $77
	db $ec                                           ; $61ef: $ec
	sub a                                            ; $61f0: $97
	ld b, b                                          ; $61f1: $40
	add b                                            ; $61f2: $80
	ld b, b                                          ; $61f3: $40
	ld b, b                                          ; $61f4: $40
	ld bc, $0583                                     ; $61f5: $01 $83 $05
	ld b, b                                          ; $61f8: $40
	ld a, d                                          ; $61f9: $7a
	ldh [c], a                                       ; $61fa: $e2
	ld a, a                                          ; $61fb: $7f
	sub d                                            ; $61fc: $92
	ld a, [hl]                                       ; $61fd: $7e
	xor b                                            ; $61fe: $a8
	sub a                                            ; $61ff: $97
	inc d                                            ; $6200: $14
	inc [hl]                                         ; $6201: $34
	inc [hl]                                         ; $6202: $34
	ld [hl], h                                       ; $6203: $74
	call c, $dbdd                                    ; $6204: $dc $dd $db
	ld d, a                                          ; $6207: $57
	db $dd                                           ; $6208: $dd
	ccf                                              ; $6209: $3f
	sbc e                                            ; $620a: $9b
	ld [hl], a                                       ; $620b: $77
	rst FarCall                                          ; $620c: $f7
	rst FarCall                                          ; $620d: $f7
	ei                                               ; $620e: $fb
	call c, Call_051_7b80                            ; $620f: $dc $80 $7b
	ret z                                            ; $6212: $c8

	call c, $9c80                                    ; $6213: $dc $80 $9c
	db $fc                                           ; $6216: $fc
	sbc a                                            ; $6217: $9f
	rrca                                             ; $6218: $0f
	db $fc                                           ; $6219: $fc
	sbc l                                            ; $621a: $9d
	inc bc                                           ; $621b: $03
	ld bc, $b472                                     ; $621c: $01 $72 $b4
	db $fd                                           ; $621f: $fd
	sub a                                            ; $6220: $97
	dec c                                            ; $6221: $0d
	ld b, $75                                        ; $6222: $06 $75
	ld h, $25                                        ; $6224: $26 $25
	ld b, [hl]                                       ; $6226: $46
	db $dd                                           ; $6227: $dd
	sbc [hl]                                         ; $6228: $9e
	ld a, e                                          ; $6229: $7b
	ld [hl], h                                       ; $622a: $74
	rst SubAFromDE                                          ; $622b: $df
	rra                                              ; $622c: $1f
	sbc h                                            ; $622d: $9c
	ccf                                              ; $622e: $3f
	cpl                                              ; $622f: $2f
	ld l, a                                          ; $6230: $6f
	ld [hl], a                                       ; $6231: $77
	ld d, h                                          ; $6232: $54
	ld [hl], a                                       ; $6233: $77
	cp $d9                                           ; $6234: $fe $d9
	rst $38                                          ; $6236: $ff
	sbc b                                            ; $6237: $98
	ld a, a                                          ; $6238: $7f
	ldh [$7e], a                                     ; $6239: $e0 $7e
	rst $38                                          ; $623b: $ff
	ld h, a                                          ; $623c: $67
	rst $38                                          ; $623d: $ff
	ld h, b                                          ; $623e: $60
	sbc $ff                                          ; $623f: $de $ff
	db $db                                           ; $6241: $db
	ldh [hDisp1_WY], a                                     ; $6242: $e0 $95
	db $fc                                           ; $6244: $fc
	inc bc                                           ; $6245: $03
	inc e                                            ; $6246: $1c
	rst $38                                          ; $6247: $ff
	add e                                            ; $6248: $83
	rst $38                                          ; $6249: $ff
	inc c                                            ; $624a: $0c
	rst SubAFromBC                                          ; $624b: $e7
	rst $38                                          ; $624c: $ff
	rst $38                                          ; $624d: $ff
	ld a, d                                          ; $624e: $7a
	ld a, e                                          ; $624f: $7b
	ld [hl], d                                       ; $6250: $72
	db $fd                                           ; $6251: $fd
	sbc d                                            ; $6252: $9a
	nop                                              ; $6253: $00
	db $fc                                           ; $6254: $fc
	ld a, $e1                                        ; $6255: $3e $e1
	ld a, $76                                        ; $6257: $3e $76
	sub d                                            ; $6259: $92
	db $fc                                           ; $625a: $fc
	rst SubAFromDE                                          ; $625b: $df
	ld hl, sp-$64                                    ; $625c: $f8 $9c
	rst $38                                          ; $625e: $ff
	dec e                                            ; $625f: $1d
	ld bc, $567b                                     ; $6260: $01 $7b $56
	sbc $ff                                          ; $6263: $de $ff
	ld [hl], e                                       ; $6265: $73
	rst SubAFromDE                                          ; $6266: $df
	sub e                                            ; $6267: $93
	ld a, [bc]                                       ; $6268: $0a
	ld d, l                                          ; $6269: $55
	ld a, [bc]                                       ; $626a: $0a
	push hl                                          ; $626b: $e5
	ldh a, [$38]                                     ; $626c: $f0 $38
	inc c                                            ; $626e: $0c
	rlca                                             ; $626f: $07
	push af                                          ; $6270: $f5
	xor d                                            ; $6271: $aa
	push af                                          ; $6272: $f5
	ld a, [$92fd]                                    ; $6273: $fa $fd $92
	xor e                                            ; $6276: $ab
	ld d, l                                          ; $6277: $55
	xor d                                            ; $6278: $aa
	ld d, b                                          ; $6279: $50
	add h                                            ; $627a: $84
	rrca                                             ; $627b: $0f
	inc bc                                           ; $627c: $03
	ld bc, $aa54                                     ; $627d: $01 $54 $aa
	ld d, l                                          ; $6280: $55
	xor a                                            ; $6281: $af
	ld a, b                                          ; $6282: $78
	cp $98                                           ; $6283: $fe $98
	push de                                          ; $6285: $d5
	ld [$1ff5], a                                    ; $6286: $ea $f5 $1f
	inc bc                                           ; $6289: $03
	nop                                              ; $628a: $00
	add b                                            ; $628b: $80
	ld [hl], a                                       ; $628c: $77
	ld [hl], b                                       ; $628d: $70
	ld a, l                                          ; $628e: $7d
	ld b, b                                          ; $628f: $40
	cp $7e                                           ; $6290: $fe $7e
	ld b, l                                          ; $6292: $45
	ld a, a                                          ; $6293: $7f
	db $f4                                           ; $6294: $f4
	sbc h                                            ; $6295: $9c
	ldh [$7c], a                                     ; $6296: $e0 $7c
	rrca                                             ; $6298: $0f
	ld l, e                                          ; $6299: $6b
	and e                                            ; $629a: $a3
	ld a, e                                          ; $629b: $7b
	ldh a, [$9b]                                     ; $629c: $f0 $9b
	ld a, [$0e1f]                                    ; $629e: $fa $1f $0e
	inc bc                                           ; $62a1: $03
	ld a, e                                          ; $62a2: $7b
	xor a                                            ; $62a3: $af
	ld sp, hl                                        ; $62a4: $f9
	sbc $0f                                          ; $62a5: $de $0f
	ld a, a                                          ; $62a7: $7f
	ld e, c                                          ; $62a8: $59
	rst SubAFromDE                                          ; $62a9: $df
	ld a, a                                          ; $62aa: $7f
	sbc c                                            ; $62ab: $99
	rst $38                                          ; $62ac: $ff
	ld e, a                                          ; $62ad: $5f
	xor a                                            ; $62ae: $af
	db $fc                                           ; $62af: $fc
	jr nc, jr_051_62d2                               ; $62b0: $30 $20

	ld a, c                                          ; $62b2: $79
	cp h                                             ; $62b3: $bc
	sbc b                                            ; $62b4: $98
	rst $38                                          ; $62b5: $ff
	jp $130f                                         ; $62b6: $c3 $0f $13


	daa                                              ; $62b9: $27
	ld l, a                                          ; $62ba: $6f
	ld e, a                                          ; $62bb: $5f
	sbc $ff                                          ; $62bc: $de $ff
	add b                                            ; $62be: $80
	cp $f2                                           ; $62bf: $fe $f2
	ldh [c], a                                       ; $62c1: $e2
	call nz, $9c8c                                   ; $62c2: $c4 $8c $9c
	di                                               ; $62c5: $f3
	rst SubAFromHL                                          ; $62c6: $d7
	ld a, a                                          ; $62c7: $7f
	or $fe                                           ; $62c8: $f6 $fe
	sbc a                                            ; $62ca: $9f
	adc a                                            ; $62cb: $8f
	rst SubAFromBC                                          ; $62cc: $e7
	di                                               ; $62cd: $f3
	ld b, e                                          ; $62ce: $43
	ld d, a                                          ; $62cf: $57
	ld b, h                                          ; $62d0: $44
	ld a, h                                          ; $62d1: $7c

jr_051_62d2:
	db $f4                                           ; $62d2: $f4
	ld a, [$fdff]                                    ; $62d3: $fa $ff $fd
	rst SubAFromDE                                          ; $62d6: $df
	rst AddAOntoHL                                          ; $62d7: $ef
	cp a                                             ; $62d8: $bf
	ld a, a                                          ; $62d9: $7f
	ccf                                              ; $62da: $3f
	rra                                              ; $62db: $1f
	adc a                                            ; $62dc: $8f
	cp $7e                                           ; $62dd: $fe $7e
	ld [$cf92], sp                                   ; $62df: $08 $92 $cf
	ld b, a                                          ; $62e2: $47
	inc hl                                           ; $62e3: $23
	ld de, $8008                                     ; $62e4: $11 $08 $80
	ld b, b                                          ; $62e7: $40
	ret nz                                           ; $62e8: $c0

	db $f4                                           ; $62e9: $f4
	cp $ff                                           ; $62ea: $fe $ff
	ld a, [$7bd0]                                    ; $62ec: $fa $d0 $7b
	ld e, l                                          ; $62ef: $5d
	ld a, a                                          ; $62f0: $7f
	ld d, [hl]                                       ; $62f1: $56
	ld a, [hl]                                       ; $62f2: $7e
	and h                                            ; $62f3: $a4
	add l                                            ; $62f4: $85
	ld h, b                                          ; $62f5: $60
	dec bc                                           ; $62f6: $0b
	ld e, $3f                                        ; $62f7: $1e $3f
	cp a                                             ; $62f9: $bf
	rst SubAFromDE                                          ; $62fa: $df
	rst $38                                          ; $62fb: $ff
	rra                                              ; $62fc: $1f
	rra                                              ; $62fd: $1f
	rlca                                             ; $62fe: $07
	rrca                                             ; $62ff: $0f
	rra                                              ; $6300: $1f
	ld a, a                                          ; $6301: $7f
	rst $38                                          ; $6302: $ff
	sbc a                                            ; $6303: $9f
	rra                                              ; $6304: $1f
	rra                                              ; $6305: $1f
	ld c, a                                          ; $6306: $4f
	ld e, a                                          ; $6307: $5f
	ld a, e                                          ; $6308: $7b
	ld sp, $2929                                     ; $6309: $31 $29 $29
	cp e                                             ; $630c: $bb
	sub c                                            ; $630d: $91
	ei                                               ; $630e: $fb
	sbc $eb                                          ; $630f: $de $eb
	rst SubAFromDE                                          ; $6311: $df
	di                                               ; $6312: $f3
	sbc l                                            ; $6313: $9d
	pop af                                           ; $6314: $f1
	ld sp, hl                                        ; $6315: $f9
	ld a, d                                          ; $6316: $7a

jr_051_6317:
	add d                                            ; $6317: $82
	rst SubAFromDE                                          ; $6318: $df
	cp $de                                           ; $6319: $fe $de
	rst $38                                          ; $631b: $ff
	rst SubAFromDE                                          ; $631c: $df
	inc b                                            ; $631d: $04
	ld a, c                                          ; $631e: $79
	ld b, $de                                        ; $631f: $06 $de
	ld bc, $f197                                     ; $6321: $01 $97 $f1
	ccf                                              ; $6324: $3f
	inc c                                            ; $6325: $0c
	rlca                                             ; $6326: $07
	add c                                            ; $6327: $81
	ret nz                                           ; $6328: $c0

	ldh [rSVBK], a                                   ; $6329: $e0 $70
	ld a, d                                          ; $632b: $7a
	cp e                                             ; $632c: $bb
	db $fc                                           ; $632d: $fc
	adc a                                            ; $632e: $8f
	cpl                                              ; $632f: $2f
	ld a, $5f                                        ; $6330: $3e $5f
	ld a, a                                          ; $6332: $7f
	nop                                              ; $6333: $00
	cp a                                             ; $6334: $bf
	ld b, b                                          ; $6335: $40
	jr nz, jr_051_6317                               ; $6336: $20 $df

	rst SubAFromDE                                          ; $6338: $df
	cp a                                             ; $6339: $bf
	rst $38                                          ; $633a: $ff
	rst $38                                          ; $633b: $ff
	ld b, b                                          ; $633c: $40
	jr nz, jr_051_634f                               ; $633d: $20 $10

	halt                                             ; $633f: $76
	call nz, $3f9d                                   ; $6340: $c4 $9d $3f
	cp $75                                           ; $6343: $fe $75
	and $de                                          ; $6345: $e6 $de
	rst $38                                          ; $6347: $ff
	ld a, d                                          ; $6348: $7a
	ld e, a                                          ; $6349: $5f
	sub a                                            ; $634a: $97
	ld h, b                                          ; $634b: $60
	ld sp, hl                                        ; $634c: $f9
	ld h, b                                          ; $634d: $60
	rst $38                                          ; $634e: $ff

jr_051_634f:
	ret nz                                           ; $634f: $c0

	ld e, a                                          ; $6350: $5f
	ld e, $30                                        ; $6351: $1e $30
	call c, Call_051_7be0                            ; $6353: $dc $e0 $7b
	rst AddAOntoHL                                          ; $6356: $ef
	sbc c                                            ; $6357: $99
	rra                                              ; $6358: $1f
	ldh a, [rIF]                                     ; $6359: $f0 $0f
	ld e, $07                                        ; $635b: $1e $07
	ld c, b                                          ; $635d: $48
	ld [hl], c                                       ; $635e: $71
	ld b, l                                          ; $635f: $45
	ld a, d                                          ; $6360: $7a
	ld c, a                                          ; $6361: $4f
	ld a, [hl]                                       ; $6362: $7e
	call z, $3f98                                    ; $6363: $cc $98 $3f
	ret nz                                           ; $6366: $c0

	ret nz                                           ; $6367: $c0

	ccf                                              ; $6368: $3f
	ldh [$3f], a                                     ; $6369: $e0 $3f
	and b                                            ; $636b: $a0
	ld a, c                                          ; $636c: $79
	add [hl]                                         ; $636d: $86
	db $fd                                           ; $636e: $fd
	ld a, l                                          ; $636f: $7d
	inc a                                            ; $6370: $3c
	sbc e                                            ; $6371: $9b
	ldh a, [$78]                                     ; $6372: $f0 $78
	inc e                                            ; $6374: $1c
	inc e                                            ; $6375: $1c
	sbc $0e                                          ; $6376: $de $0e
	ld l, a                                          ; $6378: $6f
	ldh [$72], a                                     ; $6379: $e0 $72
	ld d, l                                          ; $637b: $55
	di                                               ; $637c: $f3
	ld a, d                                          ; $637d: $7a
	ldh [c], a                                       ; $637e: $e2
	sbc d                                            ; $637f: $9a
	ld h, b                                          ; $6380: $60
	jr nc, jr_051_63bb                               ; $6381: $30 $38

	jr c, jr_051_63a1                                ; $6383: $38 $1c

	ld sp, hl                                        ; $6385: $f9
	sbc [hl]                                         ; $6386: $9e
	ldh a, [$5a]                                     ; $6387: $f0 $5a
	call nc, $dd63                                   ; $6389: $d4 $63 $dd
	sbc h                                            ; $638c: $9c
	ld h, b                                          ; $638d: $60
	ld [hl], b                                       ; $638e: $70
	jr c, @-$05                                      ; $638f: $38 $f9

	ld a, a                                          ; $6391: $7f
	db $f4                                           ; $6392: $f4
	sbc l                                            ; $6393: $9d
	ld sp, $7919                                     ; $6394: $31 $19 $79
	ld b, [hl]                                       ; $6397: $46
	ld a, l                                          ; $6398: $7d
	call $cc79                                       ; $6399: $cd $79 $cc
	db $dd                                           ; $639c: $dd
	inc bc                                           ; $639d: $03
	ld a, [hl]                                       ; $639e: $7e
	reti                                             ; $639f: $d9


	sbc h                                            ; $63a0: $9c

jr_051_63a1:
	ld a, [hl]                                       ; $63a1: $7e
	ld a, h                                          ; $63a2: $7c
	ld a, h                                          ; $63a3: $7c
	sbc $fc                                          ; $63a4: $de $fc
	sbc d                                            ; $63a6: $9a
	add b                                            ; $63a7: $80
	add c                                            ; $63a8: $81
	add c                                            ; $63a9: $81
	add e                                            ; $63aa: $83
	add e                                            ; $63ab: $83
	sbc $03                                          ; $63ac: $de $03
	add e                                            ; $63ae: $83
	rst SubAFromBC                                          ; $63af: $e7
	ei                                               ; $63b0: $fb
	db $fc                                           ; $63b1: $fc
	rst GetHLinHL                                          ; $63b2: $cf
	push bc                                          ; $63b3: $c5
	ld a, [$deff]                                    ; $63b4: $fa $ff $de
	and d                                            ; $63b7: $a2
	pop bc                                           ; $63b8: $c1
	ld hl, sp-$7a                                    ; $63b9: $f8 $86

jr_051_63bb:
	sub a                                            ; $63bb: $97
	sub e                                            ; $63bc: $93
	sbc d                                            ; $63bd: $9a
	cp a                                             ; $63be: $bf
	rst SubAFromDE                                          ; $63bf: $df
	rst FarCall                                          ; $63c0: $f7
	ld hl, sp-$03                                    ; $63c1: $f8 $fd
	and d                                            ; $63c3: $a2
	pop bc                                           ; $63c4: $c1
	ret nz                                           ; $63c5: $c0

	ld bc, $0f3f                                     ; $63c6: $01 $3f $0f
	add a                                            ; $63c9: $87
	ld b, d                                          ; $63ca: $42
	ld a, d                                          ; $63cb: $7a
	ld l, e                                          ; $63cc: $6b
	sbc h                                            ; $63cd: $9c
	cp $47                                           ; $63ce: $fe $47
	add a                                            ; $63d0: $87
	ld a, e                                          ; $63d1: $7b
	jp c, $9679                                      ; $63d2: $da $79 $96

	sbc h                                            ; $63d5: $9c
	add h                                            ; $63d6: $84
	jp nz, $de02                                     ; $63d7: $c2 $02 $de

	ld bc, $b07b                                     ; $63da: $01 $7b $b0
	sbc $80                                          ; $63dd: $de $80
	rst SubAFromDE                                          ; $63df: $df
	ret nz                                           ; $63e0: $c0

	ld a, l                                          ; $63e1: $7d
	xor a                                            ; $63e2: $af
	ld l, a                                          ; $63e3: $6f
	sub [hl]                                         ; $63e4: $96
	rst SubAFromDE                                          ; $63e5: $df
	add b                                            ; $63e6: $80
	rst SubAFromDE                                          ; $63e7: $df
	dec e                                            ; $63e8: $1d
	sub a                                            ; $63e9: $97
	inc e                                            ; $63ea: $1c
	inc a                                            ; $63eb: $3c
	ld a, $7d                                        ; $63ec: $3e $7d
	db $ec                                           ; $63ee: $ec
	adc h                                            ; $63ef: $8c
	rla                                              ; $63f0: $17
	rla                                              ; $63f1: $17
	db $db                                           ; $63f2: $db
	rlca                                             ; $63f3: $07
	sbc d                                            ; $63f4: $9a
	sub c                                            ; $63f5: $91
	db $dd                                           ; $63f6: $dd
	reti                                             ; $63f7: $d9


	db $db                                           ; $63f8: $db
	db $db                                           ; $63f9: $db
	sbc $dd                                          ; $63fa: $de $dd
	rst SubAFromDE                                          ; $63fc: $df
	ld sp, hl                                        ; $63fd: $f9
	sbc $fd                                          ; $63fe: $de $fd
	sbc $ff                                          ; $6400: $de $ff
	add a                                            ; $6402: $87
	sbc a                                            ; $6403: $9f
	rst SubAFromDE                                          ; $6404: $df
	rst $38                                          ; $6405: $ff
	ld a, a                                          ; $6406: $7f
	cp a                                             ; $6407: $bf
	rst FarCall                                          ; $6408: $f7
	ld h, a                                          ; $6409: $67
	rst AddAOntoHL                                          ; $640a: $ef
	ld h, c                                          ; $640b: $61
	ld h, c                                          ; $640c: $61
	ld b, b                                          ; $640d: $40
	ret nz                                           ; $640e: $c0

	ret nz                                           ; $640f: $c0

	adc b                                            ; $6410: $88
	sbc b                                            ; $6411: $98
	db $10                                           ; $6412: $10
	jr c, jr_051_6431                                ; $6413: $38 $1c

	adc a                                            ; $6415: $8f
	add a                                            ; $6416: $87
	add $c2                                          ; $6417: $c6 $c2
	cp h                                             ; $6419: $bc
	cp l                                             ; $641a: $bd
	ld [hl], a                                       ; $641b: $77
	jp $81df                                         ; $641c: $c3 $df $81


	rst SubAFromDE                                          ; $641f: $df
	jp $10df                                         ; $6420: $c3 $df $10


	sub [hl]                                         ; $6423: $96
	ld de, $8100                                     ; $6424: $11 $00 $81
	xor e                                            ; $6427: $ab
	xor $ff                                          ; $6428: $ee $ff
	ld [$0c0c], sp                                   ; $642a: $08 $0c $0c
	ld [hl], b                                       ; $642d: $70
	sbc [hl]                                         ; $642e: $9e
	ld a, [hl]                                       ; $642f: $7e
	rra                                              ; $6430: $1f

jr_051_6431:
	ld a, [hl]                                       ; $6431: $7e
	ld c, [hl]                                       ; $6432: $4e
	sbc e                                            ; $6433: $9b
	or [hl]                                          ; $6434: $b6
	ld a, l                                          ; $6435: $7d
	rst SubAFromHL                                          ; $6436: $d7
	ld a, l                                          ; $6437: $7d
	ld sp, hl                                        ; $6438: $f9
	sub a                                            ; $6439: $97
	ld a, [$58df]                                    ; $643a: $fa $df $58
	rst SubAFromBC                                          ; $643d: $e7
	sbc b                                            ; $643e: $98
	rst $38                                          ; $643f: $ff
	ld e, c                                          ; $6440: $59
	rst SubAFromHL                                          ; $6441: $d7
	ld hl, sp+$7d                                    ; $6442: $f8 $7d
	or e                                             ; $6444: $b3
	sbc d                                            ; $6445: $9a
	rlca                                             ; $6446: $07
	ld [hl], b                                       ; $6447: $70
	add e                                            ; $6448: $83
	ret nz                                           ; $6449: $c0

	ccf                                              ; $644a: $3f
	ld sp, hl                                        ; $644b: $f9
	sbc b                                            ; $644c: $98
	rlca                                             ; $644d: $07
	ld hl, sp+$07                                    ; $644e: $f8 $07
	db $ec                                           ; $6450: $ec
	inc bc                                           ; $6451: $03

jr_051_6452:
	ret nz                                           ; $6452: $c0

	ld a, $63                                        ; $6453: $3e $63
	ldh a, [$de]                                     ; $6455: $f0 $de
	inc bc                                           ; $6457: $03
	ld l, h                                          ; $6458: $6c
	db $e3                                           ; $6459: $e3
	ld h, [hl]                                       ; $645a: $66
	di                                               ; $645b: $f3
	rst SubAFromDE                                          ; $645c: $df
	add b                                            ; $645d: $80
	ld a, h                                          ; $645e: $7c
	pop hl                                           ; $645f: $e1
	rst SubAFromDE                                          ; $6460: $df
	jr nz, @-$60                                     ; $6461: $20 $9e

	sub b                                            ; $6463: $90
	ld [hl], d                                       ; $6464: $72
	add sp, -$21                                     ; $6465: $e8 $df
	ret nz                                           ; $6467: $c0

	sub a                                            ; $6468: $97
	ld h, b                                          ; $6469: $60
	ld c, $0e                                        ; $646a: $0e $0e
	dec b                                            ; $646c: $05
	nop                                              ; $646d: $00
	ld a, [hl+]                                      ; $646e: $2a
	ld [hl], $48                                     ; $646f: $36 $48
	cp $7e                                           ; $6471: $fe $7e
	jr nc, jr_051_6452                               ; $6473: $30 $dd

	ld bc, $9bfd                                     ; $6475: $01 $fd $9b
	ld l, l                                          ; $6478: $6d

jr_051_6479:
	ld [hl], a                                       ; $6479: $77
	nop                                              ; $647a: $00
	jr nz, @+$71                                     ; $647b: $20 $6f

	push de                                          ; $647d: $d5
	rst SubAFromDE                                          ; $647e: $df
	ret nz                                           ; $647f: $c0

	sub h                                            ; $6480: $94
	ld [hl-], a                                      ; $6481: $32
	db $10                                           ; $6482: $10
	jr z, jr_051_6479                                ; $6483: $28 $f4

	db $db                                           ; $6485: $db
	and c                                            ; $6486: $a1
	nop                                              ; $6487: $00
	nop                                              ; $6488: $00
	inc c                                            ; $6489: $0c
	ld c, $07                                        ; $648a: $0e $07
	ld [hl], d                                       ; $648c: $72
	xor b                                            ; $648d: $a8
	sub a                                            ; $648e: $97
	ld d, h                                          ; $648f: $54
	and h                                            ; $6490: $a4
	ld h, h                                          ; $6491: $64
	add h                                            ; $6492: $84
	add h                                            ; $6493: $84
	call nz, $eaca                                   ; $6494: $c4 $ca $ea
	db $db                                           ; $6497: $db
	rlca                                             ; $6498: $07
	rst SubAFromDE                                          ; $6499: $df
	rrca                                             ; $649a: $0f
	ld l, l                                          ; $649b: $6d
	ldh a, [c]                                       ; $649c: $f2
	ld a, d                                          ; $649d: $7a
	dec h                                            ; $649e: $25
	ld l, e                                          ; $649f: $6b
	sbc d                                            ; $64a0: $9a
	ld a, a                                          ; $64a1: $7f
	ldh a, [c]                                       ; $64a2: $f2
	ld a, l                                          ; $64a3: $7d
	and d                                            ; $64a4: $a2
	sbc e                                            ; $64a5: $9b
	adc a                                            ; $64a6: $8f
	ld b, e                                          ; $64a7: $43
	jr nz, jr_051_64ba                               ; $64a8: $20 $10

	ld a, e                                          ; $64aa: $7b
	call nz, $f09d                                   ; $64ab: $c4 $9d $f0
	db $fc                                           ; $64ae: $fc
	sbc $ff                                          ; $64af: $de $ff
	sub a                                            ; $64b1: $97
	ld [bc], a                                       ; $64b2: $02
	add b                                            ; $64b3: $80
	ldh [$fc], a                                     ; $64b4: $e0 $fc
	cp $ff                                           ; $64b6: $fe $ff
	cp a                                             ; $64b8: $bf
	rst SubAFromDE                                          ; $64b9: $df

jr_051_64ba:
	ld l, a                                          ; $64ba: $6f
	ldh [c], a                                       ; $64bb: $e2
	ld a, [hl]                                       ; $64bc: $7e
	rst SubAFromHL                                          ; $64bd: $d7
	ld a, d                                          ; $64be: $7a
	add b                                            ; $64bf: $80
	sbc h                                            ; $64c0: $9c
	ld de, $0313                                     ; $64c1: $11 $13 $03
	ld a, e                                          ; $64c4: $7b
	jr z, jr_051_6531                                ; $64c5: $28 $6a

	ld a, a                                          ; $64c7: $7f
	sub a                                            ; $64c8: $97
	ret nz                                           ; $64c9: $c0

	and b                                            ; $64ca: $a0
	db $10                                           ; $64cb: $10
	db $10                                           ; $64cc: $10
	jr c, @+$7e                                      ; $64cd: $38 $7c

	db $fd                                           ; $64cf: $fd
	ld a, [$bd7a]                                    ; $64d0: $fa $7a $bd
	add d                                            ; $64d3: $82
	ldh a, [$c8]                                     ; $64d4: $f0 $c8
	add h                                            ; $64d6: $84
	rlca                                             ; $64d7: $07
	rrca                                             ; $64d8: $0f
	ld c, $0b                                        ; $64d9: $0e $0b
	dec d                                            ; $64db: $15
	ld a, [hl-]                                      ; $64dc: $3a
	ld e, l                                          ; $64dd: $5d
	xor [hl]                                         ; $64de: $ae
	rst SubAFromHL                                          ; $64df: $d7
	db $eb                                           ; $64e0: $eb
	add hl, bc                                       ; $64e1: $09
	inc c                                            ; $64e2: $0c
	ld e, $27                                        ; $64e3: $1e $27
	ld h, e                                          ; $64e5: $63
	pop af                                           ; $64e6: $f1
	jr c, jr_051_6505                                ; $64e7: $38 $1c

	ld [hl], a                                       ; $64e9: $77
	ld h, a                                          ; $64ea: $67
	and $a2                                          ; $64eb: $e6 $a2
	ld [hl-], a                                      ; $64ed: $32
	jp nc, $fb7b                                     ; $64ee: $d2 $7b $fb

	ld a, b                                          ; $64f1: $78
	add [hl]                                         ; $64f2: $86
	adc c                                            ; $64f3: $89
	ld a, a                                          ; $64f4: $7f
	rst AddAOntoHL                                          ; $64f5: $ef
	rst AddAOntoHL                                          ; $64f6: $ef
	rst JumpTable                                          ; $64f7: $c7
	add a                                            ; $64f8: $87
	rst GetHLinHL                                          ; $64f9: $cf
	rst GetHLinHL                                          ; $64fa: $cf
	adc a                                            ; $64fb: $8f
	ccf                                              ; $64fc: $3f
	ld e, a                                          ; $64fd: $5f
	rst $38                                          ; $64fe: $ff
	cp a                                             ; $64ff: $bf
	ld a, a                                          ; $6500: $7f
	ld sp, $7131                                     ; $6501: $31 $31 $71
	pop hl                                           ; $6504: $e1

jr_051_6505:
	pop hl                                           ; $6505: $e1
	jp $83c3                                         ; $6506: $c3 $c3 $83


	ld a, a                                          ; $6509: $7f
	db $dd                                           ; $650a: $dd
	rst $38                                          ; $650b: $ff
	sbc h                                            ; $650c: $9c
	xor a                                            ; $650d: $af
	ld a, $34                                        ; $650e: $3e $34
	reti                                             ; $6510: $d9


	jp Jump_051_7fdf                                 ; $6511: $c3 $df $7f


	sbc c                                            ; $6514: $99
	ld a, l                                          ; $6515: $7d
	db $fc                                           ; $6516: $fc
	ld sp, hl                                        ; $6517: $f9
	cp c                                             ; $6518: $b9
	ld sp, hl                                        ; $6519: $f9
	db $db                                           ; $651a: $db
	sbc $86                                          ; $651b: $de $86
	rst SubAFromDE                                          ; $651d: $df
	ld b, $de                                        ; $651e: $06 $de
	rlca                                             ; $6520: $07
	sub a                                            ; $6521: $97
	ld d, a                                          ; $6522: $57
	ld a, [hl]                                       ; $6523: $7e
	db $dd                                           ; $6524: $dd
	cp l                                             ; $6525: $bd
	cp [hl]                                          ; $6526: $be
	push de                                          ; $6527: $d5
	xor d                                            ; $6528: $aa
	ld d, b                                          ; $6529: $50
	halt                                             ; $652a: $76
	push af                                          ; $652b: $f5
	ld [hl], e                                       ; $652c: $73
	call nc, $c37f                                   ; $652d: $d4 $7f $c3
	sbc h                                            ; $6530: $9c

jr_051_6531:
	db $fc                                           ; $6531: $fc
	cp a                                             ; $6532: $bf
	ld a, a                                          ; $6533: $7f
	ld [hl], d                                       ; $6534: $72
	ldh [$79], a                                     ; $6535: $e0 $79
	add b                                            ; $6537: $80
	sub l                                            ; $6538: $95
	pop hl                                           ; $6539: $e1
	ldh [rP1], a                                     ; $653a: $e0 $00
	cp $0f                                           ; $653c: $fe $0f
	nop                                              ; $653e: $00
	ret nz                                           ; $653f: $c0

	ld a, a                                          ; $6540: $7f
	db $fd                                           ; $6541: $fd
	ei                                               ; $6542: $fb
	ld l, [hl]                                       ; $6543: $6e
	db $e3                                           ; $6544: $e3
	sub l                                            ; $6545: $95
	cp $07                                           ; $6546: $fe $07
	nop                                              ; $6548: $00
	rrca                                             ; $6549: $0f
	ld hl, sp+$13                                    ; $654a: $f8 $13
	db $fc                                           ; $654c: $fc
	di                                               ; $654d: $f3
	db $fc                                           ; $654e: $fc
	di                                               ; $654f: $f3
	ld a, [$fc9e]                                    ; $6550: $fa $9e $fc
	db $fc                                           ; $6553: $fc
	sbc h                                            ; $6554: $9c
	ld bc, $aa15                                     ; $6555: $01 $15 $aa
	ld hl, sp-$69                                    ; $6558: $f8 $97
	ld [$7878], sp                                   ; $655a: $08 $78 $78
	adc b                                            ; $655d: $88
	ld [bc], a                                       ; $655e: $02
	dec a                                            ; $655f: $3d
	rst $38                                          ; $6560: $ff
	ld [hl], b                                       ; $6561: $70
	ld a, c                                          ; $6562: $79
	ld c, $9e                                        ; $6563: $0e $9e
	ld [hl], b                                       ; $6565: $70
	sbc $78                                          ; $6566: $de $78
	ld [hl], e                                       ; $6568: $73
	pop hl                                           ; $6569: $e1
	sbc h                                            ; $656a: $9c
	ld [bc], a                                       ; $656b: $02
	ld d, l                                          ; $656c: $55
	xor e                                            ; $656d: $ab
	ld h, d                                          ; $656e: $62
	ld [hl], c                                       ; $656f: $71
	sub [hl]                                         ; $6570: $96
	ret c                                            ; $6571: $d8

	ld c, b                                          ; $6572: $48
	dec b                                            ; $6573: $05
	ld l, d                                          ; $6574: $6a
	db $fd                                           ; $6575: $fd
	ld a, a                                          ; $6576: $7f
	ld a, [$2000]                                    ; $6577: $fa $00 $20
	ld a, c                                          ; $657a: $79
	ld l, d                                          ; $657b: $6a
	sbc $38                                          ; $657c: $de $38
	ld a, d                                          ; $657e: $7a
	xor c                                            ; $657f: $a9
	sbc d                                            ; $6580: $9a
	ld b, $ad                                        ; $6581: $06 $ad
	ld e, [hl]                                       ; $6583: $5e
	xor e                                            ; $6584: $ab
	rst $38                                          ; $6585: $ff
	ld sp, hl                                        ; $6586: $f9
	sub a                                            ; $6587: $97
	ld [$f1fb], a                                    ; $6588: $ea $fb $f1
	pop af                                           ; $658b: $f1
	db $e3                                           ; $658c: $e3
	and $ec                                          ; $658d: $e6 $ec
	ret c                                            ; $658f: $d8

	ld a, b                                          ; $6590: $78
	ld c, c                                          ; $6591: $49
	ld a, h                                          ; $6592: $7c
	ld c, b                                          ; $6593: $48
	ld a, b                                          ; $6594: $78
	ld b, a                                          ; $6595: $47
	sbc d                                            ; $6596: $9a
	rrca                                             ; $6597: $0f
	cpl                                              ; $6598: $2f
	ld e, a                                          ; $6599: $5f
	sbc a                                            ; $659a: $9f
	ccf                                              ; $659b: $3f
	ld a, e                                          ; $659c: $7b
	ld h, a                                          ; $659d: $67
	rst SubAFromDE                                          ; $659e: $df
	ldh a, [$df]                                     ; $659f: $f0 $df
	ldh [$7d], a                                     ; $65a1: $e0 $7d
	or h                                             ; $65a3: $b4
	rst $38                                          ; $65a4: $ff
	sub h                                            ; $65a5: $94
	ret z                                            ; $65a6: $c8

	push hl                                          ; $65a7: $e5
	ldh a, [c]                                       ; $65a8: $f2
	ld a, [$f8fd]                                    ; $65a9: $fa $fd $f8
	ldh a, [$c0]                                     ; $65ac: $f0 $c0
	ccf                                              ; $65ae: $3f
	rra                                              ; $65af: $1f
	rrca                                             ; $65b0: $0f
	ld a, d                                          ; $65b1: $7a
	and c                                            ; $65b2: $a1
	ld a, a                                          ; $65b3: $7f
	and $7f                                          ; $65b4: $e6 $7f
	ld d, h                                          ; $65b6: $54
	sbc d                                            ; $65b7: $9a
	ld a, [hl]                                       ; $65b8: $7e
	ld a, $3c                                        ; $65b9: $3e $3c
	ld c, h                                          ; $65bb: $4c
	inc bc                                           ; $65bc: $03
	ld a, e                                          ; $65bd: $7b
	ld d, e                                          ; $65be: $53
	ld a, d                                          ; $65bf: $7a
	sbc $7a                                          ; $65c0: $de $7a
	xor a                                            ; $65c2: $af
	halt                                             ; $65c3: $76
	adc e                                            ; $65c4: $8b
	ld a, b                                          ; $65c5: $78
	ld h, [hl]                                       ; $65c6: $66
	add b                                            ; $65c7: $80
	rst $38                                          ; $65c8: $ff
	ld b, $06                                        ; $65c9: $06 $06
	rrca                                             ; $65cb: $0f
	dec bc                                           ; $65cc: $0b
	ld [de], a                                       ; $65cd: $12
	ld h, d                                          ; $65ce: $62
	add h                                            ; $65cf: $84
	inc b                                            ; $65d0: $04
	rst SubAFromDE                                          ; $65d1: $df
	xor a                                            ; $65d2: $af
	ld a, [hl]                                       ; $65d3: $7e
	db $fd                                           ; $65d4: $fd
	ld a, [$eb75]                                    ; $65d5: $fa $75 $eb
	rst FarCall                                          ; $65d8: $f7
	ld sp, $c170                                     ; $65d9: $31 $70 $c1
	add e                                            ; $65dc: $83
	add a                                            ; $65dd: $87
	adc $3c                                          ; $65de: $ce $3c
	jr c, jr_051_6656                                ; $65e0: $38 $74

	ld a, e                                          ; $65e2: $7b
	cp e                                             ; $65e3: $bb
	ld d, a                                          ; $65e4: $57
	rst AddAOntoHL                                          ; $65e5: $ef
	rst SubAFromDE                                          ; $65e6: $df
	rst SubAFromDE                                          ; $65e7: $df
	rst $38                                          ; $65e8: $ff
	ld a, c                                          ; $65e9: $79
	xor d                                            ; $65ea: $aa
	sbc c                                            ; $65eb: $99
	db $ec                                           ; $65ec: $ec
	jr c, jr_051_661f                                ; $65ed: $38 $30

	jr nz, jr_051_6631                               ; $65ef: $20 $40

	ld a, [$896d]                                    ; $65f1: $fa $6d $89
	sbc l                                            ; $65f4: $9d
	ei                                               ; $65f5: $fb
	rlca                                             ; $65f6: $07
	sbc $06                                          ; $65f7: $de $06
	sbc $04                                          ; $65f9: $de $04
	sbc c                                            ; $65fb: $99
	inc c                                            ; $65fc: $0c
	cp $fc                                           ; $65fd: $fe $fc
	db $fc                                           ; $65ff: $fc
	ld hl, sp-$08                                    ; $6600: $f8 $f8
	sbc $f0                                          ; $6602: $de $f0
	add e                                            ; $6604: $83
	ld [bc], a                                       ; $6605: $02
	dec b                                            ; $6606: $05
	rlca                                             ; $6607: $07
	dec c                                            ; $6608: $0d
	ld a, [bc]                                       ; $6609: $0a
	dec d                                            ; $660a: $15
	ld [de], a                                       ; $660b: $12
	db $10                                           ; $660c: $10
	inc e                                            ; $660d: $1c
	inc [hl]                                         ; $660e: $34
	xor c                                            ; $660f: $a9
	inc d                                            ; $6610: $14
	ld a, [hl+]                                      ; $6611: $2a
	inc d                                            ; $6612: $14
	ld l, c                                          ; $6613: $69
	nop                                              ; $6614: $00
	jp Jump_051_42c3                                 ; $6615: $c3 $c3 $42


	jp $c3c1                                         ; $6618: $c3 $c1 $c3


	add d                                            ; $661b: $82
	jp $d67a                                         ; $661c: $c3 $7a $d6


jr_051_661f:
	xor d                                            ; $661f: $aa
	ld d, d                                          ; $6620: $52
	ld a, e                                          ; $6621: $7b
	cp $9c                                           ; $6622: $fe $9c
	inc bc                                           ; $6624: $03
	rlca                                             ; $6625: $07
	inc bc                                           ; $6626: $03
	db $db                                           ; $6627: $db
	rlca                                             ; $6628: $07
	ld a, e                                          ; $6629: $7b
	ld l, l                                          ; $662a: $6d
	ld a, d                                          ; $662b: $7a
	add $9e                                          ; $662c: $c6 $9e
	rra                                              ; $662e: $1f
	halt                                             ; $662f: $76
	dec [hl]                                         ; $6630: $35

jr_051_6631:
	db $dd                                           ; $6631: $dd
	rst $38                                          ; $6632: $ff
	sub [hl]                                         ; $6633: $96
	ld hl, sp+$3f                                    ; $6634: $f8 $3f
	inc sp                                           ; $6636: $33
	cpl                                              ; $6637: $2f
	ccf                                              ; $6638: $3f
	ld [hl], e                                       ; $6639: $73
	db $fc                                           ; $663a: $fc
	sbc $13                                          ; $663b: $de $13
	db $db                                           ; $663d: $db
	ldh [$78], a                                     ; $663e: $e0 $78
	jr z, @-$65                                      ; $6640: $28 $99

	pop bc                                           ; $6642: $c1
	rst $38                                          ; $6643: $ff
	add b                                            ; $6644: $80
	pop hl                                           ; $6645: $e1
	rra                                              ; $6646: $1f
	ldh [$61], a                                     ; $6647: $e0 $61
	sbc l                                            ; $6649: $9d
	sub a                                            ; $664a: $97
	rst GetHLinHL                                          ; $664b: $cf
	rst $38                                          ; $664c: $ff
	rst $38                                          ; $664d: $ff
	rst FarCall                                          ; $664e: $f7
	pop af                                           ; $664f: $f1
	cp $3f                                           ; $6650: $fe $3f
	pop bc                                           ; $6652: $c1

jr_051_6653:
	ld h, l                                          ; $6653: $65
	ld a, a                                          ; $6654: $7f
	sbc e                                            ; $6655: $9b

jr_051_6656:
	ld d, l                                          ; $6656: $55
	ld a, [$d7bf]                                    ; $6657: $fa $bf $d7
	ld [hl], a                                       ; $665a: $77
	ld a, a                                          ; $665b: $7f
	ld sp, hl                                        ; $665c: $f9
	sub a                                            ; $665d: $97
	cp $fd                                           ; $665e: $fe $fd
	rst FarCall                                          ; $6660: $f7
	rst FarCall                                          ; $6661: $f7
	rst $38                                          ; $6662: $ff
	rst $38                                          ; $6663: $ff
	rst SubAFromDE                                          ; $6664: $df
	rst SubAFromDE                                          ; $6665: $df
	db $dd                                           ; $6666: $dd
	ld a, b                                          ; $6667: $78
	db $dd                                           ; $6668: $dd
	ld [hl], b                                       ; $6669: $70
	sbc h                                            ; $666a: $9c
	sbc $f7                                          ; $666b: $de $f7
	cp a                                             ; $666d: $bf
	call c, $f9ff                                    ; $666e: $dc $ff $f9
	ld a, d                                          ; $6671: $7a
	jr jr_051_6653                                   ; $6672: $18 $df

	rst $38                                          ; $6674: $ff
	sbc h                                            ; $6675: $9c
	rst AddAOntoHL                                          ; $6676: $ef
	rst SubAFromBC                                          ; $6677: $e7
	rst SubAFromBC                                          ; $6678: $e7
	reti                                             ; $6679: $d9


	jr c, @-$60                                      ; $667a: $38 $9e

	or a                                             ; $667c: $b7
	sbc $ff                                          ; $667d: $de $ff
	rst SubAFromDE                                          ; $667f: $df
	cp $7f                                           ; $6680: $fe $7f
	ld c, h                                          ; $6682: $4c
	ld l, l                                          ; $6683: $6d
	pop de                                           ; $6684: $d1
	ld a, a                                          ; $6685: $7f
	inc b                                            ; $6686: $04
	ld a, h                                          ; $6687: $7c
	ld l, h                                          ; $6688: $6c
	sub [hl]                                         ; $6689: $96
	dec bc                                           ; $668a: $0b
	add hl, bc                                       ; $668b: $09
	add hl, bc                                       ; $668c: $09
	ld [$0608], sp                                   ; $668d: $08 $08 $06
	ld hl, sp-$04                                    ; $6690: $f8 $fc
	db $fc                                           ; $6692: $fc
	ld [hl], c                                       ; $6693: $71
	add [hl]                                         ; $6694: $86
	sub h                                            ; $6695: $94
	ret nz                                           ; $6696: $c0

	add c                                            ; $6697: $81
	jp nz, $f4fc                                     ; $6698: $c2 $fc $f4

	add sp, $10                                      ; $669b: $e8 $10
	jr nz, @+$41                                     ; $669d: $20 $3f

	ld a, a                                          ; $669f: $7f
	ccf                                              ; $66a0: $3f
	ld a, d                                          ; $66a1: $7a
	rst SubAFromBC                                          ; $66a2: $e7
	ld a, e                                          ; $66a3: $7b
	ld [$ac7a], sp                                   ; $66a4: $08 $7a $ac
	db $dd                                           ; $66a7: $dd
	rst $38                                          ; $66a8: $ff
	ld a, [hl]                                       ; $66a9: $7e
	cp [hl]                                          ; $66aa: $be
	rst SubAFromDE                                          ; $66ab: $df
	add b                                            ; $66ac: $80
	ld [hl], d                                       ; $66ad: $72
	ld h, h                                          ; $66ae: $64
	sbc [hl]                                         ; $66af: $9e
	jp $ffdd                                         ; $66b0: $c3 $dd $ff


	rst SubAFromDE                                          ; $66b3: $df
	ld a, a                                          ; $66b4: $7f
	sbc l                                            ; $66b5: $9d
	cp $3c                                           ; $66b6: $fe $3c
	ld l, l                                          ; $66b8: $6d
	ld [bc], a                                       ; $66b9: $02
	adc a                                            ; $66ba: $8f
	rst SubAFromBC                                          ; $66bb: $e7
	adc e                                            ; $66bc: $8b
	ei                                               ; $66bd: $fb
	rst $38                                          ; $66be: $ff
	rst AddAOntoHL                                          ; $66bf: $ef
	rst FarCall                                          ; $66c0: $f7
	rst SubAFromHL                                          ; $66c1: $d7
	rst $38                                          ; $66c2: $ff
	inc e                                            ; $66c3: $1c
	ld a, h                                          ; $66c4: $7c
	inc c                                            ; $66c5: $0c
	ld [$1818], sp                                   ; $66c6: $08 $18 $18
	jr c, jr_051_66fb                                ; $66c9: $38 $30

	ld a, d                                          ; $66cb: $7a
	push hl                                          ; $66cc: $e5
	db $dd                                           ; $66cd: $dd
	rst $38                                          ; $66ce: $ff
	sbc d                                            ; $66cf: $9a
	cp $10                                           ; $66d0: $fe $10
	add hl, bc                                       ; $66d2: $09
	ld c, $04                                        ; $66d3: $0e $04
	ld [hl], a                                       ; $66d5: $77
	pop de                                           ; $66d6: $d1
	db $db                                           ; $66d7: $db
	rst $38                                          ; $66d8: $ff
	ld a, a                                          ; $66d9: $7f
	adc a                                            ; $66da: $8f
	ld l, a                                          ; $66db: $6f
	jp $8f7f                                         ; $66dc: $c3 $7f $8f


	sbc d                                            ; $66df: $9a
	ei                                               ; $66e0: $fb
	rst FarCall                                          ; $66e1: $f7
	rst AddAOntoHL                                          ; $66e2: $ef
	rst SubAFromDE                                          ; $66e3: $df
	cp a                                             ; $66e4: $bf
	ld a, d                                          ; $66e5: $7a
	ld e, a                                          ; $66e6: $5f
	sbc d                                            ; $66e7: $9a
	inc c                                            ; $66e8: $0c
	jr jr_051_671b                                   ; $66e9: $18 $30

	ld h, b                                          ; $66eb: $60
	ret nz                                           ; $66ec: $c0

	ld a, d                                          ; $66ed: $7a
	ld e, a                                          ; $66ee: $5f
	db $db                                           ; $66ef: $db
	ldh a, [$7d]                                     ; $66f0: $f0 $7d
	rst SubAFromDE                                          ; $66f2: $df
	db $db                                           ; $66f3: $db
	db $10                                           ; $66f4: $10
	sbc [hl]                                         ; $66f5: $9e
	inc de                                           ; $66f6: $13
	ld [hl], e                                       ; $66f7: $73
	xor d                                            ; $66f8: $aa
	sbc e                                            ; $66f9: $9b
	inc bc                                           ; $66fa: $03

jr_051_66fb:
	inc a                                            ; $66fb: $3c

Call_051_66fc:
	ret nz                                           ; $66fc: $c0

	rra                                              ; $66fd: $1f
	call c, $87c3                                    ; $66fe: $dc $c3 $87
	db $fc                                           ; $6701: $fc
	ret nz                                           ; $6702: $c0

	rra                                              ; $6703: $1f
	inc bc                                           ; $6704: $03
	ld [bc], a                                       ; $6705: $02
	rrca                                             ; $6706: $0f
	ld a, h                                          ; $6707: $7c
	adc [hl]                                         ; $6708: $8e
	ld c, $0e                                        ; $6709: $0e $0e
	cp $07                                           ; $670b: $fe $07
	ld b, $0f                                        ; $670d: $06 $0f
	ld a, h                                          ; $670f: $7c
	adc d                                            ; $6710: $8a
	ld a, [bc]                                       ; $6711: $0a
	ld a, [bc]                                       ; $6712: $0a
	ld a, [$1200]                                    ; $6713: $fa $00 $12
	add h                                            ; $6716: $84
	ld [hl], c                                       ; $6717: $71
	rrca                                             ; $6718: $0f
	ld l, l                                          ; $6719: $6d
	and e                                            ; $671a: $a3

jr_051_671b:
	sbc [hl]                                         ; $671b: $9e
	ld [hl], b                                       ; $671c: $70
	ld [hl], a                                       ; $671d: $77
	ld hl, sp-$67                                    ; $671e: $f8 $99
	rst $38                                          ; $6720: $ff
	ld d, h                                          ; $6721: $54
	sbc $bf                                          ; $6722: $de $bf
	ld l, a                                          ; $6724: $6f
	rst $38                                          ; $6725: $ff
	ld [hl], a                                       ; $6726: $77
	or $de                                           ; $6727: $f6 $de
	rrca                                             ; $6729: $0f
	sub h                                            ; $672a: $94
	ldh a, [rIF]                                     ; $672b: $f0 $0f
	nop                                              ; $672d: $00
	and $3c                                          ; $672e: $e6 $3c
	rlca                                             ; $6730: $07
	rst AddAOntoHL                                          ; $6731: $ef
	cp $7f                                           ; $6732: $fe $7f
	rst SubAFromBC                                          ; $6734: $e7
	cp $75                                           ; $6735: $fe $75
	push bc                                          ; $6737: $c5

jr_051_6738:
	rst SubAFromDE                                          ; $6738: $df
	rst $38                                          ; $6739: $ff
	sub l                                            ; $673a: $95
	rra                                              ; $673b: $1f
	pop af                                           ; $673c: $f1
	inc e                                            ; $673d: $1c
	rra                                              ; $673e: $1f
	jp hl                                            ; $673f: $e9


	ld [bc], a                                       ; $6740: $02
	ldh [$ec], a                                     ; $6741: $e0 $ec
	rst $38                                          ; $6743: $ff
	ld a, a                                          ; $6744: $7f
	ld l, l                                          ; $6745: $6d
	or e                                             ; $6746: $b3
	rst SubAFromHL                                          ; $6747: $d7
	rst $38                                          ; $6748: $ff
	ld sp, hl                                        ; $6749: $f9
	sbc [hl]                                         ; $674a: $9e
	rst SubAFromDE                                          ; $674b: $df
	jp c, $d98f                                      ; $674c: $da $8f $d9

	ld [hl], b                                       ; $674f: $70
	ld b, a                                          ; $6750: $47
	ldh [$9e], a                                     ; $6751: $e0 $9e
	rst SubAFromBC                                          ; $6753: $e7
	jp c, $dbc7                                      ; $6754: $da $c7 $db

	jr c, jr_051_6738                                ; $6757: $38 $df

	add hl, sp                                       ; $6759: $39
	ld a, [hl]                                       ; $675a: $7e
	inc d                                            ; $675b: $14
	ld a, l                                          ; $675c: $7d
	rst JumpTable                                          ; $675d: $c7
	halt                                             ; $675e: $76
	push af                                          ; $675f: $f5
	ld a, l                                          ; $6760: $7d
	sub e                                            ; $6761: $93
	ld l, [hl]                                       ; $6762: $6e
	add sp, -$6c                                     ; $6763: $e8 $94
	inc b                                            ; $6765: $04
	add hl, bc                                       ; $6766: $09
	dec bc                                           ; $6767: $0b
	cp e                                             ; $6768: $bb
	ld [hl], h                                       ; $6769: $74
	inc b                                            ; $676a: $04
	ld [bc], a                                       ; $676b: $02
	inc bc                                           ; $676c: $03
	rst $38                                          ; $676d: $ff
	rst $38                                          ; $676e: $ff
	db $fc                                           ; $676f: $fc
	ld [hl], d                                       ; $6770: $72
	inc l                                            ; $6771: $2c
	sbc l                                            ; $6772: $9d
	pop bc                                           ; $6773: $c1
	ld b, e                                          ; $6774: $43
	ld a, b                                          ; $6775: $78
	ld c, a                                          ; $6776: $4f
	ld a, c                                          ; $6777: $79
	sub h                                            ; $6778: $94
	sbc e                                            ; $6779: $9b
	cp $bc                                           ; $677a: $fe $bc
	nop                                              ; $677c: $00
	add b                                            ; $677d: $80
	ld a, c                                          ; $677e: $79
	sbc [hl]                                         ; $677f: $9e
	sbc [hl]                                         ; $6780: $9e
	ld hl, sp+$7a                                    ; $6781: $f8 $7a
	sub l                                            ; $6783: $95
	ld a, e                                          ; $6784: $7b
	call $e09d                                       ; $6785: $cd $9d $e0
	add b                                            ; $6788: $80
	ld a, e                                          ; $6789: $7b
	dec b                                            ; $678a: $05
	ld a, d                                          ; $678b: $7a
	or b                                             ; $678c: $b0
	ld a, l                                          ; $678d: $7d
	sub [hl]                                         ; $678e: $96
	sbc $7f                                          ; $678f: $de $7f
	halt                                             ; $6791: $76
	sbc c                                            ; $6792: $99
	sbc [hl]                                         ; $6793: $9e
	cp $de                                           ; $6794: $fe $de
	add b                                            ; $6796: $80
	halt                                             ; $6797: $76
	inc e                                            ; $6798: $1c
	add b                                            ; $6799: $80
	ld bc, $9fbf                                     ; $679a: $01 $bf $9f
	ccf                                              ; $679d: $3f
	ld e, [hl]                                       ; $679e: $5e
	ei                                               ; $679f: $fb
	db $fc                                           ; $67a0: $fc
	pop hl                                           ; $67a1: $e1
	sbc a                                            ; $67a2: $9f
	ld [hl], b                                       ; $67a3: $70
	ld [hl], b                                       ; $67a4: $70
	ret nc                                           ; $67a5: $d0

	or c                                             ; $67a6: $b1
	daa                                              ; $67a7: $27
	ld b, a                                          ; $67a8: $47
	sbc a                                            ; $67a9: $9f
	cp $f9                                           ; $67aa: $fe $f9
	db $eb                                           ; $67ac: $eb
	cp a                                             ; $67ad: $bf
	rst SubAFromDE                                          ; $67ae: $df
	ld a, a                                          ; $67af: $7f
	rst $38                                          ; $67b0: $ff
	ld hl, sp-$80                                    ; $67b1: $f8 $80
	ld b, $1c                                        ; $67b3: $06 $1c
	ld [hl], b                                       ; $67b5: $70
	ldh [hLCDCIntHandlerIdx], a                                     ; $67b6: $e0 $81
	ld e, $7d                                        ; $67b8: $1e $7d
	rst AddAOntoHL                                          ; $67ba: $ef
	sbc d                                            ; $67bb: $9a
	ld hl, sp-$18                                    ; $67bc: $f8 $e8
	pop de                                           ; $67be: $d1
	rst $38                                          ; $67bf: $ff
	ldh a, [$7a]                                     ; $67c0: $f0 $7a
	jp $c47f                                         ; $67c2: $c3 $7f $c4


	sbc h                                            ; $67c5: $9c
	ccf                                              ; $67c6: $3f
	ld a, $c0                                        ; $67c7: $3e $c0
	ld [hl], a                                       ; $67c9: $77
	db $10                                           ; $67ca: $10
	sbc [hl]                                         ; $67cb: $9e
	ld a, a                                          ; $67cc: $7f
	ld l, [hl]                                       ; $67cd: $6e
	or l                                             ; $67ce: $b5
	sbc h                                            ; $67cf: $9c
	nop                                              ; $67d0: $00
	adc a                                            ; $67d1: $8f
	ldh a, [$fc]                                     ; $67d2: $f0 $fc
	ld a, c                                          ; $67d4: $79
	call $367a                                       ; $67d5: $cd $7a $36
	rst SubAFromDE                                          ; $67d8: $df
	ld bc, $f867                                     ; $67d9: $01 $67 $f8
	ld a, [hl]                                       ; $67dc: $7e
	xor d                                            ; $67dd: $aa
	sbc l                                            ; $67de: $9d
	ld a, a                                          ; $67df: $7f
	jp nz, $ffdd                                     ; $67e0: $c2 $dd $ff

	ld a, h                                          ; $67e3: $7c
	ld sp, hl                                        ; $67e4: $f9
	ld a, l                                          ; $67e5: $7d
	dec d                                            ; $67e6: $15

jr_051_67e7:
	ld a, e                                          ; $67e7: $7b
	dec sp                                           ; $67e8: $3b
	ld a, [hl]                                       ; $67e9: $7e
	ld l, b                                          ; $67ea: $68
	sbc h                                            ; $67eb: $9c
	inc a                                            ; $67ec: $3c
	db $fc                                           ; $67ed: $fc
	inc a                                            ; $67ee: $3c
	ld [hl], a                                       ; $67ef: $77
	ld a, l                                          ; $67f0: $7d
	call c, $94f4                                    ; $67f1: $dc $f4 $94
	db $10                                           ; $67f4: $10
	jr jr_051_67e7                                   ; $67f5: $18 $f0

	nop                                              ; $67f7: $00
	ld [bc], a                                       ; $67f8: $02
	nop                                              ; $67f9: $00
	nop                                              ; $67fa: $00
	dec b                                            ; $67fb: $05
	nop                                              ; $67fc: $00
	db $10                                           ; $67fd: $10
	add hl, bc                                       ; $67fe: $09
	ld h, b                                          ; $67ff: $60
	add c                                            ; $6800: $81
	rst $38                                          ; $6801: $ff
	sbc d                                            ; $6802: $9a
	inc h                                            ; $6803: $24
	ld a, [bc]                                       ; $6804: $0a
	nop                                              ; $6805: $00
	sub h                                            ; $6806: $94
	ld c, d                                          ; $6807: $4a
	ld sp, hl                                        ; $6808: $f9
	sub a                                            ; $6809: $97
	rra                                              ; $680a: $1f
	ld bc, $0ab2                                     ; $680b: $01 $b2 $0a
	cp e                                             ; $680e: $bb
	ld c, l                                          ; $680f: $4d
	rst SubAFromBC                                          ; $6810: $e7
	adc b                                            ; $6811: $88
	ld l, [hl]                                       ; $6812: $6e
	sbc h                                            ; $6813: $9c
	rst $38                                          ; $6814: $ff
	sub l                                            ; $6815: $95
	db $e3                                           ; $6816: $e3
	cp $1f                                           ; $6817: $fe $1f
	ld hl, $fdaa                                     ; $6819: $21 $aa $fd
	dec hl                                           ; $681c: $2b
	add a                                            ; $681d: $87
	rra                                              ; $681e: $1f
	pop af                                           ; $681f: $f1
	ld l, a                                          ; $6820: $6f
	xor $3f                                          ; $6821: $ee $3f
	nop                                              ; $6823: $00
	sbc $66                                          ; $6824: $de $66
	sbc e                                            ; $6826: $9b
	ld [hl+], a                                      ; $6827: $22
	inc h                                            ; $6828: $24
	ld b, h                                          ; $6829: $44
	ld b, d                                          ; $682a: $42
	db $db                                           ; $682b: $db
	ld h, [hl]                                       ; $682c: $66
	db $dd                                           ; $682d: $dd
	ld [hl+], a                                      ; $682e: $22
	dec sp                                           ; $682f: $3b
	or $9e                                           ; $6830: $f6 $9e
	ld h, $63                                        ; $6832: $26 $63
	or $9e                                           ; $6834: $f6 $9e
	dec h                                            ; $6836: $25
	db $db                                           ; $6837: $db
	ld h, [hl]                                       ; $6838: $66
	sbc l                                            ; $6839: $9d
	ld d, h                                          ; $683a: $54
	ld b, d                                          ; $683b: $42
	ld l, e                                          ; $683c: $6b
	or $9a                                           ; $683d: $f6 $9a
	ld h, h                                          ; $683f: $64
	ld [hl-], a                                      ; $6840: $32
	ld [hl+], a                                      ; $6841: $22
	inc h                                            ; $6842: $24
	inc hl                                           ; $6843: $23
	ld l, a                                          ; $6844: $6f
	or $9b                                           ; $6845: $f6 $9b
	inc [hl]                                         ; $6847: $34
	inc h                                            ; $6848: $24
	inc sp                                           ; $6849: $33
	inc sp                                           ; $684a: $33

jr_051_684b:
	ld l, a                                          ; $684b: $6f
	or $9b                                           ; $684c: $f6 $9b
	inc sp                                           ; $684e: $33
	ld b, l                                          ; $684f: $45
	inc sp                                           ; $6850: $33
	dec [hl]                                         ; $6851: $35
	call c, $9e66                                    ; $6852: $dc $66 $9e
	ld b, e                                          ; $6855: $43
	sbc $33                                          ; $6856: $de $33
	sbc l                                            ; $6858: $9d
	dec [hl]                                         ; $6859: $35
	ld [hl], a                                       ; $685a: $77
	ld h, a                                          ; $685b: $67
	or $9e                                           ; $685c: $f6 $9e
	ld [hl-], a                                      ; $685e: $32
	ld a, e                                          ; $685f: $7b
	or $f9                                           ; $6860: $f6 $f9
	adc c                                            ; $6862: $89
	reti                                             ; $6863: $d9


	rst $38                                          ; $6864: $ff
	sub a                                            ; $6865: $97
	inc bc                                           ; $6866: $03
	rlca                                             ; $6867: $07
	ld c, $0d                                        ; $6868: $0e $0d
	dec de                                           ; $686a: $1b
	ld d, $14                                        ; $686b: $16 $14
	jr z, jr_051_684b                                ; $686d: $28 $dc

	rst $38                                          ; $686f: $ff
	sub a                                            ; $6870: $97
	db $fc                                           ; $6871: $fc
	ldh a, [$e0]                                     ; $6872: $f0 $e0
	cp a                                             ; $6874: $bf
	ld a, a                                          ; $6875: $7f
	ld sp, hl                                        ; $6876: $f9
	ldh [$80], a                                     ; $6877: $e0 $80
	cp $93                                           ; $6879: $fe $93
	or $e4                                           ; $687b: $f6 $e4
	db $ec                                           ; $687d: $ec
	ret z                                            ; $687e: $c8

	ret c                                            ; $687f: $d8

	reti                                             ; $6880: $d9


	db $d3                                           ; $6881: $d3
	sub d                                            ; $6882: $92
	ld hl, sp-$08                                    ; $6883: $f8 $f8
	ldh a, [$f0]                                     ; $6885: $f0 $f0
	sbc $e0                                          ; $6887: $de $e0
	add b                                            ; $6889: $80
	pop hl                                           ; $688a: $e1
	ld a, b                                          ; $688b: $78
	push hl                                          ; $688c: $e5
	call z, $108a                                    ; $688d: $cc $8a $10
	dec d                                            ; $6890: $15
	ld sp, $0121                                     ; $6891: $31 $21 $01
	ld [bc], a                                       ; $6894: $02
	ld [bc], a                                       ; $6895: $02
	inc b                                            ; $6896: $04
	inc c                                            ; $6897: $0c
	ld [$1808], sp                                   ; $6898: $08 $08 $18
	cp c                                             ; $689b: $b9
	ld h, e                                          ; $689c: $63
	ld d, e                                          ; $689d: $53
	add $a6                                          ; $689e: $c6 $a6
	and h                                            ; $68a0: $a4
	inc b                                            ; $68a1: $04
	inc b                                            ; $68a2: $04
	nop                                              ; $68a3: $00
	db $10                                           ; $68a4: $10
	jr nz, jr_051_68c8                               ; $68a5: $20 $21

	ld b, c                                          ; $68a7: $41
	ld b, e                                          ; $68a8: $43
	rst SubAFromDE                                          ; $68a9: $df
	jp $dd9b                                         ; $68aa: $c3 $9b $dd


	sbc c                                            ; $68ad: $99
	sub b                                            ; $68ae: $90
	or b                                             ; $68af: $b0
	db $dd                                           ; $68b0: $dd
	jr nz, @+$01                                     ; $68b1: $20 $ff

	rst SubAFromDE                                          ; $68b3: $df
	add hl, bc                                       ; $68b4: $09
	db $dd                                           ; $68b5: $dd
	add hl, de                                       ; $68b6: $19
	sub e                                            ; $68b7: $93
	db $db                                           ; $68b8: $db
	sub e                                            ; $68b9: $93
	and d                                            ; $68ba: $a2
	and d                                            ; $68bb: $a2
	stop                                             ; $68bc: $10 $00
	ld sp, $0029                                     ; $68be: $31 $29 $00
	nop                                              ; $68c1: $00
	ld de, $de11                                     ; $68c2: $11 $11 $de
	add e                                            ; $68c5: $83
	sub l                                            ; $68c6: $95
	sub e                                            ; $68c7: $93

jr_051_68c8:
	ld [hl], $24                                     ; $68c8: $36 $24
	inc h                                            ; $68ca: $24
	ld hl, $ac2c                                     ; $68cb: $21 $2c $ac
	inc h                                            ; $68ce: $24
	inc l                                            ; $68cf: $2c
	nop                                              ; $68d0: $00
	sbc $12                                          ; $68d1: $de $12
	rst SubAFromDE                                          ; $68d3: $df
	inc de                                           ; $68d4: $13
	rst SubAFromDE                                          ; $68d5: $df
	sbc e                                            ; $68d6: $9b
	add b                                            ; $68d7: $80
	db $ec                                           ; $68d8: $ec
	ld b, h                                          ; $68d9: $44
	ld d, h                                          ; $68da: $54
	ld b, d                                          ; $68db: $42
	ld a, [hl+]                                      ; $68dc: $2a
	jr nz, jr_051_6908                               ; $68dd: $20 $29

	push bc                                          ; $68df: $c5
	ld [bc], a                                       ; $68e0: $02
	inc hl                                           ; $68e1: $23
	inc hl                                           ; $68e2: $23
	ld sp, $1911                                     ; $68e3: $31 $11 $19
	sbc h                                            ; $68e6: $9c
	sbc [hl]                                         ; $68e7: $9e
	jr nc, jr_051_691a                               ; $68e8: $30 $30

	ld de, $6848                                     ; $68ea: $11 $48 $68
	ld a, h                                          ; $68ed: $7c
	inc a                                            ; $68ee: $3c
	ld a, $0e                                        ; $68ef: $3e $0e
	rrca                                             ; $68f1: $0f
	adc a                                            ; $68f2: $8f
	add a                                            ; $68f3: $87
	rst JumpTable                                          ; $68f4: $c7
	db $e3                                           ; $68f5: $e3
	di                                               ; $68f6: $f3
	add b                                            ; $68f7: $80
	jp hl                                            ; $68f8: $e9


	ld c, e                                          ; $68f9: $4b
	dec h                                            ; $68fa: $25

jr_051_68fb:
	add e                                            ; $68fb: $83
	pop de                                           ; $68fc: $d1
	and c                                            ; $68fd: $a1
	ld e, b                                          ; $68fe: $58
	ld l, b                                          ; $68ff: $68
	inc [hl]                                         ; $6900: $34
	inc a                                            ; $6901: $3c
	ld e, $1e                                        ; $6902: $1e $1e
	adc a                                            ; $6904: $8f
	rst GetHLinHL                                          ; $6905: $cf
	rst SubAFromBC                                          ; $6906: $e7
	rst FarCall                                          ; $6907: $f7

jr_051_6908:
	ei                                               ; $6908: $fb
	ld l, e                                          ; $6909: $6b
	or a                                             ; $690a: $b7
	sub l                                            ; $690b: $95
	db $db                                           ; $690c: $db
	ld c, d                                          ; $690d: $4a
	db $e3                                           ; $690e: $e3
	and c                                            ; $690f: $a1
	ld h, c                                          ; $6910: $61
	sbc h                                            ; $6911: $9c
	ld c, h                                          ; $6912: $4c
	ld l, [hl]                                       ; $6913: $6e
	ld h, $b7                                        ; $6914: $26 $b7
	sbc a                                            ; $6916: $9f
	rst SubAFromDE                                          ; $6917: $df
	rst SubAFromDE                                          ; $6918: $df
	rst SubAFromDE                                          ; $6919: $df

jr_051_691a:
	ld b, $df                                        ; $691a: $06 $df
	dec h                                            ; $691c: $25
	rst SubAFromDE                                          ; $691d: $df
	cpl                                              ; $691e: $2f
	sbc l                                            ; $691f: $9d
	dec l                                            ; $6920: $2d
	xor l                                            ; $6921: $ad
	db $dd                                           ; $6922: $dd
	db $fc                                           ; $6923: $fc
	sub a                                            ; $6924: $97
	db $fd                                           ; $6925: $fd
	rst $38                                          ; $6926: $ff
	ld hl, sp-$08                                    ; $6927: $f8 $f8
	db $fd                                           ; $6929: $fd
	push af                                          ; $692a: $f5
	db $f4                                           ; $692b: $f4
	db $f4                                           ; $692c: $f4
	sbc $e4                                          ; $692d: $de $e4
	sbc [hl]                                         ; $692f: $9e
	or $de                                           ; $6930: $f6 $de
	sbc a                                            ; $6932: $9f
	sub a                                            ; $6933: $97

jr_051_6934:
	cp a                                             ; $6934: $bf
	ccf                                              ; $6935: $3f
	cp a                                             ; $6936: $bf
	ld a, a                                          ; $6937: $7f
	ccf                                              ; $6938: $3f
	db $fc                                           ; $6939: $fc
	cp $fe                                           ; $693a: $fe $fe
	db $dd                                           ; $693c: $dd
	rst $38                                          ; $693d: $ff
	sub e                                            ; $693e: $93
	ld a, a                                          ; $693f: $7f
	ld [hl], b                                       ; $6940: $70
	jr c, jr_051_68fb                                ; $6941: $38 $b8

	sbc h                                            ; $6943: $9c
	sbc h                                            ; $6944: $9c
	adc h                                            ; $6945: $8c
	adc h                                            ; $6946: $8c
	add $07                                          ; $6947: $c6 $07
	inc bc                                           ; $6949: $03
	ld bc, $73f4                                     ; $694a: $01 $f4 $73
	db $e3                                           ; $694d: $e3
	ld a, a                                          ; $694e: $7f
	reti                                             ; $694f: $d9


	sbc [hl]                                         ; $6950: $9e
	rra                                              ; $6951: $1f
	ei                                               ; $6952: $fb
	ld a, a                                          ; $6953: $7f
	db $e4                                           ; $6954: $e4
	rst SubAFromDE                                          ; $6955: $df
	rst FarCall                                          ; $6956: $f7
	db $dd                                           ; $6957: $dd
	ei                                               ; $6958: $fb
	rst SubAFromDE                                          ; $6959: $df
	db $fd                                           ; $695a: $fd
	sub a                                            ; $695b: $97
	ld d, $13                                        ; $695c: $16 $13
	inc bc                                           ; $695e: $03
	dec bc                                           ; $695f: $0b
	dec bc                                           ; $6960: $0b
	add hl, bc                                       ; $6961: $09
	ld bc, $de85                                     ; $6962: $01 $85 $de
	ldh [$dc], a                                     ; $6965: $e0 $dc
	ldh a, [$fb]                                     ; $6967: $f0 $fb
	rst SubAFromDE                                          ; $6969: $df
	add b                                            ; $696a: $80
	pop af                                           ; $696b: $f1
	rst SubAFromDE                                          ; $696c: $df
	rst $38                                          ; $696d: $ff
	sub [hl]                                         ; $696e: $96
	cp $f8                                           ; $696f: $fe $f8
	ldh a, [$e0]                                     ; $6971: $f0 $e0
	ret nz                                           ; $6973: $c0

	add b                                            ; $6974: $80
	ld d, b                                          ; $6975: $50
	and b                                            ; $6976: $a0
	ld b, b                                          ; $6977: $40
	ld [hl], e                                       ; $6978: $73
	db $e3                                           ; $6979: $e3
	ld b, a                                          ; $697a: $47
	rst SubAFromDE                                          ; $697b: $df
	sub [hl]                                         ; $697c: $96
	sub d                                            ; $697d: $92
	sub c                                            ; $697e: $91
	sub a                                            ; $697f: $97
	sub a                                            ; $6980: $97
	add e                                            ; $6981: $83
	jp nz, $c9c9                                     ; $6982: $c2 $c9 $c9

	pop hl                                           ; $6985: $e1
	sbc $e2                                          ; $6986: $de $e2
	sbc [hl]                                         ; $6988: $9e
	or $de                                           ; $6989: $f6 $de
	rst FarCall                                          ; $698b: $f7
	sub [hl]                                         ; $698c: $96
	add hl, hl                                       ; $698d: $29
	ld a, [hl+]                                      ; $698e: $2a
	ld l, d                                          ; $698f: $6a
	ld l, d                                          ; $6990: $6a
	ld a, [hl+]                                      ; $6991: $2a
	and d                                            ; $6992: $a2
	xor c                                            ; $6993: $a9
	ld l, l                                          ; $6994: $6d
	db $10                                           ; $6995: $10
	db $dd                                           ; $6996: $dd
	ld de, $1993                                     ; $6997: $11 $93 $19
	jr jr_051_6934                                   ; $699a: $18 $98

	inc b                                            ; $699c: $04
	jr nz, jr_051_69c7                               ; $699d: $20 $28

	add hl, hl                                       ; $699f: $29
	add hl, bc                                       ; $69a0: $09
	dec b                                            ; $69a1: $05
	dec [hl]                                         ; $69a2: $35
	inc h                                            ; $69a3: $24
	jp $c7de                                         ; $69a4: $c3 $de $c7


	add b                                            ; $69a7: $80
	rst SubAFromBC                                          ; $69a8: $e7
	db $e3                                           ; $69a9: $e3
	db $e3                                           ; $69aa: $e3
	di                                               ; $69ab: $f3
	inc c                                            ; $69ac: $0c
	ld c, h                                          ; $69ad: $4c
	ld c, b                                          ; $69ae: $48
	set 1, l                                         ; $69af: $cb $cd
	ld c, l                                          ; $69b1: $4d
	adc [hl]                                         ; $69b2: $8e
	adc a                                            ; $69b3: $8f
	add hl, sp                                       ; $69b4: $39
	add hl, sp                                       ; $69b5: $39
	dec a                                            ; $69b6: $3d
	inc a                                            ; $69b7: $3c
	ld a, $be                                        ; $69b8: $3e $be
	ei                                               ; $69ba: $fb
	ld sp, hl                                        ; $69bb: $f9
	ldh [$aa], a                                     ; $69bc: $e0 $aa
	ld l, [hl]                                       ; $69be: $6e
	ld a, d                                          ; $69bf: $7a
	ld d, h                                          ; $69c0: $54
	ld h, h                                          ; $69c1: $64
	or d                                             ; $69c2: $b2
	add hl, sp                                       ; $69c3: $39
	sbc e                                            ; $69c4: $9b
	reti                                             ; $69c5: $d9


	reti                                             ; $69c6: $d9


jr_051_69c7:
	add h                                            ; $69c7: $84
	call $ffef                                       ; $69c8: $cd $ef $ff
	ld a, a                                          ; $69cb: $7f
	rst AddAOntoHL                                          ; $69cc: $ef
	xor b                                            ; $69cd: $a8
	and h                                            ; $69ce: $a4
	db $f4                                           ; $69cf: $f4
	sub $e2                                          ; $69d0: $d6 $e2
	ld [hl], e                                       ; $69d2: $73
	ld [hl], c                                       ; $69d3: $71
	ld a, c                                          ; $69d4: $79
	sbc a                                            ; $69d5: $9f
	rst SubAFromDE                                          ; $69d6: $df
	rst GetHLinHL                                          ; $69d7: $cf
	rst AddAOntoHL                                          ; $69d8: $ef
	rst $38                                          ; $69d9: $ff
	rst $38                                          ; $69da: $ff
	rst SubAFromDE                                          ; $69db: $df
	rst GetHLinHL                                          ; $69dc: $cf
	or [hl]                                          ; $69dd: $b6
	ld d, a                                          ; $69de: $57
	ld l, e                                          ; $69df: $6b
	ld [hl], e                                       ; $69e0: $73
	dec a                                            ; $69e1: $3d
	ccf                                              ; $69e2: $3f
	ld [hl], a                                       ; $69e3: $77
	ldh a, [c]                                       ; $69e4: $f2
	sub l                                            ; $69e5: $95
	or $fe                                           ; $69e6: $f6 $fe
	rst AddAOntoHL                                          ; $69e8: $ef
	db $e3                                           ; $69e9: $e3
	pop af                                           ; $69ea: $f1
	ld [hl], b                                       ; $69eb: $70
	cp [hl]                                          ; $69ec: $be
	sbc $d7                                          ; $69ed: $de $d7
	jr c, jr_051_6a6b                                ; $69ef: $38 $7a

	ccf                                              ; $69f1: $3f
	add b                                            ; $69f2: $80
	di                                               ; $69f3: $f3
	ld h, l                                          ; $69f4: $65
	or e                                             ; $69f5: $b3
	ld a, c                                          ; $69f6: $79
	rst $38                                          ; $69f7: $ff
	rst $38                                          ; $69f8: $ff
	nop                                              ; $69f9: $00
	add e                                            ; $69fa: $83
	inc c                                            ; $69fb: $0c
	jr c, jr_051_6a1a                                ; $69fc: $38 $1c

	sbc [hl]                                         ; $69fe: $9e
	ld c, a                                          ; $69ff: $4f
	ei                                               ; $6a00: $fb
	call c, $e31f                                    ; $6a01: $dc $1f $e3
	rst $38                                          ; $6a04: $ff
	rst $38                                          ; $6a05: $ff
	rst FarCall                                          ; $6a06: $f7
	ld sp, hl                                        ; $6a07: $f9
	db $fc                                           ; $6a08: $fc
	ccf                                              ; $6a09: $3f
	db $e3                                           ; $6a0a: $e3
	inc e                                            ; $6a0b: $1c
	ld b, c                                          ; $6a0c: $41
	jr nz, jr_051_6a1f                               ; $6a0d: $20 $10

	db $10                                           ; $6a0f: $10
	adc c                                            ; $6a10: $89
	jp hl                                            ; $6a11: $e9


	sbc l                                            ; $6a12: $9d
	push af                                          ; $6a13: $f5
	db $fd                                           ; $6a14: $fd
	call c, $9cff                                    ; $6a15: $dc $ff $9c
	ld a, a                                          ; $6a18: $7f
	rra                                              ; $6a19: $1f

jr_051_6a1a:
	rrca                                             ; $6a1a: $0f
	sbc $f9                                          ; $6a1b: $de $f9
	sbc d                                            ; $6a1d: $9a
	ei                                               ; $6a1e: $fb

jr_051_6a1f:
	ldh [c], a                                       ; $6a1f: $e2
	ret                                              ; $6a20: $c9


	adc e                                            ; $6a21: $8b
	db $d3                                           ; $6a22: $d3
	sbc $f9                                          ; $6a23: $de $f9
	sbc d                                            ; $6a25: $9a
	jp hl                                            ; $6a26: $e9


	ret                                              ; $6a27: $c9


	add d                                            ; $6a28: $82
	jp nc, $ded2                                     ; $6a29: $d2 $d2 $de

	ldh a, [c]                                       ; $6a2c: $f2
	sbc d                                            ; $6a2d: $9a
	jp nc, $cbda                                     ; $6a2e: $d2 $da $cb

	ret                                              ; $6a31: $c9


	ret                                              ; $6a32: $c9


	sbc $3f                                          ; $6a33: $de $3f
	ret c                                            ; $6a35: $d8

	ld a, a                                          ; $6a36: $7f
	db $dd                                           ; $6a37: $dd
	ccf                                              ; $6a38: $3f
	sbc [hl]                                         ; $6a39: $9e
	add $de                                          ; $6a3a: $c6 $de
	jp nz, $e29e                                     ; $6a3c: $c2 $9e $e2

	sbc $e0                                          ; $6a3f: $de $e0
	db $db                                           ; $6a41: $db
	add b                                            ; $6a42: $80
	rst FarCall                                          ; $6a43: $f7
	ld a, a                                          ; $6a44: $7f
	cp [hl]                                          ; $6a45: $be
	ld a, d                                          ; $6a46: $7a
	xor [hl]                                         ; $6a47: $ae
	ld e, d                                          ; $6a48: $5a
	xor l                                            ; $6a49: $ad
	sbc $fd                                          ; $6a4a: $de $fd
	db $dd                                           ; $6a4c: $dd
	cp $96                                           ; $6a4d: $fe $96
	ld a, [hl]                                       ; $6a4f: $7e
	add l                                            ; $6a50: $85
	ld b, l                                          ; $6a51: $45
	ld h, h                                          ; $6a52: $64
	jr nc, jr_051_6a87                               ; $6a53: $30 $32

	ld a, [de]                                       ; $6a55: $1a
	ld a, [de]                                       ; $6a56: $1a
	ld c, $d9                                        ; $6a57: $0e $d9
	ld hl, sp-$23                                    ; $6a59: $f8 $dd
	add b                                            ; $6a5b: $80
	sbc $c0                                          ; $6a5c: $de $c0
	sbc [hl]                                         ; $6a5e: $9e
	ld b, b                                          ; $6a5f: $40
	rst AddAOntoHL                                          ; $6a60: $ef
	sbc c                                            ; $6a61: $99
	rlca                                             ; $6a62: $07
	ld a, d                                          ; $6a63: $7a
	xor l                                            ; $6a64: $ad
	ld e, b                                          ; $6a65: $58
	xor h                                            ; $6a66: $ac
	ld d, [hl]                                       ; $6a67: $56
	ld a, e                                          ; $6a68: $7b
	ld hl, sp-$68                                    ; $6a69: $f8 $98

jr_051_6a6b:
	ld a, a                                          ; $6a6b: $7f
	rst $38                                          ; $6a6c: $ff
	rst $38                                          ; $6a6d: $ff
	ei                                               ; $6a6e: $fb
	ld sp, hl                                        ; $6a6f: $f9
	nop                                              ; $6a70: $00
	ccf                                              ; $6a71: $3f
	ld a, e                                          ; $6a72: $7b
	ld d, [hl]                                       ; $6a73: $56
	sbc h                                            ; $6a74: $9c
	db $eb                                           ; $6a75: $eb
	halt                                             ; $6a76: $76
	ld l, c                                          ; $6a77: $69
	ld [hl], a                                       ; $6a78: $77
	ld hl, sp-$23                                    ; $6a79: $f8 $dd
	rst $38                                          ; $6a7b: $ff
	sub a                                            ; $6a7c: $97
	ld h, c                                          ; $6a7d: $61
	ldh [$f0], a                                     ; $6a7e: $e0 $f0
	ld hl, sp-$08                                    ; $6a80: $f8 $f8
	db $fc                                           ; $6a82: $fc
	cp $ff                                           ; $6a83: $fe $ff
	ld a, e                                          ; $6a85: $7b
	db $e3                                           ; $6a86: $e3

jr_051_6a87:
	call c, $92ff                                    ; $6a87: $dc $ff $92
	ld l, c                                          ; $6a8a: $69
	and $a5                                          ; $6a8b: $e6 $a5
	ld [hl], d                                       ; $6a8d: $72
	ld d, e                                          ; $6a8e: $53
	ld sp, $1021                                     ; $6a8f: $31 $21 $10
	sbc h                                            ; $6a92: $9c
	sbc h                                            ; $6a93: $9c
	sbc $cf                                          ; $6a94: $de $cf
	rst AddAOntoHL                                          ; $6a96: $ef
	ld a, d                                          ; $6a97: $7a
	cp $93                                           ; $6a98: $fe $93
	inc l                                            ; $6a9a: $2c
	inc e                                            ; $6a9b: $1c
	sub [hl]                                         ; $6a9c: $96
	adc [hl]                                         ; $6a9d: $8e
	ld a, [bc]                                       ; $6a9e: $0a
	add h                                            ; $6a9f: $84
	add $e3                                          ; $6aa0: $c6 $e3
	di                                               ; $6aa2: $f3
	di                                               ; $6aa3: $f3
	ld a, c                                          ; $6aa4: $79
	ld a, c                                          ; $6aa5: $79
	ld [hl], a                                       ; $6aa6: $77
	dec hl                                           ; $6aa7: $2b
	ld a, c                                          ; $6aa8: $79
	db $db                                           ; $6aa9: $db
	add b                                            ; $6aaa: $80
	and $75                                          ; $6aab: $e6 $75
	ld [hl], a                                       ; $6aad: $77
	ld a, a                                          ; $6aae: $7f
	ld a, $f8                                        ; $6aaf: $3e $f8
	ld hl, sp-$44                                    ; $6ab1: $f8 $bc
	cp l                                             ; $6ab3: $bd
	rst SubAFromDE                                          ; $6ab4: $df
	sbc $ce                                          ; $6ab5: $de $ce
	jp hl                                            ; $6ab7: $e9


	and h                                            ; $6ab8: $a4
	rst SubAFromDE                                          ; $6ab9: $df
	ccf                                              ; $6aba: $3f
	rst $38                                          ; $6abb: $ff
	db $ed                                           ; $6abc: $ed
	sbc e                                            ; $6abd: $9b
	ld l, a                                          ; $6abe: $6f
	db $fc                                           ; $6abf: $fc
	rst $38                                          ; $6ac0: $ff
	ld a, e                                          ; $6ac1: $7b
	ldh a, [$d8]                                     ; $6ac2: $f0 $d8
	ld e, $67                                        ; $6ac4: $1e $67
	sbc a                                            ; $6ac6: $9f
	ccf                                              ; $6ac7: $3f
	cp h                                             ; $6ac8: $bc
	ld a, [hl]                                       ; $6ac9: $7e
	sbc $ff                                          ; $6aca: $de $ff
	sub h                                            ; $6acc: $94
	cp a                                             ; $6acd: $bf
	rst $38                                          ; $6ace: $ff
	rst GetHLinHL                                          ; $6acf: $cf
	rst SubAFromBC                                          ; $6ad0: $e7
	db $e3                                           ; $6ad1: $e3
	pop af                                           ; $6ad2: $f1
	jr jr_051_6ad5                                   ; $6ad3: $18 $00

jr_051_6ad5:
	ret nz                                           ; $6ad5: $c0

	ldh [$b0], a                                     ; $6ad6: $e0 $b0
	ld a, d                                          ; $6ad8: $7a
	xor h                                            ; $6ad9: $ac
	call c, $9bff                                    ; $6ada: $dc $ff $9b
	cp b                                             ; $6add: $b8
	sbc b                                            ; $6ade: $98
	call z, Call_051_79c0                            ; $6adf: $cc $c0 $79
	ld c, e                                          ; $6ae2: $4b
	add b                                            ; $6ae3: $80
	nop                                              ; $6ae4: $00
	db $ec                                           ; $6ae5: $ec
	rst FarCall                                          ; $6ae6: $f7
	rst SubAFromDE                                          ; $6ae7: $df
	ld hl, sp-$30                                    ; $6ae8: $f8 $d0
	ldh a, [c]                                       ; $6aea: $f2
	rst SubAFromBC                                          ; $6aeb: $e7
	db $ed                                           ; $6aec: $ed
	inc de                                           ; $6aed: $13
	rrca                                             ; $6aee: $0f
	ccf                                              ; $6aef: $3f
	inc a                                            ; $6af0: $3c
	jr c, jr_051_6afc                                ; $6af1: $38 $09

	rrca                                             ; $6af3: $0f
	rlca                                             ; $6af4: $07
	inc e                                            ; $6af5: $1c
	rst FarCall                                          ; $6af6: $f7
	db $fd                                           ; $6af7: $fd
	rra                                              ; $6af8: $1f
	ccf                                              ; $6af9: $3f
	rst FarCall                                          ; $6afa: $f7
	pop hl                                           ; $6afb: $e1

jr_051_6afc:
	call $f8e3                                       ; $6afc: $cd $e3 $f8
	cp $3f                                           ; $6aff: $fe $3f
	ld a, a                                          ; $6b01: $7f
	db $fd                                           ; $6b02: $fd
	add c                                            ; $6b03: $81
	db $e4                                           ; $6b04: $e4
	ld hl, sp-$09                                    ; $6b05: $f8 $f7
	ld a, a                                          ; $6b07: $7f
	cp $7d                                           ; $6b08: $fe $7d
	rst SubAFromHL                                          ; $6b0a: $d7
	ld a, [$fffd]                                    ; $6b0b: $fa $fd $ff
	rrca                                             ; $6b0e: $0f
	add h                                            ; $6b0f: $84
	rlca                                             ; $6b10: $07
	add a                                            ; $6b11: $87
	xor $0d                                          ; $6b12: $ee $0d
	dec bc                                           ; $6b14: $0b
	rrca                                             ; $6b15: $0f
	di                                               ; $6b16: $f3
	ld [hl], a                                       ; $6b17: $77
	scf                                              ; $6b18: $37
	or a                                             ; $6b19: $b7
	scf                                              ; $6b1a: $37
	scf                                              ; $6b1b: $37
	cpl                                              ; $6b1c: $2f
	ld l, a                                          ; $6b1d: $6f
	jp nc, $e2d2                                     ; $6b1e: $d2 $d2 $e2

	ldh [$de], a                                     ; $6b21: $e0 $de
	db $e4                                           ; $6b23: $e4
	sbc l                                            ; $6b24: $9d
	call nz, $ddc9                                   ; $6b25: $c4 $c9 $dd
	push bc                                          ; $6b28: $c5
	ld a, [hl]                                       ; $6b29: $7e
	sub $9e                                          ; $6b2a: $d6 $9e
	and d                                            ; $6b2c: $a2
	reti                                             ; $6b2d: $d9


	rst $38                                          ; $6b2e: $ff
	sub a                                            ; $6b2f: $97
	ld a, $1e                                        ; $6b30: $3e $1e
	ld e, $1c                                        ; $6b32: $1e $1c
	sbc h                                            ; $6b34: $9c
	sbc b                                            ; $6b35: $98
	sbc a                                            ; $6b36: $9f
	adc a                                            ; $6b37: $8f
	ld l, l                                          ; $6b38: $6d
	cp d                                             ; $6b39: $ba
	ld a, d                                          ; $6b3a: $7a
	ld l, l                                          ; $6b3b: $6d
	db $fc                                           ; $6b3c: $fc
	ld a, a                                          ; $6b3d: $7f
	rst FarCall                                          ; $6b3e: $f7
	ei                                               ; $6b3f: $fb
	sbc l                                            ; $6b40: $9d
	ret nz                                           ; $6b41: $c0

	db $fc                                           ; $6b42: $fc
	pop af                                           ; $6b43: $f1
	ld a, l                                          ; $6b44: $7d
	halt                                             ; $6b45: $76
	rst SubAFromDE                                          ; $6b46: $df
	rrca                                             ; $6b47: $0f
	ld a, [hl]                                       ; $6b48: $7e
	xor [hl]                                         ; $6b49: $ae
	ld a, [hl]                                       ; $6b4a: $7e
	xor l                                            ; $6b4b: $ad
	sbc [hl]                                         ; $6b4c: $9e
	ld b, $77                                        ; $6b4d: $06 $77
	ei                                               ; $6b4f: $fb
	ld a, d                                          ; $6b50: $7a
	xor b                                            ; $6b51: $a8
	sbc $78                                          ; $6b52: $de $78
	sbc $70                                          ; $6b54: $de $70
	rst SubAFromDE                                          ; $6b56: $df
	or b                                             ; $6b57: $b0
	sbc [hl]                                         ; $6b58: $9e
	ld b, b                                          ; $6b59: $40
	db $dd                                           ; $6b5a: $dd
	ld h, b                                          ; $6b5b: $60
	rst SubAFromDE                                          ; $6b5c: $df
	jr nz, @-$60                                     ; $6b5d: $20 $9e

	and b                                            ; $6b5f: $a0
	pop af                                           ; $6b60: $f1
	add a                                            ; $6b61: $87
	ld l, $96                                        ; $6b62: $2e $96
	ld c, a                                          ; $6b64: $4f
	and [hl]                                         ; $6b65: $a6
	ld d, [hl]                                       ; $6b66: $56
	xor l                                            ; $6b67: $ad
	db $f4                                           ; $6b68: $f4
	ld e, d                                          ; $6b69: $5a
	ld sp, hl                                        ; $6b6a: $f9
	ld l, c                                          ; $6b6b: $69
	cp b                                             ; $6b6c: $b8
	ld e, c                                          ; $6b6d: $59
	xor c                                            ; $6b6e: $a9
	ld d, d                                          ; $6b6f: $52
	dec bc                                           ; $6b70: $0b
	and l                                            ; $6b71: $a5
	ld h, d                                          ; $6b72: $62
	ld [hl], h                                       ; $6b73: $74
	ld h, c                                          ; $6b74: $61
	ld l, d                                          ; $6b75: $6a
	ld [hl], b                                       ; $6b76: $70
	ld h, h                                          ; $6b77: $64
	ld h, b                                          ; $6b78: $60
	ld h, b                                          ; $6b79: $60
	reti                                             ; $6b7a: $d9


	rst $38                                          ; $6b7b: $ff
	sub a                                            ; $6b7c: $97
	dec hl                                           ; $6b7d: $2b
	or e                                             ; $6b7e: $b3
	inc d                                            ; $6b7f: $14
	ld b, c                                          ; $6b80: $41
	sub h                                            ; $6b81: $94
	ld c, b                                          ; $6b82: $48
	inc d                                            ; $6b83: $14
	ld a, [bc]                                       ; $6b84: $0a
	ld [hl], a                                       ; $6b85: $77
	ld a, [bc]                                       ; $6b86: $0a
	sub a                                            ; $6b87: $97
	ld l, a                                          ; $6b88: $6f
	or a                                             ; $6b89: $b7
	db $eb                                           ; $6b8a: $eb
	push af                                          ; $6b8b: $f5
	sbc b                                            ; $6b8c: $98
	call z, $f3e6                                    ; $6b8d: $cc $e6 $f3
	ld a, d                                          ; $6b90: $7a
	ret c                                            ; $6b91: $d8

	ld l, [hl]                                       ; $6b92: $6e
	nop                                              ; $6b93: $00
	sbc $ff                                          ; $6b94: $de $ff
	sub a                                            ; $6b96: $97
	pop af                                           ; $6b97: $f1
	ld a, h                                          ; $6b98: $7c
	ld a, l                                          ; $6b99: $7d
	cp d                                             ; $6b9a: $ba
	db $dd                                           ; $6b9b: $dd
	rst $38                                          ; $6b9c: $ff
	ld a, l                                          ; $6b9d: $7d
	ld a, e                                          ; $6b9e: $7b
	sbc $ff                                          ; $6b9f: $de $ff
	add b                                            ; $6ba1: $80
	db $fd                                           ; $6ba2: $fd
	ei                                               ; $6ba3: $fb
	ld a, [$fcfa]                                    ; $6ba4: $fa $fa $fc
	ld a, $bd                                        ; $6ba7: $3e $bd
	db $dd                                           ; $6ba9: $dd
	rst $38                                          ; $6baa: $ff
	cp e                                             ; $6bab: $bb
	ld l, l                                          ; $6bac: $6d
	sub a                                            ; $6bad: $97
	ld hl, sp-$1f                                    ; $6bae: $f8 $e1
	ldh a, [c]                                       ; $6bb0: $f2
	ldh a, [c]                                       ; $6bb1: $f2
	pop hl                                           ; $6bb2: $e1
	ld h, a                                          ; $6bb3: $67
	di                                               ; $6bb4: $f3
	ld a, b                                          ; $6bb5: $78
	inc c                                            ; $6bb6: $0c
	ld hl, sp-$0f                                    ; $6bb7: $f8 $f1
	jp $bfe6                                         ; $6bb9: $c3 $e6 $bf


	rst FarCall                                          ; $6bbc: $f7
	sub b                                            ; $6bbd: $90
	ld c, b                                          ; $6bbe: $48
	ld [hl], c                                       ; $6bbf: $71
	db $e3                                           ; $6bc0: $e3
	sub d                                            ; $6bc1: $92
	rst SubAFromBC                                          ; $6bc2: $e7
	rst GetHLinHL                                          ; $6bc3: $cf
	rst $38                                          ; $6bc4: $ff
	cp a                                             ; $6bc5: $bf
	sbc a                                            ; $6bc6: $9f
	rrca                                             ; $6bc7: $0f
	rst $38                                          ; $6bc8: $ff
	xor $0c                                          ; $6bc9: $ee $0c
	nop                                              ; $6bcb: $00
	and b                                            ; $6bcc: $a0
	jr nz, @+$52                                     ; $6bcd: $20 $50

	sbc $c0                                          ; $6bcf: $de $c0
	sbc l                                            ; $6bd1: $9d
	ldh [rAUD4LEN], a                                ; $6bd2: $e0 $20
	ld a, e                                          ; $6bd4: $7b
	cp $9c                                           ; $6bd5: $fe $9c
	add b                                            ; $6bd7: $80
	rra                                              ; $6bd8: $1f
	rlca                                             ; $6bd9: $07
	db $fd                                           ; $6bda: $fd
	sbc l                                            ; $6bdb: $9d
	ld [$f90e], sp                                   ; $6bdc: $08 $0e $f9
	sbc d                                            ; $6bdf: $9a
	call nz, $0f06                                   ; $6be0: $c4 $06 $0f
	nop                                              ; $6be3: $00
	inc bc                                           ; $6be4: $03
	ld a, e                                          ; $6be5: $7b
	db $ec                                           ; $6be6: $ec
	ld h, h                                          ; $6be7: $64
	sbc b                                            ; $6be8: $98
	sub l                                            ; $6be9: $95
	sla e                                            ; $6bea: $cb $23
	rra                                              ; $6bec: $1f
	inc bc                                           ; $6bed: $03
	ld sp, hl                                        ; $6bee: $f9
	pop af                                           ; $6bef: $f1
	db $e3                                           ; $6bf0: $e3
	rlca                                             ; $6bf1: $07
	ret z                                            ; $6bf2: $c8

	ret z                                            ; $6bf3: $c8

	ld l, h                                          ; $6bf4: $6c
	cp l                                             ; $6bf5: $bd
	adc a                                            ; $6bf6: $8f
	db $ed                                           ; $6bf7: $ed
	xor $fa                                          ; $6bf8: $ee $fa
	rst FarCall                                          ; $6bfa: $f7
	rst FarCall                                          ; $6bfb: $f7
	rst AddAOntoHL                                          ; $6bfc: $ef
	rst AddAOntoHL                                          ; $6bfd: $ef

Jump_051_6bfe:
	rst JumpTable                                          ; $6bfe: $c7
	rra                                              ; $6bff: $1f
	dec e                                            ; $6c00: $1d
	rra                                              ; $6c01: $1f
	jr jr_051_6c1c                                   ; $6c02: $18 $18

	ld de, $3f13                                     ; $6c04: $11 $13 $3f
	sbc $6f                                          ; $6c07: $de $6f
	sbc [hl]                                         ; $6c09: $9e
	ld e, a                                          ; $6c0a: $5f

jr_051_6c0b:
	db $dd                                           ; $6c0b: $dd
	rst SubAFromDE                                          ; $6c0c: $df
	sbc [hl]                                         ; $6c0d: $9e
	push bc                                          ; $6c0e: $c5
	db $dd                                           ; $6c0f: $dd
	ret                                              ; $6c10: $c9


	rst SubAFromDE                                          ; $6c11: $df
	adc c                                            ; $6c12: $89
	sbc l                                            ; $6c13: $9d
	sbc c                                            ; $6c14: $99
	inc hl                                           ; $6c15: $23
	sbc $21                                          ; $6c16: $de $21
	sbc e                                            ; $6c18: $9b
	jr nz, jr_051_6c33                               ; $6c19: $20 $18

	sbc b                                            ; $6c1b: $98

jr_051_6c1c:
	sub h                                            ; $6c1c: $94
	call c, Call_051_78ff                            ; $6c1d: $dc $ff $78
	ld [hl], e                                       ; $6c20: $73
	db $dd                                           ; $6c21: $dd
	adc a                                            ; $6c22: $8f
	db $dd                                           ; $6c23: $dd
	rst JumpTable                                          ; $6c24: $c7
	reti                                             ; $6c25: $d9


	rst $38                                          ; $6c26: $ff
	sbc [hl]                                         ; $6c27: $9e
	di                                               ; $6c28: $f3
	ld [hl], b                                       ; $6c29: $70
	jr nc, jr_051_6c0b                               ; $6c2a: $30 $df

	db $fd                                           ; $6c2c: $fd
	sbc h                                            ; $6c2d: $9c
	rst $38                                          ; $6c2e: $ff
	ld sp, hl                                        ; $6c2f: $f9
	ld sp, hl                                        ; $6c30: $f9
	sbc $f8                                          ; $6c31: $de $f8

jr_051_6c33:
	rst SubAFromDE                                          ; $6c33: $df
	ld a, [$809b]                                    ; $6c34: $fa $9b $80
	ldh a, [$ec]                                     ; $6c37: $f0 $ec
	ei                                               ; $6c39: $fb
	ld a, e                                          ; $6c3a: $7b
	xor $99                                          ; $6c3b: $ee $99
	cp a                                             ; $6c3d: $bf
	add b                                            ; $6c3e: $80
	ldh a, [$9c]                                     ; $6c3f: $f0 $9c
	add a                                            ; $6c41: $87
	add c                                            ; $6c42: $81
	ld a, c                                          ; $6c43: $79
	sbc l                                            ; $6c44: $9d
	ld [hl], d                                       ; $6c45: $72
	xor d                                            ; $6c46: $aa
	sbc h                                            ; $6c47: $9c
	or b                                             ; $6c48: $b0
	db $ec                                           ; $6c49: $ec
	ld a, [$f873]                                    ; $6c4a: $fa $73 $f8
	sbc h                                            ; $6c4d: $9c
	ld [hl], b                                       ; $6c4e: $70
	inc e                                            ; $6c4f: $1c
	ld b, $dd                                        ; $6c50: $06 $dd
	or b                                             ; $6c52: $b0
	sbc $a0                                          ; $6c53: $de $a0
	sbc [hl]                                         ; $6c55: $9e
	and e                                            ; $6c56: $a3
	jp c, $9ea0                                      ; $6c57: $da $a0 $9e

	add e                                            ; $6c5a: $83
	ld [hl], c                                       ; $6c5b: $71
	adc [hl]                                         ; $6c5c: $8e
	sbc h                                            ; $6c5d: $9c
	dec sp                                           ; $6c5e: $3b
	rst SubAFromDE                                          ; $6c5f: $df
	ld a, a                                          ; $6c60: $7f
	ld [hl], e                                       ; $6c61: $73
	ld hl, sp-$6d                                    ; $6c62: $f8 $93
	inc a                                            ; $6c64: $3c
	ldh [$80], a                                     ; $6c65: $e0 $80
	ld a, [$fafc]                                    ; $6c67: $fa $fc $fa
	db $fc                                           ; $6c6a: $fc
	db $fd                                           ; $6c6b: $fd
	ei                                               ; $6c6c: $fb
	cp $fb                                           ; $6c6d: $fe $fb
	dec b                                            ; $6c6f: $05
	jp c, $9707                                      ; $6c70: $da $07 $97

	ld h, b                                          ; $6c73: $60
	ldh [c], a                                       ; $6c74: $e2
	ld h, b                                          ; $6c75: $60
	pop hl                                           ; $6c76: $e1
	ld h, c                                          ; $6c77: $61
	pop hl                                           ; $6c78: $e1
	ldh [$e3], a                                     ; $6c79: $e0 $e3
	ld a, d                                          ; $6c7b: $7a
	sbc $de                                          ; $6c7c: $de $de
	cp $df                                           ; $6c7e: $fe $df
	rst $38                                          ; $6c80: $ff
	sub c                                            ; $6c81: $91
	sub l                                            ; $6c82: $95
	ld c, d                                          ; $6c83: $4a
	xor l                                            ; $6c84: $ad
	jp c, $ffa7                                      ; $6c85: $da $a7 $ff

	nop                                              ; $6c88: $00
	rst $38                                          ; $6c89: $ff
	ld l, d                                          ; $6c8a: $6a
	or l                                             ; $6c8b: $b5
	ld d, d                                          ; $6c8c: $52
	dec h                                            ; $6c8d: $25
	ld e, b                                          ; $6c8e: $58
	nop                                              ; $6c8f: $00
	ld [hl], a                                       ; $6c90: $77
	add [hl]                                         ; $6c91: $86
	sbc l                                            ; $6c92: $9d
	db $fd                                           ; $6c93: $fd
	ld sp, hl                                        ; $6c94: $f9
	db $dd                                           ; $6c95: $dd
	ld a, [$ffd9]                                    ; $6c96: $fa $d9 $ff
	sbc [hl]                                         ; $6c99: $9e
	ld a, a                                          ; $6c9a: $7f
	sbc $6f                                          ; $6c9b: $de $6f
	db $dd                                           ; $6c9d: $dd
	ld l, e                                          ; $6c9e: $6b
	ld a, c                                          ; $6c9f: $79
	ld e, l                                          ; $6ca0: $5d
	call c, $92ff                                    ; $6ca1: $dc $ff $92
	sub [hl]                                         ; $6ca4: $96
	call c, $8797                                    ; $6ca5: $dc $97 $87
	pop de                                           ; $6ca8: $d1
	rst $38                                          ; $6ca9: $ff
	inc a                                            ; $6caa: $3c
	ccf                                              ; $6cab: $3f
	ld l, h                                          ; $6cac: $6c
	ld a, $0e                                        ; $6cad: $3e $0e
	pop bc                                           ; $6caf: $c1
	ldh [$7a], a                                     ; $6cb0: $e0 $7a
	db $10                                           ; $6cb2: $10
	sbc b                                            ; $6cb3: $98
	ld b, $01                                        ; $6cb4: $06 $01
	inc bc                                           ; $6cb6: $03
	add a                                            ; $6cb7: $87
	ret nz                                           ; $6cb8: $c0

	add b                                            ; $6cb9: $80
	ldh [$73], a                                     ; $6cba: $e0 $73
	ld l, b                                          ; $6cbc: $68
	ld a, b                                          ; $6cbd: $78
	rst $38                                          ; $6cbe: $ff
	sbc e                                            ; $6cbf: $9b
	ldh [$78], a                                     ; $6cc0: $e0 $78
	ldh a, [$e0]                                     ; $6cc2: $f0 $e0
	ld e, b                                          ; $6cc4: $58
	jp nz, Jump_051_7eff                             ; $6cc5: $c2 $ff $7e

	inc de                                           ; $6cc8: $13
	sbc c                                            ; $6cc9: $99
	add hl, de                                       ; $6cca: $19
	rla                                              ; $6ccb: $17
	inc b                                            ; $6ccc: $04
	nop                                              ; $6ccd: $00
	nop                                              ; $6cce: $00
	ld b, $7a                                        ; $6ccf: $06 $7a
	cp l                                             ; $6cd1: $bd
	ld a, [hl]                                       ; $6cd2: $7e
	and a                                            ; $6cd3: $a7
	rst $38                                          ; $6cd4: $ff
	sbc l                                            ; $6cd5: $9d
	add hl, de                                       ; $6cd6: $19
	nop                                              ; $6cd7: $00
	ld [hl], b                                       ; $6cd8: $70
	and e                                            ; $6cd9: $a3
	ld h, h                                          ; $6cda: $64
	sbc [hl]                                         ; $6cdb: $9e
	ld a, h                                          ; $6cdc: $7c
	pop de                                           ; $6cdd: $d1
	sbc [hl]                                         ; $6cde: $9e
	rlca                                             ; $6cdf: $07
	db $dd                                           ; $6ce0: $dd
	rrca                                             ; $6ce1: $0f
	rst SubAFromDE                                          ; $6ce2: $df
	rra                                              ; $6ce3: $1f
	sbc [hl]                                         ; $6ce4: $9e
	ld e, $fa                                        ; $6ce5: $1e $fa
	sub [hl]                                         ; $6ce7: $96
	ld bc, $fefe                                     ; $6ce8: $01 $fe $fe
	cp [hl]                                          ; $6ceb: $be
	cp [hl]                                          ; $6cec: $be
	cp $7b                                           ; $6ced: $fe $7b
	ei                                               ; $6cef: $fb
	di                                               ; $6cf0: $f3
	ld [hl], b                                       ; $6cf1: $70
	ld h, c                                          ; $6cf2: $61
	sbc $ff                                          ; $6cf3: $de $ff
	sbc h                                            ; $6cf5: $9c
	rst SubAFromDE                                          ; $6cf6: $df
	sbc a                                            ; $6cf7: $9f
	cp a                                             ; $6cf8: $bf
	call c, $dcbe                                    ; $6cf9: $dc $be $dc
	sub e                                            ; $6cfc: $93
	adc h                                            ; $6cfd: $8c
	inc de                                           ; $6cfe: $13
	inc hl                                           ; $6cff: $23
	daa                                              ; $6d00: $27
	call nc, $eecc                                   ; $6d01: $d4 $cc $ee
	ld [$b5e8], a                                    ; $6d04: $ea $e8 $b5
	or [hl]                                          ; $6d07: $b6
	db $f4                                           ; $6d08: $f4
	cp e                                             ; $6d09: $bb
	cp e                                             ; $6d0a: $bb
	sbc c                                            ; $6d0b: $99
	sbc l                                            ; $6d0c: $9d
	sbc l                                            ; $6d0d: $9d
	call z, $cecc                                    ; $6d0e: $cc $cc $ce
	sbc $67                                          ; $6d11: $de $67
	sbc [hl]                                         ; $6d13: $9e
	inc hl                                           ; $6d14: $23
	sbc $33                                          ; $6d15: $de $33
	sbc [hl]                                         ; $6d17: $9e
	inc de                                           ; $6d18: $13
	reti                                             ; $6d19: $d9


	rst $38                                          ; $6d1a: $ff
	call c, $defc                                    ; $6d1b: $dc $fc $de
	db $fd                                           ; $6d1e: $fd
	reti                                             ; $6d1f: $d9


	ei                                               ; $6d20: $fb
	ld a, a                                          ; $6d21: $7f
	cp a                                             ; $6d22: $bf
	rst SubAFromDE                                          ; $6d23: $df
	rst AddAOntoHL                                          ; $6d24: $ef
	ld a, [hl]                                       ; $6d25: $7e
	sbc d                                            ; $6d26: $9a
	ld a, a                                          ; $6d27: $7f
	add hl, hl                                       ; $6d28: $29
	ld a, a                                          ; $6d29: $7f
	ld h, [hl]                                       ; $6d2a: $66
	rst SubAFromDE                                          ; $6d2b: $df
	ldh a, [$7c]                                     ; $6d2c: $f0 $7c
	sbc b                                            ; $6d2e: $98
	ld a, a                                          ; $6d2f: $7f
	ld a, [hl-]                                      ; $6d30: $3a
	ld h, l                                          ; $6d31: $65
	rst SubAFromBC                                          ; $6d32: $e7
	ld a, c                                          ; $6d33: $79
	add e                                            ; $6d34: $83
	call c, $9d01                                    ; $6d35: $dc $01 $9d
	xor l                                            ; $6d38: $ad
	or a                                             ; $6d39: $b7
	ld a, e                                          ; $6d3a: $7b
	sub [hl]                                         ; $6d3b: $96
	sbc $ff                                          ; $6d3c: $de $ff
	sbc l                                            ; $6d3e: $9d
	xor [hl]                                         ; $6d3f: $ae
	cp b                                             ; $6d40: $b8
	sbc $a0                                          ; $6d41: $de $a0
	sbc $60                                          ; $6d43: $de $60
	reti                                             ; $6d45: $d9


	rst $38                                          ; $6d46: $ff
	ld sp, hl                                        ; $6d47: $f9
	ld l, l                                          ; $6d48: $6d
	or h                                             ; $6d49: $b4
	sbc h                                            ; $6d4a: $9c
	ei                                               ; $6d4b: $fb
	db $fc                                           ; $6d4c: $fc
	rst $38                                          ; $6d4d: $ff
	jp c, $9507                                      ; $6d4e: $da $07 $95

	db $fc                                           ; $6d51: $fc
	ld h, c                                          ; $6d52: $61
	ld h, e                                          ; $6d53: $63
	pop hl                                           ; $6d54: $e1
	ldh [c], a                                       ; $6d55: $e2
	pop hl                                           ; $6d56: $e1
	ld h, e                                          ; $6d57: $63
	pop hl                                           ; $6d58: $e1
	rst $38                                          ; $6d59: $ff
	cp $7b                                           ; $6d5a: $fe $7b
	or h                                             ; $6d5c: $b4
	ld a, e                                          ; $6d5d: $7b
	db $fc                                           ; $6d5e: $fc
	db $dd                                           ; $6d5f: $dd
	rst $38                                          ; $6d60: $ff
	ld [hl], a                                       ; $6d61: $77
	ei                                               ; $6d62: $fb
	ld [hl], e                                       ; $6d63: $73
	ld b, e                                          ; $6d64: $43
	cp $97                                           ; $6d65: $fe $97
	ld a, [$fcf4]                                    ; $6d67: $fa $f4 $fc
	cp $fc                                           ; $6d6a: $fe $fc
	add sp, -$0c                                     ; $6d6c: $e8 $f4
	db $f4                                           ; $6d6e: $f4
	ld a, d                                          ; $6d6f: $7a
	inc hl                                           ; $6d70: $23
	sbc $f5                                          ; $6d71: $de $f5
	rst SubAFromDE                                          ; $6d73: $df
	jp hl                                            ; $6d74: $e9


	sbc [hl]                                         ; $6d75: $9e
	ld c, c                                          ; $6d76: $49
	sbc $59                                          ; $6d77: $de $59
	sbc d                                            ; $6d79: $9a
	ld d, l                                          ; $6d7a: $55
	db $f4                                           ; $6d7b: $f4
	db $f4                                           ; $6d7c: $f4
	ld [hl], h                                       ; $6d7d: $74
	rst $38                                          ; $6d7e: $ff
	sbc $ef                                          ; $6d7f: $de $ef
	sbc [hl]                                         ; $6d81: $9e
	db $eb                                           ; $6d82: $eb
	sbc $4b                                          ; $6d83: $de $4b
	sub [hl]                                         ; $6d85: $96
	dec a                                            ; $6d86: $3d
	ld [hl], l                                       ; $6d87: $75
	ld [hl], l                                       ; $6d88: $75
	ld [hl], h                                       ; $6d89: $74
	ld h, [hl]                                       ; $6d8a: $66
	ld h, [hl]                                       ; $6d8b: $66
	and $e6                                          ; $6d8c: $e6 $e6
	rst $38                                          ; $6d8e: $ff
	sbc $bf                                          ; $6d8f: $de $bf
	rst SubAFromDE                                          ; $6d91: $df
	cp l                                             ; $6d92: $bd
	rst SubAFromDE                                          ; $6d93: $df
	dec a                                            ; $6d94: $3d
	sbc d                                            ; $6d95: $9a
	ldh [$f8], a                                     ; $6d96: $e0 $f8
	db $fc                                           ; $6d98: $fc
	ld a, [hl]                                       ; $6d99: $7e
	ld a, a                                          ; $6d9a: $7f
	sbc $7b                                          ; $6d9b: $de $7b
	ld [hl], a                                       ; $6d9d: $77
	ld h, d                                          ; $6d9e: $62
	ld h, a                                          ; $6d9f: $67
	cp b                                             ; $6da0: $b8
	rst $38                                          ; $6da1: $ff
	sbc l                                            ; $6da2: $9d
	ldh [$f4], a                                     ; $6da3: $e0 $f4
	db $fc                                           ; $6da5: $fc
	ld a, [hl]                                       ; $6da6: $7e
	xor a                                            ; $6da7: $af
	sbc l                                            ; $6da8: $9d
	ld hl, sp+$05                                    ; $6da9: $f8 $05
	ld l, c                                          ; $6dab: $69
	sbc b                                            ; $6dac: $98
	ld hl, sp+$72                                    ; $6dad: $f8 $72
	add $7e                                          ; $6daf: $c6 $7e
	adc e                                            ; $6db1: $8b
	ld h, [hl]                                       ; $6db2: $66
	ret nc                                           ; $6db3: $d0

	sub e                                            ; $6db4: $93
	dec a                                            ; $6db5: $3d
	dec sp                                           ; $6db6: $3b
	scf                                              ; $6db7: $37
	ld l, a                                          ; $6db8: $6f
	ld e, a                                          ; $6db9: $5f
	cp a                                             ; $6dba: $bf
	rst $38                                          ; $6dbb: $ff
	ld sp, hl                                        ; $6dbc: $f9
	inc bc                                           ; $6dbd: $03
	rlca                                             ; $6dbe: $07
	rrca                                             ; $6dbf: $0f
	rra                                              ; $6dc0: $1f
	ld [hl], a                                       ; $6dc1: $77
	scf                                              ; $6dc2: $37
	sbc [hl]                                         ; $6dc3: $9e
	di                                               ; $6dc4: $f3
	call c, $dfd3                                    ; $6dc5: $dc $d3 $df
	sub $77                                          ; $6dc8: $d6 $77
	ld l, c                                          ; $6dca: $69
	db $dd                                           ; $6dcb: $dd
	cp $97                                           ; $6dcc: $fe $97
	or a                                             ; $6dce: $b7
	ld [hl], a                                       ; $6dcf: $77
	ld [hl], a                                       ; $6dd0: $77
	scf                                              ; $6dd1: $37
	ccf                                              ; $6dd2: $3f
	ld e, a                                          ; $6dd3: $5f
	ld e, a                                          ; $6dd4: $5f
	rst AddAOntoHL                                          ; $6dd5: $ef
	sbc $2f                                          ; $6dd6: $de $2f
	db $dd                                           ; $6dd8: $dd
	ld l, a                                          ; $6dd9: $6f
	add [hl]                                         ; $6dda: $86
	ld e, a                                          ; $6ddb: $5f
	ld l, b                                          ; $6ddc: $68
	ld l, h                                          ; $6ddd: $6c
	ld c, h                                          ; $6dde: $4c
	ld b, h                                          ; $6ddf: $44
	ld d, a                                          ; $6de0: $57
	ld d, b                                          ; $6de1: $50
	add hl, hl                                       ; $6de2: $29
	ld a, [hl+]                                      ; $6de3: $2a
	add $c2                                          ; $6de4: $c6 $c2
	ldh [c], a                                       ; $6de6: $e2
	ldh [c], a                                       ; $6de7: $e2
	ldh [$e0], a                                     ; $6de8: $e0 $e0
	ldh a, [$f1]                                     ; $6dea: $f0 $f1
	sub e                                            ; $6dec: $93
	dec de                                           ; $6ded: $1b
	dec de                                           ; $6dee: $1b
	ld c, c                                          ; $6def: $49
	ld c, l                                          ; $6df0: $4d
	dec c                                            ; $6df1: $0d
	and l                                            ; $6df2: $a5
	and l                                            ; $6df3: $a5
	sbc $7f                                          ; $6df4: $de $7f
	sbc $3f                                          ; $6df6: $de $3f
	rst SubAFromDE                                          ; $6df8: $df
	rra                                              ; $6df9: $1f
	halt                                             ; $6dfa: $76
	ldh [$62], a                                     ; $6dfb: $e0 $62
	call nz, $246b                                   ; $6dfd: $c4 $6b $24
	db $d3                                           ; $6e00: $d3
	rst $38                                          ; $6e01: $ff
	sub c                                            ; $6e02: $91
	ld a, a                                          ; $6e03: $7f
	cp a                                             ; $6e04: $bf
	rst $38                                          ; $6e05: $ff
	rst SubAFromDE                                          ; $6e06: $df
	xor a                                            ; $6e07: $af
	rst FarCall                                          ; $6e08: $f7
	ld bc, $8101                                     ; $6e09: $01 $01 $81
	pop bc                                           ; $6e0c: $c1
	pop bc                                           ; $6e0d: $c1
	pop hl                                           ; $6e0e: $e1
	pop af                                           ; $6e0f: $f1
	ld sp, hl                                        ; $6e10: $f9
	reti                                             ; $6e11: $d9


	rst $38                                          ; $6e12: $ff
	reti                                             ; $6e13: $d9


	ld h, b                                          ; $6e14: $60
	jp c, $9eff                                      ; $6e15: $da $ff $9e

	cp $67                                           ; $6e18: $fe $67
	ld h, b                                          ; $6e1a: $60
	ld a, a                                          ; $6e1b: $7f
	or e                                             ; $6e1c: $b3
	rst SubAFromDE                                          ; $6e1d: $df
	ld a, [$fedf]                                    ; $6e1e: $fa $df $fe
	ld a, a                                          ; $6e21: $7f
	xor d                                            ; $6e22: $aa
	reti                                             ; $6e23: $d9


	rlca                                             ; $6e24: $07
	ld a, c                                          ; $6e25: $79
	add e                                            ; $6e26: $83
	ld a, e                                          ; $6e27: $7b
	db $fd                                           ; $6e28: $fd
	rst SubAFromDE                                          ; $6e29: $df
	ld h, e                                          ; $6e2a: $63
	db $db                                           ; $6e2b: $db
	cp $df                                           ; $6e2c: $fe $df
	db $fc                                           ; $6e2e: $fc
	ld b, [hl]                                       ; $6e2f: $46
	sub b                                            ; $6e30: $90
	rst SubAFromDE                                          ; $6e31: $df
	jp nc, $f196                                     ; $6e32: $d2 $96 $f1

	jp hl                                            ; $6e35: $e9


	add sp, -$20                                     ; $6e36: $e8 $e0
	ldh [c], a                                       ; $6e38: $e2
	and d                                            ; $6e39: $a2
	jp hl                                            ; $6e3a: $e9


	jp hl                                            ; $6e3b: $e9


	jp z, $d2de                                      ; $6e3c: $ca $de $d2

	rst SubAFromDE                                          ; $6e3f: $df
	ret nc                                           ; $6e40: $d0

	rst SubAFromDE                                          ; $6e41: $df
	inc h                                            ; $6e42: $24
	sub [hl]                                         ; $6e43: $96
	ld [hl+], a                                      ; $6e44: $22
	ld a, [hl+]                                      ; $6e45: $2a
	xor d                                            ; $6e46: $aa
	xor d                                            ; $6e47: $aa
	ld h, [hl]                                       ; $6e48: $66
	ld h, [hl]                                       ; $6e49: $66
	ld e, e                                          ; $6e4a: $5b
	ld e, e                                          ; $6e4b: $5b
	ld e, c                                          ; $6e4c: $59
	sbc $51                                          ; $6e4d: $de $51
	rst SubAFromDE                                          ; $6e4f: $df
	sub c                                            ; $6e50: $91
	ld a, [hl]                                       ; $6e51: $7e
	ld [bc], a                                       ; $6e52: $02
	sbc c                                            ; $6e53: $99
	ld [$eeee], a                                    ; $6e54: $ea $ee $ee
	xor [hl]                                         ; $6e57: $ae
	or [hl]                                          ; $6e58: $b6
	sub [hl]                                         ; $6e59: $96
	sbc $3d                                          ; $6e5a: $de $3d
	rst SubAFromDE                                          ; $6e5c: $df
	add hl, sp                                       ; $6e5d: $39
	db $dd                                           ; $6e5e: $dd
	ld a, c                                          ; $6e5f: $79
	sbc b                                            ; $6e60: $98
	ld e, c                                          ; $6e61: $59
	ld e, l                                          ; $6e62: $5d
	ld e, l                                          ; $6e63: $5d
	ld e, h                                          ; $6e64: $5c
	call z, $8c8c                                    ; $6e65: $cc $8c $8c
	ld h, a                                          ; $6e68: $67
	ld c, d                                          ; $6e69: $4a
	ld a, a                                          ; $6e6a: $7f
	sub l                                            ; $6e6b: $95
	sbc [hl]                                         ; $6e6c: $9e
	call c, $dede                                    ; $6e6d: $dc $de $de

Call_051_6e70:
	ld e, a                                          ; $6e70: $5f
	ld c, d                                          ; $6e71: $4a
	sbc c                                            ; $6e72: $99
	add b                                            ; $6e73: $80
	ret nc                                           ; $6e74: $d0

	sbc $fb                                          ; $6e75: $de $fb
	ldh [$c0], a                                     ; $6e77: $e0 $c0
	ld a, c                                          ; $6e79: $79
	sub b                                            ; $6e7a: $90
	sbc l                                            ; $6e7b: $9d
	ldh [$3c], a                                     ; $6e7c: $e0 $3c
	ld [hl], b                                       ; $6e7e: $70
	ld [hl], $92                                     ; $6e7f: $36 $92
	inc bc                                           ; $6e81: $03
	rla                                              ; $6e82: $17
	ld e, a                                          ; $6e83: $5f
	rst $38                                          ; $6e84: $ff
	sbc $31                                          ; $6e85: $de $31
	rrca                                             ; $6e87: $0f
	rlca                                             ; $6e88: $07
	rlca                                             ; $6e89: $07
	rrca                                             ; $6e8a: $0f
	ccf                                              ; $6e8b: $3f
	rst $38                                          ; $6e8c: $ff
	ccf                                              ; $6e8d: $3f
	ld a, b                                          ; $6e8e: $78
	ld a, [hl+]                                      ; $6e8f: $2a
	sbc e                                            ; $6e90: $9b
	rst FarCall                                          ; $6e91: $f7
	rst $38                                          ; $6e92: $ff
	cp a                                             ; $6e93: $bf
	ld a, [hl]                                       ; $6e94: $7e
	db $dd                                           ; $6e95: $dd
	rst $38                                          ; $6e96: $ff
	sbc e                                            ; $6e97: $9b
	ld sp, hl                                        ; $6e98: $f9
	pop hl                                           ; $6e99: $e1
	pop bc                                           ; $6e9a: $c1
	add c                                            ; $6e9b: $81
	db $fd                                           ; $6e9c: $fd
	sub a                                            ; $6e9d: $97
	db $fc                                           ; $6e9e: $fc
	ld a, h                                          ; $6e9f: $7c
	inc e                                            ; $6ea0: $1c
	adc h                                            ; $6ea1: $8c
	add h                                            ; $6ea2: $84
	call nz, $f4e4                                   ; $6ea3: $c4 $e4 $f4
	ld [hl], e                                       ; $6ea6: $73
	ld h, e                                          ; $6ea7: $63
	rst SubAFromDE                                          ; $6ea8: $df
	ld a, h                                          ; $6ea9: $7c
	sbc l                                            ; $6eaa: $9d
	ld a, l                                          ; $6eab: $7d
	ei                                               ; $6eac: $fb
	db $dd                                           ; $6ead: $dd
	ld sp, hl                                        ; $6eae: $f9
	sbc $fd                                          ; $6eaf: $de $fd
	sbc $4f                                          ; $6eb1: $de $4f
	sbc [hl]                                         ; $6eb3: $9e
	rra                                              ; $6eb4: $1f
	db $dd                                           ; $6eb5: $dd
	sbc a                                            ; $6eb6: $9f
	sub [hl]                                         ; $6eb7: $96
	ld a, [hl+]                                      ; $6eb8: $2a
	jr nz, jr_051_6ecf                               ; $6eb9: $20 $14

	dec d                                            ; $6ebb: $15
	sub c                                            ; $6ebc: $91
	sbc e                                            ; $6ebd: $9b
	adc e                                            ; $6ebe: $8b
	xor c                                            ; $6ebf: $a9
	pop af                                           ; $6ec0: $f1
	ld a, b                                          ; $6ec1: $78
	ld h, b                                          ; $6ec2: $60
	sbc $fc                                          ; $6ec3: $de $fc
	sub h                                            ; $6ec5: $94
	sbc $45                                          ; $6ec6: $de $45
	add l                                            ; $6ec8: $85
	sub e                                            ; $6ec9: $93
	ld [hl], e                                       ; $6eca: $73
	ld h, e                                          ; $6ecb: $63
	ld b, e                                          ; $6ecc: $43
	ld e, e                                          ; $6ecd: $5b
	dec sp                                           ; $6ece: $3b

jr_051_6ecf:
	sbc a                                            ; $6ecf: $9f
	rst SubAFromDE                                          ; $6ed0: $df
	sbc $cf                                          ; $6ed1: $de $cf
	sbc h                                            ; $6ed3: $9c
	rst AddAOntoHL                                          ; $6ed4: $ef
	rst SubAFromBC                                          ; $6ed5: $e7
	rst SubAFromBC                                          ; $6ed6: $e7
	ld d, [hl]                                       ; $6ed7: $56
	call nz, $ffcd                                   ; $6ed8: $c4 $cd $ff
	sub [hl]                                         ; $6edb: $96
	rst JumpTable                                          ; $6edc: $c7
	cp e                                             ; $6edd: $bb
	pop hl                                           ; $6ede: $e1
	sbc c                                            ; $6edf: $99
	db $ed                                           ; $6ee0: $ed
	ld a, e                                          ; $6ee1: $7b
	rst FarCall                                          ; $6ee2: $f7
	db $dd                                           ; $6ee3: $dd
	ld sp, hl                                        ; $6ee4: $f9
	ld l, c                                          ; $6ee5: $69
	ld [hl], a                                       ; $6ee6: $77
	add b                                            ; $6ee7: $80
	rst FarCall                                          ; $6ee8: $f7
	xor $fd                                          ; $6ee9: $ee $fd
	db $eb                                           ; $6eeb: $eb
	push af                                          ; $6eec: $f5
	ld l, e                                          ; $6eed: $6b
	ld [hl], l                                       ; $6eee: $75
	ld l, d                                          ; $6eef: $6a
	ld l, b                                          ; $6ef0: $68
	ld [hl], c                                       ; $6ef1: $71
	ld h, d                                          ; $6ef2: $62
	ld [hl], h                                       ; $6ef3: $74
	ld l, d                                          ; $6ef4: $6a
	db $f4                                           ; $6ef5: $f4
	ld [$fff5], a                                    ; $6ef6: $ea $f5 $ff
	or $bd                                           ; $6ef9: $f6 $bd
	xor $55                                          ; $6efb: $ee $55
	cp d                                             ; $6efd: $ba
	ld d, l                                          ; $6efe: $55
	xor d                                            ; $6eff: $aa
	nop                                              ; $6f00: $00
	add hl, bc                                       ; $6f01: $09
	ld b, d                                          ; $6f02: $42
	ld de, $45aa                                     ; $6f03: $11 $aa $45
	xor d                                            ; $6f06: $aa
	sbc l                                            ; $6f07: $9d
	ld d, l                                          ; $6f08: $55
	db $fd                                           ; $6f09: $fd
	ld [hl], l                                       ; $6f0a: $75
	add h                                            ; $6f0b: $84
	sbc h                                            ; $6f0c: $9c
	cp $fa                                           ; $6f0d: $fe $fa
	ld [hl], a                                       ; $6f0f: $77
	jp c, $9607                                      ; $6f10: $da $07 $96

	rst $38                                          ; $6f13: $ff
	ld h, e                                          ; $6f14: $63
	ld h, e                                          ; $6f15: $63
	db $e3                                           ; $6f16: $e3
	db $e3                                           ; $6f17: $e3
	ld h, e                                          ; $6f18: $63
	ld h, b                                          ; $6f19: $60
	db $e3                                           ; $6f1a: $e3
	db $fd                                           ; $6f1b: $fd
	call c, Call_051_66fc                            ; $6f1c: $dc $fc $66
	ld h, c                                          ; $6f1f: $61
	ld a, h                                          ; $6f20: $7c
	ld c, b                                          ; $6f21: $48
	sbc [hl]                                         ; $6f22: $9e
	db $fd                                           ; $6f23: $fd
	db $fc                                           ; $6f24: $fc
	ld a, c                                          ; $6f25: $79
	add hl, hl                                       ; $6f26: $29
	sub [hl]                                         ; $6f27: $96
	and b                                            ; $6f28: $a0
	pop de                                           ; $6f29: $d1
	pop de                                           ; $6f2a: $d1
	sub c                                            ; $6f2b: $91
	and b                                            ; $6f2c: $a0
	and h                                            ; $6f2d: $a4
	inc b                                            ; $6f2e: $04
	ld c, $d0                                        ; $6f2f: $0e $d0
	sbc $a0                                          ; $6f31: $de $a0
	db $dd                                           ; $6f33: $dd
	add c                                            ; $6f34: $81
	add b                                            ; $6f35: $80
	ld b, l                                          ; $6f36: $45
	ld d, l                                          ; $6f37: $55
	ld d, c                                          ; $6f38: $51
	ld c, c                                          ; $6f39: $49
	ld c, e                                          ; $6f3a: $4b
	ld c, d                                          ; $6f3b: $4a
	ld [bc], a                                       ; $6f3c: $02
	inc hl                                           ; $6f3d: $23
	or d                                             ; $6f3e: $b2
	and d                                            ; $6f3f: $a2
	and [hl]                                         ; $6f40: $a6
	and [hl]                                         ; $6f41: $a6
	and h                                            ; $6f42: $a4
	and l                                            ; $6f43: $a5
	db $ed                                           ; $6f44: $ed
	call $dcd4                                       ; $6f45: $cd $d4 $dc
	call c, $a9ac                                    ; $6f48: $dc $ac $a9
	cp c                                             ; $6f4b: $b9
	or e                                             ; $6f4c: $b3
	ld d, e                                          ; $6f4d: $53
	ld a, e                                          ; $6f4e: $7b
	ld [hl], e                                       ; $6f4f: $73
	ld [hl], e                                       ; $6f50: $73
	di                                               ; $6f51: $f3
	rst FarCall                                          ; $6f52: $f7
	rst SubAFromBC                                          ; $6f53: $e7
	rst AddAOntoHL                                          ; $6f54: $ef
	sub [hl]                                         ; $6f55: $96
	rst AddAOntoHL                                          ; $6f56: $ef
	adc l                                            ; $6f57: $8d
	adc l                                            ; $6f58: $8d
	sbc l                                            ; $6f59: $9d
	sbc l                                            ; $6f5a: $9d
	dec e                                            ; $6f5b: $1d
	dec [hl]                                         ; $6f5c: $35
	dec a                                            ; $6f5d: $3d
	ld a, a                                          ; $6f5e: $7f
	db $db                                           ; $6f5f: $db
	ei                                               ; $6f60: $fb
	rst SubAFromDE                                          ; $6f61: $df
	di                                               ; $6f62: $f3
	sbc l                                            ; $6f63: $9d
	pop hl                                           ; $6f64: $e1
	add c                                            ; $6f65: $81
	db $dd                                           ; $6f66: $dd
	ld bc, $03df                                     ; $6f67: $01 $df $03
	ld h, d                                          ; $6f6a: $62
	ret nz                                           ; $6f6b: $c0

	jp c, $f980                                      ; $6f6c: $da $80 $f9

	db $db                                           ; $6f6f: $db
	inc bc                                           ; $6f70: $03
	rst SubAFromDE                                          ; $6f71: $df
	rlca                                             ; $6f72: $07
	ld h, d                                          ; $6f73: $62
	jr nz, jr_051_6ff1                               ; $6f74: $20 $7b

	ld a, h                                          ; $6f76: $7c
	sbc h                                            ; $6f77: $9c
	db $fc                                           ; $6f78: $fc
	ldh a, [$e0]                                     ; $6f79: $f0 $e0
	ld a, e                                          ; $6f7b: $7b
	ldh [$75], a                                     ; $6f7c: $e0 $75
	ld a, [hl]                                       ; $6f7e: $7e
	ld a, l                                          ; $6f7f: $7d
	ld a, a                                          ; $6f80: $7f
	sbc h                                            ; $6f81: $9c
	add sp, -$38                                     ; $6f82: $e8 $c8
	adc h                                            ; $6f84: $8c
	sbc $09                                          ; $6f85: $de $09
	sbc e                                            ; $6f87: $9b
	dec bc                                           ; $6f88: $0b
	inc de                                           ; $6f89: $13
	db $fd                                           ; $6f8a: $fd
	db $fd                                           ; $6f8b: $fd
	db $db                                           ; $6f8c: $db
	ld sp, hl                                        ; $6f8d: $f9
	ld a, h                                          ; $6f8e: $7c
	ld b, c                                          ; $6f8f: $41
	sbc c                                            ; $6f90: $99
	ccf                                              ; $6f91: $3f
	cpl                                              ; $6f92: $2f
	daa                                              ; $6f93: $27
	daa                                              ; $6f94: $27
	inc hl                                           ; $6f95: $23
	inc hl                                           ; $6f96: $23
	reti                                             ; $6f97: $d9


	rst $38                                          ; $6f98: $ff
	rst SubAFromDE                                          ; $6f99: $df
	xor c                                            ; $6f9a: $a9
	rst SubAFromDE                                          ; $6f9b: $df
	db $ed                                           ; $6f9c: $ed
	sbc e                                            ; $6f9d: $9b
	db $fd                                           ; $6f9e: $fd
	push af                                          ; $6f9f: $f5
	push af                                          ; $6fa0: $f5
	db $fd                                           ; $6fa1: $fd
	db $dd                                           ; $6fa2: $dd
	sbc $de                                          ; $6fa3: $de $de
	adc $99                                          ; $6fa5: $ce $99
	add $2b                                          ; $6fa7: $c6 $2b
	xor e                                            ; $6fa9: $ab
	xor e                                            ; $6faa: $ab
	xor c                                            ; $6fab: $a9
	xor l                                            ; $6fac: $ad
	sbc $6d                                          ; $6fad: $de $6d
	sbc [hl]                                         ; $6faf: $9e
	rst FarCall                                          ; $6fb0: $f7
	sbc $77                                          ; $6fb1: $de $77
	ld a, a                                          ; $6fb3: $7f
	ld l, [hl]                                       ; $6fb4: $6e
	rst SubAFromDE                                          ; $6fb5: $df
	di                                               ; $6fb6: $f3
	ld b, $c0                                        ; $6fb7: $06 $c0
	sbc c                                            ; $6fb9: $99
	rst AddAOntoHL                                          ; $6fba: $ef
	cp l                                             ; $6fbb: $bd
	rst FarCall                                          ; $6fbc: $f7
	db $fd                                           ; $6fbd: $fd
	db $fd                                           ; $6fbe: $fd
	rst FarCall                                          ; $6fbf: $f7
	rst SubAFromHL                                          ; $6fc0: $d7
	rst $38                                          ; $6fc1: $ff
	sub l                                            ; $6fc2: $95
	ld h, c                                          ; $6fc3: $61
	ld h, h                                          ; $6fc4: $64
	ld [hl], b                                       ; $6fc5: $70
	ld l, d                                          ; $6fc6: $6a
	ld [hl], b                                       ; $6fc7: $70
	ld a, d                                          ; $6fc8: $7a
	ld l, l                                          ; $6fc9: $6d
	ld a, a                                          ; $6fca: $7f
	cp $fb                                           ; $6fcb: $fe $fb
	ld [hl], h                                       ; $6fcd: $74
	ld e, b                                          ; $6fce: $58
	rst SubAFromDE                                          ; $6fcf: $df
	rst $38                                          ; $6fd0: $ff
	sub h                                            ; $6fd1: $94
	add hl, bc                                       ; $6fd2: $09
	ld b, b                                          ; $6fd3: $40
	ld d, $00                                        ; $6fd4: $16 $00
	dec h                                            ; $6fd6: $25
	sub e                                            ; $6fd7: $93
	ld b, b                                          ; $6fd8: $40
	or h                                             ; $6fd9: $b4
	or $bf                                           ; $6fda: $f6 $bf
	jp hl                                            ; $6fdc: $e9


	ld a, e                                          ; $6fdd: $7b
	ld h, a                                          ; $6fde: $67
	rst SubAFromDE                                          ; $6fdf: $df
	rst $38                                          ; $6fe0: $ff
	halt                                             ; $6fe1: $76
	jp $e67b                                         ; $6fe2: $c3 $7b $e6


	sbc [hl]                                         ; $6fe5: $9e
	ld sp, hl                                        ; $6fe6: $f9
	reti                                             ; $6fe7: $d9


	rlca                                             ; $6fe8: $07
	ld a, [hl]                                       ; $6fe9: $7e
	jp $e399                                         ; $6fea: $c3 $99 $e3


	pop hl                                           ; $6fed: $e1
	ld h, d                                          ; $6fee: $62
	pop hl                                           ; $6fef: $e1
	ldh [c], a                                       ; $6ff0: $e2

jr_051_6ff1:
	ld h, c                                          ; $6ff1: $61
	sbc $fc                                          ; $6ff2: $de $fc
	ld a, b                                          ; $6ff4: $78
	ld b, b                                          ; $6ff5: $40
	ld a, a                                          ; $6ff6: $7f
	cp $de                                           ; $6ff7: $fe $de
	rst $38                                          ; $6ff9: $ff
	sbc $fd                                          ; $6ffa: $de $fd
	sbc l                                            ; $6ffc: $9d
	or l                                             ; $6ffd: $b5
	ld d, c                                          ; $6ffe: $51
	ld [hl], e                                       ; $6fff: $73
	dec bc                                           ; $7000: $0b
	sub e                                            ; $7001: $93
	inc bc                                           ; $7002: $03
	ld c, e                                          ; $7003: $4b
	xor a                                            ; $7004: $af
	ld b, $a6                                        ; $7005: $06 $a6
	and [hl]                                         ; $7007: $a6
	inc h                                            ; $7008: $24
	inc b                                            ; $7009: $04
	inc b                                            ; $700a: $04
	dec b                                            ; $700b: $05
	ld de, $7b89                                     ; $700c: $11 $89 $7b
	dec sp                                           ; $700f: $3b
	sbc $2b                                          ; $7010: $de $2b
	add [hl]                                         ; $7012: $86
	cpl                                              ; $7013: $2f
	inc sp                                           ; $7014: $33
	scf                                              ; $7015: $37
	ld [hl], l                                       ; $7016: $75
	ld h, l                                          ; $7017: $65
	ld h, l                                          ; $7018: $65
	ld e, l                                          ; $7019: $5d
	ld e, c                                          ; $701a: $59
	ld e, e                                          ; $701b: $5b
	call $8bc9                                       ; $701c: $cd $c9 $8b
	sbc e                                            ; $701f: $9b
	sbc e                                            ; $7020: $9b
	or e                                             ; $7021: $b3
	or a                                             ; $7022: $b7
	or a                                             ; $7023: $b7
	ld b, a                                          ; $7024: $47
	ld b, a                                          ; $7025: $47
	ld c, a                                          ; $7026: $4f
	adc a                                            ; $7027: $8f
	sbc a                                            ; $7028: $9f
	sbc a                                            ; $7029: $9f
	ld e, $3c                                        ; $702a: $1e $3c
	ld [hl], c                                       ; $702c: $71
	dec de                                           ; $702d: $1b
	add h                                            ; $702e: $84
	db $fc                                           ; $702f: $fc
	ld hl, sp-$10                                    ; $7030: $f8 $f0
	cp $fe                                           ; $7032: $fe $fe
	cp h                                             ; $7034: $bc
	db $fc                                           ; $7035: $fc
	ld a, b                                          ; $7036: $78
	ld a, b                                          ; $7037: $78
	ldh a, [$f1]                                     ; $7038: $f0 $f1
	db $e3                                           ; $703a: $e3
	and a                                            ; $703b: $a7
	daa                                              ; $703c: $27
	ld c, a                                          ; $703d: $4f
	ld c, a                                          ; $703e: $4f
	ld e, a                                          ; $703f: $5f
	sbc a                                            ; $7040: $9f
	cp a                                             ; $7041: $bf
	rrca                                             ; $7042: $0f
	rrca                                             ; $7043: $0f
	rra                                              ; $7044: $1f
	rra                                              ; $7045: $1f
	ccf                                              ; $7046: $3f
	ld a, b                                          ; $7047: $78
	ld hl, sp-$10                                    ; $7048: $f8 $f0
	ld a, b                                          ; $704a: $78
	add d                                            ; $704b: $82
	ld a, e                                          ; $704c: $7b
	ldh [c], a                                       ; $704d: $e2
	ld [hl], l                                       ; $704e: $75
	add [hl]                                         ; $704f: $86
	rst SubAFromDE                                          ; $7050: $df
	add b                                            ; $7051: $80
	sbc e                                            ; $7052: $9b
	ld bc, $1c02                                     ; $7053: $01 $02 $1c
	jr nc, @+$6e                                     ; $7056: $30 $6c

	ld c, d                                          ; $7058: $4a
	ld a, l                                          ; $7059: $7d
	adc e                                            ; $705a: $8b
	sbc d                                            ; $705b: $9a
	ld b, $0d                                        ; $705c: $06 $0d
	scf                                              ; $705e: $37
	ld l, a                                          ; $705f: $6f
	sbc a                                            ; $7060: $9f
	ld a, b                                          ; $7061: $78
	ld d, a                                          ; $7062: $57
	sbc e                                            ; $7063: $9b
	inc bc                                           ; $7064: $03
	ld c, $18                                        ; $7065: $0e $18
	ld [hl], b                                       ; $7067: $70
	ld a, e                                          ; $7068: $7b
	ldh [c], a                                       ; $7069: $e2
	sbc l                                            ; $706a: $9d
	nop                                              ; $706b: $00
	ld hl, sp+$69                                    ; $706c: $f8 $69
	ld d, l                                          ; $706e: $55
	sbc l                                            ; $706f: $9d
	rlca                                             ; $7070: $07
	ld bc, $99fb                                     ; $7071: $01 $fb $99
	ld de, $1219                                     ; $7074: $11 $19 $12
	sub d                                            ; $7077: $92
	db $d3                                           ; $7078: $d3
	db $d3                                           ; $7079: $d3
	ld a, c                                          ; $707a: $79
	cp b                                             ; $707b: $b8
	rst SubAFromDE                                          ; $707c: $df
	di                                               ; $707d: $f3
	sbc [hl]                                         ; $707e: $9e
	ld [hl], e                                       ; $707f: $73
	db $dd                                           ; $7080: $dd
	ld [hl-], a                                      ; $7081: $32
	sbc e                                            ; $7082: $9b
	jp $c1c1                                         ; $7083: $c3 $c1 $c1


	ret nz                                           ; $7086: $c0

	sbc $40                                          ; $7087: $de $40
	sbc [hl]                                         ; $7089: $9e
	add b                                            ; $708a: $80
	db $dd                                           ; $708b: $dd
	ld a, a                                          ; $708c: $7f
	ld h, b                                          ; $708d: $60
	ld a, [hl]                                       ; $708e: $7e
	ld a, h                                          ; $708f: $7c
	ld e, b                                          ; $7090: $58
	sbc [hl]                                         ; $7091: $9e
	rrca                                             ; $7092: $0f
	db $dd                                           ; $7093: $dd
	call nz, $e497                                   ; $7094: $c4 $97 $e4
	push af                                          ; $7097: $f5
	db $fd                                           ; $7098: $fd
	rst $38                                          ; $7099: $ff
	ld l, l                                          ; $709a: $6d

Call_051_709b:
	xor a                                            ; $709b: $af
	rst AddAOntoHL                                          ; $709c: $ef
	rst AddAOntoHL                                          ; $709d: $ef
	ld [hl], a                                       ; $709e: $77
	db $ed                                           ; $709f: $ed
	sbc e                                            ; $70a0: $9b
	di                                               ; $70a1: $f3
	pop af                                           ; $70a2: $f1
	or c                                             ; $70a3: $b1
	or c                                             ; $70a4: $b1
	db $dd                                           ; $70a5: $dd
	and c                                            ; $70a6: $a1
	ld b, $c0                                        ; $70a7: $06 $c0
	jp c, Jump_051_60ff                              ; $70a9: $da $ff $60

	adc b                                            ; $70ac: $88
	sbc b                                            ; $70ad: $98
	ld l, d                                          ; $70ae: $6a
	ld a, a                                          ; $70af: $7f
	ld l, l                                          ; $70b0: $6d
	ld a, a                                          ; $70b1: $7f
	ld a, [hl]                                       ; $70b2: $7e
	ld a, a                                          ; $70b3: $7f
	ld a, a                                          ; $70b4: $7f
	ld a, c                                          ; $70b5: $79
	push bc                                          ; $70b6: $c5
	db $db                                           ; $70b7: $db
	rst $38                                          ; $70b8: $ff
	sbc e                                            ; $70b9: $9b
	xor [hl]                                         ; $70ba: $ae
	ld a, [$fb6e]                                    ; $70bb: $fa $6e $fb
	ld a, c                                          ; $70be: $79
	xor d                                            ; $70bf: $aa
	ld h, e                                          ; $70c0: $63
	ldh a, [$7a]                                     ; $70c1: $f0 $7a
	jr c, jr_051_7143                                ; $70c3: $38 $7e

	db $db                                           ; $70c5: $db
	ld a, e                                          ; $70c6: $7b
	ld e, h                                          ; $70c7: $5c
	jp c, $9907                                      ; $70c8: $da $07 $99

	nop                                              ; $70cb: $00
	ld a, a                                          ; $70cc: $7f
	ld sp, hl                                        ; $70cd: $f9
	ld a, a                                          ; $70ce: $7f
	call nc, $6355                                   ; $70cf: $d4 $55 $63
	ldh [c], a                                       ; $70d2: $e2
	ld a, e                                          ; $70d3: $7b
	ret c                                            ; $70d4: $d8

	sbc e                                            ; $70d5: $9b
	xor a                                            ; $70d6: $af
	ld e, c                                          ; $70d7: $59
	add e                                            ; $70d8: $83
	cpl                                              ; $70d9: $2f
	ld [hl], l                                       ; $70da: $75
	ld a, [$ffdb]                                    ; $70db: $fa $db $ff
	sbc [hl]                                         ; $70de: $9e
	inc bc                                           ; $70df: $03
	sbc $91                                          ; $70e0: $de $91
	ld a, h                                          ; $70e2: $7c
	ld l, c                                          ; $70e3: $69
	rst SubAFromDE                                          ; $70e4: $df
	ld l, c                                          ; $70e5: $69
	sbc [hl]                                         ; $70e6: $9e
	ld a, c                                          ; $70e7: $79
	sbc $2f                                          ; $70e8: $de $2f
	rst SubAFromDE                                          ; $70ea: $df
	and a                                            ; $70eb: $a7
	sbc $b7                                          ; $70ec: $de $b7
	sbc [hl]                                         ; $70ee: $9e
	inc de                                           ; $70ef: $13
	db $dd                                           ; $70f0: $dd
	inc sp                                           ; $70f1: $33
	sbc l                                            ; $70f2: $9d
	scf                                              ; $70f3: $37
	ld a, $62                                        ; $70f4: $3e $62
	ret nc                                           ; $70f6: $d0

	sub a                                            ; $70f7: $97
	add hl, sp                                       ; $70f8: $39
	ld [hl], e                                       ; $70f9: $73
	rst SubAFromBC                                          ; $70fa: $e7
	rst GetHLinHL                                          ; $70fb: $cf
	sbc a                                            ; $70fc: $9f
	ccf                                              ; $70fd: $3f
	ld a, [hl]                                       ; $70fe: $7e
	cp $77                                           ; $70ff: $fe $77
	inc b                                            ; $7101: $04
	ld a, d                                          ; $7102: $7a
	xor $94                                          ; $7103: $ee $94
	ld bc, $e3e1                                     ; $7105: $01 $e1 $e3
	rst JumpTable                                          ; $7108: $c7
	add $8c                                          ; $7109: $c6 $8c
	sbc b                                            ; $710b: $98
	or b                                             ; $710c: $b0
	or $bf                                           ; $710d: $f6 $bf
	cp a                                             ; $710f: $bf
	ld l, [hl]                                       ; $7110: $6e
	ret nc                                           ; $7111: $d0

	sub [hl]                                         ; $7112: $96
	ldh a, [$b1]                                     ; $7113: $f0 $b1
	dec sp                                           ; $7115: $3b
	inc e                                            ; $7116: $1c
	ld [$2010], sp                                   ; $7117: $08 $10 $20
	ld b, b                                          ; $711a: $40
	add b                                            ; $711b: $80
	ld [hl], c                                       ; $711c: $71
	or b                                             ; $711d: $b0
	ld a, [hl]                                       ; $711e: $7e
	rst SubAFromHL                                          ; $711f: $d7
	sbc l                                            ; $7120: $9d
	ld b, c                                          ; $7121: $41
	add e                                            ; $7122: $83
	ld [hl], e                                       ; $7123: $73
	ld sp, hl                                        ; $7124: $f9
	sbc l                                            ; $7125: $9d
	rst $38                                          ; $7126: $ff
	ld a, [hl]                                       ; $7127: $7e
	ld l, [hl]                                       ; $7128: $6e

jr_051_7129:
	or d                                             ; $7129: $b2
	ld h, e                                          ; $712a: $63
	add [hl]                                         ; $712b: $86
	ld sp, hl                                        ; $712c: $f9
	ld h, a                                          ; $712d: $67
	jr nc, jr_051_7129                               ; $712e: $30 $f9

	adc c                                            ; $7130: $89
	db $e3                                           ; $7131: $e3
	push af                                          ; $7132: $f5
	push hl                                          ; $7133: $e5
	and $e6                                          ; $7134: $e6 $e6
	adc $c7                                          ; $7136: $ce $c7
	ld b, a                                          ; $7138: $47
	ld [hl], $26                                     ; $7139: $36 $26
	ld h, $25                                        ; $713b: $26 $25
	dec h                                            ; $713d: $25
	ld h, l                                          ; $713e: $65
	ld l, l                                          ; $713f: $6d
	ld l, l                                          ; $7140: $6d
	add b                                            ; $7141: $80
	add b                                            ; $7142: $80

jr_051_7143:
	ret nz                                           ; $7143: $c0

	ldh [$f8], a                                     ; $7144: $e0 $f8
	add e                                            ; $7146: $83
	ld [hl], a                                       ; $7147: $77
	ret z                                            ; $7148: $c8

	sbc h                                            ; $7149: $9c
	cp a                                             ; $714a: $bf
	sbc a                                            ; $714b: $9f
	add a                                            ; $714c: $87
	ld a, e                                          ; $714d: $7b
	ld sp, hl                                        ; $714e: $f9
	sub a                                            ; $714f: $97
	rlca                                             ; $7150: $07
	inc bc                                           ; $7151: $03
	ld bc, $0001                                     ; $7152: $01 $01 $00
	ldh a, [$fe]                                     ; $7155: $f0 $fe
	rlca                                             ; $7157: $07
	call c, $9cff                                    ; $7158: $dc $ff $9c
	rrca                                             ; $715b: $0f
	ld bc, $66f8                                     ; $715c: $01 $f8 $66
	xor a                                            ; $715f: $af
	sbc $21                                          ; $7160: $de $21
	sbc d                                            ; $7162: $9a
	inc hl                                           ; $7163: $23
	and e                                            ; $7164: $a3
	db $e3                                           ; $7165: $e3
	db $e3                                           ; $7166: $e3
	rst FarCall                                          ; $7167: $f7
	ld [hl], e                                       ; $7168: $73
	xor a                                            ; $7169: $af
	ld e, a                                          ; $716a: $5f
	jr nz, jr_051_71dc                               ; $716b: $20 $6f

jr_051_716d:
	push af                                          ; $716d: $f5
	ld e, e                                          ; $716e: $5b
	ldh a, [$73]                                     ; $716f: $f0 $73
	dec d                                            ; $7171: $15
	ld e, e                                          ; $7172: $5b
	ldh a, [$73]                                     ; $7173: $f0 $73
	pop af                                           ; $7175: $f1
	sbc h                                            ; $7176: $9c
	ccf                                              ; $7177: $3f
	rst $38                                          ; $7178: $ff
	ldh [rHDMA3], a                                  ; $7179: $e0 $53
	ldh a, [rBGP]                                    ; $717b: $f0 $47
	sbc $4f                                          ; $717d: $de $4f
	ld d, h                                          ; $717f: $54
	ld d, e                                          ; $7180: $53
	ldh a, [$df]                                     ; $7181: $f0 $df
	db $fd                                           ; $7183: $fd
	rst SubAFromDE                                          ; $7184: $df
	rst $38                                          ; $7185: $ff
	ld a, h                                          ; $7186: $7c
	adc l                                            ; $7187: $8d
	ld a, c                                          ; $7188: $79
	push hl                                          ; $7189: $e5
	ld a, a                                          ; $718a: $7f
	ld l, b                                          ; $718b: $68
	ld [hl], d                                       ; $718c: $72
	jr nz, jr_051_716d                               ; $718d: $20 $de

	dec d                                            ; $718f: $15
	sbc d                                            ; $7190: $9a
	sbc h                                            ; $7191: $9c
	sbc d                                            ; $7192: $9a
	sbc d                                            ; $7193: $9a
	adc d                                            ; $7194: $8a
	call z, $fbdd                                    ; $7195: $cc $dd $fb
	sbc $fd                                          ; $7198: $de $fd
	sbc [hl]                                         ; $719a: $9e
	rst $38                                          ; $719b: $ff
	sbc $39                                          ; $719c: $de $39
	sbc $bc                                          ; $719e: $de $bc
	rst SubAFromDE                                          ; $71a0: $df
	cp $de                                           ; $71a1: $fe $de
	ldh [$de], a                                     ; $71a3: $e0 $de
	ldh a, [$df]                                     ; $71a5: $f0 $df
	ld hl, sp-$22                                    ; $71a7: $f8 $de
	cp $9a                                           ; $71a9: $fe $9a
	db $fc                                           ; $71ab: $fc
	db $fd                                           ; $71ac: $fd
	db $fd                                           ; $71ad: $fd
	ld a, l                                          ; $71ae: $7d
	ld a, a                                          ; $71af: $7f
	ld l, l                                          ; $71b0: $6d
	ld d, b                                          ; $71b1: $50
	rst SubAFromDE                                          ; $71b2: $df
	inc bc                                           ; $71b3: $03
	sbc d                                            ; $71b4: $9a
	ld hl, sp-$0f                                    ; $71b5: $f8 $f1
	and $cc                                          ; $71b7: $e6 $cc
	ret nc                                           ; $71b9: $d0

	ld a, d                                          ; $71ba: $7a
	rst SubAFromBC                                          ; $71bb: $e7
	sbc e                                            ; $71bc: $9b
	ret nz                                           ; $71bd: $c0

	add c                                            ; $71be: $81
	add e                                            ; $71bf: $83
	adc a                                            ; $71c0: $8f
	halt                                             ; $71c1: $76
	ret c                                            ; $71c2: $d8

	sbc [hl]                                         ; $71c3: $9e
	add e                                            ; $71c4: $83
	halt                                             ; $71c5: $76
	jp nc, $b67b                                     ; $71c6: $d2 $7b $b6

	ld a, b                                          ; $71c9: $78
	ld l, h                                          ; $71ca: $6c
	ld a, c                                          ; $71cb: $79
	add h                                            ; $71cc: $84
	ld e, a                                          ; $71cd: $5f
	adc h                                            ; $71ce: $8c
	ld e, d                                          ; $71cf: $5a
	ret nc                                           ; $71d0: $d0

	ld a, d                                          ; $71d1: $7a
	sub a                                            ; $71d2: $97
	ld a, l                                          ; $71d3: $7d
	ld d, c                                          ; $71d4: $51
	ld sp, hl                                        ; $71d5: $f9
	sub a                                            ; $71d6: $97
	ldh a, [$c3]                                     ; $71d7: $f0 $c3
	ld c, $3b                                        ; $71d9: $0e $3b
	ld l, l                                          ; $71db: $6d

jr_051_71dc:
	ld a, [$c8e4]                                    ; $71dc: $fa $e4 $c8
	ld a, d                                          ; $71df: $7a
	ld [hl], h                                       ; $71e0: $74
	add b                                            ; $71e1: $80
	rlca                                             ; $71e2: $07
	ld e, $3c                                        ; $71e3: $1e $3c
	ld a, b                                          ; $71e5: $78
	ldh a, [$6f]                                     ; $71e6: $f0 $6f
	set 1, c                                         ; $71e8: $cb $c9
	ld c, a                                          ; $71ea: $4f
	sbc a                                            ; $71eb: $9f
	rst SubAFromDE                                          ; $71ec: $df
	xor $ee                                          ; $71ed: $ee $ee
	ld c, l                                          ; $71ef: $4d
	ld c, l                                          ; $71f0: $4d
	rst GetHLinHL                                          ; $71f1: $cf
	jp z, $8aca                                      ; $71f2: $ca $ca $8a

	sbc d                                            ; $71f5: $9a
	sbc d                                            ; $71f6: $9a
	rst $38                                          ; $71f7: $ff
	rst AddAOntoHL                                          ; $71f8: $ef
	ld [$0c08], sp                                   ; $71f9: $08 $08 $0c
	nop                                              ; $71fc: $00
	ld [bc], a                                       ; $71fd: $02
	dec b                                            ; $71fe: $05
	rst $38                                          ; $71ff: $ff
	db $10                                           ; $7200: $10
	cp $df                                           ; $7201: $fe $df
	inc b                                            ; $7203: $04
	sub d                                            ; $7204: $92
	ld [bc], a                                       ; $7205: $02
	pop bc                                           ; $7206: $c1
	ld a, b                                          ; $7207: $78
	halt                                             ; $7208: $76
	ld hl, $0811                                     ; $7209: $21 $11 $08
	ld b, $03                                        ; $720c: $06 $03
	cp $ff                                           ; $720e: $fe $ff
	rrca                                             ; $7210: $0f
	inc bc                                           ; $7211: $03
	db $fd                                           ; $7212: $fd
	adc a                                            ; $7213: $8f
	rst GetHLinHL                                          ; $7214: $cf
	ld h, a                                          ; $7215: $67
	scf                                              ; $7216: $37
	sbc e                                            ; $7217: $9b
	rst GetHLinHL                                          ; $7218: $cf
	ld h, l                                          ; $7219: $65
	ld [hl], l                                       ; $721a: $75
	or l                                             ; $721b: $b5
	ccf                                              ; $721c: $3f
	sbc a                                            ; $721d: $9f
	rst GetHLinHL                                          ; $721e: $cf
	rst SubAFromBC                                          ; $721f: $e7
	di                                               ; $7220: $f3
	ld a, e                                          ; $7221: $7b
	dec sp                                           ; $7222: $3b
	dec de                                           ; $7223: $1b
	ld c, d                                          ; $7224: $4a
	ld l, b                                          ; $7225: $68
	add b                                            ; $7226: $80
	rst $38                                          ; $7227: $ff
	ld [$2401], sp                                   ; $7228: $08 $01 $24
	ld de, $05a2                                     ; $722b: $11 $a2 $05
	ld [de], a                                       ; $722e: $12
	adc c                                            ; $722f: $89
	rst FarCall                                          ; $7230: $f7
	cp $db                                           ; $7231: $fe $db
	xor $5d                                          ; $7233: $ee $5d
	ld a, [$76ed]                                    ; $7235: $fa $ed $76
	ld [bc], a                                       ; $7238: $02
	ld d, l                                          ; $7239: $55
	xor d                                            ; $723a: $aa
	ld d, l                                          ; $723b: $55
	xor a                                            ; $723c: $af
	ld e, a                                          ; $723d: $5f
	rst $38                                          ; $723e: $ff
	ld a, a                                          ; $723f: $7f
	db $fd                                           ; $7240: $fd
	xor d                                            ; $7241: $aa
	ld d, l                                          ; $7242: $55
	xor d                                            ; $7243: $aa
	ld d, b                                          ; $7244: $50
	and b                                            ; $7245: $a0
	sbc l                                            ; $7246: $9d
	nop                                              ; $7247: $00
	add b                                            ; $7248: $80
	ld a, e                                          ; $7249: $7b
	ld sp, hl                                        ; $724a: $f9
	ld [hl], e                                       ; $724b: $73
	ld [$e97b], sp                                   ; $724c: $08 $7b $e9
	ld [hl], l                                       ; $724f: $75
	rst AddAOntoHL                                          ; $7250: $ef
	sbc h                                            ; $7251: $9c
	nop                                              ; $7252: $00
	xor d                                            ; $7253: $aa
	ld d, l                                          ; $7254: $55
	db $db                                           ; $7255: $db
	rst $38                                          ; $7256: $ff
	ld a, a                                          ; $7257: $7f
	ldh a, [$fb]                                     ; $7258: $f0 $fb
	ld d, [hl]                                       ; $725a: $56
	nop                                              ; $725b: $00
	sbc [hl]                                         ; $725c: $9e
	ld [hl], a                                       ; $725d: $77
	call c, $9e22                                    ; $725e: $dc $22 $9e
	ld b, h                                          ; $7261: $44
	db $dd                                           ; $7262: $dd
	ld [hl], a                                       ; $7263: $77
	call c, $9e22                                    ; $7264: $dc $22 $9e
	inc [hl]                                         ; $7267: $34
	sbc $77                                          ; $7268: $de $77
	sbc l                                            ; $726a: $9d
	ld h, [hl]                                       ; $726b: $66
	ld [hl], d                                       ; $726c: $72
	db $dd                                           ; $726d: $dd
	ld [hl+], a                                      ; $726e: $22
	sbc [hl]                                         ; $726f: $9e
	ld b, d                                          ; $7270: $42
	ld [hl], a                                       ; $7271: $77
	or $9e                                           ; $7272: $f6 $9e
	ld h, a                                          ; $7274: $67
	ld [hl], e                                       ; $7275: $73
	or $9c                                           ; $7276: $f6 $9c
	halt                                             ; $7278: $76
	ld h, [hl]                                       ; $7279: $66
	halt                                             ; $727a: $76
	ld l, e                                          ; $727b: $6b
	or $9e                                           ; $727c: $f6 $9e
	ld h, $de                                        ; $727e: $26 $de
	ld h, [hl]                                       ; $7280: $66
	sbc [hl]                                         ; $7281: $9e
	ld h, d                                          ; $7282: $62
	sbc $22                                          ; $7283: $de $22
	sbc l                                            ; $7285: $9d
	inc h                                            ; $7286: $24
	ld [hl-], a                                      ; $7287: $32
	ld l, a                                          ; $7288: $6f
	or $9c                                           ; $7289: $f6 $9c
	inc h                                            ; $728b: $24
	ld [hl+], a                                      ; $728c: $22
	dec h                                            ; $728d: $25
	ld l, e                                          ; $728e: $6b
	db $ec                                           ; $728f: $ec
	sbc e                                            ; $7290: $9b
	inc hl                                           ; $7291: $23
	ld [hl+], a                                      ; $7292: $22
	ld d, e                                          ; $7293: $53
	ld d, d                                          ; $7294: $52
	ld [hl], e                                       ; $7295: $73
	or $9a                                           ; $7296: $f6 $9a
	inc h                                            ; $7298: $24
	ld d, l                                          ; $7299: $55

jr_051_729a:
	ld d, e                                          ; $729a: $53
	inc sp                                           ; $729b: $33
	dec [hl]                                         ; $729c: $35
	ld [hl], e                                       ; $729d: $73
	or $9d                                           ; $729e: $f6 $9d
	ld b, e                                          ; $72a0: $43
	ld d, l                                          ; $72a1: $55
	sbc $33                                          ; $72a2: $de $33
	sbc [hl]                                         ; $72a4: $9e
	ld d, [hl]                                       ; $72a5: $56
	ld [hl], e                                       ; $72a6: $73
	or $7f                                           ; $72a7: $f6 $7f
	db $ed                                           ; $72a9: $ed
	rst SubAFromDE                                          ; $72aa: $df
	inc sp                                           ; $72ab: $33
	sbc h                                            ; $72ac: $9c
	ld [hl], $66                                     ; $72ad: $36 $66
	ld h, [hl]                                       ; $72af: $66
	dec [hl]                                         ; $72b0: $35
	adc d                                            ; $72b1: $8a
	cp $9a                                           ; $72b2: $fe $9a
	add b                                            ; $72b4: $80
	ld b, b                                          ; $72b5: $40
	call nc, $d1b9                                   ; $72b6: $d4 $b9 $d1
	reti                                             ; $72b9: $d9


	rst $38                                          ; $72ba: $ff
	sbc l                                            ; $72bb: $9d
	ld a, a                                          ; $72bc: $7f
	inc c                                            ; $72bd: $0c
	db $fc                                           ; $72be: $fc
	sbc [hl]                                         ; $72bf: $9e
	jr nz, jr_051_729a                               ; $72c0: $20 $d8

	rst $38                                          ; $72c2: $ff
	sbc b                                            ; $72c3: $98
	xor a                                            ; $72c4: $af
	or e                                             ; $72c5: $b3
	dec c                                            ; $72c6: $0d
	rla                                              ; $72c7: $17
	ld [bc], a                                       ; $72c8: $02
	dec b                                            ; $72c9: $05
	nop                                              ; $72ca: $00
	rst SubAFromHL                                          ; $72cb: $d7
	rst $38                                          ; $72cc: $ff
	sbc c                                            ; $72cd: $99
	ld a, a                                          ; $72ce: $7f
	rst $38                                          ; $72cf: $ff
	ld e, [hl]                                       ; $72d0: $5e
	cp a                                             ; $72d1: $bf
	cp d                                             ; $72d2: $ba
	or l                                             ; $72d3: $b5
	reti                                             ; $72d4: $d9


	rst $38                                          ; $72d5: $ff
	sub a                                            ; $72d6: $97
	ld hl, sp-$12                                    ; $72d7: $f8 $ee
	ld a, a                                          ; $72d9: $7f
	ldh a, [c]                                       ; $72da: $f2
	call c, $ad76                                    ; $72db: $dc $76 $ad
	ld d, d                                          ; $72de: $52
	reti                                             ; $72df: $d9


	rst $38                                          ; $72e0: $ff
	add b                                            ; $72e1: $80
	inc bc                                           ; $72e2: $03
	rlca                                             ; $72e3: $07
	rrca                                             ; $72e4: $0f
	rra                                              ; $72e5: $1f
	ccf                                              ; $72e6: $3f
	ccf                                              ; $72e7: $3f
	ld a, a                                          ; $72e8: $7f
	rst $38                                          ; $72e9: $ff
	cp $fc                                           ; $72ea: $fe $fc
	ld hl, sp-$0f                                    ; $72ec: $f8 $f1
	ldh [c], a                                       ; $72ee: $e2
	push hl                                          ; $72ef: $e5
	jp z, $c394                                      ; $72f0: $ca $94 $c3

	add a                                            ; $72f3: $87
	cp a                                             ; $72f4: $bf
	ld a, e                                          ; $72f5: $7b
	rst FarCall                                          ; $72f6: $f7
	rst AddAOntoHL                                          ; $72f7: $ef
	rst SubAFromDE                                          ; $72f8: $df
	and a                                            ; $72f9: $a7
	inc a                                            ; $72fa: $3c
	ld a, b                                          ; $72fb: $78
	pop hl                                           ; $72fc: $e1
	rst JumpTable                                          ; $72fd: $c7
	adc a                                            ; $72fe: $8f
	rra                                              ; $72ff: $1f
	ccf                                              ; $7300: $3f
	sub l                                            ; $7301: $95
	ld a, a                                          ; $7302: $7f
	rst AddAOntoHL                                          ; $7303: $ef
	sbc [hl]                                         ; $7304: $9e
	rrca                                             ; $7305: $0f
	rst $38                                          ; $7306: $ff
	rst $38                                          ; $7307: $ff
	adc a                                            ; $7308: $8f
	dec e                                            ; $7309: $1d
	rst AddAOntoHL                                          ; $730a: $ef
	rra                                              ; $730b: $1f
	call c, $96ff                                    ; $730c: $dc $ff $96
	cp $f0                                           ; $730f: $fe $f0
	ccf                                              ; $7311: $3f
	rra                                              ; $7312: $1f
	ccf                                              ; $7313: $3f
	di                                               ; $7314: $f3
	ld sp, hl                                        ; $7315: $f9
	rst $38                                          ; $7316: $ff
	ld hl, sp-$26                                    ; $7317: $f8 $da
	rst $38                                          ; $7319: $ff
	sbc [hl]                                         ; $731a: $9e
	rlca                                             ; $731b: $07
	ld h, e                                          ; $731c: $63
	sbc b                                            ; $731d: $98
	sub h                                            ; $731e: $94
	ccf                                              ; $731f: $3f
	rst GetHLinHL                                          ; $7320: $cf
	inc sp                                           ; $7321: $33
	sbc c                                            ; $7322: $99
	db $fc                                           ; $7323: $fc
	cp $0f                                           ; $7324: $fe $0f
	inc bc                                           ; $7326: $03
	nop                                              ; $7327: $00
	ldh [$f0], a                                     ; $7328: $e0 $f0
	db $dd                                           ; $732a: $dd
	ld hl, sp-$62                                    ; $732b: $f8 $9e
	cp $de                                           ; $732d: $fe $de
	rst $38                                          ; $732f: $ff
	rst SubAFromDE                                          ; $7330: $df
	rst AddAOntoHL                                          ; $7331: $ef
	sub h                                            ; $7332: $94
	ld l, a                                          ; $7333: $6f
	ld a, a                                          ; $7334: $7f
	rst $38                                          ; $7335: $ff
	rst $38                                          ; $7336: $ff
	cp a                                             ; $7337: $bf
	rst SubAFromDE                                          ; $7338: $df
	ld [hl], a                                       ; $7339: $77
	ld e, l                                          ; $733a: $5d
	jr z, jr_051_73b4                                ; $733b: $28 $77

	sub d                                            ; $733d: $92
	push de                                          ; $733e: $d5
	rst $38                                          ; $733f: $ff
	sbc e                                            ; $7340: $9b
	rst SubAFromBC                                          ; $7341: $e7
	ld a, a                                          ; $7342: $7f
	xor a                                            ; $7343: $af
	push de                                          ; $7344: $d5
	reti                                             ; $7345: $d9


	rst $38                                          ; $7346: $ff
	ld a, a                                          ; $7347: $7f
	xor [hl]                                         ; $7348: $ae
	sbc c                                            ; $7349: $99
	cp $98                                           ; $734a: $fe $98
	db $f4                                           ; $734c: $f4
	add sp, -$18                                     ; $734d: $e8 $e8
	ld a, h                                          ; $734f: $7c
	reti                                             ; $7350: $d9


	rst $38                                          ; $7351: $ff
	sub a                                            ; $7352: $97
	nop                                              ; $7353: $00
	ld b, b                                          ; $7354: $40
	ld e, b                                          ; $7355: $58
	nop                                              ; $7356: $00
	add b                                            ; $7357: $80
	nop                                              ; $7358: $00
	nop                                              ; $7359: $00
	add h                                            ; $735a: $84
	ld h, e                                          ; $735b: $63
	ldh a, [rIE]                                     ; $735c: $f0 $ff
	sbc d                                            ; $735e: $9a
	add c                                            ; $735f: $81
	ld c, d                                          ; $7360: $4a
	inc bc                                           ; $7361: $03
	xor c                                            ; $7362: $a9
	sbc l                                            ; $7363: $9d
	ld h, e                                          ; $7364: $63
	ld [hl-], a                                      ; $7365: $32
	sbc b                                            ; $7366: $98
	dec de                                           ; $7367: $1b
	ld d, h                                          ; $7368: $54
	jr z, @-$40                                      ; $7369: $28 $be

	ld [hl], h                                       ; $736b: $74
	ld c, c                                          ; $736c: $49
	call c, $ffd8                                    ; $736d: $dc $d8 $ff
	sbc b                                            ; $7370: $98
	ccf                                              ; $7371: $3f
	sbc a                                            ; $7372: $9f
	add hl, bc                                       ; $7373: $09
	jp nz, $a0a9                                     ; $7374: $c2 $a9 $a0

	ld b, c                                          ; $7377: $41
	rst SubAFromHL                                          ; $7378: $d7
	rst $38                                          ; $7379: $ff
	sbc c                                            ; $737a: $99
	ei                                               ; $737b: $fb
	rst SubAFromDE                                          ; $737c: $df
	ld b, e                                          ; $737d: $43
	jr nz, jr_051_7380                               ; $737e: $20 $00

jr_051_7380:
	ld h, h                                          ; $7380: $64
	rst SubAFromHL                                          ; $7381: $d7
	rst $38                                          ; $7382: $ff
	sbc d                                            ; $7383: $9a
	rst AddAOntoHL                                          ; $7384: $ef
	cp [hl]                                          ; $7385: $be
	ld a, [hl+]                                      ; $7386: $2a
	jr jr_051_7389                                   ; $7387: $18 $00

jr_051_7389:
	ld h, e                                          ; $7389: $63
	ld e, b                                          ; $738a: $58
	sbc h                                            ; $738b: $9c
	adc h                                            ; $738c: $8c
	ld a, [$77f5]                                    ; $738d: $fa $f5 $77
	ld h, h                                          ; $7390: $64
	ret c                                            ; $7391: $d8

	rst $38                                          ; $7392: $ff
	sbc c                                            ; $7393: $99
	ld [$d082], sp                                   ; $7394: $08 $82 $d0
	ld [$fab7], a                                    ; $7397: $ea $b7 $fa
	rst SubAFromHL                                          ; $739a: $d7
	rst $38                                          ; $739b: $ff
	sbc [hl]                                         ; $739c: $9e
	ld bc, $b47a                                     ; $739d: $01 $7a $b4
	sbc e                                            ; $73a0: $9b
	ld d, d                                          ; $73a1: $52
	call nc, $adfa                                   ; $73a2: $d4 $fa $ad
	reti                                             ; $73a5: $d9


	rst $38                                          ; $73a6: $ff
	sbc e                                            ; $73a7: $9b
	dec hl                                           ; $73a8: $2b
	ld e, [hl]                                       ; $73a9: $5e
	dec d                                            ; $73aa: $15
	inc bc                                           ; $73ab: $03
	halt                                             ; $73ac: $76
	adc l                                            ; $73ad: $8d
	ld h, e                                          ; $73ae: $63
	ld [hl], b                                       ; $73af: $70
	sbc l                                            ; $73b0: $9d
	ld bc, $7a03                                     ; $73b1: $01 $03 $7a

jr_051_73b4:
	call $cc7e                                       ; $73b4: $cd $7e $cc
	ld a, e                                          ; $73b7: $7b
	ld b, [hl]                                       ; $73b8: $46
	ld a, d                                          ; $73b9: $7a
	call $f985                                       ; $73ba: $cd $85 $f9
	di                                               ; $73bd: $f3
	rst SubAFromHL                                          ; $73be: $d7
	cp d                                             ; $73bf: $ba
	db $ec                                           ; $73c0: $ec
	ld d, l                                          ; $73c1: $55
	ei                                               ; $73c2: $fb
	xor e                                            ; $73c3: $ab
	rst FarCall                                          ; $73c4: $f7
	rst SubAFromHL                                          ; $73c5: $d7
	cp h                                             ; $73c6: $bc
	ld l, l                                          ; $73c7: $6d
	ld e, e                                          ; $73c8: $5b
	ei                                               ; $73c9: $fb
	or a                                             ; $73ca: $b7
	rst FarCall                                          ; $73cb: $f7
	ld l, a                                          ; $73cc: $6f
	ld l, a                                          ; $73cd: $6f
	ld c, a                                          ; $73ce: $4f
	rst $38                                          ; $73cf: $ff
	cp $ec                                           ; $73d0: $fe $ec
	ret                                              ; $73d2: $c9


	sub c                                            ; $73d3: $91
	inc hl                                           ; $73d4: $23
	ld h, $73                                        ; $73d5: $26 $73
	inc h                                            ; $73d7: $24
	ld a, a                                          ; $73d8: $7f
	sbc $80                                          ; $73d9: $de $80
	ld sp, hl                                        ; $73db: $f9
	cp [hl]                                          ; $73dc: $be
	ld a, h                                          ; $73dd: $7c
	ld a, c                                          ; $73de: $79
	ldh a, [c]                                       ; $73df: $f2
	ldh a, [c]                                       ; $73e0: $f2
	push hl                                          ; $73e1: $e5
	jp z, $c18c                                      ; $73e2: $ca $8c $c1

	add e                                            ; $73e5: $83
	add [hl]                                         ; $73e6: $86
	inc c                                            ; $73e7: $0c
	dec e                                            ; $73e8: $1d
	dec sp                                           ; $73e9: $3b
	ld [hl], a                                       ; $73ea: $77
	rst $38                                          ; $73eb: $ff
	cp a                                             ; $73ec: $bf
	dec e                                            ; $73ed: $1d
	ld e, h                                          ; $73ee: $5c
	cp b                                             ; $73ef: $b8
	jr z, jr_051_7448                                ; $73f0: $28 $56

	or l                                             ; $73f2: $b5
	ld c, d                                          ; $73f3: $4a
	nop                                              ; $73f4: $00
	jr nz, jr_051_7418                               ; $73f5: $20 $21

	ld b, l                                          ; $73f7: $45
	push de                                          ; $73f8: $d5
	xor l                                            ; $73f9: $ad
	sbc [hl]                                         ; $73fa: $9e
	ld l, a                                          ; $73fb: $6f
	ld [hl], a                                       ; $73fc: $77
	jp c, $a99a                                      ; $73fd: $da $9a $a9

	adc d                                            ; $7400: $8a
	xor h                                            ; $7401: $ac
	add h                                            ; $7402: $84
	ld a, [$88fe]                                    ; $7403: $fa $fe $88
	ld [bc], a                                       ; $7406: $02
	ld bc, $2901                                     ; $7407: $01 $01 $29
	add hl, hl                                       ; $740a: $29
	cp a                                             ; $740b: $bf
	xor $f6                                          ; $740c: $ee $f6
	ld l, e                                          ; $740e: $6b
	dec h                                            ; $740f: $25
	or e                                             ; $7410: $b3
	jp nz, Jump_051_7f50                             ; $7411: $c2 $50 $7f

	rra                                              ; $7414: $1f
	rrca                                             ; $7415: $0f
	rlca                                             ; $7416: $07
	inc bc                                           ; $7417: $03

jr_051_7418:
	ld bc, $8901                                     ; $7418: $01 $01 $89
	nop                                              ; $741b: $00
	add b                                            ; $741c: $80
	ld a, d                                          ; $741d: $7a
	or b                                             ; $741e: $b0
	rst SubAFromDE                                          ; $741f: $df
	db $fc                                           ; $7420: $fc
	ld a, d                                          ; $7421: $7a
	adc a                                            ; $7422: $8f
	sbc [hl]                                         ; $7423: $9e
	ccf                                              ; $7424: $3f
	db $dd                                           ; $7425: $dd
	rst $38                                          ; $7426: $ff
	sub a                                            ; $7427: $97
	rst GetHLinHL                                          ; $7428: $cf
	cp l                                             ; $7429: $bd
	ld c, c                                          ; $742a: $49
	dec h                                            ; $742b: $25
	xor d                                            ; $742c: $aa
	ld a, h                                          ; $742d: $7c
	add hl, hl                                       ; $742e: $29
	ld bc, $3063                                     ; $742f: $01 $63 $30
	sub a                                            ; $7432: $97
	xor $b3                                          ; $7433: $ee $b3
	xor $75                                          ; $7435: $ee $75
	rst GetHLinHL                                          ; $7437: $cf
	dec sp                                           ; $7438: $3b
	nop                                              ; $7439: $00
	dec bc                                           ; $743a: $0b
	reti                                             ; $743b: $d9


	rst $38                                          ; $743c: $ff
	sub a                                            ; $743d: $97
	ld hl, $e659                                     ; $743e: $21 $59 $e6
	xor e                                            ; $7441: $ab
	ld [hl], l                                       ; $7442: $75
	ld a, e                                          ; $7443: $7b
	rst SubAFromDE                                          ; $7444: $df
	dec a                                            ; $7445: $3d
	reti                                             ; $7446: $d9


	rst $38                                          ; $7447: $ff

jr_051_7448:
	sub a                                            ; $7448: $97
	ld e, a                                          ; $7449: $5f
	ld e, [hl]                                       ; $744a: $5e
	ld a, a                                          ; $744b: $7f
	ei                                               ; $744c: $fb
	ld a, l                                          ; $744d: $7d
	xor d                                            ; $744e: $aa
	halt                                             ; $744f: $76
	ld e, a                                          ; $7450: $5f
	reti                                             ; $7451: $d9


	rst $38                                          ; $7452: $ff
	sub a                                            ; $7453: $97
	rst FarCall                                          ; $7454: $f7
	adc $9b                                          ; $7455: $ce $9b
	daa                                              ; $7457: $27
	db $db                                           ; $7458: $db
	push de                                          ; $7459: $d5
	add [hl]                                         ; $745a: $86
	add hl, hl                                       ; $745b: $29
	reti                                             ; $745c: $d9


	rst $38                                          ; $745d: $ff
	sbc b                                            ; $745e: $98
	jp c, Jump_051_7ff9                              ; $745f: $da $f9 $7f

	cp a                                             ; $7462: $bf
	ld l, a                                          ; $7463: $6f
	rst $38                                          ; $7464: $ff
	xor a                                            ; $7465: $af
	ret c                                            ; $7466: $d8

	rst $38                                          ; $7467: $ff
	sbc c                                            ; $7468: $99
	ld d, b                                          ; $7469: $50
	ld c, l                                          ; $746a: $4d
	and h                                            ; $746b: $a4
	rst SubAFromDE                                          ; $746c: $df
	ei                                               ; $746d: $fb
	rst FarCall                                          ; $746e: $f7
	rst SubAFromHL                                          ; $746f: $d7
	rst $38                                          ; $7470: $ff
	sbc d                                            ; $7471: $9a
	ld b, b                                          ; $7472: $40
	nop                                              ; $7473: $00
	adc c                                            ; $7474: $89
	or [hl]                                          ; $7475: $b6
	ld c, [hl]                                       ; $7476: $4e
	ld h, c                                          ; $7477: $61
	jp nz, $8d6a                                     ; $7478: $c2 $6a $8d

	sbc h                                            ; $747b: $9c
	ld c, a                                          ; $747c: $4f
	inc de                                           ; $747d: $13
	dec l                                            ; $747e: $2d
	ret z                                            ; $747f: $c8

	rst $38                                          ; $7480: $ff
	sbc b                                            ; $7481: $98
	ei                                               ; $7482: $fb
	rst $38                                          ; $7483: $ff
	db $fd                                           ; $7484: $fd
	rst $38                                          ; $7485: $ff
	or $ff                                           ; $7486: $f6 $ff
	sbc $d9                                          ; $7488: $de $d9
	rst $38                                          ; $748a: $ff
	sub a                                            ; $748b: $97
	or h                                             ; $748c: $b4
	add sp, -$0e                                     ; $748d: $e8 $f2
	xor b                                            ; $748f: $a8
	or l                                             ; $7490: $b5
	ldh a, [c]                                       ; $7491: $f2
	sbc $ab                                          ; $7492: $de $ab
	reti                                             ; $7494: $d9


	rst $38                                          ; $7495: $ff
	ld [hl], l                                       ; $7496: $75
	sub e                                            ; $7497: $93
	ld a, c                                          ; $7498: $79
	ld [$ff8c], a                                    ; $7499: $ea $8c $ff
	di                                               ; $749c: $f3
	and $e6                                          ; $749d: $e6 $e6
	call $9bcd                                       ; $749f: $cd $cd $9b
	xor e                                            ; $74a2: $ab
	ld d, e                                          ; $74a3: $53
	ld l, [hl]                                       ; $74a4: $6e
	ld [$939a], a                                    ; $74a5: $ea $9a $93
	or a                                             ; $74a8: $b7
	scf                                              ; $74a9: $37
	ld h, [hl]                                       ; $74aa: $66
	ld l, a                                          ; $74ab: $6f
	rst SubAFromDE                                          ; $74ac: $df
	rst SubAFromDE                                          ; $74ad: $df
	call c, $95ff                                    ; $74ae: $dc $ff $95
	db $fc                                           ; $74b1: $fc
	ld c, a                                          ; $74b2: $4f
	rst JumpTable                                          ; $74b3: $c7
	adc [hl]                                         ; $74b4: $8e
	or a                                             ; $74b5: $b7
	rst GetHLinHL                                          ; $74b6: $cf
	rst SubAFromHL                                          ; $74b7: $d7
	ld e, [hl]                                       ; $74b8: $5e
	ld e, a                                          ; $74b9: $5f
	di                                               ; $74ba: $f3
	ld a, e                                          ; $74bb: $7b
	db $f4                                           ; $74bc: $f4
	rst SubAFromDE                                          ; $74bd: $df
	ld hl, sp-$75                                    ; $74be: $f8 $8b
	pop af                                           ; $74c0: $f1
	ldh a, [$39]                                     ; $74c1: $f0 $39
	rst GetHLinHL                                          ; $74c3: $cf
	cp a                                             ; $74c4: $bf
	rst $38                                          ; $74c5: $ff
	xor $bf                                          ; $74c6: $ee $bf
	pop hl                                           ; $74c8: $e1
	ld [hl], a                                       ; $74c9: $77
	rst $38                                          ; $74ca: $ff
	rst $38                                          ; $74cb: $ff
	ld [hl], c                                       ; $74cc: $71
	nop                                              ; $74cd: $00
	rra                                              ; $74ce: $1f
	ld a, a                                          ; $74cf: $7f
	db $e3                                           ; $74d0: $e3
	cp $96                                           ; $74d1: $fe $96
	ld a, $7a                                        ; $74d3: $3e $7a
	ld b, c                                          ; $74d5: $41
	ld [hl], a                                       ; $74d6: $77
	cp a                                             ; $74d7: $bf
	adc a                                            ; $74d8: $8f
	ei                                               ; $74d9: $fb
	jp $0d07                                         ; $74da: $c3 $07 $0d


	add c                                            ; $74dd: $81
	add b                                            ; $74de: $80
	nop                                              ; $74df: $00
	xor e                                            ; $74e0: $ab
	ld e, l                                          ; $74e1: $5d
	db $d3                                           ; $74e2: $d3
	or a                                             ; $74e3: $b7
	ld l, a                                          ; $74e4: $6f
	jp c, $6dff                                      ; $74e5: $da $ff $6d

	ld a, c                                          ; $74e8: $79
	ld a, e                                          ; $74e9: $7b
	adc b                                            ; $74ea: $88
	adc a                                            ; $74eb: $8f
	ld sp, hl                                        ; $74ec: $f9
	or a                                             ; $74ed: $b7
	rlca                                             ; $74ee: $07
	di                                               ; $74ef: $f3
	dec e                                            ; $74f0: $1d
	dec l                                            ; $74f1: $2d
	ld [de], a                                       ; $74f2: $12
	inc de                                           ; $74f3: $13
	dec a                                            ; $74f4: $3d
	db $e3                                           ; $74f5: $e3
	add $9c                                          ; $74f6: $c6 $9c
	ret z                                            ; $74f8: $c8

	ret c                                            ; $74f9: $d8

	ld sp, hl                                        ; $74fa: $f9
	ld sp, hl                                        ; $74fb: $f9
	ld a, e                                          ; $74fc: $7b
	cp h                                             ; $74fd: $bc
	ld a, l                                          ; $74fe: $7d
	ld d, [hl]                                       ; $74ff: $56
	sbc $e0                                          ; $7500: $de $e0
	db $dd                                           ; $7502: $dd
	ret nz                                           ; $7503: $c0

	sbc l                                            ; $7504: $9d
	adc a                                            ; $7505: $8f
	sbc a                                            ; $7506: $9f
	ld l, l                                          ; $7507: $6d
	pop bc                                           ; $7508: $c1
	rst $38                                          ; $7509: $ff
	sbc c                                            ; $750a: $99
	dec b                                            ; $750b: $05
	dec hl                                           ; $750c: $2b
	dec de                                           ; $750d: $1b
	rrca                                             ; $750e: $0f
	daa                                              ; $750f: $27
	cpl                                              ; $7510: $2f
	ld h, d                                          ; $7511: $62
	jr nc, @-$62                                     ; $7512: $30 $9c

	adc d                                            ; $7514: $8a
	cp h                                             ; $7515: $bc
	rst SubAFromHL                                          ; $7516: $d7
	ld [hl], a                                       ; $7517: $77
	or c                                             ; $7518: $b1
	reti                                             ; $7519: $d9


	rst $38                                          ; $751a: $ff
	sbc h                                            ; $751b: $9c
	ld [hl], a                                       ; $751c: $77
	cp a                                             ; $751d: $bf
	cp a                                             ; $751e: $bf
	call nc, $9dff                                   ; $751f: $d4 $ff $9d
	push af                                          ; $7522: $f5
	db $db                                           ; $7523: $db
	ld a, c                                          ; $7524: $79
	xor a                                            ; $7525: $af
	ld a, [hl]                                       ; $7526: $7e
	ld e, h                                          ; $7527: $5c
	ret c                                            ; $7528: $d8

	rst $38                                          ; $7529: $ff
	sub a                                            ; $752a: $97
	ld d, h                                          ; $752b: $54
	and b                                            ; $752c: $a0
	push de                                          ; $752d: $d5
	cp b                                             ; $752e: $b8
	call nc, $f46d                                   ; $752f: $d4 $6d $f4
	xor c                                            ; $7532: $a9
	reti                                             ; $7533: $d9


	rst $38                                          ; $7534: $ff
	sub a                                            ; $7535: $97
	ld l, a                                          ; $7536: $6f
	cp a                                             ; $7537: $bf
	ld d, l                                          ; $7538: $55
	adc d                                            ; $7539: $8a
	cpl                                              ; $753a: $2f
	ld d, e                                          ; $753b: $53
	ld a, [hl+]                                      ; $753c: $2a
	ld l, e                                          ; $753d: $6b
	rst SubAFromHL                                          ; $753e: $d7
	rst $38                                          ; $753f: $ff
	sbc c                                            ; $7540: $99
	ld a, [$bfdd]                                    ; $7541: $fa $dd $bf

jr_051_7544:
	db $db                                           ; $7544: $db
	ld d, d                                          ; $7545: $52
	adc b                                            ; $7546: $88
	ld h, c                                          ; $7547: $61
	ld d, b                                          ; $7548: $50
	ld a, e                                          ; $7549: $7b
	jr z, @-$63                                      ; $754a: $28 $9b

	cp h                                             ; $754c: $bc
	ld h, c                                          ; $754d: $61
	ld a, [hl+]                                      ; $754e: $2a
	add b                                            ; $754f: $80
	reti                                             ; $7550: $d9


	rst $38                                          ; $7551: $ff
	sbc [hl]                                         ; $7552: $9e
	ld [bc], a                                       ; $7553: $02
	db $fd                                           ; $7554: $fd
	sbc l                                            ; $7555: $9d
	ld b, b                                          ; $7556: $40
	db $10                                           ; $7557: $10
	ld h, b                                          ; $7558: $60
	add b                                            ; $7559: $80
	sbc h                                            ; $755a: $9c
	ld l, a                                          ; $755b: $6f
	sub [hl]                                         ; $755c: $96
	dec h                                            ; $755d: $25
	db $fd                                           ; $755e: $fd
	sbc [hl]                                         ; $755f: $9e
	inc b                                            ; $7560: $04
	ld h, d                                          ; $7561: $62
	pop bc                                           ; $7562: $c1
	sbc l                                            ; $7563: $9d
	or [hl]                                          ; $7564: $b6
	ld a, [hl+]                                      ; $7565: $2a
	db $fd                                           ; $7566: $fd
	sbc [hl]                                         ; $7567: $9e
	ld bc, $6050                                     ; $7568: $01 $50 $60
	ld a, e                                          ; $756b: $7b
	ld e, a                                          ; $756c: $5f
	add b                                            ; $756d: $80
	cp $fd                                           ; $756e: $fe $fd
	ld a, [$e8f4]                                    ; $7570: $fa $f4 $e8
	ret                                              ; $7573: $c9


	sub c                                            ; $7574: $91
	ld [hl+], a                                      ; $7575: $22
	sbc $b6                                          ; $7576: $de $b6
	call nc, $aeec                                   ; $7578: $d4 $ec $ae
	ld a, e                                          ; $757b: $7b
	rst SubAFromDE                                          ; $757c: $df
	rst FarCall                                          ; $757d: $f7
	or a                                             ; $757e: $b7
	ld l, a                                          ; $757f: $6f
	ld l, a                                          ; $7580: $6f
	ld e, a                                          ; $7581: $5f
	db $dd                                           ; $7582: $dd
	sbc l                                            ; $7583: $9d
	add hl, sp                                       ; $7584: $39
	add hl, sp                                       ; $7585: $39
	ld c, [hl]                                       ; $7586: $4e
	ld c, a                                          ; $7587: $4f
	rst GetHLinHL                                          ; $7588: $cf
	rst GetHLinHL                                          ; $7589: $cf
	sbc e                                            ; $758a: $9b
	db $db                                           ; $758b: $db
	db $db                                           ; $758c: $db
	sbc c                                            ; $758d: $99
	pop de                                           ; $758e: $d1
	db $fd                                           ; $758f: $fd
	db $fd                                           ; $7590: $fd
	db $fc                                           ; $7591: $fc
	cp $ff                                           ; $7592: $fe $ff
	sbc $bf                                          ; $7594: $de $bf
	ld a, [hl]                                       ; $7596: $7e
	ld [hl-], a                                      ; $7597: $32
	ld a, c                                          ; $7598: $79
	rst SubAFromHL                                          ; $7599: $d7
	sub b                                            ; $759a: $90
	rst SubAFromDE                                          ; $759b: $df
	rst GetHLinHL                                          ; $759c: $cf
	or a                                             ; $759d: $b7
	ldh [$60], a                                     ; $759e: $e0 $60
	ldh [$e0], a                                     ; $75a0: $e0 $e0
	jr nz, jr_051_7544                               ; $75a2: $20 $a0

	or b                                             ; $75a4: $b0
	ld hl, sp-$42                                    ; $75a5: $f8 $be
	ld [$80f6], a                                    ; $75a7: $ea $f6 $80
	db $dd                                           ; $75aa: $dd
	ret nz                                           ; $75ab: $c0

	sbc h                                            ; $75ac: $9c
	ld a, [hl]                                       ; $75ad: $7e
	inc a                                            ; $75ae: $3c
	inc e                                            ; $75af: $1c
	db $fc                                           ; $75b0: $fc
	sbc l                                            ; $75b1: $9d
	ld a, a                                          ; $75b2: $7f
	ld sp, $937b                                     ; $75b3: $31 $7b $93
	sbc h                                            ; $75b6: $9c
	ld c, $1e                                        ; $75b7: $0e $1e
	inc c                                            ; $75b9: $0c

jr_051_75ba:
	ld a, e                                          ; $75ba: $7b
	sbc l                                            ; $75bb: $9d
	ld a, c                                          ; $75bc: $79
	dec d                                            ; $75bd: $15
	sub b                                            ; $75be: $90
	ld bc, $f502                                     ; $75bf: $01 $02 $f5
	sbc e                                            ; $75c2: $9b
	rst FarCall                                          ; $75c3: $f7
	rst JumpTable                                          ; $75c4: $c7
	add a                                            ; $75c5: $87
	ld l, [hl]                                       ; $75c6: $6e
	ld c, $0f                                        ; $75c7: $0e $0f
	ei                                               ; $75c9: $fb
	sbc a                                            ; $75ca: $9f
	rst AddAOntoHL                                          ; $75cb: $ef
	rst SubAFromBC                                          ; $75cc: $e7
	rst JumpTable                                          ; $75cd: $c7
	ld a, c                                          ; $75ce: $79
	daa                                              ; $75cf: $27
	sbc d                                            ; $75d0: $9a
	ldh a, [$80]                                     ; $75d1: $f0 $80
	ret nz                                           ; $75d3: $c0

	ldh [$f0], a                                     ; $75d4: $e0 $f0
	ld a, e                                          ; $75d6: $7b
	or l                                             ; $75d7: $b5
	ld [hl], d                                       ; $75d8: $72
	jr jr_051_75ba                                   ; $75d9: $18 $df

	rra                                              ; $75db: $1f
	sub [hl]                                         ; $75dc: $96
	ccf                                              ; $75dd: $3f
	nop                                              ; $75de: $00
	nop                                              ; $75df: $00
	dec d                                            ; $75e0: $15
	ld l, $1f                                        ; $75e1: $2e $1f
	adc a                                            ; $75e3: $8f
	ld d, l                                          ; $75e4: $55
	dec e                                            ; $75e5: $1d
	reti                                             ; $75e6: $d9


	rst $38                                          ; $75e7: $ff
	sbc c                                            ; $75e8: $99
	cp a                                             ; $75e9: $bf
	ld a, e                                          ; $75ea: $7b
	rst $38                                          ; $75eb: $ff
	ld h, a                                          ; $75ec: $67
	cp a                                             ; $75ed: $bf
	rst AddAOntoHL                                          ; $75ee: $ef
	ld e, d                                          ; $75ef: $5a
	rst AddAOntoHL                                          ; $75f0: $ef
	ld a, e                                          ; $75f1: $7b
	ld h, h                                          ; $75f2: $64
	sbc e                                            ; $75f3: $9b
	db $fc                                           ; $75f4: $fc
	di                                               ; $75f5: $f3
	call z, Call_051_6e70                            ; $75f6: $cc $70 $6e
	ld b, d                                          ; $75f9: $42
	sub l                                            ; $75fa: $95
	di                                               ; $75fb: $f3
	adc a                                            ; $75fc: $8f
	rst $38                                          ; $75fd: $ff
	ld sp, hl                                        ; $75fe: $f9
	db $e4                                           ; $75ff: $e4
	inc e                                            ; $7600: $1c
	ldh [rP1], a                                     ; $7601: $e0 $00
	nop                                              ; $7603: $00
	ld b, $7b                                        ; $7604: $06 $7b
	ld [hl], $9e                                     ; $7606: $36 $9e
	db $e3                                           ; $7608: $e3
	ld a, b                                          ; $7609: $78
	db $db                                           ; $760a: $db
	sub [hl]                                         ; $760b: $96
	ld sp, hl                                        ; $760c: $f9
	cp $ff                                           ; $760d: $fe $ff
	ccf                                              ; $760f: $3f
	rlca                                             ; $7610: $07
	add c                                            ; $7611: $81
	ld [hl], b                                       ; $7612: $70
	ld c, h                                          ; $7613: $4c
	ld b, d                                          ; $7614: $42
	reti                                             ; $7615: $d9


	rst $38                                          ; $7616: $ff
	sbc h                                            ; $7617: $9c
	db $f4                                           ; $7618: $f4
	ret z                                            ; $7619: $c8

	push af                                          ; $761a: $f5
	ld a, b                                          ; $761b: $78
	sub d                                            ; $761c: $92
	sbc l                                            ; $761d: $9d
	rra                                              ; $761e: $1f
	rlca                                             ; $761f: $07
	reti                                             ; $7620: $d9


	rst $38                                          ; $7621: $ff
	sbc l                                            ; $7622: $9d
	ld d, $28                                        ; $7623: $16 $28
	cp $9c                                           ; $7625: $fe $9c
	ld d, c                                          ; $7627: $51
	and h                                            ; $7628: $a4
	reti                                             ; $7629: $d9


	reti                                             ; $762a: $d9


	rst $38                                          ; $762b: $ff
	sbc [hl]                                         ; $762c: $9e
	ld d, d                                          ; $762d: $52
	db $fc                                           ; $762e: $fc
	sbc l                                            ; $762f: $9d
	inc b                                            ; $7630: $04
	jr nz, jr_051_7693                               ; $7631: $20 $60

	ld h, b                                          ; $7633: $60
	ld a, [$ffd9]                                    ; $7634: $fa $d9 $ff
	sbc h                                            ; $7637: $9c
	jp hl                                            ; $7638: $e9


	sub l                                            ; $7639: $95
	ld [$ffd4], a                                    ; $763a: $ea $d4 $ff
	sub a                                            ; $763d: $97
	ld h, b                                          ; $763e: $60
	ld c, c                                          ; $763f: $49
	or [hl]                                          ; $7640: $b6
	ei                                               ; $7641: $fb
	db $ed                                           ; $7642: $ed
	cp $fd                                           ; $7643: $fe $fd
	or $62                                           ; $7645: $f6 $62
	ret nc                                           ; $7647: $d0

	sbc d                                            ; $7648: $9a
	inc bc                                           ; $7649: $03
	rrca                                             ; $764a: $0f
	adc a                                            ; $764b: $8f
	ld e, a                                          ; $764c: $5f
	cp a                                             ; $764d: $bf
	halt                                             ; $764e: $76
	rst GetHLinHL                                          ; $764f: $cf
	ld a, h                                          ; $7650: $7c
	add h                                            ; $7651: $84
	add e                                            ; $7652: $83
	pop af                                           ; $7653: $f1
	ldh [c], a                                       ; $7654: $e2
	ldh [c], a                                       ; $7655: $e2
	call nz, Call_051_77d9                           ; $7656: $c4 $d9 $77
	ei                                               ; $7659: $fb
	ld l, e                                          ; $765a: $6b
	or $d6                                           ; $765b: $f6 $d6
	db $ed                                           ; $765d: $ed
	xor l                                            ; $765e: $ad
	ld h, [hl]                                       ; $765f: $66
	call z, $9c8c                                    ; $7660: $cc $8c $9c
	add hl, de                                       ; $7663: $19
	add hl, sp                                       ; $7664: $39
	inc sp                                           ; $7665: $33
	ld [hl], e                                       ; $7666: $73
	cp l                                             ; $7667: $bd
	cp l                                             ; $7668: $bd
	rst AddAOntoHL                                          ; $7669: $ef
	ld a, e                                          ; $766a: $7b
	ei                                               ; $766b: $fb
	rst SubAFromDE                                          ; $766c: $df
	add $dc                                          ; $766d: $c6 $dc
	sbc $73                                          ; $766f: $de $73
	rst SubAFromDE                                          ; $7671: $df
	rst SubAFromBC                                          ; $7672: $e7
	sub a                                            ; $7673: $97
	and $fc                                          ; $7674: $e6 $fc
	ld hl, sp-$2d                                    ; $7676: $f8 $d3
	or a                                             ; $7678: $b7
	sbc $d4                                          ; $7679: $de $d4
	and b                                            ; $767b: $a0
	cp $9b                                           ; $767c: $fe $9b
	cp a                                             ; $767e: $bf
	jp c, $80c4                                      ; $767f: $da $c4 $80

	ld [hl], e                                       ; $7682: $73
	sbc b                                            ; $7683: $98
	sub b                                            ; $7684: $90
	ei                                               ; $7685: $fb
	ccf                                              ; $7686: $3f
	scf                                              ; $7687: $37
	scf                                              ; $7688: $37
	inc hl                                           ; $7689: $23
	rlca                                             ; $768a: $07
	dec d                                            ; $768b: $15
	ld hl, sp+$7c                                    ; $768c: $f8 $7c
	ld e, h                                          ; $768e: $5c
	ld e, $3f                                        ; $768f: $1e $3f
	ccf                                              ; $7691: $3f
	dec de                                           ; $7692: $1b

jr_051_7693:
	dec bc                                           ; $7693: $0b
	sbc $e0                                          ; $7694: $de $e0
	sbc d                                            ; $7696: $9a
	ldh a, [rSVBK]                                   ; $7697: $f0 $70
	or b                                             ; $7699: $b0
	ret c                                            ; $769a: $d8

	db $f4                                           ; $769b: $f4
	db $fd                                           ; $769c: $fd
	ld a, d                                          ; $769d: $7a
	push hl                                          ; $769e: $e5
	sub l                                            ; $769f: $95
	ld hl, sp+$40                                    ; $76a0: $f8 $40
	stop                                             ; $76a2: $10 $00
	jr nc, @+$22                                     ; $76a4: $30 $20

	ld bc, $0e05                                     ; $76a6: $01 $05 $0e
	nop                                              ; $76a9: $00
	ld [hl], a                                       ; $76aa: $77
	ld c, b                                          ; $76ab: $48
	sub e                                            ; $76ac: $93
	nop                                              ; $76ad: $00
	inc bc                                           ; $76ae: $03
	rlca                                             ; $76af: $07
	rra                                              ; $76b0: $1f
	rra                                              ; $76b1: $1f
	dec a                                            ; $76b2: $3d
	ld e, b                                          ; $76b3: $58
	ldh a, [$b8]                                     ; $76b4: $f0 $b8
	cp a                                             ; $76b6: $bf
	cp a                                             ; $76b7: $bf
	rrca                                             ; $76b8: $0f
	ld a, d                                          ; $76b9: $7a
	call nc, $147e                                   ; $76ba: $d4 $7e $14
	sbc l                                            ; $76bd: $9d
	rst SubAFromDE                                          ; $76be: $df
	push de                                          ; $76bf: $d5
	ld [hl], l                                       ; $76c0: $75
	ld c, c                                          ; $76c1: $49
	sbc c                                            ; $76c2: $99
	ldh a, [$e0]                                     ; $76c3: $f0 $e0
	ldh [$80], a                                     ; $76c5: $e0 $80
	ei                                               ; $76c7: $fb
	pop af                                           ; $76c8: $f1
	ld l, h                                          ; $76c9: $6c
	cp e                                             ; $76ca: $bb
	sbc b                                            ; $76cb: $98
	cpl                                              ; $76cc: $2f
	adc e                                            ; $76cd: $8b
	and a                                            ; $76ce: $a7
	ld [hl], e                                       ; $76cf: $73
	rst SubAFromDE                                          ; $76d0: $df
	inc a                                            ; $76d1: $3c
	ldh a, [$62]                                     ; $76d2: $f0 $62
	nop                                              ; $76d4: $00
	ld a, [hl]                                       ; $76d5: $7e
	jr nz, jr_051_7757                               ; $76d6: $20 $7f

	ldh [c], a                                       ; $76d8: $e2
	sbc c                                            ; $76d9: $99
	add b                                            ; $76da: $80
	inc bc                                           ; $76db: $03
	inc c                                            ; $76dc: $0c
	ld [hl], a                                       ; $76dd: $77
	db $fc                                           ; $76de: $fc
	ld sp, hl                                        ; $76df: $f9
	halt                                             ; $76e0: $76
	ret nc                                           ; $76e1: $d0

	ld a, a                                          ; $76e2: $7f
	add sp, $7f                                      ; $76e3: $e8 $7f
	adc e                                            ; $76e5: $8b
	sbc l                                            ; $76e6: $9d
	inc bc                                           ; $76e7: $03
	inc e                                            ; $76e8: $1c
	ld a, d                                          ; $76e9: $7a
	rst SubAFromHL                                          ; $76ea: $d7
	sbc e                                            ; $76eb: $9b
	rst SubAFromBC                                          ; $76ec: $e7
	ld a, a                                          ; $76ed: $7f
	rst $38                                          ; $76ee: $ff
	db $fc                                           ; $76ef: $fc
	ld a, d                                          ; $76f0: $7a
	ret                                              ; $76f1: $c9


	sub l                                            ; $76f2: $95
	nop                                              ; $76f3: $00
	jr jr_051_770f                                   ; $76f4: $18 $19

	pop hl                                           ; $76f6: $e1
	add hl, de                                       ; $76f7: $19
	ld sp, hl                                        ; $76f8: $f9
	ld sp, hl                                        ; $76f9: $f9
	add hl, hl                                       ; $76fa: $29
	ld a, c                                          ; $76fb: $79
	ld sp, hl                                        ; $76fc: $f9
	ld [hl], a                                       ; $76fd: $77
	di                                               ; $76fe: $f3
	sbc e                                            ; $76ff: $9b
	nop                                              ; $7700: $00
	ret nc                                           ; $7701: $d0

	add b                                            ; $7702: $80
	nop                                              ; $7703: $00
	reti                                             ; $7704: $d9


	ld b, c                                          ; $7705: $41
	reti                                             ; $7706: $d9


	cp $97                                           ; $7707: $fe $97
	and c                                            ; $7709: $a1
	cp b                                             ; $770a: $b8
	add [hl]                                         ; $770b: $86
	add c                                            ; $770c: $81
	add c                                            ; $770d: $81
	add b                                            ; $770e: $80

jr_051_770f:
	add c                                            ; $770f: $81
	adc b                                            ; $7710: $88
	db $dd                                           ; $7711: $dd
	ld a, a                                          ; $7712: $7f
	sub [hl]                                         ; $7713: $96
	ld a, [hl]                                       ; $7714: $7e
	ld a, a                                          ; $7715: $7f
	ld a, [hl]                                       ; $7716: $7e
	ld [hl], a                                       ; $7717: $77
	or $7d                                           ; $7718: $f6 $7d
	dec e                                            ; $771a: $1d
	sbc a                                            ; $771b: $9f
	rra                                              ; $771c: $1f
	ld a, e                                          ; $771d: $7b
	cp $6a                                           ; $771e: $fe $6a
	ld [hl], h                                       ; $7720: $74
	sbc b                                            ; $7721: $98
	ld a, a                                          ; $7722: $7f
	adc b                                            ; $7723: $88
	ld d, c                                          ; $7724: $51
	xor b                                            ; $7725: $a8
	jp nc, $fe77                                     ; $7726: $d2 $77 $fe

	ld e, h                                          ; $7729: $5c
	jr nc, @+$01                                     ; $772a: $30 $ff

	sbc c                                            ; $772c: $99
	ld c, d                                          ; $772d: $4a
	add b                                            ; $772e: $80
	dec hl                                           ; $772f: $2b
	sub c                                            ; $7730: $91
	ei                                               ; $7731: $fb
	ld e, a                                          ; $7732: $5f
	pop bc                                           ; $7733: $c1
	rst $38                                          ; $7734: $ff
	reti                                             ; $7735: $d9


	rst $38                                          ; $7736: $ff
	add h                                            ; $7737: $84
	rst FarCall                                          ; $7738: $f7
	cp e                                             ; $7739: $bb
	db $eb                                           ; $773a: $eb
	cp $d7                                           ; $773b: $fe $d7
	db $dd                                           ; $773d: $dd
	db $ed                                           ; $773e: $ed
	xor e                                            ; $773f: $ab
	call z, $9ccc                                    ; $7740: $cc $cc $9c
	sbc c                                            ; $7743: $99
	cp c                                             ; $7744: $b9
	or e                                             ; $7745: $b3
	or e                                             ; $7746: $b3
	rst FarCall                                          ; $7747: $f7
	ld a, [$f552]                                    ; $7748: $fa $52 $f5
	push hl                                          ; $774b: $e5
	and [hl]                                         ; $774c: $a6
	adc h                                            ; $774d: $8c
	ld e, $3f                                        ; $774e: $1e $3f
	ld h, a                                          ; $7750: $67
	rst AddAOntoHL                                          ; $7751: $ef
	rst GetHLinHL                                          ; $7752: $cf
	ld a, b                                          ; $7753: $78
	ld e, l                                          ; $7754: $5d
	ld a, a                                          ; $7755: $7f
	ld a, [hl+]                                      ; $7756: $2a

jr_051_7757:
	sub [hl]                                         ; $7757: $96
	cp $ef                                           ; $7758: $fe $ef
	call c, $bffa                                    ; $775a: $dc $fa $bf
	sbc $7d                                          ; $775d: $de $7d
	ld d, h                                          ; $775f: $54
	ldh a, [$7b]                                     ; $7760: $f0 $7b
	add hl, sp                                       ; $7762: $39
	sbc e                                            ; $7763: $9b
	ret nz                                           ; $7764: $c0

	ld h, b                                          ; $7765: $60
	and b                                            ; $7766: $a0
	xor b                                            ; $7767: $a8
	ld a, [$189e]                                    ; $7768: $fa $9e $18
	ld h, a                                          ; $776b: $67
	ld hl, sp-$6d                                    ; $776c: $f8 $93
	ld b, $0f                                        ; $776e: $06 $0f
	inc de                                           ; $7770: $13
	dec bc                                           ; $7771: $0b
	dec b                                            ; $7772: $05
	add hl, bc                                       ; $7773: $09
	ld bc, $0906                                     ; $7774: $01 $06 $09
	nop                                              ; $7777: $00
	inc b                                            ; $7778: $04
	inc b                                            ; $7779: $04
	sbc $02                                          ; $777a: $de $02
	sub h                                            ; $777c: $94
	ld bc, $7efa                                     ; $777d: $01 $fa $7e
	rst $38                                          ; $7780: $ff
	pop hl                                           ; $7781: $e1
	db $e3                                           ; $7782: $e3
	jp $8cc6                                         ; $7783: $c3 $c6 $8c


	db $fc                                           ; $7786: $fc
	rst $38                                          ; $7787: $ff
	sbc $01                                          ; $7788: $de $01
	ld a, c                                          ; $778a: $79
	inc bc                                           ; $778b: $03
	add a                                            ; $778c: $87
	jr z, jr_051_77ff                                ; $778d: $28 $70

	sub d                                            ; $778f: $92
	push af                                          ; $7790: $f5
	or c                                             ; $7791: $b1
	dec sp                                           ; $7792: $3b
	daa                                              ; $7793: $27
	ld a, [hl+]                                      ; $7794: $2a
	rra                                              ; $7795: $1f
	rst $38                                          ; $7796: $ff
	db $fd                                           ; $7797: $fd
	add hl, de                                       ; $7798: $19
	add hl, de                                       ; $7799: $19
	ld de, $3632                                     ; $779a: $11 $32 $36
	sub h                                            ; $779d: $94
	sub c                                            ; $779e: $91
	sub b                                            ; $779f: $90
	ldh a, [$d0]                                     ; $77a0: $f0 $d0
	ld d, b                                          ; $77a2: $50
	ld b, b                                          ; $77a3: $40
	ld h, b                                          ; $77a4: $60
	db $dd                                           ; $77a5: $dd
	ret nc                                           ; $77a6: $d0

	sbc $70                                          ; $77a7: $de $70
	add b                                            ; $77a9: $80

jr_051_77aa:
	jr nc, jr_051_77aa                               ; $77aa: $30 $fe

	ldh a, [rAUD4LEN]                                ; $77ac: $f0 $20
	ld d, c                                          ; $77ae: $51
	rrca                                             ; $77af: $0f
	ld l, $03                                        ; $77b0: $2e $03
	nop                                              ; $77b2: $00
	ld a, a                                          ; $77b3: $7f
	ccf                                              ; $77b4: $3f
	ld e, a                                          ; $77b5: $5f
	ld c, $10                                        ; $77b6: $0e $10
	rlca                                             ; $77b8: $07
	rlca                                             ; $77b9: $07
	inc c                                            ; $77ba: $0c
	inc bc                                           ; $77bb: $03
	rrca                                             ; $77bc: $0f
	ld a, b                                          ; $77bd: $78
	jp $3a0c                                         ; $77be: $c3 $0c $3a


	cp d                                             ; $77c1: $ba
	ei                                               ; $77c2: $fb
	db $fc                                           ; $77c3: $fc
	ldh a, [hDisp0_OBP1]                                     ; $77c4: $f0 $87
	inc a                                            ; $77c6: $3c
	di                                               ; $77c7: $f3
	rst JumpTable                                          ; $77c8: $c7
	sbc d                                            ; $77c9: $9a
	rst JumpTable                                          ; $77ca: $c7
	call nz, $11df                                   ; $77cb: $c4 $df $11
	ld [hl], e                                       ; $77ce: $73
	sbc $bf                                          ; $77cf: $de $bf
	sub b                                            ; $77d1: $90
	ld a, b                                          ; $77d2: $78
	ret nz                                           ; $77d3: $c0

	nop                                              ; $77d4: $00
	xor $8c                                          ; $77d5: $ee $8c
	ld b, b                                          ; $77d7: $40
	ret nz                                           ; $77d8: $c0

Call_051_77d9:
	ret nz                                           ; $77d9: $c0

	add a                                            ; $77da: $87
	ccf                                              ; $77db: $3f
	rlca                                             ; $77dc: $07
	rra                                              ; $77dd: $1f
	ld a, a                                          ; $77de: $7f
	ld a, h                                          ; $77df: $7c
	ldh [$7a], a                                     ; $77e0: $e0 $7a
	cp l                                             ; $77e2: $bd
	sbc d                                            ; $77e3: $9a
	ld a, b                                          ; $77e4: $78
	ld h, b                                          ; $77e5: $60
	nop                                              ; $77e6: $00
	inc bc                                           ; $77e7: $03
	rra                                              ; $77e8: $1f
	ld a, d                                          ; $77e9: $7a
	cp l                                             ; $77ea: $bd
	sub e                                            ; $77eb: $93
	ld [hl], d                                       ; $77ec: $72
	ld hl, sp-$80                                    ; $77ed: $f8 $80
	rlca                                             ; $77ef: $07
	ld h, c                                          ; $77f0: $61
	sbc c                                            ; $77f1: $99
	ld a, c                                          ; $77f2: $79
	sbc c                                            ; $77f3: $99
	add c                                            ; $77f4: $81
	rlca                                             ; $77f5: $07
	ld a, a                                          ; $77f6: $7f
	ld hl, sp+$7a                                    ; $77f7: $f8 $7a
	cpl                                              ; $77f9: $2f
	sbc [hl]                                         ; $77fa: $9e
	ld h, b                                          ; $77fb: $60
	ld b, [hl]                                       ; $77fc: $46
	ret nz                                           ; $77fd: $c0

	sbc e                                            ; $77fe: $9b

jr_051_77ff:
	sub l                                            ; $77ff: $95
	sub h                                            ; $7800: $94
	adc c                                            ; $7801: $89
	add b                                            ; $7802: $80
	ld a, d                                          ; $7803: $7a
	ret nz                                           ; $7804: $c0

	sbc e                                            ; $7805: $9b
	add b                                            ; $7806: $80
	ld h, d                                          ; $7807: $62
	ld h, e                                          ; $7808: $63
	halt                                             ; $7809: $76
	halt                                             ; $780a: $76
	ret nz                                           ; $780b: $c0

	sbc [hl]                                         ; $780c: $9e
	ld a, a                                          ; $780d: $7f
	halt                                             ; $780e: $76
	call nz, $c072                                   ; $780f: $c4 $72 $c0
	ld a, d                                          ; $7812: $7a
	call nz, $fe73                                   ; $7813: $c4 $73 $fe
	jp nc, $9eff                                     ; $7816: $d2 $ff $9e

	xor l                                            ; $7819: $ad
	ld [bc], a                                       ; $781a: $02
	adc $d3                                          ; $781b: $ce $d3
	rst $38                                          ; $781d: $ff
	sbc d                                            ; $781e: $9a
	ld l, e                                          ; $781f: $6b
	ld b, e                                          ; $7820: $43
	ld b, e                                          ; $7821: $43
	ld b, a                                          ; $7822: $47
	ld d, a                                          ; $7823: $57
	sbc $d7                                          ; $7824: $de $d7
	ld l, [hl]                                       ; $7826: $6e
	ld [bc], a                                       ; $7827: $02
	sbc $ff                                          ; $7828: $de $ff
	sbc b                                            ; $782a: $98
	rst SubAFromDE                                          ; $782b: $df
	sbc a                                            ; $782c: $9f
	cp e                                             ; $782d: $bb
	dec sp                                           ; $782e: $3b
	add hl, sp                                       ; $782f: $39
	add hl, sp                                       ; $7830: $39
	ld [hl], b                                       ; $7831: $70
	sbc $e0                                          ; $7832: $de $e0
	rst SubAFromDE                                          ; $7834: $df
	call nz, $c6df                                   ; $7835: $c4 $df $c6
	add d                                            ; $7838: $82
	adc a                                            ; $7839: $8f
	cp a                                             ; $783a: $bf
	ld [hl], l                                       ; $783b: $75
	and $dd                                          ; $783c: $e6 $dd
	cp e                                             ; $783e: $bb
	ei                                               ; $783f: $fb
	rst SubAFromBC                                          ; $7840: $e7
	rst SubAFromBC                                          ; $7841: $e7
	ret nc                                           ; $7842: $d0

	ret c                                            ; $7843: $d8

	ld e, b                                          ; $7844: $58
	ld l, b                                          ; $7845: $68
	ld l, l                                          ; $7846: $6d
	cpl                                              ; $7847: $2f
	ccf                                              ; $7848: $3f
	ccf                                              ; $7849: $3f
	ld h, h                                          ; $784a: $64
	ld h, h                                          ; $784b: $64
	call nz, $8fc9                                   ; $784c: $c4 $c9 $8f
	sbc a                                            ; $784f: $9f
	cp a                                             ; $7850: $bf
	rst $38                                          ; $7851: $ff
	inc a                                            ; $7852: $3c
	ld a, h                                          ; $7853: $7c
	ld a, h                                          ; $7854: $7c
	ld hl, sp+$71                                    ; $7855: $f8 $71
	ld b, b                                          ; $7857: $40
	sbc c                                            ; $7858: $99
	ld bc, $7c0b                                     ; $7859: $01 $0b $7c
	add b                                            ; $785c: $80
	inc bc                                           ; $785d: $03
	ld e, $7a                                        ; $785e: $1e $7a
	ld c, b                                          ; $7860: $48
	ld [hl], h                                       ; $7861: $74
	db $dd                                           ; $7862: $dd
	ld a, [hl]                                       ; $7863: $7e
	jp z, $9896                                      ; $7864: $ca $96 $98

	ldh [rAUD1SWEEP], a                              ; $7867: $e0 $10
	db $10                                           ; $7869: $10
	ld h, b                                          ; $786a: $60
	add b                                            ; $786b: $80
	ld e, c                                          ; $786c: $59
	and $00                                          ; $786d: $e6 $00
	sbc $f0                                          ; $786f: $de $f0
	ld a, [hl]                                       ; $7871: $7e
	adc [hl]                                         ; $7872: $8e
	add h                                            ; $7873: $84
	inc a                                            ; $7874: $3c
	db $fd                                           ; $7875: $fd
	ld [hl+], a                                      ; $7876: $22
	ld l, d                                          ; $7877: $6a
	ld e, d                                          ; $7878: $5a
	add sp, $48                                      ; $7879: $e8 $48
	adc b                                            ; $787b: $88
	add h                                            ; $787c: $84
	inc b                                            ; $787d: $04

jr_051_787e:
	ld a, $3e                                        ; $787e: $3e $3e
	ld a, h                                          ; $7880: $7c
	ld l, h                                          ; $7881: $6c
	call z, $848c                                    ; $7882: $cc $8c $84
	inc b                                            ; $7885: $04
	jr nz, jr_051_78a8                               ; $7886: $20 $20

	jr nc, jr_051_789a                               ; $7888: $30 $10

	db $10                                           ; $788a: $10
	ld [$0008], sp                                   ; $788b: $08 $08 $00
	jr nc, @+$7d                                     ; $788e: $30 $7b

	ld sp, hl                                        ; $7890: $f9
	ld [hl], a                                       ; $7891: $77
	ld hl, sp-$21                                    ; $7892: $f8 $df
	ld [bc], a                                       ; $7894: $02
	ld a, h                                          ; $7895: $7c
	add h                                            ; $7896: $84
	sbc c                                            ; $7897: $99
	inc b                                            ; $7898: $04
	nop                                              ; $7899: $00

jr_051_789a:
	add hl, hl                                       ; $789a: $29
	ld d, e                                          ; $789b: $53
	inc b                                            ; $789c: $04
	ld b, $7a                                        ; $789d: $06 $7a
	sub e                                            ; $789f: $93
	add d                                            ; $78a0: $82
	ld [$2110], sp                                   ; $78a1: $08 $10 $21
	xor $50                                          ; $78a4: $ee $50
	add hl, hl                                       ; $78a6: $29
	dec d                                            ; $78a7: $15

jr_051_78a8:
	ld a, e                                          ; $78a8: $7b
	rst AddAOntoHL                                          ; $78a9: $ef
	sub e                                            ; $78aa: $93
	rst $38                                          ; $78ab: $ff
	ld [hl], c                                       ; $78ac: $71
	ccf                                              ; $78ad: $3f
	ld e, $0e                                        ; $78ae: $1e $0e
	ld b, $73                                        ; $78b0: $06 $73
	rst $38                                          ; $78b2: $ff
	rrca                                             ; $78b3: $0f
	rlca                                             ; $78b4: $07
	jr c, jr_051_787e                                ; $78b5: $38 $c7

	dec a                                            ; $78b7: $3d
	ld sp, hl                                        ; $78b8: $f9
	add hl, sp                                       ; $78b9: $39
	ccf                                              ; $78ba: $3f
	ld a, [hl]                                       ; $78bb: $7e
	ld hl, sp-$40                                    ; $78bc: $f8 $c0
	cp $df                                           ; $78be: $fe $df
	ret nz                                           ; $78c0: $c0

	sbc h                                            ; $78c1: $9c
	add c                                            ; $78c2: $81
	rra                                              ; $78c3: $1f
	rst $38                                          ; $78c4: $ff
	sbc $7f                                          ; $78c5: $de $7f
	sbc h                                            ; $78c7: $9c
	ld a, h                                          ; $78c8: $7c
	ret nz                                           ; $78c9: $c0

	inc bc                                           ; $78ca: $03
	db $fc                                           ; $78cb: $fc
	adc [hl]                                         ; $78cc: $8e
	inc bc                                           ; $78cd: $03
	ccf                                              ; $78ce: $3f
	db $fc                                           ; $78cf: $fc
	sbc c                                            ; $78d0: $99
	sbc c                                            ; $78d1: $99
	sub d                                            ; $78d2: $92
	ldh a, [$80]                                     ; $78d3: $f0 $80
	rrca                                             ; $78d5: $0f
	ld [hl], c                                       ; $78d6: $71
	add c                                            ; $78d7: $81
	ld h, b                                          ; $78d8: $60
	ld h, b                                          ; $78d9: $60
	ld h, c                                          ; $78da: $61
	rrca                                             ; $78db: $0f
	ld a, a                                          ; $78dc: $7f
	ldh a, [$3d]                                     ; $78dd: $f0 $3d
	add b                                            ; $78df: $80
	sbc e                                            ; $78e0: $9b
	adc c                                            ; $78e1: $89
	sub h                                            ; $78e2: $94
	sub l                                            ; $78e3: $95
	adc b                                            ; $78e4: $88
	halt                                             ; $78e5: $76
	ret nz                                           ; $78e6: $c0

	sbc e                                            ; $78e7: $9b
	halt                                             ; $78e8: $76
	ld h, e                                          ; $78e9: $63
	ld h, d                                          ; $78ea: $62
	ld [hl], a                                       ; $78eb: $77
	ld [bc], a                                       ; $78ec: $02
	ret nz                                           ; $78ed: $c0

	adc $ff                                          ; $78ee: $ce $ff
	sub a                                            ; $78f0: $97
	cp e                                             ; $78f1: $bb
	rst $38                                          ; $78f2: $ff
	rst AddAOntoHL                                          ; $78f3: $ef
	ld e, l                                          ; $78f4: $5d
	rst $38                                          ; $78f5: $ff
	db $db                                           ; $78f6: $db
	scf                                              ; $78f7: $37
	db $eb                                           ; $78f8: $eb
	reti                                             ; $78f9: $d9


	rst $38                                          ; $78fa: $ff
	sub a                                            ; $78fb: $97
	cp a                                             ; $78fc: $bf
	rst FarCall                                          ; $78fd: $f7
	rst $38                                          ; $78fe: $ff

Call_051_78ff:
	ld e, e                                          ; $78ff: $5b
	cp $fb                                           ; $7900: $fe $fb
	ld l, a                                          ; $7902: $6f
	cp l                                             ; $7903: $bd
	reti                                             ; $7904: $d9


	rst $38                                          ; $7905: $ff
	add e                                            ; $7906: $83
	db $fc                                           ; $7907: $fc
	push af                                          ; $7908: $f5
	jp z, $9edd                                      ; $7909: $ca $dd $9e

	cp [hl]                                          ; $790c: $be
	ld a, $7d                                        ; $790d: $3e $7d
	rst $38                                          ; $790f: $ff
	cp $ff                                           ; $7910: $fe $ff
	rst SubAFromBC                                          ; $7912: $e7
	db $e3                                           ; $7913: $e3
	jp $83c3                                         ; $7914: $c3 $c3 $83


	ld [hl], b                                       ; $7917: $70
	ldh a, [$f3]                                     ; $7918: $f0 $f3
	sub l                                            ; $791a: $95
	adc d                                            ; $791b: $8a
	sub h                                            ; $791c: $94
	xor l                                            ; $791d: $ad
	ld e, h                                          ; $791e: $5c
	adc a                                            ; $791f: $8f
	rrca                                             ; $7920: $0f
	rrca                                             ; $7921: $0f
	ld l, [hl]                                       ; $7922: $6e
	ld [hl], h                                       ; $7923: $74
	and [hl]                                         ; $7924: $a6
	ld a, c                                          ; $7925: $79
	ld a, e                                          ; $7926: $7b
	ld a, a                                          ; $7927: $7f
	cp $7e                                           ; $7928: $fe $7e
	ret nc                                           ; $792a: $d0

	ld a, l                                          ; $792b: $7d
	pop hl                                           ; $792c: $e1
	sbc e                                            ; $792d: $9b
	ccf                                              ; $792e: $3f
	rst $38                                          ; $792f: $ff
	ccf                                              ; $7930: $3f
	rra                                              ; $7931: $1f
	sbc $ff                                          ; $7932: $de $ff
	rst SubAFromDE                                          ; $7934: $df
	cp $d3                                           ; $7935: $fe $d3
	rst $38                                          ; $7937: $ff
	ld a, b                                          ; $7938: $78
	ld a, $9b                                        ; $7939: $3e $9b
	db $fc                                           ; $793b: $fc
	ret nz                                           ; $793c: $c0

	rst AddAOntoHL                                          ; $793d: $ef
	ld hl, sp+$72                                    ; $793e: $f8 $72
	or h                                             ; $7940: $b4
	db $dd                                           ; $7941: $dd
	rst $38                                          ; $7942: $ff
	add a                                            ; $7943: $87
	dec b                                            ; $7944: $05
	ld e, $f5                                        ; $7945: $1e $f5
	dec hl                                           ; $7947: $2b
	ld [hl], $eb                                     ; $7948: $36 $eb
	ld a, a                                          ; $794a: $7f
	inc bc                                           ; $794b: $03
	cp $f8                                           ; $794c: $fe $f8
	ldh [$c0], a                                     ; $794e: $e0 $c0
	ld hl, sp-$04                                    ; $7950: $f8 $fc
	cp $ff                                           ; $7952: $fe $ff
	nop                                              ; $7954: $00
	ld b, b                                          ; $7955: $40
	xor d                                            ; $7956: $aa
	ld d, l                                          ; $7957: $55
	cp a                                             ; $7958: $bf
	rst $38                                          ; $7959: $ff
	ld e, e                                          ; $795a: $5b
	rra                                              ; $795b: $1f
	ei                                               ; $795c: $fb
	add b                                            ; $795d: $80
	cp $e0                                           ; $795e: $fe $e0
	inc bc                                           ; $7960: $03
	rra                                              ; $7961: $1f
	xor [hl]                                         ; $7962: $ae
	ld [hl], h                                       ; $7963: $74
	db $f4                                           ; $7964: $f4
	adc b                                            ; $7965: $88
	ld hl, $00ee                                     ; $7966: $21 $ee $00
	nop                                              ; $7969: $00
	ld bc, $0802                                     ; $796a: $01 $02 $08
	ld [hl], c                                       ; $796d: $71
	rst JumpTable                                          ; $796e: $c7
	inc e                                            ; $796f: $1c
	and e                                            ; $7970: $a3
	rla                                              ; $7971: $17
	inc l                                            ; $7972: $2c
	ld l, h                                          ; $7973: $6c
	ret nc                                           ; $7974: $d0

	ldh [$80], a                                     ; $7975: $e0 $80
	nop                                              ; $7977: $00
	ld b, [hl]                                       ; $7978: $46
	adc h                                            ; $7979: $8c
	jr jr_051_79ac                                   ; $797a: $18 $30

	ld h, b                                          ; $797c: $60
	ld a, c                                          ; $797d: $79
	cp a                                             ; $797e: $bf
	sbc h                                            ; $797f: $9c
	adc e                                            ; $7980: $8b
	dec b                                            ; $7981: $05
	dec b                                            ; $7982: $05
	sbc $3f                                          ; $7983: $de $3f
	rst SubAFromDE                                          ; $7985: $df
	rra                                              ; $7986: $1f
	sbc h                                            ; $7987: $9c
	rlca                                             ; $7988: $07
	inc bc                                           ; $7989: $03
	inc bc                                           ; $798a: $03
	call c, $8701                                    ; $798b: $dc $01 $87
	ldh a, [hLCDCIntHandlerIdx]                                     ; $798e: $f0 $81
	ld c, $71                                        ; $7990: $0e $71
	rst AddAOntoHL                                          ; $7992: $ef
	db $e3                                           ; $7993: $e3
	push hl                                          ; $7994: $e5
	rst $38                                          ; $7995: $ff
	rrca                                             ; $7996: $0f
	ld a, [hl]                                       ; $7997: $7e
	ldh a, [$80]                                     ; $7998: $f0 $80
	inc e                                            ; $799a: $1c
	ld [bc], a                                       ; $799b: $02
	ld bc, $3c01                                     ; $799c: $01 $01 $3c
	jp $f33f                                         ; $799f: $c3 $3f $f3


	ld h, e                                          ; $79a2: $63
	sub e                                            ; $79a3: $93
	ld de, $7acc                                     ; $79a4: $11 $cc $7a
	or c                                             ; $79a7: $b1
	sbc c                                            ; $79a8: $99
	inc c                                            ; $79a9: $0c
	db $fc                                           ; $79aa: $fc
	adc h                                            ; $79ab: $8c

jr_051_79ac:
	inc c                                            ; $79ac: $0c
	inc sp                                           ; $79ad: $33
	ld a, c                                          ; $79ae: $79
	sbc $99                                          ; $79af: $de $99
	sbc [hl]                                         ; $79b1: $9e
	sub c                                            ; $79b2: $91
	ld a, d                                          ; $79b3: $7a
	cp [hl]                                          ; $79b4: $be
	ld a, l                                          ; $79b5: $7d
	add [hl]                                         ; $79b6: $86
	sbc $60                                          ; $79b7: $de $60
	ld a, d                                          ; $79b9: $7a
	cp [hl]                                          ; $79ba: $be
	ld b, [hl]                                       ; $79bb: $46
	ret nz                                           ; $79bc: $c0

	ld a, h                                          ; $79bd: $7c
	ld b, [hl]                                       ; $79be: $46
	ld l, l                                          ; $79bf: $6d

Call_051_79c0:
	ld a, [hl]                                       ; $79c0: $7e
	ld a, h                                          ; $79c1: $7c
	ld b, [hl]                                       ; $79c2: $46
	ld l, l                                          ; $79c3: $6d
	ld a, [hl]                                       ; $79c4: $7e
	ld l, [hl]                                       ; $79c5: $6e
	jp nz, $079d                                     ; $79c6: $c2 $9d $07

	add b                                            ; $79c9: $80
	ld c, d                                          ; $79ca: $4a
	ret nz                                           ; $79cb: $c0

	ld [hl+], a                                      ; $79cc: $22
	cp b                                             ; $79cd: $b8
	sub a                                            ; $79ce: $97
	cp $9d                                           ; $79cf: $fe $9d
	ld [hl], a                                       ; $79d1: $77
	and [hl]                                         ; $79d2: $a6
	ld e, e                                          ; $79d3: $5b
	cp l                                             ; $79d4: $bd
	rst SubAFromHL                                          ; $79d5: $d7
	ld [hl], l                                       ; $79d6: $75
	reti                                             ; $79d7: $d9


	rst $38                                          ; $79d8: $ff
	adc e                                            ; $79d9: $8b
	ld sp, hl                                        ; $79da: $f9
	rst GetHLinHL                                          ; $79db: $cf
	cp [hl]                                          ; $79dc: $be
	sbc a                                            ; $79dd: $9f
	sbc a                                            ; $79de: $9f
	adc [hl]                                         ; $79df: $8e
	add e                                            ; $79e0: $83
	add b                                            ; $79e1: $80
	cp $f0                                           ; $79e2: $fe $f0
	pop bc                                           ; $79e4: $c1
	pop hl                                           ; $79e5: $e1
	pop hl                                           ; $79e6: $e1
	pop af                                           ; $79e7: $f1
	db $fc                                           ; $79e8: $fc
	rst $38                                          ; $79e9: $ff
	db $fd                                           ; $79ea: $fd
	ld sp, hl                                        ; $79eb: $f9
	or c                                             ; $79ec: $b1
	ld b, $7a                                        ; $79ed: $06 $7a
	add sp, -$72                                     ; $79ef: $e8 $8e
	sbc l                                            ; $79f1: $9d
	inc bc                                           ; $79f2: $03
	rlca                                             ; $79f3: $07

jr_051_79f4:
	rst GetHLinHL                                          ; $79f4: $cf
	rst $38                                          ; $79f5: $ff
	cp $f2                                           ; $79f6: $fe $f2
	ldh [c], a                                       ; $79f8: $e2
	ldh [c], a                                       ; $79f9: $e2
	sbc [hl]                                         ; $79fa: $9e
	ld e, $1e                                        ; $79fb: $1e $1e
	sbc [hl]                                         ; $79fd: $9e
	sbc [hl]                                         ; $79fe: $9e
	sbc h                                            ; $79ff: $9c
	cp h                                             ; $7a00: $bc
	inc a                                            ; $7a01: $3c
	db $db                                           ; $7a02: $db
	ldh [$df], a                                     ; $7a03: $e0 $df
	ret nz                                           ; $7a05: $c0

	ld a, [hl]                                       ; $7a06: $7e
	jp z, $5f97                                      ; $7a07: $ca $97 $5f

jr_051_7a0a:
	ccf                                              ; $7a0a: $3f
	cpl                                              ; $7a0b: $2f
	rla                                              ; $7a0c: $17
	dec bc                                           ; $7a0d: $0b
	dec b                                            ; $7a0e: $05
	ld a, a                                          ; $7a0f: $7f
	ld a, a                                          ; $7a10: $7f
	ld a, e                                          ; $7a11: $7b
	dec hl                                           ; $7a12: $2b
	ld a, l                                          ; $7a13: $7d
	ldh a, [c]                                       ; $7a14: $f2
	sbc [hl]                                         ; $7a15: $9e

Jump_051_7a16:
	inc bc                                           ; $7a16: $03
	halt                                             ; $7a17: $76
	adc l                                            ; $7a18: $8d
	sbc e                                            ; $7a19: $9b
	di                                               ; $7a1a: $f3
	adc $34                                          ; $7a1b: $ce $34
	call nz, $5161                                   ; $7a1d: $c4 $61 $51
	ld a, a                                          ; $7a20: $7f
	rst SubAFromDE                                          ; $7a21: $df
	sbc d                                            ; $7a22: $9a
	ld hl, sp-$41                                    ; $7a23: $f8 $bf
	ccf                                              ; $7a25: $3f
	ccf                                              ; $7a26: $3f
	jr c, jr_051_7a8c                                ; $7a27: $38 $63

	and b                                            ; $7a29: $a0
	rst SubAFromDE                                          ; $7a2a: $df
	db $fd                                           ; $7a2b: $fd
	sbc d                                            ; $7a2c: $9a
	dec a                                            ; $7a2d: $3d
	db $fc                                           ; $7a2e: $fc
	cp $fe                                           ; $7a2f: $fe $fe
	ld a, $d8                                        ; $7a31: $3e $d8
	rst $38                                          ; $7a33: $ff
	sub h                                            ; $7a34: $94
	db $f4                                           ; $7a35: $f4
	pop hl                                           ; $7a36: $e1
	pop bc                                           ; $7a37: $c1
	ld b, c                                          ; $7a38: $41
	add c                                            ; $7a39: $81
	add c                                            ; $7a3a: $81
	add l                                            ; $7a3b: $85
	rst $38                                          ; $7a3c: $ff
	dec bc                                           ; $7a3d: $0b
	ld a, [bc]                                       ; $7a3e: $0a
	ld a, [bc]                                       ; $7a3f: $0a
	sbc $8a                                          ; $7a40: $de $8a
	sub h                                            ; $7a42: $94
	ld a, [$08e4]                                    ; $7a43: $fa $e4 $08
	jr nc, jr_051_7a0a                               ; $7a46: $30 $c2

	add [hl]                                         ; $7a48: $86
	add [hl]                                         ; $7a49: $86
	ld c, $0a                                        ; $7a4a: $0e $0a
	ld hl, sp-$10                                    ; $7a4c: $f8 $f0
	ld [hl], l                                       ; $7a4e: $75
	xor a                                            ; $7a4f: $af
	sbc e                                            ; $7a50: $9b
	nop                                              ; $7a51: $00
	inc b                                            ; $7a52: $04
	ld [$de08], sp                                   ; $7a53: $08 $08 $de
	jr jr_051_79f4                                   ; $7a56: $18 $9c

	jr c, jr_051_7a93                                ; $7a58: $38 $39

	ld a, d                                          ; $7a5a: $7a
	ld a, [$0196]                                    ; $7a5b: $fa $96 $01
	rra                                              ; $7a5e: $1f
	rrca                                             ; $7a5f: $0f

jr_051_7a60:
	rrca                                             ; $7a60: $0f
	rlca                                             ; $7a61: $07
	rlca                                             ; $7a62: $07
	ld b, e                                          ; $7a63: $43
	dec h                                            ; $7a64: $25
	add e                                            ; $7a65: $83
	call c, $8001                                    ; $7a66: $dc $01 $80
	dec a                                            ; $7a69: $3d
	jp $fd3c                                         ; $7a6a: $c3 $3c $fd


	db $fd                                           ; $7a6d: $fd
	add c                                            ; $7a6e: $81
	add c                                            ; $7a6f: $81
	cp l                                             ; $7a70: $bd
	push bc                                          ; $7a71: $c5
	cp l                                             ; $7a72: $bd
	add l                                            ; $7a73: $85
	ld bc, $7f03                                     ; $7a74: $01 $03 $7f
	rst $38                                          ; $7a77: $ff
	jp $c383                                         ; $7a78: $c3 $83 $c3


	ei                                               ; $7a7b: $fb
	ret nz                                           ; $7a7c: $c0

	inc bc                                           ; $7a7d: $03
	inc a                                            ; $7a7e: $3c
	jp $fe3e                                         ; $7a7f: $c3 $3e $fe


	xor $c6                                          ; $7a82: $ee $c6
	ccf                                              ; $7a84: $3f
	db $fc                                           ; $7a85: $fc
	ret nz                                           ; $7a86: $c0

	nop                                              ; $7a87: $00
	rst SubAFromDE                                          ; $7a88: $df
	ld bc, $3999                                     ; $7a89: $01 $99 $39

jr_051_7a8c:
	ld a, c                                          ; $7a8c: $79
	ld [hl], c                                       ; $7a8d: $71
	add c                                            ; $7a8e: $81
	ld a, c                                          ; $7a8f: $79
	ld sp, hl                                        ; $7a90: $f9
	sbc $29                                          ; $7a91: $de $29

jr_051_7a93:
	sbc [hl]                                         ; $7a93: $9e
	ld sp, $857a                                     ; $7a94: $31 $7a $85
	sbc [hl]                                         ; $7a97: $9e
	nop                                              ; $7a98: $00
	sbc $d0                                          ; $7a99: $de $d0
	sbc [hl]                                         ; $7a9b: $9e
	ret nz                                           ; $7a9c: $c0

	ld b, d                                          ; $7a9d: $42
	ret nz                                           ; $7a9e: $c0

	ld a, [hl]                                       ; $7a9f: $7e
	call nz, $be72                                   ; $7aa0: $c4 $72 $be
	ld a, c                                          ; $7aa3: $79
	add h                                            ; $7aa4: $84
	ld [hl], d                                       ; $7aa5: $72
	cp [hl]                                          ; $7aa6: $be
	adc b                                            ; $7aa7: $88
	nop                                              ; $7aa8: $00
	add b                                            ; $7aa9: $80
	jr @-$5f                                         ; $7aaa: $18 $9f

	rra                                              ; $7aac: $1f
	add a                                            ; $7aad: $87
	nop                                              ; $7aae: $00
	add b                                            ; $7aaf: $80
	rst $38                                          ; $7ab0: $ff
	ld h, a                                          ; $7ab1: $67
	ldh [$60], a                                     ; $7ab2: $e0 $60
	ldh [$78], a                                     ; $7ab4: $e0 $78
	rst $38                                          ; $7ab6: $ff
	ld h, a                                          ; $7ab7: $67
	rrca                                             ; $7ab8: $0f
	inc bc                                           ; $7ab9: $03
	inc bc                                           ; $7aba: $03
	add e                                            ; $7abb: $83
	db $e3                                           ; $7abc: $e3
	db $e3                                           ; $7abd: $e3
	ld [hl], e                                       ; $7abe: $73
	ld a, e                                          ; $7abf: $7b
	jr z, jr_051_7a60                                ; $7ac0: $28 $9e

	ld a, a                                          ; $7ac2: $7f
	sbc $0f                                          ; $7ac3: $de $0f
	sbc [hl]                                         ; $7ac5: $9e
	adc a                                            ; $7ac6: $8f
	ret nc                                           ; $7ac7: $d0

	rst $38                                          ; $7ac8: $ff
	sub a                                            ; $7ac9: $97
	ld c, l                                          ; $7aca: $4d
	cp e                                             ; $7acb: $bb
	ld c, l                                          ; $7acc: $4d
	scf                                              ; $7acd: $37
	sbc a                                            ; $7ace: $9f
	inc sp                                           ; $7acf: $33

Call_051_7ad0:
	ld b, l                                          ; $7ad0: $45
	dec bc                                           ; $7ad1: $0b
	reti                                             ; $7ad2: $d9


	rst $38                                          ; $7ad3: $ff
	add b                                            ; $7ad4: $80
	add c                                            ; $7ad5: $81
	rst $38                                          ; $7ad6: $ff
	adc a                                            ; $7ad7: $8f
	cp e                                             ; $7ad8: $bb
	adc a                                            ; $7ad9: $8f
	ld a, a                                          ; $7ada: $7f
	ld a, a                                          ; $7adb: $7f
	cp a                                             ; $7adc: $bf
	rst $38                                          ; $7add: $ff
	add e                                            ; $7ade: $83
	ld a, a                                          ; $7adf: $7f
	ld a, h                                          ; $7ae0: $7c
	ld [hl], b                                       ; $7ae1: $70
	add b                                            ; $7ae2: $80
	add b                                            ; $7ae3: $80
	ret nz                                           ; $7ae4: $c0

	cp l                                             ; $7ae5: $bd
	cp $bc                                           ; $7ae6: $fe $bc
	ld a, h                                          ; $7ae8: $7c
	ld a, b                                          ; $7ae9: $78
	ld e, b                                          ; $7aea: $58
	or b                                             ; $7aeb: $b0
	and c                                            ; $7aec: $a1
	jp Jump_051_4341                                 ; $7aed: $c3 $41 $43


	and e                                            ; $7af0: $a3
	and a                                            ; $7af1: $a7
	and a                                            ; $7af2: $a7
	ld e, a                                          ; $7af3: $5f
	sbc [hl]                                         ; $7af4: $9e
	ld e, [hl]                                       ; $7af5: $5e
	ld a, b                                          ; $7af6: $78
	ld l, c                                          ; $7af7: $69
	sub c                                            ; $7af8: $91
	ld a, b                                          ; $7af9: $78
	xor b                                            ; $7afa: $a8
	ld hl, sp-$2c                                    ; $7afb: $f8 $d4
	xor $c0                                          ; $7afd: $ee $c0
	ret nz                                           ; $7aff: $c0

	and b                                            ; $7b00: $a0
	ret nc                                           ; $7b01: $d0

	ld d, b                                          ; $7b02: $50
	jr z, jr_051_7b2d                                ; $7b03: $28 $28

	inc d                                            ; $7b05: $14
	ld [bc], a                                       ; $7b06: $02
	ld [hl], l                                       ; $7b07: $75
	ld sp, hl                                        ; $7b08: $f9
	rst SubAFromDE                                          ; $7b09: $df
	inc bc                                           ; $7b0a: $03
	sbc l                                            ; $7b0b: $9d
	rlca                                             ; $7b0c: $07
	ld bc, $87fa                                     ; $7b0d: $01 $fa $87
	sub h                                            ; $7b10: $94
	ld a, h                                          ; $7b11: $7c
	cp h                                             ; $7b12: $bc
	db $fc                                           ; $7b13: $fc
	ld sp, hl                                        ; $7b14: $f9
	ei                                               ; $7b15: $fb
	di                                               ; $7b16: $f3
	ei                                               ; $7b17: $fb
	rst $38                                          ; $7b18: $ff
	rst FarCall                                          ; $7b19: $f7
	ld [hl], a                                       ; $7b1a: $77
	rlca                                             ; $7b1b: $07
	ld b, $0c                                        ; $7b1c: $06 $0c
	inc e                                            ; $7b1e: $1c
	inc a                                            ; $7b1f: $3c
	rra                                              ; $7b20: $1f
	rrca                                             ; $7b21: $0f
	ld [$370b], sp                                   ; $7b22: $08 $0b $37
	jr nc, jr_051_7b5f                               ; $7b25: $30 $38

	ld a, l                                          ; $7b27: $7d
	db $dd                                           ; $7b28: $dd
	rst $38                                          ; $7b29: $ff
	sbc $cf                                          ; $7b2a: $de $cf
	sbc e                                            ; $7b2c: $9b

jr_051_7b2d:
	sub a                                            ; $7b2d: $97
	rst $38                                          ; $7b2e: $ff
	rst $38                                          ; $7b2f: $ff
	rra                                              ; $7b30: $1f
	sbc $ef                                          ; $7b31: $de $ef
	sbc l                                            ; $7b33: $9d
	rst SubAFromDE                                          ; $7b34: $df
	cp a                                             ; $7b35: $bf
	reti                                             ; $7b36: $d9


	rst $38                                          ; $7b37: $ff
	add [hl]                                         ; $7b38: $86
	ld a, l                                          ; $7b39: $7d
	ld [hl], c                                       ; $7b3a: $71
	dec hl                                           ; $7b3b: $2b
	cp e                                             ; $7b3c: $bb
	or l                                             ; $7b3d: $b5
	db $ed                                           ; $7b3e: $ed
	and $e1                                          ; $7b3f: $e6 $e1
	ldh [c], a                                       ; $7b41: $e2
	cp $fc                                           ; $7b42: $fe $fc
	db $ec                                           ; $7b44: $ec
	xor $e6                                          ; $7b45: $ee $e6
	db $e3                                           ; $7b47: $e3
	db $e3                                           ; $7b48: $e3
	ld a, [de]                                       ; $7b49: $1a
	ld d, $16                                        ; $7b4a: $16 $16
	cp d                                             ; $7b4c: $ba
	ld [$cfee], a                                    ; $7b4d: $ea $ee $cf
	ld d, h                                          ; $7b50: $54
	inc b                                            ; $7b51: $04
	sbc $0c                                          ; $7b52: $de $0c
	add d                                            ; $7b54: $82
	inc e                                            ; $7b55: $1c
	jr jr_051_7b90                                   ; $7b56: $18 $38

	cp e                                             ; $7b58: $bb
	ld a, h                                          ; $7b59: $7c
	ld a, b                                          ; $7b5a: $78
	ld [hl], l                                       ; $7b5b: $75
	ld [$a8d4], a                                    ; $7b5c: $ea $d4 $a8

jr_051_7b5f:
	ld d, c                                          ; $7b5f: $51
	and a                                            ; $7b60: $a7
	ld [bc], a                                       ; $7b61: $02
	dec b                                            ; $7b62: $05
	ld a, [bc]                                       ; $7b63: $0a
	inc d                                            ; $7b64: $14
	jr z, jr_051_7bb7                                ; $7b65: $28 $50

	and b                                            ; $7b67: $a0
	ld b, b                                          ; $7b68: $40
	inc h                                            ; $7b69: $24
	add c                                            ; $7b6a: $81
	inc b                                            ; $7b6b: $04
	ld c, $0f                                        ; $7b6c: $0e $0f
	rlca                                             ; $7b6e: $07
	add a                                            ; $7b6f: $87
	add e                                            ; $7b70: $83
	jp $81fd                                         ; $7b71: $c3 $fd $81


	ld [$0d09], sp                                   ; $7b74: $08 $09 $0d
	call $dddd                                       ; $7b77: $cd $dd $dd
	sbc l                                            ; $7b7a: $9d
	add c                                            ; $7b7b: $81
	add c                                            ; $7b7c: $81
	dec e                                            ; $7b7d: $1d
	ld a, a                                          ; $7b7e: $7f
	di                                               ; $7b7f: $f3

Call_051_7b80:
	and e                                            ; $7b80: $a3
	and e                                            ; $7b81: $a3
	db $e3                                           ; $7b82: $e3
	rst $38                                          ; $7b83: $ff
	rst $38                                          ; $7b84: $ff
	db $e3                                           ; $7b85: $e3
	add e                                            ; $7b86: $83
	adc $ff                                          ; $7b87: $ce $ff
	ldh a, [rP1]                                     ; $7b89: $f0 $00
	ld a, a                                          ; $7b8b: $7f
	add h                                            ; $7b8c: $84
	call nz, $7984                                   ; $7b8d: $c4 $84 $79

jr_051_7b90:
	nop                                              ; $7b90: $00
	rrca                                             ; $7b91: $0f
	ld [hl], l                                       ; $7b92: $75
	inc bc                                           ; $7b93: $03
	adc [hl]                                         ; $7b94: $8e
	nop                                              ; $7b95: $00
	ld a, b                                          ; $7b96: $78
	add b                                            ; $7b97: $80
	nop                                              ; $7b98: $00
	ld a, a                                          ; $7b99: $7f
	or c                                             ; $7b9a: $b1
	ld d, c                                          ; $7b9b: $51
	ld bc, $8721                                     ; $7b9c: $01 $21 $87
	ld a, a                                          ; $7b9f: $7f
	rst $38                                          ; $7ba0: $ff
	add b                                            ; $7ba1: $80

jr_051_7ba2:
	ret nz                                           ; $7ba2: $c0

	jr nz, jr_051_7bd5                               ; $7ba3: $20 $30

	jr nc, @+$3c                                     ; $7ba5: $30 $3a

	ret nz                                           ; $7ba7: $c0

	ld a, e                                          ; $7ba8: $7b
	cp $7c                                           ; $7ba9: $fe $7c
	ld a, [hl-]                                      ; $7bab: $3a
	ld [hl], h                                       ; $7bac: $74
	ld b, h                                          ; $7bad: $44
	ld a, a                                          ; $7bae: $7f
	cp $7c                                           ; $7baf: $fe $7c
	ld a, [hl-]                                      ; $7bb1: $3a
	ld a, d                                          ; $7bb2: $7a
	jp nz, $8279                                     ; $7bb3: $c2 $79 $82

	sbc l                                            ; $7bb6: $9d

jr_051_7bb7:
	nop                                              ; $7bb7: $00
	sbc b                                            ; $7bb8: $98
	ld a, d                                          ; $7bb9: $7a
	jp nz, $6092                                     ; $7bba: $c2 $92 $60

	ld hl, sp+$7f                                    ; $7bbd: $f8 $7f
	rst SubAFromBC                                          ; $7bbf: $e7
	ld h, b                                          ; $7bc0: $60
	inc bc                                           ; $7bc1: $03
	add a                                            ; $7bc2: $87
	rst SubAFromBC                                          ; $7bc3: $e7
	rst $38                                          ; $7bc4: $ff
	db $ec                                           ; $7bc5: $ec
	ld [hl], h                                       ; $7bc6: $74
	ld c, $1b                                        ; $7bc7: $0e $1b
	halt                                             ; $7bc9: $76
	jp nz, $2a70                                     ; $7bca: $c2 $70 $2a

	ld c, c                                          ; $7bcd: $49
	ld [hl], b                                       ; $7bce: $70
	sbc h                                            ; $7bcf: $9c
	and d                                            ; $7bd0: $a2
	add hl, bc                                       ; $7bd1: $09
	ld b, b                                          ; $7bd2: $40
	ld a, d                                          ; $7bd3: $7a
	ld e, b                                          ; $7bd4: $58

jr_051_7bd5:
	rst SubAFromDE                                          ; $7bd5: $df
	ld bc, $4060                                     ; $7bd6: $01 $60 $40
	sub [hl]                                         ; $7bd9: $96
	sbc a                                            ; $7bda: $9f
	adc a                                            ; $7bdb: $8f
	adc a                                            ; $7bdc: $8f
	rrca                                             ; $7bdd: $0f
	ld e, $7c                                        ; $7bde: $1e $7c

Call_051_7be0:
	jr c, jr_051_7ba2                                ; $7be0: $38 $c0

	ldh [$de], a                                     ; $7be2: $e0 $de
	ldh a, [hLCDCIntHandlerIdx]                                     ; $7be4: $f0 $81
	pop hl                                           ; $7be6: $e1
	add e                                            ; $7be7: $83

Call_051_7be8:
	rst JumpTable                                          ; $7be8: $c7
	reti                                             ; $7be9: $d9


	db $d3                                           ; $7bea: $d3
	rst GetHLinHL                                          ; $7beb: $cf
	adc c                                            ; $7bec: $89
	rlca                                             ; $7bed: $07
	inc bc                                           ; $7bee: $03
	dec b                                            ; $7bef: $05
	ld c, $2e                                        ; $7bf0: $0e $2e
	inc l                                            ; $7bf2: $2c
	inc [hl]                                         ; $7bf3: $34
	halt                                             ; $7bf4: $76
	ld a, [$fafd]                                    ; $7bf5: $fa $fd $fa
	pop af                                           ; $7bf8: $f1
	rst FarCall                                          ; $7bf9: $f7
	ei                                               ; $7bfa: $fb
	push af                                          ; $7bfb: $f5
	ldh [c], a                                       ; $7bfc: $e2
	pop hl                                           ; $7bfd: $e1
	di                                               ; $7bfe: $f3
	rst $38                                          ; $7bff: $ff
	rst $38                                          ; $7c00: $ff
	ld a, [bc]                                       ; $7c01: $0a
	dec b                                            ; $7c02: $05
	ld [bc], a                                       ; $7c03: $02
	ld a, d                                          ; $7c04: $7a
	call $8088                                       ; $7c05: $cd $88 $80
	ld b, b                                          ; $7c08: $40
	rra                                              ; $7c09: $1f
	rst $38                                          ; $7c0a: $ff
	ld a, a                                          ; $7c0b: $7f
	sbc $35                                          ; $7c0c: $de $35
	sbc $f6                                          ; $7c0e: $de $f6
	cp $00                                           ; $7c10: $fe $00
	nop                                              ; $7c12: $00
	ret nz                                           ; $7c13: $c0

	ld sp, $33cf                                     ; $7c14: $31 $cf $33
	rrca                                             ; $7c17: $0f
	rlca                                             ; $7c18: $07
	rst SubAFromBC                                          ; $7c19: $e7
	ld a, a                                          ; $7c1a: $7f
	cp $c1                                           ; $7c1b: $fe $c1
	ld e, [hl]                                       ; $7c1d: $5e
	sbc $be                                          ; $7c1e: $de $be
	sbc d                                            ; $7c20: $9a
	ld e, a                                          ; $7c21: $5f
	ret nz                                           ; $7c22: $c0

	rst $38                                          ; $7c23: $ff
	rst $38                                          ; $7c24: $ff
	pop hl                                           ; $7c25: $e1
	sbc $c1                                          ; $7c26: $de $c1
	add a                                            ; $7c28: $87
	db $fd                                           ; $7c29: $fd
	rst SubAFromDE                                          ; $7c2a: $df
	cp $f5                                           ; $7c2b: $fe $f5
	rrca                                             ; $7c2d: $0f
	ld a, [$f4ee]                                    ; $7c2e: $fa $ee $f4
	rst FarCall                                          ; $7c31: $f7
	scf                                              ; $7c32: $37
	rla                                              ; $7c33: $17
	cp $fc                                           ; $7c34: $fe $fc
	dec c                                            ; $7c36: $0d
	add hl, de                                       ; $7c37: $19
	dec de                                           ; $7c38: $1b
	cp a                                             ; $7c39: $bf
	cp a                                             ; $7c3a: $bf
	rst SubAFromDE                                          ; $7c3b: $df
	ld a, a                                          ; $7c3c: $7f
	ccf                                              ; $7c3d: $3f
	rrca                                             ; $7c3e: $0f
	rrca                                             ; $7c3f: $0f
	inc e                                            ; $7c40: $1c
	ld [hl], c                                       ; $7c41: $71
	inc b                                            ; $7c42: $04
	sub d                                            ; $7c43: $92
	db $fc                                           ; $7c44: $fc
	ld hl, sp-$0d                                    ; $7c45: $f8 $f3
	db $e3                                           ; $7c47: $e3

jr_051_7c48:
	add c                                            ; $7c48: $81
	pop bc                                           ; $7c49: $c1
	add c                                            ; $7c4a: $81
	ld bc, $c200                                     ; $7c4b: $01 $00 $c2
	dec [hl]                                         ; $7c4e: $35
	pop bc                                           ; $7c4f: $c1
	ret nz                                           ; $7c50: $c0

	ld a, c                                          ; $7c51: $79
	sbc $df                                          ; $7c52: $de $df
	ld bc, $c28b                                     ; $7c54: $01 $8b $c2
	inc de                                           ; $7c57: $13
	sbc h                                            ; $7c58: $9c
	ld d, c                                          ; $7c59: $51
	ld e, h                                          ; $7c5a: $5c
	ld a, b                                          ; $7c5b: $78
	cp b                                             ; $7c5c: $b8
	cp h                                             ; $7c5d: $bc
	ld a, [hl]                                       ; $7c5e: $7e
	db $fc                                           ; $7c5f: $fc
	di                                               ; $7c60: $f3
	cp $f3                                           ; $7c61: $fe $f3
	or a                                             ; $7c63: $b7
	ld e, a                                          ; $7c64: $5f
	ld c, a                                          ; $7c65: $4f
	add a                                            ; $7c66: $87
	ld c, a                                          ; $7c67: $4f
	sbc a                                            ; $7c68: $9f
	rst $38                                          ; $7c69: $ff
	sbc $3e                                          ; $7c6a: $de $3e
	rst SubAFromDE                                          ; $7c6c: $df
	ld a, h                                          ; $7c6d: $7c
	ld a, e                                          ; $7c6e: $7b
	ldh [c], a                                       ; $7c6f: $e2

Call_051_7c70:
	sbc $c0                                          ; $7c70: $de $c0
	rst SubAFromDE                                          ; $7c72: $df
	add b                                            ; $7c73: $80
	ld a, l                                          ; $7c74: $7d
	ld d, [hl]                                       ; $7c75: $56
	sbc c                                            ; $7c76: $99
	dec b                                            ; $7c77: $05
	dec bc                                           ; $7c78: $0b
	inc bc                                           ; $7c79: $03
	dec b                                            ; $7c7a: $05
	ld bc, $de02                                     ; $7c7b: $01 $02 $de
	rrca                                             ; $7c7e: $0f
	rst SubAFromDE                                          ; $7c7f: $df
	rlca                                             ; $7c80: $07
	ld a, b                                          ; $7c81: $78
	inc a                                            ; $7c82: $3c
	sbc l                                            ; $7c83: $9d
	ld a, a                                          ; $7c84: $7f
	ld h, a                                          ; $7c85: $67

jr_051_7c86:
	sbc $47                                          ; $7c86: $de $47
	sbc d                                            ; $7c88: $9a
	rst JumpTable                                          ; $7c89: $c7
	cp a                                             ; $7c8a: $bf
	db $e3                                           ; $7c8b: $e3
	add e                                            ; $7c8c: $83
	sbc e                                            ; $7c8d: $9b
	db $dd                                           ; $7c8e: $dd
	cp e                                             ; $7c8f: $bb
	adc c                                            ; $7c90: $89
	jp Jump_051_44ff                                 ; $7c91: $c3 $ff $44


	ld b, $07                                        ; $7c94: $06 $07
	inc bc                                           ; $7c96: $03
	ld b, e                                          ; $7c97: $43
	inc bc                                           ; $7c98: $03
	add e                                            ; $7c99: $83
	add e                                            ; $7c9a: $83
	add b                                            ; $7c9b: $80
	jp nz, $c7c3                                     ; $7c9c: $c2 $c3 $c7

	add a                                            ; $7c9f: $87
	add a                                            ; $7ca0: $87
	rlca                                             ; $7ca1: $07
	rlca                                             ; $7ca2: $07
	ld hl, $2321                                     ; $7ca3: $21 $21 $23
	jr z, jr_051_7c86                                ; $7ca6: $28 $de

	jr nz, jr_051_7c48                               ; $7ca8: $20 $9e

	ld a, $de                                        ; $7caa: $3e $de
	jr nc, @-$60                                     ; $7cac: $30 $9e

	scf                                              ; $7cae: $37
	sbc $3f                                          ; $7caf: $de $3f
	sbc [hl]                                         ; $7cb1: $9e
	ld hl, $c046                                     ; $7cb2: $21 $46 $c0
	sbc l                                            ; $7cb5: $9d
	sub l                                            ; $7cb6: $95
	adc b                                            ; $7cb7: $88
	ld l, [hl]                                       ; $7cb8: $6e
	cp [hl]                                          ; $7cb9: $be
	sbc l                                            ; $7cba: $9d
	ld h, d                                          ; $7cbb: $62
	ld [hl], a                                       ; $7cbc: $77
	ld l, [hl]                                       ; $7cbd: $6e
	cp [hl]                                          ; $7cbe: $be
	ld a, b                                          ; $7cbf: $78
	ld b, d                                          ; $7cc0: $42
	ld a, c                                          ; $7cc1: $79
	add d                                            ; $7cc2: $82
	sbc l                                            ; $7cc3: $9d
	jr jr_051_7ce5                                   ; $7cc4: $18 $1f

	ld l, l                                          ; $7cc6: $6d
	add d                                            ; $7cc7: $82
	rst SubAFromDE                                          ; $7cc8: $df
	ldh [hDisp0_OBP1], a                                     ; $7cc9: $e0 $87
	adc a                                            ; $7ccb: $8f
	ld [$dff2], a                                    ; $7ccc: $ea $f2 $df
	ld [hl], l                                       ; $7ccf: $75
	ccf                                              ; $7cd0: $3f
	dec l                                            ; $7cd1: $2d
	cp a                                             ; $7cd2: $bf
	rra                                              ; $7cd3: $1f
	rra                                              ; $7cd4: $1f
	ccf                                              ; $7cd5: $3f
	ccf                                              ; $7cd6: $3f
	cp a                                             ; $7cd7: $bf
	rst $38                                          ; $7cd8: $ff
	ld a, a                                          ; $7cd9: $7f
	ccf                                              ; $7cda: $3f
	ld a, a                                          ; $7cdb: $7f
	rst $38                                          ; $7cdc: $ff
	ccf                                              ; $7cdd: $3f
	ld a, a                                          ; $7cde: $7f
	cp a                                             ; $7cdf: $bf
	rra                                              ; $7ce0: $1f
	cp a                                             ; $7ce1: $bf
	rst SubAFromHL                                          ; $7ce2: $d7
	reti                                             ; $7ce3: $d9


	rst $38                                          ; $7ce4: $ff

jr_051_7ce5:
	ld b, b                                          ; $7ce5: $40
	nop                                              ; $7ce6: $00
	rst SubAFromDE                                          ; $7ce7: $df
	inc sp                                           ; $7ce8: $33
	sbc e                                            ; $7ce9: $9b
	dec [hl]                                         ; $7cea: $35
	ld [hl+], a                                      ; $7ceb: $22
	dec h                                            ; $7cec: $25
	ld d, e                                          ; $7ced: $53
	db $db                                           ; $7cee: $db
	inc sp                                           ; $7cef: $33
	sbc e                                            ; $7cf0: $9b
	ld d, d                                          ; $7cf1: $52
	ld [hl+], a                                      ; $7cf2: $22
	ld [hl+], a                                      ; $7cf3: $22
	dec h                                            ; $7cf4: $25
	ld c, e                                          ; $7cf5: $4b
	or $7f                                           ; $7cf6: $f6 $7f
	db $e3                                           ; $7cf8: $e3
	rst SubAFromDE                                          ; $7cf9: $df
	ld [hl+], a                                      ; $7cfa: $22
	ld a, e                                          ; $7cfb: $7b
	ldh [c], a                                       ; $7cfc: $e2
	sbc [hl]                                         ; $7cfd: $9e
	ld h, [hl]                                       ; $7cfe: $66

Call_051_7cff:
	ld [hl], e                                       ; $7cff: $73
	db $ed                                           ; $7d00: $ed
	ld a, a                                          ; $7d01: $7f
	or $9d                                           ; $7d02: $f6 $9d
	ld h, [hl]                                       ; $7d04: $66
	ld h, e                                          ; $7d05: $63
	ld a, e                                          ; $7d06: $7b
	or $9a                                           ; $7d07: $f6 $9a
	ld [hl+], a                                      ; $7d09: $22
	ld b, h                                          ; $7d0a: $44
	ld [hl+], a                                      ; $7d0b: $22
	ld [hl+], a                                      ; $7d0c: $22
	inc sp                                           ; $7d0d: $33
	ld [hl], e                                       ; $7d0e: $73
	or $9a                                           ; $7d0f: $f6 $9a
	inc h                                            ; $7d11: $24
	ld b, h                                          ; $7d12: $44
	ld b, h                                          ; $7d13: $44
	ld [hl+], a                                      ; $7d14: $22
	ld b, h                                          ; $7d15: $44
	ld [hl], e                                       ; $7d16: $73
	or $dc                                           ; $7d17: $f6 $dc
	ld b, h                                          ; $7d19: $44
	ld a, e                                          ; $7d1a: $7b
	or $9d                                           ; $7d1b: $f6 $9d
	ld h, e                                          ; $7d1d: $63
	inc [hl]                                         ; $7d1e: $34
	ld c, e                                          ; $7d1f: $4b
	or $9e                                           ; $7d20: $f6 $9e
	ld [hl], $53                                     ; $7d22: $36 $53
	or $eb                                           ; $7d24: $f6 $eb
	adc e                                            ; $7d26: $8b
	add [hl]                                         ; $7d27: $86
	add c                                            ; $7d28: $81
	ld b, c                                          ; $7d29: $41
	ld de, $4101                                     ; $7d2a: $11 $01 $41
	and c                                            ; $7d2d: $a1
	ld sp, $bf38                                     ; $7d2e: $31 $38 $bf
	rst $38                                          ; $7d31: $ff
	ld l, a                                          ; $7d32: $6f
	ccf                                              ; $7d33: $3f
	ld a, a                                          ; $7d34: $7f
	rst SubAFromDE                                          ; $7d35: $df
	adc a                                            ; $7d36: $8f
	rlca                                             ; $7d37: $07
	ld hl, sp-$04                                    ; $7d38: $f8 $fc
	cp h                                             ; $7d3a: $bc
	db $fc                                           ; $7d3b: $fc
	ret z                                            ; $7d3c: $c8

	ld b, b                                          ; $7d3d: $40
	ret nz                                           ; $7d3e: $c0

	ret nz                                           ; $7d3f: $c0

	rst JumpTable                                          ; $7d40: $c7
	sbc $c3                                          ; $7d41: $de $c3
	sbc [hl]                                         ; $7d43: $9e
	rst FarCall                                          ; $7d44: $f7
	sbc $ff                                          ; $7d45: $de $ff
	rst SubAFromDE                                          ; $7d47: $df
	push af                                          ; $7d48: $f5
	sbc c                                            ; $7d49: $99
	pop af                                           ; $7d4a: $f1
	ldh [c], a                                       ; $7d4b: $e2
	db $e4                                           ; $7d4c: $e4
	ldh [$f0], a                                     ; $7d4d: $e0 $f0
	jp hl                                            ; $7d4f: $e9


	ld sp, hl                                        ; $7d50: $f9
	sub a                                            ; $7d51: $97
	xor e                                            ; $7d52: $ab
	and e                                            ; $7d53: $a3
	inc hl                                           ; $7d54: $23
	ld [hl], e                                       ; $7d55: $73
	jp nz, $72f2                                     ; $7d56: $c2 $f2 $72

	cp d                                             ; $7d59: $ba
	db $fd                                           ; $7d5a: $fd
	db $dd                                           ; $7d5b: $dd
	ld bc, $409e                                     ; $7d5c: $01 $9e $40
	cp $9a                                           ; $7d5f: $fe $9a
	add b                                            ; $7d61: $80
	and b                                            ; $7d62: $a0
	and c                                            ; $7d63: $a1
	and e                                            ; $7d64: $a3
	cp a                                             ; $7d65: $bf
	sbc $ff                                          ; $7d66: $de $ff
	sub [hl]                                         ; $7d68: $96
	ld a, a                                          ; $7d69: $7f
	ld e, a                                          ; $7d6a: $5f
	ld e, [hl]                                       ; $7d6b: $5e
	ld e, h                                          ; $7d6c: $5c
	ld c, a                                          ; $7d6d: $4f
	ld c, $0a                                        ; $7d6e: $0e $0a
	ld [$fe08], sp                                   ; $7d70: $08 $08 $fe
	sbc e                                            ; $7d73: $9b
	or b                                             ; $7d74: $b0
	pop af                                           ; $7d75: $f1
	push af                                          ; $7d76: $f5
	rst FarCall                                          ; $7d77: $f7
	ld [hl], a                                       ; $7d78: $77
	ret nz                                           ; $7d79: $c0

	sub a                                            ; $7d7a: $97
	ld de, $2733                                     ; $7d7b: $11 $33 $27
	ld c, a                                          ; $7d7e: $4f
	ld c, a                                          ; $7d7f: $4f
	rst SubAFromDE                                          ; $7d80: $df
	ccf                                              ; $7d81: $3f
	ccf                                              ; $7d82: $3f
	jp nc, $9eff                                     ; $7d83: $d2 $ff $9e

	rst AddAOntoHL                                          ; $7d86: $ef
	reti                                             ; $7d87: $d9


	rst $38                                          ; $7d88: $ff
	sub a                                            ; $7d89: $97
	di                                               ; $7d8a: $f3
	db $ec                                           ; $7d8b: $ec
	pop af                                           ; $7d8c: $f1
	db $e3                                           ; $7d8d: $e3
	rst JumpTable                                          ; $7d8e: $c7
	set 2, a                                         ; $7d8f: $cb $d7
	sub a                                            ; $7d91: $97
	db $dd                                           ; $7d92: $dd
	rst $38                                          ; $7d93: $ff
	rst SubAFromDE                                          ; $7d94: $df
	cp $df                                           ; $7d95: $fe $df
	db $fc                                           ; $7d97: $fc
	adc l                                            ; $7d98: $8d
	rst $38                                          ; $7d99: $ff
	cp [hl]                                          ; $7d9a: $be
	ld a, a                                          ; $7d9b: $7f
	ret nc                                           ; $7d9c: $d0

	ld [hl], c                                       ; $7d9d: $71
	ld d, e                                          ; $7d9e: $53
	and a                                            ; $7d9f: $a7
	rst AddAOntoHL                                          ; $7da0: $ef
	rst $38                                          ; $7da1: $ff
	pop bc                                           ; $7da2: $c1
	cp a                                             ; $7da3: $bf
	rst $38                                          ; $7da4: $ff
	rst SubAFromDE                                          ; $7da5: $df
	cp $fc                                           ; $7da6: $fe $fc
	cp b                                             ; $7da8: $b8
	ld [hl], a                                       ; $7da9: $77
	rst $38                                          ; $7daa: $ff
	ld l, a                                          ; $7dab: $6f
	push bc                                          ; $7dac: $c5
	sbc e                                            ; $7dad: $9b
	adc [hl]                                         ; $7dae: $8e
	ld hl, sp-$20                                    ; $7daf: $f8 $e0
	ret nz                                           ; $7db1: $c0

	db $fd                                           ; $7db2: $fd
	call c, $9cff                                    ; $7db3: $dc $ff $9c
	db $fc                                           ; $7db6: $fc
	adc a                                            ; $7db7: $8f
	db $e3                                           ; $7db8: $e3
	ld sp, hl                                        ; $7db9: $f9
	call c, $9cff                                    ; $7dba: $dc $ff $9c
	rrca                                             ; $7dbd: $0f
	add b                                            ; $7dbe: $80
	ld hl, sp+$53                                    ; $7dbf: $f8 $53
	ldh a, [$9c]                                     ; $7dc1: $f0 $9c
	rst $38                                          ; $7dc3: $ff
	ld b, b                                          ; $7dc4: $40
	add hl, bc                                       ; $7dc5: $09
	ei                                               ; $7dc6: $fb
	add l                                            ; $7dc7: $85
	ccf                                              ; $7dc8: $3f
	rlca                                             ; $7dc9: $07
	ldh [$f8], a                                     ; $7dca: $e0 $f8
	cp $ff                                           ; $7dcc: $fe $ff
	add a                                            ; $7dce: $87
	ldh [$f8], a                                     ; $7dcf: $e0 $f8
	ld e, $1f                                        ; $7dd1: $1e $1f
	rlca                                             ; $7dd3: $07
	ld bc, $7800                                     ; $7dd4: $01 $00 $78
	rra                                              ; $7dd7: $1f
	rlca                                             ; $7dd8: $07
	pop hl                                           ; $7dd9: $e1
	ld hl, sp+$1e                                    ; $7dda: $f8 $1e
	rst JumpTable                                          ; $7ddc: $c7
	or c                                             ; $7ddd: $b1
	db $ec                                           ; $7dde: $ec
	ei                                               ; $7ddf: $fb
	ld e, $83                                        ; $7de0: $1e $83
	ld a, e                                          ; $7de2: $7b
	or $9e                                           ; $7de3: $f6 $9e
	ld a, [hl]                                       ; $7de5: $7e
	ld a, e                                          ; $7de6: $7b
	pop af                                           ; $7de7: $f1
	add b                                            ; $7de8: $80
	db $fc                                           ; $7de9: $fc
	ld a, c                                          ; $7dea: $79
	inc e                                            ; $7deb: $1c
	add a                                            ; $7dec: $87
	db $e3                                           ; $7ded: $e3
	ld sp, hl                                        ; $7dee: $f9
	inc [hl]                                         ; $7def: $34
	sbc d                                            ; $7df0: $9a
	ld b, l                                          ; $7df1: $45
	add [hl]                                         ; $7df2: $86
	db $e3                                           ; $7df3: $e3
	ld a, b                                          ; $7df4: $78
	inc e                                            ; $7df5: $1c
	ld b, $c3                                        ; $7df6: $06 $c3
	pop hl                                           ; $7df8: $e1
	ld hl, sp-$10                                    ; $7df9: $f8 $f0
	add sp, $75                                      ; $7dfb: $e8 $75

jr_051_7dfd:
	cp d                                             ; $7dfd: $ba
	db $dd                                           ; $7dfe: $dd
	rst AddAOntoHL                                          ; $7dff: $ef
	ld d, h                                          ; $7e00: $54
	ld a, [hl+]                                      ; $7e01: $2a
	jr nc, jr_051_7e1c                               ; $7e02: $30 $18

	adc l                                            ; $7e04: $8d
	ld b, a                                          ; $7e05: $47
	inc hl                                           ; $7e06: $23
	db $10                                           ; $7e07: $10
	add c                                            ; $7e08: $81
	adc b                                            ; $7e09: $88
	call nz, $9060                                   ; $7e0a: $c4 $60 $90
	ld [$0207], sp                                   ; $7e0d: $08 $07 $02
	add a                                            ; $7e10: $87
	ret z                                            ; $7e11: $c8

	ld [hl], b                                       ; $7e12: $70
	ld h, b                                          ; $7e13: $60
	ret nc                                           ; $7e14: $d0

	adc b                                            ; $7e15: $88
	rlca                                             ; $7e16: $07
	inc bc                                           ; $7e17: $03
	add a                                            ; $7e18: $87
	ld c, h                                          ; $7e19: $4c
	jr c, jr_051_7e3c                                ; $7e1a: $38 $20

jr_051_7e1c:
	ld b, b                                          ; $7e1c: $40
	add b                                            ; $7e1d: $80
	ld bc, $0402                                     ; $7e1e: $01 $02 $04
	adc b                                            ; $7e21: $88
	ld d, b                                          ; $7e22: $50
	jr nc, jr_051_7e65                               ; $7e23: $30 $40

	add b                                            ; $7e25: $80
	add c                                            ; $7e26: $81
	ld [hl], a                                       ; $7e27: $77
	ld hl, sp-$21                                    ; $7e28: $f8 $df
	jr c, @-$75                                      ; $7e2a: $38 $89

	sbc b                                            ; $7e2c: $98
	ret c                                            ; $7e2d: $d8

	ld c, b                                          ; $7e2e: $48
	inc c                                            ; $7e2f: $0c
	ld b, h                                          ; $7e30: $44
	call nz, $0707                                   ; $7e31: $c4 $07 $07
	and a                                            ; $7e34: $a7
	ld h, a                                          ; $7e35: $67
	scf                                              ; $7e36: $37
	inc sp                                           ; $7e37: $33
	ld a, e                                          ; $7e38: $7b
	cp e                                             ; $7e39: $bb
	ret nz                                           ; $7e3a: $c0

	add c                                            ; $7e3b: $81

jr_051_7e3c:
	add c                                            ; $7e3c: $81
	adc c                                            ; $7e3d: $89
	ld c, c                                          ; $7e3e: $49
	dec hl                                           ; $7e3f: $2b
	add hl, hl                                       ; $7e40: $29
	add hl, hl                                       ; $7e41: $29
	ld a, e                                          ; $7e42: $7b
	inc sp                                           ; $7e43: $33
	rst SubAFromDE                                          ; $7e44: $df
	or $9b                                           ; $7e45: $f6 $9b
	db $f4                                           ; $7e47: $f4
	or $f6                                           ; $7e48: $f6 $f6
	db $fd                                           ; $7e4a: $fd
	sbc $fb                                          ; $7e4b: $de $fb
	ld a, d                                          ; $7e4d: $7a
	rst SubAFromBC                                          ; $7e4e: $e7
	sbc [hl]                                         ; $7e4f: $9e
	dec de                                           ; $7e50: $1b
	ld sp, hl                                        ; $7e51: $f9
	sbc [hl]                                         ; $7e52: $9e
	cp d                                             ; $7e53: $ba
	ld a, e                                          ; $7e54: $7b
	ldh a, [c]                                       ; $7e55: $f2
	sbc d                                            ; $7e56: $9a
	di                                               ; $7e57: $f3
	jp nz, $82c2                                     ; $7e58: $c2 $c2 $82

	ld bc, $8ffa                                     ; $7e5b: $01 $fa $8f
	pop hl                                           ; $7e5e: $e1
	ld b, l                                          ; $7e5f: $45
	push bc                                          ; $7e60: $c5
	ret z                                            ; $7e61: $c8

	ret nz                                           ; $7e62: $c0

	ldh [$f4], a                                     ; $7e63: $e0 $f4

jr_051_7e65:
	or b                                             ; $7e65: $b0
	ld e, $ba                                        ; $7e66: $1e $ba
	ld a, [hl-]                                      ; $7e68: $3a
	scf                                              ; $7e69: $37
	ccf                                              ; $7e6a: $3f
	rra                                              ; $7e6b: $1f
	dec bc                                           ; $7e6c: $0b
	ld c, a                                          ; $7e6d: $4f
	cp $9a                                           ; $7e6e: $fe $9a
	jr nz, jr_051_7e72                               ; $7e70: $20 $00

jr_051_7e72:
	ld e, b                                          ; $7e72: $58
	jr nz, jr_051_7dfd                               ; $7e73: $20 $88

	reti                                             ; $7e75: $d9


	rst $38                                          ; $7e76: $ff
	rst SubAFromDE                                          ; $7e77: $df
	ld a, a                                          ; $7e78: $7f
	sbc c                                            ; $7e79: $99
	rst $38                                          ; $7e7a: $ff
	ld e, a                                          ; $7e7b: $5f
	ld a, a                                          ; $7e7c: $7f
	ld a, a                                          ; $7e7d: $7f
	ld d, a                                          ; $7e7e: $57
	ld a, [hl]                                       ; $7e7f: $7e
	reti                                             ; $7e80: $d9


	rst $38                                          ; $7e81: $ff
	sub a                                            ; $7e82: $97
	rst SubAFromBC                                          ; $7e83: $e7
	rst $38                                          ; $7e84: $ff
	ld sp, hl                                        ; $7e85: $f9
	di                                               ; $7e86: $f3
	or e                                             ; $7e87: $b3
	db $eb                                           ; $7e88: $eb
	add e                                            ; $7e89: $83
	inc bc                                           ; $7e8a: $03
	reti                                             ; $7e8b: $d9


	rst $38                                          ; $7e8c: $ff
	rst SubAFromDE                                          ; $7e8d: $df
	xor a                                            ; $7e8e: $af
	sub d                                            ; $7e8f: $92
	ld c, a                                          ; $7e90: $4f
	ld c, h                                          ; $7e91: $4c
	ld c, a                                          ; $7e92: $4f
	ld c, a                                          ; $7e93: $4f
	sbc a                                            ; $7e94: $9f
	sub [hl]                                         ; $7e95: $96
	ld hl, sp-$08                                    ; $7e96: $f8 $f8
	rst $38                                          ; $7e98: $ff
	ei                                               ; $7e99: $fb
	rst $38                                          ; $7e9a: $ff
	db $fd                                           ; $7e9b: $fd
	push af                                          ; $7e9c: $f5
	ld [hl], e                                       ; $7e9d: $73
	call $b67a                                       ; $7e9e: $cd $7a $b6
	sbc c                                            ; $7ea1: $99
	ld a, [$a0b0]                                    ; $7ea2: $fa $b0 $a0
	ret nz                                           ; $7ea5: $c0

	ret nz                                           ; $7ea6: $c0

	add b                                            ; $7ea7: $80
	ld l, [hl]                                       ; $7ea8: $6e
	ldh a, [$7e]                                     ; $7ea9: $f0 $7e
	dec l                                            ; $7eab: $2d
	sbc l                                            ; $7eac: $9d
	or $d9                                           ; $7ead: $f6 $d9
	halt                                             ; $7eaf: $76
	call nz, $8d7b                                   ; $7eb0: $c4 $7b $8d
	sub l                                            ; $7eb3: $95
	ld [bc], a                                       ; $7eb4: $02
	add hl, bc                                       ; $7eb5: $09
	ld hl, sp-$04                                    ; $7eb6: $f8 $fc
	ld h, b                                          ; $7eb8: $60
	sub b                                            ; $7eb9: $90
	ld c, b                                          ; $7eba: $48
	ld [bc], a                                       ; $7ebb: $02
	add hl, hl                                       ; $7ebc: $29
	sub d                                            ; $7ebd: $92
	db $fd                                           ; $7ebe: $fd
	sub d                                            ; $7ebf: $92
	add b                                            ; $7ec0: $80
	ld h, b                                          ; $7ec1: $60
	db $10                                           ; $7ec2: $10
	inc c                                            ; $7ec3: $0c
	rst GetHLinHL                                          ; $7ec4: $cf
	jr nz, @+$0d                                     ; $7ec5: $20 $0b

	jp nz, Jump_051_4698                             ; $7ec7: $c2 $98 $46

	ld hl, $3090                                     ; $7eca: $21 $90 $30
	ld a, d                                          ; $7ecd: $7a
	rst SubAFromDE                                          ; $7ece: $df
	add b                                            ; $7ecf: $80
	ld h, b                                          ; $7ed0: $60
	jr c, @+$20                                      ; $7ed1: $38 $1e

	rrca                                             ; $7ed3: $0f
	add d                                            ; $7ed4: $82
	db $fc                                           ; $7ed5: $fc
	rlca                                             ; $7ed6: $07
	ret nz                                           ; $7ed7: $c0

	and b                                            ; $7ed8: $a0
	ld e, h                                          ; $7ed9: $5c
	rst AddAOntoHL                                          ; $7eda: $ef
	dec sp                                           ; $7edb: $3b
	ld bc, $f800                                     ; $7edc: $01 $00 $f8
	rst $38                                          ; $7edf: $ff
	ld a, a                                          ; $7ee0: $7f
	ccf                                              ; $7ee1: $3f
	rra                                              ; $7ee2: $1f
	rst JumpTable                                          ; $7ee3: $c7
	jp $e8b0                                         ; $7ee4: $c3 $b0 $e8


	ld b, $01                                        ; $7ee7: $06 $01
	nop                                              ; $7ee9: $00
	add b                                            ; $7eea: $80
	rst $38                                          ; $7eeb: $ff
	db $fc                                           ; $7eec: $fc
	ld a, a                                          ; $7eed: $7f
	rra                                              ; $7eee: $1f
	call c, Call_051_7fff                            ; $7eef: $dc $ff $7f
	call c, $d77f                                    ; $7ef2: $dc $7f $d7
	sbc e                                            ; $7ef5: $9b
	db $e3                                           ; $7ef6: $e3
	ld a, a                                          ; $7ef7: $7f
	ld hl, $db10                                     ; $7ef8: $21 $10 $db
	rst $38                                          ; $7efb: $ff
	ld a, [hl]                                       ; $7efc: $7e
	and h                                            ; $7efd: $a4
	add l                                            ; $7efe: $85

Call_051_7eff:
Jump_051_7eff:
	ld [hl+], a                                      ; $7eff: $22
	ld de, $fcf8                                     ; $7f00: $11 $f8 $fc
	ld b, [hl]                                       ; $7f03: $46
	or e                                             ; $7f04: $b3
	push bc                                          ; $7f05: $c5
	ld hl, sp-$04                                    ; $7f06: $f8 $fc
	cp $ff                                           ; $7f08: $fe $ff
	rst GetHLinHL                                          ; $7f0a: $cf
	add e                                            ; $7f0b: $83
	pop bc                                           ; $7f0c: $c1
	ld a, b                                          ; $7f0d: $78
	inc h                                            ; $7f0e: $24
	add l                                            ; $7f0f: $85
	ld d, d                                          ; $7f10: $52
	xor c                                            ; $7f11: $a9
	ld d, l                                          ; $7f12: $55
	ld a, [hl+]                                      ; $7f13: $2a
	inc d                                            ; $7f14: $14
	adc d                                            ; $7f15: $8a
	push bc                                          ; $7f16: $c5
	ld h, d                                          ; $7f17: $62
	ld hl, $c37a                                     ; $7f18: $21 $7a $c3
	add b                                            ; $7f1b: $80
	ldh [c], a                                       ; $7f1c: $e2
	pop af                                           ; $7f1d: $f1
	ld hl, sp+$30                                    ; $7f1e: $f8 $30
	sbc b                                            ; $7f20: $98
	ld e, h                                          ; $7f21: $5c
	xor [hl]                                         ; $7f22: $ae
	rst SubAFromHL                                          ; $7f23: $d7
	ld e, e                                          ; $7f24: $5b
	ld l, l                                          ; $7f25: $6d
	ld d, h                                          ; $7f26: $54
	db $10                                           ; $7f27: $10
	ld [$4284], sp                                   ; $7f28: $08 $84 $42
	ld hl, $1224                                     ; $7f2b: $21 $24 $12
	xor e                                            ; $7f2e: $ab
	jr nz, jr_051_7f61                               ; $7f2f: $20 $30

	ld e, b                                          ; $7f31: $58
	adc b                                            ; $7f32: $88
	dec b                                            ; $7f33: $05
	add d                                            ; $7f34: $82
	ld b, e                                          ; $7f35: $43
	and l                                            ; $7f36: $a5
	jr nz, jr_051_7f69                               ; $7f37: $20 $30

	ld a, b                                          ; $7f39: $78
	ret z                                            ; $7f3a: $c8

	sub c                                            ; $7f3b: $91
	add l                                            ; $7f3c: $85
	add e                                            ; $7f3d: $83

jr_051_7f3e:
	jp $9465                                         ; $7f3e: $c3 $65 $94


	ld d, $10                                        ; $7f41: $16 $10
	db $10                                           ; $7f43: $10
	jr @-$66                                         ; $7f44: $18 $98

	ld e, b                                          ; $7f46: $58
	ld a, b                                          ; $7f47: $78
	dec sp                                           ; $7f48: $3b
	add hl, sp                                       ; $7f49: $39
	sbc $3f                                          ; $7f4a: $de $3f
	ld a, [hl]                                       ; $7f4c: $7e
	dec c                                            ; $7f4d: $0d
	sub e                                            ; $7f4e: $93
	ccf                                              ; $7f4f: $3f

Jump_051_7f50:
	cp c                                             ; $7f50: $b9
	ld sp, hl                                        ; $7f51: $f9
	cp $f6                                           ; $7f52: $fe $f6
	halt                                             ; $7f54: $76
	halt                                             ; $7f55: $76
	ld [hl], $36                                     ; $7f56: $36 $36
	or $f6                                           ; $7f58: $f6 $f6
	ldh a, [$dc]                                     ; $7f5a: $f0 $dc
	ld hl, sp-$62                                    ; $7f5c: $f8 $9e
	jr jr_051_7f3e                                   ; $7f5e: $18 $de

	adc b                                            ; $7f60: $88

jr_051_7f61:
	sbc h                                            ; $7f61: $9c
	sub d                                            ; $7f62: $92
	adc d                                            ; $7f63: $8a
	nop                                              ; $7f64: $00
	ld [hl], l                                       ; $7f65: $75
	sbc c                                            ; $7f66: $99
	db $fc                                           ; $7f67: $fc
	sbc b                                            ; $7f68: $98

jr_051_7f69:
	and d                                            ; $7f69: $a2
	nop                                              ; $7f6a: $00
	dec l                                            ; $7f6b: $2d
	inc h                                            ; $7f6c: $24
	ld b, [hl]                                       ; $7f6d: $46
	ld [hl+], a                                      ; $7f6e: $22
	dec b                                            ; $7f6f: $05
	ld hl, sp-$6e                                    ; $7f70: $f8 $92
	xor b                                            ; $7f72: $a8
	nop                                              ; $7f73: $00
	ld l, d                                          ; $7f74: $6a
	sub h                                            ; $7f75: $94
	cp d                                             ; $7f76: $ba
	cp h                                             ; $7f77: $bc
	inc a                                            ; $7f78: $3c
	db $10                                           ; $7f79: $10
	ld d, a                                          ; $7f7a: $57
	ld a, a                                          ; $7f7b: $7f
	dec d                                            ; $7f7c: $15
	dec hl                                           ; $7f7d: $2b
	dec b                                            ; $7f7e: $05
	sbc $03                                          ; $7f7f: $de $03
	sub [hl]                                         ; $7f81: $96
	ld [hl], d                                       ; $7f82: $72
	inc hl                                           ; $7f83: $23
	ei                                               ; $7f84: $fb
	ld e, e                                          ; $7f85: $5b
	ld a, e                                          ; $7f86: $7b
	cp e                                             ; $7f87: $bb
	ld a, a                                          ; $7f88: $7f
	ld a, a                                          ; $7f89: $7f
	db $fd                                           ; $7f8a: $fd
	jp c, $97fc                                      ; $7f8b: $da $fc $97

	cpl                                              ; $7f8e: $2f
	sub a                                            ; $7f8f: $97
	sbc a                                            ; $7f90: $9f
	adc a                                            ; $7f91: $8f
	ld h, $8e                                        ; $7f92: $26 $8e
	ld d, [hl]                                       ; $7f94: $56
	ld c, $7a                                        ; $7f95: $0e $7a
	or a                                             ; $7f97: $b7
	ld a, [hl]                                       ; $7f98: $7e

Call_051_7f99:
	add sp, $7a                                      ; $7f99: $e8 $7a
	and $9e                                          ; $7f9b: $e6 $9e
	ld bc, $03de                                     ; $7f9d: $01 $de $03
	sbc l                                            ; $7fa0: $9d
	ld bc, $6511                                     ; $7fa1: $01 $11 $65
	ret c                                            ; $7fa4: $d8

	rst SubAFromDE                                          ; $7fa5: $df
	rst $38                                          ; $7fa6: $ff
	sub l                                            ; $7fa7: $95
	sub [hl]                                         ; $7fa8: $96
	inc d                                            ; $7fa9: $14
	inc e                                            ; $7faa: $1c
	jr jr_051_7fbd                                   ; $7fab: $18 $10

	db $10                                           ; $7fad: $10
	and b                                            ; $7fae: $a0
	and b                                            ; $7faf: $a0
	rst $38                                          ; $7fb0: $ff
	rst $38                                          ; $7fb1: $ff
	ld [hl], l                                       ; $7fb2: $75
	ld d, d                                          ; $7fb3: $52
	rst SubAFromDE                                          ; $7fb4: $df
	rst $38                                          ; $7fb5: $ff
	sub e                                            ; $7fb6: $93
	ld a, d                                          ; $7fb7: $7a
	ld a, b                                          ; $7fb8: $78
	ld a, c                                          ; $7fb9: $79
	ld hl, sp-$06                                    ; $7fba: $f8 $fa
	ld sp, hl                                        ; $7fbc: $f9

jr_051_7fbd:
	ld hl, sp-$10                                    ; $7fbd: $f8 $f0
	add b                                            ; $7fbf: $80
	add d                                            ; $7fc0: $82
	add d                                            ; $7fc1: $82
	inc bc                                           ; $7fc2: $03
	ld a, d                                          ; $7fc3: $7a
	rst GetHLinHL                                          ; $7fc4: $cf
	add b                                            ; $7fc5: $80
	ld [$4069], sp                                   ; $7fc6: $08 $69 $40
	ld d, h                                          ; $7fc9: $54
	nop                                              ; $7fca: $00
	jr z, @+$06                                      ; $7fcb: $28 $04

	inc de                                           ; $7fcd: $13
	ld b, e                                          ; $7fce: $43
	inc b                                            ; $7fcf: $04
	ld h, $23                                        ; $7fd0: $26 $23
	inc sp                                           ; $7fd2: $33
	ld de, $0c19                                     ; $7fd3: $11 $19 $0c
	inc c                                            ; $7fd6: $0c
	ld c, b                                          ; $7fd7: $48
	or h                                             ; $7fd8: $b4
	ld c, [hl]                                       ; $7fd9: $4e
	db $e3                                           ; $7fda: $e3
	jr nc, jr_051_7ff1                               ; $7fdb: $30 $14

	add e                                            ; $7fdd: $83
	ret nz                                           ; $7fde: $c0

Jump_051_7fdf:
	add a                                            ; $7fdf: $87
	ld b, e                                          ; $7fe0: $43
	ld sp, $cf1c                                     ; $7fe1: $31 $1c $cf
	rst AddAOntoHL                                          ; $7fe4: $ef
	ld a, a                                          ; $7fe5: $7f
	xor [hl]                                         ; $7fe6: $ae
	sub a                                            ; $7fe7: $97
	db $e3                                           ; $7fe8: $e3
	ld e, $83                                        ; $7fe9: $1e $83
	ld b, b                                          ; $7feb: $40
	jr c, jr_051_7ffd                                ; $7fec: $38 $0f

	ld bc, $79e0                                     ; $7fee: $01 $e0 $79

jr_051_7ff1:
	or l                                             ; $7ff1: $b5
	call c, $96ff                                    ; $7ff2: $dc $ff $96
	dec b                                            ; $7ff5: $05
	ret nz                                           ; $7ff6: $c0

	ld a, b                                          ; $7ff7: $78
	ccf                                              ; $7ff8: $3f

Jump_051_7ff9:
	rrca                                             ; $7ff9: $0f
	add c                                            ; $7ffa: $81
	rst $38                                          ; $7ffb: $ff
	ld a, a                                          ; $7ffc: $7f

jr_051_7ffd:
	ei                                               ; $7ffd: $fb
	ld [hl], d                                       ; $7ffe: $72

Call_051_7fff:
	ldh [c], a                                       ; $7fff: $e2
