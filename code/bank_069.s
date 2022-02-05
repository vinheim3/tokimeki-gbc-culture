; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $069", ROMX[$4000], BANK[$69]

	or c                                             ; $4000: $b1
	ld d, c                                          ; $4001: $51
	ld [hl], c                                       ; $4002: $71
	pop de                                           ; $4003: $d1
	ld [hl], c                                       ; $4004: $71
	pop de                                           ; $4005: $d1
	ld [hl], b                                       ; $4006: $70
	ret nc                                           ; $4007: $d0

	ld d, b                                          ; $4008: $50
	ldh a, [$7f]                                     ; $4009: $f0 $7f
	cp $80                                           ; $400b: $fe $80
	add hl, sp                                       ; $400d: $39
	ld l, l                                          ; $400e: $6d
	ld a, c                                          ; $400f: $79
	call $c77d                                       ; $4010: $cd $7d $c7
	db $fd                                           ; $4013: $fd
	add a                                            ; $4014: $87
	ld a, l                                          ; $4015: $7d
	add a                                            ; $4016: $87
	ld [hl], e                                       ; $4017: $73
	cp $8f                                           ; $4018: $fe $8f
	cp $fb                                           ; $401a: $fe $fb
	ld b, $df                                        ; $401c: $06 $df
	inc a                                            ; $401e: $3c
	di                                               ; $401f: $f3
	ld a, [hl]                                       ; $4020: $7e
	ldh [c], a                                       ; $4021: $e2
	di                                               ; $4022: $f3
	cp [hl]                                          ; $4023: $be
	rst $38                                          ; $4024: $ff
	ld l, $bf                                        ; $4025: $2e $bf
	and a                                            ; $4027: $a7
	ld a, $b2                                        ; $4028: $3e $b2
	ld a, [de]                                       ; $402a: $1a
	db $dd                                           ; $402b: $dd
	sbc e                                            ; $402c: $9b
	ld c, $7f                                        ; $402d: $0e $7f
	add b                                            ; $402f: $80
	rst $38                                          ; $4030: $ff
	ld a, e                                          ; $4031: $7b
	cp $83                                           ; $4032: $fe $83
	cp a                                             ; $4034: $bf
	ret nz                                           ; $4035: $c0

	ld a, a                                          ; $4036: $7f
	ld b, b                                          ; $4037: $40
	ld e, a                                          ; $4038: $5f
	ld h, b                                          ; $4039: $60
	ld a, a                                          ; $403a: $7f
	ld h, b                                          ; $403b: $60
	rst AddAOntoHL                                          ; $403c: $ef
	ldh a, [$d7]                                     ; $403d: $f0 $d7
	ret c                                            ; $403f: $d8

	db $db                                           ; $4040: $db
	call c, $9e9d                                    ; $4041: $dc $9d $9e
	ld a, [de]                                       ; $4044: $1a
	dec de                                           ; $4045: $1b
	add hl, bc                                       ; $4046: $09
	add hl, bc                                       ; $4047: $09
	adc b                                            ; $4048: $88
	adc b                                            ; $4049: $88
	rra                                              ; $404a: $1f
	rra                                              ; $404b: $1f
	pop hl                                           ; $404c: $e1
	rst $38                                          ; $404d: $ff
	ret c                                            ; $404e: $d8

	ld d, b                                          ; $404f: $50
	ld a, e                                          ; $4050: $7b
	cp $8d                                           ; $4051: $fe $8d
	ld [hl], b                                       ; $4053: $70
	ld hl, sp+$30                                    ; $4054: $f8 $30
	cp h                                             ; $4056: $bc
	db $10                                           ; $4057: $10
	inc e                                            ; $4058: $1c
	ld [$000c], sp                                   ; $4059: $08 $0c $00
	nop                                              ; $405c: $00
	ld bc, $0182                                     ; $405d: $01 $82 $01
	add e                                            ; $4060: $83
	nop                                              ; $4061: $00
	add e                                            ; $4062: $83
	nop                                              ; $4063: $00
	add c                                            ; $4064: $81
	ld a, [$1080]                                    ; $4065: $fa $80 $10
	nop                                              ; $4068: $00
	or [hl]                                          ; $4069: $b6
	db $e3                                           ; $406a: $e3
	or l                                             ; $406b: $b5
	db $e3                                           ; $406c: $e3
	db $e3                                           ; $406d: $e3
	ld b, c                                          ; $406e: $41
	ld h, d                                          ; $406f: $62
	ld b, c                                          ; $4070: $41
	ld h, b                                          ; $4071: $60
	ld e, a                                          ; $4072: $5f
	rra                                              ; $4073: $1f
	ld a, a                                          ; $4074: $7f
	ld h, c                                          ; $4075: $61
	cp $9f                                           ; $4076: $fe $9f
	ldh [$7f], a                                     ; $4078: $e0 $7f
	cp h                                             ; $407a: $bc
	rst SubAFromBC                                          ; $407b: $e7
	ld l, [hl]                                       ; $407c: $6e
	and a                                            ; $407d: $a7
	rst SubAFromBC                                          ; $407e: $e7
	ccf                                              ; $407f: $3f
	cp a                                             ; $4080: $bf
	ld a, [hl-]                                      ; $4081: $3a
	ccf                                              ; $4082: $3f
	dec hl                                           ; $4083: $2b
	ld a, $25                                        ; $4084: $3e $25
	sbc h                                            ; $4086: $9c
	ld [hl], $5c                                     ; $4087: $36 $5c
	ccf                                              ; $4089: $3f
	ld a, e                                          ; $408a: $7b
	call $009d                                       ; $408b: $cd $9d $00
	inc bc                                           ; $408e: $03
	ld a, e                                          ; $408f: $7b
	cp $9e                                           ; $4090: $fe $9e
	rlca                                             ; $4092: $07
	ld a, e                                          ; $4093: $7b
	cp $80                                           ; $4094: $fe $80
	rrca                                             ; $4096: $0f
	ld bc, $030f                                     ; $4097: $01 $0f $03

jr_069_409a:
	rra                                              ; $409a: $1f
	rlca                                             ; $409b: $07
	ccf                                              ; $409c: $3f
	rrca                                             ; $409d: $0f
	ld a, a                                          ; $409e: $7f
	ld e, $bf                                        ; $409f: $1e $bf
	ld a, h                                          ; $40a1: $7c
	rst $38                                          ; $40a2: $ff
	ldh a, [rIE]                                     ; $40a3: $f0 $ff
	nop                                              ; $40a5: $00

jr_069_40a6:
	rst $38                                          ; $40a6: $ff
	nop                                              ; $40a7: $00
	ld a, a                                          ; $40a8: $7f
	inc bc                                           ; $40a9: $03
	ld d, b                                          ; $40aa: $50
	rst $38                                          ; $40ab: $ff
	ld b, b                                          ; $40ac: $40
	rst $38                                          ; $40ad: $ff
	jr z, @+$01                                      ; $40ae: $28 $ff

	xor b                                            ; $40b0: $a8
	rst $38                                          ; $40b1: $ff
	and b                                            ; $40b2: $a0
	rst $38                                          ; $40b3: $ff
	and h                                            ; $40b4: $a4
	adc a                                            ; $40b5: $8f
	rst $38                                          ; $40b6: $ff
	push de                                          ; $40b7: $d5
	rst $38                                          ; $40b8: $ff
	ld d, l                                          ; $40b9: $55
	rst $38                                          ; $40ba: $ff
	pop de                                           ; $40bb: $d1
	ld a, a                                          ; $40bc: $7f
	and c                                            ; $40bd: $a1
	ld l, a                                          ; $40be: $6f
	and b                                            ; $40bf: $a0
	ld l, a                                          ; $40c0: $6f
	and b                                            ; $40c1: $a0
	rst $38                                          ; $40c2: $ff
	ldh [$36], a                                     ; $40c3: $e0 $36
	ret nc                                           ; $40c5: $d0

	ld l, a                                          ; $40c6: $6f
	cp $93                                           ; $40c7: $fe $93
	ccf                                              ; $40c9: $3f
	ldh a, [$3f]                                     ; $40ca: $f0 $3f
	or h                                             ; $40cc: $b4
	ld a, a                                          ; $40cd: $7f
	ret nc                                           ; $40ce: $d0

	ld e, a                                          ; $40cf: $5f
	ld d, b                                          ; $40d0: $50
	rst SubAFromDE                                          ; $40d1: $df
	sub b                                            ; $40d2: $90
	sbc a                                            ; $40d3: $9f
	sub h                                            ; $40d4: $94
	ld h, e                                          ; $40d5: $63
	cp $95                                           ; $40d6: $fe $95
	adc h                                            ; $40d8: $8c
	adc a                                            ; $40d9: $8f
	adc c                                            ; $40da: $89
	adc a                                            ; $40db: $8f
	ret                                              ; $40dc: $c9


	ld c, a                                          ; $40dd: $4f
	ld sp, hl                                        ; $40de: $f9
	rst $38                                          ; $40df: $ff
	ld sp, hl                                        ; $40e0: $f9
	rrca                                             ; $40e1: $0f
	ld b, $e0                                        ; $40e2: $06 $e0
	ld e, a                                          ; $40e4: $5f
	nop                                              ; $40e5: $00
	adc c                                            ; $40e6: $89
	ld [hl], d                                       ; $40e7: $72
	rst $38                                          ; $40e8: $ff
	adc [hl]                                         ; $40e9: $8e
	rst $38                                          ; $40ea: $ff
	ld a, [$fe07]                                    ; $40eb: $fa $07 $fe
	ld bc, $00ff                                     ; $40ee: $01 $ff $00
	db $dd                                           ; $40f1: $dd
	ld a, $72                                        ; $40f2: $3e $72
	di                                               ; $40f4: $f3
	or $ff                                           ; $40f5: $f6 $ff
	ld l, $ff                                        ; $40f7: $2e $ff
	or d                                             ; $40f9: $b2
	ld a, [hl-]                                      ; $40fa: $3a
	db $fd                                           ; $40fb: $fd
	ld e, $5f                                        ; $40fc: $1e $5f
	jr nz, jr_069_409a                               ; $40fe: $20 $9a

	sbc h                                            ; $4100: $9c
	ld [$008d], sp                                   ; $4101: $08 $8d $00
	ld [bc], a                                       ; $4104: $02
	ld h, e                                          ; $4105: $63
	jr nz, jr_069_40a6                               ; $4106: $20 $9e

	add b                                            ; $4108: $80
	daa                                              ; $4109: $27
	jr nz, jr_069_418a                               ; $410a: $20 $7e

	jp nc, $0096                                     ; $410c: $d2 $96 $00

	cp l                                             ; $410f: $bd
	ld a, [hl]                                       ; $4110: $7e
	ld h, [hl]                                       ; $4111: $66
	rst SubAFromBC                                          ; $4112: $e7
	cp e                                             ; $4113: $bb
	rst $38                                          ; $4114: $ff
	ld a, [hl+]                                      ; $4115: $2a
	ccf                                              ; $4116: $3f
	ld [hl], a                                       ; $4117: $77
	jr nz, jr_069_4121                               ; $4118: $20 $07

	ld b, b                                          ; $411a: $40
	dec hl                                           ; $411b: $2b
	ld h, b                                          ; $411c: $60
	ld [hl], e                                       ; $411d: $73
	cp $27                                           ; $411e: $fe $27
	ld h, b                                          ; $4120: $60

jr_069_4121:
	ld a, a                                          ; $4121: $7f
	cp $9a                                           ; $4122: $fe $9a
	di                                               ; $4124: $f3
	nop                                              ; $4125: $00
	cp a                                             ; $4126: $bf
	ld a, h                                          ; $4127: $7c
	rst AddAOntoHL                                          ; $4128: $ef
	inc bc                                           ; $4129: $03
	ld h, b                                          ; $412a: $60
	daa                                              ; $412b: $27
	ld h, b                                          ; $412c: $60
	ld a, a                                          ; $412d: $7f
	cp $9e                                           ; $412e: $fe $9e
	jp $1c7b                                         ; $4130: $c3 $7b $1c


	sbc c                                            ; $4133: $99
	db $eb                                           ; $4134: $eb
	rst $38                                          ; $4135: $ff
	halt                                             ; $4136: $76
	scf                                              ; $4137: $37
	ld a, c                                          ; $4138: $79
	ld e, $2b                                        ; $4139: $1e $2b
	ld h, b                                          ; $413b: $60
	sbc [hl]                                         ; $413c: $9e
	ld a, a                                          ; $413d: $7f
	ld a, e                                          ; $413e: $7b
	ld h, b                                          ; $413f: $60
	sbc [hl]                                         ; $4140: $9e
	or [hl]                                          ; $4141: $b6
	inc bc                                           ; $4142: $03
	ld h, b                                          ; $4143: $60
	dec de                                           ; $4144: $1b
	ld h, b                                          ; $4145: $60
	sub a                                            ; $4146: $97
	ldh [rP1], a                                     ; $4147: $e0 $00
	db $fc                                           ; $4149: $fc
	nop                                              ; $414a: $00
	db $d3                                           ; $414b: $d3
	ld h, c                                          ; $414c: $61
	rst $38                                          ; $414d: $ff
	ld a, $03                                        ; $414e: $3e $03
	ld h, b                                          ; $4150: $60
	dec hl                                           ; $4151: $2b
	ld h, b                                          ; $4152: $60
	ld a, l                                          ; $4153: $7d
	ld [$1e9a], a                                    ; $4154: $ea $9a $1e
	nop                                              ; $4157: $00
	ld b, c                                          ; $4158: $41
	ld h, c                                          ; $4159: $61
	ld a, $26                                        ; $415a: $3e $26
	ret nz                                           ; $415c: $c0

	ld [hl], a                                       ; $415d: $77
	ld h, b                                          ; $415e: $60
	ld [hl], e                                       ; $415f: $73
	ld e, [hl]                                       ; $4160: $5e
	sub d                                            ; $4161: $92
	inc a                                            ; $4162: $3c
	nop                                              ; $4163: $00
	ld a, h                                          ; $4164: $7c
	jr nz, jr_069_41c3                               ; $4165: $20 $5c

	ld h, b                                          ; $4167: $60
	jr c, jr_069_418a                                ; $4168: $38 $20

	nop                                              ; $416a: $00
	nop                                              ; $416b: $00
	ld d, [hl]                                       ; $416c: $56
	ld l, h                                          ; $416d: $6c
	inc l                                            ; $416e: $2c
	cp $9d                                           ; $416f: $fe $9d
	jr z, jr_069_4183                                ; $4171: $28 $10

	ei                                               ; $4173: $fb
	sub a                                            ; $4174: $97
	jp nz, $db81                                     ; $4175: $c2 $81 $db

	rst SubAFromBC                                          ; $4178: $e7
	cp a                                             ; $4179: $bf
	db $fc                                           ; $417a: $fc
	inc a                                            ; $417b: $3c
	and b                                            ; $417c: $a0
	ld e, a                                          ; $417d: $5f

Jump_069_417e:
	ldh [hDisp1_WX], a                                     ; $417e: $e0 $96
	halt                                             ; $4180: $76
	ld l, h                                          ; $4181: $6c
	inc a                                            ; $4182: $3c

jr_069_4183:
	inc h                                            ; $4183: $24
	jr @+$0a                                         ; $4184: $18 $08

	nop                                              ; $4186: $00
	nop                                              ; $4187: $00
	jr jr_069_41b5                                   ; $4188: $18 $2b

jr_069_418a:
	ldh [$99], a                                     ; $418a: $e0 $99
	ld a, [hl]                                       ; $418c: $7e
	ld l, $3e                                        ; $418d: $2e $3e
	ld a, $3c                                        ; $418f: $3e $3c
	inc d                                            ; $4191: $14
	dec de                                           ; $4192: $1b
	ldh [$df], a                                     ; $4193: $e0 $df
	ld a, [hl]                                       ; $4195: $7e
	rst SubAFromDE                                          ; $4196: $df
	ld a, $9d                                        ; $4197: $3e $9d
	inc [hl]                                         ; $4199: $34
	inc e                                            ; $419a: $1c
	ld a, e                                          ; $419b: $7b
	pop hl                                           ; $419c: $e1
	ld [hl], a                                       ; $419d: $77
	sbc $67                                          ; $419e: $de $67
	ldh [$b7], a                                     ; $41a0: $e0 $b7
	ld bc, $0188                                     ; $41a2: $01 $88 $01
	or a                                             ; $41a5: $b7
	ld bc, $0177                                     ; $41a6: $01 $77 $01
	ld l, a                                          ; $41a9: $6f
	ld b, c                                          ; $41aa: $41
	rst AddAOntoHL                                          ; $41ab: $ef
	ld b, e                                          ; $41ac: $43
	rst GetHLinHL                                          ; $41ad: $cf
	add e                                            ; $41ae: $83
	rst SubAFromDE                                          ; $41af: $df
	add [hl]                                         ; $41b0: $86
	rst SubAFromDE                                          ; $41b1: $df
	add h                                            ; $41b2: $84
	cp a                                             ; $41b3: $bf
	dec l                                            ; $41b4: $2d

jr_069_41b5:
	cp [hl]                                          ; $41b5: $be
	dec l                                            ; $41b6: $2d
	cp $5d                                           ; $41b7: $fe $5d
	cp $5f                                           ; $41b9: $fe $5f
	ld [hl], e                                       ; $41bb: $73
	cp $80                                           ; $41bc: $fe $80
	ld a, [hl-]                                      ; $41be: $3a
	rst $38                                          ; $41bf: $ff
	cp a                                             ; $41c0: $bf
	ei                                               ; $41c1: $fb
	rst AddAOntoHL                                          ; $41c2: $ef

jr_069_41c3:
	cp l                                             ; $41c3: $bd
	cp $af                                           ; $41c4: $fe $af
	ei                                               ; $41c6: $fb
	xor e                                            ; $41c7: $ab
	ld hl, sp+$28                                    ; $41c8: $f8 $28
	ret z                                            ; $41ca: $c8

	ld a, b                                          ; $41cb: $78
	ldh a, [$50]                                     ; $41cc: $f0 $50
	or b                                             ; $41ce: $b0
	ld d, b                                          ; $41cf: $50
	ldh a, [rAUD1SWEEP]                              ; $41d0: $f0 $10
	ldh a, [rAUD1SWEEP]                              ; $41d2: $f0 $10
	or c                                             ; $41d4: $b1
	ld d, c                                          ; $41d5: $51
	or c                                             ; $41d6: $b1
	ld d, c                                          ; $41d7: $51
	ld [hl], c                                       ; $41d8: $71
	pop de                                           ; $41d9: $d1
	ld [hl], c                                       ; $41da: $71
	pop de                                           ; $41db: $d1
	ld [hl], b                                       ; $41dc: $70
	add b                                            ; $41dd: $80
	ret nc                                           ; $41de: $d0

	ld d, b                                          ; $41df: $50
	ldh a, [$50]                                     ; $41e0: $f0 $50
	ldh a, [$39]                                     ; $41e2: $f0 $39
	ld l, l                                          ; $41e4: $6d
	ld a, c                                          ; $41e5: $79
	call $c77d                                       ; $41e6: $cd $7d $c7
	db $fd                                           ; $41e9: $fd
	add a                                            ; $41ea: $87
	ld a, l                                          ; $41eb: $7d
	add a                                            ; $41ec: $87
	ld l, [hl]                                       ; $41ed: $6e
	di                                               ; $41ee: $f3
	sbc d                                            ; $41ef: $9a
	rst $38                                          ; $41f0: $ff
	cp $07                                           ; $41f1: $fe $07
	cp $01                                           ; $41f3: $fe $01
	rst SubAFromDE                                          ; $41f5: $df
	inc a                                            ; $41f6: $3c
	or a                                             ; $41f7: $b7
	halt                                             ; $41f8: $76
	ld h, d                                          ; $41f9: $62
	di                                               ; $41fa: $f3
	or [hl]                                          ; $41fb: $b6
	rst $38                                          ; $41fc: $ff
	sub [hl]                                         ; $41fd: $96
	ld l, $bf                                        ; $41fe: $2e $bf
	or d                                             ; $4200: $b2
	ld a, [hl-]                                      ; $4201: $3a
	db $fd                                           ; $4202: $fd
	ld e, $7f                                        ; $4203: $1e $7f
	add b                                            ; $4205: $80
	rst $38                                          ; $4206: $ff
	ld a, e                                          ; $4207: $7b
	cp $83                                           ; $4208: $fe $83
	cp a                                             ; $420a: $bf
	ret nz                                           ; $420b: $c0

	ld a, a                                          ; $420c: $7f
	ld b, b                                          ; $420d: $40
	ld e, a                                          ; $420e: $5f
	ld h, b                                          ; $420f: $60
	ld a, a                                          ; $4210: $7f
	ld h, b                                          ; $4211: $60
	rst AddAOntoHL                                          ; $4212: $ef
	ldh a, [$d7]                                     ; $4213: $f0 $d7
	ret c                                            ; $4215: $d8

	db $db                                           ; $4216: $db
	call c, $9e9d                                    ; $4217: $dc $9d $9e
	ld a, [de]                                       ; $421a: $1a
	dec de                                           ; $421b: $1b
	add hl, bc                                       ; $421c: $09
	add hl, bc                                       ; $421d: $09
	adc b                                            ; $421e: $88
	adc b                                            ; $421f: $88
	rra                                              ; $4220: $1f
	rra                                              ; $4221: $1f
	pop hl                                           ; $4222: $e1
	rst $38                                          ; $4223: $ff
	ret c                                            ; $4224: $d8

	ld d, b                                          ; $4225: $50
	ld a, e                                          ; $4226: $7b
	cp $91                                           ; $4227: $fe $91
	ld [hl], b                                       ; $4229: $70
	ld hl, sp+$30                                    ; $422a: $f8 $30
	cp h                                             ; $422c: $bc
	db $10                                           ; $422d: $10
	sbc h                                            ; $422e: $9c
	ld [$008d], sp                                   ; $422f: $08 $8d $00
	ld [bc], a                                       ; $4232: $02
	ld bc, $0182                                     ; $4233: $01 $82 $01
	add e                                            ; $4236: $83
	cp d                                             ; $4237: $ba
	add e                                            ; $4238: $83
	add c                                            ; $4239: $81
	add b                                            ; $423a: $80
	nop                                              ; $423b: $00
	nop                                              ; $423c: $00
	db $10                                           ; $423d: $10
	or [hl]                                          ; $423e: $b6
	add b                                            ; $423f: $80
	db $e3                                           ; $4240: $e3
	or l                                             ; $4241: $b5
	db $e3                                           ; $4242: $e3
	db $e3                                           ; $4243: $e3
	ld b, c                                          ; $4244: $41
	ld h, d                                          ; $4245: $62
	ld b, c                                          ; $4246: $41
	ld h, b                                          ; $4247: $60
	ld c, a                                          ; $4248: $4f
	ld c, a                                          ; $4249: $4f
	ccf                                              ; $424a: $3f
	ld sp, $dffe                                     ; $424b: $31 $fe $df
	ldh [$7f], a                                     ; $424e: $e0 $7f
	add b                                            ; $4250: $80
	ei                                               ; $4251: $fb
	inc a                                            ; $4252: $3c
	rst FarCall                                          ; $4253: $f7
	halt                                             ; $4254: $76
	ld h, a                                          ; $4255: $67
	rst SubAFromBC                                          ; $4256: $e7
	cp e                                             ; $4257: $bb
	cp a                                             ; $4258: $bf
	dec hl                                           ; $4259: $2b
	ld a, $25                                        ; $425a: $3e $25
	ld [hl], $5c                                     ; $425c: $36 $5c
	ccf                                              ; $425e: $3f
	rst $38                                          ; $425f: $ff
	sbc [hl]                                         ; $4260: $9e
	ld bc, $03bc                                     ; $4261: $01 $bc $03
	inc bc                                           ; $4264: $03
	rlca                                             ; $4265: $07
	rlca                                             ; $4266: $07
	rrca                                             ; $4267: $0f
	sub c                                            ; $4268: $91
	ld bc, $030f                                     ; $4269: $01 $0f $03
	rra                                              ; $426c: $1f

jr_069_426d:
	rlca                                             ; $426d: $07
	ccf                                              ; $426e: $3f
	rrca                                             ; $426f: $0f
	ld a, a                                          ; $4270: $7f
	ld e, $bf                                        ; $4271: $1e $bf
	ld a, h                                          ; $4273: $7c
	rst $38                                          ; $4274: $ff
	ldh a, [rIE]                                     ; $4275: $f0 $ff
	cp a                                             ; $4277: $bf
	rst $38                                          ; $4278: $ff
	ld a, a                                          ; $4279: $7f
	add e                                            ; $427a: $83
	inc bc                                           ; $427b: $03
	ld d, b                                          ; $427c: $50
	rst $38                                          ; $427d: $ff
	ld b, b                                          ; $427e: $40
	rst $38                                          ; $427f: $ff
	jr z, @+$01                                      ; $4280: $28 $ff

	xor b                                            ; $4282: $a8
	rst $38                                          ; $4283: $ff
	and b                                            ; $4284: $a0
	rst $38                                          ; $4285: $ff
	and h                                            ; $4286: $a4
	rst $38                                          ; $4287: $ff
	push de                                          ; $4288: $d5
	rst $38                                          ; $4289: $ff
	ld d, l                                          ; $428a: $55
	rst $38                                          ; $428b: $ff
	pop de                                           ; $428c: $d1
	ld a, a                                          ; $428d: $7f
	and c                                            ; $428e: $a1
	ld l, a                                          ; $428f: $6f
	and b                                            ; $4290: $a0
	ld l, a                                          ; $4291: $6f
	and b                                            ; $4292: $a0
	rst $38                                          ; $4293: $ff
	ldh [$36], a                                     ; $4294: $e0 $36
	ret nc                                           ; $4296: $d0

	ld l, a                                          ; $4297: $6f
	cp $93                                           ; $4298: $fe $93
	ccf                                              ; $429a: $3f
	ldh a, [$3f]                                     ; $429b: $f0 $3f
	or h                                             ; $429d: $b4
	ld a, a                                          ; $429e: $7f
	ret nc                                           ; $429f: $d0

	ld e, a                                          ; $42a0: $5f
	ld d, b                                          ; $42a1: $50
	rst SubAFromDE                                          ; $42a2: $df
	sub b                                            ; $42a3: $90
	sbc a                                            ; $42a4: $9f
	sub h                                            ; $42a5: $94
	ld h, e                                          ; $42a6: $63
	cp $95                                           ; $42a7: $fe $95
	adc h                                            ; $42a9: $8c
	adc a                                            ; $42aa: $8f
	adc c                                            ; $42ab: $89
	adc a                                            ; $42ac: $8f
	ret                                              ; $42ad: $c9


	ld c, a                                          ; $42ae: $4f
	ld sp, hl                                        ; $42af: $f9
	rst $38                                          ; $42b0: $ff
	ld sp, hl                                        ; $42b1: $f9
	rrca                                             ; $42b2: $0f
	ld b, $e0                                        ; $42b3: $06 $e0
	ccf                                              ; $42b5: $3f
	nop                                              ; $42b6: $00
	ld a, a                                          ; $42b7: $7f
	adc d                                            ; $42b8: $8a
	sbc b                                            ; $42b9: $98
	rst AddAOntoHL                                          ; $42ba: $ef
	inc e                                            ; $42bb: $1c
	or e                                             ; $42bc: $b3
	ld [hl], d                                       ; $42bd: $72
	halt                                             ; $42be: $76
	rst $38                                          ; $42bf: $ff
	xor [hl]                                         ; $42c0: $ae
	ld [hl], e                                       ; $42c1: $73
	nop                                              ; $42c2: $00
	inc bc                                           ; $42c3: $03
	jr nz, jr_069_4309                               ; $42c4: $20 $43

	jr nz, jr_069_4347                               ; $42c6: $20 $7f

	ret nz                                           ; $42c8: $c0

	sbc h                                            ; $42c9: $9c
	cp e                                             ; $42ca: $bb
	ld a, h                                          ; $42cb: $7c
	ld h, [hl]                                       ; $42cc: $66
	ld a, e                                          ; $42cd: $7b
	jr nz, jr_069_426d                               ; $42ce: $20 $9d

	ld a, [hl+]                                      ; $42d0: $2a
	ccf                                              ; $42d1: $3f
	ld [hl], a                                       ; $42d2: $77
	jr nz, jr_069_4300                               ; $42d3: $20 $2b

	ld b, b                                          ; $42d5: $40
	sbc h                                            ; $42d6: $9c
	ld a, a                                          ; $42d7: $7f
	ldh [$b6], a                                     ; $42d8: $e0 $b6
	ld l, a                                          ; $42da: $6f
	ld b, b                                          ; $42db: $40
	inc bc                                           ; $42dc: $03
	ld h, b                                          ; $42dd: $60
	dec sp                                           ; $42de: $3b
	ld h, b                                          ; $42df: $60
	ld a, a                                          ; $42e0: $7f
	cp $97                                           ; $42e1: $fe $97
	di                                               ; $42e3: $f3
	nop                                              ; $42e4: $00
	db $dd                                           ; $42e5: $dd
	ld a, $ef                                        ; $42e6: $3e $ef
	rst $38                                          ; $42e8: $ff
	or d                                             ; $42e9: $b2
	ld a, d                                          ; $42ea: $7a
	inc de                                           ; $42eb: $13
	ld h, b                                          ; $42ec: $60
	ld a, e                                          ; $42ed: $7b
	db $fd                                           ; $42ee: $fd
	cpl                                              ; $42ef: $2f
	ld h, b                                          ; $42f0: $60
	ld a, a                                          ; $42f1: $7f
	cp $97                                           ; $42f2: $fe $97
	jp $1e00                                         ; $42f4: $c3 $00 $1e


	ccf                                              ; $42f7: $3f
	db $eb                                           ; $42f8: $eb
	rst $38                                          ; $42f9: $ff
	ld h, $77                                        ; $42fa: $26 $77
	dec de                                           ; $42fc: $1b
	ld h, b                                          ; $42fd: $60
	ld a, a                                          ; $42fe: $7f

Call_069_42ff:
	ld h, h                                          ; $42ff: $64

jr_069_4300:
	ld [hl], e                                       ; $4300: $73
	ld e, [hl]                                       ; $4301: $5e
	inc bc                                           ; $4302: $03
	ld h, b                                          ; $4303: $60
	dec hl                                           ; $4304: $2b
	ld h, b                                          ; $4305: $60
	sbc [hl]                                         ; $4306: $9e
	ldh [$bf], a                                     ; $4307: $e0 $bf

jr_069_4309:
	db $fc                                           ; $4309: $fc
	db $d3                                           ; $430a: $d3
	sbc h                                            ; $430b: $9c
	ld h, c                                          ; $430c: $61
	rst $38                                          ; $430d: $ff
	ld a, $02                                        ; $430e: $3e $02
	ret nz                                           ; $4310: $c0

	dec hl                                           ; $4311: $2b
	ld h, b                                          ; $4312: $60
	ld a, l                                          ; $4313: $7d
	ld [$1e9a], a                                    ; $4314: $ea $9a $1e
	nop                                              ; $4317: $00
	ld b, c                                          ; $4318: $41
	ld h, c                                          ; $4319: $61
	ld a, $17                                        ; $431a: $3e $17
	ld h, b                                          ; $431c: $60
	ld [hl], e                                       ; $431d: $73
	ld e, [hl]                                       ; $431e: $5e
	adc l                                            ; $431f: $8d
	inc a                                            ; $4320: $3c
	nop                                              ; $4321: $00
	ld a, h                                          ; $4322: $7c
	jr nz, jr_069_4381                               ; $4323: $20 $5c

	ld h, b                                          ; $4325: $60
	jr c, jr_069_4348                                ; $4326: $38 $20

	nop                                              ; $4328: $00
	nop                                              ; $4329: $00
	ld a, b                                          ; $432a: $78
	jr nc, jr_069_4369                               ; $432b: $30 $3c

	ld [rRAMG], sp                                   ; $432d: $08 $00 $00
	jr z, jr_069_4342                                ; $4330: $28 $10

	ei                                               ; $4332: $fb
	sub a                                            ; $4333: $97
	jp nz, $db81                                     ; $4334: $c2 $81 $db

	rst SubAFromBC                                          ; $4337: $e7
	cp a                                             ; $4338: $bf
	db $fc                                           ; $4339: $fc
	inc a                                            ; $433a: $3c
	and b                                            ; $433b: $a0
	ld d, a                                          ; $433c: $57
	ldh [$9a], a                                     ; $433d: $e0 $9a
	ld a, h                                          ; $433f: $7c
	jr z, jr_069_4342                                ; $4340: $28 $00

jr_069_4342:
	nop                                              ; $4342: $00
	ld [$e01b], sp                                   ; $4343: $08 $1b $e0
	sbc h                                            ; $4346: $9c

jr_069_4347:
	inc a                                            ; $4347: $3c

jr_069_4348:
	jr c, jr_069_4386                                ; $4348: $38 $3c

	ld h, e                                          ; $434a: $63
	sbc $27                                          ; $434b: $de $27
	ldh [$9c], a                                     ; $434d: $e0 $9c
	inc a                                            ; $434f: $3c
	jr jr_069_4352                                   ; $4350: $18 $00

jr_069_4352:
	cp [hl]                                          ; $4352: $be
	jr jr_069_4355                                   ; $4353: $18 $00

jr_069_4355:
	jp nz, $e06b                                     ; $4355: $c2 $6b $e0

	jp $8801                                         ; $4358: $c3 $01 $88


	ld bc, $01b7                                     ; $435b: $01 $b7 $01
	ld [hl], a                                       ; $435e: $77
	ld bc, $416f                                     ; $435f: $01 $6f $41
	rst AddAOntoHL                                          ; $4362: $ef
	ld b, e                                          ; $4363: $43
	rst GetHLinHL                                          ; $4364: $cf
	add e                                            ; $4365: $83
	rst SubAFromDE                                          ; $4366: $df
	add [hl]                                         ; $4367: $86
	rst SubAFromDE                                          ; $4368: $df

jr_069_4369:
	add h                                            ; $4369: $84
	cp a                                             ; $436a: $bf
	dec l                                            ; $436b: $2d
	cp [hl]                                          ; $436c: $be
	dec l                                            ; $436d: $2d

jr_069_436e:
	cp $5d                                           ; $436e: $fe $5d
	cp $5f                                           ; $4370: $fe $5f
	ld [hl], e                                       ; $4372: $73
	cp $80                                           ; $4373: $fe $80
	ld a, [hl-]                                      ; $4375: $3a
	rst $38                                          ; $4376: $ff
	cp a                                             ; $4377: $bf
	ei                                               ; $4378: $fb
	rst AddAOntoHL                                          ; $4379: $ef
	cp l                                             ; $437a: $bd
	cp $af                                           ; $437b: $fe $af
	ei                                               ; $437d: $fb
	xor e                                            ; $437e: $ab
	ld hl, sp+$28                                    ; $437f: $f8 $28

jr_069_4381:
	ret z                                            ; $4381: $c8

	ld a, b                                          ; $4382: $78
	ldh a, [$50]                                     ; $4383: $f0 $50
	or b                                             ; $4385: $b0

jr_069_4386:
	ld d, b                                          ; $4386: $50
	ldh a, [rAUD1SWEEP]                              ; $4387: $f0 $10
	ldh a, [rAUD1SWEEP]                              ; $4389: $f0 $10
	or c                                             ; $438b: $b1
	ld d, c                                          ; $438c: $51
	or c                                             ; $438d: $b1
	ld d, c                                          ; $438e: $51
	ld [hl], c                                       ; $438f: $71
	pop de                                           ; $4390: $d1
	ld [hl], c                                       ; $4391: $71
	pop de                                           ; $4392: $d1
	ld [hl], b                                       ; $4393: $70
	add b                                            ; $4394: $80
	ret nc                                           ; $4395: $d0

	ld d, b                                          ; $4396: $50
	ldh a, [$50]                                     ; $4397: $f0 $50
	ldh a, [$39]                                     ; $4399: $f0 $39
	ld l, l                                          ; $439b: $6d
	ld a, c                                          ; $439c: $79
	call $c77d                                       ; $439d: $cd $7d $c7
	db $fd                                           ; $43a0: $fd
	add a                                            ; $43a1: $87
	ld a, l                                          ; $43a2: $7d
	add a                                            ; $43a3: $87
	ld l, [hl]                                       ; $43a4: $6e
	di                                               ; $43a5: $f3
	sub e                                            ; $43a6: $93
	cp $fd                                           ; $43a7: $fe $fd
	ld c, $fe                                        ; $43a9: $0e $fe
	inc bc                                           ; $43ab: $03
	rst JumpTable                                          ; $43ac: $c7
	jr c, jr_069_436e                                ; $43ad: $38 $bf

	ld b, b                                          ; $43af: $40
	db $dd                                           ; $43b0: $dd
	ld a, $72                                        ; $43b1: $3e $72
	ei                                               ; $43b3: $fb
	sub [hl]                                         ; $43b4: $96
	rst AddAOntoHL                                          ; $43b5: $ef
	rst $38                                          ; $43b6: $ff
	or d                                             ; $43b7: $b2
	cp d                                             ; $43b8: $ba
	db $fd                                           ; $43b9: $fd
	ld e, $7f                                        ; $43ba: $1e $7f
	add b                                            ; $43bc: $80
	rst $38                                          ; $43bd: $ff
	ld a, e                                          ; $43be: $7b
	cp $83                                           ; $43bf: $fe $83
	cp a                                             ; $43c1: $bf
	ret nz                                           ; $43c2: $c0

	ld a, a                                          ; $43c3: $7f
	ld b, b                                          ; $43c4: $40
	ld e, a                                          ; $43c5: $5f
	ld h, b                                          ; $43c6: $60
	ld a, a                                          ; $43c7: $7f
	ld h, b                                          ; $43c8: $60
	rst AddAOntoHL                                          ; $43c9: $ef
	ldh a, [$d7]                                     ; $43ca: $f0 $d7
	ret c                                            ; $43cc: $d8

	db $db                                           ; $43cd: $db
	call c, $9e9d                                    ; $43ce: $dc $9d $9e
	ld a, [de]                                       ; $43d1: $1a
	dec de                                           ; $43d2: $1b
	add hl, bc                                       ; $43d3: $09
	add hl, bc                                       ; $43d4: $09
	adc b                                            ; $43d5: $88
	adc b                                            ; $43d6: $88
	rra                                              ; $43d7: $1f
	rra                                              ; $43d8: $1f
	pop hl                                           ; $43d9: $e1
	rst $38                                          ; $43da: $ff
	ret c                                            ; $43db: $d8

	ld d, b                                          ; $43dc: $50
	ld a, e                                          ; $43dd: $7b
	cp $97                                           ; $43de: $fe $97
	ld [hl], b                                       ; $43e0: $70
	ld hl, sp+$30                                    ; $43e1: $f8 $30
	cp h                                             ; $43e3: $bc
	db $10                                           ; $43e4: $10
	sbc h                                            ; $43e5: $9c
	ld [$bf0c], sp                                   ; $43e6: $08 $0c $bf
	inc bc                                           ; $43e9: $03
	add d                                            ; $43ea: $82
	sbc e                                            ; $43eb: $9b
	ld bc, $0182                                     ; $43ec: $01 $82 $01
	add e                                            ; $43ef: $83
	cp e                                             ; $43f0: $bb
	add c                                            ; $43f1: $81
	nop                                              ; $43f2: $00
	nop                                              ; $43f3: $00
	nop                                              ; $43f4: $00
	db $10                                           ; $43f5: $10
	or [hl]                                          ; $43f6: $b6
	add b                                            ; $43f7: $80
	db $e3                                           ; $43f8: $e3
	or l                                             ; $43f9: $b5
	db $e3                                           ; $43fa: $e3
	db $e3                                           ; $43fb: $e3
	ld b, c                                          ; $43fc: $41
	ld h, d                                          ; $43fd: $62
	ld b, c                                          ; $43fe: $41
	ld h, b                                          ; $43ff: $60
	ld b, a                                          ; $4400: $47
	ld b, a                                          ; $4401: $47
	rra                                              ; $4402: $1f
	sbc c                                            ; $4403: $99
	ld a, [hl]                                       ; $4404: $7e
	ld l, a                                          ; $4405: $6f
	ldh a, [$bf]                                     ; $4406: $f0 $bf
	ret nz                                           ; $4408: $c0

	db $e3                                           ; $4409: $e3
	inc e                                            ; $440a: $1c
	db $fd                                           ; $440b: $fd
	ld [bc], a                                       ; $440c: $02
	cp l                                             ; $440d: $bd
	ld a, [hl]                                       ; $440e: $7e
	ld [hl], e                                       ; $440f: $73
	rst FarCall                                          ; $4410: $f7
	xor d                                            ; $4411: $aa
	cp a                                             ; $4412: $bf
	ld h, $36                                        ; $4413: $26 $36
	ld e, h                                          ; $4415: $5c
	ccf                                              ; $4416: $3f
	rst $38                                          ; $4417: $ff
	sbc [hl]                                         ; $4418: $9e
	ld bc, $03bc                                     ; $4419: $01 $bc $03
	inc bc                                           ; $441c: $03
	rlca                                             ; $441d: $07
	rlca                                             ; $441e: $07
	rrca                                             ; $441f: $0f
	sub c                                            ; $4420: $91
	ld bc, $030f                                     ; $4421: $01 $0f $03
	rra                                              ; $4424: $1f
	rlca                                             ; $4425: $07
	ccf                                              ; $4426: $3f
	rrca                                             ; $4427: $0f
	ld a, a                                          ; $4428: $7f
	ld e, $bf                                        ; $4429: $1e $bf
	ld a, h                                          ; $442b: $7c
	rst $38                                          ; $442c: $ff
	ldh a, [rIE]                                     ; $442d: $f0 $ff
	cp a                                             ; $442f: $bf
	rst $38                                          ; $4430: $ff
	ld a, a                                          ; $4431: $7f
	add d                                            ; $4432: $82
	inc bc                                           ; $4433: $03
	ld d, b                                          ; $4434: $50
	rst $38                                          ; $4435: $ff
	ld b, b                                          ; $4436: $40
	rst $38                                          ; $4437: $ff
	jr z, @+$01                                      ; $4438: $28 $ff

	xor b                                            ; $443a: $a8
	rst $38                                          ; $443b: $ff
	and b                                            ; $443c: $a0
	rst $38                                          ; $443d: $ff
	and h                                            ; $443e: $a4
	rst $38                                          ; $443f: $ff
	push de                                          ; $4440: $d5
	rst $38                                          ; $4441: $ff
	ld d, l                                          ; $4442: $55
	rst $38                                          ; $4443: $ff
	pop de                                           ; $4444: $d1
	ld a, a                                          ; $4445: $7f
	and c                                            ; $4446: $a1
	ld l, a                                          ; $4447: $6f
	and b                                            ; $4448: $a0
	ld l, a                                          ; $4449: $6f
	and b                                            ; $444a: $a0
	ld a, a                                          ; $444b: $7f
	ldh [$b6], a                                     ; $444c: $e0 $b6
	ret nc                                           ; $444e: $d0

	ld [hl], $73                                     ; $444f: $36 $73
	cp $93                                           ; $4451: $fe $93
	ccf                                              ; $4453: $3f
	ldh a, [$3f]                                     ; $4454: $f0 $3f
	or h                                             ; $4456: $b4
	ld a, a                                          ; $4457: $7f
	ret nc                                           ; $4458: $d0

	ld e, a                                          ; $4459: $5f
	ld d, b                                          ; $445a: $50
	rst SubAFromDE                                          ; $445b: $df
	sub b                                            ; $445c: $90
	sbc a                                            ; $445d: $9f
	sub h                                            ; $445e: $94
	ld h, e                                          ; $445f: $63
	cp $95                                           ; $4460: $fe $95
	adc h                                            ; $4462: $8c
	adc a                                            ; $4463: $8f
	adc c                                            ; $4464: $89
	adc a                                            ; $4465: $8f
	ret                                              ; $4466: $c9


	ld c, a                                          ; $4467: $4f
	ld sp, hl                                        ; $4468: $f9
	rst $38                                          ; $4469: $ff
	ld sp, hl                                        ; $446a: $f9
	rrca                                             ; $446b: $0f
	ld b, $e0                                        ; $446c: $06 $e0
	ccf                                              ; $446e: $3f
	nop                                              ; $446f: $00
	ld a, a                                          ; $4470: $7f
	adc d                                            ; $4471: $8a
	ld l, [hl]                                       ; $4472: $6e
	cp $99                                           ; $4473: $fe $99
	xor a                                            ; $4475: $af
	ld a, a                                          ; $4476: $7f
	jp nc, $ddfa                                     ; $4477: $d2 $fa $dd

	ld a, $03                                        ; $447a: $3e $03
	jr nz, jr_069_44c1                               ; $447c: $20 $43

	jr nz, jr_069_44ff                               ; $447e: $20 $7f

	ret nz                                           ; $4480: $c0

	sub a                                            ; $4481: $97
	pop bc                                           ; $4482: $c1
	ld a, $fe                                        ; $4483: $3e $fe
	ld bc, $3edd                                     ; $4485: $01 $dd $3e
	ld l, e                                          ; $4488: $6b
	rst $38                                          ; $4489: $ff
	ld [hl], a                                       ; $448a: $77
	jr nz, jr_069_44bc                               ; $448b: $20 $2f

	ld b, b                                          ; $448d: $40
	sbc h                                            ; $448e: $9c
	jr nz, @+$01                                     ; $448f: $20 $ff

	ldh [$6f], a                                     ; $4491: $e0 $6f
	ld b, d                                          ; $4493: $42
	sbc [hl]                                         ; $4494: $9e
	ld [hl], $03                                     ; $4495: $36 $03
	ld h, b                                          ; $4497: $60
	dec sp                                           ; $4498: $3b
	ld h, b                                          ; $4499: $60
	ld a, a                                          ; $449a: $7f
	cp $97                                           ; $449b: $fe $97
	jp $ff3c                                         ; $449d: $c3 $3c $ff


	nop                                              ; $44a0: $00
	cp e                                             ; $44a1: $bb
	ld a, h                                          ; $44a2: $7c
	db $d3                                           ; $44a3: $d3
	ei                                               ; $44a4: $fb
	inc bc                                           ; $44a5: $03
	ld h, b                                          ; $44a6: $60
	inc sp                                           ; $44a7: $33
	ld h, b                                          ; $44a8: $60
	ld a, a                                          ; $44a9: $7f
	cp $97                                           ; $44aa: $fe $97
	pop hl                                           ; $44ac: $e1
	ld e, $ff                                        ; $44ad: $1e $ff
	nop                                              ; $44af: $00
	sbc $3f                                          ; $44b0: $de $3f
	db $e3                                           ; $44b2: $e3
	rst FarCall                                          ; $44b3: $f7
	daa                                              ; $44b4: $27
	ld h, b                                          ; $44b5: $60
	ld a, d                                          ; $44b6: $7a
	and b                                            ; $44b7: $a0
	ld [hl], a                                       ; $44b8: $77
	ld h, d                                          ; $44b9: $62
	ld a, d                                          ; $44ba: $7a
	sbc h                                            ; $44bb: $9c

jr_069_44bc:
	inc bc                                           ; $44bc: $03
	ld h, b                                          ; $44bd: $60
	inc sp                                           ; $44be: $33
	ld h, b                                          ; $44bf: $60
	sbc [hl]                                         ; $44c0: $9e

jr_069_44c1:
	di                                               ; $44c1: $f3
	cp [hl]                                          ; $44c2: $be
	ldh [$fc], a                                     ; $44c3: $e0 $fc
	db $d3                                           ; $44c5: $d3
	sbc l                                            ; $44c6: $9d
	ld h, c                                          ; $44c7: $61
	rst $38                                          ; $44c8: $ff
	dec hl                                           ; $44c9: $2b
	ld h, b                                          ; $44ca: $60
	ld a, [hl]                                       ; $44cb: $7e
	inc c                                            ; $44cc: $0c
	rrca                                             ; $44cd: $0f
	ld h, b                                          ; $44ce: $60
	sbc [hl]                                         ; $44cf: $9e
	jp $01be                                         ; $44d0: $c3 $be $01


	ld e, $41                                        ; $44d3: $1e $41
	sbc l                                            ; $44d5: $9d
	ld h, c                                          ; $44d6: $61
	ld a, $03                                        ; $44d7: $3e $03
	ld h, b                                          ; $44d9: $60
	sub a                                            ; $44da: $97
	inc a                                            ; $44db: $3c
	nop                                              ; $44dc: $00
	ld a, h                                          ; $44dd: $7c
	jr nz, jr_069_453c                               ; $44de: $20 $5c

	ld h, b                                          ; $44e0: $60
	jr c, jr_069_4503                                ; $44e1: $38 $20

	db $fd                                           ; $44e3: $fd
	sbc c                                            ; $44e4: $99
	ld l, h                                          ; $44e5: $6c
	jr jr_069_44e8                                   ; $44e6: $18 $00

jr_069_44e8:
	nop                                              ; $44e8: $00
	ld [$fb10], sp                                   ; $44e9: $08 $10 $fb
	sub a                                            ; $44ec: $97
	jp nz, $db81                                     ; $44ed: $c2 $81 $db

	rst SubAFromBC                                          ; $44f0: $e7
	cp a                                             ; $44f1: $bf
	db $fc                                           ; $44f2: $fc
	inc a                                            ; $44f3: $3c
	and b                                            ; $44f4: $a0
	ld d, a                                          ; $44f5: $57
	ldh [$9b], a                                     ; $44f6: $e0 $9b
	jr c, jr_069_456a                                ; $44f8: $38 $70

	inc a                                            ; $44fa: $3c
	inc h                                            ; $44fb: $24
	ld [hl], a                                       ; $44fc: $77
	adc h                                            ; $44fd: $8c
	cpl                                              ; $44fe: $2f

jr_069_44ff:
	ldh [$99], a                                     ; $44ff: $e0 $99
	ld h, b                                          ; $4501: $60
	nop                                              ; $4502: $00

jr_069_4503:
	ld a, h                                          ; $4503: $7c
	jr c, jr_069_4542                                ; $4504: $38 $3c

	jr z, jr_069_457f                                ; $4506: $28 $77

	ret nz                                           ; $4508: $c0

	ld a, e                                          ; $4509: $7b
	cp c                                             ; $450a: $b9
	dec sp                                           ; $450b: $3b
	ldh [$9d], a                                     ; $450c: $e0 $9d
	ld a, b                                          ; $450e: $78
	jr nc, @+$7d                                     ; $450f: $30 $7b

	ldh [$df], a                                     ; $4511: $e0 $df
	inc a                                            ; $4513: $3c
	sbc e                                            ; $4514: $9b
	inc [hl]                                         ; $4515: $34
	jr jr_069_4530                                   ; $4516: $18 $18

	ld [$e05b], sp                                   ; $4518: $08 $5b $e0
	add $03                                          ; $451b: $c6 $03
	db $fd                                           ; $451d: $fd
	db $db                                           ; $451e: $db
	ld bc, $029e                                     ; $451f: $01 $9e $02
	jp c, Jump_069_7f03                              ; $4522: $da $03 $7f

	ld hl, sp-$67                                    ; $4525: $f8 $99
	ld b, $07                                        ; $4527: $06 $07
	ld b, $07                                        ; $4529: $06 $07
	dec b                                            ; $452b: $05
	ld b, $77                                        ; $452c: $06 $77
	cp $9d                                           ; $452e: $fe $9d

jr_069_4530:
	rlca                                             ; $4530: $07
	inc b                                            ; $4531: $04
	ld [hl], a                                       ; $4532: $77
	ld sp, hl                                        ; $4533: $f9
	ld a, a                                          ; $4534: $7f
	di                                               ; $4535: $f3
	ld a, a                                          ; $4536: $7f
	cp $73                                           ; $4537: $fe $73
	ei                                               ; $4539: $fb
	sbc l                                            ; $453a: $9d
	rlca                                             ; $453b: $07

jr_069_453c:
	ld [bc], a                                       ; $453c: $02
	ld a, e                                          ; $453d: $7b
	ldh [c], a                                       ; $453e: $e2
	ld [hl], a                                       ; $453f: $77
	cp $d9                                           ; $4540: $fe $d9

jr_069_4542:
	ld bc, $dfff                                     ; $4542: $01 $ff $df
	inc bc                                           ; $4545: $03
	add c                                            ; $4546: $81
	dec c                                            ; $4547: $0d
	ld c, $1b                                        ; $4548: $0e $1b
	inc e                                            ; $454a: $1c
	cpl                                              ; $454b: $2f
	jr c, jr_069_4575                                ; $454c: $38 $27

	jr c, jr_069_4587                                ; $454e: $38 $37

	jr z, jr_069_4589                                ; $4550: $28 $37

	inc l                                            ; $4552: $2c
	ld d, a                                          ; $4553: $57
	ld l, h                                          ; $4554: $6c
	ld [hl], a                                       ; $4555: $77
	ld c, h                                          ; $4556: $4c
	ld l, [hl]                                       ; $4557: $6e
	ld d, l                                          ; $4558: $55
	ld c, h                                          ; $4559: $4c
	ld [hl], a                                       ; $455a: $77
	ld e, d                                          ; $455b: $5a
	ld h, a                                          ; $455c: $67
	sub d                                            ; $455d: $92
	rst AddAOntoHL                                          ; $455e: $ef
	or c                                             ; $455f: $b1
	rst GetHLinHL                                          ; $4560: $cf
	or c                                             ; $4561: $b1
	rst GetHLinHL                                          ; $4562: $cf
	and c                                            ; $4563: $a1
	rst SubAFromDE                                          ; $4564: $df
	db $fd                                           ; $4565: $fd
	rst SubAFromDE                                          ; $4566: $df
	inc b                                            ; $4567: $04
	rst SubAFromDE                                          ; $4568: $df
	rlca                                             ; $4569: $07

jr_069_456a:
	ld [hl], a                                       ; $456a: $77
	call z, $dfff                                    ; $456b: $cc $ff $df
	rrca                                             ; $456e: $0f
	rst SubAFromDE                                          ; $456f: $df
	inc bc                                           ; $4570: $03
	rst SubAFromDE                                          ; $4571: $df
	ld de, $0fdf                                     ; $4572: $11 $df $0f

jr_069_4575:
	rst SubAFromDE                                          ; $4575: $df
	ld bc, $a57f                                     ; $4576: $01 $7f $a5
	add b                                            ; $4579: $80
	dec bc                                           ; $457a: $0b
	rrca                                             ; $457b: $0f
	dec e                                            ; $457c: $1d
	ld e, $7b                                        ; $457d: $1e $7b

jr_069_457f:
	ld h, a                                          ; $457f: $67
	db $ec                                           ; $4580: $ec
	rst SubAFromDE                                          ; $4581: $df
	and e                                            ; $4582: $a3
	rst $38                                          ; $4583: $ff
	call $b7fe                                       ; $4584: $cd $fe $b7

jr_069_4587:
	ld hl, sp-$01                                    ; $4587: $f8 $ff

jr_069_4589:
	rst $38                                          ; $4589: $ff
	jp nc, $b5ff                                     ; $458a: $d2 $ff $b5

	rst AddAOntoHL                                          ; $458d: $ef
	ld c, d                                          ; $458e: $4a
	rst $38                                          ; $458f: $ff
	ld [hl], b                                       ; $4590: $70
	rst SubAFromDE                                          ; $4591: $df
	ld d, l                                          ; $4592: $55
	cp a                                             ; $4593: $bf
	swap l                                           ; $4594: $cb $35
	sub d                                            ; $4596: $92
	ld l, a                                          ; $4597: $6f
	sub [hl]                                         ; $4598: $96
	sub a                                            ; $4599: $97
	ld l, e                                          ; $459a: $6b
	ld b, [hl]                                       ; $459b: $46
	ei                                               ; $459c: $fb
	ld a, [hl+]                                      ; $459d: $2a
	rst SubAFromHL                                          ; $459e: $d7
	xor d                                            ; $459f: $aa
	rst SubAFromHL                                          ; $45a0: $d7
	cp h                                             ; $45a1: $bc
	ld a, e                                          ; $45a2: $7b
	cp $96                                           ; $45a3: $fe $96
	ld c, l                                          ; $45a5: $4d
	or a                                             ; $45a6: $b7
	ld d, a                                          ; $45a7: $57
	xor l                                            ; $45a8: $ad
	rla                                              ; $45a9: $17
	xor l                                            ; $45aa: $ad
	sub a                                            ; $45ab: $97
	dec l                                            ; $45ac: $2d
	add a                                            ; $45ad: $87
	ld [hl], e                                       ; $45ae: $73
	cp $98                                           ; $45af: $fe $98
	add e                                            ; $45b1: $83
	dec l                                            ; $45b2: $2d
	ld b, c                                          ; $45b3: $41
	xor l                                            ; $45b4: $ad
	ld [hl], c                                       ; $45b5: $71
	xor l                                            ; $45b6: $ad
	ld [hl], a                                       ; $45b7: $77
	ld a, e                                          ; $45b8: $7b
	cp $80                                           ; $45b9: $fe $80
	ld d, l                                          ; $45bb: $55
	xor a                                            ; $45bc: $af
	push hl                                          ; $45bd: $e5
	sbc a                                            ; $45be: $9f
	or l                                             ; $45bf: $b5
	rst SubAFromDE                                          ; $45c0: $df
	cp e                                             ; $45c1: $bb
	push de                                          ; $45c2: $d5
	cp e                                             ; $45c3: $bb
	push de                                          ; $45c4: $d5
	ld c, e                                          ; $45c5: $4b
	ld [hl], l                                       ; $45c6: $75
	ld c, a                                          ; $45c7: $4f
	ld [hl], l                                       ; $45c8: $75
	ld b, a                                          ; $45c9: $47
	ld a, l                                          ; $45ca: $7d
	ld b, a                                          ; $45cb: $47
	ld a, l                                          ; $45cc: $7d
	ld h, $3d                                        ; $45cd: $26 $3d
	dec hl                                           ; $45cf: $2b
	inc a                                            ; $45d0: $3c
	add hl, hl                                       ; $45d1: $29
	ld a, $2a                                        ; $45d2: $3e $2a
	ccf                                              ; $45d4: $3f
	ld a, [de]                                       ; $45d5: $1a
	rra                                              ; $45d6: $1f
	ld a, [de]                                       ; $45d7: $1a
	rra                                              ; $45d8: $1f
	dec de                                           ; $45d9: $1b
	adc l                                            ; $45da: $8d
	rra                                              ; $45db: $1f
	ld l, e                                          ; $45dc: $6b
	ld a, a                                          ; $45dd: $7f
	adc a                                            ; $45de: $8f
	rst $38                                          ; $45df: $ff
	add $ff                                          ; $45e0: $c6 $ff
	ld h, d                                          ; $45e2: $62
	rst $38                                          ; $45e3: $ff
	pop de                                           ; $45e4: $d1
	ccf                                              ; $45e5: $3f
	db $ec                                           ; $45e6: $ec
	rra                                              ; $45e7: $1f
	di                                               ; $45e8: $f3
	rrca                                             ; $45e9: $0f
	db $fc                                           ; $45ea: $fc
	inc bc                                           ; $45eb: $03
	rst $38                                          ; $45ec: $ff
	cp a                                             ; $45ed: $bf
	rst $38                                          ; $45ee: $ff
	ld a, a                                          ; $45ef: $7f
	add b                                            ; $45f0: $80
	add b                                            ; $45f1: $80
	ld l, a                                          ; $45f2: $6f
	sbc b                                            ; $45f3: $98
	ld [hl], a                                       ; $45f4: $77
	sbc h                                            ; $45f5: $9c
	di                                               ; $45f6: $f3
	sbc h                                            ; $45f7: $9c
	cp c                                             ; $45f8: $b9
	adc $b8                                          ; $45f9: $ce $b8
	rst GetHLinHL                                          ; $45fb: $cf
	or d                                             ; $45fc: $b2
	call $c4bb                                       ; $45fd: $cd $bb $c4
	db $10                                           ; $4600: $10
	db $10                                           ; $4601: $10
	inc de                                           ; $4602: $13
	inc de                                           ; $4603: $13
	dec l                                            ; $4604: $2d
	ccf                                              ; $4605: $3f
	ld a, [hl-]                                      ; $4606: $3a
	cpl                                              ; $4607: $2f
	ei                                               ; $4608: $fb
	xor $6e                                          ; $4609: $ee $6e
	ei                                               ; $460b: $fb
	db $dd                                           ; $460c: $dd
	rst $38                                          ; $460d: $ff
	rst SubAFromBC                                          ; $460e: $e7
	rst $38                                          ; $460f: $ff
	adc b                                            ; $4610: $88
	ld e, e                                          ; $4611: $5b
	rst FarCall                                          ; $4612: $f7
	ld e, [hl]                                       ; $4613: $5e
	ld sp, hl                                        ; $4614: $f9
	xor e                                            ; $4615: $ab
	db $fc                                           ; $4616: $fc
	db $fd                                           ; $4617: $fd
	cp $e7                                           ; $4618: $fe $e7
	ld e, $fb                                        ; $461a: $1e $fb
	rst $38                                          ; $461c: $ff
	rst SubAFromBC                                          ; $461d: $e7
	rra                                              ; $461e: $1f
	rst $38                                          ; $461f: $ff
	rst $38                                          ; $4620: $ff
	ld [hl], c                                       ; $4621: $71
	rst $38                                          ; $4622: $ff
	adc h                                            ; $4623: $8c
	rst $38                                          ; $4624: $ff
	inc bc                                           ; $4625: $03
	rrca                                             ; $4626: $0f
	nop                                              ; $4627: $00
	sbc $ff                                          ; $4628: $de $ff
	adc c                                            ; $462a: $89
	rst GetHLinHL                                          ; $462b: $cf
	rst $38                                          ; $462c: $ff
	inc a                                            ; $462d: $3c
	rst $38                                          ; $462e: $ff
	ld d, e                                          ; $462f: $53
	rst $38                                          ; $4630: $ff
	and [hl]                                         ; $4631: $a6
	rst FarCall                                          ; $4632: $f7
	ld c, l                                          ; $4633: $4d
	rst AddAOntoHL                                          ; $4634: $ef
	ld c, c                                          ; $4635: $49
	db $dd                                           ; $4636: $dd
	sbc c                                            ; $4637: $99
	sbc e                                            ; $4638: $9b
	sbc e                                            ; $4639: $9b
	cp e                                             ; $463a: $bb
	xor d                                            ; $463b: $aa
	cp e                                             ; $463c: $bb
	cp e                                             ; $463d: $bb
	xor $bb                                          ; $463e: $ee $bb

jr_069_4640:
	xor $e0                                          ; $4640: $ee $e0
	pop bc                                           ; $4642: $c1
	add b                                            ; $4643: $80
	jp z, $c7f7                                      ; $4644: $ca $f7 $c7

	ld sp, hl                                        ; $4647: $f9
	ld h, c                                          ; $4648: $61
	cp $26                                           ; $4649: $fe $26
	rst $38                                          ; $464b: $ff
	ld de, $e0ff                                     ; $464c: $11 $ff $e0
	rst $38                                          ; $464f: $ff
	ld e, $ff                                        ; $4650: $1e $ff
	add c                                            ; $4652: $81
	ld a, a                                          ; $4653: $7f
	adc [hl]                                         ; $4654: $8e
	ld [hl], c                                       ; $4655: $71
	rst GetHLinHL                                          ; $4656: $cf
	jr nc, jr_069_4640                               ; $4657: $30 $e7

	jr @-$0b                                         ; $4659: $18 $f3

	inc c                                            ; $465b: $0c
	rst $38                                          ; $465c: $ff
	ld bc, $02fe                                     ; $465d: $01 $fe $02
	ld a, h                                          ; $4660: $7c
	add l                                            ; $4661: $85
	ld a, c                                          ; $4662: $79
	add b                                            ; $4663: $80
	adc e                                            ; $4664: $8b
	rst $38                                          ; $4665: $ff
	rst $38                                          ; $4666: $ff
	sub h                                            ; $4667: $94
	rst $38                                          ; $4668: $ff
	ld a, e                                          ; $4669: $7b
	xor h                                            ; $466a: $ac
	sub [hl]                                         ; $466b: $96
	ld l, c                                          ; $466c: $69
	xor l                                            ; $466d: $ad
	ld d, e                                          ; $466e: $53
	xor e                                            ; $466f: $ab
	ld d, a                                          ; $4670: $57
	ld d, a                                          ; $4671: $57
	rst $38                                          ; $4672: $ff
	cp l                                             ; $4673: $bd
	cp $ee                                           ; $4674: $fe $ee
	pop af                                           ; $4676: $f1
	sbc a                                            ; $4677: $9f
	rst $38                                          ; $4678: $ff
	ld h, [hl]                                       ; $4679: $66
	ld sp, hl                                        ; $467a: $f9
	cp a                                             ; $467b: $bf
	ld a, a                                          ; $467c: $7f
	db $e3                                           ; $467d: $e3
	ccf                                              ; $467e: $3f
	ld h, l                                          ; $467f: $65
	ld a, $ab                                        ; $4680: $3e $ab
	inc a                                            ; $4682: $3c
	sub [hl]                                         ; $4683: $96
	rst FarCall                                          ; $4684: $f7
	cp e                                             ; $4685: $bb
	and h                                            ; $4686: $a4
	db $fc                                           ; $4687: $fc
	add sp, -$05                                     ; $4688: $e8 $fb
	ld [hl], e                                       ; $468a: $73
	rst $38                                          ; $468b: $ff
	xor $de                                          ; $468c: $ee $de
	rst $38                                          ; $468e: $ff
	ld a, a                                          ; $468f: $7f
	ld d, b                                          ; $4690: $50
	adc e                                            ; $4691: $8b
	reti                                             ; $4692: $d9


	rst $38                                          ; $4693: $ff
	sbc h                                            ; $4694: $9c
	db $fd                                           ; $4695: $fd
	sub h                                            ; $4696: $94
	cp $3e                                           ; $4697: $fe $3e
	or e                                             ; $4699: $b3
	inc hl                                           ; $469a: $23
	or c                                             ; $469b: $b1
	inc sp                                           ; $469c: $33
	and b                                            ; $469d: $a0
	and c                                            ; $469e: $a1
	ldh [$a0], a                                     ; $469f: $e0 $a0
	ldh [$e0], a                                     ; $46a1: $e0 $e0
	ret nz                                           ; $46a3: $c0

	ldh [rLCDC], a                                   ; $46a4: $e0 $40
	ldh [$c0], a                                     ; $46a6: $e0 $c0
	add b                                            ; $46a8: $80
	add b                                            ; $46a9: $80
	nop                                              ; $46aa: $00
	ret nz                                           ; $46ab: $c0

	ret nz                                           ; $46ac: $c0

	ld hl, sp+$60                                    ; $46ad: $f8 $60
	or b                                             ; $46af: $b0
	sbc c                                            ; $46b0: $99
	db $fd                                           ; $46b1: $fd
	ld h, [hl]                                       ; $46b2: $66
	cp $14                                           ; $46b3: $fe $14
	db $fd                                           ; $46b5: $fd
	jp hl                                            ; $46b6: $e9


	ei                                               ; $46b7: $fb
	inc de                                           ; $46b8: $13
	rst FarCall                                          ; $46b9: $f7
	dec h                                            ; $46ba: $25
	rst AddAOntoHL                                          ; $46bb: $ef
	ret                                              ; $46bc: $c9


	ld e, a                                          ; $46bd: $5f
	sbc l                                            ; $46be: $9d
	cp e                                             ; $46bf: $bb
	dec a                                            ; $46c0: $3d
	ld a, e                                          ; $46c1: $7b
	ld e, a                                          ; $46c2: $5f
	ld sp, hl                                        ; $46c3: $f9
	rst SubAFromDE                                          ; $46c4: $df
	cp c                                             ; $46c5: $b9
	rst SubAFromDE                                          ; $46c6: $df
	add hl, sp                                       ; $46c7: $39
	rst $38                                          ; $46c8: $ff
	rst SubAFromDE                                          ; $46c9: $df
	adc [hl]                                         ; $46ca: $8e
	adc c                                            ; $46cb: $89
	ld d, l                                          ; $46cc: $55
	db $dd                                           ; $46cd: $dd
	ld hl, sp+$78                                    ; $46ce: $f8 $78
	ret z                                            ; $46d0: $c8

	ld hl, sp-$6c                                    ; $46d1: $f8 $94
	db $ec                                           ; $46d3: $ec
	inc l                                            ; $46d4: $2c
	call c, $3cd4                                    ; $46d5: $dc $d4 $3c
	xor $fe                                          ; $46d8: $ee $fe
	ld d, e                                          ; $46da: $53
	cp a                                             ; $46db: $bf
	and $ff                                          ; $46dc: $e6 $ff
	ld sp, hl                                        ; $46de: $f9
	rst $38                                          ; $46df: $ff
	ld [hl], a                                       ; $46e0: $77
	adc a                                            ; $46e1: $8f
	ld a, d                                          ; $46e2: $7a
	sub b                                            ; $46e3: $90
	add b                                            ; $46e4: $80
	rst $38                                          ; $46e5: $ff
	db $e3                                           ; $46e6: $e3
	rra                                              ; $46e7: $1f
	rrca                                             ; $46e8: $0f
	ld a, a                                          ; $46e9: $7f
	ld a, c                                          ; $46ea: $79
	rst $38                                          ; $46eb: $ff
	adc $ff                                          ; $46ec: $ce $ff
	ld sp, $ccff                                     ; $46ee: $31 $ff $cc
	rst $38                                          ; $46f1: $ff
	ld [hl-], a                                      ; $46f2: $32
	rst $38                                          ; $46f3: $ff
	adc c                                            ; $46f4: $89
	rst $38                                          ; $46f5: $ff
	call nz, Call_069_42ff                           ; $46f6: $c4 $ff $42
	rst AddAOntoHL                                          ; $46f9: $ef
	ld [hl+], a                                      ; $46fa: $22
	rst FarCall                                          ; $46fb: $f7
	ld sp, $b1fb                                     ; $46fc: $31 $fb $b1
	ei                                               ; $46ff: $fb
	ld sp, hl                                        ; $4700: $f9
	ld l, l                                          ; $4701: $6d
	db $ec                                           ; $4702: $ec
	ld h, l                                          ; $4703: $65
	sbc e                                            ; $4704: $9b
	inc l                                            ; $4705: $2c
	daa                                              ; $4706: $27
	ld h, $23                                        ; $4707: $26 $23
	ldh [$c1], a                                     ; $4709: $e0 $c1
	rst SubAFromDE                                          ; $470b: $df
	rlca                                             ; $470c: $07
	sub d                                            ; $470d: $92
	jr jr_069_472c                                   ; $470e: $18 $1c

	ld h, b                                          ; $4710: $60
	ld [hl], b                                       ; $4711: $70
	ldh [$e0], a                                     ; $4712: $e0 $e0
	jr nz, jr_069_478e                               ; $4714: $20 $78

	ld [hl], b                                       ; $4716: $70
	db $fc                                           ; $4717: $fc
	db $f4                                           ; $4718: $f4
	rst $38                                          ; $4719: $ff
	db $ec                                           ; $471a: $ec
	ld a, e                                          ; $471b: $7b
	sbc b                                            ; $471c: $98
	sub c                                            ; $471d: $91
	xor $bf                                          ; $471e: $ee $bf
	or $bf                                           ; $4720: $f6 $bf
	ei                                               ; $4722: $fb
	sbc a                                            ; $4723: $9f
	db $fc                                           ; $4724: $fc
	adc a                                            ; $4725: $8f
	cp $87                                           ; $4726: $fe $87
	rst $38                                          ; $4728: $ff
	add c                                            ; $4729: $81
	rst $38                                          ; $472a: $ff
	add b                                            ; $472b: $80

jr_069_472c:
	di                                               ; $472c: $f3
	rst SubAFromDE                                          ; $472d: $df
	ld [$30df], sp                                   ; $472e: $08 $df $30
	rst SubAFromDE                                          ; $4731: $df
	ldh [$dd], a                                     ; $4732: $e0 $dd
	add b                                            ; $4734: $80
	rst $38                                          ; $4735: $ff
	rst SubAFromDE                                          ; $4736: $df

jr_069_4737:
	ldh [$80], a                                     ; $4737: $e0 $80
	sbc h                                            ; $4739: $9c
	db $fc                                           ; $473a: $fc
	db $e3                                           ; $473b: $e3
	rst $38                                          ; $473c: $ff
	jr jr_069_4737                                   ; $473d: $18 $f8

	adc h                                            ; $473f: $8c
	db $fc                                           ; $4740: $fc
	ld h, [hl]                                       ; $4741: $66
	cp $92                                           ; $4742: $fe $92
	rst $38                                          ; $4744: $ff
	ld c, c                                          ; $4745: $49
	rst $38                                          ; $4746: $ff
	and l                                            ; $4747: $a5
	ld a, a                                          ; $4748: $7f
	ld d, [hl]                                       ; $4749: $56
	cp a                                             ; $474a: $bf
	xor d                                            ; $474b: $aa
	rst SubAFromDE                                          ; $474c: $df
	dec a                                            ; $474d: $3d
	bit 2, a                                         ; $474e: $cb $57
	db $ed                                           ; $4750: $ed
	sbc a                                            ; $4751: $9f
	ld h, h                                          ; $4752: $64
	swap [hl]                                        ; $4753: $cb $36
	ld c, a                                          ; $4755: $4f
	or d                                             ; $4756: $b2
	rst SubAFromBC                                          ; $4757: $e7
	sub e                                            ; $4758: $93
	sbc c                                            ; $4759: $99
	and a                                            ; $475a: $a7
	reti                                             ; $475b: $d9


	di                                               ; $475c: $f3
	call $edc0                                       ; $475d: $cd $c0 $ed
	add b                                            ; $4760: $80
	db $ec                                           ; $4761: $ec
	and b                                            ; $4762: $a0
	cp $a8                                           ; $4763: $fe $a8
	ld a, e                                          ; $4765: $7b
	cp $96                                           ; $4766: $fe $96
	add h                                            ; $4768: $84
	cp $d4                                           ; $4769: $fe $d4
	rst $38                                          ; $476b: $ff
	call nc, $d47f                                   ; $476c: $d4 $7f $d4
	ld a, a                                          ; $476f: $7f
	jp nc, $fe7b                                     ; $4770: $d2 $7b $fe

	adc [hl]                                         ; $4773: $8e
	jp z, $ea7f                                      ; $4774: $ca $7f $ea

	ld a, a                                          ; $4777: $7f
	jp hl                                            ; $4778: $e9


	ld a, a                                          ; $4779: $7f
	jp hl                                            ; $477a: $e9


	rst $38                                          ; $477b: $ff
	jp hl                                            ; $477c: $e9


	rst $38                                          ; $477d: $ff
	ld l, c                                          ; $477e: $69
	ld a, a                                          ; $477f: $7f
	dec l                                            ; $4780: $2d
	ccf                                              ; $4781: $3f
	xor l                                            ; $4782: $ad
	cp a                                             ; $4783: $bf
	xor h                                            ; $4784: $ac
	ld [hl], e                                       ; $4785: $73
	cp $7f                                           ; $4786: $fe $7f
	add d                                            ; $4788: $82
	sub e                                            ; $4789: $93
	db $ec                                           ; $478a: $ec
	ccf                                              ; $478b: $3f
	db $ec                                           ; $478c: $ec
	ccf                                              ; $478d: $3f

jr_069_478e:
	db $fc                                           ; $478e: $fc
	sbc a                                            ; $478f: $9f
	db $fd                                           ; $4790: $fd
	ld e, a                                          ; $4791: $5f
	db $fd                                           ; $4792: $fd
	rra                                              ; $4793: $1f
	db $fd                                           ; $4794: $fd
	rla                                              ; $4795: $17
	ld a, e                                          ; $4796: $7b
	cp $80                                           ; $4797: $fe $80
	and a                                            ; $4799: $a7
	rst $38                                          ; $479a: $ff
	and $ff                                          ; $479b: $e6 $ff
	add $3f                                          ; $479d: $c6 $3f
	inc [hl]                                         ; $479f: $34
	rrca                                             ; $47a0: $0f
	inc e                                            ; $47a1: $1c
	inc bc                                           ; $47a2: $03
	halt                                             ; $47a3: $76
	ld bc, $017b                                     ; $47a4: $01 $7b $01
	call $cc20                                       ; $47a7: $cd $20 $cc
	nop                                              ; $47aa: $00
	cp $08                                           ; $47ab: $fe $08
	di                                               ; $47ad: $f3
	adc h                                            ; $47ae: $8c
	ld [hl], e                                       ; $47af: $73
	ld b, b                                          ; $47b0: $40
	cp a                                             ; $47b1: $bf
	ld b, b                                          ; $47b2: $40
	cp l                                             ; $47b3: $bd
	pop bc                                           ; $47b4: $c1
	or e                                             ; $47b5: $b3
	ld b, e                                          ; $47b6: $43
	adc [hl]                                         ; $47b7: $8e
	add b                                            ; $47b8: $80
	rst AddAOntoHL                                          ; $47b9: $ef
	sbc h                                            ; $47ba: $9c
	rst $38                                          ; $47bb: $ff
	ld [hl], b                                       ; $47bc: $70
	ret nz                                           ; $47bd: $c0

	ret nz                                           ; $47be: $c0

	or b                                             ; $47bf: $b0
	ld [hl], b                                       ; $47c0: $70
	db $ec                                           ; $47c1: $ec
	inc e                                            ; $47c2: $1c
	ei                                               ; $47c3: $fb
	rlca                                             ; $47c4: $07
	ld a, [hl]                                       ; $47c5: $7e
	add c                                            ; $47c6: $81
	ccf                                              ; $47c7: $3f
	ret nz                                           ; $47c8: $c0

	cp a                                             ; $47c9: $bf
	ret nz                                           ; $47ca: $c0

	sbc a                                            ; $47cb: $9f
	ldh [$df], a                                     ; $47cc: $e0 $df
	ldh [$c7], a                                     ; $47ce: $e0 $c7
	ld hl, sp-$1f                                    ; $47d0: $f8 $e1
	cp $e0                                           ; $47d2: $fe $e0
	rst $38                                          ; $47d4: $ff
	ldh a, [$7f]                                     ; $47d5: $f0 $7f
	ld hl, sp-$68                                    ; $47d7: $f8 $98
	ld a, a                                          ; $47d9: $7f
	and $67                                          ; $47da: $e6 $67
	pop hl                                           ; $47dc: $e1
	and c                                            ; $47dd: $a1
	ret nc                                           ; $47de: $d0

	or b                                             ; $47df: $b0
	ld [hl], a                                       ; $47e0: $77
	cp $9c                                           ; $47e1: $fe $9c
	sub b                                            ; $47e3: $90
	ldh a, [$50]                                     ; $47e4: $f0 $50
	ld l, e                                          ; $47e6: $6b
	cp $9e                                           ; $47e7: $fe $9e
	jr nc, jr_069_484e                               ; $47e9: $30 $63

	cp $80                                           ; $47eb: $fe $80
	jr nz, @-$1e                                     ; $47ed: $20 $e0

	ld hl, $21e1                                     ; $47ef: $21 $e1 $21
	pop hl                                           ; $47f2: $e1
	ld [hl+], a                                      ; $47f3: $22
	db $e3                                           ; $47f4: $e3
	ld b, a                                          ; $47f5: $47
	add $4d                                          ; $47f6: $c6 $4d
	adc $d7                                          ; $47f8: $ce $d7
	call c, $fcf7                                    ; $47fa: $dc $f7 $fc
	rst FarCall                                          ; $47fd: $f7
	db $fc                                           ; $47fe: $fc
	rst SubAFromHL                                          ; $47ff: $d7
	db $fc                                           ; $4800: $fc
	rst SubAFromDE                                          ; $4801: $df
	db $f4                                           ; $4802: $f4
	rst SubAFromDE                                          ; $4803: $df
	db $f4                                           ; $4804: $f4
	rst $38                                          ; $4805: $ff
	call nc, $d6fd                                   ; $4806: $d4 $fd $d6
	rst FarCall                                          ; $4809: $f7
	jp c, Jump_069_7fef                              ; $480a: $da $ef $7f

	cp $80                                           ; $480d: $fe $80
	ld e, d                                          ; $480f: $5a
	rst $38                                          ; $4810: $ff
	ld c, d                                          ; $4811: $4a
	rst $38                                          ; $4812: $ff
	ld c, e                                          ; $4813: $4b
	db $db                                           ; $4814: $db
	ld l, a                                          ; $4815: $6f
	db $db                                           ; $4816: $db
	ld l, a                                          ; $4817: $6f
	or e                                             ; $4818: $b3
	ld l, a                                          ; $4819: $6f
	or c                                             ; $481a: $b1
	ld l, a                                          ; $481b: $6f
	or e                                             ; $481c: $b3
	ld l, l                                          ; $481d: $6d
	cp e                                             ; $481e: $bb
	ld h, l                                          ; $481f: $65
	xor e                                            ; $4820: $ab
	push af                                          ; $4821: $f5
	sbc d                                            ; $4822: $9a
	push af                                          ; $4823: $f5
	sbc a                                            ; $4824: $9f
	ldh a, [hDisp1_WY]                                     ; $4825: $f0 $95
	ld a, [$daad]                                    ; $4827: $fa $ad $da
	xor h                                            ; $482a: $ac
	db $db                                           ; $482b: $db
	xor c                                            ; $482c: $a9

jr_069_482d:
	ld e, a                                          ; $482d: $5f
	sbc c                                            ; $482e: $99
	rst SubAFromBC                                          ; $482f: $e7
	dec e                                            ; $4830: $1d
	db $e4                                           ; $4831: $e4
	rra                                              ; $4832: $1f
	push bc                                          ; $4833: $c5
	ld a, $f9                                        ; $4834: $3e $f9
	ld l, a                                          ; $4836: $6f
	ld a, b                                          ; $4837: $78
	ld a, h                                          ; $4838: $7c
	jp c, $f89b                                      ; $4839: $da $9b $f8

	rlca                                             ; $483c: $07
	cp $01                                           ; $483d: $fe $01
	ld l, h                                          ; $483f: $6c
	ret c                                            ; $4840: $d8

	ld a, a                                          ; $4841: $7f
	ld [hl], b                                       ; $4842: $70
	add b                                            ; $4843: $80
	rrca                                             ; $4844: $0f
	ldh a, [$03]                                     ; $4845: $f0 $03
	db $fc                                           ; $4847: $fc
	add b                                            ; $4848: $80
	rst $38                                          ; $4849: $ff
	ld b, b                                          ; $484a: $40
	ld a, a                                          ; $484b: $7f
	jr nc, jr_069_488d                               ; $484c: $30 $3f

jr_069_484e:
	inc e                                            ; $484e: $1c
	rra                                              ; $484f: $1f
	ld [$100f], sp                                   ; $4850: $08 $0f $10
	rra                                              ; $4853: $1f
	ld de, $231e                                     ; $4854: $11 $1e $23
	inc a                                            ; $4857: $3c
	inc hl                                           ; $4858: $23
	inc a                                            ; $4859: $3c
	daa                                              ; $485a: $27
	jr c, jr_069_48ac                                ; $485b: $38 $4f

	ld [hl], b                                       ; $485d: $70
	ld c, a                                          ; $485e: $4f
	ld [hl], b                                       ; $485f: $70
	sbc a                                            ; $4860: $9f
	ldh [$9f], a                                     ; $4861: $e0 $9f
	add b                                            ; $4863: $80
	ldh [$3f], a                                     ; $4864: $e0 $3f
	ret nz                                           ; $4866: $c0

	ccf                                              ; $4867: $3f
	ret nz                                           ; $4868: $c0

	ld a, a                                          ; $4869: $7f
	add b                                            ; $486a: $80
	ld a, a                                          ; $486b: $7f
	add b                                            ; $486c: $80
	ld a, [hl]                                       ; $486d: $7e
	add c                                            ; $486e: $81
	ld a, [hl]                                       ; $486f: $7e
	add c                                            ; $4870: $81
	cp $01                                           ; $4871: $fe $01
	db $fc                                           ; $4873: $fc
	inc bc                                           ; $4874: $03
	db $fc                                           ; $4875: $fc
	inc bc                                           ; $4876: $03
	ld hl, sp+$07                                    ; $4877: $f8 $07
	ld hl, sp+$07                                    ; $4879: $f8 $07
	ldh a, [rIF]                                     ; $487b: $f0 $0f
	ldh [$1f], a                                     ; $487d: $e0 $1f
	pop bc                                           ; $487f: $c1
	ccf                                              ; $4880: $3f
	and c                                            ; $4881: $a1
	ld a, a                                          ; $4882: $7f
	sub e                                            ; $4883: $93
	jp nz, $c27e                                     ; $4884: $c2 $7e $c2

	cp $84                                           ; $4887: $fe $84
	db $fc                                           ; $4889: $fc
	adc b                                            ; $488a: $88
	ld hl, sp+$08                                    ; $488b: $f8 $08

jr_069_488d:
	ld hl, sp+$10                                    ; $488d: $f8 $10
	ldh a, [rPCM34]                                  ; $488f: $f0 $77
	cp $77                                           ; $4891: $fe $77
	ld c, h                                          ; $4893: $4c
	sbc l                                            ; $4894: $9d
	or b                                             ; $4895: $b0
	ldh a, [$dd]                                     ; $4896: $f0 $dd
	ld hl, sp-$6d                                    ; $4898: $f8 $93
	ld [hl], h                                       ; $489a: $74
	db $fc                                           ; $489b: $fc
	db $f4                                           ; $489c: $f4
	ld a, h                                          ; $489d: $7c
	or h                                             ; $489e: $b4
	ld a, h                                          ; $489f: $7c
	call nz, $acbc                                   ; $48a0: $c4 $bc $ac
	call c, $f8d8                                    ; $48a3: $dc $d8 $f8
	pop af                                           ; $48a6: $f1
	rst SubAFromDE                                          ; $48a7: $df
	ret nz                                           ; $48a8: $c0

	ld a, a                                          ; $48a9: $7f
	jr z, jr_069_482d                                ; $48aa: $28 $81

jr_069_48ac:
	sub b                                            ; $48ac: $90
	ld [hl], b                                       ; $48ad: $70
	ret z                                            ; $48ae: $c8

	jr c, @-$0a                                      ; $48af: $38 $f4

	inc c                                            ; $48b1: $0c
	ld a, [$fd06]                                    ; $48b2: $fa $06 $fd
	inc bc                                           ; $48b5: $03
	rst $38                                          ; $48b6: $ff
	ld bc, $03fd                                     ; $48b7: $01 $fd $03
	ld a, e                                          ; $48ba: $7b
	add a                                            ; $48bb: $87
	ld [hl], l                                       ; $48bc: $75
	adc a                                            ; $48bd: $8f
	ld [hl], c                                       ; $48be: $71
	adc a                                            ; $48bf: $8f
	ldh a, [c]                                       ; $48c0: $f2
	ld c, $e2                                        ; $48c1: $0e $e2
	ld e, $e2                                        ; $48c3: $1e $e2
	ld e, $c2                                        ; $48c5: $1e $c2
	ld a, $c4                                        ; $48c7: $3e $c4
	inc a                                            ; $48c9: $3c
	ld [hl], a                                       ; $48ca: $77
	cp $9b                                           ; $48cb: $fe $9b
	add h                                            ; $48cd: $84
	ld a, h                                          ; $48ce: $7c
	adc b                                            ; $48cf: $88
	ld a, b                                          ; $48d0: $78
	ld l, a                                          ; $48d1: $6f
	cp $6f                                           ; $48d2: $fe $6f
	and h                                            ; $48d4: $a4
	ld a, a                                          ; $48d5: $7f
	call z, $fe77                                    ; $48d6: $cc $77 $fe
	sbc l                                            ; $48d9: $9d
	ld b, b                                          ; $48da: $40
	ret nz                                           ; $48db: $c0

	ld [hl], a                                       ; $48dc: $77
	cp $6e                                           ; $48dd: $fe $6e
	ld [hl+], a                                      ; $48df: $22
	ld sp, hl                                        ; $48e0: $f9
	ld h, $00                                        ; $48e1: $26 $00
	rst SubAFromDE                                          ; $48e3: $df
	sbc c                                            ; $48e4: $99
	sub e                                            ; $48e5: $93
	xor d                                            ; $48e6: $aa
	sbc c                                            ; $48e7: $99
	ld de, $9911                                     ; $48e8: $11 $11 $99
	ld [hl+], a                                      ; $48eb: $22
	sbc c                                            ; $48ec: $99
	nop                                              ; $48ed: $00
	sbc c                                            ; $48ee: $99
	sbc c                                            ; $48ef: $99
	ld [hl+], a                                      ; $48f0: $22
	ld de, $fb77                                     ; $48f1: $11 $77 $fb
	ld [hl], a                                       ; $48f4: $77
	or $95                                           ; $48f5: $f6 $95
	ld b, h                                          ; $48f7: $44
	cp e                                             ; $48f8: $bb
	ld de, $8800                                     ; $48f9: $11 $00 $88
	ld b, h                                          ; $48fc: $44
	cp e                                             ; $48fd: $bb
	sbc c                                            ; $48fe: $99
	adc b                                            ; $48ff: $88
	ld [hl+], a                                      ; $4900: $22
	sbc $bb                                          ; $4901: $de $bb
	sbc [hl]                                         ; $4903: $9e
	xor d                                            ; $4904: $aa
	sbc $bb                                          ; $4905: $de $bb
	inc [hl]                                         ; $4907: $34
	ld bc, $df90                                     ; $4908: $01 $90 $df
	and $ff                                          ; $490b: $e6 $ff
	add $bf                                          ; $490d: $c6 $bf
	jp nz, $86f8                                     ; $490f: $c2 $f8 $86

	db $ec                                           ; $4912: $ec
	ld e, $b7                                        ; $4913: $1e $b7
	ld a, b                                          ; $4915: $78
	rst SubAFromDE                                          ; $4916: $df
	ldh [rIE], a                                     ; $4917: $e0 $ff
	cp a                                             ; $4919: $bf
	pop hl                                           ; $491a: $e1
	pop de                                           ; $491b: $d1
	sub a                                            ; $491c: $97
	ld c, $ce                                        ; $491d: $0e $ce
	ccf                                              ; $491f: $3f
	cp b                                             ; $4920: $b8
	ld [hl], b                                       ; $4921: $70
	ldh [$80], a                                     ; $4922: $e0 $80
	ret nz                                           ; $4924: $c0

	ld a, e                                          ; $4925: $7b
	cp $80                                           ; $4926: $fe $80
	ldh [$c0], a                                     ; $4928: $e0 $c0
	ld e, a                                          ; $492a: $5f
	ld h, b                                          ; $492b: $60
	cpl                                              ; $492c: $2f
	jr nc, jr_069_495e                               ; $492d: $30 $2f

	jr nc, jr_069_4948                               ; $492f: $30 $17

	jr jr_069_493e                                   ; $4931: $18 $0b

	inc c                                            ; $4933: $0c
	ld c, $0f                                        ; $4934: $0e $0f
	add hl, de                                       ; $4936: $19
	add hl, de                                       ; $4937: $19
	sub b                                            ; $4938: $90
	sub b                                            ; $4939: $90
	sub a                                            ; $493a: $97
	sub a                                            ; $493b: $97
	sbc b                                            ; $493c: $98
	sbc a                                            ; $493d: $9f

jr_069_493e:
	ldh a, [rIE]                                     ; $493e: $f0 $ff
	and c                                            ; $4940: $a1
	rst $38                                          ; $4941: $ff
	and e                                            ; $4942: $a3
	rst $38                                          ; $4943: $ff
	adc e                                            ; $4944: $8b
	rst $38                                          ; $4945: $ff
	adc a                                            ; $4946: $8f
	sub e                                            ; $4947: $93

jr_069_4948:
	rst $38                                          ; $4948: $ff
	call nz, $41ff                                   ; $4949: $c4 $ff $41
	ld b, b                                          ; $494c: $40
	ld [bc], a                                       ; $494d: $02
	ld b, c                                          ; $494e: $41
	ld bc, $0203                                     ; $494f: $01 $03 $02
	ld bc, $bc03                                     ; $4952: $01 $03 $bc
	inc bc                                           ; $4955: $03
	ld bc, $8081                                     ; $4956: $01 $81 $80
	add b                                            ; $4959: $80
	sbc l                                            ; $495a: $9d
	ld bc, $be80                                     ; $495b: $01 $80 $be

jr_069_495e:
	inc b                                            ; $495e: $04
	ld c, $06                                        ; $495f: $0e $06
	adc a                                            ; $4961: $8f
	ld [$1816], sp                                   ; $4962: $08 $16 $18
	inc e                                            ; $4965: $1c
	ld [$0306], sp                                   ; $4966: $08 $06 $03
	ld c, $83                                        ; $4969: $0e $83

jr_069_496b:
	adc a                                            ; $496b: $8f
	di                                               ; $496c: $f3
	ld a, a                                          ; $496d: $7f
	rst $38                                          ; $496e: $ff
	rst $38                                          ; $496f: $ff
	ld [bc], a                                       ; $4970: $02
	rst $38                                          ; $4971: $ff
	cp a                                             ; $4972: $bf
	add a                                            ; $4973: $87
	ld c, a                                          ; $4974: $4f
	sbc c                                            ; $4975: $99
	jr nc, jr_069_49f2                               ; $4976: $30 $7a

	db $fd                                           ; $4978: $fd
	rst GetHLinHL                                          ; $4979: $cf
	add [hl]                                         ; $497a: $86
	nop                                              ; $497b: $00
	cp e                                             ; $497c: $bb
	ld bc, $0703                                     ; $497d: $01 $03 $07
	rlca                                             ; $4980: $07
	rlca                                             ; $4981: $07
	rst SubAFromDE                                          ; $4982: $df
	ld b, a                                          ; $4983: $47
	add b                                            ; $4984: $80
	sbc b                                            ; $4985: $98
	ld c, $de                                        ; $4986: $0e $de
	ccf                                              ; $4988: $3f
	ld [hl], e                                       ; $4989: $73
	rst FarCall                                          ; $498a: $f7
	ldh [c], a                                       ; $498b: $e2
	inc e                                            ; $498c: $1c
	inc bc                                           ; $498d: $03
	add b                                            ; $498e: $80
	inc bc                                           ; $498f: $03
	add b                                            ; $4990: $80
	inc bc                                           ; $4991: $03
	add b                                            ; $4992: $80
	ld e, e                                          ; $4993: $5b
	add b                                            ; $4994: $80
	adc l                                            ; $4995: $8d
	db $fc                                           ; $4996: $fc
	add [hl]                                         ; $4997: $86
	ld hl, sp+$1e                                    ; $4998: $f8 $1e
	rst SubAFromBC                                          ; $499a: $e7
	ld a, b                                          ; $499b: $78
	sbc a                                            ; $499c: $9f
	ldh [$f5], a                                     ; $499d: $e0 $f5
	ld c, $da                                        ; $499f: $0e $da
	dec sp                                           ; $49a1: $3b
	or l                                             ; $49a2: $b5
	ld [hl], a                                       ; $49a3: $77
	sbc $ff                                          ; $49a4: $de $ff
	add c                                            ; $49a6: $81
	ld c, [hl]                                       ; $49a7: $4e
	inc bc                                           ; $49a8: $03
	add b                                            ; $49a9: $80
	inc bc                                           ; $49aa: $03
	add b                                            ; $49ab: $80
	inc bc                                           ; $49ac: $03
	add b                                            ; $49ad: $80
	ld e, a                                          ; $49ae: $5f
	add b                                            ; $49af: $80
	adc d                                            ; $49b0: $8a
	add $e4                                          ; $49b1: $c6 $e4
	sbc [hl]                                         ; $49b3: $9e
	jp c, Jump_069_6f3c                              ; $49b4: $da $3c $6f

	ldh a, [$af]                                     ; $49b7: $f0 $af
	sbc $d3                                          ; $49b9: $de $d3
	dec sp                                           ; $49bb: $3b
	or e                                             ; $49bc: $b3
	ld [hl], a                                       ; $49bd: $77
	db $dd                                           ; $49be: $dd
	rst $38                                          ; $49bf: $ff
	sbc e                                            ; $49c0: $9b
	ld e, a                                          ; $49c1: $5f
	sbc $1f                                          ; $49c2: $de $1f
	ldh a, [$8e]                                     ; $49c4: $f0 $8e
	inc bc                                           ; $49c6: $03
	add b                                            ; $49c7: $80
	inc bc                                           ; $49c8: $03
	add b                                            ; $49c9: $80
	inc bc                                           ; $49ca: $03
	add b                                            ; $49cb: $80
	cp [hl]                                          ; $49cc: $be
	rlca                                             ; $49cd: $07
	ld bc, $9a56                                     ; $49ce: $01 $56 $9a
	inc l                                            ; $49d1: $2c
	nop                                              ; $49d2: $00
	nop                                              ; $49d3: $00
	ld a, [bc]                                       ; $49d4: $0a
	inc b                                            ; $49d5: $04
	cp [hl]                                          ; $49d6: $be
	nop                                              ; $49d7: $00
	nop                                              ; $49d8: $00
	add b                                            ; $49d9: $80
	add b                                            ; $49da: $80
	pop hl                                           ; $49db: $e1
	ret nz                                           ; $49dc: $c0

	rst $38                                          ; $49dd: $ff
	or e                                             ; $49de: $b3
	cp a                                             ; $49df: $bf
	adc a                                            ; $49e0: $8f
	sbc a                                            ; $49e1: $9f
	add e                                            ; $49e2: $83
	adc a                                            ; $49e3: $8f
	add b                                            ; $49e4: $80
	and a                                            ; $49e5: $a7
	add b                                            ; $49e6: $80
	and b                                            ; $49e7: $a0
	add b                                            ; $49e8: $80
	jr nz, jr_069_496b                               ; $49e9: $20 $80

	stop                                             ; $49eb: $10 $00
	ld sp, hl                                        ; $49ed: $f9
	add a                                            ; $49ee: $87
	pop af                                           ; $49ef: $f1
	rrca                                             ; $49f0: $0f
	di                                               ; $49f1: $f3

jr_069_49f2:
	rrca                                             ; $49f2: $0f
	push hl                                          ; $49f3: $e5
	dec e                                            ; $49f4: $1d
	db $ec                                           ; $49f5: $ec
	inc e                                            ; $49f6: $1c
	call c, $bf3c                                    ; $49f7: $dc $3c $bf
	add l                                            ; $49fa: $85
	ld a, a                                          ; $49fb: $7f
	db $f4                                           ; $49fc: $f4
	rst $38                                          ; $49fd: $ff
	and $ff                                          ; $49fe: $e6 $ff
	rst JumpTable                                          ; $4a00: $c7
	rst $38                                          ; $4a01: $ff
	add a                                            ; $4a02: $87
	rst $38                                          ; $4a03: $ff
	ld [hl+], a                                      ; $4a04: $22
	rst SubAFromDE                                          ; $4a05: $df
	ld h, d                                          ; $4a06: $62
	sbc a                                            ; $4a07: $9f
	pop hl                                           ; $4a08: $e1
	rra                                              ; $4a09: $1f
	ret                                              ; $4a0a: $c9


	scf                                              ; $4a0b: $37
	ret c                                            ; $4a0c: $d8

	daa                                              ; $4a0d: $27
	ld bc, $7f00                                     ; $4a0e: $01 $00 $7f
	ccf                                              ; $4a11: $3f
	ld a, $1a                                        ; $4a12: $3e $1a
	nop                                              ; $4a14: $00
	cp [hl]                                          ; $4a15: $be
	inc c                                            ; $4a16: $0c
	nop                                              ; $4a17: $00
	nop                                              ; $4a18: $00
	inc bc                                           ; $4a19: $03
	ret nz                                           ; $4a1a: $c0

	ccf                                              ; $4a1b: $3f
	ret nz                                           ; $4a1c: $c0

	ld a, a                                          ; $4a1d: $7f
	ld a, b                                          ; $4a1e: $78
	ld a, a                                          ; $4a1f: $7f
	ret nz                                           ; $4a20: $c0

	sbc h                                            ; $4a21: $9c
	ccf                                              ; $4a22: $3f
	ld a, [de]                                       ; $4a23: $1a
	ld e, $7b                                        ; $4a24: $1e $7b
	pop bc                                           ; $4a26: $c1
	ld a, e                                          ; $4a27: $7b
	db $fd                                           ; $4a28: $fd
	inc bc                                           ; $4a29: $03
	ret nz                                           ; $4a2a: $c0

	dec hl                                           ; $4a2b: $2b
	ret nz                                           ; $4a2c: $c0

	sbc e                                            ; $4a2d: $9b
	ccf                                              ; $4a2e: $3f
	ld e, $12                                        ; $4a2f: $1e $12
	inc c                                            ; $4a31: $0c
	ld [hl], a                                       ; $4a32: $77
	cp [hl]                                          ; $4a33: $be
	inc sp                                           ; $4a34: $33
	ret nz                                           ; $4a35: $c0

	sbc l                                            ; $4a36: $9d
	ld [hl], c                                       ; $4a37: $71
	adc a                                            ; $4a38: $8f
	rla                                              ; $4a39: $17
	ret nz                                           ; $4a3a: $c0

	add hl, de                                       ; $4a3b: $19
	add e                                            ; $4a3c: $83
	sub a                                            ; $4a3d: $97
	inc bc                                           ; $4a3e: $03
	inc b                                            ; $4a3f: $04
	nop                                              ; $4a40: $00
	ld bc, $0403                                     ; $4a41: $01 $03 $04
	inc b                                            ; $4a44: $04
	nop                                              ; $4a45: $00
	ld h, a                                          ; $4a46: $67
	ld hl, sp-$11                                    ; $4a47: $f8 $ef
	sbc l                                            ; $4a49: $9d
	inc bc                                           ; $4a4a: $03
	rlca                                             ; $4a4b: $07
	sbc $09                                          ; $4a4c: $de $09
	sbc d                                            ; $4a4e: $9a
	rla                                              ; $4a4f: $17
	nop                                              ; $4a50: $00
	ld bc, $0602                                     ; $4a51: $01 $02 $06
	sbc $0e                                          ; $4a54: $de $0e
	adc [hl]                                         ; $4a56: $8e
	ld a, [de]                                       ; $4a57: $1a
	rra                                              ; $4a58: $1f
	ld l, $3a                                        ; $4a59: $2e $3a
	add hl, sp                                       ; $4a5b: $39
	dec l                                            ; $4a5c: $2d
	ld d, l                                          ; $4a5d: $55
	ld c, [hl]                                       ; $4a5e: $4e
	ld b, [hl]                                       ; $4a5f: $46
	ld [de], a                                       ; $4a60: $12
	inc sp                                           ; $4a61: $33
	daa                                              ; $4a62: $27
	daa                                              ; $4a63: $27
	inc sp                                           ; $4a64: $33
	ld a, e                                          ; $4a65: $7b
	ld a, c                                          ; $4a66: $79
	ld a, c                                          ; $4a67: $79
	db $fc                                           ; $4a68: $fc
	sbc h                                            ; $4a69: $9c
	ld hl, sp+$37                                    ; $4a6a: $f8 $37
	ld [$f86f], sp                                   ; $4a6c: $08 $6f $f8
	add b                                            ; $4a6f: $80
	ccf                                              ; $4a70: $3f
	rrca                                             ; $4a71: $0f
	ld b, $03                                        ; $4a72: $06 $03
	ld [bc], a                                       ; $4a74: $02
	inc c                                            ; $4a75: $0c
	ld [de], a                                       ; $4a76: $12
	dec de                                           ; $4a77: $1b
	ld l, $2c                                        ; $4a78: $2e $2c
	rlca                                             ; $4a7a: $07
	inc bc                                           ; $4a7b: $03
	inc bc                                           ; $4a7c: $03
	rrca                                             ; $4a7d: $0f
	dec e                                            ; $4a7e: $1d
	inc d                                            ; $4a7f: $14
	ld sp, $eb33                                     ; $4a80: $31 $33 $eb
	rst FarCall                                          ; $4a83: $f7
	ld a, l                                          ; $4a84: $7d
	sbc d                                            ; $4a85: $9a
	ld e, d                                          ; $4a86: $5a
	or [hl]                                          ; $4a87: $b6
	ld h, [hl]                                       ; $4a88: $66
	ld a, l                                          ; $4a89: $7d
	rst FarCall                                          ; $4a8a: $f7
	xor $7e                                          ; $4a8b: $ee $7e
	db $fd                                           ; $4a8d: $fd
	cp l                                             ; $4a8e: $bd
	sbc c                                            ; $4a8f: $99
	ld sp, hl                                        ; $4a90: $f9
	ld a, c                                          ; $4a91: $79
	ld h, e                                          ; $4a92: $63
	ld d, l                                          ; $4a93: $55
	ld d, d                                          ; $4a94: $52
	ld b, e                                          ; $4a95: $43
	sbc $55                                          ; $4a96: $de $55
	sbc e                                            ; $4a98: $9b
	ld e, c                                          ; $4a99: $59
	add hl, hl                                       ; $4a9a: $29
	ld l, e                                          ; $4a9b: $6b
	ld l, a                                          ; $4a9c: $6f
	call c, $867e                                    ; $4a9d: $dc $7e $86
	ld a, $28                                        ; $4aa0: $3e $28
	add hl, de                                       ; $4aa2: $19
	dec e                                            ; $4aa3: $1d
	ld c, $16                                        ; $4aa4: $0e $16
	rla                                              ; $4aa6: $17
	dec de                                           ; $4aa7: $1b
	dec e                                            ; $4aa8: $1d
	ccf                                              ; $4aa9: $3f
	rra                                              ; $4aaa: $1f
	dec de                                           ; $4aab: $1b
	dec bc                                           ; $4aac: $0b
	dec de                                           ; $4aad: $1b
	ld a, [de]                                       ; $4aae: $1a
	ld d, $16                                        ; $4aaf: $16 $16
	rra                                              ; $4ab1: $1f
	dec de                                           ; $4ab2: $1b
	rra                                              ; $4ab3: $1f
	rra                                              ; $4ab4: $1f
	rla                                              ; $4ab5: $17
	dec d                                            ; $4ab6: $15
	ld de, $dd15                                     ; $4ab7: $11 $15 $dd
	inc d                                            ; $4aba: $14
	sbc [hl]                                         ; $4abb: $9e
	inc e                                            ; $4abc: $1c
	sbc $1e                                          ; $4abd: $de $1e
	ld a, e                                          ; $4abf: $7b
	rst FarCall                                          ; $4ac0: $f7
	db $dd                                           ; $4ac1: $dd
	ld d, $9d                                        ; $4ac2: $16 $9d
	inc de                                           ; $4ac4: $13
	ld e, $da                                        ; $4ac5: $1e $da
	rra                                              ; $4ac7: $1f
	rst SubAFromDE                                          ; $4ac8: $df
	dec bc                                           ; $4ac9: $0b
	rst SubAFromDE                                          ; $4aca: $df
	ld a, [bc]                                       ; $4acb: $0a
	rst SubAFromDE                                          ; $4acc: $df
	dec b                                            ; $4acd: $05
	adc h                                            ; $4ace: $8c
	rrca                                             ; $4acf: $0f
	inc sp                                           ; $4ad0: $33
	rrca                                             ; $4ad1: $0f
	rrca                                             ; $4ad2: $0f
	ld c, $0e                                        ; $4ad3: $0e $0e
	rlca                                             ; $4ad5: $07
	rlca                                             ; $4ad6: $07
	rrca                                             ; $4ad7: $0f
	ccf                                              ; $4ad8: $3f
	add hl, hl                                       ; $4ad9: $29
	sub b                                            ; $4ada: $90
	ld [$5010], sp                                   ; $4adb: $08 $10 $50
	and b                                            ; $4ade: $a0
	ld [hl], b                                       ; $4adf: $70
	or b                                             ; $4ae0: $b0
	rst JumpTable                                          ; $4ae1: $c7
	db $dd                                           ; $4ae2: $dd
	rrca                                             ; $4ae3: $0f
	sbc $1f                                          ; $4ae4: $de $1f
	sub [hl]                                         ; $4ae6: $96
	ldh [$60], a                                     ; $4ae7: $e0 $60
	ldh [$f0], a                                     ; $4ae9: $e0 $f0
	ldh [$60], a                                     ; $4aeb: $e0 $60
	ldh a, [$f8]                                     ; $4aed: $f0 $f8
	rra                                              ; $4aef: $1f
	db $dd                                           ; $4af0: $dd
	ccf                                              ; $4af1: $3f
	rst SubAFromDE                                          ; $4af2: $df
	cp a                                             ; $4af3: $bf
	sbc [hl]                                         ; $4af4: $9e
	sbc a                                            ; $4af5: $9f
	ld a, e                                          ; $4af6: $7b
	ld c, b                                          ; $4af7: $48
	sbc d                                            ; $4af8: $9a
	inc b                                            ; $4af9: $04
	add hl, bc                                       ; $4afa: $09
	dec bc                                           ; $4afb: $0b
	ld a, $ff                                        ; $4afc: $3e $ff
	ld a, e                                          ; $4afe: $7b
	ld [hl+], a                                      ; $4aff: $22
	ld a, a                                          ; $4b00: $7f
	jp nc, $0f94                                     ; $4b01: $d2 $94 $0f

	scf                                              ; $4b04: $37
	rst FarCall                                          ; $4b05: $f7
	ld [hl], h                                       ; $4b06: $74
	cp $3b                                           ; $4b07: $fe $3b
	ld l, a                                          ; $4b09: $6f
	ld a, c                                          ; $4b0a: $79
	ld a, a                                          ; $4b0b: $7f
	ld h, d                                          ; $4b0c: $62
	jp nz, $efde                                     ; $4b0d: $c2 $de $ef

	sbc $df                                          ; $4b10: $de $df
	rst SubAFromDE                                          ; $4b12: $df
	rst $38                                          ; $4b13: $ff
	add b                                            ; $4b14: $80
	or [hl]                                          ; $4b15: $b6
	ld d, l                                          ; $4b16: $55
	ld c, [hl]                                       ; $4b17: $4e
	db $db                                           ; $4b18: $db
	or [hl]                                          ; $4b19: $b6
	ld l, l                                          ; $4b1a: $6d
	adc [hl]                                         ; $4b1b: $8e
	inc d                                            ; $4b1c: $14
	call $bfaf                                       ; $4b1d: $cd $af $bf
	inc a                                            ; $4b20: $3c
	ld [hl], c                                       ; $4b21: $71
	db $e3                                           ; $4b22: $e3
	push bc                                          ; $4b23: $c5
	adc e                                            ; $4b24: $8b
	add hl, hl                                       ; $4b25: $29
	ld c, d                                          ; $4b26: $4a
	ld d, h                                          ; $4b27: $54
	sub c                                            ; $4b28: $91
	and a                                            ; $4b29: $a7
	cpl                                              ; $4b2a: $2f
	dec a                                            ; $4b2b: $3d
	ld a, [hl+]                                      ; $4b2c: $2a
	sub a                                            ; $4b2d: $97
	dec [hl]                                         ; $4b2e: $35
	dec hl                                           ; $4b2f: $2b
	ld l, a                                          ; $4b30: $6f
	ld e, a                                          ; $4b31: $5f
	ret nc                                           ; $4b32: $d0

	ret nz                                           ; $4b33: $c0

	add b                                            ; $4b34: $80
	pop bc                                           ; $4b35: $c1
	ld e, d                                          ; $4b36: $5a
	inc de                                           ; $4b37: $13
	and l                                            ; $4b38: $a5
	and l                                            ; $4b39: $a5
	inc de                                           ; $4b3a: $13
	ld d, d                                          ; $4b3b: $52
	ld e, [hl]                                       ; $4b3c: $5e
	sbc [hl]                                         ; $4b3d: $9e
	add c                                            ; $4b3e: $81
	add b                                            ; $4b3f: $80
	ld [de], a                                       ; $4b40: $12
	ld [de], a                                       ; $4b41: $12
	inc h                                            ; $4b42: $24
	dec h                                            ; $4b43: $25
	ld hl, $9661                                     ; $4b44: $21 $61 $96
	ld d, $14                                        ; $4b47: $16 $14
	ld d, l                                          ; $4b49: $55
	ld e, l                                          ; $4b4a: $5d
	call $c1cd                                       ; $4b4b: $cd $cd $c1
	ld l, c                                          ; $4b4e: $69
	jp hl                                            ; $4b4f: $e9


	db $eb                                           ; $4b50: $eb
	xor e                                            ; $4b51: $ab
	xor e                                            ; $4b52: $ab
	dec sp                                           ; $4b53: $3b
	sub l                                            ; $4b54: $95
	dec sp                                           ; $4b55: $3b
	ccf                                              ; $4b56: $3f
	ld b, c                                          ; $4b57: $41
	ld h, c                                          ; $4b58: $61
	ld h, c                                          ; $4b59: $61
	ld l, c                                          ; $4b5a: $69
	ld l, c                                          ; $4b5b: $69
	add hl, hl                                       ; $4b5c: $29
	add hl, hl                                       ; $4b5d: $29
	dec h                                            ; $4b5e: $25
	call c, $debf                                    ; $4b5f: $dc $bf $de
	rst $38                                          ; $4b62: $ff

Jump_069_4b63:
	rst SubAFromDE                                          ; $4b63: $df
	inc d                                            ; $4b64: $14
	sbc $94                                          ; $4b65: $de $94
	rst SubAFromDE                                          ; $4b67: $df
	jp z, $ae9e                                      ; $4b68: $ca $9e $ae

	reti                                             ; $4b6b: $d9


	rst $38                                          ; $4b6c: $ff
	sbc d                                            ; $4b6d: $9a
	sbc e                                            ; $4b6e: $9b
	sbc c                                            ; $4b6f: $99
	ld c, l                                          ; $4b70: $4d
	inc b                                            ; $4b71: $04
	ld [bc], a                                       ; $4b72: $02
	cp $d9                                           ; $4b73: $fe $d9
	rst $38                                          ; $4b75: $ff
	cp $7f                                           ; $4b76: $fe $7f
	halt                                             ; $4b78: $76
	sbc h                                            ; $4b79: $9c
	ld c, $1b                                        ; $4b7a: $0e $1b
	ld [hl], d                                       ; $4b7c: $72
	call c, $82ff                                    ; $4b7d: $dc $ff $82

jr_069_4b80:
	db $fc                                           ; $4b80: $fc
	di                                               ; $4b81: $f3
	ldh a, [c]                                       ; $4b82: $f2
	nop                                              ; $4b83: $00
	ld hl, sp+$60                                    ; $4b84: $f8 $60
	add c                                            ; $4b86: $81
	ld [bc], a                                       ; $4b87: $02
	push bc                                          ; $4b88: $c5
	rst $38                                          ; $4b89: $ff
	halt                                             ; $4b8a: $76
	nop                                              ; $4b8b: $00
	ld hl, sp-$20                                    ; $4b8c: $f8 $e0
	add c                                            ; $4b8e: $81
	inc bc                                           ; $4b8f: $03
	rst JumpTable                                          ; $4b90: $c7
	ccf                                              ; $4b91: $3f
	sbc a                                            ; $4b92: $9f
	db $db                                           ; $4b93: $db
	ld l, e                                          ; $4b94: $6b
	ld a, [hl+]                                      ; $4b95: $2a
	ld d, l                                          ; $4b96: $55
	rst $38                                          ; $4b97: $ff
	jp hl                                            ; $4b98: $e9


	and h                                            ; $4b99: $a4
	and h                                            ; $4b9a: $a4
	ld l, $9e                                        ; $4b9b: $2e $9e
	ld a, e                                          ; $4b9d: $7b
	ld h, e                                          ; $4b9e: $63
	sbc $ff                                          ; $4b9f: $de $ff
	sub a                                            ; $4ba1: $97
	cp $c3                                           ; $4ba2: $fe $c3
	inc e                                            ; $4ba4: $1c
	inc bc                                           ; $4ba5: $03
	ld a, c                                          ; $4ba6: $79
	add a                                            ; $4ba7: $87
	add hl, sp                                       ; $4ba8: $39
	add $d9                                          ; $4ba9: $c6 $d9
	rst $38                                          ; $4bab: $ff
	adc a                                            ; $4bac: $8f
	jr jr_069_4c10                                   ; $4bad: $18 $61

	add a                                            ; $4baf: $87
	ld a, $c4                                        ; $4bb0: $3e $c4
	add hl, bc                                       ; $4bb2: $09
	inc de                                           ; $4bb3: $13
	cpl                                              ; $4bb4: $2f
	rst $38                                          ; $4bb5: $ff
	di                                               ; $4bb6: $f3
	rst GetHLinHL                                          ; $4bb7: $cf
	ld a, a                                          ; $4bb8: $7f
	db $fd                                           ; $4bb9: $fd
	ei                                               ; $4bba: $fb
	or $fc                                           ; $4bbb: $f6 $fc
	ldh [$c1], a                                     ; $4bbd: $e0 $c1
	sub a                                            ; $4bbf: $97
	ld c, c                                          ; $4bc0: $49
	ld l, c                                          ; $4bc1: $69
	db $eb                                           ; $4bc2: $eb
	xor $6d                                          ; $4bc3: $ee $6d
	ld a, d                                          ; $4bc5: $7a
	inc [hl]                                         ; $4bc6: $34
	inc e                                            ; $4bc7: $1c
	sbc $f0                                          ; $4bc8: $de $f0
	add d                                            ; $4bca: $82
	pop af                                           ; $4bcb: $f1
	di                                               ; $4bcc: $f3
	rst FarCall                                          ; $4bcd: $f7
	rst $38                                          ; $4bce: $ff
	rst $38                                          ; $4bcf: $ff
	ld [$6b1e], sp                                   ; $4bd0: $08 $1e $6b
	and c                                            ; $4bd3: $a1
	ld b, h                                          ; $4bd4: $44
	add e                                            ; $4bd5: $83
	sub a                                            ; $4bd6: $97
	ld h, h                                          ; $4bd7: $64
	rst $38                                          ; $4bd8: $ff
	rst $38                                          ; $4bd9: $ff
	rst FarCall                                          ; $4bda: $f7
	ret nz                                           ; $4bdb: $c0

	add b                                            ; $4bdc: $80
	add c                                            ; $4bdd: $81
	add e                                            ; $4bde: $83
	ld b, h                                          ; $4bdf: $44
	nop                                              ; $4be0: $00
	nop                                              ; $4be1: $00
	ld h, b                                          ; $4be2: $60
	sbc h                                            ; $4be3: $9c
	and a                                            ; $4be4: $a7
	ret z                                            ; $4be5: $c8

	jr nc, jr_069_4b80                               ; $4be6: $30 $98

	ld [hl], a                                       ; $4be8: $77
	ld hl, sp-$80                                    ; $4be9: $f8 $80
	cp a                                             ; $4beb: $bf
	ld hl, sp-$10                                    ; $4bec: $f8 $f0
	ld a, b                                          ; $4bee: $78
	push de                                          ; $4bef: $d5
	ld d, [hl]                                       ; $4bf0: $56
	xor l                                            ; $4bf1: $ad
	ld a, [$7df6]                                    ; $4bf2: $fa $f6 $7d
	xor l                                            ; $4bf5: $ad
	cp d                                             ; $4bf6: $ba
	dec a                                            ; $4bf7: $3d
	cp a                                             ; $4bf8: $bf
	cp $fd                                           ; $4bf9: $fe $fd
	ld sp, hl                                        ; $4bfb: $f9
	di                                               ; $4bfc: $f3
	di                                               ; $4bfd: $f3
	rst SubAFromBC                                          ; $4bfe: $e7
	ld l, e                                          ; $4bff: $6b
	ld l, h                                          ; $4c00: $6c
	and a                                            ; $4c01: $a7
	ld [hl], l                                       ; $4c02: $75
	xor $ef                                          ; $4c03: $ee $ef
	db $ec                                           ; $4c05: $ec
	add hl, sp                                       ; $4c06: $39
	rst SubAFromBC                                          ; $4c07: $e7
	rst SubAFromBC                                          ; $4c08: $e7
	rst AddAOntoHL                                          ; $4c09: $ef
	sub d                                            ; $4c0a: $92
	rst AddAOntoHL                                          ; $4c0b: $ef
	rst $38                                          ; $4c0c: $ff
	cp $ff                                           ; $4c0d: $fe $ff
	rst $38                                          ; $4c0f: $ff

jr_069_4c10:
	ld a, a                                          ; $4c10: $7f
	cp $ef                                           ; $4c11: $fe $ef
	or [hl]                                          ; $4c13: $b6
	cp e                                             ; $4c14: $bb
	sbc a                                            ; $4c15: $9f
	push de                                          ; $4c16: $d5
	pop af                                           ; $4c17: $f1
	db $dd                                           ; $4c18: $dd
	rst $38                                          ; $4c19: $ff
	sbc e                                            ; $4c1a: $9b
	rst FarCall                                          ; $4c1b: $f7
	di                                               ; $4c1c: $f3
	cp e                                             ; $4c1d: $bb
	sbc a                                            ; $4c1e: $9f
	ldh [$c1], a                                     ; $4c1f: $e0 $c1
	sbc e                                            ; $4c21: $9b
	ret nc                                           ; $4c22: $d0

	and b                                            ; $4c23: $a0
	ld b, b                                          ; $4c24: $40
	add b                                            ; $4c25: $80
	db $fd                                           ; $4c26: $fd
	sbc l                                            ; $4c27: $9d
	ccf                                              ; $4c28: $3f
	ld a, a                                          ; $4c29: $7f
	ld h, [hl]                                       ; $4c2a: $66
	ret nz                                           ; $4c2b: $c0

	sbc c                                            ; $4c2c: $99
	and b                                            ; $4c2d: $a0
	ld [hl], d                                       ; $4c2e: $72

jr_069_4c2f:
	xor h                                            ; $4c2f: $ac
	ld d, a                                          ; $4c30: $57
	xor c                                            ; $4c31: $a9
	or d                                             ; $4c32: $b2
	db $dd                                           ; $4c33: $dd
	rst $38                                          ; $4c34: $ff
	sbc e                                            ; $4c35: $9b
	cp a                                             ; $4c36: $bf
	ld [hl], a                                       ; $4c37: $77
	rst AddAOntoHL                                          ; $4c38: $ef
	cp b                                             ; $4c39: $b8
	cp $9a                                           ; $4c3a: $fe $9a
	ld [$3018], sp                                   ; $4c3c: $08 $18 $30
	ld d, b                                          ; $4c3f: $50
	and b                                            ; $4c40: $a0
	ld l, a                                          ; $4c41: $6f
	ld hl, sp-$66                                    ; $4c42: $f8 $9a
	ld [hl], b                                       ; $4c44: $70
	ldh [rAUD4LEN], a                                ; $4c45: $e0 $20
	ld b, b                                          ; $4c47: $40
	ld b, b                                          ; $4c48: $40
	sbc $80                                          ; $4c49: $de $80
	sbc d                                            ; $4c4b: $9a
	ret nz                                           ; $4c4c: $c0

	jr nc, jr_069_4c2f                               ; $4c4d: $30 $e0

jr_069_4c4f:
	ret nz                                           ; $4c4f: $c0

	ret nz                                           ; $4c50: $c0

	ld [hl], a                                       ; $4c51: $77
	ld hl, sp-$6e                                    ; $4c52: $f8 $92
	ldh a, [$9f]                                     ; $4c54: $f0 $9f
	ld [hl], a                                       ; $4c56: $77
	call nz, $dc53                                   ; $4c57: $c4 $53 $dc

jr_069_4c5a:
	cp a                                             ; $4c5a: $bf
	call z, $ffe2                                    ; $4c5b: $cc $e2 $ff
	ld hl, sp-$1d                                    ; $4c5e: $f8 $e3
	adc a                                            ; $4c60: $8f
	ld [hl], a                                       ; $4c61: $77
	cp h                                             ; $4c62: $bc
	sub a                                            ; $4c63: $97
	add hl, de                                       ; $4c64: $19
	call nz, $cdb0                                   ; $4c65: $c4 $b0 $cd
	dec hl                                           ; $4c68: $2b
	ld d, h                                          ; $4c69: $54
	or [hl]                                          ; $4c6a: $b6
	ld l, c                                          ; $4c6b: $69
	halt                                             ; $4c6c: $76
	and l                                            ; $4c6d: $a5
	sbc e                                            ; $4c6e: $9b
	or $3b                                           ; $4c6f: $f6 $3b
	sbc c                                            ; $4c71: $99
	call c, $bfe0                                    ; $4c72: $dc $e0 $bf
	sbc $01                                          ; $4c75: $de $01
	ld a, d                                          ; $4c77: $7a
	rra                                              ; $4c78: $1f
	ld h, d                                          ; $4c79: $62
	jr nz, jr_069_4c5a                               ; $4c7a: $20 $de

	ld bc, $967d                                     ; $4c7c: $01 $7d $96
	sbc l                                            ; $4c7f: $9d
	add d                                            ; $4c80: $82
	ld b, e                                          ; $4c81: $43
	jp c, $80ff                                      ; $4c82: $da $ff $80

	cp $c0                                           ; $4c85: $fe $c0
	ld a, $f0                                        ; $4c87: $3e $f0
	add b                                            ; $4c89: $80
	ld b, b                                          ; $4c8a: $40
	jr nz, @-$2e                                     ; $4c8b: $20 $d0

	jr z, jr_069_4c4f                                ; $4c8d: $28 $c0

	cp $f0                                           ; $4c8f: $fe $f0
	add b                                            ; $4c91: $80
	ret nz                                           ; $4c92: $c0

	ldh [$f0], a                                     ; $4c93: $e0 $f0
	ld hl, sp+$18                                    ; $4c95: $f8 $18
	ld c, h                                          ; $4c97: $4c
	inc h                                            ; $4c98: $24
	ld [de], a                                       ; $4c99: $12
	sub d                                            ; $4c9a: $92
	ret                                              ; $4c9b: $c9


	ret                                              ; $4c9c: $c9


	ld h, l                                          ; $4c9d: $65
	ld hl, sp-$44                                    ; $4c9e: $f8 $bc
	call c, $6eee                                    ; $4ca0: $dc $ee $6e
	scf                                              ; $4ca3: $37
	ld a, [hl]                                       ; $4ca4: $7e
	db $10                                           ; $4ca5: $10
	adc a                                            ; $4ca6: $8f
	ld h, l                                          ; $4ca7: $65
	and d                                            ; $4ca8: $a2
	ld a, [hl-]                                      ; $4ca9: $3a
	add hl, sp                                       ; $4caa: $39
	push de                                          ; $4cab: $d5
	ld d, l                                          ; $4cac: $55
	ld d, h                                          ; $4cad: $54
	ld a, [hl+]                                      ; $4cae: $2a
	sbc a                                            ; $4caf: $9f
	ld e, a                                          ; $4cb0: $5f
	ld c, a                                          ; $4cb1: $4f
	ld c, a                                          ; $4cb2: $4f
	cpl                                              ; $4cb3: $2f
	xor a                                            ; $4cb4: $af
	xor a                                            ; $4cb5: $af
	rst SubAFromHL                                          ; $4cb6: $d7
	sbc $aa                                          ; $4cb7: $de $aa
	sbc d                                            ; $4cb9: $9a
	and d                                            ; $4cba: $a2
	pop de                                           ; $4cbb: $d1
	pop de                                           ; $4cbc: $d1
	ld d, c                                          ; $4cbd: $51
	ld b, c                                          ; $4cbe: $41
	sbc $d7                                          ; $4cbf: $de $d7
	sbc [hl]                                         ; $4cc1: $9e
	rst SubAFromDE                                          ; $4cc2: $df
	sbc $ef                                          ; $4cc3: $de $ef
	sbc h                                            ; $4cc5: $9c
	rst $38                                          ; $4cc6: $ff
	db $d3                                           ; $4cc7: $d3
	sub e                                            ; $4cc8: $93
	sbc $92                                          ; $4cc9: $de $92
	sbc h                                            ; $4ccb: $9c
	and d                                            ; $4ccc: $a2
	xor d                                            ; $4ccd: $aa
	xor h                                            ; $4cce: $ac
	ld a, e                                          ; $4ccf: $7b
	or l                                             ; $4cd0: $b5
	db $dd                                           ; $4cd1: $dd
	cp $94                                           ; $4cd2: $fe $94
	db $fc                                           ; $4cd4: $fc
	xor h                                            ; $4cd5: $ac
	xor h                                            ; $4cd6: $ac
	xor b                                            ; $4cd7: $a8
	ret c                                            ; $4cd8: $d8

	ret c                                            ; $4cd9: $d8

	call c, $f7df                                    ; $4cda: $dc $df $f7
	db $fc                                           ; $4cdd: $fc
	db $fc                                           ; $4cde: $fc
	sbc $f8                                          ; $4cdf: $de $f8
	sub b                                            ; $4ce1: $90
	db $fc                                           ; $4ce2: $fc
	rst $38                                          ; $4ce3: $ff
	ld hl, sp-$1c                                    ; $4ce4: $f8 $e4
	db $ec                                           ; $4ce6: $ec
	db $e4                                           ; $4ce7: $e4
	cp d                                             ; $4ce8: $ba
	ld e, d                                          ; $4ce9: $5a
	ld [hl], c                                       ; $4cea: $71
	db $ec                                           ; $4ceb: $ec
	or l                                             ; $4cec: $b5
	ld hl, sp-$10                                    ; $4ced: $f8 $f0
	ldh a, [$e0]                                     ; $4cef: $f0 $e0
	ld a, e                                          ; $4cf1: $7b
	inc c                                            ; $4cf2: $0c
	sub [hl]                                         ; $4cf3: $96
	ret nz                                           ; $4cf4: $c0

	rst AddAOntoHL                                          ; $4cf5: $ef
	push de                                          ; $4cf6: $d5
	db $db                                           ; $4cf7: $db
	ld l, e                                          ; $4cf8: $6b
	rst $38                                          ; $4cf9: $ff
	or a                                             ; $4cfa: $b7
	rst SubAFromDE                                          ; $4cfb: $df
	db $db                                           ; $4cfc: $db
	db $dd                                           ; $4cfd: $dd
	add b                                            ; $4cfe: $80
	ld a, e                                          ; $4cff: $7b
	ld h, h                                          ; $4d00: $64
	sbc l                                            ; $4d01: $9d
	dec h                                            ; $4d02: $25
	nop                                              ; $4d03: $00
	jp c, $6780                                      ; $4d04: $da $80 $67

	ld hl, sp+$6f                                    ; $4d07: $f8 $6f
	add sp, -$01                                     ; $4d09: $e8 $ff
	ld h, a                                          ; $4d0b: $67
	ld hl, sp-$15                                    ; $4d0c: $f8 $eb
	sbc l                                            ; $4d0e: $9d
	add b                                            ; $4d0f: $80
	ld hl, sp+$6b                                    ; $4d10: $f8 $6b
	ld hl, sp-$7a                                    ; $4d12: $f8 $86

jr_069_4d14:
	jr @+$21                                         ; $4d14: $18 $1f

	dec de                                           ; $4d16: $1b
	ld [hl], e                                       ; $4d17: $73
	ld h, d                                          ; $4d18: $62
	db $e4                                           ; $4d19: $e4
	ei                                               ; $4d1a: $fb
	rst SubAFromDE                                          ; $4d1b: $df
	cp $07                                           ; $4d1c: $fe $07
	rrca                                             ; $4d1e: $0f
	ld e, $3f                                        ; $4d1f: $1e $3f
	ccf                                              ; $4d21: $3f
	ld a, h                                          ; $4d22: $7c
	ld h, c                                          ; $4d23: $61
	ld b, e                                          ; $4d24: $43
	cp h                                             ; $4d25: $bc
	xor h                                            ; $4d26: $ac
	db $e4                                           ; $4d27: $e4
	and e                                            ; $4d28: $a3
	or l                                             ; $4d29: $b5
	or l                                             ; $4d2a: $b5
	daa                                              ; $4d2b: $27
	ld h, d                                          ; $4d2c: $62
	sbc $c7                                          ; $4d2d: $de $c7
	sub d                                            ; $4d2f: $92
	rst SubAFromBC                                          ; $4d30: $e7
	db $e3                                           ; $4d31: $e3
	and $e6                                          ; $4d32: $e6 $e6
	jp $8000                                         ; $4d34: $c3 $00 $80


	ret nz                                           ; $4d37: $c0

	ld h, b                                          ; $4d38: $60
	ld h, b                                          ; $4d39: $60
	ret nc                                           ; $4d3a: $d0

	ldh a, [$38]                                     ; $4d3b: $f0 $38
	ld a, e                                          ; $4d3d: $7b
	ld hl, sp-$73                                    ; $4d3e: $f8 $8d
	ldh [$a0], a                                     ; $4d40: $e0 $a0
	jr nc, jr_069_4d14                               ; $4d42: $30 $d0

	ld hl, sp+$28                                    ; $4d44: $f8 $28
	jr jr_069_4d7c                                   ; $4d46: $18 $34

	call nc, $f2bc                                   ; $4d48: $d4 $bc $f2
	or $ea                                           ; $4d4b: $f6 $ea
	ld hl, sp-$08                                    ; $4d4d: $f8 $f8
	db $ec                                           ; $4d4f: $ec
	db $ec                                           ; $4d50: $ec
	call z, $1ede                                    ; $4d51: $cc $de $1e
	ld e, $00                                        ; $4d54: $1e $00
	sbc l                                            ; $4d56: $9d
	sbc c                                            ; $4d57: $99
	call z, $99dd                                    ; $4d58: $cc $dd $99
	sbc l                                            ; $4d5b: $9d
	ld b, h                                          ; $4d5c: $44
	cp e                                             ; $4d5d: $bb
	sbc $11                                          ; $4d5e: $de $11
	sub a                                            ; $4d60: $97
	ld [hl+], a                                      ; $4d61: $22
	sbc c                                            ; $4d62: $99
	nop                                              ; $4d63: $00
	sbc c                                            ; $4d64: $99
	sbc c                                            ; $4d65: $99
	ld [hl+], a                                      ; $4d66: $22
	sbc c                                            ; $4d67: $99
	ld de, $fb5f                                     ; $4d68: $11 $5f $fb
	sbc c                                            ; $4d6b: $99
	adc b                                            ; $4d6c: $88
	ld b, h                                          ; $4d6d: $44
	sbc c                                            ; $4d6e: $99
	call z, $cc44                                    ; $4d6f: $cc $44 $cc
	ld c, d                                          ; $4d72: $4a
	ld bc, $7f80                                     ; $4d73: $01 $80 $7f
	ld hl, sp-$22                                    ; $4d76: $f8 $de
	ldh a, [rAUD3LEVEL]                              ; $4d78: $f0 $1c
	ldh a, [$38]                                     ; $4d7a: $f0 $38

jr_069_4d7c:
	ldh [$3c], a                                     ; $4d7c: $e0 $3c

jr_069_4d7e:
	db $e3                                           ; $4d7e: $e3
	ld h, e                                          ; $4d7f: $63
	rst $38                                          ; $4d80: $ff
	ld a, l                                          ; $4d81: $7d
	cp $7f                                           ; $4d82: $fe $7f
	ret nz                                           ; $4d84: $c0

	xor l                                            ; $4d85: $ad
	sbc $be                                          ; $4d86: $de $be
	rst $38                                          ; $4d88: $ff
	call z, Call_069_4def                            ; $4d89: $cc $ef $4d
	call z, Call_069_7cb4                            ; $4d8c: $cc $b4 $7c
	and $34                                          ; $4d8f: $e6 $34
	push hl                                          ; $4d91: $e5
	jr jr_069_4d7e                                   ; $4d92: $18 $ea

	cp a                                             ; $4d94: $bf
	push af                                          ; $4d95: $f5
	ld h, b                                          ; $4d96: $60
	add b                                            ; $4d97: $80
	add b                                            ; $4d98: $80
	ld h, b                                          ; $4d99: $60
	add b                                            ; $4d9a: $80
	ldh [$80], a                                     ; $4d9b: $e0 $80
	or b                                             ; $4d9d: $b0
	ret nz                                           ; $4d9e: $c0

	ret nc                                           ; $4d9f: $d0

	ldh [$e8], a                                     ; $4da0: $e0 $e8
	ldh a, [$d4]                                     ; $4da2: $f0 $d4
	ld hl, sp-$39                                    ; $4da4: $f8 $c7
	db $fc                                           ; $4da6: $fc
	add e                                            ; $4da7: $83
	rst $38                                          ; $4da8: $ff
	add h                                            ; $4da9: $84
	ei                                               ; $4daa: $fb
	adc d                                            ; $4dab: $8a
	pop af                                           ; $4dac: $f1
	adc e                                            ; $4dad: $8b
	ldh a, [$8b]                                     ; $4dae: $f0 $8b
	ldh a, [$cb]                                     ; $4db0: $f0 $cb
	ldh a, [$c9]                                     ; $4db2: $f0 $c9

jr_069_4db4:
	ldh a, [$9b]                                     ; $4db4: $f0 $9b
	cp [hl]                                          ; $4db6: $be
	ld a, a                                          ; $4db7: $7f
	cp $94                                           ; $4db8: $fe $94
	cp e                                             ; $4dba: $bb
	xor $af                                          ; $4dbb: $ee $af
	db $ec                                           ; $4dbd: $ec
	xor $cd                                          ; $4dbe: $ee $cd
	res 1, b                                         ; $4dc0: $cb $88
	pop bc                                           ; $4dc2: $c1
	add b                                            ; $4dc3: $80
	pop hl                                           ; $4dc4: $e1
	cp d                                             ; $4dc5: $ba
	db $e3                                           ; $4dc6: $e3
	db $e3                                           ; $4dc7: $e3
	jp $0383                                         ; $4dc8: $c3 $83 $03


	inc bc                                           ; $4dcb: $03
	ld bc, $0280                                     ; $4dcc: $01 $80 $02
	ld bc, $e802                                     ; $4dcf: $01 $02 $e8
	ld a, $fc                                        ; $4dd2: $3e $fc
	ld e, $f4                                        ; $4dd4: $1e $f4
	rrca                                             ; $4dd6: $0f
	ld [hl], $cf                                     ; $4dd7: $36 $cf
	ld h, d                                          ; $4dd9: $62
	rst $38                                          ; $4dda: $ff
	sbc [hl]                                         ; $4ddb: $9e
	ld a, a                                          ; $4ddc: $7f
	db $fd                                           ; $4ddd: $fd
	inc bc                                           ; $4dde: $03
	xor a                                            ; $4ddf: $af
	ld [hl], c                                       ; $4de0: $71
	ld a, d                                          ; $4de1: $7a
	db $fd                                           ; $4de2: $fd
	sbc a                                            ; $4de3: $9f
	rst SubAFromDE                                          ; $4de4: $df
	sbc e                                            ; $4de5: $9b
	sbc [hl]                                         ; $4de6: $9e
	ld c, e                                          ; $4de7: $4b
	ld hl, sp-$09                                    ; $4de8: $f8 $f7
	ld a, b                                          ; $4dea: $78
	adc [hl]                                         ; $4deb: $8e
	ld [hl], c                                       ; $4dec: $71
	add d                                            ; $4ded: $82
	sbc a                                            ; $4dee: $9f

Call_069_4def:
	ld bc, $01bf                                     ; $4def: $01 $bf $01
	db $fd                                           ; $4df2: $fd
	inc bc                                           ; $4df3: $03
	rst $38                                          ; $4df4: $ff
	inc bc                                           ; $4df5: $03
	cp $02                                           ; $4df6: $fe $02
	cp $06                                           ; $4df8: $fe $06
	db $fc                                           ; $4dfa: $fc
	inc b                                            ; $4dfb: $04
	db $fc                                           ; $4dfc: $fc
	inc c                                            ; $4dfd: $0c
	add sp, $18                                      ; $4dfe: $e8 $18
	ret nc                                           ; $4e00: $d0

	jr nc, jr_069_4db4                               ; $4e01: $30 $b1

	ld [hl], c                                       ; $4e03: $71
	ld a, l                                          ; $4e04: $7d
	db $fd                                           ; $4e05: $fd
	rst JumpTable                                          ; $4e06: $c7
	rst $38                                          ; $4e07: $ff
	add c                                            ; $4e08: $81
	rst $38                                          ; $4e09: $ff
	ld [bc], a                                       ; $4e0a: $02
	ld a, e                                          ; $4e0b: $7b
	cp $9b                                           ; $4e0c: $fe $9b
	inc b                                            ; $4e0e: $04
	rst $38                                          ; $4e0f: $ff
	nop                                              ; $4e10: $00
	rst $38                                          ; $4e11: $ff
	ld b, a                                          ; $4e12: $47
	ld h, b                                          ; $4e13: $60
	sub a                                            ; $4e14: $97
	cp a                                             ; $4e15: $bf
	ret nz                                           ; $4e16: $c0

	rst AddAOntoHL                                          ; $4e17: $ef
	sbc [hl]                                         ; $4e18: $9e
	rst SubAFromDE                                          ; $4e19: $df
	cp a                                             ; $4e1a: $bf
	ld h, l                                          ; $4e1b: $65
	rst SubAFromBC                                          ; $4e1c: $e7
	ld h, a                                          ; $4e1d: $67
	ld h, b                                          ; $4e1e: $60
	inc bc                                           ; $4e1f: $03
	add b                                            ; $4e20: $80
	ld d, e                                          ; $4e21: $53
	add b                                            ; $4e22: $80
	sub l                                            ; $4e23: $95
	rst $38                                          ; $4e24: $ff
	ld bc, $f966                                     ; $4e25: $01 $66 $f9
	cp l                                             ; $4e28: $bd
	cp $8b                                           ; $4e29: $fe $8b
	sbc a                                            ; $4e2b: $9f
	ld c, c                                          ; $4e2c: $49
	ld a, [$8067]                                    ; $4e2d: $fa $67 $80
	ccf                                              ; $4e30: $3f
	and b                                            ; $4e31: $a0
	sub h                                            ; $4e32: $94
	ld sp, hl                                        ; $4e33: $f9
	add b                                            ; $4e34: $80
	ldh a, [$8c]                                     ; $4e35: $f0 $8c
	ld e, [hl]                                       ; $4e37: $5e
	cp a                                             ; $4e38: $bf
	db $e3                                           ; $4e39: $e3
	ld [hl], a                                       ; $4e3a: $77
	cp $1c                                           ; $4e3b: $fe $1c
	db $fd                                           ; $4e3d: $fd
	cp a                                             ; $4e3e: $bf
	ld [$2b9b], a                                    ; $4e3f: $ea $9b $2b
	and b                                            ; $4e42: $a0
	sbc l                                            ; $4e43: $9d
	add e                                            ; $4e44: $83
	add b                                            ; $4e45: $80
	cpl                                              ; $4e46: $2f
	and b                                            ; $4e47: $a0
	sub e                                            ; $4e48: $93
	cp $01                                           ; $4e49: $fe $01
	rst SubAFromDE                                          ; $4e4b: $df
	nop                                              ; $4e4c: $00
	or a                                             ; $4e4d: $b7
	ld a, b                                          ; $4e4e: $78
	rst GetHLinHL                                          ; $4e4f: $cf
	sbc $78                                          ; $4e50: $de $78
	rst $38                                          ; $4e52: $ff
	or $39                                           ; $4e53: $f6 $39
	cpl                                              ; $4e55: $2f
	and b                                            ; $4e56: $a0
	sub l                                            ; $4e57: $95
	cp c                                             ; $4e58: $b9
	ret nz                                           ; $4e59: $c0

	ldh a, [$80]                                     ; $4e5a: $f0 $80
	ld a, [hl]                                       ; $4e5c: $7e
	add b                                            ; $4e5d: $80
	pop bc                                           ; $4e5e: $c1
	ld h, c                                          ; $4e5f: $61
	rst $38                                          ; $4e60: $ff
	ld a, $1f                                        ; $4e61: $3e $1f
	ld b, b                                          ; $4e63: $40
	ld a, a                                          ; $4e64: $7f
	and h                                            ; $4e65: $a4
	ld [hl], a                                       ; $4e66: $77
	ld a, $27                                        ; $4e67: $3e $27
	and b                                            ; $4e69: $a0
	sbc [hl]                                         ; $4e6a: $9e
	adc a                                            ; $4e6b: $8f
	cp a                                             ; $4e6c: $bf
	rst $38                                          ; $4e6d: $ff
	rst JumpTable                                          ; $4e6e: $c7
	sbc h                                            ; $4e6f: $9c
	adc h                                            ; $4e70: $8c
	cp $79                                           ; $4e71: $fe $79
	ld [hl], a                                       ; $4e73: $77
	and b                                            ; $4e74: $a0
	sub c                                            ; $4e75: $91
	ld bc, $0603                                     ; $4e76: $01 $03 $06
	inc bc                                           ; $4e79: $03
	inc bc                                           ; $4e7a: $03
	nop                                              ; $4e7b: $00
	ld d, $09                                        ; $4e7c: $16 $09
	add hl, bc                                       ; $4e7e: $09
	ld [bc], a                                       ; $4e7f: $02
	rlca                                             ; $4e80: $07
	nop                                              ; $4e81: $00
	inc bc                                           ; $4e82: $03
	inc b                                            ; $4e83: $04
	ld a, e                                          ; $4e84: $7b
	db $fc                                           ; $4e85: $fc
	cp a                                             ; $4e86: $bf
	jp $94f6                                         ; $4e87: $c3 $f6 $94


	pop bc                                           ; $4e8a: $c1
	ld [hl], e                                       ; $4e8b: $73
	rst $38                                          ; $4e8c: $ff
	rra                                              ; $4e8d: $1f
	rst $38                                          ; $4e8e: $ff
	adc [hl]                                         ; $4e8f: $8e
	ld a, a                                          ; $4e90: $7f
	call nz, $c83f                                   ; $4e91: $c4 $3f $c8
	ccf                                              ; $4e94: $3f
	ld l, a                                          ; $4e95: $6f
	ldh [$99], a                                     ; $4e96: $e0 $99
	dec e                                            ; $4e98: $1d
	dec de                                           ; $4e99: $1b
	add hl, de                                       ; $4e9a: $19
	ld c, $0d                                        ; $4e9b: $0e $0d
	ld b, $77                                        ; $4e9d: $06 $77
	sbc $2f                                          ; $4e9f: $de $2f
	ldh [hDisp1_WX], a                                     ; $4ea1: $e0 $96
	dec sp                                           ; $4ea3: $3b
	rra                                              ; $4ea4: $1f
	ld e, $17                                        ; $4ea5: $1e $17
	add hl, bc                                       ; $4ea7: $09
	ld c, $07                                        ; $4ea8: $0e $07
	nop                                              ; $4eaa: $00
	dec bc                                           ; $4eab: $0b
	dec hl                                           ; $4eac: $2b
	ldh [$98], a                                     ; $4ead: $e0 $98
	add hl, de                                       ; $4eaf: $19
	rra                                              ; $4eb0: $1f
	ld e, $1f                                        ; $4eb1: $1e $1f
	rra                                              ; $4eb3: $1f
	ld a, [bc]                                       ; $4eb4: $0a
	dec bc                                           ; $4eb5: $0b
	ld a, e                                          ; $4eb6: $7b
	and b                                            ; $4eb7: $a0
	ld a, a                                          ; $4eb8: $7f
	db $fc                                           ; $4eb9: $fc
	ld c, a                                          ; $4eba: $4f
	ldh [rWY], a                                     ; $4ebb: $e0 $4a
	ld bc, $7f80                                     ; $4ebd: $01 $80 $7f
	ld hl, sp-$22                                    ; $4ec0: $f8 $de
	ldh a, [rAUD3LEVEL]                              ; $4ec2: $f0 $1c
	ldh a, [$38]                                     ; $4ec4: $f0 $38
	ldh [$3c], a                                     ; $4ec6: $e0 $3c
	cp $62                                           ; $4ec8: $fe $62
	rst $38                                          ; $4eca: $ff
	ld e, l                                          ; $4ecb: $5d
	db $e3                                           ; $4ecc: $e3
	ld e, e                                          ; $4ecd: $5b
	db $fc                                           ; $4ece: $fc
	cp l                                             ; $4ecf: $bd
	cp $c7                                           ; $4ed0: $fe $c7
	xor $cc                                          ; $4ed2: $ee $cc
	rst GetHLinHL                                          ; $4ed4: $cf
	ld e, l                                          ; $4ed5: $5d
	db $fc                                           ; $4ed6: $fc
	db $f4                                           ; $4ed7: $f4
	ld a, h                                          ; $4ed8: $7c
	and [hl]                                         ; $4ed9: $a6
	ld [hl], h                                       ; $4eda: $74
	call nz, $f038                                   ; $4edb: $c4 $38 $f0
	cp a                                             ; $4ede: $bf
	ldh [$60], a                                     ; $4edf: $e0 $60
	add b                                            ; $4ee1: $80
	add b                                            ; $4ee2: $80
	ld h, b                                          ; $4ee3: $60
	add b                                            ; $4ee4: $80
	ldh [$80], a                                     ; $4ee5: $e0 $80
	or b                                             ; $4ee7: $b0
	ret nz                                           ; $4ee8: $c0

	ret nc                                           ; $4ee9: $d0

	ldh [$e8], a                                     ; $4eea: $e0 $e8
	ldh a, [$d4]                                     ; $4eec: $f0 $d4
	ld hl, sp-$39                                    ; $4eee: $f8 $c7
	db $fc                                           ; $4ef0: $fc
	add e                                            ; $4ef1: $83
	rst $38                                          ; $4ef2: $ff
	add h                                            ; $4ef3: $84
	ei                                               ; $4ef4: $fb
	adc d                                            ; $4ef5: $8a
	pop af                                           ; $4ef6: $f1
	adc e                                            ; $4ef7: $8b
	ldh a, [$8b]                                     ; $4ef8: $f0 $8b
	ldh a, [$cb]                                     ; $4efa: $f0 $cb
	ldh a, [$c9]                                     ; $4efc: $f0 $c9

jr_069_4efe:
	ldh a, [$9b]                                     ; $4efe: $f0 $9b
	cp [hl]                                          ; $4f00: $be
	ld a, a                                          ; $4f01: $7f
	cp $94                                           ; $4f02: $fe $94
	cp e                                             ; $4f04: $bb
	xor $af                                          ; $4f05: $ee $af
	db $ec                                           ; $4f07: $ec
	xor $cd                                          ; $4f08: $ee $cd
	res 1, c                                         ; $4f0a: $cb $89
	pop bc                                           ; $4f0c: $c1
	add b                                            ; $4f0d: $80
	pop hl                                           ; $4f0e: $e1
	cp d                                             ; $4f0f: $ba
	db $e3                                           ; $4f10: $e3
	db $e3                                           ; $4f11: $e3
	jp $0383                                         ; $4f12: $c3 $83 $03


	inc bc                                           ; $4f15: $03
	ld bc, $0280                                     ; $4f16: $01 $80 $02
	ld bc, $e802                                     ; $4f19: $01 $02 $e8
	ld a, $fc                                        ; $4f1c: $3e $fc
	ld e, $c4                                        ; $4f1e: $1e $c4
	ccf                                              ; $4f20: $3f
	ld a, [hl]                                       ; $4f21: $7e
	rst $38                                          ; $4f22: $ff
	sbc d                                            ; $4f23: $9a
	rst SubAFromBC                                          ; $4f24: $e7
	ld a, [hl]                                       ; $4f25: $7e
	add e                                            ; $4f26: $83
	or l                                             ; $4f27: $b5
	ld a, e                                          ; $4f28: $7b
	ld a, e                                          ; $4f29: $7b
	db $fd                                           ; $4f2a: $fd
	adc $fd                                          ; $4f2b: $ce $fd
	sbc e                                            ; $4f2d: $9b
	sbc a                                            ; $4f2e: $9f
	cp e                                             ; $4f2f: $bb
	ld a, [$f84b]                                    ; $4f30: $fa $4b $f8
	rst FarCall                                          ; $4f33: $f7
	ld a, b                                          ; $4f34: $78
	adc [hl]                                         ; $4f35: $8e
	ld [hl], c                                       ; $4f36: $71
	add d                                            ; $4f37: $82
	sbc a                                            ; $4f38: $9f
	ld bc, $01bf                                     ; $4f39: $01 $bf $01
	db $fd                                           ; $4f3c: $fd
	inc bc                                           ; $4f3d: $03
	rst $38                                          ; $4f3e: $ff
	inc bc                                           ; $4f3f: $03
	cp $02                                           ; $4f40: $fe $02
	cp $06                                           ; $4f42: $fe $06
	db $fc                                           ; $4f44: $fc
	inc b                                            ; $4f45: $04
	db $fc                                           ; $4f46: $fc
	inc c                                            ; $4f47: $0c
	add sp, $18                                      ; $4f48: $e8 $18
	ret nc                                           ; $4f4a: $d0

	jr nc, jr_069_4efe                               ; $4f4b: $30 $b1

	ld [hl], c                                       ; $4f4d: $71
	ld a, l                                          ; $4f4e: $7d
	db $fd                                           ; $4f4f: $fd
	rst JumpTable                                          ; $4f50: $c7
	rst $38                                          ; $4f51: $ff
	add c                                            ; $4f52: $81
	rst $38                                          ; $4f53: $ff
	ld [bc], a                                       ; $4f54: $02
	ld a, e                                          ; $4f55: $7b
	cp $9b                                           ; $4f56: $fe $9b
	inc b                                            ; $4f58: $04
	rst $38                                          ; $4f59: $ff
	nop                                              ; $4f5a: $00
	rst $38                                          ; $4f5b: $ff
	ld c, a                                          ; $4f5c: $4f
	ld h, b                                          ; $4f5d: $60
	sbc h                                            ; $4f5e: $9c
	ld a, a                                          ; $4f5f: $7f
	ret nz                                           ; $4f60: $c0

	sbc e                                            ; $4f61: $9b
	ld a, e                                          ; $4f62: $7b
	ld e, [hl]                                       ; $4f63: $5e
	sbc [hl]                                         ; $4f64: $9e
	adc $5b                                          ; $4f65: $ce $5b
	ld h, b                                          ; $4f67: $60
	inc bc                                           ; $4f68: $03
	add b                                            ; $4f69: $80
	ld e, e                                          ; $4f6a: $5b
	add b                                            ; $4f6b: $80
	ld a, a                                          ; $4f6c: $7f
	sub h                                            ; $4f6d: $94
	sub a                                            ; $4f6e: $97
	or a                                             ; $4f6f: $b7
	ld a, c                                          ; $4f70: $79
	ld a, d                                          ; $4f71: $7a
	db $fd                                           ; $4f72: $fd
	sbc l                                            ; $4f73: $9d
	sbc [hl]                                         ; $4f74: $9e
	cp e                                             ; $4f75: $bb
	rst $38                                          ; $4f76: $ff
	ld e, a                                          ; $4f77: $5f
	add b                                            ; $4f78: $80
	ld b, a                                          ; $4f79: $47
	and b                                            ; $4f7a: $a0
	sub c                                            ; $4f7b: $91
	cp a                                             ; $4f7c: $bf
	ret nz                                           ; $4f7d: $c0

	pop af                                           ; $4f7e: $f1
	add b                                            ; $4f7f: $80
	db $dd                                           ; $4f80: $dd
	cp [hl]                                          ; $4f81: $be
	rst AddAOntoHL                                          ; $4f82: $ef
	rst AddAOntoHL                                          ; $4f83: $ef
	or h                                             ; $4f84: $b4
	ld a, [hl]                                       ; $4f85: $7e
	and $34                                          ; $4f86: $e6 $34
	db $e4                                           ; $4f88: $e4
	jr jr_069_4fb2                                   ; $4f89: $18 $27

	and b                                            ; $4f8b: $a0
	sbc l                                            ; $4f8c: $9d
	add d                                            ; $4f8d: $82
	ld bc, $a02f                                     ; $4f8e: $01 $2f $a0
	sub c                                            ; $4f91: $91
	rst $38                                          ; $4f92: $ff
	ld bc, $01fe                                     ; $4f93: $01 $fe $01
	rst GetHLinHL                                          ; $4f96: $cf
	nop                                              ; $4f97: $00
	ld a, e                                          ; $4f98: $7b
	db $fc                                           ; $4f99: $fc
	adc $df                                          ; $4f9a: $ce $df
	db $db                                           ; $4f9c: $db
	ld a, h                                          ; $4f9d: $7c
	cp $31                                           ; $4f9e: $fe $31
	daa                                              ; $4fa0: $27
	and b                                            ; $4fa1: $a0
	ld a, [hl]                                       ; $4fa2: $7e
	or d                                             ; $4fa3: $b2
	sbc b                                            ; $4fa4: $98
	ld a, [hl]                                       ; $4fa5: $7e
	add b                                            ; $4fa6: $80
	jp $fc63                                         ; $4fa7: $c3 $63 $fc


	ld a, $fc                                        ; $4faa: $3e $fc
	cp a                                             ; $4fac: $bf
	ldh a, [$9b]                                     ; $4fad: $f0 $9b
	inc sp                                           ; $4faf: $33
	and b                                            ; $4fb0: $a0
	ld [hl], a                                       ; $4fb1: $77

jr_069_4fb2:
	and d                                            ; $4fb2: $a2
	daa                                              ; $4fb3: $27
	and b                                            ; $4fb4: $a0
	sbc [hl]                                         ; $4fb5: $9e
	rst SubAFromDE                                          ; $4fb6: $df
	cp [hl]                                          ; $4fb7: $be
	adc a                                            ; $4fb8: $8f
	rst $38                                          ; $4fb9: $ff
	add l                                            ; $4fba: $85
	sbc h                                            ; $4fbb: $9c
	adc $fe                                          ; $4fbc: $ce $fe
	ld a, c                                          ; $4fbe: $79
	ld [hl], a                                       ; $4fbf: $77
	and b                                            ; $4fc0: $a0
	ld a, a                                          ; $4fc1: $7f
	ld [hl], a                                       ; $4fc2: $77
	sub d                                            ; $4fc3: $92
	ld b, $03                                        ; $4fc4: $06 $03
	inc hl                                           ; $4fc6: $23
	nop                                              ; $4fc7: $00
	ld c, $19                                        ; $4fc8: $0e $19
	add hl, de                                       ; $4fca: $19
	ld [bc], a                                       ; $4fcb: $02
	rrca                                             ; $4fcc: $0f
	nop                                              ; $4fcd: $00
	dec bc                                           ; $4fce: $0b
	inc b                                            ; $4fcf: $04
	rlca                                             ; $4fd0: $07
	cp [hl]                                          ; $4fd1: $be
	inc bc                                           ; $4fd2: $03
	jp $94f6                                         ; $4fd3: $c3 $f6 $94


	pop bc                                           ; $4fd6: $c1
	ld [hl], e                                       ; $4fd7: $73
	rst $38                                          ; $4fd8: $ff
	rra                                              ; $4fd9: $1f
	rst $38                                          ; $4fda: $ff
	adc [hl]                                         ; $4fdb: $8e
	ld a, a                                          ; $4fdc: $7f
	call nz, $c83f                                   ; $4fdd: $c4 $3f $c8
	ccf                                              ; $4fe0: $3f
	ld l, a                                          ; $4fe1: $6f
	ldh [$9a], a                                     ; $4fe2: $e0 $9a
	dec e                                            ; $4fe4: $1d
	dec de                                           ; $4fe5: $1b
	dec de                                           ; $4fe6: $1b
	ld c, $03                                        ; $4fe7: $0e $03
	inc hl                                           ; $4fe9: $23
	ldh [$7f], a                                     ; $4fea: $e0 $7f
	db $ec                                           ; $4fec: $ec
	sbc b                                            ; $4fed: $98
	ccf                                              ; $4fee: $3f
	rra                                              ; $4fef: $1f
	rla                                              ; $4ff0: $17
	ld e, $0d                                        ; $4ff1: $1e $0d
	ld c, $07                                        ; $4ff3: $0e $07
	ld a, e                                          ; $4ff5: $7b
	sbc $2f                                          ; $4ff6: $de $2f
	ldh [$97], a                                     ; $4ff8: $e0 $97
	rra                                              ; $4ffa: $1f
	ccf                                              ; $4ffb: $3f
	ld a, $1f                                        ; $4ffc: $3e $1f
	dec e                                            ; $4ffe: $1d
	ld d, $0f                                        ; $4fff: $16 $0f
	inc c                                            ; $5001: $0c
	ld [hl], a                                       ; $5002: $77
	sbc $4f                                          ; $5003: $de $4f
	ldh [rLCDC], a                                   ; $5005: $e0 $40
	ld bc, $7f80                                     ; $5007: $01 $80 $7f
	ld hl, sp-$22                                    ; $500a: $f8 $de
	ldh a, [rAUD3LEVEL]                              ; $500c: $f0 $1c
	ldh a, [$38]                                     ; $500e: $f0 $38
	ldh [rAUD4LEN], a                                ; $5010: $e0 $20
	cp $7e                                           ; $5012: $fe $7e
	rst $38                                          ; $5014: $ff
	ld e, l                                          ; $5015: $5d
	db $e3                                           ; $5016: $e3
	ld h, e                                          ; $5017: $63

jr_069_5018:
	call c, $febd                                    ; $5018: $dc $bd $fe
	rst JumpTable                                          ; $501b: $c7
	xor $cc                                          ; $501c: $ee $cc
	rst GetHLinHL                                          ; $501e: $cf
	ld e, l                                          ; $501f: $5d
	db $fc                                           ; $5020: $fc
	or h                                             ; $5021: $b4
	ld a, h                                          ; $5022: $7c
	and $34                                          ; $5023: $e6 $34
	db $e4                                           ; $5025: $e4
	jr jr_069_5018                                   ; $5026: $18 $f0

	cp a                                             ; $5028: $bf
	ldh [$60], a                                     ; $5029: $e0 $60
	add b                                            ; $502b: $80
	add b                                            ; $502c: $80
	ld h, b                                          ; $502d: $60
	add b                                            ; $502e: $80
	ldh [$80], a                                     ; $502f: $e0 $80
	or b                                             ; $5031: $b0
	ret nz                                           ; $5032: $c0

	ret nc                                           ; $5033: $d0

	ldh [$e8], a                                     ; $5034: $e0 $e8
	ldh a, [$d4]                                     ; $5036: $f0 $d4
	ld hl, sp-$39                                    ; $5038: $f8 $c7
	db $fc                                           ; $503a: $fc
	add e                                            ; $503b: $83
	rst $38                                          ; $503c: $ff
	add h                                            ; $503d: $84
	ei                                               ; $503e: $fb
	adc d                                            ; $503f: $8a
	pop af                                           ; $5040: $f1
	adc e                                            ; $5041: $8b
	ldh a, [$8b]                                     ; $5042: $f0 $8b
	ldh a, [$cb]                                     ; $5044: $f0 $cb
	ldh a, [$c9]                                     ; $5046: $f0 $c9

jr_069_5048:
	ldh a, [$9b]                                     ; $5048: $f0 $9b
	cp [hl]                                          ; $504a: $be
	ld a, a                                          ; $504b: $7f
	cp $94                                           ; $504c: $fe $94
	cp e                                             ; $504e: $bb
	xor $af                                          ; $504f: $ee $af
	db $ec                                           ; $5051: $ec
	rst AddAOntoHL                                          ; $5052: $ef
	call z, $89ca                                    ; $5053: $cc $ca $89
	ret nz                                           ; $5056: $c0

	add c                                            ; $5057: $81
	pop hl                                           ; $5058: $e1
	cp d                                             ; $5059: $ba
	db $e3                                           ; $505a: $e3
	db $e3                                           ; $505b: $e3
	jp $0383                                         ; $505c: $c3 $83 $03


	inc bc                                           ; $505f: $03
	ld bc, $0280                                     ; $5060: $01 $80 $02
	ld bc, $e802                                     ; $5063: $01 $02 $e8
	ld a, $fc                                        ; $5066: $3e $fc
	ld e, $c4                                        ; $5068: $1e $c4
	ccf                                              ; $506a: $3f
	sbc [hl]                                         ; $506b: $9e
	ld a, a                                          ; $506c: $7f
	ld a, d                                          ; $506d: $7a
	rst SubAFromBC                                          ; $506e: $e7
	cp $83                                           ; $506f: $fe $83
	call $ff33                                       ; $5071: $cd $33 $ff
	ld a, c                                          ; $5074: $79
	adc $fd                                          ; $5075: $ce $fd
	sbc e                                            ; $5077: $9b
	sbc a                                            ; $5078: $9f
	cp e                                             ; $5079: $bb
	cp $4b                                           ; $507a: $fe $4b
	ld hl, sp-$09                                    ; $507c: $f8 $f7
	ld a, b                                          ; $507e: $78
	adc [hl]                                         ; $507f: $8e
	ld [hl], c                                       ; $5080: $71
	add d                                            ; $5081: $82
	sbc a                                            ; $5082: $9f
	ld bc, $01bf                                     ; $5083: $01 $bf $01
	db $fd                                           ; $5086: $fd
	inc bc                                           ; $5087: $03
	rst $38                                          ; $5088: $ff
	inc bc                                           ; $5089: $03
	cp $02                                           ; $508a: $fe $02
	cp $06                                           ; $508c: $fe $06
	db $fc                                           ; $508e: $fc
	inc b                                            ; $508f: $04
	db $fc                                           ; $5090: $fc
	inc c                                            ; $5091: $0c
	add sp, $18                                      ; $5092: $e8 $18
	ret nc                                           ; $5094: $d0

	jr nc, jr_069_5048                               ; $5095: $30 $b1

	ld [hl], c                                       ; $5097: $71
	ld a, l                                          ; $5098: $7d
	db $fd                                           ; $5099: $fd
	rst JumpTable                                          ; $509a: $c7
	rst $38                                          ; $509b: $ff
	add c                                            ; $509c: $81
	rst $38                                          ; $509d: $ff
	ld [bc], a                                       ; $509e: $02
	ld a, e                                          ; $509f: $7b
	cp $9b                                           ; $50a0: $fe $9b
	inc b                                            ; $50a2: $04
	rst $38                                          ; $50a3: $ff
	nop                                              ; $50a4: $00
	rst $38                                          ; $50a5: $ff
	ld c, a                                          ; $50a6: $4f
	ld h, b                                          ; $50a7: $60
	sbc b                                            ; $50a8: $98
	ld a, a                                          ; $50a9: $7f
	ret nz                                           ; $50aa: $c0

	sbc e                                            ; $50ab: $9b
	db $fc                                           ; $50ac: $fc
	cp l                                             ; $50ad: $bd
	cp $ce                                           ; $50ae: $fe $ce
	ld a, e                                          ; $50b0: $7b
	ld h, b                                          ; $50b1: $60
	sbc [hl]                                         ; $50b2: $9e
	db $f4                                           ; $50b3: $f4
	ld l, e                                          ; $50b4: $6b
	ld h, b                                          ; $50b5: $60
	ld d, a                                          ; $50b6: $57
	and b                                            ; $50b7: $a0
	ld a, a                                          ; $50b8: $7f
	or h                                             ; $50b9: $b4
	sub a                                            ; $50ba: $97
	or a                                             ; $50bb: $b7
	ld a, c                                          ; $50bc: $79
	ld a, [hl]                                       ; $50bd: $7e
	ld sp, hl                                        ; $50be: $f9
	sbc a                                            ; $50bf: $9f
	sbc h                                            ; $50c0: $9c
	cp e                                             ; $50c1: $bb
	rst $38                                          ; $50c2: $ff
	ld e, a                                          ; $50c3: $5f
	and b                                            ; $50c4: $a0
	ld b, a                                          ; $50c5: $47
	ret nz                                           ; $50c6: $c0

	sub l                                            ; $50c7: $95
	cp a                                             ; $50c8: $bf
	ret nz                                           ; $50c9: $c0

	pop af                                           ; $50ca: $f1
	add b                                            ; $50cb: $80
	db $dd                                           ; $50cc: $dd
	cp [hl]                                          ; $50cd: $be
	rst AddAOntoHL                                          ; $50ce: $ef
	rst AddAOntoHL                                          ; $50cf: $ef
	or h                                             ; $50d0: $b4
	ld a, [hl]                                       ; $50d1: $7e
	scf                                              ; $50d2: $37
	ret nz                                           ; $50d3: $c0

	sub c                                            ; $50d4: $91
	rst $38                                          ; $50d5: $ff
	ld bc, $01fe                                     ; $50d6: $01 $fe $01
	rst GetHLinHL                                          ; $50d9: $cf
	nop                                              ; $50da: $00
	ld a, e                                          ; $50db: $7b
	db $fc                                           ; $50dc: $fc
	adc $df                                          ; $50dd: $ce $df
	db $db                                           ; $50df: $db
	ld a, h                                          ; $50e0: $7c
	cp $31                                           ; $50e1: $fe $31
	daa                                              ; $50e3: $27
	ret nz                                           ; $50e4: $c0

	ld a, [hl]                                       ; $50e5: $7e
	ldh a, [c]                                       ; $50e6: $f2
	sbc b                                            ; $50e7: $98
	ld a, [hl]                                       ; $50e8: $7e
	add b                                            ; $50e9: $80
	jp $fc63                                         ; $50ea: $c3 $63 $fc


	ld a, $fc                                        ; $50ed: $3e $fc
	cp a                                             ; $50ef: $bf
	ldh a, [$e8]                                     ; $50f0: $f0 $e8
	ld b, e                                          ; $50f2: $43
	ret nz                                           ; $50f3: $c0

	sbc [hl]                                         ; $50f4: $9e
	rst SubAFromDE                                          ; $50f5: $df
	cp [hl]                                          ; $50f6: $be
	adc a                                            ; $50f7: $8f
	rst $38                                          ; $50f8: $ff
	add l                                            ; $50f9: $85
	sbc h                                            ; $50fa: $9c
	adc $fe                                          ; $50fb: $ce $fe
	ld a, c                                          ; $50fd: $79
	ld [hl], a                                       ; $50fe: $77
	ret nz                                           ; $50ff: $c0

	sub d                                            ; $5100: $92
	ld bc, $0603                                     ; $5101: $01 $03 $06
	inc bc                                           ; $5104: $03
	inc hl                                           ; $5105: $23
	nop                                              ; $5106: $00
	ld a, [bc]                                       ; $5107: $0a
	add hl, de                                       ; $5108: $19
	rlca                                             ; $5109: $07
	nop                                              ; $510a: $00
	add hl, bc                                       ; $510b: $09
	ld b, $07                                        ; $510c: $06 $07
	cp l                                             ; $510e: $bd
	rlca                                             ; $510f: $07
	inc bc                                           ; $5110: $03
	jp $94f6                                         ; $5111: $c3 $f6 $94


	pop bc                                           ; $5114: $c1
	ld [hl], e                                       ; $5115: $73
	rst $38                                          ; $5116: $ff
	rra                                              ; $5117: $1f
	rst $38                                          ; $5118: $ff
	adc [hl]                                         ; $5119: $8e
	ld a, a                                          ; $511a: $7f
	call nz, $c83f                                   ; $511b: $c4 $3f $c8
	ccf                                              ; $511e: $3f
	ld l, a                                          ; $511f: $6f
	ldh [$9b], a                                     ; $5120: $e0 $9b
	rla                                              ; $5122: $17
	dec de                                           ; $5123: $1b
	dec b                                            ; $5124: $05
	ld c, $6f                                        ; $5125: $0e $6f
	sbc $2f                                          ; $5127: $de $2f
	ldh [$9a], a                                     ; $5129: $e0 $9a
	dec de                                           ; $512b: $1b
	rra                                              ; $512c: $1f
	rrca                                             ; $512d: $0f
	ld d, $0d                                        ; $512e: $16 $0d
	ld a, e                                          ; $5130: $7b
	sbc $9d                                          ; $5131: $de $9d
	dec bc                                           ; $5133: $0b
	inc b                                            ; $5134: $04
	scf                                              ; $5135: $37
	ldh [$7f], a                                     ; $5136: $e0 $7f
	db $ec                                           ; $5138: $ec
	sub a                                            ; $5139: $97
	ld l, $1f                                        ; $513a: $2e $1f
	rra                                              ; $513c: $1f
	ld e, $1d                                        ; $513d: $1e $1d
	ld d, $0f                                        ; $513f: $16 $0f
	inc c                                            ; $5141: $0c
	ld [hl], a                                       ; $5142: $77
	sbc $4f                                          ; $5143: $de $4f
	ldh [$36], a                                     ; $5145: $e0 $36
	ld bc, $7f80                                     ; $5147: $01 $80 $7f
	ld hl, sp-$22                                    ; $514a: $f8 $de
	ldh a, [rAUD3LEVEL]                              ; $514c: $f0 $1c
	ldh a, [$38]                                     ; $514e: $f0 $38
	ldh [$38], a                                     ; $5150: $e0 $38
	cp $46                                           ; $5152: $fe $46
	rst $38                                          ; $5154: $ff
	ld e, l                                          ; $5155: $5d
	db $e3                                           ; $5156: $e3
	ld a, a                                          ; $5157: $7f

jr_069_5158:
	ret nz                                           ; $5158: $c0

	sbc a                                            ; $5159: $9f
	db $fc                                           ; $515a: $fc
	and a                                            ; $515b: $a7
	xor $cc                                          ; $515c: $ee $cc
	rst GetHLinHL                                          ; $515e: $cf
	ld e, l                                          ; $515f: $5d
	db $fc                                           ; $5160: $fc
	or h                                             ; $5161: $b4
	ld a, h                                          ; $5162: $7c
	and $34                                          ; $5163: $e6 $34
	db $e4                                           ; $5165: $e4
	jr jr_069_5158                                   ; $5166: $18 $f0

	cp a                                             ; $5168: $bf
	ldh [$60], a                                     ; $5169: $e0 $60
	add b                                            ; $516b: $80
	add b                                            ; $516c: $80
	ld h, b                                          ; $516d: $60
	add b                                            ; $516e: $80
	ldh [$80], a                                     ; $516f: $e0 $80
	or b                                             ; $5171: $b0
	ret nz                                           ; $5172: $c0

	ret nc                                           ; $5173: $d0

	ldh [$e8], a                                     ; $5174: $e0 $e8
	ldh a, [$d4]                                     ; $5176: $f0 $d4
	ld hl, sp-$39                                    ; $5178: $f8 $c7
	db $fc                                           ; $517a: $fc
	add e                                            ; $517b: $83
	rst $38                                          ; $517c: $ff
	add h                                            ; $517d: $84
	ei                                               ; $517e: $fb
	adc d                                            ; $517f: $8a
	pop af                                           ; $5180: $f1
	adc e                                            ; $5181: $8b
	ldh a, [$8b]                                     ; $5182: $f0 $8b
	ldh a, [$cb]                                     ; $5184: $f0 $cb
	ldh a, [$c9]                                     ; $5186: $f0 $c9

jr_069_5188:
	ldh a, [$9b]                                     ; $5188: $f0 $9b
	cp [hl]                                          ; $518a: $be
	ld a, a                                          ; $518b: $7f
	cp $94                                           ; $518c: $fe $94
	cp e                                             ; $518e: $bb
	xor $af                                          ; $518f: $ee $af
	db $ec                                           ; $5191: $ec
	rst AddAOntoHL                                          ; $5192: $ef
	call z, $89ca                                    ; $5193: $cc $ca $89
	ret nz                                           ; $5196: $c0

	add c                                            ; $5197: $81
	pop hl                                           ; $5198: $e1
	cp d                                             ; $5199: $ba
	db $e3                                           ; $519a: $e3
	db $e3                                           ; $519b: $e3
	jp $0383                                         ; $519c: $c3 $83 $03


	inc bc                                           ; $519f: $03
	ld bc, $0280                                     ; $51a0: $01 $80 $02
	ld bc, $e802                                     ; $51a3: $01 $02 $e8
	ld a, $fc                                        ; $51a6: $3e $fc
	ld e, $cc                                        ; $51a8: $1e $cc
	ccf                                              ; $51aa: $3f
	cp [hl]                                          ; $51ab: $be
	ld a, a                                          ; $51ac: $7f
	ld e, d                                          ; $51ad: $5a
	rst SubAFromBC                                          ; $51ae: $e7
	cp $83                                           ; $51af: $fe $83
	db $fd                                           ; $51b1: $fd
	inc bc                                           ; $51b2: $03
	rst FarCall                                          ; $51b3: $f7
	ld a, c                                          ; $51b4: $79
	jp z, $9ffd                                      ; $51b5: $ca $fd $9f

	sbc a                                            ; $51b8: $9f
	cp e                                             ; $51b9: $bb
	cp $4b                                           ; $51ba: $fe $4b
	ld hl, sp-$09                                    ; $51bc: $f8 $f7
	ld a, b                                          ; $51be: $78
	adc [hl]                                         ; $51bf: $8e
	ld [hl], c                                       ; $51c0: $71
	add d                                            ; $51c1: $82
	sbc a                                            ; $51c2: $9f
	ld bc, $01bf                                     ; $51c3: $01 $bf $01
	db $fd                                           ; $51c6: $fd
	inc bc                                           ; $51c7: $03
	rst $38                                          ; $51c8: $ff
	inc bc                                           ; $51c9: $03
	cp $02                                           ; $51ca: $fe $02
	cp $06                                           ; $51cc: $fe $06
	db $fc                                           ; $51ce: $fc
	inc b                                            ; $51cf: $04
	db $fc                                           ; $51d0: $fc
	inc c                                            ; $51d1: $0c
	add sp, $18                                      ; $51d2: $e8 $18
	ret nc                                           ; $51d4: $d0

	jr nc, jr_069_5188                               ; $51d5: $30 $b1

	ld [hl], c                                       ; $51d7: $71
	ld a, l                                          ; $51d8: $7d
	db $fd                                           ; $51d9: $fd
	rst JumpTable                                          ; $51da: $c7
	rst $38                                          ; $51db: $ff
	add c                                            ; $51dc: $81
	rst $38                                          ; $51dd: $ff
	ld [bc], a                                       ; $51de: $02
	ld a, e                                          ; $51df: $7b
	cp $9b                                           ; $51e0: $fe $9b
	inc b                                            ; $51e2: $04
	rst $38                                          ; $51e3: $ff
	nop                                              ; $51e4: $00
	rst $38                                          ; $51e5: $ff
	ld b, a                                          ; $51e6: $47
	ld h, b                                          ; $51e7: $60
	sbc d                                            ; $51e8: $9a
	cp a                                             ; $51e9: $bf
	ret nz                                           ; $51ea: $c0

	db $fd                                           ; $51eb: $fd
	cp [hl]                                          ; $51ec: $be
	adc $7b                                          ; $51ed: $ce $7b
	ld h, b                                          ; $51ef: $60
	sbc [hl]                                         ; $51f0: $9e
	db $f4                                           ; $51f1: $f4
	ld l, e                                          ; $51f2: $6b
	ld h, b                                          ; $51f3: $60
	ld c, a                                          ; $51f4: $4f
	and b                                            ; $51f5: $a0
	sub a                                            ; $51f6: $97
	rst $38                                          ; $51f7: $ff
	ld bc, $7dfa                                     ; $51f8: $01 $fa $7d
	sbc l                                            ; $51fb: $9d
	sbc [hl]                                         ; $51fc: $9e
	cp e                                             ; $51fd: $bb
	rst $38                                          ; $51fe: $ff
	ld e, a                                          ; $51ff: $5f
	and b                                            ; $5200: $a0
	ccf                                              ; $5201: $3f
	ret nz                                           ; $5202: $c0

	sub a                                            ; $5203: $97
	pop af                                           ; $5204: $f1
	add b                                            ; $5205: $80
	db $dd                                           ; $5206: $dd
	cp [hl]                                          ; $5207: $be
	rst AddAOntoHL                                          ; $5208: $ef
	rst AddAOntoHL                                          ; $5209: $ef
	or h                                             ; $520a: $b4
	ld a, [hl]                                       ; $520b: $7e
	cpl                                              ; $520c: $2f
	ret nz                                           ; $520d: $c0

	sub e                                            ; $520e: $93
	cp $01                                           ; $520f: $fe $01
	rst GetHLinHL                                          ; $5211: $cf
	nop                                              ; $5212: $00
	ld a, e                                          ; $5213: $7b
	db $fc                                           ; $5214: $fc
	adc $df                                          ; $5215: $ce $df
	db $db                                           ; $5217: $db
	ld a, h                                          ; $5218: $7c
	cp $31                                           ; $5219: $fe $31
	daa                                              ; $521b: $27
	ret nz                                           ; $521c: $c0

	ld a, [hl]                                       ; $521d: $7e
	ldh a, [c]                                       ; $521e: $f2
	sbc b                                            ; $521f: $98
	ld a, [hl]                                       ; $5220: $7e
	add b                                            ; $5221: $80
	jp $fc63                                         ; $5222: $c3 $63 $fc


	ld a, $fc                                        ; $5225: $3e $fc
	cp a                                             ; $5227: $bf
	ldh a, [$e8]                                     ; $5228: $f0 $e8
	ld b, e                                          ; $522a: $43
	ret nz                                           ; $522b: $c0

	sbc [hl]                                         ; $522c: $9e
	rst SubAFromDE                                          ; $522d: $df
	cp [hl]                                          ; $522e: $be
	adc a                                            ; $522f: $8f
	rst $38                                          ; $5230: $ff
	add l                                            ; $5231: $85
	sbc h                                            ; $5232: $9c
	adc $fe                                          ; $5233: $ce $fe
	ld a, c                                          ; $5235: $79
	ld [hl], a                                       ; $5236: $77
	ret nz                                           ; $5237: $c0

	sub d                                            ; $5238: $92
	ld bc, $0603                                     ; $5239: $01 $03 $06
	inc bc                                           ; $523c: $03
	inc bc                                           ; $523d: $03
	nop                                              ; $523e: $00
	ld a, [bc]                                       ; $523f: $0a
	add hl, de                                       ; $5240: $19
	rlca                                             ; $5241: $07
	nop                                              ; $5242: $00
	add hl, bc                                       ; $5243: $09
	ld b, $07                                        ; $5244: $06 $07
	cp l                                             ; $5246: $bd
	rlca                                             ; $5247: $07
	inc bc                                           ; $5248: $03
	jp $94f6                                         ; $5249: $c3 $f6 $94


	pop bc                                           ; $524c: $c1
	ld [hl], e                                       ; $524d: $73
	rst $38                                          ; $524e: $ff
	rra                                              ; $524f: $1f
	rst $38                                          ; $5250: $ff
	adc [hl]                                         ; $5251: $8e
	ld a, a                                          ; $5252: $7f
	call nz, $c83f                                   ; $5253: $c4 $3f $c8
	ccf                                              ; $5256: $3f
	ld l, a                                          ; $5257: $6f
	ldh [$9b], a                                     ; $5258: $e0 $9b
	dec c                                            ; $525a: $0d
	dec de                                           ; $525b: $1b
	rlca                                             ; $525c: $07
	ld c, $7a                                        ; $525d: $0e $7a
	adc $9e                                          ; $525f: $ce $9e
	inc b                                            ; $5261: $04
	daa                                              ; $5262: $27
	ldh [$9b], a                                     ; $5263: $e0 $9b
	ld e, $0f                                        ; $5265: $1e $0f
	rrca                                             ; $5267: $0f
	ld d, $7b                                        ; $5268: $16 $7b
	db $e4                                           ; $526a: $e4
	sbc [hl]                                         ; $526b: $9e
	inc c                                            ; $526c: $0c
	daa                                              ; $526d: $27
	ldh [hDisp1_WY], a                                     ; $526e: $e0 $95
	rrca                                             ; $5270: $0f
	rra                                              ; $5271: $1f
	ld a, $17                                        ; $5272: $3e $17
	rra                                              ; $5274: $1f
	ld c, $07                                        ; $5275: $0e $07
	nop                                              ; $5277: $00
	dec bc                                           ; $5278: $0b
	inc b                                            ; $5279: $04
	ld b, a                                          ; $527a: $47
	ldh [$3a], a                                     ; $527b: $e0 $3a
	ld bc, $7f80                                     ; $527d: $01 $80 $7f
	ld hl, sp-$22                                    ; $5280: $f8 $de
	ldh a, [rAUD3LEVEL]                              ; $5282: $f0 $1c
	ldh a, [$38]                                     ; $5284: $f0 $38
	ldh [$30], a                                     ; $5286: $e0 $30
	db $fc                                           ; $5288: $fc
	ld a, h                                          ; $5289: $7c
	rst AddAOntoHL                                          ; $528a: $ef
	ld e, a                                          ; $528b: $5f
	db $e3                                           ; $528c: $e3
	ld h, e                                          ; $528d: $63

jr_069_528e:
	db $dd                                           ; $528e: $dd
	cp l                                             ; $528f: $bd
	jp nz, $bedf                                     ; $5290: $c2 $df $be

	and a                                            ; $5293: $a7
	rst AddAOntoHL                                          ; $5294: $ef
	call z, $b4fd                                    ; $5295: $cc $fd $b4
	ld a, h                                          ; $5298: $7c
	and $34                                          ; $5299: $e6 $34
	db $e4                                           ; $529b: $e4
	jr jr_069_528e                                   ; $529c: $18 $f0

	cp a                                             ; $529e: $bf
	ldh [$60], a                                     ; $529f: $e0 $60
	add b                                            ; $52a1: $80
	add b                                            ; $52a2: $80
	ld h, b                                          ; $52a3: $60
	add b                                            ; $52a4: $80
	ldh [$80], a                                     ; $52a5: $e0 $80
	or b                                             ; $52a7: $b0
	ret nz                                           ; $52a8: $c0

	ret nc                                           ; $52a9: $d0

	ldh [$e8], a                                     ; $52aa: $e0 $e8
	ldh a, [$d4]                                     ; $52ac: $f0 $d4
	ld hl, sp-$39                                    ; $52ae: $f8 $c7
	db $fc                                           ; $52b0: $fc
	add e                                            ; $52b1: $83
	rst $38                                          ; $52b2: $ff
	add h                                            ; $52b3: $84
	ei                                               ; $52b4: $fb
	adc d                                            ; $52b5: $8a
	pop af                                           ; $52b6: $f1
	adc e                                            ; $52b7: $8b
	ldh a, [$8b]                                     ; $52b8: $f0 $8b
	ldh a, [$cb]                                     ; $52ba: $f0 $cb
	ldh a, [$c9]                                     ; $52bc: $f0 $c9
	ldh a, [$9b]                                     ; $52be: $f0 $9b
	cp [hl]                                          ; $52c0: $be
	ld a, a                                          ; $52c1: $7f
	cp $92                                           ; $52c2: $fe $92
	cp e                                             ; $52c4: $bb
	xor $af                                          ; $52c5: $ee $af
	db $ec                                           ; $52c7: $ec
	rst AddAOntoHL                                          ; $52c8: $ef
	call z, $89ca                                    ; $52c9: $cc $ca $89
	ld b, c                                          ; $52cc: $41
	add c                                            ; $52cd: $81
	pop hl                                           ; $52ce: $e1
	add b                                            ; $52cf: $80
	db $e3                                           ; $52d0: $e3
	cp e                                             ; $52d1: $bb
	db $e3                                           ; $52d2: $e3
	jp $0383                                         ; $52d3: $c3 $83 $03


	inc bc                                           ; $52d6: $03
	ld bc, $0280                                     ; $52d7: $01 $80 $02
	ld bc, $e802                                     ; $52da: $01 $02 $e8
	ld a, $fc                                        ; $52dd: $3e $fc
	ld e, $c4                                        ; $52df: $1e $c4

jr_069_52e1:
	ccf                                              ; $52e1: $3f
	sbc [hl]                                         ; $52e2: $9e
	ld a, a                                          ; $52e3: $7f
	ld a, d                                          ; $52e4: $7a
	rst SubAFromBC                                          ; $52e5: $e7
	cp [hl]                                          ; $52e6: $be
	jp $837d                                         ; $52e7: $c3 $7d $83


	add a                                            ; $52ea: $87
	ld a, c                                          ; $52eb: $79
	ld a, [$fd05]                                    ; $52ec: $fa $05 $fd
	ld a, [hl]                                       ; $52ef: $7e
	sbc e                                            ; $52f0: $9b
	rst SubAFromDE                                          ; $52f1: $df
	ld c, e                                          ; $52f2: $4b
	ld hl, sp-$09                                    ; $52f3: $f8 $f7
	ld a, b                                          ; $52f5: $78
	adc [hl]                                         ; $52f6: $8e
	ld [hl], c                                       ; $52f7: $71
	add d                                            ; $52f8: $82
	sbc a                                            ; $52f9: $9f
	ld bc, $01bf                                     ; $52fa: $01 $bf $01
	db $fd                                           ; $52fd: $fd
	inc bc                                           ; $52fe: $03
	rst $38                                          ; $52ff: $ff
	inc bc                                           ; $5300: $03
	cp $02                                           ; $5301: $fe $02
	cp $06                                           ; $5303: $fe $06
	db $fc                                           ; $5305: $fc
	inc b                                            ; $5306: $04
	db $fc                                           ; $5307: $fc
	inc c                                            ; $5308: $0c
	add sp, $18                                      ; $5309: $e8 $18
	ret nc                                           ; $530b: $d0

	jr nc, @-$4d                                     ; $530c: $30 $b1

	ld [hl], c                                       ; $530e: $71
	ld a, l                                          ; $530f: $7d
	db $fd                                           ; $5310: $fd
	rst JumpTable                                          ; $5311: $c7
	rst $38                                          ; $5312: $ff
	add c                                            ; $5313: $81
	rst $38                                          ; $5314: $ff
	ld [bc], a                                       ; $5315: $02
	ld a, e                                          ; $5316: $7b
	cp $9b                                           ; $5317: $fe $9b
	inc b                                            ; $5319: $04
	rst $38                                          ; $531a: $ff
	nop                                              ; $531b: $00
	rst $38                                          ; $531c: $ff
	ld c, a                                          ; $531d: $4f
	ld h, b                                          ; $531e: $60
	sub l                                            ; $531f: $95
	ld a, a                                          ; $5320: $7f
	pop bc                                           ; $5321: $c1
	and e                                            ; $5322: $a3
	call c, $a0df                                    ; $5323: $dc $df $a0
	sbc a                                            ; $5326: $9f
	cp $cd                                           ; $5327: $fe $cd
	rst AddAOntoHL                                          ; $5329: $ef
	ld h, a                                          ; $532a: $67
	ld h, b                                          ; $532b: $60
	ld c, a                                          ; $532c: $4f
	and b                                            ; $532d: $a0
	sub e                                            ; $532e: $93
	rst $38                                          ; $532f: $ff
	ld bc, $7986                                     ; $5330: $01 $86 $79
	ei                                               ; $5333: $fb
	inc b                                            ; $5334: $04
	cp l                                             ; $5335: $bd
	ld a, [hl]                                       ; $5336: $7e
	ld c, e                                          ; $5337: $4b
	rst SubAFromDE                                          ; $5338: $df
	ld [hl], e                                       ; $5339: $73
	ld hl, sp+$6f                                    ; $533a: $f8 $6f
	and b                                            ; $533c: $a0
	ld b, a                                          ; $533d: $47
	ret nz                                           ; $533e: $c0

	sub c                                            ; $533f: $91
	cp a                                             ; $5340: $bf
	ret nz                                           ; $5341: $c0

	rst AddAOntoHL                                          ; $5342: $ef
	sub b                                            ; $5343: $90
	pop bc                                           ; $5344: $c1
	and b                                            ; $5345: $a0
	cp $9c                                           ; $5346: $fe $9c
	rst $38                                          ; $5348: $ff
	ld a, a                                          ; $5349: $7f
	db $e4                                           ; $534a: $e4
	ld [hl], $e0                                     ; $534b: $36 $e0
	inc e                                            ; $534d: $1c
	ccf                                              ; $534e: $3f
	ret nz                                           ; $534f: $c0

	sub h                                            ; $5350: $94
	cp $01                                           ; $5351: $fe $01
	rst JumpTable                                          ; $5353: $c7
	jr c, jr_069_52e1                                ; $5354: $38 $8b

	inc b                                            ; $5356: $04
	ld a, a                                          ; $5357: $7f
	ld hl, sp-$71                                    ; $5358: $f8 $8f
	sbc $de                                          ; $535a: $de $de
	dec hl                                           ; $535c: $2b
	ret nz                                           ; $535d: $c0

	sbc [hl]                                         ; $535e: $9e
	pop af                                           ; $535f: $f1
	ld a, d                                          ; $5360: $7a
	ldh a, [c]                                       ; $5361: $f2
	sbc b                                            ; $5362: $98
	ld a, [hl]                                       ; $5363: $7e
	add b                                            ; $5364: $80
	jp $fc63                                         ; $5365: $c3 $63 $fc


	ld a, $fc                                        ; $5368: $3e $fc
	cp a                                             ; $536a: $bf
	ldh a, [$e8]                                     ; $536b: $f0 $e8
	ld b, e                                          ; $536d: $43
	ret nz                                           ; $536e: $c0

	sbc [hl]                                         ; $536f: $9e
	rst SubAFromDE                                          ; $5370: $df
	cp [hl]                                          ; $5371: $be
	adc a                                            ; $5372: $8f
	rst $38                                          ; $5373: $ff
	add l                                            ; $5374: $85
	sbc h                                            ; $5375: $9c
	adc $fe                                          ; $5376: $ce $fe
	ld a, c                                          ; $5378: $79
	ld [hl], a                                       ; $5379: $77
	ret nz                                           ; $537a: $c0

	sub b                                            ; $537b: $90
	ld bc, $0603                                     ; $537c: $01 $03 $06
	inc bc                                           ; $537f: $03
	inc bc                                           ; $5380: $03
	nop                                              ; $5381: $00
	inc b                                            ; $5382: $04
	inc bc                                           ; $5383: $03
	add hl, bc                                       ; $5384: $09
	ld d, $07                                        ; $5385: $16 $07
	nop                                              ; $5387: $00
	dec bc                                           ; $5388: $0b
	inc b                                            ; $5389: $04
	rlca                                             ; $538a: $07
	cp [hl]                                          ; $538b: $be
	inc bc                                           ; $538c: $03
	jp $94f6                                         ; $538d: $c3 $f6 $94


	pop bc                                           ; $5390: $c1
	ld [hl], e                                       ; $5391: $73
	rst $38                                          ; $5392: $ff
	rra                                              ; $5393: $1f
	rst $38                                          ; $5394: $ff
	adc [hl]                                         ; $5395: $8e
	ld a, a                                          ; $5396: $7f
	call nz, $c83f                                   ; $5397: $c4 $3f $c8
	ccf                                              ; $539a: $3f
	ld l, a                                          ; $539b: $6f
	ldh [$9b], a                                     ; $539c: $e0 $9b
	rrca                                             ; $539e: $0f
	dec de                                           ; $539f: $1b
	rra                                              ; $53a0: $1f
	ld e, $13                                        ; $53a1: $1e $13
	ldh [$df], a                                     ; $53a3: $e0 $df
	rra                                              ; $53a5: $1f
	sbc h                                            ; $53a6: $9c
	ld d, $1d                                        ; $53a7: $16 $1d
	ld c, $77                                        ; $53a9: $0e $77
	sbc $1f                                          ; $53ab: $de $1f
	ret nz                                           ; $53ad: $c0

	ld a, a                                          ; $53ae: $7f
	sbc $9e                                          ; $53af: $de $9e
	dec c                                            ; $53b1: $0d
	ld [hl], e                                       ; $53b2: $73
	sbc $4f                                          ; $53b3: $de $4f
	ldh [$34], a                                     ; $53b5: $e0 $34
	inc bc                                           ; $53b7: $03
	rst $38                                          ; $53b8: $ff
	rst SubAFromDE                                          ; $53b9: $df
	inc bc                                           ; $53ba: $03
	add h                                            ; $53bb: $84
	rlca                                             ; $53bc: $07
	inc b                                            ; $53bd: $04
	rrca                                             ; $53be: $0f
	ld [$080f], sp                                   ; $53bf: $08 $0f $08
	rra                                              ; $53c2: $1f
	db $10                                           ; $53c3: $10
	dec e                                            ; $53c4: $1d
	ld [de], a                                       ; $53c5: $12
	dec e                                            ; $53c6: $1d
	ld [de], a                                       ; $53c7: $12
	dec a                                            ; $53c8: $3d
	ld [hl+], a                                      ; $53c9: $22
	dec a                                            ; $53ca: $3d
	ld [hl+], a                                      ; $53cb: $22
	ccf                                              ; $53cc: $3f
	ld [hl+], a                                      ; $53cd: $22
	ld a, a                                          ; $53ce: $7f
	ld b, d                                          ; $53cf: $42
	ld a, [hl]                                       ; $53d0: $7e
	ld b, e                                          ; $53d1: $43
	cp $83                                           ; $53d2: $fe $83
	db $fd                                           ; $53d4: $fd
	add e                                            ; $53d5: $83
	rst $38                                          ; $53d6: $ff
	sbc $01                                          ; $53d7: $de $01
	add b                                            ; $53d9: $80
	ld [bc], a                                       ; $53da: $02
	inc bc                                           ; $53db: $03
	dec b                                            ; $53dc: $05
	rlca                                             ; $53dd: $07
	dec bc                                           ; $53de: $0b
	ld c, $0e                                        ; $53df: $0e $0e
	dec c                                            ; $53e1: $0d
	inc e                                            ; $53e2: $1c
	dec de                                           ; $53e3: $1b
	dec de                                           ; $53e4: $1b
	rla                                              ; $53e5: $17
	scf                                              ; $53e6: $37
	cpl                                              ; $53e7: $2f
	jr nz, jr_069_5429                               ; $53e8: $20 $3f

	ld l, l                                          ; $53ea: $6d
	ld d, e                                          ; $53eb: $53
	ld e, d                                          ; $53ec: $5a
	ld h, a                                          ; $53ed: $67
	ld d, [hl]                                       ; $53ee: $56
	ld l, a                                          ; $53ef: $6f
	ld [hl], h                                       ; $53f0: $74
	ld c, a                                          ; $53f1: $4f
	ld l, d                                          ; $53f2: $6a
	ld e, l                                          ; $53f3: $5d
	or [hl]                                          ; $53f4: $b6
	reti                                             ; $53f5: $d9


	call c, $e5b3                                    ; $53f6: $dc $b3 $e5
	rst SubAFromDE                                          ; $53f9: $df
	or e                                             ; $53fa: $b3

jr_069_53fb:
	add b                                            ; $53fb: $80
	rst SubAFromBC                                          ; $53fc: $e7
	set 4, [hl]                                      ; $53fd: $cb $e6
	rst JumpTable                                          ; $53ff: $c7
	db $ec                                           ; $5400: $ec
	or $cd                                           ; $5401: $f6 $cd
	adc $d9                                          ; $5403: $ce $d9
	adc h                                            ; $5405: $8c
	db $db                                           ; $5406: $db
	db $f4                                           ; $5407: $f4
	sbc e                                            ; $5408: $9b

jr_069_5409:
	ld sp, hl                                        ; $5409: $f9
	sub a                                            ; $540a: $97
	reti                                             ; $540b: $d9


	or a                                             ; $540c: $b7
	jp hl                                            ; $540d: $e9


	or a                                             ; $540e: $b7
	di                                               ; $540f: $f3
	xor a                                            ; $5410: $af
	or e                                             ; $5411: $b3
	rst AddAOntoHL                                          ; $5412: $ef
	or d                                             ; $5413: $b2
	rst AddAOntoHL                                          ; $5414: $ef
	jp nc, $e1ef                                     ; $5415: $d2 $ef $e1

	rst SubAFromDE                                          ; $5418: $df
	ld h, l                                          ; $5419: $65
	ld e, a                                          ; $541a: $5f
	ld a, a                                          ; $541b: $7f
	cp $9a                                           ; $541c: $fe $9a
	ld h, a                                          ; $541e: $67
	ld e, a                                          ; $541f: $5f
	ld b, d                                          ; $5420: $42
	ld a, [hl]                                       ; $5421: $7e
	ld c, d                                          ; $5422: $4a
	ld a, e                                          ; $5423: $7b
	cp $9d                                           ; $5424: $fe $9d
	ld c, h                                          ; $5426: $4c
	ld a, h                                          ; $5427: $7c
	ld h, a                                          ; $5428: $67

jr_069_5429:
	cp $80                                           ; $5429: $fe $80
	ld c, b                                          ; $542b: $48
	ld a, b                                          ; $542c: $78
	ld l, b                                          ; $542d: $68
	ld a, b                                          ; $542e: $78
	jr z, jr_069_5469                                ; $542f: $28 $38

	jr z, jr_069_546b                                ; $5431: $28 $38

	cpl                                              ; $5433: $2f
	ccf                                              ; $5434: $3f
	db $fd                                           ; $5435: $fd
	rst $38                                          ; $5436: $ff
	db $fd                                           ; $5437: $fd
	inc a                                            ; $5438: $3c
	db $fc                                           ; $5439: $fc
	inc [hl]                                         ; $543a: $34
	cp [hl]                                          ; $543b: $be
	inc [hl]                                         ; $543c: $34
	sbc b                                            ; $543d: $98
	ld [hl], $9e                                     ; $543e: $36 $9e
	ld [hl-], a                                      ; $5440: $32
	xor b                                            ; $5441: $a8
	ld a, [de]                                       ; $5442: $1a
	ld l, d                                          ; $5443: $6a
	jr jr_069_54b6                                   ; $5444: $18 $70

	ld [$0078], sp                                   ; $5446: $08 $78 $00
	sbc h                                            ; $5449: $9c
	sub h                                            ; $544a: $94
	jr nz, jr_069_5409                               ; $544b: $20 $bc

	jr nz, jr_069_53fb                               ; $544d: $20 $ac

	ld h, b                                          ; $544f: $60
	ldh [rLCDC], a                                   ; $5450: $e0 $40
	ret nz                                           ; $5452: $c0

	ld b, b                                          ; $5453: $40
	ret nz                                           ; $5454: $c0

	add b                                            ; $5455: $80
	rst FarCall                                          ; $5456: $f7
	rst SubAFromDE                                          ; $5457: $df
	ld [bc], a                                       ; $5458: $02
	rst SubAFromDE                                          ; $5459: $df
	ld bc, $dff7                                     ; $545a: $01 $f7 $df
	inc bc                                           ; $545d: $03
	add b                                            ; $545e: $80
	rra                                              ; $545f: $1f
	inc e                                            ; $5460: $1c
	ld a, b                                          ; $5461: $78
	ld h, a                                          ; $5462: $67
	ldh [$9f], a                                     ; $5463: $e0 $9f
	rrca                                             ; $5465: $0f
	rst $38                                          ; $5466: $ff

jr_069_5467:
	ld h, b                                          ; $5467: $60
	rst $38                                          ; $5468: $ff

jr_069_5469:
	add a                                            ; $5469: $87
	sbc a                                            ; $546a: $9f

jr_069_546b:
	inc c                                            ; $546b: $0c
	ld a, [hl]                                       ; $546c: $7e
	jr nc, jr_069_5467                               ; $546d: $30 $f8

	pop bc                                           ; $546f: $c1
	db $e3                                           ; $5470: $e3
	rrca                                             ; $5471: $0f
	sbc a                                            ; $5472: $9f
	db $f4                                           ; $5473: $f4
	db $fd                                           ; $5474: $fd
	adc b                                            ; $5475: $88
	ei                                               ; $5476: $fb
	ld de, $33f3                                     ; $5477: $11 $f3 $33
	rst FarCall                                          ; $547a: $f7
	ld h, $ef                                        ; $547b: $26 $ef
	ld c, l                                          ; $547d: $4d
	sbc b                                            ; $547e: $98
	sbc $55                                          ; $547f: $de $55
	cp $ab                                           ; $5481: $fe $ab
	db $fc                                           ; $5483: $fc
	set 7, h                                         ; $5484: $cb $fc
	ldh [$c1], a                                     ; $5486: $e0 $c1
	add b                                            ; $5488: $80
	sbc e                                            ; $5489: $9b
	di                                               ; $548a: $f3
	adc e                                            ; $548b: $8b
	ei                                               ; $548c: $fb
	call Call_069_5579                               ; $548d: $cd $79 $55
	ld l, l                                          ; $5490: $6d
	ld d, [hl]                                       ; $5491: $56
	ld l, h                                          ; $5492: $6c
	ld l, e                                          ; $5493: $6b
	ld [hl], $2d                                     ; $5494: $36 $2d
	inc sp                                           ; $5496: $33
	ld [hl], $19                                     ; $5497: $36 $19
	sbc e                                            ; $5499: $9b
	inc c                                            ; $549a: $0c
	adc l                                            ; $549b: $8d
	ld b, $c5                                        ; $549c: $06 $c5
	inc bc                                           ; $549e: $03
	ld hl, $5040                                     ; $549f: $21 $40 $50
	jr nz, jr_069_54cc                               ; $54a2: $20 $28

	jr nc, jr_069_54ba                               ; $54a4: $30 $14

	jr jr_069_54b6                                   ; $54a6: $18 $0e

	sbc [hl]                                         ; $54a8: $9e
	ld [$dffb], sp                                   ; $54a9: $08 $fb $df
	rlca                                             ; $54ac: $07
	add b                                            ; $54ad: $80
	inc c                                            ; $54ae: $0c
	dec bc                                           ; $54af: $0b
	rla                                              ; $54b0: $17
	rra                                              ; $54b1: $1f
	xor [hl]                                         ; $54b2: $ae
	cp c                                             ; $54b3: $b9
	ei                                               ; $54b4: $fb
	rst FarCall                                          ; $54b5: $f7

jr_069_54b6:
	cp l                                             ; $54b6: $bd
	cp $7b                                           ; $54b7: $fe $7b
	ld e, l                                          ; $54b9: $5d

jr_069_54ba:
	ld a, e                                          ; $54ba: $7b
	ld c, [hl]                                       ; $54bb: $4e
	rst SubAFromHL                                          ; $54bc: $d7
	db $ed                                           ; $54bd: $ed
	ld a, l                                          ; $54be: $7d
	rst SubAFromBC                                          ; $54bf: $e7
	dec hl                                           ; $54c0: $2b
	rst FarCall                                          ; $54c1: $f7
	or $fb                                           ; $54c2: $f6 $fb
	dec d                                            ; $54c4: $15
	ei                                               ; $54c5: $fb
	ld l, c                                          ; $54c6: $69
	rst $38                                          ; $54c7: $ff
	add hl, de                                       ; $54c8: $19
	rst $38                                          ; $54c9: $ff
	db $ed                                           ; $54ca: $ed
	rst $38                                          ; $54cb: $ff

jr_069_54cc:
	dec e                                            ; $54cc: $1d
	add [hl]                                         ; $54cd: $86
	ccf                                              ; $54ce: $3f
	rlca                                             ; $54cf: $07
	rst $38                                          ; $54d0: $ff
	cp $ff                                           ; $54d1: $fe $ff
	dec de                                           ; $54d3: $1b
	rst $38                                          ; $54d4: $ff
	ld [hl-], a                                      ; $54d5: $32
	rst $38                                          ; $54d6: $ff
	and $ff                                          ; $54d7: $e6 $ff
	rst JumpTable                                          ; $54d9: $c7
	rst AddAOntoHL                                          ; $54da: $ef
	jp z, $cacf                                      ; $54db: $ca $cf $ca

	ld e, a                                          ; $54de: $5f
	jp z, $da5e                                      ; $54df: $ca $5e $da

	ld d, d                                          ; $54e2: $52
	jp c, $da53                                      ; $54e3: $da $53 $da

	ld [hl], e                                       ; $54e6: $73
	ldh [$c1], a                                     ; $54e7: $e0 $c1
	ld h, [hl]                                       ; $54e9: $66
	rst SubAFromDE                                          ; $54ea: $df
	rst SubAFromDE                                          ; $54eb: $df
	add b                                            ; $54ec: $80
	rst SubAFromDE                                          ; $54ed: $df
	ld h, b                                          ; $54ee: $60
	add b                                            ; $54ef: $80
	ld e, a                                          ; $54f0: $5f
	sbc a                                            ; $54f1: $9f
	pop de                                           ; $54f2: $d1
	ldh [$bf], a                                     ; $54f3: $e0 $bf
	ld a, a                                          ; $54f5: $7f
	ldh a, [rIF]                                     ; $54f6: $f0 $0f
	ccf                                              ; $54f8: $3f
	ret nz                                           ; $54f9: $c0

	ld h, b                                          ; $54fa: $60
	rst $38                                          ; $54fb: $ff
	ld l, a                                          ; $54fc: $6f
	rra                                              ; $54fd: $1f
	ld bc, $0200                                     ; $54fe: $01 $00 $02
	ld bc, $0304                                     ; $5501: $01 $04 $03
	nop                                              ; $5504: $00
	nop                                              ; $5505: $00
	rrca                                             ; $5506: $0f
	rrca                                             ; $5507: $0f
	dec e                                            ; $5508: $1d
	rla                                              ; $5509: $17
	ld a, [hl-]                                      ; $550a: $3a
	dec h                                            ; $550b: $25
	push af                                          ; $550c: $f5
	set 7, e                                         ; $550d: $cb $fb
	add b                                            ; $550f: $80
	sub $de                                          ; $5510: $d6 $de
	push af                                          ; $5512: $f5
	ld [hl], a                                       ; $5513: $77
	db $fd                                           ; $5514: $fd
	cp l                                             ; $5515: $bd
	ld a, a                                          ; $5516: $7f
	rst $38                                          ; $5517: $ff
	rst $38                                          ; $5518: $ff
	and a                                            ; $5519: $a7
	ld a, b                                          ; $551a: $78
	ld hl, sp-$01                                    ; $551b: $f8 $ff
	rrca                                             ; $551d: $0f
	ldh a, [rIE]                                     ; $551e: $f0 $ff
	rst $38                                          ; $5520: $ff
	jr @+$01                                         ; $5521: $18 $ff

	jr nz, @+$01                                     ; $5523: $20 $ff

	ld a, [hl]                                       ; $5525: $7e
	rst $38                                          ; $5526: $ff
	add b                                            ; $5527: $80
	ld hl, sp+$00                                    ; $5528: $f8 $00
	ldh [$7c], a                                     ; $552a: $e0 $7c
	rst $38                                          ; $552c: $ff
	add e                                            ; $552d: $83
	jp $0089                                         ; $552e: $c3 $89 $00


	adc a                                            ; $5531: $8f
	rst $38                                          ; $5532: $ff
	rst $38                                          ; $5533: $ff
	set 7, a                                         ; $5534: $cb $ff
	ld h, l                                          ; $5536: $65
	rst $38                                          ; $5537: $ff
	ld [hl+], a                                      ; $5538: $22
	cp a                                             ; $5539: $bf
	sub d                                            ; $553a: $92
	cp a                                             ; $553b: $bf
	sbc c                                            ; $553c: $99
	db $db                                           ; $553d: $db
	sbc b                                            ; $553e: $98
	db $dd                                           ; $553f: $dd
	call c, $fcf4                                    ; $5540: $dc $f4 $fc
	or [hl]                                          ; $5543: $b6
	cp $b6                                           ; $5544: $fe $b6
	ldh [$c1], a                                     ; $5546: $e0 $c1
	ld a, l                                          ; $5548: $7d
	cp [hl]                                          ; $5549: $be
	add l                                            ; $554a: $85
	ld a, [hl]                                       ; $554b: $7e
	ld bc, $037e                                     ; $554c: $01 $7e $03
	ld a, l                                          ; $554f: $7d
	rlca                                             ; $5550: $07
	ei                                               ; $5551: $fb
	rrca                                             ; $5552: $0f
	push af                                          ; $5553: $f5
	ccf                                              ; $5554: $3f
	ret                                              ; $5555: $c9


	rst $38                                          ; $5556: $ff
	jr nc, @+$01                                     ; $5557: $30 $ff

	pop bc                                           ; $5559: $c1
	rst $38                                          ; $555a: $ff
	rlca                                             ; $555b: $07
	rst $38                                          ; $555c: $ff

Call_069_555d:
	ld a, [de]                                       ; $555d: $1a
	rst $38                                          ; $555e: $ff
	ld h, h                                          ; $555f: $64
	cp $98                                           ; $5560: $fe $98
	ld hl, sp+$20                                    ; $5562: $f8 $20
	ldh a, [$7a]                                     ; $5564: $f0 $7a
	ld hl, $4173                                     ; $5566: $21 $73 $41
	rst SubAFromDE                                          ; $5569: $df
	ldh [$df], a                                     ; $556a: $e0 $df
	ldh a, [$80]                                     ; $556c: $f0 $80
	cp c                                             ; $556e: $b9
	ld a, c                                          ; $556f: $79
	ld a, e                                          ; $5570: $7b
	ei                                               ; $5571: $fb
	rst GetHLinHL                                          ; $5572: $cf
	cp a                                             ; $5573: $bf
	ccf                                              ; $5574: $3f
	rst $38                                          ; $5575: $ff
	ld a, l                                          ; $5576: $7d
	rst $38                                          ; $5577: $ff
	ldh [c], a                                       ; $5578: $e2

Call_069_5579:
	cp $9d                                           ; $5579: $fe $9d
	ld a, a                                          ; $557b: $7f
	ld b, e                                          ; $557c: $43
	cp a                                             ; $557d: $bf
	call z, $ff3f                                    ; $557e: $cc $3f $ff
	rst $38                                          ; $5581: $ff
	ld l, d                                          ; $5582: $6a
	rst $38                                          ; $5583: $ff
	ld sp, hl                                        ; $5584: $f9
	rra                                              ; $5585: $1f
	ld c, l                                          ; $5586: $4d
	add a                                            ; $5587: $87
	add [hl]                                         ; $5588: $86
	ld h, e                                          ; $5589: $63
	add hl, hl                                       ; $558a: $29
	inc de                                           ; $558b: $13
	sbc $86                                          ; $558c: $de $86
	add hl, bc                                       ; $558e: $09
	sub [hl]                                         ; $558f: $96
	db $ed                                           ; $5590: $ed
	ld [hl], l                                       ; $5591: $75
	cp $cf                                           ; $5592: $fe $cf
	cp $aa                                           ; $5594: $fe $aa
	ld [hl], a                                       ; $5596: $77
	sub $bb                                          ; $5597: $d6 $bb
	adc c                                            ; $5599: $89
	rst SubAFromDE                                          ; $559a: $df
	push bc                                          ; $559b: $c5
	ld l, a                                          ; $559c: $6f
	ld l, [hl]                                       ; $559d: $6e
	and a                                            ; $559e: $a7
	and a                                            ; $559f: $a7
	sub [hl]                                         ; $55a0: $96
	jp $0796                                         ; $55a1: $c3 $96 $07


	jp nz, Jump_069_4b63                             ; $55a4: $c2 $63 $4b

	ldh [$c1], a                                     ; $55a7: $e0 $c1
	adc d                                            ; $55a9: $8a
	xor [hl]                                         ; $55aa: $ae
	rst $38                                          ; $55ab: $ff
	xor l                                            ; $55ac: $ad
	cp $b3                                           ; $55ad: $fe $b3
	db $fc                                           ; $55af: $fc
	cpl                                              ; $55b0: $2f
	ldh a, [$7f]                                     ; $55b1: $f0 $7f
	ldh [$df], a                                     ; $55b3: $e0 $df
	ldh [$bf], a                                     ; $55b5: $e0 $bf
	ret nz                                           ; $55b7: $c0

	cp a                                             ; $55b8: $bf
	ret nz                                           ; $55b9: $c0

	ld [hl], b                                       ; $55ba: $70
	add b                                            ; $55bb: $80
	pop hl                                           ; $55bc: $e1
	nop                                              ; $55bd: $00
	ret nz                                           ; $55be: $c0

	call c, $9e01                                    ; $55bf: $dc $01 $9e
	nop                                              ; $55c2: $00
	ld a, e                                          ; $55c3: $7b
	cp $6d                                           ; $55c4: $fe $6d
	adc a                                            ; $55c6: $8f
	db $dd                                           ; $55c7: $dd
	add b                                            ; $55c8: $80
	db $fd                                           ; $55c9: $fd
	rst SubAFromDE                                          ; $55ca: $df
	ldh a, [$62]                                     ; $55cb: $f0 $62
	adc d                                            ; $55cd: $8a
	ld a, [hl]                                       ; $55ce: $7e
	sub d                                            ; $55cf: $92
	adc l                                            ; $55d0: $8d
	ldh [$98], a                                     ; $55d1: $e0 $98
	ld hl, sp-$04                                    ; $55d3: $f8 $fc
	db $fc                                           ; $55d5: $fc
	ld b, d                                          ; $55d6: $42
	jp nz, $e020                                     ; $55d7: $c2 $20 $e0

	or b                                             ; $55da: $b0
	ldh a, [$a8]                                     ; $55db: $f0 $a8
	ld hl, sp-$58                                    ; $55dd: $f8 $a8
	ld hl, sp+$54                                    ; $55df: $f8 $54
	db $fc                                           ; $55e1: $fc
	inc [hl]                                         ; $55e2: $34
	ld a, e                                          ; $55e3: $7b
	cp $80                                           ; $55e4: $fe $80
	ld d, $fe                                        ; $55e6: $16 $fe
	rra                                              ; $55e8: $1f
	ld sp, hl                                        ; $55e9: $f9
	dec hl                                           ; $55ea: $2b
	db $f4                                           ; $55eb: $f4
	ld a, $ff                                        ; $55ec: $3e $ff
	cpl                                              ; $55ee: $2f
	pop af                                           ; $55ef: $f1
	dec sp                                           ; $55f0: $3b
	db $fc                                           ; $55f1: $fc
	ld [hl], a                                       ; $55f2: $77
	ld hl, sp-$15                                    ; $55f3: $f8 $eb
	sbc h                                            ; $55f5: $9c
	rst $38                                          ; $55f6: $ff
	nop                                              ; $55f7: $00
	db $fc                                           ; $55f8: $fc
	ld b, b                                          ; $55f9: $40
	ld hl, sp-$20                                    ; $55fa: $f8 $e0
	or b                                             ; $55fc: $b0
	ld h, b                                          ; $55fd: $60
	ld [hl], b                                       ; $55fe: $70
	and b                                            ; $55ff: $a0
	ldh a, [$e0]                                     ; $5600: $f0 $e0
	ld h, b                                          ; $5602: $60
	ldh a, [$78]                                     ; $5603: $f0 $78
	ld [hl], e                                       ; $5605: $73
	cp $9e                                           ; $5606: $fe $9e
	ld e, b                                          ; $5608: $58
	ld a, e                                          ; $5609: $7b
	cp $8b                                           ; $560a: $fe $8b
	ld e, h                                          ; $560c: $5c
	ldh a, [rAUD3LEVEL]                              ; $560d: $f0 $1c
	ldh a, [rAUD3HIGH]                               ; $560f: $f0 $1e
	ld hl, sp+$1e                                    ; $5611: $f8 $1e
	ld hl, sp+$4f                                    ; $5613: $f8 $4f
	db $fc                                           ; $5615: $fc
	ld c, e                                          ; $5616: $4b
	ei                                               ; $5617: $fb
	ret nc                                           ; $5618: $d0

	ld [hl], b                                       ; $5619: $70
	ret nc                                           ; $561a: $d0

	ld [hl], b                                       ; $561b: $70
	ld d, b                                          ; $561c: $50
	ldh a, [$a0]                                     ; $561d: $f0 $a0
	ldh [rPCM34], a                                  ; $561f: $e0 $77
	cp $dd                                           ; $5621: $fe $dd
	ret nz                                           ; $5623: $c0

	ld h, a                                          ; $5624: $67
	sub d                                            ; $5625: $92

jr_069_5626:
	rst SubAFromDE                                          ; $5626: $df
	ld a, b                                          ; $5627: $78
	sbc b                                            ; $5628: $98
	cp $c6                                           ; $5629: $fe $c6
	rst $38                                          ; $562b: $ff
	add c                                            ; $562c: $81
	ld a, a                                          ; $562d: $7f
	add c                                            ; $562e: $81
	rst $38                                          ; $562f: $ff
	ld a, d                                          ; $5630: $7a
	cp h                                             ; $5631: $bc

jr_069_5632:
	sbc d                                            ; $5632: $9a
	cp $02                                           ; $5633: $fe $02
	db $fc                                           ; $5635: $fc
	nop                                              ; $5636: $00
	ld hl, sp+$6e                                    ; $5637: $f8 $6e
	inc d                                            ; $5639: $14
	rst SubAFromDE                                          ; $563a: $df
	pop bc                                           ; $563b: $c1
	sub d                                            ; $563c: $92
	ld [hl+], a                                      ; $563d: $22
	and d                                            ; $563e: $a2
	ld h, h                                          ; $563f: $64
	and b                                            ; $5640: $a0
	ld b, h                                          ; $5641: $44
	and h                                            ; $5642: $a4
	ld l, b                                          ; $5643: $68
	inc d                                            ; $5644: $14
	add sp, -$28                                     ; $5645: $e8 $d8
	or b                                             ; $5647: $b0
	ret c                                            ; $5648: $d8

	or b                                             ; $5649: $b0
	add hl, sp                                       ; $564a: $39
	xor $90                                          ; $564b: $ee $90
	add b                                            ; $564d: $80
	ld b, b                                          ; $564e: $40
	ret nz                                           ; $564f: $c0

	jr nz, jr_069_5632                               ; $5650: $20 $e0

	ld [hl], b                                       ; $5652: $70
	sub b                                            ; $5653: $90
	ldh a, [rAUD1SWEEP]                              ; $5654: $f0 $10
	ld a, b                                          ; $5656: $78
	adc b                                            ; $5657: $88
	ld hl, sp+$08                                    ; $5658: $f8 $08
	add sp, $18                                      ; $565a: $e8 $18
	ld [hl], a                                       ; $565c: $77
	cp $9b                                           ; $565d: $fe $9b
	ret z                                            ; $565f: $c8

	jr c, jr_069_5626                                ; $5660: $38 $c4

	inc a                                            ; $5662: $3c
	ld l, a                                          ; $5663: $6f
	cp $80                                           ; $5664: $fe $80
	db $e4                                           ; $5666: $e4
	inc e                                            ; $5667: $1c
	db $e4                                           ; $5668: $e4
	inc e                                            ; $5669: $1c
	ldh [c], a                                       ; $566a: $e2
	ld e, $f2                                        ; $566b: $1e $f2
	ld c, $f2                                        ; $566d: $0e $f2
	ld c, $fa                                        ; $566f: $0e $fa
	ld b, $fd                                        ; $5671: $06 $fd
	inc bc                                           ; $5673: $03
	db $fd                                           ; $5674: $fd
	inc bc                                           ; $5675: $03
	ld a, a                                          ; $5676: $7f
	add c                                            ; $5677: $81
	cp [hl]                                          ; $5678: $be
	pop bc                                           ; $5679: $c1
	ld a, [hl]                                       ; $567a: $7e
	ld b, c                                          ; $567b: $41
	ld e, a                                          ; $567c: $5f
	ld h, b                                          ; $567d: $60
	ld e, a                                          ; $567e: $5f
	ld h, b                                          ; $567f: $60
	ccf                                              ; $5680: $3f
	jr nz, jr_069_56c2                               ; $5681: $20 $3f

	jr nz, jr_069_56b4                               ; $5683: $20 $2f

	sbc b                                            ; $5685: $98
	jr nc, @+$21                                     ; $5686: $30 $1f

	db $10                                           ; $5688: $10
	rra                                              ; $5689: $1f

jr_069_568a:
	db $10                                           ; $568a: $10
	rla                                              ; $568b: $17
	jr jr_069_56f5                                   ; $568c: $18 $67

	cp $95                                           ; $568e: $fe $95
	sbc a                                            ; $5690: $9f
	sbc b                                            ; $5691: $98
	db $fc                                           ; $5692: $fc
	ld hl, sp-$64                                    ; $5693: $f8 $9c
	ld hl, sp+$0c                                    ; $5695: $f8 $0c
	sbc b                                            ; $5697: $98
	inc c                                            ; $5698: $0c
	jr jr_069_5716                                   ; $5699: $18 $7b

	cp $df                                           ; $569b: $fe $df
	inc a                                            ; $569d: $3c
	adc h                                            ; $569e: $8c
	ld a, h                                          ; $569f: $7c
	ld b, [hl]                                       ; $56a0: $46
	db $f4                                           ; $56a1: $f4
	ld b, $84                                        ; $56a2: $06 $84
	ld e, $1c                                        ; $56a4: $1e $1c
	ld h, $3c                                        ; $56a6: $26 $3c
	ld b, [hl]                                       ; $56a8: $46
	ld a, h                                          ; $56a9: $7c
	ld c, a                                          ; $56aa: $4f
	ld a, h                                          ; $56ab: $7c
	sbc a                                            ; $56ac: $9f
	ld a, [$f29f]                                    ; $56ad: $fa $9f $f2
	cp a                                             ; $56b0: $bf
	ldh a, [c]                                       ; $56b1: $f2
	ld l, [hl]                                       ; $56b2: $6e
	ldh [c], a                                       ; $56b3: $e2

jr_069_56b4:
	ld [hl], a                                       ; $56b4: $77
	adc h                                            ; $56b5: $8c
	ld a, a                                          ; $56b6: $7f
	cp $95                                           ; $56b7: $fe $95
	and b                                            ; $56b9: $a0
	ld h, b                                          ; $56ba: $60
	and b                                            ; $56bb: $a0
	ld h, b                                          ; $56bc: $60
	sub b                                            ; $56bd: $90
	ld [hl], b                                       ; $56be: $70
	ret nc                                           ; $56bf: $d0

	jr nc, jr_069_568a                               ; $56c0: $30 $c8

jr_069_56c2:
	jr c, jr_069_573b                                ; $56c2: $38 $77

	cp $6f                                           ; $56c4: $fe $6f
	sub [hl]                                         ; $56c6: $96
	ld [hl], a                                       ; $56c7: $77
	sub h                                            ; $56c8: $94
	sbc c                                            ; $56c9: $99
	pop af                                           ; $56ca: $f1
	rrca                                             ; $56cb: $0f
	pop af                                           ; $56cc: $f1
	rrca                                             ; $56cd: $0f
	ld hl, sp+$07                                    ; $56ce: $f8 $07
	ld [hl], a                                       ; $56d0: $77
	cp $9b                                           ; $56d1: $fe $9b
	db $fc                                           ; $56d3: $fc
	inc bc                                           ; $56d4: $03
	cp $01                                           ; $56d5: $fe $01
	ld a, e                                          ; $56d7: $7b
	jr nc, jr_069_573d                               ; $56d8: $30 $63

	cp $9e                                           ; $56da: $fe $9e
	ld a, a                                          ; $56dc: $7f
	ld h, l                                          ; $56dd: $65
	ld b, c                                          ; $56de: $41
	ld e, e                                          ; $56df: $5b
	cp d                                             ; $56e0: $ba
	ld h, a                                          ; $56e1: $67
	or [hl]                                          ; $56e2: $b6
	sbc c                                            ; $56e3: $99
	ldh [rAUD4LEN], a                                ; $56e4: $e0 $20
	ldh [rAUD4LEN], a                                ; $56e6: $e0 $20
	and b                                            ; $56e8: $a0
	ld h, b                                          ; $56e9: $60
	rra                                              ; $56ea: $1f
	nop                                              ; $56eb: $00
	sub a                                            ; $56ec: $97
	call z, $1199                                    ; $56ed: $cc $99 $11
	sbc c                                            ; $56f0: $99
	ld b, h                                          ; $56f1: $44
	sbc c                                            ; $56f2: $99
	ld d, l                                          ; $56f3: $55
	sbc c                                            ; $56f4: $99

jr_069_56f5:
	ld e, e                                          ; $56f5: $5b
	ei                                               ; $56f6: $fb
	sbc [hl]                                         ; $56f7: $9e
	ld [hl+], a                                      ; $56f8: $22
	ld a, e                                          ; $56f9: $7b
	db $ed                                           ; $56fa: $ed
	sbc b                                            ; $56fb: $98
	sbc c                                            ; $56fc: $99
	ld h, [hl]                                       ; $56fd: $66
	sbc c                                            ; $56fe: $99
	adc b                                            ; $56ff: $88
	nop                                              ; $5700: $00
	sbc c                                            ; $5701: $99
	ld b, h                                          ; $5702: $44
	sbc $bb                                          ; $5703: $de $bb
	sbc [hl]                                         ; $5705: $9e
	ld [hl+], a                                      ; $5706: $22
	sbc $bb                                          ; $5707: $de $bb
	or [hl]                                          ; $5709: $b6
	ld bc, $9f80                                     ; $570a: $01 $80 $9f
	rst $38                                          ; $570d: $ff
	inc e                                            ; $570e: $1c
	ldh a, [$3e]                                     ; $570f: $f0 $3e
	ldh [$50], a                                     ; $5711: $e0 $50
	rst AddAOntoHL                                          ; $5713: $ef
	ld e, a                                          ; $5714: $5f
	rst $38                                          ; $5715: $ff

jr_069_5716:
	rst $38                                          ; $5716: $ff
	ldh [$f9], a                                     ; $5717: $e0 $f9
	add [hl]                                         ; $5719: $86
	cp $9f                                           ; $571a: $fe $9f
	ld sp, hl                                        ; $571c: $f9
	cp c                                             ; $571d: $b9
	db $eb                                           ; $571e: $eb
	ei                                               ; $571f: $fb
	ld c, a                                          ; $5720: $4f
	xor a                                            ; $5721: $af
	ld l, e                                          ; $5722: $6b
	adc a                                            ; $5723: $8f
	add $8e                                          ; $5724: $c6 $8e
	ret                                              ; $5726: $c9


	add [hl]                                         ; $5727: $86
	push de                                          ; $5728: $d5
	ret nz                                           ; $5729: $c0

	ld [$c088], a                                    ; $572a: $ea $88 $c0
	ld e, a                                          ; $572d: $5f
	ld h, b                                          ; $572e: $60
	ld a, a                                          ; $572f: $7f
	ld h, b                                          ; $5730: $60
	cpl                                              ; $5731: $2f
	jr nc, jr_069_5763                               ; $5732: $30 $2f

	jr nc, @+$39                                     ; $5734: $30 $37

	jr c, jr_069_576f                                ; $5736: $38 $37

	jr c, @+$6d                                      ; $5738: $38 $6b

	ld l, h                                          ; $573a: $6c

jr_069_573b:
	ld h, l                                          ; $573b: $65
	ld h, [hl]                                       ; $573c: $66

jr_069_573d:
	ld b, d                                          ; $573d: $42
	ld b, e                                          ; $573e: $43
	ld b, c                                          ; $573f: $41
	ld b, c                                          ; $5740: $41
	ld b, b                                          ; $5741: $40
	ld b, b                                          ; $5742: $40
	ei                                               ; $5743: $fb
	rst SubAFromDE                                          ; $5744: $df
	rra                                              ; $5745: $1f
	add a                                            ; $5746: $87
	rst $38                                          ; $5747: $ff
	di                                               ; $5748: $f3
	db $db                                           ; $5749: $db
	rst $38                                          ; $574a: $ff
	ccf                                              ; $574b: $3f
	dec h                                            ; $574c: $25
	dec [hl]                                         ; $574d: $35
	dec h                                            ; $574e: $25
	jr nz, jr_069_5755                               ; $574f: $20 $04

	nop                                              ; $5751: $00
	add h                                            ; $5752: $84
	add b                                            ; $5753: $80
	nop                                              ; $5754: $00

jr_069_5755:
	ret nz                                           ; $5755: $c0

	nop                                              ; $5756: $00
	pop bc                                           ; $5757: $c1
	nop                                              ; $5758: $00
	ld bc, $0180                                     ; $5759: $01 $80 $01
	add b                                            ; $575c: $80
	nop                                              ; $575d: $00
	add b                                            ; $575e: $80
	db $fd                                           ; $575f: $fd
	add b                                            ; $5760: $80
	adc b                                            ; $5761: $88
	nop                                              ; $5762: $00

jr_069_5763:
	inc e                                            ; $5763: $1c
	nop                                              ; $5764: $00
	inc c                                            ; $5765: $0c
	db $10                                           ; $5766: $10
	ld a, [rIE]                                    ; $5767: $fa $ff $ff
	rla                                              ; $576a: $17
	ccf                                              ; $576b: $3f
	ld de, $7907                                     ; $576c: $11 $07 $79

jr_069_576f:
	ld a, l                                          ; $576f: $7d
	ld a, [hl]                                       ; $5770: $7e
	di                                               ; $5771: $f3
	rrca                                             ; $5772: $0f
	and $19                                          ; $5773: $e6 $19
	db $fd                                           ; $5775: $fd
	ld a, $f3                                        ; $5776: $3e $f3
	ld [hl], e                                       ; $5778: $73
	rst SubAFromHL                                          ; $5779: $d7
	ld [hl], a                                       ; $577a: $77
	sbc [hl]                                         ; $577b: $9e
	ld e, a                                          ; $577c: $5f
	ld d, $1e                                        ; $577d: $16 $1e
	dec c                                            ; $577f: $0d

jr_069_5780:
	add l                                            ; $5780: $85
	ld e, $33                                        ; $5781: $1e $33
	inc c                                            ; $5783: $0c
	dec hl                                           ; $5784: $2b
	nop                                              ; $5785: $00
	ld d, l                                          ; $5786: $55
	nop                                              ; $5787: $00
	db $fc                                           ; $5788: $fc
	inc bc                                           ; $5789: $03
	ld hl, sp+$07                                    ; $578a: $f8 $07
	ldh a, [rIF]                                     ; $578c: $f0 $0f
	ldh a, [rIF]                                     ; $578e: $f0 $0f
	pop hl                                           ; $5790: $e1
	rra                                              ; $5791: $1f
	ldh [c], a                                       ; $5792: $e2
	ld e, $c6                                        ; $5793: $1e $c6
	ld a, $cc                                        ; $5795: $3e $cc
	inc a                                            ; $5797: $3c
	sbc h                                            ; $5798: $9c
	ld a, h                                          ; $5799: $7c

jr_069_579a:
	ld a, h                                          ; $579a: $7c
	call c, $80fc                                    ; $579b: $dc $fc $80
	ldh [c], a                                       ; $579e: $e2
	cp $c2                                           ; $579f: $fe $c2
	cp $02                                           ; $57a1: $fe $02
	rst $38                                          ; $57a3: $ff
	ld bc, $03ff                                     ; $57a4: $01 $ff $03
	ld l, [hl]                                       ; $57a7: $6e
	inc hl                                           ; $57a8: $23
	halt                                             ; $57a9: $76
	ld h, $b7                                        ; $57aa: $26 $b7
	dec b                                            ; $57ac: $05
	rst FarCall                                          ; $57ad: $f7
	sub l                                            ; $57ae: $95
	rst $38                                          ; $57af: $ff
	sub l                                            ; $57b0: $95
	rst $38                                          ; $57b1: $ff
	sub d                                            ; $57b2: $92
	rst $38                                          ; $57b3: $ff
	jp nc, $d37f                                     ; $57b4: $d2 $7f $d3

	ld a, a                                          ; $57b7: $7f
	ld c, c                                          ; $57b8: $49
	rst $38                                          ; $57b9: $ff
	ret                                              ; $57ba: $c9


	rst $38                                          ; $57bb: $ff
	ret                                              ; $57bc: $c9


	sbc e                                            ; $57bd: $9b
	ld a, a                                          ; $57be: $7f
	ret                                              ; $57bf: $c9


	ld a, a                                          ; $57c0: $7f
	ret z                                            ; $57c1: $c8

	ld a, e                                          ; $57c2: $7b
	db $fc                                           ; $57c3: $fc

jr_069_57c4:
	ld a, a                                          ; $57c4: $7f
	cp $80                                           ; $57c5: $fe $80
	db $db                                           ; $57c7: $db
	ld l, l                                          ; $57c8: $6d
	ld d, e                                          ; $57c9: $53
	db $ed                                           ; $57ca: $ed
	rst SubAFromHL                                          ; $57cb: $d7
	jp hl                                            ; $57cc: $e9


	rst SubAFromHL                                          ; $57cd: $d7
	jp hl                                            ; $57ce: $e9


	ld [hl], h                                       ; $57cf: $74
	ld c, e                                          ; $57d0: $4b
	ld [hl], h                                       ; $57d1: $74
	ld c, e                                          ; $57d2: $4b
	halt                                             ; $57d3: $76
	ld c, e                                          ; $57d4: $4b
	ld a, d                                          ; $57d5: $7a
	ld c, a                                          ; $57d6: $4f
	ld l, d                                          ; $57d7: $6a
	ld e, a                                          ; $57d8: $5f
	ld h, e                                          ; $57d9: $63
	ld e, a                                          ; $57da: $5f
	pop af                                           ; $57db: $f1
	rst SubAFromDE                                          ; $57dc: $df
	or l                                             ; $57dd: $b5
	rst SubAFromDE                                          ; $57de: $df
	sub a                                            ; $57df: $97
	rst $38                                          ; $57e0: $ff
	sub [hl]                                         ; $57e1: $96
	cp $b7                                           ; $57e2: $fe $b7
	rst $38                                          ; $57e4: $ff

jr_069_57e5:
	or a                                             ; $57e5: $b7
	sbc [hl]                                         ; $57e6: $9e
	rst $38                                          ; $57e7: $ff
	ld d, a                                          ; $57e8: $57
	jr nz, jr_069_5780                               ; $57e9: $20 $95

	rst $38                                          ; $57eb: $ff

jr_069_57ec:
	add b                                            ; $57ec: $80
	pop af                                           ; $57ed: $f1
	adc [hl]                                         ; $57ee: $8e
	cp $9f                                           ; $57ef: $fe $9f
	db $db                                           ; $57f1: $db
	cp e                                             ; $57f2: $bb
	ld l, a                                          ; $57f3: $6f
	rst $38                                          ; $57f4: $ff
	ld a, e                                          ; $57f5: $7b
	jr nz, @-$60                                     ; $57f6: $20 $9e

	adc a                                            ; $57f8: $8f
	inc bc                                           ; $57f9: $03
	jr nz, jr_069_582f                               ; $57fa: $20 $33

	jr nz, @-$60                                     ; $57fc: $20 $9e

	add c                                            ; $57fe: $81
	ld a, e                                          ; $57ff: $7b

jr_069_5800:
	ld e, $27                                        ; $5800: $1e $27
	jr nz, jr_069_579a                               ; $5802: $20 $96

	cp $01                                           ; $5804: $fe $01

jr_069_5806:
	pop hl                                           ; $5806: $e1
	ld e, $fe                                        ; $5807: $1e $fe
	ccf                                              ; $5809: $3f
	rst SubAFromHL                                          ; $580a: $d7
	ld [hl], a                                       ; $580b: $77
	sbc a                                            ; $580c: $9f
	inc bc                                           ; $580d: $03
	jr nz, jr_069_5827                               ; $580e: $20 $17

	jr nz, @+$81                                     ; $5810: $20 $7f

	inc l                                            ; $5812: $2c
	ld l, a                                          ; $5813: $6f
	ld e, $03                                        ; $5814: $1e $03
	jr nz, jr_069_5853                               ; $5816: $20 $3b

	jr nz, jr_069_5899                               ; $5818: $20 $7f

	cp $93                                           ; $581a: $fe $93
	ld sp, hl                                        ; $581c: $f9
	add b                                            ; $581d: $80
	rst AddAOntoHL                                          ; $581e: $ef
	sbc a                                            ; $581f: $9f
	add hl, sp                                       ; $5820: $39
	ei                                               ; $5821: $fb
	ld l, e                                          ; $5822: $6b
	sbc a                                            ; $5823: $9f
	add $8f                                          ; $5824: $c6 $8f
	rst GetHLinHL                                          ; $5826: $cf

jr_069_5827:
	add b                                            ; $5827: $80
	inc bc                                           ; $5828: $03
	jr nz, jr_069_585e                               ; $5829: $20 $33

	jr nz, @+$81                                     ; $582b: $20 $7f

	cp $df                                           ; $582d: $fe $df

jr_069_582f:
	add b                                            ; $582f: $80
	daa                                              ; $5830: $27
	jr nz, jr_069_57c4                               ; $5831: $20 $91

	rst $38                                          ; $5833: $ff
	nop                                              ; $5834: $00
	rst JumpTable                                          ; $5835: $c7
	nop                                              ; $5836: $00
	sbc l                                            ; $5837: $9d
	ld a, $72                                        ; $5838: $3e $72
	rst FarCall                                          ; $583a: $f7
	rla                                              ; $583b: $17
	ccf                                              ; $583c: $3f
	dec c                                            ; $583d: $0d
	ld e, $3f                                        ; $583e: $1e $3f
	nop                                              ; $5840: $00
	inc bc                                           ; $5841: $03
	jr nz, @+$2d                                     ; $5842: $20 $2b

	jr nz, jr_069_58b9                               ; $5844: $20 $73

	ld e, $03                                        ; $5846: $1e $03
	jr nz, jr_069_58a1                               ; $5848: $20 $57

	jr nz, jr_069_57e5                               ; $584a: $20 $99

	ld e, b                                          ; $584c: $58
	rst SubAFromBC                                          ; $584d: $e7
	ld c, a                                          ; $584e: $4f
	rst $38                                          ; $584f: $ff
	rst FarCall                                          ; $5850: $f7
	ld hl, sp+$6f                                    ; $5851: $f8 $6f

jr_069_5853:
	jr nz, jr_069_57ec                               ; $5853: $20 $97

	ldh a, [$80]                                     ; $5855: $f0 $80
	ld a, [hl]                                       ; $5857: $7e
	add b                                            ; $5858: $80
	ld l, c                                          ; $5859: $69
	or b                                             ; $585a: $b0
	rst SubAFromDE                                          ; $585b: $df
	sbc a                                            ; $585c: $9f
	inc bc                                           ; $585d: $03

jr_069_585e:
	jr nz, @+$28                                     ; $585e: $20 $26

	ld b, b                                          ; $5860: $40
	cp $77                                           ; $5861: $fe $77
	ld e, $57                                        ; $5863: $1e $57
	jr nz, jr_069_5800                               ; $5865: $20 $99

	rrca                                             ; $5867: $0f
	ld [hl], c                                       ; $5868: $71
	ld a, e                                          ; $5869: $7b
	ld a, h                                          ; $586a: $7c
	rst SubAFromBC                                          ; $586b: $e7
	rra                                              ; $586c: $1f
	ld l, a                                          ; $586d: $6f
	jr nz, jr_069_5806                               ; $586e: $20 $96

	add e                                            ; $5870: $83
	nop                                              ; $5871: $00
	ccf                                              ; $5872: $3f
	nop                                              ; $5873: $00
	ld b, l                                          ; $5874: $45
	add e                                            ; $5875: $83
	ccf                                              ; $5876: $3f
	ld a, [hl]                                       ; $5877: $7e
	ld a, a                                          ; $5878: $7f
	inc bc                                           ; $5879: $03
	jr nz, jr_069_589b                               ; $587a: $20 $1f

	jr nz, jr_069_587f                               ; $587c: $20 $01

	ld h, b                                          ; $587e: $60

jr_069_587f:
	ld h, e                                          ; $587f: $63
	jr nz, @-$6b                                     ; $5880: $20 $93

	inc l                                            ; $5882: $2c
	jr nc, @+$3a                                     ; $5883: $30 $38

	stop                                             ; $5885: $10 $00
	nop                                              ; $5887: $00
	ld a, $24                                        ; $5888: $3e $24
	inc e                                            ; $588a: $1c
	jr jr_069_588d                                   ; $588b: $18 $00

jr_069_588d:
	nop                                              ; $588d: $00
	ld a, e                                          ; $588e: $7b
	db $fd                                           ; $588f: $fd
	cp $91                                           ; $5890: $fe $91
	ld b, c                                          ; $5892: $41
	add b                                            ; $5893: $80
	push bc                                          ; $5894: $c5
	db $e3                                           ; $5895: $e3
	rst $38                                          ; $5896: $ff
	rst $38                                          ; $5897: $ff
	rst AddAOntoHL                                          ; $5898: $ef

jr_069_5899:
	sbc a                                            ; $5899: $9f
	sbc l                                            ; $589a: $9d

jr_069_589b:
	add e                                            ; $589b: $83
	add a                                            ; $589c: $87
	add b                                            ; $589d: $80
	add c                                            ; $589e: $81
	nop                                              ; $589f: $00
	ld l, e                                          ; $58a0: $6b

jr_069_58a1:
	ldh [$9c], a                                     ; $58a1: $e0 $9c
	inc l                                            ; $58a3: $2c
	inc e                                            ; $58a4: $1c
	jr jr_069_591e                                   ; $58a5: $18 $77

	ldh [c], a                                       ; $58a7: $e2
	ld [hl], a                                       ; $58a8: $77
	db $fc                                           ; $58a9: $fc
	cpl                                              ; $58aa: $2f
	ldh [$9d], a                                     ; $58ab: $e0 $9d
	inc a                                            ; $58ad: $3c
	inc e                                            ; $58ae: $1c
	ld h, a                                          ; $58af: $67
	cp [hl]                                          ; $58b0: $be
	inc sp                                           ; $58b1: $33
	ldh [$df], a                                     ; $58b2: $e0 $df
	ld a, $df                                        ; $58b4: $3e $df
	inc e                                            ; $58b6: $1c
	sbc h                                            ; $58b7: $9c
	inc d                                            ; $58b8: $14

jr_069_58b9:
	jr jr_069_58c3                                   ; $58b9: $18 $08

	ld [hl], a                                       ; $58bb: $77
	sbc $4f                                          ; $58bc: $de $4f
	ldh [$c5], a                                     ; $58be: $e0 $c5
	ld bc, $9f80                                     ; $58c0: $01 $80 $9f

jr_069_58c3:
	rst $38                                          ; $58c3: $ff
	inc e                                            ; $58c4: $1c
	ldh a, [rAUD4POLY]                               ; $58c5: $f0 $22
	db $fc                                           ; $58c7: $fc
	ld a, a                                          ; $58c8: $7f
	rst $38                                          ; $58c9: $ff
	ld e, h                                          ; $58ca: $5c
	db $e3                                           ; $58cb: $e3
	cp a                                             ; $58cc: $bf
	ret nz                                           ; $58cd: $c0

	xor $9f                                          ; $58ce: $ee $9f
	reti                                             ; $58d0: $d9


	cp e                                             ; $58d1: $bb
	ld sp, hl                                        ; $58d2: $f9
	ld sp, hl                                        ; $58d3: $f9
	db $eb                                           ; $58d4: $eb
	cp a                                             ; $58d5: $bf
	ld c, a                                          ; $58d6: $4f
	xor a                                            ; $58d7: $af
	ld c, c                                          ; $58d8: $49
	xor a                                            ; $58d9: $af
	add $8f                                          ; $58da: $c6 $8f
	ret                                              ; $58dc: $c9


	add [hl]                                         ; $58dd: $86
	ret nz                                           ; $58de: $c0

	ret nz                                           ; $58df: $c0

	ldh [hDisp0_WY], a                                     ; $58e0: $e0 $88
	ret nz                                           ; $58e2: $c0

	ld e, a                                          ; $58e3: $5f
	ld h, b                                          ; $58e4: $60
	ld a, a                                          ; $58e5: $7f
	ld h, b                                          ; $58e6: $60
	cpl                                              ; $58e7: $2f
	jr nc, jr_069_5919                               ; $58e8: $30 $2f

	jr nc, jr_069_5923                               ; $58ea: $30 $37

	jr c, @+$39                                      ; $58ec: $38 $37

	jr c, jr_069_595b                                ; $58ee: $38 $6b

	ld l, h                                          ; $58f0: $6c
	ld h, l                                          ; $58f1: $65
	ld h, [hl]                                       ; $58f2: $66
	ld b, d                                          ; $58f3: $42
	ld b, e                                          ; $58f4: $43
	ld b, c                                          ; $58f5: $41
	ld b, c                                          ; $58f6: $41
	ld b, b                                          ; $58f7: $40
	ld b, b                                          ; $58f8: $40
	ei                                               ; $58f9: $fb
	rst SubAFromDE                                          ; $58fa: $df
	rra                                              ; $58fb: $1f
	adc b                                            ; $58fc: $88
	rst $38                                          ; $58fd: $ff
	di                                               ; $58fe: $f3
	db $db                                           ; $58ff: $db
	rst $38                                          ; $5900: $ff
	ccf                                              ; $5901: $3f
	dec h                                            ; $5902: $25
	dec [hl]                                         ; $5903: $35
	dec h                                            ; $5904: $25
	jr nz, jr_069_590b                               ; $5905: $20 $04

	add b                                            ; $5907: $80
	add h                                            ; $5908: $84
	add b                                            ; $5909: $80
	nop                                              ; $590a: $00

jr_069_590b:
	ret nz                                           ; $590b: $c0

	nop                                              ; $590c: $00
	pop bc                                           ; $590d: $c1
	nop                                              ; $590e: $00
	ld bc, $0180                                     ; $590f: $01 $80 $01
	add b                                            ; $5912: $80
	nop                                              ; $5913: $00
	ld [hl], a                                       ; $5914: $77
	cp $80                                           ; $5915: $fe $80
	nop                                              ; $5917: $00
	adc b                                            ; $5918: $88

jr_069_5919:
	nop                                              ; $5919: $00
	inc e                                            ; $591a: $1c
	nop                                              ; $591b: $00
	inc c                                            ; $591c: $0c
	db $10                                           ; $591d: $10

jr_069_591e:
	ld a, [rIE]                                    ; $591e: $fa $ff $ff
	rla                                              ; $5921: $17
	ccf                                              ; $5922: $3f

jr_069_5923:
	ld de, $3f1d                                     ; $5923: $11 $1d $3f
	inc hl                                           ; $5926: $23
	ld a, a                                          ; $5927: $7f
	ld a, a                                          ; $5928: $7f
	ret nz                                           ; $5929: $c0

	db $fd                                           ; $592a: $fd
	ld e, $f2                                        ; $592b: $1e $f2
	scf                                              ; $592d: $37
	db $d3                                           ; $592e: $d3
	ld [hl], e                                       ; $592f: $73

jr_069_5930:
	sub a                                            ; $5930: $97
	ld a, a                                          ; $5931: $7f
	sbc $1f                                          ; $5932: $de $1f
	ld [de], a                                       ; $5934: $12
	ld e, $84                                        ; $5935: $1e $84
	inc c                                            ; $5937: $0c
	ld e, $33                                        ; $5938: $1e $33
	inc c                                            ; $593a: $0c
	rlca                                             ; $593b: $07
	nop                                              ; $593c: $00
	ld bc, $fc00                                     ; $593d: $01 $00 $fc
	inc bc                                           ; $5940: $03
	ld hl, sp+$07                                    ; $5941: $f8 $07
	ldh a, [rIF]                                     ; $5943: $f0 $0f

jr_069_5945:
	ldh a, [rIF]                                     ; $5945: $f0 $0f
	pop hl                                           ; $5947: $e1
	rra                                              ; $5948: $1f
	ldh [c], a                                       ; $5949: $e2
	ld e, $c6                                        ; $594a: $1e $c6
	ld a, $cc                                        ; $594c: $3e $cc

jr_069_594e:
	inc a                                            ; $594e: $3c
	sbc h                                            ; $594f: $9c
	ld a, h                                          ; $5950: $7c
	ld a, h                                          ; $5951: $7c
	call c, $81fc                                    ; $5952: $dc $fc $81
	ldh [c], a                                       ; $5955: $e2
	cp $c2                                           ; $5956: $fe $c2
	cp $02                                           ; $5958: $fe $02
	rst $38                                          ; $595a: $ff

jr_069_595b:
	ld bc, $03ff                                     ; $595b: $01 $ff $03
	ld l, [hl]                                       ; $595e: $6e
	inc hl                                           ; $595f: $23
	halt                                             ; $5960: $76
	ld h, $b7                                        ; $5961: $26 $b7
	dec b                                            ; $5963: $05
	rst FarCall                                          ; $5964: $f7
	sub l                                            ; $5965: $95
	rst $38                                          ; $5966: $ff
	sub l                                            ; $5967: $95
	rst $38                                          ; $5968: $ff
	sub d                                            ; $5969: $92
	rst $38                                          ; $596a: $ff
	jp nc, $d37f                                     ; $596b: $d2 $7f $d3

	ld a, a                                          ; $596e: $7f
	ret                                              ; $596f: $c9


	rst $38                                          ; $5970: $ff
	ret                                              ; $5971: $c9


	ld a, a                                          ; $5972: $7f
	ld [hl], a                                       ; $5973: $77
	cp $9e                                           ; $5974: $fe $9e
	ret z                                            ; $5976: $c8

	ld [hl], e                                       ; $5977: $73
	ld a, [$db80]                                    ; $5978: $fa $80 $db
	ld l, l                                          ; $597b: $6d
	ld d, e                                          ; $597c: $53
	db $ed                                           ; $597d: $ed

jr_069_597e:
	rst SubAFromHL                                          ; $597e: $d7
	jp hl                                            ; $597f: $e9


	rst SubAFromHL                                          ; $5980: $d7
	jp hl                                            ; $5981: $e9


	ld [hl], h                                       ; $5982: $74
	ld c, e                                          ; $5983: $4b
	ld [hl], h                                       ; $5984: $74
	ld c, e                                          ; $5985: $4b
	halt                                             ; $5986: $76
	ld c, e                                          ; $5987: $4b
	ld a, d                                          ; $5988: $7a
	ld c, a                                          ; $5989: $4f
	ld l, d                                          ; $598a: $6a
	ld e, a                                          ; $598b: $5f
	ld h, e                                          ; $598c: $63
	ld e, a                                          ; $598d: $5f
	pop af                                           ; $598e: $f1
	rst SubAFromDE                                          ; $598f: $df
	or l                                             ; $5990: $b5
	rst SubAFromDE                                          ; $5991: $df
	sub a                                            ; $5992: $97
	rst $38                                          ; $5993: $ff
	sub [hl]                                         ; $5994: $96
	cp $b7                                           ; $5995: $fe $b7
	rst $38                                          ; $5997: $ff
	or a                                             ; $5998: $b7
	sbc [hl]                                         ; $5999: $9e
	rst $38                                          ; $599a: $ff
	ld d, a                                          ; $599b: $57
	jr nz, jr_069_5930                               ; $599c: $20 $92

	rst $38                                          ; $599e: $ff
	add b                                            ; $599f: $80
	pop af                                           ; $59a0: $f1
	adc [hl]                                         ; $59a1: $8e
	cp $9f                                           ; $59a2: $fe $9f
	ei                                               ; $59a4: $fb
	cp a                                             ; $59a5: $bf
	ld l, c                                          ; $59a6: $69
	ld sp, hl                                        ; $59a7: $f9
	ld l, e                                          ; $59a8: $6b
	xor a                                            ; $59a9: $af
	push bc                                          ; $59aa: $c5

jr_069_59ab:
	inc bc                                           ; $59ab: $03

jr_069_59ac:
	jr nz, jr_069_59dd                               ; $59ac: $20 $2f

	jr nz, jr_069_594e                               ; $59ae: $20 $9e

	add c                                            ; $59b0: $81
	ld a, e                                          ; $59b1: $7b
	ld e, $27                                        ; $59b2: $1e $27
	jr nz, jr_069_5945                               ; $59b4: $20 $8f

	rst $38                                          ; $59b6: $ff
	nop                                              ; $59b7: $00
	db $e3                                           ; $59b8: $e3
	inc e                                            ; $59b9: $1c

jr_069_59ba:
	rst $38                                          ; $59ba: $ff
	ld a, $d7                                        ; $59bb: $3e $d7
	ld a, a                                          ; $59bd: $7f
	sub e                                            ; $59be: $93
	ld d, e                                          ; $59bf: $53
	dec d                                            ; $59c0: $15
	rra                                              ; $59c1: $1f
	ld a, [de]                                       ; $59c2: $1a
	rra                                              ; $59c3: $1f
	dec a                                            ; $59c4: $3d
	ld c, $03                                        ; $59c5: $0e $03
	jr nz, jr_069_59f8                               ; $59c7: $20 $2f

	jr nz, jr_069_5a36                               ; $59c9: $20 $6b

	ld e, $03                                        ; $59cb: $1e $03
	jr nz, jr_069_5a2a                               ; $59cd: $20 $5b

	jr nz, @-$62                                     ; $59cf: $20 $9c

jr_069_59d1:
	ld a, [hl]                                       ; $59d1: $7e

jr_069_59d2:
	rst $38                                          ; $59d2: $ff
	ld e, l                                          ; $59d3: $5d
	ld [hl], e                                       ; $59d4: $73
	jr nz, jr_069_5a56                               ; $59d5: $20 $7f

	cp $94                                           ; $59d7: $fe $94
	ld sp, hl                                        ; $59d9: $f9
	add b                                            ; $59da: $80
	ldh a, [$80]                                     ; $59db: $f0 $80

jr_069_59dd:
	ld l, [hl]                                       ; $59dd: $6e
	sbc a                                            ; $59de: $9f
	ld a, c                                          ; $59df: $79
	db $fd                                           ; $59e0: $fd
	call $cf9f                                       ; $59e1: $cd $9f $cf
	inc bc                                           ; $59e4: $03
	jr nz, jr_069_5a36                               ; $59e5: $20 $4f

	jr nz, jr_069_5a68                               ; $59e7: $20 $7f

	inc l                                            ; $59e9: $2c
	ld l, e                                          ; $59ea: $6b
	jr nz, @+$01                                     ; $59eb: $20 $ff

	inc sp                                           ; $59ed: $33
	jr nz, jr_069_597e                               ; $59ee: $20 $8e

	ld e, a                                          ; $59f0: $5f
	ldh [rIE], a                                     ; $59f1: $e0 $ff
	nop                                              ; $59f3: $00
	rst $38                                          ; $59f4: $ff
	nop                                              ; $59f5: $00
	rst JumpTable                                          ; $59f6: $c7
	nop                                              ; $59f7: $00

jr_069_59f8:
	add e                                            ; $59f8: $83
	nop                                              ; $59f9: $00
	ld e, l                                          ; $59fa: $5d
	ld a, $7b                                        ; $59fb: $3e $7b
	ei                                               ; $59fd: $fb
	rla                                              ; $59fe: $17
	ld a, $3f                                        ; $59ff: $3e $3f
	ld [bc], a                                       ; $5a01: $02
	ld b, b                                          ; $5a02: $40
	inc hl                                           ; $5a03: $23
	jr nz, @-$61                                     ; $5a04: $20 $9d

	ld a, a                                          ; $5a06: $7f
	ld c, c                                          ; $5a07: $49
	ld a, e                                          ; $5a08: $7b
	ld e, $03                                        ; $5a09: $1e $03
	jr nz, @+$4d                                     ; $5a0b: $20 $4b

	jr nz, jr_069_59ac                               ; $5a0d: $20 $9d

	cp [hl]                                          ; $5a0f: $be
	pop bc                                           ; $5a10: $c1
	ld h, a                                          ; $5a11: $67
	jr nz, jr_069_59ab                               ; $5a12: $20 $97

	ld a, [hl]                                       ; $5a14: $7e
	add b                                            ; $5a15: $80
	ld l, c                                          ; $5a16: $69
	or b                                             ; $5a17: $b0
	rst SubAFromDE                                          ; $5a18: $df
	sbc a                                            ; $5a19: $9f
	rst GetHLinHL                                          ; $5a1a: $cf
	add b                                            ; $5a1b: $80
	inc bc                                           ; $5a1c: $03
	jr nz, jr_069_5a7a                               ; $5a1d: $20 $5b

	jr nz, jr_069_59ba                               ; $5a1f: $20 $99

	nop                                              ; $5a21: $00
	add h                                            ; $5a22: $84
	add b                                            ; $5a23: $80
	add b                                            ; $5a24: $80
	ld b, b                                          ; $5a25: $40
	add b                                            ; $5a26: $80
	ld l, e                                          ; $5a27: $6b
	jr nz, jr_069_5aa9                               ; $5a28: $20 $7f

jr_069_5a2a:
	ld hl, $204b                                     ; $5a2a: $21 $4b $20
	sbc h                                            ; $5a2d: $9c
	dec a                                            ; $5a2e: $3d
	rra                                              ; $5a2f: $1f
	inc sp                                           ; $5a30: $33
	ld a, e                                          ; $5a31: $7b
	jr nz, jr_069_59d2                               ; $5a32: $20 $9e

	ccf                                              ; $5a34: $3f
	ld a, d                                          ; $5a35: $7a

jr_069_5a36:
	ld a, $77                                        ; $5a36: $3e $77
	jr nz, jr_069_59d1                               ; $5a38: $20 $97

	ccf                                              ; $5a3a: $3f
	nop                                              ; $5a3b: $00
	ld b, l                                          ; $5a3c: $45
	add e                                            ; $5a3d: $83
	ccf                                              ; $5a3e: $3f
	ld a, [hl]                                       ; $5a3f: $7e
	ld a, a                                          ; $5a40: $7f
	nop                                              ; $5a41: $00
	inc bc                                           ; $5a42: $03
	jr nz, jr_069_5a68                               ; $5a43: $20 $23

	jr nz, jr_069_5a49                               ; $5a45: $20 $02

	ld b, b                                          ; $5a47: $40
	ld h, e                                          ; $5a48: $63

jr_069_5a49:
	jr nz, jr_069_59dd                               ; $5a49: $20 $92

	inc l                                            ; $5a4b: $2c
	jr nc, @+$3a                                     ; $5a4c: $30 $38

	stop                                             ; $5a4e: $10 $00
	nop                                              ; $5a50: $00
	ld [hl], a                                       ; $5a51: $77
	ld [hl+], a                                      ; $5a52: $22
	ld a, $1c                                        ; $5a53: $3e $1c

jr_069_5a55:
	nop                                              ; $5a55: $00

jr_069_5a56:
	nop                                              ; $5a56: $00
	jr jr_069_5a55                                   ; $5a57: $18 $fc

	sub c                                            ; $5a59: $91
	ld b, c                                          ; $5a5a: $41
	add b                                            ; $5a5b: $80
	push bc                                          ; $5a5c: $c5
	db $e3                                           ; $5a5d: $e3
	rst $38                                          ; $5a5e: $ff
	rst $38                                          ; $5a5f: $ff
	rst AddAOntoHL                                          ; $5a60: $ef
	sbc a                                            ; $5a61: $9f
	sbc l                                            ; $5a62: $9d
	add e                                            ; $5a63: $83
	add a                                            ; $5a64: $87
	add b                                            ; $5a65: $80
	add c                                            ; $5a66: $81
	nop                                              ; $5a67: $00

jr_069_5a68:
	ld l, a                                          ; $5a68: $6f
	ldh [$9b], a                                     ; $5a69: $e0 $9b
	ld a, a                                          ; $5a6b: $7f
	ld [hl], $3e                                     ; $5a6c: $36 $3e
	inc e                                            ; $5a6e: $1c
	ld [hl], a                                       ; $5a6f: $77
	ldh [c], a                                       ; $5a70: $e2
	ld [hl], a                                       ; $5a71: $77
	db $fc                                           ; $5a72: $fc
	daa                                              ; $5a73: $27
	ldh [rPCM34], a                                  ; $5a74: $e0 $77
	rst SubAFromDE                                          ; $5a76: $df
	daa                                              ; $5a77: $27
	ldh [$99], a                                     ; $5a78: $e0 $99

jr_069_5a7a:
	ld [hl], a                                       ; $5a7a: $77
	ld h, e                                          ; $5a7b: $63
	ccf                                              ; $5a7c: $3f
	ld a, $3e                                        ; $5a7d: $3e $3e
	inc d                                            ; $5a7f: $14
	ld l, a                                          ; $5a80: $6f
	sbc $4f                                          ; $5a81: $de $4f
	ldh [$ce], a                                     ; $5a83: $e0 $ce
	ld bc, $9f80                                     ; $5a85: $01 $80 $9f
	rst $38                                          ; $5a88: $ff
	inc e                                            ; $5a89: $1c
	ldh a, [rAUD4POLY]                               ; $5a8a: $f0 $22
	db $fc                                           ; $5a8c: $fc
	ld a, h                                          ; $5a8d: $7c
	rst $38                                          ; $5a8e: $ff
	ld a, a                                          ; $5a8f: $7f
	jp $c0bf                                         ; $5a90: $c3 $bf $c0


	or $8f                                           ; $5a93: $f6 $8f
	rst SubAFromDE                                          ; $5a95: $df
	cp a                                             ; $5a96: $bf
	ld sp, hl                                        ; $5a97: $f9
	ld sp, hl                                        ; $5a98: $f9
	db $eb                                           ; $5a99: $eb
	cp e                                             ; $5a9a: $bb
	ld c, a                                          ; $5a9b: $4f
	xor a                                            ; $5a9c: $af
	ld c, e                                          ; $5a9d: $4b
	adc a                                            ; $5a9e: $8f
	push bc                                          ; $5a9f: $c5
	adc a                                            ; $5aa0: $8f
	ret                                              ; $5aa1: $c9


	add [hl]                                         ; $5aa2: $86
	ret nz                                           ; $5aa3: $c0

	ret nz                                           ; $5aa4: $c0

	ldh [hDisp0_WY], a                                     ; $5aa5: $e0 $88
	ret nz                                           ; $5aa7: $c0

	ld e, a                                          ; $5aa8: $5f

jr_069_5aa9:
	ld h, b                                          ; $5aa9: $60
	ld a, a                                          ; $5aaa: $7f
	ld h, b                                          ; $5aab: $60
	cpl                                              ; $5aac: $2f
	jr nc, jr_069_5ade                               ; $5aad: $30 $2f

	jr nc, jr_069_5ae8                               ; $5aaf: $30 $37

	jr c, @+$39                                      ; $5ab1: $38 $37

	jr c, jr_069_5b20                                ; $5ab3: $38 $6b

	ld l, h                                          ; $5ab5: $6c
	ld h, l                                          ; $5ab6: $65
	ld h, [hl]                                       ; $5ab7: $66
	ld b, d                                          ; $5ab8: $42
	ld b, e                                          ; $5ab9: $43
	ld b, c                                          ; $5aba: $41
	ld b, c                                          ; $5abb: $41
	ld b, b                                          ; $5abc: $40
	ld b, b                                          ; $5abd: $40
	ei                                               ; $5abe: $fb
	rst SubAFromDE                                          ; $5abf: $df
	rra                                              ; $5ac0: $1f
	adc b                                            ; $5ac1: $88
	rst $38                                          ; $5ac2: $ff
	di                                               ; $5ac3: $f3
	db $db                                           ; $5ac4: $db
	rst $38                                          ; $5ac5: $ff
	ccf                                              ; $5ac6: $3f
	dec h                                            ; $5ac7: $25
	dec [hl]                                         ; $5ac8: $35
	dec h                                            ; $5ac9: $25
	jr nz, jr_069_5ad0                               ; $5aca: $20 $04

	nop                                              ; $5acc: $00
	add h                                            ; $5acd: $84
	add b                                            ; $5ace: $80
	ld b, b                                          ; $5acf: $40

jr_069_5ad0:
	add b                                            ; $5ad0: $80
	nop                                              ; $5ad1: $00
	add c                                            ; $5ad2: $81
	nop                                              ; $5ad3: $00
	ld bc, $0180                                     ; $5ad4: $01 $80 $01
	add b                                            ; $5ad7: $80
	nop                                              ; $5ad8: $00
	ld [hl], a                                       ; $5ad9: $77
	cp $80                                           ; $5ada: $fe $80
	nop                                              ; $5adc: $00
	adc b                                            ; $5add: $88

jr_069_5ade:
	nop                                              ; $5ade: $00
	inc e                                            ; $5adf: $1c
	nop                                              ; $5ae0: $00
	inc c                                            ; $5ae1: $0c
	db $10                                           ; $5ae2: $10
	ld a, [rIE]                                    ; $5ae3: $fa $ff $ff
	rla                                              ; $5ae6: $17
	ccf                                              ; $5ae7: $3f

jr_069_5ae8:
	ld de, $3f01                                     ; $5ae8: $11 $01 $3f
	ccf                                              ; $5aeb: $3f
	ld a, a                                          ; $5aec: $7f
	ld a, a                                          ; $5aed: $7f
	ret nz                                           ; $5aee: $c0

	db $ed                                           ; $5aef: $ed
	ld e, $fe                                        ; $5af0: $1e $fe
	ccf                                              ; $5af2: $3f
	di                                               ; $5af3: $f3
	ld [hl], e                                       ; $5af4: $73
	rst SubAFromHL                                          ; $5af5: $d7

jr_069_5af6:
	ld [hl], a                                       ; $5af6: $77
	sbc a                                            ; $5af7: $9f
	ld e, a                                          ; $5af8: $5f
	dec d                                            ; $5af9: $15
	rra                                              ; $5afa: $1f
	add h                                            ; $5afb: $84
	ld a, [de]                                       ; $5afc: $1a
	rra                                              ; $5afd: $1f
	dec a                                            ; $5afe: $3d
	ld c, $07                                        ; $5aff: $0e $07
	nop                                              ; $5b01: $00
	ld bc, $fc00                                     ; $5b02: $01 $00 $fc
	inc bc                                           ; $5b05: $03
	ld hl, sp+$07                                    ; $5b06: $f8 $07
	ldh a, [rIF]                                     ; $5b08: $f0 $0f
	ldh a, [rIF]                                     ; $5b0a: $f0 $0f
	pop hl                                           ; $5b0c: $e1
	rra                                              ; $5b0d: $1f
	ldh [c], a                                       ; $5b0e: $e2
	ld e, $c6                                        ; $5b0f: $1e $c6
	ld a, $cc                                        ; $5b11: $3e $cc
	inc a                                            ; $5b13: $3c
	sbc h                                            ; $5b14: $9c
	ld a, h                                          ; $5b15: $7c
	ld a, h                                          ; $5b16: $7c
	call c, $81fc                                    ; $5b17: $dc $fc $81
	ldh [c], a                                       ; $5b1a: $e2
	cp $c2                                           ; $5b1b: $fe $c2
	cp $02                                           ; $5b1d: $fe $02
	rst $38                                          ; $5b1f: $ff

jr_069_5b20:
	ld bc, $03ff                                     ; $5b20: $01 $ff $03
	ld l, [hl]                                       ; $5b23: $6e
	inc hl                                           ; $5b24: $23
	halt                                             ; $5b25: $76
	ld h, $b7                                        ; $5b26: $26 $b7
	dec b                                            ; $5b28: $05
	rst FarCall                                          ; $5b29: $f7
	sub l                                            ; $5b2a: $95
	rst $38                                          ; $5b2b: $ff

jr_069_5b2c:
	sub l                                            ; $5b2c: $95
	rst $38                                          ; $5b2d: $ff
	sub d                                            ; $5b2e: $92
	rst $38                                          ; $5b2f: $ff
	jp nc, $d37f                                     ; $5b30: $d2 $7f $d3

	ld a, a                                          ; $5b33: $7f
	ret                                              ; $5b34: $c9


	rst $38                                          ; $5b35: $ff
	ret                                              ; $5b36: $c9


	ld a, a                                          ; $5b37: $7f
	ld [hl], a                                       ; $5b38: $77
	cp $9e                                           ; $5b39: $fe $9e
	ret z                                            ; $5b3b: $c8

jr_069_5b3c:
	ld [hl], e                                       ; $5b3c: $73
	ld a, [$db80]                                    ; $5b3d: $fa $80 $db
	ld l, l                                          ; $5b40: $6d

jr_069_5b41:
	ld d, e                                          ; $5b41: $53
	db $ed                                           ; $5b42: $ed
	rst SubAFromHL                                          ; $5b43: $d7
	jp hl                                            ; $5b44: $e9


	rst SubAFromHL                                          ; $5b45: $d7
	jp hl                                            ; $5b46: $e9


	ld [hl], h                                       ; $5b47: $74
	ld c, e                                          ; $5b48: $4b
	ld [hl], h                                       ; $5b49: $74
	ld c, e                                          ; $5b4a: $4b
	halt                                             ; $5b4b: $76
	ld c, e                                          ; $5b4c: $4b
	ld a, d                                          ; $5b4d: $7a
	ld c, a                                          ; $5b4e: $4f
	ld l, d                                          ; $5b4f: $6a
	ld e, a                                          ; $5b50: $5f
	ld h, e                                          ; $5b51: $63
	ld e, a                                          ; $5b52: $5f
	pop af                                           ; $5b53: $f1
	rst SubAFromDE                                          ; $5b54: $df
	or l                                             ; $5b55: $b5
	rst SubAFromDE                                          ; $5b56: $df
	sub a                                            ; $5b57: $97
	rst $38                                          ; $5b58: $ff
	sub [hl]                                         ; $5b59: $96
	cp $b7                                           ; $5b5a: $fe $b7
	rst $38                                          ; $5b5c: $ff
	or a                                             ; $5b5d: $b7
	sbc [hl]                                         ; $5b5e: $9e
	rst $38                                          ; $5b5f: $ff
	ld d, a                                          ; $5b60: $57
	jr nz, jr_069_5af6                               ; $5b61: $20 $93

	rst $38                                          ; $5b63: $ff
	add b                                            ; $5b64: $80
	pop af                                           ; $5b65: $f1
	adc [hl]                                         ; $5b66: $8e
	cp $9f                                           ; $5b67: $fe $9f
	ei                                               ; $5b69: $fb
	cp a                                             ; $5b6a: $bf

jr_069_5b6b:
	ld l, c                                          ; $5b6b: $69
	ld sp, hl                                        ; $5b6c: $f9
	ld l, e                                          ; $5b6d: $6b
	xor a                                            ; $5b6e: $af
	inc bc                                           ; $5b6f: $03
	jr nz, jr_069_5b9d                               ; $5b70: $20 $2b

	jr nz, @+$79                                     ; $5b72: $20 $77

jr_069_5b74:
	ld e, $27                                        ; $5b74: $1e $27
	jr nz, @-$6b                                     ; $5b76: $20 $93

	rst $38                                          ; $5b78: $ff

jr_069_5b79:
	nop                                              ; $5b79: $00
	db $e3                                           ; $5b7a: $e3
	inc e                                            ; $5b7b: $1c
	rst SubAFromDE                                          ; $5b7c: $df
	ld a, $b7                                        ; $5b7d: $3e $b7
	ld a, a                                          ; $5b7f: $7f
	db $d3                                           ; $5b80: $d3
	ld [hl], e                                       ; $5b81: $73
	dec d                                            ; $5b82: $15
	ld e, a                                          ; $5b83: $5f
	inc bc                                           ; $5b84: $03
	jr nz, jr_069_5ba6                               ; $5b85: $20 $1f

	jr nz, @+$6d                                     ; $5b87: $20 $6b

	ld e, $03                                        ; $5b89: $1e $03
	jr nz, @+$55                                     ; $5b8b: $20 $53

	jr nz, jr_069_5b2c                               ; $5b8d: $20 $9d

	ld a, e                                          ; $5b8f: $7b
	rst JumpTable                                          ; $5b90: $c7
	ld [hl], a                                       ; $5b91: $77
	jr nz, jr_069_5c13                               ; $5b92: $20 $7f

	cp $94                                           ; $5b94: $fe $94
	ld sp, hl                                        ; $5b96: $f9
	add b                                            ; $5b97: $80
	ldh a, [$80]                                     ; $5b98: $f0 $80
	ld l, [hl]                                       ; $5b9a: $6e

jr_069_5b9b:
	sbc a                                            ; $5b9b: $9f
	ld a, c                                          ; $5b9c: $79

jr_069_5b9d:
	db $fd                                           ; $5b9d: $fd
	call $cf9f                                       ; $5b9e: $cd $9f $cf
	inc bc                                           ; $5ba1: $03
	jr nz, jr_069_5bf3                               ; $5ba2: $20 $4f

	jr nz, jr_069_5b41                               ; $5ba4: $20 $9b

jr_069_5ba6:
	nop                                              ; $5ba6: $00
	ret nz                                           ; $5ba7: $c0

	add b                                            ; $5ba8: $80
	ld b, b                                          ; $5ba9: $40
	ld [hl], e                                       ; $5baa: $73

jr_069_5bab:
	jr nz, jr_069_5bab                               ; $5bab: $20 $fe

	sbc l                                            ; $5bad: $9d
	add b                                            ; $5bae: $80
	ret nz                                           ; $5baf: $c0

	ld c, a                                          ; $5bb0: $4f
	jr nz, jr_069_5b3c                               ; $5bb1: $20 $89

	ld hl, $3f1f                                     ; $5bb3: $21 $1f $3f
	ld a, a                                          ; $5bb6: $7f
	ld e, a                                          ; $5bb7: $5f
	ldh [$7f], a                                     ; $5bb8: $e0 $7f
	add b                                            ; $5bba: $80
	rst $38                                          ; $5bbb: $ff
	nop                                              ; $5bbc: $00
	rst JumpTable                                          ; $5bbd: $c7
	nop                                              ; $5bbe: $00
	add e                                            ; $5bbf: $83
	nop                                              ; $5bc0: $00
	ld e, l                                          ; $5bc1: $5d
	ld a, $7b                                        ; $5bc2: $3e $7b
	ei                                               ; $5bc4: $fb
	rla                                              ; $5bc5: $17
	ld a, $3f                                        ; $5bc6: $3e $3f
	inc c                                            ; $5bc8: $0c
	inc bc                                           ; $5bc9: $03
	jr nz, jr_069_5bf3                               ; $5bca: $20 $27

	jr nz, jr_069_5b6b                               ; $5bcc: $20 $9d

	ld a, a                                          ; $5bce: $7f
	ld c, c                                          ; $5bcf: $49
	ld a, e                                          ; $5bd0: $7b
	ld e, $03                                        ; $5bd1: $1e $03
	jr nz, jr_069_5c38                               ; $5bd3: $20 $63

	jr nz, jr_069_5b74                               ; $5bd5: $20 $9d

	ld h, $f8                                        ; $5bd7: $26 $f8
	ld [hl], a                                       ; $5bd9: $77
	jr nz, jr_069_5b79                               ; $5bda: $20 $9d

	cp [hl]                                          ; $5bdc: $be
	pop bc                                           ; $5bdd: $c1
	ld h, a                                          ; $5bde: $67
	jr nz, jr_069_5c60                               ; $5bdf: $20 $7f

	ld a, b                                          ; $5be1: $78
	sbc c                                            ; $5be2: $99
	ld l, c                                          ; $5be3: $69
	or b                                             ; $5be4: $b0
	rst SubAFromDE                                          ; $5be5: $df
	sbc a                                            ; $5be6: $9f
	rst GetHLinHL                                          ; $5be7: $cf
	add b                                            ; $5be8: $80
	inc bc                                           ; $5be9: $03
	jr nz, @+$50                                     ; $5bea: $20 $4e

	ld b, b                                          ; $5bec: $40
	rst SubAFromDE                                          ; $5bed: $df
	ret nz                                           ; $5bee: $c0

	sbc l                                            ; $5bef: $9d
	ld b, b                                          ; $5bf0: $40
	pop bc                                           ; $5bf1: $c1
	ld [hl], e                                       ; $5bf2: $73

jr_069_5bf3:
	jr nz, jr_069_5c6f                               ; $5bf3: $20 $7a

	ld b, c                                          ; $5bf5: $41
	ld c, d                                          ; $5bf6: $4a
	ld b, b                                          ; $5bf7: $40
	sbc c                                            ; $5bf8: $99
	ld sp, $1f0f                                     ; $5bf9: $31 $0f $1f
	ld a, a                                          ; $5bfc: $7f
	ld l, a                                          ; $5bfd: $6f
	ldh a, [$7b]                                     ; $5bfe: $f0 $7b
	and b                                            ; $5c00: $a0
	ld [hl], e                                       ; $5c01: $73
	jr nz, jr_069_5b9b                               ; $5c02: $20 $97

	ccf                                              ; $5c04: $3f
	nop                                              ; $5c05: $00
	ld b, l                                          ; $5c06: $45
	add e                                            ; $5c07: $83
	ccf                                              ; $5c08: $3f
	ld a, [hl]                                       ; $5c09: $7e
	ld a, a                                          ; $5c0a: $7f
	nop                                              ; $5c0b: $00
	inc bc                                           ; $5c0c: $03
	jr nz, jr_069_5c32                               ; $5c0d: $20 $23

	jr nz, jr_069_5c13                               ; $5c0f: $20 $02

	ld b, b                                          ; $5c11: $40
	ld h, e                                          ; $5c12: $63

jr_069_5c13:
	jr nz, jr_069_5bab                               ; $5c13: $20 $96

	inc l                                            ; $5c15: $2c
	jr nc, jr_069_5c50                               ; $5c16: $30 $38

	db $10                                           ; $5c18: $10
	ld bc, $2e00                                     ; $5c19: $01 $00 $2e
	inc h                                            ; $5c1c: $24
	inc e                                            ; $5c1d: $1c

jr_069_5c1e:
	cp $9e                                           ; $5c1e: $fe $9e
	jr jr_069_5c1e                                   ; $5c20: $18 $fc

	sub c                                            ; $5c22: $91
	ld b, c                                          ; $5c23: $41
	add b                                            ; $5c24: $80
	push bc                                          ; $5c25: $c5
	db $e3                                           ; $5c26: $e3
	rst $38                                          ; $5c27: $ff
	rst $38                                          ; $5c28: $ff
	rst AddAOntoHL                                          ; $5c29: $ef
	sbc a                                            ; $5c2a: $9f
	sbc l                                            ; $5c2b: $9d
	add e                                            ; $5c2c: $83
	add a                                            ; $5c2d: $87
	add b                                            ; $5c2e: $80
	add c                                            ; $5c2f: $81
	nop                                              ; $5c30: $00
	ld l, a                                          ; $5c31: $6f

jr_069_5c32:
	ldh [$9b], a                                     ; $5c32: $e0 $9b
	ld a, $36                                        ; $5c34: $3e $36
	ld e, $0c                                        ; $5c36: $1e $0c

jr_069_5c38:
	inc de                                           ; $5c38: $13
	ldh [$df], a                                     ; $5c39: $e0 $df
	ld a, $9d                                        ; $5c3b: $3e $9d
	inc d                                            ; $5c3d: $14
	inc e                                            ; $5c3e: $1c
	ld a, e                                          ; $5c3f: $7b
	pop hl                                           ; $5c40: $e1
	ld [hl], a                                       ; $5c41: $77
	sbc $37                                          ; $5c42: $de $37
	ldh [$97], a                                     ; $5c44: $e0 $97
	ccf                                              ; $5c46: $3f
	ld a, $3e                                        ; $5c47: $3e $3e
	ld e, $1e                                        ; $5c49: $1e $1e
	inc d                                            ; $5c4b: $14
	inc e                                            ; $5c4c: $1c
	ld [$de77], sp                                   ; $5c4d: $08 $77 $de

jr_069_5c50:
	ld c, a                                          ; $5c50: $4f
	ldh [$b2], a                                     ; $5c51: $e0 $b2
	ld bc, $9f80                                     ; $5c53: $01 $80 $9f
	rst $38                                          ; $5c56: $ff
	inc e                                            ; $5c57: $1c
	ldh a, [$2e]                                     ; $5c58: $f0 $2e
	ldh a, [$72]                                     ; $5c5a: $f0 $72
	db $fc                                           ; $5c5c: $fc
	ld a, h                                          ; $5c5d: $7c
	rst GetHLinHL                                          ; $5c5e: $cf
	cp a                                             ; $5c5f: $bf

jr_069_5c60:
	jp $80ff                                         ; $5c60: $c3 $ff $80


	xor $9f                                          ; $5c63: $ee $9f
	db $dd                                           ; $5c65: $dd
	cp a                                             ; $5c66: $bf
	jp hl                                            ; $5c67: $e9


	ld sp, hl                                        ; $5c68: $f9
	ld c, a                                          ; $5c69: $4f
	xor a                                            ; $5c6a: $af
	ld c, e                                          ; $5c6b: $4b
	adc a                                            ; $5c6c: $8f
	push bc                                          ; $5c6d: $c5
	adc a                                            ; $5c6e: $8f

jr_069_5c6f:
	ret                                              ; $5c6f: $c9


	add [hl]                                         ; $5c70: $86
	ret nz                                           ; $5c71: $c0

	ret nz                                           ; $5c72: $c0

	ldh [hDisp0_WY], a                                     ; $5c73: $e0 $88
	ret nz                                           ; $5c75: $c0

	ld e, a                                          ; $5c76: $5f
	ld h, b                                          ; $5c77: $60
	ld a, a                                          ; $5c78: $7f
	ld h, b                                          ; $5c79: $60
	cpl                                              ; $5c7a: $2f
	jr nc, jr_069_5cac                               ; $5c7b: $30 $2f

	jr nc, jr_069_5cb6                               ; $5c7d: $30 $37

	jr c, @+$39                                      ; $5c7f: $38 $37

	jr c, jr_069_5cee                                ; $5c81: $38 $6b

	ld l, h                                          ; $5c83: $6c
	ld h, l                                          ; $5c84: $65
	ld h, [hl]                                       ; $5c85: $66
	ld b, d                                          ; $5c86: $42
	ld b, e                                          ; $5c87: $43
	ld b, c                                          ; $5c88: $41
	ld b, c                                          ; $5c89: $41
	ld b, b                                          ; $5c8a: $40
	ld b, b                                          ; $5c8b: $40
	ei                                               ; $5c8c: $fb
	rst SubAFromDE                                          ; $5c8d: $df
	rra                                              ; $5c8e: $1f
	adc b                                            ; $5c8f: $88
	rst $38                                          ; $5c90: $ff
	di                                               ; $5c91: $f3
	db $db                                           ; $5c92: $db
	rst $38                                          ; $5c93: $ff
	ccf                                              ; $5c94: $3f
	dec h                                            ; $5c95: $25
	dec [hl]                                         ; $5c96: $35
	dec h                                            ; $5c97: $25
	jr nz, jr_069_5c9e                               ; $5c98: $20 $04

	nop                                              ; $5c9a: $00
	inc b                                            ; $5c9b: $04
	nop                                              ; $5c9c: $00
	add b                                            ; $5c9d: $80

jr_069_5c9e:
	ret nz                                           ; $5c9e: $c0

	nop                                              ; $5c9f: $00
	pop bc                                           ; $5ca0: $c1
	nop                                              ; $5ca1: $00
	ld bc, $0180                                     ; $5ca2: $01 $80 $01
	add b                                            ; $5ca5: $80
	nop                                              ; $5ca6: $00
	ld [hl], a                                       ; $5ca7: $77
	cp $80                                           ; $5ca8: $fe $80
	nop                                              ; $5caa: $00
	adc b                                            ; $5cab: $88

jr_069_5cac:
	nop                                              ; $5cac: $00
	inc e                                            ; $5cad: $1c
	nop                                              ; $5cae: $00
	inc c                                            ; $5caf: $0c
	db $10                                           ; $5cb0: $10
	ld a, [rIE]                                    ; $5cb1: $fa $ff $ff
	rla                                              ; $5cb4: $17
	ccf                                              ; $5cb5: $3f

jr_069_5cb6:
	ld de, $1f21                                     ; $5cb6: $11 $21 $1f
	rra                                              ; $5cb9: $1f
	ld a, a                                          ; $5cba: $7f
	ld a, a                                          ; $5cbb: $7f
	ldh [rIE], a                                     ; $5cbc: $e0 $ff
	nop                                              ; $5cbe: $00
	db $dd                                           ; $5cbf: $dd
	ld a, $b6                                        ; $5cc0: $3e $b6
	ld a, a                                          ; $5cc2: $7f
	db $d3                                           ; $5cc3: $d3
	ld [hl], e                                       ; $5cc4: $73
	sbc a                                            ; $5cc5: $9f
	ld e, a                                          ; $5cc6: $5f
	dec d                                            ; $5cc7: $15
	rra                                              ; $5cc8: $1f
	add h                                            ; $5cc9: $84
	ld a, [de]                                       ; $5cca: $1a
	rra                                              ; $5ccb: $1f
	dec a                                            ; $5ccc: $3d
	ld c, $07                                        ; $5ccd: $0e $07
	nop                                              ; $5ccf: $00
	ld bc, $fc00                                     ; $5cd0: $01 $00 $fc
	inc bc                                           ; $5cd3: $03
	ld hl, sp+$07                                    ; $5cd4: $f8 $07
	ldh a, [rIF]                                     ; $5cd6: $f0 $0f
	ldh a, [rIF]                                     ; $5cd8: $f0 $0f
	pop hl                                           ; $5cda: $e1
	rra                                              ; $5cdb: $1f

jr_069_5cdc:
	ldh [c], a                                       ; $5cdc: $e2
	ld e, $c6                                        ; $5cdd: $1e $c6
	ld a, $cc                                        ; $5cdf: $3e $cc
	inc a                                            ; $5ce1: $3c
	sbc h                                            ; $5ce2: $9c
	ld a, h                                          ; $5ce3: $7c
	ld a, h                                          ; $5ce4: $7c
	call c, $81fc                                    ; $5ce5: $dc $fc $81
	ldh [c], a                                       ; $5ce8: $e2
	cp $c2                                           ; $5ce9: $fe $c2
	cp $02                                           ; $5ceb: $fe $02
	rst $38                                          ; $5ced: $ff

jr_069_5cee:
	ld bc, $03ff                                     ; $5cee: $01 $ff $03
	ld l, [hl]                                       ; $5cf1: $6e
	inc hl                                           ; $5cf2: $23
	halt                                             ; $5cf3: $76
	ld h, $b7                                        ; $5cf4: $26 $b7
	dec b                                            ; $5cf6: $05
	rst FarCall                                          ; $5cf7: $f7
	sub l                                            ; $5cf8: $95
	rst $38                                          ; $5cf9: $ff
	sub l                                            ; $5cfa: $95
	rst $38                                          ; $5cfb: $ff
	sub d                                            ; $5cfc: $92
	rst $38                                          ; $5cfd: $ff
	jp nc, $d37f                                     ; $5cfe: $d2 $7f $d3

	ld a, a                                          ; $5d01: $7f

jr_069_5d02:
	ret                                              ; $5d02: $c9


	rst $38                                          ; $5d03: $ff
	ret                                              ; $5d04: $c9


	ld a, a                                          ; $5d05: $7f
	ld [hl], a                                       ; $5d06: $77
	cp $9e                                           ; $5d07: $fe $9e
	ret z                                            ; $5d09: $c8

	ld [hl], e                                       ; $5d0a: $73
	ld a, [$db80]                                    ; $5d0b: $fa $80 $db
	ld l, l                                          ; $5d0e: $6d
	ld d, e                                          ; $5d0f: $53
	db $ed                                           ; $5d10: $ed
	rst SubAFromHL                                          ; $5d11: $d7
	jp hl                                            ; $5d12: $e9


	rst SubAFromHL                                          ; $5d13: $d7
	jp hl                                            ; $5d14: $e9


	ld [hl], h                                       ; $5d15: $74
	ld c, e                                          ; $5d16: $4b
	ld [hl], h                                       ; $5d17: $74
	ld c, e                                          ; $5d18: $4b
	halt                                             ; $5d19: $76
	ld c, e                                          ; $5d1a: $4b
	ld a, d                                          ; $5d1b: $7a
	ld c, a                                          ; $5d1c: $4f
	ld l, d                                          ; $5d1d: $6a
	ld e, a                                          ; $5d1e: $5f
	ld h, e                                          ; $5d1f: $63
	ld e, a                                          ; $5d20: $5f
	pop af                                           ; $5d21: $f1
	rst SubAFromDE                                          ; $5d22: $df
	or l                                             ; $5d23: $b5
	rst SubAFromDE                                          ; $5d24: $df
	sub a                                            ; $5d25: $97
	rst $38                                          ; $5d26: $ff
	sub [hl]                                         ; $5d27: $96
	cp $b7                                           ; $5d28: $fe $b7

jr_069_5d2a:
	rst $38                                          ; $5d2a: $ff
	or a                                             ; $5d2b: $b7

jr_069_5d2c:
	sbc [hl]                                         ; $5d2c: $9e
	rst $38                                          ; $5d2d: $ff
	ld c, a                                          ; $5d2e: $4f
	jr nz, jr_069_5da8                               ; $5d2f: $20 $77

	ld e, $99                                        ; $5d31: $1e $99
	db $db                                           ; $5d33: $db
	cp a                                             ; $5d34: $bf
	ld l, c                                          ; $5d35: $69
	ld sp, hl                                        ; $5d36: $f9
	ld c, e                                          ; $5d37: $4b
	sbc a                                            ; $5d38: $9f
	inc bc                                           ; $5d39: $03
	jr nz, jr_069_5d67                               ; $5d3a: $20 $2b

	jr nz, jr_069_5cdc                               ; $5d3c: $20 $9e

	add c                                            ; $5d3e: $81
	ld a, e                                          ; $5d3f: $7b
	ld e, $1f                                        ; $5d40: $1e $1f

jr_069_5d42:
	jr nz, jr_069_5dab                               ; $5d42: $20 $67

	ld e, $9d                                        ; $5d44: $1e $9d
	dec d                                            ; $5d46: $15
	ld e, a                                          ; $5d47: $5f
	inc bc                                           ; $5d48: $03
	jr nz, @+$21                                     ; $5d49: $20 $1f

	jr nz, jr_069_5dc8                               ; $5d4b: $20 $7b

jr_069_5d4d:
	ld e, $9e                                        ; $5d4d: $1e $9e
	ld c, c                                          ; $5d4f: $49
	ld a, e                                          ; $5d50: $7b
	inc e                                            ; $5d51: $1c
	inc bc                                           ; $5d52: $03
	jr nz, jr_069_5d98                               ; $5d53: $20 $43

	jr nz, @-$6e                                     ; $5d55: $20 $90

	cp $81                                           ; $5d57: $fe $81
	rst $38                                          ; $5d59: $ff
	add b                                            ; $5d5a: $80
	ld sp, hl                                        ; $5d5b: $f9
	add b                                            ; $5d5c: $80

jr_069_5d5d:
	ldh a, [$80]                                     ; $5d5d: $f0 $80
	ld l, [hl]                                       ; $5d5f: $6e
	sbc a                                            ; $5d60: $9f
	ld a, c                                          ; $5d61: $79
	db $fd                                           ; $5d62: $fd
	ret                                              ; $5d63: $c9


	sbc a                                            ; $5d64: $9f
	rst GetHLinHL                                          ; $5d65: $cf
	inc bc                                           ; $5d66: $03

jr_069_5d67:
	jr nz, jr_069_5db0                               ; $5d67: $20 $47

	jr nz, @-$61                                     ; $5d69: $20 $9d

	ld b, b                                          ; $5d6b: $40
	add b                                            ; $5d6c: $80
	ld [hl], e                                       ; $5d6d: $73

jr_069_5d6e:
	jr nz, jr_069_5d6e                               ; $5d6e: $20 $fe

	rst SubAFromDE                                          ; $5d70: $df
	add b                                            ; $5d71: $80
	ccf                                              ; $5d72: $3f
	jr nz, jr_069_5d02                               ; $5d73: $20 $8d

	ld l, a                                          ; $5d75: $6f
	ldh a, [$7f]                                     ; $5d76: $f0 $7f
	add b                                            ; $5d78: $80
	rst $38                                          ; $5d79: $ff
	nop                                              ; $5d7a: $00
	rst JumpTable                                          ; $5d7b: $c7
	nop                                              ; $5d7c: $00
	add e                                            ; $5d7d: $83
	nop                                              ; $5d7e: $00
	ld e, l                                          ; $5d7f: $5d
	ld a, $7b                                        ; $5d80: $3e $7b
	ld a, e                                          ; $5d82: $7b
	rla                                              ; $5d83: $17
	ld a, $3f                                        ; $5d84: $3e $3f
	inc c                                            ; $5d86: $0c
	inc bc                                           ; $5d87: $03
	jr nz, @+$29                                     ; $5d88: $20 $27

	jr nz, jr_069_5d2a                               ; $5d8a: $20 $9e

	ld a, a                                          ; $5d8c: $7f
	inc bc                                           ; $5d8d: $03
	jr nz, jr_069_5dd3                               ; $5d8e: $20 $43

	jr nz, jr_069_5d2c                               ; $5d90: $20 $9a

	ld l, h                                          ; $5d92: $6c
	sbc $ba                                          ; $5d93: $de $ba
	rst JumpTable                                          ; $5d95: $c7
	rst $38                                          ; $5d96: $ff
	ld l, e                                          ; $5d97: $6b

jr_069_5d98:
	jr nz, jr_069_5e19                               ; $5d98: $20 $7f

	ld a, b                                          ; $5d9a: $78
	sbc c                                            ; $5d9b: $99
	ld l, c                                          ; $5d9c: $69
	or b                                             ; $5d9d: $b0
	rst SubAFromDE                                          ; $5d9e: $df
	sbc a                                            ; $5d9f: $9f
	rst GetHLinHL                                          ; $5da0: $cf
	add b                                            ; $5da1: $80
	inc bc                                           ; $5da2: $03
	jr nz, jr_069_5df4                               ; $5da3: $20 $4f

	jr nz, jr_069_5e22                               ; $5da5: $20 $7b

	add hl, hl                                       ; $5da7: $29

jr_069_5da8:
	daa                                              ; $5da8: $27
	jr nz, jr_069_5d42                               ; $5da9: $20 $97

jr_069_5dab:
	ld sp, $0f0f                                     ; $5dab: $31 $0f $0f
	ld a, a                                          ; $5dae: $7f
	scf                                              ; $5daf: $37

jr_069_5db0:
	ld hl, sp-$01                                    ; $5db0: $f8 $ff
	ret nz                                           ; $5db2: $c0

	ld l, a                                          ; $5db3: $6f
	jr nz, jr_069_5d4d                               ; $5db4: $20 $97

	ccf                                              ; $5db6: $3f
	nop                                              ; $5db7: $00
	ld b, l                                          ; $5db8: $45
	add e                                            ; $5db9: $83
	ccf                                              ; $5dba: $3f
	ld a, [hl]                                       ; $5dbb: $7e
	ld a, a                                          ; $5dbc: $7f
	nop                                              ; $5dbd: $00
	inc bc                                           ; $5dbe: $03
	jr nz, jr_069_5de4                               ; $5dbf: $20 $23

	jr nz, jr_069_5dc4                               ; $5dc1: $20 $01

	ld h, b                                          ; $5dc3: $60

jr_069_5dc4:
	ld h, e                                          ; $5dc4: $63
	jr nz, jr_069_5d5d                               ; $5dc5: $20 $96

	inc l                                            ; $5dc7: $2c

jr_069_5dc8:
	jr nc, jr_069_5e02                               ; $5dc8: $30 $38

	stop                                             ; $5dca: $10 $00
	nop                                              ; $5dcc: $00
	ld l, $24                                        ; $5dcd: $2e $24

jr_069_5dcf:
	jr jr_069_5dcf                                   ; $5dcf: $18 $fe

	ld [hl], a                                       ; $5dd1: $77
	db $fc                                           ; $5dd2: $fc

jr_069_5dd3:
	rst $38                                          ; $5dd3: $ff
	sub c                                            ; $5dd4: $91
	ld b, c                                          ; $5dd5: $41
	add b                                            ; $5dd6: $80
	push bc                                          ; $5dd7: $c5
	db $e3                                           ; $5dd8: $e3
	rst $38                                          ; $5dd9: $ff
	rst $38                                          ; $5dda: $ff
	rst AddAOntoHL                                          ; $5ddb: $ef
	sbc a                                            ; $5ddc: $9f
	sbc l                                            ; $5ddd: $9d
	add e                                            ; $5dde: $83
	add a                                            ; $5ddf: $87
	add b                                            ; $5de0: $80
	add c                                            ; $5de1: $81
	nop                                              ; $5de2: $00
	ld l, a                                          ; $5de3: $6f

jr_069_5de4:
	ldh [$9c], a                                     ; $5de4: $e0 $9c
	ld a, $2c                                        ; $5de6: $3e $2c
	inc e                                            ; $5de8: $1c
	ld a, e                                          ; $5de9: $7b
	db $e3                                           ; $5dea: $e3
	rra                                              ; $5deb: $1f
	ldh [$99], a                                     ; $5dec: $e0 $99
	inc a                                            ; $5dee: $3c
	jr c, jr_069_5e2f                                ; $5def: $38 $3e

	inc d                                            ; $5df1: $14
	inc e                                            ; $5df2: $1c
	inc e                                            ; $5df3: $1c

jr_069_5df4:
	ld l, a                                          ; $5df4: $6f
	sbc $33                                          ; $5df5: $de $33
	ldh [$9c], a                                     ; $5df7: $e0 $9c
	inc l                                            ; $5df9: $2c
	ld a, $1c                                        ; $5dfa: $3e $1c
	ld a, e                                          ; $5dfc: $7b
	sbc $9e                                          ; $5dfd: $de $9e
	ld [$de77], sp                                   ; $5dff: $08 $77 $de

jr_069_5e02:
	ld c, a                                          ; $5e02: $4f
	ldh [$bf], a                                     ; $5e03: $e0 $bf
	ld bc, $9f80                                     ; $5e05: $01 $80 $9f
	rst $38                                          ; $5e08: $ff
	inc e                                            ; $5e09: $1c
	ldh a, [$2e]                                     ; $5e0a: $f0 $2e
	ldh a, [rSVBK]                                   ; $5e0c: $f0 $70
	cp $7c                                           ; $5e0e: $fe $7c
	rst GetHLinHL                                          ; $5e10: $cf
	cp a                                             ; $5e11: $bf
	jp $8ef1                                         ; $5e12: $c3 $f1 $8e


	rst GetHLinHL                                          ; $5e15: $cf
	or b                                             ; $5e16: $b0
	xor [hl]                                         ; $5e17: $ae
	rst SubAFromDE                                          ; $5e18: $df

jr_069_5e19:
	reti                                             ; $5e19: $d9


	cp e                                             ; $5e1a: $bb
	ld l, e                                          ; $5e1b: $6b
	rst $38                                          ; $5e1c: $ff
	ld c, e                                          ; $5e1d: $4b
	xor a                                            ; $5e1e: $af
	push bc                                          ; $5e1f: $c5
	adc a                                            ; $5e20: $8f
	ret                                              ; $5e21: $c9


jr_069_5e22:
	add [hl]                                         ; $5e22: $86
	ret nz                                           ; $5e23: $c0

	ret nz                                           ; $5e24: $c0

	ldh [hDisp0_WY], a                                     ; $5e25: $e0 $88
	ret nz                                           ; $5e27: $c0

	ld e, a                                          ; $5e28: $5f
	ld h, b                                          ; $5e29: $60
	ld a, a                                          ; $5e2a: $7f
	ld h, b                                          ; $5e2b: $60
	cpl                                              ; $5e2c: $2f
	jr nc, jr_069_5e5e                               ; $5e2d: $30 $2f

jr_069_5e2f:
	jr nc, jr_069_5e68                               ; $5e2f: $30 $37

	jr c, @+$39                                      ; $5e31: $38 $37

	jr c, jr_069_5ea0                                ; $5e33: $38 $6b

	ld l, h                                          ; $5e35: $6c
	ld h, l                                          ; $5e36: $65
	ld h, [hl]                                       ; $5e37: $66
	ld b, d                                          ; $5e38: $42
	ld b, e                                          ; $5e39: $43
	ld b, c                                          ; $5e3a: $41
	ld b, c                                          ; $5e3b: $41
	ld b, b                                          ; $5e3c: $40
	ld b, b                                          ; $5e3d: $40
	ei                                               ; $5e3e: $fb
	rst SubAFromDE                                          ; $5e3f: $df
	rra                                              ; $5e40: $1f
	sub d                                            ; $5e41: $92
	rst $38                                          ; $5e42: $ff
	di                                               ; $5e43: $f3
	db $db                                           ; $5e44: $db
	rst $38                                          ; $5e45: $ff
	ccf                                              ; $5e46: $3f
	dec h                                            ; $5e47: $25
	dec [hl]                                         ; $5e48: $35
	dec h                                            ; $5e49: $25
	jr nz, @+$06                                     ; $5e4a: $20 $04

	nop                                              ; $5e4c: $00
	inc b                                            ; $5e4d: $04
	nop                                              ; $5e4e: $00
	sbc $80                                          ; $5e4f: $de $80
	sbc b                                            ; $5e51: $98
	pop bc                                           ; $5e52: $c1
	nop                                              ; $5e53: $00
	pop bc                                           ; $5e54: $c1
	nop                                              ; $5e55: $00
	ld b, c                                          ; $5e56: $41
	add b                                            ; $5e57: $80
	nop                                              ; $5e58: $00
	ld [hl], a                                       ; $5e59: $77
	cp $80                                           ; $5e5a: $fe $80
	nop                                              ; $5e5c: $00
	adc b                                            ; $5e5d: $88

jr_069_5e5e:
	nop                                              ; $5e5e: $00
	inc e                                            ; $5e5f: $1c
	nop                                              ; $5e60: $00
	inc c                                            ; $5e61: $0c
	db $10                                           ; $5e62: $10
	ld a, [rIE]                                    ; $5e63: $fa $ff $ff
	rla                                              ; $5e66: $17
	ccf                                              ; $5e67: $3f

jr_069_5e68:
	ld de, $0739                                     ; $5e68: $11 $39 $07
	rlca                                             ; $5e6b: $07
	ld a, a                                          ; $5e6c: $7f
	ccf                                              ; $5e6d: $3f
	ld hl, sp+$63                                    ; $5e6e: $f8 $63
	call c, $02fd                                    ; $5e70: $dc $fd $02
	cp $3d                                           ; $5e73: $fe $3d
	or $77                                           ; $5e75: $f6 $77
	ld d, e                                          ; $5e77: $53
	rst $38                                          ; $5e78: $ff
	dec e                                            ; $5e79: $1d

jr_069_5e7a:
	ld e, a                                          ; $5e7a: $5f
	add h                                            ; $5e7b: $84
	inc d                                            ; $5e7c: $14
	rra                                              ; $5e7d: $1f
	ld l, e                                          ; $5e7e: $6b
	inc e                                            ; $5e7f: $1c
	rlca                                             ; $5e80: $07
	nop                                              ; $5e81: $00
	ld bc, $fc00                                     ; $5e82: $01 $00 $fc
	inc bc                                           ; $5e85: $03
	ld hl, sp+$07                                    ; $5e86: $f8 $07
	ldh a, [rIF]                                     ; $5e88: $f0 $0f
	ldh a, [rIF]                                     ; $5e8a: $f0 $0f
	pop hl                                           ; $5e8c: $e1
	rra                                              ; $5e8d: $1f

jr_069_5e8e:
	ldh [c], a                                       ; $5e8e: $e2
	ld e, $c6                                        ; $5e8f: $1e $c6
	ld a, $cc                                        ; $5e91: $3e $cc
	inc a                                            ; $5e93: $3c
	sbc h                                            ; $5e94: $9c
	ld a, h                                          ; $5e95: $7c
	ld a, h                                          ; $5e96: $7c
	call c, $80fc                                    ; $5e97: $dc $fc $80
	ldh [c], a                                       ; $5e9a: $e2
	cp $c2                                           ; $5e9b: $fe $c2
	cp $02                                           ; $5e9d: $fe $02
	rst $38                                          ; $5e9f: $ff

jr_069_5ea0:
	ld bc, $03ff                                     ; $5ea0: $01 $ff $03
	ld l, [hl]                                       ; $5ea3: $6e
	inc hl                                           ; $5ea4: $23
	halt                                             ; $5ea5: $76
	ld h, $b7                                        ; $5ea6: $26 $b7
	dec b                                            ; $5ea8: $05
	rst FarCall                                          ; $5ea9: $f7
	sub l                                            ; $5eaa: $95

jr_069_5eab:
	rst $38                                          ; $5eab: $ff
	sub l                                            ; $5eac: $95
	rst $38                                          ; $5ead: $ff
	sub d                                            ; $5eae: $92
	rst $38                                          ; $5eaf: $ff
	jp nc, $d37f                                     ; $5eb0: $d2 $7f $d3

	ld a, a                                          ; $5eb3: $7f
	ret                                              ; $5eb4: $c9


	ld a, a                                          ; $5eb5: $7f
	ld c, c                                          ; $5eb6: $49
	rst $38                                          ; $5eb7: $ff
	ret                                              ; $5eb8: $c9


	ld a, a                                          ; $5eb9: $7f
	cp $9d                                           ; $5eba: $fe $9d
	ld a, a                                          ; $5ebc: $7f
	ret z                                            ; $5ebd: $c8

	ld a, e                                          ; $5ebe: $7b
	or $7f                                           ; $5ebf: $f6 $7f
	cp $80                                           ; $5ec1: $fe $80
	db $db                                           ; $5ec3: $db

jr_069_5ec4:
	ld l, l                                          ; $5ec4: $6d
	ld d, e                                          ; $5ec5: $53
	db $ed                                           ; $5ec6: $ed
	rst SubAFromHL                                          ; $5ec7: $d7
	jp hl                                            ; $5ec8: $e9


	rst SubAFromHL                                          ; $5ec9: $d7
	jp hl                                            ; $5eca: $e9


	ld [hl], h                                       ; $5ecb: $74
	ld c, e                                          ; $5ecc: $4b
	ld [hl], h                                       ; $5ecd: $74
	ld c, e                                          ; $5ece: $4b
	halt                                             ; $5ecf: $76
	ld c, e                                          ; $5ed0: $4b
	ld a, d                                          ; $5ed1: $7a
	ld c, a                                          ; $5ed2: $4f
	ld l, d                                          ; $5ed3: $6a
	ld e, a                                          ; $5ed4: $5f
	ld h, e                                          ; $5ed5: $63
	ld e, a                                          ; $5ed6: $5f
	pop af                                           ; $5ed7: $f1
	rst SubAFromDE                                          ; $5ed8: $df
	or l                                             ; $5ed9: $b5
	rst SubAFromDE                                          ; $5eda: $df
	sub a                                            ; $5edb: $97
	rst $38                                          ; $5edc: $ff
	sub [hl]                                         ; $5edd: $96
	cp $b7                                           ; $5ede: $fe $b7
	rst $38                                          ; $5ee0: $ff
	or a                                             ; $5ee1: $b7
	sbc [hl]                                         ; $5ee2: $9e
	rst $38                                          ; $5ee3: $ff
	ld d, a                                          ; $5ee4: $57
	jr nz, jr_069_5e7a                               ; $5ee5: $20 $93

	rst $38                                          ; $5ee7: $ff

jr_069_5ee8:
	add b                                            ; $5ee8: $80
	pop af                                           ; $5ee9: $f1
	adc [hl]                                         ; $5eea: $8e
	rst AddAOntoHL                                          ; $5eeb: $ef
	sub b                                            ; $5eec: $90
	adc $bf                                          ; $5eed: $ce $bf
	ld e, c                                          ; $5eef: $59
	cp l                                             ; $5ef0: $bd
	ld l, e                                          ; $5ef1: $6b
	rst $38                                          ; $5ef2: $ff
	inc bc                                           ; $5ef3: $03
	jr nz, jr_069_5f19                               ; $5ef4: $20 $23

	jr nz, jr_069_5f77                               ; $5ef6: $20 $7f

	cp $27                                           ; $5ef8: $fe $27
	jr nz, jr_069_5e8e                               ; $5efa: $20 $92

	ld a, a                                          ; $5efc: $7f
	ret nz                                           ; $5efd: $c0

	db $e3                                           ; $5efe: $e3
	inc e                                            ; $5eff: $1c
	db $fd                                           ; $5f00: $fd

jr_069_5f01:
	ld [bc], a                                       ; $5f01: $02
	db $fc                                           ; $5f02: $fc
	ccf                                              ; $5f03: $3f
	sub $77                                          ; $5f04: $d6 $77
	rra                                              ; $5f06: $1f
	ld a, a                                          ; $5f07: $7f
	dec d                                            ; $5f08: $15
	inc bc                                           ; $5f09: $03

jr_069_5f0a:
	jr nz, jr_069_5f2b                               ; $5f0a: $20 $1f

	jr nz, jr_069_5f89                               ; $5f0c: $20 $7b

	cp $03                                           ; $5f0e: $fe $03
	jr nz, jr_069_5f61                               ; $5f10: $20 $4f

	jr nz, @-$61                                     ; $5f12: $20 $9d

	ld [hl], d                                       ; $5f14: $72
	db $fc                                           ; $5f15: $fc
	ld [hl], a                                       ; $5f16: $77
	jr nz, jr_069_5eab                               ; $5f17: $20 $92

jr_069_5f19:
	cp $81                                           ; $5f19: $fe $81

jr_069_5f1b:
	rst $38                                          ; $5f1b: $ff
	add b                                            ; $5f1c: $80
	ld hl, sp-$80                                    ; $5f1d: $f8 $80
	ldh a, [$80]                                     ; $5f1f: $f0 $80
	halt                                             ; $5f21: $76
	adc a                                            ; $5f22: $8f
	ld a, c                                          ; $5f23: $79
	cp l                                             ; $5f24: $bd
	push hl                                          ; $5f25: $e5
	inc bc                                           ; $5f26: $03
	jr nz, @+$39                                     ; $5f27: $20 $37

	jr nz, jr_069_5fa9                               ; $5f29: $20 $7e

jr_069_5f2b:
	ld b, h                                          ; $5f2b: $44
	ld a, e                                          ; $5f2c: $7b
	ld [hl+], a                                      ; $5f2d: $22
	ld [hl], a                                       ; $5f2e: $77
	inc hl                                           ; $5f2f: $23
	inc sp                                           ; $5f30: $33
	jr nz, jr_069_5ec4                               ; $5f31: $20 $91

	ld e, a                                          ; $5f33: $5f
	ldh [$7f], a                                     ; $5f34: $e0 $7f
	add b                                            ; $5f36: $80
	rst JumpTable                                          ; $5f37: $c7
	nop                                              ; $5f38: $00
	add e                                            ; $5f39: $83
	nop                                              ; $5f3a: $00
	dec a                                            ; $5f3b: $3d
	ld e, $67                                        ; $5f3c: $1e $67
	ld [hl], a                                       ; $5f3e: $77
	dec d                                            ; $5f3f: $15
	ld a, $03                                        ; $5f40: $3e $03
	jr nz, jr_069_5f5f                               ; $5f42: $20 $1b

	jr nz, jr_069_5fc0                               ; $5f44: $20 $7a

	ld a, $03                                        ; $5f46: $3e $03
	jr nz, jr_069_5f91                               ; $5f48: $20 $47

	jr nz, jr_069_5ee8                               ; $5f4a: $20 $9c

	cp [hl]                                          ; $5f4c: $be
	jp Jump_069_6bff                                 ; $5f4d: $c3 $ff $6b


	jr nz, jr_069_5fd1                               ; $5f50: $20 $7f

	ld a, d                                          ; $5f52: $7a
	sbc c                                            ; $5f53: $99
	ld l, c                                          ; $5f54: $69
	or b                                             ; $5f55: $b0
	rst SubAFromDE                                          ; $5f56: $df
	sbc a                                            ; $5f57: $9f
	rst GetHLinHL                                          ; $5f58: $cf
	add b                                            ; $5f59: $80
	inc bc                                           ; $5f5a: $03
	jr nz, jr_069_5fa8                               ; $5f5b: $20 $4b

	jr nz, @+$81                                     ; $5f5d: $20 $7f

jr_069_5f5f:
	cp $9e                                           ; $5f5f: $fe $9e

jr_069_5f61:
	pop bc                                           ; $5f61: $c1
	ld [hl], e                                       ; $5f62: $73
	jr nz, jr_069_5fd4                               ; $5f63: $20 $6f

	dec e                                            ; $5f65: $1d
	ld c, a                                          ; $5f66: $4f
	jr nz, jr_069_5f01                               ; $5f67: $20 $98

	ld b, a                                          ; $5f69: $47
	ccf                                              ; $5f6a: $3f
	rra                                              ; $5f6b: $1f
	ld hl, sp+$7f                                    ; $5f6c: $f8 $7f
	ldh [rIE], a                                     ; $5f6e: $e0 $ff
	ld [hl], e                                       ; $5f70: $73
	jr nz, jr_069_5f0a                               ; $5f71: $20 $97

	ccf                                              ; $5f73: $3f
	nop                                              ; $5f74: $00
	ld b, l                                          ; $5f75: $45
	add e                                            ; $5f76: $83

jr_069_5f77:
	ccf                                              ; $5f77: $3f
	ld a, [hl]                                       ; $5f78: $7e
	ld a, a                                          ; $5f79: $7f
	nop                                              ; $5f7a: $00
	inc bc                                           ; $5f7b: $03
	jr nz, jr_069_5f9c                               ; $5f7c: $20 $1e

	ld b, b                                          ; $5f7e: $40
	ld a, e                                          ; $5f7f: $7b
	cp $03                                           ; $5f80: $fe $03
	jr nz, jr_069_5ff7                               ; $5f82: $20 $73

	jr nz, jr_069_5f1b                               ; $5f84: $20 $95

	inc l                                            ; $5f86: $2c
	jr nc, @+$3a                                     ; $5f87: $30 $38

jr_069_5f89:
	stop                                             ; $5f89: $10 $00
	nop                                              ; $5f8b: $00
	jr jr_069_5f9e                                   ; $5f8c: $18 $10

	jr jr_069_5fa8                                   ; $5f8e: $18 $18

	ld a, e                                          ; $5f90: $7b

jr_069_5f91:
	ld a, [$91fc]                                    ; $5f91: $fa $fc $91
	ld bc, $e580                                     ; $5f94: $01 $80 $e5
	jp rIE                                         ; $5f97: $c3 $ff $ff


	rst AddAOntoHL                                          ; $5f9a: $ef
	sbc a                                            ; $5f9b: $9f

jr_069_5f9c:
	sbc l                                            ; $5f9c: $9d
	add e                                            ; $5f9d: $83

jr_069_5f9e:
	add a                                            ; $5f9e: $87
	add b                                            ; $5f9f: $80
	add c                                            ; $5fa0: $81
	nop                                              ; $5fa1: $00
	ld l, e                                          ; $5fa2: $6b
	ldh [$9e], a                                     ; $5fa3: $e0 $9e
	jr @-$20                                         ; $5fa5: $18 $de

	inc e                                            ; $5fa7: $1c

jr_069_5fa8:
	sbc [hl]                                         ; $5fa8: $9e

jr_069_5fa9:
	ld [$de6f], sp                                   ; $5fa9: $08 $6f $de
	scf                                              ; $5fac: $37
	ldh [$99], a                                     ; $5fad: $e0 $99
	inc e                                            ; $5faf: $1c
	jr jr_069_5fd0                                   ; $5fb0: $18 $1e

	inc e                                            ; $5fb2: $1c
	inc e                                            ; $5fb3: $1c
	inc d                                            ; $5fb4: $14
	dec de                                           ; $5fb5: $1b
	ldh [$98], a                                     ; $5fb6: $e0 $98
	inc e                                            ; $5fb8: $1c
	ld a, $1e                                        ; $5fb9: $3e $1e
	ld a, $1a                                        ; $5fbb: $3e $1a
	inc e                                            ; $5fbd: $1c
	inc c                                            ; $5fbe: $0c
	ld [hl], a                                       ; $5fbf: $77

jr_069_5fc0:
	sbc $4f                                          ; $5fc0: $de $4f
	ldh [$6c], a                                     ; $5fc2: $e0 $6c
	inc bc                                           ; $5fc4: $03
	db $fd                                           ; $5fc5: $fd
	rst SubAFromDE                                          ; $5fc6: $df
	inc bc                                           ; $5fc7: $03
	sub l                                            ; $5fc8: $95
	dec c                                            ; $5fc9: $0d
	ld c, $17                                        ; $5fca: $0e $17
	jr @+$31                                         ; $5fcc: $18 $2f

	jr nc, jr_069_602f                               ; $5fce: $30 $5f

jr_069_5fd0:
	ld h, b                                          ; $5fd0: $60

jr_069_5fd1:
	ld a, a                                          ; $5fd1: $7f
	ld b, b                                          ; $5fd2: $40
	ld l, a                                          ; $5fd3: $6f

jr_069_5fd4:
	cp $7f                                           ; $5fd4: $fe $7f
	or $9d                                           ; $5fd6: $f6 $9d
	ccf                                              ; $5fd8: $3f
	jr nz, jr_069_6042                               ; $5fd9: $20 $67

	cp $7f                                           ; $5fdb: $fe $7f
	add sp, -$63                                     ; $5fdd: $e8 $9d
	rra                                              ; $5fdf: $1f
	db $10                                           ; $5fe0: $10
	ld c, a                                          ; $5fe1: $4f
	cp $7f                                           ; $5fe2: $fe $7f
	call nc, $0f9d                                   ; $5fe4: $d4 $9d $0f
	ld [$fe77], sp                                   ; $5fe7: $08 $77 $fe
	sbc e                                            ; $5fea: $9b
	dec bc                                           ; $5feb: $0b
	inc c                                            ; $5fec: $0c
	rlca                                             ; $5fed: $07
	inc b                                            ; $5fee: $04
	ld [hl], a                                       ; $5fef: $77
	cp $97                                           ; $5ff0: $fe $97
	dec b                                            ; $5ff2: $05
	ld b, $05                                        ; $5ff3: $06 $05
	ld b, $03                                        ; $5ff5: $06 $03

jr_069_5ff7:
	ld [bc], a                                       ; $5ff7: $02
	ld [bc], a                                       ; $5ff8: $02
	inc bc                                           ; $5ff9: $03
	db $dd                                           ; $5ffa: $dd
	ld bc, $d5e0                                     ; $5ffb: $01 $e0 $d5
	rst SubAFromDE                                          ; $5ffe: $df
	ld bc, $07df                                     ; $5fff: $01 $df $07
	add b                                            ; $6002: $80
	jr c, @+$41                                      ; $6003: $38 $3f

	sbc $e1                                          ; $6005: $de $e1
	ld a, a                                          ; $6007: $7f
	add c                                            ; $6008: $81
	rst $38                                          ; $6009: $ff
	inc bc                                           ; $600a: $03
	rst $38                                          ; $600b: $ff
	inc b                                            ; $600c: $04
	ldh a, [rIF]                                     ; $600d: $f0 $0f
	ret nz                                           ; $600f: $c0

	ccf                                              ; $6010: $3f
	add b                                            ; $6011: $80
	ld a, a                                          ; $6012: $7f
	add b                                            ; $6013: $80
	ld a, a                                          ; $6014: $7f
	add e                                            ; $6015: $83
	ld a, a                                          ; $6016: $7f
	ld a, l                                          ; $6017: $7d
	db $fd                                           ; $6018: $fd
	add hl, de                                       ; $6019: $19
	ld sp, hl                                        ; $601a: $f9
	add hl, bc                                       ; $601b: $09
	ld sp, hl                                        ; $601c: $f9
	inc b                                            ; $601d: $04
	db $fc                                           ; $601e: $fc
	inc b                                            ; $601f: $04
	db $fc                                           ; $6020: $fc
	add h                                            ; $6021: $84
	sbc b                                            ; $6022: $98
	ld a, h                                          ; $6023: $7c
	ld a, a                                          ; $6024: $7f
	inc bc                                           ; $6025: $03
	ld a, a                                          ; $6026: $7f
	inc bc                                           ; $6027: $03
	ccf                                              ; $6028: $3f
	ld bc, $fe6f                                     ; $6029: $01 $6f $fe
	sbc [hl]                                         ; $602c: $9e
	rra                                              ; $602d: $1f
	dec sp                                           ; $602e: $3b

jr_069_602f:
	cp $9a                                           ; $602f: $fe $9a
	pop hl                                           ; $6031: $e1
	rra                                              ; $6032: $1f
	pop hl                                           ; $6033: $e1
	rra                                              ; $6034: $1f
	ldh [rOCPD], a                                   ; $6035: $e0 $6b
	cp $7f                                           ; $6037: $fe $7f
	cp [hl]                                          ; $6039: $be
	sub e                                            ; $603a: $93
	ld [hl], b                                       ; $603b: $70
	adc a                                            ; $603c: $8f
	ld hl, sp-$79                                    ; $603d: $f8 $87
	ld hl, sp-$79                                    ; $603f: $f8 $87
	cp h                                             ; $6041: $bc

jr_069_6042:
	jp Jump_069_417e                                 ; $6042: $c3 $7e $41


	ld a, [hl]                                       ; $6045: $7e
	ld b, c                                          ; $6046: $41
	ld h, a                                          ; $6047: $67
	ld a, [hl-]                                      ; $6048: $3a
	ld a, a                                          ; $6049: $7f
	ld b, b                                          ; $604a: $40
	ld [hl], a                                       ; $604b: $77
	cp $91                                           ; $604c: $fe $91
	daa                                              ; $604e: $27
	jr c, jr_069_6068                                ; $604f: $38 $17

	jr jr_069_6066                                   ; $6051: $18 $13

	inc e                                            ; $6053: $1c
	add hl, bc                                       ; $6054: $09
	ld c, $09                                        ; $6055: $0e $09
	ld c, $05                                        ; $6057: $0e $05
	ld b, $02                                        ; $6059: $06 $02
	inc bc                                           ; $605b: $03
	daa                                              ; $605c: $27
	ld d, h                                          ; $605d: $54
	rst SubAFromDE                                          ; $605e: $df
	ld bc, $0680                                     ; $605f: $01 $80 $06
	rlca                                             ; $6062: $07
	adc b                                            ; $6063: $88
	rrca                                             ; $6064: $0f
	inc de                                           ; $6065: $13

jr_069_6066:
	sbc l                                            ; $6066: $9d
	dec hl                                           ; $6067: $2b

jr_069_6068:
	or l                                             ; $6068: $b5
	adc a                                            ; $6069: $8f
	pop af                                           ; $606a: $f1
	ld a, h                                          ; $606b: $7c
	ld d, e                                          ; $606c: $53
	halt                                             ; $606d: $76
	db $db                                           ; $606e: $db
	reti                                             ; $606f: $d9


	ld a, a                                          ; $6070: $7f
	ld l, a                                          ; $6071: $6f
	rst $38                                          ; $6072: $ff
	di                                               ; $6073: $f3
	rst $38                                          ; $6074: $ff
	cp $ff                                           ; $6075: $fe $ff
	dec sp                                           ; $6077: $3b
	rlca                                             ; $6078: $07
	db $f4                                           ; $6079: $f4
	rrca                                             ; $607a: $0f
	rst AddAOntoHL                                          ; $607b: $ef
	rra                                              ; $607c: $1f
	db $db                                           ; $607d: $db
	ccf                                              ; $607e: $3f
	or l                                             ; $607f: $b5
	add b                                            ; $6080: $80
	ld a, a                                          ; $6081: $7f
	ld [$35ff], a                                    ; $6082: $ea $ff $35
	rst $38                                          ; $6085: $ff
	ld h, l                                          ; $6086: $65
	rst $38                                          ; $6087: $ff
	ld l, d                                          ; $6088: $6a
	rst $38                                          ; $6089: $ff
	ld c, d                                          ; $608a: $4a
	rst $38                                          ; $608b: $ff
	call nc, $95ff                                   ; $608c: $d4 $ff $95
	rst $38                                          ; $608f: $ff
	xor c                                            ; $6090: $a9
	rst $38                                          ; $6091: $ff
	xor e                                            ; $6092: $ab
	cp $83                                           ; $6093: $fe $83
	cp $63                                           ; $6095: $fe $63
	cp [hl]                                          ; $6097: $be
	ld h, e                                          ; $6098: $63
	cp [hl]                                          ; $6099: $be
	db $e3                                           ; $609a: $e3
	ld a, $a8                                        ; $609b: $3e $a8
	ld a, a                                          ; $609d: $7f
	ret nz                                           ; $609e: $c0

	ld a, a                                          ; $609f: $7f
	add [hl]                                         ; $60a0: $86
	ld [$6a5f], a                                    ; $60a1: $ea $5f $6a
	rst SubAFromDE                                          ; $60a4: $df
	ld l, d                                          ; $60a5: $6a
	rst SubAFromDE                                          ; $60a6: $df
	ld e, e                                          ; $60a7: $5b
	rst GetHLinHL                                          ; $60a8: $cf
	ld e, e                                          ; $60a9: $5b
	rst GetHLinHL                                          ; $60aa: $cf
	inc de                                           ; $60ab: $13
	rst GetHLinHL                                          ; $60ac: $cf
	add e                                            ; $60ad: $83
	rst GetHLinHL                                          ; $60ae: $cf
	adc e                                            ; $60af: $8b
	rst GetHLinHL                                          ; $60b0: $cf
	adc e                                            ; $60b1: $8b
	rst AddAOntoHL                                          ; $60b2: $ef
	adc e                                            ; $60b3: $8b
	rst AddAOntoHL                                          ; $60b4: $ef
	add e                                            ; $60b5: $83
	db $eb                                           ; $60b6: $eb
	add e                                            ; $60b7: $83
	ei                                               ; $60b8: $fb
	db $d3                                           ; $60b9: $d3
	ld [hl], a                                       ; $60ba: $77
	cp $9a                                           ; $60bb: $fe $9a
	ld a, e                                          ; $60bd: $7b
	di                                               ; $60be: $f3
	ld a, e                                          ; $60bf: $7b
	di                                               ; $60c0: $f3
	ld a, $77                                        ; $60c1: $3e $77
	cp $8c                                           ; $60c3: $fe $8c
	ei                                               ; $60c5: $fb
	ld e, $f9                                        ; $60c6: $1e $f9
	rra                                              ; $60c8: $1f
	ld sp, hl                                        ; $60c9: $f9
	rrca                                             ; $60ca: $0f
	ld sp, hl                                        ; $60cb: $f9
	rrca                                             ; $60cc: $0f
	db $fd                                           ; $60cd: $fd
	rlca                                             ; $60ce: $07
	ld a, h                                          ; $60cf: $7c
	rlca                                             ; $60d0: $07
	ccf                                              ; $60d1: $3f
	inc bc                                           ; $60d2: $03
	rra                                              ; $60d3: $1f
	inc bc                                           ; $60d4: $03
	rra                                              ; $60d5: $1f
	ld bc, $be8f                                     ; $60d6: $01 $8f $be
	ld c, a                                          ; $60d9: $4f
	ld h, a                                          ; $60da: $67
	ccf                                              ; $60db: $3f
	sbc b                                            ; $60dc: $98
	db $10                                           ; $60dd: $10
	ccf                                              ; $60de: $3f
	ld [$083f], sp                                   ; $60df: $08 $3f $08
	rra                                              ; $60e2: $1f
	inc b                                            ; $60e3: $04
	ld a, e                                          ; $60e4: $7b
	cp $96                                           ; $60e5: $fe $96
	dec b                                            ; $60e7: $05
	ld a, $0f                                        ; $60e8: $3e $0f
	ld a, b                                          ; $60ea: $78
	rra                                              ; $60eb: $1f
	ldh [$bf], a                                     ; $60ec: $e0 $bf
	ret nz                                           ; $60ee: $c0

	ldh a, [rPCM12]                                  ; $60ef: $f0 $76
	ld h, d                                          ; $60f1: $62
	add b                                            ; $60f2: $80
	dec b                                            ; $60f3: $05
	rlca                                             ; $60f4: $07
	ld a, [bc]                                       ; $60f5: $0a
	dec c                                            ; $60f6: $0d
	inc e                                            ; $60f7: $1c
	rra                                              ; $60f8: $1f
	daa                                              ; $60f9: $27
	jr c, @+$81                                      ; $60fa: $38 $7f

	ld a, a                                          ; $60fc: $7f
	ei                                               ; $60fd: $fb
	rst $38                                          ; $60fe: $ff
	rra                                              ; $60ff: $1f
	rst $38                                          ; $6100: $ff
	or b                                             ; $6101: $b0
	rst $38                                          ; $6102: $ff
	ld a, a                                          ; $6103: $7f
	rst $38                                          ; $6104: $ff
	rst SubAFromBC                                          ; $6105: $e7
	ld a, b                                          ; $6106: $78
	jr nc, @+$01                                     ; $6107: $30 $ff

	rst SubAFromDE                                          ; $6109: $df
	rst $38                                          ; $610a: $ff
	scf                                              ; $610b: $37
	ld hl, sp-$31                                    ; $610c: $f8 $cf
	ldh a, [$9f]                                     ; $610e: $f0 $9f
	rst $38                                          ; $6110: $ff
	ld l, h                                          ; $6111: $6c
	sub l                                            ; $6112: $95
	ldh a, [$8e]                                     ; $6113: $f0 $8e
	rst $38                                          ; $6115: $ff
	ld sp, $c4f1                                     ; $6116: $31 $f1 $c4
	jp $013e                                         ; $6119: $c3 $3e $01


	rst $38                                          ; $611c: $ff
	ld a, e                                          ; $611d: $7b
	ld l, d                                          ; $611e: $6a
	ld a, a                                          ; $611f: $7f
	ld l, h                                          ; $6120: $6c
	sub c                                            ; $6121: $91
	ld a, [hl+]                                      ; $6122: $2a
	cp $45                                           ; $6123: $fe $45
	db $fc                                           ; $6125: $fc
	ld [hl], l                                       ; $6126: $75
	call c, $bdc6                                    ; $6127: $dc $c6 $bd
	sub l                                            ; $612a: $95
	xor a                                            ; $612b: $af
	ld l, l                                          ; $612c: $6d
	rrca                                             ; $612d: $0f
	rrca                                             ; $612e: $0f
	ld e, a                                          ; $612f: $5f
	ldh [$c1], a                                     ; $6130: $e0 $c1
	sbc d                                            ; $6132: $9a
	rst $38                                          ; $6133: $ff
	add b                                            ; $6134: $80
	rst $38                                          ; $6135: $ff
	add b                                            ; $6136: $80
	ldh a, [$de]                                     ; $6137: $f0 $de
	ret nz                                           ; $6139: $c0

	sbc h                                            ; $613a: $9c
	ldh [rAUD4LEN], a                                ; $613b: $e0 $20
	ret nz                                           ; $613d: $c0

	cp l                                             ; $613e: $bd
	add b                                            ; $613f: $80
	add b                                            ; $6140: $80
	add b                                            ; $6141: $80
	rst GetHLinHL                                          ; $6142: $cf
	sbc d                                            ; $6143: $9a
	rlca                                             ; $6144: $07
	ld hl, sp+$7f                                    ; $6145: $f8 $7f
	add b                                            ; $6147: $80
	db $fc                                           ; $6148: $fc
	cp l                                             ; $6149: $bd
	ldh a, [$e0]                                     ; $614a: $f0 $e0
	add b                                            ; $614c: $80
	rra                                              ; $614d: $1f
	rst SubAFromDE                                          ; $614e: $df
	rst $38                                          ; $614f: $ff
	add b                                            ; $6150: $80
	sub $f9                                          ; $6151: $d6 $f9
	adc e                                            ; $6153: $8b
	db $fc                                           ; $6154: $fc
	cp d                                             ; $6155: $ba
	call z, $e6cc                                    ; $6156: $cc $cc $e6
	and [hl]                                         ; $6159: $a6
	ld [hl], e                                       ; $615a: $73
	ld a, [de]                                       ; $615b: $1a
	rst FarCall                                          ; $615c: $f7
	sub a                                            ; $615d: $97
	rst $38                                          ; $615e: $ff
	ei                                               ; $615f: $fb
	db $fc                                           ; $6160: $fc
	adc h                                            ; $6161: $8c
	inc bc                                           ; $6162: $03
	sub c                                            ; $6163: $91
	rst $38                                          ; $6164: $ff
	inc hl                                           ; $6165: $23
	rra                                              ; $6166: $1f
	cp $ff                                           ; $6167: $fe $ff
	add h                                            ; $6169: $84
	cp $74                                           ; $616a: $fe $74
	db $fc                                           ; $616c: $fc
	db $ed                                           ; $616d: $ed
	inc e                                            ; $616e: $1c
	call nz, $fd80                                   ; $616f: $c4 $80 $fd
	dec [hl]                                         ; $6172: $35
	ld a, l                                          ; $6173: $7d
	dec c                                            ; $6174: $0d
	rst $38                                          ; $6175: $ff
	push bc                                          ; $6176: $c5
	rst $38                                          ; $6177: $ff
	scf                                              ; $6178: $37
	rst $38                                          ; $6179: $ff
	ld c, $ff                                        ; $617a: $0e $ff
	db $fd                                           ; $617c: $fd
	rst $38                                          ; $617d: $ff
	sub c                                            ; $617e: $91
	rst $38                                          ; $617f: $ff
	ld sp, $797d                                     ; $6180: $31 $7d $79
	db $dd                                           ; $6183: $dd
	ld a, c                                          ; $6184: $79
	ret                                              ; $6185: $c9


	jp hl                                            ; $6186: $e9


	adc c                                            ; $6187: $89
	ret                                              ; $6188: $c9


	adc e                                            ; $6189: $8b
	rrc [hl]                                         ; $618a: $cb $0e
	sub d                                            ; $618c: $92
	ld e, $16                                        ; $618d: $1e $16
	inc e                                            ; $618f: $1c
	ldh [$c1], a                                     ; $6190: $e0 $c1
	ld a, a                                          ; $6192: $7f
	ld a, e                                          ; $6193: $7b
	sbc d                                            ; $6194: $9a
	ldh a, [$80]                                     ; $6195: $f0 $80
	ld hl, sp+$60                                    ; $6197: $f8 $60
	inc a                                            ; $6199: $3c
	ld a, e                                          ; $619a: $7b
	cp b                                             ; $619b: $b8
	sbc [hl]                                         ; $619c: $9e
	inc bc                                           ; $619d: $03
	cp [hl]                                          ; $619e: $be
	rlca                                             ; $619f: $07
	inc bc                                           ; $61a0: $03
	rra                                              ; $61a1: $1f
	ld a, [hl]                                       ; $61a2: $7e
	jp z, $ff9e                                      ; $61a3: $ca $9e $ff

	cp l                                             ; $61a6: $bd
	ret nz                                           ; $61a7: $c0

	nop                                              ; $61a8: $00
	nop                                              ; $61a9: $00
	ld bc, $1e80                                     ; $61aa: $01 $80 $1e
	pop hl                                           ; $61ad: $e1
	rlca                                             ; $61ae: $07
	ld hl, sp+$00                                    ; $61af: $f8 $00
	nop                                              ; $61b1: $00
	add b                                            ; $61b2: $80
	add b                                            ; $61b3: $80
	ld b, b                                          ; $61b4: $40
	ret nz                                           ; $61b5: $c0

	ret nz                                           ; $61b6: $c0

	ld b, b                                          ; $61b7: $40

jr_069_61b8:
	and b                                            ; $61b8: $a0
	ld h, b                                          ; $61b9: $60
	ld [hl], b                                       ; $61ba: $70
	ldh a, [$d3]                                     ; $61bb: $f0 $d3
	di                                               ; $61bd: $f3
	sbc l                                            ; $61be: $9d
	ld a, a                                          ; $61bf: $7f
	ld [hl-], a                                      ; $61c0: $32
	cp $d4                                           ; $61c1: $fe $d4
	db $ec                                           ; $61c3: $ec
	ld l, b                                          ; $61c4: $68
	sbc b                                            ; $61c5: $98
	ldh a, [$30]                                     ; $61c6: $f0 $30
	cp b                                             ; $61c8: $b8
	ld a, b                                          ; $61c9: $78
	add $80                                          ; $61ca: $c6 $80
	ld a, [hl]                                       ; $61cc: $7e
	ld a, c                                          ; $61cd: $79
	rst $38                                          ; $61ce: $ff
	rst JumpTable                                          ; $61cf: $c7
	rst $38                                          ; $61d0: $ff
	sbc b                                            ; $61d1: $98
	db $fc                                           ; $61d2: $fc
	jr nz, jr_069_61b8                               ; $61d3: $20 $e3

jr_069_61d5:
	ld b, e                                          ; $61d5: $43
	rst GetHLinHL                                          ; $61d6: $cf
	adc h                                            ; $61d7: $8c
	cp a                                             ; $61d8: $bf
	ccf                                              ; $61d9: $3f
	rst $38                                          ; $61da: $ff
	ldh a, [rIE]                                     ; $61db: $f0 $ff
	call z, $22ff                                    ; $61dd: $cc $ff $22
	rst FarCall                                          ; $61e0: $f7
	sub c                                            ; $61e1: $91
	ld sp, hl                                        ; $61e2: $f9
	sbc b                                            ; $61e3: $98
	db $fc                                           ; $61e4: $fc
	adc b                                            ; $61e5: $88
	cp $c8                                           ; $61e6: $fe $c8
	ld a, l                                          ; $61e8: $7d
	ld c, h                                          ; $61e9: $4c
	ld a, [hl]                                       ; $61ea: $7e
	sbc c                                            ; $61eb: $99
	ld l, d                                          ; $61ec: $6a
	ld a, $2a                                        ; $61ed: $3e $2a
	ccf                                              ; $61ef: $3f
	ld a, $17                                        ; $61f0: $3e $17
	ldh [$c1], a                                     ; $61f2: $e0 $c1
	sbc c                                            ; $61f4: $99
	rst $38                                          ; $61f5: $ff
	ld d, b                                          ; $61f6: $50

jr_069_61f7:
	rst $38                                          ; $61f7: $ff
	db $10                                           ; $61f8: $10
	ld h, b                                          ; $61f9: $60
	jr nz, jr_069_61f7                               ; $61fa: $20 $fb

	sbc c                                            ; $61fc: $99
	adc b                                            ; $61fd: $88
	add b                                            ; $61fe: $80

jr_069_61ff:
	ld hl, sp+$40                                    ; $61ff: $f8 $40
	rst $38                                          ; $6201: $ff
	rst $38                                          ; $6202: $ff
	cp [hl]                                          ; $6203: $be
	rst $38                                          ; $6204: $ff
	nop                                              ; $6205: $00
	nop                                              ; $6206: $00
	sub a                                            ; $6207: $97
	inc b                                            ; $6208: $04
	nop                                              ; $6209: $00
	inc e                                            ; $620a: $1c
	db $e3                                           ; $620b: $e3
	jr c, jr_069_61d5                                ; $620c: $38 $c7

	ld [hl], b                                       ; $620e: $70
	adc b                                            ; $620f: $88
	push af                                          ; $6210: $f5
	rst SubAFromDE                                          ; $6211: $df
	add b                                            ; $6212: $80
	pop af                                           ; $6213: $f1
	rst SubAFromDE                                          ; $6214: $df
	db $fc                                           ; $6215: $fc
	add b                                            ; $6216: $80
	rrca                                             ; $6217: $0f
	rst $38                                          ; $6218: $ff
	pop af                                           ; $6219: $f1
	di                                               ; $621a: $f3
	ret nz                                           ; $621b: $c0

	ret nz                                           ; $621c: $c0

	jr nz, jr_069_61ff                               ; $621d: $20 $e0

	db $10                                           ; $621f: $10
	ldh a, [hDisp0_WY]                                     ; $6220: $f0 $88
	ld hl, sp+$4c                                    ; $6222: $f8 $4c
	db $fc                                           ; $6224: $fc
	ld h, $fc                                        ; $6225: $26 $fc
	dec d                                            ; $6227: $15
	cp $93                                           ; $6228: $fe $93
	cp $0a                                           ; $622a: $fe $0a
	ld a, a                                          ; $622c: $7f
	dec c                                            ; $622d: $0d
	ccf                                              ; $622e: $3f
	dec b                                            ; $622f: $05
	cp a                                             ; $6230: $bf
	ld b, e                                          ; $6231: $43
	ld e, a                                          ; $6232: $5f
	ld c, e                                          ; $6233: $4b
	ld e, a                                          ; $6234: $5f
	add hl, hl                                       ; $6235: $29
	add b                                            ; $6236: $80
	cpl                                              ; $6237: $2f
	dec h                                            ; $6238: $25
	xor a                                            ; $6239: $af
	ld e, l                                          ; $623a: $5d
	or a                                             ; $623b: $b7
	sbc d                                            ; $623c: $9a
	ld d, a                                          ; $623d: $57
	ld l, [hl]                                       ; $623e: $6e
	ld e, e                                          ; $623f: $5b
	add hl, sp                                       ; $6240: $39
	xor a                                            ; $6241: $af
	or l                                             ; $6242: $b5
	xor a                                            ; $6243: $af
	push de                                          ; $6244: $d5
	sbc a                                            ; $6245: $9f
	call nc, $c2df                                   ; $6246: $d4 $df $c2
	rst SubAFromDE                                          ; $6249: $df
	cp $cb                                           ; $624a: $fe $cb
	ld e, [hl]                                       ; $624c: $5e
	db $eb                                           ; $624d: $eb
	or l                                             ; $624e: $b5
	db $eb                                           ; $624f: $eb
	or a                                             ; $6250: $b7
	xor c                                            ; $6251: $a9
	dec sp                                           ; $6252: $3b
	and l                                            ; $6253: $a5
	ld a, c                                          ; $6254: $79
	ld h, l                                          ; $6255: $65
	add a                                            ; $6256: $87
	jp hl                                            ; $6257: $e9


	push af                                          ; $6258: $f5
	pop af                                           ; $6259: $f1
	rst FarCall                                          ; $625a: $f7
	ld [hl], l                                       ; $625b: $75
	rst FarCall                                          ; $625c: $f7
	push af                                          ; $625d: $f5
	rst FarCall                                          ; $625e: $f7
	or e                                             ; $625f: $b3
	or $b3                                           ; $6260: $f6 $b3
	cp $b2                                           ; $6262: $fe $b2
	cp $b6                                           ; $6264: $fe $b6
	db $fc                                           ; $6266: $fc
	or [hl]                                          ; $6267: $b6
	db $fc                                           ; $6268: $fc
	and $fc                                          ; $6269: $e6 $fc
	db $e4                                           ; $626b: $e4
	db $fc                                           ; $626c: $fc
	db $ec                                           ; $626d: $ec
	cp b                                             ; $626e: $b8
	ld [hl], a                                       ; $626f: $77
	cp $90                                           ; $6270: $fe $90
	db $fc                                           ; $6272: $fc
	jr nc, jr_069_62f1                               ; $6273: $30 $7c

	jr nc, jr_069_62f3                               ; $6275: $30 $7c

	jr nz, jr_069_62f6                               ; $6277: $20 $7d

	jr nz, @+$81                                     ; $6279: $20 $7f

	ld b, b                                          ; $627b: $40
	ld a, a                                          ; $627c: $7f
	ld [bc], a                                       ; $627d: $02
	ccf                                              ; $627e: $3f
	inc b                                            ; $627f: $04
	ld a, a                                          ; $6280: $7f
	ld a, e                                          ; $6281: $7b
	cp $7f                                           ; $6282: $fe $7f
	ld a, [$3f97]                                    ; $6284: $fa $97 $3f
	ld [bc], a                                       ; $6287: $02
	rst $38                                          ; $6288: $ff
	pop hl                                           ; $6289: $e1
	rra                                              ; $628a: $1f
	rst $38                                          ; $628b: $ff
	ld bc, $bf0f                                     ; $628c: $01 $0f $bf
	ld a, a                                          ; $628f: $7f
	rrca                                             ; $6290: $0f
	sbc c                                            ; $6291: $99
	inc bc                                           ; $6292: $03
	db $fc                                           ; $6293: $fc
	rlca                                             ; $6294: $07
	ld hl, sp+$0f                                    ; $6295: $f8 $0f
	jr nc, jr_069_6310                               ; $6297: $30 $77

	ld l, d                                          ; $6299: $6a
	sub a                                            ; $629a: $97
	ld h, b                                          ; $629b: $60
	ldh [$dc], a                                     ; $629c: $e0 $dc
	inc a                                            ; $629e: $3c
	ei                                               ; $629f: $fb
	rlca                                             ; $62a0: $07
	cp $01                                           ; $62a1: $fe $01
	ld [hl], a                                       ; $62a3: $77
	ld b, l                                          ; $62a4: $45
	adc d                                            ; $62a5: $8a
	ld a, c                                          ; $62a6: $79
	add [hl]                                         ; $62a7: $86
	ld bc, $09fe                                     ; $62a8: $01 $fe $09
	cp $13                                           ; $62ab: $fe $13
	db $fc                                           ; $62ad: $fc
	or e                                             ; $62ae: $b3
	db $fc                                           ; $62af: $fc
	ld h, a                                          ; $62b0: $67
	ld a, b                                          ; $62b1: $78
	ld h, a                                          ; $62b2: $67
	ld a, b                                          ; $62b3: $78
	ld c, a                                          ; $62b4: $4f
	ld [hl], b                                       ; $62b5: $70
	ldh a, [$c0]                                     ; $62b6: $f0 $c0
	ldh a, [$80]                                     ; $62b8: $f0 $80
	ldh [$63], a                                     ; $62ba: $e0 $63
	cp $9e                                           ; $62bc: $fe $9e
	ret nz                                           ; $62be: $c0

	ld [hl], e                                       ; $62bf: $73
	cp $9e                                           ; $62c0: $fe $9e
	pop bc                                           ; $62c2: $c1
	ld a, e                                          ; $62c3: $7b
	cp $9a                                           ; $62c4: $fe $9a
	add c                                            ; $62c6: $81
	add b                                            ; $62c7: $80
	add e                                            ; $62c8: $83
	add b                                            ; $62c9: $80
	add e                                            ; $62ca: $83
	cp a                                             ; $62cb: $bf
	add a                                            ; $62cc: $87
	ld hl, sp+$7f                                    ; $62cd: $f8 $7f
	cp e                                             ; $62cf: $bb
	ld a, e                                          ; $62d0: $7b
	cp $7c                                           ; $62d1: $fe $7c
	ld h, [hl]                                       ; $62d3: $66
	ld [hl], a                                       ; $62d4: $77
	cp $9d                                           ; $62d5: $fe $9d
	pop af                                           ; $62d7: $f1
	rrca                                             ; $62d8: $0f
	ld [hl], h                                       ; $62d9: $74
	ld d, d                                          ; $62da: $52
	adc e                                            ; $62db: $8b
	ldh [c], a                                       ; $62dc: $e2
	ld e, $e2                                        ; $62dd: $1e $e2
	ld e, $c2                                        ; $62df: $1e $c2
	ld a, $c4                                        ; $62e1: $3e $c4
	inc a                                            ; $62e3: $3c
	add h                                            ; $62e4: $84
	ld a, h                                          ; $62e5: $7c
	add h                                            ; $62e6: $84
	ld a, h                                          ; $62e7: $7c
	ld [$f8f8], sp                                   ; $62e8: $08 $f8 $f8
	ld [$10f0], sp                                   ; $62eb: $08 $f0 $10
	ldh [rAUD4LEN], a                                ; $62ee: $e0 $20
	ld a, c                                          ; $62f0: $79

jr_069_62f1:
	and d                                            ; $62f1: $a2
	ld a, [hl]                                       ; $62f2: $7e

jr_069_62f3:
	ld e, e                                          ; $62f3: $5b
	sbc [hl]                                         ; $62f4: $9e
	ld b, b                                          ; $62f5: $40

jr_069_62f6:
	db $dd                                           ; $62f6: $dd
	add b                                            ; $62f7: $80
	ld h, [hl]                                       ; $62f8: $66
	or $7b                                           ; $62f9: $f6 $7b
	pop af                                           ; $62fb: $f1
	sbc d                                            ; $62fc: $9a
	ret nz                                           ; $62fd: $c0

	and b                                            ; $62fe: $a0

jr_069_62ff:
	ld h, b                                          ; $62ff: $60
	and b                                            ; $6300: $a0
	ld h, b                                          ; $6301: $60
	rst FarCall                                          ; $6302: $f7
	rst SubAFromDE                                          ; $6303: $df
	ret nz                                           ; $6304: $c0

	ld a, a                                          ; $6305: $7f
	ldh a, [c]                                       ; $6306: $f2
	adc l                                            ; $6307: $8d
	ret c                                            ; $6308: $d8

	jr c, jr_069_62ff                                ; $6309: $38 $f4

	inc c                                            ; $630b: $0c
	cp $02                                           ; $630c: $fe $02
	db $fd                                           ; $630e: $fd
	inc bc                                           ; $630f: $03

jr_069_6310:
	pop af                                           ; $6310: $f1
	rrca                                             ; $6311: $0f
	pop bc                                           ; $6312: $c1
	ccf                                              ; $6313: $3f
	add d                                            ; $6314: $82
	ld a, [hl]                                       ; $6315: $7e
	add d                                            ; $6316: $82
	ld a, [hl]                                       ; $6317: $7e
	inc b                                            ; $6318: $04
	db $fc                                           ; $6319: $fc
	ld [hl], a                                       ; $631a: $77
	cp $7f                                           ; $631b: $fe $7f
	cp d                                             ; $631d: $ba
	ld l, a                                          ; $631e: $6f
	cp $7e                                           ; $631f: $fe $7e
	call c, $fe77                                    ; $6321: $dc $77 $fe
	ld a, e                                          ; $6324: $7b
	or e                                             ; $6325: $b3
	ld [hl], e                                       ; $6326: $73
	cp $77                                           ; $6327: $fe $77
	cp [hl]                                          ; $6329: $be
	ld [hl], a                                       ; $632a: $77
	cp $d7                                           ; $632b: $fe $d7
	add b                                            ; $632d: $80
	db $ed                                           ; $632e: $ed
	ld [hl+], a                                      ; $632f: $22
	nop                                              ; $6330: $00
	call c, $90bb                                    ; $6331: $dc $bb $90
	nop                                              ; $6334: $00
	cp e                                             ; $6335: $bb
	cp e                                             ; $6336: $bb
	sbc c                                            ; $6337: $99
	nop                                              ; $6338: $00
	ld de, $4400                                     ; $6339: $11 $00 $44
	sbc c                                            ; $633c: $99
	ld de, $9999                                     ; $633d: $11 $99 $99
	ld b, h                                          ; $6340: $44
	ld de, $7b00                                     ; $6341: $11 $00 $7b
	ei                                               ; $6344: $fb
	ld a, a                                          ; $6345: $7f
	pop af                                           ; $6346: $f1
	ld [hl], e                                       ; $6347: $73
	ei                                               ; $6348: $fb
	ld a, e                                          ; $6349: $7b
	db $ec                                           ; $634a: $ec
	ld a, e                                          ; $634b: $7b
	db $e3                                           ; $634c: $e3
	sbc [hl]                                         ; $634d: $9e

jr_069_634e:
	call z, $bbde                                    ; $634e: $cc $de $bb
	add hl, sp                                       ; $6351: $39
	ld bc, $1f80                                     ; $6352: $01 $80 $1f
	sbc d                                            ; $6355: $9a
	ld e, $b2                                        ; $6356: $1e $b2
	ld a, $b0                                        ; $6358: $3e $b0
	jr nc, @+$01                                     ; $635a: $30 $ff

	ld l, a                                          ; $635c: $6f
	rst $38                                          ; $635d: $ff
	ld e, a                                          ; $635e: $5f
	ldh a, [$7f]                                     ; $635f: $f0 $7f
	ret nz                                           ; $6361: $c0

	cp $8f                                           ; $6362: $fe $8f
	db $d3                                           ; $6364: $d3
	cp e                                             ; $6365: $bb
	ldh [c], a                                       ; $6366: $e2
	rst FarCall                                          ; $6367: $f7
	ld e, [hl]                                       ; $6368: $5e
	rst $38                                          ; $6369: $ff
	sub d                                            ; $636a: $92
	ld e, $3f                                        ; $636b: $1e $3f
	inc c                                            ; $636d: $0c
	adc d                                            ; $636e: $8a
	add b                                            ; $636f: $80
	sub l                                            ; $6370: $95
	add b                                            ; $6371: $80
	ret nz                                           ; $6372: $c0

	add b                                            ; $6373: $80
	add b                                            ; $6374: $80
	cp a                                             ; $6375: $bf
	ret nz                                           ; $6376: $c0

	cp a                                             ; $6377: $bf
	ret nz                                           ; $6378: $c0

	ld e, a                                          ; $6379: $5f

jr_069_637a:
	ld h, b                                          ; $637a: $60
	ld l, a                                          ; $637b: $6f
	ld [hl], b                                       ; $637c: $70
	ld d, a                                          ; $637d: $57
	ld e, b                                          ; $637e: $58
	dec e                                            ; $637f: $1d
	ld e, $17                                        ; $6380: $1e $17
	rra                                              ; $6382: $1f
	sub c                                            ; $6383: $91
	sbc a                                            ; $6384: $9f
	ld d, h                                          ; $6385: $54
	db $db                                           ; $6386: $db
	ld d, l                                          ; $6387: $55
	jp c, $fb34                                      ; $6388: $da $34 $fb

	ld d, $f9                                        ; $638b: $16 $f9
	ld a, [bc]                                       ; $638d: $0a
	db $fd                                           ; $638e: $fd
	ld h, [hl]                                       ; $638f: $66
	sbc l                                            ; $6390: $9d
	ld [hl], h                                       ; $6391: $74
	adc a                                            ; $6392: $8f
	sbc l                                            ; $6393: $9d
	cp [hl]                                          ; $6394: $be
	jp $1cde                                         ; $6395: $c3 $de $1c


	rst SubAFromDE                                          ; $6398: $df
	jr jr_069_637a                                   ; $6399: $18 $df

	db $10                                           ; $639b: $10
	rst SubAFromDE                                          ; $639c: $df
	add b                                            ; $639d: $80
	sbc l                                            ; $639e: $9d
	ret nz                                           ; $639f: $c0

	ldh [$be], a                                     ; $63a0: $e0 $be
	ldh [$c0], a                                     ; $63a2: $e0 $c0
	nop                                              ; $63a4: $00
	sbc $80                                          ; $63a5: $de $80
	rst $38                                          ; $63a7: $ff
	sbc [hl]                                         ; $63a8: $9e
	ld [bc], a                                       ; $63a9: $02
	cp a                                             ; $63aa: $bf
	ld [bc], a                                       ; $63ab: $02
	ld bc, $0280                                     ; $63ac: $01 $80 $02

jr_069_63af:
	inc bc                                           ; $63af: $03
	ld b, $04                                        ; $63b0: $06 $04
	ld [bc], a                                       ; $63b2: $02
	ld a, $17                                        ; $63b3: $3e $17
	ld e, $03                                        ; $63b5: $1e $03
	ccf                                              ; $63b7: $3f
	inc bc                                           ; $63b8: $03
	ccf                                              ; $63b9: $3f
	ld bc, $3d63                                     ; $63ba: $01 $63 $3d
	ld e, h                                          ; $63bd: $5c
	ccf                                              ; $63be: $3f
	rst $38                                          ; $63bf: $ff
	inc bc                                           ; $63c0: $03
	rst FarCall                                          ; $63c1: $f7
	jr c, jr_069_63af                                ; $63c2: $38 $eb

	ld l, h                                          ; $63c4: $6c
	rst SubAFromDE                                          ; $63c5: $df
	ld e, [hl]                                       ; $63c6: $5e
	ld b, a                                          ; $63c7: $47
	ld a, a                                          ; $63c8: $7f
	dec hl                                           ; $63c9: $2b
	ld l, h                                          ; $63ca: $6c
	ld d, a                                          ; $63cb: $57
	jr c, jr_069_634e                                ; $63cc: $38 $80

	cpl                                              ; $63ce: $2f
	ld bc, $0157                                     ; $63cf: $01 $57 $01
	dec c                                            ; $63d2: $0d
	inc bc                                           ; $63d3: $03
	di                                               ; $63d4: $f3
	rrca                                             ; $63d5: $0f
	di                                               ; $63d6: $f3
	rrca                                             ; $63d7: $0f
	and $1e                                          ; $63d8: $e6 $1e
	and $1e                                          ; $63da: $e6 $1e
	call z, $9c3c                                    ; $63dc: $cc $3c $9c
	ld a, h                                          ; $63df: $7c
	dec l                                            ; $63e0: $2d
	db $ed                                           ; $63e1: $ed
	ld c, d                                          ; $63e2: $4a
	set 2, h                                         ; $63e3: $cb $d4
	rst SubAFromHL                                          ; $63e5: $d7
	ret z                                            ; $63e6: $c8

	rst GetHLinHL                                          ; $63e7: $cf
	ret z                                            ; $63e8: $c8

	rst GetHLinHL                                          ; $63e9: $cf
	ret nc                                           ; $63ea: $d0

	rst SubAFromDE                                          ; $63eb: $df
	ld [hl], d                                       ; $63ec: $72
	sbc b                                            ; $63ed: $98
	rst $38                                          ; $63ee: $ff
	ld h, l                                          ; $63ef: $65
	rst $38                                          ; $63f0: $ff
	ld h, a                                          ; $63f1: $67
	db $fd                                           ; $63f2: $fd
	ld c, a                                          ; $63f3: $4f
	ld hl, sp+$4f                                    ; $63f4: $f8 $4f
	ld h, b                                          ; $63f6: $60
	sbc d                                            ; $63f7: $9a
	pop af                                           ; $63f8: $f1
	adc [hl]                                         ; $63f9: $8e
	rst SubAFromDE                                          ; $63fa: $df
	cp a                                             ; $63fb: $bf
	di                                               ; $63fc: $f3
	ld d, e                                          ; $63fd: $53
	ld h, b                                          ; $63fe: $60
	ld b, a                                          ; $63ff: $47
	add b                                            ; $6400: $80
	ld a, a                                          ; $6401: $7f
	add e                                            ; $6402: $83
	rla                                              ; $6403: $17
	add b                                            ; $6404: $80
	sbc d                                            ; $6405: $9a
	rst $38                                          ; $6406: $ff
	nop                                              ; $6407: $00
	cp e                                             ; $6408: $bb
	ld a, h                                          ; $6409: $7c
	db $dd                                           ; $640a: $dd
	ld d, e                                          ; $640b: $53
	add b                                            ; $640c: $80
	ld c, a                                          ; $640d: $4f
	and b                                            ; $640e: $a0
	sub l                                            ; $640f: $95
	rst $38                                          ; $6410: $ff
	add b                                            ; $6411: $80
	pop af                                           ; $6412: $f1
	add b                                            ; $6413: $80
	xor $9f                                          ; $6414: $ee $9f
	ld a, e                                          ; $6416: $7b
	ei                                               ; $6417: $fb
	sub d                                            ; $6418: $92
	rra                                              ; $6419: $1f
	dec de                                           ; $641a: $1b
	and b                                            ; $641b: $a0
	ld a, e                                          ; $641c: $7b
	sbc [hl]                                         ; $641d: $9e
	rra                                              ; $641e: $1f
	and b                                            ; $641f: $a0
	sub a                                            ; $6420: $97
	rst GetHLinHL                                          ; $6421: $cf
	nop                                              ; $6422: $00
	db $db                                           ; $6423: $db
	inc a                                            ; $6424: $3c
	dec [hl]                                         ; $6425: $35
	ld a, [hl]                                       ; $6426: $7e
	ld l, [hl]                                       ; $6427: $6e
	ld l, a                                          ; $6428: $6f
	daa                                              ; $6429: $27
	and b                                            ; $642a: $a0
	sub l                                            ; $642b: $95
	ld hl, sp-$80                                    ; $642c: $f8 $80
	ldh a, [$80]                                     ; $642e: $f0 $80
	ld a, a                                          ; $6430: $7f
	add b                                            ; $6431: $80
	and b                                            ; $6432: $a0
	ld sp, $1f3f                                     ; $6433: $31 $3f $1f
	cpl                                              ; $6436: $2f
	and b                                            ; $6437: $a0
	ld a, d                                          ; $6438: $7a
	cp [hl]                                          ; $6439: $be
	cp a                                             ; $643a: $bf
	nop                                              ; $643b: $00
	add d                                            ; $643c: $82
	ld a, e                                          ; $643d: $7b
	sbc [hl]                                         ; $643e: $9e
	daa                                              ; $643f: $27
	and b                                            ; $6440: $a0
	sbc [hl]                                         ; $6441: $9e
	rlca                                             ; $6442: $07
	cp a                                             ; $6443: $bf
	ld a, a                                          ; $6444: $7f
	ld h, l                                          ; $6445: $65
	sbc h                                            ; $6446: $9c
	ld b, [hl]                                       ; $6447: $46
	ld a, e                                          ; $6448: $7b
	inc a                                            ; $6449: $3c
	ld l, a                                          ; $644a: $6f
	and b                                            ; $644b: $a0
	rst $38                                          ; $644c: $ff
	sbc d                                            ; $644d: $9a
	ld a, [de]                                       ; $644e: $1a
	ld de, $0a04                                     ; $644f: $11 $04 $0a
	nop                                              ; $6452: $00
	cp l                                             ; $6453: $bd
	inc c                                            ; $6454: $0c
	nop                                              ; $6455: $00
	nop                                              ; $6456: $00
	pop bc                                           ; $6457: $c1
	sub e                                            ; $6458: $93
	add b                                            ; $6459: $80
	db $e3                                           ; $645a: $e3
	pop af                                           ; $645b: $f1
	ld a, a                                          ; $645c: $7f
	ccf                                              ; $645d: $3f
	ccf                                              ; $645e: $3f
	rra                                              ; $645f: $1f
	rra                                              ; $6460: $1f
	rrca                                             ; $6461: $0f
	rlca                                             ; $6462: $07
	inc bc                                           ; $6463: $03
	add e                                            ; $6464: $83
	cp l                                             ; $6465: $bd
	pop bc                                           ; $6466: $c1
	pop bc                                           ; $6467: $c1
	nop                                              ; $6468: $00
	rra                                              ; $6469: $1f
	sbc d                                            ; $646a: $9a
	add hl, de                                       ; $646b: $19
	rra                                              ; $646c: $1f
	ld [de], a                                       ; $646d: $12
	inc c                                            ; $646e: $0c
	ld c, $6f                                        ; $646f: $0e $6f
	sbc $33                                          ; $6471: $de $33
	ldh [$9a], a                                     ; $6473: $e0 $9a
	dec e                                            ; $6475: $1d
	rra                                              ; $6476: $1f
	ld a, [de]                                       ; $6477: $1a
	inc e                                            ; $6478: $1c
	ld c, $77                                        ; $6479: $0e $77
	ldh [c], a                                       ; $647b: $e2
	sbc [hl]                                         ; $647c: $9e
	inc b                                            ; $647d: $04
	cpl                                              ; $647e: $2f
	ldh [$df], a                                     ; $647f: $e0 $df
	rra                                              ; $6481: $1f
	rst SubAFromDE                                          ; $6482: $df
	ld e, $9c                                        ; $6483: $1e $9c
	ld a, [bc]                                       ; $6485: $0a
	ld c, $04                                        ; $6486: $0e $04
	cpl                                              ; $6488: $2f
	ldh [$4c], a                                     ; $6489: $e0 $4c
	ld bc, $1f85                                     ; $648b: $01 $85 $1f
	sbc d                                            ; $648e: $9a
	ld e, $b2                                        ; $648f: $1e $b2
	ld [hl], $bf                                     ; $6491: $36 $bf
	add hl, sp                                       ; $6493: $39
	rst $38                                          ; $6494: $ff
	ld a, a                                          ; $6495: $7f
	ldh [$5f], a                                     ; $6496: $e0 $5f
	xor $73                                          ; $6498: $ee $73
	rst SubAFromDE                                          ; $649a: $df
	db $e3                                           ; $649b: $e3
	or e                                             ; $649c: $b3
	and $f7                                          ; $649d: $e6 $f7
	cp d                                             ; $649f: $ba
	cp $12                                           ; $64a0: $fe $12
	cp [hl]                                          ; $64a2: $be
	sub d                                            ; $64a3: $92
	ld a, [de]                                       ; $64a4: $1a
	ccf                                              ; $64a5: $3f
	inc c                                            ; $64a6: $0c
	db $dd                                           ; $64a7: $dd
	add b                                            ; $64a8: $80
	add b                                            ; $64a9: $80
	ret nz                                           ; $64aa: $c0

	add b                                            ; $64ab: $80
	cp a                                             ; $64ac: $bf
	ret nz                                           ; $64ad: $c0

	cp a                                             ; $64ae: $bf
	ret nz                                           ; $64af: $c0

	ld e, a                                          ; $64b0: $5f

jr_069_64b1:
	ld h, b                                          ; $64b1: $60
	ld l, a                                          ; $64b2: $6f
	ld [hl], b                                       ; $64b3: $70
	ld d, a                                          ; $64b4: $57
	ld e, b                                          ; $64b5: $58
	dec e                                            ; $64b6: $1d
	ld e, $17                                        ; $64b7: $1e $17
	rra                                              ; $64b9: $1f
	sub c                                            ; $64ba: $91
	sbc a                                            ; $64bb: $9f
	ld d, h                                          ; $64bc: $54
	db $db                                           ; $64bd: $db
	ld d, l                                          ; $64be: $55
	jp c, $fb34                                      ; $64bf: $da $34 $fb

	ld d, $f9                                        ; $64c2: $16 $f9
	ld a, [bc]                                       ; $64c4: $0a
	db $fd                                           ; $64c5: $fd
	ld h, [hl]                                       ; $64c6: $66
	sbc l                                            ; $64c7: $9d
	ld [hl], h                                       ; $64c8: $74
	sbc h                                            ; $64c9: $9c
	adc a                                            ; $64ca: $8f
	cp [hl]                                          ; $64cb: $be
	jp $1cde                                         ; $64cc: $c3 $de $1c


	rst SubAFromDE                                          ; $64cf: $df
	jr jr_069_64b1                                   ; $64d0: $18 $df

	db $10                                           ; $64d2: $10
	ld a, e                                          ; $64d3: $7b
	sub $9a                                          ; $64d4: $d6 $9a
	ldh [rP1], a                                     ; $64d6: $e0 $00
	ldh [rP1], a                                     ; $64d8: $e0 $00
	ld b, b                                          ; $64da: $40
	call c, $ff80                                    ; $64db: $dc $80 $ff
	sbc [hl]                                         ; $64de: $9e
	ld [bc], a                                       ; $64df: $02
	ld a, e                                          ; $64e0: $7b
	cp $80                                           ; $64e1: $fe $80
	ld bc, $0302                                     ; $64e3: $01 $02 $03
	ld b, $04                                        ; $64e6: $06 $04
	ld [bc], a                                       ; $64e8: $02
	ld a, $17                                        ; $64e9: $3e $17
	ld e, $03                                        ; $64eb: $1e $03
	rra                                              ; $64ed: $1f
	ccf                                              ; $64ee: $3f
	inc hl                                           ; $64ef: $23
	ld a, a                                          ; $64f0: $7f
	ld a, a                                          ; $64f1: $7f
	ld bc, $3956                                     ; $64f2: $01 $56 $39
	xor e                                            ; $64f5: $ab
	ld a, h                                          ; $64f6: $7c
	rst GetHLinHL                                          ; $64f7: $cf
	ld c, [hl]                                       ; $64f8: $4e
	db $fd                                           ; $64f9: $fd
	ld a, a                                          ; $64fa: $7f
	push de                                          ; $64fb: $d5
	ld a, h                                          ; $64fc: $7c
	ld b, l                                          ; $64fd: $45
	ld a, h                                          ; $64fe: $7c
	dec hl                                           ; $64ff: $2b
	ld l, h                                          ; $6500: $6c
	ld d, a                                          ; $6501: $57
	add b                                            ; $6502: $80
	jr c, jr_069_650c                                ; $6503: $38 $07

	ld bc, $010f                                     ; $6505: $01 $0f $01
	dec c                                            ; $6508: $0d
	inc bc                                           ; $6509: $03
	di                                               ; $650a: $f3
	rrca                                             ; $650b: $0f

jr_069_650c:
	di                                               ; $650c: $f3
	rrca                                             ; $650d: $0f
	and $1e                                          ; $650e: $e6 $1e
	and $1e                                          ; $6510: $e6 $1e
	call z, $9c3c                                    ; $6512: $cc $3c $9c
	ld a, h                                          ; $6515: $7c
	dec l                                            ; $6516: $2d
	db $ed                                           ; $6517: $ed
	ld c, d                                          ; $6518: $4a
	set 2, h                                         ; $6519: $cb $d4
	rst SubAFromHL                                          ; $651b: $d7
	ret z                                            ; $651c: $c8

	rst GetHLinHL                                          ; $651d: $cf
	ret z                                            ; $651e: $c8

	rst GetHLinHL                                          ; $651f: $cf
	ret nc                                           ; $6520: $d0

	rst SubAFromDE                                          ; $6521: $df
	sub a                                            ; $6522: $97
	ld [hl], d                                       ; $6523: $72
	rst $38                                          ; $6524: $ff
	ld h, l                                          ; $6525: $65
	rst $38                                          ; $6526: $ff
	ld h, a                                          ; $6527: $67
	db $fd                                           ; $6528: $fd
	ld c, a                                          ; $6529: $4f
	ld hl, sp+$5b                                    ; $652a: $f8 $5b
	ld h, b                                          ; $652c: $60
	sub a                                            ; $652d: $97
	ldh [$71], a                                     ; $652e: $e0 $71
	adc $df                                          ; $6530: $ce $df
	cp a                                             ; $6532: $bf
	or [hl]                                          ; $6533: $b6
	rst FarCall                                          ; $6534: $f7
	ld a, [$6053]                                    ; $6535: $fa $53 $60
	ld c, a                                          ; $6538: $4f
	add b                                            ; $6539: $80
	sbc l                                            ; $653a: $9d
	ret nz                                           ; $653b: $c0

	nop                                              ; $653c: $00
	rra                                              ; $653d: $1f
	add b                                            ; $653e: $80
	sub l                                            ; $653f: $95
	ld a, [hl]                                       ; $6540: $7e
	ld bc, $18e7                                     ; $6541: $01 $e7 $18
	db $fd                                           ; $6544: $fd
	ld a, $ee                                        ; $6545: $3e $ee
	ld l, a                                          ; $6547: $6f
	push de                                          ; $6548: $d5
	ld a, a                                          ; $6549: $7f
	ld d, a                                          ; $654a: $57
	add b                                            ; $654b: $80
	ld d, a                                          ; $654c: $57
	and b                                            ; $654d: $a0
	sub e                                            ; $654e: $93
	ld a, a                                          ; $654f: $7f
	ret nz                                           ; $6550: $c0

	rst $38                                          ; $6551: $ff
	add b                                            ; $6552: $80
	or e                                             ; $6553: $b3
	ret nz                                           ; $6554: $c0

	xor $9f                                          ; $6555: $ee $9f
	ld [hl], l                                       ; $6557: $75
	rst $38                                          ; $6558: $ff
	sub d                                            ; $6559: $92
	dec de                                           ; $655a: $1b
	inc hl                                           ; $655b: $23
	and b                                            ; $655c: $a0
	ld [hl], a                                       ; $655d: $77
	cp $9b                                           ; $655e: $fe $9b
	add b                                            ; $6560: $80
	ld [bc], a                                       ; $6561: $02
	nop                                              ; $6562: $00
	add d                                            ; $6563: $82
	dec sp                                           ; $6564: $3b
	and b                                            ; $6565: $a0
	sub e                                            ; $6566: $93
	rst $38                                          ; $6567: $ff
	nop                                              ; $6568: $00
	rst $38                                          ; $6569: $ff
	nop                                              ; $656a: $00
	rst JumpTable                                          ; $656b: $c7
	ld [$7ebd], sp                                   ; $656c: $08 $bd $7e
	ld h, a                                          ; $656f: $67
	ld l, a                                          ; $6570: $6f
	dec hl                                           ; $6571: $2b
	ld a, h                                          ; $6572: $7c
	daa                                              ; $6573: $27
	and b                                            ; $6574: $a0
	sub l                                            ; $6575: $95
	pop af                                           ; $6576: $f1
	add b                                            ; $6577: $80
	ldh [$80], a                                     ; $6578: $e0 $80
	ccf                                              ; $657a: $3f
	add b                                            ; $657b: $80
	and c                                            ; $657c: $a1
	ld sp, $1f7e                                     ; $657d: $31 $7e $1f
	daa                                              ; $6580: $27
	and b                                            ; $6581: $a0
	db $fd                                           ; $6582: $fd
	sbc h                                            ; $6583: $9c
	add d                                            ; $6584: $82
	add b                                            ; $6585: $80
	jp nz, $a02b                                     ; $6586: $c2 $2b $a0

	sub l                                            ; $6589: $95
	ld b, a                                          ; $658a: $47
	nop                                              ; $658b: $00
	inc bc                                           ; $658c: $03
	nop                                              ; $658d: $00
	ld a, a                                          ; $658e: $7f
	ld [bc], a                                       ; $658f: $02
	ld b, a                                          ; $6590: $47
	ld b, h                                          ; $6591: $44
	ld a, e                                          ; $6592: $7b
	inc a                                            ; $6593: $3c
	ld l, a                                          ; $6594: $6f
	and b                                            ; $6595: $a0
	rst $38                                          ; $6596: $ff
	sub a                                            ; $6597: $97
	ld d, $1b                                        ; $6598: $16 $1b
	jr jr_069_65a6                                   ; $659a: $18 $0a

	inc c                                            ; $659c: $0c

jr_069_659d:
	inc b                                            ; $659d: $04
	nop                                              ; $659e: $00
	nop                                              ; $659f: $00
	ld a, e                                          ; $65a0: $7b
	db $fd                                           ; $65a1: $fd
	adc a                                            ; $65a2: $8f
	nop                                              ; $65a3: $00
	pop bc                                           ; $65a4: $c1
	add b                                            ; $65a5: $80

jr_069_65a6:
	db $e3                                           ; $65a6: $e3
	pop af                                           ; $65a7: $f1
	ld a, a                                          ; $65a8: $7f
	ccf                                              ; $65a9: $3f
	ccf                                              ; $65aa: $3f
	rra                                              ; $65ab: $1f
	rra                                              ; $65ac: $1f
	rrca                                             ; $65ad: $0f
	rlca                                             ; $65ae: $07
	inc bc                                           ; $65af: $03
	add e                                            ; $65b0: $83
	nop                                              ; $65b1: $00
	pop bc                                           ; $65b2: $c1
	ld a, e                                          ; $65b3: $7b
	cp $77                                           ; $65b4: $fe $77
	ldh [$df], a                                     ; $65b6: $e0 $df
	ld e, $9d                                        ; $65b8: $1e $9d
	ld c, $0c                                        ; $65ba: $0e $0c
	rra                                              ; $65bc: $1f
	ldh [$99], a                                     ; $65bd: $e0 $99
	ld a, $1f                                        ; $65bf: $3e $1f
	ld e, $16                                        ; $65c1: $1e $16
	ld e, $0c                                        ; $65c3: $1e $0c
	ld l, a                                          ; $65c5: $6f
	cp [hl]                                          ; $65c6: $be
	inc sp                                           ; $65c7: $33
	ldh [$df], a                                     ; $65c8: $e0 $df
	ccf                                              ; $65ca: $3f
	rst SubAFromDE                                          ; $65cb: $df
	ld e, $9d                                        ; $65cc: $1e $9d
	inc d                                            ; $65ce: $14
	inc c                                            ; $65cf: $0c

jr_069_65d0:
	ld a, e                                          ; $65d0: $7b
	cp [hl]                                          ; $65d1: $be
	ld a, a                                          ; $65d2: $7f
	db $fd                                           ; $65d3: $fd
	ccf                                              ; $65d4: $3f
	ldh [rOBP0], a                                   ; $65d5: $e0 $48
	ld bc, $1f85                                     ; $65d7: $01 $85 $1f
	sbc d                                            ; $65da: $9a
	ld e, $b2                                        ; $65db: $1e $b2
	jr nc, jr_069_659d                               ; $65dd: $30 $be

	ld a, $ff                                        ; $65df: $3e $ff
	ld l, l                                          ; $65e1: $6d
	di                                               ; $65e2: $f3
	ld e, a                                          ; $65e3: $5f
	ldh [$6e], a                                     ; $65e4: $e0 $6e
	rst SubAFromDE                                          ; $65e6: $df
	db $d3                                           ; $65e7: $d3
	or e                                             ; $65e8: $b3
	ldh [c], a                                       ; $65e9: $e2
	and a                                            ; $65ea: $a7
	xor $fe                                          ; $65eb: $ee $fe
	ld e, $be                                        ; $65ed: $1e $be
	sub d                                            ; $65ef: $92
	ld e, $3f                                        ; $65f0: $1e $3f
	inc c                                            ; $65f2: $0c
	db $dd                                           ; $65f3: $dd
	add b                                            ; $65f4: $80
	add b                                            ; $65f5: $80
	ret nz                                           ; $65f6: $c0

	add b                                            ; $65f7: $80
	cp a                                             ; $65f8: $bf
	ret nz                                           ; $65f9: $c0

	cp a                                             ; $65fa: $bf
	ret nz                                           ; $65fb: $c0

	ld e, a                                          ; $65fc: $5f
	ld h, b                                          ; $65fd: $60
	ld l, a                                          ; $65fe: $6f
	ld [hl], b                                       ; $65ff: $70
	ld d, a                                          ; $6600: $57
	ld e, b                                          ; $6601: $58
	dec e                                            ; $6602: $1d
	ld e, $17                                        ; $6603: $1e $17
	rra                                              ; $6605: $1f
	sub c                                            ; $6606: $91
	sbc a                                            ; $6607: $9f
	ld d, h                                          ; $6608: $54
	db $db                                           ; $6609: $db
	ld d, l                                          ; $660a: $55
	jp c, $fb34                                      ; $660b: $da $34 $fb

	ld d, $f9                                        ; $660e: $16 $f9
	ld a, [bc]                                       ; $6610: $0a
	db $fd                                           ; $6611: $fd
	ld h, [hl]                                       ; $6612: $66
	sbc l                                            ; $6613: $9d
	ld [hl], h                                       ; $6614: $74
	sbc h                                            ; $6615: $9c
	adc a                                            ; $6616: $8f
	cp [hl]                                          ; $6617: $be
	jp $1cde                                         ; $6618: $c3 $de $1c


	rst SubAFromDE                                          ; $661b: $df
	jr @-$65                                         ; $661c: $18 $99

	db $10                                           ; $661e: $10
	sub b                                            ; $661f: $90
	nop                                              ; $6620: $00
	ld b, b                                          ; $6621: $40
	add b                                            ; $6622: $80
	ldh [$bf], a                                     ; $6623: $e0 $bf
	ldh [rLCDC], a                                   ; $6625: $e0 $40
	call c, $ff80                                    ; $6627: $dc $80 $ff
	sbc [hl]                                         ; $662a: $9e
	ld [bc], a                                       ; $662b: $02
	cp a                                             ; $662c: $bf
	ld [bc], a                                       ; $662d: $02
	ld bc, $0280                                     ; $662e: $01 $80 $02
	inc bc                                           ; $6631: $03
	ld b, $04                                        ; $6632: $06 $04
	ld [bc], a                                       ; $6634: $02
	ld a, $17                                        ; $6635: $3e $17
	ld e, $03                                        ; $6637: $1e $03
	inc hl                                           ; $6639: $23
	rra                                              ; $663a: $1f
	ld e, a                                          ; $663b: $5f
	ccf                                              ; $663c: $3f
	cpl                                              ; $663d: $2f
	ld [hl], c                                       ; $663e: $71
	ld a, [hl]                                       ; $663f: $7e
	ld bc, $3cfb                                     ; $6640: $01 $fb $3c
	rst GetHLinHL                                          ; $6643: $cf
	ld c, [hl]                                       ; $6644: $4e
	db $dd                                           ; $6645: $dd
	ld e, a                                          ; $6646: $5f
	push af                                          ; $6647: $f5
	ld a, h                                          ; $6648: $7c
	ld d, l                                          ; $6649: $55
	ld a, h                                          ; $664a: $7c
	dec hl                                           ; $664b: $2b
	ld a, h                                          ; $664c: $7c
	ld d, a                                          ; $664d: $57
	jr c, jr_069_65d0                                ; $664e: $38 $80

	rlca                                             ; $6650: $07
	ld bc, $010f                                     ; $6651: $01 $0f $01
	dec c                                            ; $6654: $0d
	inc bc                                           ; $6655: $03
	di                                               ; $6656: $f3
	rrca                                             ; $6657: $0f
	di                                               ; $6658: $f3
	rrca                                             ; $6659: $0f
	and $1e                                          ; $665a: $e6 $1e
	and $1e                                          ; $665c: $e6 $1e
	call z, $9c3c                                    ; $665e: $cc $3c $9c
	ld a, h                                          ; $6661: $7c
	dec l                                            ; $6662: $2d
	db $ed                                           ; $6663: $ed
	ld c, d                                          ; $6664: $4a
	set 2, h                                         ; $6665: $cb $d4
	rst SubAFromHL                                          ; $6667: $d7
	ret z                                            ; $6668: $c8

	rst GetHLinHL                                          ; $6669: $cf
	ret z                                            ; $666a: $c8

	rst GetHLinHL                                          ; $666b: $cf
	ret nc                                           ; $666c: $d0

	rst SubAFromDE                                          ; $666d: $df
	ld [hl], d                                       ; $666e: $72
	sbc b                                            ; $666f: $98
	rst $38                                          ; $6670: $ff
	ld h, l                                          ; $6671: $65
	rst $38                                          ; $6672: $ff
	ld h, a                                          ; $6673: $67
	db $fd                                           ; $6674: $fd
	ld c, a                                          ; $6675: $4f
	ld hl, sp+$57                                    ; $6676: $f8 $57
	ld h, b                                          ; $6678: $60
	sub l                                            ; $6679: $95
	ld a, a                                          ; $667a: $7f
	ret nz                                           ; $667b: $c0

	rst SubAFromBC                                          ; $667c: $e7

Jump_069_667d:
	sbc a                                            ; $667d: $9f
	rst SubAFromDE                                          ; $667e: $df
	cp a                                             ; $667f: $bf
	ldh a, [c]                                       ; $6680: $f2
	rst FarCall                                          ; $6681: $f7
	ld e, [hl]                                       ; $6682: $5e
	cp $5f                                           ; $6683: $fe $5f
	ld h, b                                          ; $6685: $60
	ld c, a                                          ; $6686: $4f
	add b                                            ; $6687: $80
	sbc l                                            ; $6688: $9d
	ret nz                                           ; $6689: $c0

	nop                                              ; $668a: $00
	ld [hl], e                                       ; $668b: $73
	add b                                            ; $668c: $80
	sbc [hl]                                         ; $668d: $9e
	add b                                            ; $668e: $80
	cpl                                              ; $668f: $2f
	add b                                            ; $6690: $80
	sub l                                            ; $6691: $95
	rst $38                                          ; $6692: $ff
	nop                                              ; $6693: $00

jr_069_6694:
	rst FarCall                                          ; $6694: $f7
	jr c, jr_069_6694                                ; $6695: $38 $fd

	ld a, [hl]                                       ; $6697: $7e
	sbc $5f                                          ; $6698: $de $5f
	ld d, e                                          ; $669a: $53
	ld a, a                                          ; $669b: $7f
	ld e, a                                          ; $669c: $5f
	add b                                            ; $669d: $80
	ld c, a                                          ; $669e: $4f
	and b                                            ; $669f: $a0
	sub l                                            ; $66a0: $95
	rst $38                                          ; $66a1: $ff
	add b                                            ; $66a2: $80
	pop hl                                           ; $66a3: $e1
	sub b                                            ; $66a4: $90
	sbc $bf                                          ; $66a5: $de $bf
	ld [hl], e                                       ; $66a7: $73
	rst FarCall                                          ; $66a8: $f7
	sub [hl]                                         ; $66a9: $96
	ccf                                              ; $66aa: $3f
	inc hl                                           ; $66ab: $23
	and b                                            ; $66ac: $a0
	cp a                                             ; $66ad: $bf
	nop                                              ; $66ae: $00
	add b                                            ; $66af: $80
	inc hl                                           ; $66b0: $23
	and b                                            ; $66b1: $a0
	ld a, a                                          ; $66b2: $7f
	cp $96                                           ; $66b3: $fe $96
	ld b, e                                          ; $66b5: $43
	inc b                                            ; $66b6: $04
	dec l                                            ; $66b7: $2d
	ld a, [hl]                                       ; $66b8: $7e
	ld d, a                                          ; $66b9: $57
	ld a, a                                          ; $66ba: $7f
	ccf                                              ; $66bb: $3f
	ld a, h                                          ; $66bc: $7c
	ld b, a                                          ; $66bd: $47
	dec hl                                           ; $66be: $2b
	and b                                            ; $66bf: $a0
	sub l                                            ; $66c0: $95
	pop af                                           ; $66c1: $f1
	add b                                            ; $66c2: $80
	ldh [$80], a                                     ; $66c3: $e0 $80
	ld a, h                                          ; $66c5: $7c
	add b                                            ; $66c6: $80
	or c                                             ; $66c7: $b1
	jr nc, @+$41                                     ; $66c8: $30 $3f

	rrca                                             ; $66ca: $0f
	rra                                              ; $66cb: $1f
	and b                                            ; $66cc: $a0
	rst $38                                          ; $66cd: $ff
	sbc [hl]                                         ; $66ce: $9e
	add d                                            ; $66cf: $82
	ld a, e                                          ; $66d0: $7b
	sbc [hl]                                         ; $66d1: $9e
	cpl                                              ; $66d2: $2f
	and b                                            ; $66d3: $a0
	sbc [hl]                                         ; $66d4: $9e
	ld b, a                                          ; $66d5: $47
	cp [hl]                                          ; $66d6: $be
	inc bc                                           ; $66d7: $03
	ld a, a                                          ; $66d8: $7f
	ld b, a                                          ; $66d9: $47
	sbc h                                            ; $66da: $9c
	ld b, d                                          ; $66db: $42
	ld a, a                                          ; $66dc: $7f
	inc a                                            ; $66dd: $3c
	ld l, a                                          ; $66de: $6f
	and b                                            ; $66df: $a0
	rst $38                                          ; $66e0: $ff
	sbc l                                            ; $66e1: $9d
	rra                                              ; $66e2: $1f
	inc de                                           ; $66e3: $13
	cp a                                             ; $66e4: $bf
	ld a, [bc]                                       ; $66e5: $0a
	nop                                              ; $66e6: $00
	sbc [hl]                                         ; $66e7: $9e
	inc c                                            ; $66e8: $0c
	cp [hl]                                          ; $66e9: $be
	nop                                              ; $66ea: $00
	nop                                              ; $66eb: $00
	pop bc                                           ; $66ec: $c1
	sub e                                            ; $66ed: $93
	add b                                            ; $66ee: $80
	db $e3                                           ; $66ef: $e3
	pop af                                           ; $66f0: $f1
	ld a, a                                          ; $66f1: $7f
	ccf                                              ; $66f2: $3f
	ccf                                              ; $66f3: $3f
	rra                                              ; $66f4: $1f
	rra                                              ; $66f5: $1f
	rrca                                             ; $66f6: $0f
	rlca                                             ; $66f7: $07
	inc bc                                           ; $66f8: $03
	add e                                            ; $66f9: $83
	cp l                                             ; $66fa: $bd
	pop bc                                           ; $66fb: $c1
	pop bc                                           ; $66fc: $c1
	nop                                              ; $66fd: $00
	rra                                              ; $66fe: $1f

jr_069_66ff:
	sbc h                                            ; $66ff: $9c
	dec de                                           ; $6700: $1b
	ld e, $0e                                        ; $6701: $1e $0e
	rla                                              ; $6703: $17
	ldh [$7f], a                                     ; $6704: $e0 $7f
	ldh a, [c]                                       ; $6706: $f2
	sbc h                                            ; $6707: $9c
	ld e, $16                                        ; $6708: $1e $16
	ld e, $7b                                        ; $670a: $1e $7b
	pop hl                                           ; $670c: $e1
	ld [hl], a                                       ; $670d: $77
	sbc $33                                          ; $670e: $de $33
	ldh [$99], a                                     ; $6710: $e0 $99
	dec sp                                           ; $6712: $3b
	ld a, $1e                                        ; $6713: $3e $1e
	ld e, $14                                        ; $6715: $1e $14
	inc c                                            ; $6717: $0c

jr_069_6718:
	ld a, e                                          ; $6718: $7b
	pop hl                                           ; $6719: $e1
	sbc [hl]                                         ; $671a: $9e
	inc b                                            ; $671b: $04
	dec sp                                           ; $671c: $3b
	ldh [$3f], a                                     ; $671d: $e0 $3f
	ld bc, $1f85                                     ; $671f: $01 $85 $1f
	sbc d                                            ; $6722: $9a
	ld e, $b2                                        ; $6723: $1e $b2
	ld [hl-], a                                      ; $6725: $32
	cp h                                             ; $6726: $bc
	inc a                                            ; $6727: $3c
	rst $38                                          ; $6728: $ff
	ld l, a                                          ; $6729: $6f
	di                                               ; $672a: $f3
	ld e, a                                          ; $672b: $5f
	ldh [$74], a                                     ; $672c: $e0 $74
	rst GetHLinHL                                          ; $672e: $cf
	rst $38                                          ; $672f: $ff
	sbc a                                            ; $6730: $9f
	ldh a, [c]                                       ; $6731: $f2
	or e                                             ; $6732: $b3
	ldh [c], a                                       ; $6733: $e2
	and $5e                                          ; $6734: $e6 $5e
	cp $92                                           ; $6736: $fe $92
	ld e, $3f                                        ; $6738: $1e $3f
	inc c                                            ; $673a: $0c
	db $dd                                           ; $673b: $dd
	add b                                            ; $673c: $80
	add b                                            ; $673d: $80
	ret nz                                           ; $673e: $c0

	add b                                            ; $673f: $80
	cp a                                             ; $6740: $bf
	ret nz                                           ; $6741: $c0

	cp a                                             ; $6742: $bf
	ret nz                                           ; $6743: $c0

	ld e, a                                          ; $6744: $5f
	ld h, b                                          ; $6745: $60
	ld l, a                                          ; $6746: $6f
	ld [hl], b                                       ; $6747: $70
	ld d, a                                          ; $6748: $57
	ld e, b                                          ; $6749: $58
	dec e                                            ; $674a: $1d
	ld e, $17                                        ; $674b: $1e $17
	rra                                              ; $674d: $1f
	sub c                                            ; $674e: $91
	sbc a                                            ; $674f: $9f
	ld d, h                                          ; $6750: $54
	db $db                                           ; $6751: $db
	ld d, l                                          ; $6752: $55
	jp c, $fb34                                      ; $6753: $da $34 $fb

	ld d, $f9                                        ; $6756: $16 $f9
	ld a, [bc]                                       ; $6758: $0a
	db $fd                                           ; $6759: $fd

Jump_069_675a:
	ld h, [hl]                                       ; $675a: $66
	sbc l                                            ; $675b: $9d
	ld [hl], h                                       ; $675c: $74
	sbc h                                            ; $675d: $9c
	adc a                                            ; $675e: $8f
	cp [hl]                                          ; $675f: $be
	jp $1cde                                         ; $6760: $c3 $de $1c


	rst SubAFromDE                                          ; $6763: $df
	jr jr_069_66ff                                   ; $6764: $18 $99

	db $10                                           ; $6766: $10
	sub b                                            ; $6767: $90
	nop                                              ; $6768: $00
	ld b, b                                          ; $6769: $40
	add b                                            ; $676a: $80
	ldh [$bf], a                                     ; $676b: $e0 $bf
	ldh [rLCDC], a                                   ; $676d: $e0 $40
	call c, $ff80                                    ; $676f: $dc $80 $ff
	sbc [hl]                                         ; $6772: $9e
	ld [bc], a                                       ; $6773: $02
	cp a                                             ; $6774: $bf
	ld [bc], a                                       ; $6775: $02
	ld bc, $0280                                     ; $6776: $01 $80 $02
	inc bc                                           ; $6779: $03
	ld b, $04                                        ; $677a: $06 $04
	ld [bc], a                                       ; $677c: $02
	ld a, $17                                        ; $677d: $3e $17
	ld e, $03                                        ; $677f: $1e $03
	inc sp                                           ; $6781: $33
	rrca                                             ; $6782: $0f
	ld c, a                                          ; $6783: $4f
	ccf                                              ; $6784: $3f
	ccf                                              ; $6785: $3f
	ld [hl], c                                       ; $6786: $71
	ld a, [hl]                                       ; $6787: $7e
	ld bc, $38d7                                     ; $6788: $01 $d7 $38
	cp l                                             ; $678b: $bd
	ld a, [hl]                                       ; $678c: $7e
	rst GetHLinHL                                          ; $678d: $cf
	ld c, a                                          ; $678e: $4f
	call nc, Call_069_555d                           ; $678f: $d4 $5d $55
	ld a, h                                          ; $6792: $7c
	dec hl                                           ; $6793: $2b
	ld a, h                                          ; $6794: $7c
	ld d, a                                          ; $6795: $57
	jr c, jr_069_6718                                ; $6796: $38 $80

	rlca                                             ; $6798: $07
	ld bc, $010f                                     ; $6799: $01 $0f $01
	dec c                                            ; $679c: $0d
	inc bc                                           ; $679d: $03
	di                                               ; $679e: $f3
	rrca                                             ; $679f: $0f
	di                                               ; $67a0: $f3
	rrca                                             ; $67a1: $0f
	and $1e                                          ; $67a2: $e6 $1e
	and $1e                                          ; $67a4: $e6 $1e
	call z, $9c3c                                    ; $67a6: $cc $3c $9c
	ld a, h                                          ; $67a9: $7c
	dec l                                            ; $67aa: $2d
	db $ed                                           ; $67ab: $ed
	ld c, d                                          ; $67ac: $4a
	set 2, h                                         ; $67ad: $cb $d4
	rst SubAFromHL                                          ; $67af: $d7
	ret z                                            ; $67b0: $c8

	rst GetHLinHL                                          ; $67b1: $cf
	ret z                                            ; $67b2: $c8

	rst GetHLinHL                                          ; $67b3: $cf
	ret nc                                           ; $67b4: $d0

	rst SubAFromDE                                          ; $67b5: $df
	ld [hl], d                                       ; $67b6: $72
	sbc b                                            ; $67b7: $98
	rst $38                                          ; $67b8: $ff
	ld h, l                                          ; $67b9: $65
	rst $38                                          ; $67ba: $ff
	ld h, a                                          ; $67bb: $67
	db $fd                                           ; $67bc: $fd
	ld c, a                                          ; $67bd: $4f
	ld hl, sp+$57                                    ; $67be: $f8 $57
	ld h, b                                          ; $67c0: $60
	sub a                                            ; $67c1: $97
	ld a, a                                          ; $67c2: $7f
	ret nz                                           ; $67c3: $c0

	xor $9f                                          ; $67c4: $ee $9f
	rst SubAFromDE                                          ; $67c6: $df
	cp a                                             ; $67c7: $bf
	ldh [c], a                                       ; $67c8: $e2
	rst SubAFromBC                                          ; $67c9: $e7
	ld d, a                                          ; $67ca: $57
	ld h, b                                          ; $67cb: $60
	ld c, a                                          ; $67cc: $4f
	add b                                            ; $67cd: $80
	sbc h                                            ; $67ce: $9c
	ret nz                                           ; $67cf: $c0

	nop                                              ; $67d0: $00
	nop                                              ; $67d1: $00
	dec de                                           ; $67d2: $1b
	add b                                            ; $67d3: $80
	sub a                                            ; $67d4: $97
	rst $38                                          ; $67d5: $ff
	nop                                              ; $67d6: $00
	ei                                               ; $67d7: $fb
	inc a                                            ; $67d8: $3c
	call $df6e                                       ; $67d9: $cd $6e $df
	ld e, a                                          ; $67dc: $5f
	ld d, a                                          ; $67dd: $57
	add b                                            ; $67de: $80
	ld c, a                                          ; $67df: $4f
	and b                                            ; $67e0: $a0
	sub l                                            ; $67e1: $95
	rst $38                                          ; $67e2: $ff
	add b                                            ; $67e3: $80
	pop af                                           ; $67e4: $f1
	add b                                            ; $67e5: $80
	adc $bf                                          ; $67e6: $ce $bf
	ld [hl], a                                       ; $67e8: $77
	rst FarCall                                          ; $67e9: $f7
	sub d                                            ; $67ea: $92
	rra                                              ; $67eb: $1f
	daa                                              ; $67ec: $27
	and b                                            ; $67ed: $a0
	ld a, e                                          ; $67ee: $7b
	and e                                            ; $67ef: $a3
	ld a, e                                          ; $67f0: $7b
	sbc l                                            ; $67f1: $9d
	daa                                              ; $67f2: $27
	and b                                            ; $67f3: $a0
	ld a, a                                          ; $67f4: $7f
	cp $97                                           ; $67f5: $fe $97
	ld c, a                                          ; $67f7: $4f
	nop                                              ; $67f8: $00
	dec sp                                           ; $67f9: $3b
	inc a                                            ; $67fa: $3c
	ld b, a                                          ; $67fb: $47
	ld l, a                                          ; $67fc: $6f
	dec l                                            ; $67fd: $2d
	ld a, [hl]                                       ; $67fe: $7e
	rra                                              ; $67ff: $1f
	and b                                            ; $6800: $a0
	sub a                                            ; $6801: $97
	ldh [$80], a                                     ; $6802: $e0 $80
	ld a, h                                          ; $6804: $7c
	add b                                            ; $6805: $80
	pop af                                           ; $6806: $f1
	jr nc, @+$71                                     ; $6807: $30 $6f

	rra                                              ; $6809: $1f
	rra                                              ; $680a: $1f
	and b                                            ; $680b: $a0
	rst $38                                          ; $680c: $ff
	sbc h                                            ; $680d: $9c
	add d                                            ; $680e: $82
	add b                                            ; $680f: $80
	jp nz, $a023                                     ; $6810: $c2 $23 $a0

	sbc [hl]                                         ; $6813: $9e
	rlca                                             ; $6814: $07
	cp a                                             ; $6815: $bf
	ld a, a                                          ; $6816: $7f
	ld c, l                                          ; $6817: $4d
	sbc h                                            ; $6818: $9c
	ld b, [hl]                                       ; $6819: $46
	ld a, e                                          ; $681a: $7b
	inc a                                            ; $681b: $3c
	ld l, a                                          ; $681c: $6f
	and b                                            ; $681d: $a0
	rst $38                                          ; $681e: $ff
	sbc d                                            ; $681f: $9a
	inc b                                            ; $6820: $04
	nop                                              ; $6821: $00
	ld e, $0a                                        ; $6822: $1e $0a
	nop                                              ; $6824: $00
	cp l                                             ; $6825: $bd
	inc c                                            ; $6826: $0c
	nop                                              ; $6827: $00
	nop                                              ; $6828: $00
	pop bc                                           ; $6829: $c1
	sub e                                            ; $682a: $93
	add b                                            ; $682b: $80
	db $e3                                           ; $682c: $e3
	pop af                                           ; $682d: $f1
	ld a, a                                          ; $682e: $7f
	ccf                                              ; $682f: $3f
	ccf                                              ; $6830: $3f
	rra                                              ; $6831: $1f
	rra                                              ; $6832: $1f
	rrca                                             ; $6833: $0f
	rlca                                             ; $6834: $07
	inc bc                                           ; $6835: $03
	add e                                            ; $6836: $83
	cp l                                             ; $6837: $bd
	pop bc                                           ; $6838: $c1
	pop bc                                           ; $6839: $c1
	nop                                              ; $683a: $00
	ld a, [bc]                                       ; $683b: $0a

jr_069_683c:
	sbc e                                            ; $683c: $9b
	inc b                                            ; $683d: $04
	ld e, $0e                                        ; $683e: $1e $0e
	ld e, $7b                                        ; $6840: $1e $7b
	pop hl                                           ; $6842: $e1
	ld a, a                                          ; $6843: $7f
	ret c                                            ; $6844: $d8

	cpl                                              ; $6845: $2f
	ldh [$9d], a                                     ; $6846: $e0 $9d
	ld c, $0c                                        ; $6848: $0e $0c
	sbc $1e                                          ; $684a: $de $1e
	sbc [hl]                                         ; $684c: $9e
	inc d                                            ; $684d: $14
	ld l, a                                          ; $684e: $6f
	cp [hl]                                          ; $684f: $be
	inc sp                                           ; $6850: $33
	ldh [rPCM34], a                                  ; $6851: $e0 $77
	ret nz                                           ; $6853: $c0

	sbc [hl]                                         ; $6854: $9e
	ld d, $77                                        ; $6855: $16 $77
	cp [hl]                                          ; $6857: $be

jr_069_6858:
	sbc l                                            ; $6858: $9d
	inc c                                            ; $6859: $0c
	inc b                                            ; $685a: $04
	ccf                                              ; $685b: $3f
	ldh [rSCY], a                                    ; $685c: $e0 $42
	ld bc, $1f85                                     ; $685e: $01 $85 $1f
	sbc d                                            ; $6861: $9a
	ld e, $b2                                        ; $6862: $1e $b2
	ld [hl], $b8                                     ; $6864: $36 $b8
	add hl, sp                                       ; $6866: $39
	cp $6e                                           ; $6867: $fe $6e
	rst FarCall                                          ; $6869: $f7
	ld d, c                                          ; $686a: $51
	rst AddAOntoHL                                          ; $686b: $ef
	ld l, [hl]                                       ; $686c: $6e
	pop de                                           ; $686d: $d1
	rst SubAFromDE                                          ; $686e: $df
	xor a                                            ; $686f: $af
	rst SubAFromDE                                          ; $6870: $df
	cp a                                             ; $6871: $bf
	and d                                            ; $6872: $a2
	rst SubAFromBC                                          ; $6873: $e7
	ld e, [hl]                                       ; $6874: $5e
	cp $92                                           ; $6875: $fe $92
	ld e, $3f                                        ; $6877: $1e $3f
	inc c                                            ; $6879: $0c
	db $dd                                           ; $687a: $dd
	add b                                            ; $687b: $80
	add b                                            ; $687c: $80
	ret nz                                           ; $687d: $c0

	add b                                            ; $687e: $80
	cp a                                             ; $687f: $bf
	ret nz                                           ; $6880: $c0

	cp a                                             ; $6881: $bf
	ret nz                                           ; $6882: $c0

	ld e, a                                          ; $6883: $5f
	ld h, b                                          ; $6884: $60
	ld l, a                                          ; $6885: $6f
	ld [hl], b                                       ; $6886: $70
	ld d, a                                          ; $6887: $57
	ld e, b                                          ; $6888: $58
	dec e                                            ; $6889: $1d
	ld e, $17                                        ; $688a: $1e $17
	rra                                              ; $688c: $1f
	sub c                                            ; $688d: $91
	sbc a                                            ; $688e: $9f
	ld d, h                                          ; $688f: $54
	db $db                                           ; $6890: $db
	ld d, l                                          ; $6891: $55
	jp c, $fb34                                      ; $6892: $da $34 $fb

	ld d, $f9                                        ; $6895: $16 $f9
	ld a, [bc]                                       ; $6897: $0a
	db $fd                                           ; $6898: $fd
	ld h, [hl]                                       ; $6899: $66
	sbc l                                            ; $689a: $9d
	ld [hl], h                                       ; $689b: $74
	sbc h                                            ; $689c: $9c
	adc a                                            ; $689d: $8f
	cp [hl]                                          ; $689e: $be
	jp $1cde                                         ; $689f: $c3 $de $1c


	rst SubAFromDE                                          ; $68a2: $df
	jr jr_069_683c                                   ; $68a3: $18 $97

	db $10                                           ; $68a5: $10
	sub b                                            ; $68a6: $90
	nop                                              ; $68a7: $00
	ld b, b                                          ; $68a8: $40
	add b                                            ; $68a9: $80
	ldh [$80], a                                     ; $68aa: $e0 $80
	ldh [$7b], a                                     ; $68ac: $e0 $7b
	ld a, [$80dd]                                    ; $68ae: $fa $dd $80
	rst $38                                          ; $68b1: $ff
	sbc [hl]                                         ; $68b2: $9e
	ld [bc], a                                       ; $68b3: $02
	cp a                                             ; $68b4: $bf
	ld [bc], a                                       ; $68b5: $02
	ld bc, $0280                                     ; $68b6: $01 $80 $02
	inc bc                                           ; $68b9: $03
	ld b, $04                                        ; $68ba: $06 $04
	ld [bc], a                                       ; $68bc: $02
	ld a, $17                                        ; $68bd: $3e $17
	ld e, $03                                        ; $68bf: $1e $03
	dec sp                                           ; $68c1: $3b
	rlca                                             ; $68c2: $07
	ld l, a                                          ; $68c3: $6f
	rra                                              ; $68c4: $1f
	ld d, a                                          ; $68c5: $57
	add hl, sp                                       ; $68c6: $39
	ld h, $79                                        ; $68c7: $26 $79
	db $db                                           ; $68c9: $db
	inc h                                            ; $68ca: $24
	cp l                                             ; $68cb: $bd
	ld a, [hl]                                       ; $68cc: $7e
	xor $7f                                          ; $68cd: $ee $7f
	bit 3, a                                         ; $68cf: $cb $5f
	ld e, c                                          ; $68d1: $59
	ld a, d                                          ; $68d2: $7a
	dec hl                                           ; $68d3: $2b
	ld a, h                                          ; $68d4: $7c
	ld d, a                                          ; $68d5: $57
	jr c, jr_069_6858                                ; $68d6: $38 $80

	rlca                                             ; $68d8: $07
	ld bc, $010f                                     ; $68d9: $01 $0f $01

jr_069_68dc:
	dec c                                            ; $68dc: $0d
	inc bc                                           ; $68dd: $03
	di                                               ; $68de: $f3
	rrca                                             ; $68df: $0f
	di                                               ; $68e0: $f3
	rrca                                             ; $68e1: $0f
	and $1e                                          ; $68e2: $e6 $1e
	and $1e                                          ; $68e4: $e6 $1e
	call z, $9c3c                                    ; $68e6: $cc $3c $9c
	ld a, h                                          ; $68e9: $7c
	dec l                                            ; $68ea: $2d
	db $ed                                           ; $68eb: $ed
	ld c, d                                          ; $68ec: $4a
	set 2, h                                         ; $68ed: $cb $d4
	rst SubAFromHL                                          ; $68ef: $d7
	ret z                                            ; $68f0: $c8

	rst GetHLinHL                                          ; $68f1: $cf
	ret z                                            ; $68f2: $c8

	rst GetHLinHL                                          ; $68f3: $cf
	ret nc                                           ; $68f4: $d0

	rst SubAFromDE                                          ; $68f5: $df
	ld [hl], d                                       ; $68f6: $72
	sbc b                                            ; $68f7: $98
	rst $38                                          ; $68f8: $ff
	ld h, l                                          ; $68f9: $65
	rst $38                                          ; $68fa: $ff
	ld h, a                                          ; $68fb: $67
	db $fd                                           ; $68fc: $fd
	ld c, a                                          ; $68fd: $4f
	ld hl, sp+$5f                                    ; $68fe: $f8 $5f
	ld h, b                                          ; $6900: $60
	sub e                                            ; $6901: $93
	ld e, l                                          ; $6902: $5d
	db $e3                                           ; $6903: $e3
	ld [hl], c                                       ; $6904: $71
	adc $ee                                          ; $6905: $ce $ee
	sub c                                            ; $6907: $91
	rst GetHLinHL                                          ; $6908: $cf
	cp a                                             ; $6909: $bf
	or e                                             ; $690a: $b3
	rst $38                                          ; $690b: $ff
	ld d, [hl]                                       ; $690c: $56
	or $5f                                           ; $690d: $f6 $5f
	ld h, b                                          ; $690f: $60
	ld c, a                                          ; $6910: $4f
	add b                                            ; $6911: $80
	sbc [hl]                                         ; $6912: $9e
	ret nz                                           ; $6913: $c0

	cp a                                             ; $6914: $bf
	add b                                            ; $6915: $80
	add b                                            ; $6916: $80
	ld a, e                                          ; $6917: $7b
	db $fd                                           ; $6918: $fd
	scf                                              ; $6919: $37
	add b                                            ; $691a: $80
	sub e                                            ; $691b: $93
	ld l, $71                                        ; $691c: $2e $71
	rst SubAFromDE                                          ; $691e: $df
	jr nz, @-$37                                     ; $691f: $20 $c7

	jr c, jr_069_68dc                                ; $6921: $38 $b9

	ld a, [hl]                                       ; $6923: $7e
	adc $5f                                          ; $6924: $ce $5f
	ld e, e                                          ; $6926: $5b
	ld a, a                                          ; $6927: $7f
	ld e, a                                          ; $6928: $5f
	add b                                            ; $6929: $80
	ld d, a                                          ; $692a: $57
	and b                                            ; $692b: $a0
	sub e                                            ; $692c: $93
	ld a, a                                          ; $692d: $7f
	ret nz                                           ; $692e: $c0

	rst $38                                          ; $692f: $ff
	add b                                            ; $6930: $80
	ldh a, [$80]                                     ; $6931: $f0 $80
	adc $bf                                          ; $6933: $ce $bf
	ld [hl], a                                       ; $6935: $77
	rst FarCall                                          ; $6936: $f7
	sub d                                            ; $6937: $92
	rra                                              ; $6938: $1f
	dec de                                           ; $6939: $1b
	and b                                            ; $693a: $a0
	ld a, e                                          ; $693b: $7b
	sbc [hl]                                         ; $693c: $9e
	daa                                              ; $693d: $27
	and b                                            ; $693e: $a0
	sbc [hl]                                         ; $693f: $9e
	rst $38                                          ; $6940: $ff
	cp a                                             ; $6941: $bf
	rst JumpTable                                          ; $6942: $c7
	cp e                                             ; $6943: $bb
	sbc h                                            ; $6944: $9c
	ld a, h                                          ; $6945: $7c
	ld e, [hl]                                       ; $6946: $5e
	rst SubAFromDE                                          ; $6947: $df
	rla                                              ; $6948: $17
	and b                                            ; $6949: $a0
	ld a, a                                          ; $694a: $7f
	cp b                                             ; $694b: $b8
	sbc c                                            ; $694c: $99
	ld a, [hl]                                       ; $694d: $7e
	add b                                            ; $694e: $80
	jp hl                                            ; $694f: $e9


	ld sp, $1e3f                                     ; $6950: $31 $3f $1e
	cpl                                              ; $6953: $2f
	and b                                            ; $6954: $a0
	ld a, a                                          ; $6955: $7f
	cp $fd                                           ; $6956: $fe $fd
	sbc h                                            ; $6958: $9c
	add d                                            ; $6959: $82
	add b                                            ; $695a: $80
	jp nz, $a02b                                     ; $695b: $c2 $2b $a0

	sbc [hl]                                         ; $695e: $9e
	ld h, a                                          ; $695f: $67
	cp [hl]                                          ; $6960: $be
	inc bc                                           ; $6961: $03
	ccf                                              ; $6962: $3f
	ld c, e                                          ; $6963: $4b
	sbc h                                            ; $6964: $9c
	ld b, [hl]                                       ; $6965: $46
	rst $38                                          ; $6966: $ff
	inc a                                            ; $6967: $3c
	ld l, a                                          ; $6968: $6f
	and b                                            ; $6969: $a0
	rst $38                                          ; $696a: $ff
	sbc d                                            ; $696b: $9a
	ld b, $00                                        ; $696c: $06 $00
	ld c, $0a                                        ; $696e: $0e $0a
	nop                                              ; $6970: $00
	cp l                                             ; $6971: $bd
	inc c                                            ; $6972: $0c
	nop                                              ; $6973: $00
	nop                                              ; $6974: $00
	pop bc                                           ; $6975: $c1
	sub e                                            ; $6976: $93
	add b                                            ; $6977: $80
	db $e3                                           ; $6978: $e3
	pop af                                           ; $6979: $f1
	ld a, a                                          ; $697a: $7f
	ccf                                              ; $697b: $3f
	ccf                                              ; $697c: $3f
	rra                                              ; $697d: $1f
	rra                                              ; $697e: $1f
	rrca                                             ; $697f: $0f
	rlca                                             ; $6980: $07
	inc bc                                           ; $6981: $03
	add e                                            ; $6982: $83
	cp h                                             ; $6983: $bc
	pop bc                                           ; $6984: $c1
	pop bc                                           ; $6985: $c1
	nop                                              ; $6986: $00
	ld b, $0e                                        ; $6987: $06 $0e
	rst SubAFromDE                                          ; $6989: $df
	ld c, $7b                                        ; $698a: $0e $7b
	pop hl                                           ; $698c: $e1
	sbc [hl]                                         ; $698d: $9e
	inc b                                            ; $698e: $04
	inc de                                           ; $698f: $13
	ldh [$7f], a                                     ; $6990: $e0 $7f
	ld a, [$be77]                                    ; $6992: $fa $77 $be
	dec hl                                           ; $6995: $2b
	ldh [$9e], a                                     ; $6996: $e0 $9e
	ld b, $de                                        ; $6998: $06 $de
	ld c, $73                                        ; $699a: $0e $73
	sbc h                                            ; $699c: $9c
	ccf                                              ; $699d: $3f
	ldh [$36], a                                     ; $699e: $e0 $36
	inc bc                                           ; $69a0: $03
	ld sp, hl                                        ; $69a1: $f9
	db $dd                                           ; $69a2: $dd
	ld bc, $03df                                     ; $69a3: $01 $df $03
	sbc [hl]                                         ; $69a6: $9e
	ld [bc], a                                       ; $69a7: $02
	ld a, e                                          ; $69a8: $7b
	cp $8d                                           ; $69a9: $fe $8d
	rlca                                             ; $69ab: $07
	ld b, $05                                        ; $69ac: $06 $05
	rlca                                             ; $69ae: $07
	rlca                                             ; $69af: $07
	dec b                                            ; $69b0: $05
	rlca                                             ; $69b1: $07
	dec b                                            ; $69b2: $05
	ld b, $05                                        ; $69b3: $06 $05
	inc b                                            ; $69b5: $04
	rlca                                             ; $69b6: $07
	ld [$080f], sp                                   ; $69b7: $08 $0f $08
	rrca                                             ; $69ba: $0f
	ld a, [bc]                                       ; $69bb: $0a
	dec c                                            ; $69bc: $0d
	ld [hl], a                                       ; $69bd: $77
	cp $99                                           ; $69be: $fe $99
	ld c, $09                                        ; $69c0: $0e $09
	ld c, $09                                        ; $69c2: $0e $09
	inc c                                            ; $69c4: $0c
	dec bc                                           ; $69c5: $0b
	ld l, a                                          ; $69c6: $6f
	cp $9e                                           ; $69c7: $fe $9e
	dec c                                            ; $69c9: $0d
	ld l, e                                          ; $69ca: $6b
	cp $9b                                           ; $69cb: $fe $9b
	rrca                                             ; $69cd: $0f
	add hl, bc                                       ; $69ce: $09
	rrca                                             ; $69cf: $0f
	add hl, bc                                       ; $69d0: $09
	ld [hl], a                                       ; $69d1: $77
	rst FarCall                                          ; $69d2: $f7
	ld a, a                                          ; $69d3: $7f
	call nc, $d17b                                   ; $69d4: $d4 $7b $d1
	ld [hl], e                                       ; $69d7: $73
	cp $77                                           ; $69d8: $fe $77
	ret nz                                           ; $69da: $c0

	rst SubAFromDE                                          ; $69db: $df
	inc bc                                           ; $69dc: $03
	db $dd                                           ; $69dd: $dd
	ld bc, $dfe5                                     ; $69de: $01 $e5 $df
	inc bc                                           ; $69e1: $03
	sub l                                            ; $69e2: $95
	ld c, $0f                                        ; $69e3: $0e $0f
	ld [hl], e                                       ; $69e5: $73
	ld a, h                                          ; $69e6: $7c
	rrca                                             ; $69e7: $0f
	rrca                                             ; $69e8: $0f
	ld d, $1f                                        ; $69e9: $16 $1f
	add hl, hl                                       ; $69eb: $29
	ccf                                              ; $69ec: $3f
	ldh [$c1], a                                     ; $69ed: $e0 $c1
	sbc b                                            ; $69ef: $98
	ld a, c                                          ; $69f0: $79
	ld sp, hl                                        ; $69f1: $f9
	ld [hl], c                                       ; $69f2: $71
	pop af                                           ; $69f3: $f1
	ld h, b                                          ; $69f4: $60
	ldh [rLCDC], a                                   ; $69f5: $e0 $40
	sbc $c0                                          ; $69f7: $de $c0
	reti                                             ; $69f9: $d9


	add b                                            ; $69fa: $80
	ei                                               ; $69fb: $fb
	rst SubAFromDE                                          ; $69fc: $df
	add e                                            ; $69fd: $83
	adc b                                            ; $69fe: $88
	rlca                                             ; $69ff: $07
	inc b                                            ; $6a00: $04
	dec bc                                           ; $6a01: $0b
	inc c                                            ; $6a02: $0c
	rrca                                             ; $6a03: $0f
	ld [$1c13], sp                                   ; $6a04: $08 $13 $1c
	rla                                              ; $6a07: $17
	jr jr_069_6a29                                   ; $6a08: $18 $1f

	ld de, $111f                                     ; $6a0a: $11 $1f $11
	dec d                                            ; $6a0d: $15
	dec de                                           ; $6a0e: $1b
	ld d, $1b                                        ; $6a0f: $16 $1b
	inc de                                           ; $6a11: $13
	ld e, $15                                        ; $6a12: $1e $15
	ld e, $0f                                        ; $6a14: $1e $0f
	ld a, e                                          ; $6a16: $7b
	ccf                                              ; $6a17: $3f
	ld a, a                                          ; $6a18: $7f
	ld [$ec7b], a                                    ; $6a19: $ea $7b $ec
	sbc c                                            ; $6a1c: $99
	db $10                                           ; $6a1d: $10
	rra                                              ; $6a1e: $1f
	db $10                                           ; $6a1f: $10
	rla                                              ; $6a20: $17
	jr jr_069_6a34                                   ; $6a21: $18 $11

	sbc $1e                                          ; $6a23: $de $1e
	ld a, a                                          ; $6a25: $7f
	ld c, c                                          ; $6a26: $49
	ld a, a                                          ; $6a27: $7f
	ld c, e                                          ; $6a28: $4b

jr_069_6a29:
	ld l, a                                          ; $6a29: $6f
	ld [bc], a                                       ; $6a2a: $02
	ld a, a                                          ; $6a2b: $7f
	rst SubAFromBC                                          ; $6a2c: $e7
	rst SubAFromDE                                          ; $6a2d: $df
	ccf                                              ; $6a2e: $3f
	adc a                                            ; $6a2f: $8f
	ld c, [hl]                                       ; $6a30: $4e
	ld [hl], c                                       ; $6a31: $71
	sbc a                                            ; $6a32: $9f
	rst $38                                          ; $6a33: $ff

jr_069_6a34:
	db $ed                                           ; $6a34: $ed
	di                                               ; $6a35: $f3
	rst $38                                          ; $6a36: $ff
	nop                                              ; $6a37: $00
	ldh a, [rIF]                                     ; $6a38: $f0 $0f
	rst $38                                          ; $6a3a: $ff
	rst $38                                          ; $6a3b: $ff
	rst GetHLinHL                                          ; $6a3c: $cf
	rst $38                                          ; $6a3d: $ff
	scf                                              ; $6a3e: $37
	rst $38                                          ; $6a3f: $ff
	ldh [$c1], a                                     ; $6a40: $e0 $c1
	ld a, a                                          ; $6a42: $7f
	cp a                                             ; $6a43: $bf
	sub e                                            ; $6a44: $93
	ld a, a                                          ; $6a45: $7f
	add b                                            ; $6a46: $80
	cp b                                             ; $6a47: $b8
	rst JumpTable                                          ; $6a48: $c7
	rst $38                                          ; $6a49: $ff
	rst $38                                          ; $6a4a: $ff
	db $e4                                           ; $6a4b: $e4
	rst SubAFromBC                                          ; $6a4c: $e7
	ld h, d                                          ; $6a4d: $62
	ld h, e                                          ; $6a4e: $63
	ld h, d                                          ; $6a4f: $62
	ld h, e                                          ; $6a50: $63
	db $dd                                           ; $6a51: $dd
	ld hl, $07df                                     ; $6a52: $21 $df $07
	add b                                            ; $6a55: $80
	dec de                                           ; $6a56: $1b
	rra                                              ; $6a57: $1f
	db $f4                                           ; $6a58: $f4
	rst $38                                          ; $6a59: $ff
	dec h                                            ; $6a5a: $25
	cp $29                                           ; $6a5b: $fe $29
	cp $59                                           ; $6a5d: $fe $59
	xor $79                                          ; $6a5f: $ee $79
	adc $b0                                          ; $6a61: $ce $b0
	sbc $f0                                          ; $6a63: $de $f0
	sub [hl]                                         ; $6a65: $96
	ld d, b                                          ; $6a66: $50
	or d                                             ; $6a67: $b2
	ldh [$32], a                                     ; $6a68: $e0 $32
	ldh [$3d], a                                     ; $6a6a: $e0 $3d
	ldh [$30], a                                     ; $6a6c: $e0 $30
	and b                                            ; $6a6e: $a0
	ld h, b                                          ; $6a6f: $60
	ret nz                                           ; $6a70: $c0

	ld h, b                                          ; $6a71: $60
	ret nz                                           ; $6a72: $c0

	ld b, b                                          ; $6a73: $40
	ret nz                                           ; $6a74: $c0

	sub e                                            ; $6a75: $93
	ld b, c                                          ; $6a76: $41
	ret nz                                           ; $6a77: $c0

	ld h, e                                          ; $6a78: $63
	and b                                            ; $6a79: $a0
	ld h, e                                          ; $6a7a: $63
	ldh [rAUDENA], a                                 ; $6a7b: $e0 $26
	ret nc                                           ; $6a7d: $d0

	ld a, $7f                                        ; $6a7e: $3e $7f
	rrca                                             ; $6a80: $0f
	ld a, a                                          ; $6a81: $7f
	cp a                                             ; $6a82: $bf
	nop                                              ; $6a83: $00
	add b                                            ; $6a84: $80
	add l                                            ; $6a85: $85
	add b                                            ; $6a86: $80
	ldh [$60], a                                     ; $6a87: $e0 $60
	ldh a, [rAUD1SWEEP]                              ; $6a89: $f0 $10
	ei                                               ; $6a8b: $fb
	adc e                                            ; $6a8c: $8b
	rst FarCall                                          ; $6a8d: $f7
	rst GetHLinHL                                          ; $6a8e: $cf
	ld d, d                                          ; $6a8f: $52
	rst AddAOntoHL                                          ; $6a90: $ef
	db $e3                                           ; $6a91: $e3
	rst $38                                          ; $6a92: $ff
	ld h, c                                          ; $6a93: $61
	rst $38                                          ; $6a94: $ff
	ld sp, $99ff                                     ; $6a95: $31 $ff $99
	rst $38                                          ; $6a98: $ff
	ld c, c                                          ; $6a99: $49
	rst $38                                          ; $6a9a: $ff
	dec h                                            ; $6a9b: $25
	rst $38                                          ; $6a9c: $ff
	dec d                                            ; $6a9d: $15
	rst $38                                          ; $6a9e: $ff
	call $ffde                                       ; $6a9f: $cd $de $ff
	ldh [$c1], a                                     ; $6aa2: $e0 $c1
	sub [hl]                                         ; $6aa4: $96
	ld a, $01                                        ; $6aa5: $3e $01
	rst $38                                          ; $6aa7: $ff
	inc bc                                           ; $6aa8: $03
	rst $38                                          ; $6aa9: $ff
	rra                                              ; $6aaa: $1f
	rst $38                                          ; $6aab: $ff
	pop hl                                           ; $6aac: $e1
	sbc a                                            ; $6aad: $9f
	cp e                                             ; $6aae: $bb
	rrca                                             ; $6aaf: $0f
	rlca                                             ; $6ab0: $07
	inc bc                                           ; $6ab1: $03
	ld bc, $8180                                     ; $6ab2: $01 $80 $81
	sbc $81                                          ; $6ab5: $de $81
	sub l                                            ; $6ab7: $95
	ld [bc], a                                       ; $6ab8: $02
	add e                                            ; $6ab9: $83
	add d                                            ; $6aba: $82
	inc bc                                           ; $6abb: $03
	rlca                                             ; $6abc: $07
	rlca                                             ; $6abd: $07
	rrca                                             ; $6abe: $0f
	rrca                                             ; $6abf: $0f
	inc e                                            ; $6ac0: $1c
	inc e                                            ; $6ac1: $1c
	cp c                                             ; $6ac2: $b9
	nop                                              ; $6ac3: $00
	ld bc, $0603                                     ; $6ac4: $01 $03 $06
	jr jr_069_6ac9                                   ; $6ac7: $18 $00

jr_069_6ac9:
	ld bc, $7e01                                     ; $6ac9: $01 $01 $7e
	rst SubAFromHL                                          ; $6acc: $d7
	sub e                                            ; $6acd: $93
	ld bc, $0307                                     ; $6ace: $01 $07 $03
	ld c, $06                                        ; $6ad1: $0e $06
	dec a                                            ; $6ad3: $3d
	dec e                                            ; $6ad4: $1d
	ld a, [$e4fb]                                    ; $6ad5: $fa $fb $e4
	or $08                                           ; $6ad8: $f6 $08
	ei                                               ; $6ada: $fb
	rst SubAFromDE                                          ; $6adb: $df
	ld a, h                                          ; $6adc: $7c
	ld a, a                                          ; $6add: $7f
	ld h, [hl]                                       ; $6ade: $66
	adc c                                            ; $6adf: $89
	ld sp, hl                                        ; $6ae0: $f9
	cp [hl]                                          ; $6ae1: $be
	or $b9                                           ; $6ae2: $f6 $b9
	ld sp, hl                                        ; $6ae4: $f9
	sbc a                                            ; $6ae5: $9f
	cp $9f                                           ; $6ae6: $fe $9f
	db $fc                                           ; $6ae8: $fc
	adc a                                            ; $6ae9: $8f
	dec sp                                           ; $6aea: $3b
	rst GetHLinHL                                          ; $6aeb: $cf
	ld a, $df                                        ; $6aec: $3e $df
	add hl, sp                                       ; $6aee: $39
	cp $60                                           ; $6aef: $fe $60
	rst $38                                          ; $6af1: $ff
	db $fc                                           ; $6af2: $fc
	rst $38                                          ; $6af3: $ff
	adc [hl]                                         ; $6af4: $8e
	di                                               ; $6af5: $f3
	ldh [$c1], a                                     ; $6af6: $e0 $c1
	sbc d                                            ; $6af8: $9a
	pop af                                           ; $6af9: $f1
	rst $38                                          ; $6afa: $ff
	ldh [rIE], a                                     ; $6afb: $e0 $ff
	ldh [c], a                                       ; $6afd: $e2
	ld a, e                                          ; $6afe: $7b
	db $fc                                           ; $6aff: $fc
	sub [hl]                                         ; $6b00: $96
	call nz, $c5ff                                   ; $6b01: $c4 $ff $c5
	ld a, a                                          ; $6b04: $7f
	call $8d7f                                       ; $6b05: $cd $7f $8d
	rst $38                                          ; $6b08: $ff
	sbc d                                            ; $6b09: $9a
	ld a, e                                          ; $6b0a: $7b
	cp $80                                           ; $6b0b: $fe $80
	dec [hl]                                         ; $6b0d: $35
	rst $38                                          ; $6b0e: $ff
	scf                                              ; $6b0f: $37
	cp $6f                                           ; $6b10: $fe $6f
	cp $ff                                           ; $6b12: $fe $ff
	db $fc                                           ; $6b14: $fc
	cp a                                             ; $6b15: $bf
	cp h                                             ; $6b16: $bc
	ld a, a                                          ; $6b17: $7f
	ld l, b                                          ; $6b18: $68
	ld c, e                                          ; $6b19: $4b
	ld a, h                                          ; $6b1a: $7c
	rla                                              ; $6b1b: $17
	ld hl, sp+$16                                    ; $6b1c: $f8 $16
	ld sp, hl                                        ; $6b1e: $f9
	ld h, $f9                                        ; $6b1f: $26 $f9
	ld [hl], $69                                     ; $6b21: $36 $69
	ld l, h                                          ; $6b23: $6c
	ld d, e                                          ; $6b24: $53
	ld l, [hl]                                       ; $6b25: $6e
	pop de                                           ; $6b26: $d1
	sbc $a1                                          ; $6b27: $de $a1
	sbc $a1                                          ; $6b29: $de $a1
	cp h                                             ; $6b2b: $bc
	sub a                                            ; $6b2c: $97
	ld b, e                                          ; $6b2d: $43
	cp h                                             ; $6b2e: $bc
	ld b, e                                          ; $6b2f: $43
	dec sp                                           ; $6b30: $3b
	add h                                            ; $6b31: $84
	scf                                              ; $6b32: $37
	ld [$be1f], sp                                   ; $6b33: $08 $1f $be
	rra                                              ; $6b36: $1f
	dec e                                            ; $6b37: $1d
	add b                                            ; $6b38: $80
	add b                                            ; $6b39: $80
	add b                                            ; $6b3a: $80
	pop bc                                           ; $6b3b: $c1
	pop bc                                           ; $6b3c: $c1
	or e                                             ; $6b3d: $b3
	di                                               ; $6b3e: $f3
	ld c, [hl]                                       ; $6b3f: $4e
	ld a, a                                          ; $6b40: $7f
	ldh [c], a                                       ; $6b41: $e2
	rst $38                                          ; $6b42: $ff
	or e                                             ; $6b43: $b3
	ld a, l                                          ; $6b44: $7d
	ret                                              ; $6b45: $c9


	cp $b6                                           ; $6b46: $fe $b6
	rst GetHLinHL                                          ; $6b48: $cf
	ld [hl], l                                       ; $6b49: $75
	adc a                                            ; $6b4a: $8f
	and $1d                                          ; $6b4b: $e6 $1d
	ld [$19fd], a                                    ; $6b4d: $ea $fd $19
	rst $38                                          ; $6b50: $ff
	or $0f                                           ; $6b51: $f6 $0f
	dec c                                            ; $6b53: $0d
	di                                               ; $6b54: $f3
	ld a, [hl+]                                      ; $6b55: $2a
	db $dd                                           ; $6b56: $dd
	add hl, de                                       ; $6b57: $19
	and $8a                                          ; $6b58: $e6 $8a
	nop                                              ; $6b5a: $00
	di                                               ; $6b5b: $f3
	add c                                            ; $6b5c: $81
	ld sp, hl                                        ; $6b5d: $f9
	ld [hl], c                                       ; $6b5e: $71
	ld a, h                                          ; $6b5f: $7c

jr_069_6b60:
	jr z, jr_069_6b60                                ; $6b60: $28 $fe

	call nc, $34ff                                   ; $6b62: $d4 $ff $34
	rst $38                                          ; $6b65: $ff
	add d                                            ; $6b66: $82
	ld a, a                                          ; $6b67: $7f
	jp nc, $512f                                     ; $6b68: $d2 $2f $51

	xor a                                            ; $6b6b: $af
	xor c                                            ; $6b6c: $a9
	sub a                                            ; $6b6d: $97
	ret                                              ; $6b6e: $c9


	ld a, e                                          ; $6b6f: $7b
	cp $9a                                           ; $6b70: $fe $9a
	ld c, e                                          ; $6b72: $4b
	sub l                                            ; $6b73: $95
	db $d3                                           ; $6b74: $d3
	dec b                                            ; $6b75: $05
	ld b, e                                          ; $6b76: $43
	ld a, e                                          ; $6b77: $7b
	cp $80                                           ; $6b78: $fe $80
	ld d, e                                          ; $6b7a: $53
	dec b                                            ; $6b7b: $05
	jp $4315                                         ; $6b7c: $c3 $15 $43


	sub l                                            ; $6b7f: $95
	ld h, e                                          ; $6b80: $63
	sub l                                            ; $6b81: $95
	dec hl                                           ; $6b82: $2b
	sub l                                            ; $6b83: $95
	add hl, bc                                       ; $6b84: $09
	or a                                             ; $6b85: $b7
	add hl, bc                                       ; $6b86: $09
	or a                                             ; $6b87: $b7
	ld a, c                                          ; $6b88: $79
	and a                                            ; $6b89: $a7
	or d                                             ; $6b8a: $b2
	ld l, a                                          ; $6b8b: $6f
	sub d                                            ; $6b8c: $92
	ld l, a                                          ; $6b8d: $6f
	ld [hl], d                                       ; $6b8e: $72
	rst GetHLinHL                                          ; $6b8f: $cf
	ld h, d                                          ; $6b90: $62
	rst SubAFromDE                                          ; $6b91: $df
	dec [hl]                                         ; $6b92: $35
	rst SubAFromDE                                          ; $6b93: $df
	sub l                                            ; $6b94: $95
	rst $38                                          ; $6b95: $ff
	xor e                                            ; $6b96: $ab

jr_069_6b97:
	rst $38                                          ; $6b97: $ff
	dec hl                                           ; $6b98: $2b
	sub e                                            ; $6b99: $93
	rst $38                                          ; $6b9a: $ff
	dec bc                                           ; $6b9b: $0b
	rst $38                                          ; $6b9c: $ff
	ld d, a                                          ; $6b9d: $57
	rst $38                                          ; $6b9e: $ff
	ld d, h                                          ; $6b9f: $54
	db $fc                                           ; $6ba0: $fc
	xor [hl]                                         ; $6ba1: $ae
	cp $aa                                           ; $6ba2: $fe $aa
	ld a, [$7131]                                    ; $6ba4: $fa $31 $71
	ld a, b                                          ; $6ba7: $78
	rst SubAFromDE                                          ; $6ba8: $df
	cp $80                                           ; $6ba9: $fe $80
	rst $38                                          ; $6bab: $ff
	add a                                            ; $6bac: $87
	ei                                               ; $6bad: $fb
	inc c                                            ; $6bae: $0c
	rst FarCall                                          ; $6baf: $f7
	jr @+$01                                         ; $6bb0: $18 $ff

	db $10                                           ; $6bb2: $10
	rst AddAOntoHL                                          ; $6bb3: $ef
	jr nc, @+$01                                     ; $6bb4: $30 $ff

	jr nz, jr_069_6b97                               ; $6bb6: $20 $df

	ld h, b                                          ; $6bb8: $60
	ld b, b                                          ; $6bb9: $40
	cp $40                                           ; $6bba: $fe $40
	db $fc                                           ; $6bbc: $fc
	add b                                            ; $6bbd: $80
	ld hl, sp-$80                                    ; $6bbe: $f8 $80
	pop af                                           ; $6bc0: $f1
	add b                                            ; $6bc1: $80
	pop hl                                           ; $6bc2: $e1
	add b                                            ; $6bc3: $80
	db $e3                                           ; $6bc4: $e3
	add b                                            ; $6bc5: $80
	jp $c780                                         ; $6bc6: $c3 $80 $c7


	ret nz                                           ; $6bc9: $c0

	add b                                            ; $6bca: $80
	ld b, a                                          ; $6bcb: $47
	ret nz                                           ; $6bcc: $c0

	ld c, a                                          ; $6bcd: $4f
	ret nz                                           ; $6bce: $c0

	ld l, a                                          ; $6bcf: $6f
	ld h, b                                          ; $6bd0: $60
	and a                                            ; $6bd1: $a7
	ld h, b                                          ; $6bd2: $60
	or a                                             ; $6bd3: $b7
	or b                                             ; $6bd4: $b0
	ld e, e                                          ; $6bd5: $5b
	add sp, $0f                                      ; $6bd6: $e8 $0f
	db $e4                                           ; $6bd8: $e4
	rlca                                             ; $6bd9: $07
	ld l, a                                          ; $6bda: $6f
	ld l, a                                          ; $6bdb: $6f
	or [hl]                                          ; $6bdc: $b6
	rst SubAFromDE                                          ; $6bdd: $df
	db $eb                                           ; $6bde: $eb
	cp h                                             ; $6bdf: $bc
	or $b9                                           ; $6be0: $f6 $b9
	xor c                                            ; $6be2: $a9
	or $ff                                           ; $6be3: $f6 $ff
	jp hl                                            ; $6be5: $e9


	cp a                                             ; $6be6: $bf
	ld a, a                                          ; $6be7: $7f
	ld a, h                                          ; $6be8: $7c
	add e                                            ; $6be9: $83
	add b                                            ; $6bea: $80
	sbc a                                            ; $6beb: $9f
	ldh [$ec], a                                     ; $6bec: $e0 $ec
	rst $38                                          ; $6bee: $ff
	or e                                             ; $6bef: $b3
	db $fc                                           ; $6bf0: $fc
	ld e, l                                          ; $6bf1: $5d
	cp [hl]                                          ; $6bf2: $be
	xor a                                            ; $6bf3: $af
	ld a, a                                          ; $6bf4: $7f
	ld l, l                                          ; $6bf5: $6d
	rst SubAFromDE                                          ; $6bf6: $df
	xor d                                            ; $6bf7: $aa
	rst SubAFromDE                                          ; $6bf8: $df
	ld e, a                                          ; $6bf9: $5f
	ei                                               ; $6bfa: $fb
	or [hl]                                          ; $6bfb: $b6
	ld a, e                                          ; $6bfc: $7b
	ld l, d                                          ; $6bfd: $6a
	or a                                             ; $6bfe: $b7

Jump_069_6bff:
	sub a                                            ; $6bff: $97
	cp $34                                           ; $6c00: $fe $34
	rst SubAFromDE                                          ; $6c02: $df
	call $997f                                       ; $6c03: $cd $7f $99
	ld l, a                                          ; $6c06: $6f
	ld a, c                                          ; $6c07: $79
	xor a                                            ; $6c08: $af
	ld l, d                                          ; $6c09: $6a
	sbc c                                            ; $6c0a: $99
	cp a                                             ; $6c0b: $bf
	ld l, d                                          ; $6c0c: $6a
	cp a                                             ; $6c0d: $bf
	ld h, [hl]                                       ; $6c0e: $66
	cp a                                             ; $6c0f: $bf
	ld d, l                                          ; $6c10: $55
	ld a, e                                          ; $6c11: $7b
	cp $9a                                           ; $6c12: $fe $9a
	ld e, c                                          ; $6c14: $59
	cp a                                             ; $6c15: $bf
	ld e, d                                          ; $6c16: $5a
	cp a                                             ; $6c17: $bf
	ld e, e                                          ; $6c18: $5b
	ld a, e                                          ; $6c19: $7b
	ld hl, sp+$7d                                    ; $6c1a: $f8 $7d
	ld a, [$2a8f]                                    ; $6c1c: $fa $8f $2a
	cp $2a                                           ; $6c1f: $fe $2a
	cp $34                                           ; $6c21: $fe $34
	db $fc                                           ; $6c23: $fc
	inc [hl]                                         ; $6c24: $34
	db $fc                                           ; $6c25: $fc
	jr z, @-$06                                      ; $6c26: $28 $f8

	ld l, b                                          ; $6c28: $68
	ld hl, sp+$50                                    ; $6c29: $f8 $50
	ldh a, [$60]                                     ; $6c2b: $f0 $60
	ldh [$dd], a                                     ; $6c2d: $e0 $dd
	ret nz                                           ; $6c2f: $c0

	ld d, h                                          ; $6c30: $54
	or $dd                                           ; $6c31: $f6 $dd
	add b                                            ; $6c33: $80
	rst SubAFromDE                                          ; $6c34: $df
	ld b, b                                          ; $6c35: $40
	ld h, d                                          ; $6c36: $62
	db $10                                           ; $6c37: $10
	sub h                                            ; $6c38: $94
	ld a, $c1                                        ; $6c39: $3e $c1
	rst $38                                          ; $6c3b: $ff
	nop                                              ; $6c3c: $00
	rst $38                                          ; $6c3d: $ff
	inc e                                            ; $6c3e: $1c
	db $e3                                           ; $6c3f: $e3
	ld a, $c1                                        ; $6c40: $3e $c1
	ld a, [hl]                                       ; $6c42: $7e
	add c                                            ; $6c43: $81
	ld a, e                                          ; $6c44: $7b
	rst FarCall                                          ; $6c45: $f7
	cp c                                             ; $6c46: $b9
	nop                                              ; $6c47: $00

jr_069_6c48:
	nop                                              ; $6c48: $00
	nop                                              ; $6c49: $00
	add b                                            ; $6c4a: $80
	ret nz                                           ; $6c4b: $c0

	ldh [$f0], a                                     ; $6c4c: $e0 $f0
	ld hl, sp-$80                                    ; $6c4e: $f8 $80
	add b                                            ; $6c50: $80
	ld a, b                                          ; $6c51: $78

jr_069_6c52:
	ret nz                                           ; $6c52: $c0

	cp b                                             ; $6c53: $b8
	ld h, b                                          ; $6c54: $60
	inc e                                            ; $6c55: $1c
	ldh a, [$ec]                                     ; $6c56: $f0 $ec

jr_069_6c58:
	jr jr_069_6c48                                   ; $6c58: $18 $ee

	jr jr_069_6c52                                   ; $6c5a: $18 $f6

	inc c                                            ; $6c5c: $0c
	rst FarCall                                          ; $6c5d: $f7
	inc c                                            ; $6c5e: $0c
	ei                                               ; $6c5f: $fb
	ld b, $00                                        ; $6c60: $06 $00
	nop                                              ; $6c62: $00
	ret nz                                           ; $6c63: $c0

	ret nz                                           ; $6c64: $c0

	ldh [rAUD4LEN], a                                ; $6c65: $e0 $20
	db $10                                           ; $6c67: $10
	ldh a, [$c8]                                     ; $6c68: $f0 $c8
	jr c, jr_069_6c58                                ; $6c6a: $38 $ec

	db $fc                                           ; $6c6c: $fc
	rst $38                                          ; $6c6d: $ff
	ei                                               ; $6c6e: $fb
	add b                                            ; $6c6f: $80
	ld a, [$f6e6]                                    ; $6c70: $fa $e6 $f6
	ld c, $dd                                        ; $6c73: $0e $dd
	inc sp                                           ; $6c75: $33
	pop af                                           ; $6c76: $f1
	rrca                                             ; $6c77: $0f
	jp $953f                                         ; $6c78: $c3 $3f $95


	rst $38                                          ; $6c7b: $ff
	add hl, sp                                       ; $6c7c: $39
	rst JumpTable                                          ; $6c7d: $c7

jr_069_6c7e:
	sub e                                            ; $6c7e: $93
	rst AddAOntoHL                                          ; $6c7f: $ef

jr_069_6c80:
	dec h                                            ; $6c80: $25
	rst $38                                          ; $6c81: $ff
	sbc d                                            ; $6c82: $9a
	and $c6                                          ; $6c83: $e6 $c6
	cp $fc                                           ; $6c85: $fe $fc
	db $fc                                           ; $6c87: $fc
	or h                                             ; $6c88: $b4
	call z, $fcfc                                    ; $6c89: $cc $fc $fc
	xor h                                            ; $6c8c: $ac
	call c, $9af8                                    ; $6c8d: $dc $f8 $9a
	ld hl, sp-$68                                    ; $6c90: $f8 $98
	ld hl, sp-$10                                    ; $6c92: $f8 $f0
	ldh a, [rLY]                                     ; $6c94: $f0 $44
	halt                                             ; $6c96: $76
	pop af                                           ; $6c97: $f1
	ld a, e                                          ; $6c98: $7b
	ld [hl], d                                       ; $6c99: $72
	add d                                            ; $6c9a: $82
	ret nz                                           ; $6c9b: $c0

	jr nz, jr_069_6c7e                               ; $6c9c: $20 $e0

	jr nz, jr_069_6c80                               ; $6c9e: $20 $e0

	db $10                                           ; $6ca0: $10
	ldh a, [rAUD1SWEEP]                              ; $6ca1: $f0 $10
	ldh a, [$08]                                     ; $6ca3: $f0 $08
	ld hl, sp+$08                                    ; $6ca5: $f8 $08
	ld hl, sp+$04                                    ; $6ca7: $f8 $04
	db $fc                                           ; $6ca9: $fc
	add h                                            ; $6caa: $84
	ld a, h                                          ; $6cab: $7c
	add d                                            ; $6cac: $82
	ld a, [hl]                                       ; $6cad: $7e
	add d                                            ; $6cae: $82
	ld a, [hl]                                       ; $6caf: $7e
	pop bc                                           ; $6cb0: $c1
	ccf                                              ; $6cb1: $3f
	pop bc                                           ; $6cb2: $c1
	ccf                                              ; $6cb3: $3f
	ret nz                                           ; $6cb4: $c0

	ccf                                              ; $6cb5: $3f
	ldh [$1f], a                                     ; $6cb6: $e0 $1f
	ld [hl], a                                       ; $6cb8: $77
	cp $7c                                           ; $6cb9: $fe $7c
	add d                                            ; $6cbb: $82
	ld a, a                                          ; $6cbc: $7f
	cp $99                                           ; $6cbd: $fe $99
	ld hl, sp+$07                                    ; $6cbf: $f8 $07
	ld hl, sp+$07                                    ; $6cc1: $f8 $07
	db $fc                                           ; $6cc3: $fc
	inc bc                                           ; $6cc4: $03
	ld c, e                                          ; $6cc5: $4b
	add $73                                          ; $6cc6: $c6 $73
	jr c, jr_069_6d42                                ; $6cc8: $38 $78

	xor $7f                                          ; $6cca: $ee $7f
	jp nz, $109e                                     ; $6ccc: $c2 $9e $10

	cpl                                              ; $6ccf: $2f
	and h                                            ; $6cd0: $a4
	ld [hl], a                                       ; $6cd1: $77
	and d                                            ; $6cd2: $a2
	ld d, a                                          ; $6cd3: $57
	and b                                            ; $6cd4: $a0
	ld [hl+], a                                      ; $6cd5: $22
	nop                                              ; $6cd6: $00
	db $db                                           ; $6cd7: $db
	sbc c                                            ; $6cd8: $99
	sbc l                                            ; $6cd9: $9d
	adc b                                            ; $6cda: $88
	cp e                                             ; $6cdb: $bb
	sbc $99                                          ; $6cdc: $de $99
	sbc l                                            ; $6cde: $9d
	cp e                                             ; $6cdf: $bb
	ld [hl+], a                                      ; $6ce0: $22
	sbc $99                                          ; $6ce1: $de $99
	sbc [hl]                                         ; $6ce3: $9e
	nop                                              ; $6ce4: $00
	ld l, e                                          ; $6ce5: $6b
	ei                                               ; $6ce6: $fb
	rst SubAFromDE                                          ; $6ce7: $df
	ld de, $889e                                     ; $6ce8: $11 $9e $88
	ld a, e                                          ; $6ceb: $7b
	ei                                               ; $6cec: $fb
	ld a, a                                          ; $6ced: $7f
	db $ec                                           ; $6cee: $ec
	sbc [hl]                                         ; $6cef: $9e
	nop                                              ; $6cf0: $00
	ld a, e                                          ; $6cf1: $7b
	add sp, $7f                                      ; $6cf2: $e8 $7f
	db $e3                                           ; $6cf4: $e3
	sbc [hl]                                         ; $6cf5: $9e
	cp e                                             ; $6cf6: $bb
	ldh [c], a                                       ; $6cf7: $e2
	ld bc, $5280                                     ; $6cf8: $01 $80 $52
	ld a, a                                          ; $6cfb: $7f
	ld h, b                                          ; $6cfc: $60
	ld a, a                                          ; $6cfd: $7f
	xor b                                            ; $6cfe: $a8
	rst $38                                          ; $6cff: $ff
	sub d                                            ; $6d00: $92
	rst $38                                          ; $6d01: $ff
	and h                                            ; $6d02: $a4
	rst $38                                          ; $6d03: $ff
	add hl, hl                                       ; $6d04: $29
	rst $38                                          ; $6d05: $ff
	ld c, d                                          ; $6d06: $4a
	rst $38                                          ; $6d07: $ff
	ld d, b                                          ; $6d08: $50
	rst $38                                          ; $6d09: $ff
	and c                                            ; $6d0a: $a1
	rst $38                                          ; $6d0b: $ff
	and d                                            ; $6d0c: $a2
	rst $38                                          ; $6d0d: $ff
	ld b, l                                          ; $6d0e: $45
	cp $4d                                           ; $6d0f: $fe $4d
	cp $4f                                           ; $6d11: $fe $4f
	db $fc                                           ; $6d13: $fc
	sbc e                                            ; $6d14: $9b
	rst $38                                          ; $6d15: $ff
	inc e                                            ; $6d16: $1c
	ei                                               ; $6d17: $fb
	cp a                                             ; $6d18: $bf
	sub c                                            ; $6d19: $91
	ld hl, sp-$44                                    ; $6d1a: $f8 $bc
	ld sp, hl                                        ; $6d1c: $f9
	inc [hl]                                         ; $6d1d: $34
	ld sp, hl                                        ; $6d1e: $f9
	ld [hl], b                                       ; $6d1f: $70
	ld hl, sp+$53                                    ; $6d20: $f8 $53
	ld hl, sp+$58                                    ; $6d22: $f8 $58
	ldh a, [$58]                                     ; $6d24: $f0 $58
	ldh a, [$98]                                     ; $6d26: $f0 $98
	ld a, e                                          ; $6d28: $7b
	cp $9a                                           ; $6d29: $fe $9a
	cp b                                             ; $6d2b: $b8
	ld hl, sp-$48                                    ; $6d2c: $f8 $b8
	ld hl, sp-$54                                    ; $6d2e: $f8 $ac
	ld a, e                                          ; $6d30: $7b
	cp $80                                           ; $6d31: $fe $80
	ld l, $fc                                        ; $6d33: $2e $fc
	ld a, [hl]                                       ; $6d35: $7e
	db $fc                                           ; $6d36: $fc
	ld a, a                                          ; $6d37: $7f
	cp $7f                                           ; $6d38: $fe $7f
	cp $4c                                           ; $6d3a: $fe $4c
	rst $38                                          ; $6d3c: $ff
	sbc b                                            ; $6d3d: $98
	cp $31                                           ; $6d3e: $fe $31
	ld sp, hl                                        ; $6d40: $f9
	ld h, d                                          ; $6d41: $62

jr_069_6d42:
	rst $38                                          ; $6d42: $ff
	xor a                                            ; $6d43: $af
	db $fc                                           ; $6d44: $fc
	ld a, $f0                                        ; $6d45: $3e $f0
	ld a, b                                          ; $6d47: $78
	ldh [$b0], a                                     ; $6d48: $e0 $b0
	ret nz                                           ; $6d4a: $c0

	nop                                              ; $6d4b: $00
	ldh a, [$f0]                                     ; $6d4c: $f0 $f0
	ld hl, sp-$18                                    ; $6d4e: $f8 $e8
	inc e                                            ; $6d50: $1c
	db $fc                                           ; $6d51: $fc
	add b                                            ; $6d52: $80
	inc b                                            ; $6d53: $04
	ld l, h                                          ; $6d54: $6c
	ldh a, [$d6]                                     ; $6d55: $f0 $d6
	ld hl, sp-$72                                    ; $6d57: $f8 $8e
	ret z                                            ; $6d59: $c8

	db $fc                                           ; $6d5a: $fc
	ld hl, sp+$78                                    ; $6d5b: $f8 $78
	ld hl, sp+$50                                    ; $6d5d: $f8 $50
	ld hl, sp+$00                                    ; $6d5f: $f8 $00
	ret nc                                           ; $6d61: $d0

	add b                                            ; $6d62: $80
	ldh [rSC], a                                     ; $6d63: $e0 $02
	nop                                              ; $6d65: $00
	rlca                                             ; $6d66: $07
	nop                                              ; $6d67: $00
	rla                                              ; $6d68: $17
	ld [$180f], sp                                   ; $6d69: $08 $0f $18
	inc e                                            ; $6d6c: $1c
	rst $38                                          ; $6d6d: $ff
	ld a, c                                          ; $6d6e: $79
	ld a, a                                          ; $6d6f: $7f
	sub c                                            ; $6d70: $91
	ei                                               ; $6d71: $fb
	add d                                            ; $6d72: $82
	ldh [c], a                                       ; $6d73: $e2
	inc sp                                           ; $6d74: $33
	rst SubAFromBC                                          ; $6d75: $e7
	daa                                              ; $6d76: $27
	ld c, c                                          ; $6d77: $49
	ld c, a                                          ; $6d78: $4f
	ld e, l                                          ; $6d79: $5d
	ld e, e                                          ; $6d7a: $5b
	ld e, a                                          ; $6d7b: $5f
	ld d, c                                          ; $6d7c: $51
	ld [hl], e                                       ; $6d7d: $73
	ld h, c                                          ; $6d7e: $61
	ld h, c                                          ; $6d7f: $61
	ld b, c                                          ; $6d80: $41
	ld h, b                                          ; $6d81: $60
	ld b, c                                          ; $6d82: $41
	ld b, c                                          ; $6d83: $41
	nop                                              ; $6d84: $00
	ld bc, $0300                                     ; $6d85: $01 $00 $03
	nop                                              ; $6d88: $00
	dec c                                            ; $6d89: $0d
	inc bc                                           ; $6d8a: $03
	rra                                              ; $6d8b: $1f
	rlca                                             ; $6d8c: $07
	ccf                                              ; $6d8d: $3f
	nop                                              ; $6d8e: $00
	dec a                                            ; $6d8f: $3d
	ld a, e                                          ; $6d90: $7b
	ld a, [$1992]                                    ; $6d91: $fa $92 $19
	rlca                                             ; $6d94: $07
	inc de                                           ; $6d95: $13
	inc bc                                           ; $6d96: $03
	inc bc                                           ; $6d97: $03
	rlca                                             ; $6d98: $07
	add d                                            ; $6d99: $82
	rlca                                             ; $6d9a: $07
	add [hl]                                         ; $6d9b: $86
	inc bc                                           ; $6d9c: $03
	rlca                                             ; $6d9d: $07
	ld bc, $fe03                                     ; $6d9e: $01 $03 $fe
	sbc [hl]                                         ; $6da1: $9e
	add b                                            ; $6da2: $80
	cp $77                                           ; $6da3: $fe $77
	sbc $80                                          ; $6da5: $de $80
	rrca                                             ; $6da7: $0f
	nop                                              ; $6da8: $00
	pop af                                           ; $6da9: $f1
	ld sp, hl                                        ; $6daa: $f9
	ret z                                            ; $6dab: $c8

	cp $44                                           ; $6dac: $fe $44
	rst $38                                          ; $6dae: $ff
	ld h, a                                          ; $6daf: $67
	rst $38                                          ; $6db0: $ff
	ld [hl+], a                                      ; $6db1: $22
	rst FarCall                                          ; $6db2: $f7
	ld [hl+], a                                      ; $6db3: $22
	di                                               ; $6db4: $f3
	ld [hl+], a                                      ; $6db5: $22
	or e                                             ; $6db6: $b3
	inc sp                                           ; $6db7: $33
	cp e                                             ; $6db8: $bb
	inc sp                                           ; $6db9: $33
	cp e                                             ; $6dba: $bb
	dec hl                                           ; $6dbb: $2b
	cp a                                             ; $6dbc: $bf
	xor d                                            ; $6dbd: $aa
	rst $38                                          ; $6dbe: $ff
	cp d                                             ; $6dbf: $ba
	rst AddAOntoHL                                          ; $6dc0: $ef
	or [hl]                                          ; $6dc1: $b6
	rst AddAOntoHL                                          ; $6dc2: $ef
	cp $67                                           ; $6dc3: $fe $67
	cp $80                                           ; $6dc5: $fe $80
	di                                               ; $6dc7: $f3
	ld a, $fb                                        ; $6dc8: $3e $fb
	and $3f                                          ; $6dca: $e6 $3f
	jp c, $eee7                                      ; $6dcc: $da $e7 $ee

	di                                               ; $6dcf: $f3
	ld a, $73                                        ; $6dd0: $3e $73
	ld a, $b3                                        ; $6dd2: $3e $b3
	ld a, [$d6ff]                                    ; $6dd4: $fa $ff $d6
	ei                                               ; $6dd7: $fb
	ld e, h                                          ; $6dd8: $5c
	rst JumpTable                                          ; $6dd9: $c7
	db $fc                                           ; $6dda: $fc
	add a                                            ; $6ddb: $87
	db $fc                                           ; $6ddc: $fc
	rlca                                             ; $6ddd: $07
	ld hl, sp+$0f                                    ; $6dde: $f8 $0f
	ld a, b                                          ; $6de0: $78
	rrca                                             ; $6de1: $0f
	ld hl, sp+$1f                                    ; $6de2: $f8 $1f
	ldh a, [$1f]                                     ; $6de4: $f0 $1f
	sbc e                                            ; $6de6: $9b
	ldh a, [$3f]                                     ; $6de7: $f0 $3f
	pop af                                           ; $6de9: $f1
	ld a, a                                          ; $6dea: $7f
	dec de                                           ; $6deb: $1b
	db $10                                           ; $6dec: $10
	sub h                                            ; $6ded: $94
	db $fc                                           ; $6dee: $fc
	dec de                                           ; $6def: $1b
	rst $38                                          ; $6df0: $ff
	cp [hl]                                          ; $6df1: $be
	ld sp, hl                                        ; $6df2: $f9
	cp l                                             ; $6df3: $bd
	ld sp, hl                                        ; $6df4: $f9
	dec [hl]                                         ; $6df5: $35
	ld sp, hl                                        ; $6df6: $f9
	ld [hl], c                                       ; $6df7: $71
	ld sp, hl                                        ; $6df8: $f9
	inc bc                                           ; $6df9: $03
	db $10                                           ; $6dfa: $10
	ld b, e                                          ; $6dfb: $43
	db $10                                           ; $6dfc: $10
	sub a                                            ; $6dfd: $97
	db $fc                                           ; $6dfe: $fc
	nop                                              ; $6dff: $00
	sbc [hl]                                         ; $6e00: $9e
	ld h, b                                          ; $6e01: $60
	xor $f0                                          ; $6e02: $ee $f0
	call nc, $03d8                                   ; $6e04: $d4 $d8 $03
	db $10                                           ; $6e07: $10
	ld b, e                                          ; $6e08: $43
	db $10                                           ; $6e09: $10
	ld a, a                                          ; $6e0a: $7f
	cp $9b                                           ; $6e0b: $fe $9b
	dec e                                            ; $6e0d: $1d
	inc bc                                           ; $6e0e: $03
	rra                                              ; $6e0f: $1f
	rrca                                             ; $6e10: $0f
	inc bc                                           ; $6e11: $03
	db $10                                           ; $6e12: $10
	inc hl                                           ; $6e13: $23
	db $10                                           ; $6e14: $10
	sub e                                            ; $6e15: $93
	ld a, [$be07]                                    ; $6e16: $fa $07 $be
	jp $e3de                                         ; $6e19: $c3 $de $e3


	ld l, $b3                                        ; $6e1c: $2e $b3
	cp $f3                                           ; $6e1e: $fe $f3
	jp c, $03ff                                      ; $6e20: $da $ff $03

	db $10                                           ; $6e23: $10
	ld d, e                                          ; $6e24: $53
	db $10                                           ; $6e25: $10
	sub [hl]                                         ; $6e26: $96
	rra                                              ; $6e27: $1f
	ld hl, sp-$42                                    ; $6e28: $f8 $be
	ld sp, hl                                        ; $6e2a: $f9
	cp e                                             ; $6e2b: $bb
	rst $38                                          ; $6e2c: $ff
	scf                                              ; $6e2d: $37
	ld sp, hl                                        ; $6e2e: $f9
	ld [hl], c                                       ; $6e2f: $71
	ld [bc], a                                       ; $6e30: $02
	jr nz, jr_069_6e6a                               ; $6e31: $20 $37

	db $10                                           ; $6e33: $10
	sub c                                            ; $6e34: $91
	cp $00                                           ; $6e35: $fe $00
	ld e, $00                                        ; $6e37: $1e $00
	call c, $e8e0                                    ; $6e39: $dc $e0 $e8
	ldh a, [rAUD2LOW]                                ; $6e3c: $f0 $18
	cp b                                             ; $6e3e: $b8
	ret nc                                           ; $6e3f: $d0

	ldh [$a0], a                                     ; $6e40: $e0 $a0
	ld b, b                                          ; $6e42: $40
	inc bc                                           ; $6e43: $03
	db $10                                           ; $6e44: $10
	ld e, e                                          ; $6e45: $5b
	db $10                                           ; $6e46: $10
	sbc [hl]                                         ; $6e47: $9e
	rra                                              ; $6e48: $1f
	ld a, e                                          ; $6e49: $7b
	cp $9b                                           ; $6e4a: $fe $9b
	inc e                                            ; $6e4c: $1c
	nop                                              ; $6e4d: $00
	rrca                                             ; $6e4e: $0f
	rrca                                             ; $6e4f: $0f
	inc bc                                           ; $6e50: $03
	db $10                                           ; $6e51: $10
	dec hl                                           ; $6e52: $2b
	db $10                                           ; $6e53: $10
	sub c                                            ; $6e54: $91
	cp $03                                           ; $6e55: $fe $03
	cp $03                                           ; $6e57: $fe $03
	ld a, [hl]                                       ; $6e59: $7e
	inc bc                                           ; $6e5a: $03
	cp [hl]                                          ; $6e5b: $be
	jp Jump_069_675a                                 ; $6e5c: $c3 $5a $67


	db $fc                                           ; $6e5f: $fc
	rst FarCall                                          ; $6e60: $f7
	cp h                                             ; $6e61: $bc
	rst JumpTable                                          ; $6e62: $c7
	inc bc                                           ; $6e63: $03
	db $10                                           ; $6e64: $10
	ld e, e                                          ; $6e65: $5b
	db $10                                           ; $6e66: $10
	ld a, c                                          ; $6e67: $79
	jr nc, @-$65                                     ; $6e68: $30 $99

jr_069_6e6a:
	cp $36                                           ; $6e6a: $fe $36
	ei                                               ; $6e6c: $fb
	ld [hl], e                                       ; $6e6d: $73
	ld sp, hl                                        ; $6e6e: $f9
	ld d, b                                          ; $6e6f: $50
	inc bc                                           ; $6e70: $03
	db $10                                           ; $6e71: $10
	scf                                              ; $6e72: $37
	db $10                                           ; $6e73: $10
	ld a, a                                          ; $6e74: $7f
	cp $7f                                           ; $6e75: $fe $7f
	ld a, [$7897]                                    ; $6e77: $fa $97 $78
	nop                                              ; $6e7a: $00
	jr jr_069_6e7d                                   ; $6e7b: $18 $00

jr_069_6e7d:
	ldh a, [$e0]                                     ; $6e7d: $f0 $e0
	ldh [rP1], a                                     ; $6e7f: $e0 $00
	inc bc                                           ; $6e81: $03
	db $10                                           ; $6e82: $10
	ld c, e                                          ; $6e83: $4b
	db $10                                           ; $6e84: $10
	sub [hl]                                         ; $6e85: $96
	dec bc                                           ; $6e86: $0b
	nop                                              ; $6e87: $00
	ld [$870c], sp                                   ; $6e88: $08 $0c $87
	ld c, $83                                        ; $6e8b: $0e $83
	rlca                                             ; $6e8d: $07
	ld b, $03                                        ; $6e8e: $06 $03
	db $10                                           ; $6e90: $10
	cpl                                              ; $6e91: $2f
	db $10                                           ; $6e92: $10
	ld [hl], a                                       ; $6e93: $77
	cp $9a                                           ; $6e94: $fe $9a
	ld a, $03                                        ; $6e96: $3e $03
	db $fc                                           ; $6e98: $fc
	rst FarCall                                          ; $6e99: $f7
	db $fc                                           ; $6e9a: $fc
	ld c, e                                          ; $6e9b: $4b
	db $10                                           ; $6e9c: $10
	pop af                                           ; $6e9d: $f1
	adc a                                            ; $6e9e: $8f
	rlca                                             ; $6e9f: $07
	ld [$403c], sp                                   ; $6ea0: $08 $3c $40
	ld a, [hl+]                                      ; $6ea3: $2a
	ld h, h                                          ; $6ea4: $64
	ld a, a                                          ; $6ea5: $7f
	ccf                                              ; $6ea6: $3f
	ccf                                              ; $6ea7: $3f
	ld h, $1a                                        ; $6ea8: $26 $1a
	inc e                                            ; $6eaa: $1c
	nop                                              ; $6eab: $00
	nop                                              ; $6eac: $00
	ld [$3f10], sp                                   ; $6ead: $08 $10 $3f
	ldh [$9b], a                                     ; $6eb0: $e0 $9b
	jr nc, @+$42                                     ; $6eb2: $30 $40

	ld l, d                                          ; $6eb4: $6a
	inc h                                            ; $6eb5: $24
	sbc $3f                                          ; $6eb6: $de $3f
	sbc [hl]                                         ; $6eb8: $9e
	ld e, $7b                                        ; $6eb9: $1e $7b

jr_069_6ebb:
	pop hl                                           ; $6ebb: $e1
	inc sp                                           ; $6ebc: $33
	ldh [hDisp1_OBP0], a                                     ; $6ebd: $e0 $93
	nop                                              ; $6ebf: $00
	ld b, b                                          ; $6ec0: $40
	ld a, b                                          ; $6ec1: $78
	jr nc, jr_069_6f03                               ; $6ec2: $30 $3f

	ccf                                              ; $6ec4: $3f
	rra                                              ; $6ec5: $1f
	ld d, $00                                        ; $6ec6: $16 $00
	nop                                              ; $6ec8: $00
	inc b                                            ; $6ec9: $04
	jr jr_069_6ebb                                   ; $6eca: $18 $ef

	ld a, a                                          ; $6ecc: $7f
	ldh [$98], a                                     ; $6ecd: $e0 $98
	ld b, b                                          ; $6ecf: $40
	nop                                              ; $6ed0: $00
	jr nc, jr_069_6ef3                               ; $6ed1: $30 $20

	rra                                              ; $6ed3: $1f
	rlca                                             ; $6ed4: $07
	nop                                              ; $6ed5: $00
	ld a, d                                          ; $6ed6: $7a
	ld hl, sp-$03                                    ; $6ed7: $f8 $fd
	rra                                              ; $6ed9: $1f
	inc bc                                           ; $6eda: $03
	rst FarCall                                          ; $6edb: $f7
	db $dd                                           ; $6edc: $dd
	ld bc, $0282                                     ; $6edd: $01 $82 $02
	inc bc                                           ; $6ee0: $03
	ld [bc], a                                       ; $6ee1: $02
	inc bc                                           ; $6ee2: $03
	inc b                                            ; $6ee3: $04
	rlca                                             ; $6ee4: $07
	dec b                                            ; $6ee5: $05
	rlca                                             ; $6ee6: $07
	ld b, $07                                        ; $6ee7: $06 $07
	inc b                                            ; $6ee9: $04
	rlca                                             ; $6eea: $07
	dec bc                                           ; $6eeb: $0b
	rrca                                             ; $6eec: $0f
	ld e, $1f                                        ; $6eed: $1e $1f
	ld [hl], $37                                     ; $6eef: $36 $37
	ld b, $05                                        ; $6ef1: $06 $05

jr_069_6ef3:
	ld b, $05                                        ; $6ef3: $06 $05
	dec c                                            ; $6ef5: $0d
	ld a, [bc]                                       ; $6ef6: $0a
	dec c                                            ; $6ef7: $0d
	ld a, [bc]                                       ; $6ef8: $0a
	ld a, [bc]                                       ; $6ef9: $0a
	dec c                                            ; $6efa: $0d
	dec bc                                           ; $6efb: $0b
	ld a, e                                          ; $6efc: $7b
	cp $9d                                           ; $6efd: $fe $9d
	inc c                                            ; $6eff: $0c
	dec bc                                           ; $6f00: $0b
	ld [hl], a                                       ; $6f01: $77
	db $f4                                           ; $6f02: $f4

jr_069_6f03:
	ld a, a                                          ; $6f03: $7f
	cp $9d                                           ; $6f04: $fe $9d
	add hl, bc                                       ; $6f06: $09
	ld c, $77                                        ; $6f07: $0e $77
	ldh a, [c]                                       ; $6f09: $f2
	ld a, a                                          ; $6f0a: $7f
	cp $98                                           ; $6f0b: $fe $98
	rrca                                             ; $6f0d: $0f
	dec c                                            ; $6f0e: $0d
	dec c                                            ; $6f0f: $0d
	rrca                                             ; $6f10: $0f
	inc c                                            ; $6f11: $0c
	rrca                                             ; $6f12: $0f
	dec b                                            ; $6f13: $05
	ld a, e                                          ; $6f14: $7b
	adc $7b                                          ; $6f15: $ce $7b
	db $fd                                           ; $6f17: $fd
	ld [hl], e                                       ; $6f18: $73
	cp $7f                                           ; $6f19: $fe $7f
	ret z                                            ; $6f1b: $c8

	ld a, a                                          ; $6f1c: $7f
	cp [hl]                                          ; $6f1d: $be
	ld a, e                                          ; $6f1e: $7b
	cp e                                             ; $6f1f: $bb
	sbc [hl]                                         ; $6f20: $9e
	ld [bc], a                                       ; $6f21: $02
	db $db                                           ; $6f22: $db
	ld bc, $a24f                                     ; $6f23: $01 $4f $a2
	reti                                             ; $6f26: $d9


	ld bc, $6293                                     ; $6f27: $01 $93 $62
	ld h, e                                          ; $6f2a: $63
	sub d                                            ; $6f2b: $92
	di                                               ; $6f2c: $f3
	xor d                                            ; $6f2d: $aa
	db $db                                           ; $6f2e: $db
	ld [hl], a                                       ; $6f2f: $77
	ld c, [hl]                                       ; $6f30: $4e
	ld e, e                                          ; $6f31: $5b
	ld h, [hl]                                       ; $6f32: $66
	dec l                                            ; $6f33: $2d
	inc sp                                           ; $6f34: $33
	rst AddAOntoHL                                          ; $6f35: $ef
	rst SubAFromDE                                          ; $6f36: $df
	inc c                                            ; $6f37: $0c
	rst SubAFromDE                                          ; $6f38: $df
	rlca                                             ; $6f39: $07
	ld a, a                                          ; $6f3a: $7f
	cp a                                             ; $6f3b: $bf

Jump_069_6f3c:
	db $dd                                           ; $6f3c: $dd
	ld bc, $7a7f                                     ; $6f3d: $01 $7f $7a
	add b                                            ; $6f40: $80
	add hl, bc                                       ; $6f41: $09
	rrca                                             ; $6f42: $0f
	ld [de], a                                       ; $6f43: $12
	rra                                              ; $6f44: $1f
	daa                                              ; $6f45: $27
	ccf                                              ; $6f46: $3f
	dec sp                                           ; $6f47: $3b
	inc a                                            ; $6f48: $3c
	ld c, a                                          ; $6f49: $4f
	ld [hl], b                                       ; $6f4a: $70
	or b                                             ; $6f4b: $b0
	rst GetHLinHL                                          ; $6f4c: $cf
	ld c, h                                          ; $6f4d: $4c
	or e                                             ; $6f4e: $b3
	or a                                             ; $6f4f: $b7
	ld c, a                                          ; $6f50: $4f
	ld e, e                                          ; $6f51: $5b
	cp h                                             ; $6f52: $bc
	xor a                                            ; $6f53: $af
	ld [hl], b                                       ; $6f54: $70
	reti                                             ; $6f55: $d9


	rst SubAFromBC                                          ; $6f56: $e7
	rlca                                             ; $6f57: $07
	rst $38                                          ; $6f58: $ff
	ccf                                              ; $6f59: $3f
	rst $38                                          ; $6f5a: $ff
	ld [$54ff], a                                    ; $6f5b: $ea $ff $54
	rst $38                                          ; $6f5e: $ff
	add c                                            ; $6f5f: $81
	sbc h                                            ; $6f60: $9c
	rst $38                                          ; $6f61: $ff
	add hl, hl                                       ; $6f62: $29
	rst $38                                          ; $6f63: $ff
	ldh [$c1], a                                     ; $6f64: $e0 $c1
	add b                                            ; $6f66: $80
	db $e4                                           ; $6f67: $e4
	db $fc                                           ; $6f68: $fc
	ldh [c], a                                       ; $6f69: $e2
	ld a, [$fca0]                                    ; $6f6a: $fa $a0 $fc
	and b                                            ; $6f6d: $a0
	or $12                                           ; $6f6e: $f6 $12
	rst SubAFromHL                                          ; $6f70: $d7
	ld [de], a                                       ; $6f71: $12
	sub e                                            ; $6f72: $93
	ld bc, $0183                                     ; $6f73: $01 $83 $01
	add e                                            ; $6f76: $83
	nop                                              ; $6f77: $00
	add a                                            ; $6f78: $87
	nop                                              ; $6f79: $00
	add a                                            ; $6f7a: $87
	ld bc, $030f                                     ; $6f7b: $01 $0f $03
	ld c, $06                                        ; $6f7e: $0e $06
	inc c                                            ; $6f80: $0c
	ld b, $1c                                        ; $6f81: $06 $1c
	ld c, $18                                        ; $6f83: $0e $18
	rrca                                             ; $6f85: $0f
	sbc [hl]                                         ; $6f86: $9e
	jr c, @-$03                                      ; $6f87: $38 $fb

	rst SubAFromDE                                          ; $6f89: $df
	ld [bc], a                                       ; $6f8a: $02
	rst SubAFromDE                                          ; $6f8b: $df
	inc b                                            ; $6f8c: $04
	db $dd                                           ; $6f8d: $dd
	ld [$0ddf], sp                                   ; $6f8e: $08 $df $0d
	add b                                            ; $6f91: $80
	ld a, [bc]                                       ; $6f92: $0a
	rrca                                             ; $6f93: $0f
	add hl, bc                                       ; $6f94: $09
	rrca                                             ; $6f95: $0f
	add h                                            ; $6f96: $84
	add a                                            ; $6f97: $87
	ld a, e                                          ; $6f98: $7b
	rst $38                                          ; $6f99: $ff
	inc de                                           ; $6f9a: $13
	db $fd                                           ; $6f9b: $fd
	xor [hl]                                         ; $6f9c: $ae
	db $db                                           ; $6f9d: $db
	push de                                          ; $6f9e: $d5
	xor $3b                                          ; $6f9f: $ee $3b
	and $5d                                          ; $6fa1: $e6 $5d
	di                                               ; $6fa3: $f3
	sub h                                            ; $6fa4: $94
	ei                                               ; $6fa5: $fb
	ld l, [hl]                                       ; $6fa6: $6e
	ld sp, hl                                        ; $6fa7: $f9
	jp c, $6e3d                                      ; $6fa8: $da $3d $6e

	sbc l                                            ; $6fab: $9d
	call nz, $3eff                                   ; $6fac: $c4 $ff $3e
	rst $38                                          ; $6faf: $ff
	ld [bc], a                                       ; $6fb0: $02
	adc [hl]                                         ; $6fb1: $8e
	rra                                              ; $6fb2: $1f
	rst GetHLinHL                                          ; $6fb3: $cf
	ccf                                              ; $6fb4: $3f
	rst $38                                          ; $6fb5: $ff
	rst $38                                          ; $6fb6: $ff
	sbc d                                            ; $6fb7: $9a
	rst $38                                          ; $6fb8: $ff
	dec sp                                           ; $6fb9: $3b
	and $75                                          ; $6fba: $e6 $75
	adc $ef                                          ; $6fbc: $ce $ef
	sbc h                                            ; $6fbe: $9c
	sbc $3c                                          ; $6fbf: $de $3c
	or [hl]                                          ; $6fc1: $b6
	ld a, h                                          ; $6fc2: $7c
	ldh [$c1], a                                     ; $6fc3: $e0 $c1
	add b                                            ; $6fc5: $80
	ld [bc], a                                       ; $6fc6: $02
	rlca                                             ; $6fc7: $07
	ld b, $0d                                        ; $6fc8: $06 $0d
	rrca                                             ; $6fca: $0f
	ld [$1a0d], sp                                   ; $6fcb: $08 $0d $1a
	dec e                                            ; $6fce: $1d
	ld [de], a                                       ; $6fcf: $12
	rra                                              ; $6fd0: $1f
	ld sp, $653b                                     ; $6fd1: $31 $3b $65
	ld l, e                                          ; $6fd4: $6b
	push bc                                          ; $6fd5: $c5
	sbc $c3                                          ; $6fd6: $de $c3
	add [hl]                                         ; $6fd8: $86
	add e                                            ; $6fd9: $83
	add [hl]                                         ; $6fda: $86
	dec bc                                           ; $6fdb: $0b
	ld b, $1b                                        ; $6fdc: $06 $1b
	ld d, $2a                                        ; $6fde: $16 $2a
	ld h, [hl]                                       ; $6fe0: $66
	ld a, [bc]                                       ; $6fe1: $0a
	dec d                                            ; $6fe2: $15
	dec bc                                           ; $6fe3: $0b
	ld a, [hl-]                                      ; $6fe4: $3a
	add b                                            ; $6fe5: $80
	dec b                                            ; $6fe6: $05
	inc bc                                           ; $6fe7: $03
	inc bc                                           ; $6fe8: $03
	ld c, $0f                                        ; $6fe9: $0e $0f
	dec d                                            ; $6feb: $15
	ld a, [de]                                       ; $6fec: $1a
	dec hl                                           ; $6fed: $2b
	inc [hl]                                         ; $6fee: $34
	ld e, d                                          ; $6fef: $5a
	ld h, l                                          ; $6ff0: $65
	ld d, e                                          ; $6ff1: $53
	ld l, l                                          ; $6ff2: $6d
	push de                                          ; $6ff3: $d5
	db $eb                                           ; $6ff4: $eb
	ld b, l                                          ; $6ff5: $45
	ei                                               ; $6ff6: $fb
	ld hl, $1bff                                     ; $6ff7: $21 $ff $1b
	rst $38                                          ; $6ffa: $ff
	db $e4                                           ; $6ffb: $e4
	rst $38                                          ; $6ffc: $ff
	ld e, [hl]                                       ; $6ffd: $5e
	cp a                                             ; $6ffe: $bf
	db $db                                           ; $6fff: $db
	rst SubAFromBC                                          ; $7000: $e7
	db $fc                                           ; $7001: $fc
	ccf                                              ; $7002: $3f
	or l                                             ; $7003: $b5
	ld c, a                                          ; $7004: $4f
	add b                                            ; $7005: $80
	ld h, [hl]                                       ; $7006: $66
	sbc a                                            ; $7007: $9f
	ld e, c                                          ; $7008: $59
	cp a                                             ; $7009: $bf
	and [hl]                                         ; $700a: $a6
	rst $38                                          ; $700b: $ff
	ld a, h                                          ; $700c: $7c
	rst $38                                          ; $700d: $ff
	ld l, e                                          ; $700e: $6b
	rst FarCall                                          ; $700f: $f7
	ld d, [hl]                                       ; $7010: $56
	pop hl                                           ; $7011: $e1
	pop hl                                           ; $7012: $e1
	add b                                            ; $7013: $80
	cp h                                             ; $7014: $bc
	rst $38                                          ; $7015: $ff
	jp $e5ff                                         ; $7016: $c3 $ff $e5


	ei                                               ; $7019: $fb
	sub l                                            ; $701a: $95
	ld hl, sp-$17                                    ; $701b: $f8 $e9
	call c, $eed4                                    ; $701d: $dc $d4 $ee
	ld a, [$6fe7]                                    ; $7020: $fa $e7 $6f
	di                                               ; $7023: $f3
	ld d, [hl]                                       ; $7024: $56
	sbc h                                            ; $7025: $9c
	ei                                               ; $7026: $fb
	ld a, c                                          ; $7027: $79
	rst GetHLinHL                                          ; $7028: $cf
	ldh [$c1], a                                     ; $7029: $e0 $c1
	adc a                                            ; $702b: $8f
	call nz, $c47c                                   ; $702c: $c4 $7c $c4
	ld a, h                                          ; $702f: $7c
	add h                                            ; $7030: $84
	db $fc                                           ; $7031: $fc
	ret nz                                           ; $7032: $c0

	ld hl, sp-$60                                    ; $7033: $f8 $a0
	pop af                                           ; $7035: $f1
	db $10                                           ; $7036: $10
	db $db                                           ; $7037: $db
	inc c                                            ; $7038: $0c
	adc [hl]                                         ; $7039: $8e
	nop                                              ; $703a: $00
	add b                                            ; $703b: $80
	ld a, e                                          ; $703c: $7b
	cp $80                                           ; $703d: $fe $80
	add c                                            ; $703f: $81
	nop                                              ; $7040: $00
	call nz, $c800                                   ; $7041: $c4 $00 $c8
	nop                                              ; $7044: $00
	ld [hl], b                                       ; $7045: $70
	ld bc, $0731                                     ; $7046: $01 $31 $07
	ld h, $fa                                        ; $7049: $26 $fa
	db $fd                                           ; $704b: $fd
	sbc [hl]                                         ; $704c: $9e
	cp $a1                                           ; $704d: $fe $a1
	ld a, a                                          ; $704f: $7f
	ld l, [hl]                                       ; $7050: $6e
	db $d3                                           ; $7051: $d3
	rst SubAFromDE                                          ; $7052: $df
	and l                                            ; $7053: $a5
	ld d, a                                          ; $7054: $57
	xor e                                            ; $7055: $ab
	ld l, $d7                                        ; $7056: $2e $d7
	dec h                                            ; $7058: $25
	rst SubAFromDE                                          ; $7059: $df
	ld b, l                                          ; $705a: $45
	rst $38                                          ; $705b: $ff
	ld b, a                                          ; $705c: $47
	rst $38                                          ; $705d: $ff
	sbc [hl]                                         ; $705e: $9e
	ld a, b                                          ; $705f: $78
	ld a, d                                          ; $7060: $7a
	ld c, b                                          ; $7061: $48
	add b                                            ; $7062: $80
	ld c, a                                          ; $7063: $4f
	cp a                                             ; $7064: $bf
	cp a                                             ; $7065: $bf
	ret nz                                           ; $7066: $c0

	rst SubAFromBC                                          ; $7067: $e7
	ld hl, sp-$01                                    ; $7068: $f8 $ff
	rst $38                                          ; $706a: $ff
	ld c, $ff                                        ; $706b: $0e $ff
	db $ed                                           ; $706d: $ed
	di                                               ; $706e: $f3
	reti                                             ; $706f: $d9


	ld a, $1e                                        ; $7070: $3e $1e
	rst SubAFromBC                                          ; $7072: $e7
	ld h, a                                          ; $7073: $67
	sbc c                                            ; $7074: $99
	reti                                             ; $7075: $d9


	and $b6                                          ; $7076: $e6 $b6
	ld a, c                                          ; $7078: $79
	call $b33e                                       ; $7079: $cd $3e $b3
	rst GetHLinHL                                          ; $707c: $cf
	rst $38                                          ; $707d: $ff
	rst $38                                          ; $707e: $ff
	xor b                                            ; $707f: $a8
	rst $38                                          ; $7080: $ff
	add a                                            ; $7081: $87
	sub h                                            ; $7082: $94
	db $fc                                           ; $7083: $fc
	pop de                                           ; $7084: $d1
	ld a, [hl]                                       ; $7085: $7e
	jp z, Jump_069_667d                              ; $7086: $ca $7d $66

	cp l                                             ; $7089: $bd
	xor l                                            ; $708a: $ad
	or $5f                                           ; $708b: $f6 $5f
	ldh a, [c]                                       ; $708d: $f2
	ldh [$c1], a                                     ; $708e: $e0 $c1
	add b                                            ; $7090: $80
	inc bc                                           ; $7091: $03
	rra                                              ; $7092: $1f
	inc c                                            ; $7093: $0c
	dec a                                            ; $7094: $3d
	jr nc, jr_069_710a                               ; $7095: $30 $73

	ld b, c                                          ; $7097: $41
	jp $8f02                                         ; $7098: $c3 $02 $8f


	inc bc                                           ; $709b: $03
	ld a, $06                                        ; $709c: $3e $06
	push hl                                          ; $709e: $e5
	add hl, bc                                       ; $709f: $09
	ld a, [bc]                                       ; $70a0: $0a
	inc d                                            ; $70a1: $14
	db $10                                           ; $70a2: $10
	add hl, hl                                       ; $70a3: $29
	jr nc, jr_069_70d7                               ; $70a4: $30 $31

	jr z, jr_069_7109                                ; $70a6: $28 $61

jr_069_70a8:
	ld d, b                                          ; $70a8: $50
	call z, $87a0                                    ; $70a9: $cc $a0 $87
	ld c, c                                          ; $70ac: $49
	ld a, [bc]                                       ; $70ad: $0a
	add a                                            ; $70ae: $87
	inc a                                            ; $70af: $3c
	add b                                            ; $70b0: $80
	ld b, $00                                        ; $70b1: $06 $00
	nop                                              ; $70b3: $00
	ret nz                                           ; $70b4: $c0

	ret nz                                           ; $70b5: $c0

	jr nc, jr_069_70a8                               ; $70b6: $30 $f0

	rst $38                                          ; $70b8: $ff
	rst $38                                          ; $70b9: $ff
	inc l                                            ; $70ba: $2c
	db $fc                                           ; $70bb: $fc
	db $fc                                           ; $70bc: $fc
	db $ec                                           ; $70bd: $ec
	ld a, [$cdee]                                    ; $70be: $fa $ee $cd
	ei                                               ; $70c1: $fb
	dec d                                            ; $70c2: $15
	ei                                               ; $70c3: $fb
	ld h, e                                          ; $70c4: $63
	rst $38                                          ; $70c5: $ff
	adc [hl]                                         ; $70c6: $8e
	rst $38                                          ; $70c7: $ff
	rst $38                                          ; $70c8: $ff
	cp $03                                           ; $70c9: $fe $03
	cp $ec                                           ; $70cb: $fe $ec
	rra                                              ; $70cd: $1f
	ld sp, hl                                        ; $70ce: $f9
	rst $38                                          ; $70cf: $ff
	add b                                            ; $70d0: $80
	ld c, [hl]                                       ; $70d1: $4e
	rst $38                                          ; $70d2: $ff
	adc c                                            ; $70d3: $89
	rst $38                                          ; $70d4: $ff
	ld l, d                                          ; $70d5: $6a
	db $fd                                           ; $70d6: $fd

jr_069_70d7:
	or h                                             ; $70d7: $b4
	ld a, c                                          ; $70d8: $79
	ld d, h                                          ; $70d9: $54
	cp c                                             ; $70da: $b9
	ld a, [bc]                                       ; $70db: $0a
	db $fd                                           ; $70dc: $fd
	and h                                            ; $70dd: $a4
	ld a, a                                          ; $70de: $7f
	ld d, l                                          ; $70df: $55
	cp a                                             ; $70e0: $bf
	xor e                                            ; $70e1: $ab
	ld e, a                                          ; $70e2: $5f
	db $db                                           ; $70e3: $db
	rst AddAOntoHL                                          ; $70e4: $ef
	add [hl]                                         ; $70e5: $86
	rst $38                                          ; $70e6: $ff
	ld b, d                                          ; $70e7: $42
	rst $38                                          ; $70e8: $ff
	sub c                                            ; $70e9: $91
	ld l, a                                          ; $70ea: $6f
	ld c, c                                          ; $70eb: $49
	scf                                              ; $70ec: $37
	xor e                                            ; $70ed: $ab
	dec d                                            ; $70ee: $15
	inc b                                            ; $70ef: $04
	add b                                            ; $70f0: $80
	sbc e                                            ; $70f1: $9b
	sub l                                            ; $70f2: $95
	ld c, d                                          ; $70f3: $4a
	ld [hl+], a                                      ; $70f4: $22
	ld c, l                                          ; $70f5: $4d
	ld b, d                                          ; $70f6: $42
	dec l                                            ; $70f7: $2d
	ld e, $a5                                        ; $70f8: $1e $a5
	or h                                             ; $70fa: $b4
	and a                                            ; $70fb: $a7
	ld d, c                                          ; $70fc: $51
	or [hl]                                          ; $70fd: $b6
	rra                                              ; $70fe: $1f
	ld d, d                                          ; $70ff: $52
	ld a, [hl-]                                      ; $7100: $3a
	ld d, e                                          ; $7101: $53
	jr nz, @+$5d                                     ; $7102: $20 $5b

	ld d, c                                          ; $7104: $51
	dec hl                                           ; $7105: $2b
	ld d, l                                          ; $7106: $55
	xor e                                            ; $7107: $ab
	ret nz                                           ; $7108: $c0

jr_069_7109:
	cp a                                             ; $7109: $bf

jr_069_710a:
	jp z, $eab5                                      ; $710a: $ca $b5 $ea

	sub l                                            ; $710d: $95
	add sp, -$69                                     ; $710e: $e8 $97
	ld a, a                                          ; $7110: $7f
	cp $9a                                           ; $7111: $fe $9a
	and b                                            ; $7113: $a0
	rst SubAFromDE                                          ; $7114: $df
	add b                                            ; $7115: $80
	rst $38                                          ; $7116: $ff
	sub h                                            ; $7117: $94
	ld a, e                                          ; $7118: $7b
	cp $9c                                           ; $7119: $fe $9c
	add h                                            ; $711b: $84
	rst $38                                          ; $711c: $ff
	call nc, $fe5b                                   ; $711d: $d4 $5b $fe
	ld a, [hl]                                       ; $7120: $7e
	ld h, b                                          ; $7121: $60
	add b                                            ; $7122: $80
	db $ec                                           ; $7123: $ec
	rst $38                                          ; $7124: $ff
	db $ed                                           ; $7125: $ed
	rst $38                                          ; $7126: $ff
	db $ed                                           ; $7127: $ed
	ld a, a                                          ; $7128: $7f
	push de                                          ; $7129: $d5
	ld a, a                                          ; $712a: $7f
	rst SubAFromHL                                          ; $712b: $d7
	ld a, e                                          ; $712c: $7b
	di                                               ; $712d: $f3
	rst $38                                          ; $712e: $ff
	ldh a, [c]                                       ; $712f: $f2
	ld a, a                                          ; $7130: $7f
	and d                                            ; $7131: $a2
	rst $38                                          ; $7132: $ff
	cp d                                             ; $7133: $ba
	ld h, a                                          ; $7134: $67
	inc a                                            ; $7135: $3c
	rst JumpTable                                          ; $7136: $c7
	ld a, h                                          ; $7137: $7c
	add a                                            ; $7138: $87
	call c, $1407                                    ; $7139: $dc $07 $14
	rrca                                             ; $713c: $0f
	jr jr_069_714e                                   ; $713d: $18 $0f

	add hl, de                                       ; $713f: $19
	rrca                                             ; $7140: $0f
	add hl, sp                                       ; $7141: $39
	sub a                                            ; $7142: $97
	adc a                                            ; $7143: $8f
	xor [hl]                                         ; $7144: $ae
	ld e, [hl]                                       ; $7145: $5e
	ldh a, [$78]                                     ; $7146: $f0 $78
	add b                                            ; $7148: $80
	pop bc                                           ; $7149: $c1
	inc bc                                           ; $714a: $03
	ld a, b                                          ; $714b: $78
	ld a, d                                          ; $714c: $7a
	ei                                               ; $714d: $fb

jr_069_714e:
	rst SubAFromDE                                          ; $714e: $df
	add b                                            ; $714f: $80
	rst SubAFromDE                                          ; $7150: $df
	ldh [$df], a                                     ; $7151: $e0 $df
	db $10                                           ; $7153: $10
	ld e, a                                          ; $7154: $5f
	db $f4                                           ; $7155: $f4
	add b                                            ; $7156: $80
	ld d, b                                          ; $7157: $50
	ldh a, [rBCPS]                                   ; $7158: $f0 $68
	ret c                                            ; $715a: $d8

	adc h                                            ; $715b: $8c
	db $fc                                           ; $715c: $fc
	sub [hl]                                         ; $715d: $96
	cp $36                                           ; $715e: $fe $36
	cp $ea                                           ; $7160: $fe $ea
	ld a, [$f2b2]                                    ; $7162: $fa $b2 $f2
	and h                                            ; $7165: $a4
	db $e4                                           ; $7166: $e4
	ldh a, [$b0]                                     ; $7167: $f0 $b0
	add sp, -$48                                     ; $7169: $e8 $b8
	add sp, -$48                                     ; $716b: $e8 $b8
	ld l, b                                          ; $716d: $68
	cp b                                             ; $716e: $b8
	ld a, b                                          ; $716f: $78
	xor b                                            ; $7170: $a8
	ld hl, sp+$28                                    ; $7171: $f8 $28
	db $f4                                           ; $7173: $f4
	inc l                                            ; $7174: $2c
	cp h                                             ; $7175: $bc
	add b                                            ; $7176: $80
	ld h, h                                          ; $7177: $64
	ld e, h                                          ; $7178: $5c
	db $e4                                           ; $7179: $e4
	ld d, h                                          ; $717a: $54
	db $ec                                           ; $717b: $ec
	ld a, h                                          ; $717c: $7c
	call z, $dcac                                    ; $717d: $cc $ac $dc
	xor h                                            ; $7180: $ac
	call c, $fc8c                                    ; $7181: $dc $8c $fc
	call nc, $547c                                   ; $7184: $d4 $7c $54
	db $fc                                           ; $7187: $fc

jr_069_7188:
	ld d, h                                          ; $7188: $54
	db $fc                                           ; $7189: $fc
	ld [hl], h                                       ; $718a: $74
	cp h                                             ; $718b: $bc
	inc l                                            ; $718c: $2c
	db $fc                                           ; $718d: $fc

jr_069_718e:
	jr z, jr_069_7188                                ; $718e: $28 $f8

	or b                                             ; $7190: $b0
	ld [hl], b                                       ; $7191: $70
	or b                                             ; $7192: $b0
	ld [hl], b                                       ; $7193: $70
	jr c, jr_069_718e                                ; $7194: $38 $f8

	sub a                                            ; $7196: $97
	inc a                                            ; $7197: $3c
	db $fc                                           ; $7198: $fc
	xor [hl]                                         ; $7199: $ae
	xor $26                                          ; $719a: $ee $26
	and $a2                                          ; $719c: $e6 $a2
	ldh [c], a                                       ; $719e: $e2
	ld [hl], a                                       ; $719f: $77
	cp $df                                           ; $71a0: $fe $df
	call nz, $c0d5                                   ; $71a2: $c4 $d5 $c0
	rst SubAFromDE                                          ; $71a5: $df
	cp $9a                                           ; $71a6: $fe $9a
	sbc c                                            ; $71a8: $99
	rst $38                                          ; $71a9: $ff
	and b                                            ; $71aa: $a0
	rst $38                                          ; $71ab: $ff
	ret nz                                           ; $71ac: $c0

	ld a, e                                          ; $71ad: $7b
	cp $96                                           ; $71ae: $fe $96
	add d                                            ; $71b0: $82
	db $fd                                           ; $71b1: $fd
	add a                                            ; $71b2: $87
	ld hl, sp+$2f                                    ; $71b3: $f8 $2f
	ldh a, [$2f]                                     ; $71b5: $f0 $2f
	ldh a, [rAUD4LEN]                                ; $71b7: $f0 $20
	ld [hl], e                                       ; $71b9: $73
	cp $9d                                           ; $71ba: $fe $9d
	ld b, b                                          ; $71bc: $40
	ldh [rPCM34], a                                  ; $71bd: $e0 $77
	cp $9d                                           ; $71bf: $fe $9d
	add b                                            ; $71c1: $80
	ret nz                                           ; $71c2: $c0

	ld a, e                                          ; $71c3: $7b
	cp $7a                                           ; $71c4: $fe $7a
	ld e, $7b                                        ; $71c6: $1e $7b
	ld [hl], h                                       ; $71c8: $74
	ld a, a                                          ; $71c9: $7f
	db $ec                                           ; $71ca: $ec
	sbc b                                            ; $71cb: $98
	ld [hl], c                                       ; $71cc: $71
	ret nz                                           ; $71cd: $c0

	pop hl                                           ; $71ce: $e1
	nop                                              ; $71cf: $00
	add e                                            ; $71d0: $83
	nop                                              ; $71d1: $00
	rst JumpTable                                          ; $71d2: $c7
	pop af                                           ; $71d3: $f1
	halt                                             ; $71d4: $76
	or d                                             ; $71d5: $b2
	sub e                                            ; $71d6: $93
	ld [$04f8], sp                                   ; $71d7: $08 $f8 $04
	db $fc                                           ; $71da: $fc
	ld [bc], a                                       ; $71db: $02
	cp $82                                           ; $71dc: $fe $82
	ld a, [hl]                                       ; $71de: $7e
	pop bc                                           ; $71df: $c1
	ccf                                              ; $71e0: $3f
	pop hl                                           ; $71e1: $e1
	rra                                              ; $71e2: $1f
	ld e, a                                          ; $71e3: $5f
	cp $95                                           ; $71e4: $fe $95
	jp nz, $c23e                                     ; $71e6: $c2 $3e $c2

	ld a, $82                                        ; $71e9: $3e $82
	ld a, [hl]                                       ; $71eb: $7e
	add d                                            ; $71ec: $82
	ld a, [hl]                                       ; $71ed: $7e
	inc b                                            ; $71ee: $04
	db $fc                                           ; $71ef: $fc
	ld [hl], a                                       ; $71f0: $77
	cp $7f                                           ; $71f1: $fe $7f
	call c, $fe77                                    ; $71f3: $dc $77 $fe
	ld a, a                                          ; $71f6: $7f
	cp b                                             ; $71f7: $b8
	jr jr_069_71fa                                   ; $71f8: $18 $00

jr_069_71fa:
	sbc $99                                          ; $71fa: $de $99
	sbc [hl]                                         ; $71fc: $9e
	cp e                                             ; $71fd: $bb
	db $dd                                           ; $71fe: $dd
	sbc c                                            ; $71ff: $99
	sbc h                                            ; $7200: $9c
	ld [hl+], a                                      ; $7201: $22
	sbc c                                            ; $7202: $99
	ld de, $fb4b                                     ; $7203: $11 $4b $fb
	sbc h                                            ; $7206: $9c
	ld de, $2200                                     ; $7207: $11 $00 $22
	ld [hl], a                                       ; $720a: $77
	db $e3                                           ; $720b: $e3
	sbc h                                            ; $720c: $9c
	ld [hl+], a                                      ; $720d: $22
	cp e                                             ; $720e: $bb
	cp e                                             ; $720f: $bb
	sub c                                            ; $7210: $91
	ld bc, $0380                                     ; $7211: $01 $80 $03
	rst $38                                          ; $7214: $ff
	inc de                                           ; $7215: $13
	rst $38                                          ; $7216: $ff
	ld d, l                                          ; $7217: $55
	rst $38                                          ; $7218: $ff
	dec h                                            ; $7219: $25
	rst $38                                          ; $721a: $ff
	and c                                            ; $721b: $a1
	rst AddAOntoHL                                          ; $721c: $ef
	ld c, e                                          ; $721d: $4b
	rst AddAOntoHL                                          ; $721e: $ef
	ld c, e                                          ; $721f: $4b
	rst $38                                          ; $7220: $ff
	ld b, e                                          ; $7221: $43
	rst SubAFromDE                                          ; $7222: $df
	add e                                            ; $7223: $83
	sbc $97                                          ; $7224: $de $97
	sub [hl]                                         ; $7226: $96
	sub [hl]                                         ; $7227: $96
	sub a                                            ; $7228: $97
	add a                                            ; $7229: $87
	sub [hl]                                         ; $722a: $96
	ld b, $d7                                        ; $722b: $06 $d7
	rlca                                             ; $722d: $07
	rst SubAFromHL                                          ; $722e: $d7
	rla                                              ; $722f: $17
	rst SubAFromDE                                          ; $7230: $df
	rla                                              ; $7231: $17
	sub [hl]                                         ; $7232: $96
	rst $38                                          ; $7233: $ff

jr_069_7234:
	ld d, $fe                                        ; $7234: $16 $fe
	inc d                                            ; $7236: $14
	db $fc                                           ; $7237: $fc
	inc h                                            ; $7238: $24
	db $fc                                           ; $7239: $fc
	jr z, jr_069_7234                                ; $723a: $28 $f8

	ld l, a                                          ; $723c: $6f
	cp $9e                                           ; $723d: $fe $9e
	xor b                                            ; $723f: $a8
	ld l, e                                          ; $7240: $6b
	cp $80                                           ; $7241: $fe $80
	xor e                                            ; $7243: $ab
	ei                                               ; $7244: $fb
	ld a, a                                          ; $7245: $7f
	db $fc                                           ; $7246: $fc
	ld a, a                                          ; $7247: $7f
	ld hl, sp+$3f                                    ; $7248: $f8 $3f
	ld hl, sp-$51                                    ; $724a: $f8 $af
	db $fc                                           ; $724c: $fc
	inc [hl]                                         ; $724d: $34
	and $62                                          ; $724e: $e6 $62
	jp nz, $c362                                     ; $7250: $c2 $62 $c3

	jp nz, $c183                                     ; $7253: $c2 $83 $c1

	add c                                            ; $7256: $81
	inc e                                            ; $7257: $1c
	db $fc                                           ; $7258: $fc
	db $ec                                           ; $7259: $ec
	ldh a, [$7e]                                     ; $725a: $f0 $7e
	add b                                            ; $725c: $80
	cp e                                             ; $725d: $bb
	ld a, h                                          ; $725e: $7c
	ld l, l                                          ; $725f: $6d
	xor $cb                                          ; $7260: $ee $cb
	add b                                            ; $7262: $80
	adc $f1                                          ; $7263: $ce $f1
	ld a, d                                          ; $7265: $7a
	ret nc                                           ; $7266: $d0

	ld a, b                                          ; $7267: $78
	add sp, $38                                      ; $7268: $e8 $38
	or h                                             ; $726a: $b4
	ld a, b                                          ; $726b: $78
	ld h, b                                          ; $726c: $60
	add b                                            ; $726d: $80
	cp a                                             ; $726e: $bf
	ret nz                                           ; $726f: $c0

	cp a                                             ; $7270: $bf
	ret nz                                           ; $7271: $c0

jr_069_7272:
	ld a, a                                          ; $7272: $7f
	ld b, b                                          ; $7273: $40
	ld e, a                                          ; $7274: $5f
	ld h, b                                          ; $7275: $60
	ld e, a                                          ; $7276: $5f
	ld h, b                                          ; $7277: $60
	cpl                                              ; $7278: $2f
	jr nc, jr_069_72b2                               ; $7279: $30 $37

	jr c, jr_069_72b8                                ; $727b: $38 $3b

	inc a                                            ; $727d: $3c
	ld [hl], l                                       ; $727e: $75
	halt                                             ; $727f: $76
	ld h, d                                          ; $7280: $62
	ld h, e                                          ; $7281: $63
	rst SubAFromDE                                          ; $7282: $df
	ld a, c                                          ; $7283: $79
	add b                                            ; $7284: $80
	rst SubAFromBC                                          ; $7285: $e7
	rst $38                                          ; $7286: $ff
	ld h, b                                          ; $7287: $60
	rst $38                                          ; $7288: $ff
	jr c, jr_069_7272                                ; $7289: $38 $e7

jr_069_728b:
	dec l                                            ; $728b: $2d
	di                                               ; $728c: $f3
	push af                                          ; $728d: $f5
	dec de                                           ; $728e: $1b
	db $dd                                           ; $728f: $dd
	add a                                            ; $7290: $87
	adc $83                                          ; $7291: $ce $83
	rst JumpTable                                          ; $7293: $c7
	add c                                            ; $7294: $81
	pop bc                                           ; $7295: $c1
	add b                                            ; $7296: $80
	ret nz                                           ; $7297: $c0

	add e                                            ; $7298: $83
	rst SubAFromBC                                          ; $7299: $e7
	rst JumpTable                                          ; $729a: $c7
	ld l, a                                          ; $729b: $6f
	ld b, b                                          ; $729c: $40
	rra                                              ; $729d: $1f
	nop                                              ; $729e: $00
	ld c, $01                                        ; $729f: $0e $01
	dec c                                            ; $72a1: $0d

jr_069_72a2:
	inc bc                                           ; $72a2: $03
	ld [bc], a                                       ; $72a3: $02
	sbc l                                            ; $72a4: $9d

jr_069_72a5:
	rlca                                             ; $72a5: $07
	inc bc                                           ; $72a6: $03
	sbc $01                                          ; $72a7: $de $01
	add b                                            ; $72a9: $80
	nop                                              ; $72aa: $00
	ld bc, $0023                                     ; $72ab: $01 $23 $00
	jr nc, @+$42                                     ; $72ae: $30 $40

	ldh a, [$3b]                                     ; $72b0: $f0 $3b

jr_069_72b2:
	reti                                             ; $72b2: $d9


	cp c                                             ; $72b3: $b9
	add sp, -$23                                     ; $72b4: $e8 $dd
	db $f4                                           ; $72b6: $f4
	ld l, h                                          ; $72b7: $6c

jr_069_72b8:
	inc a                                            ; $72b8: $3c
	add $ce                                          ; $72b9: $c6 $ce
	ldh a, [c]                                       ; $72bb: $f2
	or [hl]                                          ; $72bc: $b6
	ld a, e                                          ; $72bd: $7b
	ld a, [$ef0f]                                    ; $72be: $fa $0f $ef
	pop af                                           ; $72c1: $f1
	scf                                              ; $72c2: $37
	cp c                                             ; $72c3: $b9
	dec sp                                           ; $72c4: $3b
	inc a                                            ; $72c5: $3c
	rst SubAFromHL                                          ; $72c6: $d7
	cp $97                                           ; $72c7: $fe $97
	add h                                            ; $72c9: $84
	db $f4                                           ; $72ca: $f4
	daa                                              ; $72cb: $27

jr_069_72cc:
	ldh a, [$df]                                     ; $72cc: $f0 $df
	ldh [rTAC], a                                    ; $72ce: $e0 $07
	nop                                              ; $72d0: $00
	rlca                                             ; $72d1: $07
	nop                                              ; $72d2: $00
	rrca                                             ; $72d3: $0f

jr_069_72d4:
	nop                                              ; $72d4: $00
	ld e, $01                                        ; $72d5: $1e $01
	ld e, $01                                        ; $72d7: $1e $01
	dec a                                            ; $72d9: $3d
	inc bc                                           ; $72da: $03
	ccf                                              ; $72db: $3f
	inc bc                                           ; $72dc: $03
	ld a, a                                          ; $72dd: $7f
	rlca                                             ; $72de: $07
	ld a, a                                          ; $72df: $7f
	rrca                                             ; $72e0: $0f
	rst SubAFromDE                                          ; $72e1: $df
	ccf                                              ; $72e2: $3f
	rst $38                                          ; $72e3: $ff
	ld a, a                                          ; $72e4: $7f

jr_069_72e5:
	sbc $ff                                          ; $72e5: $de $ff
	sbc c                                            ; $72e7: $99
	inc a                                            ; $72e8: $3c

jr_069_72e9:
	ld a, a                                          ; $72e9: $7f
	nop                                              ; $72ea: $00
	ccf                                              ; $72eb: $3f
	nop                                              ; $72ec: $00
	rra                                              ; $72ed: $1f

jr_069_72ee:
	ld a, e                                          ; $72ee: $7b
	cp $03                                           ; $72ef: $fe $03
	jr nz, @+$05                                     ; $72f1: $20 $03

	jr nz, jr_069_733c                               ; $72f3: $20 $47

	jr nz, jr_069_728b                               ; $72f5: $20 $94

	ld h, l                                          ; $72f7: $65
	xor $af                                          ; $72f8: $ee $af
	xor $b5                                          ; $72fa: $ee $b5
	ld a, [hl]                                       ; $72fc: $7e
	or h                                             ; $72fd: $b4
	ld a, h                                          ; $72fe: $7c
	xor h                                            ; $72ff: $ac
	inc a                                            ; $7300: $3c
	sbc h                                            ; $7301: $9c
	inc bc                                           ; $7302: $03
	jr nz, jr_069_732c                               ; $7303: $20 $27

	jr nz, jr_069_72a5                               ; $7305: $20 $9e

	ld [bc], a                                       ; $7307: $02
	ld a, e                                          ; $7308: $7b
	ld [hl+], a                                      ; $7309: $22
	rst $38                                          ; $730a: $ff
	cpl                                              ; $730b: $2f
	jr nz, jr_069_72a2                               ; $730c: $20 $94

	sub a                                            ; $730e: $97
	cp c                                             ; $730f: $b9
	sbc e                                            ; $7310: $9b
	cp h                                             ; $7311: $bc
	rst FarCall                                          ; $7312: $f7
	cp $d7                                           ; $7313: $fe $d7
	db $fc                                           ; $7315: $fc
	sub a                                            ; $7316: $97
	ldh a, [$7f]                                     ; $7317: $f0 $7f
	inc bc                                           ; $7319: $03
	jr nz, @+$05                                     ; $731a: $20 $03

	jr nz, @+$05                                     ; $731c: $20 $03

	jr nz, jr_069_735b                               ; $731e: $20 $3b

	jr nz, @-$66                                     ; $7320: $20 $98

	or $af                                           ; $7322: $f6 $af
	xor $b7                                          ; $7324: $ee $b7
	ld a, [hl]                                       ; $7326: $7e
	or h                                             ; $7327: $b4
	inc a                                            ; $7328: $3c
	inc bc                                           ; $7329: $03
	jr nz, @+$11                                     ; $732a: $20 $0f

jr_069_732c:
	jr nz, jr_069_732c                               ; $732c: $20 $fe

	dec hl                                           ; $732e: $2b
	jr nz, jr_069_72cc                               ; $732f: $20 $9b

	reti                                             ; $7331: $d9


	sbc e                                            ; $7332: $9b
	cp h                                             ; $7333: $bc
	rst $38                                          ; $7334: $ff
	inc bc                                           ; $7335: $03
	jr nz, @+$05                                     ; $7336: $20 $03

	jr nz, @+$05                                     ; $7338: $20 $03

	jr nz, jr_069_7363                               ; $733a: $20 $27

jr_069_733c:
	jr nz, jr_069_72d4                               ; $733c: $20 $96

	ld [hl], l                                       ; $733e: $75
	or $a7                                           ; $733f: $f6 $a7
	and $3b                                          ; $7341: $e6 $3b
	ld a, $aa                                        ; $7343: $3e $aa
	ld a, $94                                        ; $7345: $3e $94
	inc bc                                           ; $7347: $03
	jr nz, jr_069_736d                               ; $7348: $20 $23

	jr nz, jr_069_72e9                               ; $734a: $20 $9d

	ld b, $02                                        ; $734c: $06 $02
	db $fc                                           ; $734e: $fc
	cpl                                              ; $734f: $2f
	jr nz, jr_069_72e5                               ; $7350: $20 $93

	rst SubAFromHL                                          ; $7352: $d7
	reti                                             ; $7353: $d9


	dec bc                                           ; $7354: $0b
	sbc h                                            ; $7355: $9c
	rst $38                                          ; $7356: $ff
	cp $af                                           ; $7357: $fe $af
	db $fc                                           ; $7359: $fc
	ld c, a                                          ; $735a: $4f

jr_069_735b:
	ld hl, sp+$7f                                    ; $735b: $f8 $7f
	ldh a, [$03]                                     ; $735d: $f0 $03
	jr nz, jr_069_72ee                               ; $735f: $20 $8d

	nop                                              ; $7361: $00
	ld a, b                                          ; $7362: $78

jr_069_7363:
	ld b, b                                          ; $7363: $40
	cp b                                             ; $7364: $b8
	ret nz                                           ; $7365: $c0

	ldh a, [rLCDC]                                   ; $7366: $f0 $40
	nop                                              ; $7368: $00
	nop                                              ; $7369: $00
	ld [hl], b                                       ; $736a: $70
	ld h, b                                          ; $736b: $60
	ld h, b                                          ; $736c: $60

jr_069_736d:
	stop                                             ; $736d: $10 $00
	nop                                              ; $736f: $00
	db $10                                           ; $7370: $10
	jr nz, jr_069_7373                               ; $7371: $20 $00

jr_069_7373:
	ld a, c                                          ; $7373: $79
	rst SubAFromBC                                          ; $7374: $e7
	sub e                                            ; $7375: $93
	add a                                            ; $7376: $87
	ld bc, $cef7                                     ; $7377: $01 $f7 $ce
	db $fc                                           ; $737a: $fc
	db $fc                                           ; $737b: $fc
	sbc h                                            ; $737c: $9c

jr_069_737d:
	ld hl, sp-$14                                    ; $737d: $f8 $ec
	jr c, jr_069_737d                                ; $737f: $38 $fc

	inc l                                            ; $7381: $2c
	ld e, a                                          ; $7382: $5f
	ldh [$df], a                                     ; $7383: $e0 $df
	ld [hl], b                                       ; $7385: $70
	rst $38                                          ; $7386: $ff
	sbc [hl]                                         ; $7387: $9e

jr_069_7388:
	jr nc, jr_069_7388                               ; $7388: $30 $fe

	inc hl                                           ; $738a: $23
	ldh [$9d], a                                     ; $738b: $e0 $9d
	ld d, b                                          ; $738d: $50
	jr nc, jr_069_740b                               ; $738e: $30 $7b

	pop hl                                           ; $7390: $e1
	ld a, a                                          ; $7391: $7f
	db $fd                                           ; $7392: $fd
	daa                                              ; $7393: $27
	ldh [$9a], a                                     ; $7394: $e0 $9a
	ld a, b                                          ; $7396: $78
	ld [hl], b                                       ; $7397: $70
	ld a, b                                          ; $7398: $78
	ld d, b                                          ; $7399: $50
	jr nc, @+$7d                                     ; $739a: $30 $7b

	and b                                            ; $739c: $a0
	sbc [hl]                                         ; $739d: $9e
	ld sp, $e053                                     ; $739e: $31 $53 $e0
	ld sp, $f103                                     ; $73a1: $31 $03 $f1
	rst SubAFromDE                                          ; $73a4: $df
	ld bc, $03df                                     ; $73a5: $01 $df $03
	add e                                            ; $73a8: $83
	rlca                                             ; $73a9: $07
	ld b, $0e                                        ; $73aa: $06 $0e
	dec c                                            ; $73ac: $0d
	inc c                                            ; $73ad: $0c
	dec bc                                           ; $73ae: $0b
	add hl, de                                       ; $73af: $19
	ld e, $19                                        ; $73b0: $1e $19
	ld d, $23                                        ; $73b2: $16 $23
	inc a                                            ; $73b4: $3c
	ld [hl+], a                                      ; $73b5: $22
	dec a                                            ; $73b6: $3d
	ld h, $39                                        ; $73b7: $26 $39
	inc h                                            ; $73b9: $24
	dec sp                                           ; $73ba: $3b
	inc l                                            ; $73bb: $2c
	dec sp                                           ; $73bc: $3b
	dec l                                            ; $73bd: $2d
	ld a, [hl-]                                      ; $73be: $3a
	add hl, hl                                       ; $73bf: $29
	ld a, $29                                        ; $73c0: $3e $29
	ld a, $39                                        ; $73c2: $3e $39
	ld a, $7b                                        ; $73c4: $3e $7b
	ld [$1e93], a                                    ; $73c6: $ea $93 $1e
	add hl, bc                                       ; $73c9: $09
	ld c, $0d                                        ; $73ca: $0e $0d
	ld c, $04                                        ; $73cc: $0e $04
	rlca                                             ; $73ce: $07
	inc b                                            ; $73cf: $04
	rlca                                             ; $73d0: $07
	ld b, $07                                        ; $73d1: $06 $07
	ld [bc], a                                       ; $73d3: $02
	sbc $03                                          ; $73d4: $de $03
	rst SubAFromDE                                          ; $73d6: $df
	ld bc, $c867                                     ; $73d7: $01 $67 $c8
	sbc l                                            ; $73da: $9d
	inc bc                                           ; $73db: $03
	ld [bc], a                                       ; $73dc: $02
	ld a, e                                          ; $73dd: $7b
	db $eb                                           ; $73de: $eb
	sub h                                            ; $73df: $94
	rlca                                             ; $73e0: $07
	ld c, $0f                                        ; $73e1: $0e $0f
	dec c                                            ; $73e3: $0d
	ld c, $0f                                        ; $73e4: $0e $0f
	inc c                                            ; $73e6: $0c
	dec bc                                           ; $73e7: $0b
	inc c                                            ; $73e8: $0c
	rrca                                             ; $73e9: $0f
	ld [$fc7b], sp                                   ; $73ea: $08 $7b $fc
	sbc [hl]                                         ; $73ed: $9e
	inc c                                            ; $73ee: $0c
	db $dd                                           ; $73ef: $dd
	ld bc, $da7f                                     ; $73f0: $01 $7f $da
	ld a, a                                          ; $73f3: $7f
	sub $7f                                          ; $73f4: $d6 $7f
	push af                                          ; $73f6: $f5
	add b                                            ; $73f7: $80
	inc e                                            ; $73f8: $1c
	dec de                                           ; $73f9: $1b
	add hl, sp                                       ; $73fa: $39
	ld [hl], $f7                                     ; $73fb: $36 $f7
	ret z                                            ; $73fd: $c8

	rst AddAOntoHL                                          ; $73fe: $ef
	sub b                                            ; $73ff: $90
	sbc $21                                          ; $7400: $de $21
	dec a                                            ; $7402: $3d
	jp nz, $8c73                                     ; $7403: $c2 $73 $8c

	and $19                                          ; $7406: $e6 $19
	call $9932                                       ; $7408: $cd $32 $99

jr_069_740b:
	ld h, [hl]                                       ; $740b: $66
	inc sp                                           ; $740c: $33
	call z, $9966                                    ; $740d: $cc $66 $99
	ld l, a                                          ; $7410: $6f
	sub c                                            ; $7411: $91
	call $de33                                       ; $7412: $cd $33 $de
	inc hl                                           ; $7415: $23
	sbc $98                                          ; $7416: $de $98
	inc hl                                           ; $7418: $23
	sbc d                                            ; $7419: $9a
	ld h, a                                          ; $741a: $67
	sbc d                                            ; $741b: $9a
	ld h, a                                          ; $741c: $67
	cp d                                             ; $741d: $ba
	ld b, a                                          ; $741e: $47
	ld [hl], a                                       ; $741f: $77
	cp $80                                           ; $7420: $fe $80
	ld a, [$db47]                                    ; $7422: $fa $47 $db
	ld h, a                                          ; $7425: $67
	reti                                             ; $7426: $d9


	ld h, a                                          ; $7427: $67
	call $ec73                                       ; $7428: $cd $73 $ec
	ld [hl], e                                       ; $742b: $73
	ld h, h                                          ; $742c: $64
	ei                                               ; $742d: $fb
	inc hl                                           ; $742e: $23
	rst $38                                          ; $742f: $ff
	ccf                                              ; $7430: $3f
	cp $bf                                           ; $7431: $fe $bf
	ld hl, sp-$01                                    ; $7433: $f8 $ff
	ldh [rIE], a                                     ; $7435: $e0 $ff
	add b                                            ; $7437: $80
	rrca                                             ; $7438: $0f
	nop                                              ; $7439: $00
	ret nz                                           ; $743a: $c0

	nop                                              ; $743b: $00
	ld hl, sp+$00                                    ; $743c: $f8 $00
	cp a                                             ; $743e: $bf
	ret nz                                           ; $743f: $c0

	rst FarCall                                          ; $7440: $f7
	ld a, a                                          ; $7441: $7f
	ldh a, [c]                                       ; $7442: $f2
	sbc l                                            ; $7443: $9d
	ld c, $83                                        ; $7444: $0e $83
	ld [hl], e                                       ; $7446: $73
	adc h                                            ; $7447: $8c
	ld h, a                                          ; $7448: $67
	adc b                                            ; $7449: $88
	ld a, a                                          ; $744a: $7f
	and d                                            ; $744b: $a2
	ld a, a                                          ; $744c: $7f
	adc [hl]                                         ; $744d: $8e
	add b                                            ; $744e: $80
	ld a, [de]                                       ; $744f: $1a
	dec e                                            ; $7450: $1d
	ld d, $19                                        ; $7451: $16 $19
	dec a                                            ; $7453: $3d
	ld [hl-], a                                      ; $7454: $32
	cpl                                              ; $7455: $2f
	jr nc, jr_069_74d6                               ; $7456: $30 $7e

	ld h, c                                          ; $7458: $61
	ld e, h                                          ; $7459: $5c
	ld h, e                                          ; $745a: $63
	ld e, c                                          ; $745b: $59
	ld h, [hl]                                       ; $745c: $66
	or e                                             ; $745d: $b3
	call z, $d9a6                                    ; $745e: $cc $a6 $d9
	adc l                                            ; $7461: $8d
	ldh a, [c]                                       ; $7462: $f2
	sbc c                                            ; $7463: $99
	and $a3                                          ; $7464: $e6 $a3
	call c, $b3cc                                    ; $7466: $dc $cc $b3
	add hl, de                                       ; $7469: $19
	and $07                                          ; $746a: $e6 $07
	ld hl, sp+$0e                                    ; $746c: $f8 $0e
	add b                                            ; $746e: $80
	pop af                                           ; $746f: $f1
	inc a                                            ; $7470: $3c
	jp $07f9                                         ; $7471: $c3 $f9 $07


	pop hl                                           ; $7474: $e1
	rra                                              ; $7475: $1f
	add d                                            ; $7476: $82
	ld a, a                                          ; $7477: $7f
	dec h                                            ; $7478: $25
	sbc $d5                                          ; $7479: $de $d5
	ld l, $aa                                        ; $747b: $2e $aa
	ld e, l                                          ; $747d: $5d
	ld [hl], d                                       ; $747e: $72
	sbc c                                            ; $747f: $99
	ld sp, hl                                        ; $7480: $f9
	ld [hl-], a                                      ; $7481: $32
	and h                                            ; $7482: $a4
	ld [hl], d                                       ; $7483: $72
	ld [hl-], a                                      ; $7484: $32
	db $e4                                           ; $7485: $e4
	pop hl                                           ; $7486: $e1
	db $e4                                           ; $7487: $e4
	call $69e0                                       ; $7488: $cd $e0 $69
	ret nz                                           ; $748b: $c0

	ld c, c                                          ; $748c: $49
	ret nz                                           ; $748d: $c0

	add b                                            ; $748e: $80
	add e                                            ; $748f: $83
	ret nz                                           ; $7490: $c0

	jp nz, $c281                                     ; $7491: $c2 $81 $c2

	add c                                            ; $7494: $81
	jp nc, $9a81                                     ; $7495: $d2 $81 $9a

	pop bc                                           ; $7498: $c1
	xor d                                            ; $7499: $aa
	pop bc                                           ; $749a: $c1
	ld h, d                                          ; $749b: $62
	ret                                              ; $749c: $c9


	ld [hl], e                                       ; $749d: $73
	ret z                                            ; $749e: $c8

	ld [hl], l                                       ; $749f: $75
	ret z                                            ; $74a0: $c8

	dec [hl]                                         ; $74a1: $35
	add sp, $29                                      ; $74a2: $e8 $29
	db $f4                                           ; $74a4: $f4
	cp d                                             ; $74a5: $ba
	db $f4                                           ; $74a6: $f4
	push af                                          ; $74a7: $f5
	ld a, [$fff8]                                    ; $74a8: $fa $f8 $ff
	db $fc                                           ; $74ab: $fc
	rra                                              ; $74ac: $1f
	rst AddAOntoHL                                          ; $74ad: $ef
	add h                                            ; $74ae: $84

jr_069_74af:
	rra                                              ; $74af: $1f
	rst SubAFromDE                                          ; $74b0: $df
	jr nc, @-$3f                                     ; $74b1: $30 $bf

jr_069_74b3:
	ld h, b                                          ; $74b3: $60
	rst $38                                          ; $74b4: $ff
	nop                                              ; $74b5: $00
	rst $38                                          ; $74b6: $ff
	nop                                              ; $74b7: $00
	ccf                                              ; $74b8: $3f
	nop                                              ; $74b9: $00
	rra                                              ; $74ba: $1f
	nop                                              ; $74bb: $00
	rst GetHLinHL                                          ; $74bc: $cf
	nop                                              ; $74bd: $00
	rst SubAFromBC                                          ; $74be: $e7
	nop                                              ; $74bf: $00
	di                                               ; $74c0: $f3
	add b                                            ; $74c1: $80
	ld sp, hl                                        ; $74c2: $f9
	ld b, b                                          ; $74c3: $40
	ld a, h                                          ; $74c4: $7c
	jr nz, jr_069_7505                               ; $74c5: $20 $3e

	db $10                                           ; $74c7: $10
	rra                                              ; $74c8: $1f
	ld [$dfeb], sp                                   ; $74c9: $08 $eb $df
	inc bc                                           ; $74cc: $03
	ld a, a                                          ; $74cd: $7f
	db $10                                           ; $74ce: $10
	add b                                            ; $74cf: $80
	inc sp                                           ; $74d0: $33
	inc a                                            ; $74d1: $3c
	ld l, [hl]                                       ; $74d2: $6e
	ld [hl], c                                       ; $74d3: $71
	ret c                                            ; $74d4: $d8

	rst SubAFromBC                                          ; $74d5: $e7

jr_069_74d6:
	or c                                             ; $74d6: $b1
	adc $47                                          ; $74d7: $ce $47
	cp b                                             ; $74d9: $b8
	sbc h                                            ; $74da: $9c
	ld h, e                                          ; $74db: $63
	ld [hl], e                                       ; $74dc: $73
	adc h                                            ; $74dd: $8c
	rst SubAFromBC                                          ; $74de: $e7
	jr jr_069_74af                                   ; $74df: $18 $ce

	ld sp, $639c                                     ; $74e1: $31 $9c $63
	add hl, sp                                       ; $74e4: $39
	add $3e                                          ; $74e5: $c6 $3e
	call nz, $8c68                                   ; $74e7: $c4 $68 $8c
	db $dd                                           ; $74ea: $dd
	ld [$19d2], sp                                   ; $74eb: $08 $d2 $19
	cp c                                             ; $74ee: $b9
	sbc b                                            ; $74ef: $98
	ld [de], a                                       ; $74f0: $12
	ld h, h                                          ; $74f1: $64
	ld [hl], $ab                                     ; $74f2: $36 $ab
	ld a, h                                          ; $74f4: $7c
	ld [hl], $f9                                     ; $74f5: $36 $f9
	ldh [$c1], a                                     ; $74f7: $e0 $c1
	sub l                                            ; $74f9: $95
	jr @+$01                                         ; $74fa: $18 $ff

	rlca                                             ; $74fc: $07
	rst $38                                          ; $74fd: $ff
	ld bc, $c7ff                                     ; $74fe: $01 $ff $c7
	cp $ff                                           ; $7501: $fe $ff
	jr c, jr_069_757c                                ; $7503: $38 $77

jr_069_7505:
	ld h, b                                          ; $7505: $60
	ld c, a                                          ; $7506: $4f
	cp $9e                                           ; $7507: $fe $9e
	ld a, a                                          ; $7509: $7f
	ld a, e                                          ; $750a: $7b
	ld d, b                                          ; $750b: $50
	ccf                                              ; $750c: $3f
	ld h, [hl]                                       ; $750d: $66
	add b                                            ; $750e: $80
	ld e, $1f                                        ; $750f: $1e $1f
	pop hl                                           ; $7511: $e1
	rst $38                                          ; $7512: $ff
	ccf                                              ; $7513: $3f
	ret nz                                           ; $7514: $c0

	rst $38                                          ; $7515: $ff
	nop                                              ; $7516: $00
	ret nz                                           ; $7517: $c0

	ccf                                              ; $7518: $3f
	ld e, $e1                                        ; $7519: $1e $e1
	ld h, b                                          ; $751b: $60
	sbc a                                            ; $751c: $9f
	add b                                            ; $751d: $80
	ld a, a                                          ; $751e: $7f
	ld sp, $e7ce                                     ; $751f: $31 $ce $e7
	jr jr_069_74b3                                   ; $7522: $18 $8f

	ld [hl], b                                       ; $7524: $70
	inc hl                                           ; $7525: $23
	ret nz                                           ; $7526: $c0

	ld c, a                                          ; $7527: $4f
	add b                                            ; $7528: $80

jr_069_7529:
	sbc a                                            ; $7529: $9f
	ld bc, $037a                                     ; $752a: $01 $7a $03
	push hl                                          ; $752d: $e5
	sub b                                            ; $752e: $90
	ld b, $8e                                        ; $752f: $06 $8e
	ld b, h                                          ; $7531: $44
	ld e, l                                          ; $7532: $5d
	adc b                                            ; $7533: $88
	or e                                             ; $7534: $b3
	jr jr_069_758d                                   ; $7535: $18 $56

	ld sp, $67b9                                     ; $7537: $31 $b9 $67
	halt                                             ; $753a: $76
	rst GetHLinHL                                          ; $753b: $cf
	ret c                                            ; $753c: $d8

	cp a                                             ; $753d: $bf
	ldh [$c1], a                                     ; $753e: $e0 $c1
	adc [hl]                                         ; $7540: $8e
	ldh [$80], a                                     ; $7541: $e0 $80
	ldh [$c0], a                                     ; $7543: $e0 $c0
	ld [hl], b                                       ; $7545: $70
	ret nz                                           ; $7546: $c0

	jr nc, jr_069_7529                               ; $7547: $30 $e0

	db $10                                           ; $7549: $10
	ldh a, [$08]                                     ; $754a: $f0 $08
	ld hl, sp+$04                                    ; $754c: $f8 $04
	db $fc                                           ; $754e: $fc
	ld [bc], a                                       ; $754f: $02
	cp $01                                           ; $7550: $fe $01
	ld b, a                                          ; $7552: $47
	ld e, e                                          ; $7553: $5b
	ldh a, [c]                                       ; $7554: $f2
	rst SubAFromDE                                          ; $7555: $df
	pop bc                                           ; $7556: $c1
	add b                                            ; $7557: $80
	and a                                            ; $7558: $a7
	ld h, [hl]                                       ; $7559: $66
	cp [hl]                                          ; $755a: $be
	db $dd                                           ; $755b: $dd
	ld e, l                                          ; $755c: $5d
	db $eb                                           ; $755d: $eb
	and d                                            ; $755e: $a2
	ld a, a                                          ; $755f: $7f
	rst SubAFromHL                                          ; $7560: $d7
	ld a, $3d                                        ; $7561: $3e $3d
	adc $0d                                          ; $7563: $ce $0d
	cp $0e                                           ; $7565: $fe $0e
	rst $38                                          ; $7567: $ff
	inc bc                                           ; $7568: $03
	rst JumpTable                                          ; $7569: $c7
	ld bc, $1f3f                                     ; $756a: $01 $3f $1f
	rst $38                                          ; $756d: $ff
	ld h, b                                          ; $756e: $60
	rst $38                                          ; $756f: $ff
	add b                                            ; $7570: $80
	di                                               ; $7571: $f3
	nop                                              ; $7572: $00
	rst GetHLinHL                                          ; $7573: $cf
	rlca                                             ; $7574: $07
	add a                                            ; $7575: $87
	ld [$1f90], sp                                   ; $7576: $08 $90 $1f
	ld de, $227b                                     ; $7579: $11 $7b $22

jr_069_757c:
	rst FarCall                                          ; $757c: $f7
	ld b, [hl]                                       ; $757d: $46
	rst AddAOntoHL                                          ; $757e: $ef
	adc h                                            ; $757f: $8c
	rst SubAFromDE                                          ; $7580: $df
	inc e                                            ; $7581: $1c
	rst $38                                          ; $7582: $ff
	dec a                                            ; $7583: $3d
	rst SubAFromBC                                          ; $7584: $e7
	db $fd                                           ; $7585: $fd
	rst JumpTable                                          ; $7586: $c7
	ldh [$c1], a                                     ; $7587: $e0 $c1
	sbc b                                            ; $7589: $98
	ccf                                              ; $758a: $3f
	inc bc                                           ; $758b: $03
	ccf                                              ; $758c: $3f

jr_069_758d:
	ld bc, $013f                    ; $758d: $01 $3f $01
	rra                                              ; $7590: $1f
	ld a, d                                          ; $7591: $7a
	jr z, jr_069_7613                                ; $7592: $28 $7f

	cp $7d                                           ; $7594: $fe $7d
	sbc [hl]                                         ; $7596: $9e
	ld a, a                                          ; $7597: $7f
	cp $92                                           ; $7598: $fe $92
	add a                                            ; $759a: $87
	ld bc, $83c7                                     ; $759b: $01 $c7 $83
	ld a, a                                          ; $759e: $7f
	db $e4                                           ; $759f: $e4
	ccf                                              ; $75a0: $3f
	ldh a, [rIF]                                     ; $75a1: $f0 $0f
	ld hl, sp+$07                                    ; $75a3: $f8 $07
	db $fc                                           ; $75a5: $fc
	inc bc                                           ; $75a6: $03
	ld [hl], a                                       ; $75a7: $77
	ld d, d                                          ; $75a8: $52
	ld b, a                                          ; $75a9: $47
	jr nc, @-$7e                                     ; $75aa: $30 $80

	ldh [$ce], a                                     ; $75ac: $e0 $ce
	ld a, $f0                                        ; $75ae: $3e $f0
	ldh a, [$6c]                                     ; $75b0: $f0 $6c
	sbc h                                            ; $75b2: $9c
	di                                               ; $75b3: $f3
	rrca                                             ; $75b4: $0f
	rst GetHLinHL                                          ; $75b5: $cf
	ccf                                              ; $75b6: $3f
	cp c                                             ; $75b7: $b9
	ld a, [hl]                                       ; $75b8: $7e
	ld l, a                                          ; $75b9: $6f
	ldh a, [$c0]                                     ; $75ba: $f0 $c0
	db $e3                                           ; $75bc: $e3
	add b                                            ; $75bd: $80
	rst GetHLinHL                                          ; $75be: $cf
	nop                                              ; $75bf: $00
	db $fc                                           ; $75c0: $fc
	add b                                            ; $75c1: $80
	ld hl, sp-$40                                    ; $75c2: $f8 $c0
	or $58                                           ; $75c4: $f6 $58
	rst $38                                          ; $75c6: $ff

jr_069_75c7:
	jr nc, jr_069_75c7                               ; $75c7: $30 $fe

	ldh [rIE], a                                     ; $75c9: $e0 $ff
	sub b                                            ; $75cb: $90
	ld [hl], b                                       ; $75cc: $70
	cp $b0                                           ; $75cd: $fe $b0
	db $fc                                           ; $75cf: $fc
	inc de                                           ; $75d0: $13
	rst $38                                          ; $75d1: $ff
	inc l                                            ; $75d2: $2c
	rst $38                                          ; $75d3: $ff
	cp $d7                                           ; $75d4: $fe $d7
	rst JumpTable                                          ; $75d6: $c7
	add c                                            ; $75d7: $81
	jp $8100                                         ; $75d8: $c3 $00 $81


	ldh [$c0], a                                     ; $75db: $e0 $c0
	sbc d                                            ; $75dd: $9a
	inc h                                            ; $75de: $24
	rst $38                                          ; $75df: $ff
	ld [hl+], a                                      ; $75e0: $22
	rst $38                                          ; $75e1: $ff
	and d                                            ; $75e2: $a2
	ld a, e                                          ; $75e3: $7b
	cp $87                                           ; $75e4: $fe $87
	and h                                            ; $75e6: $a4
	rst $38                                          ; $75e7: $ff
	call nz, $c9ff                                   ; $75e8: $c4 $ff $c9
	rst $38                                          ; $75eb: $ff
	sbc e                                            ; $75ec: $9b
	cp $3f                                           ; $75ed: $fe $3f
	cp $df                                           ; $75ef: $fe $df
	db $ec                                           ; $75f1: $ec
	rst $38                                          ; $75f2: $ff
	adc b                                            ; $75f3: $88
	rst $38                                          ; $75f4: $ff
	sub b                                            ; $75f5: $90
	db $fc                                           ; $75f6: $fc
	add b                                            ; $75f7: $80
	pop af                                           ; $75f8: $f1
	add b                                            ; $75f9: $80
	rst JumpTable                                          ; $75fa: $c7
	add b                                            ; $75fb: $80
	sbc a                                            ; $75fc: $9f
	add a                                            ; $75fd: $87
	jp hl                                            ; $75fe: $e9


	rst SubAFromDE                                          ; $75ff: $df
	ld [bc], a                                       ; $7600: $02
	add b                                            ; $7601: $80
	ld a, [$e4fe]                                    ; $7602: $fa $fe $e4
	inc e                                            ; $7605: $1c
	ld a, [hl]                                       ; $7606: $7e
	cp $e3                                           ; $7607: $fe $e3
	rra                                              ; $7609: $1f
	dec b                                            ; $760a: $05
	inc bc                                           ; $760b: $03
	ld a, [hl]                                       ; $760c: $7e
	ld bc, $0c13                                     ; $760d: $01 $13 $0c
	add hl, bc                                       ; $7610: $09
	ld b, $35                                        ; $7611: $06 $35

jr_069_7613:
	jp $3947                                         ; $7613: $c3 $47 $39


	ld [hl], d                                       ; $7616: $72
	adc l                                            ; $7617: $8d
	jr jr_069_7681                                   ; $7618: $18 $67

	ld l, $13                                        ; $761a: $2e $13
	or a                                             ; $761c: $b7
	ret                                              ; $761d: $c9


	jp nc, $fd6d                                     ; $761e: $d2 $6d $fd

	sbc b                                            ; $7621: $98
	ld h, $fb                                        ; $7622: $26 $fb
	ld h, $ea                                        ; $7624: $26 $ea
	or a                                             ; $7626: $b7
	xor d                                            ; $7627: $aa
	rst FarCall                                          ; $7628: $f7
	ldh [$c1], a                                     ; $7629: $e0 $c1
	add b                                            ; $762b: $80
	ld e, a                                          ; $762c: $5f
	ei                                               ; $762d: $fb
	ld a, a                                          ; $762e: $7f
	di                                               ; $762f: $f3
	ld a, e                                          ; $7630: $7b
	pop af                                           ; $7631: $f1
	ld e, c                                          ; $7632: $59
	pop af                                           ; $7633: $f1
	cp c                                             ; $7634: $b9
	ret z                                            ; $7635: $c8

	sbc b                                            ; $7636: $98

jr_069_7637:
	adc b                                            ; $7637: $88
	call c, $cc08                                    ; $7638: $dc $08 $cc
	inc b                                            ; $763b: $04
	xor $04                                          ; $763c: $ee $04
	and $02                                          ; $763e: $e6 $02
	add $02                                          ; $7640: $c6 $02
	rra                                              ; $7642: $1f
	ld [bc], a                                       ; $7643: $02
	ld a, a                                          ; $7644: $7f
	rlca                                             ; $7645: $07
	push af                                          ; $7646: $f5
	add hl, sp                                       ; $7647: $39
	pop de                                           ; $7648: $d1
	pop hl                                           ; $7649: $e1
	ld b, c                                          ; $764a: $41
	sbc [hl]                                         ; $764b: $9e

jr_069_764c:
	add b                                            ; $764c: $80
	db $fd                                           ; $764d: $fd
	db $dd                                           ; $764e: $dd
	add b                                            ; $764f: $80
	sbc b                                            ; $7650: $98
	ld b, b                                          ; $7651: $40
	ret nz                                           ; $7652: $c0

	ld b, b                                          ; $7653: $40
	ret nz                                           ; $7654: $c0

	jr nz, jr_069_7637                               ; $7655: $20 $e0

	and b                                            ; $7657: $a0
	ld h, e                                          ; $7658: $63
	cp $df                                           ; $7659: $fe $df
	ldh [$9d], a                                     ; $765b: $e0 $9d
	ld h, b                                          ; $765d: $60
	ldh [rPCM34], a                                  ; $765e: $e0 $77
	db $ec                                           ; $7660: $ec
	sbc c                                            ; $7661: $99
	jr z, jr_069_764c                                ; $7662: $28 $e8

	ret c                                            ; $7664: $d8

	ld hl, sp-$50                                    ; $7665: $f8 $b0
	or b                                             ; $7667: $b0
	db $dd                                           ; $7668: $dd
	add b                                            ; $7669: $80
	ld l, a                                          ; $766a: $6f
	sub $df                                          ; $766b: $d6 $df
	ret nz                                           ; $766d: $c0

	adc l                                            ; $766e: $8d
	ldh [rAUD4LEN], a                                ; $766f: $e0 $20
	ldh a, [hDisp1_SCY]                                     ; $7671: $f0 $90
	ldh a, [$50]                                     ; $7673: $f0 $50
	ld hl, sp+$48                                    ; $7675: $f8 $48
	db $fc                                           ; $7677: $fc
	inc h                                            ; $7678: $24
	db $fc                                           ; $7679: $fc
	inc b                                            ; $767a: $04
	db $fc                                           ; $767b: $fc
	add h                                            ; $767c: $84
	db $fc                                           ; $767d: $fc
	inc b                                            ; $767e: $04
	cp $02                                           ; $767f: $fe $02

jr_069_7681:
	ld [hl], a                                       ; $7681: $77
	cp $97                                           ; $7682: $fe $97
	ld a, [hl]                                       ; $7684: $7e
	add d                                            ; $7685: $82
	ld a, $c2                                        ; $7686: $3e $c2
	ld a, $c2                                        ; $7688: $3e $c2
	ld e, $e2                                        ; $768a: $1e $e2
	ld l, a                                          ; $768c: $6f
	cp $88                                           ; $768d: $fe $88
	sbc a                                            ; $768f: $9f
	ld h, c                                          ; $7690: $61
	adc a                                            ; $7691: $8f
	ld [hl], c                                       ; $7692: $71
	adc a                                            ; $7693: $8f
	pop af                                           ; $7694: $f1
	rst GetHLinHL                                          ; $7695: $cf
	or c                                             ; $7696: $b1
	rst GetHLinHL                                          ; $7697: $cf

jr_069_7698:
	pop af                                           ; $7698: $f1
	rst JumpTable                                          ; $7699: $c7
	ld sp, hl                                        ; $769a: $f9
	ld b, a                                          ; $769b: $47

jr_069_769c:
	ld a, b                                          ; $769c: $78
	ld b, e                                          ; $769d: $43
	ld a, h                                          ; $769e: $7c
	ld b, e                                          ; $769f: $43
	ld a, h                                          ; $76a0: $7c
	db $e3                                           ; $76a1: $e3
	call c, $fee1                                    ; $76a2: $dc $e1 $fe
	ld h, c                                          ; $76a5: $61
	ld a, e                                          ; $76a6: $7b
	cp $98                                           ; $76a7: $fe $98
	jr nz, @+$01                                     ; $76a9: $20 $ff

	jr nc, jr_069_769c                               ; $76ab: $30 $ef

	jr nc, @+$01                                     ; $76ad: $30 $ff

	db $10                                           ; $76af: $10
	ld a, e                                          ; $76b0: $7b
	cp $99                                           ; $76b1: $fe $99
	jr @-$07                                         ; $76b3: $18 $f7

	sbc b                                            ; $76b5: $98
	rst $38                                          ; $76b6: $ff
	sbc b                                            ; $76b7: $98
	rst $38                                          ; $76b8: $ff
	db $db                                           ; $76b9: $db
	add b                                            ; $76ba: $80
	sbc $c0                                          ; $76bb: $de $c0
	ld a, e                                          ; $76bd: $7b
	sub e                                            ; $76be: $93
	ld a, e                                          ; $76bf: $7b
	adc l                                            ; $76c0: $8d
	ld a, a                                          ; $76c1: $7f
	ld a, l                                          ; $76c2: $7d
	ld a, e                                          ; $76c3: $7b
	cp $93                                           ; $76c4: $fe $93
	ldh a, [rAUD1SWEEP]                              ; $76c6: $f0 $10
	ld [hl], b                                       ; $76c8: $70
	sub b                                            ; $76c9: $90
	ld [hl], b                                       ; $76ca: $70
	sub b                                            ; $76cb: $90
	ld a, b                                          ; $76cc: $78
	adc b                                            ; $76cd: $88
	jr c, jr_069_7698                                ; $76ce: $38 $c8

	inc a                                            ; $76d0: $3c
	call z, $001d                                    ; $76d1: $cc $1d $00
	rst SubAFromDE                                          ; $76d4: $df
	adc b                                            ; $76d5: $88
	sbc c                                            ; $76d6: $99
	call z, $0088                                    ; $76d7: $cc $88 $00
	ld b, h                                          ; $76da: $44
	adc b                                            ; $76db: $88
	nop                                              ; $76dc: $00
	ld [hl], a                                       ; $76dd: $77
	db $fc                                           ; $76de: $fc
	rst SubAFromDE                                          ; $76df: $df
	sbc c                                            ; $76e0: $99
	ld [hl], e                                       ; $76e1: $73
	ei                                               ; $76e2: $fb
	sbc h                                            ; $76e3: $9c
	ld h, [hl]                                       ; $76e4: $66
	adc b                                            ; $76e5: $88
	ld d, l                                          ; $76e6: $55
	ld l, e                                          ; $76e7: $6b
	ei                                               ; $76e8: $fb
	ld l, e                                          ; $76e9: $6b
	db $ec                                           ; $76ea: $ec
	sbc [hl]                                         ; $76eb: $9e
	sbc c                                            ; $76ec: $99
	sbc $ff                                          ; $76ed: $de $ff
	db $fd                                           ; $76ef: $fd
	ld bc, $2180                                     ; $76f0: $01 $80 $21
	rst $38                                          ; $76f3: $ff
	ld a, a                                          ; $76f4: $7f
	rst $38                                          ; $76f5: $ff
	ld c, c                                          ; $76f6: $49
	rst $38                                          ; $76f7: $ff
	sub d                                            ; $76f8: $92
	rst $38                                          ; $76f9: $ff
	and h                                            ; $76fa: $a4
	rst $38                                          ; $76fb: $ff
	add hl, hl                                       ; $76fc: $29
	rst $38                                          ; $76fd: $ff
	ld b, e                                          ; $76fe: $43
	rst $38                                          ; $76ff: $ff
	inc bc                                           ; $7700: $03
	rst $38                                          ; $7701: $ff
	dec b                                            ; $7702: $05
	rst $38                                          ; $7703: $ff
	dec c                                            ; $7704: $0d
	rst $38                                          ; $7705: $ff
	dec e                                            ; $7706: $1d
	rst FarCall                                          ; $7707: $f7
	dec a                                            ; $7708: $3d
	rst SubAFromBC                                          ; $7709: $e7
	ccf                                              ; $770a: $3f
	db $e3                                           ; $770b: $e3
	ld a, a                                          ; $770c: $7f
	ldh a, [rBGP]                                    ; $770d: $f0 $47
	add sp, $45                                      ; $770f: $e8 $45
	sub l                                            ; $7711: $95
	sub $47                                          ; $7712: $d6 $47
	add $47                                          ; $7714: $c6 $47
	xor $7b                                          ; $7716: $ee $7b
	cp $d3                                           ; $7718: $fe $d3
	cp $93                                           ; $771a: $fe $93
	ld a, e                                          ; $771c: $7b
	cp $9b                                           ; $771d: $fe $9b
	sub c                                            ; $771f: $91
	cp $97                                           ; $7720: $fe $97
	db $fc                                           ; $7722: $fc
	ld [hl], a                                       ; $7723: $77
	cp $9a                                           ; $7724: $fe $9a
	sbc a                                            ; $7726: $9f
	db $fc                                           ; $7727: $fc
	rst GetHLinHL                                          ; $7728: $cf
	ld hl, sp+$4f                                    ; $7729: $f8 $4f
	ld a, e                                          ; $772b: $7b
	cp $84                                           ; $772c: $fe $84
	ld b, a                                          ; $772e: $47
	db $fc                                           ; $772f: $fc
	inc hl                                           ; $7730: $23
	rst $38                                          ; $7731: $ff
	db $e3                                           ; $7732: $e3
	rst $38                                          ; $7733: $ff
	sbc a                                            ; $7734: $9f
	db $fc                                           ; $7735: $fc
	rra                                              ; $7736: $1f
	ldh a, [$38]                                     ; $7737: $f0 $38
	rst SubAFromBC                                          ; $7739: $e7
	rst SubAFromDE                                          ; $773a: $df
	rst $38                                          ; $773b: $ff
	pop bc                                           ; $773c: $c1
	add b                                            ; $773d: $80
	add e                                            ; $773e: $83
	rlca                                             ; $773f: $07
	inc e                                            ; $7740: $1c
	dec a                                            ; $7741: $3d
	dec c                                            ; $7742: $0d
	rlca                                             ; $7743: $07
	inc bc                                           ; $7744: $03
	rlca                                             ; $7745: $07
	ccf                                              ; $7746: $3f
	nop                                              ; $7747: $00
	rrca                                             ; $7748: $0f
	db $fc                                           ; $7749: $fc
	sbc [hl]                                         ; $774a: $9e
	add b                                            ; $774b: $80
	ld a, e                                          ; $774c: $7b
	cp $8a                                           ; $774d: $fe $8a
	ret nz                                           ; $774f: $c0

	nop                                              ; $7750: $00
	ret nz                                           ; $7751: $c0

	add b                                            ; $7752: $80
	ldh [rLCDC], a                                   ; $7753: $e0 $40
	or b                                             ; $7755: $b0
	ld h, b                                          ; $7756: $60
	ld hl, sp+$30                                    ; $7757: $f8 $30
	cp $1c                                           ; $7759: $fe $1c
	or $0f                                           ; $775b: $f6 $0f
	rlc a                                            ; $775d: $cb $07
	add l                                            ; $775f: $85
	inc bc                                           ; $7760: $03
	add d                                            ; $7761: $82
	ld bc, $7781                                     ; $7762: $01 $81 $77
	ld [$fe7b], a                                    ; $7765: $ea $7b $fe
	ld a, a                                          ; $7768: $7f
	add sp, -$78                                     ; $7769: $e8 $88
	ldh [$c0], a                                     ; $776b: $e0 $c0
	db $fd                                           ; $776d: $fd
	rlca                                             ; $776e: $07
	rst $38                                          ; $776f: $ff
	ld b, $ff                                        ; $7770: $06 $ff
	ld d, $6f                                        ; $7772: $16 $6f
	or $ff                                           ; $7774: $f6 $ff
	add [hl]                                         ; $7776: $86
	ld a, a                                          ; $7777: $7f
	ldh [c], a                                       ; $7778: $e2
	db $fc                                           ; $7779: $fc
	ldh a, [$9c]                                     ; $777a: $f0 $9c
	ldh [rAUD1SWEEP], a                              ; $777c: $e0 $10
	add b                                            ; $777e: $80
	add b                                            ; $777f: $80
	nop                                              ; $7780: $00
	ldh [$7b], a                                     ; $7781: $e0 $7b
	ret z                                            ; $7783: $c8

	ld sp, hl                                        ; $7784: $f9
	ld a, a                                          ; $7785: $7f
	call nc, $fe7f                                   ; $7786: $d4 $7f $fe
	sbc [hl]                                         ; $7789: $9e
	ld bc, $fe7b                                     ; $778a: $01 $7b $fe
	add b                                            ; $778d: $80
	inc bc                                           ; $778e: $03
	inc c                                            ; $778f: $0c
	inc c                                            ; $7790: $0c
	rra                                              ; $7791: $1f
	rrca                                             ; $7792: $0f
	inc de                                           ; $7793: $13
	ccf                                              ; $7794: $3f
	inc e                                            ; $7795: $1c
	rra                                              ; $7796: $1f
	ld [hl], $57                                     ; $7797: $36 $57
	ccf                                              ; $7799: $3f
	ld l, e                                          ; $779a: $6b
	inc e                                            ; $779b: $1c
	ld a, a                                          ; $779c: $7f
	nop                                              ; $779d: $00
	ld a, a                                          ; $779e: $7f
	nop                                              ; $779f: $00
	ccf                                              ; $77a0: $3f
	ld b, c                                          ; $77a1: $41
	cp a                                             ; $77a2: $bf
	pop bc                                           ; $77a3: $c1
	ld a, l                                          ; $77a4: $7d
	add e                                            ; $77a5: $83
	and d                                            ; $77a6: $a2
	rst $38                                          ; $77a7: $ff
	jp nz, $c2ff                                     ; $77a8: $c2 $ff $c2

	ld a, a                                          ; $77ab: $7f
	jp nz, $7f98                                     ; $77ac: $c2 $98 $7f

	push hl                                          ; $77af: $e5
	ld a, a                                          ; $77b0: $7f
	push hl                                          ; $77b1: $e5
	rst $38                                          ; $77b2: $ff
	ld c, e                                          ; $77b3: $4b
	rst $38                                          ; $77b4: $ff
	ld a, e                                          ; $77b5: $7b
	inc sp                                           ; $77b6: $33
	add e                                            ; $77b7: $83
	ld h, [hl]                                       ; $77b8: $66
	ld e, a                                          ; $77b9: $5f
	pop af                                           ; $77ba: $f1
	rst GetHLinHL                                          ; $77bb: $cf
	db $fc                                           ; $77bc: $fc
	rst FarCall                                          ; $77bd: $f7
	sbc [hl]                                         ; $77be: $9e
	rst $38                                          ; $77bf: $ff
	adc $7f                                          ; $77c0: $ce $7f
	rst SubAFromBC                                          ; $77c2: $e7
	rra                                              ; $77c3: $1f
	pop af                                           ; $77c4: $f1
	rst $38                                          ; $77c5: $ff
	ld hl, sp-$01                                    ; $77c6: $f8 $ff
	adc h                                            ; $77c8: $8c
	rst $38                                          ; $77c9: $ff
	ldh [c], a                                       ; $77ca: $e2
	ld a, a                                          ; $77cb: $7f
	pop af                                           ; $77cc: $f1
	ld e, a                                          ; $77cd: $5f
	db $fc                                           ; $77ce: $fc
	ld d, a                                          ; $77cf: $57
	db $f4                                           ; $77d0: $f4
	ld c, e                                          ; $77d1: $4b
	ld a, [$732b]                                    ; $77d2: $fa $2b $73
	cp $9a                                           ; $77d5: $fe $9a
	dec d                                            ; $77d7: $15
	db $fd                                           ; $77d8: $fd
	dec d                                            ; $77d9: $15
	db $fd                                           ; $77da: $fd
	sub l                                            ; $77db: $95
	ld a, e                                          ; $77dc: $7b
	cp $99                                           ; $77dd: $fe $99
	sub h                                            ; $77df: $94
	db $fc                                           ; $77e0: $fc
	sub h                                            ; $77e1: $94
	db $fc                                           ; $77e2: $fc
	sub $fe                                          ; $77e3: $d6 $fe
	ld l, a                                          ; $77e5: $6f
	ld b, b                                          ; $77e6: $40
	sub d                                            ; $77e7: $92
	inc a                                            ; $77e8: $3c
	db $e3                                           ; $77e9: $e3
	rst SubAFromDE                                          ; $77ea: $df
	rst $38                                          ; $77eb: $ff
	ret nz                                           ; $77ec: $c0

	cp h                                             ; $77ed: $bc
	add c                                            ; $77ee: $81
	nop                                              ; $77ef: $00
	rrca                                             ; $77f0: $0f
	ccf                                              ; $77f1: $3f
	dec bc                                           ; $77f2: $0b
	dec c                                            ; $77f3: $0d
	dec c                                            ; $77f4: $0d
	inc bc                                           ; $77f5: $03
	ld b, b                                          ; $77f6: $40
	dec hl                                           ; $77f7: $2b
	ld b, b                                          ; $77f8: $40
	sbc b                                            ; $77f9: $98
	ld [bc], a                                       ; $77fa: $02
	db $fc                                           ; $77fb: $fc
	ld [hl], b                                       ; $77fc: $70
	call c, $b0e0                                    ; $77fd: $dc $e0 $b0
	ret nz                                           ; $7800: $c0

	ld a, e                                          ; $7801: $7b
	ret nc                                           ; $7802: $d0

	scf                                              ; $7803: $37
	ld b, b                                          ; $7804: $40
	sub d                                            ; $7805: $92
	ld [$1f0c], sp                                   ; $7806: $08 $0c $1f
	dec bc                                           ; $7809: $0b
	rla                                              ; $780a: $17
	ccf                                              ; $780b: $3f
	nop                                              ; $780c: $00
	rra                                              ; $780d: $1f
	ld a, $5b                                        ; $780e: $3e $5b
	scf                                              ; $7810: $37
	ld l, a                                          ; $7811: $6f
	ld e, $37                                        ; $7812: $1e $37
	ld b, b                                          ; $7814: $40
	sbc h                                            ; $7815: $9c
	ld h, l                                          ; $7816: $65
	rst $38                                          ; $7817: $ff
	bit 6, e                                         ; $7818: $cb $73
	ld b, b                                          ; $781a: $40
	sbc [hl]                                         ; $781b: $9e
	rst SubAFromDE                                          ; $781c: $df
	ld d, e                                          ; $781d: $53
	ld b, b                                          ; $781e: $40
	ld l, a                                          ; $781f: $6f
	ld h, b                                          ; $7820: $60
	sub c                                            ; $7821: $91
	ld a, $e1                                        ; $7822: $3e $e1
	jp $dcff                                         ; $7824: $c3 $ff $dc


	cp [hl]                                          ; $7827: $be
	add b                                            ; $7828: $80
	nop                                              ; $7829: $00
	stop                                             ; $782a: $10 $00
	rrca                                             ; $782c: $0f
	rra                                              ; $782d: $1f
	ld d, $0f                                        ; $782e: $16 $0f
	inc bc                                           ; $7830: $03
	ld h, b                                          ; $7831: $60
	ld b, a                                          ; $7832: $47
	ld h, b                                          ; $7833: $60
	sbc l                                            ; $7834: $9d
	ld b, $7f                                        ; $7835: $06 $7f
	ld [hl], e                                       ; $7837: $73
	ld h, b                                          ; $7838: $60
	sbc c                                            ; $7839: $99
	inc a                                            ; $783a: $3c
	nop                                              ; $783b: $00
	db $fc                                           ; $783c: $fc
	jr nc, jr_069_784f                               ; $783d: $30 $10

	ldh [$2b], a                                     ; $783f: $e0 $2b
	ld h, b                                          ; $7841: $60
	sub e                                            ; $7842: $93
	nop                                              ; $7843: $00
	inc c                                            ; $7844: $0c
	rra                                              ; $7845: $1f
	inc hl                                           ; $7846: $23
	rra                                              ; $7847: $1f
	ccf                                              ; $7848: $3f
	nop                                              ; $7849: $00
	ccf                                              ; $784a: $3f
	nop                                              ; $784b: $00
	ld [hl], a                                       ; $784c: $77
	ccf                                              ; $784d: $3f
	ld a, l                                          ; $784e: $7d

jr_069_784f:
	inc sp                                           ; $784f: $33
	ld h, b                                          ; $7850: $60
	ld a, a                                          ; $7851: $7f
	cp $7f                                           ; $7852: $fe $7f
	ld h, b                                          ; $7854: $60
	ld a, a                                          ; $7855: $7f
	ld h, c                                          ; $7856: $61
	cpl                                              ; $7857: $2f
	ld h, b                                          ; $7858: $60
	sbc c                                            ; $7859: $99
	ccf                                              ; $785a: $3f
	ldh [$c1], a                                     ; $785b: $e0 $c1
	rst $38                                          ; $785d: $ff
	sbc $bf                                          ; $785e: $de $bf
	ld [hl], a                                       ; $7860: $77
	xor d                                            ; $7861: $aa
	sbc h                                            ; $7862: $9c
	ld bc, $1738                                     ; $7863: $01 $38 $17
	inc bc                                           ; $7866: $03
	ld h, b                                          ; $7867: $60
	ccf                                              ; $7868: $3f
	ld h, b                                          ; $7869: $60
	sub c                                            ; $786a: $91
	cp a                                             ; $786b: $bf
	halt                                             ; $786c: $76
	rst SubAFromDE                                          ; $786d: $df
	and $7f                                          ; $786e: $e6 $7f
	add d                                            ; $7870: $82
	inc a                                            ; $7871: $3c
	nop                                              ; $7872: $00
	inc a                                            ; $7873: $3c
	nop                                              ; $7874: $00
	or b                                             ; $7875: $b0
	ld [hl], b                                       ; $7876: $70
	ret nc                                           ; $7877: $d0

	ldh [$2f], a                                     ; $7878: $e0 $2f
	ld h, b                                          ; $787a: $60
	sub e                                            ; $787b: $93
	add hl, bc                                       ; $787c: $09
	ld e, $37                                        ; $787d: $1e $37
	rrca                                             ; $787f: $0f
	ld a, $01                                        ; $7880: $3e $01
	ccf                                              ; $7882: $3f
	nop                                              ; $7883: $00
	ld a, d                                          ; $7884: $7a
	scf                                              ; $7885: $37
	ld a, a                                          ; $7886: $7f
	rra                                              ; $7887: $1f
	rla                                              ; $7888: $17
	ld h, b                                          ; $7889: $60
	ld c, [hl]                                       ; $788a: $4e
	nop                                              ; $788b: $00
	rst $38                                          ; $788c: $ff
	sbc e                                            ; $788d: $9b
	ld b, $02                                        ; $788e: $06 $02
	ld [bc], a                                       ; $7890: $02
	ld bc, $c077                                     ; $7891: $01 $77 $c0
	ld a, a                                          ; $7894: $7f
	cp $80                                           ; $7895: $fe $80
	add e                                            ; $7897: $83
	nop                                              ; $7898: $00
	jp nz, $f781                                     ; $7899: $c2 $81 $f7

	db $e3                                           ; $789c: $e3
	rst $38                                          ; $789d: $ff
	rst $38                                          ; $789e: $ff
	pop af                                           ; $789f: $f1
	ld a, a                                          ; $78a0: $7f
	ldh a, [$1f]                                     ; $78a1: $f0 $1f
	ld [hl], b                                       ; $78a3: $70
	rra                                              ; $78a4: $1f
	jr jr_069_78c6                                   ; $78a5: $18 $1f

	inc e                                            ; $78a7: $1c
	rrca                                             ; $78a8: $0f
	ld a, $07                                        ; $78a9: $3e $07
	cp $03                                           ; $78ab: $fe $03
	ld a, [$fc87]                                    ; $78ad: $fa $87 $fc
	rlca                                             ; $78b0: $07
	db $fc                                           ; $78b1: $fc
	rrca                                             ; $78b2: $0f
	db $f4                                           ; $78b3: $f4
	rra                                              ; $78b4: $1f
	and $95                                          ; $78b5: $e6 $95
	ccf                                              ; $78b7: $3f
	ldh [c], a                                       ; $78b8: $e2
	ld a, a                                          ; $78b9: $7f
	ldh [c], a                                       ; $78ba: $e2
	rst $38                                          ; $78bb: $ff
	ld [hl], e                                       ; $78bc: $73
	rst $38                                          ; $78bd: $ff
	ld d, c                                          ; $78be: $51
	rst $38                                          ; $78bf: $ff
	ret                                              ; $78c0: $c9


	ld a, e                                          ; $78c1: $7b
	cp $97                                           ; $78c2: $fe $97
	ld c, b                                          ; $78c4: $48
	rst $38                                          ; $78c5: $ff

jr_069_78c6:
	ld b, h                                          ; $78c6: $44
	rst $38                                          ; $78c7: $ff
	ld h, h                                          ; $78c8: $64
	rst $38                                          ; $78c9: $ff
	inc h                                            ; $78ca: $24
	rst $38                                          ; $78cb: $ff
	ld [hl], a                                       ; $78cc: $77
	ret nz                                           ; $78cd: $c0

	rst SubAFromDE                                          ; $78ce: $df
	inc bc                                           ; $78cf: $03
	rra                                              ; $78d0: $1f
	ret nz                                           ; $78d1: $c0

	rst $38                                          ; $78d2: $ff
	sbc c                                            ; $78d3: $99
	ld [bc], a                                       ; $78d4: $02
	ld b, $03                                        ; $78d5: $06 $03
	rlca                                             ; $78d7: $07
	dec b                                            ; $78d8: $05
	inc bc                                           ; $78d9: $03
	inc de                                           ; $78da: $13
	and b                                            ; $78db: $a0
	ld a, a                                          ; $78dc: $7f
	cp $17                                           ; $78dd: $fe $17
	and b                                            ; $78df: $a0
	sbc [hl]                                         ; $78e0: $9e
	ld b, $de                                        ; $78e1: $06 $de
	rlca                                             ; $78e3: $07
	rst SubAFromDE                                          ; $78e4: $df
	inc bc                                           ; $78e5: $03
	ld a, a                                          ; $78e6: $7f
	sbc d                                            ; $78e7: $9a
	inc bc                                           ; $78e8: $03
	ret nz                                           ; $78e9: $c0

	scf                                              ; $78ea: $37
	ret nz                                           ; $78eb: $c0

	db $fc                                           ; $78ec: $fc
	ld bc, $2180                                     ; $78ed: $01 $80 $21
	rst $38                                          ; $78f0: $ff
	ld a, a                                          ; $78f1: $7f
	rst $38                                          ; $78f2: $ff
	ld c, c                                          ; $78f3: $49
	rst $38                                          ; $78f4: $ff
	sub d                                            ; $78f5: $92
	rst $38                                          ; $78f6: $ff
	and h                                            ; $78f7: $a4
	rst $38                                          ; $78f8: $ff
	add hl, hl                                       ; $78f9: $29
	rst $38                                          ; $78fa: $ff
	ld b, e                                          ; $78fb: $43
	rst $38                                          ; $78fc: $ff
	inc bc                                           ; $78fd: $03
	rst $38                                          ; $78fe: $ff
	dec b                                            ; $78ff: $05
	rst $38                                          ; $7900: $ff
	dec c                                            ; $7901: $0d
	rst $38                                          ; $7902: $ff
	dec e                                            ; $7903: $1d
	rst FarCall                                          ; $7904: $f7
	dec a                                            ; $7905: $3d
	rst SubAFromBC                                          ; $7906: $e7
	ccf                                              ; $7907: $3f
	db $e3                                           ; $7908: $e3
	ld a, a                                          ; $7909: $7f
	ldh a, [rBGP]                                    ; $790a: $f0 $47
	add sp, $45                                      ; $790c: $e8 $45
	sub l                                            ; $790e: $95
	sub $47                                          ; $790f: $d6 $47
	add $47                                          ; $7911: $c6 $47
	xor $7b                                          ; $7913: $ee $7b
	cp $d3                                           ; $7915: $fe $d3
	cp $93                                           ; $7917: $fe $93
	ld a, e                                          ; $7919: $7b
	cp $9b                                           ; $791a: $fe $9b
	sub c                                            ; $791c: $91
	cp $97                                           ; $791d: $fe $97
	db $fc                                           ; $791f: $fc
	ld [hl], a                                       ; $7920: $77
	cp $9a                                           ; $7921: $fe $9a
	sbc a                                            ; $7923: $9f
	db $fc                                           ; $7924: $fc
	rst GetHLinHL                                          ; $7925: $cf
	ld hl, sp+$4f                                    ; $7926: $f8 $4f
	ld a, e                                          ; $7928: $7b
	cp $8e                                           ; $7929: $fe $8e
	ld b, a                                          ; $792b: $47

jr_069_792c:
	db $fc                                           ; $792c: $fc
	inc hl                                           ; $792d: $23
	rst $38                                          ; $792e: $ff
	db $e3                                           ; $792f: $e3
	rst $38                                          ; $7930: $ff
	sbc a                                            ; $7931: $9f
	db $fc                                           ; $7932: $fc
	jr jr_069_792c                                   ; $7933: $18 $f7

	inc l                                            ; $7935: $2c
	rst $38                                          ; $7936: $ff
	rst $38                                          ; $7937: $ff
	ldh a, [$c0]                                     ; $7938: $f0 $c0
	add b                                            ; $793a: $80
	add b                                            ; $793b: $80
	cp a                                             ; $793c: $bf
	nop                                              ; $793d: $00
	ld de, $389b                                     ; $793e: $11 $9b $38
	rla                                              ; $7941: $17
	rrca                                             ; $7942: $0f
	inc bc                                           ; $7943: $03
	cp d                                             ; $7944: $ba
	nop                                              ; $7945: $00
	nop                                              ; $7946: $00
	nop                                              ; $7947: $00
	add b                                            ; $7948: $80
	add b                                            ; $7949: $80
	ret nz                                           ; $794a: $c0

	ret nz                                           ; $794b: $c0

	adc l                                            ; $794c: $8d
	add b                                            ; $794d: $80
	ldh [rLCDC], a                                   ; $794e: $e0 $40
	or b                                             ; $7950: $b0
	ld h, b                                          ; $7951: $60
	ld hl, sp+$30                                    ; $7952: $f8 $30
	cp $1c                                           ; $7954: $fe $1c
	or $0f                                           ; $7956: $f6 $0f
	rlc a                                            ; $7958: $cb $07
	add l                                            ; $795a: $85
	inc bc                                           ; $795b: $03
	add d                                            ; $795c: $82
	ld bc, $bd81                                     ; $795d: $01 $81 $bd
	ret nz                                           ; $7960: $c0

	ret nz                                           ; $7961: $c0

	ret nz                                           ; $7962: $c0

	ldh [hDisp1_LCDC], a                                     ; $7963: $e0 $8f
	ld b, b                                          ; $7965: $40
	ldh [$c0], a                                     ; $7966: $e0 $c0
	db $fd                                           ; $7968: $fd
	rlca                                             ; $7969: $07
	rst $38                                          ; $796a: $ff
	ld b, $ff                                        ; $796b: $06 $ff
	add $3f                                          ; $796d: $c6 $3f
	or $e7                                           ; $796f: $f6 $e7
	ld e, $7f                                        ; $7971: $1e $7f
	ld [bc], a                                       ; $7973: $02
	inc a                                            ; $7974: $3c
	cp a                                             ; $7975: $bf
	inc a                                            ; $7976: $3c
	or b                                             ; $7977: $b0
	sbc h                                            ; $7978: $9c
	ld [hl], b                                       ; $7979: $70
	ld d, b                                          ; $797a: $50
	ldh [rPCM34], a                                  ; $797b: $e0 $77
	cp b                                             ; $797d: $b8
	ld sp, hl                                        ; $797e: $f9
	ld a, a                                          ; $797f: $7f
	call nc, $fe7f                                   ; $7980: $d4 $7f $fe
	sbc [hl]                                         ; $7983: $9e
	ld bc, $01bf                                     ; $7984: $01 $bf $01
	ld [$0799], sp                                   ; $7987: $08 $99 $07
	ld c, $1d                                        ; $798a: $0e $1d
	daa                                              ; $798c: $27
	jr jr_069_79ce                                   ; $798d: $18 $3f

	cp a                                             ; $798f: $bf
	ccf                                              ; $7990: $3f
	ld l, e                                          ; $7991: $6b
	sbc e                                            ; $7992: $9b
	scf                                              ; $7993: $37
	ld l, [hl]                                       ; $7994: $6e
	rra                                              ; $7995: $1f
	ld a, a                                          ; $7996: $7f
	cp a                                             ; $7997: $bf
	ld a, a                                          ; $7998: $7f
	ccf                                              ; $7999: $3f
	adc h                                            ; $799a: $8c
	ld b, c                                          ; $799b: $41
	cp a                                             ; $799c: $bf
	pop bc                                           ; $799d: $c1
	ld a, l                                          ; $799e: $7d
	add e                                            ; $799f: $83
	and d                                            ; $79a0: $a2
	rst $38                                          ; $79a1: $ff
	jp nz, $c2ff                                     ; $79a2: $c2 $ff $c2

	ld a, a                                          ; $79a5: $7f
	jp nz, $657f                                     ; $79a6: $c2 $7f $65

	rst $38                                          ; $79a9: $ff
	push hl                                          ; $79aa: $e5
	rst $38                                          ; $79ab: $ff
	bit 7, a                                         ; $79ac: $cb $7f
	ld a, e                                          ; $79ae: $7b
	inc sp                                           ; $79af: $33
	add e                                            ; $79b0: $83
	and $df                                          ; $79b1: $e6 $df
	ld [hl], c                                       ; $79b3: $71
	rst GetHLinHL                                          ; $79b4: $cf
	db $fc                                           ; $79b5: $fc
	rst FarCall                                          ; $79b6: $f7
	sbc [hl]                                         ; $79b7: $9e
	rst $38                                          ; $79b8: $ff
	adc $7f                                          ; $79b9: $ce $7f
	rst SubAFromBC                                          ; $79bb: $e7
	rra                                              ; $79bc: $1f
	pop af                                           ; $79bd: $f1
	rst $38                                          ; $79be: $ff
	ld hl, sp-$01                                    ; $79bf: $f8 $ff
	adc h                                            ; $79c1: $8c
	rst $38                                          ; $79c2: $ff
	ldh [c], a                                       ; $79c3: $e2
	ld a, a                                          ; $79c4: $7f
	pop af                                           ; $79c5: $f1
	ld e, a                                          ; $79c6: $5f
	db $fc                                           ; $79c7: $fc
	ld d, a                                          ; $79c8: $57
	db $f4                                           ; $79c9: $f4
	ld c, e                                          ; $79ca: $4b
	ld a, [$732b]                                    ; $79cb: $fa $2b $73

jr_069_79ce:
	cp $9a                                           ; $79ce: $fe $9a
	dec d                                            ; $79d0: $15
	db $fd                                           ; $79d1: $fd
	dec d                                            ; $79d2: $15
	db $fd                                           ; $79d3: $fd
	sub l                                            ; $79d4: $95
	ld a, e                                          ; $79d5: $7b
	cp $99                                           ; $79d6: $fe $99
	sub h                                            ; $79d8: $94
	db $fc                                           ; $79d9: $fc
	sub h                                            ; $79da: $94
	db $fc                                           ; $79db: $fc
	sub $fe                                          ; $79dc: $d6 $fe
	ld [hl], a                                       ; $79de: $77
	ld b, b                                          ; $79df: $40
	sbc c                                            ; $79e0: $99
	add hl, de                                       ; $79e1: $19
	rst FarCall                                          ; $79e2: $f7
	inc a                                            ; $79e3: $3c
	rst $38                                          ; $79e4: $ff
	rst $38                                          ; $79e5: $ff
	ldh [rPCM34], a                                  ; $79e6: $e0 $77
	ld b, b                                          ; $79e8: $40
	sbc d                                            ; $79e9: $9a
	stop                                             ; $79ea: $10 $00
	rrca                                             ; $79ec: $0f
	rra                                              ; $79ed: $1f
	ld d, $03                                        ; $79ee: $16 $03
	ld b, b                                          ; $79f0: $40
	scf                                              ; $79f1: $37
	ld b, b                                          ; $79f2: $40
	sbc [hl]                                         ; $79f3: $9e
	rst AddAOntoHL                                          ; $79f4: $ef
	ld [hl], e                                       ; $79f5: $73
	ld b, b                                          ; $79f6: $40
	sbc h                                            ; $79f7: $9c
	db $fc                                           ; $79f8: $fc
	jr nc, jr_069_79fb                               ; $79f9: $30 $00

jr_069_79fb:
	ld a, e                                          ; $79fb: $7b
	cp b                                             ; $79fc: $b8
	push af                                          ; $79fd: $f5

jr_069_79fe:
	ld e, a                                          ; $79fe: $5f
	ld b, b                                          ; $79ff: $40
	sbc e                                            ; $7a00: $9b
	ld a, [bc]                                       ; $7a01: $0a
	dec e                                            ; $7a02: $1d
	cpl                                              ; $7a03: $2f
	db $10                                           ; $7a04: $10
	ld [hl], a                                       ; $7a05: $77
	ld b, b                                          ; $7a06: $40
	sbc e                                            ; $7a07: $9b
	ld [hl], a                                       ; $7a08: $77
	ccf                                              ; $7a09: $3f
	ld a, l                                          ; $7a0a: $7d
	ld e, $3f                                        ; $7a0b: $1e $3f
	ld b, b                                          ; $7a0d: $40
	ld a, a                                          ; $7a0e: $7f
	ld b, d                                          ; $7a0f: $42
	ld a, a                                          ; $7a10: $7f
	cp $9d                                           ; $7a11: $fe $9d
	ld c, e                                          ; $7a13: $4b
	rst $38                                          ; $7a14: $ff
	ld a, e                                          ; $7a15: $7b
	ld b, b                                          ; $7a16: $40
	sbc h                                            ; $7a17: $9c
	ld h, [hl]                                       ; $7a18: $66
	rst SubAFromDE                                          ; $7a19: $df
	pop af                                           ; $7a1a: $f1
	ld d, a                                          ; $7a1b: $57
	ld b, b                                          ; $7a1c: $40
	ld h, e                                          ; $7a1d: $63
	ld h, b                                          ; $7a1e: $60
	ld a, d                                          ; $7a1f: $7a
	and b                                            ; $7a20: $a0
	ld a, a                                          ; $7a21: $7f
	or [hl]                                          ; $7a22: $b6
	sbc c                                            ; $7a23: $99
	rrca                                             ; $7a24: $0f
	ccf                                              ; $7a25: $3f
	dec bc                                           ; $7a26: $0b
	dec c                                            ; $7a27: $0d
	dec c                                            ; $7a28: $0d
	rlca                                             ; $7a29: $07
	ld sp, hl                                        ; $7a2a: $f9
	inc bc                                           ; $7a2b: $03
	ld h, b                                          ; $7a2c: $60
	ld l, e                                          ; $7a2d: $6b
	ld h, b                                          ; $7a2e: $60
	sub c                                            ; $7a2f: $91
	rst SubAFromDE                                          ; $7a30: $df
	and $1f                                          ; $7a31: $e6 $1f
	cp $ff                                           ; $7a33: $fe $ff
	ld b, $7f                                        ; $7a35: $06 $7f
	ld [bc], a                                       ; $7a37: $02
	db $fc                                           ; $7a38: $fc
	ld [hl], b                                       ; $7a39: $70
	cp h                                             ; $7a3a: $bc
	ret nz                                           ; $7a3b: $c0

	jr nz, jr_069_79fe                               ; $7a3c: $20 $c0

	cpl                                              ; $7a3e: $2f
	ld h, b                                          ; $7a3f: $60
	sbc d                                            ; $7a40: $9a
	inc c                                            ; $7a41: $0c
	inc bc                                           ; $7a42: $03
	dec c                                            ; $7a43: $0d
	rra                                              ; $7a44: $1f
	rlca                                             ; $7a45: $07
	ld a, d                                          ; $7a46: $7a
	and b                                            ; $7a47: $a0
	sbc c                                            ; $7a48: $99
	rra                                              ; $7a49: $1f
	ld a, $5b                                        ; $7a4a: $3e $5b
	scf                                              ; $7a4c: $37
	ld l, a                                          ; $7a4d: $6f
	inc e                                            ; $7a4e: $1c
	inc bc                                           ; $7a4f: $03
	ld h, b                                          ; $7a50: $60
	ld b, e                                          ; $7a51: $43
	ld h, b                                          ; $7a52: $60
	sub h                                            ; $7a53: $94
	rst GetHLinHL                                          ; $7a54: $cf
	ldh a, [$c3]                                     ; $7a55: $f0 $c3
	add e                                            ; $7a57: $83
	add h                                            ; $7a58: $84
	rrca                                             ; $7a59: $0f
	dec e                                            ; $7a5a: $1d
	inc a                                            ; $7a5b: $3c
	rrca                                             ; $7a5c: $0f
	rlca                                             ; $7a5d: $07
	ld [bc], a                                       ; $7a5e: $02
	ld h, [hl]                                       ; $7a5f: $66
	pop bc                                           ; $7a60: $c1
	inc bc                                           ; $7a61: $03
	ld h, b                                          ; $7a62: $60
	ld h, a                                          ; $7a63: $67
	ld h, b                                          ; $7a64: $60
	sbc l                                            ; $7a65: $9d
	rst AddAOntoHL                                          ; $7a66: $ef
	or $77                                           ; $7a67: $f6 $77
	ld h, b                                          ; $7a69: $60
	ld a, [hl]                                       ; $7a6a: $7e
	ld e, b                                          ; $7a6b: $58
	sbc c                                            ; $7a6c: $99
	cp h                                             ; $7a6d: $bc
	ldh a, [$ac]                                     ; $7a6e: $f0 $ac
	sub b                                            ; $7a70: $90
	nop                                              ; $7a71: $00
	add b                                            ; $7a72: $80
	ld h, $c0                                        ; $7a73: $26 $c0
	ld [hl], a                                       ; $7a75: $77
	ld h, b                                          ; $7a76: $60
	sub a                                            ; $7a77: $97
	dec a                                            ; $7a78: $3d
	ld e, $1f                                        ; $7a79: $1e $1f
	scf                                              ; $7a7b: $37
	ld e, e                                          ; $7a7c: $5b
	ld a, $6b                                        ; $7a7d: $3e $6b
	jr jr_069_7abc                                   ; $7a7f: $18 $3b

	ld h, b                                          ; $7a81: $60
	ld a, e                                          ; $7a82: $7b
	ld e, [hl]                                       ; $7a83: $5e
	ld [hl], e                                       ; $7a84: $73
	ld h, b                                          ; $7a85: $60
	ld c, d                                          ; $7a86: $4a
	nop                                              ; $7a87: $00
	rst $38                                          ; $7a88: $ff
	sbc h                                            ; $7a89: $9c
	ld c, $06                                        ; $7a8a: $0e $06
	rlca                                             ; $7a8c: $07
	cp h                                             ; $7a8d: $bc
	ld bc, $0303                                     ; $7a8e: $01 $03 $03
	add e                                            ; $7a91: $83
	jp nz, $8180                                     ; $7a92: $c2 $80 $81

	rst FarCall                                          ; $7a95: $f7
	db $e3                                           ; $7a96: $e3
	rst $38                                          ; $7a97: $ff
	rst $38                                          ; $7a98: $ff
	pop af                                           ; $7a99: $f1
	ld a, a                                          ; $7a9a: $7f
	ldh a, [$1f]                                     ; $7a9b: $f0 $1f
	ld [hl], b                                       ; $7a9d: $70
	rra                                              ; $7a9e: $1f
	jr jr_069_7ac0                                   ; $7a9f: $18 $1f

	inc e                                            ; $7aa1: $1c
	rrca                                             ; $7aa2: $0f
	ld a, $07                                        ; $7aa3: $3e $07
	cp $03                                           ; $7aa5: $fe $03
	ld a, [$fc87]                                    ; $7aa7: $fa $87 $fc
	rlca                                             ; $7aaa: $07
	db $fc                                           ; $7aab: $fc
	rrca                                             ; $7aac: $0f
	db $f4                                           ; $7aad: $f4
	rra                                              ; $7aae: $1f
	and $3f                                          ; $7aaf: $e6 $3f
	ldh [c], a                                       ; $7ab1: $e2
	ld a, a                                          ; $7ab2: $7f
	sbc b                                            ; $7ab3: $98
	ldh [c], a                                       ; $7ab4: $e2
	rst $38                                          ; $7ab5: $ff
	ld [hl], e                                       ; $7ab6: $73
	rst $38                                          ; $7ab7: $ff
	ld d, c                                          ; $7ab8: $51
	rst $38                                          ; $7ab9: $ff
	ret                                              ; $7aba: $c9


	ld a, e                                          ; $7abb: $7b

jr_069_7abc:
	cp $91                                           ; $7abc: $fe $91
	ld c, b                                          ; $7abe: $48
	rst $38                                          ; $7abf: $ff

jr_069_7ac0:
	ld b, h                                          ; $7ac0: $44
	rst $38                                          ; $7ac1: $ff
	ld h, h                                          ; $7ac2: $64
	rst $38                                          ; $7ac3: $ff
	inc h                                            ; $7ac4: $24
	rst $38                                          ; $7ac5: $ff
	nop                                              ; $7ac6: $00
	nop                                              ; $7ac7: $00
	ld b, $06                                        ; $7ac8: $06 $06
	rlca                                             ; $7aca: $07
	inc bc                                           ; $7acb: $03
	rra                                              ; $7acc: $1f
	ret nz                                           ; $7acd: $c0

	rst $38                                          ; $7ace: $ff
	sbc c                                            ; $7acf: $99
	dec c                                            ; $7ad0: $0d
	dec b                                            ; $7ad1: $05
	rrca                                             ; $7ad2: $0f
	rlca                                             ; $7ad3: $07
	rlca                                             ; $7ad4: $07
	inc bc                                           ; $7ad5: $03
	inc de                                           ; $7ad6: $13
	and b                                            ; $7ad7: $a0
	ld a, a                                          ; $7ad8: $7f
	cp $1b                                           ; $7ad9: $fe $1b
	and b                                            ; $7adb: $a0
	rst SubAFromDE                                          ; $7adc: $df
	dec c                                            ; $7add: $0d
	ld a, e                                          ; $7ade: $7b
	ret nz                                           ; $7adf: $c0

	rst SubAFromDE                                          ; $7ae0: $df
	rlca                                             ; $7ae1: $07
	ld a, d                                          ; $7ae2: $7a
	ret                                              ; $7ae3: $c9


	inc bc                                           ; $7ae4: $03
	ret nz                                           ; $7ae5: $c0

	dec sp                                           ; $7ae6: $3b
	ret nz                                           ; $7ae7: $c0

	ldh a, [rSB]                                     ; $7ae8: $f0 $01
	add b                                            ; $7aea: $80
	ld hl, $7fff                                     ; $7aeb: $21 $ff $7f
	rst $38                                          ; $7aee: $ff
	ld c, c                                          ; $7aef: $49
	rst $38                                          ; $7af0: $ff
	sub d                                            ; $7af1: $92
	rst $38                                          ; $7af2: $ff
	and h                                            ; $7af3: $a4
	rst $38                                          ; $7af4: $ff
	add hl, hl                                       ; $7af5: $29
	rst $38                                          ; $7af6: $ff
	ld b, e                                          ; $7af7: $43
	rst $38                                          ; $7af8: $ff
	inc bc                                           ; $7af9: $03
	rst $38                                          ; $7afa: $ff
	dec b                                            ; $7afb: $05
	rst $38                                          ; $7afc: $ff
	dec c                                            ; $7afd: $0d
	rst $38                                          ; $7afe: $ff
	dec e                                            ; $7aff: $1d
	rst FarCall                                          ; $7b00: $f7
	dec a                                            ; $7b01: $3d
	rst SubAFromBC                                          ; $7b02: $e7
	ccf                                              ; $7b03: $3f
	db $e3                                           ; $7b04: $e3
	ld a, a                                          ; $7b05: $7f
	ldh a, [rBGP]                                    ; $7b06: $f0 $47
	add sp, $45                                      ; $7b08: $e8 $45
	sub l                                            ; $7b0a: $95
	sub $47                                          ; $7b0b: $d6 $47
	add $47                                          ; $7b0d: $c6 $47
	xor $7b                                          ; $7b0f: $ee $7b
	cp $d3                                           ; $7b11: $fe $d3
	cp $93                                           ; $7b13: $fe $93
	ld a, e                                          ; $7b15: $7b
	cp $9b                                           ; $7b16: $fe $9b
	sub c                                            ; $7b18: $91
	cp $97                                           ; $7b19: $fe $97
	db $fc                                           ; $7b1b: $fc
	ld [hl], a                                       ; $7b1c: $77
	cp $9a                                           ; $7b1d: $fe $9a
	sbc a                                            ; $7b1f: $9f
	db $fc                                           ; $7b20: $fc
	rst GetHLinHL                                          ; $7b21: $cf
	ld hl, sp+$4f                                    ; $7b22: $f8 $4f
	ld a, e                                          ; $7b24: $7b
	cp $87                                           ; $7b25: $fe $87
	ld b, a                                          ; $7b27: $47
	db $fc                                           ; $7b28: $fc
	inc hl                                           ; $7b29: $23
	rst $38                                          ; $7b2a: $ff
	db $e3                                           ; $7b2b: $e3
	rst $38                                          ; $7b2c: $ff
	sbc a                                            ; $7b2d: $9f
	db $fc                                           ; $7b2e: $fc
	ld de, $3cff                                     ; $7b2f: $11 $ff $3c
	rst $38                                          ; $7b32: $ff
	rst $38                                          ; $7b33: $ff
	ret nz                                           ; $7b34: $c0

	ret nz                                           ; $7b35: $c0

	add c                                            ; $7b36: $81
	add a                                            ; $7b37: $87
	rrca                                             ; $7b38: $0f
	inc e                                            ; $7b39: $1c
	dec a                                            ; $7b3a: $3d
	dec c                                            ; $7b3b: $0d
	rlca                                             ; $7b3c: $07
	ld b, $03                                        ; $7b3d: $06 $03
	ld sp, hl                                        ; $7b3f: $f9
	sbc [hl]                                         ; $7b40: $9e
	add b                                            ; $7b41: $80
	cp [hl]                                          ; $7b42: $be
	add b                                            ; $7b43: $80
	ret nz                                           ; $7b44: $c0

	ret nz                                           ; $7b45: $c0

	adc l                                            ; $7b46: $8d
	add b                                            ; $7b47: $80
	ldh [rLCDC], a                                   ; $7b48: $e0 $40
	or b                                             ; $7b4a: $b0
	ld h, b                                          ; $7b4b: $60
	ld hl, sp+$30                                    ; $7b4c: $f8 $30
	cp $1c                                           ; $7b4e: $fe $1c
	or $0f                                           ; $7b50: $f6 $0f
	rlc a                                            ; $7b52: $cb $07
	add l                                            ; $7b54: $85
	inc bc                                           ; $7b55: $03
	add d                                            ; $7b56: $82
	ld bc, $bd81                                     ; $7b57: $01 $81 $bd
	ret nz                                           ; $7b5a: $c0

	ret nz                                           ; $7b5b: $c0

	ret nz                                           ; $7b5c: $c0

	ldh [hDisp0_WY], a                                     ; $7b5d: $e0 $88
	ld b, b                                          ; $7b5f: $40
	ldh [$c0], a                                     ; $7b60: $e0 $c0
	db $fd                                           ; $7b62: $fd
	rlca                                             ; $7b63: $07
	rst $38                                          ; $7b64: $ff
	ld b, $df                                        ; $7b65: $06 $df
	and $3f                                          ; $7b67: $e6 $3f
	cp $f7                                           ; $7b69: $fe $f7
	ld c, $ff                                        ; $7b6b: $0e $ff
	ldh [c], a                                       ; $7b6d: $e2
	call c, $acf0                                    ; $7b6e: $dc $f0 $ac
	sub b                                            ; $7b71: $90
	add b                                            ; $7b72: $80
	add b                                            ; $7b73: $80
	ret nz                                           ; $7b74: $c0

	add b                                            ; $7b75: $80
	push af                                          ; $7b76: $f5
	ld a, a                                          ; $7b77: $7f
	call nc, $fe7f                                   ; $7b78: $d4 $7f $fe
	sbc [hl]                                         ; $7b7b: $9e
	ld bc, $01bf                                     ; $7b7c: $01 $bf $01
	ld b, $91                                        ; $7b7f: $06 $91
	ld bc, $1f0c                                     ; $7b81: $01 $0c $1f
	rrca                                             ; $7b84: $0f
	jr @+$3f                                         ; $7b85: $18 $3d

	ld e, $1b                                        ; $7b87: $1e $1b
	scf                                              ; $7b89: $37
	ld e, l                                          ; $7b8a: $5d
	ccf                                              ; $7b8b: $3f
	ld l, e                                          ; $7b8c: $6b
	jr jr_069_7c0e                                   ; $7b8d: $18 $7f

	cp a                                             ; $7b8f: $bf
	ld a, a                                          ; $7b90: $7f
	ccf                                              ; $7b91: $3f
	adc h                                            ; $7b92: $8c
	ld b, c                                          ; $7b93: $41
	cp a                                             ; $7b94: $bf
	pop bc                                           ; $7b95: $c1
	ld a, l                                          ; $7b96: $7d
	add e                                            ; $7b97: $83
	and d                                            ; $7b98: $a2
	rst $38                                          ; $7b99: $ff
	jp nz, $c2ff                                     ; $7b9a: $c2 $ff $c2

	ld a, a                                          ; $7b9d: $7f
	jp nz, $657f                                     ; $7b9e: $c2 $7f $65

	rst $38                                          ; $7ba1: $ff
	push hl                                          ; $7ba2: $e5
	rst $38                                          ; $7ba3: $ff
	ld c, e                                          ; $7ba4: $4b
	rst $38                                          ; $7ba5: $ff
	ld a, e                                          ; $7ba6: $7b
	inc sp                                           ; $7ba7: $33
	add e                                            ; $7ba8: $83
	and $df                                          ; $7ba9: $e6 $df
	ld [hl], c                                       ; $7bab: $71
	rst GetHLinHL                                          ; $7bac: $cf
	db $fc                                           ; $7bad: $fc
	rst FarCall                                          ; $7bae: $f7
	sbc [hl]                                         ; $7baf: $9e
	rst $38                                          ; $7bb0: $ff
	adc $7f                                          ; $7bb1: $ce $7f
	rst SubAFromBC                                          ; $7bb3: $e7
	rra                                              ; $7bb4: $1f

jr_069_7bb5:
	pop af                                           ; $7bb5: $f1
	rst $38                                          ; $7bb6: $ff
	ld hl, sp-$01                                    ; $7bb7: $f8 $ff
	adc h                                            ; $7bb9: $8c
	rst $38                                          ; $7bba: $ff
	ldh [c], a                                       ; $7bbb: $e2
	ld a, a                                          ; $7bbc: $7f
	pop af                                           ; $7bbd: $f1
	ld e, a                                          ; $7bbe: $5f
	db $fc                                           ; $7bbf: $fc
	ld d, a                                          ; $7bc0: $57
	db $f4                                           ; $7bc1: $f4
	ld c, e                                          ; $7bc2: $4b
	ld a, [$732b]                                    ; $7bc3: $fa $2b $73
	cp $9a                                           ; $7bc6: $fe $9a
	dec d                                            ; $7bc8: $15
	db $fd                                           ; $7bc9: $fd
	dec d                                            ; $7bca: $15
	db $fd                                           ; $7bcb: $fd
	sub l                                            ; $7bcc: $95
	ld a, e                                          ; $7bcd: $7b
	cp $99                                           ; $7bce: $fe $99
	sub h                                            ; $7bd0: $94
	db $fc                                           ; $7bd1: $fc
	sub h                                            ; $7bd2: $94
	db $fc                                           ; $7bd3: $fc
	sub $fe                                          ; $7bd4: $d6 $fe
	ld h, e                                          ; $7bd6: $63
	ld b, b                                          ; $7bd7: $40
	sub h                                            ; $7bd8: $94
	ldh a, [$c0]                                     ; $7bd9: $f0 $c0
	add b                                            ; $7bdb: $80
	add c                                            ; $7bdc: $81
	nop                                              ; $7bdd: $00
	rrca                                             ; $7bde: $0f
	ccf                                              ; $7bdf: $3f
	dec bc                                           ; $7be0: $0b
	dec c                                            ; $7be1: $0d
	dec c                                            ; $7be2: $0d
	rlca                                             ; $7be3: $07
	inc bc                                           ; $7be4: $03
	ld b, b                                          ; $7be5: $40
	ld b, e                                          ; $7be6: $43
	ld b, b                                          ; $7be7: $40
	sub e                                            ; $7be8: $93
	rra                                              ; $7be9: $1f
	cp $ff                                           ; $7bea: $fe $ff
	ld b, $7f                                        ; $7bec: $06 $7f
	ld [bc], a                                       ; $7bee: $02
	db $fc                                           ; $7bef: $fc
	ld [hl], b                                       ; $7bf0: $70
	cp h                                             ; $7bf1: $bc
	ret nz                                           ; $7bf2: $c0

	jr nz, jr_069_7bb5                               ; $7bf3: $20 $c0

	cpl                                              ; $7bf5: $2f
	ld b, b                                          ; $7bf6: $40
	sub c                                            ; $7bf7: $91
	inc c                                            ; $7bf8: $0c
	inc bc                                           ; $7bf9: $03
	inc c                                            ; $7bfa: $0c
	rra                                              ; $7bfb: $1f
	rlca                                             ; $7bfc: $07
	jr jr_069_7c3e                                   ; $7bfd: $18 $3f

	nop                                              ; $7bff: $00
	rra                                              ; $7c00: $1f
	ld a, $5b                                        ; $7c01: $3e $5b
	scf                                              ; $7c03: $37
	ld l, a                                          ; $7c04: $6f
	inc e                                            ; $7c05: $1c
	ccf                                              ; $7c06: $3f
	ld b, b                                          ; $7c07: $40
	ld a, a                                          ; $7c08: $7f
	ld b, d                                          ; $7c09: $42
	ld l, e                                          ; $7c0a: $6b
	ld b, b                                          ; $7c0b: $40
	sbc h                                            ; $7c0c: $9c
	ld h, [hl]                                       ; $7c0d: $66

jr_069_7c0e:
	rst SubAFromDE                                          ; $7c0e: $df
	pop af                                           ; $7c0f: $f1
	ld d, a                                          ; $7c10: $57
	ld b, b                                          ; $7c11: $40
	ld [hl], a                                       ; $7c12: $77
	ld h, b                                          ; $7c13: $60
	sbc [hl]                                         ; $7c14: $9e
	inc de                                           ; $7c15: $13
	ld [hl], a                                       ; $7c16: $77
	ld h, b                                          ; $7c17: $60
	ld a, a                                          ; $7c18: $7f
	sub l                                            ; $7c19: $95
	rst SubAFromDE                                          ; $7c1a: $df
	add b                                            ; $7c1b: $80
	cp a                                             ; $7c1c: $bf
	db $10                                           ; $7c1d: $10
	rrca                                             ; $7c1e: $0f
	sbc h                                            ; $7c1f: $9c
	rra                                              ; $7c20: $1f
	ld d, $0f                                        ; $7c21: $16 $0f
	ld h, [hl]                                       ; $7c23: $66
	sbc a                                            ; $7c24: $9f
	inc bc                                           ; $7c25: $03
	ld h, b                                          ; $7c26: $60
	ld l, e                                          ; $7c27: $6b
	ld h, b                                          ; $7c28: $60
	sub d                                            ; $7c29: $92
	ld a, a                                          ; $7c2a: $7f
	add [hl]                                         ; $7c2b: $86
	ld a, a                                          ; $7c2c: $7f
	and $8f                                          ; $7c2d: $e6 $8f
	ld a, [hl]                                       ; $7c2f: $7e
	ld a, a                                          ; $7c30: $7f
	ld [bc], a                                       ; $7c31: $02
	inc a                                            ; $7c32: $3c
	nop                                              ; $7c33: $00
	db $fc                                           ; $7c34: $fc
	jr nc, jr_069_7c37                               ; $7c35: $30 $00

jr_069_7c37:
	ld a, e                                          ; $7c37: $7b
	cp b                                             ; $7c38: $b8
	daa                                              ; $7c39: $27
	ld h, b                                          ; $7c3a: $60
	sbc [hl]                                         ; $7c3b: $9e
	daa                                              ; $7c3c: $27
	ld a, e                                          ; $7c3d: $7b

jr_069_7c3e:
	ld h, b                                          ; $7c3e: $60
	ld a, a                                          ; $7c3f: $7f
	cp $9b                                           ; $7c40: $fe $9b
	ld [hl], a                                       ; $7c42: $77
	ccf                                              ; $7c43: $3f
	ld a, l                                          ; $7c44: $7d
	ld e, $2f                                        ; $7c45: $1e $2f
	ld h, b                                          ; $7c47: $60
	sbc l                                            ; $7c48: $9d
	bit 7, a                                         ; $7c49: $cb $7f
	daa                                              ; $7c4b: $27
	ld h, b                                          ; $7c4c: $60
	sbc e                                            ; $7c4d: $9b
	inc l                                            ; $7c4e: $2c
	rst $38                                          ; $7c4f: $ff
	rst $38                                          ; $7c50: $ff
	ld hl, sp+$77                                    ; $7c51: $f8 $77
	ld h, b                                          ; $7c53: $60
	rst $38                                          ; $7c54: $ff
	sbc h                                            ; $7c55: $9c
	add hl, de                                       ; $7c56: $19
	inc a                                            ; $7c57: $3c
	rla                                              ; $7c58: $17
	inc bc                                           ; $7c59: $03
	ld h, b                                          ; $7c5a: $60
	dec sp                                           ; $7c5b: $3b
	ld h, b                                          ; $7c5c: $60
	sbc h                                            ; $7c5d: $9c
	or $c7                                           ; $7c5e: $f6 $c7
	ld a, $77                                        ; $7c60: $3e $77
	ld h, b                                          ; $7c62: $60
	ld a, a                                          ; $7c63: $7f
	cp $9b                                           ; $7c64: $fe $9b
	or b                                             ; $7c66: $b0
	ld [hl], b                                       ; $7c67: $70
	ret nc                                           ; $7c68: $d0

	ldh [$57], a                                     ; $7c69: $e0 $57
	ld e, a                                          ; $7c6b: $5f
	ld e, a                                          ; $7c6c: $5f
	ld h, b                                          ; $7c6d: $60
	sbc l                                            ; $7c6e: $9d
	ld c, $1f                                        ; $7c6f: $0e $1f
	ld [hl], a                                       ; $7c71: $77
	ld h, d                                          ; $7c72: $62
	ld a, a                                          ; $7c73: $7f
	cp $9b                                           ; $7c74: $fe $9b
	ld l, e                                          ; $7c76: $6b
	scf                                              ; $7c77: $37
	ld l, [hl]                                       ; $7c78: $6e
	rra                                              ; $7c79: $1f
	ld l, $00                                        ; $7c7a: $2e $00
	ld [hl], e                                       ; $7c7c: $73
	ld h, b                                          ; $7c7d: $60
	ld c, d                                          ; $7c7e: $4a
	nop                                              ; $7c7f: $00
	rst $38                                          ; $7c80: $ff
	sbc h                                            ; $7c81: $9c
	ld b, $02                                        ; $7c82: $06 $02
	inc bc                                           ; $7c84: $03
	cp h                                             ; $7c85: $bc
	ld bc, $0303                                     ; $7c86: $01 $03 $03
	add e                                            ; $7c89: $83
	jp nz, $8180                                     ; $7c8a: $c2 $80 $81

	rst FarCall                                          ; $7c8d: $f7
	db $e3                                           ; $7c8e: $e3
	rst $38                                          ; $7c8f: $ff
	rst $38                                          ; $7c90: $ff
	pop af                                           ; $7c91: $f1
	ld a, a                                          ; $7c92: $7f
	ldh a, [$1f]                                     ; $7c93: $f0 $1f
	ld [hl], b                                       ; $7c95: $70
	rra                                              ; $7c96: $1f
	jr jr_069_7cb8                                   ; $7c97: $18 $1f

	inc e                                            ; $7c99: $1c
	rrca                                             ; $7c9a: $0f
	ld a, $07                                        ; $7c9b: $3e $07
	cp $03                                           ; $7c9d: $fe $03
	ld a, [$fc87]                                    ; $7c9f: $fa $87 $fc
	rlca                                             ; $7ca2: $07
	db $fc                                           ; $7ca3: $fc
	rrca                                             ; $7ca4: $0f
	db $f4                                           ; $7ca5: $f4
	rra                                              ; $7ca6: $1f
	and $3f                                          ; $7ca7: $e6 $3f
	ldh [c], a                                       ; $7ca9: $e2
	ld a, a                                          ; $7caa: $7f
	sbc b                                            ; $7cab: $98
	ldh [c], a                                       ; $7cac: $e2
	rst $38                                          ; $7cad: $ff
	ld [hl], e                                       ; $7cae: $73
	rst $38                                          ; $7caf: $ff
	ld d, c                                          ; $7cb0: $51
	rst $38                                          ; $7cb1: $ff
	ret                                              ; $7cb2: $c9


	ld a, e                                          ; $7cb3: $7b

Call_069_7cb4:
	cp $97                                           ; $7cb4: $fe $97
	ld c, b                                          ; $7cb6: $48
	rst $38                                          ; $7cb7: $ff

jr_069_7cb8:
	ld b, h                                          ; $7cb8: $44
	rst $38                                          ; $7cb9: $ff
	ld h, h                                          ; $7cba: $64
	rst $38                                          ; $7cbb: $ff
	inc h                                            ; $7cbc: $24
	rst $38                                          ; $7cbd: $ff
	ld [hl], e                                       ; $7cbe: $73
	ret nz                                           ; $7cbf: $c0

	sbc [hl]                                         ; $7cc0: $9e
	inc bc                                           ; $7cc1: $03
	rra                                              ; $7cc2: $1f
	ret nz                                           ; $7cc3: $c0

	ld [hl], a                                       ; $7cc4: $77
	ldh [$de], a                                     ; $7cc5: $e0 $de
	rlca                                             ; $7cc7: $07
	rst SubAFromDE                                          ; $7cc8: $df
	inc bc                                           ; $7cc9: $03
	rla                                              ; $7cca: $17
	and b                                            ; $7ccb: $a0
	ld a, a                                          ; $7ccc: $7f
	cp $13                                           ; $7ccd: $fe $13
	and b                                            ; $7ccf: $a0
	ld [hl], e                                       ; $7cd0: $73
	ret nz                                           ; $7cd1: $c0

	ld a, e                                          ; $7cd2: $7b
	ld e, d                                          ; $7cd3: $5a
	inc bc                                           ; $7cd4: $03
	ret nz                                           ; $7cd5: $c0

	dec sp                                           ; $7cd6: $3b
	ret nz                                           ; $7cd7: $c0

	rst AddAOntoHL                                          ; $7cd8: $ef
	ld bc, $2180                                     ; $7cd9: $01 $80 $21
	rst $38                                          ; $7cdc: $ff
	ld a, a                                          ; $7cdd: $7f
	rst $38                                          ; $7cde: $ff
	ld c, c                                          ; $7cdf: $49
	rst $38                                          ; $7ce0: $ff
	sub d                                            ; $7ce1: $92
	rst $38                                          ; $7ce2: $ff
	and h                                            ; $7ce3: $a4
	rst $38                                          ; $7ce4: $ff
	add hl, hl                                       ; $7ce5: $29
	rst $38                                          ; $7ce6: $ff
	ld b, e                                          ; $7ce7: $43
	rst $38                                          ; $7ce8: $ff
	inc bc                                           ; $7ce9: $03
	rst $38                                          ; $7cea: $ff
	dec b                                            ; $7ceb: $05
	rst $38                                          ; $7cec: $ff
	dec c                                            ; $7ced: $0d
	rst $38                                          ; $7cee: $ff
	dec e                                            ; $7cef: $1d
	rst FarCall                                          ; $7cf0: $f7
	dec a                                            ; $7cf1: $3d
	rst SubAFromBC                                          ; $7cf2: $e7
	ccf                                              ; $7cf3: $3f
	db $e3                                           ; $7cf4: $e3
	ld a, a                                          ; $7cf5: $7f
	ldh a, [rBGP]                                    ; $7cf6: $f0 $47
	add sp, $45                                      ; $7cf8: $e8 $45
	sub l                                            ; $7cfa: $95
	sub $47                                          ; $7cfb: $d6 $47
	add $47                                          ; $7cfd: $c6 $47
	xor $7b                                          ; $7cff: $ee $7b
	cp $d3                                           ; $7d01: $fe $d3
	cp $93                                           ; $7d03: $fe $93
	ld a, e                                          ; $7d05: $7b
	cp $9b                                           ; $7d06: $fe $9b
	sub c                                            ; $7d08: $91
	cp $97                                           ; $7d09: $fe $97
	db $fc                                           ; $7d0b: $fc
	ld [hl], a                                       ; $7d0c: $77
	cp $9a                                           ; $7d0d: $fe $9a
	sbc a                                            ; $7d0f: $9f
	db $fc                                           ; $7d10: $fc
	rst GetHLinHL                                          ; $7d11: $cf
	ld hl, sp+$4f                                    ; $7d12: $f8 $4f
	ld a, e                                          ; $7d14: $7b
	cp $87                                           ; $7d15: $fe $87
	ld b, a                                          ; $7d17: $47
	db $fc                                           ; $7d18: $fc
	inc hl                                           ; $7d19: $23
	rst $38                                          ; $7d1a: $ff
	db $e3                                           ; $7d1b: $e3
	rst $38                                          ; $7d1c: $ff
	sbc a                                            ; $7d1d: $9f
	db $fc                                           ; $7d1e: $fc
	inc de                                           ; $7d1f: $13
	cp $3c                                           ; $7d20: $fe $3c
	rst $38                                          ; $7d22: $ff
	rst $38                                          ; $7d23: $ff
	ret nz                                           ; $7d24: $c0

	ret nz                                           ; $7d25: $c0

	add b                                            ; $7d26: $80
	add a                                            ; $7d27: $87
	rrca                                             ; $7d28: $0f
	inc e                                            ; $7d29: $1c
	ld a, $0f                                        ; $7d2a: $3e $0f
	rlca                                             ; $7d2c: $07
	dec b                                            ; $7d2d: $05
	inc bc                                           ; $7d2e: $03
	ld sp, hl                                        ; $7d2f: $f9
	sbc [hl]                                         ; $7d30: $9e
	add b                                            ; $7d31: $80
	cp [hl]                                          ; $7d32: $be
	add b                                            ; $7d33: $80
	ret nz                                           ; $7d34: $c0

	ret nz                                           ; $7d35: $c0

	adc l                                            ; $7d36: $8d
	add b                                            ; $7d37: $80
	ldh [rLCDC], a                                   ; $7d38: $e0 $40
	or b                                             ; $7d3a: $b0
	ld h, b                                          ; $7d3b: $60
	ld hl, sp+$30                                    ; $7d3c: $f8 $30
	cp $1c                                           ; $7d3e: $fe $1c
	or $0f                                           ; $7d40: $f6 $0f
	rlc a                                            ; $7d42: $cb $07
	add l                                            ; $7d44: $85
	inc bc                                           ; $7d45: $03
	add d                                            ; $7d46: $82
	ld bc, $bd81                                     ; $7d47: $01 $81 $bd
	ret nz                                           ; $7d4a: $c0

	ret nz                                           ; $7d4b: $c0

	ret nz                                           ; $7d4c: $c0

	ldh [hDisp0_WY], a                                     ; $7d4d: $e0 $88
	ld b, b                                          ; $7d4f: $40
	ldh [$c0], a                                     ; $7d50: $e0 $c0
	db $fd                                           ; $7d52: $fd
	rlca                                             ; $7d53: $07
	rst $38                                          ; $7d54: $ff
	ld b, $ff                                        ; $7d55: $06 $ff
	ld b, $7f                                        ; $7d57: $06 $7f
	cp $87                                           ; $7d59: $fe $87
	ld a, [hl]                                       ; $7d5b: $7e
	rra                                              ; $7d5c: $1f
	ldh [c], a                                       ; $7d5d: $e2
	db $fc                                           ; $7d5e: $fc
	ldh a, [$ac]                                     ; $7d5f: $f0 $ac
	sub b                                            ; $7d61: $90
	nop                                              ; $7d62: $00
	add b                                            ; $7d63: $80
	ret nz                                           ; $7d64: $c0

	add b                                            ; $7d65: $80
	push af                                          ; $7d66: $f5
	ld a, a                                          ; $7d67: $7f
	call nc, $fe7f                                   ; $7d68: $d4 $7f $fe
	sbc [hl]                                         ; $7d6b: $9e
	ld bc, $01bf                                     ; $7d6c: $01 $bf $01
	ld b, $91                                        ; $7d6f: $06 $91
	ld bc, $1f0e                                     ; $7d71: $01 $0e $1f
	rlca                                             ; $7d74: $07
	jr jr_069_7da6                                   ; $7d75: $18 $2f

	inc e                                            ; $7d77: $1c
	dec de                                           ; $7d78: $1b
	scf                                              ; $7d79: $37
	ld e, a                                          ; $7d7a: $5f
	ccf                                              ; $7d7b: $3f
	ld l, e                                          ; $7d7c: $6b
	jr jr_069_7dfe                                   ; $7d7d: $18 $7f

	cp a                                             ; $7d7f: $bf
	ld a, a                                          ; $7d80: $7f
	ccf                                              ; $7d81: $3f
	adc h                                            ; $7d82: $8c
	ld b, c                                          ; $7d83: $41
	cp a                                             ; $7d84: $bf
	pop bc                                           ; $7d85: $c1
	ld a, l                                          ; $7d86: $7d
	add e                                            ; $7d87: $83
	and d                                            ; $7d88: $a2
	rst $38                                          ; $7d89: $ff
	jp nz, $c2ff                                     ; $7d8a: $c2 $ff $c2

	ld a, a                                          ; $7d8d: $7f
	jp nz, $e57f                                     ; $7d8e: $c2 $7f $e5

	rst $38                                          ; $7d91: $ff
	ld h, l                                          ; $7d92: $65
	rst $38                                          ; $7d93: $ff
	bit 7, a                                         ; $7d94: $cb $7f
	ld a, e                                          ; $7d96: $7b
	inc sp                                           ; $7d97: $33
	add e                                            ; $7d98: $83
	and $df                                          ; $7d99: $e6 $df
	ld [hl], c                                       ; $7d9b: $71
	rst GetHLinHL                                          ; $7d9c: $cf
	db $fc                                           ; $7d9d: $fc
	rst FarCall                                          ; $7d9e: $f7
	sbc [hl]                                         ; $7d9f: $9e
	rst $38                                          ; $7da0: $ff
	adc $7f                                          ; $7da1: $ce $7f
	rst SubAFromBC                                          ; $7da3: $e7
	rra                                              ; $7da4: $1f
	pop af                                           ; $7da5: $f1

jr_069_7da6:
	rst $38                                          ; $7da6: $ff
	ld hl, sp-$01                                    ; $7da7: $f8 $ff
	adc h                                            ; $7da9: $8c
	rst $38                                          ; $7daa: $ff
	ldh [c], a                                       ; $7dab: $e2
	ld a, a                                          ; $7dac: $7f
	pop af                                           ; $7dad: $f1
	ld e, a                                          ; $7dae: $5f
	db $fc                                           ; $7daf: $fc
	ld d, a                                          ; $7db0: $57
	db $f4                                           ; $7db1: $f4
	ld c, e                                          ; $7db2: $4b
	ld a, [$732b]                                    ; $7db3: $fa $2b $73
	cp $9a                                           ; $7db6: $fe $9a
	dec d                                            ; $7db8: $15
	db $fd                                           ; $7db9: $fd
	dec d                                            ; $7dba: $15
	db $fd                                           ; $7dbb: $fd
	sub l                                            ; $7dbc: $95
	ld a, e                                          ; $7dbd: $7b
	cp $99                                           ; $7dbe: $fe $99
	sub h                                            ; $7dc0: $94
	db $fc                                           ; $7dc1: $fc
	sub h                                            ; $7dc2: $94
	db $fc                                           ; $7dc3: $fc
	sub $fe                                          ; $7dc4: $d6 $fe
	ld [hl], e                                       ; $7dc6: $73
	ld b, b                                          ; $7dc7: $40
	sbc [hl]                                         ; $7dc8: $9e
	rst $38                                          ; $7dc9: $ff
	ld a, e                                          ; $7dca: $7b
	ld b, b                                          ; $7dcb: $40
	sub h                                            ; $7dcc: $94
	ldh a, [$c0]                                     ; $7dcd: $f0 $c0
	add b                                            ; $7dcf: $80
	add c                                            ; $7dd0: $81
	nop                                              ; $7dd1: $00
	rrca                                             ; $7dd2: $0f
	ccf                                              ; $7dd3: $3f
	dec bc                                           ; $7dd4: $0b
	dec c                                            ; $7dd5: $0d
	dec c                                            ; $7dd6: $0d
	rlca                                             ; $7dd7: $07
	inc bc                                           ; $7dd8: $03
	ld b, b                                          ; $7dd9: $40
	ld b, e                                          ; $7dda: $43
	ld b, b                                          ; $7ddb: $40
	sub h                                            ; $7ddc: $94
	rra                                              ; $7ddd: $1f
	cp $c7                                           ; $7dde: $fe $c7
	ld a, $7f                                        ; $7de0: $3e $7f
	ld [bc], a                                       ; $7de2: $02
	db $fc                                           ; $7de3: $fc
	ld [hl], b                                       ; $7de4: $70
	cp h                                             ; $7de5: $bc
	ret nz                                           ; $7de6: $c0

	jr nz, jr_069_7e63                               ; $7de7: $20 $7a

	ld hl, sp+$2f                                    ; $7de9: $f8 $2f
	ld b, b                                          ; $7deb: $40
	sub e                                            ; $7dec: $93
	rlca                                             ; $7ded: $07
	rrca                                             ; $7dee: $0f
	dec de                                           ; $7def: $1b
	inc e                                            ; $7df0: $1c
	ccf                                              ; $7df1: $3f
	nop                                              ; $7df2: $00
	rra                                              ; $7df3: $1f
	ld a, $5b                                        ; $7df4: $3e $5b
	scf                                              ; $7df6: $37
	ld l, a                                          ; $7df7: $6f
	inc e                                            ; $7df8: $1c
	dec de                                           ; $7df9: $1b
	ld b, b                                          ; $7dfa: $40
	sbc h                                            ; $7dfb: $9c
	ld h, [hl]                                       ; $7dfc: $66
	rst SubAFromDE                                          ; $7dfd: $df

jr_069_7dfe:
	pop af                                           ; $7dfe: $f1
	ld d, a                                          ; $7dff: $57
	ld b, b                                          ; $7e00: $40
	ld [hl], a                                       ; $7e01: $77
	ld h, b                                          ; $7e02: $60
	sub [hl]                                         ; $7e03: $96
	ld de, $3efe                                     ; $7e04: $11 $fe $3e
	rst $38                                          ; $7e07: $ff
	rst $38                                          ; $7e08: $ff
	pop hl                                           ; $7e09: $e1
	ret nz                                           ; $7e0a: $c0

	add b                                            ; $7e0b: $80
	add b                                            ; $7e0c: $80
	cp a                                             ; $7e0d: $bf
	db $10                                           ; $7e0e: $10
	rrca                                             ; $7e0f: $0f
	sbc h                                            ; $7e10: $9c
	rra                                              ; $7e11: $1f
	ld d, $0f                                        ; $7e12: $16 $0f
	ld h, [hl]                                       ; $7e14: $66
	sbc a                                            ; $7e15: $9f
	inc bc                                           ; $7e16: $03
	ld h, b                                          ; $7e17: $60
	ld h, e                                          ; $7e18: $63
	ld h, b                                          ; $7e19: $60
	sub e                                            ; $7e1a: $93
	ccf                                              ; $7e1b: $3f
	add $cf                                          ; $7e1c: $c6 $cf
	cp $7f                                           ; $7e1e: $fe $7f
	ld [bc], a                                       ; $7e20: $02
	inc a                                            ; $7e21: $3c
	nop                                              ; $7e22: $00
	db $fc                                           ; $7e23: $fc
	jr nc, jr_069_7e26                               ; $7e24: $30 $00

jr_069_7e26:
	ldh [$2f], a                                     ; $7e26: $e0 $2f
	ld h, b                                          ; $7e28: $60
	ld a, a                                          ; $7e29: $7f
	dec bc                                           ; $7e2a: $0b
	sbc d                                            ; $7e2b: $9a
	inc bc                                           ; $7e2c: $03
	rrca                                             ; $7e2d: $0f
	inc e                                            ; $7e2e: $1c
	rra                                              ; $7e2f: $1f
	ccf                                              ; $7e30: $3f
	cp a                                             ; $7e31: $bf
	ccf                                              ; $7e32: $3f
	ld [hl], a                                       ; $7e33: $77
	sbc h                                            ; $7e34: $9c
	ccf                                              ; $7e35: $3f
	ld a, l                                          ; $7e36: $7d
	ld e, $03                                        ; $7e37: $1e $03
	ld h, b                                          ; $7e39: $60
	ld d, e                                          ; $7e3a: $53
	ld h, b                                          ; $7e3b: $60
	sbc h                                            ; $7e3c: $9c
	inc de                                           ; $7e3d: $13
	db $fc                                           ; $7e3e: $fc
	jr z, @-$20                                      ; $7e3f: $28 $de

	rst $38                                          ; $7e41: $ff
	ld [hl], a                                       ; $7e42: $77
	ld h, b                                          ; $7e43: $60
	rst $38                                          ; $7e44: $ff
	sbc h                                            ; $7e45: $9c
	add hl, de                                       ; $7e46: $19
	inc a                                            ; $7e47: $3c
	rla                                              ; $7e48: $17
	inc bc                                           ; $7e49: $03
	ld h, b                                          ; $7e4a: $60
	ld a, [hl-]                                      ; $7e4b: $3a
	nop                                              ; $7e4c: $00
	sbc c                                            ; $7e4d: $99
	add [hl]                                         ; $7e4e: $86
	rst JumpTable                                          ; $7e4f: $c7
	cp $77                                           ; $7e50: $fe $77
	ld a, [hl-]                                      ; $7e52: $3a
	inc a                                            ; $7e53: $3c
	cp a                                             ; $7e54: $bf
	inc a                                            ; $7e55: $3c
	or b                                             ; $7e56: $b0
	sbc h                                            ; $7e57: $9c
	ld [hl], b                                       ; $7e58: $70
	ret nc                                           ; $7e59: $d0

	ldh [$57], a                                     ; $7e5a: $e0 $57
	ld e, a                                          ; $7e5c: $5f
	ccf                                              ; $7e5d: $3f
	ld h, b                                          ; $7e5e: $60
	sbc e                                            ; $7e5f: $9b
	ld l, e                                          ; $7e60: $6b
	scf                                              ; $7e61: $37
	ld l, [hl]                                       ; $7e62: $6e

jr_069_7e63:
	rra                                              ; $7e63: $1f
	dec sp                                           ; $7e64: $3b
	ld h, b                                          ; $7e65: $60
	ld a, e                                          ; $7e66: $7b
	ld e, [hl]                                       ; $7e67: $5e
	sbc l                                            ; $7e68: $9d
	ld c, e                                          ; $7e69: $4b
	rst $38                                          ; $7e6a: $ff
	ld a, $00                                        ; $7e6b: $3e $00
	rst $38                                          ; $7e6d: $ff
	sbc h                                            ; $7e6e: $9c
	ld b, $02                                        ; $7e6f: $06 $02
	inc bc                                           ; $7e71: $03
	cp h                                             ; $7e72: $bc
	ld bc, $0303                                     ; $7e73: $01 $03 $03
	add e                                            ; $7e76: $83
	jp nz, $8180                                     ; $7e77: $c2 $80 $81

	rst FarCall                                          ; $7e7a: $f7
	db $e3                                           ; $7e7b: $e3
	rst $38                                          ; $7e7c: $ff
	rst $38                                          ; $7e7d: $ff
	pop af                                           ; $7e7e: $f1
	ld a, a                                          ; $7e7f: $7f
	ldh a, [$1f]                                     ; $7e80: $f0 $1f
	ld [hl], b                                       ; $7e82: $70
	rra                                              ; $7e83: $1f
	jr jr_069_7ea5                                   ; $7e84: $18 $1f

	inc e                                            ; $7e86: $1c
	rrca                                             ; $7e87: $0f
	ld a, $07                                        ; $7e88: $3e $07
	cp $03                                           ; $7e8a: $fe $03
	ld a, [$fc87]                                    ; $7e8c: $fa $87 $fc
	rlca                                             ; $7e8f: $07
	db $fc                                           ; $7e90: $fc
	rrca                                             ; $7e91: $0f
	db $f4                                           ; $7e92: $f4
	rra                                              ; $7e93: $1f
	and $3f                                          ; $7e94: $e6 $3f
	ldh [c], a                                       ; $7e96: $e2
	ld a, a                                          ; $7e97: $7f
	sbc b                                            ; $7e98: $98
	ldh [c], a                                       ; $7e99: $e2
	rst $38                                          ; $7e9a: $ff
	ld [hl], e                                       ; $7e9b: $73
	rst $38                                          ; $7e9c: $ff
	ld d, c                                          ; $7e9d: $51
	rst $38                                          ; $7e9e: $ff
	ret                                              ; $7e9f: $c9


	ld a, e                                          ; $7ea0: $7b
	cp $97                                           ; $7ea1: $fe $97
	ld c, b                                          ; $7ea3: $48
	rst $38                                          ; $7ea4: $ff

jr_069_7ea5:
	ld b, h                                          ; $7ea5: $44
	rst $38                                          ; $7ea6: $ff
	ld h, h                                          ; $7ea7: $64
	rst $38                                          ; $7ea8: $ff
	inc h                                            ; $7ea9: $24
	rst $38                                          ; $7eaa: $ff
	ld [hl], e                                       ; $7eab: $73
	ret nz                                           ; $7eac: $c0

	sbc [hl]                                         ; $7ead: $9e
	inc bc                                           ; $7eae: $03
	rra                                              ; $7eaf: $1f
	ret nz                                           ; $7eb0: $c0

	ld [hl], a                                       ; $7eb1: $77
	ldh [$de], a                                     ; $7eb2: $e0 $de
	rlca                                             ; $7eb4: $07
	rst SubAFromDE                                          ; $7eb5: $df
	inc bc                                           ; $7eb6: $03
	rla                                              ; $7eb7: $17
	and b                                            ; $7eb8: $a0
	ld a, a                                          ; $7eb9: $7f
	cp $13                                           ; $7eba: $fe $13
	and b                                            ; $7ebc: $a0
	db $dd                                           ; $7ebd: $dd
	rlca                                             ; $7ebe: $07
	sbc [hl]                                         ; $7ebf: $9e
	inc bc                                           ; $7ec0: $03
	ld a, e                                          ; $7ec1: $7b
	ld e, d                                          ; $7ec2: $5a
	inc bc                                           ; $7ec3: $03
	ret nz                                           ; $7ec4: $c0

	dec sp                                           ; $7ec5: $3b
	ret nz                                           ; $7ec6: $c0

	cp $01                                           ; $7ec7: $fe $01
	add b                                            ; $7ec9: $80
	ld hl, $7fff                                     ; $7eca: $21 $ff $7f
	rst $38                                          ; $7ecd: $ff
	ld c, c                                          ; $7ece: $49
	rst $38                                          ; $7ecf: $ff
	sub d                                            ; $7ed0: $92
	rst $38                                          ; $7ed1: $ff
	and h                                            ; $7ed2: $a4
	rst $38                                          ; $7ed3: $ff
	add hl, hl                                       ; $7ed4: $29
	rst $38                                          ; $7ed5: $ff
	ld b, e                                          ; $7ed6: $43
	rst $38                                          ; $7ed7: $ff
	inc bc                                           ; $7ed8: $03
	rst $38                                          ; $7ed9: $ff
	dec b                                            ; $7eda: $05
	rst $38                                          ; $7edb: $ff
	dec c                                            ; $7edc: $0d
	rst $38                                          ; $7edd: $ff
	dec e                                            ; $7ede: $1d
	rst FarCall                                          ; $7edf: $f7
	dec a                                            ; $7ee0: $3d
	rst SubAFromBC                                          ; $7ee1: $e7
	ccf                                              ; $7ee2: $3f
	db $e3                                           ; $7ee3: $e3
	ld a, a                                          ; $7ee4: $7f
	ldh a, [rBGP]                                    ; $7ee5: $f0 $47
	add sp, $45                                      ; $7ee7: $e8 $45
	sub l                                            ; $7ee9: $95
	sub $47                                          ; $7eea: $d6 $47
	add $47                                          ; $7eec: $c6 $47
	xor $7b                                          ; $7eee: $ee $7b
	cp $d3                                           ; $7ef0: $fe $d3
	cp $93                                           ; $7ef2: $fe $93
	ld a, e                                          ; $7ef4: $7b
	cp $9b                                           ; $7ef5: $fe $9b
	sub c                                            ; $7ef7: $91
	cp $97                                           ; $7ef8: $fe $97
	db $fc                                           ; $7efa: $fc
	ld [hl], a                                       ; $7efb: $77
	cp $9a                                           ; $7efc: $fe $9a
	sbc a                                            ; $7efe: $9f
	db $fc                                           ; $7eff: $fc
	rst GetHLinHL                                          ; $7f00: $cf
	ld hl, sp+$4f                                    ; $7f01: $f8 $4f

Jump_069_7f03:
	ld a, e                                          ; $7f03: $7b
	cp $87                                           ; $7f04: $fe $87
	ld b, a                                          ; $7f06: $47
	db $fc                                           ; $7f07: $fc
	inc hl                                           ; $7f08: $23
	rst $38                                          ; $7f09: $ff
	db $e3                                           ; $7f0a: $e3
	rst $38                                          ; $7f0b: $ff
	sbc a                                            ; $7f0c: $9f
	db $fc                                           ; $7f0d: $fc
	ld de, $3efe                                     ; $7f0e: $11 $fe $3e
	rst SubAFromBC                                          ; $7f11: $e7
	rst $38                                          ; $7f12: $ff
	ret nz                                           ; $7f13: $c0

	ret nz                                           ; $7f14: $c0

	add b                                            ; $7f15: $80
	add e                                            ; $7f16: $83
	rrca                                             ; $7f17: $0f
	inc e                                            ; $7f18: $1c
	dec a                                            ; $7f19: $3d
	rrca                                             ; $7f1a: $0f
	rlca                                             ; $7f1b: $07
	inc b                                            ; $7f1c: $04
	rlca                                             ; $7f1d: $07
	ld sp, hl                                        ; $7f1e: $f9
	sbc [hl]                                         ; $7f1f: $9e
	add b                                            ; $7f20: $80
	cp [hl]                                          ; $7f21: $be
	add b                                            ; $7f22: $80
	ret nz                                           ; $7f23: $c0

	ret nz                                           ; $7f24: $c0

	adc l                                            ; $7f25: $8d
	add b                                            ; $7f26: $80
	ldh [rLCDC], a                                   ; $7f27: $e0 $40
	or b                                             ; $7f29: $b0
	ld h, b                                          ; $7f2a: $60
	ld hl, sp+$30                                    ; $7f2b: $f8 $30
	cp $1c                                           ; $7f2d: $fe $1c
	or $0f                                           ; $7f2f: $f6 $0f
	rlc a                                            ; $7f31: $cb $07
	add l                                            ; $7f33: $85
	inc bc                                           ; $7f34: $03
	add d                                            ; $7f35: $82
	ld bc, $bd81                                     ; $7f36: $01 $81 $bd
	ret nz                                           ; $7f39: $c0

	ret nz                                           ; $7f3a: $c0

	ret nz                                           ; $7f3b: $c0

	ldh [hDisp0_WX], a                                     ; $7f3c: $e0 $89
	ld b, b                                          ; $7f3e: $40
	ldh [$c0], a                                     ; $7f3f: $e0 $c0
	db $fd                                           ; $7f41: $fd
	rlca                                             ; $7f42: $07
	rst $38                                          ; $7f43: $ff
	ld b, $ff                                        ; $7f44: $06 $ff
	ld b, $3f                                        ; $7f46: $06 $3f
	add $e7                                          ; $7f48: $c6 $e7
	cp $ff                                           ; $7f4a: $fe $ff
	ld a, [hl-]                                      ; $7f4c: $3a
	db $fc                                           ; $7f4d: $fc
	ldh a, [$8c]                                     ; $7f4e: $f0 $8c
	sub b                                            ; $7f50: $90
	nop                                              ; $7f51: $00
	add b                                            ; $7f52: $80
	ret nz                                           ; $7f53: $c0

	or [hl]                                          ; $7f54: $b6
	nop                                              ; $7f55: $00
	nop                                              ; $7f56: $00
	nop                                              ; $7f57: $00
	nop                                              ; $7f58: $00
	nop                                              ; $7f59: $00
	nop                                              ; $7f5a: $00
	add c                                            ; $7f5b: $81
	add c                                            ; $7f5c: $81
	ld bc, $0203                                     ; $7f5d: $01 $03 $02
	sub c                                            ; $7f60: $91
	ld bc, $070b                                     ; $7f61: $01 $0b $07
	dec bc                                           ; $7f64: $0b
	inc e                                            ; $7f65: $1c
	ccf                                              ; $7f66: $3f
	inc a                                            ; $7f67: $3c
	dec de                                           ; $7f68: $1b
	scf                                              ; $7f69: $37
	ld e, l                                          ; $7f6a: $5d
	ld a, $6b                                        ; $7f6b: $3e $6b
	jr jr_069_7fee                                   ; $7f6d: $18 $7f

	cp a                                             ; $7f6f: $bf
	ld a, a                                          ; $7f70: $7f
	ccf                                              ; $7f71: $3f
	adc h                                            ; $7f72: $8c
	ld b, c                                          ; $7f73: $41
	cp a                                             ; $7f74: $bf
	pop bc                                           ; $7f75: $c1
	ld a, l                                          ; $7f76: $7d
	add e                                            ; $7f77: $83
	and d                                            ; $7f78: $a2
	rst $38                                          ; $7f79: $ff
	jp nz, $c2ff                                     ; $7f7a: $c2 $ff $c2

	ld a, a                                          ; $7f7d: $7f
	jp nz, $e57f                                     ; $7f7e: $c2 $7f $e5

	rst $38                                          ; $7f81: $ff
	ld h, l                                          ; $7f82: $65
	rst $38                                          ; $7f83: $ff
	bit 7, a                                         ; $7f84: $cb $7f
	ld a, e                                          ; $7f86: $7b
	inc sp                                           ; $7f87: $33
	add e                                            ; $7f88: $83
	and $df                                          ; $7f89: $e6 $df
	ld [hl], c                                       ; $7f8b: $71
	rst GetHLinHL                                          ; $7f8c: $cf
	db $fc                                           ; $7f8d: $fc
	rst FarCall                                          ; $7f8e: $f7
	sbc [hl]                                         ; $7f8f: $9e
	rst $38                                          ; $7f90: $ff
	adc $7f                                          ; $7f91: $ce $7f
	rst SubAFromBC                                          ; $7f93: $e7
	rra                                              ; $7f94: $1f
	pop af                                           ; $7f95: $f1
	rst $38                                          ; $7f96: $ff
	ld hl, sp-$01                                    ; $7f97: $f8 $ff
	adc h                                            ; $7f99: $8c
	rst $38                                          ; $7f9a: $ff
	ldh [c], a                                       ; $7f9b: $e2
	ld a, a                                          ; $7f9c: $7f
	pop af                                           ; $7f9d: $f1
	ld e, a                                          ; $7f9e: $5f
	db $fc                                           ; $7f9f: $fc
	ld d, a                                          ; $7fa0: $57
	db $f4                                           ; $7fa1: $f4
	ld c, e                                          ; $7fa2: $4b
	ld a, [$732b]                                    ; $7fa3: $fa $2b $73
	cp $9a                                           ; $7fa6: $fe $9a
	dec d                                            ; $7fa8: $15
	db $fd                                           ; $7fa9: $fd
	dec d                                            ; $7faa: $15
	db $fd                                           ; $7fab: $fd
	sub l                                            ; $7fac: $95
	ld a, e                                          ; $7fad: $7b
	cp $99                                           ; $7fae: $fe $99
	sub h                                            ; $7fb0: $94
	db $fc                                           ; $7fb1: $fc
	sub h                                            ; $7fb2: $94
	db $fc                                           ; $7fb3: $fc
	sub $fe                                          ; $7fb4: $d6 $fe
	ld l, a                                          ; $7fb6: $6f
	ld b, b                                          ; $7fb7: $40
	sub d                                            ; $7fb8: $92
	inc a                                            ; $7fb9: $3c
	rst $38                                          ; $7fba: $ff
	rst $38                                          ; $7fbb: $ff
	ldh a, [$c0]                                     ; $7fbc: $f0 $c0
	add b                                            ; $7fbe: $80
	add c                                            ; $7fbf: $81
	nop                                              ; $7fc0: $00
	rrca                                             ; $7fc1: $0f
	ccf                                              ; $7fc2: $3f
	dec bc                                           ; $7fc3: $0b
	dec c                                            ; $7fc4: $0d
	dec c                                            ; $7fc5: $0d
	inc bc                                           ; $7fc6: $03
	ld b, b                                          ; $7fc7: $40
	ccf                                              ; $7fc8: $3f
	ld b, b                                          ; $7fc9: $40
	sub h                                            ; $7fca: $94
	rst $38                                          ; $7fcb: $ff
	add [hl]                                         ; $7fcc: $86
	ld c, a                                          ; $7fcd: $4f
	or $5f                                           ; $7fce: $f6 $5f
	ld a, [hl-]                                      ; $7fd0: $3a
	db $fc                                           ; $7fd1: $fc
	ld [hl], b                                       ; $7fd2: $70
	cp h                                             ; $7fd3: $bc
	ret nz                                           ; $7fd4: $c0

	jr nz, @+$7c                                     ; $7fd5: $20 $7a

	ld hl, sp+$3f                                    ; $7fd7: $f8 $3f
	ld b, b                                          ; $7fd9: $40
	ld a, a                                          ; $7fda: $7f
	cp $7f                                           ; $7fdb: $fe $7f
	ld b, b                                          ; $7fdd: $40
	sub e                                            ; $7fde: $93
	add hl, bc                                       ; $7fdf: $09
	rlca                                             ; $7fe0: $07
	rrca                                             ; $7fe1: $0f
	inc e                                            ; $7fe2: $1c
	rrca                                             ; $7fe3: $0f
	jr nc, @+$21                                     ; $7fe4: $30 $1f

	ld a, $5b                                        ; $7fe6: $3e $5b
	scf                                              ; $7fe8: $37
	ld l, a                                          ; $7fe9: $6f
	inc e                                            ; $7fea: $1c
	dec de                                           ; $7feb: $1b
	ld b, b                                          ; $7fec: $40
	sbc h                                            ; $7fed: $9c

jr_069_7fee:
	ld h, [hl]                                       ; $7fee: $66

Jump_069_7fef:
	rst SubAFromDE                                          ; $7fef: $df
	pop af                                           ; $7ff0: $f1
	ld d, a                                          ; $7ff1: $57
	ld b, b                                          ; $7ff2: $40
	ld [hl], a                                       ; $7ff3: $77
	ld h, b                                          ; $7ff4: $60
	adc [hl]                                         ; $7ff5: $8e
	inc de                                           ; $7ff6: $13
	db $fc                                           ; $7ff7: $fc
	ld a, $ff                                        ; $7ff8: $3e $ff
	rst $38                                          ; $7ffa: $ff
	pop hl                                           ; $7ffb: $e1
	ret nz                                           ; $7ffc: $c0

	add b                                            ; $7ffd: $80
	add b                                            ; $7ffe: $80
	nop                                              ; $7fff: $00
