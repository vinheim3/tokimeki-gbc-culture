; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $01f", ROMX[$4000], BANK[$1f]

	add hl, hl                                       ; $4000: $29
	inc bc                                           ; $4001: $03
	db $fd                                           ; $4002: $fd
	rst SubAFromDE                                          ; $4003: $df
	dec a                                            ; $4004: $3d
	add l                                            ; $4005: $85
	inc de                                           ; $4006: $13
	rra                                              ; $4007: $1f
	ld sp, hl                                        ; $4008: $f9
	rst $38                                          ; $4009: $ff
	ld b, a                                          ; $400a: $47
	ld a, a                                          ; $400b: $7f
	ld [hl-], a                                      ; $400c: $32
	ccf                                              ; $400d: $3f
	dec h                                            ; $400e: $25
	ccf                                              ; $400f: $3f
	ld b, h                                          ; $4010: $44
	ld a, a                                          ; $4011: $7f
	ld c, h                                          ; $4012: $4c
	ld a, a                                          ; $4013: $7f
	ld c, [hl]                                       ; $4014: $4e
	ld a, e                                          ; $4015: $7b
	ccf                                              ; $4016: $3f
	jr c, @+$30                                      ; $4017: $38 $2e

	dec [hl]                                         ; $4019: $35
	ld a, $23                                        ; $401a: $3e $23
	ld e, $17                                        ; $401c: $1e $17

jr_01f_401e:
	rra                                              ; $401e: $1f
	jr jr_01f_401e                                   ; $401f: $18 $fd

	rst SubAFromDE                                          ; $4021: $df
	ret nz                                           ; $4022: $c0

	add b                                            ; $4023: $80
	inc [hl]                                         ; $4024: $34
	db $f4                                           ; $4025: $f4
	adc [hl]                                         ; $4026: $8e
	cp $fc                                           ; $4027: $fe $fc
	db $fc                                           ; $4029: $fc
	adc d                                            ; $402a: $8a
	cp $26                                           ; $402b: $fe $26
	cp $96                                           ; $402d: $fe $96
	cp $bd                                           ; $402f: $fe $bd
	rst $38                                          ; $4031: $ff
	cp $c6                                           ; $4032: $fe $c6
	ld a, [hl]                                       ; $4034: $7e
	add d                                            ; $4035: $82
	rst AddAOntoHL                                          ; $4036: $ef
	ld de, $39d7                                     ; $4037: $11 $d7 $39
	rst AddAOntoHL                                          ; $403a: $ef
	ld de, $827e                                     ; $403b: $11 $7e $82
	rla                                              ; $403e: $17
	dec e                                            ; $403f: $1d
	inc de                                           ; $4040: $13
	ld e, $09                                        ; $4041: $1e $09
	sbc l                                            ; $4043: $9d
	rrca                                             ; $4044: $0f
	inc b                                            ; $4045: $04
	sbc $07                                          ; $4046: $de $07
	ld a, a                                          ; $4048: $7f
	db $fc                                           ; $4049: $fc
	sub h                                            ; $404a: $94
	ld [$0e0f], sp                                   ; $404b: $08 $0f $0e
	rrca                                             ; $404e: $0f
	add hl, bc                                       ; $404f: $09
	rrca                                             ; $4050: $0f
	ld de, $111f                                     ; $4051: $11 $1f $11
	rra                                              ; $4054: $1f
	ld [de], a                                       ; $4055: $12
	sbc $1e                                          ; $4056: $de $1e
	add d                                            ; $4058: $82
	inc hl                                           ; $4059: $23
	ccf                                              ; $405a: $3f
	ld b, c                                          ; $405b: $41
	ld a, a                                          ; $405c: $7f
	rst $38                                          ; $405d: $ff
	rst $38                                          ; $405e: $ff
	cp $46                                           ; $405f: $fe $46
	pop bc                                           ; $4061: $c1
	ld a, a                                          ; $4062: $7f
	and d                                            ; $4063: $a2
	cp $3c                                           ; $4064: $fe $3c
	db $fc                                           ; $4066: $fc
	ret nc                                           ; $4067: $d0

	ldh a, [rAUD1SWEEP]                              ; $4068: $f0 $10
	ldh a, [hDisp0_WY]                                     ; $406a: $f0 $88
	ld hl, sp+$64                                    ; $406c: $f8 $64
	db $fc                                           ; $406e: $fc
	sbc b                                            ; $406f: $98
	ld hl, sp+$18                                    ; $4070: $f8 $18
	ld hl, sp+$18                                    ; $4072: $f8 $18
	add sp, -$70                                     ; $4074: $e8 $90
	sbc $f0                                          ; $4076: $de $f0
	ld a, a                                          ; $4078: $7f
	ldh a, [$9b]                                     ; $4079: $f0 $9b
	ld [$fcf8], sp                                   ; $407b: $08 $f8 $fc
	db $fc                                           ; $407e: $fc
	inc sp                                           ; $407f: $33
	add d                                            ; $4080: $82
	sub h                                            ; $4081: $94
	dec a                                            ; $4082: $3d
	dec l                                            ; $4083: $2d
	ld [hl], $3f                                     ; $4084: $36 $3f
	ld h, $1f                                        ; $4086: $26 $1f
	ld d, $0f                                        ; $4088: $16 $0f
	add hl, bc                                       ; $408a: $09
	rlca                                             ; $408b: $07
	inc b                                            ; $408c: $04
	ld b, a                                          ; $408d: $47
	add d                                            ; $408e: $82
	adc a                                            ; $408f: $8f
	push de                                          ; $4090: $d5
	rst $38                                          ; $4091: $ff
	db $fd                                           ; $4092: $fd
	sbc a                                            ; $4093: $9f
	sbc $22                                          ; $4094: $de $22
	or a                                             ; $4096: $b7
	ld c, c                                          ; $4097: $49
	xor e                                            ; $4098: $ab
	ld e, l                                          ; $4099: $5d
	or a                                             ; $409a: $b7
	ret                                              ; $409b: $c9


	sbc $62                                          ; $409c: $de $62
	db $fc                                           ; $409e: $fc
	sbc h                                            ; $409f: $9c
	ld [hl], a                                       ; $40a0: $77
	adc [hl]                                         ; $40a1: $8e
	sbc e                                            ; $40a2: $9b
	db $10                                           ; $40a3: $10
	rra                                              ; $40a4: $1f
	ld [$4f0f], sp                                   ; $40a5: $08 $0f $4f
	add b                                            ; $40a8: $80
	adc e                                            ; $40a9: $8b
	ld a, [hl-]                                      ; $40aa: $3a
	ld a, $46                                        ; $40ab: $3e $46
	ld a, [hl]                                       ; $40ad: $7e
	ld h, e                                          ; $40ae: $63
	ld a, a                                          ; $40af: $7f
	dec sp                                           ; $40b0: $3b
	ccf                                              ; $40b1: $3f
	rst $38                                          ; $40b2: $ff
	rst $38                                          ; $40b3: $ff
	db $fc                                           ; $40b4: $fc
	db $fc                                           ; $40b5: $fc
	ld [de], a                                       ; $40b6: $12
	cp $21                                           ; $40b7: $fe $21
	rst $38                                          ; $40b9: $ff
	ld d, d                                          ; $40ba: $52
	cp $9c                                           ; $40bb: $fe $9c
	db $fc                                           ; $40bd: $fc
	inc bc                                           ; $40be: $03
	add b                                            ; $40bf: $80
	inc bc                                           ; $40c0: $03
	add b                                            ; $40c1: $80
	ld l, e                                          ; $40c2: $6b
	add b                                            ; $40c3: $80
	adc a                                            ; $40c4: $8f
	cp a                                             ; $40c5: $bf
	ld a, [$be6e]                                    ; $40c6: $fa $6e $be
	ld [hl], d                                       ; $40c9: $72
	cp $62                                           ; $40ca: $fe $62
	db $fc                                           ; $40cc: $fc
	ld h, h                                          ; $40cd: $64
	ld hl, sp-$78                                    ; $40ce: $f8 $88
	ldh a, [rAUD1SWEEP]                              ; $40d0: $f0 $10
	ld c, $0f                                        ; $40d2: $0e $0f
	ld [$807b], sp                                   ; $40d4: $08 $7b $80
	sub e                                            ; $40d7: $93
	ret nc                                           ; $40d8: $d0

	rst SubAFromDE                                          ; $40d9: $df
	or $bf                                           ; $40da: $f6 $bf
	rst $38                                          ; $40dc: $ff
	sbc c                                            ; $40dd: $99
	rst $38                                          ; $40de: $ff

Call_01f_40df:
	add [hl]                                         ; $40df: $86
	rst $38                                          ; $40e0: $ff
	cp a                                             ; $40e1: $bf
	ret                                              ; $40e2: $c9


	rst GetHLinHL                                          ; $40e3: $cf
	ld e, a                                          ; $40e4: $5f

jr_01f_40e5:
	nop                                              ; $40e5: $00
	sbc [hl]                                         ; $40e6: $9e
	ld b, e                                          ; $40e7: $43
	ld a, e                                          ; $40e8: $7b
	nop                                              ; $40e9: $00
	adc l                                            ; $40ea: $8d
	jr c, jr_01f_40e5                                ; $40eb: $38 $f8

	adc b                                            ; $40ed: $88
	ld hl, sp+$04                                    ; $40ee: $f8 $04
	db $fc                                           ; $40f0: $fc
	add h                                            ; $40f1: $84
	db $fc                                           ; $40f2: $fc
	inc [hl]                                         ; $40f3: $34
	db $fc                                           ; $40f4: $fc
	ld hl, sp-$38                                    ; $40f5: $f8 $c8
	db $fc                                           ; $40f7: $fc
	inc [hl]                                         ; $40f8: $34
	ld hl, sp-$08                                    ; $40f9: $f8 $f8
	sub b                                            ; $40fb: $90
	ldh a, [rBGP]                                    ; $40fc: $f0 $47
	add b                                            ; $40fe: $80
	rst $38                                          ; $40ff: $ff
	rst SubAFromDE                                          ; $4100: $df
	rlca                                             ; $4101: $07
	add l                                            ; $4102: $85
	jr jr_01f_4124                                   ; $4103: $18 $1f

	daa                                              ; $4105: $27
	jr c, jr_01f_4157                                ; $4106: $38 $4f

	ld [hl], a                                       ; $4108: $77
	ld c, b                                          ; $4109: $48
	ld a, a                                          ; $410a: $7f
	sub l                                            ; $410b: $95
	rst $38                                          ; $410c: $ff
	push hl                                          ; $410d: $e5
	rst $38                                          ; $410e: $ff
	xor l                                            ; $410f: $ad
	cp d                                             ; $4110: $ba
	cpl                                              ; $4111: $2f
	ld [hl], $3d                                     ; $4112: $36 $3d
	ld l, $3f                                        ; $4114: $2e $3f
	ld h, $3f                                        ; $4116: $26 $3f
	ld [hl], $2f                                     ; $4118: $36 $2f
	add hl, sp                                       ; $411a: $39
	rlca                                             ; $411b: $07
	inc e                                            ; $411c: $1c
	db $fd                                           ; $411d: $fd
	rst SubAFromDE                                          ; $411e: $df
	ld a, b                                          ; $411f: $78
	ld a, a                                          ; $4120: $7f
	ret nz                                           ; $4121: $c0

	add a                                            ; $4122: $87
	ldh [c], a                                       ; $4123: $e2

jr_01f_4124:
	ld e, $f2                                        ; $4124: $1e $f2
	xor $19                                          ; $4126: $ee $19
	rst FarCall                                          ; $4128: $f7
	add hl, hl                                       ; $4129: $29
	rst $38                                          ; $412a: $ff
	dec h                                            ; $412b: $25
	rst $38                                          ; $412c: $ff
	or l                                             ; $412d: $b5
	rst SubAFromDE                                          ; $412e: $df
	ld sp, hl                                        ; $412f: $f9
	ld l, a                                          ; $4130: $6f
	cp l                                             ; $4131: $bd
	ld [hl], a                                       ; $4132: $77
	db $fd                                           ; $4133: $fd
	ld h, a                                          ; $4134: $67
	db $fd                                           ; $4135: $fd
	ld h, a                                          ; $4136: $67
	ld sp, hl                                        ; $4137: $f9
	adc a                                            ; $4138: $8f
	jp nc, $133e                                     ; $4139: $d2 $3e $13

	ret nz                                           ; $413c: $c0

	sbc h                                            ; $413d: $9c
	dec sp                                           ; $413e: $3b
	rlca                                             ; $413f: $07
	ld e, $13                                        ; $4140: $1e $13
	ret nz                                           ; $4142: $c0

	sbc h                                            ; $4143: $9c
	rrca                                             ; $4144: $0f
	jp nc, $33be                                     ; $4145: $d2 $be $33

	ret nz                                           ; $4148: $c0

	sbc d                                            ; $4149: $9a
	jr nc, jr_01f_418b                               ; $414a: $30 $3f

	jr nz, jr_01f_418d                               ; $414c: $20 $3f

	ld a, [hl+]                                      ; $414e: $2a
	dec de                                           ; $414f: $1b
	ret nz                                           ; $4150: $c0

	sbc d                                            ; $4151: $9a
	rrca                                             ; $4152: $0f
	db $fd                                           ; $4153: $fd
	rlca                                             ; $4154: $07
	db $fd                                           ; $4155: $fd
	ld d, a                                          ; $4156: $57

jr_01f_4157:
	ld [hl], a                                       ; $4157: $77
	ret nz                                           ; $4158: $c0

	sbc l                                            ; $4159: $9d
	ldh a, [c]                                       ; $415a: $f2
	sbc [hl]                                         ; $415b: $9e
	dec hl                                           ; $415c: $2b
	ret nz                                           ; $415d: $c0

	sbc [hl]                                         ; $415e: $9e
	inc h                                            ; $415f: $24
	ld a, e                                          ; $4160: $7b
	ret nz                                           ; $4161: $c0

	sbc d                                            ; $4162: $9a
	inc [hl]                                         ; $4163: $34
	cpl                                              ; $4164: $2f
	ld sp, $190f                                     ; $4165: $31 $0f $19
	dec hl                                           ; $4168: $2b
	ret nz                                           ; $4169: $c0

	sbc [hl]                                         ; $416a: $9e
	daa                                              ; $416b: $27
	ld a, e                                          ; $416c: $7b
	ret nz                                           ; $416d: $c0

	add b                                            ; $416e: $80
	daa                                              ; $416f: $27
	ld sp, hl                                        ; $4170: $f9
	adc a                                            ; $4171: $8f
	ldh [$9e], a                                     ; $4172: $e0 $9e
	ld b, $05                                        ; $4174: $06 $05
	dec bc                                           ; $4176: $0b
	inc c                                            ; $4177: $0c
	add hl, bc                                       ; $4178: $09
	ld c, $11                                        ; $4179: $0e $11
	ld e, $16                                        ; $417b: $1e $16
	rra                                              ; $417d: $1f
	rra                                              ; $417e: $1f
	add hl, de                                       ; $417f: $19
	ccf                                              ; $4180: $3f
	ld l, $18                                        ; $4181: $2e $18
	rra                                              ; $4183: $1f
	inc de                                           ; $4184: $13
	rra                                              ; $4185: $1f
	ccf                                              ; $4186: $3f
	dec a                                            ; $4187: $3d
	ccf                                              ; $4188: $3f
	daa                                              ; $4189: $27
	rra                                              ; $418a: $1f

jr_01f_418b:
	ld a, [de]                                       ; $418b: $1a
	rrca                                             ; $418c: $0f

jr_01f_418d:
	rrca                                             ; $418d: $0f
	sbc h                                            ; $418e: $9c
	ld [de], a                                       ; $418f: $12
	rra                                              ; $4190: $1f
	inc h                                            ; $4191: $24
	ld a, d                                          ; $4192: $7a
	ld b, b                                          ; $4193: $40
	add b                                            ; $4194: $80

jr_01f_4195:
	jr nc, @-$2e                                     ; $4195: $30 $d0

	ld l, b                                          ; $4197: $68
	sbc b                                            ; $4198: $98
	ret z                                            ; $4199: $c8

	jr c, jr_01f_41e0                                ; $419a: $38 $44

	cp h                                             ; $419c: $bc
	inc [hl]                                         ; $419d: $34
	db $fc                                           ; $419e: $fc
	ld [hl], h                                       ; $419f: $74
	call z, $38f8                                    ; $41a0: $cc $f8 $38

jr_01f_41a3:
	jr jr_01f_4195                                   ; $41a3: $18 $f0

	ret z                                            ; $41a5: $c8

	ld hl, sp-$08                                    ; $41a6: $f8 $f8
	jr c, @-$06                                      ; $41a8: $38 $f8

	ret z                                            ; $41aa: $c8

	ldh a, [rSVBK]                                   ; $41ab: $f0 $70
	sub b                                            ; $41ad: $90
	sub b                                            ; $41ae: $90
	ld d, b                                          ; $41af: $50
	ret nc                                           ; $41b0: $d0

	jr nc, jr_01f_41a3                               ; $41b1: $30 $f0

	db $fc                                           ; $41b3: $fc
	adc h                                            ; $41b4: $8c
	db $fc                                           ; $41b5: $fc
	rra                                              ; $41b6: $1f
	ld e, $0b                                        ; $41b7: $1e $0b
	ld c, $0b                                        ; $41b9: $0e $0b
	ld c, $13                                        ; $41bb: $0e $13
	ld e, $17                                        ; $41bd: $1e $17
	ld e, $1f                                        ; $41bf: $1e $1f
	ld a, [de]                                       ; $41c1: $1a
	rra                                              ; $41c2: $1f
	ld a, [de]                                       ; $41c3: $1a
	rla                                              ; $41c4: $17
	ld e, $27                                        ; $41c5: $1e $27
	ccf                                              ; $41c7: $3f
	ld c, a                                          ; $41c8: $4f
	ret nz                                           ; $41c9: $c0

	sub a                                            ; $41ca: $97
	ret c                                            ; $41cb: $d8

	cp b                                             ; $41cc: $b8
	ret z                                            ; $41cd: $c8

	ld hl, sp-$1c                                    ; $41ce: $f8 $e4
	cp h                                             ; $41d0: $bc
	db $e4                                           ; $41d1: $e4
	cp h                                             ; $41d2: $bc
	ld a, e                                          ; $41d3: $7b
	ret z                                            ; $41d4: $c8

	sbc d                                            ; $41d5: $9a
	ld hl, sp-$48                                    ; $41d6: $f8 $b8
	add sp, -$68                                     ; $41d8: $e8 $98
	ld hl, sp+$47                                    ; $41da: $f8 $47
	ret nz                                           ; $41dc: $c0

	ld h, a                                          ; $41dd: $67
	ld b, b                                          ; $41de: $40
	ld a, a                                          ; $41df: $7f

jr_01f_41e0:
	rrca                                             ; $41e0: $0f
	sbc l                                            ; $41e1: $9d
	ld b, b                                          ; $41e2: $40
	ld a, a                                          ; $41e3: $7f
	ld h, a                                          ; $41e4: $67
	ld b, b                                          ; $41e5: $40
	sub e                                            ; $41e6: $93
	ld e, a                                          ; $41e7: $5f
	halt                                             ; $41e8: $76
	ld e, l                                          ; $41e9: $5d
	ld l, [hl]                                       ; $41ea: $6e
	rra                                              ; $41eb: $1f
	ld h, $1f                                        ; $41ec: $26 $1f
	db $10                                           ; $41ee: $10
	rrca                                             ; $41ef: $0f
	add hl, bc                                       ; $41f0: $09
	dec b                                            ; $41f1: $05
	ld b, $fd                                        ; $41f2: $06 $fd
	rst SubAFromDE                                          ; $41f4: $df
	ld [hl], b                                       ; $41f5: $70
	sub a                                            ; $41f6: $97
	adc h                                            ; $41f7: $8c
	db $fc                                           ; $41f8: $fc
	ld [bc], a                                       ; $41f9: $02
	cp $02                                           ; $41fa: $fe $02
	cp $11                                           ; $41fc: $fe $11
	rst $38                                          ; $41fe: $ff
	ld l, a                                          ; $41ff: $6f
	ld b, b                                          ; $4200: $40
	sub d                                            ; $4201: $92
	rst $38                                          ; $4202: $ff
	ld l, a                                          ; $4203: $6f
	cp a                                             ; $4204: $bf
	ld [hl], a                                       ; $4205: $77
	cp $66                                           ; $4206: $fe $66
	db $fc                                           ; $4208: $fc
	inc c                                            ; $4209: $0c
	ld hl, sp-$68                                    ; $420a: $f8 $98
	or b                                             ; $420c: $b0
	ld [hl], b                                       ; $420d: $70
	dec de                                           ; $420e: $1b
	ld a, e                                          ; $420f: $7b
	add [hl]                                         ; $4210: $86
	sub [hl]                                         ; $4211: $96
	cpl                                              ; $4212: $2f
	ld a, [hl-]                                      ; $4213: $3a
	cpl                                              ; $4214: $2f
	dec sp                                           ; $4215: $3b
	rra                                              ; $4216: $1f
	dec e                                            ; $4217: $1d
	rra                                              ; $4218: $1f
	dec d                                            ; $4219: $15
	ld e, $6f                                        ; $421a: $1e $6f
	ld b, d                                          ; $421c: $42
	add l                                            ; $421d: $85
	scf                                              ; $421e: $37
	ld e, $1a                                        ; $421f: $1e $1a
	inc h                                            ; $4221: $24
	inc a                                            ; $4222: $3c
	ld b, h                                          ; $4223: $44
	ld a, h                                          ; $4224: $7c
	ld c, b                                          ; $4225: $48
	ld a, b                                          ; $4226: $78
	rst $38                                          ; $4227: $ff
	rst $38                                          ; $4228: $ff
	nop                                              ; $4229: $00
	nop                                              ; $422a: $00
	call z, $e8fc                                    ; $422b: $cc $fc $e8
	cp b                                             ; $422e: $b8
	add sp, -$48                                     ; $422f: $e8 $b8
	ld c, b                                          ; $4231: $48
	ld hl, sp+$70                                    ; $4232: $f8 $70
	ldh a, [$38]                                     ; $4234: $f0 $38
	add sp, $18                                      ; $4236: $e8 $18
	ld [hl], a                                       ; $4238: $77
	add d                                            ; $4239: $82
	sbc [hl]                                         ; $423a: $9e
	cp b                                             ; $423b: $b8
	ld a, e                                          ; $423c: $7b
	ei                                               ; $423d: $fb
	ld a, a                                          ; $423e: $7f
	ldh a, [$9a]                                     ; $423f: $f0 $9a
	ld a, b                                          ; $4241: $78
	ld b, h                                          ; $4242: $44
	ld a, h                                          ; $4243: $7c
	inc h                                            ; $4244: $24
	inc a                                            ; $4245: $3c
	ld [hl], a                                       ; $4246: $77
	ldh [$fd], a                                     ; $4247: $e0 $fd
	rst SubAFromDE                                          ; $4249: $df
	ld b, $9e                                        ; $424a: $06 $9e
	add hl, de                                       ; $424c: $19
	ld [hl], e                                       ; $424d: $73
	add b                                            ; $424e: $80
	ld a, a                                          ; $424f: $7f
	cp $8d                                           ; $4250: $fe $8d
	adc c                                            ; $4252: $89
	rst $38                                          ; $4253: $ff
	sub l                                            ; $4254: $95
	cp $66                                           ; $4255: $fe $66
	rst $38                                          ; $4257: $ff
	xor a                                            ; $4258: $af
	cp b                                             ; $4259: $b8
	ld e, a                                          ; $425a: $5f
	ld [hl], d                                       ; $425b: $72
	ld e, a                                          ; $425c: $5f
	ld l, [hl]                                       ; $425d: $6e
	ccf                                              ; $425e: $3f
	inc a                                            ; $425f: $3c
	ccf                                              ; $4260: $3f
	daa                                              ; $4261: $27
	ld a, a                                          ; $4262: $7f
	ld a, h                                          ; $4263: $7c
	db $fd                                           ; $4264: $fd
	rst SubAFromDE                                          ; $4265: $df
	ldh [$7f], a                                     ; $4266: $e0 $7f
	add $7d                                          ; $4268: $c6 $7d
	cp h                                             ; $426a: $bc
	add b                                            ; $426b: $80
	ld b, $fe                                        ; $426c: $06 $fe
	ld [hl+], a                                      ; $426e: $22
	cp $29                                           ; $426f: $fe $29
	rst $38                                          ; $4271: $ff
	sub l                                            ; $4272: $95
	rst $38                                          ; $4273: $ff
	push af                                          ; $4274: $f5
	ld e, a                                          ; $4275: $5f
	rst $38                                          ; $4276: $ff
	rlca                                             ; $4277: $07
	cp $46                                           ; $4278: $fe $46
	db $fc                                           ; $427a: $fc
	ld l, h                                          ; $427b: $6c
	ld hl, sp+$08                                    ; $427c: $f8 $08
	ldh a, [$d0]                                     ; $427e: $f0 $d0
	ldh a, [$30]                                     ; $4280: $f0 $30
	ld a, a                                          ; $4282: $7f
	ld b, a                                          ; $4283: $47
	ld a, e                                          ; $4284: $7b
	ld a, a                                          ; $4285: $7f
	ld [de], a                                       ; $4286: $12
	rra                                              ; $4287: $1f
	ld a, [bc]                                       ; $4288: $0a
	rrca                                             ; $4289: $0f
	ld b, $df                                        ; $428a: $06 $df
	rlca                                             ; $428c: $07
	ld a, a                                          ; $428d: $7f
	ld d, e                                          ; $428e: $53
	ld a, b                                          ; $428f: $78
	db $fc                                           ; $4290: $fc
	ld a, l                                          ; $4291: $7d
	nop                                              ; $4292: $00
	ld a, h                                          ; $4293: $7c
	ei                                               ; $4294: $fb
	ld a, a                                          ; $4295: $7f
	ld a, c                                          ; $4296: $79
	sbc h                                            ; $4297: $9c
	rrca                                             ; $4298: $0f
	dec c                                            ; $4299: $0d
	rlca                                             ; $429a: $07
	ld a, e                                          ; $429b: $7b
	or $7f                                           ; $429c: $f6 $7f
	add sp, -$21                                     ; $429e: $e8 $df
	ld a, a                                          ; $42a0: $7f
	sbc d                                            ; $42a1: $9a
	add sp, -$08                                     ; $42a2: $e8 $f8
	db $f4                                           ; $42a4: $f4
	inc a                                            ; $42a5: $3c
	call nc, $8079                                   ; $42a6: $d4 $79 $80
	sbc [hl]                                         ; $42a9: $9e
	ld c, h                                          ; $42aa: $4c
	sbc $fc                                          ; $42ab: $de $fc
	sub b                                            ; $42ad: $90
	inc e                                            ; $42ae: $1c
	db $f4                                           ; $42af: $f4
	inc c                                            ; $42b0: $0c
	db $fc                                           ; $42b1: $fc
	db $e4                                           ; $42b2: $e4
	db $fc                                           ; $42b3: $fc
	ld hl, sp-$68                                    ; $42b4: $f8 $98
	db $fc                                           ; $42b6: $fc
	db $e4                                           ; $42b7: $e4
	ld hl, sp+$38                                    ; $42b8: $f8 $38
	ret z                                            ; $42ba: $c8

	ret z                                            ; $42bb: $c8

	jr z, @+$7d                                      ; $42bc: $28 $7b

	ld [hl], b                                       ; $42be: $70
	rst SubAFromDE                                          ; $42bf: $df
	cp $df                                           ; $42c0: $fe $df
	db $10                                           ; $42c2: $10
	sub c                                            ; $42c3: $91
	jr c, jr_01f_42ee                                ; $42c4: $38 $28

	inc a                                            ; $42c6: $3c
	inc [hl]                                         ; $42c7: $34
	ld e, $16                                        ; $42c8: $1e $16
	rrca                                             ; $42ca: $0f
	dec bc                                           ; $42cb: $0b
	rlca                                             ; $42cc: $07
	ld b, $07                                        ; $42cd: $06 $07
	ld b, $03                                        ; $42cf: $06 $03
	inc bc                                           ; $42d1: $03
	db $eb                                           ; $42d2: $eb
	ld b, d                                          ; $42d3: $42
	sbc $96                                          ; $42d4: $de $96
	ld [hl], h                                       ; $42d6: $74
	ld e, a                                          ; $42d7: $5f
	ld l, d                                          ; $42d8: $6a
	ld a, a                                          ; $42d9: $7f
	ld h, h                                          ; $42da: $64
	ld e, a                                          ; $42db: $5f
	ld [hl], c                                       ; $42dc: $71
	cpl                                              ; $42dd: $2f
	add hl, sp                                       ; $42de: $39
	ei                                               ; $42df: $fb
	rst SubAFromDE                                          ; $42e0: $df
	ld [hl], b                                       ; $42e1: $70
	ld [hl], l                                       ; $42e2: $75
	ld a, [de]                                       ; $42e3: $1a
	ld a, [hl]                                       ; $42e4: $7e
	sbc $7c                                          ; $42e5: $de $7c
	sub h                                            ; $42e7: $94
	ld l, [hl]                                       ; $42e8: $6e
	sbc $9d                                          ; $42e9: $de $9d
	db $fd                                           ; $42eb: $fd
	cpl                                              ; $42ec: $2f
	halt                                             ; $42ed: $76

jr_01f_42ee:
	jr nz, @-$75                                     ; $42ee: $20 $89

	ld a, [$f48e]                                    ; $42f0: $fa $8e $f4
	sbc h                                            ; $42f3: $9c
	ccf                                              ; $42f4: $3f
	ld a, $23                                        ; $42f5: $3e $23
	ccf                                              ; $42f7: $3f
	ld b, a                                          ; $42f8: $47
	ld a, h                                          ; $42f9: $7c
	add a                                            ; $42fa: $87
	db $fc                                           ; $42fb: $fc
	sbc e                                            ; $42fc: $9b
	rst $38                                          ; $42fd: $ff
	db $e4                                           ; $42fe: $e4
	ld h, a                                          ; $42ff: $67
	db $ec                                           ; $4300: $ec
	xor a                                            ; $4301: $af
	di                                               ; $4302: $f3
	rst SubAFromDE                                          ; $4303: $df
	ld a, a                                          ; $4304: $7f
	ld a, l                                          ; $4305: $7d
	ld a, d                                          ; $4306: $7a
	ld h, d                                          ; $4307: $62
	ld a, a                                          ; $4308: $7f
	ld de, $de78                                     ; $4309: $11 $78 $de
	ld l, a                                          ; $430c: $6f
	nop                                              ; $430d: $00
	sub d                                            ; $430e: $92
	ldh [rSVBK], a                                   ; $430f: $e0 $70
	ret z                                            ; $4311: $c8

	ld hl, sp-$18                                    ; $4312: $f8 $e8
	ld hl, sp+$08                                    ; $4314: $f8 $08
	ld hl, sp+$10                                    ; $4316: $f8 $10
	ldh a, [$e0]                                     ; $4318: $f0 $e0
	ldh a, [$30]                                     ; $431a: $f0 $30
	ld l, [hl]                                       ; $431c: $6e
	ld [hl+], a                                      ; $431d: $22
	sbc [hl]                                         ; $431e: $9e
	add sp, $7b                                      ; $431f: $e8 $7b
	rst FarCall                                          ; $4321: $f7
	sbc l                                            ; $4322: $9d
	ldh a, [hDisp1_SCY]                                     ; $4323: $f0 $90
	ld a, b                                          ; $4325: $78
	ld d, d                                          ; $4326: $52
	halt                                             ; $4327: $76
	ld h, d                                          ; $4328: $62
	ld sp, $fd02                                     ; $4329: $31 $02 $fd
	rst SubAFromDE                                          ; $432c: $df
	rlca                                             ; $432d: $07
	add l                                            ; $432e: $85
	ld c, $0f                                        ; $432f: $0e $0f
	add hl, de                                       ; $4331: $19
	rra                                              ; $4332: $1f
	scf                                              ; $4333: $37
	ccf                                              ; $4334: $3f
	add hl, hl                                       ; $4335: $29
	ccf                                              ; $4336: $3f
	scf                                              ; $4337: $37
	ld a, $55                                        ; $4338: $3e $55
	ld a, [hl]                                       ; $433a: $7e
	ld a, a                                          ; $433b: $7f
	ld a, b                                          ; $433c: $78
	ld e, a                                          ; $433d: $5f
	halt                                             ; $433e: $76
	ld a, l                                          ; $433f: $7d
	ld a, [hl]                                       ; $4340: $7e
	ccf                                              ; $4341: $3f
	ld [hl], $57                                     ; $4342: $36 $57
	ld a, c                                          ; $4344: $79
	ld l, e                                          ; $4345: $6b
	ld a, h                                          ; $4346: $7c
	ld e, l                                          ; $4347: $5d
	ld a, [hl]                                       ; $4348: $7e
	db $fd                                           ; $4349: $fd
	rst SubAFromDE                                          ; $434a: $df
	ld [hl], b                                       ; $434b: $70
	add l                                            ; $434c: $85
	sbc b                                            ; $434d: $98
	ld hl, sp-$1c                                    ; $434e: $f8 $e4
	db $fc                                           ; $4350: $fc
	sbc h                                            ; $4351: $9c
	db $fc                                           ; $4352: $fc
	ld d, d                                          ; $4353: $52
	cp $aa                                           ; $4354: $fe $aa
	cp $5a                                           ; $4356: $fe $5a
	cp $d6                                           ; $4358: $fe $d6
	ld a, $ee                                        ; $435a: $3e $ee
	ld a, [hl]                                       ; $435c: $7e
	cp d                                             ; $435d: $ba
	ld a, [hl]                                       ; $435e: $7e
	cp $6e                                           ; $435f: $fe $6e
	ei                                               ; $4361: $fb
	sbc a                                            ; $4362: $9f
	push af                                          ; $4363: $f5
	rra                                              ; $4364: $1f
	ei                                               ; $4365: $fb
	ccf                                              ; $4366: $3f
	inc sp                                           ; $4367: $33
	ret nz                                           ; $4368: $c0

	sbc l                                            ; $4369: $9d
	ld a, [hl]                                       ; $436a: $7e
	ld a, e                                          ; $436b: $7b
	ld l, a                                          ; $436c: $6f
	ret nz                                           ; $436d: $c0

	sbc l                                            ; $436e: $9d
	ld a, [hl]                                       ; $436f: $7e
	ld d, a                                          ; $4370: $57
	rla                                              ; $4371: $17
	ret nz                                           ; $4372: $c0

	sbc d                                            ; $4373: $9a
	rra                                              ; $4374: $1f
	push af                                          ; $4375: $f5
	sbc a                                            ; $4376: $9f
	ei                                               ; $4377: $fb
	cp a                                             ; $4378: $bf
	inc sp                                           ; $4379: $33
	ret nz                                           ; $437a: $c0

	sbc [hl]                                         ; $437b: $9e
	ld a, h                                          ; $437c: $7c
	dec bc                                           ; $437d: $0b
	ret nz                                           ; $437e: $c0

	sbc [hl]                                         ; $437f: $9e
	sbc $0b                                          ; $4380: $de $0b
	ret nz                                           ; $4382: $c0

	sbc d                                            ; $4383: $9a
	ld [hl], b                                       ; $4384: $70
	ld a, e                                          ; $4385: $7b
	ld a, h                                          ; $4386: $7c
	scf                                              ; $4387: $37
	ld a, $1b                                        ; $4388: $3e $1b
	ret nz                                           ; $438a: $c0

	sbc d                                            ; $438b: $9a
	ld e, $ba                                        ; $438c: $1e $ba
	sbc $7e                                          ; $438e: $de $7e
	xor $17                                          ; $4390: $ee $17
	ret nz                                           ; $4392: $c0

	ld a, a                                          ; $4393: $7f
	db $fc                                           ; $4394: $fc
	rrca                                             ; $4395: $0f
	ret nz                                           ; $4396: $c0

	sbc l                                            ; $4397: $9d
	ld a, [$579e]                                    ; $4398: $fa $9e $57
	ret nz                                           ; $439b: $c0

	cp $98                                           ; $439c: $fe $98
	ld b, b                                          ; $439e: $40
	nop                                              ; $439f: $00
	ld h, b                                          ; $43a0: $60
	nop                                              ; $43a1: $00
	ld a, c                                          ; $43a2: $79
	nop                                              ; $43a3: $00
	ld [hl], a                                       ; $43a4: $77
	ld a, e                                          ; $43a5: $7b
	ld hl, sp-$0e                                    ; $43a6: $f8 $f2
	rst SubAFromDE                                          ; $43a8: $df
	ld e, $df                                        ; $43a9: $1e $df
	add hl, de                                       ; $43ab: $19
	rst SubAFromDE                                          ; $43ac: $df
	ld [de], a                                       ; $43ad: $12
	rst SubAFromDE                                          ; $43ae: $df
	ld d, $df                                        ; $43af: $16 $df
	ret nc                                           ; $43b1: $d0

	rst SubAFromDE                                          ; $43b2: $df
	add hl, sp                                       ; $43b3: $39
	add b                                            ; $43b4: $80
	ld e, $1f                                        ; $43b5: $1e $1f
	rla                                              ; $43b7: $17
	rra                                              ; $43b8: $1f
	ccf                                              ; $43b9: $3f
	dec a                                            ; $43ba: $3d
	ccf                                              ; $43bb: $3f
	daa                                              ; $43bc: $27
	rra                                              ; $43bd: $1f
	ld a, [de]                                       ; $43be: $1a
	rrca                                             ; $43bf: $0f
	rrca                                             ; $43c0: $0f
	ld [de], a                                       ; $43c1: $12
	rra                                              ; $43c2: $1f
	inc h                                            ; $43c3: $24
	ccf                                              ; $43c4: $3f
	rst $38                                          ; $43c5: $ff
	rst $38                                          ; $43c6: $ff
	nop                                              ; $43c7: $00
	nop                                              ; $43c8: $00
	ld a, a                                          ; $43c9: $7f
	ld l, a                                          ; $43ca: $6f
	ld a, [hl]                                       ; $43cb: $7e
	ld c, [hl]                                       ; $43cc: $4e
	ld a, h                                          ; $43cd: $7c
	ld b, h                                          ; $43ce: $44
	ld a, h                                          ; $43cf: $7c
	inc h                                            ; $43d0: $24
	cp $ae                                           ; $43d1: $fe $ae
	ld a, [hl]                                       ; $43d3: $7e
	adc h                                            ; $43d4: $8c

jr_01f_43d5:
	ld a, [$fc7c]                                    ; $43d5: $fa $7c $fc
	ret z                                            ; $43d8: $c8

	ld hl, sp-$08                                    ; $43d9: $f8 $f8
	jr c, jr_01f_43d5                                ; $43db: $38 $f8

	ret z                                            ; $43dd: $c8

	ldh a, [rSVBK]                                   ; $43de: $f0 $70
	sub b                                            ; $43e0: $90
	sub b                                            ; $43e1: $90
	ld d, b                                          ; $43e2: $50
	ret nc                                           ; $43e3: $d0

	jr nc, @-$0e                                     ; $43e4: $30 $f0

	db $fc                                           ; $43e6: $fc
	db $fc                                           ; $43e7: $fc
	ei                                               ; $43e8: $fb
	ld h, $60                                        ; $43e9: $26 $60
	sbc l                                            ; $43eb: $9d
	ld l, d                                          ; $43ec: $6a
	ld a, l                                          ; $43ed: $7d
	ld a, [bc]                                       ; $43ee: $0a
	ld h, b                                          ; $43ef: $60
	ld a, a                                          ; $43f0: $7f
	ld h, b                                          ; $43f1: $60
	ld l, $60                                        ; $43f2: $2e $60
	sbc d                                            ; $43f4: $9a
	halt                                             ; $43f5: $76
	ld a, a                                          ; $43f6: $7f
	ld a, [hl]                                       ; $43f7: $7e
	ccf                                              ; $43f8: $3f
	ld a, [hl-]                                      ; $43f9: $3a
	rla                                              ; $43fa: $17
	ret nz                                           ; $43fb: $c0

	sbc c                                            ; $43fc: $99
	ld a, [$fe7e]                                    ; $43fd: $fa $7e $fe
	ld e, [hl]                                       ; $4400: $5e
	ei                                               ; $4401: $fb
	adc a                                            ; $4402: $8f
	ld [hl], a                                       ; $4403: $77
	ret nz                                           ; $4404: $c0

	ld a, a                                          ; $4405: $7f
	ld d, b                                          ; $4406: $50
	sub d                                            ; $4407: $92
	ld a, $3b                                        ; $4408: $3e $3b
	ld e, $15                                        ; $440a: $1e $15
	ld e, $17                                        ; $440c: $1e $17
	rra                                              ; $440e: $1f
	add hl, de                                       ; $440f: $19
	ld b, $06                                        ; $4410: $06 $06
	ld [$1308], sp                                   ; $4412: $08 $08 $13
	ld b, e                                          ; $4415: $43
	ld b, b                                          ; $4416: $40
	sub c                                            ; $4417: $91
	rst $38                                          ; $4418: $ff
	xor a                                            ; $4419: $af
	cp $ce                                           ; $441a: $fe $ce
	db $fc                                           ; $441c: $fc
	and h                                            ; $441d: $a4
	db $fc                                           ; $441e: $fc
	db $f4                                           ; $441f: $f4
	cp $ce                                           ; $4420: $fe $ce
	ld a, [hl-]                                      ; $4422: $3a
	ld a, [hl-]                                      ; $4423: $3a
	inc c                                            ; $4424: $0c
	inc c                                            ; $4425: $0c
	daa                                              ; $4426: $27
	ld b, b                                          ; $4427: $40
	add l                                            ; $4428: $85
	ld [$100f], sp                                   ; $4429: $08 $0f $10
	rra                                              ; $442c: $1f
	jr nc, jr_01f_446e                               ; $442d: $30 $3f

	ld c, c                                          ; $442f: $49
	ld a, a                                          ; $4430: $7f
	inc de                                           ; $4431: $13
	ld a, a                                          ; $4432: $7f
	daa                                              ; $4433: $27
	inc a                                            ; $4434: $3c
	cpl                                              ; $4435: $2f
	jr c, jr_01f_4447                                ; $4436: $38 $0f

	ld [hl], $3d                                     ; $4438: $36 $3d
	ld l, $5f                                        ; $443a: $2e $5f
	ld h, [hl]                                       ; $443c: $66
	ld c, a                                          ; $443d: $4f
	ld [hl], c                                       ; $443e: $71
	halt                                             ; $443f: $76
	ld a, c                                          ; $4440: $79
	rlca                                             ; $4441: $07
	inc b                                            ; $4442: $04
	ld l, a                                          ; $4443: $6f
	add b                                            ; $4444: $80
	add b                                            ; $4445: $80
	adc b                                            ; $4446: $88

jr_01f_4447:
	ld hl, sp+$04                                    ; $4447: $f8 $04
	db $fc                                           ; $4449: $fc
	inc b                                            ; $444a: $04
	db $fc                                           ; $444b: $fc

jr_01f_444c:
	ld b, d                                          ; $444c: $42
	cp $c2                                           ; $444d: $fe $c2
	cp $e2                                           ; $444f: $fe $e2
	ld a, $f1                                        ; $4451: $3e $f1
	rra                                              ; $4453: $1f
	ld sp, hl                                        ; $4454: $f9
	ld l, a                                          ; $4455: $6f
	cp l                                             ; $4456: $bd
	ld [hl], a                                       ; $4457: $77
	db $fd                                           ; $4458: $fd
	ld h, a                                          ; $4459: $67
	ld sp, hl                                        ; $445a: $f9
	adc a                                            ; $445b: $8f
	rst $38                                          ; $445c: $ff
	sbc a                                            ; $445d: $9f
	ldh a, [$30]                                     ; $445e: $f0 $30
	ld a, [bc]                                       ; $4460: $0a
	dec c                                            ; $4461: $0d
	add hl, bc                                       ; $4462: $09
	ld c, $11                                        ; $4463: $0e $11
	sub [hl]                                         ; $4465: $96
	ld e, $76                                        ; $4466: $1e $76
	ld a, a                                          ; $4468: $7f
	rst $38                                          ; $4469: $ff
	sbc c                                            ; $446a: $99
	rst $38                                          ; $446b: $ff
	add [hl]                                         ; $446c: $86
	ld a, a                                          ; $446d: $7f

jr_01f_446e:
	ld a, a                                          ; $446e: $7f
	ccf                                              ; $446f: $3f
	add b                                            ; $4470: $80
	sub d                                            ; $4471: $92
	jr z, jr_01f_444c                                ; $4472: $28 $d8

	ret z                                            ; $4474: $c8

	jr c, @+$46                                      ; $4475: $38 $44

	cp h                                             ; $4477: $bc
	inc [hl]                                         ; $4478: $34
	db $fc                                           ; $4479: $fc
	or $ce                                           ; $447a: $f6 $ce
	cp $3a                                           ; $447c: $fe $3a
	db $fc                                           ; $447e: $fc
	ld [hl+], a                                      ; $447f: $22
	ret nz                                           ; $4480: $c0

	ld b, a                                          ; $4481: $47
	add b                                            ; $4482: $80
	sbc c                                            ; $4483: $99
	ld a, l                                          ; $4484: $7d
	ld l, [hl]                                       ; $4485: $6e
	ld a, a                                          ; $4486: $7f
	ld a, [hl]                                       ; $4487: $7e
	ld a, a                                          ; $4488: $7f
	ld h, h                                          ; $4489: $64
	sbc $ff                                          ; $448a: $de $ff
	sbc [hl]                                         ; $448c: $9e
	add b                                            ; $448d: $80
	dec de                                           ; $448e: $1b
	add b                                            ; $448f: $80
	adc b                                            ; $4490: $88
	rrca                                             ; $4491: $0f
	rst $38                                          ; $4492: $ff
	rst SubAFromDE                                          ; $4493: $df
	ld hl, sp+$38                                    ; $4494: $f8 $38
	ld a, a                                          ; $4496: $7f
	ld a, a                                          ; $4497: $7f
	daa                                              ; $4498: $27
	ld a, $25                                        ; $4499: $3e $25
	ccf                                              ; $449b: $3f
	dec d                                            ; $449c: $15
	rra                                              ; $449d: $1f
	inc c                                            ; $449e: $0c
	rrca                                             ; $449f: $0f
	rrca                                             ; $44a0: $0f

jr_01f_44a1:
	dec bc                                           ; $44a1: $0b
	inc c                                            ; $44a2: $0c
	rrca                                             ; $44a3: $0f
	inc de                                           ; $44a4: $13
	rra                                              ; $44a5: $1f
	rra                                              ; $44a6: $1f
	dec e                                            ; $44a7: $1d
	ld c, a                                          ; $44a8: $4f
	add b                                            ; $44a9: $80
	sub [hl]                                         ; $44aa: $96
	ret nc                                           ; $44ab: $d0

	ldh a, [$e8]                                     ; $44ac: $f0 $e8
	ld a, b                                          ; $44ae: $78
	xor b                                            ; $44af: $a8
	ld hl, sp+$08                                    ; $44b0: $f8 $08
	ld hl, sp-$68                                    ; $44b2: $f8 $98
	sbc $f8                                          ; $44b4: $de $f8
	sbc c                                            ; $44b6: $99
	jr c, jr_01f_44a1                                ; $44b7: $38 $e8

	ret z                                            ; $44b9: $c8

	ld hl, sp-$10                                    ; $44ba: $f8 $f0
	jr nc, jr_01f_44fd                               ; $44bc: $30 $3f

	add b                                            ; $44be: $80
	rst SubAFromDE                                          ; $44bf: $df
	ld b, $7e                                        ; $44c0: $06 $7e
	add d                                            ; $44c2: $82
	add a                                            ; $44c3: $87
	jr nz, @+$41                                     ; $44c4: $20 $3f

	ld b, b                                          ; $44c6: $40
	ld a, a                                          ; $44c7: $7f
	ld b, b                                          ; $44c8: $40
	ld a, a                                          ; $44c9: $7f
	adc e                                            ; $44ca: $8b
	rst $38                                          ; $44cb: $ff
	sub a                                            ; $44cc: $97
	rst $38                                          ; $44cd: $ff
	ld h, a                                          ; $44ce: $67
	db $fc                                           ; $44cf: $fc
	xor a                                            ; $44d0: $af
	cp b                                             ; $44d1: $b8
	ld e, a                                          ; $44d2: $5f
	ld [hl], d                                       ; $44d3: $72
	ld e, a                                          ; $44d4: $5f
	ld l, [hl]                                       ; $44d5: $6e
	sbc a                                            ; $44d6: $9f
	db $fc                                           ; $44d7: $fc
	rst $38                                          ; $44d8: $ff
	rst SubAFromBC                                          ; $44d9: $e7
	ld a, a                                          ; $44da: $7f
	ld a, h                                          ; $44db: $7c
	db $fd                                           ; $44dc: $fd
	rst SubAFromDE                                          ; $44dd: $df
	ldh [$9c], a                                     ; $44de: $e0 $9c
	db $10                                           ; $44e0: $10
	ldh a, [$08]                                     ; $44e1: $f0 $08
	ld [hl], e                                       ; $44e3: $73
	ld a, [hl]                                       ; $44e4: $7e
	sbc [hl]                                         ; $44e5: $9e
	add d                                            ; $44e6: $82
	ld a, e                                          ; $44e7: $7b
	ld a, [hl]                                       ; $44e8: $7e
	add b                                            ; $44e9: $80
	jp hl                                            ; $44ea: $e9


	ccf                                              ; $44eb: $3f
	db $fd                                           ; $44ec: $fd
	rla                                              ; $44ed: $17
	db $fd                                           ; $44ee: $fd
	ld b, a                                          ; $44ef: $47
	rst $38                                          ; $44f0: $ff
	ld l, a                                          ; $44f1: $6f
	cp $0e                                           ; $44f2: $fe $0e
	ld hl, sp-$28                                    ; $44f4: $f8 $d8
	ldh a, [$30]                                     ; $44f6: $f0 $30
	ld a, a                                          ; $44f8: $7f
	ld b, a                                          ; $44f9: $47
	ld a, e                                          ; $44fa: $7b
	ld a, a                                          ; $44fb: $7f
	ld [de], a                                       ; $44fc: $12

jr_01f_44fd:
	rra                                              ; $44fd: $1f
	ld a, [bc]                                       ; $44fe: $0a
	rrca                                             ; $44ff: $0f
	ld b, $07                                        ; $4500: $06 $07
	rlca                                             ; $4502: $07
	dec b                                            ; $4503: $05
	ld b, $07                                        ; $4504: $06 $07
	add hl, bc                                       ; $4506: $09
	rrca                                             ; $4507: $0f
	rrca                                             ; $4508: $0f
	sbc c                                            ; $4509: $99
	ld c, $1f                                        ; $450a: $0e $1f
	inc de                                           ; $450c: $13
	rrca                                             ; $450d: $0f
	dec c                                            ; $450e: $0d
	rlca                                             ; $450f: $07
	ld a, e                                          ; $4510: $7b
	or $7f                                           ; $4511: $f6 $7f
	ld [$7fdf], a                                    ; $4513: $ea $df $7f
	rst $38                                          ; $4516: $ff
	sub [hl]                                         ; $4517: $96
	add sp, -$08                                     ; $4518: $e8 $f8

jr_01f_451a:
	db $f4                                           ; $451a: $f4
	inc a                                            ; $451b: $3c
	call nc, $84fc                                   ; $451c: $d4 $fc $84
	db $fc                                           ; $451f: $fc
	ld c, h                                          ; $4520: $4c
	sbc $fc                                          ; $4521: $de $fc
	adc l                                            ; $4523: $8d
	inc e                                            ; $4524: $1c
	db $f4                                           ; $4525: $f4
	db $e4                                           ; $4526: $e4
	db $fc                                           ; $4527: $fc
	ld hl, sp-$68                                    ; $4528: $f8 $98
	db $fc                                           ; $452a: $fc
	db $e4                                           ; $452b: $e4

jr_01f_452c:
	ld hl, sp+$38                                    ; $452c: $f8 $38
	ret z                                            ; $452e: $c8

	ret z                                            ; $452f: $c8

	jr z, jr_01f_451a                                ; $4530: $28 $e8

	jr jr_01f_452c                                   ; $4532: $18 $f8

	cp $fe                                           ; $4534: $fe $fe
	db $f4                                           ; $4536: $f4
	sbc h                                            ; $4537: $9c
	call nz, $f000                                   ; $4538: $c4 $00 $f0
	ldh [$dc], a                                     ; $453b: $e0 $dc
	ld a, [hl]                                       ; $453d: $7e
	ld l, h                                          ; $453e: $6c
	sub [hl]                                         ; $453f: $96
	inc c                                            ; $4540: $0c
	nop                                              ; $4541: $00
	inc e                                            ; $4542: $1c
	nop                                              ; $4543: $00
	dec a                                            ; $4544: $3d
	nop                                              ; $4545: $00
	ld a, l                                          ; $4546: $7d
	ld [hl], b                                       ; $4547: $70
	ld [hl], l                                       ; $4548: $75
	xor $9e                                          ; $4549: $ee $9e
	jr nz, jr_01f_45c8                               ; $454b: $20 $7b

	cp $9a                                           ; $454d: $fe $9a
	jr nc, jr_01f_4551                               ; $454f: $30 $00

jr_01f_4551:
	ret nc                                           ; $4551: $d0

	nop                                              ; $4552: $00
	or b                                             ; $4553: $b0
	ld a, e                                          ; $4554: $7b
	ld a, [$e09c]                                    ; $4555: $fa $9c $e0
	nop                                              ; $4558: $00
	ret nz                                           ; $4559: $c0

	rst AddAOntoHL                                          ; $455a: $ef
	nop                                              ; $455b: $00
	sbc e                                            ; $455c: $9b
	ret nc                                           ; $455d: $d0

	ret c                                            ; $455e: $d8

	jr nz, jr_01f_4579                               ; $455f: $20 $18

	db $dd                                           ; $4561: $dd
	rst SubAFromDE                                          ; $4562: $df
	adc e                                            ; $4563: $8b
	ld [hl-], a                                      ; $4564: $32
	jr nc, jr_01f_4599                               ; $4565: $30 $32

	jr nc, @+$70                                     ; $4567: $30 $6e

	ld l, [hl]                                       ; $4569: $6e
	ld l, $2e                                        ; $456a: $2e $2e
	ld [$0800], sp                                   ; $456c: $08 $00 $08
	nop                                              ; $456f: $00
	rst AddAOntoHL                                          ; $4570: $ef
	rst AddAOntoHL                                          ; $4571: $ef
	rst SubAFromDE                                          ; $4572: $df
	rst SubAFromDE                                          ; $4573: $df
	ld d, $14                                        ; $4574: $16 $14
	ld [de], a                                       ; $4576: $12
	db $10                                           ; $4577: $10
	db $dd                                           ; $4578: $dd

jr_01f_4579:
	jr z, jr_01f_45fa                                ; $4579: $28 $7f

	ldh [c], a                                       ; $457b: $e2
	ld a, a                                          ; $457c: $7f
	sbc $dd                                          ; $457d: $de $dd
	rst AddAOntoHL                                          ; $457f: $ef
	sub e                                            ; $4580: $93
	ld a, [hl+]                                      ; $4581: $2a
	jr z, jr_01f_45ae                                ; $4582: $28 $2a

	jr z, jr_01f_45b2                                ; $4584: $28 $2c

	inc l                                            ; $4586: $2c
	ld l, h                                          ; $4587: $6c
	ld l, h                                          ; $4588: $6c
	add sp, -$10                                     ; $4589: $e8 $f0
	add sp, -$10                                     ; $458b: $e8 $f0
	ld [hl], a                                       ; $458d: $77
	ldh [$7f], a                                     ; $458e: $e0 $7f
	ldh a, [c]                                       ; $4590: $f2
	sub l                                            ; $4591: $95
	ld a, [de]                                       ; $4592: $1a
	jr jr_01f_4601                                   ; $4593: $18 $6c

	ld l, h                                          ; $4595: $6c
	ld l, [hl]                                       ; $4596: $6e
	ld l, a                                          ; $4597: $6f
	pop de                                           ; $4598: $d1

jr_01f_4599:
	reti                                             ; $4599: $d9


	rra                                              ; $459a: $1f
	rla                                              ; $459b: $17
	db $dd                                           ; $459c: $dd

jr_01f_459d:
	rst AddAOntoHL                                          ; $459d: $ef
	sub l                                            ; $459e: $95
	ld a, $3c                                        ; $459f: $3e $3c
	ld a, $3c                                        ; $45a1: $3e $3c
	ld l, h                                          ; $45a3: $6c
	ld l, h                                          ; $45a4: $6c
	inc l                                            ; $45a5: $2c
	inc l                                            ; $45a6: $2c
	ld [$7700], sp                                   ; $45a7: $08 $00 $77
	ldh [$df], a                                     ; $45aa: $e0 $df
	rst AddAOntoHL                                          ; $45ac: $ef
	sbc c                                            ; $45ad: $99

jr_01f_45ae:
	ld c, $0c                                        ; $45ae: $0e $0c
	ld l, $2c                                        ; $45b0: $2e $2c

jr_01f_45b2:
	jr z, jr_01f_45dc                                ; $45b2: $28 $28

	ld [hl], a                                       ; $45b4: $77
	ret nc                                           ; $45b5: $d0

	ld a, a                                          ; $45b6: $7f
	sbc $dd                                          ; $45b7: $de $dd
	rst SubAFromDE                                          ; $45b9: $df
	sbc e                                            ; $45ba: $9b
	ld e, $1c                                        ; $45bb: $1e $1c
	ld a, [hl-]                                      ; $45bd: $3a
	jr c, jr_01f_459d                                ; $45be: $38 $dd

	ld l, [hl]                                       ; $45c0: $6e
	ld a, a                                          ; $45c1: $7f
	jp nc, $de7f                                     ; $45c2: $d2 $7f $de

	db $dd                                           ; $45c5: $dd
	rst SubAFromDE                                          ; $45c6: $df
	ld a, a                                          ; $45c7: $7f

jr_01f_45c8:
	ldh a, [c]                                       ; $45c8: $f2
	sbc c                                            ; $45c9: $99
	ld a, [bc]                                       ; $45ca: $0a
	ld [$2e2e], sp                                   ; $45cb: $08 $2e $2e
	jr z, jr_01f_45f9                                ; $45ce: $28 $29

	ld h, a                                          ; $45d0: $67
	or b                                             ; $45d1: $b0
	ld a, a                                          ; $45d2: $7f
	jp nc, $229d                                     ; $45d3: $d2 $9d $22

	jr nz, jr_01f_4653                               ; $45d6: $20 $7b

	or b                                             ; $45d8: $b0
	ld a, e                                          ; $45d9: $7b
	ldh [rPCM34], a                                  ; $45da: $e0 $77

jr_01f_45dc:
	or b                                             ; $45dc: $b0
	rst SubAFromDE                                          ; $45dd: $df
	rst SubAFromDE                                          ; $45de: $df
	ld a, a                                          ; $45df: $7f
	or d                                             ; $45e0: $b2
	ld a, a                                          ; $45e1: $7f
	sbc $df                                          ; $45e2: $de $df
	inc l                                            ; $45e4: $2c
	rst SubAFromDE                                          ; $45e5: $df
	ld l, $df                                        ; $45e6: $2e $df
	reti                                             ; $45e8: $d9


	rst SubAFromDE                                          ; $45e9: $df
	pop de                                           ; $45ea: $d1
	ld a, a                                          ; $45eb: $7f
	pop af                                           ; $45ec: $f1
	ld a, a                                          ; $45ed: $7f
	cp $97                                           ; $45ee: $fe $97
	inc a                                            ; $45f0: $3c
	jr c, jr_01f_4631                                ; $45f1: $38 $3e

	ld a, [hl-]                                      ; $45f3: $3a

jr_01f_45f4:
	ld l, h                                          ; $45f4: $6c
	ld l, [hl]                                       ; $45f5: $6e
	ld l, h                                          ; $45f6: $6c
	ld l, [hl]                                       ; $45f7: $6e
	ld h, a                                          ; $45f8: $67

jr_01f_45f9:
	ld h, b                                          ; $45f9: $60

jr_01f_45fa:
	ld a, a                                          ; $45fa: $7f
	and b                                            ; $45fb: $a0
	ld a, a                                          ; $45fc: $7f
	ret nz                                           ; $45fd: $c0

	sbc $28                                          ; $45fe: $de $28
	adc d                                            ; $4600: $8a

jr_01f_4601:
	add hl, hl                                       ; $4601: $29
	jr nz, jr_01f_461c                               ; $4602: $20 $18

	db $10                                           ; $4604: $10
	add sp, -$10                                     ; $4605: $e8 $f0
	ldh a, [$ef]                                     ; $4607: $f0 $ef
	ldh [rOBP0], a                                   ; $4609: $e0 $48
	ld b, [hl]                                       ; $460b: $46
	ld b, b                                          ; $460c: $40
	ld h, $2c                                        ; $460d: $26 $2c
	inc l                                            ; $460f: $2c
	ld a, [hl+]                                      ; $4610: $2a
	ld l, [hl]                                       ; $4611: $6e
	ldh a, [$d9]                                     ; $4612: $f0 $d9
	pop de                                           ; $4614: $d1
	jr nz, jr_01f_45f4                               ; $4615: $20 $dd

	ldh [$9b], a                                     ; $4617: $e0 $9b
	inc h                                            ; $4619: $24
	ld b, d                                          ; $461a: $42
	ld b, h                                          ; $461b: $44

jr_01f_461c:
	ld b, h                                          ; $461c: $44
	sbc $6e                                          ; $461d: $de $6e
	add c                                            ; $461f: $81
	ld l, $18                                        ; $4620: $2e $18
	ret                                              ; $4622: $c9


	reti                                             ; $4623: $d9


	pop de                                           ; $4624: $d1
	ldh [$ef], a                                     ; $4625: $e0 $ef
	ldh a, [$f0]                                     ; $4627: $f0 $f0
	ld b, d                                          ; $4629: $42
	ld b, b                                          ; $462a: $40
	ld c, b                                          ; $462b: $48
	ld b, [hl]                                       ; $462c: $46
	ld l, $2a                                        ; $462d: $2e $2a
	inc l                                            ; $462f: $2c
	inc l                                            ; $4630: $2c

jr_01f_4631:
	ldh a, [$e8]                                     ; $4631: $f0 $e8
	ld [$f000], sp                                   ; $4633: $08 $00 $f0
	ldh a, [$df]                                     ; $4636: $f0 $df
	rst SubAFromDE                                          ; $4638: $df
	ld [hl], $34                                     ; $4639: $36 $34
	ld [bc], a                                       ; $463b: $02
	nop                                              ; $463c: $00
	inc l                                            ; $463d: $2c
	ld a, e                                          ; $463e: $7b
	ld e, [hl]                                       ; $463f: $5e
	sub a                                            ; $4640: $97
	ld [$06ef], sp                                   ; $4641: $08 $ef $06
	jr z, jr_01f_4646                                ; $4644: $28 $00

jr_01f_4646:
	rst AddAOntoHL                                          ; $4646: $ef
	inc b                                            ; $4647: $04
	add hl, hl                                       ; $4648: $29
	sbc h                                            ; $4649: $9c
	ld bc, $089b                                     ; $464a: $01 $9b $08
	nop                                              ; $464d: $00
	ret c                                            ; $464e: $d8

	ret c                                            ; $464f: $d8

	sbc $ef                                          ; $4650: $de $ef
	add c                                            ; $4652: $81

jr_01f_4653:
	rst SubAFromDE                                          ; $4653: $df
	ld a, $14                                        ; $4654: $3e $14
	ld a, [hl+]                                      ; $4656: $2a
	ld h, $28                                        ; $4657: $26 $28
	jr z, jr_01f_46c5                                ; $4659: $28 $6a

	ld l, h                                          ; $465b: $6c
	ret nc                                           ; $465c: $d0

	ret nc                                           ; $465d: $d0

	add sp, -$10                                     ; $465e: $e8 $f0
	rst AddAOntoHL                                          ; $4660: $ef
	rst SubAFromDE                                          ; $4661: $df
	rst AddAOntoHL                                          ; $4662: $ef
	rst AddAOntoHL                                          ; $4663: $ef
	inc l                                            ; $4664: $2c
	jr z, jr_01f_4693                                ; $4665: $28 $2c

	ld a, [hl+]                                      ; $4667: $2a
	ld l, d                                          ; $4668: $6a
	ld l, h                                          ; $4669: $6c
	ld l, d                                          ; $466a: $6a
	ld l, d                                          ; $466b: $6a
	add sp, -$10                                     ; $466c: $e8 $f0
	jr nz, jr_01f_4688                               ; $466e: $20 $18

	rst SubAFromDE                                          ; $4670: $df
	ld a, e                                          ; $4671: $7b
	ldh a, [hDisp1_OBP0]                                     ; $4672: $f0 $93
	jr z, jr_01f_469c                                ; $4674: $28 $26

	inc l                                            ; $4676: $2c
	ld a, [hl+]                                      ; $4677: $2a
	ld l, h                                          ; $4678: $6c
	ld l, h                                          ; $4679: $6c
	ld a, [hl+]                                      ; $467a: $2a
	ld a, [hl+]                                      ; $467b: $2a
	jr nz, jr_01f_4696                               ; $467c: $20 $18

	ld [$6f00], sp                                   ; $467e: $08 $00 $6f
	ldh a, [$9d]                                     ; $4681: $f0 $9d
	inc h                                            ; $4683: $24
	ld [hl+], a                                      ; $4684: $22
	db $dd                                           ; $4685: $dd
	inc l                                            ; $4686: $2c
	ld a, a                                          ; $4687: $7f

jr_01f_4688:
	ldh a, [c]                                       ; $4688: $f2
	adc l                                            ; $4689: $8d
	dec b                                            ; $468a: $05
	db $fd                                           ; $468b: $fd
	rst SubAFromDE                                          ; $468c: $df
	rst SubAFromDE                                          ; $468d: $df
	push hl                                          ; $468e: $e5
	push hl                                          ; $468f: $e5
	ld [bc], a                                       ; $4690: $02
	nop                                              ; $4691: $00
	ld b, d                                          ; $4692: $42

jr_01f_4693:
	ld b, b                                          ; $4693: $40
	ld l, $2f                                        ; $4694: $2e $2f

jr_01f_4696:
	jr z, jr_01f_46c0                                ; $4696: $28 $28

	ret c                                            ; $4698: $d8

	ret c                                            ; $4699: $d8

	ret nc                                           ; $469a: $d0

	ret nc                                           ; $469b: $d0

jr_01f_469c:
	ld a, e                                          ; $469c: $7b
	ret nz                                           ; $469d: $c0

	sbc d                                            ; $469e: $9a
	rst SubAFromDE                                          ; $469f: $df
	ld [hl-], a                                      ; $46a0: $32
	ld l, $34                                        ; $46a1: $2e $34
	jr nc, @+$7d                                     ; $46a3: $30 $7b

	ret nz                                           ; $46a5: $c0

	sbc d                                            ; $46a6: $9a
	ld l, h                                          ; $46a7: $6c
	add sp, -$18                                     ; $46a8: $e8 $e8
	ldh a, [$f0]                                     ; $46aa: $f0 $f0
	ld a, e                                          ; $46ac: $7b
	pop de                                           ; $46ad: $d1
	sbc d                                            ; $46ae: $9a
	rst SubAFromDE                                          ; $46af: $df
	jr nc, jr_01f_46e6                               ; $46b0: $30 $34

	ld [hl-], a                                      ; $46b2: $32
	ld l, $7b                                        ; $46b3: $2e $7b
	or c                                             ; $46b5: $b1
	sbc h                                            ; $46b6: $9c
	ld l, h                                          ; $46b7: $6c
	jr nz, jr_01f_46d2                               ; $46b8: $20 $18

	ld l, a                                          ; $46ba: $6f
	or b                                             ; $46bb: $b0
	sub e                                            ; $46bc: $93
	jr nc, @+$30                                     ; $46bd: $30 $2e

	inc [hl]                                         ; $46bf: $34

jr_01f_46c0:
	ld [hl-], a                                      ; $46c0: $32
	inc l                                            ; $46c1: $2c
	inc l                                            ; $46c2: $2c
	ld a, [hl+]                                      ; $46c3: $2a
	ld a, [hl+]                                      ; $46c4: $2a

jr_01f_46c5:
	ld [$0800], sp                                   ; $46c5: $08 $00 $08
	nop                                              ; $46c8: $00
	ld a, e                                          ; $46c9: $7b
	pop hl                                           ; $46ca: $e1
	adc b                                            ; $46cb: $88
	rst SubAFromDE                                          ; $46cc: $df
	jr jr_01f_46e5                                   ; $46cd: $18 $16

	ld b, $04                                        ; $46cf: $06 $04
	inc l                                            ; $46d1: $2c

jr_01f_46d2:
	inc l                                            ; $46d2: $2c
	ld l, $2f                                        ; $46d3: $2e $2f
	dec b                                            ; $46d5: $05
	db $fd                                           ; $46d6: $fd
	ld [$e500], sp                                   ; $46d7: $08 $00 $e5
	push hl                                          ; $46da: $e5
	rst AddAOntoHL                                          ; $46db: $ef
	rst AddAOntoHL                                          ; $46dc: $ef
	ld b, d                                          ; $46dd: $42
	ld b, b                                          ; $46de: $40
	jr jr_01f_46f7                                   ; $46df: $18 $16

	jr z, jr_01f_470b                                ; $46e1: $28 $28

	ld [hl], a                                       ; $46e3: $77
	and b                                            ; $46e4: $a0

jr_01f_46e5:
	rst SubAFromDE                                          ; $46e5: $df

jr_01f_46e6:
	reti                                             ; $46e6: $d9


	ld a, e                                          ; $46e7: $7b
	ret nc                                           ; $46e8: $d0

	sub d                                            ; $46e9: $92
	rst SubAFromDE                                          ; $46ea: $df
	ld a, [bc]                                       ; $46eb: $0a
	ld [$363a], sp                                   ; $46ec: $08 $3a $36
	ld l, $2e                                        ; $46ef: $2e $2e
	ld l, d                                          ; $46f1: $6a
	ld l, h                                          ; $46f2: $6c
	pop de                                           ; $46f3: $d1
	pop de                                           ; $46f4: $d1
	jp hl                                            ; $46f5: $e9


	jp hl                                            ; $46f6: $e9


jr_01f_46f7:
	ld [hl], a                                       ; $46f7: $77
	and b                                            ; $46f8: $a0
	sbc e                                            ; $46f9: $9b
	inc a                                            ; $46fa: $3c
	jr c, jr_01f_4739                                ; $46fb: $38 $3c

	jr c, jr_01f_4776                                ; $46fd: $38 $77

	and b                                            ; $46ff: $a0
	rst SubAFromDE                                          ; $4700: $df
	pop af                                           ; $4701: $f1
	sbc l                                            ; $4702: $9d
	rra                                              ; $4703: $1f
	rla                                              ; $4704: $17
	ld [hl], a                                       ; $4705: $77
	ld d, b                                          ; $4706: $50
	ld a, a                                          ; $4707: $7f
	ldh [c], a                                       ; $4708: $e2
	sbc h                                            ; $4709: $9c
	inc a                                            ; $470a: $3c

jr_01f_470b:
	ld a, [hl-]                                      ; $470b: $3a
	ld l, d                                          ; $470c: $6a
	ld a, e                                          ; $470d: $7b
	ld h, b                                          ; $470e: $60
	ld a, a                                          ; $470f: $7f
	ldh a, [c]                                       ; $4710: $f2
	ld l, a                                          ; $4711: $6f
	ld [hl], b                                       ; $4712: $70
	sub a                                            ; $4713: $97
	jr c, jr_01f_474c                                ; $4714: $38 $36

	ld b, d                                          ; $4716: $42
	ld b, b                                          ; $4717: $40
	inc l                                            ; $4718: $2c
	dec l                                            ; $4719: $2d

jr_01f_471a:
	jr z, jr_01f_4744                                ; $471a: $28 $28

	ld e, a                                          ; $471c: $5f
	and b                                            ; $471d: $a0
	sbc l                                            ; $471e: $9d
	ld c, $0c                                        ; $471f: $0e $0c
	ld a, e                                          ; $4721: $7b
	and b                                            ; $4722: $a0
	sbc h                                            ; $4723: $9c
	ld l, $1f                                        ; $4724: $2e $1f
	rla                                              ; $4726: $17
	ld a, e                                          ; $4727: $7b
	ret nc                                           ; $4728: $d0

	ld a, e                                          ; $4729: $7b

Call_01f_472a:
	ldh a, [$7f]                                     ; $472a: $f0 $7f

jr_01f_472c:
	jp nc, $de7f                                     ; $472c: $d2 $7f $de

	rst SubAFromDE                                          ; $472f: $df
	ld a, [hl+]                                      ; $4730: $2a
	rst SubAFromDE                                          ; $4731: $df
	inc l                                            ; $4732: $2c
	rst SubAFromDE                                          ; $4733: $df
	pop af                                           ; $4734: $f1
	ld l, a                                          ; $4735: $6f
	or b                                             ; $4736: $b0
	ld a, e                                          ; $4737: $7b
	ret nz                                           ; $4738: $c0

jr_01f_4739:
	ld [hl], e                                       ; $4739: $73
	or b                                             ; $473a: $b0

jr_01f_473b:
	rst SubAFromDE                                          ; $473b: $df
	reti                                             ; $473c: $d9


	rst SubAFromDE                                          ; $473d: $df
	pop de                                           ; $473e: $d1
	ld e, e                                          ; $473f: $5b
	ldh a, [$9e]                                     ; $4740: $f0 $9e
	ld l, l                                          ; $4742: $6d
	ccf                                              ; $4743: $3f

jr_01f_4744:
	ld [hl], b                                       ; $4744: $70
	ld [hl], a                                       ; $4745: $77
	ld b, b                                          ; $4746: $40
	rst SubAFromDE                                          ; $4747: $df
	rst SubAFromDE                                          ; $4748: $df
	sbc h                                            ; $4749: $9c
	ld [de], a                                       ; $474a: $12
	db $10                                           ; $474b: $10

jr_01f_474c:
	jr nc, jr_01f_472c                               ; $474c: $30 $de

	ld l, $df                                        ; $474e: $2e $df
	inc l                                            ; $4750: $2c
	ld a, a                                          ; $4751: $7f
	ldh a, [c]                                       ; $4752: $f2
	rst SubAFromDE                                          ; $4753: $df
	ldh a, [rPCM12]                                  ; $4754: $f0 $76
	ret nz                                           ; $4756: $c0

	ld a, a                                          ; $4757: $7f
	ld [hl-], a                                      ; $4758: $32
	ld a, a                                          ; $4759: $7f
	jr nz, jr_01f_473b                               ; $475a: $20 $df

	ld a, [hl+]                                      ; $475c: $2a
	ld a, a                                          ; $475d: $7f
	adc $7f                                          ; $475e: $ce $7f
	ld bc, $e89d                                     ; $4760: $01 $9d $e8
	ret c                                            ; $4763: $d8

	sbc $df                                          ; $4764: $de $df
	sbc d                                            ; $4766: $9a
	rst AddAOntoHL                                          ; $4767: $ef
	ld l, $30                                        ; $4768: $2e $30
	jr nc, jr_01f_479e                               ; $476a: $30 $32

	sbc $6c                                          ; $476c: $de $6c
	sbc h                                            ; $476e: $9c
	ld l, d                                          ; $476f: $6a
	ret nc                                           ; $4770: $d0

	add sp, $77                                      ; $4771: $e8 $77
	add b                                            ; $4773: $80
	rst SubAFromDE                                          ; $4774: $df
	rst AddAOntoHL                                          ; $4775: $ef

jr_01f_4776:
	rst SubAFromDE                                          ; $4776: $df
	inc [hl]                                         ; $4777: $34
	ld a, [hl]                                       ; $4778: $7e
	sbc [hl]                                         ; $4779: $9e
	sbc l                                            ; $477a: $9d
	ld l, d                                          ; $477b: $6a
	ld l, e                                          ; $477c: $6b
	ld [hl], a                                       ; $477d: $77
	ld [hl], b                                       ; $477e: $70
	rst SubAFromDE                                          ; $477f: $df
	jr nz, @+$79                                     ; $4780: $20 $77

	jr nc, jr_01f_471a                               ; $4782: $30 $96

	inc e                                            ; $4784: $1c
	ld a, [de]                                       ; $4785: $1a
	inc l                                            ; $4786: $2c
	jr z, jr_01f_47b7                                ; $4787: $28 $2e

	ld l, $2a                                        ; $4789: $2e $2a
	inc l                                            ; $478b: $2c
	jr jr_01f_4808                                   ; $478c: $18 $7a

	or b                                             ; $478e: $b0
	ld [hl], a                                       ; $478f: $77
	ld b, b                                          ; $4790: $40
	ld a, [hl]                                       ; $4791: $7e
	add d                                            ; $4792: $82
	ld a, [hl]                                       ; $4793: $7e
	or b                                             ; $4794: $b0

jr_01f_4795:
	ld a, e                                          ; $4795: $7b
	ld [hl], c                                       ; $4796: $71
	sbc d                                            ; $4797: $9a
	inc l                                            ; $4798: $2c
	ldh a, [$f0]                                     ; $4799: $f0 $f0
	add sp, -$18                                     ; $479b: $e8 $e8
	ld [hl], a                                       ; $479d: $77

jr_01f_479e:
	add b                                            ; $479e: $80
	ld a, a                                          ; $479f: $7f
	ldh a, [$7f]                                     ; $47a0: $f0 $7f
	ldh [rPCM34], a                                  ; $47a2: $e0 $77
	ld [hl], b                                       ; $47a4: $70
	ld a, a                                          ; $47a5: $7f
	or b                                             ; $47a6: $b0
	ld a, a                                          ; $47a7: $7f
	cp $77                                           ; $47a8: $fe $77
	ld d, b                                          ; $47aa: $50
	ld a, a                                          ; $47ab: $7f
	db $e4                                           ; $47ac: $e4
	ld a, [hl]                                       ; $47ad: $7e
	ld h, c                                          ; $47ae: $61
	ld a, d                                          ; $47af: $7a
	pop bc                                           ; $47b0: $c1
	sbc [hl]                                         ; $47b1: $9e
	ld l, l                                          ; $47b2: $6d
	ld l, a                                          ; $47b3: $6f
	jr nc, jr_01f_4795                               ; $47b4: $30 $df

	rst AddAOntoHL                                          ; $47b6: $ef

jr_01f_47b7:
	ld a, a                                          ; $47b7: $7f
	or d                                             ; $47b8: $b2
	ld a, a                                          ; $47b9: $7f
	ret nc                                           ; $47ba: $d0

	ld e, a                                          ; $47bb: $5f
	ld [hl], b                                       ; $47bc: $70
	rst SubAFromDE                                          ; $47bd: $df
	rst AddAOntoHL                                          ; $47be: $ef
	sbc e                                            ; $47bf: $9b
	jr nz, @+$20                                     ; $47c0: $20 $1e

	inc l                                            ; $47c2: $2c
	ld a, [hl+]                                      ; $47c3: $2a
	ld a, e                                          ; $47c4: $7b
	or b                                             ; $47c5: $b0
	ld a, d                                          ; $47c6: $7a
	ld h, b                                          ; $47c7: $60
	ld a, d                                          ; $47c8: $7a
	sub b                                            ; $47c9: $90
	ld a, e                                          ; $47ca: $7b
	ret nz                                           ; $47cb: $c0

	ld a, [hl]                                       ; $47cc: $7e
	ld h, b                                          ; $47cd: $60
	ld a, e                                          ; $47ce: $7b
	cp [hl]                                          ; $47cf: $be
	sbc [hl]                                         ; $47d0: $9e
	inc l                                            ; $47d1: $2c
	halt                                             ; $47d2: $76
	add b                                            ; $47d3: $80
	ld a, e                                          ; $47d4: $7b
	ret nz                                           ; $47d5: $c0

	ld [hl], d                                       ; $47d6: $72
	jr nc, @+$81                                     ; $47d7: $30 $7f

	cp [hl]                                          ; $47d9: $be
	halt                                             ; $47da: $76
	jr nc, jr_01f_485c                               ; $47db: $30 $7f

	ld h, e                                          ; $47dd: $63
	sbc c                                            ; $47de: $99
	ld h, $6c                                        ; $47df: $26 $6c
	ret nc                                           ; $47e1: $d0

	rst SubAFromDE                                          ; $47e2: $df
	jr z, jr_01f_4852                                ; $47e3: $28 $6d

	sub a                                            ; $47e5: $97
	nop                                              ; $47e6: $00
	rst SubAFromDE                                          ; $47e7: $df
	ret c                                            ; $47e8: $d8

	rst SubAFromDE                                          ; $47e9: $df
	ret nc                                           ; $47ea: $d0

	adc [hl]                                         ; $47eb: $8e
	rst AddAOntoHL                                          ; $47ec: $ef
	rst SubAFromDE                                          ; $47ed: $df
	rst SubAFromDE                                          ; $47ee: $df
	rst AddAOntoHL                                          ; $47ef: $ef
	ld a, [hl+]                                      ; $47f0: $2a
	ld h, $28                                        ; $47f1: $26 $28
	inc l                                            ; $47f3: $2c
	ld l, d                                          ; $47f4: $6a
	ld l, h                                          ; $47f5: $6c
	ld l, h                                          ; $47f6: $6c
	ld l, d                                          ; $47f7: $6a
	add sp, -$10                                     ; $47f8: $e8 $f0
	add sp, -$10                                     ; $47fa: $e8 $f0
	rst AddAOntoHL                                          ; $47fc: $ef
	ld a, e                                          ; $47fd: $7b
	rst AddAOntoHL                                          ; $47fe: $ef
	sbc d                                            ; $47ff: $9a
	inc l                                            ; $4800: $2c
	ld a, [hl+]                                      ; $4801: $2a
	jr z, jr_01f_482a                                ; $4802: $28 $26

	ld l, d                                          ; $4804: $6a
	ld a, e                                          ; $4805: $7b
	rst AddAOntoHL                                          ; $4806: $ef
	sbc e                                            ; $4807: $9b

jr_01f_4808:
	jr nz, jr_01f_4822                               ; $4808: $20 $18

	jr nz, @+$1a                                     ; $480a: $20 $18

	ld h, a                                          ; $480c: $67
	ldh a, [$df]                                     ; $480d: $f0 $df
	ld a, [hl+]                                      ; $480f: $2a
	rst SubAFromDE                                          ; $4810: $df
	inc l                                            ; $4811: $2c
	sbc e                                            ; $4812: $9b
	ld [$0800], sp                                   ; $4813: $08 $00 $08
	nop                                              ; $4816: $00
	ld e, e                                          ; $4817: $5b
	ldh a, [$9a]                                     ; $4818: $f0 $9a
	dec l                                            ; $481a: $2d
	ret nc                                           ; $481b: $d0

	ret c                                            ; $481c: $d8

	ret nc                                           ; $481d: $d0

	ret c                                            ; $481e: $d8

	ld a, e                                          ; $481f: $7b
	pop bc                                           ; $4820: $c1
	sbc d                                            ; $4821: $9a

jr_01f_4822:
	rst AddAOntoHL                                          ; $4822: $ef
	jr nc, jr_01f_4853                               ; $4823: $30 $2e

	inc [hl]                                         ; $4825: $34
	ld [hl-], a                                      ; $4826: $32
	ld a, e                                          ; $4827: $7b
	pop bc                                           ; $4828: $c1
	ld a, a                                          ; $4829: $7f

jr_01f_482a:
	ret nz                                           ; $482a: $c0

	ld a, a                                          ; $482b: $7f
	pop bc                                           ; $482c: $c1
	ld a, a                                          ; $482d: $7f
	ret nz                                           ; $482e: $c0

	ld a, a                                          ; $482f: $7f
	ldh a, [hDisp1_BGP]                                     ; $4830: $f0 $92
	rst SubAFromDE                                          ; $4832: $df
	inc [hl]                                         ; $4833: $34
	jr nc, jr_01f_4868                               ; $4834: $30 $32

	ld l, $6a                                        ; $4836: $2e $6a
	ld l, h                                          ; $4838: $6c
	ld l, d                                          ; $4839: $6a
	ld l, h                                          ; $483a: $6c
	jr nz, jr_01f_485d                               ; $483b: $20 $20

	jr jr_01f_4857                                   ; $483d: $18 $18

	ld h, a                                          ; $483f: $67
	ldh a, [$7f]                                     ; $4840: $f0 $7f
	pop de                                           ; $4842: $d1
	ld a, a                                          ; $4843: $7f
	cp $67                                           ; $4844: $fe $67
	ret nz                                           ; $4846: $c0

	ld a, a                                          ; $4847: $7f
	jp nc, $ce7f                                     ; $4848: $d2 $7f $ce

	ld [hl], a                                       ; $484b: $77
	ret nz                                           ; $484c: $c0

	sbc e                                            ; $484d: $9b
	pop de                                           ; $484e: $d1
	reti                                             ; $484f: $d9


	reti                                             ; $4850: $d9


	pop de                                           ; $4851: $d1

jr_01f_4852:
	ld [hl], a                                       ; $4852: $77

jr_01f_4853:
	ldh a, [$9b]                                     ; $4853: $f0 $9b
	inc a                                            ; $4855: $3c
	ld a, [hl-]                                      ; $4856: $3a

jr_01f_4857:
	ld [hl], $38                                     ; $4857: $36 $38
	ld [hl], a                                       ; $4859: $77
	sub b                                            ; $485a: $90
	rst SubAFromDE                                          ; $485b: $df

jr_01f_485c:
	jp hl                                            ; $485c: $e9


jr_01f_485d:
	rst SubAFromDE                                          ; $485d: $df
	pop af                                           ; $485e: $f1
	ld [hl], a                                       ; $485f: $77
	ret nc                                           ; $4860: $d0

	sbc e                                            ; $4861: $9b
	inc a                                            ; $4862: $3c
	jr c, @+$3c                                      ; $4863: $38 $3a

	ld [hl], $77                                     ; $4865: $36 $77
	ret nz                                           ; $4867: $c0

jr_01f_4868:
	rst SubAFromDE                                          ; $4868: $df
	rra                                              ; $4869: $1f
	rst SubAFromDE                                          ; $486a: $df
	rla                                              ; $486b: $17
	ld h, a                                          ; $486c: $67
	ldh a, [rPCM34]                                  ; $486d: $f0 $77
	ret nz                                           ; $486f: $c0

	sbc e                                            ; $4870: $9b
	rlca                                             ; $4871: $07
	rst $38                                          ; $4872: $ff
	rlca                                             ; $4873: $07
	rst $38                                          ; $4874: $ff
	ld l, a                                          ; $4875: $6f
	ret nc                                           ; $4876: $d0

	sbc l                                            ; $4877: $9d
	jr c, @+$38                                      ; $4878: $38 $36

	ld [hl], a                                       ; $487a: $77
	ret nz                                           ; $487b: $c0

	sbc h                                            ; $487c: $9c
	nop                                              ; $487d: $00
	rst SubAFromDE                                          ; $487e: $df
	ldh a, [$df]                                     ; $487f: $f0 $df
	add sp, -$71                                     ; $4881: $e8 $8f
	rst SubAFromDE                                          ; $4883: $df
	rst AddAOntoHL                                          ; $4884: $ef
	rst AddAOntoHL                                          ; $4885: $ef
	rst SubAFromDE                                          ; $4886: $df
	jr nc, jr_01f_48b1                               ; $4887: $30 $28

	ld a, [hl+]                                      ; $4889: $2a
	ld [hl-], a                                      ; $488a: $32
	ld l, [hl]                                       ; $488b: $6e
	ld l, h                                          ; $488c: $6c
	ld l, h                                          ; $488d: $6c
	ld l, [hl]                                       ; $488e: $6e
	ret nc                                           ; $488f: $d0

	ret c                                            ; $4890: $d8

	jr nz, jr_01f_48ab                               ; $4891: $20 $18

	db $dd                                           ; $4893: $dd
	rst SubAFromDE                                          ; $4894: $df
	sub e                                            ; $4895: $93
	ld [hl-], a                                      ; $4896: $32
	jr nc, jr_01f_48cb                               ; $4897: $30 $32

	jr nc, jr_01f_4909                               ; $4899: $30 $6e

	ld l, [hl]                                       ; $489b: $6e
	ld l, $2e                                        ; $489c: $2e $2e
	ld [$0800], sp                                   ; $489e: $08 $00 $08
	nop                                              ; $48a1: $00
	ld a, e                                          ; $48a2: $7b
	pop hl                                           ; $48a3: $e1
	sbc d                                            ; $48a4: $9a
	rst SubAFromDE                                          ; $48a5: $df
	ld d, $14                                        ; $48a6: $16 $14
	ld [de], a                                       ; $48a8: $12
	db $10                                           ; $48a9: $10
	db $dd                                           ; $48aa: $dd

jr_01f_48ab:
	jr z, jr_01f_492c                                ; $48ab: $28 $7f

	ldh [c], a                                       ; $48ad: $e2
	ld a, a                                          ; $48ae: $7f
	sbc $dd                                          ; $48af: $de $dd

jr_01f_48b1:
	rst AddAOntoHL                                          ; $48b1: $ef
	add e                                            ; $48b2: $83
	ld a, [hl+]                                      ; $48b3: $2a
	jr z, jr_01f_48e0                                ; $48b4: $28 $2a

	jr z, jr_01f_48e4                                ; $48b6: $28 $2c

	inc l                                            ; $48b8: $2c
	ld l, h                                          ; $48b9: $6c
	ld l, l                                          ; $48ba: $6d
	pop af                                           ; $48bb: $f1
	pop af                                           ; $48bc: $f1
	jp hl                                            ; $48bd: $e9


	jp hl                                            ; $48be: $e9


	rst AddAOntoHL                                          ; $48bf: $ef
	rst SubAFromDE                                          ; $48c0: $df
	rst AddAOntoHL                                          ; $48c1: $ef
	rst SubAFromDE                                          ; $48c2: $df
	inc a                                            ; $48c3: $3c
	jr c, jr_01f_4904                                ; $48c4: $38 $3e

	ld a, [hl-]                                      ; $48c6: $3a
	ld l, h                                          ; $48c7: $6c
	ld l, [hl]                                       ; $48c8: $6e
	ld l, h                                          ; $48c9: $6c
	ld l, [hl]                                       ; $48ca: $6e

jr_01f_48cb:
	pop de                                           ; $48cb: $d1
	reti                                             ; $48cc: $d9


	rra                                              ; $48cd: $1f
	rla                                              ; $48ce: $17
	db $dd                                           ; $48cf: $dd
	rst AddAOntoHL                                          ; $48d0: $ef
	sub e                                            ; $48d1: $93
	ld a, $3c                                        ; $48d2: $3e $3c
	ld a, $3c                                        ; $48d4: $3e $3c
	ld l, h                                          ; $48d6: $6c
	ld l, h                                          ; $48d7: $6c
	inc l                                            ; $48d8: $2c
	inc l                                            ; $48d9: $2c
	ld [$d100], sp                                   ; $48da: $08 $00 $d1
	reti                                             ; $48dd: $d9


	ld [hl], a                                       ; $48de: $77
	ret nz                                           ; $48df: $c0

jr_01f_48e0:
	sub e                                            ; $48e0: $93
	ld c, $0c                                        ; $48e1: $0e $0c
	ld a, [hl-]                                      ; $48e3: $3a

jr_01f_48e4:
	jr c, @+$2a                                      ; $48e4: $38 $28

	jr z, jr_01f_4956                                ; $48e6: $28 $6e

	ld l, [hl]                                       ; $48e8: $6e
	rra                                              ; $48e9: $1f
	rla                                              ; $48ea: $17
	ld [$dd00], sp                                   ; $48eb: $08 $00 $dd
	rst SubAFromDE                                          ; $48ee: $df
	ld a, a                                          ; $48ef: $7f
	ldh a, [c]                                       ; $48f0: $f2
	sbc c                                            ; $48f1: $99
	ld a, [bc]                                       ; $48f2: $0a
	ld [$2e2e], sp                                   ; $48f3: $08 $2e $2e
	jr z, jr_01f_4921                                ; $48f6: $28 $29

	ld b, a                                          ; $48f8: $47
	ret nz                                           ; $48f9: $c0

	ld a, a                                          ; $48fa: $7f
	ldh [rPCM34], a                                  ; $48fb: $e0 $77
	ret nz                                           ; $48fd: $c0

	rst SubAFromDE                                          ; $48fe: $df
	rst SubAFromDE                                          ; $48ff: $df
	ld a, a                                          ; $4900: $7f
	jp nz, $de7f                                     ; $4901: $c2 $7f $de

jr_01f_4904:
	rst SubAFromDE                                          ; $4904: $df
	inc l                                            ; $4905: $2c
	rst SubAFromDE                                          ; $4906: $df
	ld l, $df                                        ; $4907: $2e $df

jr_01f_4909:
	reti                                             ; $4909: $d9


	rst SubAFromDE                                          ; $490a: $df
	pop de                                           ; $490b: $d1
	ld d, a                                          ; $490c: $57
	ldh [$67], a                                     ; $490d: $e0 $67
	ld [hl], b                                       ; $490f: $70
	ld a, a                                          ; $4910: $7f
	or b                                             ; $4911: $b0
	ld a, a                                          ; $4912: $7f
	ret nz                                           ; $4913: $c0

	sbc $28                                          ; $4914: $de $28
	sbc [hl]                                         ; $4916: $9e
	add hl, hl                                       ; $4917: $29
	and d                                            ; $4918: $a2
	nop                                              ; $4919: $00
	rst SubAFromDE                                          ; $491a: $df
	ld [$8fff], sp                                   ; $491b: $08 $ff $8f
	rst SubAFromDE                                          ; $491e: $df
	rst AddAOntoHL                                          ; $491f: $ef
	rst AddAOntoHL                                          ; $4920: $ef

jr_01f_4921:
	rst SubAFromDE                                          ; $4921: $df
	ld [hl-], a                                      ; $4922: $32
	ld a, [hl+]                                      ; $4923: $2a
	jr z, jr_01f_4956                                ; $4924: $28 $30

	ld l, $2c                                        ; $4926: $2e $2c
	inc l                                            ; $4928: $2c
	ld l, $d0                                        ; $4929: $2e $d0
	ret c                                            ; $492b: $d8

jr_01f_492c:
	jr nz, jr_01f_4946                               ; $492c: $20 $18

	db $dd                                           ; $492e: $dd
	rst SubAFromDE                                          ; $492f: $df
	sub e                                            ; $4930: $93
	ld [hl-], a                                      ; $4931: $32
	jr nc, @+$34                                     ; $4932: $30 $32

	jr nc, jr_01f_49a4                               ; $4934: $30 $6e

	ld l, [hl]                                       ; $4936: $6e
	ld l, $2e                                        ; $4937: $2e $2e
	jr nz, jr_01f_4953                               ; $4939: $20 $18

	ret nc                                           ; $493b: $d0

	ret c                                            ; $493c: $d8

	db $dd                                           ; $493d: $dd
	rst AddAOntoHL                                          ; $493e: $ef
	ld a, a                                          ; $493f: $7f
	pop hl                                           ; $4940: $e1
	ld a, a                                          ; $4941: $7f
	cp $df                                           ; $4942: $fe $df
	inc l                                            ; $4944: $2c
	rst SubAFromDE                                          ; $4945: $df

jr_01f_4946:
	ld l, h                                          ; $4946: $6c
	sbc e                                            ; $4947: $9b
	add sp, -$10                                     ; $4948: $e8 $f0
	add sp, -$10                                     ; $494a: $e8 $f0
	ld a, e                                          ; $494c: $7b
	pop de                                           ; $494d: $d1
	add d                                            ; $494e: $82
	rst SubAFromDE                                          ; $494f: $df
	ld a, [hl+]                                      ; $4950: $2a
	jr z, jr_01f_496d                                ; $4951: $28 $1a

jr_01f_4953:
	jr jr_01f_49c1                                   ; $4953: $18 $6c

	ld l, h                                          ; $4955: $6c

jr_01f_4956:
	ld l, [hl]                                       ; $4956: $6e
	ld l, a                                          ; $4957: $6f
	rla                                              ; $4958: $17
	rla                                              ; $4959: $17
	rra                                              ; $495a: $1f
	rra                                              ; $495b: $1f
	rst AddAOntoHL                                          ; $495c: $ef
	rst SubAFromDE                                          ; $495d: $df
	rst AddAOntoHL                                          ; $495e: $ef
	rst SubAFromDE                                          ; $495f: $df
	inc a                                            ; $4960: $3c
	jr c, jr_01f_49a1                                ; $4961: $38 $3e

	ld a, [hl-]                                      ; $4963: $3a
	inc l                                            ; $4964: $2c
	ld l, $2c                                        ; $4965: $2e $2c
	ld l, $d1                                        ; $4967: $2e $d1
	reti                                             ; $4969: $d9


	ld [$dd00], sp                                   ; $496a: $08 $00 $dd

jr_01f_496d:
	rst AddAOntoHL                                          ; $496d: $ef
	sub a                                            ; $496e: $97
	ld a, $3c                                        ; $496f: $3e $3c
	ld a, $3c                                        ; $4971: $3e $3c
	ld l, h                                          ; $4973: $6c
	ld l, h                                          ; $4974: $6c
	inc l                                            ; $4975: $2c
	inc l                                            ; $4976: $2c
	ld h, a                                          ; $4977: $67
	ret nc                                           ; $4978: $d0

	ld a, a                                          ; $4979: $7f
	push hl                                          ; $497a: $e5
	sbc l                                            ; $497b: $9d
	ld e, $1c                                        ; $497c: $1e $1c
	ld a, e                                          ; $497e: $7b
	ret nc                                           ; $497f: $d0

	sbc [hl]                                         ; $4980: $9e
	ld l, [hl]                                       ; $4981: $6e
	ld [hl], a                                       ; $4982: $77
	ldh [$dd], a                                     ; $4983: $e0 $dd
	rst SubAFromDE                                          ; $4985: $df
	sbc e                                            ; $4986: $9b
	ld a, [hl-]                                      ; $4987: $3a
	jr c, jr_01f_49c4                                ; $4988: $38 $3a

	jr c, jr_01f_4a07                                ; $498a: $38 $7b

	and b                                            ; $498c: $a0
	sbc [hl]                                         ; $498d: $9e
	cpl                                              ; $498e: $2f
	ld [hl], a                                       ; $498f: $77
	add b                                            ; $4990: $80
	ld [hl], a                                       ; $4991: $77
	ret nz                                           ; $4992: $c0

	ld a, a                                          ; $4993: $7f
	jp nz, $be7f                                     ; $4994: $c2 $7f $be

	ld [hl], a                                       ; $4997: $77
	ret nz                                           ; $4998: $c0

	ld e, a                                          ; $4999: $5f
	ret nc                                           ; $499a: $d0

	sbc l                                            ; $499b: $9d
	ld [hl+], a                                      ; $499c: $22
	jr nz, jr_01f_4a16                               ; $499d: $20 $77

	ret nc                                           ; $499f: $d0

	sbc e                                            ; $49a0: $9b

jr_01f_49a1:
	rra                                              ; $49a1: $1f
	rla                                              ; $49a2: $17
	rra                                              ; $49a3: $1f

jr_01f_49a4:
	rla                                              ; $49a4: $17
	ld [hl], a                                       ; $49a5: $77
	ldh a, [$7f]                                     ; $49a6: $f0 $7f
	or d                                             ; $49a8: $b2
	ld a, a                                          ; $49a9: $7f
	ret nc                                           ; $49aa: $d0

	ld a, e                                          ; $49ab: $7b
	ld h, c                                          ; $49ac: $61
	sbc d                                            ; $49ad: $9a
	ld l, $d9                                        ; $49ae: $2e $d9
	reti                                             ; $49b0: $d9


	pop de                                           ; $49b1: $d1
	pop de                                           ; $49b2: $d1
	ld h, a                                          ; $49b3: $67
	sub b                                            ; $49b4: $90
	ld a, a                                          ; $49b5: $7f
	pop hl                                           ; $49b6: $e1
	sbc l                                            ; $49b7: $9d
	ld l, h                                          ; $49b8: $6c
	ld l, a                                          ; $49b9: $6f
	ld [hl], e                                       ; $49ba: $73
	ld [bc], a                                       ; $49bb: $02
	rst $38                                          ; $49bc: $ff
	rst SubAFromDE                                          ; $49bd: $df
	dec a                                            ; $49be: $3d
	add b                                            ; $49bf: $80
	inc de                                           ; $49c0: $13

jr_01f_49c1:
	rra                                              ; $49c1: $1f
	ld sp, hl                                        ; $49c2: $f9
	rst $38                                          ; $49c3: $ff

jr_01f_49c4:
	ld b, a                                          ; $49c4: $47
	ld a, a                                          ; $49c5: $7f
	ld [hl-], a                                      ; $49c6: $32
	ccf                                              ; $49c7: $3f
	dec h                                            ; $49c8: $25
	ccf                                              ; $49c9: $3f
	ld b, h                                          ; $49ca: $44
	ld a, a                                          ; $49cb: $7f
	ld c, h                                          ; $49cc: $4c
	ld a, a                                          ; $49cd: $7f
	ld c, [hl]                                       ; $49ce: $4e
	ld a, e                                          ; $49cf: $7b
	ccf                                              ; $49d0: $3f
	dec a                                            ; $49d1: $3d
	dec hl                                           ; $49d2: $2b
	ld [hl], $3f                                     ; $49d3: $36 $3f
	ld h, $1f                                        ; $49d5: $26 $1f
	ld d, $0f                                        ; $49d7: $16 $0f
	add hl, bc                                       ; $49d9: $09
	rlca                                             ; $49da: $07
	inc b                                            ; $49db: $04
	nop                                              ; $49dc: $00
	nop                                              ; $49dd: $00
	ret nz                                           ; $49de: $c0

	add b                                            ; $49df: $80
	ret nz                                           ; $49e0: $c0

	inc [hl]                                         ; $49e1: $34
	db $f4                                           ; $49e2: $f4
	adc [hl]                                         ; $49e3: $8e
	cp $fc                                           ; $49e4: $fe $fc
	db $fc                                           ; $49e6: $fc
	adc d                                            ; $49e7: $8a
	cp $26                                           ; $49e8: $fe $26
	cp $96                                           ; $49ea: $fe $96
	cp $d5                                           ; $49ec: $fe $d5
	rst $38                                          ; $49ee: $ff
	db $fd                                           ; $49ef: $fd
	cp a                                             ; $49f0: $bf
	ld a, [$be6e]                                    ; $49f1: $fa $6e $be
	ld [hl], d                                       ; $49f4: $72
	cp $62                                           ; $49f5: $fe $62
	db $fc                                           ; $49f7: $fc
	ld h, h                                          ; $49f8: $64
	ld hl, sp-$78                                    ; $49f9: $f8 $88
	ldh a, [rAUD1SWEEP]                              ; $49fb: $f0 $10
	rrca                                             ; $49fd: $0f
	dec bc                                           ; $49fe: $0b
	sbc e                                            ; $49ff: $9b
	rra                                              ; $4a00: $1f
	dec d                                            ; $4a01: $15
	rra                                              ; $4a02: $1f
	inc de                                           ; $4a03: $13
	ld l, a                                          ; $4a04: $6f
	db $fc                                           ; $4a05: $fc
	sbc e                                            ; $4a06: $9b

jr_01f_4a07:
	rrca                                             ; $4a07: $0f
	dec c                                            ; $4a08: $0d
	rrca                                             ; $4a09: $0f
	add hl, bc                                       ; $4a0a: $09
	ld a, e                                          ; $4a0b: $7b
	cp $8a                                           ; $4a0c: $fe $8a
	dec bc                                           ; $4a0e: $0b
	rlca                                             ; $4a0f: $07
	rlca                                             ; $4a10: $07
	inc bc                                           ; $4a11: $03
	inc bc                                           ; $4a12: $03
	rlca                                             ; $4a13: $07
	rlca                                             ; $4a14: $07
	rrca                                             ; $4a15: $0f

jr_01f_4a16:
	rrca                                             ; $4a16: $0f
	ld a, a                                          ; $4a17: $7f
	ld a, a                                          ; $4a18: $7f
	nop                                              ; $4a19: $00
	nop                                              ; $4a1a: $00
	ld hl, sp-$18                                    ; $4a1b: $f8 $e8
	db $fc                                           ; $4a1d: $fc
	ld d, h                                          ; $4a1e: $54
	cp $62                                           ; $4a1f: $fe $62
	cp $52                                           ; $4a21: $fe $52
	ld a, e                                          ; $4a23: $7b
	ret nc                                           ; $4a24: $d0

	sbc d                                            ; $4a25: $9a
	ld d, h                                          ; $4a26: $54
	db $fc                                           ; $4a27: $fc
	call z, $c8f8                                    ; $4a28: $cc $f8 $c8
	ld a, e                                          ; $4a2b: $7b
	cp $94                                           ; $4a2c: $fe $94
	ld c, b                                          ; $4a2e: $48
	ld hl, sp+$78                                    ; $4a2f: $f8 $78
	ld h, b                                          ; $4a31: $60
	ld h, b                                          ; $4a32: $60
	ld [hl], b                                       ; $4a33: $70
	ld [hl], b                                       ; $4a34: $70
	ld a, b                                          ; $4a35: $78
	ld a, b                                          ; $4a36: $78
	rst $38                                          ; $4a37: $ff
	rst $38                                          ; $4a38: $ff
	ld sp, hl                                        ; $4a39: $f9
	rst SubAFromDE                                          ; $4a3a: $df
	inc bc                                           ; $4a3b: $03
	add a                                            ; $4a3c: $87
	inc a                                            ; $4a3d: $3c
	ccf                                              ; $4a3e: $3f
	ld de, $661f                                     ; $4a3f: $11 $1f $66
	ld a, a                                          ; $4a42: $7f
	adc d                                            ; $4a43: $8a
	rst $38                                          ; $4a44: $ff
	ld d, e                                          ; $4a45: $53
	ld a, a                                          ; $4a46: $7f
	ld d, h                                          ; $4a47: $54
	ld a, a                                          ; $4a48: $7f
	ld h, h                                          ; $4a49: $64
	ld a, a                                          ; $4a4a: $7f
	ld b, h                                          ; $4a4b: $44
	ld a, a                                          ; $4a4c: $7f
	ld b, [hl]                                       ; $4a4d: $46
	ld a, a                                          ; $4a4e: $7f
	ld h, $3f                                        ; $4a4f: $26 $3f
	dec l                                            ; $4a51: $2d
	dec sp                                           ; $4a52: $3b
	rlca                                             ; $4a53: $07
	dec b                                            ; $4a54: $05
	ei                                               ; $4a55: $fb
	rst SubAFromDE                                          ; $4a56: $df
	ldh a, [hDisp0_OBP1]                                     ; $4a57: $f0 $87
	ld [$8cf8], sp                                   ; $4a59: $08 $f8 $8c
	db $fc                                           ; $4a5c: $fc
	ld [hl], d                                       ; $4a5d: $72
	cp $9a                                           ; $4a5e: $fe $9a
	cp $05                                           ; $4a60: $fe $05
	rst $38                                          ; $4a62: $ff
	and l                                            ; $4a63: $a5
	rst $38                                          ; $4a64: $ff
	sub l                                            ; $4a65: $95
	rst $38                                          ; $4a66: $ff
	push de                                          ; $4a67: $d5
	rst $38                                          ; $4a68: $ff
	jp z, $e6fe                                      ; $4a69: $ca $fe $e6

	cp d                                             ; $4a6c: $ba
	ld a, b                                          ; $4a6d: $78
	adc b                                            ; $4a6e: $88
	db $fc                                           ; $4a6f: $fc
	sbc h                                            ; $4a70: $9c
	ld h, e                                          ; $4a71: $63
	add b                                            ; $4a72: $80
	sbc [hl]                                         ; $4a73: $9e
	dec de                                           ; $4a74: $1b
	ld [hl], e                                       ; $4a75: $73
	add h                                            ; $4a76: $84
	ld c, e                                          ; $4a77: $4b
	add d                                            ; $4a78: $82
	rst $38                                          ; $4a79: $ff
	sbc l                                            ; $4a7a: $9d
	db $fc                                           ; $4a7b: $fc
	db $e4                                           ; $4a7c: $e4
	ld [hl], a                                       ; $4a7d: $77
	add h                                            ; $4a7e: $84
	ld a, a                                          ; $4a7f: $7f
	db $fc                                           ; $4a80: $fc
	ld a, e                                          ; $4a81: $7b
	ld d, d                                          ; $4a82: $52
	ld [hl], a                                       ; $4a83: $77
	add h                                            ; $4a84: $84
	dec sp                                           ; $4a85: $3b
	add d                                            ; $4a86: $82
	rst SubAFromDE                                          ; $4a87: $df
	add hl, bc                                       ; $4a88: $09
	add b                                            ; $4a89: $80
	ld d, $1f                                        ; $4a8a: $16 $1f
	ld de, $281f                                     ; $4a8c: $11 $1f $28
	ccf                                              ; $4a8f: $3f
	ld d, h                                          ; $4a90: $54
	ld a, a                                          ; $4a91: $7f
	ld l, e                                          ; $4a92: $6b
	ld a, a                                          ; $4a93: $7f
	ld c, c                                          ; $4a94: $49

Jump_01f_4a95:
	ld a, a                                          ; $4a95: $7f
	ld e, b                                          ; $4a96: $58
	ld a, a                                          ; $4a97: $7f
	ld e, [hl]                                       ; $4a98: $5e
	ld [hl], a                                       ; $4a99: $77
	ccf                                              ; $4a9a: $3f
	dec [hl]                                         ; $4a9b: $35
	rra                                              ; $4a9c: $1f
	ld e, $3b                                        ; $4a9d: $1e $3b
	ld h, $3f                                        ; $4a9f: $26 $3f
	inc h                                            ; $4aa1: $24
	rra                                              ; $4aa2: $1f
	db $10                                           ; $4aa3: $10
	rrca                                             ; $4aa4: $0f

jr_01f_4aa5:
	ld [rRAMG], sp                                   ; $4aa5: $08 $00 $00
	ret nc                                           ; $4aa8: $d0

	sbc c                                            ; $4aa9: $99
	ret nc                                           ; $4aaa: $d0

	jr z, jr_01f_4aa5                                ; $4aab: $28 $f8

	inc d                                            ; $4aad: $14
	db $fc                                           ; $4aae: $fc
	add h                                            ; $4aaf: $84
	sbc $fc                                          ; $4ab0: $de $fc
	adc e                                            ; $4ab2: $8b
	add [hl]                                         ; $4ab3: $86
	cp $01                                           ; $4ab4: $fe $01
	rst $38                                          ; $4ab6: $ff
	call nz, $23ff                                   ; $4ab7: $c4 $ff $23
	rst $38                                          ; $4aba: $ff
	ld [de], a                                       ; $4abb: $12
	cp $32                                           ; $4abc: $fe $32
	cp $f2                                           ; $4abe: $fe $f2
	sbc $f4                                          ; $4ac0: $de $f4
	inc e                                            ; $4ac2: $1c
	add sp, $38                                      ; $4ac3: $e8 $38
	ldh a, [rSVBK]                                   ; $4ac5: $f0 $70
	ld a, e                                          ; $4ac7: $7b
	sub d                                            ; $4ac8: $92
	sbc b                                            ; $4ac9: $98
	ld [bc], a                                       ; $4aca: $02
	rlca                                             ; $4acb: $07
	inc b                                            ; $4acc: $04
	rlca                                             ; $4acd: $07
	inc b                                            ; $4ace: $04
	rrca                                             ; $4acf: $0f
	ld [$8277], sp                                   ; $4ad0: $08 $77 $82
	sub e                                            ; $4ad3: $93
	rlca                                             ; $4ad4: $07
	ld b, $03                                        ; $4ad5: $06 $03
	ld [bc], a                                       ; $4ad7: $02
	inc bc                                           ; $4ad8: $03
	inc bc                                           ; $4ad9: $03
	dec de                                           ; $4ada: $1b
	dec de                                           ; $4adb: $1b
	rra                                              ; $4adc: $1f
	rra                                              ; $4add: $1f

Jump_01f_4ade:
	ld c, $0e                                        ; $4ade: $0e $0e
	ld l, a                                          ; $4ae0: $6f
	add b                                            ; $4ae1: $80
	rst SubAFromDE                                          ; $4ae2: $df
	ret nz                                           ; $4ae3: $c0

	sub l                                            ; $4ae4: $95
	ldh [rAUD4LEN], a                                ; $4ae5: $e0 $20
	ldh a, [rAUD1SWEEP]                              ; $4ae7: $f0 $10
	ld hl, sp-$78                                    ; $4ae9: $f8 $88
	ld hl, sp-$58                                    ; $4aeb: $f8 $a8
	ld hl, sp+$28                                    ; $4aed: $f8 $28
	ld a, e                                          ; $4aef: $7b
	ld hl, sp+$7f                                    ; $4af0: $f8 $7f
	add hl, sp                                       ; $4af2: $39
	sub [hl]                                         ; $4af3: $96
	ld [$30f0], sp                                   ; $4af4: $08 $f0 $30
	ld hl, sp-$08                                    ; $4af7: $f8 $f8
	jr c, jr_01f_4b33                                ; $4af9: $38 $38

	ld [hl], b                                       ; $4afb: $70
	ld [hl], b                                       ; $4afc: $70
	ld l, a                                          ; $4afd: $6f
	add b                                            ; $4afe: $80
	add e                                            ; $4aff: $83
	ld a, b                                          ; $4b00: $78
	ld c, b                                          ; $4b01: $48
	ld a, h                                          ; $4b02: $7c
	ld h, h                                          ; $4b03: $64
	db $fc                                           ; $4b04: $fc
	and h                                            ; $4b05: $a4
	cp $a2                                           ; $4b06: $fe $a2
	cp $c2                                           ; $4b08: $fe $c2
	db $fc                                           ; $4b0a: $fc
	call nz, $acfc                                   ; $4b0b: $c4 $fc $ac
	db $fc                                           ; $4b0e: $fc
	sub h                                            ; $4b0f: $94
	cp $82                                           ; $4b10: $fe $82
	ld a, [hl]                                       ; $4b12: $7e
	ld b, d                                          ; $4b13: $42
	ld a, [hl]                                       ; $4b14: $7e
	ld b, d                                          ; $4b15: $42
	inc a                                            ; $4b16: $3c
	inc a                                            ; $4b17: $3c
	inc e                                            ; $4b18: $1c
	inc e                                            ; $4b19: $1c
	ld a, h                                          ; $4b1a: $7c
	ld a, h                                          ; $4b1b: $7c
	ld [hl], a                                       ; $4b1c: $77
	sbc $73                                          ; $4b1d: $de $73
	and b                                            ; $4b1f: $a0
	sbc [hl]                                         ; $4b20: $9e
	dec b                                            ; $4b21: $05
	ld l, a                                          ; $4b22: $6f
	cp $de                                           ; $4b23: $fe $de
	inc bc                                           ; $4b25: $03
	ld a, e                                          ; $4b26: $7b
	and d                                            ; $4b27: $a2
	rst SubAFromDE                                          ; $4b28: $df
	rlca                                             ; $4b29: $07
	rst SubAFromDE                                          ; $4b2a: $df
	scf                                              ; $4b2b: $37
	rst SubAFromDE                                          ; $4b2c: $df
	ld a, $df                                        ; $4b2d: $3e $df
	inc e                                            ; $4b2f: $1c
	ld l, a                                          ; $4b30: $6f
	ret nz                                           ; $4b31: $c0

	ld a, e                                          ; $4b32: $7b

jr_01f_4b33:
	and b                                            ; $4b33: $a0
	sbc h                                            ; $4b34: $9c
	and b                                            ; $4b35: $a0
	ldh a, [$50]                                     ; $4b36: $f0 $50
	ld a, e                                          ; $4b38: $7b
	and b                                            ; $4b39: $a0
	ld a, a                                          ; $4b3a: $7f
	jr z, jr_01f_4bbb                                ; $4b3b: $28 $7e

	ld [hl], d                                       ; $4b3d: $72
	sbc [hl]                                         ; $4b3e: $9e
	ld d, b                                          ; $4b3f: $50
	ld a, e                                          ; $4b40: $7b
	and h                                            ; $4b41: $a4
	ld a, a                                          ; $4b42: $7f
	sbc [hl]                                         ; $4b43: $9e
	sbc [hl]                                         ; $4b44: $9e
	ld hl, sp+$77                                    ; $4b45: $f8 $77
	jp nz, $38df                                     ; $4b47: $c2 $df $38

	ld l, a                                          ; $4b4a: $6f
	ldh [hDisp1_WY], a                                     ; $4b4b: $e0 $95
	ld a, $22                                        ; $4b4d: $3e $22
	ld a, [hl]                                       ; $4b4f: $7e
	ld b, d                                          ; $4b50: $42
	cp $8a                                           ; $4b51: $fe $8a
	db $fc                                           ; $4b53: $fc
	db $10                                           ; $4b54: $10
	db $fc                                           ; $4b55: $fc
	inc h                                            ; $4b56: $24
	ld a, e                                          ; $4b57: $7b
	and b                                            ; $4b58: $a0
	ld a, a                                          ; $4b59: $7f
	dec sp                                           ; $4b5a: $3b
	sbc [hl]                                         ; $4b5b: $9e
	add h                                            ; $4b5c: $84
	ld l, a                                          ; $4b5d: $6f
	and b                                            ; $4b5e: $a0
	ld [hl], a                                       ; $4b5f: $77
	ret nz                                           ; $4b60: $c0

	ld l, a                                          ; $4b61: $6f
	and b                                            ; $4b62: $a0
	db $fd                                           ; $4b63: $fd
	rst SubAFromDE                                          ; $4b64: $df
	rrca                                             ; $4b65: $0f
	ld a, [hl]                                       ; $4b66: $7e
	rst $38                                          ; $4b67: $ff
	ld a, e                                          ; $4b68: $7b
	ld b, h                                          ; $4b69: $44
	sbc [hl]                                         ; $4b6a: $9e
	rlca                                             ; $4b6b: $07
	pop af                                           ; $4b6c: $f1
	rst SubAFromDE                                          ; $4b6d: $df
	ccf                                              ; $4b6e: $3f
	ei                                               ; $4b6f: $fb
	rst SubAFromDE                                          ; $4b70: $df
	ld bc, $b07a                                     ; $4b71: $01 $7a $b0
	ld a, d                                          ; $4b74: $7a
	and [hl]                                         ; $4b75: $a6
	rst SubAFromDE                                          ; $4b76: $df
	ld b, $37                                        ; $4b77: $06 $37
	ldh [$35], a                                     ; $4b79: $e0 $35
	ret nz                                           ; $4b7b: $c0

	sbc [hl]                                         ; $4b7c: $9e
	dec l                                            ; $4b7d: $2d
	ld l, c                                          ; $4b7e: $69
	ret nz                                           ; $4b7f: $c0

	sbc [hl]                                         ; $4b80: $9e
	ld b, $7a                                        ; $4b81: $06 $7a
	ld b, b                                          ; $4b83: $40
	ld de, $9ec0                                     ; $4b84: $11 $c0 $9e
	sub b                                            ; $4b87: $90
	ld [hl], d                                       ; $4b88: $72
	ld [bc], a                                       ; $4b89: $02
	sbc c                                            ; $4b8a: $99
	inc de                                           ; $4b8b: $13
	jr jr_01f_4bcd                                   ; $4b8c: $18 $3f

	jr nz, jr_01f_4bcf                               ; $4b8e: $20 $3f

	ld b, b                                          ; $4b90: $40
	ld a, d                                          ; $4b91: $7a
	ld a, [bc]                                       ; $4b92: $0a
	sub a                                            ; $4b93: $97
	ld b, $7f                                        ; $4b94: $06 $7f
	ld l, [hl]                                       ; $4b96: $6e
	ld a, e                                          ; $4b97: $7b
	cpl                                              ; $4b98: $2f
	inc a                                            ; $4b99: $3c
	rla                                              ; $4b9a: $17
	ld a, $73                                        ; $4b9b: $3e $73
	ret nz                                           ; $4b9d: $c0

	ld a, [hl]                                       ; $4b9e: $7e
	add d                                            ; $4b9f: $82
	ld [hl], c                                       ; $4ba0: $71
	add b                                            ; $4ba1: $80
	halt                                             ; $4ba2: $76
	ld [bc], a                                       ; $4ba3: $02
	adc l                                            ; $4ba4: $8d
	ld a, [bc]                                       ; $4ba5: $0a
	ld a, [$fc04]                                    ; $4ba6: $fa $04 $fc
	inc b                                            ; $4ba9: $04
	db $fc                                           ; $4baa: $fc
	ld [bc], a                                       ; $4bab: $02
	cp $82                                           ; $4bac: $fe $82
	cp $e2                                           ; $4bae: $fe $e2
	ld a, $f4                                        ; $4bb0: $3e $f4
	ld a, $fa                                        ; $4bb2: $3e $fa
	ld l, [hl]                                       ; $4bb4: $6e
	or [hl]                                          ; $4bb5: $b6
	ld a, [$c07b]                                    ; $4bb6: $fa $7b $c0
	sbc d                                            ; $4bb9: $9a
	inc b                                            ; $4bba: $04

jr_01f_4bbb:
	cp b                                             ; $4bbb: $b8
	ret z                                            ; $4bbc: $c8

	ldh a, [rAUD1SWEEP]                              ; $4bbd: $f0 $10
	ei                                               ; $4bbf: $fb
	rst SubAFromDE                                          ; $4bc0: $df
	rlca                                             ; $4bc1: $07
	sbc b                                            ; $4bc2: $98
	inc c                                            ; $4bc3: $0c
	rrca                                             ; $4bc4: $0f
	db $10                                           ; $4bc5: $10
	rra                                              ; $4bc6: $1f
	db $10                                           ; $4bc7: $10
	rra                                              ; $4bc8: $1f
	jr nz, jr_01f_4c46                               ; $4bc9: $20 $7b

	cp b                                             ; $4bcb: $b8
	ld a, a                                          ; $4bcc: $7f

jr_01f_4bcd:
	ld l, c                                          ; $4bcd: $69
	sub l                                            ; $4bce: $95

jr_01f_4bcf:
	jr nz, jr_01f_4c50                               ; $4bcf: $20 $7f

	ld d, h                                          ; $4bd1: $54
	ld e, a                                          ; $4bd2: $5f
	inc d                                            ; $4bd3: $14
	rra                                              ; $4bd4: $1f
	ld d, $1b                                        ; $4bd5: $16 $1b
	rrca                                             ; $4bd7: $0f
	ld [$c06f], sp                                   ; $4bd8: $08 $6f $c0
	ld a, d                                          ; $4bdb: $7a
	sbc d                                            ; $4bdc: $9a
	sub a                                            ; $4bdd: $97
	ld a, b                                          ; $4bde: $78
	adc h                                            ; $4bdf: $8c
	db $fc                                           ; $4be0: $fc
	ld h, h                                          ; $4be1: $64
	db $fc                                           ; $4be2: $fc
	sub d                                            ; $4be3: $92
	cp $42                                           ; $4be4: $fe $42
	ld a, d                                          ; $4be6: $7a
	ld a, $7f                                        ; $4be7: $3e $7f
	cp $93                                           ; $4be9: $fe $93
	add c                                            ; $4beb: $81
	rst $38                                          ; $4bec: $ff
	jp nc, $f6fe                                     ; $4bed: $d2 $fe $f6

	xor d                                            ; $4bf0: $aa
	db $fc                                           ; $4bf1: $fc
	add b                                            ; $4bf2: $80
	ld hl, sp+$08                                    ; $4bf3: $f8 $08
	db $fc                                           ; $4bf5: $fc
	inc e                                            ; $4bf6: $1c
	db $fd                                           ; $4bf7: $fd
	sbc e                                            ; $4bf8: $9b
	ld a, [hl+]                                      ; $4bf9: $2a
	ld l, $29                                        ; $4bfa: $2e $29
	ccf                                              ; $4bfc: $3f
	ld [hl], a                                       ; $4bfd: $77
	call nz, Call_01f_7e7f                           ; $4bfe: $c4 $7f $7e
	ld a, l                                          ; $4c01: $7d
	db $fc                                           ; $4c02: $fc
	sub e                                            ; $4c03: $93
	inc l                                            ; $4c04: $2c
	scf                                              ; $4c05: $37
	ld a, $27                                        ; $4c06: $3e $27
	ld a, $2d                                        ; $4c08: $3e $2d
	halt                                             ; $4c0a: $76
	ld e, l                                          ; $4c0b: $5d
	ld a, a                                          ; $4c0c: $7f
	ld c, h                                          ; $4c0d: $4c
	ccf                                              ; $4c0e: $3f
	jr nz, jr_01f_4c7f                               ; $4c0f: $20 $6e

	nop                                              ; $4c11: $00
	db $fd                                           ; $4c12: $fd
	rst SubAFromDE                                          ; $4c13: $df
	ldh [$9e], a                                     ; $4c14: $e0 $9e
	jr nc, jr_01f_4c93                               ; $4c16: $30 $7b

	ld a, h                                          ; $4c18: $7c
	sbc e                                            ; $4c19: $9b
	inc c                                            ; $4c1a: $0c
	db $fc                                           ; $4c1b: $fc
	ld b, $fe                                        ; $4c1c: $06 $fe
	ld [hl], a                                       ; $4c1e: $77
	ld a, b                                          ; $4c1f: $78
	ld a, [hl]                                       ; $4c20: $7e
	or a                                             ; $4c21: $b7
	sub l                                            ; $4c22: $95
	call nz, $c87c                                   ; $4c23: $c4 $7c $c8
	ld a, b                                          ; $4c26: $78
	adc b                                            ; $4c27: $88
	ld hl, sp+$10                                    ; $4c28: $f8 $10
	ldh a, [$f8]                                     ; $4c2a: $f0 $f8
	ld hl, sp+$5a                                    ; $4c2c: $f8 $5a
	ld [bc], a                                       ; $4c2e: $02
	db $fd                                           ; $4c2f: $fd
	rst SubAFromDE                                          ; $4c30: $df
	rlca                                             ; $4c31: $07
	adc e                                            ; $4c32: $8b
	jr jr_01f_4c54                                   ; $4c33: $18 $1f

	daa                                              ; $4c35: $27
	jr c, jr_01f_4c87                                ; $4c36: $38 $4f

	ld [hl], a                                       ; $4c38: $77
	ld c, b                                          ; $4c39: $48
	ld a, a                                          ; $4c3a: $7f
	sub l                                            ; $4c3b: $95
	rst $38                                          ; $4c3c: $ff
	push hl                                          ; $4c3d: $e5
	rst $38                                          ; $4c3e: $ff
	xor l                                            ; $4c3f: $ad
	cp d                                             ; $4c40: $ba
	rra                                              ; $4c41: $1f
	ld d, $0b                                        ; $4c42: $16 $0b
	ld d, $2f                                        ; $4c44: $16 $2f

jr_01f_4c46:
	ld a, $7b                                        ; $4c46: $3e $7b
	cp $9c                                           ; $4c48: $fe $9c
	add hl, sp                                       ; $4c4a: $39
	daa                                              ; $4c4b: $27
	inc a                                            ; $4c4c: $3c
	db $fd                                           ; $4c4d: $fd
	rst SubAFromDE                                          ; $4c4e: $df
	ld a, b                                          ; $4c4f: $78

jr_01f_4c50:
	add b                                            ; $4c50: $80
	add h                                            ; $4c51: $84
	db $fc                                           ; $4c52: $fc
	ldh [c], a                                       ; $4c53: $e2

jr_01f_4c54:
	ld e, $f2                                        ; $4c54: $1e $f2
	xor $19                                          ; $4c56: $ee $19
	rst FarCall                                          ; $4c58: $f7
	add hl, hl                                       ; $4c59: $29
	rst $38                                          ; $4c5a: $ff
	dec h                                            ; $4c5b: $25
	rst $38                                          ; $4c5c: $ff
	or l                                             ; $4c5d: $b5
	rst SubAFromDE                                          ; $4c5e: $df
	ld sp, hl                                        ; $4c5f: $f9
	ld l, a                                          ; $4c60: $6f
	cp l                                             ; $4c61: $bd
	ld [hl], a                                       ; $4c62: $77
	db $fd                                           ; $4c63: $fd
	ld h, a                                          ; $4c64: $67
	db $fd                                           ; $4c65: $fd
	ld h, a                                          ; $4c66: $67
	ld sp, hl                                        ; $4c67: $f9
	adc a                                            ; $4c68: $8f
	pop af                                           ; $4c69: $f1
	rra                                              ; $4c6a: $1f
	dec b                                            ; $4c6b: $05
	rlca                                             ; $4c6c: $07
	dec b                                            ; $4c6d: $05
	rlca                                             ; $4c6e: $07
	inc bc                                           ; $4c6f: $03
	sbc [hl]                                         ; $4c70: $9e
	inc bc                                           ; $4c71: $03
	db $db                                           ; $4c72: $db
	ld bc, $dff5                                     ; $4c73: $01 $f5 $df
	ld bc, $07df                                     ; $4c76: $01 $df $07
	db $fd                                           ; $4c79: $fd
	sub c                                            ; $4c7a: $91
	rst $38                                          ; $4c7b: $ff
	ld a, h                                          ; $4c7c: $7c
	rst AddAOntoHL                                          ; $4c7d: $ef
	cp d                                             ; $4c7e: $ba

jr_01f_4c7f:
	rst $38                                          ; $4c7f: $ff
	ld l, h                                          ; $4c80: $6c
	rst AddAOntoHL                                          ; $4c81: $ef
	cp d                                             ; $4c82: $ba
	rst AddAOntoHL                                          ; $4c83: $ef
	ld a, h                                          ; $4c84: $7c
	rst $38                                          ; $4c85: $ff
	ld sp, hl                                        ; $4c86: $f9

jr_01f_4c87:
	rst $38                                          ; $4c87: $ff
	sub c                                            ; $4c88: $91
	ld l, a                                          ; $4c89: $6f
	cp $de                                           ; $4c8a: $fe $de
	cp $9d                                           ; $4c8c: $fe $9d
	sub d                                            ; $4c8e: $92
	ld hl, $ffde                                     ; $4c8f: $21 $de $ff
	db $fd                                           ; $4c92: $fd

jr_01f_4c93:
	sbc l                                            ; $4c93: $9d
	and b                                            ; $4c94: $a0
	ldh [rPCM34], a                                  ; $4c95: $e0 $77
	cp $df                                           ; $4c97: $fe $df
	ret nz                                           ; $4c99: $c0

	rst SubAFromDE                                          ; $4c9a: $df
	add b                                            ; $4c9b: $80
	pop af                                           ; $4c9c: $f1
	ld d, a                                          ; $4c9d: $57
	xor $df                                          ; $4c9e: $ee $df
	rlca                                             ; $4ca0: $07
	sbc c                                            ; $4ca1: $99
	inc c                                            ; $4ca2: $0c
	rrca                                             ; $4ca3: $0f
	db $10                                           ; $4ca4: $10
	rra                                              ; $4ca5: $1f
	jr nz, @+$41                                     ; $4ca6: $20 $3f

	ld [hl], a                                       ; $4ca8: $77
	cp $7f                                           ; $4ca9: $fe $7f
	ld d, [hl]                                       ; $4cab: $56
	sbc h                                            ; $4cac: $9c
	cpl                                              ; $4cad: $2f
	scf                                              ; $4cae: $37
	jr z, @+$7d                                      ; $4caf: $28 $7b

	ld hl, sp-$67                                    ; $4cb1: $f8 $99
	inc l                                            ; $4cb3: $2c
	scf                                              ; $4cb4: $37
	ld [hl+], a                                      ; $4cb5: $22
	ccf                                              ; $4cb6: $3f
	ld [hl+], a                                      ; $4cb7: $22
	ccf                                              ; $4cb8: $3f
	ei                                               ; $4cb9: $fb
	rst SubAFromDE                                          ; $4cba: $df
	ld [hl], b                                       ; $4cbb: $70
	adc h                                            ; $4cbc: $8c
	adc b                                            ; $4cbd: $88
	ld hl, sp+$04                                    ; $4cbe: $f8 $04
	db $fc                                           ; $4cc0: $fc
	ld [bc], a                                       ; $4cc1: $02
	cp $02                                           ; $4cc2: $fe $02
	cp $01                                           ; $4cc4: $fe $01
	rst $38                                          ; $4cc6: $ff
	pop hl                                           ; $4cc7: $e1
	rra                                              ; $4cc8: $1f
	pop af                                           ; $4cc9: $f1
	rst AddAOntoHL                                          ; $4cca: $ef
	ld de, $09ff                                     ; $4ccb: $11 $ff $09
	rst FarCall                                          ; $4cce: $f7
	add hl, hl                                       ; $4ccf: $29
	ld a, e                                          ; $4cd0: $7b
	ld d, d                                          ; $4cd1: $52
	sbc [hl]                                         ; $4cd2: $9e
	sbc c                                            ; $4cd3: $99
	ld [hl], e                                       ; $4cd4: $73
	sbc h                                            ; $4cd5: $9c
	ld a, e                                          ; $4cd6: $7b
	ld [hl], h                                       ; $4cd7: $74
	sub a                                            ; $4cd8: $97
	nop                                              ; $4cd9: $00
	cpl                                              ; $4cda: $2f
	inc a                                            ; $4cdb: $3c
	ld d, e                                          ; $4cdc: $53
	ld a, [hl]                                       ; $4cdd: $7e
	ld h, c                                          ; $4cde: $61
	ld a, a                                          ; $4cdf: $7f
	ld d, b                                          ; $4ce0: $50
	ld a, e                                          ; $4ce1: $7b
	cp $91                                           ; $4ce2: $fe $91
	ld a, [de]                                       ; $4ce4: $1a
	ccf                                              ; $4ce5: $3f
	ld e, $15                                        ; $4ce6: $1e $15
	dec de                                           ; $4ce8: $1b
	ld e, $3f                                        ; $4ce9: $1e $3f
	ld h, $3f                                        ; $4ceb: $26 $3f
	ld h, $1f                                        ; $4ced: $26 $1f
	db $10                                           ; $4cef: $10

jr_01f_4cf0:
	rrca                                             ; $4cf0: $0f
	ld [$dffd], sp                                   ; $4cf1: $08 $fd $df
	ldh [hDisp1_SCY], a                                     ; $4cf4: $e0 $90
	jr jr_01f_4cf0                                   ; $4cf6: $18 $f8

	add h                                            ; $4cf8: $84
	ld a, h                                          ; $4cf9: $7c
	add h                                            ; $4cfa: $84
	ld a, h                                          ; $4cfb: $7c
	jp nz, $c23e                                     ; $4cfc: $c2 $3e $c2

	cp [hl]                                          ; $4cff: $be
	ld h, d                                          ; $4d00: $62
	sbc $e2                                          ; $4d01: $de $e2
	sbc $22                                          ; $4d03: $de $22
	ld a, e                                          ; $4d05: $7b
	cp b                                             ; $4d06: $b8
	adc l                                            ; $4d07: $8d
	jp nz, $e2fe                                     ; $4d08: $c2 $fe $e2

	ld e, $e4                                        ; $4d0b: $1e $e4
	inc a                                            ; $4d0d: $3c
	call nz, $037c                                   ; $4d0e: $c4 $7c $03
	inc bc                                           ; $4d11: $03
	rlca                                             ; $4d12: $07
	inc b                                            ; $4d13: $04
	rrca                                             ; $4d14: $0f
	add hl, bc                                       ; $4d15: $09
	rrca                                             ; $4d16: $0f

jr_01f_4d17:
	ld a, [bc]                                       ; $4d17: $0a
	rrca                                             ; $4d18: $0f
	inc c                                            ; $4d19: $0c
	ld a, e                                          ; $4d1a: $7b
	cp $7f                                           ; $4d1b: $fe $7f
	ld a, [$0998]                                    ; $4d1d: $fa $98 $09
	rlca                                             ; $4d20: $07
	inc b                                            ; $4d21: $04
	rlca                                             ; $4d22: $07
	inc b                                            ; $4d23: $04
	inc bc                                           ; $4d24: $03

jr_01f_4d25:
	ld [bc], a                                       ; $4d25: $02
	ld a, e                                          ; $4d26: $7b
	ld [$0698], a                                    ; $4d27: $ea $98 $06
	ld [$1f0f], sp                                   ; $4d2a: $08 $0f $1f
	rra                                              ; $4d2d: $1f
	nop                                              ; $4d2e: $00
	nop                                              ; $4d2f: $00
	sbc $f8                                          ; $4d30: $de $f8
	sbc d                                            ; $4d32: $9a
	jr c, jr_01f_4d25                                ; $4d33: $38 $f0

	jr nc, jr_01f_4d17                               ; $4d35: $30 $e0

	jr nz, jr_01f_4db4                               ; $4d37: $20 $7b

	cp $9e                                           ; $4d39: $fe $9e
	ld h, b                                          ; $4d3b: $60
	sbc $e0                                          ; $4d3c: $de $e0
	sbc b                                            ; $4d3e: $98
	and b                                            ; $4d3f: $a0
	ldh a, [rAUD1SWEEP]                              ; $4d40: $f0 $10
	ldh a, [rAUD1SWEEP]                              ; $4d42: $f0 $10
	ldh [rAUD4LEN], a                                ; $4d44: $e0 $20
	sbc $c0                                          ; $4d46: $de $c0
	rst SubAFromDE                                          ; $4d48: $df
	ld b, b                                          ; $4d49: $40
	sbc d                                            ; $4d4a: $9a
	ret nz                                           ; $4d4b: $c0

	ld hl, sp-$08                                    ; $4d4c: $f8 $f8
	nop                                              ; $4d4e: $00
	nop                                              ; $4d4f: $00
	ld b, a                                          ; $4d50: $47
	ret nz                                           ; $4d51: $c0

	ld a, a                                          ; $4d52: $7f
	adc [hl]                                         ; $4d53: $8e
	ld a, a                                          ; $4d54: $7f
	ldh a, [hDisp1_WX]                                     ; $4d55: $f0 $96
	rla                                              ; $4d57: $17
	ld d, $2f                                        ; $4d58: $16 $2f
	dec sp                                           ; $4d5a: $3b
	ld h, $3a                                        ; $4d5b: $26 $3a
	ld [de], a                                       ; $4d5d: $12
	ld e, $3f                                        ; $4d5e: $1e $3f
	ld a, e                                          ; $4d60: $7b
	ld b, d                                          ; $4d61: $42
	scf                                              ; $4d62: $37
	ret nz                                           ; $4d63: $c0

	ld a, a                                          ; $4d64: $7f
	ldh a, [$97]                                     ; $4d65: $f0 $97
	ld l, b                                          ; $4d67: $68
	ld e, b                                          ; $4d68: $58
	ld c, b                                          ; $4d69: $48
	ld a, b                                          ; $4d6a: $78
	sub b                                            ; $4d6b: $90
	ldh a, [$fc]                                     ; $4d6c: $f0 $fc
	db $fc                                           ; $4d6e: $fc
	ld e, [hl]                                       ; $4d6f: $5e
	or h                                             ; $4d70: $b4
	ld a, e                                          ; $4d71: $7b
	add $9c                                          ; $4d72: $c6 $9c
	dec bc                                           ; $4d74: $0b
	ld b, $06                                        ; $4d75: $06 $06
	di                                               ; $4d77: $f3
	ld [hl], a                                       ; $4d78: $77
	ret nz                                           ; $4d79: $c0

	db $fd                                           ; $4d7a: $fd
	rst SubAFromDE                                          ; $4d7b: $df
	inc c                                            ; $4d7c: $0c
	sbc l                                            ; $4d7d: $9d
	rra                                              ; $4d7e: $1f
	inc de                                           ; $4d7f: $13
	ld a, e                                          ; $4d80: $7b
	ld h, [hl]                                       ; $4d81: $66
	ld [hl], d                                       ; $4d82: $72
	sub b                                            ; $4d83: $90
	ld b, a                                          ; $4d84: $47
	ldh [$de], a                                     ; $4d85: $e0 $de
	rst $38                                          ; $4d87: $ff
	add [hl]                                         ; $4d88: $86
	add a                                            ; $4d89: $87
	cp $26                                           ; $4d8a: $fe $26
	db $fc                                           ; $4d8c: $fc
	call nz, $04fc                                   ; $4d8d: $c4 $fc $04
	db $fc                                           ; $4d90: $fc
	inc c                                            ; $4d91: $0c
	db $fc                                           ; $4d92: $fc
	ld [hl], h                                       ; $4d93: $74
	db $fc                                           ; $4d94: $fc
	add h                                            ; $4d95: $84
	cp $82                                           ; $4d96: $fe $82
	cp $82                                           ; $4d98: $fe $82
	ld a, h                                          ; $4d9a: $7c
	ld b, h                                          ; $4d9b: $44
	ld a, b                                          ; $4d9c: $78
	ld a, b                                          ; $4d9d: $78
	ld hl, sp-$38                                    ; $4d9e: $f8 $c8
	ld [$6ef8], sp                                   ; $4da0: $08 $f8 $6e
	ld a, [hl]                                       ; $4da3: $7e
	ld [de], a                                       ; $4da4: $12
	jr nz, @-$60                                     ; $4da5: $20 $9e

	sbc a                                            ; $4da7: $9f
	db $fd                                           ; $4da8: $fd
	rst SubAFromDE                                          ; $4da9: $df
	ld c, $85                                        ; $4daa: $0e $85
	ld [hl], c                                       ; $4dac: $71
	ld a, a                                          ; $4dad: $7f
	add b                                            ; $4dae: $80
	rst $38                                          ; $4daf: $ff
	ld h, e                                          ; $4db0: $63
	ld a, a                                          ; $4db1: $7f
	ld b, h                                          ; $4db2: $44
	ld a, a                                          ; $4db3: $7f

jr_01f_4db4:
	adc b                                            ; $4db4: $88
	rst $38                                          ; $4db5: $ff
	adc c                                            ; $4db6: $89
	rst $38                                          ; $4db7: $ff
	sub e                                            ; $4db8: $93
	cp $93                                           ; $4db9: $fe $93
	cp $97                                           ; $4dbb: $fe $97
	db $fc                                           ; $4dbd: $fc
	ld d, a                                          ; $4dbe: $57
	ld a, h                                          ; $4dbf: $7c
	ld e, a                                          ; $4dc0: $5f
	ld a, h                                          ; $4dc1: $7c
	ccf                                              ; $4dc2: $3f
	inc sp                                           ; $4dc3: $33
	ld c, $09                                        ; $4dc4: $0e $09
	db $fd                                           ; $4dc6: $fd
	rst SubAFromDE                                          ; $4dc7: $df
	ldh a, [$7f]                                     ; $4dc8: $f0 $7f
	or h                                             ; $4dca: $b4
	ld a, a                                          ; $4dcb: $7f
	and c                                            ; $4dcc: $a1
	ld a, [hl]                                       ; $4dcd: $7e
	jp z, $d28b                                      ; $4dce: $ca $8b $d2

	cp $89                                           ; $4dd1: $fe $89
	rst $38                                          ; $4dd3: $ff
	push bc                                          ; $4dd4: $c5
	ld a, a                                          ; $4dd5: $7f
	db $e3                                           ; $4dd6: $e3
	ccf                                              ; $4dd7: $3f
	pop af                                           ; $4dd8: $f1
	rra                                              ; $4dd9: $1f
	cp a                                             ; $4dda: $bf
	ld l, a                                          ; $4ddb: $6f
	ld a, d                                          ; $4ddc: $7a
	xor $fa                                          ; $4ddd: $ee $fa
	adc [hl]                                         ; $4ddf: $8e
	db $f4                                           ; $4de0: $f4
	sbc h                                            ; $4de1: $9c
	ld hl, sp-$48                                    ; $4de2: $f8 $b8
	dec l                                            ; $4de4: $2d
	and b                                            ; $4de5: $a0
	sbc [hl]                                         ; $4de6: $9e
	dec c                                            ; $4de7: $0d
	ld l, c                                          ; $4de8: $69
	and b                                            ; $4de9: $a0
	sbc c                                            ; $4dea: $99
	ld h, $3d                                        ; $4deb: $26 $3d
	rrca                                             ; $4ded: $0f
	rlca                                             ; $4dee: $07
	rra                                              ; $4def: $1f
	ld [de], a                                       ; $4df0: $12
	ld a, e                                          ; $4df1: $7b
	cp $9e                                           ; $4df2: $fe $9e
	ld de, $4077                                     ; $4df4: $11 $77 $40
	ld a, c                                          ; $4df7: $79
	or l                                             ; $4df8: $b5
	ld l, a                                          ; $4df9: $6f
	cp $7b                                           ; $4dfa: $fe $7b
	ld [de], a                                       ; $4dfc: $12
	sbc l                                            ; $4dfd: $9d
	ld de, $6f1f                                     ; $4dfe: $11 $1f $6f
	ld [hl+], a                                      ; $4e01: $22
	sbc e                                            ; $4e02: $9b
	ld hl, sp-$20                                    ; $4e03: $f8 $e0
	db $fc                                           ; $4e05: $fc
	inc h                                            ; $4e06: $24
	ld a, e                                          ; $4e07: $7b
	ld b, h                                          ; $4e08: $44
	sbc d                                            ; $4e09: $9a
	add h                                            ; $4e0a: $84
	ld a, b                                          ; $4e0b: $78
	ld hl, sp+$78                                    ; $4e0c: $f8 $78
	ret z                                            ; $4e0e: $c8

	ld a, e                                          ; $4e0f: $7b
	cp $7e                                           ; $4e10: $fe $7e
	xor h                                            ; $4e12: $ac
	sub [hl]                                         ; $4e13: $96
	ret nz                                           ; $4e14: $c0

	ld a, h                                          ; $4e15: $7c
	ld b, h                                          ; $4e16: $44
	ld a, h                                          ; $4e17: $7c
	ld a, h                                          ; $4e18: $7c
	ld a, b                                          ; $4e19: $78
	ld c, b                                          ; $4e1a: $48
	ld b, h                                          ; $4e1b: $44
	ld a, h                                          ; $4e1c: $7c
	ld h, a                                          ; $4e1d: $67
	ld b, d                                          ; $4e1e: $42
	rla                                              ; $4e1f: $17
	ld h, b                                          ; $4e20: $60
	sbc l                                            ; $4e21: $9d
	inc c                                            ; $4e22: $0c
	dec bc                                           ; $4e23: $0b
	ld [hl], a                                       ; $4e24: $77
	or h                                             ; $4e25: $b4
	ld a, e                                          ; $4e26: $7b
	and b                                            ; $4e27: $a0
	sbc [hl]                                         ; $4e28: $9e
	inc d                                            ; $4e29: $14
	ld a, d                                          ; $4e2a: $7a
	sbc $7f                                          ; $4e2b: $de $7f
	db $f4                                           ; $4e2d: $f4
	scf                                              ; $4e2e: $37
	and b                                            ; $4e2f: $a0
	ld a, e                                          ; $4e30: $7b
	xor b                                            ; $4e31: $a8
	ld [hl], e                                       ; $4e32: $73
	sbc [hl]                                         ; $4e33: $9e
	sbc [hl]                                         ; $4e34: $9e
	adc h                                            ; $4e35: $8c
	ld [hl], e                                       ; $4e36: $73
	sbc [hl]                                         ; $4e37: $9e
	dec sp                                           ; $4e38: $3b
	and b                                            ; $4e39: $a0
	ld [hl], a                                       ; $4e3a: $77
	ld b, d                                          ; $4e3b: $42
	ld [hl], l                                       ; $4e3c: $75
	adc b                                            ; $4e3d: $88
	sbc h                                            ; $4e3e: $9c
	ld b, b                                          ; $4e3f: $40
	ld a, a                                          ; $4e40: $7f
	ld b, d                                          ; $4e41: $42
	ld a, e                                          ; $4e42: $7b
	cp $7f                                           ; $4e43: $fe $7f
	sbc h                                            ; $4e45: $9c
	ld a, a                                          ; $4e46: $7f
	cp $9e                                           ; $4e47: $fe $9e
	ld b, l                                          ; $4e49: $45
	ld a, e                                          ; $4e4a: $7b
	cp $7f                                           ; $4e4b: $fe $7f
	or $7d                                           ; $4e4d: $f6 $7d
	add h                                            ; $4e4f: $84
	ld a, a                                          ; $4e50: $7f
	xor c                                            ; $4e51: $a9
	sub [hl]                                         ; $4e52: $96
	add hl, de                                       ; $4e53: $19
	rra                                              ; $4e54: $1f
	nop                                              ; $4e55: $00
	db $10                                           ; $4e56: $10
	sub b                                            ; $4e57: $90
	ldh a, [$30]                                     ; $4e58: $f0 $30
	ldh a, [rAUD3LEVEL]                              ; $4e5a: $f0 $1c
	ld l, c                                          ; $4e5c: $69
	add h                                            ; $4e5d: $84
	ld a, l                                          ; $4e5e: $7d
	ld a, [hl+]                                      ; $4e5f: $2a
	adc a                                            ; $4e60: $8f
	ld b, c                                          ; $4e61: $41
	rst $38                                          ; $4e62: $ff
	add d                                            ; $4e63: $82
	cp $0a                                           ; $4e64: $fe $0a
	cp $1c                                           ; $4e66: $fe $1c
	db $fc                                           ; $4e68: $fc
	inc a                                            ; $4e69: $3c
	db $f4                                           ; $4e6a: $f4
	ld a, b                                          ; $4e6b: $78
	ret z                                            ; $4e6c: $c8

	ldh a, [hDisp1_SCY]                                     ; $4e6d: $f0 $90
	ldh [$60], a                                     ; $4e6f: $e0 $60
	dec b                                            ; $4e71: $05
	ret nz                                           ; $4e72: $c0

	sbc $f0                                          ; $4e73: $de $f0
	ld l, [hl]                                       ; $4e75: $6e
	ld [bc], a                                       ; $4e76: $02
	ld bc, $2dc0                                     ; $4e77: $01 $c0 $2d
	ret nz                                           ; $4e7a: $c0

	scf                                              ; $4e7b: $37
	ret nz                                           ; $4e7c: $c0

	ld d, l                                          ; $4e7d: $55
	ret nz                                           ; $4e7e: $c0

	sbc $fe                                          ; $4e7f: $de $fe

jr_01f_4e81:
	sbc [hl]                                         ; $4e81: $9e
	add [hl]                                         ; $4e82: $86
	ld a, e                                          ; $4e83: $7b
	jr nz, @+$24                                     ; $4e84: $20 $22

	nop                                              ; $4e86: $00
	jp c, $f282                                      ; $4e87: $da $82 $f2

	sbc [hl]                                         ; $4e8a: $9e
	inc bc                                           ; $4e8b: $03
	ei                                               ; $4e8c: $fb
	rst SubAFromDE                                          ; $4e8d: $df
	ld bc, $0697                                     ; $4e8e: $01 $97 $06
	inc c                                            ; $4e91: $0c
	jr jr_01f_4ea4                                   ; $4e92: $18 $10

	jr nc, jr_01f_4eb6                               ; $4e94: $30 $20

	ld h, b                                          ; $4e96: $60
	ld b, b                                          ; $4e97: $40
	ld l, e                                          ; $4e98: $6b
	ldh a, [$7b]                                     ; $4e99: $f0 $7b
	add sp, -$21                                     ; $4e9b: $e8 $df
	inc b                                            ; $4e9d: $04
	adc l                                            ; $4e9e: $8d
	dec b                                            ; $4e9f: $05
	ld a, $e2                                        ; $4ea0: $3e $e2
	add h                                            ; $4ea2: $84
	inc b                                            ; $4ea3: $04

jr_01f_4ea4:
	ld [$6330], sp                                   ; $4ea4: $08 $30 $63
	call nz, $9888                                   ; $4ea7: $c4 $88 $98
	jr nc, jr_01f_4eb4                               ; $4eaa: $30 $08

	db $10                                           ; $4eac: $10
	ld bc, $0200                                     ; $4ead: $01 $00 $02
	inc b                                            ; $4eb0: $04
	db $fc                                           ; $4eb1: $fc
	sbc e                                            ; $4eb2: $9b
	ccf                                              ; $4eb3: $3f

jr_01f_4eb4:
	nop                                              ; $4eb4: $00
	nop                                              ; $4eb5: $00

jr_01f_4eb6:
	add b                                            ; $4eb6: $80
	db $fd                                           ; $4eb7: $fd
	sub a                                            ; $4eb8: $97
	ret nz                                           ; $4eb9: $c0

	nop                                              ; $4eba: $00
	ld a, a                                          ; $4ebb: $7f
	ld h, b                                          ; $4ebc: $60
	nop                                              ; $4ebd: $00
	rlca                                             ; $4ebe: $07
	jr c, jr_01f_4e81                                ; $4ebf: $38 $c0

	db $fc                                           ; $4ec1: $fc
	sbc [hl]                                         ; $4ec2: $9e
	jr jr_01f_4f30                                   ; $4ec3: $18 $6b

	add $77                                          ; $4ec5: $c6 $77
	add sp, -$62                                     ; $4ec7: $e8 $9e
	jr c, @-$05                                      ; $4ec9: $38 $f9

	sbc [hl]                                         ; $4ecb: $9e
	cp $6b                                           ; $4ecc: $fe $6b
	and c                                            ; $4ece: $a1
	cp $9e                                           ; $4ecf: $fe $9e
	rst $38                                          ; $4ed1: $ff
	db $eb                                           ; $4ed2: $eb
	ld l, a                                          ; $4ed3: $6f
	jp $97fe                                         ; $4ed4: $c3 $fe $97


	ldh [$f8], a                                     ; $4ed7: $e0 $f8
	inc c                                            ; $4ed9: $0c
	ld [bc], a                                       ; $4eda: $02
	rrca                                             ; $4edb: $0f
	inc b                                            ; $4edc: $04
	ld [bc], a                                       ; $4edd: $02
	inc bc                                           ; $4ede: $03
	reti                                             ; $4edf: $d9


	ld b, b                                          ; $4ee0: $40
	sbc e                                            ; $4ee1: $9b
	add b                                            ; $4ee2: $80
	ld [bc], a                                       ; $4ee3: $02
	ld [bc], a                                       ; $4ee4: $02
	inc bc                                           ; $4ee5: $03
	db $dd                                           ; $4ee6: $dd
	ld bc, $40d9                                     ; $4ee7: $01 $d9 $40
	ld sp, hl                                        ; $4eea: $f9
	ld a, a                                          ; $4eeb: $7f
	ld a, d                                          ; $4eec: $7a
	ei                                               ; $4eed: $fb
	sub a                                            ; $4eee: $97
	jr c, jr_01f_4f0d                                ; $4eef: $38 $1c

	ld e, $0b                                        ; $4ef1: $1e $0b
	dec c                                            ; $4ef3: $0d
	inc b                                            ; $4ef4: $04
	ld b, $82                                        ; $4ef5: $06 $82
	db $fd                                           ; $4ef7: $fd
	sbc $40                                          ; $4ef8: $de $40
	sub [hl]                                         ; $4efa: $96
	ld c, b                                          ; $4efb: $48
	add e                                            ; $4efc: $83
	pop bc                                           ; $4efd: $c1
	ld b, c                                          ; $4efe: $41
	ld h, b                                          ; $4eff: $60
	jr nc, jr_01f_4f12                               ; $4f00: $30 $10

	jr jr_01f_4f04                                   ; $4f02: $18 $00

jr_01f_4f04:
	ld h, a                                          ; $4f04: $67
	rst SubAFromHL                                          ; $4f05: $d7
	sbc [hl]                                         ; $4f06: $9e
	cp b                                             ; $4f07: $b8
	cp $9a                                           ; $4f08: $fe $9a
	add b                                            ; $4f0a: $80
	ret nz                                           ; $4f0b: $c0

	ld [hl], b                                       ; $4f0c: $70

jr_01f_4f0d:
	inc e                                            ; $4f0d: $1c
	inc bc                                           ; $4f0e: $03
	ld l, e                                          ; $4f0f: $6b
	rst GetHLinHL                                          ; $4f10: $cf
	sub e                                            ; $4f11: $93

jr_01f_4f12:
	inc e                                            ; $4f12: $1c
	db $10                                           ; $4f13: $10
	sub b                                            ; $4f14: $90
	sub b                                            ; $4f15: $90
	ret nc                                           ; $4f16: $d0

	ld d, b                                          ; $4f17: $50
	ld [hl], b                                       ; $4f18: $70
	jr nz, jr_01f_4f1b                               ; $4f19: $20 $00

jr_01f_4f1b:
	ld [$1800], sp                                   ; $4f1b: $08 $00 $18
	ld l, a                                          ; $4f1e: $6f
	cp c                                             ; $4f1f: $b9
	sbc l                                            ; $4f20: $9d
	inc b                                            ; $4f21: $04
	jr nz, jr_01f_4f96                               ; $4f22: $20 $72

	rst $38                                          ; $4f24: $ff
	sbc h                                            ; $4f25: $9c
	rst $38                                          ; $4f26: $ff
	ccf                                              ; $4f27: $3f
	rrca                                             ; $4f28: $0f
	ld a, e                                          ; $4f29: $7b
	sub a                                            ; $4f2a: $97
	ld l, a                                          ; $4f2b: $6f
	ld l, $fe                                        ; $4f2c: $2e $fe
	sbc [hl]                                         ; $4f2e: $9e
	db $10                                           ; $4f2f: $10

jr_01f_4f30:
	sbc $20                                          ; $4f30: $de $20
	ld a, e                                          ; $4f32: $7b
	add d                                            ; $4f33: $82
	sbc [hl]                                         ; $4f34: $9e
	add b                                            ; $4f35: $80
	sbc $01                                          ; $4f36: $de $01
	rst $38                                          ; $4f38: $ff
	sbc $20                                          ; $4f39: $de $20
	ld a, a                                          ; $4f3b: $7f
	ld e, [hl]                                       ; $4f3c: $5e
	sbc [hl]                                         ; $4f3d: $9e
	ld [hl], b                                       ; $4f3e: $70
	ld a, e                                          ; $4f3f: $7b
	or a                                             ; $4f40: $b7
	sbc e                                            ; $4f41: $9b
	ld b, b                                          ; $4f42: $40
	jr nz, jr_01f_4f55                               ; $4f43: $20 $10

	db $10                                           ; $4f45: $10
	sbc $08                                          ; $4f46: $de $08
	rst SubAFromDE                                          ; $4f48: $df
	inc d                                            ; $4f49: $14
	sbc [hl]                                         ; $4f4a: $9e
	ld a, [bc]                                       ; $4f4b: $0a
	ld sp, hl                                        ; $4f4c: $f9
	ld a, a                                          ; $4f4d: $7f
	sub h                                            ; $4f4e: $94
	sbc c                                            ; $4f4f: $99
	db $10                                           ; $4f50: $10
	sbc b                                            ; $4f51: $98
	adc b                                            ; $4f52: $88
	adc b                                            ; $4f53: $88
	ld c, h                                          ; $4f54: $4c

jr_01f_4f55:
	ld b, h                                          ; $4f55: $44
	ld sp, hl                                        ; $4f56: $f9
	rst SubAFromDE                                          ; $4f57: $df
	ld b, h                                          ; $4f58: $44
	sbc c                                            ; $4f59: $99
	ld b, [hl]                                       ; $4f5a: $46
	ld h, d                                          ; $4f5b: $62
	ld [hl-], a                                      ; $4f5c: $32
	ld [hl-], a                                      ; $4f5d: $32
	ld a, [hl-]                                      ; $4f5e: $3a
	ld a, [hl+]                                      ; $4f5f: $2a
	db $fc                                           ; $4f60: $fc
	sbc $02                                          ; $4f61: $de $02
	db $fc                                           ; $4f63: $fc
	ld a, a                                          ; $4f64: $7f
	ret z                                            ; $4f65: $c8

	sbc [hl]                                         ; $4f66: $9e
	ld b, b                                          ; $4f67: $40
	call c, $9b02                                    ; $4f68: $dc $02 $9b
	inc bc                                           ; $4f6b: $03
	ld [bc], a                                       ; $4f6c: $02
	inc b                                            ; $4f6d: $04
	jr nz, jr_01f_4fe3                               ; $4f6e: $20 $73

	cp [hl]                                          ; $4f70: $be
	sbc [hl]                                         ; $4f71: $9e
	inc b                                            ; $4f72: $04
	ld [hl], d                                       ; $4f73: $72
	rst AddAOntoHL                                          ; $4f74: $ef
	sbc l                                            ; $4f75: $9d
	ld bc, $7b02                                     ; $4f76: $01 $02 $7b
	ld a, d                                          ; $4f79: $7a
	ld sp, hl                                        ; $4f7a: $f9
	ld a, a                                          ; $4f7b: $7f
	adc a                                            ; $4f7c: $8f
	ld a, a                                          ; $4f7d: $7f
	sub d                                            ; $4f7e: $92
	ld a, [$029c]                                    ; $4f7f: $fa $9c $02
	jr jr_01f_4fe4                                   ; $4f82: $18 $60

	ld h, a                                          ; $4f84: $67
	push af                                          ; $4f85: $f5
	ld a, e                                          ; $4f86: $7b
	add sp, $77                                      ; $4f87: $e8 $77
	adc a                                            ; $4f89: $8f
	rst SubAFromDE                                          ; $4f8a: $df
	ld [$5866], sp                                   ; $4f8b: $08 $66 $58
	db $dd                                           ; $4f8e: $dd
	inc b                                            ; $4f8f: $04
	sbc l                                            ; $4f90: $9d
	dec b                                            ; $4f91: $05
	ld [bc], a                                       ; $4f92: $02
	ld e, [hl]                                       ; $4f93: $5e
	or b                                             ; $4f94: $b0
	ld a, a                                          ; $4f95: $7f

jr_01f_4f96:
	xor [hl]                                         ; $4f96: $ae
	ld a, [hl]                                       ; $4f97: $7e
	ld h, [hl]                                       ; $4f98: $66
	ld a, [hl]                                       ; $4f99: $7e
	ld l, h                                          ; $4f9a: $6c
	ld a, a                                          ; $4f9b: $7f
	jp $c86f                                         ; $4f9c: $c3 $6f $c8


	sbc [hl]                                         ; $4f9f: $9e
	ldh [$7a], a                                     ; $4fa0: $e0 $7a
	db $fc                                           ; $4fa2: $fc
	rst SubAFromDE                                          ; $4fa3: $df
	add b                                            ; $4fa4: $80
	ldh [$dd], a                                     ; $4fa5: $e0 $dd
	rst SubAFromDE                                          ; $4fa7: $df
	inc bc                                           ; $4fa8: $03
	ld a, a                                          ; $4fa9: $7f
	cp e                                             ; $4faa: $bb
	sbc [hl]                                         ; $4fab: $9e
	inc bc                                           ; $4fac: $03
	sbc $82                                          ; $4fad: $de $82
	rst SubAFromDE                                          ; $4faf: $df
	ld b, b                                          ; $4fb0: $40
	sbc [hl]                                         ; $4fb1: $9e
	ret nz                                           ; $4fb2: $c0

	ld [hl], e                                       ; $4fb3: $73
	rst GetHLinHL                                          ; $4fb4: $cf
	sbc e                                            ; $4fb5: $9b
	add d                                            ; $4fb6: $82
	add e                                            ; $4fb7: $83
	add b                                            ; $4fb8: $80
	add c                                            ; $4fb9: $81
	db $dd                                           ; $4fba: $dd
	add b                                            ; $4fbb: $80
	ld [hl], l                                       ; $4fbc: $75
	push af                                          ; $4fbd: $f5
	ld a, e                                          ; $4fbe: $7b
	ld c, $9d                                        ; $4fbf: $0e $9d
	ld b, b                                          ; $4fc1: $40
	ld h, b                                          ; $4fc2: $60
	ld l, a                                          ; $4fc3: $6f
	jp hl                                            ; $4fc4: $e9


	ld h, [hl]                                       ; $4fc5: $66
	sbc c                                            ; $4fc6: $99
	ld a, c                                          ; $4fc7: $79
	and $7f                                          ; $4fc8: $e6 $7f
	and c                                            ; $4fca: $a1
	sbc l                                            ; $4fcb: $9d
	nop                                              ; $4fcc: $00
	add [hl]                                         ; $4fcd: $86
	ld [hl], e                                       ; $4fce: $73
	or $9a                                           ; $4fcf: $f6 $9a
	ld de, $1092                                     ; $4fd1: $11 $92 $10
	call nc, Call_01f_737c                           ; $4fd4: $d4 $7c $73
	db $ed                                           ; $4fd7: $ed
	rst SubAFromDE                                          ; $4fd8: $df
	add hl, bc                                       ; $4fd9: $09
	sbc [hl]                                         ; $4fda: $9e
	ld a, [de]                                       ; $4fdb: $1a
	ld sp, hl                                        ; $4fdc: $f9
	sub a                                            ; $4fdd: $97
	ld a, [hl+]                                      ; $4fde: $2a
	inc h                                            ; $4fdf: $24
	ld [hl], h                                       ; $4fe0: $74
	ret nz                                           ; $4fe1: $c0

	ld a, b                                          ; $4fe2: $78

jr_01f_4fe3:
	ld d, b                                          ; $4fe3: $50

jr_01f_4fe4:
	sbc b                                            ; $4fe4: $98
	add sp, -$04                                     ; $4fe5: $e8 $fc
	sbc l                                            ; $4fe7: $9d
	adc b                                            ; $4fe8: $88
	nop                                              ; $4fe9: $00
	ld l, l                                          ; $4fea: $6d
	sbc $7f                                          ; $4feb: $de $7f
	rlca                                             ; $4fed: $07
	sbc h                                            ; $4fee: $9c
	sub b                                            ; $4fef: $90
	nop                                              ; $4ff0: $00
	ld de, $08dd                                     ; $4ff1: $11 $dd $08
	sbc b                                            ; $4ff4: $98
	dec d                                            ; $4ff5: $15
	inc bc                                           ; $4ff6: $03

jr_01f_4ff7:
	and b                                            ; $4ff7: $a0
	and $4a                                          ; $4ff8: $e6 $4a
	ld c, d                                          ; $4ffa: $4a
	ld b, $fe                                        ; $4ffb: $06 $fe
	sbc l                                            ; $4ffd: $9d
	ld [de], a                                       ; $4ffe: $12
	ld bc, $c87b                                     ; $4fff: $01 $7b $c8
	ld l, [hl]                                       ; $5002: $6e
	ld [$97fc], a                                    ; $5003: $ea $fc $97
	ld c, c                                          ; $5006: $49
	dec h                                            ; $5007: $25
	sub l                                            ; $5008: $95
	sub e                                            ; $5009: $93
	set 5, d                                         ; $500a: $cb $ea
	xor [hl]                                         ; $500c: $ae
	ld l, $f9                                        ; $500d: $2e $f9
	sub a                                            ; $500f: $97
	dec hl                                           ; $5010: $2b
	sbc c                                            ; $5011: $99
	sbc c                                            ; $5012: $99
	inc d                                            ; $5013: $14
	inc d                                            ; $5014: $14
	inc e                                            ; $5015: $1c
	ld a, [de]                                       ; $5016: $1a
	ld [de], a                                       ; $5017: $12
	rst SubAFromBC                                          ; $5018: $e7
	rst SubAFromDE                                          ; $5019: $df
	add b                                            ; $501a: $80
	sbc h                                            ; $501b: $9c
	ret nz                                           ; $501c: $c0

	ld b, b                                          ; $501d: $40
	ld h, b                                          ; $501e: $60
	ld a, d                                          ; $501f: $7a
	ld h, h                                          ; $5020: $64

jr_01f_5021:
	rst SubAFromDE                                          ; $5021: $df
	ld b, b                                          ; $5022: $40
	rst SubAFromDE                                          ; $5023: $df
	ld b, c                                          ; $5024: $41
	ld a, a                                          ; $5025: $7f
	ld c, d                                          ; $5026: $4a
	ld l, d                                          ; $5027: $6a
	and b                                            ; $5028: $a0
	sub [hl]                                         ; $5029: $96
	nop                                              ; $502a: $00
	add h                                            ; $502b: $84
	add h                                            ; $502c: $84
	adc h                                            ; $502d: $8c
	sbc b                                            ; $502e: $98
	sub b                                            ; $502f: $90
	or b                                             ; $5030: $b0
	and b                                            ; $5031: $a0
	ld h, b                                          ; $5032: $60
	ld h, d                                          ; $5033: $62
	ld a, b                                          ; $5034: $78
	sbc d                                            ; $5035: $9a
	ld b, [hl]                                       ; $5036: $46
	add d                                            ; $5037: $82
	add e                                            ; $5038: $83
	ld bc, $6680                                     ; $5039: $01 $80 $66
	ld sp, $7098                                     ; $503c: $31 $98 $70
	jr jr_01f_5021                                   ; $503f: $18 $e0

	jr nc, jr_01f_505b                               ; $5041: $30 $18

	inc c                                            ; $5043: $0c
	ld b, $79                                        ; $5044: $06 $79
	ei                                               ; $5046: $fb
	sbc [hl]                                         ; $5047: $9e
	ld c, $65                                        ; $5048: $0e $65
	rst FarCall                                          ; $504a: $f7
	ld [hl], c                                       ; $504b: $71
	add sp, $7d                                      ; $504c: $e8 $7d
	push de                                          ; $504e: $d5
	ld a, a                                          ; $504f: $7f
	jp hl                                            ; $5050: $e9


	ld a, l                                          ; $5051: $7d
	ret nz                                           ; $5052: $c0

	sub b                                            ; $5053: $90
	ld [$040c], sp                                   ; $5054: $08 $0c $04
	ld b, $18                                        ; $5057: $06 $18
	inc c                                            ; $5059: $0c
	inc b                                            ; $505a: $04

jr_01f_505b:
	ld [bc], a                                       ; $505b: $02
	ld h, c                                          ; $505c: $61
	jr nc, jr_01f_4ff7                               ; $505d: $30 $98

	call z, $0302                                    ; $505f: $cc $02 $03
	add c                                            ; $5062: $81
	ld h, l                                          ; $5063: $65
	ld [hl], h                                       ; $5064: $74
	ld a, l                                          ; $5065: $7d
	inc bc                                           ; $5066: $03
	ld l, a                                          ; $5067: $6f
	ld a, [hl-]                                      ; $5068: $3a
	ld a, e                                          ; $5069: $7b
	reti                                             ; $506a: $d9


	sbc [hl]                                         ; $506b: $9e
	jr jr_01f_50e1                                   ; $506c: $18 $73

	or $9a                                           ; $506e: $f6 $9a
	ld h, b                                          ; $5070: $60
	and b                                            ; $5071: $a0
	ld [hl], b                                       ; $5072: $70
	rla                                              ; $5073: $17
	inc bc                                           ; $5074: $03
	ld a, e                                          ; $5075: $7b
	pop af                                           ; $5076: $f1
	ei                                               ; $5077: $fb
	sbc [hl]                                         ; $5078: $9e
	ld a, b                                          ; $5079: $78
	ld [hl], e                                       ; $507a: $73
	ld hl, sp-$64                                    ; $507b: $f8 $9c
	ld a, [bc]                                       ; $507d: $0a
	dec b                                            ; $507e: $05
	rlca                                             ; $507f: $07
	ld h, a                                          ; $5080: $67
	xor a                                            ; $5081: $af
	sbc h                                            ; $5082: $9c
	ld b, $01                                        ; $5083: $06 $01
	ld c, $7b                                        ; $5085: $0e $7b
	db $ec                                           ; $5087: $ec
	sbc l                                            ; $5088: $9d
	ret nz                                           ; $5089: $c0

	jr nc, jr_01f_50ee                               ; $508a: $30 $62

	inc l                                            ; $508c: $2c
	rst SubAFromDE                                          ; $508d: $df
	ld bc, $03df                                     ; $508e: $01 $df $03
	sbc e                                            ; $5091: $9b
	ld h, $36                                        ; $5092: $26 $36
	ld [de], a                                       ; $5094: $12
	sub e                                            ; $5095: $93
	ld [hl], l                                       ; $5096: $75
	adc a                                            ; $5097: $8f
	ld a, h                                          ; $5098: $7c
	xor b                                            ; $5099: $a8
	sbc h                                            ; $509a: $9c
	ld [$60b0], sp                                   ; $509b: $08 $b0 $60
	ld a, c                                          ; $509e: $79
	ld hl, sp-$65                                    ; $509f: $f8 $9b
	jr nc, jr_01f_50d4                               ; $50a1: $30 $31

	ld d, $0c                                        ; $50a3: $16 $0c
	ld l, [hl]                                       ; $50a5: $6e
	ld d, d                                          ; $50a6: $52
	ld [hl], c                                       ; $50a7: $71
	ld c, [hl]                                       ; $50a8: $4e
	ld h, e                                          ; $50a9: $63
	or $7d                                           ; $50aa: $f6 $7d
	jp hl                                            ; $50ac: $e9


	sbc h                                            ; $50ad: $9c
	ld de, $0909                                     ; $50ae: $11 $09 $09
	sbc $06                                          ; $50b1: $de $06
	ld h, l                                          ; $50b3: $65
	ld [hl+], a                                      ; $50b4: $22
	sbc [hl]                                         ; $50b5: $9e
	db $10                                           ; $50b6: $10
	ld a, e                                          ; $50b7: $7b
	db $ed                                           ; $50b8: $ed
	halt                                             ; $50b9: $76
	inc sp                                           ; $50ba: $33

jr_01f_50bb:
	ld e, a                                          ; $50bb: $5f
	ld a, [bc]                                       ; $50bc: $0a
	ld h, d                                          ; $50bd: $62
	ld b, [hl]                                       ; $50be: $46
	sbc l                                            ; $50bf: $9d
	inc c                                            ; $50c0: $0c
	jr nc, jr_01f_5123                               ; $50c1: $30 $60

	jp nc, $196d                                     ; $50c3: $d2 $6d $19

	ld a, a                                          ; $50c6: $7f
	sbc c                                            ; $50c7: $99
	sbc d                                            ; $50c8: $9a
	add d                                            ; $50c9: $82
	add [hl]                                         ; $50ca: $86
	ret nz                                           ; $50cb: $c0

	rst GetHLinHL                                          ; $50cc: $cf
	ld a, [hl]                                       ; $50cd: $7e
	db $fc                                           ; $50ce: $fc
	ld l, d                                          ; $50cf: $6a
	add a                                            ; $50d0: $87
	ld c, h                                          ; $50d1: $4c
	xor e                                            ; $50d2: $ab
	sbc h                                            ; $50d3: $9c

jr_01f_50d4:
	ld a, b                                          ; $50d4: $78
	call z, $f90c                                    ; $50d5: $cc $0c $f9
	sbc l                                            ; $50d8: $9d
	jr c, jr_01f_50bb                                ; $50d9: $38 $e0

	db $f4                                           ; $50db: $f4
	ld e, [hl]                                       ; $50dc: $5e
	jr nz, @-$61                                     ; $50dd: $20 $9d

	ld [bc], a                                       ; $50df: $02
	rlca                                             ; $50e0: $07

jr_01f_50e1:
	ld [hl], l                                       ; $50e1: $75
	ld d, $7b                                        ; $50e2: $16 $7b
	rst FarCall                                          ; $50e4: $f7
	sub c                                            ; $50e5: $91
	jr c, @+$06                                      ; $50e6: $38 $04

	inc c                                            ; $50e8: $0c
	add hl, bc                                       ; $50e9: $09
	dec bc                                           ; $50ea: $0b
	ld c, $08                                        ; $50eb: $0e $08
	inc e                                            ; $50ed: $1c

jr_01f_50ee:
	inc [hl]                                         ; $50ee: $34
	inc h                                            ; $50ef: $24
	ld l, b                                          ; $50f0: $68
	ret nc                                           ; $50f1: $d0

	and b                                            ; $50f2: $a0
	add c                                            ; $50f3: $81
	ld [hl], e                                       ; $50f4: $73
	xor h                                            ; $50f5: $ac
	ld a, l                                          ; $50f6: $7d
	sbc a                                            ; $50f7: $9f
	sbc e                                            ; $50f8: $9b
	jr nz, jr_01f_5102                               ; $50f9: $20 $07

	ld e, $f0                                        ; $50fb: $1e $f0
	ld l, a                                          ; $50fd: $6f
	xor h                                            ; $50fe: $ac
	ld h, e                                          ; $50ff: $63
	ld a, b                                          ; $5100: $78
	sbc c                                            ; $5101: $99

jr_01f_5102:
	jr nz, jr_01f_5134                               ; $5102: $20 $30

	nop                                              ; $5104: $00
	nop                                              ; $5105: $00
	ld c, $1b                                        ; $5106: $0e $1b
	ld l, a                                          ; $5108: $6f
	ld a, d                                          ; $5109: $7a
	ld a, a                                          ; $510a: $7f
	ld [$207f], a                                    ; $510b: $ea $7f $20
	ld l, a                                          ; $510e: $6f
	sbc l                                            ; $510f: $9d
	sbc l                                            ; $5110: $9d
	or b                                             ; $5111: $b0
	ldh [$5f], a                                     ; $5112: $e0 $5f
	ld h, e                                          ; $5114: $63
	ld a, e                                          ; $5115: $7b
	ld l, b                                          ; $5116: $68
	sbc [hl]                                         ; $5117: $9e
	add $f9                                          ; $5118: $c6 $f9
	sbc l                                            ; $511a: $9d
	call nz, $fa88                                   ; $511b: $c4 $88 $fa
	sbc [hl]                                         ; $511e: $9e
	ld b, a                                          ; $511f: $47
	ld l, a                                          ; $5120: $6f
	ld e, b                                          ; $5121: $58
	ei                                               ; $5122: $fb

jr_01f_5123:
	ld a, a                                          ; $5123: $7f
	sub l                                            ; $5124: $95
	ld [hl], e                                       ; $5125: $73
	xor h                                            ; $5126: $ac
	sbc l                                            ; $5127: $9d
	ld a, b                                          ; $5128: $78
	ret z                                            ; $5129: $c8

	ld b, a                                          ; $512a: $47
	ld l, b                                          ; $512b: $68
	pop af                                           ; $512c: $f1
	ld a, e                                          ; $512d: $7b
	ld h, l                                          ; $512e: $65
	sbc b                                            ; $512f: $98
	dec a                                            ; $5130: $3d
	ld bc, $0109                                     ; $5131: $01 $09 $01

jr_01f_5134:
	dec bc                                           ; $5134: $0b
	ld c, $01                                        ; $5135: $0e $01
	ld a, b                                          ; $5137: $78

jr_01f_5138:
	cp h                                             ; $5138: $bc
	ld l, a                                          ; $5139: $6f
	jp z, $9bff                                      ; $513a: $ca $ff $9b

	ld [$3018], sp                                   ; $513d: $08 $18 $30
	ld hl, $5877                                     ; $5140: $21 $77 $58
	sbc c                                            ; $5143: $99
	ld h, h                                          ; $5144: $64
	ret nz                                           ; $5145: $c0

	ret nz                                           ; $5146: $c0

	add b                                            ; $5147: $80
	pop bc                                           ; $5148: $c1
	sub b                                            ; $5149: $90
	ld l, a                                          ; $514a: $6f
	ld h, b                                          ; $514b: $60
	sbc l                                            ; $514c: $9d
	ld b, $0e                                        ; $514d: $06 $0e
	or $9c                                           ; $514f: $f6 $9c
	ld b, b                                          ; $5151: $40
	ret z                                            ; $5152: $c8

	sbc b                                            ; $5153: $98
	ld l, a                                          ; $5154: $6f
	ld e, b                                          ; $5155: $58
	sbc e                                            ; $5156: $9b
	dec b                                            ; $5157: $05
	inc bc                                           ; $5158: $03
	or b                                             ; $5159: $b0
	add sp, $6f                                      ; $515a: $e8 $6f
	ld l, b                                          ; $515c: $68
	sbc [hl]                                         ; $515d: $9e
	ld b, $6b                                        ; $515e: $06 $6b
	jp $81f7                                         ; $5160: $c3 $f7 $81


	rst $38                                          ; $5163: $ff
	sbc c                                            ; $5164: $99
	ld e, $63                                        ; $5165: $1e $63
	pop bc                                           ; $5167: $c1
	add b                                            ; $5168: $80
	add b                                            ; $5169: $80
	add [hl]                                         ; $516a: $86
	db $fc                                           ; $516b: $fc
	adc a                                            ; $516c: $8f
	ld e, $31                                        ; $516d: $1e $31
	jr nz, jr_01f_5138                               ; $516f: $20 $c7

	ld h, e                                          ; $5171: $63
	ld sp, $0c18                                     ; $5172: $31 $18 $0c
	ld b, $03                                        ; $5175: $06 $03
	ld bc, $0810                                     ; $5177: $01 $10 $08
	inc b                                            ; $517a: $04
	ld [bc], a                                       ; $517b: $02
	ld bc, $99fc                                     ; $517c: $01 $fc $99
	ld a, b                                          ; $517f: $78
	add $83                                          ; $5180: $c6 $83
	ld bc, $6101                                     ; $5182: $01 $01 $61
	ld l, a                                          ; $5185: $6f
	push af                                          ; $5186: $f5
	sub b                                            ; $5187: $90
	adc h                                            ; $5188: $8c
	inc b                                            ; $5189: $04
	db $e3                                           ; $518a: $e3
	add $8c                                          ; $518b: $c6 $8c
	jr jr_01f_51bf                                   ; $518d: $18 $30

	ld h, b                                          ; $518f: $60
	ret nz                                           ; $5190: $c0

	add b                                            ; $5191: $80
	ld [$2010], sp                                   ; $5192: $08 $10 $20
	ld b, b                                          ; $5195: $40
	add b                                            ; $5196: $80
	ld sp, hl                                        ; $5197: $f9
	ld a, e                                          ; $5198: $7b
	ret z                                            ; $5199: $c8

	ld h, a                                          ; $519a: $67
	cp b                                             ; $519b: $b8
	ld h, a                                          ; $519c: $67
	ret z                                            ; $519d: $c8

	ld h, a                                          ; $519e: $67
	cp b                                             ; $519f: $b8
	ld h, a                                          ; $51a0: $67
	ret z                                            ; $51a1: $c8

	ld h, a                                          ; $51a2: $67
	cp b                                             ; $51a3: $b8
	ld h, a                                          ; $51a4: $67
	ret z                                            ; $51a5: $c8

	ld h, a                                          ; $51a6: $67
	cp b                                             ; $51a7: $b8
	ldh [$df], a                                     ; $51a8: $e0 $df
	sbc d                                            ; $51aa: $9a
	inc bc                                           ; $51ab: $03
	ld c, $18                                        ; $51ac: $0e $18
	db $10                                           ; $51ae: $10
	jr nc, jr_01f_522c                               ; $51af: $30 $7b

	and b                                            ; $51b1: $a0
	ld [hl], a                                       ; $51b2: $77
	push af                                          ; $51b3: $f5
	sbc c                                            ; $51b4: $99
	ld b, $0c                                        ; $51b5: $06 $0c
	jr nz, jr_01f_51d9                               ; $51b7: $20 $20

	inc l                                            ; $51b9: $2c
	jr nc, jr_01f_5237                               ; $51ba: $30 $7b

	pop af                                           ; $51bc: $f1
	adc [hl]                                         ; $51bd: $8e
	ld h, b                                          ; $51be: $60

jr_01f_51bf:
	ld [$020b], sp                                   ; $51bf: $08 $0b $02
	add hl, bc                                       ; $51c2: $09
	inc bc                                           ; $51c3: $03
	inc b                                            ; $51c4: $04
	dec b                                            ; $51c5: $05
	dec b                                            ; $51c6: $05
	nop                                              ; $51c7: $00
	nop                                              ; $51c8: $00
	ret nz                                           ; $51c9: $c0

	ld h, b                                          ; $51ca: $60
	jr nz, jr_01f_51ed                               ; $51cb: $20 $20

	db $10                                           ; $51cd: $10
	db $10                                           ; $51ce: $10
	ei                                               ; $51cf: $fb
	rst SubAFromDE                                          ; $51d0: $df
	add b                                            ; $51d1: $80
	sbc l                                            ; $51d2: $9d
	ld a, h                                          ; $51d3: $7c
	inc bc                                           ; $51d4: $03
	ld l, e                                          ; $51d5: $6b
	or $9e                                           ; $51d6: $f6 $9e
	add h                                            ; $51d8: $84

jr_01f_51d9:
	ld [hl], a                                       ; $51d9: $77
	ldh a, [c]                                       ; $51da: $f2
	rst SubAFromDE                                          ; $51db: $df
	ret nz                                           ; $51dc: $c0

	add sp, -$6a                                     ; $51dd: $e8 $96
	ld c, b                                          ; $51df: $48
	cp b                                             ; $51e0: $b8
	jr z, jr_01f_51eb                                ; $51e1: $28 $08

	ld [$0c0c], sp                                   ; $51e3: $08 $0c $0c
	nop                                              ; $51e6: $00
	ld a, $7b                                        ; $51e7: $3e $7b
	ld c, c                                          ; $51e9: $49

jr_01f_51ea:
	sbc h                                            ; $51ea: $9c

jr_01f_51eb:
	add c                                            ; $51eb: $81
	add e                                            ; $51ec: $83

jr_01f_51ed:
	add d                                            ; $51ed: $82
	db $fd                                           ; $51ee: $fd
	sbc e                                            ; $51ef: $9b
	inc e                                            ; $51f0: $1c
	ld h, $20                                        ; $51f1: $26 $20
	jr nz, jr_01f_5270                               ; $51f3: $20 $7b

	call z, Call_01f_609d                            ; $51f5: $cc $9d $60

jr_01f_51f8:
	jr c, jr_01f_51f8                                ; $51f8: $38 $fe

	sbc b                                            ; $51fa: $98
	inc h                                            ; $51fb: $24
	dec e                                            ; $51fc: $1d
	dec c                                            ; $51fd: $0d
	dec b                                            ; $51fe: $05
	dec b                                            ; $51ff: $05
	inc c                                            ; $5200: $0c
	inc b                                            ; $5201: $04
	ld a, e                                          ; $5202: $7b
	ld c, b                                          ; $5203: $48
	ld a, a                                          ; $5204: $7f
	cp c                                             ; $5205: $b9
	ld [hl], a                                       ; $5206: $77
	ld e, d                                          ; $5207: $5a
	sbc e                                            ; $5208: $9b
	ld b, $07                                        ; $5209: $06 $07
	dec c                                            ; $520b: $0d
	jr c, jr_01f_527d                                ; $520c: $38 $6f

	ld a, e                                          ; $520e: $7b
	ld a, [$c09a]                                    ; $520f: $fa $9a $c0
	ld a, e                                          ; $5212: $7b
	inc e                                            ; $5213: $1c
	sub h                                            ; $5214: $94
	call nz, $9277                                   ; $5215: $c4 $77 $92
	sbc h                                            ; $5218: $9c
	jr nz, @+$1a                                     ; $5219: $20 $18

	ld c, $7b                                        ; $521b: $0e $7b
	add hl, de                                       ; $521d: $19
	ld a, a                                          ; $521e: $7f
	db $db                                           ; $521f: $db
	sbc l                                            ; $5220: $9d
	ld b, b                                          ; $5221: $40
	jr nz, jr_01f_5293                               ; $5222: $20 $6f

	inc de                                           ; $5224: $13
	sbc d                                            ; $5225: $9a
	rrca                                             ; $5226: $0f
	add hl, sp                                       ; $5227: $39
	ld l, b                                          ; $5228: $68
	ld b, b                                          ; $5229: $40
	ld b, b                                          ; $522a: $40
	ld [hl], e                                       ; $522b: $73

jr_01f_522c:
	ld a, l                                          ; $522c: $7d
	ld a, a                                          ; $522d: $7f
	xor c                                            ; $522e: $a9
	sbc [hl]                                         ; $522f: $9e
	cp [hl]                                          ; $5230: $be
	ld a, [$e27f]                                    ; $5231: $fa $7f $e2
	ld a, e                                          ; $5234: $7b
	nop                                              ; $5235: $00
	sbc d                                            ; $5236: $9a

jr_01f_5237:
	call z, $3286                                    ; $5237: $cc $86 $32
	ld l, d                                          ; $523a: $6a
	ld a, [bc]                                       ; $523b: $0a
	ld a, e                                          ; $523c: $7b
	reti                                             ; $523d: $d9


	db $fc                                           ; $523e: $fc
	sbc b                                            ; $523f: $98
	ld a, [de]                                       ; $5240: $1a
	ld [hl-], a                                      ; $5241: $32
	ld b, [hl]                                       ; $5242: $46
	inc h                                            ; $5243: $24
	ld c, h                                          ; $5244: $4c
	ld a, b                                          ; $5245: $78
	ld h, b                                          ; $5246: $60
	ld [hl], e                                       ; $5247: $73
	rst SubAFromHL                                          ; $5248: $d7
	ld a, [$01df]                                    ; $5249: $fa $df $01
	sbc l                                            ; $524c: $9d
	ld [bc], a                                       ; $524d: $02
	ld a, [hl]                                       ; $524e: $7e
	ld a, e                                          ; $524f: $7b
	jr c, jr_01f_51ea                                ; $5250: $38 $98

	ld [$1609], sp                                   ; $5252: $08 $09 $16
	jr jr_01f_5277                                   ; $5255: $18 $20

	nop                                              ; $5257: $00
	ld [$8677], sp                                   ; $5258: $08 $77 $86
	push af                                          ; $525b: $f5
	rst SubAFromDE                                          ; $525c: $df
	add b                                            ; $525d: $80
	rst SubAFromDE                                          ; $525e: $df
	ld b, b                                          ; $525f: $40
	sbc l                                            ; $5260: $9d
	jr nz, jr_01f_52a2                               ; $5261: $20 $3f

	ld a, e                                          ; $5263: $7b
	ld [$cd6e], a                                    ; $5264: $ea $6e $cd
	ld a, [hl]                                       ; $5267: $7e
	cp b                                             ; $5268: $b8
	sbc d                                            ; $5269: $9a
	ld [$3448], sp                                   ; $526a: $08 $48 $34
	inc c                                            ; $526d: $0c
	ld [bc], a                                       ; $526e: $02
	push af                                          ; $526f: $f5

jr_01f_5270:
	ld l, e                                          ; $5270: $6b
	ret nz                                           ; $5271: $c0

	ei                                               ; $5272: $fb
	ld a, a                                          ; $5273: $7f
	ret nz                                           ; $5274: $c0

	ld l, a                                          ; $5275: $6f
	cp b                                             ; $5276: $b8

jr_01f_5277:
	ccf                                              ; $5277: $3f
	ret nz                                           ; $5278: $c0

	ld l, e                                          ; $5279: $6b
	ldh [$9d], a                                     ; $527a: $e0 $9d
	db $10                                           ; $527c: $10

jr_01f_527d:
	adc b                                            ; $527d: $88
	ld e, a                                          ; $527e: $5f

Jump_01f_527f:
	ret nz                                           ; $527f: $c0

	sbc $02                                          ; $5280: $de $02
	ld l, a                                          ; $5282: $6f
	call c, Call_01f_40df                            ; $5283: $dc $df $40
	call c, $9c02                                    ; $5286: $dc $02 $9c
	inc bc                                           ; $5289: $03
	ld [bc], a                                       ; $528a: $02
	inc b                                            ; $528b: $04
	halt                                             ; $528c: $76
	xor h                                            ; $528d: $ac
	rst SubAFromDE                                          ; $528e: $df
	ld [$049e], sp                                   ; $528f: $08 $9e $04
	ld [hl], d                                       ; $5292: $72

jr_01f_5293:
	or d                                             ; $5293: $b2
	ld a, a                                          ; $5294: $7f
	xor b                                            ; $5295: $a8
	ld a, a                                          ; $5296: $7f
	pop de                                           ; $5297: $d1
	ld hl, sp+$5a                                    ; $5298: $f8 $5a
	ld [$029c], sp                                   ; $529a: $08 $9c $02
	jr jr_01f_52ff                                   ; $529d: $18 $60

	ld e, [hl]                                       ; $529f: $5e
	ld b, b                                          ; $52a0: $40
	ld [hl], a                                       ; $52a1: $77

jr_01f_52a2:
	pop de                                           ; $52a2: $d1
	sbc $08                                          ; $52a3: $de $08
	ld h, [hl]                                       ; $52a5: $66
	ld c, e                                          ; $52a6: $4b
	db $dd                                           ; $52a7: $dd
	inc b                                            ; $52a8: $04
	sbc l                                            ; $52a9: $9d
	dec b                                            ; $52aa: $05
	ld [bc], a                                       ; $52ab: $02
	ld l, d                                          ; $52ac: $6a
	ld [hl], e                                       ; $52ad: $73
	ld [hl], a                                       ; $52ae: $77
	call nc, $04df                                   ; $52af: $d4 $df $04
	rst SubAFromDE                                          ; $52b2: $df
	ld [$10df], sp                                   ; $52b3: $08 $df $10
	ld [hl], e                                       ; $52b6: $73
	ld l, a                                          ; $52b7: $6f
	ld a, a                                          ; $52b8: $7f
	ret z                                            ; $52b9: $c8

	sbc d                                            ; $52ba: $9a
	ldh [rP1], a                                     ; $52bb: $e0 $00
	ld b, b                                          ; $52bd: $40
	ld b, b                                          ; $52be: $40
	add b                                            ; $52bf: $80
	ld e, d                                          ; $52c0: $5a
	inc b                                            ; $52c1: $04
	ld l, d                                          ; $52c2: $6a
	db $eb                                           ; $52c3: $eb
	cp $7f                                           ; $52c4: $fe $7f
	adc c                                            ; $52c6: $89
	sbc h                                            ; $52c7: $9c
	ld de, $0909                                     ; $52c8: $11 $09 $09
	sbc $06                                          ; $52cb: $de $06
	ld l, e                                          ; $52cd: $6b
	dec l                                            ; $52ce: $2d
	ld a, a                                          ; $52cf: $7f
	xor c                                            ; $52d0: $a9
	ld a, e                                          ; $52d1: $7b
	db $ed                                           ; $52d2: $ed
	ld [hl], a                                       ; $52d3: $77
	db $d3                                           ; $52d4: $d3
	ld e, a                                          ; $52d5: $5f
	add hl, sp                                       ; $52d6: $39
	ld h, c                                          ; $52d7: $61
	add sp, -$63                                     ; $52d8: $e8 $9d
	inc c                                            ; $52da: $0c
	jr nc, jr_01f_5357                               ; $52db: $30 $7a

	xor d                                            ; $52dd: $aa
	db $db                                           ; $52de: $db
	ld b, b                                          ; $52df: $40
	ld a, d                                          ; $52e0: $7a
	ld h, b                                          ; $52e1: $60
	ld a, a                                          ; $52e2: $7f
	sub l                                            ; $52e3: $95
	sbc d                                            ; $52e4: $9a
	jr @+$0a                                         ; $52e5: $18 $08

	dec c                                            ; $52e7: $0d
	ld c, a                                          ; $52e8: $4f
	ld h, a                                          ; $52e9: $67
	ld sp, hl                                        ; $52ea: $f9
	sbc h                                            ; $52eb: $9c
	inc hl                                           ; $52ec: $23
	ld sp, $7a10                                     ; $52ed: $31 $10 $7a
	ld l, b                                          ; $52f0: $68
	ld a, [$0c94]                                    ; $52f1: $fa $94 $0c
	ld [de], a                                       ; $52f4: $12
	ld bc, $e040                                     ; $52f5: $01 $40 $e0
	ld [hl], b                                       ; $52f8: $70
	ret z                                            ; $52f9: $c8

	adc b                                            ; $52fa: $88
	sub b                                            ; $52fb: $90
	pop hl                                           ; $52fc: $e1
	ld d, $f9                                        ; $52fd: $16 $f9

jr_01f_52ff:
	sbc b                                            ; $52ff: $98
	adc b                                            ; $5300: $88
	rst JumpTable                                          ; $5301: $c7
	ldh [rAUD4LEN], a                                ; $5302: $e0 $20
	ld bc, $fcff                                     ; $5304: $01 $ff $fc
	cp $dc                                           ; $5307: $fe $dc
	inc b                                            ; $5309: $04
	halt                                             ; $530a: $76
	ld d, $7f                                        ; $530b: $16 $7f
	jp nc, $467d                                     ; $530d: $d2 $7d $46

	sbc [hl]                                         ; $5310: $9e
	add c                                            ; $5311: $81
	ld h, a                                          ; $5312: $67
	ld a, $9a                                        ; $5313: $3e $9a
	add e                                            ; $5315: $83
	sub $38                                          ; $5316: $d6 $38
	jp Jump_01f_4ade                                 ; $5318: $c3 $de $4a


	ld a, [hl]                                       ; $531b: $7e
	ld [hl], l                                       ; $531c: $75
	sub [hl]                                         ; $531d: $96
	ld h, e                                          ; $531e: $63
	ld e, b                                          ; $531f: $58
	ld l, c                                          ; $5320: $69
	ld b, h                                          ; $5321: $44
	sbc e                                            ; $5322: $9b
	rrca                                             ; $5323: $0f
	add e                                            ; $5324: $83
	ld h, e                                          ; $5325: $63
	jr nc, jr_01f_539f                               ; $5326: $30 $77

	sub a                                            ; $5328: $97
	ld a, [hl]                                       ; $5329: $7e
	push bc                                          ; $532a: $c5

jr_01f_532b:
	ld [$e096], a                                    ; $532b: $ea $96 $e0
	db $fc                                           ; $532e: $fc

jr_01f_532f:
	ldh a, [rP1]                                     ; $532f: $f0 $00
	nop                                              ; $5331: $00
	ld hl, sp+$00                                    ; $5332: $f8 $00
	daa                                              ; $5334: $27
	inc e                                            ; $5335: $1c
	ld [hl], c                                       ; $5336: $71
	ld b, b                                          ; $5337: $40
	add sp, -$62                                     ; $5338: $e8 $9e
	adc b                                            ; $533a: $88
	jr z, jr_01f_532f                                ; $533b: $28 $f2

	sub a                                            ; $533d: $97
	rrca                                             ; $533e: $0f
	adc c                                            ; $533f: $89
	ld b, h                                          ; $5340: $44
	ld h, d                                          ; $5341: $62
	ld sp, $071c                                     ; $5342: $31 $1c $07
	ld bc, $a01f                                     ; $5345: $01 $1f $a0
	db $fc                                           ; $5348: $fc
	sub a                                            ; $5349: $97
	db $fc                                           ; $534a: $fc

jr_01f_534b:
	daa                                              ; $534b: $27
	inc e                                            ; $534c: $1c
	ld bc, $0402                                     ; $534d: $01 $02 $04
	ld sp, hl                                        ; $5350: $f9
	rlca                                             ; $5351: $07
	rra                                              ; $5352: $1f
	and b                                            ; $5353: $a0
	sbc [hl]                                         ; $5354: $9e
	sbc b                                            ; $5355: $98
	cpl                                              ; $5356: $2f

jr_01f_5357:
	and b                                            ; $5357: $a0
	ld d, $82                                        ; $5358: $16 $82
	ld a, [$059c]                                    ; $535a: $fa $9c $05
	inc bc                                           ; $535d: $03
	inc bc                                           ; $535e: $03
	sbc $04                                          ; $535f: $de $04
	rst SubAFromDE                                          ; $5361: $df
	ld [$0a9d], sp                                   ; $5362: $08 $9d $0a
	ld [bc], a                                       ; $5365: $02
	db $fd                                           ; $5366: $fd
	sbc d                                            ; $5367: $9a
	inc b                                            ; $5368: $04
	inc hl                                           ; $5369: $23
	nop                                              ; $536a: $00
	dec c                                            ; $536b: $0d
	jr z, jr_01f_534b                                ; $536c: $28 $dd

	ld e, b                                          ; $536e: $58
	sbc l                                            ; $536f: $9d
	ld d, h                                          ; $5370: $54
	ld h, e                                          ; $5371: $63
	rst FarCall                                          ; $5372: $f7
	sbc $80                                          ; $5373: $de $80
	rst SubAFromDE                                          ; $5375: $df
	ld b, b                                          ; $5376: $40
	sbc l                                            ; $5377: $9d
	ret nz                                           ; $5378: $c0

	add b                                            ; $5379: $80
	ld [hl], e                                       ; $537a: $73
	push af                                          ; $537b: $f5
	sbc e                                            ; $537c: $9b
	stop                                             ; $537d: $10 $00
	ld b, b                                          ; $537f: $40
	ld d, b                                          ; $5380: $50

jr_01f_5381:
	db $dd                                           ; $5381: $dd
	ld l, b                                          ; $5382: $68
	sbc l                                            ; $5383: $9d
	xor b                                            ; $5384: $a8
	jr jr_01f_5381                                   ; $5385: $18 $fa

	ld a, a                                          ; $5387: $7f
	rst AddAOntoHL                                          ; $5388: $ef
	ld a, e                                          ; $5389: $7b
	db $fc                                           ; $538a: $fc
	rst SubAFromDE                                          ; $538b: $df
	jr z, jr_01f_532b                                ; $538c: $28 $9d

	ld d, h                                          ; $538e: $54
	ld b, h                                          ; $538f: $44
	ld [hl], a                                       ; $5390: $77
	rst FarCall                                          ; $5391: $f7
	db $fd                                           ; $5392: $fd
	sbc b                                            ; $5393: $98
	ld b, h                                          ; $5394: $44
	ld d, h                                          ; $5395: $54
	ld d, h                                          ; $5396: $54
	ld b, h                                          ; $5397: $44
	inc h                                            ; $5398: $24
	jr z, jr_01f_53b3                                ; $5399: $28 $18

	ld l, e                                          ; $539b: $6b
	pop af                                           ; $539c: $f1
	rst SubAFromDE                                          ; $539d: $df
	db $10                                           ; $539e: $10

jr_01f_539f:
	ld [hl], e                                       ; $539f: $73
	ldh [$de], a                                     ; $53a0: $e0 $de
	ld b, h                                          ; $53a2: $44
	ld sp, hl                                        ; $53a3: $f9
	ld a, e                                          ; $53a4: $7b
	pop hl                                           ; $53a5: $e1
	rst SubAFromDE                                          ; $53a6: $df
	jr z, jr_01f_5410                                ; $53a7: $28 $67

	db $d3                                           ; $53a9: $d3
	ld [hl], e                                       ; $53aa: $73
	pop bc                                           ; $53ab: $c1
	ld a, a                                          ; $53ac: $7f
	ei                                               ; $53ad: $fb
	sbc e                                            ; $53ae: $9b
	jr c, jr_01f_541d                                ; $53af: $38 $6c

	ld b, h                                          ; $53b1: $44
	ld d, h                                          ; $53b2: $54

jr_01f_53b3:
	ld sp, hl                                        ; $53b3: $f9
	rst SubAFromDE                                          ; $53b4: $df
	ld b, h                                          ; $53b5: $44
	sbc l                                            ; $53b6: $9d
	ld l, h                                          ; $53b7: $6c
	jr c, jr_01f_5429                                ; $53b8: $38 $6f

	pop hl                                           ; $53ba: $e1
	sbc c                                            ; $53bb: $99
	inc bc                                           ; $53bc: $03
	ld c, $18                                        ; $53bd: $0e $18
	db $10                                           ; $53bf: $10
	jr nc, jr_01f_53e2                               ; $53c0: $30 $20

	ld l, a                                          ; $53c2: $6f
	push af                                          ; $53c3: $f5
	sbc c                                            ; $53c4: $99
	ld b, $0c                                        ; $53c5: $06 $0c
	jr nz, jr_01f_53e9                               ; $53c7: $20 $20

	inc l                                            ; $53c9: $2c
	jr nc, @+$7d                                     ; $53ca: $30 $7b

	pop af                                           ; $53cc: $f1
	sub b                                            ; $53cd: $90
	ld h, b                                          ; $53ce: $60
	ld [$020b], sp                                   ; $53cf: $08 $0b $02
	add hl, bc                                       ; $53d2: $09
	inc bc                                           ; $53d3: $03
	inc b                                            ; $53d4: $04
	dec b                                            ; $53d5: $05
	dec b                                            ; $53d6: $05
	nop                                              ; $53d7: $00
	nop                                              ; $53d8: $00
	ret nz                                           ; $53d9: $c0

	ld h, b                                          ; $53da: $60
	jr nz, jr_01f_53fd                               ; $53db: $20 $20

	ld [hl], e                                       ; $53dd: $73
	and b                                            ; $53de: $a0
	ld [hl], e                                       ; $53df: $73
	ld e, h                                          ; $53e0: $5c
	sbc l                                            ; $53e1: $9d

jr_01f_53e2:
	ld a, h                                          ; $53e2: $7c
	inc bc                                           ; $53e3: $03
	ld l, e                                          ; $53e4: $6b
	or $9e                                           ; $53e5: $f6 $9e
	add h                                            ; $53e7: $84
	ld [hl], a                                       ; $53e8: $77

jr_01f_53e9:
	ldh a, [c]                                       ; $53e9: $f2
	rst SubAFromDE                                          ; $53ea: $df
	ret nz                                           ; $53eb: $c0

	add sp, -$70                                     ; $53ec: $e8 $90
	ld c, b                                          ; $53ee: $48
	cp b                                             ; $53ef: $b8
	jr z, jr_01f_53fa                                ; $53f0: $28 $08

	ld [$0c0c], sp                                   ; $53f2: $08 $0c $0c
	nop                                              ; $53f5: $00
	ld a, $63                                        ; $53f6: $3e $63

jr_01f_53f8:
	pop bc                                           ; $53f8: $c1
	add b                                            ; $53f9: $80

jr_01f_53fa:
	add c                                            ; $53fa: $81
	add e                                            ; $53fb: $83
	add d                                            ; $53fc: $82

jr_01f_53fd:
	db $fd                                           ; $53fd: $fd
	sbc e                                            ; $53fe: $9b
	inc e                                            ; $53ff: $1c
	ld h, $20                                        ; $5400: $26 $20
	jr nz, jr_01f_547f                               ; $5402: $20 $7b

	call z, Call_01f_609d                            ; $5404: $cc $9d $60

jr_01f_5407:
	jr c, jr_01f_5407                                ; $5407: $38 $fe

	sub a                                            ; $5409: $97
	inc h                                            ; $540a: $24
	dec e                                            ; $540b: $1d
	dec c                                            ; $540c: $0d
	dec b                                            ; $540d: $05
	dec b                                            ; $540e: $05
	inc c                                            ; $540f: $0c

jr_01f_5410:
	inc b                                            ; $5410: $04
	inc b                                            ; $5411: $04
	ld [hl], a                                       ; $5412: $77
	or l                                             ; $5413: $b5
	ld [hl], a                                       ; $5414: $77
	dec bc                                           ; $5415: $0b
	sbc e                                            ; $5416: $9b
	ld b, $07                                        ; $5417: $06 $07
	dec c                                            ; $5419: $0d
	jr c, jr_01f_548b                                ; $541a: $38 $6f

	ld a, e                                          ; $541c: $7b

jr_01f_541d:
	ld a, [$c09a]                                    ; $541d: $fa $9a $c0
	ld a, e                                          ; $5420: $7b
	inc e                                            ; $5421: $1c
	sub h                                            ; $5422: $94
	call nz, $9277                                   ; $5423: $c4 $77 $92
	sbc d                                            ; $5426: $9a
	jr nz, @+$1a                                     ; $5427: $20 $18

jr_01f_5429:
	ld c, $03                                        ; $5429: $0e $03
	ld bc, $db7b                                     ; $542b: $01 $7b $db
	sbc h                                            ; $542e: $9c
	ld b, b                                          ; $542f: $40
	jr nz, jr_01f_5433                               ; $5430: $20 $01

	db $fc                                           ; $5432: $fc

jr_01f_5433:
	sbc d                                            ; $5433: $9a
	rrca                                             ; $5434: $0f
	add hl, sp                                       ; $5435: $39
	ld l, b                                          ; $5436: $68
	ld b, b                                          ; $5437: $40
	ld b, b                                          ; $5438: $40
	ld [hl], e                                       ; $5439: $73
	ld a, l                                          ; $543a: $7d
	ld a, a                                          ; $543b: $7f
	xor c                                            ; $543c: $a9
	sbc [hl]                                         ; $543d: $9e
	cp [hl]                                          ; $543e: $be
	ld h, [hl]                                       ; $543f: $66
	call nz, $787b                                   ; $5440: $c4 $7b $78
	sbc c                                            ; $5443: $99
	ld a, b                                          ; $5444: $78
	call z, $3286                                    ; $5445: $cc $86 $32
	ld l, d                                          ; $5448: $6a
	ld a, [bc]                                       ; $5449: $0a
	ld a, e                                          ; $544a: $7b
	reti                                             ; $544b: $d9


	db $fc                                           ; $544c: $fc
	sbc b                                            ; $544d: $98
	ld a, [de]                                       ; $544e: $1a
	ld [hl-], a                                      ; $544f: $32
	ld b, [hl]                                       ; $5450: $46
	inc h                                            ; $5451: $24
	ld c, h                                          ; $5452: $4c
	ld a, b                                          ; $5453: $78
	ld h, b                                          ; $5454: $60
	ld [hl], e                                       ; $5455: $73
	rst SubAFromHL                                          ; $5456: $d7
	ld a, [$01df]                                    ; $5457: $fa $df $01
	sbc l                                            ; $545a: $9d
	ld [bc], a                                       ; $545b: $02
	ld a, [hl]                                       ; $545c: $7e
	ld a, e                                          ; $545d: $7b
	jr c, jr_01f_53f8                                ; $545e: $38 $98

	ld [$1609], sp                                   ; $5460: $08 $09 $16
	jr jr_01f_5485                                   ; $5463: $18 $20

	nop                                              ; $5465: $00
	ld [$8677], sp                                   ; $5466: $08 $77 $86
	push af                                          ; $5469: $f5
	halt                                             ; $546a: $76
	add d                                            ; $546b: $82
	sbc l                                            ; $546c: $9d
	jr nz, jr_01f_54ae                               ; $546d: $20 $3f

	ld a, e                                          ; $546f: $7b
	ld [$7e72], a                                    ; $5470: $ea $72 $7e
	ld a, a                                          ; $5473: $7f
	ldh [$9a], a                                     ; $5474: $e0 $9a
	db $10                                           ; $5476: $10
	ld [$3448], sp                                   ; $5477: $08 $48 $34
	inc c                                            ; $547a: $0c
	ld [hl], d                                       ; $547b: $72
	ld d, d                                          ; $547c: $52
	ld c, e                                          ; $547d: $4b
	ret nz                                           ; $547e: $c0

jr_01f_547f:
	ei                                               ; $547f: $fb
	ld a, a                                          ; $5480: $7f
	ret nz                                           ; $5481: $c0

	ld l, a                                          ; $5482: $6f
	cp b                                             ; $5483: $b8
	ccf                                              ; $5484: $3f

jr_01f_5485:
	ret nz                                           ; $5485: $c0

	ld l, e                                          ; $5486: $6b
	ldh [$9d], a                                     ; $5487: $e0 $9d
	db $10                                           ; $5489: $10
	adc b                                            ; $548a: $88

jr_01f_548b:
	ld e, a                                          ; $548b: $5f
	ret nz                                           ; $548c: $c0

	sbc $02                                          ; $548d: $de $02
	ld l, a                                          ; $548f: $6f
	call c, Call_01f_40df                            ; $5490: $dc $df $40
	call c, $9c02                                    ; $5493: $dc $02 $9c
	inc bc                                           ; $5496: $03
	ld [bc], a                                       ; $5497: $02
	inc b                                            ; $5498: $04
	halt                                             ; $5499: $76
	xor h                                            ; $549a: $ac
	rst SubAFromDE                                          ; $549b: $df
	ld [$049e], sp                                   ; $549c: $08 $9e $04
	ld [hl], d                                       ; $549f: $72
	or d                                             ; $54a0: $b2
	ld a, a                                          ; $54a1: $7f
	xor b                                            ; $54a2: $a8
	ld a, a                                          ; $54a3: $7f
	pop de                                           ; $54a4: $d1
	ld hl, sp-$64                                    ; $54a5: $f8 $9c
	db $10                                           ; $54a7: $10
	jr nz, jr_01f_54ea                               ; $54a8: $20 $40

	ld l, a                                          ; $54aa: $6f
	ld a, [hl]                                       ; $54ab: $7e
	ld a, e                                          ; $54ac: $7b
	ret                                              ; $54ad: $c9


jr_01f_54ae:
	sbc l                                            ; $54ae: $9d
	jr jr_01f_5511                                   ; $54af: $18 $60

	ld h, a                                          ; $54b1: $67
	push af                                          ; $54b2: $f5
	halt                                             ; $54b3: $76
	dec e                                            ; $54b4: $1d
	call c, $fa08                                    ; $54b5: $dc $08 $fa
	ld [hl], l                                       ; $54b8: $75
	or d                                             ; $54b9: $b2
	ld a, [hl]                                       ; $54ba: $7e
	ld h, d                                          ; $54bb: $62
	ld a, a                                          ; $54bc: $7f
	or a                                             ; $54bd: $b7
	ld hl, sp+$7f                                    ; $54be: $f8 $7f
	xor [hl]                                         ; $54c0: $ae
	ld a, c                                          ; $54c1: $79
	and d                                            ; $54c2: $a2
	rst SubAFromDE                                          ; $54c3: $df
	db $10                                           ; $54c4: $10
	ld [hl], e                                       ; $54c5: $73
	ld l, a                                          ; $54c6: $6f
	ld a, a                                          ; $54c7: $7f
	ret z                                            ; $54c8: $c8

	sbc d                                            ; $54c9: $9a
	ldh [rP1], a                                     ; $54ca: $e0 $00
	ld b, b                                          ; $54cc: $40
	ld b, b                                          ; $54cd: $40
	add b                                            ; $54ce: $80
	ld e, a                                          ; $54cf: $5f
	call nz, $f27f                                   ; $54d0: $c4 $7f $f2
	ld h, e                                          ; $54d3: $63
	ld d, a                                          ; $54d4: $57
	ld a, a                                          ; $54d5: $7f
	adc c                                            ; $54d6: $89
	sbc h                                            ; $54d7: $9c
	ld de, $0909                                     ; $54d8: $11 $09 $09
	sbc $06                                          ; $54db: $de $06
	ld l, e                                          ; $54dd: $6b
	dec l                                            ; $54de: $2d
	ld [hl], l                                       ; $54df: $75
	and $7f                                          ; $54e0: $e6 $7f
	db $e4                                           ; $54e2: $e4
	ld a, e                                          ; $54e3: $7b
	db $d3                                           ; $54e4: $d3
	ld e, a                                          ; $54e5: $5f
	add hl, sp                                       ; $54e6: $39
	ld sp, hl                                        ; $54e7: $f9
	sbc h                                            ; $54e8: $9c
	inc bc                                           ; $54e9: $03

jr_01f_54ea:
	inc c                                            ; $54ea: $0c
	jr nc, jr_01f_5567                               ; $54eb: $30 $7a

	xor d                                            ; $54ed: $aa
	db $db                                           ; $54ee: $db
	ld b, b                                          ; $54ef: $40
	ld a, d                                          ; $54f0: $7a
	ld h, b                                          ; $54f1: $60
	ld a, a                                          ; $54f2: $7f
	sub l                                            ; $54f3: $95
	sbc d                                            ; $54f4: $9a
	jr @+$0a                                         ; $54f5: $18 $08

	dec c                                            ; $54f7: $0d
	ld c, a                                          ; $54f8: $4f
	ld h, a                                          ; $54f9: $67
	ld sp, hl                                        ; $54fa: $f9
	sbc h                                            ; $54fb: $9c
	inc hl                                           ; $54fc: $23
	ld sp, $7a10                                     ; $54fd: $31 $10 $7a
	ld l, b                                          ; $5500: $68
	ld a, [$0c94]                                    ; $5501: $fa $94 $0c
	ld [de], a                                       ; $5504: $12
	ld bc, $e040                                     ; $5505: $01 $40 $e0
	ld [hl], b                                       ; $5508: $70
	ret z                                            ; $5509: $c8

	adc b                                            ; $550a: $88
	sub b                                            ; $550b: $90
	pop hl                                           ; $550c: $e1
	ld d, $f9                                        ; $550d: $16 $f9
	sbc b                                            ; $550f: $98
	adc b                                            ; $5510: $88

jr_01f_5511:
	rst JumpTable                                          ; $5511: $c7
	ldh [rAUD4LEN], a                                ; $5512: $e0 $20
	ld bc, $fcff                                     ; $5514: $01 $ff $fc
	ld [hl], l                                       ; $5517: $75
	inc de                                           ; $5518: $13
	db $dd                                           ; $5519: $dd
	inc b                                            ; $551a: $04
	halt                                             ; $551b: $76
	ld d, $7f                                        ; $551c: $16 $7f
	jp nc, $029c                                     ; $551e: $d2 $9c $02

	ld bc, $6781                                     ; $5521: $01 $81 $67
	ld a, $9a                                        ; $5524: $3e $9a
	add e                                            ; $5526: $83
	sub $38                                          ; $5527: $d6 $38
	jp Jump_01f_4ade                                 ; $5529: $c3 $de $4a


	ld a, [hl]                                       ; $552c: $7e
	ld [hl], l                                       ; $552d: $75
	sub [hl]                                         ; $552e: $96
	ld h, e                                          ; $552f: $63
	ld e, b                                          ; $5530: $58
	sbc [hl]                                         ; $5531: $9e
	ld h, b                                          ; $5532: $60
	ld l, h                                          ; $5533: $6c
	push af                                          ; $5534: $f5
	sbc e                                            ; $5535: $9b
	rrca                                             ; $5536: $0f
	add e                                            ; $5537: $83
	ld h, e                                          ; $5538: $63
	jr nc, jr_01f_55b2                               ; $5539: $30 $77

	sub a                                            ; $553b: $97
	ld a, [hl]                                       ; $553c: $7e
	push bc                                          ; $553d: $c5
	ld [$e096], a                                    ; $553e: $ea $96 $e0
	db $fc                                           ; $5541: $fc
	ldh a, [rP1]                                     ; $5542: $f0 $00
	nop                                              ; $5544: $00
	ld hl, sp+$00                                    ; $5545: $f8 $00
	daa                                              ; $5547: $27
	inc e                                            ; $5548: $1c
	ld [hl], c                                       ; $5549: $71
	ld b, b                                          ; $554a: $40
	add sp, -$64                                     ; $554b: $e8 $9c
	adc b                                            ; $554d: $88
	jr jr_01f_5580                                   ; $554e: $18 $30

	ld l, e                                          ; $5550: $6b
	xor [hl]                                         ; $5551: $ae
	di                                               ; $5552: $f3
	sub a                                            ; $5553: $97
	rrca                                             ; $5554: $0f
	adc c                                            ; $5555: $89
	ld b, h                                          ; $5556: $44
	ld h, d                                          ; $5557: $62
	ld sp, $071c                                     ; $5558: $31 $1c $07
	ld bc, $a01f                                     ; $555b: $01 $1f $a0
	db $fc                                           ; $555e: $fc
	sub a                                            ; $555f: $97
	db $fc                                           ; $5560: $fc
	daa                                              ; $5561: $27
	inc e                                            ; $5562: $1c
	ld bc, $0402                                     ; $5563: $01 $02 $04
	ld sp, hl                                        ; $5566: $f9

jr_01f_5567:
	rlca                                             ; $5567: $07
	rra                                              ; $5568: $1f
	and b                                            ; $5569: $a0
	sbc [hl]                                         ; $556a: $9e
	sbc b                                            ; $556b: $98
	cpl                                              ; $556c: $2f
	and b                                            ; $556d: $a0
	ld b, a                                          ; $556e: $47
	add d                                            ; $556f: $82
	db $ed                                           ; $5570: $ed
	sub [hl]                                         ; $5571: $96
	ld [bc], a                                       ; $5572: $02
	ld b, $0c                                        ; $5573: $06 $0c
	jr jr_01f_5578                                   ; $5575: $18 $01

	inc bc                                           ; $5577: $03

jr_01f_5578:
	ld b, $09                                        ; $5578: $06 $09
	add hl, de                                       ; $557a: $19
	ldh a, [c]                                       ; $557b: $f2
	sbc e                                            ; $557c: $9b
	ld bc, $1f00                                     ; $557d: $01 $00 $1f

jr_01f_5580:
	ld [hl], b                                       ; $5580: $70
	ld sp, hl                                        ; $5581: $f9
	sub a                                            ; $5582: $97
	ret nz                                           ; $5583: $c0

	nop                                              ; $5584: $00
	nop                                              ; $5585: $00
	add b                                            ; $5586: $80
	nop                                              ; $5587: $00
	ld [bc], a                                       ; $5588: $02
	inc b                                            ; $5589: $04
	ld [$9bf5], sp                                   ; $558a: $08 $f5 $9b
	ldh a, [rOBP0]                                   ; $558d: $f0 $48
	rst $38                                          ; $558f: $ff
	ld b, $f9                                        ; $5590: $06 $f9
	sbc h                                            ; $5592: $9c

jr_01f_5593:
	inc b                                            ; $5593: $04
	ld b, $01                                        ; $5594: $06 $01
	rst AddAOntoHL                                          ; $5596: $ef
	sbc l                                            ; $5597: $9d
	ld hl, sp+$0f                                    ; $5598: $f8 $0f
	ld d, a                                          ; $559a: $57
	db $eb                                           ; $559b: $eb
	sbc e                                            ; $559c: $9b
	add b                                            ; $559d: $80
	ld b, b                                          ; $559e: $40
	ld h, b                                          ; $559f: $60
	jr nz, jr_01f_5593                               ; $55a0: $20 $f1

	ld a, e                                          ; $55a2: $7b
	xor c                                            ; $55a3: $a9
	db $fd                                           ; $55a4: $fd
	sub l                                            ; $55a5: $95
	db $10                                           ; $55a6: $10
	ld [$3060], sp                                   ; $55a7: $08 $60 $30
	jr @+$0a                                         ; $55aa: $18 $08

	inc c                                            ; $55ac: $0c
	inc b                                            ; $55ad: $04
	ld b, $02                                        ; $55ae: $06 $02
	ld h, e                                          ; $55b0: $63
	add h                                            ; $55b1: $84

jr_01f_55b2:
	rst SubAFromDE                                          ; $55b2: $df
	ld bc, $02dc                                     ; $55b3: $01 $dc $02
	ld h, e                                          ; $55b6: $63
	ld e, h                                          ; $55b7: $5c
	rst SubAFromDE                                          ; $55b8: $df
	ld [bc], a                                       ; $55b9: $02
	sbc $01                                          ; $55ba: $de $01
	rst $38                                          ; $55bc: $ff
	sbc e                                            ; $55bd: $9b
	ld h, h                                          ; $55be: $64
	inc [hl]                                         ; $55bf: $34
	inc e                                            ; $55c0: $1c
	inc c                                            ; $55c1: $0c
	ld l, a                                          ; $55c2: $6f
	rst AddAOntoHL                                          ; $55c3: $ef
	ld a, a                                          ; $55c4: $7f
	di                                               ; $55c5: $f3
	sbc c                                            ; $55c6: $99
	ld [$0404], sp                                   ; $55c7: $08 $04 $04
	ld [hl+], a                                      ; $55ca: $22
	nop                                              ; $55cb: $00
	inc b                                            ; $55cc: $04
	ld a, e                                          ; $55cd: $7b
	res 2, h                                         ; $55ce: $cb $94
	inc bc                                           ; $55d0: $03
	ld bc, $2301                                     ; $55d1: $01 $01 $23
	ld hl, $3020                                     ; $55d4: $21 $20 $30
	db $10                                           ; $55d7: $10
	sub b                                            ; $55d8: $90
	ret z                                            ; $55d9: $c8

	db $fc                                           ; $55da: $fc
	ld sp, hl                                        ; $55db: $f9
	sub a                                            ; $55dc: $97
	add sp, -$48                                     ; $55dd: $e8 $b8
	ld b, b                                          ; $55df: $40
	ret nz                                           ; $55e0: $c0

	inc b                                            ; $55e1: $04
	nop                                              ; $55e2: $00
	ccf                                              ; $55e3: $3f
	db $10                                           ; $55e4: $10
	ld [hl], a                                       ; $55e5: $77
	and e                                            ; $55e6: $a3
	rst SubAFromDE                                          ; $55e7: $df
	rrca                                             ; $55e8: $0f
	rst SubAFromDE                                          ; $55e9: $df
	add b                                            ; $55ea: $80
	sub a                                            ; $55eb: $97
	add hl, bc                                       ; $55ec: $09
	add a                                            ; $55ed: $87
	ret nz                                           ; $55ee: $c0

	ld h, b                                          ; $55ef: $60
	ld d, b                                          ; $55f0: $50
	ld b, b                                          ; $55f1: $40
	ld b, b                                          ; $55f2: $40
	ld h, b                                          ; $55f3: $60
	ld l, a                                          ; $55f4: $6f
	and h                                            ; $55f5: $a4
	sbc e                                            ; $55f6: $9b
	inc bc                                           ; $55f7: $03
	dec b                                            ; $55f8: $05
	ld e, d                                          ; $55f9: $5a
	ld c, $fe                                        ; $55fa: $0e $fe
	sub d                                            ; $55fc: $92
	ld h, b                                          ; $55fd: $60
	ldh [$c0], a                                     ; $55fe: $e0 $c0
	dec c                                            ; $5600: $0d
	add hl, de                                       ; $5601: $19

jr_01f_5602:
	ld sp, $e2f3                                     ; $5602: $31 $f3 $e2
	add d                                            ; $5605: $82
	ld [bc], a                                       ; $5606: $02
	ld [bc], a                                       ; $5607: $02
	add b                                            ; $5608: $80
	nop                                              ; $5609: $00
	db $db                                           ; $560a: $db
	ld [$ca7f], sp                                   ; $560b: $08 $7f $ca
	sbc $80                                          ; $560e: $de $80
	cp $9d                                           ; $5610: $fe $9d
	ld de, $de13                                     ; $5612: $11 $13 $de
	ld [de], a                                       ; $5615: $12
	sbc h                                            ; $5616: $9c
	ld d, $14                                        ; $5617: $16 $14
	inc h                                            ; $5619: $24
	ld a, e                                          ; $561a: $7b
	jp hl                                            ; $561b: $e9


	sbc b                                            ; $561c: $98
	jr jr_01f_562f                                   ; $561d: $18 $10

	db $10                                           ; $561f: $10
	jr nc, jr_01f_5642                               ; $5620: $30 $20

	inc l                                            ; $5622: $2c
	jr nz, jr_01f_5602                               ; $5623: $20 $dd

	ld b, b                                          ; $5625: $40
	sbc l                                            ; $5626: $9d
	add b                                            ; $5627: $80
	sbc [hl]                                         ; $5628: $9e
	ld h, a                                          ; $5629: $67
	ld [hl], e                                       ; $562a: $73
	ld l, e                                          ; $562b: $6b
	ld l, $9e                                        ; $562c: $2e $9e
	ld b, b                                          ; $562e: $40

jr_01f_562f:
	call c, $9402                                    ; $562f: $dc $02 $94
	inc bc                                           ; $5632: $03
	ld [bc], a                                       ; $5633: $02
	inc b                                            ; $5634: $04
	jr nz, @+$22                                     ; $5635: $20 $20

	db $10                                           ; $5637: $10
	db $10                                           ; $5638: $10
	ld [$0408], sp                                   ; $5639: $08 $08 $04
	inc bc                                           ; $563c: $03
	ld [hl], e                                       ; $563d: $73
	and b                                            ; $563e: $a0
	ld a, a                                          ; $563f: $7f
	ldh [c], a                                       ; $5640: $e2
	ld e, [hl]                                       ; $5641: $5e

jr_01f_5642:
	ret c                                            ; $5642: $d8

	sbc h                                            ; $5643: $9c
	db $10                                           ; $5644: $10
	jr nz, jr_01f_5687                               ; $5645: $20 $40

	ld [hl], a                                       ; $5647: $77
	or b                                             ; $5648: $b0
	ld [hl], e                                       ; $5649: $73
	ret                                              ; $564a: $c9


	sbc l                                            ; $564b: $9d
	jr jr_01f_56ae                                   ; $564c: $18 $60

	ld h, a                                          ; $564e: $67
	push af                                          ; $564f: $f5
	ld a, e                                          ; $5650: $7b
	add sp, $7b                                      ; $5651: $e8 $7b
	pop de                                           ; $5653: $d1
	sbc $08                                          ; $5654: $de $08
	ld a, [$039e]                                    ; $5656: $fa $9e $03
	db $dd                                           ; $5659: $dd
	inc b                                            ; $565a: $04
	sbc l                                            ; $565b: $9d
	dec b                                            ; $565c: $05
	ld [bc], a                                       ; $565d: $02
	ld [hl], e                                       ; $565e: $73
	pop bc                                           ; $565f: $c1
	ld l, a                                          ; $5660: $6f
	call nc, $04df                                   ; $5661: $d4 $df $04
	rst SubAFromDE                                          ; $5664: $df
	ld [$10df], sp                                   ; $5665: $08 $df $10
	ld [hl], d                                       ; $5668: $72
	rst GetHLinHL                                          ; $5669: $cf
	ld a, a                                          ; $566a: $7f
	ret z                                            ; $566b: $c8

	sbc l                                            ; $566c: $9d
	ldh [rP1], a                                     ; $566d: $e0 $00
	ld a, e                                          ; $566f: $7b
	add h                                            ; $5670: $84
	ld e, a                                          ; $5671: $5f
	call nz, $f27f                                   ; $5672: $c4 $7f $f2
	ld h, d                                          ; $5675: $62
	or a                                             ; $5676: $b7
	ld a, a                                          ; $5677: $7f
	adc c                                            ; $5678: $89
	sbc h                                            ; $5679: $9c
	ld de, $0909                                     ; $567a: $11 $09 $09
	sbc $06                                          ; $567d: $de $06
	ld h, [hl]                                       ; $567f: $66
	ld c, [hl]                                       ; $5680: $4e
	ld a, e                                          ; $5681: $7b
	rrca                                             ; $5682: $0f
	ld a, a                                          ; $5683: $7f
	db $e4                                           ; $5684: $e4
	ld a, e                                          ; $5685: $7b
	db $d3                                           ; $5686: $d3

jr_01f_5687:
	ld h, d                                          ; $5687: $62
	adc e                                            ; $5688: $8b
	ld h, e                                          ; $5689: $63
	or $9c                                           ; $568a: $f6 $9c
	inc bc                                           ; $568c: $03
	inc c                                            ; $568d: $0c
	jr nc, jr_01f_570a                               ; $568e: $30 $7a

	sub d                                            ; $5690: $92
	rst SubAFromDE                                          ; $5691: $df
	db $10                                           ; $5692: $10
	sbc l                                            ; $5693: $9d
	ld de, $dd30                                     ; $5694: $11 $30 $dd
	ld [hl+], a                                      ; $5697: $22
	ld sp, hl                                        ; $5698: $f9
	sbc c                                            ; $5699: $99
	ld [hl-], a                                      ; $569a: $32
	inc de                                           ; $569b: $13
	add hl, de                                       ; $569c: $19
	add hl, bc                                       ; $569d: $09
	dec c                                            ; $569e: $0d
	ld b, $7a                                        ; $569f: $06 $7a
	or e                                             ; $56a1: $b3
	ldh a, [c]                                       ; $56a2: $f2
	ld a, e                                          ; $56a3: $7b
	add h                                            ; $56a4: $84
	ld a, a                                          ; $56a5: $7f
	add e                                            ; $56a6: $83
	sbc $20                                          ; $56a7: $de $20
	ld a, d                                          ; $56a9: $7a
	and b                                            ; $56aa: $a0
	sbc d                                            ; $56ab: $9a
	inc b                                            ; $56ac: $04
	add d                                            ; $56ad: $82

jr_01f_56ae:
	sub d                                            ; $56ae: $92
	sub c                                            ; $56af: $91
	ld c, b                                          ; $56b0: $48
	db $dd                                           ; $56b1: $dd
	jr nz, @-$60                                     ; $56b2: $20 $9e

	jr nc, jr_01f_572d                               ; $56b4: $30 $77

	sbc a                                            ; $56b6: $9f
	ld a, e                                          ; $56b7: $7b
	and b                                            ; $56b8: $a0
	adc e                                            ; $56b9: $8b
	ld b, b                                          ; $56ba: $40
	nop                                              ; $56bb: $00
	ld b, b                                          ; $56bc: $40
	ld c, b                                          ; $56bd: $48
	nop                                              ; $56be: $00
	nop                                              ; $56bf: $00
	ld hl, $0603                                     ; $56c0: $21 $03 $06
	ld b, h                                          ; $56c3: $44
	inc c                                            ; $56c4: $0c
	nop                                              ; $56c5: $00
	ld c, b                                          ; $56c6: $48
	ld [$6404], sp                                   ; $56c7: $08 $04 $64
	ld d, h                                          ; $56ca: $54
	ld c, h                                          ; $56cb: $4c
	ld h, $02                                        ; $56cc: $26 $02
	ld a, e                                          ; $56ce: $7b
	adc h                                            ; $56cf: $8c
	db $fd                                           ; $56d0: $fd
	sbc [hl]                                         ; $56d1: $9e
	sub b                                            ; $56d2: $90
	ld sp, hl                                        ; $56d3: $f9
	sub a                                            ; $56d4: $97
	ld h, b                                          ; $56d5: $60
	ldh a, [$f2]                                     ; $56d6: $f0 $f2
	ld [hl-], a                                      ; $56d8: $32
	inc de                                           ; $56d9: $13
	ld de, $1410                                     ; $56da: $11 $10 $14
	ld sp, hl                                        ; $56dd: $f9
	sub h                                            ; $56de: $94
	ld l, $2b                                        ; $56df: $2e $2b
	ld sp, $1e00                                     ; $56e1: $31 $00 $1e
	ld h, b                                          ; $56e4: $60
	rra                                              ; $56e5: $1f
	dec [hl]                                         ; $56e6: $35
	inc c                                            ; $56e7: $0c
	inc b                                            ; $56e8: $04
	inc b                                            ; $56e9: $04
	ld l, d                                          ; $56ea: $6a
	cp l                                             ; $56eb: $bd
	sbc $03                                          ; $56ec: $de $03
	sbc h                                            ; $56ee: $9c
	add c                                            ; $56ef: $81
	pop bc                                           ; $56f0: $c1
	ld h, c                                          ; $56f1: $61
	db $fd                                           ; $56f2: $fd
	sub b                                            ; $56f3: $90
	and b                                            ; $56f4: $a0
	ld h, b                                          ; $56f5: $60
	ld h, b                                          ; $56f6: $60
	ld b, b                                          ; $56f7: $40
	ld sp, $811d                                     ; $56f8: $31 $1d $81
	pop hl                                           ; $56fb: $e1
	ld de, $8105                                     ; $56fc: $11 $05 $81
	ld bc, $380e                                     ; $56ff: $01 $0e $38
	ld l, b                                          ; $5702: $68
	ld [hl], l                                       ; $5703: $75
	ld sp, hl                                        ; $5704: $f9
	ld a, [hl]                                       ; $5705: $7e
	ld l, $7f                                        ; $5706: $2e $7f
	reti                                             ; $5708: $d9


	sbc d                                            ; $5709: $9a

jr_01f_570a:
	ld b, b                                          ; $570a: $40
	ldh [$b0], a                                     ; $570b: $e0 $b0
	db $10                                           ; $570d: $10
	jr @+$74                                         ; $570e: $18 $72

	dec bc                                           ; $5710: $0b
	ld [hl], a                                       ; $5711: $77
	ld [hl], b                                       ; $5712: $70
	ld a, e                                          ; $5713: $7b
	rst JumpTable                                          ; $5714: $c7
	ld [hl], d                                       ; $5715: $72
	rla                                              ; $5716: $17
	ld h, a                                          ; $5717: $67
	jr z, jr_01f_5777                                ; $5718: $28 $5d

	xor c                                            ; $571a: $a9
	sbc h                                            ; $571b: $9c
	add b                                            ; $571c: $80
	ret nz                                           ; $571d: $c0

	ld a, a                                          ; $571e: $7f
	ld e, a                                          ; $571f: $5f
	ld b, c                                          ; $5720: $41
	ld a, e                                          ; $5721: $7b
	ldh a, [c]                                       ; $5722: $f2
	sbc d                                            ; $5723: $9a
	ld b, b                                          ; $5724: $40
	ld l, a                                          ; $5725: $6f
	jr c, jr_01f_5738                                ; $5726: $38 $10

	jr jr_01f_578d                                   ; $5728: $18 $63

	jr c, jr_01f_57ab                                ; $572a: $38 $7f

	ld h, b                                          ; $572c: $60

jr_01f_572d:
	ld a, c                                          ; $572d: $79
	add $9e                                          ; $572e: $c6 $9e
	cp $5e                                           ; $5730: $fe $5e
	xor b                                            ; $5732: $a8
	ld a, l                                          ; $5733: $7d
	inc de                                           ; $5734: $13
	sbc c                                            ; $5735: $99
	ld b, $e4                                        ; $5736: $06 $e4

jr_01f_5738:
	inc a                                            ; $5738: $3c
	dec d                                            ; $5739: $15
	dec d                                            ; $573a: $15
	ld [$796f], sp                                   ; $573b: $08 $6f $79
	sbc e                                            ; $573e: $9b
	nop                                              ; $573f: $00
	dec [hl]                                         ; $5740: $35
	daa                                              ; $5741: $27
	ld h, e                                          ; $5742: $63
	ld a, d                                          ; $5743: $7a
	dec c                                            ; $5744: $0d
	ld l, c                                          ; $5745: $69
	ret                                              ; $5746: $c9


	ld a, l                                          ; $5747: $7d
	add sp, $7f                                      ; $5748: $e8 $7f
	ld c, b                                          ; $574a: $48
	ld a, a                                          ; $574b: $7f
	ldh a, [c]                                       ; $574c: $f2
	ld a, c                                          ; $574d: $79
	cp $ff                                           ; $574e: $fe $ff
	sbc [hl]                                         ; $5750: $9e
	add e                                            ; $5751: $83
	ld e, h                                          ; $5752: $5c
	ld a, [$079d]                                    ; $5753: $fa $9d $07
	inc e                                            ; $5756: $1c
	ld h, [hl]                                       ; $5757: $66
	sub h                                            ; $5758: $94
	sbc h                                            ; $5759: $9c
	ret nz                                           ; $575a: $c0

	ld bc, $fe7f                                     ; $575b: $01 $7f $fe
	ld a, l                                          ; $575e: $7d
	ldh a, [$7d]                                     ; $575f: $f0 $7d
	pop af                                           ; $5761: $f1
	ld a, l                                          ; $5762: $7d
	add $9e                                          ; $5763: $c6 $9e
	jr c, jr_01f_57e0                                ; $5765: $38 $79

	ld a, c                                          ; $5767: $79
	sbc h                                            ; $5768: $9c
	inc b                                            ; $5769: $04
	inc c                                            ; $576a: $0c
	ld [$d373], sp                                   ; $576b: $08 $73 $d3
	ld h, a                                          ; $576e: $67
	db $eb                                           ; $576f: $eb
	ld a, a                                          ; $5770: $7f
	di                                               ; $5771: $f3
	cp $df                                           ; $5772: $fe $df
	ld l, h                                          ; $5774: $6c
	sbc e                                            ; $5775: $9b
	reti                                             ; $5776: $d9


jr_01f_5777:
	ld [hl], a                                       ; $5777: $77
	ld [hl], $6e                                     ; $5778: $36 $6e
	ld sp, hl                                        ; $577a: $f9
	sbc c                                            ; $577b: $99
	ld sp, hl                                        ; $577c: $f9
	rla                                              ; $577d: $17
	ld e, b                                          ; $577e: $58
	db $db                                           ; $577f: $db
	sbc c                                            ; $5780: $99
	jr c, jr_01f_57f8                                ; $5781: $38 $75

	ld a, c                                          ; $5783: $79
	ld h, b                                          ; $5784: $60
	db $eb                                           ; $5785: $eb
	sbc d                                            ; $5786: $9a
	ret c                                            ; $5787: $d8

	or b                                             ; $5788: $b0
	ldh a, [$60]                                     ; $5789: $f0 $60
	ldh [$f9], a                                     ; $578b: $e0 $f9

jr_01f_578d:
	sbc c                                            ; $578d: $99
	or b                                             ; $578e: $b0
	inc e                                            ; $578f: $1c
	ld l, a                                          ; $5790: $6f
	ld [hl], $40                                     ; $5791: $36 $40
	ld h, b                                          ; $5793: $60
	ld a, d                                          ; $5794: $7a
	and [hl]                                         ; $5795: $a6
	ldh a, [$03]                                     ; $5796: $f0 $03
	cp b                                             ; $5798: $b8
	cpl                                              ; $5799: $2f
	cp b                                             ; $579a: $b8
	sbc c                                            ; $579b: $99
	ld e, b                                          ; $579c: $58
	xor b                                            ; $579d: $a8
	ld hl, sp+$6c                                    ; $579e: $f8 $6c
	call nc, $e050                                   ; $57a0: $d4 $50 $e0
	rst SubAFromDE                                          ; $57a3: $df
	sbc b                                            ; $57a4: $98
	ld b, b                                          ; $57a5: $40
	or e                                             ; $57a6: $b3
	push hl                                          ; $57a7: $e5
	ld e, a                                          ; $57a8: $5f
	sbc [hl]                                         ; $57a9: $9e
	db $ed                                           ; $57aa: $ed

jr_01f_57ab:
	ld a, [hl-]                                      ; $57ab: $3a
	ld sp, hl                                        ; $57ac: $f9
	sbc [hl]                                         ; $57ad: $9e
	and b                                            ; $57ae: $a0
	ld h, c                                          ; $57af: $61
	xor $f5                                          ; $57b0: $ee $f5
	ld a, [hl]                                       ; $57b2: $7e
	or e                                             ; $57b3: $b3
	pop af                                           ; $57b4: $f1
	ld l, h                                          ; $57b5: $6c
	nop                                              ; $57b6: $00
	adc a                                            ; $57b7: $8f
	ld [$0800], sp                                   ; $57b8: $08 $00 $08
	nop                                              ; $57bb: $00
	ldh a, [$f0]                                     ; $57bc: $f0 $f0
	ldh [$e0], a                                     ; $57be: $e0 $e0
	ld b, $04                                        ; $57c0: $06 $04
	ld [bc], a                                       ; $57c2: $02

jr_01f_57c3:
	nop                                              ; $57c3: $00
	ld a, [hl+]                                      ; $57c4: $2a
	ld a, [hl+]                                      ; $57c5: $2a
	jr z, jr_01f_57f1                                ; $57c6: $28 $29

	ld [hl], a                                       ; $57c8: $77
	ldh a, [$df]                                     ; $57c9: $f0 $df
	pop hl                                           ; $57cb: $e1
	rst SubAFromDE                                          ; $57cc: $df
	pop af                                           ; $57cd: $f1
	sub a                                            ; $57ce: $97
	ld a, [bc]                                       ; $57cf: $0a
	ld [$0c0e], sp                                   ; $57d0: $08 $0e $0c
	jr z, jr_01f_57fd                                ; $57d3: $28 $28

	ld a, [hl+]                                      ; $57d5: $2a
	dec hl                                           ; $57d6: $2b
	ld b, a                                          ; $57d7: $47
	ldh [$80], a                                     ; $57d8: $e0 $80
	rlca                                             ; $57da: $07
	rrca                                             ; $57db: $0f
	rlca                                             ; $57dc: $07
	rrca                                             ; $57dd: $0f
	pop af                                           ; $57de: $f1
	pop af                                           ; $57df: $f1

jr_01f_57e0:
	pop hl                                           ; $57e0: $e1
	pop hl                                           ; $57e1: $e1
	ld d, $14                                        ; $57e2: $16 $14
	ld [de], a                                       ; $57e4: $12
	db $10                                           ; $57e5: $10
	ld l, d                                          ; $57e6: $6a
	ld l, d                                          ; $57e7: $6a
	ld l, b                                          ; $57e8: $68
	ld l, c                                          ; $57e9: $69
	ld d, $0e                                        ; $57ea: $16 $0e
	ld de, $e016                                     ; $57ec: $11 $16 $e0
	ldh [$f0], a                                     ; $57ef: $e0 $f0

jr_01f_57f1:
	ldh [rAUD1SWEEP], a                              ; $57f1: $e0 $10
	ld [de], a                                       ; $57f3: $12
	jr jr_01f_5806                                   ; $57f4: $18 $10

	ld l, b                                          ; $57f6: $68
	ld l, b                                          ; $57f7: $68

jr_01f_57f8:
	ld l, e                                          ; $57f8: $6b
	sbc c                                            ; $57f9: $99
	ld l, b                                          ; $57fa: $68
	ld c, $1a                                        ; $57fb: $0e $1a

jr_01f_57fd:
	ld [de], a                                       ; $57fd: $12
	ld d, $e0                                        ; $57fe: $16 $e0
	ld a, e                                          ; $5800: $7b
	rst GetHLinHL                                          ; $5801: $cf
	sbc c                                            ; $5802: $99
	ld [de], a                                       ; $5803: $12
	jr nz, jr_01f_5824                               ; $5804: $20 $1e

jr_01f_5806:
	db $10                                           ; $5806: $10
	ld l, b                                          ; $5807: $68
	ld l, [hl]                                       ; $5808: $6e
	ld h, e                                          ; $5809: $63
	ldh a, [$9a]                                     ; $580a: $f0 $9a
	ldh a, [rAUD1ENV]                                ; $580c: $f0 $12
	ld [hl+], a                                      ; $580e: $22
	ld e, $06                                        ; $580f: $1e $06
	ld a, e                                          ; $5811: $7b
	ldh a, [hDisp1_BGP]                                     ; $5812: $f0 $92
	ld a, [hl+]                                      ; $5814: $2a
	ld c, $f0                                        ; $5815: $0e $f0
	inc b                                            ; $5817: $04
	ld a, [hl+]                                      ; $5818: $2a
	ld d, $e0                                        ; $5819: $16 $e0
	ld [bc], a                                       ; $581b: $02
	jr z, jr_01f_582c                                ; $581c: $28 $0e

	ldh [rP1], a                                     ; $581e: $e0 $00
	add hl, hl                                       ; $5820: $29
	adc l                                            ; $5821: $8d
	nop                                              ; $5822: $00
	sub e                                            ; $5823: $93

jr_01f_5824:
	ld [$0d00], sp                                   ; $5824: $08 $00 $0d
	db $fd                                           ; $5827: $fd
	pop hl                                           ; $5828: $e1
	pop hl                                           ; $5829: $e1
	pop af                                           ; $582a: $f1
	pop af                                           ; $582b: $f1

jr_01f_582c:
	ld [bc], a                                       ; $582c: $02
	nop                                              ; $582d: $00
	ld [$dd04], sp                                   ; $582e: $08 $04 $dd
	jr z, @-$60                                      ; $5831: $28 $9e

	dec b                                            ; $5833: $05
	ld a, e                                          ; $5834: $7b
	rst AddAOntoHL                                          ; $5835: $ef
	sbc [hl]                                         ; $5836: $9e
	pop af                                           ; $5837: $f1
	ld a, e                                          ; $5838: $7b
	rst AddAOntoHL                                          ; $5839: $ef
	sbc d                                            ; $583a: $9a
	ld b, $0c                                        ; $583b: $06 $0c
	ld a, [bc]                                       ; $583d: $0a
	ld [$de2b], sp                                   ; $583e: $08 $2b $de
	jr z, jr_01f_57c3                                ; $5841: $28 $80

	db $fd                                           ; $5843: $fd
	dec b                                            ; $5844: $05
	inc b                                            ; $5845: $04
	inc c                                            ; $5846: $0c
	pop af                                           ; $5847: $f1
	pop af                                           ; $5848: $f1
	ldh a, [$f0]                                     ; $5849: $f0 $f0
	inc b                                            ; $584b: $04
	ld b, $18                                        ; $584c: $06 $18
	ld d, $28                                        ; $584e: $16 $28
	dec hl                                           ; $5850: $2b
	ld l, d                                          ; $5851: $6a
	ld l, d                                          ; $5852: $6a
	inc b                                            ; $5853: $04
	inc c                                            ; $5854: $0c
	ld de, $e009                                     ; $5855: $11 $09 $e0
	ldh [$f0], a                                     ; $5858: $e0 $f0
	ldh a, [rAUD1SWEEP]                              ; $585a: $f0 $10
	ld c, $12                                        ; $585c: $0e $12
	inc d                                            ; $585e: $14
	ld l, b                                          ; $585f: $68
	ld l, c                                          ; $5860: $69
	ld l, d                                          ; $5861: $6a
	sbc d                                            ; $5862: $9a
	ld l, d                                          ; $5863: $6a
	add hl, bc                                       ; $5864: $09
	ld de, $1616                                     ; $5865: $11 $16 $16
	ld a, e                                          ; $5868: $7b
	ldh a, [$9a]                                     ; $5869: $f0 $9a
	ldh [rAUD1SWEEP], a                              ; $586b: $e0 $10
	ld c, $16                                        ; $586d: $0e $16
	ld c, $7b                                        ; $586f: $0e $7b
	ldh a, [$99]                                     ; $5871: $f0 $99
	ld l, b                                          ; $5873: $68
	ld c, $0e                                        ; $5874: $0e $0e
	rla                                              ; $5876: $17
	rrca                                             ; $5877: $0f
	ldh a, [$de]                                     ; $5878: $f0 $de
	ldh [hDisp1_WY], a                                     ; $587a: $e0 $95
	jr jr_01f_588e                                   ; $587c: $18 $10

	ld c, $10                                        ; $587e: $0e $10
	ld l, d                                          ; $5880: $6a
	ld l, c                                          ; $5881: $69
	ld l, b                                          ; $5882: $68
	ld l, b                                          ; $5883: $68
	ld a, [de]                                       ; $5884: $1a
	ld [de], a                                       ; $5885: $12
	ld a, e                                          ; $5886: $7b
	ldh a, [$7b]                                     ; $5887: $f0 $7b
	rst AddAOntoHL                                          ; $5889: $ef
	sbc c                                            ; $588a: $99
	inc e                                            ; $588b: $1c
	ld e, $0e                                        ; $588c: $1e $0e

jr_01f_588e:
	db $10                                           ; $588e: $10
	ld l, [hl]                                       ; $588f: $6e
	ld l, e                                          ; $5890: $6b
	ld [hl], a                                       ; $5891: $77
	ldh a, [hDisp0_BGP]                                     ; $5892: $f0 $85
	inc e                                            ; $5894: $1c
	rla                                              ; $5895: $17
	ldh a, [$f0]                                     ; $5896: $f0 $f0
	pop af                                           ; $5898: $f1
	pop hl                                           ; $5899: $e1
	ld a, [de]                                       ; $589a: $1a
	ld e, $08                                        ; $589b: $1e $08
	ld [bc], a                                       ; $589d: $02
	ld l, [hl]                                       ; $589e: $6e
	ld l, e                                          ; $589f: $6b
	jr z, @+$2a                                      ; $58a0: $28 $28

	inc c                                            ; $58a2: $0c
	pop af                                           ; $58a3: $f1
	inc b                                            ; $58a4: $04
	jr z, @+$16                                      ; $58a5: $28 $14

	pop af                                           ; $58a7: $f1
	ld b, $2a                                        ; $58a8: $06 $2a
	rrca                                             ; $58aa: $0f
	pop hl                                           ; $58ab: $e1
	nop                                              ; $58ac: $00
	add hl, hl                                       ; $58ad: $29
	ld [hl], a                                       ; $58ae: $77
	nop                                              ; $58af: $00
	adc a                                            ; $58b0: $8f
	ld [$0800], sp                                   ; $58b1: $08 $00 $08
	nop                                              ; $58b4: $00
	pop af                                           ; $58b5: $f1
	pop af                                           ; $58b6: $f1
	pop hl                                           ; $58b7: $e1
	pop hl                                           ; $58b8: $e1
	ld a, [hl+]                                      ; $58b9: $2a
	jr z, jr_01f_58e0                                ; $58ba: $28 $24

	ld [hl+], a                                      ; $58bc: $22
	ld a, [hl+]                                      ; $58bd: $2a
	ld a, [hl+]                                      ; $58be: $2a
	ld l, $2f                                        ; $58bf: $2e $2f
	ld h, a                                          ; $58c1: $67
	ldh a, [$9b]                                     ; $58c2: $f0 $9b
	jr nc, jr_01f_58f4                               ; $58c4: $30 $2e

	inc h                                            ; $58c6: $24
	inc l                                            ; $58c7: $2c
	ld [hl], a                                       ; $58c8: $77
	ldh a, [$8b]                                     ; $58c9: $f0 $8b
	inc bc                                           ; $58cb: $03
	dec bc                                           ; $58cc: $0b
	inc bc                                           ; $58cd: $03
	dec bc                                           ; $58ce: $0b
	ldh a, [$f0]                                     ; $58cf: $f0 $f0
	ldh [$e0], a                                     ; $58d1: $e0 $e0
	inc a                                            ; $58d3: $3c
	ld a, [hl-]                                      ; $58d4: $3a
	ld [hl-], a                                      ; $58d5: $32
	inc [hl]                                         ; $58d6: $34
	ld l, d                                          ; $58d7: $6a
	ld l, d                                          ; $58d8: $6a
	ld l, $2f                                        ; $58d9: $2e $2f
	ld a, [bc]                                       ; $58db: $0a
	ld [de], a                                       ; $58dc: $12
	ld [de], a                                       ; $58dd: $12
	ld a, [bc]                                       ; $58de: $0a
	ld [hl], a                                       ; $58df: $77

jr_01f_58e0:
	ldh a, [$9b]                                     ; $58e0: $f0 $9b
	jr c, jr_01f_591a                                ; $58e2: $38 $36

	inc [hl]                                         ; $58e4: $34
	ld [hl-], a                                      ; $58e5: $32
	ld [hl], a                                       ; $58e6: $77
	ldh a, [$df]                                     ; $58e7: $f0 $df
	jr @-$1f                                         ; $58e9: $18 $df

	db $10                                           ; $58eb: $10
	ld a, a                                          ; $58ec: $7f
	pop af                                           ; $58ed: $f1
	ld a, a                                          ; $58ee: $7f
	cp $93                                           ; $58ef: $fe $93
	ld a, [hl-]                                      ; $58f1: $3a
	inc [hl]                                         ; $58f2: $34
	inc a                                            ; $58f3: $3c

jr_01f_58f4:
	ld [hl-], a                                      ; $58f4: $32
	ld l, d                                          ; $58f5: $6a
	ld l, $6a                                        ; $58f6: $2e $6a
	cpl                                              ; $58f8: $2f
	inc de                                           ; $58f9: $13
	dec de                                           ; $58fa: $1b
	jr jr_01f_590d                                   ; $58fb: $18 $10

	ld [hl], a                                       ; $58fd: $77
	ldh [$9d], a                                     ; $58fe: $e0 $9d
	ld a, $1c                                        ; $5900: $3e $1c
	ld a, e                                          ; $5902: $7b
	ldh [$9a], a                                     ; $5903: $e0 $9a
	ld l, [hl]                                       ; $5905: $6e
	ld l, $2f                                        ; $5906: $2e $2f
	dec de                                           ; $5908: $1b
	inc de                                           ; $5909: $13
	ld l, a                                          ; $590a: $6f
	ldh a, [$9a]                                     ; $590b: $f0 $9a

jr_01f_590d:
	ld a, [de]                                       ; $590d: $1a
	ld a, $34                                        ; $590e: $3e $34
	ld [hl-], a                                      ; $5910: $32
	ld l, [hl]                                       ; $5911: $6e
	ld a, e                                          ; $5912: $7b
	ret nc                                           ; $5913: $d0

	rst SubAFromDE                                          ; $5914: $df
	rla                                              ; $5915: $17
	rst SubAFromDE                                          ; $5916: $df
	rrca                                             ; $5917: $0f
	ld a, a                                          ; $5918: $7f
	and c                                            ; $5919: $a1

jr_01f_591a:
	ld a, a                                          ; $591a: $7f
	cp $97                                           ; $591b: $fe $97
	ld a, [hl+]                                      ; $591d: $2a
	inc h                                            ; $591e: $24
	jr z, jr_01f_5943                                ; $591f: $28 $22

	ld a, [hl+]                                      ; $5921: $2a
	ld l, $2a                                        ; $5922: $2e $2a
	cpl                                              ; $5924: $2f
	ld l, d                                          ; $5925: $6a
	nop                                              ; $5926: $00
	adc a                                            ; $5927: $8f
	ld [$0800], sp                                   ; $5928: $08 $00 $08
	nop                                              ; $592b: $00
	ldh [$e0], a                                     ; $592c: $e0 $e0
	ldh a, [$f0]                                     ; $592e: $f0 $f0
	ld a, [hl+]                                      ; $5930: $2a
	jr z, jr_01f_5939                                ; $5931: $28 $06

	inc b                                            ; $5933: $04
	jr z, jr_01f_595e                                ; $5934: $28 $28

	ld a, [hl+]                                      ; $5936: $2a
	dec hl                                           ; $5937: $2b
	ld [hl], a                                       ; $5938: $77

jr_01f_5939:
	ldh a, [$df]                                     ; $5939: $f0 $df
	pop hl                                           ; $593b: $e1
	rst SubAFromDE                                          ; $593c: $df
	pop af                                           ; $593d: $f1
	sbc e                                            ; $593e: $9b
	ld l, $2c                                        ; $593f: $2e $2c
	ld c, $0c                                        ; $5941: $0e $0c

jr_01f_5943:
	ld h, a                                          ; $5943: $67
	ldh a, [$57]                                     ; $5944: $f0 $57
	ldh [$9b], a                                     ; $5946: $e0 $9b
	rlca                                             ; $5948: $07
	rrca                                             ; $5949: $0f
	rlca                                             ; $594a: $07
	rrca                                             ; $594b: $0f
	ld [hl], a                                       ; $594c: $77
	ldh [hDisp1_OBP0], a                                     ; $594d: $e0 $93
	ld [hl-], a                                      ; $594f: $32
	jr nc, jr_01f_5968                               ; $5950: $30 $16

	inc d                                            ; $5952: $14
	ld l, b                                          ; $5953: $68
	ld l, b                                          ; $5954: $68
	ld l, d                                          ; $5955: $6a
	ld l, e                                          ; $5956: $6b
	dec d                                            ; $5957: $15
	dec c                                            ; $5958: $0d
	ld de, $7b15                                     ; $5959: $11 $15 $7b
	ldh [hDisp1_BGP], a                                     ; $595c: $e0 $92

jr_01f_595e:
	ldh [$30], a                                     ; $595e: $e0 $30
	ld [hl-], a                                      ; $5960: $32
	jr jr_01f_5993                                   ; $5961: $18 $30

	ld l, b                                          ; $5963: $68
	ld l, b                                          ; $5964: $68
	ld l, e                                          ; $5965: $6b
	ld l, b                                          ; $5966: $68
	dec c                                            ; $5967: $0d

jr_01f_5968:
	ld a, [de]                                       ; $5968: $1a
	ld [de], a                                       ; $5969: $12
	dec d                                            ; $596a: $15
	ld a, e                                          ; $596b: $7b
	pop de                                           ; $596c: $d1
	sbc b                                            ; $596d: $98
	ldh [$32], a                                     ; $596e: $e0 $32
	jr nz, jr_01f_5990                               ; $5970: $20 $1e

	jr nc, @+$6a                                     ; $5972: $30 $68

	ld l, [hl]                                       ; $5974: $6e
	ld [hl], e                                       ; $5975: $73
	ldh a, [$9e]                                     ; $5976: $f0 $9e
	ld d, $73                                        ; $5978: $16 $73
	ldh a, [$9c]                                     ; $597a: $f0 $9c
	ld [hl+], a                                      ; $597c: $22
	ld e, $2a                                        ; $597d: $1e $2a
	ld a, e                                          ; $597f: $7b
	ldh a, [hDisp1_BGP]                                     ; $5980: $f0 $92
	jr z, @+$10                                      ; $5982: $28 $0e

	ldh [$28], a                                     ; $5984: $e0 $28
	jr z, jr_01f_599e                                ; $5986: $28 $16

	ldh a, [rTMA]                                    ; $5988: $f0 $06
	ld a, [hl+]                                      ; $598a: $2a
	ld c, $f0                                        ; $598b: $0e $f0
	inc b                                            ; $598d: $04
	dec hl                                           ; $598e: $2b
	ld [de], a                                       ; $598f: $12

jr_01f_5990:
	ld bc, $10de                                     ; $5990: $01 $de $10

jr_01f_5993:
	sub [hl]                                         ; $5993: $96
	ld [$d8b8], sp                                   ; $5994: $08 $b8 $d8
	ret z                                            ; $5997: $c8

	ret c                                            ; $5998: $d8

	ld a, [hl+]                                      ; $5999: $2a
	ld [hl], $14                                     ; $599a: $36 $14
	inc [hl]                                         ; $599c: $34
	db $dd                                           ; $599d: $dd

jr_01f_599e:
	ld a, [hl+]                                      ; $599e: $2a
	sbc e                                            ; $599f: $9b
	nop                                              ; $59a0: $00
	ld hl, sp-$10                                    ; $59a1: $f8 $f0
	add sp, -$23                                     ; $59a3: $e8 $dd
	ret c                                            ; $59a5: $d8

	sbc e                                            ; $59a6: $9b
	ld [hl-], a                                      ; $59a7: $32
	jr nc, @+$30                                     ; $59a8: $30 $2e

	inc l                                            ; $59aa: $2c
	db $dd                                           ; $59ab: $dd
	ld a, [hl+]                                      ; $59ac: $2a
	sbc [hl]                                         ; $59ad: $9e
	ld [$ef7b], sp                                   ; $59ae: $08 $7b $ef
	db $dd                                           ; $59b1: $dd
	ret z                                            ; $59b2: $c8

	sbc e                                            ; $59b3: $9b
	ld [de], a                                       ; $59b4: $12
	db $10                                           ; $59b5: $10

jr_01f_59b6:
	ld c, $0c                                        ; $59b6: $0e $0c
	ld h, a                                          ; $59b8: $67
	ldh a, [$dd]                                     ; $59b9: $f0 $dd
	cp b                                             ; $59bb: $b8
	sbc e                                            ; $59bc: $9b
	jr z, jr_01f_59e5                                ; $59bd: $28 $26

	inc h                                            ; $59bf: $24
	ld [hl+], a                                      ; $59c0: $22
	ld h, a                                          ; $59c1: $67
	ldh a, [$dd]                                     ; $59c2: $f0 $dd
	xor b                                            ; $59c4: $a8
	sbc e                                            ; $59c5: $9b
	ld [$0406], sp                                   ; $59c6: $08 $06 $04
	ld [bc], a                                       ; $59c9: $02
	db $dd                                           ; $59ca: $dd
	ld a, [hl+]                                      ; $59cb: $2a
	sbc $e8                                          ; $59cc: $de $e8
	sub [hl]                                         ; $59ce: $96
	nop                                              ; $59cf: $00
	ret z                                            ; $59d0: $c8

	cp b                                             ; $59d1: $b8
	xor b                                            ; $59d2: $a8
	ldh a, [$0a]                                     ; $59d3: $f0 $0a
	jr nz, jr_01f_59d7                               ; $59d5: $20 $00

jr_01f_59d7:
	jr jr_01f_59b6                                   ; $59d7: $18 $dd

	ld a, [hl+]                                      ; $59d9: $2a
	sbc [hl]                                         ; $59da: $9e
	ld hl, sp-$22                                    ; $59db: $f8 $de
	db $10                                           ; $59dd: $10
	ld a, a                                          ; $59de: $7f
	rst GetHLinHL                                          ; $59df: $cf
	ld a, a                                          ; $59e0: $7f
	sbc a                                            ; $59e1: $9f
	sbc [hl]                                         ; $59e2: $9e
	ld d, $7b                                        ; $59e3: $16 $7b

jr_01f_59e5:
	sbc a                                            ; $59e5: $9f
	sbc [hl]                                         ; $59e6: $9e
	dec hl                                           ; $59e7: $2b
	ld l, e                                          ; $59e8: $6b
	ret nc                                           ; $59e9: $d0

	db $dd                                           ; $59ea: $dd
	ret c                                            ; $59eb: $d8

	sbc [hl]                                         ; $59ec: $9e
	inc [hl]                                         ; $59ed: $34
	ld a, e                                          ; $59ee: $7b
	sbc a                                            ; $59ef: $9f
	ld [hl], e                                       ; $59f0: $73
	ret nc                                           ; $59f1: $d0

	ld a, e                                          ; $59f2: $7b
	rst AddAOntoHL                                          ; $59f3: $ef
	ld a, a                                          ; $59f4: $7f
	ldh [c], a                                       ; $59f5: $e2
	rst SubAFromDE                                          ; $59f6: $df
	ret z                                            ; $59f7: $c8

	sbc [hl]                                         ; $59f8: $9e
	inc l                                            ; $59f9: $2c
	ld a, e                                          ; $59fa: $7b
	sbc a                                            ; $59fb: $9f
	db $dd                                           ; $59fc: $dd
	ld a, [hl+]                                      ; $59fd: $2a
	sbc [hl]                                         ; $59fe: $9e
	ldh a, [$7b]                                     ; $59ff: $f0 $7b
	ldh a, [$7f]                                     ; $5a01: $f0 $7f
	ret nz                                           ; $5a03: $c0

	rst SubAFromDE                                          ; $5a04: $df
	cp b                                             ; $5a05: $b8
	sbc [hl]                                         ; $5a06: $9e
	inc c                                            ; $5a07: $0c
	ld a, e                                          ; $5a08: $7b
	sbc a                                            ; $5a09: $9f
	ld h, a                                          ; $5a0a: $67
	ldh a, [$7f]                                     ; $5a0b: $f0 $7f
	or c                                             ; $5a0d: $b1
	rst SubAFromDE                                          ; $5a0e: $df
	xor b                                            ; $5a0f: $a8
	sbc [hl]                                         ; $5a10: $9e
	ld [hl+], a                                      ; $5a11: $22
	ld a, e                                          ; $5a12: $7b
	sbc a                                            ; $5a13: $9f
	ld [hl], e                                       ; $5a14: $73
	ldh a, [$de]                                     ; $5a15: $f0 $de
	add sp, -$62                                     ; $5a17: $e8 $9e
	xor b                                            ; $5a19: $a8
	ld a, e                                          ; $5a1a: $7b
	sbc a                                            ; $5a1b: $9f
	sbc [hl]                                         ; $5a1c: $9e
	ld [bc], a                                       ; $5a1d: $02
	ld a, e                                          ; $5a1e: $7b
	sbc a                                            ; $5a1f: $9f
	ld l, a                                          ; $5a20: $6f
	ld d, b                                          ; $5a21: $50
	ld a, e                                          ; $5a22: $7b
	and b                                            ; $5a23: $a0
	ld a, e                                          ; $5a24: $7b
	sbc a                                            ; $5a25: $9f
	sbc d                                            ; $5a26: $9a
	inc e                                            ; $5a27: $1c
	ld a, [de]                                       ; $5a28: $1a
	ld a, [hl+]                                      ; $5a29: $2a
	ld [hl], $2a                                     ; $5a2a: $36 $2a
	ld a, e                                          ; $5a2c: $7b
	sbc a                                            ; $5a2d: $9f
	ld a, a                                          ; $5a2e: $7f
	ld [hl-], a                                      ; $5a2f: $32
	ld a, e                                          ; $5a30: $7b
	ret nz                                           ; $5a31: $c0

	sbc $d8                                          ; $5a32: $de $d8
	ld a, a                                          ; $5a34: $7f
	ld [hl-], a                                      ; $5a35: $32
	ld a, a                                          ; $5a36: $7f
	sbc a                                            ; $5a37: $9f
	ld l, a                                          ; $5a38: $6f
	ret nc                                           ; $5a39: $d0

	ld a, a                                          ; $5a3a: $7f
	rst AddAOntoHL                                          ; $5a3b: $ef
	rst SubAFromDE                                          ; $5a3c: $df
	ret c                                            ; $5a3d: $d8

	rst SubAFromDE                                          ; $5a3e: $df
	ret z                                            ; $5a3f: $c8

	ld a, a                                          ; $5a40: $7f
	ld [hl-], a                                      ; $5a41: $32
	ld a, a                                          ; $5a42: $7f
	sbc a                                            ; $5a43: $9f
	ld [hl], e                                       ; $5a44: $73
	ld [hl], b                                       ; $5a45: $70
	ld a, e                                          ; $5a46: $7b
	xor a                                            ; $5a47: $af
	rst SubAFromDE                                          ; $5a48: $df
	ret z                                            ; $5a49: $c8

	rst SubAFromDE                                          ; $5a4a: $df
	cp b                                             ; $5a4b: $b8
	ld a, a                                          ; $5a4c: $7f
	ld [hl-], a                                      ; $5a4d: $32
	ld a, a                                          ; $5a4e: $7f
	sbc a                                            ; $5a4f: $9f
	ld h, a                                          ; $5a50: $67
	ldh a, [$df]                                     ; $5a51: $f0 $df
	cp b                                             ; $5a53: $b8
	rst SubAFromDE                                          ; $5a54: $df
	xor b                                            ; $5a55: $a8
	ld a, a                                          ; $5a56: $7f
	ld [hl-], a                                      ; $5a57: $32
	ld a, a                                          ; $5a58: $7f
	sbc a                                            ; $5a59: $9f
	ld l, a                                          ; $5a5a: $6f
	ldh a, [$7b]                                     ; $5a5b: $f0 $7b
	and b                                            ; $5a5d: $a0
	ld a, e                                          ; $5a5e: $7b
	sbc a                                            ; $5a5f: $9f
	ld a, a                                          ; $5a60: $7f
	ld [hl-], a                                      ; $5a61: $32
	ld a, a                                          ; $5a62: $7f
	sbc a                                            ; $5a63: $9f
	ld [hl], e                                       ; $5a64: $73
	ld h, b                                          ; $5a65: $60
	cp a                                             ; $5a66: $bf
	ld hl, sp-$58                                    ; $5a67: $f8 $a8
	sbc $f0                                          ; $5a69: $de $f0
	sbc d                                            ; $5a6b: $9a
	nop                                              ; $5a6c: $00
	ld a, [hl-]                                      ; $5a6d: $3a
	jr c, @+$1e                                      ; $5a6e: $38 $1c

	ld a, [hl+]                                      ; $5a70: $2a
	ld a, e                                          ; $5a71: $7b
	sbc a                                            ; $5a72: $9f
	sbc e                                            ; $5a73: $9b
	ld hl, sp+$0c                                    ; $5a74: $f8 $0c
	inc b                                            ; $5a76: $04
	db $fc                                           ; $5a77: $fc
	halt                                             ; $5a78: $76
	rst AddAOntoHL                                          ; $5a79: $ef
	sbc e                                            ; $5a7a: $9b
	ld a, [de]                                       ; $5a7b: $1a
	ld c, b                                          ; $5a7c: $48
	ld b, [hl]                                       ; $5a7d: $46
	ld b, h                                          ; $5a7e: $44
	db $dd                                           ; $5a7f: $dd
	ld a, [hl+]                                      ; $5a80: $2a
	sbc e                                            ; $5a81: $9b
	db $f4                                           ; $5a82: $f4
	db $ec                                           ; $5a83: $ec
	inc c                                            ; $5a84: $0c
	inc b                                            ; $5a85: $04
	db $dd                                           ; $5a86: $dd
	ret z                                            ; $5a87: $c8

	sbc e                                            ; $5a88: $9b
	ld b, d                                          ; $5a89: $42
	ld b, b                                          ; $5a8a: $40
	ld a, $3c                                        ; $5a8b: $3e $3c
	ld [hl], a                                       ; $5a8d: $77
	add b                                            ; $5a8e: $80
	sbc h                                            ; $5a8f: $9c
	db $fc                                           ; $5a90: $fc
	db $f4                                           ; $5a91: $f4
	db $ec                                           ; $5a92: $ec
	ld a, e                                          ; $5a93: $7b
	and b                                            ; $5a94: $a0
	sbc d                                            ; $5a95: $9a
	ret z                                            ; $5a96: $c8

	ldh a, [$4e]                                     ; $5a97: $f0 $4e
	ld c, h                                          ; $5a99: $4c
	ld c, d                                          ; $5a9a: $4a
	ld l, a                                          ; $5a9b: $6f
	nop                                              ; $5a9c: $00
	sbc h                                            ; $5a9d: $9c
	ldh a, [rAUD2LEN]                                ; $5a9e: $f0 $16
	dec hl                                           ; $5aa0: $2b
	adc [hl]                                         ; $5aa1: $8e
	ld bc, $f8bf                                     ; $5aa2: $01 $bf $f8
	ld hl, sp-$23                                    ; $5aa5: $f8 $dd
	ldh a, [$80]                                     ; $5aa7: $f0 $80
	ld [hl+], a                                      ; $5aa9: $22
	jr nz, jr_01f_5ad2                               ; $5aaa: $20 $26

	inc h                                            ; $5aac: $24
	ld a, [hl+]                                      ; $5aad: $2a
	dec hl                                           ; $5aae: $2b
	ld a, [hl+]                                      ; $5aaf: $2a
	ld a, [hl+]                                      ; $5ab0: $2a
	or b                                             ; $5ab1: $b0
	ld d, b                                          ; $5ab2: $50
	ld c, b                                          ; $5ab3: $48
	xor b                                            ; $5ab4: $a8
	ldh [$d0], a                                     ; $5ab5: $e0 $d0
	ret nc                                           ; $5ab7: $d0

	ldh [rAUD3LEVEL], a                              ; $5ab8: $e0 $1c
	ld e, $1c                                        ; $5aba: $1e $1c
	jr jr_01f_5b28                                   ; $5abc: $18 $6a

	ld a, [hl+]                                      ; $5abe: $2a
	ld a, [hl+]                                      ; $5abf: $2a
	dec hl                                           ; $5ac0: $2b
	nop                                              ; $5ac1: $00
	ld hl, sp+$40                                    ; $5ac2: $f8 $40
	ret nz                                           ; $5ac4: $c0

	ldh a, [$f0]                                     ; $5ac5: $f0 $f0
	ret nc                                           ; $5ac7: $d0

	adc d                                            ; $5ac8: $8a
	ldh [$2a], a                                     ; $5ac9: $e0 $2a
	jr z, jr_01f_5ae9                                ; $5acb: $28 $1c

	ld e, $2a                                        ; $5acd: $1e $2a
	ld a, [hl+]                                      ; $5acf: $2a
	ld l, d                                          ; $5ad0: $6a
	ld a, [hl+]                                      ; $5ad1: $2a

jr_01f_5ad2:
	cp b                                             ; $5ad2: $b8
	jr c, jr_01f_5ad5                                ; $5ad3: $38 $00

jr_01f_5ad5:
	ld hl, sp-$20                                    ; $5ad5: $f8 $e0
	ret nc                                           ; $5ad7: $d0

	ldh a, [$f0]                                     ; $5ad8: $f0 $f0
	inc e                                            ; $5ada: $1c
	jr jr_01f_5aff                                   ; $5adb: $18 $22

	jr nz, @+$79                                     ; $5add: $20 $77

	ret nc                                           ; $5adf: $d0

	sbc e                                            ; $5ae0: $9b
	ret c                                            ; $5ae1: $d8

	jr z, @+$22                                      ; $5ae2: $28 $20

	ret nc                                           ; $5ae4: $d0

	ld c, a                                          ; $5ae5: $4f
	ret nc                                           ; $5ae6: $d0

	sbc [hl]                                         ; $5ae7: $9e
	db $10                                           ; $5ae8: $10

jr_01f_5ae9:
	sbc $f0                                          ; $5ae9: $de $f0
	ld a, a                                          ; $5aeb: $7f
	ldh a, [$7f]                                     ; $5aec: $f0 $7f
	or d                                             ; $5aee: $b2
	ld l, a                                          ; $5aef: $6f
	ret nc                                           ; $5af0: $d0

	sbc l                                            ; $5af1: $9d
	add sp, $08                                      ; $5af2: $e8 $08
	ld h, a                                          ; $5af4: $67
	ret nc                                           ; $5af5: $d0

	ld a, a                                          ; $5af6: $7f
	cp [hl]                                          ; $5af7: $be
	ld [hl], a                                       ; $5af8: $77
	ret nc                                           ; $5af9: $d0

	rst $38                                          ; $5afa: $ff
	rst SubAFromDE                                          ; $5afb: $df
	ld hl, sp+$4f                                    ; $5afc: $f8 $4f
	ret nc                                           ; $5afe: $d0

jr_01f_5aff:
	rst $38                                          ; $5aff: $ff
	rst SubAFromDE                                          ; $5b00: $df
	ldh a, [$9d]                                     ; $5b01: $f0 $9d
	call c, Call_01f_67d4                            ; $5b03: $dc $d4 $67
	ret nc                                           ; $5b06: $d0

	rst SubAFromDE                                          ; $5b07: $df
	ld hl, sp+$7f                                    ; $5b08: $f8 $7f
	xor $7f                                          ; $5b0a: $ee $7f
	ldh a, [c]                                       ; $5b0c: $f2
	rst SubAFromDE                                          ; $5b0d: $df
	ldh a, [$9d]                                     ; $5b0e: $f0 $9d
	jr jr_01f_5b2e                                   ; $5b10: $18 $1c

	ld l, a                                          ; $5b12: $6f
	and b                                            ; $5b13: $a0
	cp a                                             ; $5b14: $bf
	ld hl, sp-$08                                    ; $5b15: $f8 $f8
	rst SubAFromDE                                          ; $5b17: $df
	ret c                                            ; $5b18: $d8

	rst SubAFromDE                                          ; $5b19: $df
	ldh a, [$7f]                                     ; $5b1a: $f0 $7f
	pop de                                           ; $5b1c: $d1
	ld l, a                                          ; $5b1d: $6f
	ld h, b                                          ; $5b1e: $60
	ld h, a                                          ; $5b1f: $67
	ldh a, [rPCM34]                                  ; $5b20: $f0 $77
	or b                                             ; $5b22: $b0
	sbc [hl]                                         ; $5b23: $9e
	ld l, d                                          ; $5b24: $6a
	dec sp                                           ; $5b25: $3b
	ldh [$9b], a                                     ; $5b26: $e0 $9b

jr_01f_5b28:
	xor $f6                                          ; $5b28: $ee $f6
	cp $06                                           ; $5b2a: $fe $06
	db $dd                                           ; $5b2c: $dd
	db $dd                                           ; $5b2d: $dd

jr_01f_5b2e:
	sbc e                                            ; $5b2e: $9b
	ld [hl-], a                                      ; $5b2f: $32
	jr nc, jr_01f_5b60                               ; $5b30: $30 $2e

	inc l                                            ; $5b32: $2c
	db $dd                                           ; $5b33: $dd
	ld l, d                                          ; $5b34: $6a
	ld a, e                                          ; $5b35: $7b
	pop af                                           ; $5b36: $f1
	sbc [hl]                                         ; $5b37: $9e
	nop                                              ; $5b38: $00

jr_01f_5b39:
	sbc $cd                                          ; $5b39: $de $cd
	sub l                                            ; $5b3b: $95
	ldh a, [$0e]                                     ; $5b3c: $f0 $0e
	inc c                                            ; $5b3e: $0c
	ld a, [bc]                                       ; $5b3f: $0a
	ld [hl+], a                                      ; $5b40: $22
	ld l, d                                          ; $5b41: $6a
	ld l, d                                          ; $5b42: $6a
	ld l, e                                          ; $5b43: $6b
	ld a, [hl+]                                      ; $5b44: $2a
	ld hl, sp+$7b                                    ; $5b45: $f8 $7b
	rst SubAFromDE                                          ; $5b47: $df
	sbc [hl]                                         ; $5b48: $9e
	ldh a, [$de]                                     ; $5b49: $f0 $de
	call nc, $209e                                   ; $5b4b: $d4 $9e $20
	ld a, e                                          ; $5b4e: $7b
	rst SubAFromDE                                          ; $5b4f: $df
	sbc [hl]                                         ; $5b50: $9e
	ld a, [hl+]                                      ; $5b51: $2a
	sbc $ea                                          ; $5b52: $de $ea
	sbc d                                            ; $5b54: $9a
	ld b, $fe                                        ; $5b55: $06 $fe
	ld b, $f6                                        ; $5b57: $06 $f6
	call nc, $e4de                                   ; $5b59: $d4 $de $e4
	sbc e                                            ; $5b5c: $9b
	inc l                                            ; $5b5d: $2c
	inc c                                            ; $5b5e: $0c
	ld a, [bc]                                       ; $5b5f: $0a

jr_01f_5b60:
	ld c, $de                                        ; $5b60: $0e $de
	ld [$eb9e], a                                    ; $5b62: $ea $9e $eb
	ld a, e                                          ; $5b65: $7b
	ld b, b                                          ; $5b66: $40
	sbc l                                            ; $5b67: $9d
	ld [$7bf0], sp                                   ; $5b68: $08 $f0 $7b
	rst SubAFromDE                                          ; $5b6b: $df
	ld a, a                                          ; $5b6c: $7f
	or d                                             ; $5b6d: $b2
	ld a, a                                          ; $5b6e: $7f
	rst SubAFromDE                                          ; $5b6f: $df
	rst SubAFromDE                                          ; $5b70: $df
	ld a, [hl+]                                      ; $5b71: $2a
	rst SubAFromDE                                          ; $5b72: $df
	xor d                                            ; $5b73: $aa
	cp a                                             ; $5b74: $bf
	ld hl, sp-$08                                    ; $5b75: $f8 $f8
	rst SubAFromDE                                          ; $5b77: $df
	call nc, $e4df                                   ; $5b78: $d4 $df $e4
	ld a, a                                          ; $5b7b: $7f
	or d                                             ; $5b7c: $b2
	ld a, a                                          ; $5b7d: $7f
	rst SubAFromDE                                          ; $5b7e: $df
	db $dd                                           ; $5b7f: $dd
	xor d                                            ; $5b80: $aa
	sbc [hl]                                         ; $5b81: $9e
	ld [$f07b], sp                                   ; $5b82: $08 $7b $f0
	rst SubAFromDE                                          ; $5b85: $df
	db $e4                                           ; $5b86: $e4
	rst SubAFromDE                                          ; $5b87: $df
	ldh a, [hDisp1_OBP0]                                     ; $5b88: $f0 $93
	ld c, $0a                                        ; $5b8a: $0e $0a
	ld [hl+], a                                      ; $5b8c: $22
	jr nz, jr_01f_5b39                               ; $5b8d: $20 $aa

	xor e                                            ; $5b8f: $ab
	ld a, [hl+]                                      ; $5b90: $2a
	ld a, [hl+]                                      ; $5b91: $2a
	rrca                                             ; $5b92: $0f
	rlca                                             ; $5b93: $07
	rst $38                                          ; $5b94: $ff
	rst FarCall                                          ; $5b95: $f7
	ld h, a                                          ; $5b96: $67
	sub b                                            ; $5b97: $90
	db $dd                                           ; $5b98: $dd
	ld a, [hl+]                                      ; $5b99: $2a
	ld a, a                                          ; $5b9a: $7f
	ldh a, [c]                                       ; $5b9b: $f2
	sbc [hl]                                         ; $5b9c: $9e
	rlca                                             ; $5b9d: $07
	ld [hl], e                                       ; $5b9e: $73
	sub b                                            ; $5b9f: $90
	ld a, e                                          ; $5ba0: $7b
	or c                                             ; $5ba1: $b1
	sbc [hl]                                         ; $5ba2: $9e
	ld h, $7b                                        ; $5ba3: $26 $7b
	ld hl, $907f                                     ; $5ba5: $21 $7f $90
	sub h                                            ; $5ba8: $94
	ld a, [bc]                                       ; $5ba9: $0a
	rlca                                             ; $5baa: $07
	rst $38                                          ; $5bab: $ff
	ldh a, [$d2]                                     ; $5bac: $f0 $d2
	ldh [c], a                                       ; $5bae: $e2
	ldh [c], a                                       ; $5baf: $e2
	inc h                                            ; $5bb0: $24
	ld d, $38                                        ; $5bb1: $16 $38
	ld [hl], $dd                                     ; $5bb3: $36 $dd
	ld a, [hl+]                                      ; $5bb5: $2a
	sbc d                                            ; $5bb6: $9a
	rst FarCall                                          ; $5bb7: $f7
	ld [bc], a                                       ; $5bb8: $02
	ld a, [$e2f2]                                    ; $5bb9: $fa $f2 $e2
	sbc $d2                                          ; $5bbc: $de $d2
	sbc e                                            ; $5bbe: $9b
	inc [hl]                                         ; $5bbf: $34
	inc d                                            ; $5bc0: $14
	ld [de], a                                       ; $5bc1: $12
	db $10                                           ; $5bc2: $10
	sbc $2a                                          ; $5bc3: $de $2a
	ld a, e                                          ; $5bc5: $7b
	nop                                              ; $5bc6: $00
	ld a, e                                          ; $5bc7: $7b
	ldh [$98], a                                     ; $5bc8: $e0 $98
	ldh a, [$e2]                                     ; $5bca: $f0 $e2
	ldh [c], a                                       ; $5bcc: $e2
	ld a, [hl+]                                      ; $5bcd: $2a
	jr z, jr_01f_5c0e                                ; $5bce: $28 $3e

	inc a                                            ; $5bd0: $3c
	ld [hl], e                                       ; $5bd1: $73
	ldh [$9c], a                                     ; $5bd2: $e0 $9c
	ld a, [bc]                                       ; $5bd4: $0a
	ld [bc], a                                       ; $5bd5: $02
	ld a, [$e077]                                    ; $5bd6: $fa $77 $e0
	sbc e                                            ; $5bd9: $9b
	ld a, [hl-]                                      ; $5bda: $3a
	ld d, $14                                        ; $5bdb: $16 $14
	ld [de], a                                       ; $5bdd: $12
	db $dd                                           ; $5bde: $dd
	ld a, [hl+]                                      ; $5bdf: $2a
	sbc [hl]                                         ; $5be0: $9e
	ldh a, [c]                                       ; $5be1: $f2
	cp a                                             ; $5be2: $bf
	ld hl, sp-$2e                                    ; $5be3: $f8 $d2
	ld a, d                                          ; $5be5: $7a
	rst SubAFromDE                                          ; $5be6: $df
	sbc e                                            ; $5be7: $9b
	db $10                                           ; $5be8: $10
	ld [hl+], a                                      ; $5be9: $22
	jr nz, @+$04                                     ; $5bea: $20 $02

	ld a, e                                          ; $5bec: $7b
	ld hl, $b07f                                     ; $5bed: $21 $7f $b0
	cp a                                             ; $5bf0: $bf
	ld hl, sp-$24                                    ; $5bf1: $f8 $dc
	rst SubAFromDE                                          ; $5bf3: $df
	ldh a, [$9a]                                     ; $5bf4: $f0 $9a
	jp c, $2600                                      ; $5bf6: $da $00 $26

	inc h                                            ; $5bf9: $24
	ld b, $67                                        ; $5bfa: $06 $67
	ldh a, [$98]                                     ; $5bfc: $f0 $98
	jp c, $f0f0                                      ; $5bfe: $da $f0 $f0

	rst SubAFromHL                                          ; $5c01: $d7
	inc b                                            ; $5c02: $04
	ld a, [hl+]                                      ; $5c03: $2a
	jr z, jr_01f_5c69                                ; $5c04: $28 $63

	ldh [$9e], a                                     ; $5c06: $e0 $9e
	rst SubAFromHL                                          ; $5c08: $d7
	ld a, e                                          ; $5c09: $7b
	ccf                                              ; $5c0a: $3f
	ld d, a                                          ; $5c0b: $57
	ldh [$7a], a                                     ; $5c0c: $e0 $7a

jr_01f_5c0e:
	or c                                             ; $5c0e: $b1
	sbc l                                            ; $5c0f: $9d
	jp nc, $5b04                                     ; $5c10: $d2 $04 $5b

	ret nz                                           ; $5c13: $c0

	ld a, e                                          ; $5c14: $7b
	or b                                             ; $5c15: $b0
	sbc [hl]                                         ; $5c16: $9e
	rst GetHLinHL                                          ; $5c17: $cf
	ld d, a                                          ; $5c18: $57
	ldh [$9b], a                                     ; $5c19: $e0 $9b
	rst GetHLinHL                                          ; $5c1b: $cf
	ldh a, [$f0]                                     ; $5c1c: $f0 $f0
	call $c057                                       ; $5c1e: $cd $57 $c0
	ld a, a                                          ; $5c21: $7f
	ld b, d                                          ; $5c22: $42
	ld a, a                                          ; $5c23: $7f
	ldh a, [$9c]                                     ; $5c24: $f0 $9c
	nop                                              ; $5c26: $00
	ld [hl+], a                                      ; $5c27: $22
	jr nz, jr_01f_5c99                               ; $5c28: $20 $6f

	ldh [$7f], a                                     ; $5c2a: $e0 $7f

jr_01f_5c2c:
	and $9e                                          ; $5c2c: $e6 $9e
	dec hl                                           ; $5c2e: $2b
	or c                                             ; $5c2f: $b1
	ld bc, $009b                                     ; $5c30: $01 $9b $00
	ld hl, sp+$00                                    ; $5c33: $f8 $00
	ld hl, sp-$23                                    ; $5c35: $f8 $dd
	ldh a, [$8b]                                     ; $5c37: $f0 $8b
	ld [hl+], a                                      ; $5c39: $22
	jr nz, @+$28                                     ; $5c3a: $20 $26

	inc h                                            ; $5c3c: $24
	ld a, [hl+]                                      ; $5c3d: $2a
	dec hl                                           ; $5c3e: $2b
	ld a, [hl+]                                      ; $5c3f: $2a
	ld a, [hl+]                                      ; $5c40: $2a
	or b                                             ; $5c41: $b0
	ld d, b                                          ; $5c42: $50
	ld c, b                                          ; $5c43: $48
	xor b                                            ; $5c44: $a8
	ldh [$d0], a                                     ; $5c45: $e0 $d0
	ret nc                                           ; $5c47: $d0

	ldh [rAUD3ENA], a                                ; $5c48: $e0 $1a
	ld e, $1c                                        ; $5c4a: $1e $1c
	jr jr_01f_5c2c                                   ; $5c4c: $18 $de

	ld a, [hl+]                                      ; $5c4e: $2a
	sub d                                            ; $5c4f: $92
	dec hl                                           ; $5c50: $2b
	ld hl, sp+$00                                    ; $5c51: $f8 $00
	ld b, b                                          ; $5c53: $40
	ret nz                                           ; $5c54: $c0

	ldh a, [$f0]                                     ; $5c55: $f0 $f0
	ret nc                                           ; $5c57: $d0

	ldh [$28], a                                     ; $5c58: $e0 $28
	ld a, [hl+]                                      ; $5c5a: $2a
	ld a, [de]                                       ; $5c5b: $1a
	ld e, $dd                                        ; $5c5c: $1e $dd
	ld a, [hl+]                                      ; $5c5e: $2a
	sub l                                            ; $5c5f: $95
	cp b                                             ; $5c60: $b8
	jr c, jr_01f_5c63                                ; $5c61: $38 $00

jr_01f_5c63:
	ld hl, sp-$20                                    ; $5c63: $f8 $e0
	ret nc                                           ; $5c65: $d0

	ldh a, [$f0]                                     ; $5c66: $f0 $f0
	inc e                                            ; $5c68: $1c

jr_01f_5c69:
	jr jr_01f_5cda                                   ; $5c69: $18 $6f

	ret nc                                           ; $5c6b: $d0

	sbc e                                            ; $5c6c: $9b
	ret c                                            ; $5c6d: $d8

	jr z, jr_01f_5c90                                ; $5c6e: $28 $20

	ret nc                                           ; $5c70: $d0

	ld d, a                                          ; $5c71: $57
	ret nc                                           ; $5c72: $d0

	ld a, a                                          ; $5c73: $7f
	ldh [c], a                                       ; $5c74: $e2
	sbc [hl]                                         ; $5c75: $9e
	db $10                                           ; $5c76: $10
	sbc $f0                                          ; $5c77: $de $f0
	ld a, a                                          ; $5c79: $7f
	ldh a, [$7f]                                     ; $5c7a: $f0 $7f
	or b                                             ; $5c7c: $b0
	ld l, a                                          ; $5c7d: $6f
	ret nc                                           ; $5c7e: $d0

	sbc l                                            ; $5c7f: $9d
	add sp, $08                                      ; $5c80: $e8 $08
	ld h, a                                          ; $5c82: $67
	ret nc                                           ; $5c83: $d0

	sbc l                                            ; $5c84: $9d
	ld a, [hl+]                                      ; $5c85: $2a
	jr z, jr_01f_5cff                                ; $5c86: $28 $77

	ret nc                                           ; $5c88: $d0

	rst $38                                          ; $5c89: $ff
	rst SubAFromDE                                          ; $5c8a: $df
	ld hl, sp+$4f                                    ; $5c8b: $f8 $4f
	ret nc                                           ; $5c8d: $d0

	rst $38                                          ; $5c8e: $ff
	rst SubAFromDE                                          ; $5c8f: $df

jr_01f_5c90:
	ldh a, [$9d]                                     ; $5c90: $f0 $9d
	call c, Call_01f_67d4                            ; $5c92: $dc $d4 $67
	ret nc                                           ; $5c95: $d0

	rst SubAFromDE                                          ; $5c96: $df
	ld hl, sp+$7f                                    ; $5c97: $f8 $7f

jr_01f_5c99:
	xor $7f                                          ; $5c99: $ee $7f
	ldh a, [c]                                       ; $5c9b: $f2
	rst SubAFromDE                                          ; $5c9c: $df
	ldh a, [$9d]                                     ; $5c9d: $f0 $9d
	jr @+$1e                                         ; $5c9f: $18 $1c

	ld l, a                                          ; $5ca1: $6f
	and b                                            ; $5ca2: $a0
	ld [hl], a                                       ; $5ca3: $77
	ld h, b                                          ; $5ca4: $60
	rst SubAFromDE                                          ; $5ca5: $df
	ret c                                            ; $5ca6: $d8

	rst SubAFromDE                                          ; $5ca7: $df
	ldh a, [$7f]                                     ; $5ca8: $f0 $7f
	pop de                                           ; $5caa: $d1
	ld l, e                                          ; $5cab: $6b
	ret nz                                           ; $5cac: $c0

	ld l, e                                          ; $5cad: $6b
	ldh a, [$9e]                                     ; $5cae: $f0 $9e
	ld a, [de]                                       ; $5cb0: $1a
	ld l, e                                          ; $5cb1: $6b
	add b                                            ; $5cb2: $80
	ld e, a                                          ; $5cb3: $5f
	ldh [$7f], a                                     ; $5cb4: $e0 $7f
	cp [hl]                                          ; $5cb6: $be
	ld [hl], a                                       ; $5cb7: $77
	ldh a, [$9b]                                     ; $5cb8: $f0 $9b
	xor $f6                                          ; $5cba: $ee $f6
	cp $06                                           ; $5cbc: $fe $06
	db $dd                                           ; $5cbe: $dd
	db $dd                                           ; $5cbf: $dd
	sbc e                                            ; $5cc0: $9b
	ld [hl-], a                                      ; $5cc1: $32
	jr nc, jr_01f_5cf2                               ; $5cc2: $30 $2e

	inc l                                            ; $5cc4: $2c
	db $dd                                           ; $5cc5: $dd
	ld l, d                                          ; $5cc6: $6a
	ld a, e                                          ; $5cc7: $7b
	pop af                                           ; $5cc8: $f1
	sbc [hl]                                         ; $5cc9: $9e
	nop                                              ; $5cca: $00
	sbc $cd                                          ; $5ccb: $de $cd
	sub l                                            ; $5ccd: $95
	ldh a, [$0e]                                     ; $5cce: $f0 $0e
	inc c                                            ; $5cd0: $0c
	ld a, [bc]                                       ; $5cd1: $0a
	ld a, [hl+]                                      ; $5cd2: $2a
	ld l, d                                          ; $5cd3: $6a
	ld l, d                                          ; $5cd4: $6a
	ld l, e                                          ; $5cd5: $6b
	ld a, [hl+]                                      ; $5cd6: $2a
	ld hl, sp+$7b                                    ; $5cd7: $f8 $7b
	rst SubAFromDE                                          ; $5cd9: $df

jr_01f_5cda:
	sbc [hl]                                         ; $5cda: $9e
	ldh a, [$de]                                     ; $5cdb: $f0 $de
	call nc, $289e                                   ; $5cdd: $d4 $9e $28
	ld a, e                                          ; $5ce0: $7b
	rst SubAFromDE                                          ; $5ce1: $df
	sbc [hl]                                         ; $5ce2: $9e
	ld a, [hl+]                                      ; $5ce3: $2a
	sbc $ea                                          ; $5ce4: $de $ea
	sbc d                                            ; $5ce6: $9a
	ld b, $fe                                        ; $5ce7: $06 $fe
	ld b, $f6                                        ; $5ce9: $06 $f6
	call nc, $e4de                                   ; $5ceb: $d4 $de $e4
	sbc e                                            ; $5cee: $9b
	inc l                                            ; $5cef: $2c
	inc c                                            ; $5cf0: $0c
	ld a, [bc]                                       ; $5cf1: $0a

jr_01f_5cf2:
	ld c, $de                                        ; $5cf2: $0e $de
	ld [$eb9e], a                                    ; $5cf4: $ea $9e $eb
	ld a, e                                          ; $5cf7: $7b
	ld b, b                                          ; $5cf8: $40
	sbc l                                            ; $5cf9: $9d
	ld [$7bf0], sp                                   ; $5cfa: $08 $f0 $7b
	rst SubAFromDE                                          ; $5cfd: $df
	ld a, a                                          ; $5cfe: $7f

jr_01f_5cff:
	or d                                             ; $5cff: $b2
	ld a, a                                          ; $5d00: $7f
	rst SubAFromDE                                          ; $5d01: $df
	rst SubAFromDE                                          ; $5d02: $df
	ld a, [hl+]                                      ; $5d03: $2a
	rst SubAFromDE                                          ; $5d04: $df
	xor d                                            ; $5d05: $aa
	ld [hl], a                                       ; $5d06: $77
	and b                                            ; $5d07: $a0
	rst SubAFromDE                                          ; $5d08: $df
	call nc, $e4df                                   ; $5d09: $d4 $df $e4
	ld a, a                                          ; $5d0c: $7f
	or d                                             ; $5d0d: $b2
	ld a, a                                          ; $5d0e: $7f
	rst SubAFromDE                                          ; $5d0f: $df
	db $dd                                           ; $5d10: $dd
	xor d                                            ; $5d11: $aa
	sbc [hl]                                         ; $5d12: $9e
	ld [$5f7b], sp                                   ; $5d13: $08 $7b $5f
	rst SubAFromDE                                          ; $5d16: $df
	db $e4                                           ; $5d17: $e4
	rst SubAFromDE                                          ; $5d18: $df
	ldh a, [hDisp1_OBP0]                                     ; $5d19: $f0 $93
	ld c, $0a                                        ; $5d1b: $0e $0a
	inc h                                            ; $5d1d: $24
	ld h, $aa                                        ; $5d1e: $26 $aa
	xor e                                            ; $5d20: $ab
	ld a, [hl+]                                      ; $5d21: $2a
	ld a, [hl+]                                      ; $5d22: $2a
	rrca                                             ; $5d23: $0f
	rlca                                             ; $5d24: $07
	rst $38                                          ; $5d25: $ff
	rst FarCall                                          ; $5d26: $f7
	ld h, a                                          ; $5d27: $67
	sub b                                            ; $5d28: $90
	db $dd                                           ; $5d29: $dd
	ld a, [hl+]                                      ; $5d2a: $2a
	ld a, a                                          ; $5d2b: $7f
	ldh a, [c]                                       ; $5d2c: $f2
	sbc [hl]                                         ; $5d2d: $9e
	rlca                                             ; $5d2e: $07
	ld [hl], e                                       ; $5d2f: $73
	sub b                                            ; $5d30: $90
	ld a, e                                          ; $5d31: $7b
	or c                                             ; $5d32: $b1
	ld [hl], a                                       ; $5d33: $77
	ld hl, $907f                                     ; $5d34: $21 $7f $90
	sub h                                            ; $5d37: $94
	ld a, [bc]                                       ; $5d38: $0a
	rlca                                             ; $5d39: $07
	rst $38                                          ; $5d3a: $ff
	ldh a, [$d2]                                     ; $5d3b: $f0 $d2
	ldh [c], a                                       ; $5d3d: $e2
	ldh [c], a                                       ; $5d3e: $e2
	jr z, jr_01f_5d57                                ; $5d3f: $28 $16

	jr c, jr_01f_5d79                                ; $5d41: $38 $36

	db $dd                                           ; $5d43: $dd
	ld a, [hl+]                                      ; $5d44: $2a
	sbc d                                            ; $5d45: $9a
	rst FarCall                                          ; $5d46: $f7
	ld [bc], a                                       ; $5d47: $02
	ld a, [$e2f2]                                    ; $5d48: $fa $f2 $e2
	sbc $d2                                          ; $5d4b: $de $d2
	sbc e                                            ; $5d4d: $9b
	inc [hl]                                         ; $5d4e: $34
	inc d                                            ; $5d4f: $14
	ld [de], a                                       ; $5d50: $12
	db $10                                           ; $5d51: $10
	ld l, a                                          ; $5d52: $6f
	nop                                              ; $5d53: $00
	ld a, e                                          ; $5d54: $7b
	ldh [$98], a                                     ; $5d55: $e0 $98

jr_01f_5d57:
	ldh a, [$e2]                                     ; $5d57: $f0 $e2
	ldh [c], a                                       ; $5d59: $e2
	ld [hl+], a                                      ; $5d5a: $22
	jr nz, jr_01f_5d9b                               ; $5d5b: $20 $3e

	inc a                                            ; $5d5d: $3c
	ld [hl], e                                       ; $5d5e: $73
	ldh [$9c], a                                     ; $5d5f: $e0 $9c
	ld a, [bc]                                       ; $5d61: $0a
	ld [bc], a                                       ; $5d62: $02
	ld a, [$e077]                                    ; $5d63: $fa $77 $e0
	sbc e                                            ; $5d66: $9b
	ld a, [hl-]                                      ; $5d67: $3a
	ld d, $14                                        ; $5d68: $16 $14
	ld [de], a                                       ; $5d6a: $12
	db $dd                                           ; $5d6b: $dd
	ld a, [hl+]                                      ; $5d6c: $2a
	sub e                                            ; $5d6d: $93
	ldh a, [c]                                       ; $5d6e: $f2
	nop                                              ; $5d6f: $00
	ld hl, sp+$01                                    ; $5d70: $f8 $01
	jp nc, $f0f0                                     ; $5d72: $d2 $f0 $f0

	ret c                                            ; $5d75: $d8

	db $10                                           ; $5d76: $10
	ld h, $24                                        ; $5d77: $26 $24

jr_01f_5d79:
	ld [bc], a                                       ; $5d79: $02
	ld a, e                                          ; $5d7a: $7b
	ld hl, $2a9a                                     ; $5d7b: $21 $9a $2a
	ld sp, hl                                        ; $5d7e: $f9
	nop                                              ; $5d7f: $00
	ld hl, sp-$04                                    ; $5d80: $f8 $fc
	ld a, e                                          ; $5d82: $7b
	ld de, $e09a                                     ; $5d83: $11 $9a $e0
	nop                                              ; $5d86: $00
	ld a, [hl+]                                      ; $5d87: $2a
	jr z, jr_01f_5d92                                ; $5d88: $28 $08

	ld [hl], a                                       ; $5d8a: $77
	ldh a, [$9e]                                     ; $5d8b: $f0 $9e
	ld bc, $ef7b                                     ; $5d8d: $01 $7b $ef
	rst SubAFromDE                                          ; $5d90: $df
	ret nc                                           ; $5d91: $d0

jr_01f_5d92:
	rst SubAFromDE                                          ; $5d92: $df
	ldh a, [$9d]                                     ; $5d93: $f0 $9d
	ld [bc], a                                       ; $5d95: $02
	nop                                              ; $5d96: $00
	ld l, a                                          ; $5d97: $6f
	nop                                              ; $5d98: $00
	sbc [hl]                                         ; $5d99: $9e
	db $fc                                           ; $5d9a: $fc

jr_01f_5d9b:
	ld a, e                                          ; $5d9b: $7b
	rst AddAOntoHL                                          ; $5d9c: $ef
	sub a                                            ; $5d9d: $97
	reti                                             ; $5d9e: $d9


	ret                                              ; $5d9f: $c9


	ret                                              ; $5da0: $c9


	ldh a, [$08]                                     ; $5da1: $f0 $08
	ld [bc], a                                       ; $5da3: $02
	nop                                              ; $5da4: $00
	ld h, $73                                        ; $5da5: $26 $73
	add b                                            ; $5da7: $80
	ld a, e                                          ; $5da8: $7b
	rst AddAOntoHL                                          ; $5da9: $ef
	sub a                                            ; $5daa: $97
	ldh a, [$c8]                                     ; $5dab: $f0 $c8
	cp c                                             ; $5dad: $b9
	cp c                                             ; $5dae: $b9
	inc h                                            ; $5daf: $24
	inc b                                            ; $5db0: $04
	ld [bc], a                                       ; $5db1: $02
	nop                                              ; $5db2: $00
	ld l, a                                          ; $5db3: $6f
	sub b                                            ; $5db4: $90
	ld a, a                                          ; $5db5: $7f
	rst AddAOntoHL                                          ; $5db6: $ef
	rst SubAFromDE                                          ; $5db7: $df
	ldh a, [$9d]                                     ; $5db8: $f0 $9d
	cp b                                             ; $5dba: $b8
	xor c                                            ; $5dbb: $a9
	ld a, e                                          ; $5dbc: $7b
	pop bc                                           ; $5dbd: $c1
	sbc [hl]                                         ; $5dbe: $9e
	ld [bc], a                                       ; $5dbf: $02
	db $dd                                           ; $5dc0: $dd
	ld a, [hl+]                                      ; $5dc1: $2a
	ld [hl], a                                       ; $5dc2: $77
	or b                                             ; $5dc3: $b0
	sbc e                                            ; $5dc4: $9b
	xor c                                            ; $5dc5: $a9
	ldh a, [$f0]                                     ; $5dc6: $f0 $f0
	xor b                                            ; $5dc8: $a8
	ld a, e                                          ; $5dc9: $7b
	pop bc                                           ; $5dca: $c1
	ld h, e                                          ; $5dcb: $63
	or b                                             ; $5dcc: $b0
	rst SubAFromDE                                          ; $5dcd: $df
	sbc b                                            ; $5dce: $98
	ld [hl], a                                       ; $5dcf: $77
	or b                                             ; $5dd0: $b0
	ld l, [hl]                                       ; $5dd1: $6e
	and b                                            ; $5dd2: $a0
	sub e                                            ; $5dd3: $93
	db $fc                                           ; $5dd4: $fc
	sub b                                            ; $5dd5: $90
	inc b                                            ; $5dd6: $04
	ld a, [hl+]                                      ; $5dd7: $2a
	ld bc, $0283                                     ; $5dd8: $01 $83 $02
	ld a, [hl+]                                      ; $5ddb: $2a
	ld sp, hl                                        ; $5ddc: $f9
	add e                                            ; $5ddd: $83
	nop                                              ; $5dde: $00
	dec hl                                           ; $5ddf: $2b
	ld [de], a                                       ; $5de0: $12
	ld bc, $0093                                     ; $5de1: $01 $93 $00
	ld hl, sp+$10                                    ; $5de4: $f8 $10
	ld [$f0f0], sp                                   ; $5de6: $08 $f0 $f0
	ret c                                            ; $5de9: $d8

	ret c                                            ; $5dea: $d8

	ld d, $14                                        ; $5deb: $16 $14
	inc [hl]                                         ; $5ded: $34
	ld [hl-], a                                      ; $5dee: $32
	db $dd                                           ; $5def: $dd
	ld a, [hl+]                                      ; $5df0: $2a
	ld a, a                                          ; $5df1: $7f
	ldh a, [$9d]                                     ; $5df2: $f0 $9d
	ldh a, [$08]                                     ; $5df4: $f0 $08
	sbc $d8                                          ; $5df6: $de $d8
	sbc d                                            ; $5df8: $9a
	ret z                                            ; $5df9: $c8

	jr nc, jr_01f_5e2a                               ; $5dfa: $30 $2e

	inc l                                            ; $5dfc: $2c
	ld [de], a                                       ; $5dfd: $12
	ld l, e                                          ; $5dfe: $6b
	ldh a, [$9e]                                     ; $5dff: $f0 $9e
	add sp, -$23                                     ; $5e01: $e8 $dd
	ret z                                            ; $5e03: $c8

	sbc e                                            ; $5e04: $9b
	db $10                                           ; $5e05: $10
	ld c, $0c                                        ; $5e06: $0e $0c
	ld a, [bc]                                       ; $5e08: $0a
	db $dd                                           ; $5e09: $dd
	ld a, [hl+]                                      ; $5e0a: $2a
	sbc d                                            ; $5e0b: $9a
	add sp, $08                                      ; $5e0c: $e8 $08
	nop                                              ; $5e0e: $00
	ld hl, sp-$28                                    ; $5e0f: $f8 $d8
	sbc $b8                                          ; $5e11: $de $b8
	sbc e                                            ; $5e13: $9b
	ld a, [hl+]                                      ; $5e14: $2a
	jr z, jr_01f_5e3d                                ; $5e15: $28 $26

	inc h                                            ; $5e17: $24
	db $dd                                           ; $5e18: $dd
	ld a, [hl+]                                      ; $5e19: $2a
	ld a, a                                          ; $5e1a: $7f
	ldh [c], a                                       ; $5e1b: $e2
	ld a, a                                          ; $5e1c: $7f
	rst AddAOntoHL                                          ; $5e1d: $ef
	rst SubAFromDE                                          ; $5e1e: $df
	cp b                                             ; $5e1f: $b8
	rst SubAFromDE                                          ; $5e20: $df
	xor b                                            ; $5e21: $a8
	sbc e                                            ; $5e22: $9b
	ld [hl+], a                                      ; $5e23: $22
	jr nz, @+$0a                                     ; $5e24: $20 $08

	ld b, $dd                                        ; $5e26: $06 $dd
	ld a, [hl+]                                      ; $5e28: $2a
	ld a, e                                          ; $5e29: $7b

jr_01f_5e2a:
	pop de                                           ; $5e2a: $d1
	sbc [hl]                                         ; $5e2b: $9e
	nop                                              ; $5e2c: $00
	sbc $a8                                          ; $5e2d: $de $a8
	sub [hl]                                         ; $5e2f: $96
	ldh a, [rDIV]                                    ; $5e30: $f0 $04
	ld [bc], a                                       ; $5e32: $02
	nop                                              ; $5e33: $00
	ld a, [de]                                       ; $5e34: $1a
	ld a, [hl+]                                      ; $5e35: $2a
	ld a, [hl+]                                      ; $5e36: $2a
	dec hl                                           ; $5e37: $2b
	ld a, [hl+]                                      ; $5e38: $2a
	ld a, e                                          ; $5e39: $7b
	and c                                            ; $5e3a: $a1
	sbc [hl]                                         ; $5e3b: $9e
	nop                                              ; $5e3c: $00

jr_01f_5e3d:
	ld a, e                                          ; $5e3d: $7b
	and c                                            ; $5e3e: $a1
	sbc d                                            ; $5e3f: $9a
	ret c                                            ; $5e40: $d8

	jr jr_01f_5e77                                   ; $5e41: $18 $34

	ld [hl-], a                                      ; $5e43: $32
	jr nc, jr_01f_5eb5                               ; $5e44: $30 $6f

	ldh [$9d], a                                     ; $5e46: $e0 $9d
	ld [$7be8], sp                                   ; $5e48: $08 $e8 $7b
	and c                                            ; $5e4b: $a1
	sbc [hl]                                         ; $5e4c: $9e
	ret c                                            ; $5e4d: $d8

	ld l, e                                          ; $5e4e: $6b
	and c                                            ; $5e4f: $a1
	sub d                                            ; $5e50: $92
	ld a, [hl+]                                      ; $5e51: $2a
	ld [$0008], sp                                   ; $5e52: $08 $08 $00
	nop                                              ; $5e55: $00
	cp b                                             ; $5e56: $b8
	xor b                                            ; $5e57: $a8
	ret z                                            ; $5e58: $c8

	cp b                                             ; $5e59: $b8
	jr z, jr_01f_5e64                                ; $5e5a: $28 $08

	db $10                                           ; $5e5c: $10
	ld h, $67                                        ; $5e5d: $26 $67
	sub b                                            ; $5e5f: $90
	ld a, a                                          ; $5e60: $7f
	pop af                                           ; $5e61: $f1
	rst SubAFromDE                                          ; $5e62: $df
	ret z                                            ; $5e63: $c8

jr_01f_5e64:
	sbc [hl]                                         ; $5e64: $9e
	ld b, $6b                                        ; $5e65: $06 $6b
	sub b                                            ; $5e67: $90
	ld a, a                                          ; $5e68: $7f
	pop af                                           ; $5e69: $f1
	ld a, a                                          ; $5e6a: $7f
	cp $77                                           ; $5e6b: $fe $77
	and b                                            ; $5e6d: $a0
	sbc e                                            ; $5e6e: $9b
	inc h                                            ; $5e6f: $24
	ld [hl+], a                                      ; $5e70: $22
	inc b                                            ; $5e71: $04
	ld [bc], a                                       ; $5e72: $02
	ld [hl], e                                       ; $5e73: $73
	add b                                            ; $5e74: $80
	ld a, a                                          ; $5e75: $7f
	and c                                            ; $5e76: $a1

jr_01f_5e77:
	sub [hl]                                         ; $5e77: $96
	ld hl, sp-$48                                    ; $5e78: $f8 $b8
	xor b                                            ; $5e7a: $a8
	ldh a, [$f0]                                     ; $5e7b: $f0 $f0
	jr nz, jr_01f_5e7f                               ; $5e7d: $20 $00

jr_01f_5e7f:
	ld e, $1c                                        ; $5e7f: $1e $1c
	ld a, e                                          ; $5e81: $7b
	and c                                            ; $5e82: $a1
	sbc [hl]                                         ; $5e83: $9e
	ld a, [hl+]                                      ; $5e84: $2a
	ld a, e                                          ; $5e85: $7b
	and c                                            ; $5e86: $a1
	ld a, a                                          ; $5e87: $7f
	ld [hl], b                                       ; $5e88: $70
	sbc $d8                                          ; $5e89: $de $d8
	ld a, e                                          ; $5e8b: $7b
	and c                                            ; $5e8c: $a1
	sbc [hl]                                         ; $5e8d: $9e
	ld l, $73                                        ; $5e8e: $2e $73
	ld [hl], b                                       ; $5e90: $70
	ld a, a                                          ; $5e91: $7f
	and c                                            ; $5e92: $a1
	ld a, a                                          ; $5e93: $7f
	ld b, b                                          ; $5e94: $40
	ld a, a                                          ; $5e95: $7f
	and c                                            ; $5e96: $a1
	sbc [hl]                                         ; $5e97: $9e
	cp b                                             ; $5e98: $b8
	ld a, e                                          ; $5e99: $7b
	and c                                            ; $5e9a: $a1
	sbc [hl]                                         ; $5e9b: $9e
	jr z, jr_01f_5f11                                ; $5e9c: $28 $73

	and b                                            ; $5e9e: $a0
	cp $7b                                           ; $5e9f: $fe $7b
	and c                                            ; $5ea1: $a1
	sbc [hl]                                         ; $5ea2: $9e
	xor b                                            ; $5ea3: $a8
	ld a, e                                          ; $5ea4: $7b
	and c                                            ; $5ea5: $a1
	ld h, a                                          ; $5ea6: $67
	ld h, b                                          ; $5ea7: $60
	sbc [hl]                                         ; $5ea8: $9e
	ld hl, sp-$22                                    ; $5ea9: $f8 $de
	ret z                                            ; $5eab: $c8

	sbc [hl]                                         ; $5eac: $9e
	cp b                                             ; $5ead: $b8
	ld a, e                                          ; $5eae: $7b
	and c                                            ; $5eaf: $a1
	ld l, a                                          ; $5eb0: $6f
	ld b, b                                          ; $5eb1: $40
	ld a, e                                          ; $5eb2: $7b
	rst AddAOntoHL                                          ; $5eb3: $ef
	ld a, e                                          ; $5eb4: $7b

jr_01f_5eb5:
	and c                                            ; $5eb5: $a1
	sbc [hl]                                         ; $5eb6: $9e
	cp b                                             ; $5eb7: $b8
	ld a, e                                          ; $5eb8: $7b
	and c                                            ; $5eb9: $a1
	sbc [hl]                                         ; $5eba: $9e
	jr nz, @+$75                                     ; $5ebb: $20 $73

	and b                                            ; $5ebd: $a0
	ld a, a                                          ; $5ebe: $7f
	or c                                             ; $5ebf: $b1
	sbc [hl]                                         ; $5ec0: $9e
	db $fd                                           ; $5ec1: $fd
	ld a, e                                          ; $5ec2: $7b
	and c                                            ; $5ec3: $a1
	sbc d                                            ; $5ec4: $9a
	ret nc                                           ; $5ec5: $d0

	nop                                              ; $5ec6: $00
	ld d, $14                                        ; $5ec7: $16 $14
	ld a, $7b                                        ; $5ec9: $3e $7b
	and c                                            ; $5ecb: $a1
	sub d                                            ; $5ecc: $92
	dec hl                                           ; $5ecd: $2b
	inc bc                                           ; $5ece: $03
	ei                                               ; $5ecf: $fb
	nop                                              ; $5ed0: $00
	ld hl, sp-$32                                    ; $5ed1: $f8 $ce
	adc $f0                                          ; $5ed3: $ce $f0
	ldh a, [rSCY]                                    ; $5ed5: $f0 $42
	ld b, b                                          ; $5ed7: $40
	ld a, [de]                                       ; $5ed8: $1a
	jr @+$79                                         ; $5ed9: $18 $77

	sub b                                            ; $5edb: $90
	sub l                                            ; $5edc: $95
	ld bc, $00f9                                     ; $5edd: $01 $f9 $00
	ld hl, sp-$36                                    ; $5ee0: $f8 $ca
	jp z, $f0f0                                      ; $5ee2: $ca $f0 $f0

	jr c, jr_01f_5f1d                                ; $5ee5: $38 $36

	ld l, a                                          ; $5ee7: $6f
	add b                                            ; $5ee8: $80
	sub a                                            ; $5ee9: $97
	ld bc, $3cca                                     ; $5eea: $01 $ca $3c
	ld a, [hl+]                                      ; $5eed: $2a
	ld sp, hl                                        ; $5eee: $f9
	jp z, $2b3a                                      ; $5eef: $ca $3a $2b

	ld hl, sp+$01                                    ; $5ef2: $f8 $01
	rst $38                                          ; $5ef4: $ff
	rst SubAFromDE                                          ; $5ef5: $df
	rlca                                             ; $5ef6: $07
	sbc l                                            ; $5ef7: $9d
	rrca                                             ; $5ef8: $0f
	ld [$1fde], sp                                   ; $5ef9: $08 $de $1f
	add [hl]                                         ; $5efc: $86
	db $10                                           ; $5efd: $10
	daa                                              ; $5efe: $27
	jr c, @+$29                                      ; $5eff: $38 $27

	inc a                                            ; $5f01: $3c
	daa                                              ; $5f02: $27
	inc a                                            ; $5f03: $3c
	cpl                                              ; $5f04: $2f
	dec [hl]                                         ; $5f05: $35
	ld l, $35                                        ; $5f06: $2e $35
	ld a, $25                                        ; $5f08: $3e $25
	ld [hl], $2d                                     ; $5f0a: $36 $2d
	scf                                              ; $5f0c: $37
	dec l                                            ; $5f0d: $2d
	daa                                              ; $5f0e: $27
	ccf                                              ; $5f0f: $3f
	daa                                              ; $5f10: $27

jr_01f_5f11:
	inc a                                            ; $5f11: $3c
	ccf                                              ; $5f12: $3f
	jr c, jr_01f_5f15                                ; $5f13: $38 $00

jr_01f_5f15:
	nop                                              ; $5f15: $00
	sbc $ff                                          ; $5f16: $de $ff
	ld [hl], e                                       ; $5f18: $73
	db $fc                                           ; $5f19: $fc
	ld [hl], a                                       ; $5f1a: $77
	ei                                               ; $5f1b: $fb
	sbc b                                            ; $5f1c: $98

jr_01f_5f1d:
	rst $38                                          ; $5f1d: $ff
	adc b                                            ; $5f1e: $88
	call z, $ccbb                                    ; $5f1f: $cc $bb $cc
	cp e                                             ; $5f22: $bb
	ld c, h                                          ; $5f23: $4c
	ld a, e                                          ; $5f24: $7b
	db $fc                                           ; $5f25: $fc
	ld h, a                                          ; $5f26: $67
	ld a, [$e05f]                                    ; $5f27: $fa $5f $e0
	sub c                                            ; $5f2a: $91
	ldh [$1f], a                                     ; $5f2b: $e0 $1f
	rst $38                                          ; $5f2d: $ff
	rra                                              ; $5f2e: $1f
	or $1b                                           ; $5f2f: $f6 $1b
	rst $38                                          ; $5f31: $ff
	ld [de], a                                       ; $5f32: $12
	ei                                               ; $5f33: $fb
	ld d, $f3                                        ; $5f34: $16 $f3
	ld e, $f2                                        ; $5f36: $1e $f2
	rra                                              ; $5f38: $1f
	ld a, e                                          ; $5f39: $7b
	db $ec                                           ; $5f3a: $ec
	sbc [hl]                                         ; $5f3b: $9e
	ccf                                              ; $5f3c: $3f
	ld a, e                                          ; $5f3d: $7b
	cp $fe                                           ; $5f3e: $fe $fe
	ld e, e                                          ; $5f40: $5b
	ret nz                                           ; $5f41: $c0

	sub h                                            ; $5f42: $94
	cp a                                             ; $5f43: $bf
	db $ec                                           ; $5f44: $ec
	scf                                              ; $5f45: $37
	db $ed                                           ; $5f46: $ed
	ld [hl], $7e                                     ; $5f47: $36 $7e
	and l                                            ; $5f49: $a5
	halt                                             ; $5f4a: $76
	xor l                                            ; $5f4b: $ad
	ld h, h                                          ; $5f4c: $64
	cp a                                             ; $5f4d: $bf
	ld [hl], e                                       ; $5f4e: $73
	db $ec                                           ; $5f4f: $ec
	ld [hl], a                                       ; $5f50: $77
	ld [$e057], a                                    ; $5f51: $ea $57 $e0
	sub h                                            ; $5f54: $94
	ld a, [hl]                                       ; $5f55: $7e
	ret                                              ; $5f56: $c9


	ld a, [hl]                                       ; $5f57: $7e
	db $db                                           ; $5f58: $db
	ld l, h                                          ; $5f59: $6c
	rst AddAOntoHL                                          ; $5f5a: $ef
	ld e, b                                          ; $5f5b: $58
	call $c97a                                       ; $5f5c: $cd $7a $c9

jr_01f_5f5f:
	ld a, [hl]                                       ; $5f5f: $7e
	inc sp                                           ; $5f60: $33
	ldh [hDisp1_OBP1], a                                     ; $5f61: $e0 $94
	db $fd                                           ; $5f63: $fd
	rst SubAFromHL                                          ; $5f64: $d7
	cp c                                             ; $5f65: $b9
	sbc a                                            ; $5f66: $9f
	pop af                                           ; $5f67: $f1
	cp e                                             ; $5f68: $bb
	push de                                          ; $5f69: $d5
	di                                               ; $5f6a: $f3
	sbc l                                            ; $5f6b: $9d
	db $d3                                           ; $5f6c: $d3
	cp l                                             ; $5f6d: $bd
	ccf                                              ; $5f6e: $3f
	ldh [hDisp1_SCX], a                                     ; $5f6f: $e0 $91
	ld b, $f9                                        ; $5f71: $06 $f9
	rst $38                                          ; $5f73: $ff
	ld sp, hl                                        ; $5f74: $f9
	daa                                              ; $5f75: $27
	ld sp, hl                                        ; $5f76: $f9
	ld a, a                                          ; $5f77: $7f
	and c                                            ; $5f78: $a1
	rst FarCall                                          ; $5f79: $f7
	add hl, hl                                       ; $5f7a: $29
	or a                                             ; $5f7b: $b7
	ld l, c                                          ; $5f7c: $69
	daa                                              ; $5f7d: $27
	ld sp, hl                                        ; $5f7e: $f9
	ld e, a                                          ; $5f7f: $5f
	ldh [$df], a                                     ; $5f80: $e0 $df
	ldh a, [hDisp0_WX]                                     ; $5f82: $f0 $89
	ld hl, sp+$08                                    ; $5f84: $f8 $08
	ld hl, sp-$08                                    ; $5f86: $f8 $f8
	add sp, $38                                      ; $5f88: $e8 $38
	add sp, -$48                                     ; $5f8a: $e8 $b8
	ld l, h                                          ; $5f8c: $6c
	or h                                             ; $5f8d: $b4
	ld l, h                                          ; $5f8e: $6c
	or h                                             ; $5f8f: $b4
	ld a, h                                          ; $5f90: $7c
	and h                                            ; $5f91: $a4
	ld [hl], h                                       ; $5f92: $74
	xor h                                            ; $5f93: $ac
	ld h, h                                          ; $5f94: $64
	cp h                                             ; $5f95: $bc
	ld a, h                                          ; $5f96: $7c
	cp h                                             ; $5f97: $bc
	cp $02                                           ; $5f98: $fe $02
	call c, $9efe                                    ; $5f9a: $dc $fe $9e
	ld [bc], a                                       ; $5f9d: $02
	ld c, a                                          ; $5f9e: $4f
	nop                                              ; $5f9f: $00
	sbc h                                            ; $5fa0: $9c
	cpl                                              ; $5fa1: $2f
	inc [hl]                                         ; $5fa2: $34
	ccf                                              ; $5fa3: $3f
	ld a, e                                          ; $5fa4: $7b
	inc b                                            ; $5fa5: $04
	ld [hl], a                                       ; $5fa6: $77
	cp $9d                                           ; $5fa7: $fe $9d
	daa                                              ; $5fa9: $27
	dec a                                            ; $5faa: $3d
	ld b, a                                          ; $5fab: $47
	nop                                              ; $5fac: $00
	ld [hl], a                                       ; $5fad: $77
	jr nz, jr_01f_602f                               ; $5fae: $20 $7f

	jr z, jr_01f_6021                                ; $5fb0: $28 $6f

	ld e, $27                                        ; $5fb2: $1e $27
	jr nz, jr_01f_6035                               ; $5fb4: $20 $7f

	jr z, jr_01f_6037                                ; $5fb6: $28 $7f

	ld e, $9a                                        ; $5fb8: $1e $9a
	db $fd                                           ; $5fba: $fd
	ld h, $77                                        ; $5fbb: $26 $77
	xor h                                            ; $5fbd: $ac
	ld h, [hl]                                       ; $5fbe: $66
	dec sp                                           ; $5fbf: $3b
	ld h, b                                          ; $5fc0: $60
	ld [hl], a                                       ; $5fc1: $77
	jr nz, jr_01f_5f5f                               ; $5fc2: $20 $9b

	reti                                             ; $5fc4: $d9


	ld l, [hl]                                       ; $5fc5: $6e
	ei                                               ; $5fc6: $fb
	ld c, h                                          ; $5fc7: $4c
	ld [hl], a                                       ; $5fc8: $77
	jr nz, jr_01f_604a                               ; $5fc9: $20 $7f

	ld hl, sp+$03                                    ; $5fcb: $f8 $03
	jr nz, @+$05                                     ; $5fcd: $20 $03

	jr nz, @+$05                                     ; $5fcf: $20 $03

	jr nz, jr_01f_6046                               ; $5fd1: $20 $73

	jr nz, jr_01f_6050                               ; $5fd3: $20 $7b

	ret c                                            ; $5fd5: $d8

	ld a, e                                          ; $5fd6: $7b
	cp $89                                           ; $5fd7: $fe $89
	ld a, a                                          ; $5fd9: $7f
	add b                                            ; $5fda: $80
	jr nz, @-$1f                                     ; $5fdb: $20 $df

	ld a, $c1                                        ; $5fdd: $3e $c1
	ld a, a                                          ; $5fdf: $7f
	cp [hl]                                          ; $5fe0: $be
	db $dd                                           ; $5fe1: $dd
	ld a, a                                          ; $5fe2: $7f
	and d                                            ; $5fe3: $a2
	rst $38                                          ; $5fe4: $ff
	ld c, l                                          ; $5fe5: $4d
	di                                               ; $5fe6: $f3
	ld e, l                                          ; $5fe7: $5d
	ld l, e                                          ; $5fe8: $6b
	ld e, c                                          ; $5fe9: $59
	ld h, a                                          ; $5fea: $67
	ld [hl+], a                                      ; $5feb: $22
	ld a, $1c                                        ; $5fec: $3e $1c
	inc e                                            ; $5fee: $1c
	db $fd                                           ; $5fef: $fd
	adc e                                            ; $5ff0: $8b
	ccf                                              ; $5ff1: $3f
	jr nz, jr_01f_6023                               ; $5ff2: $20 $2f

	jr nc, jr_01f_6035                               ; $5ff4: $30 $3f

	jr nz, @+$29                                     ; $5ff6: $20 $27

	jr c, @+$41                                      ; $5ff8: $38 $3f

	jr nz, jr_01f_603b                               ; $5ffa: $20 $3f

	jr c, jr_01f_6065                                ; $5ffc: $38 $67

	ld e, h                                          ; $5ffe: $5c
	ld c, a                                          ; $5fff: $4f
	ld a, h                                          ; $6000: $7c
	ld a, a                                          ; $6001: $7f
	ld a, b                                          ; $6002: $78
	ccf                                              ; $6003: $3f
	ccf                                              ; $6004: $3f
	push af                                          ; $6005: $f5
	ld a, [hl]                                       ; $6006: $7e
	ld c, $57                                        ; $6007: $0e $57
	cp $7b                                           ; $6009: $fe $7b
	adc e                                            ; $600b: $8b
	ld [hl], a                                       ; $600c: $77
	db $fd                                           ; $600d: $fd
	ld d, a                                          ; $600e: $57
	ldh [rSCX], a                                    ; $600f: $e0 $43
	and b                                            ; $6011: $a0
	sbc c                                            ; $6012: $99
	ld e, c                                          ; $6013: $59
	rst SubAFromBC                                          ; $6014: $e7
	ld e, l                                          ; $6015: $5d
	ld l, e                                          ; $6016: $6b
	ld c, l                                          ; $6017: $4d
	ld [hl], e                                       ; $6018: $73
	ld h, a                                          ; $6019: $67
	and b                                            ; $601a: $a0
	ld [hl], a                                       ; $601b: $77
	ldh [c], a                                       ; $601c: $e2
	sub c                                            ; $601d: $91
	ldh a, [rIF]                                     ; $601e: $f0 $0f
	rst AddAOntoHL                                          ; $6020: $ef

jr_01f_6021:
	db $10                                           ; $6021: $10
	rst AddAOntoHL                                          ; $6022: $ef

jr_01f_6023:
	db $10                                           ; $6023: $10
	ld l, a                                          ; $6024: $6f
	sub b                                            ; $6025: $90
	cpl                                              ; $6026: $2f
	ret nc                                           ; $6027: $d0

	add b                                            ; $6028: $80
	ld a, a                                          ; $6029: $7f
	rst $38                                          ; $602a: $ff
	add b                                            ; $602b: $80
	ccf                                              ; $602c: $3f
	ret nz                                           ; $602d: $c0

	ld a, a                                          ; $602e: $7f

jr_01f_602f:
	call nz, $df97                                   ; $602f: $c4 $97 $df
	jr nz, jr_01f_6092                               ; $6032: $20 $5e

	and c                                            ; $6034: $a1

jr_01f_6035:
	ld e, [hl]                                       ; $6035: $5e
	and c                                            ; $6036: $a1

jr_01f_6037:
	rst SubAFromDE                                          ; $6037: $df
	jr nz, jr_01f_6069                               ; $6038: $20 $2f

	and b                                            ; $603a: $a0

jr_01f_603b:
	ld a, a                                          ; $603b: $7f
	and d                                            ; $603c: $a2
	sub c                                            ; $603d: $91
	cp a                                             ; $603e: $bf
	ld b, b                                          ; $603f: $40
	cp [hl]                                          ; $6040: $be
	ld b, c                                          ; $6041: $41
	cp l                                             ; $6042: $bd
	ld b, d                                          ; $6043: $42
	cp e                                             ; $6044: $bb
	ld b, h                                          ; $6045: $44

jr_01f_6046:
	inc bc                                           ; $6046: $03
	db $fd                                           ; $6047: $fd
	cp $03                                           ; $6048: $fe $03

jr_01f_604a:
	db $fd                                           ; $604a: $fd
	rst $38                                          ; $604b: $ff
	db $dd                                           ; $604c: $dd
	ld bc, $804f                                     ; $604d: $01 $4f $80

jr_01f_6050:
	ld a, a                                          ; $6050: $7f
	cp $8b                                           ; $6051: $fe $8b
	inc bc                                           ; $6053: $03
	db $fc                                           ; $6054: $fc
	ld sp, hl                                        ; $6055: $f9
	ld b, $fd                                        ; $6056: $06 $fd
	ld a, [$fd76]                                    ; $6058: $fa $76 $fd
	adc e                                            ; $605b: $8b
	cp $65                                           ; $605c: $fe $65
	sbc a                                            ; $605e: $9f
	ld [hl], h                                       ; $605f: $74
	xor h                                            ; $6060: $ac
	inc [hl]                                         ; $6061: $34
	call z, $f888                                    ; $6062: $cc $88 $f8

jr_01f_6065:
	ld [hl], b                                       ; $6065: $70
	ld [hl], b                                       ; $6066: $70
	db $fd                                           ; $6067: $fd
	ld a, d                                          ; $6068: $7a

jr_01f_6069:
	ld hl, sp+$73                                    ; $6069: $f8 $73
	cp $8d                                           ; $606b: $fe $8d
	ld a, [$f606]                                    ; $606d: $fa $06 $f6
	ld c, $ed                                        ; $6070: $0e $ed
	dec de                                           ; $6072: $1b
	ld de, rIE                                     ; $6073: $11 $ff $ff
	rra                                              ; $6076: $1f
	cp $fe                                           ; $6077: $fe $fe
	ld d, b                                          ; $6079: $50
	ld [hl], b                                       ; $607a: $70
	ld b, b                                          ; $607b: $40
	ld a, [hl]                                       ; $607c: $7e
	ld a, $3e                                        ; $607d: $3e $3e
	daa                                              ; $607f: $27
	ret nz                                           ; $6080: $c0

	sbc l                                            ; $6081: $9d
	dec [hl]                                         ; $6082: $35
	rst GetHLinHL                                          ; $6083: $cf
	ld a, d                                          ; $6084: $7a
	cp [hl]                                          ; $6085: $be
	sbc [hl]                                         ; $6086: $9e
	sbc h                                            ; $6087: $9c
	ld h, a                                          ; $6088: $67
	ret nz                                           ; $6089: $c0

	xor $94                                          ; $608a: $ee $94
	ld c, $04                                        ; $608c: $0e $04
	dec de                                           ; $608e: $1b
	dec c                                            ; $608f: $0d
	ld [hl-], a                                      ; $6090: $32
	inc sp                                           ; $6091: $33

jr_01f_6092:
	call z, Call_01f_7b04                            ; $6092: $cc $04 $7b

jr_01f_6095:
	nop                                              ; $6095: $00
	rra                                              ; $6096: $1f
	ld [$80df], a                                    ; $6097: $ea $df $80
	sbc d                                            ; $609a: $9a
	ld b, b                                          ; $609b: $40
	nop                                              ; $609c: $00

Call_01f_609d:
	ret nz                                           ; $609d: $c0

	nop                                              ; $609e: $00
	add b                                            ; $609f: $80
	xor $77                                          ; $60a0: $ee $77

jr_01f_60a2:
	ld b, a                                          ; $60a2: $47
	ld a, a                                          ; $60a3: $7f
	db $fd                                           ; $60a4: $fd
	sbc d                                            ; $60a5: $9a
	inc bc                                           ; $60a6: $03
	inc b                                            ; $60a7: $04
	dec de                                           ; $60a8: $1b
	ld c, $71                                        ; $60a9: $0e $71
	ld a, e                                          ; $60ab: $7b
	jp nz, $039e                                     ; $60ac: $c2 $9e $03

	di                                               ; $60af: $f3
	adc l                                            ; $60b0: $8d
	ld h, b                                          ; $60b1: $60
	sbc b                                            ; $60b2: $98
	ldh a, [$0c]                                     ; $60b3: $f0 $0c
	inc b                                            ; $60b5: $04
	ld a, [$4fb0]                                    ; $60b6: $fa $b0 $4f
	jr jr_01f_60a2                                   ; $60b9: $18 $e7

	call nc, $e02b                                   ; $60bb: $d4 $2b $e0
	rra                                              ; $60be: $1f
	ret nc                                           ; $60bf: $d0

	ld l, $00                                        ; $60c0: $2e $00
	db $fc                                           ; $60c2: $fc
	or $96                                           ; $60c3: $f6 $96
	ld b, $02                                        ; $60c5: $06 $02
	dec c                                            ; $60c7: $0d
	ld b, $19                                        ; $60c8: $06 $19
	ld b, $09                                        ; $60ca: $06 $09
	nop                                              ; $60cc: $00
	ld b, $7b                                        ; $60cd: $06 $7b
	cp h                                             ; $60cf: $bc
	sbc h                                            ; $60d0: $9c
	ld c, $02                                        ; $60d1: $0e $02
	ld a, l                                          ; $60d3: $7d
	ld b, a                                          ; $60d4: $47
	call nz, $0091                                   ; $60d5: $c4 $91 $00
	jr c, jr_01f_6102                                ; $60d8: $38 $28

	inc d                                            ; $60da: $14
	inc h                                            ; $60db: $24
	ld a, [de]                                       ; $60dc: $1a
	inc d                                            ; $60dd: $14
	ld a, [hl+]                                      ; $60de: $2a
	nop                                              ; $60df: $00
	inc e                                            ; $60e0: $1c
	ld b, b                                          ; $60e1: $40
	and c                                            ; $60e2: $a1
	add b                                            ; $60e3: $80
	ld l, c                                          ; $60e4: $69
	ld a, e                                          ; $60e5: $7b
	add b                                            ; $60e6: $80
	sbc [hl]                                         ; $60e7: $9e
	ld h, b                                          ; $60e8: $60
	ei                                               ; $60e9: $fb
	cp $00                                           ; $60ea: $fe $00
	sbc e                                            ; $60ec: $9b
	jr z, jr_01f_610f                                ; $60ed: $28 $20

	ldh [$e8], a                                     ; $60ef: $e0 $e8
	db $dd                                           ; $60f1: $dd
	ldh a, [c]                                       ; $60f2: $f2
	sub e                                            ; $60f3: $93
	inc [hl]                                         ; $60f4: $34
	ld [hl-], a                                      ; $60f5: $32
	jr nz, jr_01f_611a                               ; $60f6: $20 $22

	inc h                                            ; $60f8: $24
	inc h                                            ; $60f9: $24
	jr nz, @+$22                                     ; $60fa: $20 $20

	ldh a, [$f8]                                     ; $60fc: $f0 $f8
	nop                                              ; $60fe: $00
	ld [$f2dd], sp                                   ; $60ff: $08 $dd $f2

jr_01f_6102:
	sbc e                                            ; $6102: $9b
	inc h                                            ; $6103: $24
	ld h, $28                                        ; $6104: $26 $28
	ld a, [hl+]                                      ; $6106: $2a
	db $dd                                           ; $6107: $dd
	jr nz, jr_01f_6095                               ; $6108: $20 $8b

	db $10                                           ; $610a: $10
	jr jr_01f_6125                                   ; $610b: $18 $18

	db $10                                           ; $610d: $10
	ldh a, [c]                                       ; $610e: $f2

jr_01f_610f:
	ldh a, [c]                                       ; $610f: $f2
	ldh [c], a                                       ; $6110: $e2
	ldh [c], a                                       ; $6111: $e2
	inc l                                            ; $6112: $2c
	ld l, $0e                                        ; $6113: $2e $0e
	inc c                                            ; $6115: $0c
	jr nz, jr_01f_6138                               ; $6116: $20 $20

	ld [hl+], a                                      ; $6118: $22
	ld [hl+], a                                      ; $6119: $22

jr_01f_611a:
	ld [$f800], sp                                   ; $611a: $08 $00 $f8
	ldh a, [$dd]                                     ; $611d: $f0 $dd
	ldh [c], a                                       ; $611f: $e2
	sbc e                                            ; $6120: $9b
	ld a, [bc]                                       ; $6121: $0a
	ld [$0406], sp                                   ; $6122: $08 $06 $04

jr_01f_6125:
	db $dd                                           ; $6125: $dd
	ld [hl+], a                                      ; $6126: $22
	sbc h                                            ; $6127: $9c
	add sp, -$20                                     ; $6128: $e8 $e0
	db $10                                           ; $612a: $10
	ld a, e                                          ; $612b: $7b
	ldh a, [$df]                                     ; $612c: $f0 $df
	ldh a, [c]                                       ; $612e: $f2
	sub e                                            ; $612f: $93
	ld [bc], a                                       ; $6130: $02
	nop                                              ; $6131: $00
	jr nc, jr_01f_6152                               ; $6132: $30 $1e

	ld [hl+], a                                      ; $6134: $22
	inc hl                                           ; $6135: $23
	jr nz, @+$22                                     ; $6136: $20 $20

jr_01f_6138:
	ld a, [hl+]                                      ; $6138: $2a
	ld [hl+], a                                      ; $6139: $22
	jr @+$1a                                         ; $613a: $18 $18

	sbc $f2                                          ; $613c: $de $f2
	sbc d                                            ; $613e: $9a
	ldh [c], a                                       ; $613f: $e2
	jr c, jr_01f_6178                                ; $6140: $38 $36

	ld l, $0e                                        ; $6142: $2e $0e
	ld a, e                                          ; $6144: $7b
	or b                                             ; $6145: $b0
	adc h                                            ; $6146: $8c
	ld [hl+], a                                      ; $6147: $22
	db $10                                           ; $6148: $10
	ld [$0008], sp                                   ; $6149: $08 $08 $00
	ldh [c], a                                       ; $614c: $e2
	ldh a, [c]                                       ; $614d: $f2
	ldh [c], a                                       ; $614e: $e2
	ldh a, [c]                                       ; $614f: $f2
	inc c                                            ; $6150: $0c
	ld a, [hl+]                                      ; $6151: $2a

jr_01f_6152:
	ld a, [bc]                                       ; $6152: $0a
	jr z, jr_01f_6177                                ; $6153: $28 $22

	jr nz, jr_01f_6179                               ; $6155: $20 $22

	jr nz, jr_01f_6159                               ; $6157: $20 $00

jr_01f_6159:
	ld hl, sp+$7b                                    ; $6159: $f8 $7b
	ret nz                                           ; $615b: $c0

	ld a, e                                          ; $615c: $7b
	or b                                             ; $615d: $b0
	sbc l                                            ; $615e: $9d
	ld [$7b26], sp                                   ; $615f: $08 $26 $7b
	ret nz                                           ; $6162: $c0

	ld a, e                                          ; $6163: $7b
	or b                                             ; $6164: $b0
	ld a, a                                          ; $6165: $7f
	add d                                            ; $6166: $82
	ld a, a                                          ; $6167: $7f
	cp [hl]                                          ; $6168: $be
	ld [hl], a                                       ; $6169: $77
	and b                                            ; $616a: $a0
	ld a, a                                          ; $616b: $7f
	push af                                          ; $616c: $f5
	ld a, a                                          ; $616d: $7f
	cp [hl]                                          ; $616e: $be
	ld a, e                                          ; $616f: $7b
	and b                                            ; $6170: $a0
	adc h                                            ; $6171: $8c
	inc hl                                           ; $6172: $23
	db $10                                           ; $6173: $10

jr_01f_6174:
	ldh a, [$2d]                                     ; $6174: $f0 $2d
	dec h                                            ; $6176: $25

jr_01f_6177:
	ldh a, [c]                                       ; $6177: $f2

jr_01f_6178:
	ldh a, [c]                                       ; $6178: $f2

jr_01f_6179:
	di                                               ; $6179: $f3
	di                                               ; $617a: $f3
	inc l                                            ; $617b: $2c
	inc h                                            ; $617c: $24
	inc a                                            ; $617d: $3c
	ld a, [hl-]                                      ; $617e: $3a
	jr nz, @+$22                                     ; $617f: $20 $20

	inc h                                            ; $6181: $24
	inc h                                            ; $6182: $24
	jr @+$12                                         ; $6183: $18 $10

	ld a, e                                          ; $6185: $7b
	ret nz                                           ; $6186: $c0

	sbc $e2                                          ; $6187: $de $e2
	sbc e                                            ; $6189: $9b
	inc e                                            ; $618a: $1c
	ld a, [de]                                       ; $618b: $1a
	jr jr_01f_61a4                                   ; $618c: $18 $16

	db $dd                                           ; $618e: $dd
	ld [hl+], a                                      ; $618f: $22
	ld a, a                                          ; $6190: $7f
	jp nz, $e09d                                     ; $6191: $c2 $9d $e0

	jr jr_01f_6174                                   ; $6194: $18 $de

	ldh [c], a                                       ; $6196: $e2
	sbc d                                            ; $6197: $9a
	ldh a, [c]                                       ; $6198: $f2
	inc d                                            ; $6199: $14
	ld [de], a                                       ; $619a: $12
	db $10                                           ; $619b: $10
	ld l, $de                                        ; $619c: $2e $de
	ld [hl+], a                                      ; $619e: $22
	sbc [hl]                                         ; $619f: $9e
	jr nz, @+$7d                                     ; $61a0: $20 $7b

	ld [hl], b                                       ; $61a2: $70
	ld a, e                                          ; $61a3: $7b

jr_01f_61a4:
	ret nz                                           ; $61a4: $c0

	rst SubAFromDE                                          ; $61a5: $df
	ldh a, [c]                                       ; $61a6: $f2
	sbc h                                            ; $61a7: $9c
	ld a, [hl+]                                      ; $61a8: $2a
	jr z, jr_01f_61d1                                ; $61a9: $28 $26

	call c, $df20                                    ; $61ab: $dc $20 $df
	add sp, $7b                                      ; $61ae: $e8 $7b
	add b                                            ; $61b0: $80
	ld a, e                                          ; $61b1: $7b
	sbc a                                            ; $61b2: $9f
	ld a, a                                          ; $61b3: $7f
	or c                                             ; $61b4: $b1
	ld a, a                                          ; $61b5: $7f
	add b                                            ; $61b6: $80
	sbc l                                            ; $61b7: $9d
	jr nz, jr_01f_61dd                               ; $61b8: $20 $23

	ld a, e                                          ; $61ba: $7b
	add b                                            ; $61bb: $80
	ld a, e                                          ; $61bc: $7b
	ld a, a                                          ; $61bd: $7f
	ld [hl], a                                       ; $61be: $77
	ldh a, [$9e]                                     ; $61bf: $f0 $9e
	jr nc, jr_01f_623e                               ; $61c1: $30 $7b

	ld a, a                                          ; $61c3: $7f
	ld a, e                                          ; $61c4: $7b
	add c                                            ; $61c5: $81
	sbc l                                            ; $61c6: $9d
	ld [hl+], a                                      ; $61c7: $22
	nop                                              ; $61c8: $00
	ld a, e                                          ; $61c9: $7b
	ld a, a                                          ; $61ca: $7f
	ld [hl], a                                       ; $61cb: $77
	ldh a, [$9e]                                     ; $61cc: $f0 $9e
	jr z, jr_01f_624b                                ; $61ce: $28 $7b

	ld a, a                                          ; $61d0: $7f

jr_01f_61d1:
	ld [hl], a                                       ; $61d1: $77
	ldh a, [$df]                                     ; $61d2: $f0 $df
	ldh a, [$7b]                                     ; $61d4: $f0 $7b
	nop                                              ; $61d6: $00
	ld a, e                                          ; $61d7: $7b
	ld b, b                                          ; $61d8: $40
	sbc l                                            ; $61d9: $9d
	ld e, $04                                        ; $61da: $1e $04
	ld [hl], a                                       ; $61dc: $77

jr_01f_61dd:
	ldh a, [c]                                       ; $61dd: $f2
	ld a, e                                          ; $61de: $7b
	ret nz                                           ; $61df: $c0

	sbc b                                            ; $61e0: $98
	ldh [c], a                                       ; $61e1: $e2
	ld [bc], a                                       ; $61e2: $02
	ld [hl+], a                                      ; $61e3: $22
	ldh [$e2], a                                     ; $61e4: $e0 $e2
	nop                                              ; $61e6: $00
	inc hl                                           ; $61e7: $23
	sub c                                            ; $61e8: $91
	inc bc                                           ; $61e9: $03
	db $fd                                           ; $61ea: $fd
	rst SubAFromDE                                          ; $61eb: $df
	inc bc                                           ; $61ec: $03
	add l                                            ; $61ed: $85
	inc c                                            ; $61ee: $0c
	rrca                                             ; $61ef: $0f
	jr jr_01f_6211                                   ; $61f0: $18 $1f

	db $10                                           ; $61f2: $10
	rra                                              ; $61f3: $1f
	ld hl, $233f                                     ; $61f4: $21 $3f $23
	ccf                                              ; $61f7: $3f
	inc hl                                           ; $61f8: $23
	ld a, $27                                        ; $61f9: $3e $27
	inc a                                            ; $61fb: $3c
	rlca                                             ; $61fc: $07
	dec sp                                           ; $61fd: $3b
	ld d, $2f                                        ; $61fe: $16 $2f
	rla                                              ; $6200: $17
	dec hl                                           ; $6201: $2b
	rla                                              ; $6202: $17
	dec sp                                           ; $6203: $3b
	daa                                              ; $6204: $27
	jr c, jr_01f_627a                                ; $6205: $38 $73

	ld a, h                                          ; $6207: $7c
	db $fd                                           ; $6208: $fd
	add b                                            ; $6209: $80
	ld a, b                                          ; $620a: $78
	ld hl, sp-$74                                    ; $620b: $f8 $8c
	db $fc                                           ; $620d: $fc
	ld b, $fe                                        ; $620e: $06 $fe
	ld [bc], a                                       ; $6210: $02

jr_01f_6211:
	cp $63                                           ; $6211: $fe $63
	rst $38                                          ; $6213: $ff
	pop af                                           ; $6214: $f1
	rst $38                                          ; $6215: $ff
	pop af                                           ; $6216: $f1
	rra                                              ; $6217: $1f
	ld sp, hl                                        ; $6218: $f9
	rrca                                             ; $6219: $0f
	ld hl, sp+$37                                    ; $621a: $f8 $37
	jp c, $fa3d                                      ; $621c: $da $3d $fa

	dec [hl]                                         ; $621f: $35
	ld a, [$f937]                                    ; $6220: $fa $37 $f9
	rst JumpTable                                          ; $6223: $c7
	ld [hl], d                                       ; $6224: $72
	adc $ff                                          ; $6225: $ce $ff
	cp [hl]                                          ; $6227: $be
	ld a, a                                          ; $6228: $7f
	sub b                                            ; $6229: $90
	ld e, a                                          ; $622a: $5f
	rst $38                                          ; $622b: $ff
	cp c                                             ; $622c: $b9
	rst $38                                          ; $622d: $ff
	db $db                                           ; $622e: $db
	rst $38                                          ; $622f: $ff
	xor b                                            ; $6230: $a8
	ld a, a                                          ; $6231: $7f
	ld d, h                                          ; $6232: $54
	ld l, e                                          ; $6233: $6b
	ld l, e                                          ; $6234: $6b
	ld [bc], a                                       ; $6235: $02
	inc bc                                           ; $6236: $03
	dec b                                            ; $6237: $05
	rlca                                             ; $6238: $07
	ld l, a                                          ; $6239: $6f
	cp $df                                           ; $623a: $fe $df
	inc bc                                           ; $623c: $03
	rst SubAFromDE                                          ; $623d: $df

jr_01f_623e:
	ld bc, $8afd                                     ; $623e: $01 $fd $8a
	db $fc                                           ; $6241: $fc
	call nz, $f2fe                                   ; $6242: $c4 $fe $f2
	cp $9a                                           ; $6245: $fe $9a
	cp $42                                           ; $6247: $fe $42
	db $fc                                           ; $6249: $fc
	ld b, h                                          ; $624a: $44

jr_01f_624b:
	db $fc                                           ; $624b: $fc
	db $e4                                           ; $624c: $e4
	cp b                                             ; $624d: $b8
	ld hl, sp-$58                                    ; $624e: $f8 $a8
	ld hl, sp+$54                                    ; $6250: $f8 $54
	db $fc                                           ; $6252: $fc
	ld d, h                                          ; $6253: $54
	db $fc                                           ; $6254: $fc
	inc [hl]                                         ; $6255: $34
	ld a, e                                          ; $6256: $7b
	cp $99                                           ; $6257: $fe $99
	jr c, @-$16                                      ; $6259: $38 $e8

	ldh a, [$50]                                     ; $625b: $f0 $50
	ldh [$e0], a                                     ; $625d: $e0 $e0
	ei                                               ; $625f: $fb
	add e                                            ; $6260: $83
	ld b, $07                                        ; $6261: $06 $07
	add hl, de                                       ; $6263: $19
	rra                                              ; $6264: $1f
	jr nc, @+$41                                     ; $6265: $30 $3f

	jr nz, jr_01f_62a8                               ; $6267: $20 $3f

	ld b, d                                          ; $6269: $42
	ld a, a                                          ; $626a: $7f
	ld b, a                                          ; $626b: $47
	ld a, a                                          ; $626c: $7f
	ld b, a                                          ; $626d: $47
	ld a, h                                          ; $626e: $7c
	ld c, a                                          ; $626f: $4f
	ld a, b                                          ; $6270: $78
	rrca                                             ; $6271: $0f
	ld [hl], b                                       ; $6272: $70
	cpl                                              ; $6273: $2f
	ld d, b                                          ; $6274: $50
	cpl                                              ; $6275: $2f
	ld e, d                                          ; $6276: $5a
	cpl                                              ; $6277: $2f
	halt                                             ; $6278: $76
	ld c, a                                          ; $6279: $4f

jr_01f_627a:
	ld [hl], c                                       ; $627a: $71

jr_01f_627b:
	daa                                              ; $627b: $27
	inc a                                            ; $627c: $3c
	db $fd                                           ; $627d: $fd
	rst SubAFromDE                                          ; $627e: $df
	ldh a, [$80]                                     ; $627f: $f0 $80
	jr jr_01f_627b                                   ; $6281: $18 $f8

	inc c                                            ; $6283: $0c
	db $fc                                           ; $6284: $fc
	inc b                                            ; $6285: $04
	db $fc                                           ; $6286: $fc
	add $fe                                          ; $6287: $c6 $fe
	ldh [c], a                                       ; $6289: $e2
	cp $e2                                           ; $628a: $fe $e2
	ld a, $f2                                        ; $628c: $3e $f2
	ld e, $f1                                        ; $628e: $1e $f1
	rrca                                             ; $6290: $0f
	rst FarCall                                          ; $6291: $f7
	dec bc                                           ; $6292: $0b
	rst FarCall                                          ; $6293: $f7
	ld e, a                                          ; $6294: $5f
	db $fc                                           ; $6295: $fc
	ld l, [hl]                                       ; $6296: $6e
	ld a, [$f49e]                                    ; $6297: $fa $9e $f4
	inc a                                            ; $629a: $3c
	rra                                              ; $629b: $1f
	add hl, de                                       ; $629c: $19
	rra                                              ; $629d: $1f
	ld [de], a                                       ; $629e: $12
	rra                                              ; $629f: $1f
	sub a                                            ; $62a0: $97
	inc d                                            ; $62a1: $14
	rra                                              ; $62a2: $1f
	db $10                                           ; $62a3: $10
	rrca                                             ; $62a4: $0f
	ld [$090f], sp                                   ; $62a5: $08 $0f $09

jr_01f_62a8:
	rlca                                             ; $62a8: $07
	ld a, e                                          ; $62a9: $7b
	adc b                                            ; $62aa: $88
	sbc l                                            ; $62ab: $9d
	ld a, [bc]                                       ; $62ac: $0a
	rrca                                             ; $62ad: $0f
	ld l, a                                          ; $62ae: $6f
	cp $7f                                           ; $62af: $fe $7f
	xor h                                            ; $62b1: $ac
	ld a, a                                          ; $62b2: $7f
	di                                               ; $62b3: $f3
	sbc e                                            ; $62b4: $9b
	inc bc                                           ; $62b5: $03
	ld [bc], a                                       ; $62b6: $02
	nop                                              ; $62b7: $00
	nop                                              ; $62b8: $00
	sbc $f8                                          ; $62b9: $de $f8
	sbc [hl]                                         ; $62bb: $9e
	ld l, b                                          ; $62bc: $68
	ld a, e                                          ; $62bd: $7b
	add h                                            ; $62be: $84
	sub l                                            ; $62bf: $95
	or h                                             ; $62c0: $b4
	db $fc                                           ; $62c1: $fc
	add h                                            ; $62c2: $84
	ld hl, sp-$38                                    ; $62c3: $f8 $c8
	ld [hl], b                                       ; $62c5: $70
	ldh a, [$50]                                     ; $62c6: $f0 $50
	ldh a, [$a8]                                     ; $62c8: $f0 $a8
	ld a, e                                          ; $62ca: $7b
	ld a, h                                          ; $62cb: $7c
	sbc [hl]                                         ; $62cc: $9e
	ld l, b                                          ; $62cd: $68
	ld a, e                                          ; $62ce: $7b
	cp $99                                           ; $62cf: $fe $99
	ld [hl], b                                       ; $62d1: $70
	ret nc                                           ; $62d2: $d0

	ld h, b                                          ; $62d3: $60
	and b                                            ; $62d4: $a0
	ret nz                                           ; $62d5: $c0

	ret nz                                           ; $62d6: $c0

	db $fd                                           ; $62d7: $fd
	rst SubAFromDE                                          ; $62d8: $df
	adc [hl]                                         ; $62d9: $8e
	adc a                                            ; $62da: $8f
	rst $38                                          ; $62db: $ff
	ld [hl], c                                       ; $62dc: $71
	db $fc                                           ; $62dd: $fc
	sbc h                                            ; $62de: $9c
	cp $66                                           ; $62df: $fe $66
	rst $38                                          ; $62e1: $ff
	cp c                                             ; $62e2: $b9
	ld [hl], e                                       ; $62e3: $73
	ld d, e                                          ; $62e4: $53
	inc a                                            ; $62e5: $3c
	inc l                                            ; $62e6: $2c
	ld e, $12                                        ; $62e7: $1e $12
	inc c                                            ; $62e9: $0c
	inc c                                            ; $62ea: $0c
	push af                                          ; $62eb: $f5
	ld a, a                                          ; $62ec: $7f
	sub h                                            ; $62ed: $94
	ld a, a                                          ; $62ee: $7f
	cp $8b                                           ; $62ef: $fe $8b
	db $e3                                           ; $62f1: $e3
	rra                                              ; $62f2: $1f
	ldh [c], a                                       ; $62f3: $e2
	ld e, $e2                                        ; $62f4: $1e $e2
	ld e, $46                                        ; $62f6: $1e $46
	cp [hl]                                          ; $62f8: $be
	inc b                                            ; $62f9: $04
	db $fc                                           ; $62fa: $fc

jr_01f_62fb:
	add h                                            ; $62fb: $84
	db $fc                                           ; $62fc: $fc
	ld c, h                                          ; $62fd: $4c
	db $fc                                           ; $62fe: $fc
	xor b                                            ; $62ff: $a8
	ld a, b                                          ; $6300: $78
	jr jr_01f_62fb                                   ; $6301: $18 $f8

	ld [hl], b                                       ; $6303: $70
	ldh a, [$6f]                                     ; $6304: $f0 $6f
	call nz, $91ff                                   ; $6306: $c4 $ff $91
	adc e                                            ; $6309: $8b
	db $f4                                           ; $630a: $f4
	ld bc, $fcfe                                     ; $630b: $01 $fe $fc
	rst $38                                          ; $630e: $ff
	ei                                               ; $630f: $fb
	rlca                                             ; $6310: $07
	rlca                                             ; $6311: $07
	ld hl, sp+$00                                    ; $6312: $f8 $00
	rst $38                                          ; $6314: $ff
	rst $38                                          ; $6315: $ff
	nop                                              ; $6316: $00
	ld [hl], a                                       ; $6317: $77
	cp $89                                           ; $6318: $fe $89
	ld a, b                                          ; $631a: $78
	add a                                            ; $631b: $87
	rrca                                             ; $631c: $0f
	ldh a, [$1f]                                     ; $631d: $f0 $1f
	and $0b                                          ; $631f: $e6 $0b
	cp $fa                                           ; $6321: $fe $fa
	rst $38                                          ; $6323: $ff
	rla                                              ; $6324: $17
	rra                                              ; $6325: $1f
	inc d                                            ; $6326: $14
	inc e                                            ; $6327: $1c
	rra                                              ; $6328: $1f
	rra                                              ; $6329: $1f
	rrca                                             ; $632a: $0f
	dec bc                                           ; $632b: $0b
	rra                                              ; $632c: $1f
	ld de, $161f                                     ; $632d: $11 $1f $16
	ld a, e                                          ; $6330: $7b
	ld e, [hl]                                       ; $6331: $5e
	cpl                                              ; $6332: $2f
	ld h, b                                          ; $6333: $60
	sbc h                                            ; $6334: $9c
	ret z                                            ; $6335: $c8

	db $fc                                           ; $6336: $fc
	ld h, h                                          ; $6337: $64
	ld a, d                                          ; $6338: $7a
	pop af                                           ; $6339: $f1
	ld a, a                                          ; $633a: $7f
	ld h, d                                          ; $633b: $62
	sbc [hl]                                         ; $633c: $9e
	adc b                                            ; $633d: $88
	cpl                                              ; $633e: $2f
	ld h, b                                          ; $633f: $60
	add b                                            ; $6340: $80
	rst $38                                          ; $6341: $ff
	ld [bc], a                                       ; $6342: $02
	db $fd                                           ; $6343: $fd
	inc bc                                           ; $6344: $03
	rst AddAOntoHL                                          ; $6345: $ef
	db $10                                           ; $6346: $10
	cp a                                             ; $6347: $bf
	ld b, c                                          ; $6348: $41
	xor $13                                          ; $6349: $ee $13
	xor d                                            ; $634b: $aa
	ld d, l                                          ; $634c: $55
	cp a                                             ; $634d: $bf
	ld b, b                                          ; $634e: $40
	xor e                                            ; $634f: $ab
	ld d, a                                          ; $6350: $57
	xor $11                                          ; $6351: $ee $11
	xor e                                            ; $6353: $ab
	ld d, l                                          ; $6354: $55
	jp hl                                            ; $6355: $e9


	ld d, $ff                                        ; $6356: $16 $ff
	rst $38                                          ; $6358: $ff
	ld hl, sp+$07                                    ; $6359: $f8 $07
	xor e                                            ; $635b: $ab
	ld d, h                                          ; $635c: $54
	ld [$ab15], a                                    ; $635d: $ea $15 $ab
	sbc [hl]                                         ; $6360: $9e
	ld d, h                                          ; $6361: $54
	ld [hl], a                                       ; $6362: $77
	adc [hl]                                         ; $6363: $8e
	sbc e                                            ; $6364: $9b
	cp e                                             ; $6365: $bb
	ld b, h                                          ; $6366: $44
	cp [hl]                                          ; $6367: $be
	ld b, c                                          ; $6368: $41
	ld l, a                                          ; $6369: $6f
	ldh a, [c]                                       ; $636a: $f2
	sbc c                                            ; $636b: $99
	ei                                               ; $636c: $fb
	inc b                                            ; $636d: $04
	cp e                                             ; $636e: $bb
	ld b, h                                          ; $636f: $44
	xor d                                            ; $6370: $aa
	ld d, l                                          ; $6371: $55
	ld a, e                                          ; $6372: $7b
	db $ec                                           ; $6373: $ec
	ld a, e                                          ; $6374: $7b
	ld [hl], h                                       ; $6375: $74
	sbc c                                            ; $6376: $99
	cp d                                             ; $6377: $ba
	ld b, l                                          ; $6378: $45
	xor [hl]                                         ; $6379: $ae
	ld d, c                                          ; $637a: $51
	xor e                                            ; $637b: $ab
	ld d, h                                          ; $637c: $54
	ld a, e                                          ; $637d: $7b
	xor l                                            ; $637e: $ad
	inc de                                           ; $637f: $13
	cp $6b                                           ; $6380: $fe $6b
	ld [hl], c                                       ; $6382: $71
	ld [hl], a                                       ; $6383: $77
	cp $9e                                           ; $6384: $fe $9e
	dec bc                                           ; $6386: $0b
	ld a, d                                          ; $6387: $7a
	cp h                                             ; $6388: $bc
	sbc [hl]                                         ; $6389: $9e
	rrca                                             ; $638a: $0f
	pop af                                           ; $638b: $f1
	sbc $0f                                          ; $638c: $de $0f
	ld a, a                                          ; $638e: $7f
	ld [$e67f], a                                    ; $638f: $ea $7f $e6
	ld e, a                                          ; $6392: $5f
	jp c, $fe4b                                      ; $6393: $da $4b $fe

	ld a, a                                          ; $6396: $7f
	sbc d                                            ; $6397: $9a
	ld a, a                                          ; $6398: $7f
	cp $7f                                           ; $6399: $fe $7f
	sub h                                            ; $639b: $94
	sbc l                                            ; $639c: $9d
	xor a                                            ; $639d: $af
	ld d, b                                          ; $639e: $50
	ld l, a                                          ; $639f: $6f
	adc h                                            ; $63a0: $8c
	ld a, e                                          ; $63a1: $7b
	db $fd                                           ; $63a2: $fd
	ldh a, [c]                                       ; $63a3: $f2
	cpl                                              ; $63a4: $2f
	ld [$e047], a                                    ; $63a5: $ea $47 $e0
	ld l, [hl]                                       ; $63a8: $6e
	add $8d                                          ; $63a9: $c6 $8d
	rst $38                                          ; $63ab: $ff
	ld [$c93e], sp                                   ; $63ac: $08 $3e $c9
	ld a, a                                          ; $63af: $7f
	rst $38                                          ; $63b0: $ff
	rst $38                                          ; $63b1: $ff
	ld [Func_1ceb], sp                                   ; $63b2: $08 $eb $1c
	rst FarCall                                          ; $63b5: $f7
	inc e                                            ; $63b6: $1c
	db $dd                                           ; $63b7: $dd
	ld [hl], $be                                     ; $63b8: $36 $be
	ld h, e                                          ; $63ba: $63
	rst $38                                          ; $63bb: $ff
	ld b, c                                          ; $63bc: $41
	ld h, a                                          ; $63bd: $67
	xor d                                            ; $63be: $aa
	ld a, a                                          ; $63bf: $7f
	db $fc                                           ; $63c0: $fc
	adc d                                            ; $63c1: $8a
	ei                                               ; $63c2: $fb
	inc c                                            ; $63c3: $0c
	ei                                               ; $63c4: $fb
	inc c                                            ; $63c5: $0c
	cp d                                             ; $63c6: $ba
	ld c, l                                          ; $63c7: $4d
	ld a, a                                          ; $63c8: $7f
	rst $38                                          ; $63c9: $ff
	ld a, e                                          ; $63ca: $7b
	adc h                                            ; $63cb: $8c
	cp [hl]                                          ; $63cc: $be
	ld a, a                                          ; $63cd: $7f
	rst $38                                          ; $63ce: $ff
	nop                                              ; $63cf: $00
	cp [hl]                                          ; $63d0: $be
	ld a, a                                          ; $63d1: $7f
	db $dd                                           ; $63d2: $dd
	ld h, e                                          ; $63d3: $63
	ld e, l                                          ; $63d4: $5d
	db $e3                                           ; $63d5: $e3
	cp [hl]                                          ; $63d6: $be
	ld h, a                                          ; $63d7: $67
	call nz, $c06b                                   ; $63d8: $c4 $6b $c0
	sub c                                            ; $63db: $91
	sbc [hl]                                         ; $63dc: $9e
	ld h, c                                          ; $63dd: $61
	ld e, a                                          ; $63de: $5f
	db $e3                                           ; $63df: $e3
	ld a, l                                          ; $63e0: $7d
	db $d3                                           ; $63e1: $d3
	rst FarCall                                          ; $63e2: $f7
	ld e, l                                          ; $63e3: $5d
	rst $38                                          ; $63e4: $ff
	ld c, l                                          ; $63e5: $4d
	push af                                          ; $63e6: $f5
	ld e, a                                          ; $63e7: $5f
	rst SubAFromDE                                          ; $63e8: $df
	ld [hl], e                                       ; $63e9: $73
	ld a, e                                          ; $63ea: $7b
	or [hl]                                          ; $63eb: $b6
	sbc [hl]                                         ; $63ec: $9e
	pop bc                                           ; $63ed: $c1
	ld d, a                                          ; $63ee: $57
	ldh [$9e], a                                     ; $63ef: $e0 $9e
	di                                               ; $63f1: $f3
	ld a, e                                          ; $63f2: $7b
	cp [hl]                                          ; $63f3: $be
	sub e                                            ; $63f4: $93
	sbc d                                            ; $63f5: $9a
	ld l, l                                          ; $63f6: $6d
	rst $38                                          ; $63f7: $ff
	ld a, a                                          ; $63f8: $7f
	rst SubAFromDE                                          ; $63f9: $df
	ld l, c                                          ; $63fa: $69
	rst SubAFromDE                                          ; $63fb: $df
	ld l, c                                          ; $63fc: $69
	cp a                                             ; $63fd: $bf
	ld a, a                                          ; $63fe: $7f
	cp $09                                           ; $63ff: $fe $09
	ld [hl], a                                       ; $6401: $77
	xor [hl]                                         ; $6402: $ae
	ld c, a                                          ; $6403: $4f
	ret nz                                           ; $6404: $c0

	sub e                                            ; $6405: $93
	rst AddAOntoHL                                          ; $6406: $ef
	jr @+$01                                         ; $6407: $18 $ff

	ld [$0afd], sp                                   ; $6409: $08 $fd $0a
	rst SubAFromDE                                          ; $640c: $df
	ld a, [hl+]                                      ; $640d: $2a
	cp a                                             ; $640e: $bf
	ld l, e                                          ; $640f: $6b
	rst $38                                          ; $6410: $ff
	ret                                              ; $6411: $c9


	ld [hl], a                                       ; $6412: $77
	ldh [c], a                                       ; $6413: $e2
	ld a, a                                          ; $6414: $7f
	ld a, b                                          ; $6415: $78
	ld c, a                                          ; $6416: $4f
	ldh [$6f], a                                     ; $6417: $e0 $6f
	ld h, d                                          ; $6419: $62
	ld a, a                                          ; $641a: $7f
	add h                                            ; $641b: $84
	ld a, a                                          ; $641c: $7f
	add sp, -$67                                     ; $641d: $e8 $99
	db $dd                                           ; $641f: $dd
	ld a, $be                                        ; $6420: $3e $be
	ld l, e                                          ; $6422: $6b
	ld a, a                                          ; $6423: $7f
	ret                                              ; $6424: $c9


	ld a, e                                          ; $6425: $7b
	ret nc                                           ; $6426: $d0

	ld d, e                                          ; $6427: $53
	ldh [$7f], a                                     ; $6428: $e0 $7f
	sbc [hl]                                         ; $642a: $9e
	sbc l                                            ; $642b: $9d
	rst FarCall                                          ; $642c: $f7
	rrca                                             ; $642d: $0f
	ld a, e                                          ; $642e: $7b
	ld d, [hl]                                       ; $642f: $56

jr_01f_6430:
	sbc [hl]                                         ; $6430: $9e
	rlca                                             ; $6431: $07
	ld [hl], a                                       ; $6432: $77
	db $fc                                           ; $6433: $fc
	sbc e                                            ; $6434: $9b
	db $fd                                           ; $6435: $fd
	ld b, $fd                                        ; $6436: $06 $fd
	ld b, $77                                        ; $6438: $06 $77
	or $67                                           ; $643a: $f6 $67
	ldh [hDisp1_OBP0], a                                     ; $643c: $e0 $93
	cp a                                             ; $643e: $bf
	ret nz                                           ; $643f: $c0

	cp a                                             ; $6440: $bf
	ret nz                                           ; $6441: $c0

	and a                                            ; $6442: $a7
	ret c                                            ; $6443: $d8

	rst FarCall                                          ; $6444: $f7
	ld hl, sp-$41                                    ; $6445: $f8 $bf
	ret nz                                           ; $6447: $c0

	rst AddAOntoHL                                          ; $6448: $ef
	ldh a, [$7b]                                     ; $6449: $f0 $7b
	sub [hl]                                         ; $644b: $96
	sbc d                                            ; $644c: $9a
	ldh a, [$df]                                     ; $644d: $f0 $df
	jr nc, jr_01f_6430                               ; $644f: $30 $df

	jr nc, @+$79                                     ; $6451: $30 $77

	or $57                                           ; $6453: $f6 $57
	ret nz                                           ; $6455: $c0

	sbc [hl]                                         ; $6456: $9e
	ld sp, hl                                        ; $6457: $f9
	ld a, e                                          ; $6458: $7b
	call z, $ff9d                                    ; $6459: $cc $9d $ff
	dec b                                            ; $645c: $05
	ld a, e                                          ; $645d: $7b
	cp $96                                           ; $645e: $fe $96
	inc b                                            ; $6460: $04
	rst $38                                          ; $6461: $ff
	dec b                                            ; $6462: $05
	db $fd                                           ; $6463: $fd
	rlca                                             ; $6464: $07
	rst $38                                          ; $6465: $ff

jr_01f_6466:
	rlca                                             ; $6466: $07
	ei                                               ; $6467: $fb

jr_01f_6468:
	inc b                                            ; $6468: $04
	ld c, a                                          ; $6469: $4f

jr_01f_646a:
	ldh [hDisp1_WY], a                                     ; $646a: $e0 $95
	rst SubAFromBC                                          ; $646c: $e7
	jr jr_01f_6466                                   ; $646d: $18 $f7

	jr jr_01f_6468                                   ; $646f: $18 $f7

	jr c, jr_01f_64d2                                ; $6471: $38 $5f

	ldh a, [rIE]                                     ; $6473: $f0 $ff
	ret nc                                           ; $6475: $d0

	ld a, e                                          ; $6476: $7b
	db $fc                                           ; $6477: $fc
	sbc b                                            ; $6478: $98
	jr nc, @+$01                                     ; $6479: $30 $ff

	ldh a, [$d7]                                     ; $647b: $f0 $d7
	jr c, @+$01                                      ; $647d: $38 $ff

	nop                                              ; $647f: $00
	ld [hl], h                                       ; $6480: $74
	sub h                                            ; $6481: $94
	sbc e                                            ; $6482: $9b
	add hl, bc                                       ; $6483: $09
	rrca                                             ; $6484: $0f
	ld a, [bc]                                       ; $6485: $0a
	ld c, $77                                        ; $6486: $0e $77
	cp $7d                                           ; $6488: $fe $7d
	sub d                                            ; $648a: $92
	ld [hl], a                                       ; $648b: $77
	cp $85                                           ; $648c: $fe $85
	inc h                                            ; $648e: $24
	inc a                                            ; $648f: $3c
	jr z, @+$3a                                      ; $6490: $28 $38

	jr z, jr_01f_64cc                                ; $6492: $28 $38

	ld c, b                                          ; $6494: $48
	ld a, b                                          ; $6495: $78
	ld c, b                                          ; $6496: $48
	ld a, b                                          ; $6497: $78
	ld d, b                                          ; $6498: $50
	ld [hl], b                                       ; $6499: $70
	sub b                                            ; $649a: $90
	ldh a, [$0b]                                     ; $649b: $f0 $0b
	rrca                                             ; $649d: $0f
	ld e, $1e                                        ; $649e: $1e $1e
	ld d, $1e                                        ; $64a0: $16 $1e
	ld [de], a                                       ; $64a2: $12
	ld e, $0a                                        ; $64a3: $1e $0a
	ld c, $04                                        ; $64a5: $0e $04
	inc b                                            ; $64a7: $04
	db $ed                                           ; $64a8: $ed
	ld a, l                                          ; $64a9: $7d
	ld a, b                                          ; $64aa: $78
	sbc [hl]                                         ; $64ab: $9e
	inc b                                            ; $64ac: $04
	ld a, e                                          ; $64ad: $7b
	cp $9c                                           ; $64ae: $fe $9c
	dec c                                            ; $64b0: $0d
	ld c, $09                                        ; $64b1: $0e $09
	ld a, e                                          ; $64b3: $7b
	cp $9c                                           ; $64b4: $fe $9c
	dec de                                           ; $64b6: $1b
	inc e                                            ; $64b7: $1c
	inc de                                           ; $64b8: $13
	ld a, e                                          ; $64b9: $7b
	cp $80                                           ; $64ba: $fe $80
	ld [hl], $39                                     ; $64bc: $36 $39
	ld h, $39                                        ; $64be: $26 $39
	cpl                                              ; $64c0: $2f
	ld sp, $736d                                     ; $64c1: $31 $6d $73
	ld c, l                                          ; $64c4: $4d
	ld [hl], e                                       ; $64c5: $73
	ld e, d                                          ; $64c6: $5a
	ld h, a                                          ; $64c7: $67
	jp c, $d0e7                                      ; $64c8: $da $e7 $d0

	ccf                                              ; $64cb: $3f

jr_01f_64cc:
	pop de                                           ; $64cc: $d1
	ld a, $e0                                        ; $64cd: $3e $e0
	ccf                                              ; $64cf: $3f
	and c                                            ; $64d0: $a1
	ld a, [hl]                                       ; $64d1: $7e

jr_01f_64d2:
	and d                                            ; $64d2: $a2
	ld a, l                                          ; $64d3: $7d
	pop bc                                           ; $64d4: $c1
	ld a, [hl]                                       ; $64d5: $7e
	ld b, e                                          ; $64d6: $43
	db $fc                                           ; $64d7: $fc
	ld b, l                                          ; $64d8: $45
	ld a, [$9483]                                    ; $64d9: $fa $83 $94
	db $fc                                           ; $64dc: $fc
	add a                                            ; $64dd: $87
	ld hl, sp-$75                                    ; $64de: $f8 $8b
	db $f4                                           ; $64e0: $f4
	rlca                                             ; $64e1: $07
	ld hl, sp+$0f                                    ; $64e2: $f8 $0f
	ldh a, [rAUD2ENV]                                ; $64e4: $f0 $17
	add sp, $79                                      ; $64e6: $e8 $79
	jr jr_01f_646a                                   ; $64e8: $18 $80

	ldh [$fc], a                                     ; $64ea: $e0 $fc
	inc bc                                           ; $64ec: $03
	ld a, b                                          ; $64ed: $78
	add a                                            ; $64ee: $87
	db $f4                                           ; $64ef: $f4
	dec bc                                           ; $64f0: $0b
	ld hl, sp+$07                                    ; $64f1: $f8 $07
	ldh a, [rIF]                                     ; $64f3: $f0 $0f
	add sp, $17                                      ; $64f5: $e8 $17
	ldh a, [rIF]                                     ; $64f7: $f0 $0f
	ldh [$1f], a                                     ; $64f9: $e0 $1f
	pop de                                           ; $64fb: $d1
	cpl                                              ; $64fc: $2f
	pop hl                                           ; $64fd: $e1
	rra                                              ; $64fe: $1f
	pop bc                                           ; $64ff: $c1
	ccf                                              ; $6500: $3f
	and d                                            ; $6501: $a2
	ld e, a                                          ; $6502: $5f
	jp $833e                                         ; $6503: $c3 $3e $83


	ld a, [hl]                                       ; $6506: $7e
	ld b, l                                          ; $6507: $45
	cp [hl]                                          ; $6508: $be

jr_01f_6509:
	adc e                                            ; $6509: $8b
	add a                                            ; $650a: $87

jr_01f_650b:
	ld a, h                                          ; $650b: $7c
	ld a, $e1                                        ; $650c: $3e $e1
	ld a, $e1                                        ; $650e: $3e $e1
	ld e, h                                          ; $6510: $5c
	db $e3                                           ; $6511: $e3
	ld a, h                                          ; $6512: $7c
	jp $c37c                                         ; $6513: $c3 $7c $c3


	cp b                                             ; $6516: $b8

jr_01f_6517:
	rst JumpTable                                          ; $6517: $c7
	ld hl, sp-$79                                    ; $6518: $f8 $87
	ld hl, sp-$79                                    ; $651a: $f8 $87
	ld a, b                                          ; $651c: $78
	add a                                            ; $651d: $87
	ld [hl], h                                       ; $651e: $74
	xor [hl]                                         ; $651f: $ae
	ld h, h                                          ; $6520: $64
	xor h                                            ; $6521: $ac
	sub d                                            ; $6522: $92
	add $3e                                          ; $6523: $c6 $3e
	jr nc, jr_01f_6517                               ; $6525: $30 $f0

	jr nz, jr_01f_6509                               ; $6527: $20 $e0

	jr nz, jr_01f_650b                               ; $6529: $20 $e0

jr_01f_652b:
	ld h, b                                          ; $652b: $60
	ldh [rLCDC], a                                   ; $652c: $e0 $40
	ret nz                                           ; $652e: $c0

	ld b, b                                          ; $652f: $40
	sbc $c0                                          ; $6530: $de $c0
	db $db                                           ; $6532: $db
	add b                                            ; $6533: $80
	push af                                          ; $6534: $f5
	add e                                            ; $6535: $83
	daa                                              ; $6536: $27
	add hl, sp                                       ; $6537: $39
	dec l                                            ; $6538: $2d
	inc sp                                           ; $6539: $33
	ld l, e                                          ; $653a: $6b
	ld [hl], a                                       ; $653b: $77
	ld b, [hl]                                       ; $653c: $46
	ld a, l                                          ; $653d: $7d
	call z, $98fb                                    ; $653e: $cc $fb $98
	rst FarCall                                          ; $6541: $f7
	or e                                             ; $6542: $b3
	db $ec                                           ; $6543: $ec
	rst SubAFromBC                                          ; $6544: $e7
	ret c                                            ; $6545: $d8

	rst GetHLinHL                                          ; $6546: $cf
	ldh a, [$60]                                     ; $6547: $f0 $60
	ld a, a                                          ; $6549: $7f
	jr nc, jr_01f_658b                               ; $654a: $30 $3f

	jr jr_01f_656d                                   ; $654c: $18 $1f

	rrca                                             ; $654e: $0f
	rrca                                             ; $654f: $0f
	ld bc, $1401                                     ; $6550: $01 $01 $14
	add b                                            ; $6553: $80
	ld a, a                                          ; $6554: $7f
	db $fc                                           ; $6555: $fc
	sbc l                                            ; $6556: $9d
	ld hl, sp-$01                                    ; $6557: $f8 $ff
	ld [hl], l                                       ; $6559: $75
	ld [hl-], a                                      ; $655a: $32
	ld [hl], a                                       ; $655b: $77
	ld [hl], h                                       ; $655c: $74
	sub c                                            ; $655d: $91
	inc bc                                           ; $655e: $03
	cp $fd                                           ; $655f: $fe $fd
	cp $f6                                           ; $6561: $fe $f6
	rrca                                             ; $6563: $0f
	ld a, $c3                                        ; $6564: $3e $c3
	db $fd                                           ; $6566: $fd
	inc bc                                           ; $6567: $03
	cp $01                                           ; $6568: $fe $01
	jp Jump_01f_773c                                 ; $656a: $c3 $3c $77


jr_01f_656d:
	db $db                                           ; $656d: $db
	sub l                                            ; $656e: $95
	add b                                            ; $656f: $80

jr_01f_6570:
	ld a, a                                          ; $6570: $7f
	ld bc, $07ff                                     ; $6571: $01 $ff $07
	rst $38                                          ; $6574: $ff
	db $fc                                           ; $6575: $fc
	db $fc                                           ; $6576: $fc
	nop                                              ; $6577: $00
	nop                                              ; $6578: $00
	ld e, c                                          ; $6579: $59
	ld bc, $f693                                     ; $657a: $01 $93 $f6

jr_01f_657d:
	db $10                                           ; $657d: $10
	ld [$1006], sp                                   ; $657e: $08 $06 $10
	nop                                              ; $6581: $00
	nop                                              ; $6582: $00
	db $10                                           ; $6583: $10
	ld c, h                                          ; $6584: $4c
	ld c, b                                          ; $6585: $48
	ld b, [hl]                                       ; $6586: $46
	ld [de], a                                       ; $6587: $12
	db $dd                                           ; $6588: $dd
	jr z, @-$63                                      ; $6589: $28 $9b

jr_01f_658b:
	nop                                              ; $658b: $00
	ld hl, sp-$02                                    ; $658c: $f8 $fe
	ldh a, [$7b]                                     ; $658e: $f0 $7b
	pop af                                           ; $6590: $f1
	sbc d                                            ; $6591: $9a
	nop                                              ; $6592: $00
	ld b, h                                          ; $6593: $44
	ld b, d                                          ; $6594: $42
	ld c, [hl]                                       ; $6595: $4e
	ld b, b                                          ; $6596: $40
	db $dd                                           ; $6597: $dd
	jr z, jr_01f_652b                                ; $6598: $28 $91

	xor $f4                                          ; $659a: $ee $f4
	db $10                                           ; $659c: $10
	ld [$2010], sp                                   ; $659d: $08 $10 $20
	nop                                              ; $65a0: $00
	nop                                              ; $65a1: $00
	ld c, d                                          ; $65a2: $4a
	ld a, $48                                        ; $65a3: $3e $48
	ld b, [hl]                                       ; $65a5: $46
	add hl, hl                                       ; $65a6: $29
	inc l                                            ; $65a7: $2c
	ld a, e                                          ; $65a8: $7b
	ldh [$9a], a                                     ; $65a9: $e0 $9a
	ld b, $f6                                        ; $65ab: $06 $f6
	ld hl, sp+$00                                    ; $65ad: $f8 $00
	db $10                                           ; $65af: $10
	ld a, e                                          ; $65b0: $7b
	ldh [$9c], a                                     ; $65b1: $e0 $9c
	ld [de], a                                       ; $65b3: $12
	inc d                                            ; $65b4: $14
	ld b, d                                          ; $65b5: $42
	db $dd                                           ; $65b6: $dd
	jr z, jr_01f_6638                                ; $65b7: $28 $7f

	jp nc, $ee9c                                     ; $65b9: $d2 $9c $ee

	or $10                                           ; $65bc: $f6 $10
	ld a, e                                          ; $65be: $7b
	rst AddAOntoHL                                          ; $65bf: $ef
	ld a, a                                          ; $65c0: $7f
	jp nc, Jump_01f_4a95                             ; $65c1: $d2 $95 $4a

	inc d                                            ; $65c4: $14
	jr z, jr_01f_65ef                                ; $65c5: $28 $28

	add hl, hl                                       ; $65c7: $29
	jr z, jr_01f_65da                                ; $65c8: $28 $10

	ld [$f800], sp                                   ; $65ca: $08 $00 $f8
	db $fd                                           ; $65cd: $fd
	ld a, a                                          ; $65ce: $7f
	jp nc, $be7f                                     ; $65cf: $d2 $7f $be

	db $dd                                           ; $65d2: $dd
	jr z, jr_01f_6570                                ; $65d3: $28 $9b

	ldh a, [rTMA]                                    ; $65d5: $f0 $06
	cp $ef                                           ; $65d7: $fe $ef
	ld a, e                                          ; $65d9: $7b

jr_01f_65da:
	pop hl                                           ; $65da: $e1
	sbc d                                            ; $65db: $9a
	jr nc, jr_01f_661e                               ; $65dc: $30 $40

	ld [de], a                                       ; $65de: $12
	ld c, [hl]                                       ; $65df: $4e
	ld a, $de                                        ; $65e0: $3e $de
	jr z, jr_01f_657d                                ; $65e2: $28 $99

	inc l                                            ; $65e4: $2c
	di                                               ; $65e5: $f3
	xor $00                                          ; $65e6: $ee $00
	ld hl, sp+$20                                    ; $65e8: $f8 $20
	ld a, e                                          ; $65ea: $7b
	adc a                                            ; $65eb: $8f
	sub h                                            ; $65ec: $94
	inc a                                            ; $65ed: $3c
	ld c, d                                          ; $65ee: $4a

jr_01f_65ef:
	inc e                                            ; $65ef: $1c
	ld a, [de]                                       ; $65f0: $1a
	inc l                                            ; $65f1: $2c
	add hl, hl                                       ; $65f2: $29
	ld a, [hl+]                                      ; $65f3: $2a
	ld a, [hl+]                                      ; $65f4: $2a
	nop                                              ; $65f5: $00
	ld hl, sp+$08                                    ; $65f6: $f8 $08
	sbc $f0                                          ; $65f8: $de $f0
	rst SubAFromDE                                          ; $65fa: $df
	db $10                                           ; $65fb: $10
	sbc b                                            ; $65fc: $98
	ld a, [hl+]                                      ; $65fd: $2a
	jr z, jr_01f_6620                                ; $65fe: $28 $20

	jr nz, jr_01f_662c                               ; $6600: $20 $2a

	ld a, [hl+]                                      ; $6602: $2a
	ld l, d                                          ; $6603: $6a
	ld a, e                                          ; $6604: $7b
	ldh a, [$9d]                                     ; $6605: $f0 $9d
	ldh a, [$08]                                     ; $6607: $f0 $08
	ld a, e                                          ; $6609: $7b
	and c                                            ; $660a: $a1
	sbc d                                            ; $660b: $9a
	nop                                              ; $660c: $00
	inc h                                            ; $660d: $24
	inc h                                            ; $660e: $24
	ld e, $1e                                        ; $660f: $1e $1e
	ld [hl], a                                       ; $6611: $77
	ldh a, [$7f]                                     ; $6612: $f0 $7f
	ldh [c], a                                       ; $6614: $e2
	ld a, a                                          ; $6615: $7f
	or c                                             ; $6616: $b1
	rst SubAFromDE                                          ; $6617: $df
	ldh a, [rIE]                                     ; $6618: $f0 $ff
	rst SubAFromDE                                          ; $661a: $df
	ld [hl+], a                                      ; $661b: $22
	sbc c                                            ; $661c: $99
	ld a, [de]                                       ; $661d: $1a

jr_01f_661e:
	inc e                                            ; $661e: $1c
	ld l, d                                          ; $661f: $6a

jr_01f_6620:
	dec hl                                           ; $6620: $2b
	ld a, [hl+]                                      ; $6621: $2a
	ld a, [hl+]                                      ; $6622: $2a
	ld a, e                                          ; $6623: $7b
	and c                                            ; $6624: $a1
	ld a, e                                          ; $6625: $7b
	jp nc, $10df                                     ; $6626: $d2 $df $10

	sbc d                                            ; $6629: $9a
	jr nz, jr_01f_6650                               ; $662a: $20 $24

jr_01f_662c:
	inc h                                            ; $662c: $24
	jr nz, @+$6c                                     ; $662d: $20 $6a

	sbc $2a                                          ; $662f: $de $2a
	ld a, e                                          ; $6631: $7b
	ret nz                                           ; $6632: $c0

	ld a, e                                          ; $6633: $7b
	cp a                                             ; $6634: $bf
	ld a, a                                          ; $6635: $7f
	db $dd                                           ; $6636: $dd
	sbc e                                            ; $6637: $9b

jr_01f_6638:
	ld a, [hl+]                                      ; $6638: $2a
	ld l, $1e                                        ; $6639: $2e $1e
	ld [hl+], a                                      ; $663b: $22
	sbc $2a                                          ; $663c: $de $2a
	sbc [hl]                                         ; $663e: $9e
	ld l, d                                          ; $663f: $6a
	ld a, e                                          ; $6640: $7b
	db $f4                                           ; $6641: $f4
	ld a, e                                          ; $6642: $7b
	rst GetHLinHL                                          ; $6643: $cf
	rst $38                                          ; $6644: $ff
	ld a, a                                          ; $6645: $7f
	ldh a, [c]                                       ; $6646: $f2
	ld a, a                                          ; $6647: $7f
	and b                                            ; $6648: $a0
	ld [hl], a                                       ; $6649: $77
	ret nc                                           ; $664a: $d0

	ld l, a                                          ; $664b: $6f
	ldh [$7f], a                                     ; $664c: $e0 $7f
	xor a                                            ; $664e: $af
	sbc h                                            ; $664f: $9c

jr_01f_6650:
	ld [hl], $34                                     ; $6650: $36 $34
	jr nz, @+$71                                     ; $6652: $20 $6f

	or b                                             ; $6654: $b0
	ld a, e                                          ; $6655: $7b
	ret nz                                           ; $6656: $c0

	ld [hl], a                                       ; $6657: $77
	cp a                                             ; $6658: $bf
	sbc [hl]                                         ; $6659: $9e
	ld [hl+], a                                      ; $665a: $22
	ld l, e                                          ; $665b: $6b
	ret nz                                           ; $665c: $c0

	rst SubAFromDE                                          ; $665d: $df
	ldh a, [$7b]                                     ; $665e: $f0 $7b
	ld d, c                                          ; $6660: $51
	ld [hl], e                                       ; $6661: $73
	ret nc                                           ; $6662: $d0

	ld l, a                                          ; $6663: $6f
	and b                                            ; $6664: $a0
	ld h, a                                          ; $6665: $67
	ret nc                                           ; $6666: $d0

	sbc l                                            ; $6667: $9d
	ld a, [hl-]                                      ; $6668: $3a
	jr c, jr_01f_6692                                ; $6669: $38 $27

	ret nc                                           ; $666b: $d0

	cpl                                              ; $666c: $2f
	and b                                            ; $666d: $a0
	ld a, [hl]                                       ; $666e: $7e
	push hl                                          ; $666f: $e5
	inc bc                                           ; $6670: $03
	and b                                            ; $6671: $a0
	ld [hl], e                                       ; $6672: $73
	and b                                            ; $6673: $a0
	ld a, e                                          ; $6674: $7b
	pop de                                           ; $6675: $d1
	ld a, a                                          ; $6676: $7f
	ret nc                                           ; $6677: $d0

	ld a, a                                          ; $6678: $7f
	pop de                                           ; $6679: $d1
	sbc h                                            ; $667a: $9c
	ldh a, [$30]                                     ; $667b: $f0 $30
	jr nz, @+$7d                                     ; $667d: $20 $7b

	ld d, b                                          ; $667f: $50
	ld a, a                                          ; $6680: $7f
	rst SubAFromDE                                          ; $6681: $df
	sbc [hl]                                         ; $6682: $9e
	ld l, d                                          ; $6683: $6a
	ld a, e                                          ; $6684: $7b
	pop de                                           ; $6685: $d1
	ld a, d                                          ; $6686: $7a
	pop hl                                           ; $6687: $e1
	sbc l                                            ; $6688: $9d
	db $10                                           ; $6689: $10
	ldh a, [$7b]                                     ; $668a: $f0 $7b
	pop de                                           ; $668c: $d1
	call c, Call_01f_472a                            ; $668d: $dc $2a $47
	and b                                            ; $6690: $a0
	ld h, a                                          ; $6691: $67

jr_01f_6692:
	ret nc                                           ; $6692: $d0

	sbc [hl]                                         ; $6693: $9e
	ld [hl-], a                                      ; $6694: $32
	inc de                                           ; $6695: $13
	ret nc                                           ; $6696: $d0

	rst SubAFromDE                                          ; $6697: $df
	ldh a, [$7f]                                     ; $6698: $f0 $7f
	ldh [c], a                                       ; $669a: $e2
	add h                                            ; $669b: $84
	ld b, $04                                        ; $669c: $06 $04
	ld l, d                                          ; $669e: $6a
	dec hl                                           ; $669f: $2b
	inc l                                            ; $66a0: $2c
	inc l                                            ; $66a1: $2c
	nop                                              ; $66a2: $00
	ld hl, sp+$09                                    ; $66a3: $f8 $09
	ld bc, $e0e0                                     ; $66a5: $01 $e0 $e0
	db $eb                                           ; $66a8: $eb
	ldh a, [rSC]                                     ; $66a9: $f0 $02
	nop                                              ; $66ab: $00
	db $10                                           ; $66ac: $10
	ld c, $2e                                        ; $66ad: $0e $2e
	cpl                                              ; $66af: $2f
	inc l                                            ; $66b0: $2c
	inc l                                            ; $66b1: $2c
	ld sp, hl                                        ; $66b2: $f9
	ld bc, $f9f9                                     ; $66b3: $01 $f9 $f9
	ldh a, [$de]                                     ; $66b6: $f0 $de
	ldh [hDisp0_OBP1], a                                     ; $66b8: $e0 $87
	inc c                                            ; $66ba: $0c
	ld a, [bc]                                       ; $66bb: $0a
	ld [$2c0a], sp                                   ; $66bc: $08 $0a $2c
	ld l, $2f                                        ; $66bf: $2e $2f
	ld l, [hl]                                       ; $66c1: $6e
	ld bc, $f901                                     ; $66c2: $01 $01 $f9
	pop af                                           ; $66c5: $f1
	ldh [$f0], a                                     ; $66c6: $e0 $f0
	ldh a, [$e8]                                     ; $66c8: $f0 $e8
	ld [$1618], sp                                   ; $66ca: $08 $18 $16
	db $10                                           ; $66cd: $10
	ld l, [hl]                                       ; $66ce: $6e
	inc l                                            ; $66cf: $2c
	inc l                                            ; $66d0: $2c
	ld l, l                                          ; $66d1: $6d
	cp c                                             ; $66d2: $b9
	add d                                            ; $66d3: $82
	ldh [c], a                                       ; $66d4: $e2
	sbc [hl]                                         ; $66d5: $9e
	ld bc, $9def                                     ; $66d6: $01 $ef $9d
	ld [bc], a                                       ; $66d9: $02
	ld bc, $ea6f                                     ; $66da: $01 $6f $ea
	sbc c                                            ; $66dd: $99
	ld bc, $1102                                     ; $66de: $01 $02 $11
	jr nc, jr_01f_66fb                               ; $66e1: $30 $18

	inc c                                            ; $66e3: $0c
	ld b, e                                          ; $66e4: $43
	ldh [c], a                                       ; $66e5: $e2
	sub c                                            ; $66e6: $91
	inc b                                            ; $66e7: $04
	ld [bc], a                                       ; $66e8: $02

jr_01f_66e9:
	nop                                              ; $66e9: $00
	add d                                            ; $66ea: $82
	nop                                              ; $66eb: $00
	add d                                            ; $66ec: $82
	ld [de], a                                       ; $66ed: $12
	nop                                              ; $66ee: $00
	ld [hl+], a                                      ; $66ef: $22
	inc h                                            ; $66f0: $24
	ld [hl-], a                                      ; $66f1: $32
	db $10                                           ; $66f2: $10
	sub b                                            ; $66f3: $90
	ld [bc], a                                       ; $66f4: $02
	ld a, e                                          ; $66f5: $7b
	db $d3                                           ; $66f6: $d3
	db $fd                                           ; $66f7: $fd
	sbc b                                            ; $66f8: $98
	jr c, jr_01f_6719                                ; $66f9: $38 $1e

jr_01f_66fb:
	nop                                              ; $66fb: $00
	nop                                              ; $66fc: $00
	inc b                                            ; $66fd: $04
	ld c, $03                                        ; $66fe: $0e $03
	ld [hl], a                                       ; $6700: $77
	ldh [$fd], a                                     ; $6701: $e0 $fd
	sbc l                                            ; $6703: $9d
	ldh a, [$7d]                                     ; $6704: $f0 $7d
	cp $9e                                           ; $6706: $fe $9e
	ld a, b                                          ; $6708: $78
	ld a, e                                          ; $6709: $7b
	db $ec                                           ; $670a: $ec
	ld a, a                                          ; $670b: $7f
	ldh [c], a                                       ; $670c: $e2
	adc h                                            ; $670d: $8c
	add b                                            ; $670e: $80
	ret nz                                           ; $670f: $c0

	ld h, b                                          ; $6710: $60
	ld [$040c], sp                                   ; $6711: $08 $0c $04
	ld [bc], a                                       ; $6714: $02
	ld bc, $0004                                     ; $6715: $01 $04 $00
	ld [bc], a                                       ; $6718: $02

jr_01f_6719:
	add hl, bc                                       ; $6719: $09
	inc c                                            ; $671a: $0c
	add h                                            ; $671b: $84
	ld [hl-], a                                      ; $671c: $32
	add hl, de                                       ; $671d: $19
	add b                                            ; $671e: $80
	ld h, b                                          ; $671f: $60

jr_01f_6720:
	jr jr_01f_6720                                   ; $6720: $18 $fe

	add b                                            ; $6722: $80
	ld hl, sp+$00                                    ; $6723: $f8 $00
	add h                                            ; $6725: $84
	ld h, d                                          ; $6726: $62
	jr jr_01f_66e9                                   ; $6727: $18 $c0

	add hl, sp                                       ; $6729: $39
	nop                                              ; $672a: $00
	ei                                               ; $672b: $fb
	nop                                              ; $672c: $00
	ld b, d                                          ; $672d: $42
	ld b, d                                          ; $672e: $42
	ld [hl+], a                                      ; $672f: $22
	ld [hl+], a                                      ; $6730: $22
	ld [de], a                                       ; $6731: $12
	stop                                             ; $6732: $10 $00
	nop                                              ; $6734: $00
	ld d, d                                          ; $6735: $52
	ld c, d                                          ; $6736: $4a
	ld a, [hl+]                                      ; $6737: $2a
	ld a, [hl+]                                      ; $6738: $2a
	sub [hl]                                         ; $6739: $96
	ld d, b                                          ; $673a: $50
	ld [bc], a                                       ; $673b: $02
	ld a, [bc]                                       ; $673c: $0a
	ld d, $4a                                        ; $673d: $16 $4a
	and [hl]                                         ; $673f: $a6
	ld d, [hl]                                       ; $6740: $56
	xor b                                            ; $6741: $a8
	sbc l                                            ; $6742: $9d
	ld b, b                                          ; $6743: $40
	pop af                                           ; $6744: $f1
	ld [hl], e                                       ; $6745: $73
	cp c                                             ; $6746: $b9
	ld a, e                                          ; $6747: $7b
	ret nz                                           ; $6748: $c0

	ld [hl], a                                       ; $6749: $77
	xor l                                            ; $674a: $ad
	scf                                              ; $674b: $37
	ld c, c                                          ; $674c: $49
	ld b, a                                          ; $674d: $47
	ld c, b                                          ; $674e: $48
	ld h, e                                          ; $674f: $63
	ret c                                            ; $6750: $d8

	sub l                                            ; $6751: $95
	inc bc                                           ; $6752: $03
	ld bc, $3810                                     ; $6753: $01 $10 $38
	jr @+$0e                                         ; $6756: $18 $0c

	add h                                            ; $6758: $84
	ret nz                                           ; $6759: $c0

	nop                                              ; $675a: $00
	nop                                              ; $675b: $00
	ld [hl], a                                       ; $675c: $77
	ld hl, sp-$62                                    ; $675d: $f8 $9e
	inc b                                            ; $675f: $04
	ld [hl], e                                       ; $6760: $73
	ret c                                            ; $6761: $d8

	sbc e                                            ; $6762: $9b
	jr jr_01f_6781                                   ; $6763: $18 $1c

	inc c                                            ; $6765: $0c
	ld b, $67                                        ; $6766: $06 $67
	ld hl, sp-$65                                    ; $6768: $f8 $9b
	add [hl]                                         ; $676a: $86
	add b                                            ; $676b: $80
	jp nz, Jump_01f_7741                             ; $676c: $c2 $41 $77

	jr nz, jr_01f_67f0                               ; $676f: $20 $7f

	rst AddAOntoHL                                          ; $6771: $ef
	ld l, e                                          ; $6772: $6b
	jr nz, @-$60                                     ; $6773: $20 $9e

	inc b                                            ; $6775: $04
	sbc $c6                                          ; $6776: $de $c6
	sbc d                                            ; $6778: $9a
	ld h, [hl]                                       ; $6779: $66
	ld h, d                                          ; $677a: $62
	jr nz, jr_01f_677d                               ; $677b: $20 $00

jr_01f_677d:
	inc b                                            ; $677d: $04
	db $dd                                           ; $677e: $dd
	ld b, $7f                                        ; $677f: $06 $7f

jr_01f_6781:
	adc c                                            ; $6781: $89
	ld b, a                                          ; $6782: $47

jr_01f_6783:
	jr nz, jr_01f_6783                               ; $6783: $20 $fe

	sbc l                                            ; $6785: $9d
	ld c, $07                                        ; $6786: $0e $07
	ld l, a                                          ; $6788: $6f
	sub d                                            ; $6789: $92
	ld [hl], e                                       ; $678a: $73
	ld hl, sp-$64                                    ; $678b: $f8 $9c
	jr c, jr_01f_67cd                                ; $678d: $38 $3e

	rlca                                             ; $678f: $07
	ld a, e                                          ; $6790: $7b
	dec h                                            ; $6791: $25
	sbc [hl]                                         ; $6792: $9e
	ld a, $fb                                        ; $6793: $3e $fb
	ld a, e                                          ; $6795: $7b
	ld hl, sp-$63                                    ; $6796: $f8 $9d
	ld h, c                                          ; $6798: $61

jr_01f_6799:
	jr nc, jr_01f_6799                               ; $6799: $30 $fe

	sbc d                                            ; $679b: $9a
	add b                                            ; $679c: $80
	jr c, jr_01f_67bd                                ; $679d: $38 $1e

	ld h, b                                          ; $679f: $60
	jr nc, jr_01f_681d                               ; $67a0: $30 $7b

	nop                                              ; $67a2: $00
	sbc [hl]                                         ; $67a3: $9e
	add b                                            ; $67a4: $80
	inc bc                                           ; $67a5: $03
	nop                                              ; $67a6: $00
	inc bc                                           ; $67a7: $03
	nop                                              ; $67a8: $00
	inc sp                                           ; $67a9: $33
	nop                                              ; $67aa: $00
	sbc h                                            ; $67ab: $9c
	inc b                                            ; $67ac: $04
	ld [$f908], sp                                   ; $67ad: $08 $08 $f9
	sbc l                                            ; $67b0: $9d
	jr jr_01f_67c3                                   ; $67b1: $18 $10

	ld a, e                                          ; $67b3: $7b
	db $d3                                           ; $67b4: $d3
	rst SubAFromDE                                          ; $67b5: $df
	ld [bc], a                                       ; $67b6: $02
	sbc b                                            ; $67b7: $98
	ld a, [bc]                                       ; $67b8: $0a
	nop                                              ; $67b9: $00
	ld b, b                                          ; $67ba: $40
	ret nz                                           ; $67bb: $c0

	add b                                            ; $67bc: $80

jr_01f_67bd:
	add b                                            ; $67bd: $80
	add d                                            ; $67be: $82
	ld [hl], e                                       ; $67bf: $73
	ld h, b                                          ; $67c0: $60
	ld a, a                                          ; $67c1: $7f
	pop hl                                           ; $67c2: $e1

jr_01f_67c3:
	ld l, a                                          ; $67c3: $6f
	ldh [$9a], a                                     ; $67c4: $e0 $9a
	jr nz, jr_01f_6808                               ; $67c6: $20 $40

	ld b, b                                          ; $67c8: $40
	add b                                            ; $67c9: $80
	add b                                            ; $67ca: $80
	ld a, e                                          ; $67cb: $7b
	rst FarCall                                          ; $67cc: $f7

jr_01f_67cd:
	rst SubAFromDE                                          ; $67cd: $df
	ld c, d                                          ; $67ce: $4a
	rst SubAFromDE                                          ; $67cf: $df
	adc d                                            ; $67d0: $8a
	sbc [hl]                                         ; $67d1: $9e
	add d                                            ; $67d2: $82
	ld a, e                                          ; $67d3: $7b

Call_01f_67d4:
	ld [hl], l                                       ; $67d4: $75
	db $dd                                           ; $67d5: $dd
	ld [$d472], sp                                   ; $67d6: $08 $72 $d4
	sbc [hl]                                         ; $67d9: $9e
	inc bc                                           ; $67da: $03
	ld l, a                                          ; $67db: $6f
	reti                                             ; $67dc: $d9


	ld a, d                                          ; $67dd: $7a
	db $ed                                           ; $67de: $ed
	sbc [hl]                                         ; $67df: $9e
	db $10                                           ; $67e0: $10
	ld a, e                                          ; $67e1: $7b
	ld d, d                                          ; $67e2: $52
	rst SubAFromDE                                          ; $67e3: $df
	inc b                                            ; $67e4: $04
	sbc [hl]                                         ; $67e5: $9e
	inc c                                            ; $67e6: $0c

jr_01f_67e7:
	ld a, e                                          ; $67e7: $7b
	add sp, -$21                                     ; $67e8: $e8 $df
	jr nz, jr_01f_67e7                               ; $67ea: $20 $fb

	ld a, a                                          ; $67ec: $7f
	cp c                                             ; $67ed: $b9
	sbc c                                            ; $67ee: $99
	add c                                            ; $67ef: $81

jr_01f_67f0:
	ld bc, $1a05                                     ; $67f0: $01 $05 $1a
	ld a, [de]                                       ; $67f3: $1a
	ld l, b                                          ; $67f4: $68

jr_01f_67f5:
	ld l, e                                          ; $67f5: $6b
	sbc c                                            ; $67f6: $99
	sub [hl]                                         ; $67f7: $96
	ld c, b                                          ; $67f8: $48
	and b                                            ; $67f9: $a0
	and b                                            ; $67fa: $a0
	add b                                            ; $67fb: $80
	add b                                            ; $67fc: $80
	ld bc, $0905                                     ; $67fd: $01 $05 $09
	ld a, [bc]                                       ; $6800: $0a
	db $dd                                           ; $6801: $dd
	add b                                            ; $6802: $80
	ld [hl], a                                       ; $6803: $77
	xor h                                            ; $6804: $ac
	sbc d                                            ; $6805: $9a
	ld c, d                                          ; $6806: $4a
	ld d, b                                          ; $6807: $50

jr_01f_6808:
	ld d, b                                          ; $6808: $50
	ld [de], a                                       ; $6809: $12
	ld [bc], a                                       ; $680a: $02
	sbc $04                                          ; $680b: $de $04
	sbc e                                            ; $680d: $9b
	ld b, d                                          ; $680e: $42
	ld b, b                                          ; $680f: $40
	ld b, b                                          ; $6810: $40
	ld [bc], a                                       ; $6811: $02
	ld [hl], a                                       ; $6812: $77
	ld hl, sp-$22                                    ; $6813: $f8 $de
	jr nz, jr_01f_67f5                               ; $6815: $20 $de

	ld b, b                                          ; $6817: $40
	rst $38                                          ; $6818: $ff
	sbc c                                            ; $6819: $99
	ld hl, $2a23                                     ; $681a: $21 $23 $2a

jr_01f_681d:
	ld d, d                                          ; $681d: $52
	ld d, b                                          ; $681e: $50
	ld d, b                                          ; $681f: $50
	ld a, e                                          ; $6820: $7b
	dec b                                            ; $6821: $05
	sbc h                                            ; $6822: $9c
	ld [$9050], sp                                   ; $6823: $08 $50 $90
	ld [hl], e                                       ; $6826: $73
	push de                                          ; $6827: $d5
	sbc c                                            ; $6828: $99
	ld [$9252], sp                                   ; $6829: $08 $52 $92
	add d                                            ; $682c: $82
	and b                                            ; $682d: $a0
	and b                                            ; $682e: $a0
	ld a, e                                          ; $682f: $7b
	ld hl, sp-$22                                    ; $6830: $f8 $de
	db $10                                           ; $6832: $10
	ld [hl], a                                       ; $6833: $77
	rst JumpTable                                          ; $6834: $c7
	sbc d                                            ; $6835: $9a
	jr nz, jr_01f_687c                               ; $6836: $20 $44

	ld c, b                                          ; $6838: $48
	ld a, [bc]                                       ; $6839: $0a
	ld a, [bc]                                       ; $683a: $0a
	ld l, a                                          ; $683b: $6f
	add b                                            ; $683c: $80
	ld a, a                                          ; $683d: $7f
	ld a, a                                          ; $683e: $7f
	rst SubAFromDE                                          ; $683f: $df
	inc bc                                           ; $6840: $03
	ld [hl], a                                       ; $6841: $77
	ld [hl], c                                       ; $6842: $71
	ld [hl], a                                       ; $6843: $77
	ld b, h                                          ; $6844: $44
	ld h, a                                          ; $6845: $67
	ld [hl], l                                       ; $6846: $75
	ld sp, hl                                        ; $6847: $f9
	sbc h                                            ; $6848: $9c
	ld a, [bc]                                       ; $6849: $0a
	ld [de], a                                       ; $684a: $12
	ld [de], a                                       ; $684b: $12
	ld l, a                                          ; $684c: $6f
	ld a, b                                          ; $684d: $78
	db $dd                                           ; $684e: $dd
	ld b, b                                          ; $684f: $40
	ld [hl], e                                       ; $6850: $73
	ld e, l                                          ; $6851: $5d
	db $dd                                           ; $6852: $dd
	jr nz, jr_01f_68d0                               ; $6853: $20 $7b

	ld hl, sp-$63                                    ; $6855: $f8 $9d
	ld [de], a                                       ; $6857: $12
	ld [hl+], a                                      ; $6858: $22
	sbc $24                                          ; $6859: $de $24
	rst SubAFromDE                                          ; $685b: $df
	inc b                                            ; $685c: $04
	rst SubAFromDE                                          ; $685d: $df
	ld [bc], a                                       ; $685e: $02
	sbc [hl]                                         ; $685f: $9e
	ld b, $de                                        ; $6860: $06 $de
	inc b                                            ; $6862: $04
	ld [hl], a                                       ; $6863: $77
	ret c                                            ; $6864: $d8

	sbc e                                            ; $6865: $9b
	ld d, $15                                        ; $6866: $16 $15
	dec h                                            ; $6868: $25
	dec h                                            ; $6869: $25
	ld [hl], a                                       ; $686a: $77
	ret c                                            ; $686b: $d8

	sbc e                                            ; $686c: $9b
	add b                                            ; $686d: $80
	sub b                                            ; $686e: $90
	sub b                                            ; $686f: $90
	and b                                            ; $6870: $a0
	ld [hl], a                                       ; $6871: $77
	sbc $dc                                          ; $6872: $de $dc
	ld [bc], a                                       ; $6874: $02
	ld [hl], a                                       ; $6875: $77
	sub [hl]                                         ; $6876: $96
	sbc [hl]                                         ; $6877: $9e
	ld [hl+], a                                      ; $6878: $22
	db $dd                                           ; $6879: $dd
	ld b, d                                          ; $687a: $42
	ld a, a                                          ; $687b: $7f

jr_01f_687c:
	ld [hl], a                                       ; $687c: $77
	sbc h                                            ; $687d: $9c
	and b                                            ; $687e: $a0
	ld a, [hl+]                                      ; $687f: $2a
	ld c, d                                          ; $6880: $4a
	sbc $52                                          ; $6881: $de $52
	ld [hl], e                                       ; $6883: $73
	add sp, $76                                      ; $6884: $e8 $76
	scf                                              ; $6886: $37
	ld a, a                                          ; $6887: $7f
	ld hl, sp-$21                                    ; $6888: $f8 $df
	ld [hl+], a                                      ; $688a: $22
	rst SubAFromDE                                          ; $688b: $df
	ld h, $9e                                        ; $688c: $26 $9e
	ld [hl+], a                                      ; $688e: $22
	rst AddAOntoHL                                          ; $688f: $ef
	ld a, a                                          ; $6890: $7f
	ld a, h                                          ; $6891: $7c
	sbc l                                            ; $6892: $9d
	db $10                                           ; $6893: $10
	ld de, $037a                                     ; $6894: $11 $7a $03
	ld c, a                                          ; $6897: $4f
	halt                                             ; $6898: $76
	ld [hl], a                                       ; $6899: $77
	ld c, l                                          ; $689a: $4d
	ld h, [hl]                                       ; $689b: $66
	call c, $cc7f                                    ; $689c: $dc $7f $cc
	ld a, a                                          ; $689f: $7f
	ret                                              ; $68a0: $c9


	ld a, e                                          ; $68a1: $7b
	adc [hl]                                         ; $68a2: $8e
	ld a, a                                          ; $68a3: $7f
	and a                                            ; $68a4: $a7
	sbc h                                            ; $68a5: $9c
	nop                                              ; $68a6: $00
	inc h                                            ; $68a7: $24
	jr nz, jr_01f_6924                               ; $68a8: $20 $7a

	ld c, c                                          ; $68aa: $49
	ld [hl], e                                       ; $68ab: $73
	rst SubAFromHL                                          ; $68ac: $d7
	ld h, d                                          ; $68ad: $62
	add b                                            ; $68ae: $80
	ld a, e                                          ; $68af: $7b
	add hl, sp                                       ; $68b0: $39
	ld c, b                                          ; $68b1: $48
	cp a                                             ; $68b2: $bf
	sbc $01                                          ; $68b3: $de $01
	sbc h                                            ; $68b5: $9c
	add hl, bc                                       ; $68b6: $09
	and b                                            ; $68b7: $a0
	ld [$aa7b], sp                                   ; $68b8: $08 $7b $aa
	ld a, a                                          ; $68bb: $7f
	db $fd                                           ; $68bc: $fd
	sbc d                                            ; $68bd: $9a
	ld [$0880], sp                                   ; $68be: $08 $80 $08
	xor b                                            ; $68c1: $a8
	and b                                            ; $68c2: $a0
	ld a, e                                          ; $68c3: $7b
	db $ed                                           ; $68c4: $ed
	sbc e                                            ; $68c5: $9b
	add hl, bc                                       ; $68c6: $09
	nop                                              ; $68c7: $00
	add hl, bc                                       ; $68c8: $09
	adc b                                            ; $68c9: $88
	halt                                             ; $68ca: $76
	jp nz, Jump_01f_527f                             ; $68cb: $c2 $7f $52

	sbc d                                            ; $68ce: $9a
	nop                                              ; $68cf: $00

jr_01f_68d0:
	ld de, $1400                                     ; $68d0: $11 $00 $14
	db $10                                           ; $68d3: $10
	ld [hl], a                                       ; $68d4: $77
	ld b, b                                          ; $68d5: $40
	ld a, a                                          ; $68d6: $7f
	db $e3                                           ; $68d7: $e3
	ld l, a                                          ; $68d8: $6f
	ld hl, sp+$77                                    ; $68d9: $f8 $77
	db $ec                                           ; $68db: $ec
	ld [hl], e                                       ; $68dc: $73
	rla                                              ; $68dd: $17
	ld a, [hl]                                       ; $68de: $7e
	ld c, $7f                                        ; $68df: $0e $7f
	cp $7b                                           ; $68e1: $fe $7b
	ld d, d                                          ; $68e3: $52
	ld a, e                                          ; $68e4: $7b
	db $ed                                           ; $68e5: $ed
	ld a, a                                          ; $68e6: $7f
	sub $7a                                          ; $68e7: $d6 $7a
	ret nz                                           ; $68e9: $c0

	ld a, a                                          ; $68ea: $7f
	ld hl, sp-$65                                    ; $68eb: $f8 $9b
	ld [hl+], a                                      ; $68ed: $22
	add b                                            ; $68ee: $80
	ld [hl+], a                                      ; $68ef: $22
	and d                                            ; $68f0: $a2
	ld a, c                                          ; $68f1: $79
	ld c, c                                          ; $68f2: $49
	ld sp, hl                                        ; $68f3: $f9
	sbc h                                            ; $68f4: $9c
	ld b, b                                          ; $68f5: $40
	db $10                                           ; $68f6: $10
	ld b, d                                          ; $68f7: $42
	ld a, d                                          ; $68f8: $7a
	add [hl]                                         ; $68f9: $86
	ld l, h                                          ; $68fa: $6c
	adc h                                            ; $68fb: $8c
	ld [hl], a                                       ; $68fc: $77
	ld a, l                                          ; $68fd: $7d
	ld [hl], e                                       ; $68fe: $73
	sbc a                                            ; $68ff: $9f
	rst AddAOntoHL                                          ; $6900: $ef
	ld a, a                                          ; $6901: $7f
	sub l                                            ; $6902: $95
	db $fc                                           ; $6903: $fc
	ld a, d                                          ; $6904: $7a
	ld l, e                                          ; $6905: $6b
	halt                                             ; $6906: $76
	ccf                                              ; $6907: $3f
	ld a, a                                          ; $6908: $7f
	ld c, [hl]                                       ; $6909: $4e
	ld h, d                                          ; $690a: $62
	daa                                              ; $690b: $27
	ld a, e                                          ; $690c: $7b
	ld b, h                                          ; $690d: $44
	ld [hl], e                                       ; $690e: $73
	sub c                                            ; $690f: $91
	ld a, e                                          ; $6910: $7b
	db $eb                                           ; $6911: $eb
	rst SubAFromDE                                          ; $6912: $df
	inc b                                            ; $6913: $04
	ld a, e                                          ; $6914: $7b
	ld [hl], e                                       ; $6915: $73
	sbc d                                            ; $6916: $9a
	ld bc, $0114                                     ; $6917: $01 $14 $01
	dec d                                            ; $691a: $15
	inc d                                            ; $691b: $14
	ld a, e                                          ; $691c: $7b
	sub e                                            ; $691d: $93
	sbc h                                            ; $691e: $9c
	db $10                                           ; $691f: $10
	add b                                            ; $6920: $80
	sub b                                            ; $6921: $90
	ld [hl], e                                       ; $6922: $73
	or [hl]                                          ; $6923: $b6

jr_01f_6924:
	ld a, e                                          ; $6924: $7b
	xor e                                            ; $6925: $ab
	ld [hl], e                                       ; $6926: $73
	ld h, $7f                                        ; $6927: $26 $7f
	pop de                                           ; $6929: $d1
	ld a, a                                          ; $692a: $7f
	db $10                                           ; $692b: $10
	sub h                                            ; $692c: $94
	ld [hl+], a                                      ; $692d: $22
	jr nz, @+$04                                     ; $692e: $20 $02

	nop                                              ; $6930: $00
	jr nz, jr_01f_693b                               ; $6931: $20 $08

	ld [hl+], a                                      ; $6933: $22
	ld [$2822], sp                                   ; $6934: $08 $22 $28
	ld a, [bc]                                       ; $6937: $0a
	ld [hl], a                                       ; $6938: $77
	adc [hl]                                         ; $6939: $8e
	ld [hl], a                                       ; $693a: $77

jr_01f_693b:
	rst SubAFromBC                                          ; $693b: $e7
	ld a, e                                          ; $693c: $7b
	ld hl, sp-$6b                                    ; $693d: $f8 $95
	db $10                                           ; $693f: $10
	ld [bc], a                                       ; $6940: $02
	db $10                                           ; $6941: $10
	ld [de], a                                       ; $6942: $12
	ld [bc], a                                       ; $6943: $02
	db $10                                           ; $6944: $10
	jr nz, jr_01f_6947                               ; $6945: $20 $00

jr_01f_6947:
	db $10                                           ; $6947: $10
	jr nc, jr_01f_69c0                               ; $6948: $30 $76

	dec l                                            ; $694a: $2d
	ld a, a                                          ; $694b: $7f
	ld a, [$30de]                                    ; $694c: $fa $de $30
	ld l, e                                          ; $694f: $6b
	ld a, l                                          ; $6950: $7d
	halt                                             ; $6951: $76
	ld h, b                                          ; $6952: $60
	ld a, e                                          ; $6953: $7b
	ld [de], a                                       ; $6954: $12
	ld [hl], a                                       ; $6955: $77
	ld hl, sp+$6f                                    ; $6956: $f8 $6f
	ldh a, [c]                                       ; $6958: $f2
	ld [hl], d                                       ; $6959: $72
	rst SubAFromDE                                          ; $695a: $df
	ld [hl], a                                       ; $695b: $77
	ld hl, sp-$62                                    ; $695c: $f8 $9e
	ld [$826b], sp                                   ; $695e: $08 $6b $82
	ld [hl], e                                       ; $6961: $73
	db $dd                                           ; $6962: $dd
	ld [hl], d                                       ; $6963: $72
	or c                                             ; $6964: $b1
	ld [hl], a                                       ; $6965: $77
	ret nz                                           ; $6966: $c0

	ld a, e                                          ; $6967: $7b
	rst JumpTable                                          ; $6968: $c7
	ld l, a                                          ; $6969: $6f
	ret nz                                           ; $696a: $c0

	ld [hl], a                                       ; $696b: $77
	rst FarCall                                          ; $696c: $f7
	ld l, a                                          ; $696d: $6f
	db $d3                                           ; $696e: $d3
	ld [hl], c                                       ; $696f: $71
	jp c, $d277                                      ; $6970: $da $77 $d2

	ld h, [hl]                                       ; $6973: $66
	or c                                             ; $6974: $b1
	ld [hl], a                                       ; $6975: $77
	db $ec                                           ; $6976: $ec
	ld l, a                                          ; $6977: $6f
	ld sp, hl                                        ; $6978: $f9
	ld l, a                                          ; $6979: $6f
	ld hl, sp+$6f                                    ; $697a: $f8 $6f
	cp a                                             ; $697c: $bf
	ld l, e                                          ; $697d: $6b
	dec c                                            ; $697e: $0d
	ld a, h                                          ; $697f: $7c
	inc [hl]                                         ; $6980: $34
	ld a, $57                                        ; $6981: $3e $57
	push af                                          ; $6983: $f5
	sbc [hl]                                         ; $6984: $9e
	jr z, @+$65                                      ; $6985: $28 $63

	pop hl                                           ; $6987: $e1
	ld h, e                                          ; $6988: $63
	or $fa                                           ; $6989: $f6 $fa
	ld h, $01                                        ; $698b: $26 $01
	sbc h                                            ; $698d: $9c
	nop                                              ; $698e: $00
	ld [$fd10], sp                                   ; $698f: $08 $10 $fd
	sub c                                            ; $6992: $91
	db $10                                           ; $6993: $10
	ld a, [bc]                                       ; $6994: $0a
	ld [$0406], sp                                   ; $6995: $08 $06 $04
	ldh [$e2], a                                     ; $6998: $e0 $e2
	db $e4                                           ; $699a: $e4
	and $08                                          ; $699b: $e6 $08
	db $10                                           ; $699d: $10
	ld hl, sp-$10                                    ; $699e: $f8 $f0
	db $10                                           ; $69a0: $10
	ld a, e                                          ; $69a1: $7b
	db $ed                                           ; $69a2: $ed
	sub d                                            ; $69a3: $92
	ld [bc], a                                       ; $69a4: $02
	nop                                              ; $69a5: $00
	ld a, [bc]                                       ; $69a6: $0a
	ld [$e6e6], sp                                   ; $69a7: $08 $e6 $e6
	and b                                            ; $69aa: $a0
	and d                                            ; $69ab: $a2
	add sp, -$08                                     ; $69ac: $e8 $f8
	ldh a, [$e8]                                     ; $69ae: $f0 $e8
	nop                                              ; $69b0: $00
	sbc $10                                          ; $69b1: $de $10
	ld a, a                                          ; $69b3: $7f
	ldh [c], a                                       ; $69b4: $e2
	ld a, a                                          ; $69b5: $7f
	xor $9e                                          ; $69b6: $ee $9e
	and h                                            ; $69b8: $a4
	sbc $a6                                          ; $69b9: $de $a6
	ld [hl], a                                       ; $69bb: $77
	ret nc                                           ; $69bc: $d0

	sbc $f0                                          ; $69bd: $de $f0
	sbc [hl]                                         ; $69bf: $9e

jr_01f_69c0:
	ldh [rPCM34], a                                  ; $69c0: $e0 $77
	ret nc                                           ; $69c2: $d0

	sbc e                                            ; $69c3: $9b
	ld h, b                                          ; $69c4: $60
	ld h, d                                          ; $69c5: $62
	ld h, h                                          ; $69c6: $64
	ld h, [hl]                                       ; $69c7: $66
	ld [hl], a                                       ; $69c8: $77
	ret nc                                           ; $69c9: $d0

	rst SubAFromDE                                          ; $69ca: $df
	ldh [$df], a                                     ; $69cb: $e0 $df
	ldh a, [rPCM34]                                  ; $69cd: $f0 $77
	ret nc                                           ; $69cf: $d0

	rst SubAFromDE                                          ; $69d0: $df
	ld h, [hl]                                       ; $69d1: $66
	sbc l                                            ; $69d2: $9d
	jr nz, jr_01f_69f7                               ; $69d3: $20 $22

	ld [hl], a                                       ; $69d5: $77
	ret nc                                           ; $69d6: $d0

	ld a, e                                          ; $69d7: $7b
	rst AddAOntoHL                                          ; $69d8: $ef
	sbc [hl]                                         ; $69d9: $9e
	ldh [rPCM34], a                                  ; $69da: $e0 $77
	ret nc                                           ; $69dc: $d0

	sbc e                                            ; $69dd: $9b
	inc h                                            ; $69de: $24
	ld h, $26                                        ; $69df: $26 $26
	daa                                              ; $69e1: $27
	ld a, e                                          ; $69e2: $7b
	ret nc                                           ; $69e3: $d0

jr_01f_69e4:
	sbc [hl]                                         ; $69e4: $9e
	jr jr_01f_69e4                                   ; $69e5: $18 $fd

	sbc e                                            ; $69e7: $9b
	ld a, [de]                                       ; $69e8: $1a
	jr jr_01f_6a01                                   ; $69e9: $18 $16

	inc d                                            ; $69eb: $14
	ld [hl], a                                       ; $69ec: $77
	and b                                            ; $69ed: $a0
	ld [hl], a                                       ; $69ee: $77
	ldh a, [$dd]                                     ; $69ef: $f0 $dd
	db $10                                           ; $69f1: $10
	sbc e                                            ; $69f2: $9b
	ld [de], a                                       ; $69f3: $12
	db $10                                           ; $69f4: $10
	ld c, $0c                                        ; $69f5: $0e $0c

jr_01f_69f7:
	db $dd                                           ; $69f7: $dd
	and $7b                                          ; $69f8: $e6 $7b
	ret nc                                           ; $69fa: $d0

	sbc [hl]                                         ; $69fb: $9e
	ldh [$fd], a                                     ; $69fc: $e0 $fd
	sub a                                            ; $69fe: $97
	ld d, $1a                                        ; $69ff: $16 $1a

jr_01f_6a01:
	jr jr_01f_6a17                                   ; $6a01: $18 $14

	and h                                            ; $6a03: $a4
	and b                                            ; $6a04: $a0
	and d                                            ; $6a05: $a2
	and [hl]                                         ; $6a06: $a6
	ld a, e                                          ; $6a07: $7b
	pop bc                                           ; $6a08: $c1
	sbc [hl]                                         ; $6a09: $9e
	ldh [$67], a                                     ; $6a0a: $e0 $67
	ldh [$dd], a                                     ; $6a0c: $e0 $dd
	and [hl]                                         ; $6a0e: $a6
	ld [hl], a                                       ; $6a0f: $77
	ret nc                                           ; $6a10: $d0

	db $dd                                           ; $6a11: $dd
	ldh a, [rPCM34]                                  ; $6a12: $f0 $77

jr_01f_6a14:
	ret nz                                           ; $6a14: $c0

	ld [hl], a                                       ; $6a15: $77
	sub b                                            ; $6a16: $90

jr_01f_6a17:
	ld [hl], a                                       ; $6a17: $77
	ldh a, [$dd]                                     ; $6a18: $f0 $dd
	ldh [rPCM34], a                                  ; $6a1a: $e0 $77
	ldh [$dd], a                                     ; $6a1c: $e0 $dd
	ld h, [hl]                                       ; $6a1e: $66
	ld [hl], a                                       ; $6a1f: $77
	ret nc                                           ; $6a20: $d0

	ld h, a                                          ; $6a21: $67
	ldh [$7f], a                                     ; $6a22: $e0 $7f
	add d                                            ; $6a24: $82
	ld a, a                                          ; $6a25: $7f
	adc [hl]                                         ; $6a26: $8e
	ld [hl], a                                       ; $6a27: $77
	ldh a, [$67]                                     ; $6a28: $f0 $67
	ldh [$de], a                                     ; $6a2a: $e0 $de
	ld h, $73                                        ; $6a2c: $26 $73
	add b                                            ; $6a2e: $80
	db $dd                                           ; $6a2f: $dd
	db $10                                           ; $6a30: $10
	sbc e                                            ; $6a31: $9b
	ld l, $2c                                        ; $6a32: $2e $2c
	ld a, [hl+]                                      ; $6a34: $2a
	jr z, jr_01f_6a14                                ; $6a35: $28 $dd

	ld l, b                                          ; $6a37: $68
	ld h, a                                          ; $6a38: $67
	ld [hl], b                                       ; $6a39: $70
	sbc e                                            ; $6a3a: $9b
	ld h, $24                                        ; $6a3b: $26 $24
	ld [hl+], a                                      ; $6a3d: $22
	jr nz, jr_01f_6aaf                               ; $6a3e: $20 $6f

	ldh a, [$7f]                                     ; $6a40: $f0 $7f
	adc $df                                          ; $6a42: $ce $df
	ldh a, [$df]                                     ; $6a44: $f0 $df
	db $10                                           ; $6a46: $10
	sub l                                            ; $6a47: $95
	ld e, $1c                                        ; $6a48: $1e $1c
	ld l, $2c                                        ; $6a4a: $2e $2c
	ld l, b                                          ; $6a4c: $68
	ld l, b                                          ; $6a4d: $68
	jr z, jr_01f_6a78                                ; $6a4e: $28 $28

	add sp, -$20                                     ; $6a50: $e8 $e0
	ld l, a                                          ; $6a52: $6f
	nop                                              ; $6a53: $00
	ld a, a                                          ; $6a54: $7f
	jp nc, $de7f                                     ; $6a55: $d2 $7f $de

	db $dd                                           ; $6a58: $dd
	jr z, jr_01f_6ad2                                ; $6a59: $28 $77

	ldh a, [rIE]                                     ; $6a5b: $f0 $ff
	rst SubAFromDE                                          ; $6a5d: $df
	ldh a, [$7f]                                     ; $6a5e: $f0 $7f
	jp nc, $de7f                                     ; $6a60: $d2 $7f $de

	sbc $28                                          ; $6a63: $de $28
	sbc [hl]                                         ; $6a65: $9e
	add hl, hl                                       ; $6a66: $29
	ld [hl], a                                       ; $6a67: $77
	ret nz                                           ; $6a68: $c0

	db $dd                                           ; $6a69: $dd
	inc e                                            ; $6a6a: $1c
	sbc e                                            ; $6a6b: $9b
	ld b, d                                          ; $6a6c: $42
	ld b, b                                          ; $6a6d: $40
	ld a, $3c                                        ; $6a6e: $3e $3c
	ld h, a                                          ; $6a70: $67
	or b                                             ; $6a71: $b0
	db $dd                                           ; $6a72: $dd
	inc c                                            ; $6a73: $0c
	sbc e                                            ; $6a74: $9b
	ld a, [hl-]                                      ; $6a75: $3a
	jr c, jr_01f_6aae                                ; $6a76: $38 $36

jr_01f_6a78:
	inc [hl]                                         ; $6a78: $34
	ld h, a                                          ; $6a79: $67
	or b                                             ; $6a7a: $b0
	rst SubAFromDE                                          ; $6a7b: $df
	db $fc                                           ; $6a7c: $fc
	rst SubAFromDE                                          ; $6a7d: $df
	inc e                                            ; $6a7e: $1c
	sbc e                                            ; $6a7f: $9b
	ld [hl-], a                                      ; $6a80: $32
	jr nc, jr_01f_6ac5                               ; $6a81: $30 $42

	ld b, b                                          ; $6a83: $40
	ld h, a                                          ; $6a84: $67
	or b                                             ; $6a85: $b0
	rst SubAFromDE                                          ; $6a86: $df
	inc e                                            ; $6a87: $1c
	rst SubAFromDE                                          ; $6a88: $df
	inc c                                            ; $6a89: $0c
	ld a, a                                          ; $6a8a: $7f
	jp nc, $de7f                                     ; $6a8b: $d2 $7f $de

	ld h, a                                          ; $6a8e: $67
	or b                                             ; $6a8f: $b0
	rst SubAFromDE                                          ; $6a90: $df
	inc c                                            ; $6a91: $0c
	rst SubAFromDE                                          ; $6a92: $df
	db $fc                                           ; $6a93: $fc
	ld a, a                                          ; $6a94: $7f
	jp nc, $de7f                                     ; $6a95: $d2 $7f $de

	ld [hl], a                                       ; $6a98: $77
	or b                                             ; $6a99: $b0
	db $dd                                           ; $6a9a: $dd
	db $fd                                           ; $6a9b: $fd
	ld a, a                                          ; $6a9c: $7f
	sub c                                            ; $6a9d: $91
	ld a, a                                          ; $6a9e: $7f
	cp $94                                           ; $6a9f: $fe $94

jr_01f_6aa1:
	ld b, [hl]                                       ; $6aa1: $46
	ld b, h                                          ; $6aa2: $44
	ld c, d                                          ; $6aa3: $4a
	ld c, b                                          ; $6aa4: $48
	ld a, [hl+]                                      ; $6aa5: $2a
	dec hl                                           ; $6aa6: $2b
	ld a, [hl+]                                      ; $6aa7: $2a
	dec hl                                           ; $6aa8: $2b
	db $fc                                           ; $6aa9: $fc
	ld hl, sp+$4c                                    ; $6aaa: $f8 $4c
	ld a, e                                          ; $6aac: $7b
	db $fc                                           ; $6aad: $fc

jr_01f_6aae:
	sbc l                                            ; $6aae: $9d

jr_01f_6aaf:
	ld c, [hl]                                       ; $6aaf: $4e
	dec hl                                           ; $6ab0: $2b
	sub d                                            ; $6ab1: $92
	ld bc, $8ff3                                     ; $6ab2: $01 $f3 $8f
	inc b                                            ; $6ab5: $04
	ld bc, $0802                                     ; $6ab6: $01 $02 $08
	ld de, $0804                                     ; $6ab9: $11 $04 $08
	ld [bc], a                                       ; $6abc: $02
	nop                                              ; $6abd: $00
	jr nc, jr_01f_6af8                               ; $6abe: $30 $38

	nop                                              ; $6ac0: $00
	nop                                              ; $6ac1: $00
	ld bc, $7803                                     ; $6ac2: $01 $03 $78

jr_01f_6ac5:
	push af                                          ; $6ac5: $f5
	adc d                                            ; $6ac6: $8a
	add c                                            ; $6ac7: $81
	inc h                                            ; $6ac8: $24
	add c                                            ; $6ac9: $81
	inc h                                            ; $6aca: $24
	ld b, d                                          ; $6acb: $42
	inc h                                            ; $6acc: $24
	nop                                              ; $6acd: $00
	add c                                            ; $6ace: $81
	nop                                              ; $6acf: $00
	nop                                              ; $6ad0: $00
	inc h                                            ; $6ad1: $24

jr_01f_6ad2:
	nop                                              ; $6ad2: $00
	inc h                                            ; $6ad3: $24
	add c                                            ; $6ad4: $81
	sub c                                            ; $6ad5: $91
	db $db                                           ; $6ad6: $db
	ld b, d                                          ; $6ad7: $42
	ld b, d                                          ; $6ad8: $42
	nop                                              ; $6ad9: $00
	add c                                            ; $6ada: $81
	sbc c                                            ; $6adb: $99
	ld a, e                                          ; $6adc: $7b
	ldh a, [c]                                       ; $6add: $f2
	add sp, -$66                                     ; $6ade: $e8 $9a
	ld [bc], a                                       ; $6ae0: $02
	db $10                                           ; $6ae1: $10
	inc de                                           ; $6ae2: $13
	ld [$e989], sp                                   ; $6ae3: $08 $89 $e9
	db $db                                           ; $6ae6: $db
	inc h                                            ; $6ae7: $24
	ld l, e                                          ; $6ae8: $6b
	rst SubAFromHL                                          ; $6ae9: $d7
	sbc d                                            ; $6aea: $9a
	ld [bc], a                                       ; $6aeb: $02
	ld bc, $0001                                     ; $6aec: $01 $01 $00
	ld [$837b], sp                                   ; $6aef: $08 $7b $83
	sub h                                            ; $6af2: $94
	inc bc                                           ; $6af3: $03
	jr nz, jr_01f_6b16                               ; $6af4: $20 $20

	ld e, $18                                        ; $6af6: $1e $18

jr_01f_6af8:
	inc bc                                           ; $6af8: $03
	nop                                              ; $6af9: $00
	nop                                              ; $6afa: $00
	ld h, b                                          ; $6afb: $60
	ld c, $1e                                        ; $6afc: $0e $1e
	ld a, e                                          ; $6afe: $7b
	xor $85                                          ; $6aff: $ee $85
	nop                                              ; $6b01: $00
	rst AddAOntoHL                                          ; $6b02: $ef
	ldh [rP1], a                                     ; $6b03: $e0 $00
	nop                                              ; $6b05: $00
	ld [$0448], sp                                   ; $6b06: $08 $48 $04
	ld b, b                                          ; $6b09: $40
	inc d                                            ; $6b0a: $14
	db $10                                           ; $6b0b: $10
	ld [hl-], a                                      ; $6b0c: $32
	jr nc, jr_01f_6aa1                               ; $6b0d: $30 $92

	db $10                                           ; $6b0f: $10
	ld c, b                                          ; $6b10: $48
	ld [$0020], sp                                   ; $6b11: $08 $20 $00
	add h                                            ; $6b14: $84
	add c                                            ; $6b15: $81

jr_01f_6b16:
	ld b, d                                          ; $6b16: $42
	ld c, b                                          ; $6b17: $48
	ld de, $8804                                     ; $6b18: $11 $04 $88
	ld a, e                                          ; $6b1b: $7b
	ld h, b                                          ; $6b1c: $60
	sbc l                                            ; $6b1d: $9d
	cp b                                             ; $6b1e: $b8

jr_01f_6b1f:
	add b                                            ; $6b1f: $80
	ld l, a                                          ; $6b20: $6f
	ld h, b                                          ; $6b21: $60
	sbc l                                            ; $6b22: $9d
	and l                                            ; $6b23: $a5
	add c                                            ; $6b24: $81
	ld l, a                                          ; $6b25: $6f
	cp $03                                           ; $6b26: $fe $03
	ld h, b                                          ; $6b28: $60
	ld e, e                                          ; $6b29: $5b
	ld l, b                                          ; $6b2a: $68
	ld a, a                                          ; $6b2b: $7f
	sub [hl]                                         ; $6b2c: $96
	ld a, e                                          ; $6b2d: $7b
	xor b                                            ; $6b2e: $a8
	ld a, a                                          ; $6b2f: $7f
	sub b                                            ; $6b30: $90
	sbc d                                            ; $6b31: $9a
	db $10                                           ; $6b32: $10
	add hl, bc                                       ; $6b33: $09
	add hl, hl                                       ; $6b34: $29
	ld bc, $6b21                                     ; $6b35: $01 $21 $6b
	ld [$0c7f], sp                                   ; $6b38: $08 $7f $0c
	rst SubAFromDE                                          ; $6b3b: $df
	ld [$299c], sp                                   ; $6b3c: $08 $9c $29
	nop                                              ; $6b3f: $00
	jr nz, jr_01f_6b1f                               ; $6b40: $20 $dd

	add b                                            ; $6b42: $80
	db $dd                                           ; $6b43: $dd
	ld [bc], a                                       ; $6b44: $02
	sbc b                                            ; $6b45: $98
	jr z, jr_01f_6b68                                ; $6b46: $28 $20

	adc b                                            ; $6b48: $88
	ld [bc], a                                       ; $6b49: $02
	and b                                            ; $6b4a: $a0
	ld [hl+], a                                      ; $6b4b: $22
	inc b                                            ; $6b4c: $04
	ld [hl], a                                       ; $6b4d: $77
	rst SubAFromHL                                          ; $6b4e: $d7
	ld [hl], e                                       ; $6b4f: $73
	ld d, h                                          ; $6b50: $54
	ld a, e                                          ; $6b51: $7b
	db $fc                                           ; $6b52: $fc
	sbc [hl]                                         ; $6b53: $9e
	and l                                            ; $6b54: $a5
	db $fd                                           ; $6b55: $fd
	sbc h                                            ; $6b56: $9c
	and l                                            ; $6b57: $a5
	inc h                                            ; $6b58: $24
	and l                                            ; $6b59: $a5
	ld l, a                                          ; $6b5a: $6f
	ld c, h                                          ; $6b5b: $4c
	ld a, e                                          ; $6b5c: $7b
	sub h                                            ; $6b5d: $94
	ld l, a                                          ; $6b5e: $6f
	and l                                            ; $6b5f: $a5
	ld [hl], a                                       ; $6b60: $77
	call c, $10dd                                    ; $6b61: $dc $dd $10
	ld a, e                                          ; $6b64: $7b
	xor d                                            ; $6b65: $aa
	sbc [hl]                                         ; $6b66: $9e
	ld [de], a                                       ; $6b67: $12

jr_01f_6b68:
	cp $9c                                           ; $6b68: $fe $9c
	jr nz, jr_01f_6b74                               ; $6b6a: $20 $08

	jr z, @+$7d                                      ; $6b6c: $28 $7b

	dec [hl]                                         ; $6b6e: $35
	sbc [hl]                                         ; $6b6f: $9e
	ld [$437b], sp                                   ; $6b70: $08 $7b $43
	ld sp, hl                                        ; $6b73: $f9

jr_01f_6b74:
	sub d                                            ; $6b74: $92
	ld [de], a                                       ; $6b75: $12
	jr nz, jr_01f_6b7a                               ; $6b76: $20 $02

	add b                                            ; $6b78: $80
	add b                                            ; $6b79: $80

jr_01f_6b7a:
	jr nz, jr_01f_6b84                               ; $6b7a: $20 $08

	add b                                            ; $6b7c: $80
	add b                                            ; $6b7d: $80
	inc b                                            ; $6b7e: $04
	dec b                                            ; $6b7f: $05
	nop                                              ; $6b80: $00
	db $10                                           ; $6b81: $10
	ld [hl], a                                       ; $6b82: $77
	db $fc                                           ; $6b83: $fc

jr_01f_6b84:
	db $fd                                           ; $6b84: $fd
	rst SubAFromDE                                          ; $6b85: $df
	jr z, jr_01f_6b1f                                ; $6b86: $28 $97

	nop                                              ; $6b88: $00
	add b                                            ; $6b89: $80
	jr z, jr_01f_6bb6                                ; $6b8a: $28 $2a

	nop                                              ; $6b8c: $00
	add b                                            ; $6b8d: $80
	ld [$7b0a], sp                                   ; $6b8e: $08 $0a $7b
	ld d, b                                          ; $6b91: $50
	ld [hl], a                                       ; $6b92: $77
	ld c, h                                          ; $6b93: $4c
	ld [hl], e                                       ; $6b94: $73
	xor d                                            ; $6b95: $aa
	ld [hl], a                                       ; $6b96: $77
	xor l                                            ; $6b97: $ad
	ld l, a                                          ; $6b98: $6f
	xor c                                            ; $6b99: $a9
	ld a, e                                          ; $6b9a: $7b
	pop af                                           ; $6b9b: $f1
	ld a, a                                          ; $6b9c: $7f
	sbc a                                            ; $6b9d: $9f
	ld l, a                                          ; $6b9e: $6f
	db $fc                                           ; $6b9f: $fc
	db $f4                                           ; $6ba0: $f4
	sbc l                                            ; $6ba1: $9d
	ld bc, $7b05                                     ; $6ba2: $01 $05 $7b
	and h                                            ; $6ba5: $a4
	ld a, a                                          ; $6ba6: $7f
	db $fc                                           ; $6ba7: $fc
	sbc [hl]                                         ; $6ba8: $9e
	jr z, jr_01f_6c26                                ; $6ba9: $28 $7b

	ld l, b                                          ; $6bab: $68
	sbc l                                            ; $6bac: $9d
	jr nz, jr_01f_6bc3                               ; $6bad: $20 $14

	ld a, e                                          ; $6baf: $7b
	or [hl]                                          ; $6bb0: $b6
	ld [hl], a                                       ; $6bb1: $77
	db $fc                                           ; $6bb2: $fc
	db $fd                                           ; $6bb3: $fd
	ld a, e                                          ; $6bb4: $7b
	cp b                                             ; $6bb5: $b8

jr_01f_6bb6:
	ld a, e                                          ; $6bb6: $7b
	db $fc                                           ; $6bb7: $fc
	sbc l                                            ; $6bb8: $9d
	ld bc, $7b20                                     ; $6bb9: $01 $20 $7b
	ldh [c], a                                       ; $6bbc: $e2
	ld a, e                                          ; $6bbd: $7b
	db $fc                                           ; $6bbe: $fc
	ld a, a                                          ; $6bbf: $7f
	ld l, l                                          ; $6bc0: $6d
	sbc [hl]                                         ; $6bc1: $9e
	ld b, b                                          ; $6bc2: $40

jr_01f_6bc3:
	ld a, e                                          ; $6bc3: $7b
	sub l                                            ; $6bc4: $95
	sbc l                                            ; $6bc5: $9d
	ld [bc], a                                       ; $6bc6: $02
	adc b                                            ; $6bc7: $88
	ld a, e                                          ; $6bc8: $7b
	ld l, e                                          ; $6bc9: $6b
	sbc [hl]                                         ; $6bca: $9e
	adc b                                            ; $6bcb: $88
	db $fd                                           ; $6bcc: $fd
	rst SubAFromDE                                          ; $6bcd: $df
	add b                                            ; $6bce: $80
	rst SubAFromDE                                          ; $6bcf: $df
	ld bc, $80df                                     ; $6bd0: $01 $df $80
	rst SubAFromDE                                          ; $6bd3: $df
	dec h                                            ; $6bd4: $25
	ld l, a                                          ; $6bd5: $6f
	ld [hl], $5b                                     ; $6bd6: $36 $5b
	and a                                            ; $6bd8: $a7
	ld [hl], e                                       ; $6bd9: $73
	inc l                                            ; $6bda: $2c
	halt                                             ; $6bdb: $76
	db $fc                                           ; $6bdc: $fc
	ld a, [hl]                                       ; $6bdd: $7e
	or $ff                                           ; $6bde: $f6 $ff
	sbc l                                            ; $6be0: $9d
	ld a, [bc]                                       ; $6be1: $0a
	ld [$e576], sp                                   ; $6be2: $08 $76 $e5
	rst AddAOntoHL                                          ; $6be5: $ef
	sbc e                                            ; $6be6: $9b
	add hl, bc                                       ; $6be7: $09
	ld [rRAMB], sp                                   ; $6be8: $08 $00 $40
	ld l, e                                          ; $6beb: $6b
	db $fc                                           ; $6bec: $fc
	ld a, a                                          ; $6bed: $7f
	sbc h                                            ; $6bee: $9c
	ld a, e                                          ; $6bef: $7b
	inc [hl]                                         ; $6bf0: $34
	ld l, a                                          ; $6bf1: $6f
	db $fc                                           ; $6bf2: $fc
	ld hl, sp+$73                                    ; $6bf3: $f8 $73
	cp h                                             ; $6bf5: $bc
	cp $7e                                           ; $6bf6: $fe $7e
	sub d                                            ; $6bf8: $92
	ld l, a                                          ; $6bf9: $6f
	db $fc                                           ; $6bfa: $fc
	ld d, e                                          ; $6bfb: $53
	jr c, @+$01                                      ; $6bfc: $38 $ff

	ld a, a                                          ; $6bfe: $7f
	ld a, h                                          ; $6bff: $7c
	sbc d                                            ; $6c00: $9a
	jr nz, jr_01f_6c13                               ; $6c01: $20 $10

	nop                                              ; $6c03: $00
	jr nc, jr_01f_6c16                               ; $6c04: $30 $10

	sbc $30                                          ; $6c06: $de $30
	ld a, a                                          ; $6c08: $7f
	db $fc                                           ; $6c09: $fc
	ld [hl], d                                       ; $6c0a: $72
	ret c                                            ; $6c0b: $d8

	ld [hl], a                                       ; $6c0c: $77
	cp $7b                                           ; $6c0d: $fe $7b
	or a                                             ; $6c0f: $b7
	ld a, e                                          ; $6c10: $7b
	ccf                                              ; $6c11: $3f
	ld a, [hl]                                       ; $6c12: $7e

jr_01f_6c13:
	ld sp, $4573                                     ; $6c13: $31 $73 $45

jr_01f_6c16:
	db $fd                                           ; $6c16: $fd
	ld l, e                                          ; $6c17: $6b
	db $f4                                           ; $6c18: $f4
	ld a, e                                          ; $6c19: $7b
	ldh a, [c]                                       ; $6c1a: $f2
	ld l, e                                          ; $6c1b: $6b
	or $6b                                           ; $6c1c: $f6 $6b
	jr z, jr_01f_6c77                                ; $6c1e: $28 $57

	ret nz                                           ; $6c20: $c0

	db $dd                                           ; $6c21: $dd
	jr nc, jr_01f_6c9b                               ; $6c22: $30 $77

	cp h                                             ; $6c24: $bc
	ld l, e                                          ; $6c25: $6b

jr_01f_6c26:
	cp [hl]                                          ; $6c26: $be
	halt                                             ; $6c27: $76
	ld a, $73                                        ; $6c28: $3e $73
	call nc, $f87b                                   ; $6c2a: $d4 $7b $f8
	ld e, e                                          ; $6c2d: $5b
	adc $67                                          ; $6c2e: $ce $67
	ld [$d87b], a                                    ; $6c30: $ea $7b $d8
	ld d, e                                          ; $6c33: $53
	cp b                                             ; $6c34: $b8
	ld l, a                                          ; $6c35: $6f
	di                                               ; $6c36: $f3
	ld a, l                                          ; $6c37: $7d
	ld a, [hl+]                                      ; $6c38: $2a
	ld d, e                                          ; $6c39: $53
	rst AddAOntoHL                                          ; $6c3a: $ef
	ldh a, [c]                                       ; $6c3b: $f2
	ld a, [hl]                                       ; $6c3c: $7e
	ld l, e                                          ; $6c3d: $6b
	ld a, a                                          ; $6c3e: $7f
	pop hl                                           ; $6c3f: $e1
	ld a, e                                          ; $6c40: $7b
	db $fc                                           ; $6c41: $fc
	db $f4                                           ; $6c42: $f4
	nop                                              ; $6c43: $00
	ld bc, $049b                                     ; $6c44: $01 $9b $04
	db $fc                                           ; $6c47: $fc
	db $f4                                           ; $6c48: $f4
	inc b                                            ; $6c49: $04
	cp $96                                           ; $6c4a: $fe $96
	ldh a, [rP1]                                     ; $6c4c: $f0 $00
	ld [bc], a                                       ; $6c4e: $02
	nop                                              ; $6c4f: $00
	nop                                              ; $6c50: $00
	ldh [$a0], a                                     ; $6c51: $e0 $a0
	and b                                            ; $6c53: $a0
	ld h, b                                          ; $6c54: $60
	ld a, e                                          ; $6c55: $7b
	pop af                                           ; $6c56: $f1
	sbc e                                            ; $6c57: $9b
	inc c                                            ; $6c58: $0c
	ldh a, [$f0]                                     ; $6c59: $f0 $f0
	nop                                              ; $6c5b: $00
	ld a, e                                          ; $6c5c: $7b
	pop af                                           ; $6c5d: $f1
	sbc c                                            ; $6c5e: $99
	ld a, [bc]                                       ; $6c5f: $0a
	ld [$2120], sp                                   ; $6c60: $08 $20 $21
	ldh [$e0], a                                     ; $6c63: $e0 $e0
	ld a, e                                          ; $6c65: $7b
	ldh [$9d], a                                     ; $6c66: $e0 $9d
	db $ec                                           ; $6c68: $ec
	db $10                                           ; $6c69: $10
	cp $7f                                           ; $6c6a: $fe $7f
	ld [$f07f], a                                    ; $6c6c: $ea $7f $f0
	ld a, e                                          ; $6c6f: $7b
	ldh [$8e], a                                     ; $6c70: $e0 $8e
	and b                                            ; $6c72: $a0
	db $fc                                           ; $6c73: $fc
	db $f4                                           ; $6c74: $f4
	inc c                                            ; $6c75: $0c
	inc b                                            ; $6c76: $04

jr_01f_6c77:
	db $10                                           ; $6c77: $10
	db $10                                           ; $6c78: $10
	ldh a, [$f0]                                     ; $6c79: $f0 $f0
	ld b, $04                                        ; $6c7b: $06 $04
	ld [$e00a], sp                                   ; $6c7d: $08 $0a $e0
	and b                                            ; $6c80: $a0
	ld h, b                                          ; $6c81: $60
	ld h, b                                          ; $6c82: $60
	ld [hl], a                                       ; $6c83: $77
	ldh [$9e], a                                     ; $6c84: $e0 $9e
	ldh [$de], a                                     ; $6c86: $e0 $de
	ldh a, [rPCM34]                                  ; $6c88: $f0 $77
	ldh [$9e], a                                     ; $6c8a: $e0 $9e
	ld h, b                                          ; $6c8c: $60
	sbc $20                                          ; $6c8d: $de $20
	ld a, e                                          ; $6c8f: $7b
	ret nz                                           ; $6c90: $c0

	sub d                                            ; $6c91: $92
	db $fc                                           ; $6c92: $fc
	ldh [$e0], a                                     ; $6c93: $e0 $e0
	nop                                              ; $6c95: $00
	nop                                              ; $6c96: $00
	ld b, $04                                        ; $6c97: $06 $04
	nop                                              ; $6c99: $00
	ld [bc], a                                       ; $6c9a: $02

jr_01f_6c9b:
	jr nz, jr_01f_6cbe                               ; $6c9b: $20 $21

	ldh [c], a                                       ; $6c9d: $e2
	and d                                            ; $6c9e: $a2
	ld a, e                                          ; $6c9f: $7b
	pop af                                           ; $6ca0: $f1
	sbc l                                            ; $6ca1: $9d
	db $f4                                           ; $6ca2: $f4
	nop                                              ; $6ca3: $00
	sbc $f0                                          ; $6ca4: $de $f0
	ld [hl], a                                       ; $6ca6: $77
	xor [hl]                                         ; $6ca7: $ae
	sub h                                            ; $6ca8: $94
	and d                                            ; $6ca9: $a2
	ld h, d                                          ; $6caa: $62
	ld [hl+], a                                      ; $6cab: $22
	inc hl                                           ; $6cac: $23
	inc b                                            ; $6cad: $04
	inc c                                            ; $6cae: $0c
	inc b                                            ; $6caf: $04
	db $fc                                           ; $6cb0: $fc
	nop                                              ; $6cb1: $00
	nop                                              ; $6cb2: $00
	db $10                                           ; $6cb3: $10
	ld a, e                                          ; $6cb4: $7b
	and d                                            ; $6cb5: $a2
	ld a, a                                          ; $6cb6: $7f
	or $de                                           ; $6cb7: $f6 $de
	ldh [c], a                                       ; $6cb9: $e2
	ld a, a                                          ; $6cba: $7f
	ldh [$9e], a                                     ; $6cbb: $e0 $9e
	db $ec                                           ; $6cbd: $ec

jr_01f_6cbe:
	ld a, e                                          ; $6cbe: $7b

jr_01f_6cbf:
	ldh [$7f], a                                     ; $6cbf: $e0 $7f
	ldh a, [$8a]                                     ; $6cc1: $f0 $8a
	db $10                                           ; $6cc3: $10
	ld a, [bc]                                       ; $6cc4: $0a
	ld [$0406], sp                                   ; $6cc5: $08 $06 $04
	and d                                            ; $6cc8: $a2
	and d                                            ; $6cc9: $a2
	ldh [c], a                                       ; $6cca: $e2
	and d                                            ; $6ccb: $a2
	inc c                                            ; $6ccc: $0c
	inc b                                            ; $6ccd: $04
	inc b                                            ; $6cce: $04
	db $fc                                           ; $6ccf: $fc
	ldh a, [$f0]                                     ; $6cd0: $f0 $f0
	ldh [$f0], a                                     ; $6cd2: $e0 $f0
	ld [$040a], sp                                   ; $6cd4: $08 $0a $04
	inc c                                            ; $6cd7: $0c
	sbc $62                                          ; $6cd8: $de $62
	sbc [hl]                                         ; $6cda: $9e
	ld [hl+], a                                      ; $6cdb: $22
	ld [hl], a                                       ; $6cdc: $77
	ldh [$7b], a                                     ; $6cdd: $e0 $7b
	ldh a, [$9e]                                     ; $6cdf: $f0 $9e
	ldh [rPCM34], a                                  ; $6ce1: $e0 $77
	ldh [$de], a                                     ; $6ce3: $e0 $de
	ld [hl+], a                                      ; $6ce5: $22
	ld [hl], a                                       ; $6ce6: $77
	ret nz                                           ; $6ce7: $c0

	sub [hl]                                         ; $6ce8: $96
	inc c                                            ; $6ce9: $0c
	ld [$f808], sp                                   ; $6cea: $08 $08 $f8
	ld hl, sp+$16                                    ; $6ced: $f8 $16
	inc d                                            ; $6cef: $14
	db $10                                           ; $6cf0: $10
	ld c, $dd                                        ; $6cf1: $0e $dd
	ld l, b                                          ; $6cf3: $68
	ld a, e                                          ; $6cf4: $7b
	add c                                            ; $6cf5: $81
	sbc [hl]                                         ; $6cf6: $9e
	db $fc                                           ; $6cf7: $fc
	sbc $08                                          ; $6cf8: $de $08
	sbc d                                            ; $6cfa: $9a
	ld hl, sp+$18                                    ; $6cfb: $f8 $18
	ld d, $14                                        ; $6cfd: $16 $14
	ld [de], a                                       ; $6cff: $12
	db $dd                                           ; $6d00: $dd
	jr z, jr_01f_6d82                                ; $6d01: $28 $7f

	pop af                                           ; $6d03: $f1
	ld a, a                                          ; $6d04: $7f
	ldh [$df], a                                     ; $6d05: $e0 $df
	ld hl, sp-$22                                    ; $6d07: $f8 $de
	db $10                                           ; $6d09: $10
	sub [hl]                                         ; $6d0a: $96
	ld c, $22                                        ; $6d0b: $0e $22
	jr nz, jr_01f_6d37                               ; $6d0d: $20 $28

	add hl, hl                                       ; $6d0f: $29
	ld l, b                                          ; $6d10: $68
	ld l, b                                          ; $6d11: $68
	inc b                                            ; $6d12: $04
	inc c                                            ; $6d13: $0c
	ld l, a                                          ; $6d14: $6f
	and b                                            ; $6d15: $a0
	sub a                                            ; $6d16: $97
	inc e                                            ; $6d17: $1c
	ld a, [de]                                       ; $6d18: $1a
	inc h                                            ; $6d19: $24
	ld [hl+], a                                      ; $6d1a: $22
	ld l, b                                          ; $6d1b: $68
	ld l, b                                          ; $6d1c: $68
	jr z, jr_01f_6d47                                ; $6d1d: $28 $28

	ld a, e                                          ; $6d1f: $7b
	or c                                             ; $6d20: $b1
	ld [hl], e                                       ; $6d21: $73
	jr nc, jr_01f_6cbf                               ; $6d22: $30 $9b

	jr nz, jr_01f_6d44                               ; $6d24: $20 $1e

	inc e                                            ; $6d26: $1c
	ld a, [de]                                       ; $6d27: $1a
	sbc $28                                          ; $6d28: $de $28
	sbc [hl]                                         ; $6d2a: $9e
	add hl, hl                                       ; $6d2b: $29
	db $dd                                           ; $6d2c: $dd
	db $fd                                           ; $6d2d: $fd
	ld a, a                                          ; $6d2e: $7f
	ldh a, [$7f]                                     ; $6d2f: $f0 $7f
	cp $94                                           ; $6d31: $fe $94
	jr z, @+$28                                      ; $6d33: $28 $26

	inc l                                            ; $6d35: $2c
	ld a, [hl+]                                      ; $6d36: $2a

jr_01f_6d37:
	ld a, [hl+]                                      ; $6d37: $2a
	dec hl                                           ; $6d38: $2b
	ld a, [hl+]                                      ; $6d39: $2a
	dec hl                                           ; $6d3a: $2b
	db $fc                                           ; $6d3b: $fc
	ld hl, sp+$2e                                    ; $6d3c: $f8 $2e
	ld a, e                                          ; $6d3e: $7b
	db $fc                                           ; $6d3f: $fc
	sbc l                                            ; $6d40: $9d
	jr nc, jr_01f_6d6e                               ; $6d41: $30 $2b

	dec d                                            ; $6d43: $15

jr_01f_6d44:
	nop                                              ; $6d44: $00
	rst $38                                          ; $6d45: $ff
	sbc [hl]                                         ; $6d46: $9e

jr_01f_6d47:
	jr @+$15                                         ; $6d47: $18 $13

	cp $0f                                           ; $6d49: $fe $0f
	ldh [$fd], a                                     ; $6d4b: $e0 $fd
	sbc l                                            ; $6d4d: $9d
	db $10                                           ; $6d4e: $10
	ld [$fe03], sp                                   ; $6d4f: $08 $03 $fe
	dec hl                                           ; $6d52: $2b
	cp $6f                                           ; $6d53: $fe $6f
	cp a                                             ; $6d55: $bf
	rrca                                             ; $6d56: $0f
	ldh [$ae], a                                     ; $6d57: $e0 $ae
	ld l, l                                          ; $6d59: $6d
	call c, $0a6d                                    ; $6d5a: $dc $6d $0a
	ld l, [hl]                                       ; $6d5d: $6e
	ld b, c                                          ; $6d5e: $41
	ld l, [hl]                                       ; $6d5f: $6e
	ld l, a                                          ; $6d60: $6f
	ld l, [hl]                                       ; $6d61: $6e
	adc e                                            ; $6d62: $8b
	ld l, [hl]                                       ; $6d63: $6e
	and a                                            ; $6d64: $a7
	ld l, [hl]                                       ; $6d65: $6e
	rst GetHLinHL                                          ; $6d66: $cf
	ld l, [hl]                                       ; $6d67: $6e
	db $eb                                           ; $6d68: $eb
	ld l, [hl]                                       ; $6d69: $6e
	ld [hl], e                                       ; $6d6a: $73
	ld l, a                                          ; $6d6b: $6f
	ret z                                            ; $6d6c: $c8

	ld l, a                                          ; $6d6d: $6f

jr_01f_6d6e:
	ld b, a                                          ; $6d6e: $47
	ld [hl], b                                       ; $6d6f: $70
	and b                                            ; $6d70: $a0
	ld l, a                                          ; $6d71: $6f
	ld [hl], h                                       ; $6d72: $74
	ld [hl], b                                       ; $6d73: $70
	and d                                            ; $6d74: $a2
	ld [hl], b                                       ; $6d75: $70
	add hl, bc                                       ; $6d76: $09
	ld [hl], c                                       ; $6d77: $71
	ld [hl], b                                       ; $6d78: $70
	ld [hl], c                                       ; $6d79: $71
	rst SubAFromHL                                          ; $6d7a: $d7
	ld [hl], c                                       ; $6d7b: $71
	ld c, $72                                        ; $6d7c: $0e $72
	push de                                          ; $6d7e: $d5
	ld [hl], b                                       ; $6d7f: $70
	inc a                                            ; $6d80: $3c
	ld [hl], c                                       ; $6d81: $71

jr_01f_6d82:
	and e                                            ; $6d82: $a3
	ld [hl], c                                       ; $6d83: $71
	ldh a, [c]                                       ; $6d84: $f2
	ld [hl], c                                       ; $6d85: $71
	ld b, c                                          ; $6d86: $41
	ld [hl], d                                       ; $6d87: $72
	ld [hl], l                                       ; $6d88: $75
	ld [hl], d                                       ; $6d89: $72
	adc l                                            ; $6d8a: $8d
	ld [hl], d                                       ; $6d8b: $72
	xor l                                            ; $6d8c: $ad
	ld [hl], d                                       ; $6d8d: $72
	cp e                                             ; $6d8e: $bb
	ld [hl], d                                       ; $6d8f: $72
	ret                                              ; $6d90: $c9


	ld [hl], d                                       ; $6d91: $72
	ld a, h                                          ; $6d92: $7c
	ld [hl], d                                       ; $6d93: $72
	and b                                            ; $6d94: $a0
	ld [hl], d                                       ; $6d95: $72
	or h                                             ; $6d96: $b4
	ld [hl], d                                       ; $6d97: $72
	jp nz, $d072                                     ; $6d98: $c2 $72 $d0

	ld [hl], d                                       ; $6d9b: $72
	add e                                            ; $6d9c: $83
	ld [hl], d                                       ; $6d9d: $72
	rst SubAFromHL                                          ; $6d9e: $d7
	ld [hl], d                                       ; $6d9f: $72
	sbc $72                                          ; $6da0: $de $72
	di                                               ; $6da2: $f3
	ld [hl], d                                       ; $6da3: $72
	ld a, [$0f72]                                    ; $6da4: $fa $72 $0f
	ld [hl], e                                       ; $6da7: $73
	ld sp, $3e73                                     ; $6da8: $31 $73 $3e
	ld [hl], e                                       ; $6dab: $73
	inc h                                            ; $6dac: $24
	ld [hl], e                                       ; $6dad: $73
	ld c, $93                                        ; $6dae: $0e $93
	inc bc                                           ; $6db0: $03
	ld c, $c3                                        ; $6db1: $0e $c3
	inc bc                                           ; $6db3: $03
	inc a                                            ; $6db4: $3c
	sub e                                            ; $6db5: $93
	inc bc                                           ; $6db6: $03
	inc a                                            ; $6db7: $3c
	di                                               ; $6db8: $f3
	inc bc                                           ; $6db9: $03
	inc a                                            ; $6dba: $3c
	dec sp                                           ; $6dbb: $3b
	inc b                                            ; $6dbc: $04
	dec d                                            ; $6dbd: $15
	add e                                            ; $6dbe: $83
	inc b                                            ; $6dbf: $04
	dec d                                            ; $6dc0: $15
	or e                                             ; $6dc1: $b3
	inc b                                            ; $6dc2: $04
	dec d                                            ; $6dc3: $15
	add e                                            ; $6dc4: $83
	inc b                                            ; $6dc5: $04
	dec d                                            ; $6dc6: $15
	or e                                             ; $6dc7: $b3
	inc b                                            ; $6dc8: $04
	dec d                                            ; $6dc9: $15
	add e                                            ; $6dca: $83
	inc b                                            ; $6dcb: $04
	dec d                                            ; $6dcc: $15
	or e                                             ; $6dcd: $b3
	inc b                                            ; $6dce: $04
	inc a                                            ; $6dcf: $3c
	db $e3                                           ; $6dd0: $e3
	inc b                                            ; $6dd1: $04
	inc a                                            ; $6dd2: $3c
	rra                                              ; $6dd3: $1f
	dec b                                            ; $6dd4: $05
	or h                                             ; $6dd5: $b4
	ld l, e                                          ; $6dd6: $6b
	dec b                                            ; $6dd7: $05
	nop                                              ; $6dd8: $00
	ld l, e                                          ; $6dd9: $6b
	dec b                                            ; $6dda: $05
	rst $38                                          ; $6ddb: $ff
	ld c, $93                                        ; $6ddc: $0e $93
	inc bc                                           ; $6dde: $03
	ld c, $c3                                        ; $6ddf: $0e $c3
	inc bc                                           ; $6de1: $03
	inc a                                            ; $6de2: $3c
	sub e                                            ; $6de3: $93
	inc bc                                           ; $6de4: $03
	inc a                                            ; $6de5: $3c
	di                                               ; $6de6: $f3
	inc bc                                           ; $6de7: $03
	inc a                                            ; $6de8: $3c
	dec sp                                           ; $6de9: $3b
	inc b                                            ; $6dea: $04
	dec d                                            ; $6deb: $15
	add e                                            ; $6dec: $83
	inc b                                            ; $6ded: $04
	dec d                                            ; $6dee: $15
	or e                                             ; $6def: $b3
	inc b                                            ; $6df0: $04
	dec d                                            ; $6df1: $15
	add e                                            ; $6df2: $83
	inc b                                            ; $6df3: $04
	dec d                                            ; $6df4: $15
	or e                                             ; $6df5: $b3
	inc b                                            ; $6df6: $04
	dec d                                            ; $6df7: $15
	add e                                            ; $6df8: $83
	inc b                                            ; $6df9: $04
	dec d                                            ; $6dfa: $15
	or e                                             ; $6dfb: $b3
	inc b                                            ; $6dfc: $04
	inc a                                            ; $6dfd: $3c
	db $e3                                           ; $6dfe: $e3
	inc b                                            ; $6dff: $04
	inc a                                            ; $6e00: $3c
	inc hl                                           ; $6e01: $23
	dec b                                            ; $6e02: $05
	or h                                             ; $6e03: $b4
	ld [hl], e                                       ; $6e04: $73
	dec b                                            ; $6e05: $05
	nop                                              ; $6e06: $00
	ld [hl], e                                       ; $6e07: $73
	dec b                                            ; $6e08: $05
	rst $38                                          ; $6e09: $ff
	rrca                                             ; $6e0a: $0f
	sub e                                            ; $6e0b: $93
	inc bc                                           ; $6e0c: $03
	rrca                                             ; $6e0d: $0f
	jp $0f03                                         ; $6e0e: $c3 $03 $0f


	sub e                                            ; $6e11: $93
	inc bc                                           ; $6e12: $03
	rrca                                             ; $6e13: $0f
	jp $0f03                                         ; $6e14: $c3 $03 $0f


	sub e                                            ; $6e17: $93
	inc bc                                           ; $6e18: $03
	rrca                                             ; $6e19: $0f
	jp $3c03                                         ; $6e1a: $c3 $03 $3c


	di                                               ; $6e1d: $f3
	inc bc                                           ; $6e1e: $03
	inc a                                            ; $6e1f: $3c
	dec sp                                           ; $6e20: $3b
	inc b                                            ; $6e21: $04
	dec d                                            ; $6e22: $15
	add e                                            ; $6e23: $83
	inc b                                            ; $6e24: $04
	dec d                                            ; $6e25: $15
	or e                                             ; $6e26: $b3
	inc b                                            ; $6e27: $04
	dec d                                            ; $6e28: $15
	add e                                            ; $6e29: $83
	inc b                                            ; $6e2a: $04
	dec d                                            ; $6e2b: $15
	or e                                             ; $6e2c: $b3
	inc b                                            ; $6e2d: $04
	dec d                                            ; $6e2e: $15
	add e                                            ; $6e2f: $83
	inc b                                            ; $6e30: $04
	dec d                                            ; $6e31: $15
	or e                                             ; $6e32: $b3
	inc b                                            ; $6e33: $04
	inc a                                            ; $6e34: $3c
	db $e3                                           ; $6e35: $e3
	inc b                                            ; $6e36: $04
	inc a                                            ; $6e37: $3c
	rra                                              ; $6e38: $1f
	dec b                                            ; $6e39: $05
	or h                                             ; $6e3a: $b4
	ld l, e                                          ; $6e3b: $6b
	dec b                                            ; $6e3c: $05
	nop                                              ; $6e3d: $00
	ld l, e                                          ; $6e3e: $6b
	dec b                                            ; $6e3f: $05
	rst $38                                          ; $6e40: $ff
	ld c, $93                                        ; $6e41: $0e $93
	inc bc                                           ; $6e43: $03
	ld c, $c3                                        ; $6e44: $0e $c3
	inc bc                                           ; $6e46: $03
	inc a                                            ; $6e47: $3c
	sub e                                            ; $6e48: $93
	inc bc                                           ; $6e49: $03
	inc a                                            ; $6e4a: $3c
	di                                               ; $6e4b: $f3
	inc bc                                           ; $6e4c: $03
	inc a                                            ; $6e4d: $3c
	dec sp                                           ; $6e4e: $3b
	inc b                                            ; $6e4f: $04
	dec d                                            ; $6e50: $15
	add e                                            ; $6e51: $83
	inc b                                            ; $6e52: $04
	dec d                                            ; $6e53: $15
	or e                                             ; $6e54: $b3
	inc b                                            ; $6e55: $04
	dec d                                            ; $6e56: $15
	add e                                            ; $6e57: $83
	inc b                                            ; $6e58: $04
	dec d                                            ; $6e59: $15
	or e                                             ; $6e5a: $b3
	inc b                                            ; $6e5b: $04
	dec d                                            ; $6e5c: $15
	add e                                            ; $6e5d: $83
	inc b                                            ; $6e5e: $04
	dec d                                            ; $6e5f: $15
	or e                                             ; $6e60: $b3
	inc b                                            ; $6e61: $04
	inc a                                            ; $6e62: $3c
	db $e3                                           ; $6e63: $e3
	inc b                                            ; $6e64: $04
	inc a                                            ; $6e65: $3c
	rra                                              ; $6e66: $1f
	dec b                                            ; $6e67: $05
	or h                                             ; $6e68: $b4
	ld l, e                                          ; $6e69: $6b
	dec b                                            ; $6e6a: $05
	nop                                              ; $6e6b: $00
	ld l, e                                          ; $6e6c: $6b
	dec b                                            ; $6e6d: $05
	rst $38                                          ; $6e6e: $ff
	ld de, $0393                                     ; $6e6f: $11 $93 $03
	ld de, $03a3                                     ; $6e72: $11 $a3 $03
	rla                                              ; $6e75: $17
	or e                                             ; $6e76: $b3
	inc bc                                           ; $6e77: $03
	dec bc                                           ; $6e78: $0b
	jp $1503                                         ; $6e79: $c3 $03 $15


	db $d3                                           ; $6e7c: $d3
	inc bc                                           ; $6e7d: $03
	dec d                                            ; $6e7e: $15
	rst SubAFromDE                                          ; $6e7f: $df
	inc bc                                           ; $6e80: $03
	dec d                                            ; $6e81: $15
	rst AddAOntoHL                                          ; $6e82: $ef
	inc bc                                           ; $6e83: $03
	jr nc, @+$01                                     ; $6e84: $30 $ff

	inc bc                                           ; $6e86: $03
	nop                                              ; $6e87: $00
	rst $38                                          ; $6e88: $ff
	inc bc                                           ; $6e89: $03
	rst $38                                          ; $6e8a: $ff
	ld de, $0393                                     ; $6e8b: $11 $93 $03
	ld de, $03a7                                     ; $6e8e: $11 $a7 $03
	rla                                              ; $6e91: $17
	cp e                                             ; $6e92: $bb
	inc bc                                           ; $6e93: $03
	dec bc                                           ; $6e94: $0b
	rlc e                                            ; $6e95: $cb $03
	dec d                                            ; $6e97: $15
	db $db                                           ; $6e98: $db
	inc bc                                           ; $6e99: $03
	dec d                                            ; $6e9a: $15
	db $eb                                           ; $6e9b: $eb
	inc bc                                           ; $6e9c: $03
	dec d                                            ; $6e9d: $15
	ei                                               ; $6e9e: $fb
	inc bc                                           ; $6e9f: $03
	jr nc, jr_01f_6ead                               ; $6ea0: $30 $0b

	inc b                                            ; $6ea2: $04
	nop                                              ; $6ea3: $00
	dec bc                                           ; $6ea4: $0b
	inc b                                            ; $6ea5: $04
	rst $38                                          ; $6ea6: $ff
	ld c, $93                                        ; $6ea7: $0e $93
	inc bc                                           ; $6ea9: $03
	ld c, $a3                                        ; $6eaa: $0e $a3
	inc bc                                           ; $6eac: $03

jr_01f_6ead:
	ld c, $93                                        ; $6ead: $0e $93
	inc bc                                           ; $6eaf: $03
	ld c, $a3                                        ; $6eb0: $0e $a3
	inc bc                                           ; $6eb2: $03
	ld c, $93                                        ; $6eb3: $0e $93
	inc bc                                           ; $6eb5: $03
	ld c, $a3                                        ; $6eb6: $0e $a3
	inc bc                                           ; $6eb8: $03
	rla                                              ; $6eb9: $17
	or e                                             ; $6eba: $b3
	inc bc                                           ; $6ebb: $03
	dec bc                                           ; $6ebc: $0b
	jp $1503                                         ; $6ebd: $c3 $03 $15


	db $d3                                           ; $6ec0: $d3
	inc bc                                           ; $6ec1: $03
	dec d                                            ; $6ec2: $15
	db $e3                                           ; $6ec3: $e3
	inc bc                                           ; $6ec4: $03
	dec d                                            ; $6ec5: $15
	di                                               ; $6ec6: $f3
	inc bc                                           ; $6ec7: $03
	jr nc, jr_01f_6ecd                               ; $6ec8: $30 $03

	inc b                                            ; $6eca: $04
	nop                                              ; $6ecb: $00
	inc bc                                           ; $6ecc: $03

jr_01f_6ecd:
	inc b                                            ; $6ecd: $04
	rst $38                                          ; $6ece: $ff
	ld de, $0393                                     ; $6ecf: $11 $93 $03
	ld de, $03a3                                     ; $6ed2: $11 $a3 $03
	rla                                              ; $6ed5: $17
	or e                                             ; $6ed6: $b3
	inc bc                                           ; $6ed7: $03
	dec bc                                           ; $6ed8: $0b
	jp $1503                                         ; $6ed9: $c3 $03 $15


	db $d3                                           ; $6edc: $d3
	inc bc                                           ; $6edd: $03
	dec d                                            ; $6ede: $15
	rst SubAFromDE                                          ; $6edf: $df
	inc bc                                           ; $6ee0: $03
	dec d                                            ; $6ee1: $15
	rst AddAOntoHL                                          ; $6ee2: $ef
	inc bc                                           ; $6ee3: $03
	jr nc, @+$01                                     ; $6ee4: $30 $ff

	inc bc                                           ; $6ee6: $03
	nop                                              ; $6ee7: $00
	rst $38                                          ; $6ee8: $ff
	inc bc                                           ; $6ee9: $03
	rst $38                                          ; $6eea: $ff
	dec b                                            ; $6eeb: $05
	sub e                                            ; $6eec: $93
	inc bc                                           ; $6eed: $03
	dec b                                            ; $6eee: $05
	sbc e                                            ; $6eef: $9b
	inc bc                                           ; $6ef0: $03
	dec b                                            ; $6ef1: $05
	or e                                             ; $6ef2: $b3
	inc bc                                           ; $6ef3: $03
	dec b                                            ; $6ef4: $05
	rlc e                                            ; $6ef5: $cb $03
	dec b                                            ; $6ef7: $05
	db $e3                                           ; $6ef8: $e3
	inc bc                                           ; $6ef9: $03
	dec b                                            ; $6efa: $05
	ei                                               ; $6efb: $fb
	inc bc                                           ; $6efc: $03
	dec b                                            ; $6efd: $05
	inc de                                           ; $6efe: $13
	inc b                                            ; $6eff: $04
	dec b                                            ; $6f00: $05
	dec hl                                           ; $6f01: $2b
	inc b                                            ; $6f02: $04
	dec b                                            ; $6f03: $05
	dec sp                                           ; $6f04: $3b
	inc b                                            ; $6f05: $04
	dec b                                            ; $6f06: $05
	ld c, e                                          ; $6f07: $4b
	inc b                                            ; $6f08: $04
	dec b                                            ; $6f09: $05
	sub e                                            ; $6f0a: $93
	inc bc                                           ; $6f0b: $03
	dec b                                            ; $6f0c: $05
	sbc e                                            ; $6f0d: $9b
	inc bc                                           ; $6f0e: $03
	dec b                                            ; $6f0f: $05
	or e                                             ; $6f10: $b3
	inc bc                                           ; $6f11: $03
	dec b                                            ; $6f12: $05
	rlc e                                            ; $6f13: $cb $03
	dec b                                            ; $6f15: $05
	db $e3                                           ; $6f16: $e3
	inc bc                                           ; $6f17: $03
	dec b                                            ; $6f18: $05
	ei                                               ; $6f19: $fb
	inc bc                                           ; $6f1a: $03
	dec b                                            ; $6f1b: $05
	inc de                                           ; $6f1c: $13
	inc b                                            ; $6f1d: $04
	dec b                                            ; $6f1e: $05
	dec hl                                           ; $6f1f: $2b
	inc b                                            ; $6f20: $04
	dec b                                            ; $6f21: $05
	dec sp                                           ; $6f22: $3b
	inc b                                            ; $6f23: $04
	dec b                                            ; $6f24: $05
	ld c, e                                          ; $6f25: $4b
	inc b                                            ; $6f26: $04
	dec b                                            ; $6f27: $05
	ld e, e                                          ; $6f28: $5b
	inc b                                            ; $6f29: $04
	dec b                                            ; $6f2a: $05
	ld a, a                                          ; $6f2b: $7f
	inc b                                            ; $6f2c: $04
	dec b                                            ; $6f2d: $05
	and e                                            ; $6f2e: $a3
	inc b                                            ; $6f2f: $04
	dec b                                            ; $6f30: $05
	rlc h                                            ; $6f31: $cb $04
	dec b                                            ; $6f33: $05
	rst AddAOntoHL                                          ; $6f34: $ef
	inc b                                            ; $6f35: $04
	dec b                                            ; $6f36: $05
	ld e, e                                          ; $6f37: $5b
	inc b                                            ; $6f38: $04
	dec b                                            ; $6f39: $05
	ld a, a                                          ; $6f3a: $7f
	inc b                                            ; $6f3b: $04
	dec b                                            ; $6f3c: $05
	and e                                            ; $6f3d: $a3
	inc b                                            ; $6f3e: $04
	dec b                                            ; $6f3f: $05
	rlc h                                            ; $6f40: $cb $04
	dec b                                            ; $6f42: $05
	rst AddAOntoHL                                          ; $6f43: $ef
	inc b                                            ; $6f44: $04
	ld a, [bc]                                       ; $6f45: $0a
	rst AddAOntoHL                                          ; $6f46: $ef
	inc b                                            ; $6f47: $04
	ld a, [bc]                                       ; $6f48: $0a
	inc de                                           ; $6f49: $13
	dec b                                            ; $6f4a: $05
	dec b                                            ; $6f4b: $05
	scf                                              ; $6f4c: $37
	dec b                                            ; $6f4d: $05
	dec b                                            ; $6f4e: $05
	ld b, a                                          ; $6f4f: $47
	dec b                                            ; $6f50: $05
	dec b                                            ; $6f51: $05
	ld d, a                                          ; $6f52: $57
	dec b                                            ; $6f53: $05
	dec b                                            ; $6f54: $05
	ld h, a                                          ; $6f55: $67
	dec b                                            ; $6f56: $05
	dec b                                            ; $6f57: $05
	ld [hl], a                                       ; $6f58: $77
	dec b                                            ; $6f59: $05
	dec b                                            ; $6f5a: $05
	add a                                            ; $6f5b: $87
	dec b                                            ; $6f5c: $05
	dec b                                            ; $6f5d: $05
	sub a                                            ; $6f5e: $97
	dec b                                            ; $6f5f: $05
	dec b                                            ; $6f60: $05
	and a                                            ; $6f61: $a7
	dec b                                            ; $6f62: $05
	dec b                                            ; $6f63: $05
	sub a                                            ; $6f64: $97
	dec b                                            ; $6f65: $05
	dec b                                            ; $6f66: $05
	and a                                            ; $6f67: $a7
	dec b                                            ; $6f68: $05
	dec b                                            ; $6f69: $05
	sub a                                            ; $6f6a: $97
	dec b                                            ; $6f6b: $05
	dec b                                            ; $6f6c: $05
	and a                                            ; $6f6d: $a7
	dec b                                            ; $6f6e: $05
	nop                                              ; $6f6f: $00
	and a                                            ; $6f70: $a7
	dec b                                            ; $6f71: $05
	rst $38                                          ; $6f72: $ff
	dec b                                            ; $6f73: $05
	sub e                                            ; $6f74: $93
	inc bc                                           ; $6f75: $03
	dec b                                            ; $6f76: $05
	rst FarCall                                          ; $6f77: $f7
	inc bc                                           ; $6f78: $03
	dec b                                            ; $6f79: $05
	ld e, e                                          ; $6f7a: $5b
	inc b                                            ; $6f7b: $04
	dec b                                            ; $6f7c: $05
	sub e                                            ; $6f7d: $93
	inc bc                                           ; $6f7e: $03
	dec b                                            ; $6f7f: $05
	rst FarCall                                          ; $6f80: $f7
	inc bc                                           ; $6f81: $03
	dec b                                            ; $6f82: $05
	ld e, e                                          ; $6f83: $5b
	inc b                                            ; $6f84: $04
	dec b                                            ; $6f85: $05
	sub e                                            ; $6f86: $93
	inc bc                                           ; $6f87: $03
	dec b                                            ; $6f88: $05
	rst FarCall                                          ; $6f89: $f7
	inc bc                                           ; $6f8a: $03
	dec b                                            ; $6f8b: $05
	ld e, e                                          ; $6f8c: $5b
	inc b                                            ; $6f8d: $04
	dec b                                            ; $6f8e: $05
	sub e                                            ; $6f8f: $93
	inc bc                                           ; $6f90: $03
	dec b                                            ; $6f91: $05
	rst FarCall                                          ; $6f92: $f7
	inc bc                                           ; $6f93: $03
	dec b                                            ; $6f94: $05
	ld e, e                                          ; $6f95: $5b
	inc b                                            ; $6f96: $04
	dec b                                            ; $6f97: $05
	sub e                                            ; $6f98: $93
	inc bc                                           ; $6f99: $03
	dec b                                            ; $6f9a: $05
	rst FarCall                                          ; $6f9b: $f7
	inc bc                                           ; $6f9c: $03
	dec b                                            ; $6f9d: $05
	ld e, e                                          ; $6f9e: $5b
	inc b                                            ; $6f9f: $04
	dec b                                            ; $6fa0: $05
	cp a                                             ; $6fa1: $bf
	inc b                                            ; $6fa2: $04
	dec b                                            ; $6fa3: $05
	db $db                                           ; $6fa4: $db
	inc b                                            ; $6fa5: $04
	dec b                                            ; $6fa6: $05
	cp a                                             ; $6fa7: $bf
	inc b                                            ; $6fa8: $04
	dec b                                            ; $6fa9: $05
	db $db                                           ; $6faa: $db
	inc b                                            ; $6fab: $04
	dec b                                            ; $6fac: $05
	cp a                                             ; $6fad: $bf
	inc b                                            ; $6fae: $04
	dec b                                            ; $6faf: $05
	db $db                                           ; $6fb0: $db
	inc b                                            ; $6fb1: $04
	dec b                                            ; $6fb2: $05
	cp a                                             ; $6fb3: $bf
	inc b                                            ; $6fb4: $04
	dec b                                            ; $6fb5: $05
	db $db                                           ; $6fb6: $db
	inc b                                            ; $6fb7: $04
	dec b                                            ; $6fb8: $05
	cp a                                             ; $6fb9: $bf
	inc b                                            ; $6fba: $04
	dec b                                            ; $6fbb: $05
	db $db                                           ; $6fbc: $db
	inc b                                            ; $6fbd: $04
	dec b                                            ; $6fbe: $05
	cp a                                             ; $6fbf: $bf
	inc b                                            ; $6fc0: $04
	dec b                                            ; $6fc1: $05
	db $db                                           ; $6fc2: $db
	inc b                                            ; $6fc3: $04
	nop                                              ; $6fc4: $00
	db $db                                           ; $6fc5: $db
	inc b                                            ; $6fc6: $04
	rst $38                                          ; $6fc7: $ff
	dec b                                            ; $6fc8: $05
	sub e                                            ; $6fc9: $93
	inc bc                                           ; $6fca: $03
	dec b                                            ; $6fcb: $05
	sbc e                                            ; $6fcc: $9b
	inc bc                                           ; $6fcd: $03
	dec b                                            ; $6fce: $05
	or e                                             ; $6fcf: $b3
	inc bc                                           ; $6fd0: $03
	dec b                                            ; $6fd1: $05
	rlc e                                            ; $6fd2: $cb $03
	dec b                                            ; $6fd4: $05
	db $e3                                           ; $6fd5: $e3
	inc bc                                           ; $6fd6: $03
	dec b                                            ; $6fd7: $05
	ei                                               ; $6fd8: $fb
	inc bc                                           ; $6fd9: $03
	dec b                                            ; $6fda: $05
	inc de                                           ; $6fdb: $13
	inc b                                            ; $6fdc: $04
	dec b                                            ; $6fdd: $05
	dec hl                                           ; $6fde: $2b
	inc b                                            ; $6fdf: $04
	dec b                                            ; $6fe0: $05
	dec sp                                           ; $6fe1: $3b
	inc b                                            ; $6fe2: $04
	dec b                                            ; $6fe3: $05
	ld c, e                                          ; $6fe4: $4b
	inc b                                            ; $6fe5: $04
	dec b                                            ; $6fe6: $05
	sub e                                            ; $6fe7: $93
	inc bc                                           ; $6fe8: $03
	dec b                                            ; $6fe9: $05
	sbc e                                            ; $6fea: $9b
	inc bc                                           ; $6feb: $03
	dec b                                            ; $6fec: $05
	or e                                             ; $6fed: $b3
	inc bc                                           ; $6fee: $03
	dec b                                            ; $6fef: $05
	rlc e                                            ; $6ff0: $cb $03
	dec b                                            ; $6ff2: $05
	db $e3                                           ; $6ff3: $e3
	inc bc                                           ; $6ff4: $03
	dec b                                            ; $6ff5: $05
	ei                                               ; $6ff6: $fb
	inc bc                                           ; $6ff7: $03
	dec b                                            ; $6ff8: $05
	inc de                                           ; $6ff9: $13
	inc b                                            ; $6ffa: $04
	dec b                                            ; $6ffb: $05
	dec hl                                           ; $6ffc: $2b
	inc b                                            ; $6ffd: $04
	dec b                                            ; $6ffe: $05
	dec sp                                           ; $6fff: $3b
	inc b                                            ; $7000: $04
	dec b                                            ; $7001: $05
	ld c, e                                          ; $7002: $4b
	inc b                                            ; $7003: $04
	dec b                                            ; $7004: $05
	ld e, e                                          ; $7005: $5b
	inc b                                            ; $7006: $04
	dec b                                            ; $7007: $05
	ld a, a                                          ; $7008: $7f
	inc b                                            ; $7009: $04
	dec b                                            ; $700a: $05
	and e                                            ; $700b: $a3
	inc b                                            ; $700c: $04
	dec b                                            ; $700d: $05
	rlc h                                            ; $700e: $cb $04
	dec b                                            ; $7010: $05
	rst AddAOntoHL                                          ; $7011: $ef
	inc b                                            ; $7012: $04
	dec b                                            ; $7013: $05
	ld e, e                                          ; $7014: $5b
	inc b                                            ; $7015: $04
	dec b                                            ; $7016: $05
	ld a, a                                          ; $7017: $7f
	inc b                                            ; $7018: $04
	dec b                                            ; $7019: $05
	and e                                            ; $701a: $a3
	inc b                                            ; $701b: $04
	dec b                                            ; $701c: $05
	rlc h                                            ; $701d: $cb $04
	dec b                                            ; $701f: $05
	rst AddAOntoHL                                          ; $7020: $ef
	inc b                                            ; $7021: $04
	ld a, [bc]                                       ; $7022: $0a
	rst AddAOntoHL                                          ; $7023: $ef
	inc b                                            ; $7024: $04
	ld a, [bc]                                       ; $7025: $0a
	inc de                                           ; $7026: $13
	dec b                                            ; $7027: $05
	ld a, [bc]                                       ; $7028: $0a
	rst AddAOntoHL                                          ; $7029: $ef
	inc b                                            ; $702a: $04
	ld a, [bc]                                       ; $702b: $0a
	inc de                                           ; $702c: $13
	dec b                                            ; $702d: $05
	ld a, [bc]                                       ; $702e: $0a
	scf                                              ; $702f: $37
	dec b                                            ; $7030: $05
	ld a, [bc]                                       ; $7031: $0a
	ld b, a                                          ; $7032: $47
	dec b                                            ; $7033: $05
	ld a, [bc]                                       ; $7034: $0a
	ld e, e                                          ; $7035: $5b
	dec b                                            ; $7036: $05
	ld a, [bc]                                       ; $7037: $0a
	ld l, a                                          ; $7038: $6f
	dec b                                            ; $7039: $05
	ld a, [bc]                                       ; $703a: $0a
	add e                                            ; $703b: $83
	dec b                                            ; $703c: $05
	ld a, [bc]                                       ; $703d: $0a
	sub a                                            ; $703e: $97
	dec b                                            ; $703f: $05
	ld a, [bc]                                       ; $7040: $0a
	xor e                                            ; $7041: $ab
	dec b                                            ; $7042: $05
	nop                                              ; $7043: $00
	xor e                                            ; $7044: $ab
	dec b                                            ; $7045: $05
	rst $38                                          ; $7046: $ff
	dec b                                            ; $7047: $05
	sub e                                            ; $7048: $93
	inc bc                                           ; $7049: $03
	dec b                                            ; $704a: $05
	rst AddAOntoHL                                          ; $704b: $ef
	inc bc                                           ; $704c: $03
	dec b                                            ; $704d: $05
	ld c, e                                          ; $704e: $4b
	inc b                                            ; $704f: $04
	dec b                                            ; $7050: $05
	sub e                                            ; $7051: $93
	inc bc                                           ; $7052: $03
	dec b                                            ; $7053: $05
	rst AddAOntoHL                                          ; $7054: $ef
	inc bc                                           ; $7055: $03
	dec b                                            ; $7056: $05
	ld c, e                                          ; $7057: $4b
	inc b                                            ; $7058: $04
	dec b                                            ; $7059: $05
	sub e                                            ; $705a: $93
	inc bc                                           ; $705b: $03
	dec b                                            ; $705c: $05
	rst AddAOntoHL                                          ; $705d: $ef
	inc bc                                           ; $705e: $03
	dec b                                            ; $705f: $05
	ld c, e                                          ; $7060: $4b
	inc b                                            ; $7061: $04
	dec b                                            ; $7062: $05
	sub e                                            ; $7063: $93
	inc bc                                           ; $7064: $03
	dec b                                            ; $7065: $05
	rst AddAOntoHL                                          ; $7066: $ef
	inc bc                                           ; $7067: $03
	dec b                                            ; $7068: $05
	ld c, e                                          ; $7069: $4b
	inc b                                            ; $706a: $04
	dec b                                            ; $706b: $05
	sub e                                            ; $706c: $93
	inc bc                                           ; $706d: $03
	dec b                                            ; $706e: $05
	rst AddAOntoHL                                          ; $706f: $ef
	inc bc                                           ; $7070: $03
	dec b                                            ; $7071: $05
	ld c, e                                          ; $7072: $4b
	inc b                                            ; $7073: $04
	dec b                                            ; $7074: $05
	and a                                            ; $7075: $a7
	inc b                                            ; $7076: $04
	dec b                                            ; $7077: $05
	or e                                             ; $7078: $b3
	inc b                                            ; $7079: $04
	dec b                                            ; $707a: $05
	cp e                                             ; $707b: $bb
	inc b                                            ; $707c: $04
	dec b                                            ; $707d: $05
	rlc h                                            ; $707e: $cb $04
	dec b                                            ; $7080: $05
	cp e                                             ; $7081: $bb
	inc b                                            ; $7082: $04
	dec b                                            ; $7083: $05
	rlc h                                            ; $7084: $cb $04
	dec b                                            ; $7086: $05
	cp e                                             ; $7087: $bb
	inc b                                            ; $7088: $04
	dec b                                            ; $7089: $05
	rlc h                                            ; $708a: $cb $04
	dec b                                            ; $708c: $05
	cp e                                             ; $708d: $bb
	inc b                                            ; $708e: $04
	dec b                                            ; $708f: $05
	rlc h                                            ; $7090: $cb $04
	dec b                                            ; $7092: $05
	cp e                                             ; $7093: $bb
	inc b                                            ; $7094: $04
	dec b                                            ; $7095: $05
	rlc h                                            ; $7096: $cb $04
	dec b                                            ; $7098: $05
	cp e                                             ; $7099: $bb
	inc b                                            ; $709a: $04
	dec b                                            ; $709b: $05
	rlc h                                            ; $709c: $cb $04
	nop                                              ; $709e: $00
	rlc h                                            ; $709f: $cb $04
	rst $38                                          ; $70a1: $ff
	add hl, bc                                       ; $70a2: $09
	sub e                                            ; $70a3: $93
	inc bc                                           ; $70a4: $03
	add hl, bc                                       ; $70a5: $09
	sbc e                                            ; $70a6: $9b
	inc bc                                           ; $70a7: $03
	add hl, bc                                       ; $70a8: $09
	xor e                                            ; $70a9: $ab
	inc bc                                           ; $70aa: $03
	add hl, bc                                       ; $70ab: $09
	cp e                                             ; $70ac: $bb
	inc bc                                           ; $70ad: $03
	add hl, bc                                       ; $70ae: $09
	rlc e                                            ; $70af: $cb $03
	add hl, bc                                       ; $70b1: $09
	db $db                                           ; $70b2: $db
	inc bc                                           ; $70b3: $03
	add hl, bc                                       ; $70b4: $09
	db $eb                                           ; $70b5: $eb
	inc bc                                           ; $70b6: $03
	add hl, bc                                       ; $70b7: $09
	ei                                               ; $70b8: $fb
	inc bc                                           ; $70b9: $03
	add hl, bc                                       ; $70ba: $09
	dec bc                                           ; $70bb: $0b
	inc b                                            ; $70bc: $04
	add hl, bc                                       ; $70bd: $09
	dec de                                           ; $70be: $1b
	inc b                                            ; $70bf: $04
	add hl, bc                                       ; $70c0: $09
	dec hl                                           ; $70c1: $2b
	inc b                                            ; $70c2: $04
	add hl, bc                                       ; $70c3: $09
	dec sp                                           ; $70c4: $3b
	inc b                                            ; $70c5: $04
	add hl, bc                                       ; $70c6: $09
	ld c, e                                          ; $70c7: $4b
	inc b                                            ; $70c8: $04
	jr nz, jr_01f_712a                               ; $70c9: $20 $5f

	inc b                                            ; $70cb: $04
	jr nz, @+$71                                     ; $70cc: $20 $6f

	inc b                                            ; $70ce: $04
	jr nz, jr_01f_7130                               ; $70cf: $20 $5f

	inc b                                            ; $70d1: $04
	nop                                              ; $70d2: $00
	ld e, a                                          ; $70d3: $5f
	inc b                                            ; $70d4: $04
	jr nz, jr_01f_7136                               ; $70d5: $20 $5f

	inc b                                            ; $70d7: $04
	jr nz, jr_01f_7149                               ; $70d8: $20 $6f

	inc b                                            ; $70da: $04
	jr nz, jr_01f_713c                               ; $70db: $20 $5f

	inc b                                            ; $70dd: $04
	add hl, bc                                       ; $70de: $09
	adc a                                            ; $70df: $8f
	inc b                                            ; $70e0: $04
	add hl, bc                                       ; $70e1: $09
	sbc a                                            ; $70e2: $9f
	inc b                                            ; $70e3: $04
	add hl, bc                                       ; $70e4: $09
	xor a                                            ; $70e5: $af
	inc b                                            ; $70e6: $04
	add hl, bc                                       ; $70e7: $09
	cp a                                             ; $70e8: $bf
	inc b                                            ; $70e9: $04
	add hl, bc                                       ; $70ea: $09
	rst GetHLinHL                                          ; $70eb: $cf
	inc b                                            ; $70ec: $04
	add hl, bc                                       ; $70ed: $09
	rst SubAFromDE                                          ; $70ee: $df
	inc b                                            ; $70ef: $04
	add hl, bc                                       ; $70f0: $09
	rst AddAOntoHL                                          ; $70f1: $ef
	inc b                                            ; $70f2: $04
	add hl, bc                                       ; $70f3: $09
	rst $38                                          ; $70f4: $ff
	inc b                                            ; $70f5: $04
	add hl, bc                                       ; $70f6: $09
	rrca                                             ; $70f7: $0f
	dec b                                            ; $70f8: $05
	add hl, bc                                       ; $70f9: $09
	rra                                              ; $70fa: $1f
	dec b                                            ; $70fb: $05
	add hl, bc                                       ; $70fc: $09
	cpl                                              ; $70fd: $2f
	dec b                                            ; $70fe: $05
	add hl, bc                                       ; $70ff: $09
	ccf                                              ; $7100: $3f
	dec b                                            ; $7101: $05
	add hl, bc                                       ; $7102: $09
	ld c, a                                          ; $7103: $4f
	dec b                                            ; $7104: $05
	nop                                              ; $7105: $00
	ld c, a                                          ; $7106: $4f
	dec b                                            ; $7107: $05
	rst $38                                          ; $7108: $ff
	add hl, bc                                       ; $7109: $09
	sub e                                            ; $710a: $93
	inc bc                                           ; $710b: $03
	add hl, bc                                       ; $710c: $09
	sbc e                                            ; $710d: $9b
	inc bc                                           ; $710e: $03
	add hl, bc                                       ; $710f: $09
	xor e                                            ; $7110: $ab
	inc bc                                           ; $7111: $03
	add hl, bc                                       ; $7112: $09
	cp e                                             ; $7113: $bb
	inc bc                                           ; $7114: $03
	add hl, bc                                       ; $7115: $09
	rlc e                                            ; $7116: $cb $03
	add hl, bc                                       ; $7118: $09
	db $db                                           ; $7119: $db
	inc bc                                           ; $711a: $03
	add hl, bc                                       ; $711b: $09
	db $eb                                           ; $711c: $eb
	inc bc                                           ; $711d: $03
	add hl, bc                                       ; $711e: $09
	ei                                               ; $711f: $fb
	inc bc                                           ; $7120: $03
	add hl, bc                                       ; $7121: $09
	dec bc                                           ; $7122: $0b
	inc b                                            ; $7123: $04
	add hl, bc                                       ; $7124: $09
	dec de                                           ; $7125: $1b
	inc b                                            ; $7126: $04
	add hl, bc                                       ; $7127: $09
	dec hl                                           ; $7128: $2b
	inc b                                            ; $7129: $04

jr_01f_712a:
	add hl, bc                                       ; $712a: $09
	dec sp                                           ; $712b: $3b
	inc b                                            ; $712c: $04
	add hl, bc                                       ; $712d: $09
	ld c, e                                          ; $712e: $4b
	inc b                                            ; $712f: $04

jr_01f_7130:
	jr nz, jr_01f_718d                               ; $7130: $20 $5b

	inc b                                            ; $7132: $04
	jr nz, jr_01f_71a0                               ; $7133: $20 $6b

	inc b                                            ; $7135: $04

jr_01f_7136:
	jr nz, jr_01f_7193                               ; $7136: $20 $5b

	inc b                                            ; $7138: $04
	nop                                              ; $7139: $00
	ld e, e                                          ; $713a: $5b
	inc b                                            ; $713b: $04

jr_01f_713c:
	jr nz, jr_01f_7199                               ; $713c: $20 $5b

	inc b                                            ; $713e: $04
	jr nz, jr_01f_71ac                               ; $713f: $20 $6b

	inc b                                            ; $7141: $04
	jr nz, jr_01f_719f                               ; $7142: $20 $5b

	inc b                                            ; $7144: $04
	add hl, bc                                       ; $7145: $09
	adc e                                            ; $7146: $8b
	inc b                                            ; $7147: $04
	add hl, bc                                       ; $7148: $09

jr_01f_7149:
	sbc e                                            ; $7149: $9b
	inc b                                            ; $714a: $04
	add hl, bc                                       ; $714b: $09
	xor e                                            ; $714c: $ab
	inc b                                            ; $714d: $04
	add hl, bc                                       ; $714e: $09
	cp e                                             ; $714f: $bb
	inc b                                            ; $7150: $04
	add hl, bc                                       ; $7151: $09
	rlc h                                            ; $7152: $cb $04
	add hl, bc                                       ; $7154: $09
	db $db                                           ; $7155: $db
	inc b                                            ; $7156: $04
	add hl, bc                                       ; $7157: $09
	db $eb                                           ; $7158: $eb
	inc b                                            ; $7159: $04
	add hl, bc                                       ; $715a: $09
	ei                                               ; $715b: $fb
	inc b                                            ; $715c: $04
	add hl, bc                                       ; $715d: $09
	dec bc                                           ; $715e: $0b
	dec b                                            ; $715f: $05
	add hl, bc                                       ; $7160: $09
	dec de                                           ; $7161: $1b
	dec b                                            ; $7162: $05
	add hl, bc                                       ; $7163: $09
	dec hl                                           ; $7164: $2b
	dec b                                            ; $7165: $05
	add hl, bc                                       ; $7166: $09
	dec sp                                           ; $7167: $3b
	dec b                                            ; $7168: $05
	add hl, bc                                       ; $7169: $09
	ld c, e                                          ; $716a: $4b
	dec b                                            ; $716b: $05
	nop                                              ; $716c: $00
	ld c, e                                          ; $716d: $4b
	dec b                                            ; $716e: $05
	rst $38                                          ; $716f: $ff
	add hl, bc                                       ; $7170: $09
	sub e                                            ; $7171: $93
	inc bc                                           ; $7172: $03
	add hl, bc                                       ; $7173: $09
	sbc e                                            ; $7174: $9b
	inc bc                                           ; $7175: $03
	add hl, bc                                       ; $7176: $09
	xor e                                            ; $7177: $ab
	inc bc                                           ; $7178: $03
	add hl, bc                                       ; $7179: $09
	cp e                                             ; $717a: $bb
	inc bc                                           ; $717b: $03
	add hl, bc                                       ; $717c: $09
	rlc e                                            ; $717d: $cb $03
	add hl, bc                                       ; $717f: $09
	db $db                                           ; $7180: $db
	inc bc                                           ; $7181: $03
	add hl, bc                                       ; $7182: $09
	db $eb                                           ; $7183: $eb
	inc bc                                           ; $7184: $03
	add hl, bc                                       ; $7185: $09
	ei                                               ; $7186: $fb
	inc bc                                           ; $7187: $03
	add hl, bc                                       ; $7188: $09
	dec bc                                           ; $7189: $0b
	inc b                                            ; $718a: $04
	add hl, bc                                       ; $718b: $09
	dec de                                           ; $718c: $1b

jr_01f_718d:
	inc b                                            ; $718d: $04
	add hl, bc                                       ; $718e: $09
	dec hl                                           ; $718f: $2b
	inc b                                            ; $7190: $04
	add hl, bc                                       ; $7191: $09
	dec sp                                           ; $7192: $3b

jr_01f_7193:
	inc b                                            ; $7193: $04
	add hl, bc                                       ; $7194: $09
	ld c, e                                          ; $7195: $4b
	inc b                                            ; $7196: $04
	jr nz, jr_01f_71f4                               ; $7197: $20 $5b

jr_01f_7199:
	inc b                                            ; $7199: $04
	jr nz, jr_01f_7207                               ; $719a: $20 $6b

	inc b                                            ; $719c: $04
	jr nz, jr_01f_71fa                               ; $719d: $20 $5b

jr_01f_719f:
	inc b                                            ; $719f: $04

jr_01f_71a0:
	nop                                              ; $71a0: $00
	ld e, e                                          ; $71a1: $5b
	inc b                                            ; $71a2: $04
	jr nz, @+$5d                                     ; $71a3: $20 $5b

	inc b                                            ; $71a5: $04
	jr nz, jr_01f_7213                               ; $71a6: $20 $6b

	inc b                                            ; $71a8: $04
	jr nz, jr_01f_7206                               ; $71a9: $20 $5b

	inc b                                            ; $71ab: $04

jr_01f_71ac:
	add hl, bc                                       ; $71ac: $09
	adc e                                            ; $71ad: $8b
	inc b                                            ; $71ae: $04
	add hl, bc                                       ; $71af: $09
	sbc e                                            ; $71b0: $9b
	inc b                                            ; $71b1: $04
	add hl, bc                                       ; $71b2: $09
	xor e                                            ; $71b3: $ab
	inc b                                            ; $71b4: $04
	add hl, bc                                       ; $71b5: $09
	cp e                                             ; $71b6: $bb
	inc b                                            ; $71b7: $04
	add hl, bc                                       ; $71b8: $09
	rlc h                                            ; $71b9: $cb $04
	add hl, bc                                       ; $71bb: $09
	db $db                                           ; $71bc: $db
	inc b                                            ; $71bd: $04
	add hl, bc                                       ; $71be: $09
	db $eb                                           ; $71bf: $eb
	inc b                                            ; $71c0: $04
	add hl, bc                                       ; $71c1: $09
	ei                                               ; $71c2: $fb
	inc b                                            ; $71c3: $04
	add hl, bc                                       ; $71c4: $09
	dec bc                                           ; $71c5: $0b
	dec b                                            ; $71c6: $05
	add hl, bc                                       ; $71c7: $09
	dec de                                           ; $71c8: $1b
	dec b                                            ; $71c9: $05
	add hl, bc                                       ; $71ca: $09
	dec hl                                           ; $71cb: $2b
	dec b                                            ; $71cc: $05
	add hl, bc                                       ; $71cd: $09
	dec sp                                           ; $71ce: $3b

jr_01f_71cf:
	dec b                                            ; $71cf: $05
	add hl, bc                                       ; $71d0: $09
	ld c, e                                          ; $71d1: $4b
	dec b                                            ; $71d2: $05
	nop                                              ; $71d3: $00
	ld c, e                                          ; $71d4: $4b

jr_01f_71d5:
	dec b                                            ; $71d5: $05
	rst $38                                          ; $71d6: $ff
	ld e, d                                          ; $71d7: $5a
	ld h, a                                          ; $71d8: $67
	inc b                                            ; $71d9: $04
	rrca                                             ; $71da: $0f

jr_01f_71db:
	sub e                                            ; $71db: $93
	inc bc                                           ; $71dc: $03
	rrca                                             ; $71dd: $0f
	xor a                                            ; $71de: $af
	inc bc                                           ; $71df: $03
	rrca                                             ; $71e0: $0f

jr_01f_71e1:
	rlc e                                            ; $71e1: $cb $03
	rrca                                             ; $71e3: $0f
	rst SubAFromBC                                          ; $71e4: $e7
	inc bc                                           ; $71e5: $03
	jr nz, jr_01f_71cf                               ; $71e6: $20 $e7

	inc bc                                           ; $71e8: $03
	jr nz, jr_01f_7212                               ; $71e9: $20 $27

	inc b                                            ; $71eb: $04
	jr nz, jr_01f_71d5                               ; $71ec: $20 $e7

	inc bc                                           ; $71ee: $03
	nop                                              ; $71ef: $00
	rst SubAFromBC                                          ; $71f0: $e7
	inc bc                                           ; $71f1: $03
	jr nz, jr_01f_71db                               ; $71f2: $20 $e7

jr_01f_71f4:
	inc bc                                           ; $71f4: $03
	jr nz, jr_01f_721e                               ; $71f5: $20 $27

	inc b                                            ; $71f7: $04
	jr nz, jr_01f_71e1                               ; $71f8: $20 $e7

jr_01f_71fa:
	inc bc                                           ; $71fa: $03
	rrca                                             ; $71fb: $0f
	rst SubAFromBC                                          ; $71fc: $e7
	inc bc                                           ; $71fd: $03
	rrca                                             ; $71fe: $0f
	rlc e                                            ; $71ff: $cb $03
	rrca                                             ; $7201: $0f
	xor a                                            ; $7202: $af
	inc bc                                           ; $7203: $03
	rrca                                             ; $7204: $0f
	sub e                                            ; $7205: $93

jr_01f_7206:
	inc bc                                           ; $7206: $03

jr_01f_7207:
	ld e, d                                          ; $7207: $5a
	ld h, a                                          ; $7208: $67
	inc b                                            ; $7209: $04
	nop                                              ; $720a: $00
	ld h, a                                          ; $720b: $67
	inc b                                            ; $720c: $04
	rst $38                                          ; $720d: $ff
	add hl, bc                                       ; $720e: $09
	sub e                                            ; $720f: $93
	inc bc                                           ; $7210: $03
	add hl, bc                                       ; $7211: $09

jr_01f_7212:
	sbc e                                            ; $7212: $9b

jr_01f_7213:
	inc bc                                           ; $7213: $03
	add hl, bc                                       ; $7214: $09
	xor e                                            ; $7215: $ab
	inc bc                                           ; $7216: $03
	add hl, bc                                       ; $7217: $09
	cp e                                             ; $7218: $bb
	inc bc                                           ; $7219: $03
	add hl, bc                                       ; $721a: $09
	rlc e                                            ; $721b: $cb $03
	add hl, bc                                       ; $721d: $09

jr_01f_721e:
	db $db                                           ; $721e: $db
	inc bc                                           ; $721f: $03
	add hl, bc                                       ; $7220: $09
	db $eb                                           ; $7221: $eb
	inc bc                                           ; $7222: $03
	add hl, bc                                       ; $7223: $09
	ei                                               ; $7224: $fb
	inc bc                                           ; $7225: $03
	add hl, bc                                       ; $7226: $09
	dec bc                                           ; $7227: $0b
	inc b                                            ; $7228: $04
	add hl, bc                                       ; $7229: $09
	dec de                                           ; $722a: $1b
	inc b                                            ; $722b: $04
	add hl, bc                                       ; $722c: $09
	dec hl                                           ; $722d: $2b
	inc b                                            ; $722e: $04
	add hl, bc                                       ; $722f: $09
	dec sp                                           ; $7230: $3b
	inc b                                            ; $7231: $04
	add hl, bc                                       ; $7232: $09
	ld c, e                                          ; $7233: $4b
	inc b                                            ; $7234: $04

jr_01f_7235:
	jr nz, jr_01f_7296                               ; $7235: $20 $5f

	inc b                                            ; $7237: $04
	jr nz, jr_01f_72a9                               ; $7238: $20 $6f

	inc b                                            ; $723a: $04
	jr nz, jr_01f_729c                               ; $723b: $20 $5f

	inc b                                            ; $723d: $04
	nop                                              ; $723e: $00
	ld e, a                                          ; $723f: $5f
	inc b                                            ; $7240: $04
	jr nz, jr_01f_72a2                               ; $7241: $20 $5f

	inc b                                            ; $7243: $04
	jr nz, jr_01f_72b5                               ; $7244: $20 $6f

	inc b                                            ; $7246: $04
	jr nz, jr_01f_72a8                               ; $7247: $20 $5f

	inc b                                            ; $7249: $04
	add hl, bc                                       ; $724a: $09
	adc a                                            ; $724b: $8f
	inc b                                            ; $724c: $04
	add hl, bc                                       ; $724d: $09
	sbc a                                            ; $724e: $9f
	inc b                                            ; $724f: $04
	add hl, bc                                       ; $7250: $09
	xor a                                            ; $7251: $af
	inc b                                            ; $7252: $04
	add hl, bc                                       ; $7253: $09
	cp a                                             ; $7254: $bf
	inc b                                            ; $7255: $04
	add hl, bc                                       ; $7256: $09

jr_01f_7257:
	rst GetHLinHL                                          ; $7257: $cf
	inc b                                            ; $7258: $04
	add hl, bc                                       ; $7259: $09
	rst SubAFromDE                                          ; $725a: $df
	inc b                                            ; $725b: $04
	add hl, bc                                       ; $725c: $09
	rst AddAOntoHL                                          ; $725d: $ef
	inc b                                            ; $725e: $04
	add hl, bc                                       ; $725f: $09
	rst $38                                          ; $7260: $ff
	inc b                                            ; $7261: $04
	add hl, bc                                       ; $7262: $09
	rrca                                             ; $7263: $0f
	dec b                                            ; $7264: $05

jr_01f_7265:
	add hl, bc                                       ; $7265: $09
	rra                                              ; $7266: $1f
	dec b                                            ; $7267: $05
	add hl, bc                                       ; $7268: $09
	cpl                                              ; $7269: $2f
	dec b                                            ; $726a: $05
	add hl, bc                                       ; $726b: $09
	ccf                                              ; $726c: $3f
	dec b                                            ; $726d: $05
	add hl, bc                                       ; $726e: $09
	ld c, a                                          ; $726f: $4f
	dec b                                            ; $7270: $05
	nop                                              ; $7271: $00
	ld c, a                                          ; $7272: $4f
	dec b                                            ; $7273: $05
	rst $38                                          ; $7274: $ff
	rra                                              ; $7275: $1f
	db $d3                                           ; $7276: $d3
	inc bc                                           ; $7277: $03
	rra                                              ; $7278: $1f
	inc de                                           ; $7279: $13
	inc b                                            ; $727a: $04
	rst $38                                          ; $727b: $ff
	dec l                                            ; $727c: $2d
	sub e                                            ; $727d: $93
	inc bc                                           ; $727e: $03
	nop                                              ; $727f: $00
	sub e                                            ; $7280: $93
	inc bc                                           ; $7281: $03
	rst $38                                          ; $7282: $ff
	rra                                              ; $7283: $1f
	inc de                                           ; $7284: $13
	inc b                                            ; $7285: $04
	dec l                                            ; $7286: $2d
	ld d, e                                          ; $7287: $53
	inc b                                            ; $7288: $04
	nop                                              ; $7289: $00
	ld d, e                                          ; $728a: $53
	inc b                                            ; $728b: $04
	rst $38                                          ; $728c: $ff
	dec c                                            ; $728d: $0d
	db $db                                           ; $728e: $db
	inc bc                                           ; $728f: $03

jr_01f_7290:
	add hl, bc                                       ; $7290: $09
	inc hl                                           ; $7291: $23
	inc b                                            ; $7292: $04
	dec c                                            ; $7293: $0d
	ld l, e                                          ; $7294: $6b
	inc b                                            ; $7295: $04

jr_01f_7296:
	inc de                                           ; $7296: $13
	or e                                             ; $7297: $b3
	inc b                                            ; $7298: $04
	dec c                                            ; $7299: $0d
	ld l, e                                          ; $729a: $6b
	inc b                                            ; $729b: $04

jr_01f_729c:
	dec c                                            ; $729c: $0d
	inc hl                                           ; $729d: $23

jr_01f_729e:
	inc b                                            ; $729e: $04
	rst $38                                          ; $729f: $ff
	jr nz, jr_01f_7235                               ; $72a0: $20 $93

jr_01f_72a2:
	inc bc                                           ; $72a2: $03
	add hl, bc                                       ; $72a3: $09
	ei                                               ; $72a4: $fb
	inc b                                            ; $72a5: $04
	jr nc, jr_01f_72eb                               ; $72a6: $30 $43

jr_01f_72a8:
	dec b                                            ; $72a8: $05

jr_01f_72a9:
	nop                                              ; $72a9: $00
	ld b, e                                          ; $72aa: $43
	dec b                                            ; $72ab: $05
	rst $38                                          ; $72ac: $ff
	rra                                              ; $72ad: $1f
	db $d3                                           ; $72ae: $d3
	inc bc                                           ; $72af: $03

jr_01f_72b0:
	rra                                              ; $72b0: $1f
	inc de                                           ; $72b1: $13
	inc b                                            ; $72b2: $04
	rst $38                                          ; $72b3: $ff
	dec l                                            ; $72b4: $2d

jr_01f_72b5:
	sub e                                            ; $72b5: $93
	inc bc                                           ; $72b6: $03
	nop                                              ; $72b7: $00
	sub e                                            ; $72b8: $93
	inc bc                                           ; $72b9: $03
	rst $38                                          ; $72ba: $ff
	jr nc, jr_01f_7290                               ; $72bb: $30 $d3

	inc bc                                           ; $72bd: $03
	jr nc, jr_01f_72d3                               ; $72be: $30 $13

	inc b                                            ; $72c0: $04
	rst $38                                          ; $72c1: $ff
	jr nc, jr_01f_7257                               ; $72c2: $30 $93

	inc bc                                           ; $72c4: $03
	nop                                              ; $72c5: $00
	sub e                                            ; $72c6: $93
	inc bc                                           ; $72c7: $03
	rst $38                                          ; $72c8: $ff
	jr nc, jr_01f_729e                               ; $72c9: $30 $d3

	inc bc                                           ; $72cb: $03
	jr nc, jr_01f_72e1                               ; $72cc: $30 $13

	inc b                                            ; $72ce: $04
	rst $38                                          ; $72cf: $ff
	jr nc, jr_01f_7265                               ; $72d0: $30 $93

	inc bc                                           ; $72d2: $03

jr_01f_72d3:
	nop                                              ; $72d3: $00
	sub e                                            ; $72d4: $93
	inc bc                                           ; $72d5: $03
	rst $38                                          ; $72d6: $ff
	ld [$0513], sp                                   ; $72d7: $08 $13 $05
	ld [$051b], sp                                   ; $72da: $08 $1b $05
	rst $38                                          ; $72dd: $ff
	ld [$0523], sp                                   ; $72de: $08 $23 $05

jr_01f_72e1:
	ld [$0527], sp                                   ; $72e1: $08 $27 $05
	inc c                                            ; $72e4: $0c
	sub e                                            ; $72e5: $93
	inc bc                                           ; $72e6: $03
	ld b, b                                          ; $72e7: $40
	di                                               ; $72e8: $f3
	inc bc                                           ; $72e9: $03
	db $10                                           ; $72ea: $10

jr_01f_72eb:
	ld [hl], e                                       ; $72eb: $73
	inc b                                            ; $72ec: $04
	db $10                                           ; $72ed: $10
	jp $0004                                         ; $72ee: $c3 $04 $00


	rst $38                                          ; $72f1: $ff
	rst $38                                          ; $72f2: $ff
	ld [$0493], sp                                   ; $72f3: $08 $93 $04
	ld [$049b], sp                                   ; $72f6: $08 $9b $04
	rst $38                                          ; $72f9: $ff
	ld [$04a3], sp                                   ; $72fa: $08 $a3 $04
	ld [$04a7], sp                                   ; $72fd: $08 $a7 $04
	ld [$0393], sp                                   ; $7300: $08 $93 $03
	jr z, jr_01f_72b0                                ; $7303: $28 $ab

	inc bc                                           ; $7305: $03
	inc c                                            ; $7306: $0c
	ld b, e                                          ; $7307: $43
	inc b                                            ; $7308: $04
	ld [$046b], sp                                   ; $7309: $08 $6b $04
	nop                                              ; $730c: $00
	rst $38                                          ; $730d: $ff
	rst $38                                          ; $730e: $ff
	ld [$04a3], sp                                   ; $730f: $08 $a3 $04
	ld [$04a7], sp                                   ; $7312: $08 $a7 $04
	ld [$03eb], sp                                   ; $7315: $08 $eb $03
	jr z, jr_01f_731d                                ; $7318: $28 $03

	inc b                                            ; $731a: $04
	inc c                                            ; $731b: $0c
	ld b, e                                          ; $731c: $43

jr_01f_731d:
	inc b                                            ; $731d: $04
	ld [$046b], sp                                   ; $731e: $08 $6b $04
	nop                                              ; $7321: $00
	rst $38                                          ; $7322: $ff
	rst $38                                          ; $7323: $ff
	ld b, $93                                        ; $7324: $06 $93
	inc bc                                           ; $7326: $03
	ld b, $db                                        ; $7327: $06 $db
	inc bc                                           ; $7329: $03
	ld b, $23                                        ; $732a: $06 $23
	inc b                                            ; $732c: $04
	ld b, $6b                                        ; $732d: $06 $6b
	inc b                                            ; $732f: $04
	rst $38                                          ; $7330: $ff
	ld [$0393], sp                                   ; $7331: $08 $93 $03
	ld [$03b7], sp                                   ; $7334: $08 $b7 $03
	ld e, $df                                        ; $7337: $1e $df
	inc bc                                           ; $7339: $03
	nop                                              ; $733a: $00
	rst SubAFromDE                                          ; $733b: $df
	inc bc                                           ; $733c: $03
	rst $38                                          ; $733d: $ff
	db $10                                           ; $733e: $10
	ld l, e                                          ; $733f: $6b
	dec b                                            ; $7340: $05
	db $10                                           ; $7341: $10
	ld a, a                                          ; $7342: $7f
	dec b                                            ; $7343: $05
	rst $38                                          ; $7344: $ff
	ld l, l                                          ; $7345: $6d
	inc bc                                           ; $7346: $03
	sub b                                            ; $7347: $90
	ld bc, $0214                                     ; $7348: $01 $14 $02
	inc d                                            ; $734b: $14
	inc bc                                           ; $734c: $03
	inc d                                            ; $734d: $14
	inc b                                            ; $734e: $04
	inc d                                            ; $734f: $14
	dec b                                            ; $7350: $05
	inc d                                            ; $7351: $14
	ld b, $14                                        ; $7352: $06 $14
	rlca                                             ; $7354: $07
	inc d                                            ; $7355: $14
	ld [$fa6b], sp                                   ; $7356: $08 $6b $fa
	sbc h                                            ; $7359: $9c
	inc c                                            ; $735a: $0c
	inc d                                            ; $735b: $14
	dec c                                            ; $735c: $0d
	inc sp                                           ; $735d: $33
	or $80                                           ; $735e: $f6 $80
	jr jr_01f_7376                                   ; $7360: $18 $14

	add hl, de                                       ; $7362: $19
	inc d                                            ; $7363: $14
	ld a, [de]                                       ; $7364: $1a
	inc d                                            ; $7365: $14
	dec de                                           ; $7366: $1b
	inc d                                            ; $7367: $14
	inc e                                            ; $7368: $1c
	inc d                                            ; $7369: $14
	dec e                                            ; $736a: $1d
	inc d                                            ; $736b: $14
	ld e, $14                                        ; $736c: $1e $14
	rra                                              ; $736e: $1f
	inc d                                            ; $736f: $14
	jr nz, jr_01f_7386                               ; $7370: $20 $14

	ld hl, $2214                                     ; $7372: $21 $14 $22
	inc d                                            ; $7375: $14

jr_01f_7376:
	inc hl                                           ; $7376: $23
	inc d                                            ; $7377: $14
	inc h                                            ; $7378: $24
	inc d                                            ; $7379: $14
	dec h                                            ; $737a: $25
	inc d                                            ; $737b: $14

Call_01f_737c:
	ld h, $14                                        ; $737c: $26 $14
	daa                                              ; $737e: $27
	sbc l                                            ; $737f: $9d
	inc d                                            ; $7380: $14
	jr z, jr_01f_73fe                                ; $7381: $28 $7b

	ld a, [$2a94]                                    ; $7383: $fa $94 $2a

jr_01f_7386:
	inc d                                            ; $7386: $14
	dec hl                                           ; $7387: $2b
	inc d                                            ; $7388: $14
	inc l                                            ; $7389: $2c
	inc d                                            ; $738a: $14
	dec l                                            ; $738b: $2d
	inc d                                            ; $738c: $14
	ld l, $14                                        ; $738d: $2e $14
	cpl                                              ; $738f: $2f
	ld a, e                                          ; $7390: $7b
	cp $9c                                           ; $7391: $fe $9c
	ld sp, $3214                                     ; $7393: $31 $14 $32
	ld [hl], e                                       ; $7396: $73
	ldh a, [c]                                       ; $7397: $f2
	sbc h                                            ; $7398: $9c
	dec [hl]                                         ; $7399: $35
	inc d                                            ; $739a: $14
	ld [hl], $7b                                     ; $739b: $36 $7b
	ldh a, [c]                                       ; $739d: $f2
	ld a, a                                          ; $739e: $7f
	ldh [c], a                                       ; $739f: $e2
	add d                                            ; $73a0: $82
	add hl, sp                                       ; $73a1: $39
	inc d                                            ; $73a2: $14
	ld a, [hl-]                                      ; $73a3: $3a
	inc d                                            ; $73a4: $14
	dec sp                                           ; $73a5: $3b
	inc d                                            ; $73a6: $14
	inc a                                            ; $73a7: $3c
	inc d                                            ; $73a8: $14
	dec a                                            ; $73a9: $3d
	inc d                                            ; $73aa: $14
	ld a, $14                                        ; $73ab: $3e $14
	ccf                                              ; $73ad: $3f
	inc d                                            ; $73ae: $14
	ld b, b                                          ; $73af: $40
	inc d                                            ; $73b0: $14
	ld b, c                                          ; $73b1: $41
	inc d                                            ; $73b2: $14
	ld b, d                                          ; $73b3: $42
	inc d                                            ; $73b4: $14
	ld b, e                                          ; $73b5: $43
	inc d                                            ; $73b6: $14
	ld b, h                                          ; $73b7: $44
	inc d                                            ; $73b8: $14
	ld b, l                                          ; $73b9: $45
	inc d                                            ; $73ba: $14
	ld b, [hl]                                       ; $73bb: $46
	inc d                                            ; $73bc: $14
	ld b, a                                          ; $73bd: $47
	ld a, e                                          ; $73be: $7b
	sbc b                                            ; $73bf: $98
	ld a, a                                          ; $73c0: $7f
	ld a, [$4a84]                                    ; $73c1: $fa $84 $4a
	inc d                                            ; $73c4: $14
	ld c, e                                          ; $73c5: $4b
	inc d                                            ; $73c6: $14
	ld c, h                                          ; $73c7: $4c
	inc d                                            ; $73c8: $14
	ld c, l                                          ; $73c9: $4d
	inc d                                            ; $73ca: $14
	ld c, [hl]                                       ; $73cb: $4e
	inc d                                            ; $73cc: $14
	ld c, a                                          ; $73cd: $4f
	inc d                                            ; $73ce: $14
	ld d, b                                          ; $73cf: $50
	inc d                                            ; $73d0: $14
	ld d, c                                          ; $73d1: $51
	inc d                                            ; $73d2: $14
	ld d, d                                          ; $73d3: $52
	inc d                                            ; $73d4: $14
	ld d, e                                          ; $73d5: $53
	inc d                                            ; $73d6: $14
	ld d, h                                          ; $73d7: $54
	inc d                                            ; $73d8: $14
	ld d, l                                          ; $73d9: $55
	inc d                                            ; $73da: $14
	ld d, [hl]                                       ; $73db: $56
	inc d                                            ; $73dc: $14
	ld d, a                                          ; $73dd: $57
	ld a, e                                          ; $73de: $7b
	ldh [c], a                                       ; $73df: $e2
	add b                                            ; $73e0: $80
	ld e, c                                          ; $73e1: $59
	inc d                                            ; $73e2: $14
	ld e, d                                          ; $73e3: $5a
	inc d                                            ; $73e4: $14
	ld e, e                                          ; $73e5: $5b
	inc d                                            ; $73e6: $14
	ld e, h                                          ; $73e7: $5c
	inc d                                            ; $73e8: $14
	ld e, l                                          ; $73e9: $5d
	inc d                                            ; $73ea: $14
	ld e, [hl]                                       ; $73eb: $5e
	inc d                                            ; $73ec: $14
	ld e, a                                          ; $73ed: $5f
	inc d                                            ; $73ee: $14
	ld h, b                                          ; $73ef: $60
	inc d                                            ; $73f0: $14
	ld h, c                                          ; $73f1: $61
	inc d                                            ; $73f2: $14
	ld h, d                                          ; $73f3: $62
	inc d                                            ; $73f4: $14
	ld h, e                                          ; $73f5: $63
	inc d                                            ; $73f6: $14
	ld h, h                                          ; $73f7: $64
	inc d                                            ; $73f8: $14
	ld h, l                                          ; $73f9: $65
	inc d                                            ; $73fa: $14
	ld h, [hl]                                       ; $73fb: $66
	inc d                                            ; $73fc: $14
	ld h, a                                          ; $73fd: $67

jr_01f_73fe:
	inc d                                            ; $73fe: $14
	ld l, b                                          ; $73ff: $68
	ld a, e                                          ; $7400: $7b
	ld a, [$6a84]                                    ; $7401: $fa $84 $6a
	inc d                                            ; $7404: $14
	ld l, e                                          ; $7405: $6b
	inc d                                            ; $7406: $14
	ld l, h                                          ; $7407: $6c
	inc d                                            ; $7408: $14
	ld l, l                                          ; $7409: $6d
	inc d                                            ; $740a: $14
	ld l, [hl]                                       ; $740b: $6e
	inc d                                            ; $740c: $14
	ld l, a                                          ; $740d: $6f
	inc d                                            ; $740e: $14
	ld [hl], b                                       ; $740f: $70
	inc d                                            ; $7410: $14
	ld [hl], c                                       ; $7411: $71
	inc d                                            ; $7412: $14
	ld [hl], d                                       ; $7413: $72
	inc d                                            ; $7414: $14
	ld [hl], e                                       ; $7415: $73
	inc d                                            ; $7416: $14
	ld [hl], h                                       ; $7417: $74
	inc d                                            ; $7418: $14
	ld [hl], l                                       ; $7419: $75
	inc d                                            ; $741a: $14
	halt                                             ; $741b: $76
	inc d                                            ; $741c: $14
	ld [hl], a                                       ; $741d: $77
	ld a, e                                          ; $741e: $7b
	ldh [c], a                                       ; $741f: $e2
	add b                                            ; $7420: $80
	ld a, c                                          ; $7421: $79
	inc d                                            ; $7422: $14
	ld a, d                                          ; $7423: $7a
	inc d                                            ; $7424: $14
	ld a, e                                          ; $7425: $7b
	inc d                                            ; $7426: $14
	ld a, h                                          ; $7427: $7c
	inc d                                            ; $7428: $14
	ld a, l                                          ; $7429: $7d
	inc d                                            ; $742a: $14
	ld a, [hl]                                       ; $742b: $7e
	inc d                                            ; $742c: $14
	ld a, a                                          ; $742d: $7f
	inc d                                            ; $742e: $14
	add b                                            ; $742f: $80
	inc d                                            ; $7430: $14
	add c                                            ; $7431: $81
	inc d                                            ; $7432: $14
	add d                                            ; $7433: $82
	inc d                                            ; $7434: $14
	add e                                            ; $7435: $83
	inc d                                            ; $7436: $14
	add h                                            ; $7437: $84
	inc d                                            ; $7438: $14
	add l                                            ; $7439: $85
	inc d                                            ; $743a: $14
	add [hl]                                         ; $743b: $86
	inc d                                            ; $743c: $14
	add a                                            ; $743d: $87
	inc d                                            ; $743e: $14
	adc b                                            ; $743f: $88
	ld a, e                                          ; $7440: $7b
	ld a, [$8a8c]                                    ; $7441: $fa $8c $8a
	inc d                                            ; $7444: $14
	adc e                                            ; $7445: $8b
	inc d                                            ; $7446: $14
	adc h                                            ; $7447: $8c
	inc d                                            ; $7448: $14
	adc l                                            ; $7449: $8d
	inc d                                            ; $744a: $14
	adc [hl]                                         ; $744b: $8e
	inc d                                            ; $744c: $14
	adc a                                            ; $744d: $8f
	inc d                                            ; $744e: $14
	sub b                                            ; $744f: $90
	inc d                                            ; $7450: $14
	sub c                                            ; $7451: $91
	inc d                                            ; $7452: $14
	sub d                                            ; $7453: $92
	inc d                                            ; $7454: $14
	sub e                                            ; $7455: $93
	ld a, e                                          ; $7456: $7b
	ld a, [$fe7f]                                    ; $7457: $fa $7f $fe
	sbc h                                            ; $745a: $9c
	sub [hl]                                         ; $745b: $96
	inc d                                            ; $745c: $14
	sub a                                            ; $745d: $97
	ld a, e                                          ; $745e: $7b
	ldh [c], a                                       ; $745f: $e2
	sub [hl]                                         ; $7460: $96
	sbc c                                            ; $7461: $99
	inc d                                            ; $7462: $14
	sbc d                                            ; $7463: $9a
	inc d                                            ; $7464: $14
	sbc e                                            ; $7465: $9b
	inc d                                            ; $7466: $14
	sbc h                                            ; $7467: $9c
	inc d                                            ; $7468: $14
	sbc l                                            ; $7469: $9d
	ld a, e                                          ; $746a: $7b
	ld [hl-], a                                      ; $746b: $32
	adc [hl]                                         ; $746c: $8e
	ld a, a                                          ; $746d: $7f
	sub h                                            ; $746e: $94
	add b                                            ; $746f: $80
	sub h                                            ; $7470: $94
	ld e, c                                          ; $7471: $59
	ld d, h                                          ; $7472: $54
	and d                                            ; $7473: $a2
	inc d                                            ; $7474: $14
	and e                                            ; $7475: $a3
	inc d                                            ; $7476: $14
	and h                                            ; $7477: $a4
	inc d                                            ; $7478: $14
	and l                                            ; $7479: $a5
	inc d                                            ; $747a: $14
	and [hl]                                         ; $747b: $a6
	inc d                                            ; $747c: $14
	nop                                              ; $747d: $00
	inc bc                                           ; $747e: $03
	cp $6f                                           ; $747f: $fe $6f
	cp $88                                           ; $7481: $fe $88
	cp e                                             ; $7483: $bb
	inc d                                            ; $7484: $14
	cp h                                             ; $7485: $bc
	inc d                                            ; $7486: $14
	cp l                                             ; $7487: $bd
	inc d                                            ; $7488: $14
	cp [hl]                                          ; $7489: $be
	inc d                                            ; $748a: $14
	cp a                                             ; $748b: $bf
	inc d                                            ; $748c: $14
	ret nz                                           ; $748d: $c0

	inc d                                            ; $748e: $14
	ld a, c                                          ; $748f: $79
	ld d, h                                          ; $7490: $54
	jp nz, $c314                                     ; $7491: $c2 $14 $c3

	inc d                                            ; $7494: $14
	call nz, $c514                                   ; $7495: $c4 $14 $c5
	inc d                                            ; $7498: $14
	add $03                                          ; $7499: $c6 $03
	ret z                                            ; $749b: $c8

	ld h, a                                          ; $749c: $67
	cp $8c                                           ; $749d: $fe $8c
	db $db                                           ; $749f: $db
	inc d                                            ; $74a0: $14
	call c, $dd14                                    ; $74a1: $dc $14 $dd
	inc d                                            ; $74a4: $14
	sbc $14                                          ; $74a5: $de $14
	rst SubAFromDE                                          ; $74a7: $df
	inc d                                            ; $74a8: $14
	ldh [rAUD1HIGH], a                               ; $74a9: $e0 $14
	sbc c                                            ; $74ab: $99
	ld d, h                                          ; $74ac: $54
	ldh [c], a                                       ; $74ad: $e2
	inc d                                            ; $74ae: $14
	db $e3                                           ; $74af: $e3
	inc d                                            ; $74b0: $14
	db $e4                                           ; $74b1: $e4
	ld [hl], d                                       ; $74b2: $72
	sub h                                            ; $74b3: $94
	inc bc                                           ; $74b4: $03
	add $6b                                          ; $74b5: $c6 $6b
	cp $94                                           ; $74b7: $fe $94
	or $14                                           ; $74b9: $f6 $14
	push af                                          ; $74bb: $f5
	inc d                                            ; $74bc: $14
	db $f4                                           ; $74bd: $f4
	inc d                                            ; $74be: $14
	di                                               ; $74bf: $f3
	inc d                                            ; $74c0: $14
	ldh a, [c]                                       ; $74c1: $f2
	inc d                                            ; $74c2: $14
	pop af                                           ; $74c3: $f1
	ld [hl], e                                       ; $74c4: $73
	ret z                                            ; $74c5: $c8

	ld h, a                                          ; $74c6: $67
	cp $03                                           ; $74c7: $fe $03
	add $6b                                          ; $74c9: $c6 $6b
	cp $94                                           ; $74cb: $fe $94
	ldh a, [rAUD1HIGH]                               ; $74cd: $f0 $14
	rst AddAOntoHL                                          ; $74cf: $ef
	inc d                                            ; $74d0: $14
	xor $14                                          ; $74d1: $ee $14
	db $ed                                           ; $74d3: $ed
	inc d                                            ; $74d4: $14
	db $ec                                           ; $74d5: $ec
	inc d                                            ; $74d6: $14
	db $eb                                           ; $74d7: $eb
	inc bc                                           ; $74d8: $03
	ret nz                                           ; $74d9: $c0

	scf                                              ; $74da: $37
	cp $7f                                           ; $74db: $fe $7f
	sub $96                                          ; $74dd: $d6 $96
	ld [$e914], a                                    ; $74df: $ea $14 $e9
	inc d                                            ; $74e2: $14
	add sp, $14                                      ; $74e3: $e8 $14
	rst SubAFromBC                                          ; $74e5: $e7
	inc d                                            ; $74e6: $14
	and $5b                                          ; $74e7: $e6 $5b
	jp nz, $e59e                                     ; $74e9: $c2 $9e $e5

	inc bc                                           ; $74ec: $03
	ret z                                            ; $74ed: $c8

	ld e, a                                          ; $74ee: $5f
	ret nz                                           ; $74ef: $c0

	sub [hl]                                         ; $74f0: $96
	pop hl                                           ; $74f1: $e1
	inc d                                            ; $74f2: $14
	jp c, $d914                                      ; $74f3: $da $14 $d9

	inc d                                            ; $74f6: $14
	ret c                                            ; $74f7: $d8

	inc d                                            ; $74f8: $14
	rst SubAFromHL                                          ; $74f9: $d7
	ld e, e                                          ; $74fa: $5b
	ret nz                                           ; $74fb: $c0

	sbc [hl]                                         ; $74fc: $9e
	sub $03                                          ; $74fd: $d6 $03
	ret z                                            ; $74ff: $c8

	ld h, a                                          ; $7500: $67
	cp $9c                                           ; $7501: $fe $9c
	push de                                          ; $7503: $d5
	inc d                                            ; $7504: $14
	call nc, $d07b                                   ; $7505: $d4 $7b $d0
	sbc d                                            ; $7508: $9a
	db $d3                                           ; $7509: $d3
	inc d                                            ; $750a: $14
	jp nc, $d114                                     ; $750b: $d2 $14 $d1

	inc bc                                           ; $750e: $03
	ld b, b                                          ; $750f: $40
	scf                                              ; $7510: $37
	cp $9c                                           ; $7511: $fe $9c
	ret nc                                           ; $7513: $d0

	inc d                                            ; $7514: $14
	rst GetHLinHL                                          ; $7515: $cf
	ld a, e                                          ; $7516: $7b
	jp nc, $ce9c                                     ; $7517: $d2 $9c $ce

	inc d                                            ; $751a: $14
	call $b67b                                       ; $751b: $cd $7b $b6
	inc bc                                           ; $751e: $03
	ret nz                                           ; $751f: $c0

	dec sp                                           ; $7520: $3b
	cp $98                                           ; $7521: $fe $98
	call z, $cb14                                    ; $7523: $cc $14 $cb
	inc d                                            ; $7526: $14
	jp z, $c914                                      ; $7527: $ca $14 $c9

	ld [hl], e                                       ; $752a: $73
	ld a, [hl-]                                      ; $752b: $3a
	sbc c                                            ; $752c: $99
	cp [hl]                                          ; $752d: $be
	ld d, h                                          ; $752e: $54
	cp l                                             ; $752f: $bd
	ld d, h                                          ; $7530: $54
	cp h                                             ; $7531: $bc
	ld d, h                                          ; $7532: $54
	inc bc                                           ; $7533: $03
	ret nz                                           ; $7534: $c0

	ld d, e                                          ; $7535: $53
	cp $98                                           ; $7536: $fe $98
	ret z                                            ; $7538: $c8

	inc d                                            ; $7539: $14
	rst JumpTable                                          ; $753a: $c7
	inc d                                            ; $753b: $14
	pop bc                                           ; $753c: $c1
	inc d                                            ; $753d: $14
	cp d                                             ; $753e: $ba
	ld [hl], e                                       ; $753f: $73
	call z, $de98                                    ; $7540: $cc $98 $de
	ld d, h                                          ; $7543: $54
	db $dd                                           ; $7544: $dd
	ld d, h                                          ; $7545: $54
	call c, $db54                                    ; $7546: $dc $54 $db
	ld [hl], e                                       ; $7549: $73
	cp [hl]                                          ; $754a: $be
	inc bc                                           ; $754b: $03
	add $6b                                          ; $754c: $c6 $6b
	cp $96                                           ; $754e: $fe $96
	cp c                                             ; $7550: $b9
	inc d                                            ; $7551: $14
	cp b                                             ; $7552: $b8
	inc d                                            ; $7553: $14
	or a                                             ; $7554: $b7
	inc d                                            ; $7555: $14
	or [hl]                                          ; $7556: $b6
	inc d                                            ; $7557: $14
	ldh a, [$7b]                                     ; $7558: $f0 $7b
	jp z, $f398                                      ; $755a: $ca $98 $f3

	ld d, h                                          ; $755d: $54
	db $f4                                           ; $755e: $f4
	ld d, h                                          ; $755f: $54
	push af                                          ; $7560: $f5
	ld d, h                                          ; $7561: $54
	or $03                                           ; $7562: $f6 $03
	ret nz                                           ; $7564: $c0

	ld c, [hl]                                       ; $7565: $4e
	add b                                            ; $7566: $80
	sbc d                                            ; $7567: $9a
	or l                                             ; $7568: $b5
	inc d                                            ; $7569: $14
	or h                                             ; $756a: $b4
	inc d                                            ; $756b: $14
	or e                                             ; $756c: $b3
	ld a, e                                          ; $756d: $7b
	ld hl, sp+$7f                                    ; $756e: $f8 $7f
	cp [hl]                                          ; $7570: $be
	sub [hl]                                         ; $7571: $96
	db $ed                                           ; $7572: $ed
	ld d, h                                          ; $7573: $54
	xor $54                                          ; $7574: $ee $54
	rst AddAOntoHL                                          ; $7576: $ef
	ld d, h                                          ; $7577: $54
	ld e, h                                          ; $7578: $5c
	inc d                                            ; $7579: $14
	or d                                             ; $757a: $b2
	ld a, b                                          ; $757b: $78
	ld l, b                                          ; $757c: $68
	inc bc                                           ; $757d: $03
	add $63                                          ; $757e: $c6 $63
	ret nz                                           ; $7580: $c0

	sbc d                                            ; $7581: $9a
	or c                                             ; $7582: $b1
	inc d                                            ; $7583: $14
	or b                                             ; $7584: $b0
	inc d                                            ; $7585: $14
	xor a                                            ; $7586: $af
	ld [hl], e                                       ; $7587: $73
	ld b, b                                          ; $7588: $40
	sbc d                                            ; $7589: $9a
	xor [hl]                                         ; $758a: $ae
	inc d                                            ; $758b: $14
	xor l                                            ; $758c: $ad
	inc d                                            ; $758d: $14
	xor h                                            ; $758e: $ac
	ld a, e                                          ; $758f: $7b
	ld hl, sp+$7f                                    ; $7590: $f8 $7f
	jp nz, $b47f                                     ; $7592: $c2 $7f $b4

	inc bc                                           ; $7595: $03
	add $63                                          ; $7596: $c6 $63
	ret nz                                           ; $7598: $c0

	ld [hl], h                                       ; $7599: $74
	add [hl]                                         ; $759a: $86
	sbc [hl]                                         ; $759b: $9e
	xor e                                            ; $759c: $ab
	ld [hl], e                                       ; $759d: $73
	ret nz                                           ; $759e: $c0

	sub h                                            ; $759f: $94
	xor d                                            ; $75a0: $aa
	inc d                                            ; $75a1: $14
	xor c                                            ; $75a2: $a9
	inc d                                            ; $75a3: $14
	xor b                                            ; $75a4: $a8
	inc d                                            ; $75a5: $14
	and c                                            ; $75a6: $a1
	inc d                                            ; $75a7: $14
	and b                                            ; $75a8: $a0
	inc d                                            ; $75a9: $14
	sbc a                                            ; $75aa: $9f
	inc bc                                           ; $75ab: $03
	ret z                                            ; $75ac: $c8

	ld e, a                                          ; $75ad: $5f
	ret nz                                           ; $75ae: $c0

	sbc d                                            ; $75af: $9a
	ld e, a                                          ; $75b0: $5f
	sub h                                            ; $75b1: $94
	ld h, b                                          ; $75b2: $60
	sub h                                            ; $75b3: $94
	sbc [hl]                                         ; $75b4: $9e
	ld [hl], e                                       ; $75b5: $73
	ret nz                                           ; $75b6: $c0

	sbc [hl]                                         ; $75b7: $9e
	sbc b                                            ; $75b8: $98
	ld a, e                                          ; $75b9: $7b
	db $fc                                           ; $75ba: $fc
	sbc b                                            ; $75bb: $98
	sub l                                            ; $75bc: $95
	inc d                                            ; $75bd: $14
	sub h                                            ; $75be: $94
	inc d                                            ; $75bf: $14
	adc c                                            ; $75c0: $89
	inc d                                            ; $75c1: $14
	ld a, b                                          ; $75c2: $78
	inc bc                                           ; $75c3: $03
	ret z                                            ; $75c4: $c8

	ld e, a                                          ; $75c5: $5f
	ret nz                                           ; $75c6: $c0

	ld a, a                                          ; $75c7: $7f
	cp $9e                                           ; $75c8: $fe $9e
	ld l, c                                          ; $75ca: $69
	ld a, d                                          ; $75cb: $7a
	ret nz                                           ; $75cc: $c0

	ld [hl], a                                       ; $75cd: $77
	ld hl, sp-$6c                                    ; $75ce: $f8 $94
	ld e, b                                          ; $75d0: $58
	inc d                                            ; $75d1: $14
	ld c, c                                          ; $75d2: $49
	inc d                                            ; $75d3: $14
	ld c, b                                          ; $75d4: $48
	inc d                                            ; $75d5: $14
	jr c, jr_01f_75ec                                ; $75d6: $38 $14

	scf                                              ; $75d8: $37
	inc d                                            ; $75d9: $14
	inc [hl]                                         ; $75da: $34
	inc bc                                           ; $75db: $03
	ret z                                            ; $75dc: $c8

	ld d, a                                          ; $75dd: $57
	ret nz                                           ; $75de: $c0

	ld a, [hl]                                       ; $75df: $7e
	jp nz, $006f                                     ; $75e0: $c2 $6f $00

	sbc [hl]                                         ; $75e3: $9e
	inc sp                                           ; $75e4: $33
	ld [hl], e                                       ; $75e5: $73
	ld a, [$309e]                                    ; $75e6: $fa $9e $30
	ld [bc], a                                       ; $75e9: $02
	nop                                              ; $75ea: $00
	ld d, a                                          ; $75eb: $57

jr_01f_75ec:
	cp $98                                           ; $75ec: $fe $98
	add hl, hl                                       ; $75ee: $29
	inc d                                            ; $75ef: $14
	rla                                              ; $75f0: $17
	inc d                                            ; $75f1: $14
	ld d, $14                                        ; $75f2: $16 $14
	dec d                                            ; $75f4: $15
	sbc $14                                          ; $75f5: $de $14
	ld a, a                                          ; $75f7: $7f
	call z, $139e                                    ; $75f8: $cc $9e $13
	ld [hl], e                                       ; $75fb: $73
	add $9e                                          ; $75fc: $c6 $9e
	ld [de], a                                       ; $75fe: $12
	ld e, c                                          ; $75ff: $59
	ld a, d                                          ; $7600: $7a
	sub [hl]                                         ; $7601: $96
	ld a, [hl+]                                      ; $7602: $2a
	inc d                                            ; $7603: $14
	dec hl                                           ; $7604: $2b
	inc d                                            ; $7605: $14
	inc l                                            ; $7606: $2c
	inc d                                            ; $7607: $14
	dec l                                            ; $7608: $2d
	inc d                                            ; $7609: $14
	ld l, $73                                        ; $760a: $2e $73
	ldh a, [c]                                       ; $760c: $f2
	sbc h                                            ; $760d: $9c
	ld sp, $3214                                     ; $760e: $31 $14 $32
	ld [hl], e                                       ; $7611: $73
	ldh a, [c]                                       ; $7612: $f2
	sbc h                                            ; $7613: $9c
	dec [hl]                                         ; $7614: $35
	inc d                                            ; $7615: $14
	ld [hl], $73                                     ; $7616: $36 $73
	ldh a, [$9c]                                     ; $7618: $f0 $9c
	ld de, $1014                                     ; $761a: $11 $14 $10
	ld e, e                                          ; $761d: $5b
	inc c                                            ; $761e: $0c
	ld d, l                                          ; $761f: $55
	ld b, d                                          ; $7620: $42
	ld h, a                                          ; $7621: $67
	cp $84                                           ; $7622: $fe $84
	ld c, d                                          ; $7624: $4a
	inc d                                            ; $7625: $14
	ld c, e                                          ; $7626: $4b
	inc d                                            ; $7627: $14
	ld c, h                                          ; $7628: $4c
	inc d                                            ; $7629: $14
	ld c, l                                          ; $762a: $4d
	inc d                                            ; $762b: $14
	ld c, [hl]                                       ; $762c: $4e
	inc d                                            ; $762d: $14
	ld c, a                                          ; $762e: $4f
	inc d                                            ; $762f: $14
	ld d, b                                          ; $7630: $50
	inc d                                            ; $7631: $14
	ld d, c                                          ; $7632: $51
	inc d                                            ; $7633: $14
	ld d, d                                          ; $7634: $52
	inc d                                            ; $7635: $14
	ld d, e                                          ; $7636: $53
	inc d                                            ; $7637: $14
	ld d, h                                          ; $7638: $54
	inc d                                            ; $7639: $14
	ld d, l                                          ; $763a: $55
	inc d                                            ; $763b: $14
	ld d, [hl]                                       ; $763c: $56
	inc d                                            ; $763d: $14
	ld d, a                                          ; $763e: $57
	ld a, e                                          ; $763f: $7b
	ldh [c], a                                       ; $7640: $e2
	sbc h                                            ; $7641: $9c
	rrca                                             ; $7642: $0f
	inc d                                            ; $7643: $14
	call c, $0c7b                                    ; $7644: $dc $7b $0c
	ld [hl], a                                       ; $7647: $77
	ret c                                            ; $7648: $d8

	ld a, a                                          ; $7649: $7f
	inc c                                            ; $764a: $0c
	ld e, a                                          ; $764b: $5f
	call z, $0e9c                                    ; $764c: $cc $9c $0e
	inc d                                            ; $764f: $14
	dec bc                                           ; $7650: $0b
	ld h, e                                          ; $7651: $63
	db $f4                                           ; $7652: $f4
	add h                                            ; $7653: $84
	ld l, d                                          ; $7654: $6a
	inc d                                            ; $7655: $14
	ld l, e                                          ; $7656: $6b
	inc d                                            ; $7657: $14
	ld l, h                                          ; $7658: $6c
	inc d                                            ; $7659: $14
	ld l, l                                          ; $765a: $6d
	inc d                                            ; $765b: $14
	ld l, [hl]                                       ; $765c: $6e
	inc d                                            ; $765d: $14
	ld l, a                                          ; $765e: $6f
	inc d                                            ; $765f: $14
	ld [hl], b                                       ; $7660: $70
	inc d                                            ; $7661: $14
	ld [hl], c                                       ; $7662: $71
	inc d                                            ; $7663: $14
	ld [hl], d                                       ; $7664: $72
	inc d                                            ; $7665: $14
	ld [hl], e                                       ; $7666: $73
	inc d                                            ; $7667: $14
	ld [hl], h                                       ; $7668: $74
	inc d                                            ; $7669: $14
	ld [hl], l                                       ; $766a: $75
	inc d                                            ; $766b: $14
	halt                                             ; $766c: $76
	inc d                                            ; $766d: $14
	ld [hl], a                                       ; $766e: $77
	ld a, e                                          ; $766f: $7b
	ldh [c], a                                       ; $7670: $e2
	sbc h                                            ; $7671: $9c
	ld a, [bc]                                       ; $7672: $0a
	inc d                                            ; $7673: $14
	push af                                          ; $7674: $f5
	ld d, e                                          ; $7675: $53
	inc c                                            ; $7676: $0c
	ccf                                              ; $7677: $3f
	cp $8c                                           ; $7678: $fe $8c
	adc d                                            ; $767a: $8a
	inc d                                            ; $767b: $14
	adc e                                            ; $767c: $8b
	inc d                                            ; $767d: $14
	adc h                                            ; $767e: $8c
	inc d                                            ; $767f: $14
	adc l                                            ; $7680: $8d
	inc d                                            ; $7681: $14
	adc [hl]                                         ; $7682: $8e
	inc d                                            ; $7683: $14
	adc a                                            ; $7684: $8f
	inc d                                            ; $7685: $14
	sub b                                            ; $7686: $90
	inc d                                            ; $7687: $14
	sub c                                            ; $7688: $91
	inc d                                            ; $7689: $14
	sub d                                            ; $768a: $92
	inc d                                            ; $768b: $14
	sub e                                            ; $768c: $93
	ld a, e                                          ; $768d: $7b
	ld a, [$fe7f]                                    ; $768e: $fa $7f $fe
	sbc h                                            ; $7691: $9c
	sub [hl]                                         ; $7692: $96
	inc d                                            ; $7693: $14
	sub a                                            ; $7694: $97
	ld [hl], e                                       ; $7695: $73
	ldh [$9e], a                                     ; $7696: $e0 $9e
	rst AddAOntoHL                                          ; $7698: $ef
	dec hl                                           ; $7699: $2b
	ret z                                            ; $769a: $c8

	inc bc                                           ; $769b: $03
	cp $03                                           ; $769c: $fe $03
	cp $03                                           ; $769e: $fe $03
	cp $03                                           ; $76a0: $fe $03
	cp $03                                           ; $76a2: $fe $03
	cp $03                                           ; $76a4: $fe $03
	cp $03                                           ; $76a6: $fe $03
	cp $4b                                           ; $76a8: $fe $4b
	cp $9d                                           ; $76aa: $fe $9d
	add hl, bc                                       ; $76ac: $09
	jr @+$05                                         ; $76ad: $18 $03

	cp $13                                           ; $76af: $fe $13
	cp $ff                                           ; $76b1: $fe $ff
	ld a, a                                          ; $76b3: $7f
	cp [hl]                                          ; $76b4: $be
	ld [hl], a                                       ; $76b5: $77
	rra                                              ; $76b6: $1f
	add hl, sp                                       ; $76b7: $39
	add hl, de                                       ; $76b8: $19
	nop                                              ; $76b9: $00
	halt                                             ; $76ba: $76
	inc d                                            ; $76bb: $14
	scf                                              ; $76bc: $37
	jr z, jr_01f_76d2                                ; $76bd: $28 $13

	nop                                              ; $76bf: $00
	nop                                              ; $76c0: $00
	nop                                              ; $76c1: $00
	rst $38                                          ; $76c2: $ff
	ld a, a                                          ; $76c3: $7f
	ld a, e                                          ; $76c4: $7b
	ld l, a                                          ; $76c5: $6f
	sub $5a                                          ; $76c6: $d6 $5a
	ld d, d                                          ; $76c8: $52
	ld c, d                                          ; $76c9: $4a
	xor l                                            ; $76ca: $ad
	dec [hl]                                         ; $76cb: $35
	add hl, hl                                       ; $76cc: $29
	dec h                                            ; $76cd: $25
	add h                                            ; $76ce: $84
	stop                                             ; $76cf: $10 $00
	nop                                              ; $76d1: $00

jr_01f_76d2:
	rst $38                                          ; $76d2: $ff
	ld a, a                                          ; $76d3: $7f
	ld de, $a87f                                     ; $76d4: $11 $7f $a8
	ld a, [hl]                                       ; $76d7: $7e
	jr nz, @+$6c                                     ; $76d8: $20 $6a

	ldh [rAUD3LEVEL], a                              ; $76da: $e0 $1c
	and b                                            ; $76dc: $a0
	ld a, h                                          ; $76dd: $7c
	nop                                              ; $76de: $00
	ld d, b                                          ; $76df: $50
	nop                                              ; $76e0: $00
	nop                                              ; $76e1: $00
	rst $38                                          ; $76e2: $ff
	ld a, a                                          ; $76e3: $7f
	ld a, e                                          ; $76e4: $7b
	ld l, a                                          ; $76e5: $6f
	sub $5a                                          ; $76e6: $d6 $5a
	ld d, d                                          ; $76e8: $52
	ld c, d                                          ; $76e9: $4a
	xor l                                            ; $76ea: $ad
	dec [hl]                                         ; $76eb: $35
	add hl, hl                                       ; $76ec: $29
	dec h                                            ; $76ed: $25
	add h                                            ; $76ee: $84
	stop                                             ; $76ef: $10 $00
	nop                                              ; $76f1: $00
	rst $38                                          ; $76f2: $ff
	ld a, a                                          ; $76f3: $7f
	rst $38                                          ; $76f4: $ff
	ld l, e                                          ; $76f5: $6b
	ld sp, hl                                        ; $76f6: $f9
	inc bc                                           ; $76f7: $03
	rst $38                                          ; $76f8: $ff
	ld bc, $1ce0                                     ; $76f9: $01 $e0 $1c
	ld [hl], h                                       ; $76fc: $74
	inc bc                                           ; $76fd: $03
	jr nz, jr_01f_7703                               ; $76fe: $20 $03

	nop                                              ; $7700: $00
	nop                                              ; $7701: $00
	rst $38                                          ; $7702: $ff

jr_01f_7703:
	ld a, a                                          ; $7703: $7f
	ld a, e                                          ; $7704: $7b
	ld l, a                                          ; $7705: $6f
	sub $5a                                          ; $7706: $d6 $5a
	ld d, d                                          ; $7708: $52
	ld c, d                                          ; $7709: $4a
	xor l                                            ; $770a: $ad
	dec [hl]                                         ; $770b: $35
	add hl, hl                                       ; $770c: $29
	dec h                                            ; $770d: $25
	add h                                            ; $770e: $84
	stop                                             ; $770f: $10 $00
	nop                                              ; $7711: $00
	push hl                                          ; $7712: $e5
	inc bc                                           ; $7713: $03
	rst SubAFromDE                                          ; $7714: $df
	ld h, b                                          ; $7715: $60
	sbc b                                            ; $7716: $98
	pop af                                           ; $7717: $f1
	sub c                                            ; $7718: $91
	or $97                                           ; $7719: $f6 $97
	ld hl, sp-$61                                    ; $771b: $f8 $9f
	ldh a, [$7b]                                     ; $771d: $f0 $7b
	cp $80                                           ; $771f: $fe $80
	pop hl                                           ; $7721: $e1
	cp a                                             ; $7722: $bf
	ldh [c], a                                       ; $7723: $e2
	cp a                                             ; $7724: $bf
	db $e4                                           ; $7725: $e4
	cp a                                             ; $7726: $bf
	ei                                               ; $7727: $fb
	sbc a                                            ; $7728: $9f
	rst FarCall                                          ; $7729: $f7
	cp l                                             ; $772a: $bd
	ld h, [hl]                                       ; $772b: $66
	ld a, a                                          ; $772c: $7f
	ld [hl], a                                       ; $772d: $77
	ld e, l                                          ; $772e: $5d
	ld a, a                                          ; $772f: $7f
	ld a, c                                          ; $7730: $79
	rst FarCall                                          ; $7731: $f7
	call nc, $8afb                                   ; $7732: $d4 $fb $8a
	nop                                              ; $7735: $00
	nop                                              ; $7736: $00
	ldh a, [$f0]                                     ; $7737: $f0 $f0
	inc c                                            ; $7739: $0c
	db $fc                                           ; $773a: $fc
	ld h, [hl]                                       ; $773b: $66

Jump_01f_773c:
	sbc [hl]                                         ; $773c: $9e
	ld [hl+], a                                      ; $773d: $22
	sbc $ff                                          ; $773e: $de $ff
	add b                                            ; $7740: $80

Jump_01f_7741:
	rst $38                                          ; $7741: $ff
	ld bc, $3eff                                     ; $7742: $01 $ff $3e
	rst $38                                          ; $7745: $ff
	call $dcff                                       ; $7746: $cd $ff $dc
	ld [hl], a                                       ; $7749: $77
	cp $af                                           ; $774a: $fe $af
	db $ed                                           ; $774c: $ed
	sbc e                                            ; $774d: $9b
	rst $38                                          ; $774e: $ff
	sbc c                                            ; $774f: $99
	cp $9a                                           ; $7750: $fe $9a
	db $fc                                           ; $7752: $fc
	ld h, h                                          ; $7753: $64
	ld hl, sp+$08                                    ; $7754: $f8 $08
	ld sp, hl                                        ; $7756: $f9
	sbc c                                            ; $7757: $99
	rst $38                                          ; $7758: $ff
	rst SubAFromBC                                          ; $7759: $e7
	ld a, a                                          ; $775a: $7f
	ld b, e                                          ; $775b: $43
	ld a, a                                          ; $775c: $7f
	ld b, e                                          ; $775d: $43
	ccf                                              ; $775e: $3f
	ccf                                              ; $775f: $3f
	sbc e                                            ; $7760: $9b
	dec sp                                           ; $7761: $3b
	dec hl                                           ; $7762: $2b
	ld a, a                                          ; $7763: $7f
	ld a, a                                          ; $7764: $7f
	reti                                             ; $7765: $d9


	inc bc                                           ; $7766: $03
	db $dd                                           ; $7767: $dd
	rlca                                             ; $7768: $07
	rst SubAFromDE                                          ; $7769: $df
	rrca                                             ; $776a: $0f
	rst SubAFromDE                                          ; $776b: $df
	rst $38                                          ; $776c: $ff
	rst $38                                          ; $776d: $ff
	sbc $f8                                          ; $776e: $de $f8
	sbc h                                            ; $7770: $9c
	adc b                                            ; $7771: $88
	ld hl, sp-$38                                    ; $7772: $f8 $c8
	sbc $f0                                          ; $7774: $de $f0
	sub [hl]                                         ; $7776: $96
	or b                                             ; $7777: $b0
	ldh a, [rAUD1SWEEP]                              ; $7778: $f0 $10
	ld hl, sp+$08                                    ; $777a: $f8 $08
	db $fc                                           ; $777c: $fc
	adc h                                            ; $777d: $8c
	db $fc                                           ; $777e: $fc
	add h                                            ; $777f: $84
	ld a, e                                          ; $7780: $7b
	cp $9a                                           ; $7781: $fe $9a
	ld b, h                                          ; $7783: $44
	db $fc                                           ; $7784: $fc
	db $fc                                           ; $7785: $fc
	cp h                                             ; $7786: $bc
	or h                                             ; $7787: $b4
	db $dd                                           ; $7788: $dd
	db $fc                                           ; $7789: $fc
	rst SubAFromDE                                          ; $778a: $df
	cp $ff                                           ; $778b: $fe $ff
	rst SubAFromDE                                          ; $778d: $df
	rlca                                             ; $778e: $07
	add b                                            ; $778f: $80
	jr @+$21                                         ; $7790: $18 $1f

	jr nc, jr_01f_77d3                               ; $7792: $30 $3f

	ld h, b                                          ; $7794: $60
	ld a, a                                          ; $7795: $7f
	ld b, b                                          ; $7796: $40
	ld a, a                                          ; $7797: $7f
	pop bc                                           ; $7798: $c1
	cp $80                                           ; $7799: $fe $80
	rst $38                                          ; $779b: $ff
	add c                                            ; $779c: $81
	rst $38                                          ; $779d: $ff
	add [hl]                                         ; $779e: $86
	rst $38                                          ; $779f: $ff
	ld e, b                                          ; $77a0: $58
	ld a, a                                          ; $77a1: $7f
	ld h, c                                          ; $77a2: $61
	ld a, a                                          ; $77a3: $7f
	ld a, $3f                                        ; $77a4: $3e $3f
	ccf                                              ; $77a6: $3f
	inc hl                                           ; $77a7: $23
	rra                                              ; $77a8: $1f
	jr @+$11                                         ; $77a9: $18 $0f

	inc c                                            ; $77ab: $0c
	nop                                              ; $77ac: $00
	nop                                              ; $77ad: $00
	ldh [$80], a                                     ; $77ae: $e0 $80
	ldh [rAUD1SWEEP], a                              ; $77b0: $e0 $10
	ldh a, [$08]                                     ; $77b2: $f0 $08
	ld hl, sp+$04                                    ; $77b4: $f8 $04
	db $fc                                           ; $77b6: $fc
	add h                                            ; $77b7: $84
	ld a, h                                          ; $77b8: $7c
	jp nz, $fe3e                                     ; $77b9: $c2 $3e $fe

	ld a, [hl]                                       ; $77bc: $7e
	add c                                            ; $77bd: $81
	rst $38                                          ; $77be: $ff
	ld b, $fe                                        ; $77bf: $06 $fe
	add hl, sp                                       ; $77c1: $39
	rst $38                                          ; $77c2: $ff
	db $ed                                           ; $77c3: $ed
	rst FarCall                                          ; $77c4: $f7
	cp $36                                           ; $77c5: $fe $36
	db $fc                                           ; $77c7: $fc
	inc b                                            ; $77c8: $04
	ld hl, sp+$28                                    ; $77c9: $f8 $28
	ldh a, [$50]                                     ; $77cb: $f0 $50
	ld bc, $8f41                                     ; $77cd: $01 $41 $8f
	ld b, $77                                        ; $77d0: $06 $77
	nop                                              ; $77d2: $00

jr_01f_77d3:
	ld a, a                                          ; $77d3: $7f
	inc bc                                           ; $77d4: $03
	ccf                                              ; $77d5: $3f
	inc b                                            ; $77d6: $04
	rra                                              ; $77d7: $1f
	inc b                                            ; $77d8: $04
	rrca                                             ; $77d9: $0f
	dec bc                                           ; $77da: $0b
	rrca                                             ; $77db: $0f
	ld b, $07                                        ; $77dc: $06 $07
	ld bc, $f301                                     ; $77de: $01 $01 $f3
	rst SubAFromDE                                          ; $77e1: $df
	rst SubAFromBC                                          ; $77e2: $e7
	sbc b                                            ; $77e3: $98
	rra                                              ; $77e4: $1f
	ld sp, hl                                        ; $77e5: $f9
	ld b, a                                          ; $77e6: $47
	rst $38                                          ; $77e7: $ff
	dec h                                            ; $77e8: $25
	rst $38                                          ; $77e9: $ff
	and l                                            ; $77ea: $a5
	ld a, e                                          ; $77eb: $7b
	cp $91                                           ; $77ec: $fe $91
	daa                                              ; $77ee: $27
	cp $4f                                           ; $77ef: $fe $4f
	ld hl, sp-$01                                    ; $77f1: $f8 $ff
	pop af                                           ; $77f3: $f1
	ld a, [hl]                                       ; $77f4: $7e
	ld b, d                                          ; $77f5: $42
	inc a                                            ; $77f6: $3c
	inc h                                            ; $77f7: $24
	inc a                                            ; $77f8: $3c
	inc a                                            ; $77f9: $3c
	ld a, b                                          ; $77fa: $78
	ld a, b                                          ; $77fb: $78
	ld [hl], a                                       ; $77fc: $77
	ld h, d                                          ; $77fd: $62
	ld [hl], a                                       ; $77fe: $77
	ld [hl+], a                                      ; $77ff: $22
	ld a, a                                          ; $7800: $7f
	ld l, b                                          ; $7801: $68
	sbc d                                            ; $7802: $9a
	ldh a, [$d0]                                     ; $7803: $f0 $d0
	ld [hl], b                                       ; $7805: $70
	ldh a, [$60]                                     ; $7806: $f0 $60
	db $dd                                           ; $7808: $dd
	ldh [$9e], a                                     ; $7809: $e0 $9e
	jr nz, jr_01f_7880                               ; $780b: $20 $73

	ld e, h                                          ; $780d: $5c
	ld a, a                                          ; $780e: $7f
	sub a                                            ; $780f: $97
	sub [hl]                                         ; $7810: $96
	ld c, h                                          ; $7811: $4c
	ld a, $3e                                        ; $7812: $3e $3e
	ld e, $1a                                        ; $7814: $1e $1a
	rst $38                                          ; $7816: $ff
	rst $38                                          ; $7817: $ff
	ccf                                              ; $7818: $3f
	ccf                                              ; $7819: $3f
	ld sp, hl                                        ; $781a: $f9
	rst SubAFromDE                                          ; $781b: $df
	inc bc                                           ; $781c: $03
	ld a, a                                          ; $781d: $7f
	and [hl]                                         ; $781e: $a6
	sbc c                                            ; $781f: $99
	inc c                                            ; $7820: $0c
	rrca                                             ; $7821: $0f
	ld [$100f], sp                                   ; $7822: $08 $0f $10
	rra                                              ; $7825: $1f
	ld h, a                                          ; $7826: $67
	cp $9c                                           ; $7827: $fe $9c
	ld de, $0e1f                                     ; $7829: $11 $1f $0e
	ld h, e                                          ; $782c: $63
	sub d                                            ; $782d: $92
	rst SubAFromDE                                          ; $782e: $df
	ld hl, sp-$7b                                    ; $782f: $f8 $85
	add [hl]                                         ; $7831: $86
	cp $01                                           ; $7832: $fe $01
	rst $38                                          ; $7834: $ff

jr_01f_7835:
	ld b, $f9                                        ; $7835: $06 $f9
	ld [bc], a                                       ; $7837: $02
	db $fd                                           ; $7838: $fd
	rlca                                             ; $7839: $07
	rst $38                                          ; $783a: $ff
	jr @+$01                                         ; $783b: $18 $ff

	daa                                              ; $783d: $27
	rst $38                                          ; $783e: $ff
	rra                                              ; $783f: $1f
	db $fd                                           ; $7840: $fd
	ld l, a                                          ; $7841: $6f
	push af                                          ; $7842: $f5
	rst SubAFromDE                                          ; $7843: $df
	rst AddAOntoHL                                          ; $7844: $ef
	ei                                               ; $7845: $fb
	xor h                                            ; $7846: $ac
	rst $38                                          ; $7847: $ff
	add h                                            ; $7848: $84
	ld a, a                                          ; $7849: $7f
	jp $dff7                                         ; $784a: $c3 $f7 $df


	add b                                            ; $784d: $80
	rst SubAFromDE                                          ; $784e: $df
	ret nz                                           ; $784f: $c0

	adc l                                            ; $7850: $8d
	ld b, b                                          ; $7851: $40
	ret nz                                           ; $7852: $c0

	jr nz, jr_01f_7835                               ; $7853: $20 $e0

	ret nz                                           ; $7855: $c0

	ret nz                                           ; $7856: $c0

	ld c, [hl]                                       ; $7857: $4e
	adc $9f                                          ; $7858: $ce $9f
	sub c                                            ; $785a: $91
	rra                                              ; $785b: $1f
	ld de, $a2be                                     ; $785c: $11 $be $a2
	cp $fa                                           ; $785f: $fe $fa
	db $fc                                           ; $7861: $fc
	inc b                                            ; $7862: $04
	db $ed                                           ; $7863: $ed
	rst SubAFromDE                                          ; $7864: $df
	ld bc, $bc6e                                     ; $7865: $01 $6e $bc
	rst SubAFromDE                                          ; $7868: $df
	rrca                                             ; $7869: $0f
	rst $38                                          ; $786a: $ff
	sbc e                                            ; $786b: $9b
	rst $38                                          ; $786c: $ff
	db $fc                                           ; $786d: $fc
	ccf                                              ; $786e: $3f
	jr nz, @+$7d                                     ; $786f: $20 $7b

	cp $7e                                           ; $7871: $fe $7e
	db $f4                                           ; $7873: $f4
	ld a, a                                          ; $7874: $7f
	adc l                                            ; $7875: $8d
	sub b                                            ; $7876: $90
	ld a, [de]                                       ; $7877: $1a
	rra                                              ; $7878: $1f
	ld de, $303f                                     ; $7879: $11 $3f $30
	ld a, a                                          ; $787c: $7f
	ld h, d                                          ; $787d: $62
	rst $38                                          ; $787e: $ff
	add h                                            ; $787f: $84

jr_01f_7880:
	rst $38                                          ; $7880: $ff
	adc h                                            ; $7881: $8c
	rst FarCall                                          ; $7882: $f7
	rst FarCall                                          ; $7883: $f7
	rst JumpTable                                          ; $7884: $c7
	ld b, l                                          ; $7885: $45
	db $dd                                           ; $7886: $dd
	rst $38                                          ; $7887: $ff
	rst SubAFromDE                                          ; $7888: $df
	rrca                                             ; $7889: $0f
	ld a, [hl]                                       ; $788a: $7e
	cp c                                             ; $788b: $b9
	sbc [hl]                                         ; $788c: $9e
	ret z                                            ; $788d: $c8

	sbc $f8                                          ; $788e: $de $f8
	sbc c                                            ; $7890: $99
	ldh a, [$30]                                     ; $7891: $f0 $30
	ldh a, [rSVBK]                                   ; $7893: $f0 $70
	ret nz                                           ; $7895: $c0

	ret nz                                           ; $7896: $c0

	ld a, e                                          ; $7897: $7b
	sbc [hl]                                         ; $7898: $9e
	ld a, a                                          ; $7899: $7f
	sbc a                                            ; $789a: $9f
	ld [hl], e                                       ; $789b: $73
	cp $db                                           ; $789c: $fe $db
	add b                                            ; $789e: $80
	rst SubAFromDE                                          ; $789f: $df
	ret nz                                           ; $78a0: $c0

	rst SubAFromDE                                          ; $78a1: $df
	ldh a, [$6f]                                     ; $78a2: $f0 $6f
	or b                                             ; $78a4: $b0
	add b                                            ; $78a5: $80
	ld [bc], a                                       ; $78a6: $02
	inc bc                                           ; $78a7: $03
	inc b                                            ; $78a8: $04
	rlca                                             ; $78a9: $07
	inc b                                            ; $78aa: $04
	rlca                                             ; $78ab: $07
	inc a                                            ; $78ac: $3c
	daa                                              ; $78ad: $27
	ld a, [hl]                                       ; $78ae: $7e
	ld b, e                                          ; $78af: $43
	ld a, a                                          ; $78b0: $7f
	ld c, e                                          ; $78b1: $4b
	ld a, $27                                        ; $78b2: $3e $27
	rra                                              ; $78b4: $1f
	inc de                                           ; $78b5: $13
	rra                                              ; $78b6: $1f
	inc de                                           ; $78b7: $13
	rrca                                             ; $78b8: $0f
	add hl, bc                                       ; $78b9: $09
	rrca                                             ; $78ba: $0f
	rrca                                             ; $78bb: $0f
	rlca                                             ; $78bc: $07
	rlca                                             ; $78bd: $07
	inc bc                                           ; $78be: $03
	inc bc                                           ; $78bf: $03
	nop                                              ; $78c0: $00
	nop                                              ; $78c1: $00
	db $fc                                           ; $78c2: $fc
	db $fc                                           ; $78c3: $fc
	add a                                            ; $78c4: $87
	adc d                                            ; $78c5: $8a
	rst $38                                          ; $78c6: $ff
	add hl, de                                       ; $78c7: $19
	rst SubAFromBC                                          ; $78c8: $e7
	ld [$3ff7], sp                                   ; $78c9: $08 $f7 $3f
	rst $38                                          ; $78cc: $ff
	ld b, b                                          ; $78cd: $40
	rst $38                                          ; $78ce: $ff
	adc a                                            ; $78cf: $8f
	rst $38                                          ; $78d0: $ff
	inc sp                                           ; $78d1: $33
	rst $38                                          ; $78d2: $ff
	rst FarCall                                          ; $78d3: $f7
	db $dd                                           ; $78d4: $dd
	rst $38                                          ; $78d5: $ff
	ld l, e                                          ; $78d6: $6b
	cp e                                             ; $78d7: $bb
	and $ff                                          ; $78d8: $e6 $ff
	ld h, [hl]                                       ; $78da: $66
	ld a, e                                          ; $78db: $7b
	cp $9c                                           ; $78dc: $fe $9c
	add hl, de                                       ; $78de: $19
	rst $38                                          ; $78df: $ff
	sbc e                                            ; $78e0: $9b
	ld h, a                                          ; $78e1: $67
	ld b, h                                          ; $78e2: $44
	ld [hl], a                                       ; $78e3: $77
	or d                                             ; $78e4: $b2
	adc [hl]                                         ; $78e5: $8e
	ld c, h                                          ; $78e6: $4c
	call nz, $e6be                                   ; $78e7: $c4 $be $e6
	ld a, [hl]                                       ; $78ea: $7e
	jp nc, $c27e                                     ; $78eb: $d2 $7e $c2

	db $fc                                           ; $78ee: $fc
	db $e4                                           ; $78ef: $e4
	ld a, b                                          ; $78f0: $78
	ret z                                            ; $78f1: $c8

	ld hl, sp-$78                                    ; $78f2: $f8 $88
	ldh a, [hDisp1_SCY]                                     ; $78f4: $f0 $90
	ldh [$7b], a                                     ; $78f6: $e0 $7b
	inc [hl]                                         ; $78f8: $34
	sbc c                                            ; $78f9: $99
	rlca                                             ; $78fa: $07
	ld b, $07                                        ; $78fb: $06 $07
	inc b                                            ; $78fd: $04
	inc bc                                           ; $78fe: $03
	ld [bc], a                                       ; $78ff: $02
	ld a, e                                          ; $7900: $7b
	ld c, [hl]                                       ; $7901: $4e
	ld [hl], e                                       ; $7902: $73
	db $fc                                           ; $7903: $fc
	ld a, a                                          ; $7904: $7f
	cp $7b                                           ; $7905: $fe $7b
	sbc c                                            ; $7907: $99
	ld a, a                                          ; $7908: $7f
	ldh a, [$7f]                                     ; $7909: $f0 $7f
	ld b, h                                          ; $790b: $44
	sbc [hl]                                         ; $790c: $9e
	dec b                                            ; $790d: $05
	ld [hl], a                                       ; $790e: $77
	ld b, d                                          ; $790f: $42
	rst SubAFromDE                                          ; $7910: $df
	rrca                                             ; $7911: $0f
	rst SubAFromDE                                          ; $7912: $df
	ccf                                              ; $7913: $3f
	sbc c                                            ; $7914: $99
	rst $38                                          ; $7915: $ff
	di                                               ; $7916: $f3
	cp $22                                           ; $7917: $fe $22
	db $fc                                           ; $7919: $fc
	inc b                                            ; $791a: $04
	ld [hl], a                                       ; $791b: $77
	cp $97                                           ; $791c: $fe $97
	ld hl, sp+$58                                    ; $791e: $f8 $58
	ld hl, sp+$08                                    ; $7920: $f8 $08
	ld hl, sp+$28                                    ; $7922: $f8 $28
	ld hl, sp+$48                                    ; $7924: $f8 $48
	ld a, e                                          ; $7926: $7b
	cp $df                                           ; $7927: $fe $df
	ld hl, sp-$62                                    ; $7929: $f8 $9e
	add sp, $76                                      ; $792b: $e8 $76
	inc b                                            ; $792d: $04
	rst SubAFromDE                                          ; $792e: $df
	rst $38                                          ; $792f: $ff
	rst SubAFromDE                                          ; $7930: $df
	add b                                            ; $7931: $80
	ld e, a                                          ; $7932: $5f
	ld c, $7f                                        ; $7933: $0e $7f
	jp $b57b                                         ; $7935: $c3 $7b $b5


	ld a, e                                          ; $7938: $7b
	cp $7f                                           ; $7939: $fe $7f
	ld a, [$03de]                                    ; $793b: $fa $de $03
	ld a, e                                          ; $793e: $7b
	or [hl]                                          ; $793f: $b6
	ld h, [hl]                                       ; $7940: $66
	ld [hl], $df                                     ; $7941: $36 $df
	ld a, [hl]                                       ; $7943: $7e
	ld a, [hl]                                       ; $7944: $7e
	inc c                                            ; $7945: $0c
	ld a, [hl]                                       ; $7946: $7e
	ld sp, hl                                        ; $7947: $f9
	ld [hl], a                                       ; $7948: $77
	cp $8b                                           ; $7949: $fe $8b
	dec b                                            ; $794b: $05
	ld a, [$f906]                                    ; $794c: $fa $06 $f9
	dec b                                            ; $794f: $05
	ld a, [rIF]                                    ; $7950: $fa $0f $ff
	ret nz                                           ; $7953: $c0

	rst $38                                          ; $7954: $ff
	rst $38                                          ; $7955: $ff
	cp a                                             ; $7956: $bf
	rst $38                                          ; $7957: $ff
	ld e, h                                          ; $7958: $5c
	rst AddAOntoHL                                          ; $7959: $ef
	jr c, @+$01                                      ; $795a: $38 $ff

	adc d                                            ; $795c: $8a
	rst $38                                          ; $795d: $ff
	rst JumpTable                                          ; $795e: $c7
	ld l, a                                          ; $795f: $6f
	ld h, d                                          ; $7960: $62
	ld [hl], a                                       ; $7961: $77
	dec bc                                           ; $7962: $0b
	ld a, [hl]                                       ; $7963: $7e
	and [hl]                                         ; $7964: $a6
	ld a, a                                          ; $7965: $7f
	cp $9e                                           ; $7966: $fe $9e
	jr c, jr_01f_79e5                                ; $7968: $38 $7b

	and e                                            ; $796a: $a3
	sbc [hl]                                         ; $796b: $9e
	sub b                                            ; $796c: $90
	ld [hl], d                                       ; $796d: $72
	inc [hl]                                         ; $796e: $34
	sbc [hl]                                         ; $796f: $9e
	and b                                            ; $7970: $a0
	ld [hl], d                                       ; $7971: $72
	cpl                                              ; $7972: $2f
	rst SubAFromDE                                          ; $7973: $df
	ret nz                                           ; $7974: $c0

	ld l, d                                          ; $7975: $6a
	or h                                             ; $7976: $b4
	ld a, a                                          ; $7977: $7f
	xor c                                            ; $7978: $a9
	sbc [hl]                                         ; $7979: $9e
	dec b                                            ; $797a: $05
	ld a, d                                          ; $797b: $7a
	ld b, c                                          ; $797c: $41
	sbc l                                            ; $797d: $9d
	add hl, bc                                       ; $797e: $09
	rlca                                             ; $797f: $07
	ld a, d                                          ; $7980: $7a
	ld c, [hl]                                       ; $7981: $4e
	db $dd                                           ; $7982: $dd
	ld bc, $8a67                                     ; $7983: $01 $67 $8a
	rst SubAFromDE                                          ; $7986: $df
	rlca                                             ; $7987: $07
	sbc c                                            ; $7988: $99
	rst $38                                          ; $7989: $ff
	ld a, c                                          ; $798a: $79
	rst $38                                          ; $798b: $ff
	ld de, $82fe                                     ; $798c: $11 $fe $82
	ld [hl], a                                       ; $798f: $77
	cp $97                                           ; $7990: $fe $97
	db $fc                                           ; $7992: $fc
	call nc, $84fc                                   ; $7993: $d4 $fc $84
	cp $1a                                           ; $7996: $fe $1a
	cp $12                                           ; $7998: $fe $12
	ld [hl], a                                       ; $799a: $77
	cp $7b                                           ; $799b: $fe $7b
	ld h, d                                          ; $799d: $62
	sbc [hl]                                         ; $799e: $9e
	or [hl]                                          ; $799f: $b6
	ld [hl], a                                       ; $79a0: $77
	ld h, b                                          ; $79a1: $60
	ld [hl], l                                       ; $79a2: $75
	call c, $0fdf                                    ; $79a3: $dc $df $0f
	ld a, [hl]                                       ; $79a6: $7e
	inc d                                            ; $79a7: $14
	ld a, [hl]                                       ; $79a8: $7e
	add e                                            ; $79a9: $83
	add b                                            ; $79aa: $80
	inc e                                            ; $79ab: $1c
	inc de                                           ; $79ac: $13
	inc h                                            ; $79ad: $24
	dec sp                                           ; $79ae: $3b
	ld a, h                                          ; $79af: $7c
	ld a, e                                          ; $79b0: $7b
	adc [hl]                                         ; $79b1: $8e
	rst $38                                          ; $79b2: $ff
	ld [hl], c                                       ; $79b3: $71
	ld a, a                                          ; $79b4: $7f
	ld e, $1f                                        ; $79b5: $1e $1f
	rra                                              ; $79b7: $1f
	dec d                                            ; $79b8: $15

jr_01f_79b9:
	rra                                              ; $79b9: $1f
	ld e, $3b                                        ; $79ba: $1e $3b
	ld h, $3f                                        ; $79bc: $26 $3f
	inc h                                            ; $79be: $24
	rra                                              ; $79bf: $1f
	db $10                                           ; $79c0: $10
	rrca                                             ; $79c1: $0f
	ld [rRAMG], sp                                   ; $79c2: $08 $00 $00
	ret nz                                           ; $79c5: $c0

	ret nz                                           ; $79c6: $c0

	jr nc, jr_01f_79b9                               ; $79c7: $30 $f0

	ret z                                            ; $79c9: $c8

	sbc c                                            ; $79ca: $99
	ld hl, sp+$24                                    ; $79cb: $f8 $24
	db $fc                                           ; $79cd: $fc
	ld a, [de]                                       ; $79ce: $1a
	cp $06                                           ; $79cf: $fe $06
	ld a, c                                          ; $79d1: $79
	ld a, [$547f]                                    ; $79d2: $fa $7f $54
	sub b                                            ; $79d5: $90
	rst JumpTable                                          ; $79d6: $c7
	rst $38                                          ; $79d7: $ff
	push bc                                          ; $79d8: $c5
	rst $38                                          ; $79d9: $ff
	ld [hl], d                                       ; $79da: $72
	cp $ec                                           ; $79db: $fe $ec
	cp h                                             ; $79dd: $bc
	db $e4                                           ; $79de: $e4
	inc a                                            ; $79df: $3c
	ret z                                            ; $79e0: $c8

	ld a, b                                          ; $79e1: $78
	ldh a, [$f0]                                     ; $79e2: $f0 $f0
	rlca                                             ; $79e4: $07

jr_01f_79e5:
	ld a, d                                          ; $79e5: $7a
	push af                                          ; $79e6: $f5
	rst SubAFromDE                                          ; $79e7: $df
	scf                                              ; $79e8: $37
	adc e                                            ; $79e9: $8b
	rst AddAOntoHL                                          ; $79ea: $ef
	rst SubAFromDE                                          ; $79eb: $df
	ld c, a                                          ; $79ec: $4f
	cp e                                             ; $79ed: $bb
	adc a                                            ; $79ee: $8f
	rst $38                                          ; $79ef: $ff
	call c, $38ff                                    ; $79f0: $dc $ff $38
	ccf                                              ; $79f3: $3f
	ld a, [bc]                                       ; $79f4: $0a
	rrca                                             ; $79f5: $0f
	ld a, [bc]                                       ; $79f6: $0a
	rrca                                             ; $79f7: $0f
	dec c                                            ; $79f8: $0d
	rrca                                             ; $79f9: $0f
	rra                                              ; $79fa: $1f
	rra                                              ; $79fb: $1f
	ld a, [de]                                       ; $79fc: $1a
	ld e, $7a                                        ; $79fd: $1e $7a
	db $e4                                           ; $79ff: $e4
	sbc c                                            ; $7a00: $99
	rst $38                                          ; $7a01: $ff
	inc bc                                           ; $7a02: $03
	inc bc                                           ; $7a03: $03
	ret nz                                           ; $7a04: $c0

	ret nz                                           ; $7a05: $c0

	and b                                            ; $7a06: $a0
	ld a, e                                          ; $7a07: $7b
	ld c, b                                          ; $7a08: $48
	db $dd                                           ; $7a09: $dd
	ret nz                                           ; $7a0a: $c0

	ld [hl], a                                       ; $7a0b: $77
	ld a, $7f                                        ; $7a0c: $3e $7f
	or [hl]                                          ; $7a0e: $b6
	ld a, l                                          ; $7a0f: $7d
	ld [hl], e                                       ; $7a10: $73
	ld [hl], a                                       ; $7a11: $77
	cp $df                                           ; $7a12: $fe $df
	ldh a, [$9e]                                     ; $7a14: $f0 $9e
	ret nc                                           ; $7a16: $d0

	call c, $dff0                                    ; $7a17: $dc $f0 $df
	ld hl, sp+$0f                                    ; $7a1a: $f8 $0f
	add b                                            ; $7a1c: $80
	sbc l                                            ; $7a1d: $9d
	rra                                              ; $7a1e: $1f
	add hl, de                                       ; $7a1f: $19
	rlca                                             ; $7a20: $07
	add b                                            ; $7a21: $80
	ld a, h                                          ; $7a22: $7c
	cp b                                             ; $7a23: $b8
	sbc b                                            ; $7a24: $98
	ld e, [hl]                                       ; $7a25: $5e
	ld h, a                                          ; $7a26: $67
	ld e, a                                          ; $7a27: $5f
	ld h, e                                          ; $7a28: $63
	cpl                                              ; $7a29: $2f
	ccf                                              ; $7a2a: $3f
	inc e                                            ; $7a2b: $1c
	ld a, e                                          ; $7a2c: $7b
	db $d3                                           ; $7a2d: $d3
	ld a, [hl]                                       ; $7a2e: $7e
	add hl, bc                                       ; $7a2f: $09
	ld a, a                                          ; $7a30: $7f
	or [hl]                                          ; $7a31: $b6
	sbc [hl]                                         ; $7a32: $9e
	dec de                                           ; $7a33: $1b
	ld a, c                                          ; $7a34: $79
	ld c, b                                          ; $7a35: $48
	halt                                             ; $7a36: $76
	ld [$6064], sp                                   ; $7a37: $08 $64 $60
	ld [hl], a                                       ; $7a3a: $77
	adc d                                            ; $7a3b: $8a
	ld a, a                                          ; $7a3c: $7f
	db $fc                                           ; $7a3d: $fc
	ld l, a                                          ; $7a3e: $6f
	add b                                            ; $7a3f: $80
	ld h, l                                          ; $7a40: $65
	jp z, $c0dd                                      ; $7a41: $ca $dd $c0

	ld l, a                                          ; $7a44: $6f
	or $45                                           ; $7a45: $f6 $45
	ld l, d                                          ; $7a47: $6a
	ld a, [hl]                                       ; $7a48: $7e
	cp c                                             ; $7a49: $b9
	ld [hl], l                                       ; $7a4a: $75
	adc $6f                                          ; $7a4b: $ce $6f
	ldh a, [c]                                       ; $7a4d: $f2
	ld e, [hl]                                       ; $7a4e: $5e
	ld h, b                                          ; $7a4f: $60
	sbc [hl]                                         ; $7a50: $9e
	adc c                                            ; $7a51: $89
	ld a, b                                          ; $7a52: $78
	ld c, h                                          ; $7a53: $4c
	adc b                                            ; $7a54: $88
	pop hl                                           ; $7a55: $e1
	sbc a                                            ; $7a56: $9f
	jr nz, @-$1f                                     ; $7a57: $20 $df

	ldh [$df], a                                     ; $7a59: $e0 $df
	ld [hl], b                                       ; $7a5b: $70
	rst $38                                          ; $7a5c: $ff
	adc h                                            ; $7a5d: $8c
	rst $38                                          ; $7a5e: $ff
	or $ff                                           ; $7a5f: $f6 $ff
	cp $af                                           ; $7a61: $fe $af
	ei                                               ; $7a63: $fb
	rst FarCall                                          ; $7a64: $f7
	rst SubAFromDE                                          ; $7a65: $df
	dec [hl]                                         ; $7a66: $35
	rst $38                                          ; $7a67: $ff
	ld hl, $83fe                                     ; $7a68: $21 $fe $83
	rst $38                                          ; $7a6b: $ff
	ld [hl], c                                       ; $7a6c: $71
	nop                                              ; $7a6d: $00
	halt                                             ; $7a6e: $76
	ld h, b                                          ; $7a6f: $60
	ld a, a                                          ; $7a70: $7f
	sbc d                                            ; $7a71: $9a
	ld a, a                                          ; $7a72: $7f
	ld l, $7f                                        ; $7a73: $2e $7f
	ld e, b                                          ; $7a75: $58
	ld a, l                                          ; $7a76: $7d
	rst $38                                          ; $7a77: $ff
	ld a, a                                          ; $7a78: $7f
	cp $7e                                           ; $7a79: $fe $7e
	ld e, h                                          ; $7a7b: $5c
	ld a, l                                          ; $7a7c: $7d
	ei                                               ; $7a7d: $fb
	halt                                             ; $7a7e: $76
	ld e, h                                          ; $7a7f: $5c
	ld [hl], a                                       ; $7a80: $77
	adc b                                            ; $7a81: $88
	ld a, a                                          ; $7a82: $7f
	inc b                                            ; $7a83: $04
	db $dd                                           ; $7a84: $dd
	ld bc, $1076                                     ; $7a85: $01 $76 $10

jr_01f_7a88:
	ld l, d                                          ; $7a88: $6a
	ld h, b                                          ; $7a89: $60
	sbc h                                            ; $7a8a: $9c
	dec b                                            ; $7a8b: $05
	ld b, $06                                        ; $7a8c: $06 $06
	ld e, [hl]                                       ; $7a8e: $5e
	ld h, h                                          ; $7a8f: $64
	db $fd                                           ; $7a90: $fd
	adc c                                            ; $7a91: $89
	inc a                                            ; $7a92: $3c
	rst $38                                          ; $7a93: $ff
	ret nc                                           ; $7a94: $d0

	rst $38                                          ; $7a95: $ff
	ld hl, sp-$01                                    ; $7a96: $f8 $ff
	add $c7                                          ; $7a98: $c6 $c7
	inc b                                            ; $7a9a: $04
	rlca                                             ; $7a9b: $07
	sbc b                                            ; $7a9c: $98
	sbc a                                            ; $7a9d: $9f
	jr nz, jr_01f_7adf                               ; $7a9e: $20 $3f

	ld b, e                                          ; $7aa0: $43
	ld a, a                                          ; $7aa1: $7f
	ld b, a                                          ; $7aa2: $47
	ld a, a                                          ; $7aa3: $7f
	ld c, h                                          ; $7aa4: $4c
	ld a, h                                          ; $7aa5: $7c
	jr c, @+$3a                                      ; $7aa6: $38 $38

	db $dd                                           ; $7aa8: $dd
	ld hl, sp+$64                                    ; $7aa9: $f8 $64
	ld b, b                                          ; $7aab: $40
	adc l                                            ; $7aac: $8d
	ret c                                            ; $7aad: $d8

	ld hl, sp-$38                                    ; $7aae: $f8 $c8
	cp b                                             ; $7ab0: $b8
	ret z                                            ; $7ab1: $c8

	cp b                                             ; $7ab2: $b8
	ld l, b                                          ; $7ab3: $68
	ret c                                            ; $7ab4: $d8

	jr nc, @-$0e                                     ; $7ab5: $30 $f0

	db $fc                                           ; $7ab7: $fc
	db $fc                                           ; $7ab8: $fc
	adc [hl]                                         ; $7ab9: $8e
	cp $9f                                           ; $7aba: $fe $9f
	rst $38                                          ; $7abc: $ff
	ld [hl], e                                       ; $7abd: $73
	ld [hl], e                                       ; $7abe: $73
	db $fd                                           ; $7abf: $fd
	rst SubAFromDE                                          ; $7ac0: $df
	ld a, a                                          ; $7ac1: $7f
	ld d, a                                          ; $7ac2: $57
	ld b, d                                          ; $7ac3: $42
	rst SubAFromDE                                          ; $7ac4: $df
	inc a                                            ; $7ac5: $3c
	sbc l                                            ; $7ac6: $9d
	ld a, [hl]                                       ; $7ac7: $7e
	ld b, d                                          ; $7ac8: $42
	ld a, d                                          ; $7ac9: $7a
	push hl                                          ; $7aca: $e5
	sbc d                                            ; $7acb: $9a
	add c                                            ; $7acc: $81
	ld a, [hl]                                       ; $7acd: $7e
	ld b, d                                          ; $7ace: $42
	inc a                                            ; $7acf: $3c
	inc a                                            ; $7ad0: $3c
	di                                               ; $7ad1: $f3
	rst SubAFromDE                                          ; $7ad2: $df
	db $10                                           ; $7ad3: $10
	sbc c                                            ; $7ad4: $99
	jr c, jr_01f_7aff                                ; $7ad5: $38 $28

	inc a                                            ; $7ad7: $3c
	inc h                                            ; $7ad8: $24
	inc e                                            ; $7ad9: $1c
	inc e                                            ; $7ada: $1c
	rst FarCall                                          ; $7adb: $f7
	rst SubAFromDE                                          ; $7adc: $df
	jr jr_01f_7b5a                                   ; $7add: $18 $7b

jr_01f_7adf:
	ldh a, [$9c]                                     ; $7adf: $f0 $9c
	inc d                                            ; $7ae1: $14
	inc c                                            ; $7ae2: $0c
	inc c                                            ; $7ae3: $0c
	push af                                          ; $7ae4: $f5
	rst SubAFromDE                                          ; $7ae5: $df
	ld [hl], b                                       ; $7ae6: $70
	ld a, l                                          ; $7ae7: $7d
	ld [de], a                                       ; $7ae8: $12
	rst SubAFromDE                                          ; $7ae9: $df
	ld h, b                                          ; $7aea: $60
	rst FarCall                                          ; $7aeb: $f7
	rst SubAFromDE                                          ; $7aec: $df
	jr nc, jr_01f_7a88                               ; $7aed: $30 $99

	ld a, b                                          ; $7aef: $78
	ld c, b                                          ; $7af0: $48
	ld [hl], b                                       ; $7af1: $70
	ld d, b                                          ; $7af2: $50
	jr nz, jr_01f_7b15                               ; $7af3: $20 $20

	ldh [$bf], a                                     ; $7af5: $e0 $bf
	rst $38                                          ; $7af7: $ff
	rst $38                                          ; $7af8: $ff
	rst $38                                          ; $7af9: $ff
	rst $38                                          ; $7afa: $ff
	rst $38                                          ; $7afb: $ff
	rst $38                                          ; $7afc: $ff
	rst $38                                          ; $7afd: $ff
	rst $38                                          ; $7afe: $ff

jr_01f_7aff:
	rst $38                                          ; $7aff: $ff
	rst $38                                          ; $7b00: $ff
	rst $38                                          ; $7b01: $ff
	rst $38                                          ; $7b02: $ff
	rst $38                                          ; $7b03: $ff

Call_01f_7b04:
	rst $38                                          ; $7b04: $ff
	rst $38                                          ; $7b05: $ff
	rst $38                                          ; $7b06: $ff
	rst $38                                          ; $7b07: $ff
	rst $38                                          ; $7b08: $ff
	rst $38                                          ; $7b09: $ff
	rst $38                                          ; $7b0a: $ff
	rst $38                                          ; $7b0b: $ff
	rst $38                                          ; $7b0c: $ff
	rst $38                                          ; $7b0d: $ff
	rst $38                                          ; $7b0e: $ff
	rst $38                                          ; $7b0f: $ff
	rst $38                                          ; $7b10: $ff
	rst $38                                          ; $7b11: $ff
	rst $38                                          ; $7b12: $ff
	rst $38                                          ; $7b13: $ff
	rst $38                                          ; $7b14: $ff

jr_01f_7b15:
	rst $38                                          ; $7b15: $ff
	rst $38                                          ; $7b16: $ff
	rst $38                                          ; $7b17: $ff
	rst $38                                          ; $7b18: $ff
	rst $38                                          ; $7b19: $ff
	rst $38                                          ; $7b1a: $ff
	rst $38                                          ; $7b1b: $ff
	rst $38                                          ; $7b1c: $ff
	rst $38                                          ; $7b1d: $ff
	rst $38                                          ; $7b1e: $ff
	rst $38                                          ; $7b1f: $ff
	rst $38                                          ; $7b20: $ff
	rst $38                                          ; $7b21: $ff
	rst $38                                          ; $7b22: $ff
	rst $38                                          ; $7b23: $ff
	rst $38                                          ; $7b24: $ff
	rst $38                                          ; $7b25: $ff
	rst $38                                          ; $7b26: $ff
	rst $38                                          ; $7b27: $ff
	rst $38                                          ; $7b28: $ff
	rst $38                                          ; $7b29: $ff
	rst $38                                          ; $7b2a: $ff
	rst $38                                          ; $7b2b: $ff
	rst $38                                          ; $7b2c: $ff
	rst $38                                          ; $7b2d: $ff
	rst $38                                          ; $7b2e: $ff
	rst $38                                          ; $7b2f: $ff
	rst $38                                          ; $7b30: $ff
	rst $38                                          ; $7b31: $ff
	rst $38                                          ; $7b32: $ff
	rst $38                                          ; $7b33: $ff
	rst $38                                          ; $7b34: $ff
	rst $38                                          ; $7b35: $ff
	rst $38                                          ; $7b36: $ff
	rst $38                                          ; $7b37: $ff
	rst $38                                          ; $7b38: $ff
	rst $38                                          ; $7b39: $ff
	rst $38                                          ; $7b3a: $ff
	rst $38                                          ; $7b3b: $ff
	rst $38                                          ; $7b3c: $ff
	rst $38                                          ; $7b3d: $ff
	rst $38                                          ; $7b3e: $ff
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

jr_01f_7b5a:
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

Call_01f_7e7f:
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
	rst $38                                          ; $7ff7: $ff
	rst $38                                          ; $7ff8: $ff
	rst $38                                          ; $7ff9: $ff
	rst $38                                          ; $7ffa: $ff
	rst $38                                          ; $7ffb: $ff
	rst $38                                          ; $7ffc: $ff
	rst $38                                          ; $7ffd: $ff
	rst $38                                          ; $7ffe: $ff
	rst $38                                          ; $7fff: $ff
