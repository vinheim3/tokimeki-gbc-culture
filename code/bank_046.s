; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $046", ROMX[$4000], BANK[$46]

	sbc [hl]                                         ; $4000: $9e
	cp h                                             ; $4001: $bc
	sbc $ff                                          ; $4002: $de $ff
	sbc h                                            ; $4004: $9c
	ld d, $01                                        ; $4005: $16 $01
	xor b                                            ; $4007: $a8
	ld a, e                                          ; $4008: $7b
	ldh a, [$9e]                                     ; $4009: $f0 $9e
	ld a, [$3c73]                                    ; $400b: $fa $73 $3c
	ld a, [hl]                                       ; $400e: $7e
	sub d                                            ; $400f: $92
	rst SubAFromDE                                          ; $4010: $df
	rst $38                                          ; $4011: $ff
	ld a, c                                          ; $4012: $79
	ld e, b                                          ; $4013: $58
	ld h, e                                          ; $4014: $63

jr_046_4015:
	inc a                                            ; $4015: $3c
	sub a                                            ; $4016: $97
	dec l                                            ; $4017: $2d
	sbc $e6                                          ; $4018: $de $e6
	rst $38                                          ; $401a: $ff
	rrca                                             ; $401b: $0f
	rst $38                                          ; $401c: $ff
	cp [hl]                                          ; $401d: $be
	ld bc, $3467                                     ; $401e: $01 $67 $34
	sbc [hl]                                         ; $4021: $9e
	ld sp, hl                                        ; $4022: $f9
	ld a, b                                          ; $4023: $78
	jp z, $b579                                      ; $4024: $ca $79 $b5

	add b                                            ; $4027: $80
	inc bc                                           ; $4028: $03
	xor h                                            ; $4029: $ac
	inc bc                                           ; $402a: $03
	ld e, b                                          ; $402b: $58
	rlca                                             ; $402c: $07
	xor b                                            ; $402d: $a8
	rlca                                             ; $402e: $07
	ld e, a                                          ; $402f: $5f
	rrca                                             ; $4030: $0f
	xor a                                            ; $4031: $af
	ld d, [hl]                                       ; $4032: $56
	ld c, d                                          ; $4033: $4a
	or a                                             ; $4034: $b7
	add hl, bc                                       ; $4035: $09
	or $39                                           ; $4036: $f6 $39
	ret nz                                           ; $4038: $c0

	inc bc                                           ; $4039: $03
	db $fc                                           ; $403a: $fc
	adc [hl]                                         ; $403b: $8e
	pop af                                           ; $403c: $f1
	db $eb                                           ; $403d: $eb
	db $fc                                           ; $403e: $fc
	sbc l                                            ; $403f: $9d
	cp $f6                                           ; $4040: $fe $f6
	inc bc                                           ; $4042: $03
	cp [hl]                                          ; $4043: $be
	ld b, e                                          ; $4044: $43
	ld a, [$7f07]                                    ; $4045: $fa $07 $7f
	ld a, [$fc7f]                                    ; $4048: $fa $7f $fc
	ld a, h                                          ; $404b: $7c
	reti                                             ; $404c: $d9


	adc [hl]                                         ; $404d: $8e
	ld l, a                                          ; $404e: $6f
	sub e                                            ; $404f: $93
	cp $01                                           ; $4050: $fe $01
	ld d, c                                          ; $4052: $51
	ld [$18e3], sp                                   ; $4053: $08 $e3 $18
	ld b, a                                          ; $4056: $47
	jr nc, jr_046_408e                               ; $4057: $30 $35

	ld l, d                                          ; $4059: $6a
	di                                               ; $405a: $f3
	ld a, h                                          ; $405b: $7c
	rst SubAFromHL                                          ; $405c: $d7
	ldh [$1f], a                                     ; $405d: $e0 $1f
	ld a, b                                          ; $405f: $78
	ld c, [hl]                                       ; $4060: $4e
	ld a, a                                          ; $4061: $7f
	cp h                                             ; $4062: $bc
	ld a, a                                          ; $4063: $7f
	db $fc                                           ; $4064: $fc
	sbc l                                            ; $4065: $9d
	db $fd                                           ; $4066: $fd
	ld [bc], a                                       ; $4067: $02
	ld [hl], h                                       ; $4068: $74
	add h                                            ; $4069: $84
	ld a, a                                          ; $406a: $7f
	sub b                                            ; $406b: $90
	sbc [hl]                                         ; $406c: $9e
	push af                                          ; $406d: $f5
	ld a, e                                          ; $406e: $7b
	db $fc                                           ; $406f: $fc
	sbc [hl]                                         ; $4070: $9e
	ld e, a                                          ; $4071: $5f
	ld a, e                                          ; $4072: $7b
	or $7c                                           ; $4073: $f6 $7c
	jr nc, jr_046_4015                               ; $4075: $30 $9e

	ld [$c062], a                                    ; $4077: $ea $62 $c0
	ld [hl], a                                       ; $407a: $77
	add sp, $46                                      ; $407b: $e8 $46
	or h                                             ; $407d: $b4
	ld l, [hl]                                       ; $407e: $6e

Call_046_407f:
	ret nc                                           ; $407f: $d0

	ld a, a                                          ; $4080: $7f
	ld hl, sp-$64                                    ; $4081: $f8 $9c
	ld [hl], b                                       ; $4083: $70
	nop                                              ; $4084: $00
	adc d                                            ; $4085: $8a
	ld a, e                                          ; $4086: $7b
	ldh a, [$f9]                                     ; $4087: $f0 $f9
	sbc h                                            ; $4089: $9c
	ld b, c                                          ; $408a: $41
	nop                                              ; $408b: $00
	inc hl                                           ; $408c: $23
	ld e, e                                          ; $408d: $5b

jr_046_408e:
	ld [bc], a                                       ; $408e: $02
	ld a, a                                          ; $408f: $7f
	inc d                                            ; $4090: $14
	sbc h                                            ; $4091: $9c
	ld c, d                                          ; $4092: $4a
	nop                                              ; $4093: $00
	push bc                                          ; $4094: $c5
	ld hl, sp+$7f                                    ; $4095: $f8 $7f
	ret nc                                           ; $4097: $d0

	ld l, a                                          ; $4098: $6f
	call nz, Call_046_7ff5                           ; $4099: $c4 $f5 $7f
	db $ec                                           ; $409c: $ec

jr_046_409d:
	ld [hl], $94                                     ; $409d: $36 $94
	sbc [hl]                                         ; $409f: $9e
	inc b                                            ; $40a0: $04
	ld [hl], e                                       ; $40a1: $73
	jp nz, $019c                                     ; $40a2: $c2 $9c $01

	nop                                              ; $40a5: $00
	inc c                                            ; $40a6: $0c
	ld e, e                                          ; $40a7: $5b
	or h                                             ; $40a8: $b4
	ld l, a                                          ; $40a9: $6f
	ret z                                            ; $40aa: $c8

	sbc c                                            ; $40ab: $99
	add hl, bc                                       ; $40ac: $09
	ld bc, $0323                                     ; $40ad: $01 $23 $03
	inc hl                                           ; $40b0: $23
	inc bc                                           ; $40b1: $03
	ld l, [hl]                                       ; $40b2: $6e
	ccf                                              ; $40b3: $3f
	sbc d                                            ; $40b4: $9a
	rlca                                             ; $40b5: $07
	inc bc                                           ; $40b6: $03
	ld a, a                                          ; $40b7: $7f
	jr c, jr_046_409d                                ; $40b8: $38 $e3

	ld a, e                                          ; $40ba: $7b
	ld b, d                                          ; $40bb: $42
	ld a, h                                          ; $40bc: $7c
	inc l                                            ; $40bd: $2c
	ld a, [hl]                                       ; $40be: $7e
	or b                                             ; $40bf: $b0
	add c                                            ; $40c0: $81
	rlca                                             ; $40c1: $07
	and e                                            ; $40c2: $a3
	rrca                                             ; $40c3: $0f
	rlca                                             ; $40c4: $07
	cp $57                                           ; $40c5: $fe $57
	ldh a, [c]                                       ; $40c7: $f2
	ld bc, $00e2                                     ; $40c8: $01 $e2 $00
	ld c, b                                          ; $40cb: $48
	ld sp, hl                                        ; $40cc: $f9
	add h                                            ; $40cd: $84
	ld a, a                                          ; $40ce: $7f
	nop                                              ; $40cf: $00
	ret nc                                           ; $40d0: $d0

	jp $ffc0                                         ; $40d1: $c3 $c0 $ff


	call nc, Call_046_407f                           ; $40d4: $d4 $7f $40
	rst AddAOntoHL                                          ; $40d7: $ef
	ret nc                                           ; $40d8: $d0

	cp $04                                           ; $40d9: $fe $04
	ld a, a                                          ; $40db: $7f
	ld b, b                                          ; $40dc: $40
	cp a                                             ; $40dd: $bf
	ld l, l                                          ; $40de: $6d
	ld a, d                                          ; $40df: $7a
	cp a                                             ; $40e0: $bf
	ld a, e                                          ; $40e1: $7b
	cp $9b                                           ; $40e2: $fe $9b
	rst AddAOntoHL                                          ; $40e4: $ef
	ld e, d                                          ; $40e5: $5a
	rst $38                                          ; $40e6: $ff
	and c                                            ; $40e7: $a1
	db $fd                                           ; $40e8: $fd
	sbc l                                            ; $40e9: $9d
	ld hl, sp+$50                                    ; $40ea: $f8 $50
	ld [hl], a                                       ; $40ec: $77
	ldh a, [$9a]                                     ; $40ed: $f0 $9a
	rst AddAOntoHL                                          ; $40ef: $ef
	db $10                                           ; $40f0: $10
	ld a, a                                          ; $40f1: $7f
	xor d                                            ; $40f2: $aa
	rst $38                                          ; $40f3: $ff
	ld l, e                                          ; $40f4: $6b
	ld [hl], e                                       ; $40f5: $73
	sbc b                                            ; $40f6: $98
	inc c                                            ; $40f7: $0c
	rlca                                             ; $40f8: $07
	add a                                            ; $40f9: $87
	db $fc                                           ; $40fa: $fc
	db $ec                                           ; $40fb: $ec
	rst SubAFromDE                                          ; $40fc: $df
	rla                                              ; $40fd: $17
	ld a, d                                          ; $40fe: $7a
	xor h                                            ; $40ff: $ac
	ei                                               ; $4100: $fb
	sbc b                                            ; $4101: $98
	cpl                                              ; $4102: $2f
	cp $1d                                           ; $4103: $fe $1d
	rst $38                                          ; $4105: $ff
	rst AddAOntoHL                                          ; $4106: $ef
	rst $38                                          ; $4107: $ff
	rst SubAFromDE                                          ; $4108: $df
	ld h, c                                          ; $4109: $61
	ld d, b                                          ; $410a: $50
	sbc [hl]                                         ; $410b: $9e
	ld a, a                                          ; $410c: $7f
	ld a, e                                          ; $410d: $7b
	sbc d                                            ; $410e: $9a
	ld h, a                                          ; $410f: $67
	cp $7f                                           ; $4110: $fe $7f
	db $f4                                           ; $4112: $f4
	sbc l                                            ; $4113: $9d
	xor a                                            ; $4114: $af
	ld d, b                                          ; $4115: $50
	ld e, a                                          ; $4116: $5f
	ldh a, [c]                                       ; $4117: $f2
	ld l, a                                          ; $4118: $6f
	cp $7e                                           ; $4119: $fe $7e
	call z, $9475                                    ; $411b: $cc $75 $94
	ld a, [hl]                                       ; $411e: $7e
	ret nc                                           ; $411f: $d0

	ld a, [hl]                                       ; $4120: $7e
	ld b, h                                          ; $4121: $44
	ld l, a                                          ; $4122: $6f
	ldh a, [$66]                                     ; $4123: $f0 $66
	call c, $e067                                    ; $4125: $dc $67 $e0
	ld l, a                                          ; $4128: $6f

jr_046_4129:
	ldh a, [$7f]                                     ; $4129: $f0 $7f
	ldh [$7f], a                                     ; $412b: $e0 $7f
	or $99                                           ; $412d: $f6 $99
	rst JumpTable                                          ; $412f: $c7
	jr c, jr_046_4129                                ; $4130: $38 $f7

	ld [$bf40], sp                                   ; $4132: $08 $40 $bf
	ld [hl], a                                       ; $4135: $77
	ldh a, [$75]                                     ; $4136: $f0 $75
	add h                                            ; $4138: $84
	ld [hl], a                                       ; $4139: $77
	db $ec                                           ; $413a: $ec
	ld a, a                                          ; $413b: $7f
	call nz, $2b9d                                   ; $413c: $c4 $9d $2b
	call nc, $98f9                                   ; $413f: $d4 $f9 $98
	add hl, de                                       ; $4142: $19
	inc b                                            ; $4143: $04
	cp d                                             ; $4144: $ba
	nop                                              ; $4145: $00
	ld d, c                                          ; $4146: $51
	nop                                              ; $4147: $00
	xor e                                            ; $4148: $ab
	ld [hl], a                                       ; $4149: $77
	ld bc, $7ff8                                     ; $414a: $01 $f8 $7f
	ldh [$9e], a                                     ; $414d: $e0 $9e
	ld a, [hl+]                                      ; $414f: $2a
	ld h, l                                          ; $4150: $65
	ld h, a                                          ; $4151: $67
	db $fc                                           ; $4152: $fc
	ld d, l                                          ; $4153: $55
	or b                                             ; $4154: $b0
	ld a, l                                          ; $4155: $7d
	call c, $bd9d                                    ; $4156: $dc $9d $bd
	ld [bc], a                                       ; $4159: $02
	ld d, a                                          ; $415a: $57
	ldh a, [$9d]                                     ; $415b: $f0 $9d
	add b                                            ; $415d: $80
	ld b, b                                          ; $415e: $40
	ld [hl], a                                       ; $415f: $77
	sbc b                                            ; $4160: $98
	ld a, a                                          ; $4161: $7f
	cp h                                             ; $4162: $bc
	ei                                               ; $4163: $fb
	ld a, [hl]                                       ; $4164: $7e
	reti                                             ; $4165: $d9


	ld a, [hl]                                       ; $4166: $7e
	add b                                            ; $4167: $80
	halt                                             ; $4168: $76
	jr nc, jr_046_41e8                               ; $4169: $30 $7d

	call c, $2197                                    ; $416b: $dc $97 $21
	ld bc, $0010                                     ; $416e: $01 $10 $00
	ld h, h                                          ; $4171: $64
	jr @-$48                                         ; $4172: $18 $b6

	ld [$6867], sp                                   ; $4174: $08 $67 $68
	sbc d                                            ; $4177: $9a
	ld a, a                                          ; $4178: $7f
	ret nz                                           ; $4179: $c0

	dec sp                                           ; $417a: $3b
	dec c                                            ; $417b: $0d
	rlca                                             ; $417c: $07
	ld a, e                                          ; $417d: $7b
	pop de                                           ; $417e: $d1
	sbc l                                            ; $417f: $9d
	ld [$6f70], sp                                   ; $4180: $08 $70 $6f
	rst AddAOntoHL                                          ; $4183: $ef
	sbc b                                            ; $4184: $98
	add e                                            ; $4185: $83
	cp $e5                                           ; $4186: $fe $e5
	ld e, a                                          ; $4188: $5f
	sbc c                                            ; $4189: $99
	ld a, [hl]                                       ; $418a: $7e
	scf                                              ; $418b: $37
	cp $85                                           ; $418c: $fe $85
	ld h, h                                          ; $418e: $64
	adc d                                            ; $418f: $8a
	nop                                              ; $4190: $00
	ld d, a                                          ; $4191: $57
	nop                                              ; $4192: $00
	xor a                                            ; $4193: $af
	ld a, a                                          ; $4194: $7f
	ret nc                                           ; $4195: $d0

	rst $38                                          ; $4196: $ff
	jp hl                                            ; $4197: $e9


	ei                                               ; $4198: $fb
	sub h                                            ; $4199: $94
	rst $38                                          ; $419a: $ff
	ld bc, $0001                                     ; $419b: $01 $01 $00
	ld bc, $2101                                     ; $419e: $01 $01 $21
	sbc $41                                          ; $41a1: $de $41
	cp a                                             ; $41a3: $bf
	rst $38                                          ; $41a4: $ff
	xor b                                            ; $41a5: $a8
	rst $38                                          ; $41a6: $ff
	ld d, l                                          ; $41a7: $55
	ld a, c                                          ; $41a8: $79
	ld e, l                                          ; $41a9: $5d
	ld h, e                                          ; $41aa: $63
	db $fc                                           ; $41ab: $fc
	sub [hl]                                         ; $41ac: $96
	ret nz                                           ; $41ad: $c0

	nop                                              ; $41ae: $00
	rst $38                                          ; $41af: $ff
	ld b, a                                          ; $41b0: $47
	rst SubAFromBC                                          ; $41b1: $e7
	adc a                                            ; $41b2: $8f
	rst $38                                          ; $41b3: $ff
	rlca                                             ; $41b4: $07
	rst $38                                          ; $41b5: $ff
	ld a, e                                          ; $41b6: $7b
	db $fc                                           ; $41b7: $fc
	sbc e                                            ; $41b8: $9b
	rst FarCall                                          ; $41b9: $f7
	rrca                                             ; $41ba: $0f
	rst FarCall                                          ; $41bb: $f7
	ld c, a                                          ; $41bc: $4f
	ld a, e                                          ; $41bd: $7b
	inc e                                            ; $41be: $1c
	db $d3                                           ; $41bf: $d3
	rst $38                                          ; $41c0: $ff
	ld c, e                                          ; $41c1: $4b
	ldh a, [hDisp1_WY]                                     ; $41c2: $f0 $95
	ld d, a                                          ; $41c4: $57
	xor b                                            ; $41c5: $a8
	xor e                                            ; $41c6: $ab
	ld d, h                                          ; $41c7: $54
	ld d, a                                          ; $41c8: $57
	xor b                                            ; $41c9: $a8
	xor d                                            ; $41ca: $aa
	ld d, l                                          ; $41cb: $55
	ld d, l                                          ; $41cc: $55
	xor d                                            ; $41cd: $aa
	ld l, a                                          ; $41ce: $6f
	db $fc                                           ; $41cf: $fc
	ld l, [hl]                                       ; $41d0: $6e
	ld [$ee9d], a                                    ; $41d1: $ea $9d $ee
	ld de, $f04f                                     ; $41d4: $11 $4f $f0
	ld a, [hl]                                       ; $41d7: $7e
	ld l, [hl]                                       ; $41d8: $6e
	ld h, a                                          ; $41d9: $67
	ldh a, [$7d]                                     ; $41da: $f0 $7d
	ld e, [hl]                                       ; $41dc: $5e
	ld a, d                                          ; $41dd: $7a
	xor h                                            ; $41de: $ac
	sbc [hl]                                         ; $41df: $9e
	ld a, [bc]                                       ; $41e0: $0a
	ld a, d                                          ; $41e1: $7a

jr_046_41e2:
	ret z                                            ; $41e2: $c8

	ld l, e                                          ; $41e3: $6b
	ldh a, [$9b]                                     ; $41e4: $f0 $9b
	adc e                                            ; $41e6: $8b
	ld [hl], h                                       ; $41e7: $74

jr_046_41e8:
	push bc                                          ; $41e8: $c5
	ld a, [hl-]                                      ; $41e9: $3a

jr_046_41ea:
	ld [hl], d                                       ; $41ea: $72
	cp b                                             ; $41eb: $b8
	ld l, e                                          ; $41ec: $6b
	ldh a, [$7e]                                     ; $41ed: $f0 $7e
	cp h                                             ; $41ef: $bc
	halt                                             ; $41f0: $76
	and h                                            ; $41f1: $a4
	ld a, a                                          ; $41f2: $7f
	jp c, $d877                                      ; $41f3: $da $77 $d8

	sbc l                                            ; $41f6: $9d
	ld [hl], a                                       ; $41f7: $77
	adc b                                            ; $41f8: $88
	ld a, e                                          ; $41f9: $7b
	db $ec                                           ; $41fa: $ec
	sbc [hl]                                         ; $41fb: $9e
	ld [bc], a                                       ; $41fc: $02
	ld [hl], a                                       ; $41fd: $77
	add hl, sp                                       ; $41fe: $39
	ld a, a                                          ; $41ff: $7f
	or $99                                           ; $4200: $f6 $99
	ld a, [$ff05]                                    ; $4202: $fa $05 $ff
	nop                                              ; $4205: $00
	db $dd                                           ; $4206: $dd
	ld [hl+], a                                      ; $4207: $22
	ld a, e                                          ; $4208: $7b
	ldh a, [$7b]                                     ; $4209: $f0 $7b

Call_046_420b:
	add hl, hl                                       ; $420b: $29
	ld [hl], l                                       ; $420c: $75
	inc a                                            ; $420d: $3c
	ld l, a                                          ; $420e: $6f
	cp $9d                                           ; $420f: $fe $9d
	ld [$7415], a                                    ; $4211: $ea $15 $74
	ret c                                            ; $4214: $d8

	ld h, a                                          ; $4215: $67
	ldh a, [c]                                       ; $4216: $f2
	sbc e                                            ; $4217: $9b
	ld a, l                                          ; $4218: $7d
	add d                                            ; $4219: $82
	ld a, [hl+]                                      ; $421a: $2a
	push de                                          ; $421b: $d5
	halt                                             ; $421c: $76
	call c, $f05f                                    ; $421d: $dc $5f $f0
	sbc l                                            ; $4220: $9d
	and d                                            ; $4221: $a2
	ld e, l                                          ; $4222: $5d
	ld e, a                                          ; $4223: $5f
	ldh a, [$7f]                                     ; $4224: $f0 $7f
	xor [hl]                                         ; $4226: $ae
	sbc e                                            ; $4227: $9b
	rst SubAFromDE                                          ; $4228: $df
	jr nz, jr_046_41ea                               ; $4229: $20 $bf

	ld b, b                                          ; $422b: $40
	ld e, a                                          ; $422c: $5f
	call nz, $f47b                                   ; $422d: $c4 $7b $f4
	sbc e                                            ; $4230: $9b
	and b                                            ; $4231: $a0
	rst $38                                          ; $4232: $ff
	nop                                              ; $4233: $00
	rst FarCall                                          ; $4234: $f7
	ld a, e                                          ; $4235: $7b
	or $9d                                           ; $4236: $f6 $9d
	cp [hl]                                          ; $4238: $be
	ld b, c                                          ; $4239: $41
	ld l, a                                          ; $423a: $6f
	ldh a, [hDisp1_WY]                                     ; $423b: $f0 $95
	rst SubAFromHL                                          ; $423d: $d7
	jr z, jr_046_41e2                                ; $423e: $28 $a2

	ld e, l                                          ; $4240: $5d
	add a                                            ; $4241: $87
	ld a, b                                          ; $4242: $78
	ld a, a                                          ; $4243: $7f
	add b                                            ; $4244: $80
	rst FarCall                                          ; $4245: $f7
	ld [$cc74], sp                                   ; $4246: $08 $74 $cc
	sub a                                            ; $4249: $97
	cp c                                             ; $424a: $b9
	ld b, [hl]                                       ; $424b: $46
	ld b, b                                          ; $424c: $40
	cp a                                             ; $424d: $bf
	xor d                                            ; $424e: $aa
	ld d, l                                          ; $424f: $55
	rst AddAOntoHL                                          ; $4250: $ef
	db $10                                           ; $4251: $10
	ld l, [hl]                                       ; $4252: $6e
	ld b, $87                                        ; $4253: $06 $87
	push de                                          ; $4255: $d5
	ld a, [hl+]                                      ; $4256: $2a
	xor d                                            ; $4257: $aa
	ld d, l                                          ; $4258: $55
	ld e, l                                          ; $4259: $5d
	and d                                            ; $425a: $a2
	xor d                                            ; $425b: $aa
	ld d, l                                          ; $425c: $55
	ld d, h                                          ; $425d: $54
	dec hl                                           ; $425e: $2b
	jp hl                                            ; $425f: $e9


	rla                                              ; $4260: $17
	call nc, $a92b                                   ; $4261: $d4 $2b $a9
	ld d, a                                          ; $4264: $57
	ld d, h                                          ; $4265: $54
	xor e                                            ; $4266: $ab
	jp hl                                            ; $4267: $e9


	rla                                              ; $4268: $17
	ld d, h                                          ; $4269: $54
	xor e                                            ; $426a: $ab
	xor c                                            ; $426b: $a9
	ld d, a                                          ; $426c: $57
	ld a, d                                          ; $426d: $7a
	call z, Call_046_549e                            ; $426e: $cc $9e $54
	ld a, d                                          ; $4271: $7a
	cp h                                             ; $4272: $bc
	ld a, a                                          ; $4273: $7f
	db $fc                                           ; $4274: $fc
	sbc h                                            ; $4275: $9c
	add d                                            ; $4276: $82
	rst $38                                          ; $4277: $ff
	ld hl, $fc7b                                     ; $4278: $21 $7b $fc

jr_046_427b:
	ld a, a                                          ; $427b: $7f
	ld c, d                                          ; $427c: $4a
	sbc d                                            ; $427d: $9a
	adc a                                            ; $427e: $8f
	rst SubAFromBC                                          ; $427f: $e7
	rrca                                             ; $4280: $0f
	rst AddAOntoHL                                          ; $4281: $ef
	rrca                                             ; $4282: $0f
	ld a, d                                          ; $4283: $7a
	ret nz                                           ; $4284: $c0

	ld [hl], a                                       ; $4285: $77
	db $fc                                           ; $4286: $fc
	halt                                             ; $4287: $76
	cp b                                             ; $4288: $b8
	adc $ff                                          ; $4289: $ce $ff
	adc a                                            ; $428b: $8f
	db $fd                                           ; $428c: $fd
	rst $38                                          ; $428d: $ff
	ld sp, hl                                        ; $428e: $f9
	rst $38                                          ; $428f: $ff
	ret nz                                           ; $4290: $c0

	rst $38                                          ; $4291: $ff
	pop hl                                           ; $4292: $e1
	cp $f9                                           ; $4293: $fe $f9
	cp $f8                                           ; $4295: $fe $f8
	rst $38                                          ; $4297: $ff
	ld d, h                                          ; $4298: $54
	xor e                                            ; $4299: $ab
	jr nz, jr_046_427b                               ; $429a: $20 $df

	ld d, l                                          ; $429c: $55
	adc a                                            ; $429d: $8f
	ld a, a                                          ; $429e: $7f
	ldh a, [$7f]                                     ; $429f: $f0 $7f
	db $fc                                           ; $42a1: $fc
	sbc [hl]                                         ; $42a2: $9e
	ld [bc], a                                       ; $42a3: $02
	ld h, l                                          ; $42a4: $65
	sub e                                            ; $42a5: $93
	ld a, e                                          ; $42a6: $7b
	cp $7e                                           ; $42a7: $fe $7e
	db $ec                                           ; $42a9: $ec
	ld a, a                                          ; $42aa: $7f
	inc l                                            ; $42ab: $2c
	sbc e                                            ; $42ac: $9b
	dec d                                            ; $42ad: $15
	ld [$7f80], a                                    ; $42ae: $ea $80 $7f
	ld e, a                                          ; $42b1: $5f
	ldh a, [$7f]                                     ; $42b2: $f0 $7f
	ld a, h                                          ; $42b4: $7c
	ld d, a                                          ; $42b5: $57
	ret nc                                           ; $42b6: $d0

	ld [hl], a                                       ; $42b7: $77
	ldh a, [$7f]                                     ; $42b8: $f0 $7f
	ldh [$7f], a                                     ; $42ba: $e0 $7f
	adc $9d                                          ; $42bc: $ce $9d
	dec b                                            ; $42be: $05
	ld a, [$f05f]                                    ; $42bf: $fa $5f $f0
	ld d, a                                          ; $42c2: $57
	call c, $b07f                                    ; $42c3: $dc $7f $b0
	ld [hl], a                                       ; $42c6: $77
	ldh a, [$9d]                                     ; $42c7: $f0 $9d
	add d                                            ; $42c9: $82
	ld a, l                                          ; $42ca: $7d
	ld d, a                                          ; $42cb: $57
	ret nc                                           ; $42cc: $d0

	ld a, a                                          ; $42cd: $7f
	db $fc                                           ; $42ce: $fc
	ld a, a                                          ; $42cf: $7f
	jr jr_046_4321                                   ; $42d0: $18 $4f

	ldh a, [rPCM34]                                  ; $42d2: $f0 $77
	cp h                                             ; $42d4: $bc
	ld l, a                                          ; $42d5: $6f
	ldh a, [$9b]                                     ; $42d6: $f0 $9b
	ld b, c                                          ; $42d8: $41
	cp [hl]                                          ; $42d9: $be
	cp [hl]                                          ; $42da: $be
	ld b, c                                          ; $42db: $41
	ld d, a                                          ; $42dc: $57
	cp h                                             ; $42dd: $bc
	ld a, [hl]                                       ; $42de: $7e
	add [hl]                                         ; $42df: $86
	ld a, [hl]                                       ; $42e0: $7e
	jr nz, jr_046_433a                               ; $42e1: $20 $57

	ldh a, [rPCM12]                                  ; $42e3: $f0 $76
	cp b                                             ; $42e5: $b8
	halt                                             ; $42e6: $76
	db $f4                                           ; $42e7: $f4
	ld h, a                                          ; $42e8: $67
	ldh a, [$9d]                                     ; $42e9: $f0 $9d
	ld [hl], l                                       ; $42eb: $75
	adc d                                            ; $42ec: $8a
	ld e, [hl]                                       ; $42ed: $5e
	inc b                                            ; $42ee: $04
	ld d, a                                          ; $42ef: $57
	or b                                             ; $42f0: $b0
	ld a, a                                          ; $42f1: $7f
	db $fc                                           ; $42f2: $fc
	sbc l                                            ; $42f3: $9d
	adc d                                            ; $42f4: $8a
	ld [hl], l                                       ; $42f5: $75
	ld e, a                                          ; $42f6: $5f
	ldh a, [$7f]                                     ; $42f7: $f0 $7f
	add b                                            ; $42f9: $80
	ld a, [hl]                                       ; $42fa: $7e
	or h                                             ; $42fb: $b4
	sbc [hl]                                         ; $42fc: $9e
	ld [$9576], sp                                   ; $42fd: $08 $76 $95
	ld a, e                                          ; $4300: $7b
	ld [hl], b                                       ; $4301: $70
	ld a, [hl]                                       ; $4302: $7e
	call z, $0496                                    ; $4303: $cc $96 $04
	ei                                               ; $4306: $fb
	ld bc, $04ff                                     ; $4307: $01 $ff $04
	ei                                               ; $430a: $fb
	ld b, c                                          ; $430b: $41
	cp a                                             ; $430c: $bf
	nop                                              ; $430d: $00
	ld a, d                                          ; $430e: $7a
	pop de                                           ; $430f: $d1
	sbc [hl]                                         ; $4310: $9e
	rst $38                                          ; $4311: $ff

jr_046_4312:
	ld [hl], h                                       ; $4312: $74
	add b                                            ; $4313: $80
	ld e, b                                          ; $4314: $58
	ld a, h                                          ; $4315: $7c
	ld a, d                                          ; $4316: $7a
	call z, Call_046_479e                            ; $4317: $cc $9e $47
	ld [hl], d                                       ; $431a: $72
	call nz, $fc73                                   ; $431b: $c4 $73 $fc
	sbc [hl]                                         ; $431e: $9e
	rst AddAOntoHL                                          ; $431f: $ef
	ld e, d                                          ; $4320: $5a

jr_046_4321:
	ret nz                                           ; $4321: $c0

	sbc b                                            ; $4322: $98
	rst SubAFromDE                                          ; $4323: $df
	add b                                            ; $4324: $80
	di                                               ; $4325: $f3
	ret nz                                           ; $4326: $c0

	cp $a0                                           ; $4327: $fe $a0
	ret nz                                           ; $4329: $c0

	ld a, d                                          ; $432a: $7a
	add $8e                                          ; $432b: $c6 $8e
	db $fc                                           ; $432d: $fc
	rst $38                                          ; $432e: $ff
	ei                                               ; $432f: $fb
	rst $38                                          ; $4330: $ff
	ldh a, [rIE]                                     ; $4331: $f0 $ff
	ldh a, [rIF]                                     ; $4333: $f0 $0f
	rst $38                                          ; $4335: $ff
	ld e, a                                          ; $4336: $5f
	ld a, a                                          ; $4337: $7f
	ccf                                              ; $4338: $3f
	nop                                              ; $4339: $00

jr_046_433a:
	rst $38                                          ; $433a: $ff
	inc b                                            ; $433b: $04
	ld hl, sp+$01                                    ; $433c: $f8 $01
	ld [hl], a                                       ; $433e: $77
	cp $9e                                           ; $433f: $fe $9e
	ld sp, hl                                        ; $4341: $f9
	ld l, a                                          ; $4342: $6f
	db $fc                                           ; $4343: $fc
	ld a, e                                          ; $4344: $7b
	ld a, d                                          ; $4345: $7a
	halt                                             ; $4346: $76
	ld d, d                                          ; $4347: $52
	sbc l                                            ; $4348: $9d
	xor d                                            ; $4349: $aa
	add b                                            ; $434a: $80
	ld a, e                                          ; $434b: $7b
	xor e                                            ; $434c: $ab
	ld [hl], a                                       ; $434d: $77
	cp $6f                                           ; $434e: $fe $6f
	ldh a, [$7f]                                     ; $4350: $f0 $7f
	ld a, [hl]                                       ; $4352: $7e
	ld h, a                                          ; $4353: $67
	and c                                            ; $4354: $a1
	scf                                              ; $4355: $37
	ldh a, [$9b]                                     ; $4356: $f0 $9b
	cp $00                                           ; $4358: $fe $00
	ld d, h                                          ; $435a: $54
	xor d                                            ; $435b: $aa
	ld a, e                                          ; $435c: $7b
	ei                                               ; $435d: $fb
	ld [hl], e                                       ; $435e: $73
	cp $7e                                           ; $435f: $fe $7e
	sub [hl]                                         ; $4361: $96
	sbc e                                            ; $4362: $9b
	ld b, b                                          ; $4363: $40
	ccf                                              ; $4364: $3f
	ld h, b                                          ; $4365: $60
	rra                                              ; $4366: $1f
	ld e, a                                          ; $4367: $5f
	cp $56                                           ; $4368: $fe $56
	sub h                                            ; $436a: $94
	inc bc                                           ; $436b: $03
	cp $77                                           ; $436c: $fe $77
	cp $98                                           ; $436e: $fe $98
	ldh [rTAC], a                                    ; $4370: $e0 $07
	ret nz                                           ; $4372: $c0

	rrca                                             ; $4373: $0f
	call nz, $c70c                                   ; $4374: $c4 $0c $c7
	ld h, a                                          ; $4377: $67
	cp $77                                           ; $4378: $fe $77
	sub d                                            ; $437a: $92
	ld a, a                                          ; $437b: $7f
	cp $5b                                           ; $437c: $fe $5b
	ldh [rTAC], a                                    ; $437e: $e0 $07
	ldh a, [hDisp1_WX]                                     ; $4380: $f0 $96
	rrca                                             ; $4382: $0f
	ret c                                            ; $4383: $d8

	rlca                                             ; $4384: $07
	sbc b                                            ; $4385: $98
	rrca                                             ; $4386: $0f
	jr @-$6f                                         ; $4387: $18 $8f

	jr jr_046_4312                                   ; $4389: $18 $87

	ld l, a                                          ; $438b: $6f
	cp $47                                           ; $438c: $fe $47
	and b                                            ; $438e: $a0
	ld a, b                                          ; $438f: $78
	rst SubAFromBC                                          ; $4390: $e7
	ld d, e                                          ; $4391: $53
	cp $43                                           ; $4392: $fe $43
	ld a, a                                          ; $4394: $7f
	halt                                             ; $4395: $76
	call z, $c062                                    ; $4396: $cc $62 $c0
	ld a, a                                          ; $4399: $7f
	cp $9a                                           ; $439a: $fe $9a
	ret z                                            ; $439c: $c8

	rst FarCall                                          ; $439d: $f7
	and b                                            ; $439e: $a0
	rst $38                                          ; $439f: $ff
	ret nc                                           ; $43a0: $d0

	ld a, c                                          ; $43a1: $79
	ld e, a                                          ; $43a2: $5f
	sbc [hl]                                         ; $43a3: $9e
	push de                                          ; $43a4: $d5
	ld a, c                                          ; $43a5: $79
	ld d, a                                          ; $43a6: $57
	sub a                                            ; $43a7: $97
	call nc, $a2ff                                   ; $43a8: $d4 $ff $a2
	rst $38                                          ; $43ab: $ff
	rlca                                             ; $43ac: $07
	adc e                                            ; $43ad: $8b
	nop                                              ; $43ae: $00
	di                                               ; $43af: $f3
	ld a, e                                          ; $43b0: $7b
	jr jr_046_4415                                   ; $43b1: $18 $62

	adc e                                            ; $43b3: $8b
	dec l                                            ; $43b4: $2d
	nop                                              ; $43b5: $00
	rst GetHLinHL                                          ; $43b6: $cf
	inc sp                                           ; $43b7: $33
	sbc [hl]                                         ; $43b8: $9e
	scf                                              ; $43b9: $37
	ret c                                            ; $43ba: $d8

	inc sp                                           ; $43bb: $33
	sbc l                                            ; $43bc: $9d
	ld [hl], a                                       ; $43bd: $77
	ld h, [hl]                                       ; $43be: $66
	jp c, $9d33                                      ; $43bf: $da $33 $9d

	ld [hl], $63                                     ; $43c2: $36 $63
	ld l, e                                          ; $43c4: $6b
	or $9b                                           ; $43c5: $f6 $9b
	scf                                              ; $43c7: $37
	ld [hl], a                                       ; $43c8: $77
	inc sp                                           ; $43c9: $33
	ld d, [hl]                                       ; $43ca: $56
	ret c                                            ; $43cb: $d8

	ld b, h                                          ; $43cc: $44
	sbc [hl]                                         ; $43cd: $9e
	ld [hl], a                                       ; $43ce: $77
	db $db                                           ; $43cf: $db
	ld b, h                                          ; $43d0: $44
	sbc h                                            ; $43d1: $9c
	ld b, l                                          ; $43d2: $45
	ld d, l                                          ; $43d3: $55
	ld d, l                                          ; $43d4: $55
	ld e, a                                          ; $43d5: $5f
	or $9e                                           ; $43d6: $f6 $9e
	ld d, l                                          ; $43d8: $55
	reti                                             ; $43d9: $d9


	ld b, h                                          ; $43da: $44
	ld h, a                                          ; $43db: $67
	db $ec                                           ; $43dc: $ec
	ld [hl], a                                       ; $43dd: $77
	or $d7                                           ; $43de: $f6 $d7
	ld d, l                                          ; $43e0: $55
	ld h, h                                          ; $43e1: $64
	ld [$009d], sp                                   ; $43e2: $08 $9d $00
	rst $38                                          ; $43e5: $ff
	inc bc                                           ; $43e6: $03
	cp $03                                           ; $43e7: $fe $03
	cp $03                                           ; $43e9: $fe $03
	cp $03                                           ; $43eb: $fe $03
	cp $03                                           ; $43ed: $fe $03
	cp $03                                           ; $43ef: $fe $03
	cp $03                                           ; $43f1: $fe $03
	cp $03                                           ; $43f3: $fe $03
	cp $03                                           ; $43f5: $fe $03
	cp $23                                           ; $43f7: $fe $23
	cp $93                                           ; $43f9: $fe $93
	ld [bc], a                                       ; $43fb: $02
	db $fd                                           ; $43fc: $fd
	rlca                                             ; $43fd: $07
	ld a, [$f50b]                                    ; $43fe: $fa $0b $f5
	ld e, a                                          ; $4401: $5f
	xor d                                            ; $4402: $aa
	rst $38                                          ; $4403: $ff
	ld d, l                                          ; $4404: $55
	rst $38                                          ; $4405: $ff
	xor d                                            ; $4406: $aa
	ld [hl], a                                       ; $4407: $77
	ldh a, [$98]                                     ; $4408: $f0 $98
	add b                                            ; $440a: $80
	ld a, a                                          ; $440b: $7f
	ldh a, [$af]                                     ; $440c: $f0 $af
	ld a, [$fd45]                                    ; $440e: $fa $45 $fd
	ld [hl], a                                       ; $4411: $77
	ldh a, [$9e]                                     ; $4412: $f0 $9e
	xor e                                            ; $4414: $ab

jr_046_4415:
	ld d, a                                          ; $4415: $57
	ret c                                            ; $4416: $d8

	ld a, a                                          ; $4417: $7f
	add sp, -$63                                     ; $4418: $e8 $9d
	call $5fb2                                       ; $441a: $cd $b2 $5f
	ldh a, [c]                                       ; $441d: $f2
	sbc c                                            ; $441e: $99
	ld a, [hl+]                                      ; $441f: $2a
	push de                                          ; $4420: $d5
	rst $38                                          ; $4421: $ff
	ld a, [hl+]                                      ; $4422: $2a
	rst $38                                          ; $4423: $ff
	ld b, l                                          ; $4424: $45
	ld [hl], a                                       ; $4425: $77
	or $93                                           ; $4426: $f6 $93
	inc d                                            ; $4428: $14
	db $eb                                           ; $4429: $eb
	ld a, [hl+]                                      ; $442a: $2a
	push de                                          ; $442b: $d5
	dec d                                            ; $442c: $15
	ld [$55aa], a                                    ; $442d: $ea $aa $55
	rst $38                                          ; $4430: $ff
	adc d                                            ; $4431: $8a
	rst $38                                          ; $4432: $ff
	ld d, l                                          ; $4433: $55
	ld [hl], a                                       ; $4434: $77
	ldh a, [hDisp1_OBP1]                                     ; $4435: $f0 $94
	ld b, b                                          ; $4437: $40
	cp a                                             ; $4438: $bf
	and b                                            ; $4439: $a0
	ld e, a                                          ; $443a: $5f
	ld d, b                                          ; $443b: $50
	xor a                                            ; $443c: $af
	xor b                                            ; $443d: $a8
	ld d, a                                          ; $443e: $57
	call nc, $feab                                   ; $443f: $d4 $ab $fe
	ld [hl], e                                       ; $4442: $73
	ldh a, [$67]                                     ; $4443: $f0 $67
	cp $9b                                           ; $4445: $fe $9b
	dec b                                            ; $4447: $05
	ld a, [$f50a]                                    ; $4448: $fa $0a $f5
	ld d, a                                          ; $444b: $57
	ldh a, [$7f]                                     ; $444c: $f0 $7f
	adc d                                            ; $444e: $8a
	sbc l                                            ; $444f: $9d
	sbc a                                            ; $4450: $9f
	ld [hl], l                                       ; $4451: $75
	ld d, a                                          ; $4452: $57
	ldh a, [$9c]                                     ; $4453: $f0 $9c
	ld [hl], b                                       ; $4455: $70
	xor a                                            ; $4456: $af
	ld a, [$d063]                                    ; $4457: $fa $63 $d0
	sbc b                                            ; $445a: $98
	inc b                                            ; $445b: $04
	ei                                               ; $445c: $fb
	ld a, [hl+]                                      ; $445d: $2a
	push de                                          ; $445e: $d5
	ld d, l                                          ; $445f: $55
	xor d                                            ; $4460: $aa
	xor d                                            ; $4461: $aa
	ld [hl], e                                       ; $4462: $73
	ldh a, [$7f]                                     ; $4463: $f0 $7f
	ret z                                            ; $4465: $c8

	sbc c                                            ; $4466: $99
	dec hl                                           ; $4467: $2b
	push de                                          ; $4468: $d5
	ld a, a                                          ; $4469: $7f
	xor d                                            ; $446a: $aa
	rst $38                                          ; $446b: $ff
	dec d                                            ; $446c: $15
	ld [hl], a                                       ; $446d: $77
	db $fc                                           ; $446e: $fc
	ld l, a                                          ; $446f: $6f
	and h                                            ; $4470: $a4
	sbc c                                            ; $4471: $99
	ldh [$5f], a                                     ; $4472: $e0 $5f
	db $fd                                           ; $4474: $fd
	adc d                                            ; $4475: $8a
	rst $38                                          ; $4476: $ff
	ld b, l                                          ; $4477: $45
	ld h, a                                          ; $4478: $67
	sub b                                            ; $4479: $90
	ld l, a                                          ; $447a: $6f
	cp $7f                                           ; $447b: $fe $7f
	db $ec                                           ; $447d: $ec
	sub l                                            ; $447e: $95
	push af                                          ; $447f: $f5
	xor d                                            ; $4480: $aa
	ei                                               ; $4481: $fb
	ld d, h                                          ; $4482: $54
	nop                                              ; $4483: $00

jr_046_4484:
	rst $38                                          ; $4484: $ff
	ld [$15f7], sp                                   ; $4485: $08 $f7 $15
	ld [$fc77], a                                    ; $4488: $ea $77 $fc
	sub l                                            ; $448b: $95
	cpl                                              ; $448c: $2f
	pop de                                           ; $448d: $d1
	ld a, a                                          ; $448e: $7f
	and d                                            ; $448f: $a2
	rst $38                                          ; $4490: $ff
	ld d, l                                          ; $4491: $55
	ld d, b                                          ; $4492: $50
	xor a                                            ; $4493: $af
	xor d                                            ; $4494: $aa
	ld d, l                                          ; $4495: $55
	ld [hl], a                                       ; $4496: $77
	cp b                                             ; $4497: $b8
	ld a, a                                          ; $4498: $7f
	db $fc                                           ; $4499: $fc
	sbc h                                            ; $449a: $9c
	xor l                                            ; $449b: $ad
	ld d, a                                          ; $449c: $57
	rst $38                                          ; $449d: $ff
	ld a, e                                          ; $449e: $7b
	ld l, $7f                                        ; $449f: $2e $7f
	ldh [$9d], a                                     ; $44a1: $e0 $9d
	jr nz, jr_046_4484                               ; $44a3: $20 $df

	ld [hl], a                                       ; $44a5: $77
	cp h                                             ; $44a6: $bc
	ld [hl], a                                       ; $44a7: $77
	db $fc                                           ; $44a8: $fc
	sbc e                                            ; $44a9: $9b
	ret nc                                           ; $44aa: $d0

	xor a                                            ; $44ab: $af
	add sp, $57                                      ; $44ac: $e8 $57
	ld d, [hl]                                       ; $44ae: $56
	ld a, [$cc7f]                                    ; $44af: $fa $7f $cc
	sbc l                                            ; $44b2: $9d
	ld a, a                                          ; $44b3: $7f
	add c                                            ; $44b4: $81
	ld d, a                                          ; $44b5: $57
	ld [hl], b                                       ; $44b6: $70
	sbc e                                            ; $44b7: $9b
	ld b, c                                          ; $44b8: $41
	add b                                            ; $44b9: $80
	cp a                                             ; $44ba: $bf
	dec bc                                           ; $44bb: $0b
	ld d, a                                          ; $44bc: $57
	ldh a, [$9b]                                     ; $44bd: $f0 $9b
	db $fc                                           ; $44bf: $fc
	rst $38                                          ; $44c0: $ff
	cp $17                                           ; $44c1: $fe $17
	ld b, [hl]                                       ; $44c3: $46
	call nz, $cc76                                   ; $44c4: $c4 $76 $cc
	sbc e                                            ; $44c7: $9b
	rst $38                                          ; $44c8: $ff
	ld d, a                                          ; $44c9: $57
	rst $38                                          ; $44ca: $ff
	xor a                                            ; $44cb: $af
	ld a, e                                          ; $44cc: $7b
	db $fc                                           ; $44cd: $fc
	sbc [hl]                                         ; $44ce: $9e
	dec hl                                           ; $44cf: $2b
	ld a, e                                          ; $44d0: $7b
	db $fc                                           ; $44d1: $fc
	sbc [hl]                                         ; $44d2: $9e
	cp d                                             ; $44d3: $ba
	ld a, e                                          ; $44d4: $7b
	db $fc                                           ; $44d5: $fc
	ld [hl], d                                       ; $44d6: $72
	cp b                                             ; $44d7: $b8
	sub e                                            ; $44d8: $93
	rst $38                                          ; $44d9: $ff
	sub l                                            ; $44da: $95
	rst $38                                          ; $44db: $ff
	cp e                                             ; $44dc: $bb
	rst $38                                          ; $44dd: $ff
	ld [hl], a                                       ; $44de: $77
	rst $38                                          ; $44df: $ff
	rst $38                                          ; $44e0: $ff
	sub [hl]                                         ; $44e1: $96
	jp hl                                            ; $44e2: $e9


	db $ed                                           ; $44e3: $ed
	sub d                                            ; $44e4: $92
	ld a, d                                          ; $44e5: $7a
	or h                                             ; $44e6: $b4
	ld a, a                                          ; $44e7: $7f
	add sp, -$70                                     ; $44e8: $e8 $90
	ld e, h                                          ; $44ea: $5c
	ei                                               ; $44eb: $fb
	db $ec                                           ; $44ec: $ec
	db $fd                                           ; $44ed: $fd
	ld a, [$bdf2]                                    ; $44ee: $fa $f2 $bd
	rst $38                                          ; $44f1: $ff
	ld [hl+], a                                      ; $44f2: $22
	ld a, a                                          ; $44f3: $7f
	sub h                                            ; $44f4: $94
	cp l                                             ; $44f5: $bd
	ld c, d                                          ; $44f6: $4a
	rst SubAFromDE                                          ; $44f7: $df
	dec [hl]                                         ; $44f8: $35
	ld a, e                                          ; $44f9: $7b
	sbc $9a                                          ; $44fa: $de $9a
	dec d                                            ; $44fc: $15
	rst $38                                          ; $44fd: $ff
	ccf                                              ; $44fe: $3f
	ld a, a                                          ; $44ff: $7f
	or l                                             ; $4500: $b5
	ld a, d                                          ; $4501: $7a
	cp h                                             ; $4502: $bc
	ld [hl], a                                       ; $4503: $77
	jp nc, $fc7f                                     ; $4504: $d2 $7f $fc

	ld [hl], a                                       ; $4507: $77
	ld hl, sp+$7f                                    ; $4508: $f8 $7f
	jp c, Jump_046_7f96                              ; $450a: $da $96 $7f

	db $fd                                           ; $450d: $fd
	cp d                                             ; $450e: $ba
	cp $77                                           ; $450f: $fe $77
	rst $38                                          ; $4511: $ff
	cp $fa                                           ; $4512: $fe $fa
	db $fd                                           ; $4514: $fd
	ld a, d                                          ; $4515: $7a
	add d                                            ; $4516: $82
	ld a, a                                          ; $4517: $7f
	or [hl]                                          ; $4518: $b6
	adc c                                            ; $4519: $89
	and e                                            ; $451a: $a3
	rst $38                                          ; $451b: $ff
	rst SubAFromHL                                          ; $451c: $d7
	ld d, l                                          ; $451d: $55
	xor d                                            ; $451e: $aa
	xor e                                            ; $451f: $ab
	ld d, h                                          ; $4520: $54
	ld d, a                                          ; $4521: $57
	xor b                                            ; $4522: $a8
	cp e                                             ; $4523: $bb
	ld b, l                                          ; $4524: $45
	ld d, a                                          ; $4525: $57
	xor d                                            ; $4526: $aa
	xor a                                            ; $4527: $af
	ld d, c                                          ; $4528: $51
	ld e, a                                          ; $4529: $5f
	and b                                            ; $452a: $a0
	xor a                                            ; $452b: $af
	ld d, l                                          ; $452c: $55
	ld a, a                                          ; $452d: $7f
	add d                                            ; $452e: $82
	rst AddAOntoHL                                          ; $452f: $ef
	ld l, a                                          ; $4530: $6f
	call nc, $e07f                                   ; $4531: $d4 $7f $e0
	sbc [hl]                                         ; $4534: $9e
	ld d, c                                          ; $4535: $51
	ld [hl], e                                       ; $4536: $73
	cp h                                             ; $4537: $bc
	sbc [hl]                                         ; $4538: $9e
	xor b                                            ; $4539: $a8
	ld l, e                                          ; $453a: $6b
	ret nz                                           ; $453b: $c0

	sbc b                                            ; $453c: $98
	xor [hl]                                         ; $453d: $ae
	rst $38                                          ; $453e: $ff
	ld b, a                                          ; $453f: $47
	rst $38                                          ; $4540: $ff
	ld a, [hl+]                                      ; $4541: $2a
	ei                                               ; $4542: $fb
	ld d, l                                          ; $4543: $55
	ld a, e                                          ; $4544: $7b
	ret c                                            ; $4545: $d8

	sbc h                                            ; $4546: $9c
	ld d, b                                          ; $4547: $50
	rst SubAFromDE                                          ; $4548: $df
	ld [hl+], a                                      ; $4549: $22
	ld a, d                                          ; $454a: $7a
	db $e4                                           ; $454b: $e4
	ld a, a                                          ; $454c: $7f
	db $ec                                           ; $454d: $ec
	ld a, a                                          ; $454e: $7f
	ldh a, [$9c]                                     ; $454f: $f0 $9c
	ld [$f7eb], a                                    ; $4551: $ea $eb $f7
	ld a, d                                          ; $4554: $7a
	call z, $e06f                                    ; $4555: $cc $6f $e0
	ld [hl], a                                       ; $4558: $77
	db $fc                                           ; $4559: $fc
	sbc [hl]                                         ; $455a: $9e
	jr z, jr_046_45d8                                ; $455b: $28 $7b

	dec a                                            ; $455d: $3d
	ld a, a                                          ; $455e: $7f
	call nz, $c87f                                   ; $455f: $c4 $7f $c8
	sbc d                                            ; $4562: $9a
	ldh [rIE], a                                     ; $4563: $e0 $ff
	push de                                          ; $4565: $d5
	rst $38                                          ; $4566: $ff
	ld a, [$cc73]                                    ; $4567: $fa $73 $cc
	adc [hl]                                         ; $456a: $8e
	ld e, l                                          ; $456b: $5d
	push af                                          ; $456c: $f5
	cp d                                             ; $456d: $ba
	db $db                                           ; $456e: $db
	dec [hl]                                         ; $456f: $35
	db $fd                                           ; $4570: $fd
	xor d                                            ; $4571: $aa
	ld a, [$fd75]                                    ; $4572: $fa $75 $fd
	xor d                                            ; $4575: $aa
	db $eb                                           ; $4576: $eb
	ld d, h                                          ; $4577: $54
	rst FarCall                                          ; $4578: $f7
	jp hl                                            ; $4579: $e9


	db $eb                                           ; $457a: $eb
	or $73                                           ; $457b: $f6 $73
	ld [hl-], a                                      ; $457d: $32
	ld a, a                                          ; $457e: $7f
	ld b, [hl]                                       ; $457f: $46
	sbc b                                            ; $4580: $98
	ld [hl], l                                       ; $4581: $75
	ld a, a                                          ; $4582: $7f
	add d                                            ; $4583: $82
	cp a                                             ; $4584: $bf
	push de                                          ; $4585: $d5
	rst SubAFromDE                                          ; $4586: $df
	ld l, e                                          ; $4587: $6b
	ld a, e                                          ; $4588: $7b
	ld a, [hl-]                                      ; $4589: $3a
	ld [hl], a                                       ; $458a: $77
	ret z                                            ; $458b: $c8

	sbc [hl]                                         ; $458c: $9e
	and b                                            ; $458d: $a0
	ld a, e                                          ; $458e: $7b
	call z, $fc7f                                    ; $458f: $cc $7f $fc
	ld a, a                                          ; $4592: $7f
	ld hl, sp-$69                                    ; $4593: $f8 $97
	ld [$d7ff], a                                    ; $4595: $ea $ff $d7
	db $fc                                           ; $4598: $fc
	xor e                                            ; $4599: $ab
	cp $15                                           ; $459a: $fe $15
	db $fd                                           ; $459c: $fd
	ld a, d                                          ; $459d: $7a
	sbc b                                            ; $459e: $98
	ld a, a                                          ; $459f: $7f
	ret nz                                           ; $45a0: $c0

	sbc e                                            ; $45a1: $9b
	ei                                               ; $45a2: $fb
	ld [hl], l                                       ; $45a3: $75
	rst FarCall                                          ; $45a4: $f7
	xor d                                            ; $45a5: $aa
	ld a, e                                          ; $45a6: $7b
	ld d, h                                          ; $45a7: $54
	sbc [hl]                                         ; $45a8: $9e
	ld de, $ae7b                                     ; $45a9: $11 $7b $ae
	adc h                                            ; $45ac: $8c
	ld d, h                                          ; $45ad: $54
	cp $a3                                           ; $45ae: $fe $a3
	db $fc                                           ; $45b0: $fc
	ld b, a                                          ; $45b1: $47
	ld sp, hl                                        ; $45b2: $f9
	adc a                                            ; $45b3: $8f
	di                                               ; $45b4: $f3
	ld e, a                                          ; $45b5: $5f
	rst SubAFromBC                                          ; $45b6: $e7
	cp a                                             ; $45b7: $bf
	ccf                                              ; $45b8: $3f
	adc c                                            ; $45b9: $89
	dec a                                            ; $45ba: $3d
	xor c                                            ; $45bb: $a9
	or c                                             ; $45bc: $b1
	and e                                            ; $45bd: $a3
	and c                                            ; $45be: $a1
	push bc                                          ; $45bf: $c5
	sbc $ff                                          ; $45c0: $de $ff
	adc b                                            ; $45c2: $88
	cp $ff                                           ; $45c3: $fe $ff
	rst $38                                          ; $45c5: $ff
	rst AddAOntoHL                                          ; $45c6: $ef
	sbc $3f                                          ; $45c7: $de $3f
	ld d, l                                          ; $45c9: $55
	ccf                                              ; $45ca: $3f
	or [hl]                                          ; $45cb: $b6
	cpl                                              ; $45cc: $2f
	ld b, h                                          ; $45cd: $44
	rrca                                             ; $45ce: $0f
	xor d                                            ; $45cf: $aa
	rst SubAFromHL                                          ; $45d0: $d7
	xor a                                            ; $45d1: $af
	or e                                             ; $45d2: $b3
	add a                                            ; $45d3: $87
	rst $38                                          ; $45d4: $ff
	jp $d3cb                                         ; $45d5: $c3 $cb $d3


jr_046_45d8:
	nop                                              ; $45d8: $00
	rst $38                                          ; $45d9: $ff
	halt                                             ; $45da: $76
	ld [hl], h                                       ; $45db: $74
	ld a, [hl]                                       ; $45dc: $7e
	inc h                                            ; $45dd: $24
	sub a                                            ; $45de: $97
	push de                                          ; $45df: $d5
	ld a, [hl+]                                      ; $45e0: $2a
	ld [$d515], a                                    ; $45e1: $ea $15 $d5
	ld a, [hl+]                                      ; $45e4: $2a
	ld l, d                                          ; $45e5: $6a
	sub l                                            ; $45e6: $95
	ld a, e                                          ; $45e7: $7b
	sub d                                            ; $45e8: $92
	sbc [hl]                                         ; $45e9: $9e

jr_046_45ea:
	rst AddAOntoHL                                          ; $45ea: $ef
	db $dd                                           ; $45eb: $dd
	rst $38                                          ; $45ec: $ff
	sub a                                            ; $45ed: $97
	ld a, a                                          ; $45ee: $7f
	rst $38                                          ; $45ef: $ff
	cp e                                             ; $45f0: $bb
	ld e, a                                          ; $45f1: $5f
	ld e, e                                          ; $45f2: $5b
	cp a                                             ; $45f3: $bf
	xor e                                            ; $45f4: $ab
	ld d, a                                          ; $45f5: $57
	sbc $ff                                          ; $45f6: $de $ff
	sbc [hl]                                         ; $45f8: $9e
	rst SubAFromDE                                          ; $45f9: $df
	ld [hl], a                                       ; $45fa: $77
	add $df                                          ; $45fb: $c6 $df

jr_046_45fd:
	rst $38                                          ; $45fd: $ff
	adc [hl]                                         ; $45fe: $8e
	or $fd                                           ; $45ff: $f6 $fd
	push hl                                          ; $4601: $e5
	cp $5a                                           ; $4602: $fe $5a
	xor l                                            ; $4604: $ad
	push af                                          ; $4605: $f5
	ld a, [$f5ea]                                    ; $4606: $fa $ea $f5
	push de                                          ; $4609: $d5
	ld [$d5aa], a                                    ; $460a: $ea $aa $d5
	push de                                          ; $460d: $d5
	xor d                                            ; $460e: $aa
	xor d                                            ; $460f: $aa
	ld a, c                                          ; $4610: $79
	sbc h                                            ; $4611: $9c
	sbc e                                            ; $4612: $9b
	ld [hl+], a                                      ; $4613: $22
	db $dd                                           ; $4614: $dd
	scf                                              ; $4615: $37
	ld [$f879], a                                    ; $4616: $ea $79 $f8
	sbc c                                            ; $4619: $99
	xor a                                            ; $461a: $af
	sbc a                                            ; $461b: $9f
	ld a, a                                          ; $461c: $7f
	ld c, l                                          ; $461d: $4d
	cp [hl]                                          ; $461e: $be
	cp d                                             ; $461f: $ba
	ld [hl], d                                       ; $4620: $72
	jr z, jr_046_45fd                                ; $4621: $28 $da

	rst $38                                          ; $4623: $ff
	sbc l                                            ; $4624: $9d
	rst AddAOntoHL                                          ; $4625: $ef
	rst SubAFromDE                                          ; $4626: $df
	ld a, e                                          ; $4627: $7b
	ret nz                                           ; $4628: $c0

	sub e                                            ; $4629: $93
	ld a, a                                          ; $462a: $7f
	cp d                                             ; $462b: $ba
	cp [hl]                                          ; $462c: $be
	ld e, l                                          ; $462d: $5d
	ei                                               ; $462e: $fb
	xor $fe                                          ; $462f: $ee $fe
	db $fd                                           ; $4631: $fd
	db $fd                                           ; $4632: $fd
	cp $fa                                           ; $4633: $fe $fa
	push af                                          ; $4635: $f5
	ld a, e                                          ; $4636: $7b
	ret nc                                           ; $4637: $d0

	ld [hl], e                                       ; $4638: $73
	ldh [hDisp1_WX], a                                     ; $4639: $e0 $96
	db $dd                                           ; $463b: $dd
	and d                                            ; $463c: $a2
	xor d                                            ; $463d: $aa
	ld d, l                                          ; $463e: $55
	ld d, a                                          ; $463f: $57
	xor b                                            ; $4640: $a8
	xor a                                            ; $4641: $af
	ld d, c                                          ; $4642: $51
	ld d, a                                          ; $4643: $57
	ld [hl], e                                       ; $4644: $73
	ldh a, [$9d]                                     ; $4645: $f0 $9d
	cp $21                                           ; $4647: $fe $21
	ld [hl], e                                       ; $4649: $73
	jr nz, jr_046_45ea                               ; $464a: $20 $9e

	ld a, $7b                                        ; $464c: $3e $7b
	sub c                                            ; $464e: $91
	rst SubAFromDE                                          ; $464f: $df
	rst $38                                          ; $4650: $ff
	sub [hl]                                         ; $4651: $96
	cp e                                             ; $4652: $bb
	rst FarCall                                          ; $4653: $f7
	sbc c                                            ; $4654: $99
	xor e                                            ; $4655: $ab
	ld d, l                                          ; $4656: $55
	db $fd                                           ; $4657: $fd
	ld a, [hl+]                                      ; $4658: $2a
	rst $38                                          ; $4659: $ff
	ld [hl], l                                       ; $465a: $75
	call c, $8eff                                    ; $465b: $dc $ff $8e
	cp a                                             ; $465e: $bf
	rst $38                                          ; $465f: $ff
	rst $38                                          ; $4660: $ff
	db $fd                                           ; $4661: $fd
	ld a, [$d5ea]                                    ; $4662: $fa $ea $d5
	rst SubAFromHL                                          ; $4665: $d7
	xor c                                            ; $4666: $a9
	db $eb                                           ; $4667: $eb
	ld d, [hl]                                       ; $4668: $56
	push af                                          ; $4669: $f5
	ld [$fffe], a                                    ; $466a: $ea $fe $ff
	pop de                                           ; $466d: $d1
	cp [hl]                                          ; $466e: $be
	ld [hl], a                                       ; $466f: $77
	ret nc                                           ; $4670: $d0

	ld a, [hl]                                       ; $4671: $7e
	add h                                            ; $4672: $84
	ld a, [hl]                                       ; $4673: $7e
	call c, Call_046_7f91                            ; $4674: $dc $91 $7f
	add a                                            ; $4677: $87
	ld a, a                                          ; $4678: $7f
	add a                                            ; $4679: $87
	rst $38                                          ; $467a: $ff
	rra                                              ; $467b: $1f
	ld e, a                                          ; $467c: $5f
	cp a                                             ; $467d: $bf
	xor e                                            ; $467e: $ab
	ld d, l                                          ; $467f: $55
	dec d                                            ; $4680: $15
	ld [$55fa], a                                    ; $4681: $ea $fa $55
	ld a, d                                          ; $4684: $7a
	db $e4                                           ; $4685: $e4
	adc h                                            ; $4686: $8c
	ld a, e                                          ; $4687: $7b
	rst $38                                          ; $4688: $ff
	rst FarCall                                          ; $4689: $f7
	cp $ff                                           ; $468a: $fe $ff
	rst SubAFromDE                                          ; $468c: $df
	cp $fa                                           ; $468d: $fe $fa
	push de                                          ; $468f: $d5
	ld [hl], l                                       ; $4690: $75
	ld a, [$75ea]                                    ; $4691: $fa $ea $75
	rst FarCall                                          ; $4694: $f7
	cp e                                             ; $4695: $bb
	ld a, [$f5f5]                                    ; $4696: $fa $f5 $f5
	ld l, d                                          ; $4699: $6a
	ld h, l                                          ; $469a: $65
	sbc h                                            ; $469b: $9c
	ld a, a                                          ; $469c: $7f
	db $fc                                           ; $469d: $fc
	sub e                                            ; $469e: $93
	ld e, a                                          ; $469f: $5f
	xor e                                            ; $46a0: $ab
	rst $38                                          ; $46a1: $ff
	rla                                              ; $46a2: $17
	ld a, l                                          ; $46a3: $7d
	xor e                                            ; $46a4: $ab
	xor d                                            ; $46a5: $aa
	ld d, l                                          ; $46a6: $55
	ld d, h                                          ; $46a7: $54
	xor e                                            ; $46a8: $ab
	cp a                                             ; $46a9: $bf
	ld d, l                                          ; $46aa: $55
	ld [hl], d                                       ; $46ab: $72
	add h                                            ; $46ac: $84
	ld [hl], a                                       ; $46ad: $77
	ld [hl+], a                                      ; $46ae: $22
	sbc b                                            ; $46af: $98
	ei                                               ; $46b0: $fb
	cp [hl]                                          ; $46b1: $be
	ld a, a                                          ; $46b2: $7f
	ld a, l                                          ; $46b3: $7d
	cp [hl]                                          ; $46b4: $be
	cp d                                             ; $46b5: $ba
	ld a, l                                          ; $46b6: $7d
	ld a, d                                          ; $46b7: $7a
	sbc b                                            ; $46b8: $98
	sbc h                                            ; $46b9: $9c
	ld e, l                                          ; $46ba: $5d
	rst $38                                          ; $46bb: $ff
	ld sp, hl                                        ; $46bc: $f9
	ld a, e                                          ; $46bd: $7b
	ld [hl+], a                                      ; $46be: $22
	sbc b                                            ; $46bf: $98
	push af                                          ; $46c0: $f5
	cp $ab                                           ; $46c1: $fe $ab
	db $fc                                           ; $46c3: $fc
	ld d, a                                          ; $46c4: $57
	ld sp, hl                                        ; $46c5: $f9
	xor a                                            ; $46c6: $af
	halt                                             ; $46c7: $76
	ret nc                                           ; $46c8: $d0

	sbc d                                            ; $46c9: $9a
	rst GetHLinHL                                          ; $46ca: $cf
	ld a, a                                          ; $46cb: $7f
	sbc a                                            ; $46cc: $9f
	rst $38                                          ; $46cd: $ff
	ccf                                              ; $46ce: $3f
	ld [hl], e                                       ; $46cf: $73
	ld [hl], c                                       ; $46d0: $71
	sub [hl]                                         ; $46d1: $96
	rst $38                                          ; $46d2: $ff
	rst SubAFromBC                                          ; $46d3: $e7
	rst $38                                          ; $46d4: $ff
	rst JumpTable                                          ; $46d5: $c7
	rst SubAFromDE                                          ; $46d6: $df
	xor a                                            ; $46d7: $af
	rst SubAFromDE                                          ; $46d8: $df
	cp a                                             ; $46d9: $bf
	cp a                                             ; $46da: $bf
	ld [hl], a                                       ; $46db: $77
	di                                               ; $46dc: $f3
	halt                                             ; $46dd: $76
	cp $80                                           ; $46de: $fe $80
	xor $f7                                          ; $46e0: $ee $f7
	rst SubAFromDE                                          ; $46e2: $df
	rst FarCall                                          ; $46e3: $f7
	xor [hl]                                         ; $46e4: $ae
	db $fd                                           ; $46e5: $fd
	ld c, e                                          ; $46e6: $4b
	add l                                            ; $46e7: $85
	jp hl                                            ; $46e8: $e9


	db $db                                           ; $46e9: $db
	push hl                                          ; $46ea: $e5
	and $b4                                          ; $46eb: $e6 $b4
	rst SubAFromBC                                          ; $46ed: $e7
	ld e, b                                          ; $46ee: $58
	di                                               ; $46ef: $f3
	sbc d                                            ; $46f0: $9a
	rst FarCall                                          ; $46f1: $f7
	ld c, d                                          ; $46f2: $4a
	push af                                          ; $46f3: $f5
	xor c                                            ; $46f4: $a9
	push af                                          ; $46f5: $f5
	adc d                                            ; $46f6: $8a
	ld [$b595], a                                    ; $46f7: $ea $95 $b5
	jp c, $cdfa                                      ; $46fa: $da $fa $cd

	db $fd                                           ; $46fd: $fd
	ldh [c], a                                       ; $46fe: $e2
	ld a, a                                          ; $46ff: $7f
	add h                                            ; $4700: $84
	sub a                                            ; $4701: $97
	db $fd                                           ; $4702: $fd
	ld h, [hl]                                       ; $4703: $66
	ld a, [$5b67]                                    ; $4704: $fa $67 $5b
	cp a                                             ; $4707: $bf
	ei                                               ; $4708: $fb
	rst $38                                          ; $4709: $ff
	ld d, a                                          ; $470a: $57
	cp $96                                           ; $470b: $fe $96
	ld sp, hl                                        ; $470d: $f9
	cp $f6                                           ; $470e: $fe $f6
	rst $38                                          ; $4710: $ff
	pop af                                           ; $4711: $f1
	cp $f6                                           ; $4712: $fe $f6
	db $fd                                           ; $4714: $fd
	db $e4                                           ; $4715: $e4
	ld [hl], a                                       ; $4716: $77
	ld e, e                                          ; $4717: $5b
	adc l                                            ; $4718: $8d
	db $fc                                           ; $4719: $fc
	di                                               ; $471a: $f3
	db $fc                                           ; $471b: $fc
	rst $38                                          ; $471c: $ff
	ret c                                            ; $471d: $d8

	rst $38                                          ; $471e: $ff
	ret z                                            ; $471f: $c8

	rst $38                                          ; $4720: $ff
	ret                                              ; $4721: $c9


	rst $38                                          ; $4722: $ff
	ld c, b                                          ; $4723: $48
	ret z                                            ; $4724: $c8

	db $f4                                           ; $4725: $f4
	ret z                                            ; $4726: $c8

	nop                                              ; $4727: $00
	ret nz                                           ; $4728: $c0

	ld [$71c0], sp                                   ; $4729: $08 $c0 $71
	rla                                              ; $472c: $17
	sbc c                                            ; $472d: $99
	rst $38                                          ; $472e: $ff
	ld bc, $00ff                                     ; $472f: $01 $ff $00
	jr nz, jr_046_4753                               ; $4732: $20 $1f

	ei                                               ; $4734: $fb
	sbc l                                            ; $4735: $9d
	rst $38                                          ; $4736: $ff
	jr jr_046_47a8                                   ; $4737: $18 $6f

	cp $7f                                           ; $4739: $fe $7f
	ld bc, $f06b                                     ; $473b: $01 $6b $f0
	sbc [hl]                                         ; $473e: $9e
	ld b, b                                          ; $473f: $40
	ld a, e                                          ; $4740: $7b
	sbc $9a                                          ; $4741: $de $9a
	ld h, c                                          ; $4743: $61
	rst $38                                          ; $4744: $ff
	nop                                              ; $4745: $00
	or a                                             ; $4746: $b7
	ld hl, sp+$6b                                    ; $4747: $f8 $6b
	ldh a, [$7e]                                     ; $4749: $f0 $7e
	cp $7f                                           ; $474b: $fe $7f
	ld c, $7f                                        ; $474d: $0e $7f
	ld a, [hl-]                                      ; $474f: $3a
	ld a, a                                          ; $4750: $7f
	ld a, [hl+]                                      ; $4751: $2a
	sbc h                                            ; $4752: $9c

jr_046_4753:
	ld a, a                                          ; $4753: $7f
	ld d, d                                          ; $4754: $52
	jr nz, @+$75                                     ; $4755: $20 $73

	ldh a, [$78]                                     ; $4757: $f0 $78
	ld h, l                                          ; $4759: $65
	sbc c                                            ; $475a: $99
	rst $38                                          ; $475b: $ff
	add b                                            ; $475c: $80
	rst $38                                          ; $475d: $ff
	nop                                              ; $475e: $00
	or b                                             ; $475f: $b0
	rst GetHLinHL                                          ; $4760: $cf
	ld h, e                                          ; $4761: $63
	ret nc                                           ; $4762: $d0

	ld a, [hl]                                       ; $4763: $7e
	inc d                                            ; $4764: $14
	sbc [hl]                                         ; $4765: $9e
	bit 7, c                                         ; $4766: $cb $79
	or b                                             ; $4768: $b0
	sbc h                                            ; $4769: $9c
	db $eb                                           ; $476a: $eb
	rra                                              ; $476b: $1f
	rrca                                             ; $476c: $0f
	ld l, e                                          ; $476d: $6b
	ldh [hDisp1_WX], a                                     ; $476e: $e0 $96
	ld [hl], c                                       ; $4770: $71
	rst $38                                          ; $4771: $ff
	or d                                             ; $4772: $b2
	rst $38                                          ; $4773: $ff
	add c                                            ; $4774: $81
	rst $38                                          ; $4775: $ff
	ld hl, sp-$80                                    ; $4776: $f8 $80
	ld [hl], b                                       ; $4778: $70
	ld [hl], e                                       ; $4779: $73
	ldh a, [$7d]                                     ; $477a: $f0 $7d
	sbc h                                            ; $477c: $9c
	sbc [hl]                                         ; $477d: $9e
	ld [hl], h                                       ; $477e: $74
	ld a, e                                          ; $477f: $7b
	db $fc                                           ; $4780: $fc
	sbc d                                            ; $4781: $9a
	call c, $fffc                                    ; $4782: $dc $fc $ff
	ld [bc], a                                       ; $4785: $02
	ld a, [hl]                                       ; $4786: $7e
	ld [hl], e                                       ; $4787: $73

jr_046_4788:
	ldh a, [$9e]                                     ; $4788: $f0 $9e
	ld h, b                                          ; $478a: $60
	ld [hl], e                                       ; $478b: $73
	cp $9d                                           ; $478c: $fe $9d
	ldh [$60], a                                     ; $478e: $e0 $60
	ld h, a                                          ; $4790: $67
	sub b                                            ; $4791: $90
	ld [hl], e                                       ; $4792: $73
	cp $9b                                           ; $4793: $fe $9b
	db $fd                                           ; $4795: $fd
	nop                                              ; $4796: $00
	db $10                                           ; $4797: $10
	ldh [rOCPD], a                                   ; $4798: $e0 $6b
	ldh a, [$6c]                                     ; $479a: $f0 $6c
	ret nz                                           ; $479c: $c0

	ld a, h                                          ; $479d: $7c

Call_046_479e:
	and $9e                                          ; $479e: $e6 $9e
	ccf                                              ; $47a0: $3f
	cp $9c                                           ; $47a1: $fe $9c
	inc bc                                           ; $47a3: $03
	nop                                              ; $47a4: $00
	rlca                                             ; $47a5: $07
	ld [hl], c                                       ; $47a6: $71
	adc d                                            ; $47a7: $8a

jr_046_47a8:
	ld a, [hl]                                       ; $47a8: $7e
	ret nc                                           ; $47a9: $d0

	ld a, h                                          ; $47aa: $7c
	jp $c798                                         ; $47ab: $c3 $98 $c7


	add hl, bc                                       ; $47ae: $09
	rra                                              ; $47af: $1f
	inc sp                                           ; $47b0: $33
	rst $38                                          ; $47b1: $ff
	rlca                                             ; $47b2: $07
	rst $38                                          ; $47b3: $ff
	ld a, d                                          ; $47b4: $7a
	ret nc                                           ; $47b5: $d0

	adc [hl]                                         ; $47b6: $8e
	cp $3e                                           ; $47b7: $fe $3e
	db $fd                                           ; $47b9: $fd
	ld a, l                                          ; $47ba: $7d
	ld hl, sp-$08                                    ; $47bb: $f8 $f8
	pop af                                           ; $47bd: $f1
	ldh a, [$e0]                                     ; $47be: $f0 $e0
	ldh [$80], a                                     ; $47c0: $e0 $80
	ret nz                                           ; $47c2: $c0

	nop                                              ; $47c3: $00
	cp a                                             ; $47c4: $bf
	ld d, a                                          ; $47c5: $57
	ld a, a                                          ; $47c6: $7f
	xor e                                            ; $47c7: $ab
	ld a, e                                          ; $47c8: $7b
	call z, $bd7f                                    ; $47c9: $cc $7f $bd
	sbc [hl]                                         ; $47cc: $9e
	pop hl                                           ; $47cd: $e1
	ei                                               ; $47ce: $fb
	sub e                                            ; $47cf: $93
	rst FarCall                                          ; $47d0: $f7
	ld e, a                                          ; $47d1: $5f
	rst FarCall                                          ; $47d2: $f7
	cp [hl]                                          ; $47d3: $be
	rst FarCall                                          ; $47d4: $f7
	ld c, l                                          ; $47d5: $4d
	inc b                                            ; $47d6: $04
	db $fc                                           ; $47d7: $fc
	inc b                                            ; $47d8: $04
	call z, $0c04                                    ; $47d9: $cc $04 $0c
	ld [hl], a                                       ; $47dc: $77
	cp $8d                                           ; $47dd: $fe $8d
	ei                                               ; $47df: $fb
	ld e, l                                          ; $47e0: $5d
	ld a, [$f9ad]                                    ; $47e1: $fa $ad $f9
	ld d, [hl]                                       ; $47e4: $56
	ld bc, $0106                                     ; $47e5: $01 $06 $01
	ld [bc], a                                       ; $47e8: $02
	ld bc, $0003                                     ; $47e9: $01 $03 $00
	ld bc, $0100                                     ; $47ec: $01 $00 $01
	cp a                                             ; $47ef: $bf
	scf                                              ; $47f0: $37
	ld a, e                                          ; $47f1: $7b
	jr nc, jr_046_4788                               ; $47f2: $30 $94

	ld de, $9d58                                     ; $47f4: $11 $58 $9d
	dec sp                                           ; $47f7: $3b
	ld c, l                                          ; $47f8: $4d
	ld l, a                                          ; $47f9: $6f
	adc h                                            ; $47fa: $8c
	ld e, [hl]                                       ; $47fb: $5e
	xor l                                            ; $47fc: $ad
	dec d                                            ; $47fd: $15
	and $dd                                          ; $47fe: $e6 $dd
	rst $38                                          ; $4800: $ff
	ld a, [hl]                                       ; $4801: $7e
	rst SubAFromHL                                          ; $4802: $d7
	ld a, h                                          ; $4803: $7c
	di                                               ; $4804: $f3
	add h                                            ; $4805: $84
	ldh [c], a                                       ; $4806: $e2
	rst $38                                          ; $4807: $ff
	jp nz, $0ae7                                     ; $4808: $c2 $e7 $0a

	rst SubAFromHL                                          ; $480b: $d7
	ld e, $23                                        ; $480c: $1e $23
	call nz, $07ec                                   ; $480e: $c4 $ec $07
	call z, $2c46                                    ; $4811: $cc $46 $2c
	dec [hl]                                         ; $4814: $35
	ld c, h                                          ; $4815: $4c
	push hl                                          ; $4816: $e5
	ld c, $72                                        ; $4817: $0e $72
	dec c                                            ; $4819: $0d
	db $d3                                           ; $481a: $d3
	inc l                                            ; $481b: $2c
	ld a, d                                          ; $481c: $7a
	dec b                                            ; $481d: $05
	dec d                                            ; $481e: $15
	jp z, Jump_046_792a                              ; $481f: $ca $2a $79

	adc b                                            ; $4822: $88
	ld a, h                                          ; $4823: $7c
	xor h                                            ; $4824: $ac
	ld a, h                                          ; $4825: $7c
	add h                                            ; $4826: $84
	ld a, d                                          ; $4827: $7a
	inc l                                            ; $4828: $2c
	sub [hl]                                         ; $4829: $96
	and d                                            ; $482a: $a2
	db $fd                                           ; $482b: $fd
	ld [bc], a                                       ; $482c: $02
	ld d, l                                          ; $482d: $55
	xor d                                            ; $482e: $aa
	ld b, l                                          ; $482f: $45
	db $10                                           ; $4830: $10
	ld d, a                                          ; $4831: $57
	xor b                                            ; $4832: $a8
	ld [hl], a                                       ; $4833: $77
	ld c, h                                          ; $4834: $4c
	sbc [hl]                                         ; $4835: $9e
	cp a                                             ; $4836: $bf
	halt                                             ; $4837: $76
	sub $ff                                          ; $4838: $d6 $ff
	sbc d                                            ; $483a: $9a
	and h                                            ; $483b: $a4
	ld d, l                                          ; $483c: $55
	nop                                              ; $483d: $00
	ld a, [hl+]                                      ; $483e: $2a
	ret nc                                           ; $483f: $d0

	ld l, a                                          ; $4840: $6f
	inc a                                            ; $4841: $3c
	ld [hl], e                                       ; $4842: $73
	ldh a, [hDisp1_OBP0]                                     ; $4843: $f0 $93
	jr nc, jr_046_4887                               ; $4845: $30 $40

	nop                                              ; $4847: $00
	add b                                            ; $4848: $80
	nop                                              ; $4849: $00
	ld d, b                                          ; $484a: $50
	nop                                              ; $484b: $00
	ld [$5500], a                                    ; $484c: $ea $00 $55
	nop                                              ; $484f: $00
	xor d                                            ; $4850: $aa
	ld [hl], a                                       ; $4851: $77
	ldh a, [$7f]                                     ; $4852: $f0 $7f
	pop af                                           ; $4854: $f1
	ld hl, sp-$62                                    ; $4855: $f8 $9e
	and b                                            ; $4857: $a0
	ld a, e                                          ; $4858: $7b
	db $ec                                           ; $4859: $ec
	ldh [$c3], a                                     ; $485a: $e0 $c3
	sbc [hl]                                         ; $485c: $9e
	rla                                              ; $485d: $17
	ldh a, [c]                                       ; $485e: $f2
	halt                                             ; $485f: $76
	cp e                                             ; $4860: $bb
	sbc [hl]                                         ; $4861: $9e
	ld [bc], a                                       ; $4862: $02
	ld a, [$237f]                                    ; $4863: $fa $7f $23
	sbc [hl]                                         ; $4866: $9e
	ld a, [bc]                                       ; $4867: $0a
	ld a, e                                          ; $4868: $7b
	and b                                            ; $4869: $a0
	rst SubAFromDE                                          ; $486a: $df
	rlca                                             ; $486b: $07
	sub [hl]                                         ; $486c: $96
	xor e                                            ; $486d: $ab
	rla                                              ; $486e: $17
	dec l                                            ; $486f: $2d
	ld [bc], a                                       ; $4870: $02
	ld d, [hl]                                       ; $4871: $56
	nop                                              ; $4872: $00
	xor a                                            ; $4873: $af
	nop                                              ; $4874: $00
	ld d, a                                          ; $4875: $57
	ld a, e                                          ; $4876: $7b
	ldh [c], a                                       ; $4877: $e2
	sbc l                                            ; $4878: $9d
	ld e, a                                          ; $4879: $5f
	nop                                              ; $487a: $00

Call_046_487b:
	ld [hl], a                                       ; $487b: $77
	ld [hl+], a                                      ; $487c: $22
	ld a, a                                          ; $487d: $7f
	ld c, h                                          ; $487e: $4c
	ld l, [hl]                                       ; $487f: $6e
	sbc d                                            ; $4880: $9a
	ld a, e                                          ; $4881: $7b
	ld e, h                                          ; $4882: $5c
	sub l                                            ; $4883: $95
	ld [bc], a                                       ; $4884: $02
	cp a                                             ; $4885: $bf
	ld b, b                                          ; $4886: $40

jr_046_4887:
	ld l, $d1                                        ; $4887: $2e $d1
	rst SubAFromHL                                          ; $4889: $d7
	jr z, @+$01                                      ; $488a: $28 $ff

	nop                                              ; $488c: $00
	cp $79                                           ; $488d: $fe $79
	db $fc                                           ; $488f: $fc
	ld a, a                                          ; $4890: $7f
	cp $95                                           ; $4891: $fe $95
	ld a, a                                          ; $4893: $7f
	add b                                            ; $4894: $80
	ld d, l                                          ; $4895: $55
	xor d                                            ; $4896: $aa
	xor [hl]                                         ; $4897: $ae
	ld d, c                                          ; $4898: $51
	ld sp, hl                                        ; $4899: $f9
	ld b, $fe                                        ; $489a: $06 $fe
	ld bc, $326f                                     ; $489c: $01 $6f $32
	ld a, a                                          ; $489f: $7f
	cp $99                                           ; $48a0: $fe $99
	call $be3e                                       ; $48a2: $cd $3e $be
	ld e, a                                          ; $48a5: $5f
	ld e, [hl]                                       ; $48a6: $5e
	cp a                                             ; $48a7: $bf
	ld h, a                                          ; $48a8: $67
	ldh a, [c]                                       ; $48a9: $f2
	ld a, a                                          ; $48aa: $7f
	cp $8d                                           ; $48ab: $fe $8d
	sbc $21                                          ; $48ad: $de $21
	xor d                                            ; $48af: $aa
	ld d, l                                          ; $48b0: $55
	ld b, l                                          ; $48b1: $45
	cp a                                             ; $48b2: $bf
	ld a, [$f107]                                    ; $48b3: $fa $07 $f1
	inc bc                                           ; $48b6: $03
	or $0f                                           ; $48b7: $f6 $0f
	db $db                                           ; $48b9: $db
	rlca                                             ; $48ba: $07
	rst AddAOntoHL                                          ; $48bb: $ef
	rra                                              ; $48bc: $1f
	rst $38                                          ; $48bd: $ff
	ld b, $79                                        ; $48be: $06 $79
	ret nz                                           ; $48c0: $c0

	sbc h                                            ; $48c1: $9c
	and h                                            ; $48c2: $a4
	rst $38                                          ; $48c3: $ff
	ld a, [bc]                                       ; $48c4: $0a
	ld a, e                                          ; $48c5: $7b
	ld hl, sp-$6c                                    ; $48c6: $f8 $94
	and c                                            ; $48c8: $a1
	rst $38                                          ; $48c9: $ff
	ld e, b                                          ; $48ca: $58
	rst $38                                          ; $48cb: $ff
	xor h                                            ; $48cc: $ac
	ld a, [$5e07]                                    ; $48cd: $fa $07 $5e
	and e                                            ; $48d0: $a3
	xor d                                            ; $48d1: $aa
	ld d, a                                          ; $48d2: $57
	ld h, a                                          ; $48d3: $67
	db $fc                                           ; $48d4: $fc
	ld h, a                                          ; $48d5: $67
	sub [hl]                                         ; $48d6: $96
	sub l                                            ; $48d7: $95
	push af                                          ; $48d8: $f5
	ld a, [bc]                                       ; $48d9: $0a
	xor d                                            ; $48da: $aa
	ld d, l                                          ; $48db: $55
	ld a, a                                          ; $48dc: $7f
	add b                                            ; $48dd: $80
	db $eb                                           ; $48de: $eb
	inc d                                            ; $48df: $14
	rst SubAFromDE                                          ; $48e0: $df
	jr nz, jr_046_495a                               ; $48e1: $20 $77

	ldh a, [c]                                       ; $48e3: $f2
	sbc c                                            ; $48e4: $99
	ld a, [$5505]                                    ; $48e5: $fa $05 $55
	xor d                                            ; $48e8: $aa
	xor a                                            ; $48e9: $af
	ld d, b                                          ; $48ea: $50
	ld h, a                                          ; $48eb: $67
	xor [hl]                                         ; $48ec: $ae
	ld a, a                                          ; $48ed: $7f
	db $f4                                           ; $48ee: $f4
	sbc l                                            ; $48ef: $9d
	ccf                                              ; $48f0: $3f
	ret nz                                           ; $48f1: $c0

	ld h, a                                          ; $48f2: $67
	db $f4                                           ; $48f3: $f4
	ld e, a                                          ; $48f4: $5f
	cp $7e                                           ; $48f5: $fe $7e
	ret nc                                           ; $48f7: $d0

	sbc [hl]                                         ; $48f8: $9e
	push af                                          ; $48f9: $f5
	ld h, c                                          ; $48fa: $61
	db $f4                                           ; $48fb: $f4
	ld a, [hl]                                       ; $48fc: $7e
	ret z                                            ; $48fd: $c8

	sub [hl]                                         ; $48fe: $96
	ld d, h                                          ; $48ff: $54
	nop                                              ; $4900: $00
	xor b                                            ; $4901: $a8
	nop                                              ; $4902: $00
	ld [hl], h                                       ; $4903: $74
	nop                                              ; $4904: $00
	ld l, b                                          ; $4905: $68
	add b                                            ; $4906: $80
	push de                                          ; $4907: $d5
	ld a, e                                          ; $4908: $7b
	add sp, $7f                                      ; $4909: $e8 $7f
	db $f4                                           ; $490b: $f4
	ld a, [hl]                                       ; $490c: $7e
	or b                                             ; $490d: $b0
	ei                                               ; $490e: $fb
	ld a, [hl]                                       ; $490f: $7e
	ccf                                              ; $4910: $3f
	halt                                             ; $4911: $76
	cp h                                             ; $4912: $bc
	ld sp, hl                                        ; $4913: $f9
	ld a, a                                          ; $4914: $7f
	ld [$809e], a                                    ; $4915: $ea $9e $80
	ld e, d                                          ; $4918: $5a
	and h                                            ; $4919: $a4
	jp hl                                            ; $491a: $e9


	ld a, [hl]                                       ; $491b: $7e
	db $ec                                           ; $491c: $ec
	di                                               ; $491d: $f3
	ld a, a                                          ; $491e: $7f
	and h                                            ; $491f: $a4
	sbc [hl]                                         ; $4920: $9e
	dec d                                            ; $4921: $15
	ld a, e                                          ; $4922: $7b
	db $ec                                           ; $4923: $ec
	ld a, [hl]                                       ; $4924: $7e
	call nc, $089c                                   ; $4925: $d4 $9c $08
	inc b                                            ; $4928: $04
	ld bc, $c67a                                     ; $4929: $01 $7a $c6
	sbc [hl]                                         ; $492c: $9e
	dec b                                            ; $492d: $05
	ld a, e                                          ; $492e: $7b
	ldh a, [$7a]                                     ; $492f: $f0 $7a
	call c, $c87a                                    ; $4931: $dc $7a $c8
	sub [hl]                                         ; $4934: $96
	xor [hl]                                         ; $4935: $ae
	ld bc, $035d                                     ; $4936: $01 $5d $03
	cp d                                             ; $4939: $ba
	rlca                                             ; $493a: $07
	ld [hl], c                                       ; $493b: $71
	rrca                                             ; $493c: $0f
	xor d                                            ; $493d: $aa
	ld a, e                                          ; $493e: $7b
	db $f4                                           ; $493f: $f4
	ld a, a                                          ; $4940: $7f
	and [hl]                                         ; $4941: $a6
	sbc e                                            ; $4942: $9b
	ccf                                              ; $4943: $3f
	dec b                                            ; $4944: $05
	rst $38                                          ; $4945: $ff
	ld [hl-], a                                      ; $4946: $32
	ld [hl], h                                       ; $4947: $74
	sub $9c                                          ; $4948: $d6 $9c
	ld a, a                                          ; $494a: $7f
	call nz, Call_046_7ba8                           ; $494b: $c4 $a8 $7b
	call nc, $ff9c                                   ; $494e: $d4 $9c $ff
	dec b                                            ; $4951: $05
	rst $38                                          ; $4952: $ff
	ld a, d                                          ; $4953: $7a
	ld e, $9a                                        ; $4954: $1e $9a
	cp a                                             ; $4956: $bf
	db $e4                                           ; $4957: $e4
	db $fd                                           ; $4958: $fd
	ld b, d                                          ; $4959: $42

jr_046_495a:
	cp a                                             ; $495a: $bf
	ld a, c                                          ; $495b: $79
	ld a, [bc]                                       ; $495c: $0a
	ld a, e                                          ; $495d: $7b
	add sp, -$21                                     ; $495e: $e8 $df
	cp $8c                                           ; $4960: $fe $8c
	dec b                                            ; $4962: $05
	push af                                          ; $4963: $f5
	dec bc                                           ; $4964: $0b
	rst AddAOntoHL                                          ; $4965: $ef
	inc e                                            ; $4966: $1c
	rst FarCall                                          ; $4967: $f7
	ld l, h                                          ; $4968: $6c
	db $dd                                           ; $4969: $dd
	ld l, a                                          ; $496a: $6f
	nop                                              ; $496b: $00
	ld d, l                                          ; $496c: $55
	rst $38                                          ; $496d: $ff
	nop                                              ; $496e: $00
	ret c                                            ; $496f: $d8

	inc hl                                           ; $4970: $23
	ld a, a                                          ; $4971: $7f
	rst $38                                          ; $4972: $ff
	rst FarCall                                          ; $4973: $f7
	db $eb                                           ; $4974: $eb
	db $fd                                           ; $4975: $fd
	ld a, l                                          ; $4976: $7d
	ld l, h                                          ; $4977: $6c
	ld a, e                                          ; $4978: $7b
	ldh [$9d], a                                     ; $4979: $e0 $9d
	ld [hl+], a                                      ; $497b: $22
	add b                                            ; $497c: $80
	ld [hl], b                                       ; $497d: $70
	ld sp, $99fb                                     ; $497e: $31 $fb $99
	rlca                                             ; $4981: $07
	ld bc, $78f9                                     ; $4982: $01 $f9 $78
	ccf                                              ; $4985: $3f
	db $f4                                           ; $4986: $f4
	ld e, a                                          ; $4987: $5f
	ldh a, [$7a]                                     ; $4988: $f0 $7a
	ld [hl], c                                       ; $498a: $71
	ld [hl], e                                       ; $498b: $73
	ldh [c], a                                       ; $498c: $e2
	ld h, a                                          ; $498d: $67
	ldh a, [$7e]                                     ; $498e: $f0 $7e
	add sp, $7e                                      ; $4990: $e8 $7e
	ldh a, [$99]                                     ; $4992: $f0 $99
	xor e                                            ; $4994: $ab
	ld d, h                                          ; $4995: $54
	ld d, l                                          ; $4996: $55
	xor d                                            ; $4997: $aa
	xor d                                            ; $4998: $aa
	ld d, l                                          ; $4999: $55
	ld l, a                                          ; $499a: $6f
	db $fc                                           ; $499b: $fc
	ld [hl], l                                       ; $499c: $75
	sub [hl]                                         ; $499d: $96
	ld a, a                                          ; $499e: $7f
	push hl                                          ; $499f: $e5
	ld a, [hl]                                       ; $49a0: $7e
	ld e, [hl]                                       ; $49a1: $5e
	sbc l                                            ; $49a2: $9d
	ld [$6f15], a                                    ; $49a3: $ea $15 $6f
	ldh a, [$66]                                     ; $49a6: $f0 $66
	ldh [rPCM34], a                                  ; $49a8: $e0 $77
	ret c                                            ; $49aa: $d8

	ld d, a                                          ; $49ab: $57
	ldh a, [rPCM12]                                  ; $49ac: $f0 $76
	xor h                                            ; $49ae: $ac
	ld d, a                                          ; $49af: $57
	ldh a, [$7f]                                     ; $49b0: $f0 $7f
	cp $98                                           ; $49b2: $fe $98
	ld b, e                                          ; $49b4: $43
	cp h                                             ; $49b5: $bc
	add b                                            ; $49b6: $80
	ld a, a                                          ; $49b7: $7f
	nop                                              ; $49b8: $00
	rst $38                                          ; $49b9: $ff
	ld [$c07a], a                                    ; $49ba: $ea $7a $c0
	sbc [hl]                                         ; $49bd: $9e
	ld a, [$b47a]                                    ; $49be: $fa $7a $b4
	sbc l                                            ; $49c1: $9d
	cp $00                                           ; $49c2: $fe $00
	ld [hl], a                                       ; $49c4: $77

jr_046_49c5:
	cp b                                             ; $49c5: $b8
	sbc h                                            ; $49c6: $9c
	ld b, a                                          ; $49c7: $47
	cp b                                             ; $49c8: $b8
	nop                                              ; $49c9: $00
	ld [hl], e                                       ; $49ca: $73
	inc e                                            ; $49cb: $1c
	ld a, a                                          ; $49cc: $7f
	inc l                                            ; $49cd: $2c
	sub a                                            ; $49ce: $97
	or d                                             ; $49cf: $b2
	dec c                                            ; $49d0: $0d
	rst SubAFromBC                                          ; $49d1: $e7
	jr jr_046_49c5                                   ; $49d2: $18 $f1

	nop                                              ; $49d4: $00
	pop de                                           ; $49d5: $d1
	ld h, $6e                                        ; $49d6: $26 $6e
	add $75                                          ; $49d8: $c6 $75
	ld h, h                                          ; $49da: $64
	ld a, a                                          ; $49db: $7f
	db $fc                                           ; $49dc: $fc
	ld a, [hl]                                       ; $49dd: $7e
	ld a, b                                          ; $49de: $78
	ld a, a                                          ; $49df: $7f
	cp $fb                                           ; $49e0: $fe $fb
	ld l, a                                          ; $49e2: $6f
	ldh a, [$71]                                     ; $49e3: $f0 $71
	ld b, b                                          ; $49e5: $40
	ld a, e                                          ; $49e6: $7b
	db $10                                           ; $49e7: $10
	sbc [hl]                                         ; $49e8: $9e
	ld a, [hl+]                                      ; $49e9: $2a
	ld [hl], a                                       ; $49ea: $77
	ldh a, [$9c]                                     ; $49eb: $f0 $9c
	ld bc, $0778                                     ; $49ed: $01 $78 $07
	ld l, a                                          ; $49f0: $6f
	ldh a, [$7e]                                     ; $49f1: $f0 $7e
	sbc e                                            ; $49f3: $9b
	ld [hl], a                                       ; $49f4: $77
	db $e4                                           ; $49f5: $e4
	sub [hl]                                         ; $49f6: $96
	ld a, [bc]                                       ; $49f7: $0a
	ldh [$7f], a                                     ; $49f8: $e0 $7f
	add b                                            ; $49fa: $80
	cp $01                                           ; $49fb: $fe $01
	rst FarCall                                          ; $49fd: $f7
	ld [$7a0a], sp                                   ; $49fe: $08 $0a $7a
	ret nz                                           ; $4a01: $c0

	ld a, a                                          ; $4a02: $7f
	ldh a, [$7d]                                     ; $4a03: $f0 $7d
	and h                                            ; $4a05: $a4
	ld a, l                                          ; $4a06: $7d
	and b                                            ; $4a07: $a0
	ld a, a                                          ; $4a08: $7f
	and b                                            ; $4a09: $a0
	ld [hl], a                                       ; $4a0a: $77
	sbc [hl]                                         ; $4a0b: $9e
	sub a                                            ; $4a0c: $97
	jp c, $ed25                                      ; $4a0d: $da $25 $ed

	ld a, [de]                                       ; $4a10: $1a
	add $3d                                          ; $4a11: $c6 $3d
	db $e3                                           ; $4a13: $e3
	inc e                                            ; $4a14: $1c
	ld h, a                                          ; $4a15: $67
	ld a, d                                          ; $4a16: $7a
	sub e                                            ; $4a17: $93
	push af                                          ; $4a18: $f5
	ei                                               ; $4a19: $fb
	xor a                                            ; $4a1a: $af
	rra                                              ; $4a1b: $1f
	ld d, l                                          ; $4a1c: $55
	nop                                              ; $4a1d: $00
	xor c                                            ; $4a1e: $a9
	nop                                              ; $4a1f: $00
	rlca                                             ; $4a20: $07
	stop                                             ; $4a21: $10 $00
	ld e, [hl]                                       ; $4a23: $5e
	ld a, d                                          ; $4a24: $7a
	ld d, e                                          ; $4a25: $53
	sbc [hl]                                         ; $4a26: $9e
	ld e, l                                          ; $4a27: $5d
	ld a, c                                          ; $4a28: $79
	add b                                            ; $4a29: $80
	sbc c                                            ; $4a2a: $99
	db $fd                                           ; $4a2b: $fd
	or l                                             ; $4a2c: $b5
	rst $38                                          ; $4a2d: $ff
	ld a, a                                          ; $4a2e: $7f
	nop                                              ; $4a2f: $00
	ldh [$79], a                                     ; $4a30: $e0 $79
	sub h                                            ; $4a32: $94
	sbc l                                            ; $4a33: $9d
	nop                                              ; $4a34: $00
	ld h, a                                          ; $4a35: $67
	ld a, c                                          ; $4a36: $79
	ld [hl], c                                       ; $4a37: $71
	adc [hl]                                         ; $4a38: $8e
	db $dd                                           ; $4a39: $dd
	rst $38                                          ; $4a3a: $ff
	rst AddAOntoHL                                          ; $4a3b: $ef
	rst $38                                          ; $4a3c: $ff
	db $fd                                           ; $4a3d: $fd
	rst SubAFromDE                                          ; $4a3e: $df
	ld l, e                                          ; $4a3f: $6b
	di                                               ; $4a40: $f3
	ld bc, $01ff                                     ; $4a41: $01 $ff $01
	add e                                            ; $4a44: $83
	rst $38                                          ; $4a45: $ff
	inc bc                                           ; $4a46: $03
	db $fd                                           ; $4a47: $fd
	rst $38                                          ; $4a48: $ff
	db $fc                                           ; $4a49: $fc
	db $d3                                           ; $4a4a: $d3
	rst $38                                          ; $4a4b: $ff
	ld a, a                                          ; $4a4c: $7f
	db $db                                           ; $4a4d: $db
	sub b                                            ; $4a4e: $90
	rst AddAOntoHL                                          ; $4a4f: $ef
	rst SubAFromBC                                          ; $4a50: $e7
	rst AddAOntoHL                                          ; $4a51: $ef
	rst JumpTable                                          ; $4a52: $c7
	rst $38                                          ; $4a53: $ff
	xor a                                            ; $4a54: $af
	rst $38                                          ; $4a55: $ff
	rst GetHLinHL                                          ; $4a56: $cf
	rst AddAOntoHL                                          ; $4a57: $ef
	ld l, a                                          ; $4a58: $6f
	rst SubAFromBC                                          ; $4a59: $e7
	rst GetHLinHL                                          ; $4a5a: $cf
	rst SubAFromBC                                          ; $4a5b: $e7
	rst AddAOntoHL                                          ; $4a5c: $ef
	ld a, b                                          ; $4a5d: $78
	ld a, e                                          ; $4a5e: $7b
	call $ffd5                                       ; $4a5f: $cd $d5 $ff
	ld a, l                                          ; $4a62: $7d
	db $fc                                           ; $4a63: $fc
	db $d3                                           ; $4a64: $d3
	rst $38                                          ; $4a65: $ff
	halt                                             ; $4a66: $76
	db $fc                                           ; $4a67: $fc
	ld a, h                                          ; $4a68: $7c
	ld e, [hl]                                       ; $4a69: $5e
	ld h, [hl]                                       ; $4a6a: $66
	ret nz                                           ; $4a6b: $c0

	sbc l                                            ; $4a6c: $9d
	db $10                                           ; $4a6d: $10
	rst AddAOntoHL                                          ; $4a6e: $ef
	ld h, [hl]                                       ; $4a6f: $66
	cp b                                             ; $4a70: $b8
	ld l, a                                          ; $4a71: $6f
	db $fc                                           ; $4a72: $fc
	sbc l                                            ; $4a73: $9d
	dec b                                            ; $4a74: $05
	ld a, [$f04f]                                    ; $4a75: $fa $4f $f0
	sbc l                                            ; $4a78: $9d
	ld b, h                                          ; $4a79: $44
	cp e                                             ; $4a7a: $bb
	ld [hl], a                                       ; $4a7b: $77
	ld hl, sp-$62                                    ; $4a7c: $f8 $9e
	xor b                                            ; $4a7e: $a8
	ld a, c                                          ; $4a7f: $79
	ld e, b                                          ; $4a80: $58
	ld h, a                                          ; $4a81: $67
	db $ec                                           ; $4a82: $ec
	sbc e                                            ; $4a83: $9b
	add d                                            ; $4a84: $82
	ld a, l                                          ; $4a85: $7d
	ld b, l                                          ; $4a86: $45
	cp d                                             ; $4a87: $ba
	ld d, [hl]                                       ; $4a88: $56
	add b                                            ; $4a89: $80
	ld a, a                                          ; $4a8a: $7f
	db $fc                                           ; $4a8b: $fc
	ld [hl], a                                       ; $4a8c: $77
	ld a, [hl-]                                      ; $4a8d: $3a
	sbc l                                            ; $4a8e: $9d
	ld d, h                                          ; $4a8f: $54
	xor e                                            ; $4a90: $ab
	ld h, a                                          ; $4a91: $67
	ldh a, [$7c]                                     ; $4a92: $f0 $7c
	db $e4                                           ; $4a94: $e4
	sbc [hl]                                         ; $4a95: $9e
	ld sp, hl                                        ; $4a96: $f9
	ld a, e                                          ; $4a97: $7b
	ldh a, [$9d]                                     ; $4a98: $f0 $9d
	ld [hl], a                                       ; $4a9a: $77
	adc b                                            ; $4a9b: $88
	ld h, a                                          ; $4a9c: $67
	ldh a, [$67]                                     ; $4a9d: $f0 $67
	jr jr_046_4af0                                   ; $4a9f: $18 $4f

	ldh a, [$7e]                                     ; $4aa1: $f0 $7e
	add sp, $67                                      ; $4aa3: $e8 $67
	ld a, b                                          ; $4aa5: $78
	ld l, a                                          ; $4aa6: $6f
	ldh a, [$7f]                                     ; $4aa7: $f0 $7f
	inc d                                            ; $4aa9: $14
	sbc l                                            ; $4aaa: $9d
	xor $11                                          ; $4aab: $ee $11
	ld [hl], a                                       ; $4aad: $77
	ldh [$7f], a                                     ; $4aae: $e0 $7f
	and h                                            ; $4ab0: $a4
	ld h, c                                          ; $4ab1: $61
	jr nz, jr_046_4b0e                               ; $4ab2: $20 $5a

	jr nc, jr_046_4b34                               ; $4ab4: $30 $7e

	cp b                                             ; $4ab6: $b8
	sbc l                                            ; $4ab7: $9d
	push de                                          ; $4ab8: $d5
	ld a, [hl+]                                      ; $4ab9: $2a
	ld h, a                                          ; $4aba: $67
	ret nz                                           ; $4abb: $c0

	ld a, a                                          ; $4abc: $7f
	db $f4                                           ; $4abd: $f4
	ld a, h                                          ; $4abe: $7c
	ld l, h                                          ; $4abf: $6c
	ld e, a                                          ; $4ac0: $5f
	add h                                            ; $4ac1: $84
	sbc e                                            ; $4ac2: $9b
	ld d, c                                          ; $4ac3: $51
	xor [hl]                                         ; $4ac4: $ae
	ld a, [bc]                                       ; $4ac5: $0a
	push af                                          ; $4ac6: $f5
	ld e, a                                          ; $4ac7: $5f
	db $f4                                           ; $4ac8: $f4
	ld a, [hl]                                       ; $4ac9: $7e
	sbc a                                            ; $4aca: $9f
	sub e                                            ; $4acb: $93
	ld b, b                                          ; $4acc: $40
	cp a                                             ; $4acd: $bf
	xor a                                            ; $4ace: $af
	ld d, b                                          ; $4acf: $50
	ld a, a                                          ; $4ad0: $7f
	add b                                            ; $4ad1: $80
	cp a                                             ; $4ad2: $bf
	ld b, b                                          ; $4ad3: $40
	ld e, a                                          ; $4ad4: $5f
	and b                                            ; $4ad5: $a0
	and d                                            ; $4ad6: $a2
	ld e, l                                          ; $4ad7: $5d
	ld [hl], a                                       ; $4ad8: $77
	and b                                            ; $4ad9: $a0
	ld a, a                                          ; $4ada: $7f
	or b                                             ; $4adb: $b0
	sub e                                            ; $4adc: $93
	pop de                                           ; $4add: $d1
	cpl                                              ; $4ade: $2f
	push hl                                          ; $4adf: $e5
	dec de                                           ; $4ae0: $1b
	xor c                                            ; $4ae1: $a9
	ld d, a                                          ; $4ae2: $57
	ld b, c                                          ; $4ae3: $41
	cp a                                             ; $4ae4: $bf
	xor c                                            ; $4ae5: $a9
	ld d, a                                          ; $4ae6: $57
	ld d, l                                          ; $4ae7: $55
	xor e                                            ; $4ae8: $ab
	ld [hl], a                                       ; $4ae9: $77
	db $fc                                           ; $4aea: $fc
	sbc $ff                                          ; $4aeb: $de $ff
	sbc h                                            ; $4aed: $9c
	cp a                                             ; $4aee: $bf
	rst $38                                          ; $4aef: $ff

jr_046_4af0:
	ld e, [hl]                                       ; $4af0: $5e
	ld a, d                                          ; $4af1: $7a
	ret nc                                           ; $4af2: $d0

	ld a, h                                          ; $4af3: $7c
	ld h, [hl]                                       ; $4af4: $66
	ld a, a                                          ; $4af5: $7f
	db $f4                                           ; $4af6: $f4
	ld a, a                                          ; $4af7: $7f
	ld b, h                                          ; $4af8: $44
	sbc l                                            ; $4af9: $9d
	add e                                            ; $4afa: $83
	rst AddAOntoHL                                          ; $4afb: $ef
	ld a, d                                          ; $4afc: $7a
	pop bc                                           ; $4afd: $c1
	sbc $ef                                          ; $4afe: $de $ef
	sbc l                                            ; $4b00: $9d
	rst GetHLinHL                                          ; $4b01: $cf
	rst $38                                          ; $4b02: $ff
	ld a, e                                          ; $4b03: $7b
	cp $7f                                           ; $4b04: $fe $7f
	ld a, [$ef9d]                                    ; $4b06: $fa $9d $ef
	adc a                                            ; $4b09: $8f
	jp z, Jump_046_7eff                              ; $4b0a: $ca $ff $7e

	adc b                                            ; $4b0d: $88

jr_046_4b0e:
	sbc [hl]                                         ; $4b0e: $9e
	ldh [$7b], a                                     ; $4b0f: $e0 $7b
	cp $98                                           ; $4b11: $fe $98
	ld hl, sp-$01                                    ; $4b13: $f8 $ff
	db $fc                                           ; $4b15: $fc
	ld [$04f7], sp                                   ; $4b16: $08 $f7 $04
	ei                                               ; $4b19: $fb
	ld d, h                                          ; $4b1a: $54
	ld [hl], a                                       ; $4b1b: $77
	sbc l                                            ; $4b1c: $9d
	add hl, bc                                       ; $4b1d: $09
	rst FarCall                                          ; $4b1e: $f7
	ld a, c                                          ; $4b1f: $79
	add hl, bc                                       ; $4b20: $09
	ld a, l                                          ; $4b21: $7d
	cp l                                             ; $4b22: $bd
	ld h, e                                          ; $4b23: $63
	ldh a, [$7f]                                     ; $4b24: $f0 $7f
	adc h                                            ; $4b26: $8c
	sbc e                                            ; $4b27: $9b
	sub l                                            ; $4b28: $95
	ld [$ff00], a                                    ; $4b29: $ea $00 $ff
	ld [hl], l                                       ; $4b2c: $75
	and [hl]                                         ; $4b2d: $a6
	ld l, a                                          ; $4b2e: $6f
	cp $77                                           ; $4b2f: $fe $77
	ld h, h                                          ; $4b31: $64
	ld e, a                                          ; $4b32: $5f
	ldh a, [c]                                       ; $4b33: $f2

jr_046_4b34:
	ld [hl], a                                       ; $4b34: $77
	ldh a, [$98]                                     ; $4b35: $f0 $98
	inc d                                            ; $4b37: $14
	db $eb                                           ; $4b38: $eb
	ld [bc], a                                       ; $4b39: $02
	db $fd                                           ; $4b3a: $fd
	dec b                                            ; $4b3b: $05
	ld a, [$7b08]                                    ; $4b3c: $fa $08 $7b
	ret z                                            ; $4b3f: $c8

	ld h, a                                          ; $4b40: $67
	ldh [$7f], a                                     ; $4b41: $e0 $7f
	ld c, b                                          ; $4b43: $48
	ld a, [hl]                                       ; $4b44: $7e
	ld a, b                                          ; $4b45: $78
	ld d, a                                          ; $4b46: $57
	ret nc                                           ; $4b47: $d0

	ld h, a                                          ; $4b48: $67
	db $e4                                           ; $4b49: $e4
	ld l, a                                          ; $4b4a: $6f
	or b                                             ; $4b4b: $b0
	ld a, a                                          ; $4b4c: $7f
	ldh a, [$7f]                                     ; $4b4d: $f0 $7f
	inc [hl]                                         ; $4b4f: $34
	ld d, a                                          ; $4b50: $57
	ret nz                                           ; $4b51: $c0

	ld [hl], a                                       ; $4b52: $77
	inc d                                            ; $4b53: $14
	sbc l                                            ; $4b54: $9d
	ld de, $67ee                                     ; $4b55: $11 $ee $67
	ldh a, [$7e]                                     ; $4b58: $f0 $7e
	ld [hl], b                                       ; $4b5a: $70
	ld l, a                                          ; $4b5b: $6f
	nop                                              ; $4b5c: $00
	ld d, a                                          ; $4b5d: $57
	ret nc                                           ; $4b5e: $d0

	halt                                             ; $4b5f: $76
	ld d, b                                          ; $4b60: $50
	sbc e                                            ; $4b61: $9b
	adc d                                            ; $4b62: $8a
	ld [hl], l                                       ; $4b63: $75
	dec b                                            ; $4b64: $05
	ld a, [$d05f]                                    ; $4b65: $fa $5f $d0
	ld [hl], a                                       ; $4b68: $77
	db $ec                                           ; $4b69: $ec
	ld d, a                                          ; $4b6a: $57
	ret nz                                           ; $4b6b: $c0

	ld a, [hl]                                       ; $4b6c: $7e
	ld d, b                                          ; $4b6d: $50
	ld h, a                                          ; $4b6e: $67
	ld l, h                                          ; $4b6f: $6c
	sbc c                                            ; $4b70: $99
	ld bc, $42fe                                     ; $4b71: $01 $fe $42
	cp l                                             ; $4b74: $bd
	add b                                            ; $4b75: $80
	ld a, a                                          ; $4b76: $7f
	ld e, a                                          ; $4b77: $5f
	ld a, $9d                                        ; $4b78: $3e $9d
	ld [hl+], a                                      ; $4b7a: $22
	db $dd                                           ; $4b7b: $dd
	halt                                             ; $4b7c: $76
	ret z                                            ; $4b7d: $c8

	ld e, a                                          ; $4b7e: $5f
	sub b                                            ; $4b7f: $90
	halt                                             ; $4b80: $76
	call z, $8579                                    ; $4b81: $cc $79 $85
	ld h, e                                          ; $4b84: $63
	cp $97                                           ; $4b85: $fe $97
	rst $38                                          ; $4b87: $ff
	push bc                                          ; $4b88: $c5
	rst $38                                          ; $4b89: $ff
	and e                                            ; $4b8a: $a3
	rst $38                                          ; $4b8b: $ff
	pop de                                           ; $4b8c: $d1
	rst $38                                          ; $4b8d: $ff
	and d                                            ; $4b8e: $a2
	ld a, e                                          ; $4b8f: $7b
	ld hl, sp-$6c                                    ; $4b90: $f8 $94
	xor b                                            ; $4b92: $a8
	rst $38                                          ; $4b93: $ff
	ld b, h                                          ; $4b94: $44
	rst $38                                          ; $4b95: $ff
	add b                                            ; $4b96: $80
	rst AddAOntoHL                                          ; $4b97: $ef
	ld c, a                                          ; $4b98: $4f
	rst $38                                          ; $4b99: $ff
	adc a                                            ; $4b9a: $8f
	rst AddAOntoHL                                          ; $4b9b: $ef
	ld c, a                                          ; $4b9c: $4f
	ld a, d                                          ; $4b9d: $7a
	ret z                                            ; $4b9e: $c8

	sbc h                                            ; $4b9f: $9c
	rrca                                             ; $4ba0: $0f
	rst AddAOntoHL                                          ; $4ba1: $ef
	rrca                                             ; $4ba2: $0f
	ld [hl], e                                       ; $4ba3: $73
	db $fc                                           ; $4ba4: $fc
	ld e, l                                          ; $4ba5: $5d
	ld h, [hl]                                       ; $4ba6: $66
	sub [hl]                                         ; $4ba7: $96
	rst SubAFromDE                                          ; $4ba8: $df
	add b                                            ; $4ba9: $80
	ldh [$a8], a                                     ; $4baa: $e0 $a8
	db $fc                                           ; $4bac: $fc
	rst $38                                          ; $4bad: $ff
	ret z                                            ; $4bae: $c8

jr_046_4baf:
	rst $38                                          ; $4baf: $ff
	call nc, $3c78                                   ; $4bb0: $d4 $78 $3c
	rst SubAFromDE                                          ; $4bb3: $df
	rst $38                                          ; $4bb4: $ff
	sbc c                                            ; $4bb5: $99
	ldh a, [rIF]                                     ; $4bb6: $f0 $0f
	ldh a, [c]                                       ; $4bb8: $f2
	ld e, a                                          ; $4bb9: $5f
	cp $3f                                           ; $4bba: $fe $3f

Jump_046_4bbc:
	ld a, e                                          ; $4bbc: $7b
	xor [hl]                                         ; $4bbd: $ae
	sbc c                                            ; $4bbe: $99
	inc b                                            ; $4bbf: $04
	ld hl, sp+$03                                    ; $4bc0: $f8 $03
	ld hl, sp+$03                                    ; $4bc2: $f8 $03
	ld sp, hl                                        ; $4bc4: $f9
	ld h, a                                          ; $4bc5: $67
	cp $7f                                           ; $4bc6: $fe $7f
	ldh a, [$7b]                                     ; $4bc8: $f0 $7b
	ld [hl], a                                       ; $4bca: $77
	ld a, e                                          ; $4bcb: $7b
	db $d3                                           ; $4bcc: $d3
	sbc l                                            ; $4bcd: $9d
	add b                                            ; $4bce: $80
	rst $38                                          ; $4bcf: $ff
	ld l, a                                          ; $4bd0: $6f
	cp $7b                                           ; $4bd1: $fe $7b
	di                                               ; $4bd3: $f3
	ld [hl], a                                       ; $4bd4: $77
	ldh a, [rIE]                                     ; $4bd5: $f0 $ff
	ld h, e                                          ; $4bd7: $63
	ld a, [hl]                                       ; $4bd8: $7e
	dec sp                                           ; $4bd9: $3b
	ldh a, [$7f]                                     ; $4bda: $f0 $7f
	or b                                             ; $4bdc: $b0
	rst $38                                          ; $4bdd: $ff
	ld a, h                                          ; $4bde: $7c
	ld c, a                                          ; $4bdf: $4f
	ld a, e                                          ; $4be0: $7b
	cp $7f                                           ; $4be1: $fe $7f
	ld b, d                                          ; $4be3: $42
	ld a, a                                          ; $4be4: $7f
	di                                               ; $4be5: $f3
	sbc c                                            ; $4be6: $99
	ret nz                                           ; $4be7: $c0

	ld a, a                                          ; $4be8: $7f
	ldh [$5f], a                                     ; $4be9: $e0 $5f
	ld h, b                                          ; $4beb: $60
	ld a, a                                          ; $4bec: $7f
	ld h, a                                          ; $4bed: $67
	cp $56                                           ; $4bee: $fe $56
	ld h, h                                          ; $4bf0: $64
	inc bc                                           ; $4bf1: $03
	cp $7b                                           ; $4bf2: $fe $7b
	cp $97                                           ; $4bf4: $fe $97
	ld [$1fe0], sp                                   ; $4bf6: $08 $e0 $1f
	rst JumpTable                                          ; $4bf9: $c7
	ccf                                              ; $4bfa: $3f
	call z, $cf3c                                    ; $4bfb: $cc $3c $cf
	ld l, e                                          ; $4bfe: $6b
	cp $9e                                           ; $4bff: $fe $9e
	rst JumpTable                                          ; $4c01: $c7
	ld a, e                                          ; $4c02: $7b
	sub a                                            ; $4c03: $97
	ld d, e                                          ; $4c04: $53
	sub d                                            ; $4c05: $92
	inc bc                                           ; $4c06: $03
	ldh a, [$98]                                     ; $4c07: $f0 $98
	rrca                                             ; $4c09: $0f
	ld hl, sp-$39                                    ; $4c0a: $f8 $c7
	ld hl, sp+$0f                                    ; $4c0c: $f8 $0f
	jr c, jr_046_4baf                                ; $4c0e: $38 $9f

	ld [hl], a                                       ; $4c10: $77
	cp $9e                                           ; $4c11: $fe $9e
	ld a, b                                          ; $4c13: $78
	ld a, e                                          ; $4c14: $7b
	cp $47                                           ; $4c15: $fe $47
	and b                                            ; $4c17: $a0
	ld d, [hl]                                       ; $4c18: $56
	call nz, $c072                                   ; $4c19: $c4 $72 $c0
	ld a, d                                          ; $4c1c: $7a
	call z, $ff9d                                    ; $4c1d: $cc $9d $ff
	ld b, b                                          ; $4c20: $40
	ld e, a                                          ; $4c21: $5f
	rst SubAFromDE                                          ; $4c22: $df
	ld a, [hl]                                       ; $4c23: $7e
	adc $53                                          ; $4c24: $ce $53
	cp $9d                                           ; $4c26: $fe $9d
	ld c, a                                          ; $4c28: $4f
	call nc, $a97a                                   ; $4c29: $d4 $7a $a9
	sbc d                                            ; $4c2c: $9a
	ret nc                                           ; $4c2d: $d0

	rst $38                                          ; $4c2e: $ff
	xor d                                            ; $4c2f: $aa
	rst $38                                          ; $4c30: $ff
	push de                                          ; $4c31: $d5
	ld a, e                                          ; $4c32: $7b
	db $fc                                           ; $4c33: $fc
	ld a, a                                          ; $4c34: $7f
	db $f4                                           ; $4c35: $f4
	ld a, a                                          ; $4c36: $7f
	db $fc                                           ; $4c37: $fc
	sbc c                                            ; $4c38: $99
	rlca                                             ; $4c39: $07
	rrca                                             ; $4c3a: $0f
	nop                                              ; $4c3b: $00
	pop hl                                           ; $4c3c: $e1
	nop                                              ; $4c3d: $00
	db $fc                                           ; $4c3e: $fc
	ld [hl], a                                       ; $4c3f: $77
	push de                                          ; $4c40: $d5
	halt                                             ; $4c41: $76
	db $e4                                           ; $4c42: $e4
	ld a, a                                          ; $4c43: $7f
	cp $2d                                           ; $4c44: $fe $2d
	nop                                              ; $4c46: $00
	push bc                                          ; $4c47: $c5
	ld h, [hl]                                       ; $4c48: $66
	sbc l                                            ; $4c49: $9d
	ld d, l                                          ; $4c4a: $55
	ld d, [hl]                                       ; $4c4b: $56
	jp c, $9e66                                      ; $4c4c: $da $66 $9e

	ld h, l                                          ; $4c4f: $65
	ld a, e                                          ; $4c50: $7b
	or $d8                                           ; $4c51: $f6 $d8
	ld d, l                                          ; $4c53: $55
	ret c                                            ; $4c54: $d8

	inc sp                                           ; $4c55: $33
	sbc [hl]                                         ; $4c56: $9e
	ld [hl], $db                                     ; $4c57: $36 $db
	inc sp                                           ; $4c59: $33
	sbc e                                            ; $4c5a: $9b
	inc [hl]                                         ; $4c5b: $34
	ld b, h                                          ; $4c5c: $44
	ld [hl], a                                       ; $4c5d: $77
	ld [hl], a                                       ; $4c5e: $77
	ld b, a                                          ; $4c5f: $47
	or $df                                           ; $4c60: $f6 $df
	inc sp                                           ; $4c62: $33
	sbc l                                            ; $4c63: $9d
	ld [hl], a                                       ; $4c64: $77
	halt                                             ; $4c65: $76
	ld h, e                                          ; $4c66: $63
	or $9e                                           ; $4c67: $f6 $9e
	ld [hl], l                                       ; $4c69: $75
	sbc $44                                          ; $4c6a: $de $44
	ld a, e                                          ; $4c6c: $7b
	db $e4                                           ; $4c6d: $e4
	ld a, a                                          ; $4c6e: $7f
	db $fc                                           ; $4c6f: $fc
	rst SubAFromDE                                          ; $4c70: $df
	ld [hl], a                                       ; $4c71: $77
	ld d, b                                          ; $4c72: $50
	rlca                                             ; $4c73: $07
	add b                                            ; $4c74: $80
	add sp, $17                                      ; $4c75: $e8 $17
	dec d                                            ; $4c77: $15
	ld [$f10e], a                                    ; $4c78: $ea $0e $f1
	sub l                                            ; $4c7b: $95
	ld l, e                                          ; $4c7c: $6b
	and a                                            ; $4c7d: $a7
	ld a, a                                          ; $4c7e: $7f
	jr nc, @+$01                                     ; $4c7f: $30 $ff

	dec d                                            ; $4c81: $15
	ld [$01fe], a                                    ; $4c82: $ea $fe $01
	ld a, [$ed05]                                    ; $4c85: $fa $05 $ed
	ld [de], a                                       ; $4c88: $12
	rla                                              ; $4c89: $17
	add sp, -$51                                     ; $4c8a: $e8 $af
	ret nc                                           ; $4c8c: $d0

	add l                                            ; $4c8d: $85
	ld a, [$fd32]                                    ; $4c8e: $fa $32 $fd
	jr c, @+$01                                      ; $4c91: $38 $ff

	ld a, $99                                        ; $4c93: $3e $99
	rst $38                                          ; $4c95: $ff
	nop                                              ; $4c96: $00
	rst $38                                          ; $4c97: $ff
	add b                                            ; $4c98: $80
	rst $38                                          ; $4c99: $ff
	ret nz                                           ; $4c9a: $c0

	ld [hl], e                                       ; $4c9b: $73
	cp $7f                                           ; $4c9c: $fe $7f
	ld hl, sp+$7f                                    ; $4c9e: $f8 $7f
	cp $9e                                           ; $4ca0: $fe $9e
	ld [hl], b                                       ; $4ca2: $70
	ld a, e                                          ; $4ca3: $7b
	ldh a, [$6f]                                     ; $4ca4: $f0 $6f
	cp $97                                           ; $4ca6: $fe $97
	dec b                                            ; $4ca8: $05
	ld a, [$f50a]                                    ; $4ca9: $fa $0a $f5
	ld d, l                                          ; $4cac: $55
	xor d                                            ; $4cad: $aa
	cpl                                              ; $4cae: $2f
	ret nc                                           ; $4caf: $d0

	ld l, a                                          ; $4cb0: $6f
	db $f4                                           ; $4cb1: $f4
	sub e                                            ; $4cb2: $93
	ld a, [hl+]                                      ; $4cb3: $2a
	push de                                          ; $4cb4: $d5
	rlca                                             ; $4cb5: $07
	ld hl, sp+$2f                                    ; $4cb6: $f8 $2f
	ret nc                                           ; $4cb8: $d0

	ld e, a                                          ; $4cb9: $5f
	and b                                            ; $4cba: $a0
	rst $38                                          ; $4cbb: $ff
	nop                                              ; $4cbc: $00
	db $10                                           ; $4cbd: $10
	rst AddAOntoHL                                          ; $4cbe: $ef
	ld [hl], a                                       ; $4cbf: $77
	add sp, -$63                                     ; $4cc0: $e8 $9d
	xor a                                            ; $4cc2: $af
	ld d, b                                          ; $4cc3: $50
	ld [hl], a                                       ; $4cc4: $77
	db $db                                           ; $4cc5: $db
	ld a, a                                          ; $4cc6: $7f
	or h                                             ; $4cc7: $b4
	ld a, a                                          ; $4cc8: $7f
	db $fc                                           ; $4cc9: $fc
	ld a, a                                          ; $4cca: $7f
	db $ec                                           ; $4ccb: $ec
	sub c                                            ; $4ccc: $91
	cp a                                             ; $4ccd: $bf
	ld b, b                                          ; $4cce: $40
	rst $38                                          ; $4ccf: $ff
	nop                                              ; $4cd0: $00
	push de                                          ; $4cd1: $d5
	ld a, [hl+]                                      ; $4cd2: $2a
	ld hl, sp+$07                                    ; $4cd3: $f8 $07
	call nc, $aa2b                                   ; $4cd5: $d4 $2b $aa
	ld d, l                                          ; $4cd8: $55
	push af                                          ; $4cd9: $f5
	ld a, [bc]                                       ; $4cda: $0a
	ld [hl], a                                       ; $4cdb: $77
	add sp, -$65                                     ; $4cdc: $e8 $9b
	ld [$5515], a                                    ; $4cde: $ea $15 $55
	xor d                                            ; $4ce1: $aa
	ld [hl], a                                       ; $4ce2: $77
	ret z                                            ; $4ce3: $c8

	sub e                                            ; $4ce4: $93
	and b                                            ; $4ce5: $a0
	ld e, a                                          ; $4ce6: $5f
	ld d, l                                          ; $4ce7: $55
	xor d                                            ; $4ce8: $aa
	ld a, [$d505]                                    ; $4ce9: $fa $05 $d5
	ld a, [hl+]                                      ; $4cec: $2a
	xor b                                            ; $4ced: $a8
	ld d, a                                          ; $4cee: $57
	ld b, b                                          ; $4cef: $40
	cp a                                             ; $4cf0: $bf
	ld [hl], a                                       ; $4cf1: $77
	ldh a, [$7f]                                     ; $4cf2: $f0 $7f
	ldh [$7f], a                                     ; $4cf4: $e0 $7f
	ldh a, [$7f]                                     ; $4cf6: $f0 $7f
	db $ec                                           ; $4cf8: $ec
	ld h, a                                          ; $4cf9: $67
	sbc [hl]                                         ; $4cfa: $9e
	ld l, a                                          ; $4cfb: $6f
	ldh a, [$5f]                                     ; $4cfc: $f0 $5f
	ldh a, [c]                                       ; $4cfe: $f2
	ld l, a                                          ; $4cff: $6f
	ret nc                                           ; $4d00: $d0

	ld d, a                                          ; $4d01: $57
	ldh a, [$3f]                                     ; $4d02: $f0 $3f
	cp $7f                                           ; $4d04: $fe $7f
	halt                                             ; $4d06: $76
	ld c, a                                          ; $4d07: $4f
	ldh a, [$9d]                                     ; $4d08: $f0 $9d
	ld d, b                                          ; $4d0a: $50
	xor a                                            ; $4d0b: $af
	ld e, a                                          ; $4d0c: $5f
	db $f4                                           ; $4d0d: $f4
	sbc c                                            ; $4d0e: $99
	ld bc, $0afe                                     ; $4d0f: $01 $fe $0a
	push af                                          ; $4d12: $f5
	dec d                                            ; $4d13: $15
	ld [$f86f], a                                    ; $4d14: $ea $6f $f8
	ld [hl], a                                       ; $4d17: $77
	ld e, [hl]                                       ; $4d18: $5e
	sbc h                                            ; $4d19: $9c
	ld a, [hl]                                       ; $4d1a: $7e
	add b                                            ; $4d1b: $80
	adc a                                            ; $4d1c: $8f
	ld a, e                                          ; $4d1d: $7b
	jp hl                                            ; $4d1e: $e9


	ld a, a                                          ; $4d1f: $7f
	db $fd                                           ; $4d20: $fd
	ld a, a                                          ; $4d21: $7f
	db $f4                                           ; $4d22: $f4
	ld a, a                                          ; $4d23: $7f
	sbc b                                            ; $4d24: $98
	sbc e                                            ; $4d25: $9b
	ret                                              ; $4d26: $c9


	nop                                              ; $4d27: $00
	sub h                                            ; $4d28: $94
	nop                                              ; $4d29: $00
	ld l, a                                          ; $4d2a: $6f
	and l                                            ; $4d2b: $a5
	sbc b                                            ; $4d2c: $98
	dec bc                                           ; $4d2d: $0b
	db $f4                                           ; $4d2e: $f4
	ld d, l                                          ; $4d2f: $55
	xor b                                            ; $4d30: $a8
	or h                                             ; $4d31: $b4
	ld b, b                                          ; $4d32: $40
	ld l, b                                          ; $4d33: $68
	cp $7f                                           ; $4d34: $fe $7f
	ldh a, [$9e]                                     ; $4d36: $f0 $9e
	ld d, l                                          ; $4d38: $55
	ld a, e                                          ; $4d39: $7b
	db $d3                                           ; $4d3a: $d3
	add b                                            ; $4d3b: $80
	di                                               ; $4d3c: $f3
	rrca                                             ; $4d3d: $0f
	rst $38                                          ; $4d3e: $ff
	inc bc                                           ; $4d3f: $03
	xor a                                            ; $4d40: $af
	ld bc, $1d5f                                     ; $4d41: $01 $5f $1d
	rra                                              ; $4d44: $1f
	dec e                                            ; $4d45: $1d
	cp a                                             ; $4d46: $bf
	rlca                                             ; $4d47: $07
	ei                                               ; $4d48: $fb
	rlca                                             ; $4d49: $07
	rst FarCall                                          ; $4d4a: $f7
	sbc a                                            ; $4d4b: $9f

jr_046_4d4c:
	ld b, $ff                                        ; $4d4c: $06 $ff
	add d                                            ; $4d4e: $82
	ld a, a                                          ; $4d4f: $7f
	ldh [$1f], a                                     ; $4d50: $e0 $1f
	ldh [$1f], a                                     ; $4d52: $e0 $1f
	cp $01                                           ; $4d54: $fe $01
	dec a                                            ; $4d56: $3d
	ld [bc], a                                       ; $4d57: $02
	ld hl, sp+$07                                    ; $4d58: $f8 $07
	add d                                            ; $4d5a: $82
	adc l                                            ; $4d5b: $8d
	ld a, l                                          ; $4d5c: $7d
	rst $38                                          ; $4d5d: $ff
	nop                                              ; $4d5e: $00
	ld a, [hl]                                       ; $4d5f: $7e
	add c                                            ; $4d60: $81
	db $f4                                           ; $4d61: $f4
	dec bc                                           ; $4d62: $0b
	jr jr_046_4d4c                                   ; $4d63: $18 $e7

	nop                                              ; $4d65: $00
	rst $38                                          ; $4d66: $ff
	ld [$79f7], sp                                   ; $4d67: $08 $f7 $79
	rst $38                                          ; $4d6a: $ff
	rst AddAOntoHL                                          ; $4d6b: $ef
	ld a, a                                          ; $4d6c: $7f
	ccf                                              ; $4d6d: $3f
	halt                                             ; $4d6e: $76
	call z, $f09b                                    ; $4d6f: $cc $9b $f0
	rlca                                             ; $4d72: $07
	ldh [rLCDC], a                                   ; $4d73: $e0 $40
	jp c, Jump_046_7fc0                              ; $4d75: $da $c0 $7f

	inc bc                                           ; $4d78: $03
	sbc h                                            ; $4d79: $9c
	ld b, h                                          ; $4d7a: $44
	ei                                               ; $4d7b: $fb
	ret nz                                           ; $4d7c: $c0

	ld [hl], a                                       ; $4d7d: $77
	sbc b                                            ; $4d7e: $98
	ld a, [$dc76]                                    ; $4d7f: $fa $76 $dc
	ld a, a                                          ; $4d82: $7f
	cp $95                                           ; $4d83: $fe $95
	xor $10                                          ; $4d85: $ee $10
	dec c                                            ; $4d87: $0d
	db $10                                           ; $4d88: $10
	ld [bc], a                                       ; $4d89: $02
	inc e                                            ; $4d8a: $1c
	nop                                              ; $4d8b: $00
	rra                                              ; $4d8c: $1f
	inc hl                                           ; $4d8d: $23
	dec e                                            ; $4d8e: $1d
	ld [hl], a                                       ; $4d8f: $77
	ldh a, [c]                                       ; $4d90: $f2
	sbc [hl]                                         ; $4d91: $9e
	push af                                          ; $4d92: $f5
	ld a, e                                          ; $4d93: $7b
	sub h                                            ; $4d94: $94
	sbc [hl]                                         ; $4d95: $9e
	ld b, b                                          ; $4d96: $40
	cp $9b                                           ; $4d97: $fe $9b
	db $10                                           ; $4d99: $10
	ldh [rP1], a                                     ; $4d9a: $e0 $00
	ld hl, sp+$77                                    ; $4d9c: $f8 $77
	ldh a, [$7f]                                     ; $4d9e: $f0 $7f
	adc b                                            ; $4da0: $88
	ld a, a                                          ; $4da1: $7f
	ldh a, [$fb]                                     ; $4da2: $f0 $fb
	sbc [hl]                                         ; $4da4: $9e
	jr jr_046_4e1a                                   ; $4da5: $18 $73

	ld l, h                                          ; $4da7: $6c
	ld a, a                                          ; $4da8: $7f
	ldh a, [$9a]                                     ; $4da9: $f0 $9a
	add b                                            ; $4dab: $80
	nop                                              ; $4dac: $00
	dec d                                            ; $4dad: $15

jr_046_4dae:
	nop                                              ; $4dae: $00
	ld a, [bc]                                       ; $4daf: $0a
	db $fc                                           ; $4db0: $fc
	ld a, [hl]                                       ; $4db1: $7e
	call nz, $f077                                   ; $4db2: $c4 $77 $f0
	sbc [hl]                                         ; $4db5: $9e
	dec hl                                           ; $4db6: $2b
	ld a, e                                          ; $4db7: $7b
	ld [$6077], a                                    ; $4db8: $ea $77 $60
	ld a, e                                          ; $4dbb: $7b
	ld b, c                                          ; $4dbc: $41
	ld h, e                                          ; $4dbd: $63
	cp $7f                                           ; $4dbe: $fe $7f
	dec d                                            ; $4dc0: $15
	ld a, a                                          ; $4dc1: $7f
	ldh a, [$9e]                                     ; $4dc2: $f0 $9e
	ld [bc], a                                       ; $4dc4: $02
	ld d, e                                          ; $4dc5: $53
	ld bc, $b877                                     ; $4dc6: $01 $77 $b8
	ld [hl], a                                       ; $4dc9: $77
	ret nc                                           ; $4dca: $d0

	ld l, a                                          ; $4dcb: $6f
	cp $7e                                           ; $4dcc: $fe $7e
	push hl                                          ; $4dce: $e5
	ld a, a                                          ; $4dcf: $7f
	ldh a, [hDisp1_OBP1]                                     ; $4dd0: $f0 $94
	xor b                                            ; $4dd2: $a8
	nop                                              ; $4dd3: $00
	and b                                            ; $4dd4: $a0
	ld e, a                                          ; $4dd5: $5f
	push de                                          ; $4dd6: $d5
	ld a, [hl+]                                      ; $4dd7: $2a
	xor d                                            ; $4dd8: $aa
	ld d, l                                          ; $4dd9: $55
	rst $38                                          ; $4dda: $ff
	nop                                              ; $4ddb: $00
	rst SubAFromDE                                          ; $4ddc: $df
	ld l, e                                          ; $4ddd: $6b
	ret nz                                           ; $4dde: $c0

	ld a, [hl]                                       ; $4ddf: $7e
	db $f4                                           ; $4de0: $f4
	sbc l                                            ; $4de1: $9d
	ld d, a                                          ; $4de2: $57
	xor b                                            ; $4de3: $a8
	halt                                             ; $4de4: $76

jr_046_4de5:
	ld d, d                                          ; $4de5: $52
	sbc [hl]                                         ; $4de6: $9e
	push de                                          ; $4de7: $d5
	ld l, e                                          ; $4de8: $6b
	ld a, h                                          ; $4de9: $7c
	ld l, [hl]                                       ; $4dea: $6e
	ld e, h                                          ; $4deb: $5c
	ld [hl], a                                       ; $4dec: $77
	db $e4                                           ; $4ded: $e4
	sbc [hl]                                         ; $4dee: $9e
	adc d                                            ; $4def: $8a
	db $fc                                           ; $4df0: $fc
	sbc l                                            ; $4df1: $9d
	xor e                                            ; $4df2: $ab
	ld d, h                                          ; $4df3: $54
	ld [hl], a                                       ; $4df4: $77
	ld c, [hl]                                       ; $4df5: $4e
	ld a, [hl]                                       ; $4df6: $7e
	ld h, c                                          ; $4df7: $61
	sbc [hl]                                         ; $4df8: $9e
	ld a, a                                          ; $4df9: $7f
	ld [hl], e                                       ; $4dfa: $73
	sbc $57                                          ; $4dfb: $de $57
	sub b                                            ; $4dfd: $90
	ld l, a                                          ; $4dfe: $6f
	ld e, d                                          ; $4dff: $5a
	ld a, [hl]                                       ; $4e00: $7e
	ld hl, sp+$7e                                    ; $4e01: $f8 $7e
	ret nz                                           ; $4e03: $c0

	ld [hl], a                                       ; $4e04: $77
	ldh a, [c]                                       ; $4e05: $f2
	sbc [hl]                                         ; $4e06: $9e
	db $eb                                           ; $4e07: $eb
	ld a, e                                          ; $4e08: $7b
	ldh a, [hDisp1_WY]                                     ; $4e09: $f0 $95
	and d                                            ; $4e0b: $a2
	nop                                              ; $4e0c: $00
	ld bc, $ab00                                     ; $4e0d: $01 $00 $ab
	ld d, l                                          ; $4e10: $55
	ld d, a                                          ; $4e11: $57
	xor a                                            ; $4e12: $af
	db $fd                                           ; $4e13: $fd
	inc bc                                           ; $4e14: $03
	ld h, a                                          ; $4e15: $67
	ld l, [hl]                                       ; $4e16: $6e
	sbc h                                            ; $4e17: $9c
	ld d, a                                          ; $4e18: $57
	rlca                                             ; $4e19: $07

jr_046_4e1a:
	db $fd                                           ; $4e1a: $fd
	ld a, e                                          ; $4e1b: $7b
	ld hl, sp-$77                                    ; $4e1c: $f8 $89
	rst SubAFromHL                                          ; $4e1e: $d7
	jr z, jr_046_4dae                                ; $4e1f: $28 $8d

	ld h, d                                          ; $4e21: $62
	nop                                              ; $4e22: $00
	ccf                                              ; $4e23: $3f
	jr z, jr_046_4e3d                                ; $4e24: $28 $17

	ld a, [hl]                                       ; $4e26: $7e
	ld bc, $00ff                                     ; $4e27: $01 $ff $00
	rst GetHLinHL                                          ; $4e2a: $cf
	jr nc, jr_046_4de5                               ; $4e2b: $30 $b8

	ld b, a                                          ; $4e2d: $47
	db $fc                                           ; $4e2e: $fc
	inc bc                                           ; $4e2f: $03
	ld [hl], b                                       ; $4e30: $70
	rrca                                             ; $4e31: $0f
	cp b                                             ; $4e32: $b8
	rlca                                             ; $4e33: $07
	halt                                             ; $4e34: $76
	ld h, h                                          ; $4e35: $64
	adc l                                            ; $4e36: $8d
	and [hl]                                         ; $4e37: $a6
	ld e, c                                          ; $4e38: $59
	rlca                                             ; $4e39: $07
	rst $38                                          ; $4e3a: $ff
	add a                                            ; $4e3b: $87
	rst $38                                          ; $4e3c: $ff

jr_046_4e3d:
	add c                                            ; $4e3d: $81
	rst $38                                          ; $4e3e: $ff
	add e                                            ; $4e3f: $83
	rst $38                                          ; $4e40: $ff
	db $dd                                           ; $4e41: $dd
	rst $38                                          ; $4e42: $ff
	or e                                             ; $4e43: $b3
	rst $38                                          ; $4e44: $ff
	rst AddAOntoHL                                          ; $4e45: $ef
	rst $38                                          ; $4e46: $ff
	rst SubAFromDE                                          ; $4e47: $df
	rst $38                                          ; $4e48: $ff
	ld l, [hl]                                       ; $4e49: $6e
	ret z                                            ; $4e4a: $c8

	sub l                                            ; $4e4b: $95
	pop de                                           ; $4e4c: $d1

jr_046_4e4d:
	ldh [$e8], a                                     ; $4e4d: $e0 $e8
	rst FarCall                                          ; $4e4f: $f7
	rst JumpTable                                          ; $4e50: $c7
	ldh a, [$c0]                                     ; $4e51: $f0 $c0
	rst AddAOntoHL                                          ; $4e53: $ef

jr_046_4e54:
	rst SubAFromDE                                          ; $4e54: $df
	rst AddAOntoHL                                          ; $4e55: $ef
	ei                                               ; $4e56: $fb
	ld a, [hl]                                       ; $4e57: $7e
	sub b                                            ; $4e58: $90
	sbc e                                            ; $4e59: $9b
	ret nz                                           ; $4e5a: $c0

jr_046_4e5b:
	cp a                                             ; $4e5b: $bf
	add b                                            ; $4e5c: $80
	ld a, a                                          ; $4e5d: $7f
	db $dd                                           ; $4e5e: $dd
	rst $38                                          ; $4e5f: $ff
	ld a, [hl]                                       ; $4e60: $7e
	adc $94                                          ; $4e61: $ce $94
	ld [bc], a                                       ; $4e63: $02
	dec e                                            ; $4e64: $1d
	ld [hl+], a                                      ; $4e65: $22
	dec e                                            ; $4e66: $1d
	ld a, c                                          ; $4e67: $79
	cp a                                             ; $4e68: $bf
	ccf                                              ; $4e69: $3f
	rst $38                                          ; $4e6a: $ff
	add hl, hl                                       ; $4e6b: $29
	rst $38                                          ; $4e6c: $ff
	cp $7b                                           ; $4e6d: $fe $7b
	cp $80                                           ; $4e6f: $fe $80
	add b                                            ; $4e71: $80
	ldh a, [rP1]                                     ; $4e72: $f0 $00
	ld hl, sp+$38                                    ; $4e74: $f8 $38
	db $fc                                           ; $4e76: $fc
	db $f4                                           ; $4e77: $f4
	ld hl, sp-$80                                    ; $4e78: $f8 $80
	cp $80                                           ; $4e7a: $fe $80
	db $ec                                           ; $4e7c: $ec
	nop                                              ; $4e7d: $00
	ldh a, [rP1]                                     ; $4e7e: $f0 $00
	ld [hl], b                                       ; $4e80: $70
	inc l                                            ; $4e81: $2c
	db $10                                           ; $4e82: $10
	jp c, $9624                                      ; $4e83: $da $24 $96

	jr nz, jr_046_4e54                               ; $4e86: $20 $cc

	inc sp                                           ; $4e88: $33
	adc a                                            ; $4e89: $8f
	jr nc, jr_046_4e5b                               ; $4e8a: $30 $cf

	jr nc, jr_046_4e4d                               ; $4e8c: $30 $bf

	nop                                              ; $4e8e: $00
	scf                                              ; $4e8f: $37
	db $fc                                           ; $4e90: $fc
	adc d                                            ; $4e91: $8a
	sub [hl]                                         ; $4e92: $96
	ld bc, $936c                                     ; $4e93: $01 $6c $93
	push de                                          ; $4e96: $d5
	ld [bc], a                                       ; $4e97: $02
	cpl                                              ; $4e98: $2f
	nop                                              ; $4e99: $00
	cp c                                             ; $4e9a: $b9
	ld b, b                                          ; $4e9b: $40
	ld l, e                                          ; $4e9c: $6b
	add b                                            ; $4e9d: $80
	nop                                              ; $4e9e: $00
	nop                                              ; $4e9f: $00
	ld h, b                                          ; $4ea0: $60
	nop                                              ; $4ea1: $00
	or b                                             ; $4ea2: $b0
	nop                                              ; $4ea3: $00
	ld hl, sp+$00                                    ; $4ea4: $f8 $00
	db $fd                                           ; $4ea6: $fd
	ld a, d                                          ; $4ea7: $7a
	ld b, d                                          ; $4ea8: $42
	ld a, a                                          ; $4ea9: $7f
	cp $9d                                           ; $4eaa: $fe $9d
	ldh a, [rIF]                                     ; $4eac: $f0 $0f
	db $fd                                           ; $4eae: $fd
	ld a, [hl]                                       ; $4eaf: $7e
	jp z, $0995                                      ; $4eb0: $ca $95 $09

	nop                                              ; $4eb3: $00
	rra                                              ; $4eb4: $1f
	nop                                              ; $4eb5: $00
	or h                                             ; $4eb6: $b4
	ld b, b                                          ; $4eb7: $40
	db $10                                           ; $4eb8: $10
	ldh [rAUD4LEN], a                                ; $4eb9: $e0 $20
	ret nz                                           ; $4ebb: $c0

	ei                                               ; $4ebc: $fb
	ld a, [hl]                                       ; $4ebd: $7e
	or $9a                                           ; $4ebe: $f6 $9a
	push hl                                          ; $4ec0: $e5
	nop                                              ; $4ec1: $00
	cp d                                             ; $4ec2: $ba
	nop                                              ; $4ec3: $00
	ld b, h                                          ; $4ec4: $44
	ld a, [$4392]                                    ; $4ec5: $fa $92 $43
	nop                                              ; $4ec8: $00
	db $f4                                           ; $4ec9: $f4
	inc bc                                           ; $4eca: $03
	ld hl, sp+$07                                    ; $4ecb: $f8 $07
	ld l, $10                                        ; $4ecd: $2e $10
	dec d                                            ; $4ecf: $15
	ld a, [bc]                                       ; $4ed0: $0a
	add hl, bc                                       ; $4ed1: $09
	ld b, $00                                        ; $4ed2: $06 $00
	ld a, e                                          ; $4ed4: $7b
	inc e                                            ; $4ed5: $1c
	sub d                                            ; $4ed6: $92
	ld b, $01                                        ; $4ed7: $06 $01
	inc b                                            ; $4ed9: $04
	jp $83d4                                         ; $4eda: $c3 $d4 $83


	ld hl, sp+$07                                    ; $4edd: $f8 $07
	jr c, jr_046_4f28                                ; $4edf: $38 $47

	and b                                            ; $4ee1: $a0
	ld e, a                                          ; $4ee2: $5f
	add b                                            ; $4ee3: $80
	ld a, e                                          ; $4ee4: $7b
	or d                                             ; $4ee5: $b2
	sub e                                            ; $4ee6: $93
	call c, $0c20                                    ; $4ee7: $dc $20 $0c
	ldh a, [$0d]                                     ; $4eea: $f0 $0d
	ldh a, [rSCX]                                    ; $4eec: $f0 $43
	db $fc                                           ; $4eee: $fc
	ldh [rIE], a                                     ; $4eef: $e0 $ff
	pop bc                                           ; $4ef1: $c1
	cp $77                                           ; $4ef2: $fe $77
	ldh [$7e], a                                     ; $4ef4: $e0 $7e
	ld d, h                                          ; $4ef6: $54
	add h                                            ; $4ef7: $84
	ldh [c], a                                       ; $4ef8: $e2
	dec e                                            ; $4ef9: $1d
	nop                                              ; $4efa: $00
	rst $38                                          ; $4efb: $ff
	add l                                            ; $4efc: $85
	ld a, e                                          ; $4efd: $7b
	nop                                              ; $4efe: $00
	rst $38                                          ; $4eff: $ff
	inc e                                            ; $4f00: $1c
	db $e3                                           ; $4f01: $e3
	nop                                              ; $4f02: $00
	nop                                              ; $4f03: $00
	rrca                                             ; $4f04: $0f
	nop                                              ; $4f05: $00
	ld e, $81                                        ; $4f06: $1e $81
	ld de, $4aca                                     ; $4f08: $11 $ca $4a
	sub l                                            ; $4f0b: $95
	call nc, Call_046_420b                           ; $4f0c: $d4 $0b $42
	sbc l                                            ; $4f0f: $9d
	inc b                                            ; $4f10: $04
	db $db                                           ; $4f11: $db
	nop                                              ; $4f12: $00
	ld a, d                                          ; $4f13: $7a
	inc [hl]                                         ; $4f14: $34
	sbc d                                            ; $4f15: $9a
	ld [$b180], sp                                   ; $4f16: $08 $80 $b1
	call z, Call_046_7b42                            ; $4f19: $cc $42 $7b
	jp nc, $119c                                     ; $4f1c: $d2 $9c $11

	xor $e0                                          ; $4f1f: $ee $e0
	ld [hl], c                                       ; $4f21: $71
	rst SubAFromBC                                          ; $4f22: $e7
	sub e                                            ; $4f23: $93
	jr nc, jr_046_4f26                               ; $4f24: $30 $00

jr_046_4f26:
	cp h                                             ; $4f26: $bc
	nop                                              ; $4f27: $00

jr_046_4f28:
	db $f4                                           ; $4f28: $f4
	ld [$41ac], sp                                   ; $4f29: $08 $ac $41
	db $fd                                           ; $4f2c: $fd
	nop                                              ; $4f2d: $00
	and h                                            ; $4f2e: $a4
	ld e, c                                          ; $4f2f: $59
	db $dd                                           ; $4f30: $dd
	rrca                                             ; $4f31: $0f
	rst SubAFromDE                                          ; $4f32: $df
	rlca                                             ; $4f33: $07
	add b                                            ; $4f34: $80
	ld bc, $0307                                     ; $4f35: $01 $07 $03
	ccf                                              ; $4f38: $3f
	nop                                              ; $4f39: $00
	rlca                                             ; $4f3a: $07
	nop                                              ; $4f3b: $00
	add a                                            ; $4f3c: $87
	nop                                              ; $4f3d: $00
	dec b                                            ; $4f3e: $05
	nop                                              ; $4f3f: $00
	rst $38                                          ; $4f40: $ff
	cp a                                             ; $4f41: $bf
	rst $38                                          ; $4f42: $ff
	di                                               ; $4f43: $f3
	rst $38                                          ; $4f44: $ff
	rst GetHLinHL                                          ; $4f45: $cf
	di                                               ; $4f46: $f3
	add e                                            ; $4f47: $83
	rst SubAFromBC                                          ; $4f48: $e7
	add hl, bc                                       ; $4f49: $09
	di                                               ; $4f4a: $f3
	ld bc, $03fe                                     ; $4f4b: $01 $fe $03
	db $fc                                           ; $4f4e: $fc
	scf                                              ; $4f4f: $37
	rst $38                                          ; $4f50: $ff
	ldh a, [c]                                       ; $4f51: $f2
	rst $38                                          ; $4f52: $ff
	and $7b                                          ; $4f53: $e6 $7b
	cp $9c                                           ; $4f55: $fe $9c
	or l                                             ; $4f57: $b5
	rst $38                                          ; $4f58: $ff
	ret z                                            ; $4f59: $c8

	ld a, d                                          ; $4f5a: $7a
	sbc l                                            ; $4f5b: $9d
	sbc e                                            ; $4f5c: $9b
	add d                                            ; $4f5d: $82
	ccf                                              ; $4f5e: $3f
	ccf                                              ; $4f5f: $3f
	rst $38                                          ; $4f60: $ff
	halt                                             ; $4f61: $76
	jp hl                                            ; $4f62: $e9


	ld a, [hl]                                       ; $4f63: $7e
	ld hl, sp+$7f                                    ; $4f64: $f8 $7f
	ld a, [$8289]                                    ; $4f66: $fa $89 $82
	rrca                                             ; $4f69: $0f
	ld [hl+], a                                      ; $4f6a: $22
	rra                                              ; $4f6b: $1f
	ld [$cf07], sp                                   ; $4f6c: $08 $07 $cf
	rst $38                                          ; $4f6f: $ff
	sbc $ef                                          ; $4f70: $de $ef
	xor a                                            ; $4f72: $af
	rst SubAFromDE                                          ; $4f73: $df
	ld c, $ff                                        ; $4f74: $0e $ff
	rrca                                             ; $4f76: $0f
	rst $38                                          ; $4f77: $ff
	rrca                                             ; $4f78: $0f
	ccf                                              ; $4f79: $3f
	rrca                                             ; $4f7a: $0f
	ld a, a                                          ; $4f7b: $7f
	rrca                                             ; $4f7c: $0f
	rst SubAFromDE                                          ; $4f7d: $df
	halt                                             ; $4f7e: $76
	ld a, b                                          ; $4f7f: $78
	sbc l                                            ; $4f80: $9d
	ld a, a                                          ; $4f81: $7f
	add b                                            ; $4f82: $80
	ld [hl], h                                       ; $4f83: $74
	or [hl]                                          ; $4f84: $b6
	sbc [hl]                                         ; $4f85: $9e
	ld [bc], a                                       ; $4f86: $02
	halt                                             ; $4f87: $76
	ld [hl], l                                       ; $4f88: $75
	sbc h                                            ; $4f89: $9c
	rst $38                                          ; $4f8a: $ff
	db $fc                                           ; $4f8b: $fc
	ld c, $77                                        ; $4f8c: $0e $77
	cp $94                                           ; $4f8e: $fe $94
	cp h                                             ; $4f90: $bc
	ld c, [hl]                                       ; $4f91: $4e
	ld a, h                                          ; $4f92: $7c
	adc [hl]                                         ; $4f93: $8e
	cp h                                             ; $4f94: $bc
	ld c, [hl]                                       ; $4f95: $4e
	ld e, [hl]                                       ; $4f96: $5e
	xor [hl]                                         ; $4f97: $ae
	ld l, $de                                        ; $4f98: $2e $de
	ld a, a                                          ; $4f9a: $7f
	ld a, d                                          ; $4f9b: $7a
	ld h, $7e                                        ; $4f9c: $26 $7e
	ret c                                            ; $4f9e: $d8

	ld a, [hl]                                       ; $4f9f: $7e
	ld b, h                                          ; $4fa0: $44
	sub h                                            ; $4fa1: $94
	xor [hl]                                         ; $4fa2: $ae
	ld bc, $7f80                                     ; $4fa3: $01 $80 $7f
	cp [hl]                                          ; $4fa6: $be
	ld b, b                                          ; $4fa7: $40
	ld b, b                                          ; $4fa8: $40
	nop                                              ; $4fa9: $00
	cpl                                              ; $4faa: $2f
	nop                                              ; $4fab: $00
	cp [hl]                                          ; $4fac: $be
	ld a, d                                          ; $4fad: $7a
	db $f4                                           ; $4fae: $f4
	sbc b                                            ; $4faf: $98
	ld a, [hl+]                                      ; $4fb0: $2a
	nop                                              ; $4fb1: $00
	or [hl]                                          ; $4fb2: $b6
	nop                                              ; $4fb3: $00
	sub h                                            ; $4fb4: $94
	dec hl                                           ; $4fb5: $2b
	ld a, [hl+]                                      ; $4fb6: $2a
	cp $75                                           ; $4fb7: $fe $75
	call z, $fc7f                                    ; $4fb9: $cc $7f $fc
	adc [hl]                                         ; $4fbc: $8e
	jp z, $f861                                      ; $4fbd: $ca $61 $f8

	ld h, [hl]                                       ; $4fc0: $66
	ld h, b                                          ; $4fc1: $60
	ld hl, sp+$40                                    ; $4fc2: $f8 $40
	ret nz                                           ; $4fc4: $c0

	ld b, b                                          ; $4fc5: $40
	ret nz                                           ; $4fc6: $c0

	ld [hl], e                                       ; $4fc7: $73
	inc c                                            ; $4fc8: $0c
	xor d                                            ; $4fc9: $aa
	nop                                              ; $4fca: $00
	ld sp, $3ece                                     ; $4fcb: $31 $ce $3e
	ld l, d                                          ; $4fce: $6a
	ret c                                            ; $4fcf: $d8

	sbc [hl]                                         ; $4fd0: $9e
	jr nz, jr_046_504e                               ; $4fd1: $20 $7b

	ld sp, $8280                                     ; $4fd3: $31 $80 $82
	nop                                              ; $4fd6: $00
	inc [hl]                                         ; $4fd7: $34
	nop                                              ; $4fd8: $00
	ld a, b                                          ; $4fd9: $78
	nop                                              ; $4fda: $00
	add l                                            ; $4fdb: $85
	nop                                              ; $4fdc: $00
	inc bc                                           ; $4fdd: $03
	nop                                              ; $4fde: $00
	ld [de], a                                       ; $4fdf: $12
	dec c                                            ; $4fe0: $0d
	inc bc                                           ; $4fe1: $03
	nop                                              ; $4fe2: $00
	ld e, b                                          ; $4fe3: $58
	nop                                              ; $4fe4: $00
	inc e                                            ; $4fe5: $1c
	ld b, b                                          ; $4fe6: $40
	sub b                                            ; $4fe7: $90
	ld h, h                                          ; $4fe8: $64
	ld d, d                                          ; $4fe9: $52
	cp h                                             ; $4fea: $bc
	ret nz                                           ; $4feb: $c0

	ld a, $d0                                        ; $4fec: $3e $d0
	ld a, $19                                        ; $4fee: $3e $19
	cp $e3                                           ; $4ff0: $fe $e3
	inc e                                            ; $4ff2: $1c
	dec b                                            ; $4ff3: $05
	sbc e                                            ; $4ff4: $9b
	ld [bc], a                                       ; $4ff5: $02
	sub e                                            ; $4ff6: $93
	nop                                              ; $4ff7: $00
	adc c                                            ; $4ff8: $89
	ld a, d                                          ; $4ff9: $7a
	or [hl]                                          ; $4ffa: $b6
	ld a, a                                          ; $4ffb: $7f
	cp d                                             ; $4ffc: $ba
	sbc b                                            ; $4ffd: $98
	ld d, h                                          ; $4ffe: $54
	nop                                              ; $4fff: $00
	ld [hl+], a                                      ; $5000: $22
	nop                                              ; $5001: $00
	ld d, [hl]                                       ; $5002: $56
	add b                                            ; $5003: $80
	ld h, b                                          ; $5004: $60
	ld a, b                                          ; $5005: $78
	call nz, $fc7f                                   ; $5006: $c4 $7f $fc
	sbc c                                            ; $5009: $99
	jr c, jr_046_5013                                ; $500a: $38 $07

	ld c, b                                          ; $500c: $48
	rlca                                             ; $500d: $07
	ld a, [de]                                       ; $500e: $1a
	ld bc, $97fd                                     ; $500f: $01 $fd $97
	db $fc                                           ; $5012: $fc

jr_046_5013:
	cp $f8                                           ; $5013: $fe $f8
	cp $98                                           ; $5015: $fe $98
	db $fc                                           ; $5017: $fc
	nop                                              ; $5018: $00
	ld hl, sp-$23                                    ; $5019: $f8 $dd
	di                                               ; $501b: $f3
	db $fd                                           ; $501c: $fd
	ld a, b                                          ; $501d: $78
	or a                                             ; $501e: $b7
	ld a, c                                          ; $501f: $79
	ld d, [hl]                                       ; $5020: $56
	sbc d                                            ; $5021: $9a
	ld h, l                                          ; $5022: $65
	nop                                              ; $5023: $00
	ld b, $f8                                        ; $5024: $06 $f8
	ld bc, $b47a                                     ; $5026: $01 $7a $b4
	rst $38                                          ; $5029: $ff
	add b                                            ; $502a: $80
	cpl                                              ; $502b: $2f
	rst SubAFromDE                                          ; $502c: $df
	call $a01e                                       ; $502d: $cd $1e $a0
	inc c                                            ; $5030: $0c
	ld e, a                                          ; $5031: $5f
	ld [$1fa0], sp                                   ; $5032: $08 $a0 $1f
	ld bc, $271f                                     ; $5035: $01 $1f $27
	rra                                              ; $5038: $1f
	ccf                                              ; $5039: $3f
	ccf                                              ; $503a: $3f
	ld h, b                                          ; $503b: $60
	rst $38                                          ; $503c: $ff
	add $79                                          ; $503d: $c6 $79
	ei                                               ; $503f: $fb
	nop                                              ; $5040: $00
	ld h, d                                          ; $5041: $62
	ld h, b                                          ; $5042: $60
	ld l, h                                          ; $5043: $6c
	pop af                                           ; $5044: $f1
	ld h, d                                          ; $5045: $62
	db $fd                                           ; $5046: $fd
	ld h, l                                          ; $5047: $65
	ldh [$60], a                                     ; $5048: $e0 $60
	ld a, [hl]                                       ; $504a: $7e
	cp a                                             ; $504b: $bf
	sub e                                            ; $504c: $93

jr_046_504d:
	db $fd                                           ; $504d: $fd

jr_046_504e:
	ld e, b                                          ; $504e: $58
	cp l                                             ; $504f: $bd
	db $db                                           ; $5050: $db
	jr @-$49                                         ; $5051: $18 $b5

	jr jr_046_509b                                   ; $5053: $18 $46

	cp c                                             ; $5055: $b9
	ld [bc], a                                       ; $5056: $02
	db $fd                                           ; $5057: $fd
	ld hl, sp-$02                                    ; $5058: $f8 $fe
	ld a, a                                          ; $505a: $7f
	inc d                                            ; $505b: $14
	sub l                                            ; $505c: $95
	rst FarCall                                          ; $505d: $f7
	ld [$00d3], sp                                   ; $505e: $08 $d3 $00
	and a                                            ; $5061: $a7
	nop                                              ; $5062: $00
	add hl, bc                                       ; $5063: $09
	or $08                                           ; $5064: $f6 $08
	rst FarCall                                          ; $5066: $f7
	ld [hl], e                                       ; $5067: $73
	or b                                             ; $5068: $b0
	sub h                                            ; $5069: $94
	jr jr_046_504d                                   ; $506a: $18 $e1

	inc e                                            ; $506c: $1c
	ld [$2014], a                                    ; $506d: $ea $14 $20
	ld [de], a                                       ; $5070: $12
	dec b                                            ; $5071: $05
	ld a, [$f10e]                                    ; $5072: $fa $0e $f1
	db $fd                                           ; $5075: $fd
	sub l                                            ; $5076: $95
	ret nz                                           ; $5077: $c0

	ccf                                              ; $5078: $3f
	add c                                            ; $5079: $81
	ld a, [hl]                                       ; $507a: $7e
	or d                                             ; $507b: $b2
	ld c, h                                          ; $507c: $4c
	db $dd                                           ; $507d: $dd
	nop                                              ; $507e: $00
	add b                                            ; $507f: $80
	ld e, a                                          ; $5080: $5f
	ld e, h                                          ; $5081: $5c
	ld l, e                                          ; $5082: $6b
	sbc h                                            ; $5083: $9c
	ld [bc], a                                       ; $5084: $02
	dec c                                            ; $5085: $0d
	ret                                              ; $5086: $c9


	ld a, c                                          ; $5087: $79
	jr c, @+$81                                      ; $5088: $38 $7f

	pop af                                           ; $508a: $f1
	ld [hl], a                                       ; $508b: $77
	db $fc                                           ; $508c: $fc
	add b                                            ; $508d: $80
	rrca                                             ; $508e: $0f
	rra                                              ; $508f: $1f
	rrca                                             ; $5090: $0f
	rra                                              ; $5091: $1f
	adc e                                            ; $5092: $8b
	ld a, a                                          ; $5093: $7f
	ld h, [hl]                                       ; $5094: $66
	sbc a                                            ; $5095: $9f
	db $eb                                           ; $5096: $eb
	rra                                              ; $5097: $1f
	ld [bc], a                                       ; $5098: $02
	rst $38                                          ; $5099: $ff
	sub d                                            ; $509a: $92

jr_046_509b:
	ld l, a                                          ; $509b: $6f
	ld [hl], d                                       ; $509c: $72
	adc a                                            ; $509d: $8f
	ld [bc], a                                       ; $509e: $02
	rst $38                                          ; $509f: $ff
	add d                                            ; $50a0: $82
	ld a, a                                          ; $50a1: $7f
	add e                                            ; $50a2: $83
	ld a, [hl]                                       ; $50a3: $7e
	adc d                                            ; $50a4: $8a
	halt                                             ; $50a5: $76
	reti                                             ; $50a6: $d9


	ld h, $78                                        ; $50a7: $26 $78
	ld b, $78                                        ; $50a9: $06 $78
	ld b, $7c                                        ; $50ab: $06 $7c
	sbc [hl]                                         ; $50ad: $9e
	ld [bc], a                                       ; $50ae: $02
	halt                                             ; $50af: $76
	call z, Call_046_7e93                            ; $50b0: $cc $93 $7e
	adc [hl]                                         ; $50b3: $8e
	xor [hl]                                         ; $50b4: $ae
	ld e, [hl]                                       ; $50b5: $5e
	cp $0e                                           ; $50b6: $fe $0e
	xor $1e                                          ; $50b8: $ee $1e
	sbc $0e                                          ; $50ba: $de $0e
	ld e, [hl]                                       ; $50bc: $5e
	ld c, $fb                                        ; $50bd: $0e $fb
	sbc [hl]                                         ; $50bf: $9e
	call z, $b37b                                    ; $50c0: $cc $7b $b3
	ld a, l                                          ; $50c3: $7d
	ld a, [hl+]                                      ; $50c4: $2a
	sbc b                                            ; $50c5: $98
	sub $2f                                          ; $50c6: $d6 $2f
	add b                                            ; $50c8: $80
	ld a, [hl]                                       ; $50c9: $7e
	jr z, jr_046_50cc                                ; $50ca: $28 $00

jr_046_50cc:
	inc d                                            ; $50cc: $14
	ld a, d                                          ; $50cd: $7a
	jp nz, $fc7f                                     ; $50ce: $c2 $7f $fc

	sub l                                            ; $50d1: $95
	ld a, [de]                                       ; $50d2: $1a
	nop                                              ; $50d3: $00
	sub l                                            ; $50d4: $95
	jr nz, jr_046_5101                               ; $50d5: $20 $2a

	ld b, b                                          ; $50d7: $40
	ld d, l                                          ; $50d8: $55
	add b                                            ; $50d9: $80
	push bc                                          ; $50da: $c5
	ldh [$79], a                                     ; $50db: $e0 $79
	adc l                                            ; $50dd: $8d
	ld [hl], h                                       ; $50de: $74
	inc h                                            ; $50df: $24
	cp $77                                           ; $50e0: $fe $77
	or $9d                                           ; $50e2: $f6 $9d
	inc d                                            ; $50e4: $14
	ld b, b                                          ; $50e5: $40
	ld h, h                                          ; $50e6: $64
	inc h                                            ; $50e7: $24
	db $fd                                           ; $50e8: $fd
	ld a, [hl]                                       ; $50e9: $7e
	db $ec                                           ; $50ea: $ec
	ld a, l                                          ; $50eb: $7d
	call nc, $347c                                   ; $50ec: $d4 $7c $34
	ld a, [hl]                                       ; $50ef: $7e
	dec de                                           ; $50f0: $1b
	db $fd                                           ; $50f1: $fd
	ld a, a                                          ; $50f2: $7f
	ld a, [$089e]                                    ; $50f3: $fa $9e $08
	ld a, e                                          ; $50f6: $7b
	ldh a, [c]                                       ; $50f7: $f2
	ld a, [hl]                                       ; $50f8: $7e
	sub h                                            ; $50f9: $94
	ld a, a                                          ; $50fa: $7f
	cp b                                             ; $50fb: $b8
	ld [hl], h                                       ; $50fc: $74
	ld l, b                                          ; $50fd: $68

Call_046_50fe:
	db $fd                                           ; $50fe: $fd
	ld a, [hl]                                       ; $50ff: $7e
	and [hl]                                         ; $5100: $a6

jr_046_5101:
	ld a, a                                          ; $5101: $7f
	or $7e                                           ; $5102: $f6 $7e
	jp nc, Jump_046_6b7f                             ; $5104: $d2 $7f $6b

	ld l, a                                          ; $5107: $6f
	ldh a, [$7e]                                     ; $5108: $f0 $7e
	cp h                                             ; $510a: $bc
	ld [hl], h                                       ; $510b: $74
	ld l, d                                          ; $510c: $6a
	sbc h                                            ; $510d: $9c
	ld a, [bc]                                       ; $510e: $0a
	db $fc                                           ; $510f: $fc
	inc b                                            ; $5110: $04
	ld [hl], a                                       ; $5111: $77
	add hl, de                                       ; $5112: $19
	ld [hl], c                                       ; $5113: $71
	ld e, h                                          ; $5114: $5c
	ld a, a                                          ; $5115: $7f
	sbc b                                            ; $5116: $98
	ld h, a                                          ; $5117: $67
	sub $fb                                          ; $5118: $d6 $fb
	halt                                             ; $511a: $76
	ld d, [hl]                                       ; $511b: $56
	db $fd                                           ; $511c: $fd
	halt                                             ; $511d: $76
	and a                                            ; $511e: $a7
	sbc [hl]                                         ; $511f: $9e
	ld a, [bc]                                       ; $5120: $0a
	ld l, e                                          ; $5121: $6b
	xor d                                            ; $5122: $aa
	sbc h                                            ; $5123: $9c
	ld a, [hl+]                                      ; $5124: $2a
	rra                                              ; $5125: $1f
	db $10                                           ; $5126: $10
	ld a, c                                          ; $5127: $79
	ld [hl+], a                                      ; $5128: $22
	ld a, a                                          ; $5129: $7f
	db $fc                                           ; $512a: $fc
	ld a, [hl]                                       ; $512b: $7e
	ret nz                                           ; $512c: $c0

	sbc d                                            ; $512d: $9a
	ret c                                            ; $512e: $d8

	ld bc, $00af                                     ; $512f: $01 $af $00
	ld d, c                                          ; $5132: $51
	ld l, e                                          ; $5133: $6b
	ldh [$7e], a                                     ; $5134: $e0 $7e
	inc c                                            ; $5136: $0c
	sbc c                                            ; $5137: $99
	rst SubAFromDE                                          ; $5138: $df
	jr nz, jr_046_513b                               ; $5139: $20 $00

jr_046_513b:
	rst $38                                          ; $513b: $ff
	adc h                                            ; $513c: $8c
	inc bc                                           ; $513d: $03
	halt                                             ; $513e: $76
	db $ed                                           ; $513f: $ed
	ld a, [hl]                                       ; $5140: $7e
	ld [de], a                                       ; $5141: $12
	ld a, l                                          ; $5142: $7d
	sub l                                            ; $5143: $95
	add d                                            ; $5144: $82
	ld sp, hl                                        ; $5145: $f9
	rlca                                             ; $5146: $07
	rst $38                                          ; $5147: $ff
	nop                                              ; $5148: $00
	inc a                                            ; $5149: $3c
	jp $ff37                                         ; $514a: $c3 $37 $ff


	pop hl                                           ; $514d: $e1
	rra                                              ; $514e: $1f
	nop                                              ; $514f: $00
	nop                                              ; $5150: $00
	rst JumpTable                                          ; $5151: $c7
	nop                                              ; $5152: $00
	or a                                             ; $5153: $b7
	ld c, b                                          ; $5154: $48
	ldh [c], a                                       ; $5155: $e2
	dec e                                            ; $5156: $1d
	adc e                                            ; $5157: $8b
	inc b                                            ; $5158: $04
	adc a                                            ; $5159: $8f
	nop                                              ; $515a: $00
	dec bc                                           ; $515b: $0b
	add h                                            ; $515c: $84
	add hl, bc                                       ; $515d: $09
	add [hl]                                         ; $515e: $86
	nop                                              ; $515f: $00
	nop                                              ; $5160: $00
	adc h                                            ; $5161: $8c
	ld a, e                                          ; $5162: $7b
	inc h                                            ; $5163: $24
	ld a, [hl]                                       ; $5164: $7e
	jp nz, $909d                                     ; $5165: $c2 $9d $90

	ld l, a                                          ; $5168: $6f
	halt                                             ; $5169: $76
	ldh [c], a                                       ; $516a: $e2
	sbc d                                            ; $516b: $9a
	cp d                                             ; $516c: $ba
	ld b, l                                          ; $516d: $45
	nop                                              ; $516e: $00
	nop                                              ; $516f: $00
	ld h, a                                          ; $5170: $67
	ld a, e                                          ; $5171: $7b
	ldh a, [$80]                                     ; $5172: $f0 $80
	or b                                             ; $5174: $b0
	ld c, a                                          ; $5175: $4f
	ld bc, $e1ff                                     ; $5176: $01 $ff $e1
	cp $5f                                           ; $5179: $fe $5f
	ldh [$7f], a                                     ; $517b: $e0 $7f
	add b                                            ; $517d: $80
	cp a                                             ; $517e: $bf
	ld b, b                                          ; $517f: $40
	ld e, $e1                                        ; $5180: $1e $e1
	ld a, e                                          ; $5182: $7b
	jp $c3fd                                         ; $5183: $c3 $fd $c3


	db $e3                                           ; $5186: $e3
	rst SubAFromDE                                          ; $5187: $df
	reti                                             ; $5188: $d9


	rst $38                                          ; $5189: $ff
	db $e3                                           ; $518a: $e3
	rst SubAFromDE                                          ; $518b: $df
	push de                                          ; $518c: $d5
	db $eb                                           ; $518d: $eb
	and d                                            ; $518e: $a2
	ld e, a                                          ; $518f: $5f
	ld [de], a                                       ; $5190: $12
	rst AddAOntoHL                                          ; $5191: $ef
	ld h, d                                          ; $5192: $62
	sub b                                            ; $5193: $90
	sbc a                                            ; $5194: $9f
	ld h, d                                          ; $5195: $62
	adc a                                            ; $5196: $8f
	ld h, d                                          ; $5197: $62

Call_046_5198:
	adc a                                            ; $5198: $8f
	ld b, d                                          ; $5199: $42
	cp a                                             ; $519a: $bf
	add d                                            ; $519b: $82
	rst $38                                          ; $519c: $ff
	ld [de], a                                       ; $519d: $12
	rst AddAOntoHL                                          ; $519e: $ef
	ld d, h                                          ; $519f: $54
	ld [bc], a                                       ; $51a0: $02
	jr z, jr_046_51a5                                ; $51a1: $28 $02

	ld a, b                                          ; $51a3: $78
	sbc a                                            ; $51a4: $9f

jr_046_51a5:
	ld a, e                                          ; $51a5: $7b
	cp $77                                           ; $51a6: $fe $77
	or $7e                                           ; $51a8: $f6 $7e
	ret nz                                           ; $51aa: $c0

	sbc h                                            ; $51ab: $9c
	xor [hl]                                         ; $51ac: $ae
	ld c, $5f                                        ; $51ad: $0e $5f
	sbc $0e                                          ; $51af: $de $0e
	sbc [hl]                                         ; $51b1: $9e
	rrca                                             ; $51b2: $0f
	ld a, e                                          ; $51b3: $7b
	cp $9e                                           ; $51b4: $fe $9e
	xor a                                            ; $51b6: $af
	ld a, e                                          ; $51b7: $7b
	or $8e                                           ; $51b8: $f6 $8e
	rst $38                                          ; $51ba: $ff
	ld c, $f4                                        ; $51bb: $0e $f4
	ei                                               ; $51bd: $fb
	ret                                              ; $51be: $c9


	or $93                                           ; $51bf: $f6 $93
	db $ec                                           ; $51c1: $ec
	daa                                              ; $51c2: $27
	ret c                                            ; $51c3: $d8

	ld c, a                                          ; $51c4: $4f
	or b                                             ; $51c5: $b0
	sbc a                                            ; $51c6: $9f
	ld h, b                                          ; $51c7: $60
	ld a, a                                          ; $51c8: $7f
	add b                                            ; $51c9: $80
	rst $38                                          ; $51ca: $ff
	ld [hl], e                                       ; $51cb: $73
	inc e                                            ; $51cc: $1c
	sbc [hl]                                         ; $51cd: $9e
	ld [$5775], a                                    ; $51ce: $ea $75 $57
	ld l, e                                          ; $51d1: $6b
	cp $77                                           ; $51d2: $fe $77
	ldh a, [rPCM34]                                  ; $51d4: $f0 $77
	db $fc                                           ; $51d6: $fc
	ld a, l                                          ; $51d7: $7d
	db $ec                                           ; $51d8: $ec
	ld c, a                                          ; $51d9: $4f
	ldh a, [$7f]                                     ; $51da: $f0 $7f
	db $fc                                           ; $51dc: $fc
	ld b, a                                          ; $51dd: $47
	ldh a, [$6f]                                     ; $51de: $f0 $6f
	call c, $f057                                    ; $51e0: $dc $57 $f0
	ld [hl], a                                       ; $51e3: $77
	call c, $f003                                    ; $51e4: $dc $03 $f0
	ld e, e                                          ; $51e7: $5b
	ldh a, [rVBK]                                    ; $51e8: $f0 $4f
	or b                                             ; $51ea: $b0
	ld [hl], l                                       ; $51eb: $75
	rst SubAFromDE                                          ; $51ec: $df
	ccf                                              ; $51ed: $3f
	sub b                                            ; $51ee: $90
	sbc e                                            ; $51ef: $9b
	add d                                            ; $51f0: $82
	ld a, h                                          ; $51f1: $7c
	jr nc, jr_046_5203                               ; $51f2: $30 $0f

	ld e, a                                          ; $51f4: $5f
	ld h, d                                          ; $51f5: $62
	ld a, c                                          ; $51f6: $79
	cp l                                             ; $51f7: $bd
	sbc b                                            ; $51f8: $98
	ccf                                              ; $51f9: $3f
	ld b, h                                          ; $51fa: $44
	add e                                            ; $51fb: $83
	inc b                                            ; $51fc: $04
	ld hl, sp-$20                                    ; $51fd: $f8 $e0
	rra                                              ; $51ff: $1f
	halt                                             ; $5200: $76
	ldh [c], a                                       ; $5201: $e2
	ld [hl], a                                       ; $5202: $77

jr_046_5203:
	cp $96                                           ; $5203: $fe $96
	ld [hl], a                                       ; $5205: $77
	rst $38                                          ; $5206: $ff
	rrca                                             ; $5207: $0f
	ld a, a                                          ; $5208: $7f
	jr nz, jr_046_521a                               ; $5209: $20 $0f

	pop bc                                           ; $520b: $c1
	nop                                              ; $520c: $00
	cp b                                             ; $520d: $b8
	ld a, c                                          ; $520e: $79
	ld [hl], $77                                     ; $520f: $36 $77
	ld [hl], b                                       ; $5211: $70
	ld l, a                                          ; $5212: $6f
	reti                                             ; $5213: $d9


	add d                                            ; $5214: $82
	ldh a, [rIF]                                     ; $5215: $f0 $0f
	ccf                                              ; $5217: $3f
	nop                                              ; $5218: $00
	ld b, e                                          ; $5219: $43

jr_046_521a:
	add b                                            ; $521a: $80
	jr z, @+$52                                      ; $521b: $28 $50

	add l                                            ; $521d: $85
	ld a, [bc]                                       ; $521e: $0a
	ld a, a                                          ; $521f: $7f
	add b                                            ; $5220: $80
	ccf                                              ; $5221: $3f
	ret nz                                           ; $5222: $c0

	adc e                                            ; $5223: $8b
	db $f4                                           ; $5224: $f4
	push hl                                          ; $5225: $e5
	ld a, [$fd22]                                    ; $5226: $fa $22 $fd
	db $d3                                           ; $5229: $d3
	cpl                                              ; $522a: $2f
	ld a, a                                          ; $522b: $7f
	nop                                              ; $522c: $00
	rlca                                             ; $522d: $07
	nop                                              ; $522e: $00
	rst $38                                          ; $522f: $ff
	rst $38                                          ; $5230: $ff
	db $fd                                           ; $5231: $fd
	ld a, d                                          ; $5232: $7a
	ret z                                            ; $5233: $c8

	sub h                                            ; $5234: $94
	jp $d3ff                                         ; $5235: $c3 $ff $d3


	rst AddAOntoHL                                          ; $5238: $ef
	rst $38                                          ; $5239: $ff
	jp $f7cb                                         ; $523a: $c3 $cb $f7


	db $db                                           ; $523d: $db
	rst SubAFromBC                                          ; $523e: $e7
	db $eb                                           ; $523f: $eb
	ld a, b                                          ; $5240: $78
	inc h                                            ; $5241: $24
	add b                                            ; $5242: $80
	dec hl                                           ; $5243: $2b
	rst SubAFromDE                                          ; $5244: $df
	adc $bf                                          ; $5245: $ce $bf
	ld l, a                                          ; $5247: $6f

jr_046_5248:
	sbc a                                            ; $5248: $9f
	ld c, a                                          ; $5249: $4f
	cp a                                             ; $524a: $bf
	ld c, a                                          ; $524b: $4f
	cp a                                             ; $524c: $bf
	adc a                                            ; $524d: $8f
	rst $38                                          ; $524e: $ff
	ld a, [hl]                                       ; $524f: $7e
	ld [bc], a                                       ; $5250: $02
	dec hl                                           ; $5251: $2b
	ld d, [hl]                                       ; $5252: $56
	ld d, [hl]                                       ; $5253: $56
	ld a, [hl+]                                      ; $5254: $2a
	ld a, [hl+]                                      ; $5255: $2a
	ld d, [hl]                                       ; $5256: $56
	inc bc                                           ; $5257: $03
	ld a, [hl]                                       ; $5258: $7e
	inc bc                                           ; $5259: $03
	ld a, [hl]                                       ; $525a: $7e
	add e                                            ; $525b: $83
	ld a, [hl]                                       ; $525c: $7e
	add d                                            ; $525d: $82
	ld a, a                                          ; $525e: $7f
	rst $38                                          ; $525f: $ff
	ld c, $af                                        ; $5260: $0e $af
	sub d                                            ; $5262: $92
	ld e, [hl]                                       ; $5263: $5e
	rst SubAFromDE                                          ; $5264: $df
	ld l, $af                                        ; $5265: $2e $af
	ld e, [hl]                                       ; $5267: $5e
	ld e, a                                          ; $5268: $5f
	xor [hl]                                         ; $5269: $ae
	adc a                                            ; $526a: $8f
	ld a, [hl]                                       ; $526b: $7e
	ld c, $ff                                        ; $526c: $0e $ff
	adc [hl]                                         ; $526e: $8e
	ld a, a                                          ; $526f: $7f
	ld h, a                                          ; $5270: $67
	ld a, b                                          ; $5271: $78
	sub a                                            ; $5272: $97
	xor a                                            ; $5273: $af
	ld d, b                                          ; $5274: $50
	ld d, l                                          ; $5275: $55
	xor d                                            ; $5276: $aa
	xor d                                            ; $5277: $aa
	ld d, l                                          ; $5278: $55
	ld d, l                                          ; $5279: $55
	xor d                                            ; $527a: $aa
	ld e, a                                          ; $527b: $5f
	ld h, [hl]                                       ; $527c: $66
	sbc l                                            ; $527d: $9d
	ld d, a                                          ; $527e: $57
	xor b                                            ; $527f: $a8
	ld c, a                                          ; $5280: $4f
	ldh a, [$7f]                                     ; $5281: $f0 $7f
	cp $9d                                           ; $5283: $fe $9d
	xor e                                            ; $5285: $ab
	ld d, h                                          ; $5286: $54
	ld c, a                                          ; $5287: $4f
	ldh a, [$7f]                                     ; $5288: $f0 $7f
	cp $47                                           ; $528a: $fe $47
	ldh a, [rPCM12]                                  ; $528c: $f0 $76
	ld a, [hl]                                       ; $528e: $7e
	inc bc                                           ; $528f: $03
	cp $1b                                           ; $5290: $fe $1b
	cp $9d                                           ; $5292: $fe $9d
	push af                                          ; $5294: $f5
	ld a, [bc]                                       ; $5295: $0a
	rla                                              ; $5296: $17
	and b                                            ; $5297: $a0
	ld a, [hl]                                       ; $5298: $7e
	call c, $f04f                                    ; $5299: $dc $4f $f0
	ld b, a                                          ; $529c: $47
	ld h, b                                          ; $529d: $60
	ld c, a                                          ; $529e: $4f
	ldh a, [$7f]                                     ; $529f: $f0 $7f
	or h                                             ; $52a1: $b4
	ld [hl], a                                       ; $52a2: $77
	ldh a, [$9c]                                     ; $52a3: $f0 $9c
	jp hl                                            ; $52a5: $e9


	nop                                              ; $52a6: $00
	cp $63                                           ; $52a7: $fe $63
	or h                                             ; $52a9: $b4
	ld [hl], a                                       ; $52aa: $77
	ldh a, [hDisp1_WY]                                     ; $52ab: $f0 $95
	ret                                              ; $52ad: $c9


	jr nc, jr_046_5248                               ; $52ae: $30 $98

	rlca                                             ; $52b0: $07
	xor c                                            ; $52b1: $a9
	ld b, b                                          ; $52b2: $40
	call nc, $ea2a                                   ; $52b3: $d4 $2a $ea
	dec d                                            ; $52b6: $15
	ld l, a                                          ; $52b7: $6f
	ldh a, [$7e]                                     ; $52b8: $f0 $7e
	add $7e                                          ; $52ba: $c6 $7e
	jp z, $c79b                                      ; $52bc: $ca $9b $c7

	rst $38                                          ; $52bf: $ff
	rst AddAOntoHL                                          ; $52c0: $ef
	rst SubAFromDE                                          ; $52c1: $df
	halt                                             ; $52c2: $76
	cp h                                             ; $52c3: $bc
	sbc [hl]                                         ; $52c4: $9e
	rst GetHLinHL                                          ; $52c5: $cf
	ld a, e                                          ; $52c6: $7b
	cp $7e                                           ; $52c7: $fe $7e
	ld h, e                                          ; $52c9: $63
	sbc [hl]                                         ; $52ca: $9e
	ld c, a                                          ; $52cb: $4f
	ld a, e                                          ; $52cc: $7b
	db $fc                                           ; $52cd: $fc
	ld [hl], a                                       ; $52ce: $77
	or $7e                                           ; $52cf: $f6 $7e
	call nz, $af93                                   ; $52d1: $c4 $93 $af
	rst SubAFromDE                                          ; $52d4: $df
	ld l, a                                          ; $52d5: $6f
	sbc a                                            ; $52d6: $9f
	inc bc                                           ; $52d7: $03
	cp $02                                           ; $52d8: $fe $02
	rst $38                                          ; $52da: $ff
	ld [bc], a                                       ; $52db: $02
	rst $38                                          ; $52dc: $ff
	jp nz, $777f                                     ; $52dd: $c2 $7f $77

	cp $9b                                           ; $52e0: $fe $9b
	ld b, d                                          ; $52e2: $42
	rst $38                                          ; $52e3: $ff
	ld h, d                                          ; $52e4: $62
	rst $38                                          ; $52e5: $ff
	ld a, c                                          ; $52e6: $79
	adc l                                            ; $52e7: $8d
	ld d, e                                          ; $52e8: $53
	cp $77                                           ; $52e9: $fe $77
	cp h                                             ; $52eb: $bc
	sbc l                                            ; $52ec: $9d
	ld a, [hl+]                                      ; $52ed: $2a
	push de                                          ; $52ee: $d5
	ld l, a                                          ; $52ef: $6f
	or h                                             ; $52f0: $b4
	inc bc                                           ; $52f1: $03
	db $fc                                           ; $52f2: $fc
	inc bc                                           ; $52f3: $03
	db $fc                                           ; $52f4: $fc
	inc bc                                           ; $52f5: $03
	db $fc                                           ; $52f6: $fc
	inc bc                                           ; $52f7: $03
	db $fc                                           ; $52f8: $fc
	inc bc                                           ; $52f9: $03
	db $fc                                           ; $52fa: $fc
	inc bc                                           ; $52fb: $03
	db $fc                                           ; $52fc: $fc
	inc bc                                           ; $52fd: $03
	db $fc                                           ; $52fe: $fc
	ld d, e                                          ; $52ff: $53
	db $fc                                           ; $5300: $fc
	ld a, d                                          ; $5301: $7a
	rst SubAFromHL                                          ; $5302: $d7
	sub c                                            ; $5303: $91
	db $d3                                           ; $5304: $d3
	di                                               ; $5305: $f3
	rst AddAOntoHL                                          ; $5306: $ef
	rst SubAFromBC                                          ; $5307: $e7
	rst SubAFromDE                                          ; $5308: $df
	rst GetHLinHL                                          ; $5309: $cf
	rst $38                                          ; $530a: $ff
	db $db                                           ; $530b: $db
	rst $38                                          ; $530c: $ff
	db $e3                                           ; $530d: $e3
	rst $38                                          ; $530e: $ff
	jp $2fff                                         ; $530f: $c3 $ff $2f


	ld [hl], d                                       ; $5312: $72
	add $7e                                          ; $5313: $c6 $7e
	cp [hl]                                          ; $5315: $be
	ld h, a                                          ; $5316: $67
	cp $9c                                           ; $5317: $fe $9c
	jp nc, $e27f                                     ; $5319: $d2 $7f $e2

	ld a, d                                          ; $531c: $7a
	ret z                                            ; $531d: $c8

	sbc h                                            ; $531e: $9c
	ld l, d                                          ; $531f: $6a
	rst $38                                          ; $5320: $ff
	ld d, d                                          ; $5321: $52
	ld a, e                                          ; $5322: $7b
	db $fc                                           ; $5323: $fc
	sbc h                                            ; $5324: $9c
	ld [hl], d                                       ; $5325: $72
	rst $38                                          ; $5326: $ff
	ld a, d                                          ; $5327: $7a
	ld c, d                                          ; $5328: $4a
	jp nz, $947e                                     ; $5329: $c2 $7e $94

	ld a, a                                          ; $532c: $7f
	cp h                                             ; $532d: $bc
	sbc [hl]                                         ; $532e: $9e
	ld bc, $5f66                                     ; $532f: $01 $66 $5f
	ld [hl], e                                       ; $5332: $73
	cp $77                                           ; $5333: $fe $77
	xor h                                            ; $5335: $ac
	sbc l                                            ; $5336: $9d
	ld [bc], a                                       ; $5337: $02
	db $fd                                           ; $5338: $fd
	ld c, a                                          ; $5339: $4f
	ldh a, [$7f]                                     ; $533a: $f0 $7f
	db $fc                                           ; $533c: $fc
	ld b, a                                          ; $533d: $47
	ldh a, [$9d]                                     ; $533e: $f0 $9d
	dec d                                            ; $5340: $15
	ld [$f04f], a                                    ; $5341: $ea $4f $f0
	ld a, a                                          ; $5344: $7f
	db $fc                                           ; $5345: $fc
	sbc l                                            ; $5346: $9d
	ld a, [bc]                                       ; $5347: $0a
	push af                                          ; $5348: $f5
	ld c, a                                          ; $5349: $4f
	ldh a, [$67]                                     ; $534a: $f0 $67
	call z, $f003                                    ; $534c: $cc $03 $f0
	inc bc                                           ; $534f: $03
	ldh a, [$6f]                                     ; $5350: $f0 $6f
	ldh a, [rBGP]                                    ; $5352: $f0 $47
	sub b                                            ; $5354: $90
	rrca                                             ; $5355: $0f
	ldh a, [rIF]                                     ; $5356: $f0 $0f
	ld b, b                                          ; $5358: $40
	sbc l                                            ; $5359: $9d
	add b                                            ; $535a: $80
	ld a, a                                          ; $535b: $7f
	ld e, a                                          ; $535c: $5f
	ldh a, [$7e]                                     ; $535d: $f0 $7e
	adc $4f                                          ; $535f: $ce $4f
	cp $5e                                           ; $5361: $fe $5e
	add $6f                                          ; $5363: $c6 $6f
	cp $9e                                           ; $5365: $fe $9e
	halt                                             ; $5367: $76
	ld a, d                                          ; $5368: $7a
	call z, Call_046_7e9e                            ; $5369: $cc $9e $7e
	ld [hl], e                                       ; $536c: $73
	db $fc                                           ; $536d: $fc
	ld l, a                                          ; $536e: $6f
	cp $75                                           ; $536f: $fe $75
	ld h, b                                          ; $5371: $60
	ld a, [hl]                                       ; $5372: $7e
	and b                                            ; $5373: $a0
	ld e, a                                          ; $5374: $5f
	db $fc                                           ; $5375: $fc
	nop                                              ; $5376: $00
	xor l                                            ; $5377: $ad
	inc bc                                           ; $5378: $03
	cp $03                                           ; $5379: $fe $03
	cp $6b                                           ; $537b: $fe $6b
	cp $99                                           ; $537d: $fe $99
	db $10                                           ; $537f: $10
	adc a                                            ; $5380: $8f
	jr c, jr_046_539a                                ; $5381: $38 $17

	sbc b                                            ; $5383: $98
	scf                                              ; $5384: $37
	inc bc                                           ; $5385: $03
	ret c                                            ; $5386: $d8

	inc hl                                           ; $5387: $23
	cp $99                                           ; $5388: $fe $99
	ld [bc], a                                       ; $538a: $02
	pop af                                           ; $538b: $f1
	rlca                                             ; $538c: $07
	ldh [c], a                                       ; $538d: $e2
	inc de                                           ; $538e: $13
	and $03                                          ; $538f: $e6 $03
	ret c                                            ; $5391: $d8

	inc bc                                           ; $5392: $03
	cp $4f                                           ; $5393: $fe $4f
	cp $06                                           ; $5395: $fe $06
	ret nz                                           ; $5397: $c0

	ld h, [hl]                                       ; $5398: $66
	ret z                                            ; $5399: $c8

jr_046_539a:
	ld h, a                                          ; $539a: $67
	cp $66                                           ; $539b: $fe $66
	ret z                                            ; $539d: $c8

	ld h, a                                          ; $539e: $67
	ldh [$03], a                                     ; $539f: $e0 $03
	sbc [hl]                                         ; $53a1: $9e
	inc bc                                           ; $53a2: $03
	cp $0f                                           ; $53a3: $fe $0f
	cp $7e                                           ; $53a5: $fe $7e
	adc $7f                                          ; $53a7: $ce $7f
	cp $9d                                           ; $53a9: $fe $9d
	cp b                                             ; $53ab: $b8
	rla                                              ; $53ac: $17
	ld e, a                                          ; $53ad: $5f
	cp $03                                           ; $53ae: $fe $03
	adc $4b                                          ; $53b0: $ce $4b
	cp $7e                                           ; $53b2: $fe $7e
	adc $7f                                          ; $53b4: $ce $7f
	cp $9d                                           ; $53b6: $fe $9d
	rla                                              ; $53b8: $17
	ldh [c], a                                       ; $53b9: $e2
	ld e, a                                          ; $53ba: $5f
	cp $03                                           ; $53bb: $fe $03
	adc $03                                          ; $53bd: $ce $03
	cp $4f                                           ; $53bf: $fe $4f
	cp $35                                           ; $53c1: $fe $35
	nop                                              ; $53c3: $00
	sbc [hl]                                         ; $53c4: $9e
	ld d, l                                          ; $53c5: $55
	reti                                             ; $53c6: $d9


	ld b, h                                          ; $53c7: $44
	sbc [hl]                                         ; $53c8: $9e
	ld b, l                                          ; $53c9: $45
	ld h, e                                          ; $53ca: $63
	or $df                                           ; $53cb: $f6 $df
	ld d, l                                          ; $53cd: $55
	sbc l                                            ; $53ce: $9d
	inc sp                                           ; $53cf: $33
	ld d, e                                          ; $53d0: $53
	sbc $33                                          ; $53d1: $de $33
	sbc c                                            ; $53d3: $99
	ld b, e                                          ; $53d4: $43
	ld d, e                                          ; $53d5: $53
	ld d, h                                          ; $53d6: $54
	inc sp                                           ; $53d7: $33
	ld d, l                                          ; $53d8: $55
	ld h, [hl]                                       ; $53d9: $66
	db $dd                                           ; $53da: $dd
	inc sp                                           ; $53db: $33
	sbc [hl]                                         ; $53dc: $9e
	ld b, e                                          ; $53dd: $43
	sbc $33                                          ; $53de: $de $33
	ld a, a                                          ; $53e0: $7f
	or $77                                           ; $53e1: $f6 $77
	db $ec                                           ; $53e3: $ec
	sbc l                                            ; $53e4: $9d
	inc sp                                           ; $53e5: $33
	dec [hl]                                         ; $53e6: $35
	sbc $55                                          ; $53e7: $de $55
	ld [hl], e                                       ; $53e9: $73
	db $ec                                           ; $53ea: $ec
	ld [hl], a                                       ; $53eb: $77
	db $ed                                           ; $53ec: $ed
	ld h, e                                          ; $53ed: $63
	or $6b                                           ; $53ee: $f6 $6b
	ret c                                            ; $53f0: $d8

	db $dd                                           ; $53f1: $dd
	inc sp                                           ; $53f2: $33
	sbc [hl]                                         ; $53f3: $9e
	ld [hl], a                                       ; $53f4: $77
	inc de                                           ; $53f5: $13
	or $23                                           ; $53f6: $f6 $23
	adc c                                            ; $53f8: $89
	ei                                               ; $53f9: $fb
	add l                                            ; $53fa: $85
	add b                                            ; $53fb: $80
	and b                                            ; $53fc: $a0
	rst $38                                          ; $53fd: $ff
	rst $38                                          ; $53fe: $ff
	xor a                                            ; $53ff: $af
	ld d, l                                          ; $5400: $55
	and d                                            ; $5401: $a2
	ld d, l                                          ; $5402: $55
	ld b, d                                          ; $5403: $42
	call nc, $4989                                   ; $5404: $d4 $89 $49
	ld c, b                                          ; $5407: $48
	ld e, [hl]                                       ; $5408: $5e
	ld c, e                                          ; $5409: $4b
	ld a, $1c                                        ; $540a: $3e $1c
	ld [$cfdf], sp                                   ; $540c: $08 $df $cf
	sbc a                                            ; $540f: $9f
	ld a, a                                          ; $5410: $7f
	dec hl                                           ; $5411: $2b
	ld a, a                                          ; $5412: $7f
	cp h                                             ; $5413: $bc
	ld e, l                                          ; $5414: $5d
	ld sp, hl                                        ; $5415: $f9
	rst SubAFromDE                                          ; $5416: $df
	rst $38                                          ; $5417: $ff
	sbc [hl]                                         ; $5418: $9e
	xor d                                            ; $5419: $aa
	ld [hl], a                                       ; $541a: $77
	ret c                                            ; $541b: $d8

	ld hl, sp-$69                                    ; $541c: $f8 $97
	ld [$a8d5], a                                    ; $541e: $ea $d5 $a8
	ld d, h                                          ; $5421: $54
	ld a, [hl+]                                      ; $5422: $2a
	dec d                                            ; $5423: $15
	ld a, [hl+]                                      ; $5424: $2a
	rlca                                             ; $5425: $07
	ld a, [$6096]                                    ; $5426: $fa $96 $60
	and b                                            ; $5429: $a0
	ld b, b                                          ; $542a: $40
	nop                                              ; $542b: $00
	inc b                                            ; $542c: $04
	ld a, [bc]                                       ; $542d: $0a
	ld d, l                                          ; $542e: $55
	ld [$f431], a                                    ; $542f: $ea $31 $f4
	sbc h                                            ; $5432: $9c
	ld e, b                                          ; $5433: $58
	or c                                             ; $5434: $b1
	ld b, b                                          ; $5435: $40
	ld sp, hl                                        ; $5436: $f9
	sub a                                            ; $5437: $97
	ld a, [hl+]                                      ; $5438: $2a
	ld d, h                                          ; $5439: $54
	jr nz, jr_046_543c                               ; $543a: $20 $00

jr_046_543c:
	inc bc                                           ; $543c: $03
	ld a, [bc]                                       ; $543d: $0a
	ld d, c                                          ; $543e: $51
	xor c                                            ; $543f: $a9
	ld sp, hl                                        ; $5440: $f9
	sub a                                            ; $5441: $97
	cp a                                             ; $5442: $bf
	ld a, [bc]                                       ; $5443: $0a
	ld bc, $552a                                     ; $5444: $01 $2a $55
	xor d                                            ; $5447: $aa
	ld d, l                                          ; $5448: $55
	adc d                                            ; $5449: $8a
	cp $8f                                           ; $544a: $fe $8f
	ld bc, $1f07                                     ; $544c: $01 $07 $1f
	rra                                              ; $544f: $1f
	inc bc                                           ; $5450: $03
	rst $38                                          ; $5451: $ff
	rst $38                                          ; $5452: $ff
	ld e, a                                          ; $5453: $5f
	cp [hl]                                          ; $5454: $be
	ld a, c                                          ; $5455: $79
	xor d                                            ; $5456: $aa
	ld [hl], l                                       ; $5457: $75
	ld [$7300], sp                                   ; $5458: $08 $00 $73
	ld a, a                                          ; $545b: $7f
	db $db                                           ; $545c: $db
	rst $38                                          ; $545d: $ff
	sub l                                            ; $545e: $95
	xor [hl]                                         ; $545f: $ae
	push de                                          ; $5460: $d5
	xor d                                            ; $5461: $aa
	ld d, l                                          ; $5462: $55
	xor d                                            ; $5463: $aa
	ld b, l                                          ; $5464: $45
	add d                                            ; $5465: $82
	nop                                              ; $5466: $00
	ldh [$f8], a                                     ; $5467: $e0 $f8
	sbc $fc                                          ; $5469: $de $fc
	sbc $ff                                          ; $546b: $de $ff
	sbc b                                            ; $546d: $98
	cp a                                             ; $546e: $bf
	ld d, a                                          ; $546f: $57
	xor e                                            ; $5470: $ab
	ld d, a                                          ; $5471: $57
	xor e                                            ; $5472: $ab
	ld d, l                                          ; $5473: $55
	and b                                            ; $5474: $a0
	db $fc                                           ; $5475: $fc
	sbc l                                            ; $5476: $9d
	jr jr_046_54b0                                   ; $5477: $18 $37

	call c, $9aff                                    ; $5479: $dc $ff $9a
	ld e, [hl]                                       ; $547c: $5e
	and a                                            ; $547d: $a7
	pop bc                                           ; $547e: $c1
	nop                                              ; $547f: $00
	ld bc, $6577                                     ; $5480: $01 $77 $65
	sbc l                                            ; $5483: $9d
	rst $38                                          ; $5484: $ff
	ld a, a                                          ; $5485: $7f
	ld [hl], a                                       ; $5486: $77
	res 2, l                                         ; $5487: $cb $95
	sub h                                            ; $5489: $94
	nop                                              ; $548a: $00
	add b                                            ; $548b: $80
	ldh [$80], a                                     ; $548c: $e0 $80
	ccf                                              ; $548e: $3f
	rra                                              ; $548f: $1f
	ld [hl-], a                                      ; $5490: $32
	nop                                              ; $5491: $00
	call nz, $ffde                                   ; $5492: $c4 $de $ff
	sbc b                                            ; $5495: $98
	push af                                          ; $5496: $f5
	db $eb                                           ; $5497: $eb
	rst SubAFromDE                                          ; $5498: $df
	ret nc                                           ; $5499: $d0

	ld a, [bc]                                       ; $549a: $0a
	adc b                                            ; $549b: $88
	ld a, h                                          ; $549c: $7c
	ld a, e                                          ; $549d: $7b

Call_046_549e:
	ret z                                            ; $549e: $c8

	adc c                                            ; $549f: $89
	scf                                              ; $54a0: $37
	daa                                              ; $54a1: $27
	ld c, a                                          ; $54a2: $4f
	cp a                                             ; $54a3: $bf
	rst $38                                          ; $54a4: $ff
	rst $38                                          ; $54a5: $ff
	add b                                            ; $54a6: $80
	add $49                                          ; $54a7: $c6 $49
	ret nz                                           ; $54a9: $c0

	or l                                             ; $54aa: $b5
	ld c, d                                          ; $54ab: $4a
	sub l                                            ; $54ac: $95
	add b                                            ; $54ad: $80
	and b                                            ; $54ae: $a0
	ld b, l                                          ; $54af: $45

jr_046_54b0:
	cp b                                             ; $54b0: $b8
	cp a                                             ; $54b1: $bf
	rst $38                                          ; $54b2: $ff
	cp a                                             ; $54b3: $bf
	rst $38                                          ; $54b4: $ff
	ld a, a                                          ; $54b5: $7f
	cp $96                                           ; $54b6: $fe $96
	jr nz, jr_046_54f0                               ; $54b8: $20 $36

	ld c, $27                                        ; $54ba: $0e $27
	ld c, d                                          ; $54bc: $4a
	xor b                                            ; $54bd: $a8
	dec e                                            ; $54be: $1d
	xor a                                            ; $54bf: $af
	db $fd                                           ; $54c0: $fd
	ld [hl], a                                       ; $54c1: $77
	jp $94ff                                         ; $54c2: $c3 $ff $94


	inc c                                            ; $54c5: $0c
	ld l, b                                          ; $54c6: $68
	ld b, b                                          ; $54c7: $40
	adc b                                            ; $54c8: $88
	ret nc                                           ; $54c9: $d0

	db $ed                                           ; $54ca: $ed
	sbc a                                            ; $54cb: $9f
	dec a                                            ; $54cc: $3d
	rst FarCall                                          ; $54cd: $f7
	rst $38                                          ; $54ce: $ff
	rst FarCall                                          ; $54cf: $f7
	ld [hl], e                                       ; $54d0: $73
	ldh a, [hDisp1_OBP1]                                     ; $54d1: $f0 $94
	ld bc, $2002                                     ; $54d3: $01 $02 $20
	ld a, [hl-]                                      ; $54d6: $3a
	ld [hl], a                                       ; $54d7: $77
	ld l, $ff                                        ; $54d8: $2e $ff
	rst FarCall                                          ; $54da: $f7
	ei                                               ; $54db: $fb
	rst $38                                          ; $54dc: $ff
	rst AddAOntoHL                                          ; $54dd: $ef
	ld a, e                                          ; $54de: $7b
	sbc a                                            ; $54df: $9f
	sbc [hl]                                         ; $54e0: $9e
	ld l, d                                          ; $54e1: $6a
	ld a, e                                          ; $54e2: $7b
	inc bc                                           ; $54e3: $03
	ld a, a                                          ; $54e4: $7f
	sub h                                            ; $54e5: $94
	sbc c                                            ; $54e6: $99
	add hl, de                                       ; $54e7: $19
	db $10                                           ; $54e8: $10
	rst $38                                          ; $54e9: $ff
	db $fd                                           ; $54ea: $fd
	xor e                                            ; $54eb: $ab
	halt                                             ; $54ec: $76
	ld [hl], a                                       ; $54ed: $77
	adc a                                            ; $54ee: $8f
	sub [hl]                                         ; $54ef: $96

jr_046_54f0:
	ld a, [bc]                                       ; $54f0: $0a
	stop                                             ; $54f1: $10 $00
	ld b, $6f                                        ; $54f3: $06 $6f
	add d                                            ; $54f5: $82
	ld c, c                                          ; $54f6: $49
	ld e, $fc                                        ; $54f7: $1e $fc
	sbc $fe                                          ; $54f9: $de $fe
	sbc [hl]                                         ; $54fb: $9e
	ldh a, [c]                                       ; $54fc: $f2
	sbc $ff                                          ; $54fd: $de $ff
	sub a                                            ; $54ff: $97
	ld d, $0b                                        ; $5500: $16 $0b
	dec b                                            ; $5502: $05
	xor b                                            ; $5503: $a8
	ld a, b                                          ; $5504: $78
	jp nc, $c2e5                                     ; $5505: $d2 $e5 $c2

	call c, $9408                                    ; $5508: $dc $08 $94
	add hl, de                                       ; $550b: $19
	ei                                               ; $550c: $fb
	rst $38                                          ; $550d: $ff
	ld [$0818], sp                                   ; $550e: $08 $18 $08
	jr jr_046_551c                                   ; $5511: $18 $09

	jp z, $885c                                      ; $5513: $ca $5c $88

	cp $7f                                           ; $5516: $fe $7f
	ccf                                              ; $5518: $3f
	ld [hl], e                                       ; $5519: $73
	or b                                             ; $551a: $b0
	ld a, a                                          ; $551b: $7f

jr_046_551c:
	sbc a                                            ; $551c: $9f
	sbc [hl]                                         ; $551d: $9e
	ld b, $fe                                        ; $551e: $06 $fe
	rst SubAFromDE                                          ; $5520: $df
	rrca                                             ; $5521: $0f
	rst SubAFromDE                                          ; $5522: $df
	rra                                              ; $5523: $1f
	sub c                                            ; $5524: $91
	scf                                              ; $5525: $37
	rrca                                             ; $5526: $0f
	adc a                                            ; $5527: $8f
	rst $38                                          ; $5528: $ff
	ld [de], a                                       ; $5529: $12
	dec b                                            ; $552a: $05
	nop                                              ; $552b: $00
	jr nz, jr_046_5576                               ; $552c: $20 $48

	sub e                                            ; $552e: $93
	ld d, [hl]                                       ; $552f: $56
	dec e                                            ; $5530: $1d
	ldh a, [$fe]                                     ; $5531: $f0 $fe
	db $db                                           ; $5533: $db
	rst $38                                          ; $5534: $ff
	ld a, [hl]                                       ; $5535: $7e
	pop af                                           ; $5536: $f1
	adc b                                            ; $5537: $88
	sub e                                            ; $5538: $93
	ld e, $3f                                        ; $5539: $1e $3f
	ld e, d                                          ; $553b: $5a
	cp l                                             ; $553c: $bd
	ld l, a                                          ; $553d: $6f
	nop                                              ; $553e: $00
	nop                                              ; $553f: $00
	pop hl                                           ; $5540: $e1
	ldh [$e0], a                                     ; $5541: $e0 $e0
	rst SubAFromBC                                          ; $5543: $e7
	rst SubAFromBC                                          ; $5544: $e7
	rst AddAOntoHL                                          ; $5545: $ef
	nop                                              ; $5546: $00
	ld h, c                                          ; $5547: $61
	ld [bc], a                                       ; $5548: $02
	ld [hl], c                                       ; $5549: $71
	ld c, l                                          ; $554a: $4d
	or e                                             ; $554b: $b3
	xor $b5                                          ; $554c: $ee $b5
	jr jr_046_55c7                                   ; $554e: $18 $77

	jp $ffde                                         ; $5550: $c3 $de $ff


	sub a                                            ; $5553: $97
	ld h, h                                          ; $5554: $64
	ld b, d                                          ; $5555: $42
	ld [bc], a                                       ; $5556: $02
	ld b, b                                          ; $5557: $40
	ld [bc], a                                       ; $5558: $02
	ld b, c                                          ; $5559: $41
	ld a, [$7b75]                                    ; $555a: $fa $75 $7b
	ld a, c                                          ; $555d: $79
	adc a                                            ; $555e: $8f
	pop hl                                           ; $555f: $e1
	ldh a, [$f0]                                     ; $5560: $f0 $f0
	ld sp, hl                                        ; $5562: $f9
	rst $38                                          ; $5563: $ff
	and b                                            ; $5564: $a0
	ld [bc], a                                       ; $5565: $02
	ld b, b                                          ; $5566: $40
	ld d, d                                          ; $5567: $52
	and b                                            ; $5568: $a0
	ld e, c                                          ; $5569: $59
	cp [hl]                                          ; $556a: $be
	ld d, h                                          ; $556b: $54
	inc bc                                           ; $556c: $03
	daa                                              ; $556d: $27
	ld [hl], h                                       ; $556e: $74
	ld [hl], e                                       ; $556f: $73
	sbc $95                                          ; $5570: $de $95
	inc b                                            ; $5572: $04
	ld e, b                                          ; $5573: $58
	xor d                                            ; $5574: $aa
	ld b, d                                          ; $5575: $42

jr_046_5576:
	nop                                              ; $5576: $00
	nop                                              ; $5577: $00
	ld b, l                                          ; $5578: $45
	ld a, [bc]                                       ; $5579: $0a
	rst $38                                          ; $557a: $ff
	rst FarCall                                          ; $557b: $f7
	ld [hl], d                                       ; $557c: $72
	db $f4                                           ; $557d: $f4
	sub [hl]                                         ; $557e: $96
	rst $38                                          ; $557f: $ff
	ld bc, $8008                                     ; $5580: $01 $08 $80
	nop                                              ; $5583: $00
	ld bc, $558a                                     ; $5584: $01 $8a $55
	xor b                                            ; $5587: $a8
	reti                                             ; $5588: $d9


	rst $38                                          ; $5589: $ff
	sub a                                            ; $558a: $97
	ld b, c                                          ; $558b: $41
	xor d                                            ; $558c: $aa
	dec d                                            ; $558d: $15
	ld a, [hl+]                                      ; $558e: $2a
	dec d                                            ; $558f: $15
	adc d                                            ; $5590: $8a
	ld b, l                                          ; $5591: $45
	xor d                                            ; $5592: $aa
	reti                                             ; $5593: $d9


	rst $38                                          ; $5594: $ff
	sub e                                            ; $5595: $93
	ld e, $ae                                        ; $5596: $1e $ae
	ld a, h                                          ; $5598: $7c
	ld [$8054], a                                    ; $5599: $ea $54 $80
	ld b, b                                          ; $559c: $40
	ret nz                                           ; $559d: $c0

	rst AddAOntoHL                                          ; $559e: $ef
	rst $38                                          ; $559f: $ff
	rra                                              ; $55a0: $1f
	ld [hl], a                                       ; $55a1: $77
	db $dd                                           ; $55a2: $dd
	rst $38                                          ; $55a3: $ff
	add a                                            ; $55a4: $87
	db $10                                           ; $55a5: $10
	jr nz, jr_046_55f1                               ; $55a6: $20 $49

	sbc a                                            ; $55a8: $9f
	cp a                                             ; $55a9: $bf
	ld e, a                                          ; $55aa: $5f

Call_046_55ab:
	sub a                                            ; $55ab: $97
	ld hl, sp-$01                                    ; $55ac: $f8 $ff
	ccf                                              ; $55ae: $3f
	rra                                              ; $55af: $1f
	db $fd                                           ; $55b0: $fd
	jp c, $f7bd                                      ; $55b1: $da $bd $f7

	ldh [rHDMA5], a                                  ; $55b4: $e0 $55
	ld [bc], a                                       ; $55b6: $02
	dec b                                            ; $55b7: $05
	ld a, [bc]                                       ; $55b8: $0a
	add b                                            ; $55b9: $80
	nop                                              ; $55ba: $00
	ldh [rAUD4LEN], a                                ; $55bb: $e0 $20
	db $dd                                           ; $55bd: $dd
	rst $38                                          ; $55be: $ff
	sbc [hl]                                         ; $55bf: $9e
	db $fd                                           ; $55c0: $fd
	ld a, d                                          ; $55c1: $7a
	and b                                            ; $55c2: $a0
	sub [hl]                                         ; $55c3: $96
	jp $e383                                         ; $55c4: $c3 $83 $e3


jr_046_55c7:
	ld h, c                                          ; $55c7: $61
	adc [hl]                                         ; $55c8: $8e
	sbc a                                            ; $55c9: $9f
	inc de                                           ; $55ca: $13
	dec sp                                           ; $55cb: $3b
	ccf                                              ; $55cc: $3f
	db $db                                           ; $55cd: $db
	rst $38                                          ; $55ce: $ff
	sub [hl]                                         ; $55cf: $96
	rst FarCall                                          ; $55d0: $f7
	rrca                                             ; $55d1: $0f
	dec bc                                           ; $55d2: $0b
	push de                                          ; $55d3: $d5
	ld l, e                                          ; $55d4: $6b
	ld d, d                                          ; $55d5: $52
	add c                                            ; $55d6: $81
	nop                                              ; $55d7: $00
	ld bc, $ffd9                                     ; $55d8: $01 $d9 $ff
	sub a                                            ; $55db: $97
	ld a, [hl]                                       ; $55dc: $7e
	cp h                                             ; $55dd: $bc
	rst $38                                          ; $55de: $ff
	rst $38                                          ; $55df: $ff
	cp $6e                                           ; $55e0: $fe $6e
	ccf                                              ; $55e2: $3f
	ld a, a                                          ; $55e3: $7f
	ld a, e                                          ; $55e4: $7b
	db $d3                                           ; $55e5: $d3
	call c, $96ff                                    ; $55e6: $dc $ff $96
	push de                                          ; $55e9: $d5
	ld h, b                                          ; $55ea: $60
	call nz, Call_046_50fe                           ; $55eb: $c4 $fe $50
	xor a                                            ; $55ee: $af
	rst $38                                          ; $55ef: $ff
	ccf                                              ; $55f0: $3f

jr_046_55f1:
	cp $7a                                           ; $55f1: $fe $7a
	sub e                                            ; $55f3: $93
	db $dd                                           ; $55f4: $dd
	rst $38                                          ; $55f5: $ff
	sub a                                            ; $55f6: $97
	ld b, b                                          ; $55f7: $40
	inc b                                            ; $55f8: $04
	ld [$7ff5], sp                                   ; $55f9: $08 $f5 $7f
	db $eb                                           ; $55fc: $eb
	rst SubAFromHL                                          ; $55fd: $d7
	ei                                               ; $55fe: $fb
	reti                                             ; $55ff: $d9


	rst $38                                          ; $5600: $ff
	adc a                                            ; $5601: $8f
	rrca                                             ; $5602: $0f
	ld d, $ad                                        ; $5603: $16 $ad
	halt                                             ; $5605: $76
	db $fd                                           ; $5606: $fd
	cp e                                             ; $5607: $bb
	ld a, l                                          ; $5608: $7d
	rst $38                                          ; $5609: $ff
	xor l                                            ; $560a: $ad
	ld e, d                                          ; $560b: $5a
	cp l                                             ; $560c: $bd
	ld e, d                                          ; $560d: $5a
	call $1d7a                                       ; $560e: $cd $7a $1d
	cp [hl]                                          ; $5611: $be
	db $fd                                           ; $5612: $fd
	sub a                                            ; $5613: $97
	ld [hl], b                                       ; $5614: $70
	nop                                              ; $5615: $00
	nop                                              ; $5616: $00
	ld [$eafc], sp                                   ; $5617: $08 $fc $ea
	sbc a                                            ; $561a: $9f
	adc [hl]                                         ; $561b: $8e
	ld a, e                                          ; $561c: $7b
	db $ed                                           ; $561d: $ed
	sbc d                                            ; $561e: $9a
	cp l                                             ; $561f: $bd
	ld [$0800], sp                                   ; $5620: $08 $00 $08
	ld bc, $fc7b                                     ; $5623: $01 $7b $fc
	sub h                                            ; $5626: $94
	nop                                              ; $5627: $00
	rst SubAFromDE                                          ; $5628: $df
	cp e                                             ; $5629: $bb
	jp c, $e2f5                                      ; $562a: $da $f5 $e2

	ld e, l                                          ; $562d: $5d
	cp [hl]                                          ; $562e: $be
	push af                                          ; $562f: $f5
	nop                                              ; $5630: $00
	db $10                                           ; $5631: $10
	ld [hl], d                                       ; $5632: $72
	rlca                                             ; $5633: $07
	sub d                                            ; $5634: $92
	ld d, b                                          ; $5635: $50
	cp e                                             ; $5636: $bb
	and a                                            ; $5637: $a7
	sbc a                                            ; $5638: $9f
	rst $38                                          ; $5639: $ff
	ld [$ba75], a                                    ; $563a: $ea $75 $ba
	ld d, l                                          ; $563d: $55
	nop                                              ; $563e: $00
	nop                                              ; $563f: $00
	ld c, b                                          ; $5640: $48
	jr nz, @+$77                                     ; $5641: $20 $75

	and e                                            ; $5643: $a3
	ld a, e                                          ; $5644: $7b
	adc d                                            ; $5645: $8a
	sub a                                            ; $5646: $97
	rst SubAFromHL                                          ; $5647: $d7
	cp d                                             ; $5648: $ba
	rst $38                                          ; $5649: $ff
	xor a                                            ; $564a: $af
	rst SubAFromDE                                          ; $564b: $df
	ld b, $23                                        ; $564c: $06 $23

jr_046_564e:
	jr jr_046_564e                                   ; $564e: $18 $fe

	sub l                                            ; $5650: $95
	inc b                                            ; $5651: $04
	ld b, $cb                                        ; $5652: $06 $cb
	cp a                                             ; $5654: $bf
	ld a, [$fa75]                                    ; $5655: $fa $75 $fa
	db $dd                                           ; $5658: $dd
	db $eb                                           ; $5659: $eb
	ld e, [hl]                                       ; $565a: $5e
	ld a, c                                          ; $565b: $79
	ld d, [hl]                                       ; $565c: $56
	sbc [hl]                                         ; $565d: $9e
	ld h, b                                          ; $565e: $60
	ld a, d                                          ; $565f: $7a
	inc a                                            ; $5660: $3c
	sub e                                            ; $5661: $93
	ld b, $ee                                        ; $5662: $06 $ee
	ld e, c                                          ; $5664: $59
	adc [hl]                                         ; $5665: $8e
	ld b, a                                          ; $5666: $47
	add d                                            ; $5667: $82
	ld [$ebd5], sp                                   ; $5668: $08 $d5 $eb
	ld [bc], a                                       ; $566b: $02
	nop                                              ; $566c: $00
	nop                                              ; $566d: $00
	ld a, e                                          ; $566e: $7b
	db $fd                                           ; $566f: $fd
	rst $38                                          ; $5670: $ff
	sub l                                            ; $5671: $95
	xor e                                            ; $5672: $ab
	ld e, [hl]                                       ; $5673: $5e
	cp a                                             ; $5674: $bf
	ld a, [hl+]                                      ; $5675: $2a
	ld d, a                                          ; $5676: $57
	cp a                                             ; $5677: $bf
	ld d, a                                          ; $5678: $57
	rst AddAOntoHL                                          ; $5679: $ef
	add b                                            ; $567a: $80
	ld [$7bfe], sp                                   ; $567b: $08 $fe $7b
	xor $9d                                          ; $567e: $ee $9d
	ld a, a                                          ; $5680: $7f
	xor a                                            ; $5681: $af
	ld a, c                                          ; $5682: $79
	sbc d                                            ; $5683: $9a
	sbc e                                            ; $5684: $9b
	xor a                                            ; $5685: $af
	ld d, a                                          ; $5686: $57
	rst AddAOntoHL                                          ; $5687: $ef
	dec b                                            ; $5688: $05
	db $fd                                           ; $5689: $fd
	ld a, [hl]                                       ; $568a: $7e
	dec c                                            ; $568b: $0d
	ld a, a                                          ; $568c: $7f
	or b                                             ; $568d: $b0
	sbc b                                            ; $568e: $98
	cp $7f                                           ; $568f: $fe $7f
	ld [$8a75], a                                    ; $5691: $ea $75 $8a
	ld d, l                                          ; $5694: $55
	ld a, [$1665]                                    ; $5695: $fa $65 $16
	sub a                                            ; $5698: $97
	push de                                          ; $5699: $d5
	db $ed                                           ; $569a: $ed

Jump_046_569b:
	ld e, a                                          ; $569b: $5f
	xor a                                            ; $569c: $af
	ld d, h                                          ; $569d: $54
	xor d                                            ; $569e: $aa
	ld e, a                                          ; $569f: $5f
	xor a                                            ; $56a0: $af
	ld a, c                                          ; $56a1: $79
	sbc b                                            ; $56a2: $98
	ld [hl], e                                       ; $56a3: $73
	ret nz                                           ; $56a4: $c0

	sbc l                                            ; $56a5: $9d
	db $db                                           ; $56a6: $db
	cp l                                             ; $56a7: $bd
	ld [hl], l                                       ; $56a8: $75
	ld h, h                                          ; $56a9: $64
	sbc b                                            ; $56aa: $98
	ld d, l                                          ; $56ab: $55
	db $eb                                           ; $56ac: $eb
	ld b, b                                          ; $56ad: $40
	nop                                              ; $56ae: $00
	jr z, jr_046_570b                                ; $56af: $28 $5a

	and h                                            ; $56b1: $a4
	cp $8a                                           ; $56b2: $fe $8a
	db $ed                                           ; $56b4: $ed
	sbc [hl]                                         ; $56b5: $9e
	ld [hl], c                                       ; $56b6: $71
	add sp, $5d                                      ; $56b7: $e8 $5d
	rrca                                             ; $56b9: $0f
	ld a, a                                          ; $56ba: $7f
	rst $38                                          ; $56bb: $ff
	ld e, b                                          ; $56bc: $58
	nop                                              ; $56bd: $00
	jr nz, jr_046_5700                               ; $56be: $20 $40

	ld [$1201], sp                                   ; $56c0: $08 $01 $12
	and l                                            ; $56c3: $a5
	dec d                                            ; $56c4: $15
	xor h                                            ; $56c5: $ac
	db $fd                                           ; $56c6: $fd
	rst $38                                          ; $56c7: $ff
	ld e, a                                          ; $56c8: $5f
	ld [hl], d                                       ; $56c9: $72
	db $10                                           ; $56ca: $10
	ld a, a                                          ; $56cb: $7f
	ldh a, [c]                                       ; $56cc: $f2
	sbc b                                            ; $56cd: $98
	ld a, [bc]                                       ; $56ce: $0a
	dec b                                            ; $56cf: $05
	add b                                            ; $56d0: $80
	ld d, l                                          ; $56d1: $55
	ld a, a                                          ; $56d2: $7f
	db $dd                                           ; $56d3: $dd
	cp e                                             ; $56d4: $bb
	ld a, e                                          ; $56d5: $7b
	ld e, l                                          ; $56d6: $5d
	ld a, l                                          ; $56d7: $7d
	cp l                                             ; $56d8: $bd
	sub a                                            ; $56d9: $97
	inc h                                            ; $56da: $24
	ld bc, $5701                                     ; $56db: $01 $01 $57
	xor d                                            ; $56de: $aa
	ld d, h                                          ; $56df: $54
	xor b                                            ; $56e0: $a8
	ld b, h                                          ; $56e1: $44
	reti                                             ; $56e2: $d9


	rst $38                                          ; $56e3: $ff
	ld a, [hl]                                       ; $56e4: $7e
	add hl, sp                                       ; $56e5: $39
	sbc d                                            ; $56e6: $9a
	jp nz, Jump_046_7fcd                             ; $56e7: $c2 $cd $7f

	ccf                                              ; $56ea: $3f
	ld e, a                                          ; $56eb: $5f
	ld a, e                                          ; $56ec: $7b
	db $e3                                           ; $56ed: $e3
	db $db                                           ; $56ee: $db
	rst $38                                          ; $56ef: $ff
	sbc h                                            ; $56f0: $9c
	ld a, $4f                                        ; $56f1: $3e $4f
	cp $7b                                           ; $56f3: $fe $7b
	add l                                            ; $56f5: $85
	sbc d                                            ; $56f6: $9a
	rst $38                                          ; $56f7: $ff
	xor $ff                                          ; $56f8: $ee $ff
	rst $38                                          ; $56fa: $ff
	rst SubAFromDE                                          ; $56fb: $df
	halt                                             ; $56fc: $76
	adc [hl]                                         ; $56fd: $8e
	sub [hl]                                         ; $56fe: $96
	db $dd                                           ; $56ff: $dd

jr_046_5700:
	ld a, a                                          ; $5700: $7f
	rst SubAFromDE                                          ; $5701: $df
	rst AddAOntoHL                                          ; $5702: $ef
	rst SubAFromHL                                          ; $5703: $d7
	ei                                               ; $5704: $fb
	or $d9                                           ; $5705: $f6 $d9
	ld hl, sp-$2b                                    ; $5707: $f8 $d5
	rst $38                                          ; $5709: $ff
	sbc e                                            ; $570a: $9b

jr_046_570b:
	ld l, e                                          ; $570b: $6b
	or l                                             ; $570c: $b5
	db $eb                                           ; $570d: $eb
	pop af                                           ; $570e: $f1
	sub $ff                                          ; $570f: $d6 $ff
	sbc d                                            ; $5711: $9a
	xor $df                                          ; $5712: $ee $df
	ei                                               ; $5714: $fb
	ld h, d                                          ; $5715: $62
	push af                                          ; $5716: $f5
	ld a, e                                          ; $5717: $7b
	and e                                            ; $5718: $a3
	ld a, a                                          ; $5719: $7f
	ccf                                              ; $571a: $3f
	cp $7f                                           ; $571b: $fe $7f
	and l                                            ; $571d: $a5
	db $fd                                           ; $571e: $fd
	sub d                                            ; $571f: $92
	ret nz                                           ; $5720: $c0

	rst $38                                          ; $5721: $ff
	ld e, e                                          ; $5722: $5b
	rst $38                                          ; $5723: $ff
	rst $38                                          ; $5724: $ff
	ld e, c                                          ; $5725: $59
	cp d                                             ; $5726: $ba
	ld e, l                                          ; $5727: $5d
	jr @+$1a                                         ; $5728: $18 $18

	ld [$2819], sp                                   ; $572a: $08 $19 $28
	ld a, d                                          ; $572d: $7a
	jp nz, $089d                                     ; $572e: $c2 $9d $08

	rst FarCall                                          ; $5731: $f7
	ld a, c                                          ; $5732: $79
	and c                                            ; $5733: $a1
	ld a, a                                          ; $5734: $7f
	ldh [$9a], a                                     ; $5735: $e0 $9a
	ld d, b                                          ; $5737: $50
	nop                                              ; $5738: $00
	nop                                              ; $5739: $00
	and b                                            ; $573a: $a0
	ld e, h                                          ; $573b: $5c
	ld l, h                                          ; $573c: $6c
	add hl, sp                                       ; $573d: $39
	sbc d                                            ; $573e: $9a
	db $eb                                           ; $573f: $eb
	cp a                                             ; $5740: $bf
	ld a, [$8155]                                    ; $5741: $fa $55 $81
	ld a, e                                          ; $5744: $7b
	ld d, $9d                                        ; $5745: $16 $9d
	nop                                              ; $5747: $00
	jp nz, $92fc                                     ; $5748: $c2 $fc $92

	cp $ef                                           ; $574b: $fe $ef
	rst $38                                          ; $574d: $ff
	cp e                                             ; $574e: $bb
	ld d, a                                          ; $574f: $57
	xor e                                            ; $5750: $ab
	dec d                                            ; $5751: $15
	ld b, b                                          ; $5752: $40
	ld hl, sp-$3b                                    ; $5753: $f8 $c5
	and d                                            ; $5755: $a2
	ld bc, $7b03                                     ; $5756: $01 $03 $7b
	inc e                                            ; $5759: $1c
	adc b                                            ; $575a: $88
	and a                                            ; $575b: $a7
	sub $b7                                          ; $575c: $d6 $b7
	rst $38                                          ; $575e: $ff
	cp $fd                                           ; $575f: $fe $fd
	rst $38                                          ; $5761: $ff
	dec e                                            ; $5762: $1d
	db $fc                                           ; $5763: $fc
	xor l                                            ; $5764: $ad
	ld a, d                                          ; $5765: $7a
	db $fd                                           ; $5766: $fd
	rst JumpTable                                          ; $5767: $c7
	xor $1c                                          ; $5768: $ee $1c
	ld a, [de]                                       ; $576a: $1a
	adc a                                            ; $576b: $8f
	dec d                                            ; $576c: $15
	cp a                                             ; $576d: $bf
	db $fd                                           ; $576e: $fd
	xor d                                            ; $576f: $aa
	ld d, l                                          ; $5770: $55
	nop                                              ; $5771: $00
	ld [hl], h                                       ; $5772: $74
	pop af                                           ; $5773: $f1
	ld [hl], d                                       ; $5774: $72
	xor $7b                                          ; $5775: $ee $7b
	ld h, d                                          ; $5777: $62
	ld a, b                                          ; $5778: $78
	ld c, d                                          ; $5779: $4a
	ld a, a                                          ; $577a: $7f
	ret                                              ; $577b: $c9


	ld a, a                                          ; $577c: $7f
	sub [hl]                                         ; $577d: $96
	db $fc                                           ; $577e: $fc
	halt                                             ; $577f: $76
	ld bc, $5f9d                                     ; $5780: $01 $9d $5f
	xor e                                            ; $5783: $ab
	ld a, e                                          ; $5784: $7b
	and c                                            ; $5785: $a1
	ld a, a                                          ; $5786: $7f
	and b                                            ; $5787: $a0
	sbc [hl]                                         ; $5788: $9e
	inc d                                            ; $5789: $14
	ld [hl], d                                       ; $578a: $72
	ld [hl], e                                       ; $578b: $73
	ld a, h                                          ; $578c: $7c
	adc b                                            ; $578d: $88
	sbc [hl]                                         ; $578e: $9e
	ld a, [$1471]                                    ; $578f: $fa $71 $14
	ei                                               ; $5792: $fb
	sbc $ff                                          ; $5793: $de $ff
	sbc h                                            ; $5795: $9c
	ld [hl], a                                       ; $5796: $77
	xor d                                            ; $5797: $aa
	push af                                          ; $5798: $f5
	ld d, e                                          ; $5799: $53
	ldh a, [$9b]                                     ; $579a: $f0 $9b
	rst SubAFromHL                                          ; $579c: $d7
	xor d                                            ; $579d: $aa
	ld [hl], a                                       ; $579e: $77
	db $ed                                           ; $579f: $ed
	ld a, [$917f]                                    ; $57a0: $fa $7f $91
	db $db                                           ; $57a3: $db
	rst $38                                          ; $57a4: $ff
	sbc [hl]                                         ; $57a5: $9e
	xor e                                            ; $57a6: $ab
	ld a, e                                          ; $57a7: $7b
	adc b                                            ; $57a8: $88
	sbc h                                            ; $57a9: $9c
	nop                                              ; $57aa: $00
	ld [de], a                                       ; $57ab: $12
	ld [hl], h                                       ; $57ac: $74
	ld a, b                                          ; $57ad: $78
	dec h                                            ; $57ae: $25
	call c, Call_046_7fff                            ; $57af: $dc $ff $7f
	ret nc                                           ; $57b2: $d0

	sbc [hl]                                         ; $57b3: $9e
	ld hl, sp-$02                                    ; $57b4: $f8 $fe
	sbc d                                            ; $57b6: $9a
	xor b                                            ; $57b7: $a8
	ld b, b                                          ; $57b8: $40
	add b                                            ; $57b9: $80
	ld d, b                                          ; $57ba: $50
	and b                                            ; $57bb: $a0
	ld [hl], l                                       ; $57bc: $75
	sub a                                            ; $57bd: $97
	sbc h                                            ; $57be: $9c
	ei                                               ; $57bf: $fb
	ld [hl], l                                       ; $57c0: $75
	rst $38                                          ; $57c1: $ff
	ld a, d                                          ; $57c2: $7a
	inc de                                           ; $57c3: $13
	sbc l                                            ; $57c4: $9d
	nop                                              ; $57c5: $00
	add e                                            ; $57c6: $83
	halt                                             ; $57c7: $76
	nop                                              ; $57c8: $00
	sbc [hl]                                         ; $57c9: $9e
	ldh [$de], a                                     ; $57ca: $e0 $de
	rst $38                                          ; $57cc: $ff
	sbc e                                            ; $57cd: $9b
	cp a                                             ; $57ce: $bf
	ld a, a                                          ; $57cf: $7f
	rst $38                                          ; $57d0: $ff
	rst SubAFromHL                                          ; $57d1: $d7
	cp $9b                                           ; $57d2: $fe $9b
	rla                                              ; $57d4: $17
	ld a, [bc]                                       ; $57d5: $0a
	ld de, $7720                                     ; $57d6: $11 $20 $77
	cp a                                             ; $57d9: $bf
	ld a, a                                          ; $57da: $7f
	jr nz, @+$7b                                     ; $57db: $20 $79

	ld de, $1f80                                     ; $57dd: $11 $80 $1f
	jr c, jr_046_57e2                                ; $57e0: $38 $00

jr_046_57e2:
	halt                                             ; $57e2: $76
	xor a                                            ; $57e3: $af
	rla                                              ; $57e4: $17
	ld a, [hl+]                                      ; $57e5: $2a
	add l                                            ; $57e6: $85
	ld a, [bc]                                       ; $57e7: $0a
	rst SubAFromHL                                          ; $57e8: $d7
	rst $38                                          ; $57e9: $ff
	ld sp, hl                                        ; $57ea: $f9
	db $fd                                           ; $57eb: $fd
	cp l                                             ; $57ec: $bd
	rst $38                                          ; $57ed: $ff
	db $ed                                           ; $57ee: $ed
	rst $38                                          ; $57ef: $ff
	ld a, l                                          ; $57f0: $7d
	add hl, sp                                       ; $57f1: $39
	ld l, l                                          ; $57f2: $6d
	ld c, c                                          ; $57f3: $49
	ld [$c5b8], sp                                   ; $57f4: $08 $b8 $c5
	xor c                                            ; $57f7: $a9
	ld a, c                                          ; $57f8: $79
	db $fc                                           ; $57f9: $fc
	rst $38                                          ; $57fa: $ff
	di                                               ; $57fb: $f3
	rst FarCall                                          ; $57fc: $f7
	ld h, a                                          ; $57fd: $67
	add e                                            ; $57fe: $83
	xor $fe                                          ; $57ff: $ee $fe
	rst $38                                          ; $5801: $ff
	db $fc                                           ; $5802: $fc
	ei                                               ; $5803: $fb
	pop hl                                           ; $5804: $e1
	ld h, e                                          ; $5805: $63
	ld l, a                                          ; $5806: $6f
	ld [hl], a                                       ; $5807: $77
	or $fc                                           ; $5808: $f6 $fc
	db $ec                                           ; $580a: $ec
	rst $38                                          ; $580b: $ff
	db $fd                                           ; $580c: $fd
	db $fd                                           ; $580d: $fd
	db $ed                                           ; $580e: $ed
	ld a, e                                          ; $580f: $7b
	ld a, a                                          ; $5810: $7f
	rst $38                                          ; $5811: $ff
	ld a, [hl]                                       ; $5812: $7e
	add sp, -$24                                     ; $5813: $e8 $dc
	adc [hl]                                         ; $5815: $8e

jr_046_5816:
	ld b, c                                          ; $5816: $41
	ld c, e                                          ; $5817: $4b
	ld e, a                                          ; $5818: $5f
	dec hl                                           ; $5819: $2b
	scf                                              ; $581a: $37
	ld e, e                                          ; $581b: $5b
	ld h, l                                          ; $581c: $65
	call c, $74ff                                    ; $581d: $dc $ff $74
	ld c, b                                          ; $5820: $48
	ld [hl], a                                       ; $5821: $77
	cp $62                                           ; $5822: $fe $62
	ld e, b                                          ; $5824: $58
	ld c, e                                          ; $5825: $4b
	ldh [$dd], a                                     ; $5826: $e0 $dd
	ld bc, $039b                                     ; $5828: $01 $9b $03
	ld [bc], a                                       ; $582b: $02
	ld d, $1b                                        ; $582c: $16 $1b
	ld a, e                                          ; $582e: $7b
	add a                                            ; $582f: $87
	rst SubAFromDE                                          ; $5830: $df
	rst $38                                          ; $5831: $ff
	add b                                            ; $5832: $80
	ldh a, [$e1]                                     ; $5833: $f0 $e1
	ldh a, [$f1]                                     ; $5835: $f0 $f1
	ldh a, [c]                                       ; $5837: $f2
	cp $fe                                           ; $5838: $fe $fe
	ld hl, sp-$1f                                    ; $583a: $f8 $e1
	nop                                              ; $583c: $00
	adc a                                            ; $583d: $8f
	ld e, a                                          ; $583e: $5f
	rrca                                             ; $583f: $0f
	ld e, [hl]                                       ; $5840: $5e
	ld hl, sp-$10                                    ; $5841: $f8 $f0

jr_046_5843:
	ld [hl+], a                                      ; $5843: $22
	adc a                                            ; $5844: $8f
	ld [hl], b                                       ; $5845: $70
	jr z, jr_046_5843                                ; $5846: $28 $fb

	db $fd                                           ; $5848: $fd
	cp [hl]                                          ; $5849: $be
	dec e                                            ; $584a: $1d
	ld a, $3c                                        ; $584b: $3e $3c
	ld a, $d7                                        ; $584d: $3e $d7
	inc b                                            ; $584f: $04
	ld [bc], a                                       ; $5850: $02
	ld b, c                                          ; $5851: $41

Call_046_5852:
	sbc e                                            ; $5852: $9b
	ldh [c], a                                       ; $5853: $e2
	pop bc                                           ; $5854: $c1
	jp $78c1                                         ; $5855: $c3 $c1 $78


	ld d, b                                          ; $5858: $50
	sbc [hl]                                         ; $5859: $9e
	and b                                            ; $585a: $a0
	db $dd                                           ; $585b: $dd
	sub b                                            ; $585c: $90
	rst SubAFromDE                                          ; $585d: $df
	rst $38                                          ; $585e: $ff
	sbc l                                            ; $585f: $9d
	ld a, a                                          ; $5860: $7f
	ld e, a                                          ; $5861: $5f
	db $dd                                           ; $5862: $dd
	ld l, a                                          ; $5863: $6f
	ld c, a                                          ; $5864: $4f
	or b                                             ; $5865: $b0
	sbc l                                            ; $5866: $9d
	xor d                                            ; $5867: $aa
	db $fd                                           ; $5868: $fd
	ld c, e                                          ; $5869: $4b
	ldh a, [rPCM34]                                  ; $586a: $f0 $77
	dec d                                            ; $586c: $15
	dec sp                                           ; $586d: $3b
	ldh a, [rPCM34]                                  ; $586e: $f0 $77
	dec de                                           ; $5870: $1b
	db $dd                                           ; $5871: $dd
	rst $38                                          ; $5872: $ff
	sbc [hl]                                         ; $5873: $9e
	ld a, a                                          ; $5874: $7f
	ld a, d                                          ; $5875: $7a
	db $db                                           ; $5876: $db
	rst SubAFromDE                                          ; $5877: $df
	jr jr_046_5816                                   ; $5878: $18 $9c

	ld l, b                                          ; $587a: $68

jr_046_587b:
	adc a                                            ; $587b: $8f
	rst SubAFromHL                                          ; $587c: $d7
	sbc $ff                                          ; $587d: $de $ff
	ld a, [hl]                                       ; $587f: $7e
	ld b, [hl]                                       ; $5880: $46
	sub h                                            ; $5881: $94
	xor a                                            ; $5882: $af
	rst SubAFromHL                                          ; $5883: $d7
	xor $04                                          ; $5884: $ee $04
	nop                                              ; $5886: $00
	nop                                              ; $5887: $00
	jr nc, jr_046_58ba                               ; $5888: $30 $30

	ld [$efda], sp                                   ; $588a: $08 $da $ef
	call c, $9cff                                    ; $588d: $dc $ff $9c
	rst JumpTable                                          ; $5890: $c7
	add a                                            ; $5891: $87
	ccf                                              ; $5892: $3f
	ld d, [hl]                                       ; $5893: $56
	sub l                                            ; $5894: $95
	db $dd                                           ; $5895: $dd
	rst $38                                          ; $5896: $ff
	ld c, e                                          ; $5897: $4b
	or b                                             ; $5898: $b0
	ld h, a                                          ; $5899: $67
	jr nc, jr_046_587b                               ; $589a: $30 $df

	db $fc                                           ; $589c: $fc
	db $db                                           ; $589d: $db
	rst $38                                          ; $589e: $ff
	sbc l                                            ; $589f: $9d
	rst SubAFromDE                                          ; $58a0: $df
	rlca                                             ; $58a1: $07
	ld b, a                                          ; $58a2: $47
	ldh [$9b], a                                     ; $58a3: $e0 $9b
	inc a                                            ; $58a5: $3c
	inc e                                            ; $58a6: $1c
	inc c                                            ; $58a7: $0c
	inc e                                            ; $58a8: $1c
	db $dd                                           ; $58a9: $dd
	rra                                              ; $58aa: $1f
	adc l                                            ; $58ab: $8d
	set 4, a                                         ; $58ac: $cb $e7
	rst FarCall                                          ; $58ae: $f7
	rst AddAOntoHL                                          ; $58af: $ef
	cp $ed                                           ; $58b0: $fe $ed
	rst $38                                          ; $58b2: $ff
	rst AddAOntoHL                                          ; $58b3: $ef
	db $ec                                           ; $58b4: $ec
	or $f2                                           ; $58b5: $f6 $f2
	pop hl                                           ; $58b7: $e1

jr_046_58b8:
	ret nz                                           ; $58b8: $c0

	ret nz                                           ; $58b9: $c0

jr_046_58ba:
	add b                                            ; $58ba: $80
	add b                                            ; $58bb: $80
	ld a, a                                          ; $58bc: $7f
	db $eb                                           ; $58bd: $eb
	ld a, c                                          ; $58be: $79
	ld a, [hl+]                                      ; $58bf: $2a
	ld a, b                                          ; $58c0: $78
	dec [hl]                                         ; $58c1: $35
	sub a                                            ; $58c2: $97
	inc a                                            ; $58c3: $3c
	jr c, jr_046_58f6                                ; $58c4: $38 $30

	jr nc, jr_046_58b8                               ; $58c6: $30 $f0

	ldh a, [$f1]                                     ; $58c8: $f0 $f1
	ld [hl], c                                       ; $58ca: $71
	ld [hl], h                                       ; $58cb: $74
	scf                                              ; $58cc: $37
	sbc e                                            ; $58cd: $9b
	cp a                                             ; $58ce: $bf
	ld l, a                                          ; $58cf: $6f
	cp $ef                                           ; $58d0: $fe $ef
	ld l, e                                          ; $58d2: $6b
	jp nz, $e79e                                     ; $58d3: $c2 $9e $e7

	ld h, a                                          ; $58d6: $67
	and d                                            ; $58d7: $a2
	ld c, [hl]                                       ; $58d8: $4e
	ret nz                                           ; $58d9: $c0

	sbc [hl]                                         ; $58da: $9e
	jr jr_046_594d                                   ; $58db: $18 $70

	ld c, d                                          ; $58dd: $4a
	ld a, e                                          ; $58de: $7b
	ldh [$9e], a                                     ; $58df: $e0 $9e
	and $67                                          ; $58e1: $e6 $67
	ldh [$9e], a                                     ; $58e3: $e0 $9e
	db $10                                           ; $58e5: $10
	sbc $12                                          ; $58e6: $de $12
	sbc e                                            ; $58e8: $9b
	ld de, $070b                                     ; $58e9: $11 $0b $07
	rlca                                             ; $58ec: $07
	call c, $94e0                                    ; $58ed: $dc $e0 $94
	di                                               ; $58f0: $f3
	inc c                                            ; $58f1: $0c
	nop                                              ; $58f2: $00
	ld a, c                                          ; $58f3: $79
	nop                                              ; $58f4: $00
	inc b                                            ; $58f5: $04

jr_046_58f6:
	adc h                                            ; $58f6: $8c
	inc d                                            ; $58f7: $14
	rst $38                                          ; $58f8: $ff
	cp $fe                                           ; $58f9: $fe $fe
	db $fc                                           ; $58fb: $fc
	add d                                            ; $58fc: $82
	adc a                                            ; $58fd: $8f
	inc bc                                           ; $58fe: $03

jr_046_58ff:
	nop                                              ; $58ff: $00
	dec a                                            ; $5900: $3d
	ld e, $1f                                        ; $5901: $1e $1f
	ccf                                              ; $5903: $3f
	scf                                              ; $5904: $37
	scf                                              ; $5905: $37
	cp e                                             ; $5906: $bb
	di                                               ; $5907: $f3
	jp nz, $e0e1                                     ; $5908: $c2 $e1 $e0

	ret nz                                           ; $590b: $c0

	ret z                                            ; $590c: $c8

	ret z                                            ; $590d: $c8

	ld b, h                                          ; $590e: $44
	inc c                                            ; $590f: $0c
	db $10                                           ; $5910: $10
	sub b                                            ; $5911: $90
	nop                                              ; $5912: $00
	add b                                            ; $5913: $80
	nop                                              ; $5914: $00
	add b                                            ; $5915: $80
	ccf                                              ; $5916: $3f
	and b                                            ; $5917: $a0
	rst AddAOntoHL                                          ; $5918: $ef
	ld l, a                                          ; $5919: $6f
	ld a, d                                          ; $591a: $7a
	db $fc                                           ; $591b: $fc
	sbc h                                            ; $591c: $9c
	ld a, a                                          ; $591d: $7f
	ret nz                                           ; $591e: $c0

	ld b, b                                          ; $591f: $40
	ei                                               ; $5920: $fb
	ld a, l                                          ; $5921: $7d
	add d                                            ; $5922: $82
	db $db                                           ; $5923: $db
	rst $38                                          ; $5924: $ff
	sbc l                                            ; $5925: $9d
	ccf                                              ; $5926: $3f
	inc bc                                           ; $5927: $03
	ld sp, hl                                        ; $5928: $f9
	sbc [hl]                                         ; $5929: $9e
	ld [$504a], a                                    ; $592a: $ea $4a $50
	sbc l                                            ; $592d: $9d
	xor d                                            ; $592e: $aa
	push de                                          ; $592f: $d5
	halt                                             ; $5930: $76
	ld e, a                                          ; $5931: $5f
	rst SubAFromDE                                          ; $5932: $df
	rst $38                                          ; $5933: $ff
	sbc [hl]                                         ; $5934: $9e
	dec d                                            ; $5935: $15
	ld h, a                                          ; $5936: $67
	ldh a, [$7d]                                     ; $5937: $f0 $7d
	ld c, c                                          ; $5939: $49
	sbc [hl]                                         ; $593a: $9e
	push af                                          ; $593b: $f5
	ld [hl], a                                       ; $593c: $77
	xor $9b                                          ; $593d: $ee $9b
	db $db                                           ; $593f: $db
	nop                                              ; $5940: $00
	db $10                                           ; $5941: $10
	ld [$9efd], sp                                   ; $5942: $08 $fd $9e
	inc l                                            ; $5945: $2c
	ld a, c                                          ; $5946: $79
	add hl, sp                                       ; $5947: $39
	ld a, c                                          ; $5948: $79
	ld h, l                                          ; $5949: $65
	adc [hl]                                         ; $594a: $8e
	rst FarCall                                          ; $594b: $f7
	nop                                              ; $594c: $00

jr_046_594d:
	nop                                              ; $594d: $00
	jr nz, jr_046_5950                               ; $594e: $20 $00

jr_046_5950:
	db $10                                           ; $5950: $10
	jr nz, @+$42                                     ; $5951: $20 $40

	jr nz, jr_046_58ff                               ; $5953: $20 $aa

	ld d, l                                          ; $5955: $55
	adc e                                            ; $5956: $8b
	ld e, a                                          ; $5957: $5f
	xor a                                            ; $5958: $af
	ld e, a                                          ; $5959: $5f
	cp a                                             ; $595a: $bf
	rst SubAFromDE                                          ; $595b: $df
	ld sp, hl                                        ; $595c: $f9
	ld a, c                                          ; $595d: $79
	sbc c                                            ; $595e: $99
	ld e, [hl]                                       ; $595f: $5e
	db $10                                           ; $5960: $10
	ld a, e                                          ; $5961: $7b
	db $fd                                           ; $5962: $fd
	db $dd                                           ; $5963: $dd
	rst $38                                          ; $5964: $ff
	adc [hl]                                         ; $5965: $8e
	db $fc                                           ; $5966: $fc
	ld hl, sp-$10                                    ; $5967: $f8 $f0
	ldh [$fe], a                                     ; $5969: $e0 $fe
	cp $fc                                           ; $596b: $fe $fc
	db $fc                                           ; $596d: $fc
	cp $fb                                           ; $596e: $fe $fb
	ldh a, [c]                                       ; $5970: $f2
	and $07                                          ; $5971: $e6 $07
	ld b, a                                          ; $5973: $47
	rst AddAOntoHL                                          ; $5974: $ef
	rst $38                                          ; $5975: $ff
	ld sp, hl                                        ; $5976: $f9
	ld hl, sp-$63                                    ; $5977: $f8 $9d
	add b                                            ; $5979: $80
	ld b, b                                          ; $597a: $40
	ld l, d                                          ; $597b: $6a
	ld h, b                                          ; $597c: $60
	sbc [hl]                                         ; $597d: $9e
	ccf                                              ; $597e: $3f
	jp c, $960f                                      ; $597f: $da $0f $96

	rlca                                             ; $5982: $07
	db $fd                                           ; $5983: $fd
	or $ff                                           ; $5984: $f6 $ff
	ei                                               ; $5986: $fb
	rst FarCall                                          ; $5987: $f7
	di                                               ; $5988: $f3
	ei                                               ; $5989: $fb
	ld a, [$80db]                                    ; $598a: $fa $db $80
	rst SubAFromDE                                          ; $598d: $df
	add c                                            ; $598e: $81
	ld a, e                                          ; $598f: $7b
	db $e4                                           ; $5990: $e4
	ld [hl], e                                       ; $5991: $73
	cp $9b                                           ; $5992: $fe $9b
	ld [hl], e                                       ; $5994: $73
	di                                               ; $5995: $f3
	rst SubAFromBC                                          ; $5996: $e7
	xor $7b                                          ; $5997: $ee $7b
	cp b                                             ; $5999: $b8
	sbc d                                            ; $599a: $9a
	ldh a, [$fd]                                     ; $599b: $f0 $fd
	rst AddAOntoHL                                          ; $599d: $ef
	ld a, $dd                                        ; $599e: $3e $dd
	ld a, d                                          ; $59a0: $7a
	cp h                                             ; $59a1: $bc
	sbc h                                            ; $59a2: $9c
	rst AddAOntoHL                                          ; $59a3: $ef
	add b                                            ; $59a4: $80
	inc b                                            ; $59a5: $04
	db $db                                           ; $59a6: $db
	add h                                            ; $59a7: $84
	reti                                             ; $59a8: $d9


	ld a, e                                          ; $59a9: $7b
	sbc l                                            ; $59aa: $9d
	db $10                                           ; $59ab: $10
	jr @+$71                                         ; $59ac: $18 $6f

	cp $9e                                           ; $59ae: $fe $9e
	rst GetHLinHL                                          ; $59b0: $cf
	ld l, [hl]                                       ; $59b1: $6e
	dec l                                            ; $59b2: $2d
	ld a, a                                          ; $59b3: $7f
	jr nc, @-$60                                     ; $59b4: $30 $9e

	add b                                            ; $59b6: $80
	db $db                                           ; $59b7: $db
	add d                                            ; $59b8: $82
	reti                                             ; $59b9: $d9


	ld a, l                                          ; $59ba: $7d
	call c, $de07                                    ; $59bb: $dc $07 $de
	ld [bc], a                                       ; $59be: $02
	sbc [hl]                                         ; $59bf: $9e
	ldh [$da], a                                     ; $59c0: $e0 $da
	db $f4                                           ; $59c2: $f4
	rst SubAFromDE                                          ; $59c3: $df
	cp $de                                           ; $59c4: $fe $de
	rst $38                                          ; $59c6: $ff
	sub e                                            ; $59c7: $93
	db $fd                                           ; $59c8: $fd
	ld h, l                                          ; $59c9: $65
	dec h                                            ; $59ca: $25
	inc bc                                           ; $59cb: $03
	ld d, a                                          ; $59cc: $57
	ld h, e                                          ; $59cd: $63
	ld b, e                                          ; $59ce: $43
	rlca                                             ; $59cf: $07
	ld h, e                                          ; $59d0: $63
	inc bc                                           ; $59d1: $03
	inc bc                                           ; $59d2: $03
	inc b                                            ; $59d3: $04
	ld [hl], e                                       ; $59d4: $73
	ld d, [hl]                                       ; $59d5: $56
	rst SubAFromDE                                          ; $59d6: $df
	rst $38                                          ; $59d7: $ff
	sbc d                                            ; $59d8: $9a
	dec bc                                           ; $59d9: $0b
	dec e                                            ; $59da: $1d
	ld a, a                                          ; $59db: $7f
	ld sp, hl                                        ; $59dc: $f9
	add hl, de                                       ; $59dd: $19
	sbc $08                                          ; $59de: $de $08
	add b                                            ; $59e0: $80
	add d                                            ; $59e1: $82
	add h                                            ; $59e2: $84
	inc bc                                           ; $59e3: $03
	inc b                                            ; $59e4: $04
	nop                                              ; $59e5: $00
	db $10                                           ; $59e6: $10
	ld a, [bc]                                       ; $59e7: $0a
	dec c                                            ; $59e8: $0d
	ld a, l                                          ; $59e9: $7d
	ld a, e                                          ; $59ea: $7b
	db $fc                                           ; $59eb: $fc
	ld hl, sp-$0f                                    ; $59ec: $f8 $f1
	ldh [$f5], a                                     ; $59ee: $e0 $f5
	ldh a, [c]                                       ; $59f0: $f2
	jr nz, @+$16                                     ; $59f1: $20 $14

	inc b                                            ; $59f3: $04
	inc d                                            ; $59f4: $14
	inc b                                            ; $59f5: $04
	inc bc                                           ; $59f6: $03
	xor e                                            ; $59f7: $ab
	ld d, h                                          ; $59f8: $54
	rst JumpTable                                          ; $59f9: $c7
	adc e                                            ; $59fa: $8b
	dec sp                                           ; $59fb: $3b
	db $eb                                           ; $59fc: $eb
	ei                                               ; $59fd: $fb
	nop                                              ; $59fe: $00
	ld d, h                                          ; $59ff: $54
	sbc [hl]                                         ; $5a00: $9e
	xor e                                            ; $5a01: $ab
	ld l, [hl]                                       ; $5a02: $6e
	ld h, c                                          ; $5a03: $61
	sbc l                                            ; $5a04: $9d
	rra                                              ; $5a05: $1f
	ld c, $6a                                        ; $5a06: $0e $6a
	jp $f19e                                         ; $5a08: $c3 $9e $f1


	cpl                                              ; $5a0b: $2f
	ldh a, [$9e]                                     ; $5a0c: $f0 $9e
	sbc [hl]                                         ; $5a0e: $9e
	ld c, e                                          ; $5a0f: $4b
	ldh a, [$9e]                                     ; $5a10: $f0 $9e
	ld [$f04b], sp                                   ; $5a12: $08 $4b $f0
	sbc [hl]                                         ; $5a15: $9e
	ld b, $4b                                        ; $5a16: $06 $4b
	ldh a, [$9e]                                     ; $5a18: $f0 $9e
	rlca                                             ; $5a1a: $07
	ld h, e                                          ; $5a1b: $63
	ldh a, [$80]                                     ; $5a1c: $f0 $80
	inc hl                                           ; $5a1e: $23
	rlca                                             ; $5a1f: $07
	rlca                                             ; $5a20: $07
	rrca                                             ; $5a21: $0f
	ld c, $1d                                        ; $5a22: $0e $1d
	ld [hl], e                                       ; $5a24: $73
	ld [hl+], a                                      ; $5a25: $22
	ret nz                                           ; $5a26: $c0

	jp nz, $8484                                     ; $5a27: $c2 $84 $84

	adc b                                            ; $5a2a: $88
	ld [$8008], sp                                   ; $5a2b: $08 $08 $80
	xor $de                                          ; $5a2e: $ee $de
	cp [hl]                                          ; $5a30: $be
	ld a, a                                          ; $5a31: $7f
	rst $38                                          ; $5a32: $ff
	cp $56                                           ; $5a33: $fe $56
	xor d                                            ; $5a35: $aa
	nop                                              ; $5a36: $00
	nop                                              ; $5a37: $00
	ld [bc], a                                       ; $5a38: $02
	ld [bc], a                                       ; $5a39: $02
	nop                                              ; $5a3a: $00
	ld [bc], a                                       ; $5a3b: $02
	nop                                              ; $5a3c: $00
	halt                                             ; $5a3d: $76
	ld b, b                                          ; $5a3e: $40
	rst SubAFromDE                                          ; $5a3f: $df
	sub b                                            ; $5a40: $90
	ld a, a                                          ; $5a41: $7f
	rst GetHLinHL                                          ; $5a42: $cf
	sub [hl]                                         ; $5a43: $96
	adc $3f                                          ; $5a44: $ce $3f
	ccf                                              ; $5a46: $3f
	rra                                              ; $5a47: $1f
	rrca                                             ; $5a48: $0f
	rrca                                             ; $5a49: $0f
	rra                                              ; $5a4a: $1f
	nop                                              ; $5a4b: $00

jr_046_5a4c:
	nop                                              ; $5a4c: $00
	sbc $07                                          ; $5a4d: $de $07
	call c, $9303                                    ; $5a4f: $dc $03 $93
	ld sp, hl                                        ; $5a52: $f9
	ld hl, sp-$07                                    ; $5a53: $f8 $f9
	db $fd                                           ; $5a55: $fd
	db $fc                                           ; $5a56: $fc
	rst $38                                          ; $5a57: $ff
	ld bc, $c102                                     ; $5a58: $01 $02 $c1
	jp $e3c3                                         ; $5a5b: $c3 $c3 $e3


	ld [hl], c                                       ; $5a5e: $71
	and e                                            ; $5a5f: $a3
	sub [hl]                                         ; $5a60: $96
	ld a, a                                          ; $5a61: $7f
	dec a                                            ; $5a62: $3d
	ld e, l                                          ; $5a63: $5d
	ld sp, hl                                        ; $5a64: $f9
	pop af                                           ; $5a65: $f1
	ei                                               ; $5a66: $fb
	db $fd                                           ; $5a67: $fd
	ldh [$e0], a                                     ; $5a68: $e0 $e0
	db $db                                           ; $5a6a: $db
	ret nz                                           ; $5a6b: $c0

	ld a, l                                          ; $5a6c: $7d
	ld b, l                                          ; $5a6d: $45
	ld a, l                                          ; $5a6e: $7d
	add c                                            ; $5a6f: $81
	rst SubAFromDE                                          ; $5a70: $df
	cp a                                             ; $5a71: $bf
	rst SubAFromDE                                          ; $5a72: $df
	add b                                            ; $5a73: $80
	db $db                                           ; $5a74: $db
	add h                                            ; $5a75: $84
	ld a, a                                          ; $5a76: $7f
	ld sp, hl                                        ; $5a77: $f9
	ld e, d                                          ; $5a78: $5a
	ret nz                                           ; $5a79: $c0

	ld a, l                                          ; $5a7a: $7d
	ld e, [hl]                                       ; $5a7b: $5e
	ld a, e                                          ; $5a7c: $7b
	cp $75                                           ; $5a7d: $fe $75
	inc hl                                           ; $5a7f: $23
	db $dd                                           ; $5a80: $dd
	rst SubAFromDE                                          ; $5a81: $df
	reti                                             ; $5a82: $d9


	add d                                            ; $5a83: $82
	reti                                             ; $5a84: $d9


	ld a, l                                          ; $5a85: $7d
	sbc $02                                          ; $5a86: $de $02
	sbc [hl]                                         ; $5a88: $9e
	ld b, $dd                                        ; $5a89: $06 $dd
	inc b                                            ; $5a8b: $04
	sbc h                                            ; $5a8c: $9c
	db $f4                                           ; $5a8d: $f4
	or $f6                                           ; $5a8e: $f6 $f6
	sbc $f4                                          ; $5a90: $de $f4
	sbc l                                            ; $5a92: $9d
	ldh a, [$f4]                                     ; $5a93: $f0 $f4
	sbc $65                                          ; $5a95: $de $65
	sbc l                                            ; $5a97: $9d
	ld c, c                                          ; $5a98: $49
	ld l, c                                          ; $5a99: $69
	sbc $a9                                          ; $5a9a: $de $a9
	rst SubAFromDE                                          ; $5a9c: $df
	inc bc                                           ; $5a9d: $03
	sbc l                                            ; $5a9e: $9d
	ld [bc], a                                       ; $5a9f: $02
	ld h, [hl]                                       ; $5aa0: $66
	db $dd                                           ; $5aa1: $dd
	ld b, [hl]                                       ; $5aa2: $46
	sbc $ff                                          ; $5aa3: $de $ff
	rst SubAFromDE                                          ; $5aa5: $df
	rst FarCall                                          ; $5aa6: $f7
	sbc $f3                                          ; $5aa7: $de $f3
	rst SubAFromDE                                          ; $5aa9: $df
	ld [$2d99], sp                                   ; $5aaa: $08 $99 $2d
	inc a                                            ; $5aad: $3c
	jr jr_046_5a4c                                   ; $5aae: $18 $9c

	sbc [hl]                                         ; $5ab0: $9e
	sbc [hl]                                         ; $5ab1: $9e
	sbc $80                                          ; $5ab2: $de $80
	call c, $7ec0                                    ; $5ab4: $dc $c0 $7e
	add $98                                          ; $5ab7: $c6 $98
	ldh a, [c]                                       ; $5ab9: $f2
	or [hl]                                          ; $5aba: $b6
	or $f6                                           ; $5abb: $f6 $f6
	halt                                             ; $5abd: $76
	halt                                             ; $5abe: $76
	ld b, d                                          ; $5abf: $42
	call c, $9c40                                    ; $5ac0: $dc $40 $9c
	ld c, b                                          ; $5ac3: $48
	ld d, b                                          ; $5ac4: $50
	cp c                                             ; $5ac5: $b9
	call c, $9ebb                                    ; $5ac6: $dc $bb $9e
	or e                                             ; $5ac9: $b3
	ld l, [hl]                                       ; $5aca: $6e
	ret nz                                           ; $5acb: $c0

	cp $d9                                           ; $5acc: $fe $d9
	ei                                               ; $5ace: $fb
	ld a, l                                          ; $5acf: $7d
	ld sp, $dffd                                     ; $5ad0: $31 $fd $df
	inc b                                            ; $5ad3: $04
	ld h, e                                          ; $5ad4: $63
	ldh a, [rPCM34]                                  ; $5ad5: $f0 $77
	ldh a, [c]                                       ; $5ad7: $f2
	ld a, e                                          ; $5ad8: $7b
	db $fd                                           ; $5ad9: $fd
	ld d, a                                          ; $5ada: $57
	ldh a, [$7b]                                     ; $5adb: $f0 $7b
	pop hl                                           ; $5add: $e1
	ld c, e                                          ; $5ade: $4b
	ldh a, [$5b]                                     ; $5adf: $f0 $5b
	ret nz                                           ; $5ae1: $c0

	ld l, a                                          ; $5ae2: $6f
	pop hl                                           ; $5ae3: $e1
	ld h, e                                          ; $5ae4: $63
	ldh [$9c], a                                     ; $5ae5: $e0 $9c
	dec b                                            ; $5ae7: $05
	ld [bc], a                                       ; $5ae8: $02
	ld bc, $08de                                     ; $5ae9: $01 $de $08
	sbc b                                            ; $5aec: $98
	inc c                                            ; $5aed: $0c
	dec bc                                           ; $5aee: $0b
	ldh [$e8], a                                     ; $5aef: $e0 $e8
	add sp, -$10                                     ; $5af1: $e8 $f0
	ldh a, [$de]                                     ; $5af3: $f0 $de
	ld hl, sp-$6a                                    ; $5af5: $f8 $96
	ld d, a                                          ; $5af7: $57
	xor [hl]                                         ; $5af8: $ae
	ld [hl], b                                       ; $5af9: $70
	nop                                              ; $5afa: $00
	ld h, d                                          ; $5afb: $62
	ld a, [hl]                                       ; $5afc: $7e
	ld a, [hl]                                       ; $5afd: $7e
	cp $00                                           ; $5afe: $fe $00
	sbc $01                                          ; $5b00: $de $01
	sbc d                                            ; $5b02: $9a
	dec b                                            ; $5b03: $05
	ld bc, $552b                                     ; $5b04: $01 $2b $55
	ld c, $6b                                        ; $5b07: $0e $6b
	rst GetHLinHL                                          ; $5b09: $cf
	ld a, [hl]                                       ; $5b0a: $7e
	push hl                                          ; $5b0b: $e5
	db $db                                           ; $5b0c: $db
	ei                                               ; $5b0d: $fb
	sbc [hl]                                         ; $5b0e: $9e
	rrca                                             ; $5b0f: $0f
	ld c, e                                          ; $5b10: $4b
	ldh a, [$d9]                                     ; $5b11: $f0 $d9

jr_046_5b13:
	rst $38                                          ; $5b13: $ff
	sbc l                                            ; $5b14: $9d
	ld a, a                                          ; $5b15: $7f
	cp a                                             ; $5b16: $bf
	ld a, c                                          ; $5b17: $79
	ld hl, $3f9c                                     ; $5b18: $21 $9c $3f
	ld e, $1f                                        ; $5b1b: $1e $1f
	ld [hl], h                                       ; $5b1d: $74
	inc [hl]                                         ; $5b1e: $34
	ld [hl], a                                       ; $5b1f: $77
	inc l                                            ; $5b20: $2c
	sbc e                                            ; $5b21: $9b
	or c                                             ; $5b22: $b1
	cp e                                             ; $5b23: $bb
	ei                                               ; $5b24: $fb
	ld a, e                                          ; $5b25: $7b
	ld a, e                                          ; $5b26: $7b
	cp $9b                                           ; $5b27: $fe $9b
	ei                                               ; $5b29: $fb
	ld e, e                                          ; $5b2a: $5b
	xor l                                            ; $5b2b: $ad
	ld a, [hl]                                       ; $5b2c: $7e
	ei                                               ; $5b2d: $fb
	sbc l                                            ; $5b2e: $9d
	ld d, d                                          ; $5b2f: $52
	add c                                            ; $5b30: $81
	db $fc                                           ; $5b31: $fc
	rst SubAFromDE                                          ; $5b32: $df
	jr c, jr_046_5b13                                ; $5b33: $38 $de

	ld a, b                                          ; $5b35: $78
	sub c                                            ; $5b36: $91
	db $fc                                           ; $5b37: $fc
	nop                                              ; $5b38: $00
	nop                                              ; $5b39: $00
	ld d, e                                          ; $5b3a: $53
	ld d, b                                          ; $5b3b: $50
	scf                                              ; $5b3c: $37
	ld a, b                                          ; $5b3d: $78
	call c, $007b                                    ; $5b3e: $dc $7b $00
	nop                                              ; $5b41: $00
	bit 4, c                                         ; $5b42: $cb $61
	ld d, l                                          ; $5b44: $55
	ld a, b                                          ; $5b45: $78
	ld a, a                                          ; $5b46: $7f
	sbc e                                            ; $5b47: $9b
	ccf                                              ; $5b48: $3f
	nop                                              ; $5b49: $00
	inc [hl]                                         ; $5b4a: $34
	nop                                              ; $5b4b: $00
	ld a, d                                          ; $5b4c: $7a
	ld c, l                                          ; $5b4d: $4d
	ld a, d                                          ; $5b4e: $7a
	cpl                                              ; $5b4f: $2f
	ld a, l                                          ; $5b50: $7d
	call nz, $04df                                   ; $5b51: $c4 $df $04
	add e                                            ; $5b54: $83
	inc bc                                           ; $5b55: $03
	dec d                                            ; $5b56: $15
	ld a, [bc]                                       ; $5b57: $0a
	nop                                              ; $5b58: $00
	ldh a, [rDIV]                                    ; $5b59: $f0 $04
	ld hl, sp+$01                                    ; $5b5b: $f8 $01
	inc b                                            ; $5b5d: $04
	ld [$00f5], a                                    ; $5b5e: $ea $f5 $00
	xor b                                            ; $5b61: $a8
	jr c, jr_046_5b8c                                ; $5b62: $38 $28

	jr jr_046_5b6d                                   ; $5b64: $18 $07

	xor e                                            ; $5b66: $ab
	ld d, l                                          ; $5b67: $55
	nop                                              ; $5b68: $00
	ld b, a                                          ; $5b69: $47
	add h                                            ; $5b6a: $84
	add l                                            ; $5b6b: $85
	and h                                            ; $5b6c: $a4

jr_046_5b6d:
	and c                                            ; $5b6d: $a1
	ld d, l                                          ; $5b6e: $55
	xor d                                            ; $5b6f: $aa
	nop                                              ; $5b70: $00
	halt                                             ; $5b71: $76
	call nz, $097d                                   ; $5b72: $c4 $7d $09
	ld a, a                                          ; $5b75: $7f
	ldh a, [$97]                                     ; $5b76: $f0 $97
	sbc d                                            ; $5b78: $9a
	sbc b                                            ; $5b79: $98
	sbc [hl]                                         ; $5b7a: $9e
	sbc b                                            ; $5b7b: $98
	pop af                                           ; $5b7c: $f1
	push af                                          ; $5b7d: $f5
	xor d                                            ; $5b7e: $aa
	nop                                              ; $5b7f: $00
	sbc $c0                                          ; $5b80: $de $c0
	add d                                            ; $5b82: $82
	ldh [$d0], a                                     ; $5b83: $e0 $d0
	ldh [$50], a                                     ; $5b85: $e0 $50
	nop                                              ; $5b87: $00
	halt                                             ; $5b88: $76
	ld h, h                                          ; $5b89: $64
	ld h, h                                          ; $5b8a: $64
	ld b, h                                          ; $5b8b: $44

jr_046_5b8c:
	and $d6                                          ; $5b8c: $e6 $d6
	and [hl]                                         ; $5b8e: $a6
	inc b                                            ; $5b8f: $04
	ld b, b                                          ; $5b90: $40
	ld e, c                                          ; $5b91: $59
	or $55                                           ; $5b92: $f6 $55
	and l                                            ; $5b94: $a5
	inc l                                            ; $5b95: $2c
	and h                                            ; $5b96: $a4
	inc [hl]                                         ; $5b97: $34
	cp e                                             ; $5b98: $bb
	and d                                            ; $5b99: $a2
	nop                                              ; $5b9a: $00
	and d                                            ; $5b9b: $a2

Call_046_5b9c:
	ld b, d                                          ; $5b9c: $42
	jp $8343                                         ; $5b9d: $c3 $43 $83


	ld [hl], h                                       ; $5ba0: $74
	jp $017f                                         ; $5ba1: $c3 $7f $01


	ld [hl], a                                       ; $5ba4: $77
	db $10                                           ; $5ba5: $10
	sbc [hl]                                         ; $5ba6: $9e
	dec sp                                           ; $5ba7: $3b
	ld a, e                                          ; $5ba8: $7b
	ld [hl], d                                       ; $5ba9: $72
	rst SubAFromDE                                          ; $5baa: $df
	ei                                               ; $5bab: $fb
	halt                                             ; $5bac: $76
	pop bc                                           ; $5bad: $c1
	ld d, a                                          ; $5bae: $57
	nop                                              ; $5baf: $00
	reti                                             ; $5bb0: $d9


	inc b                                            ; $5bb1: $04
	ld d, a                                          ; $5bb2: $57
	ldh a, [rRP]                                     ; $5bb3: $f0 $56
	and b                                            ; $5bb5: $a0
	scf                                              ; $5bb6: $37
	ldh [$57], a                                     ; $5bb7: $e0 $57
	ldh a, [$7e]                                     ; $5bb9: $f0 $7e
	push bc                                          ; $5bbb: $c5
	rst SubAFromDE                                          ; $5bbc: $df
	inc b                                            ; $5bbd: $04
	sbc d                                            ; $5bbe: $9a

Call_046_5bbf:
	ld [bc], a                                       ; $5bbf: $02
	inc b                                            ; $5bc0: $04
	ld [$f808], sp                                   ; $5bc1: $08 $08 $f8
	ld a, d                                          ; $5bc4: $7a
	jp $8874                                         ; $5bc5: $c3 $74 $88


	adc a                                            ; $5bc8: $8f
	ld [hl], d                                       ; $5bc9: $72
	ld h, d                                          ; $5bca: $62
	ld h, b                                          ; $5bcb: $60
	ld l, h                                          ; $5bcc: $6c
	or h                                             ; $5bcd: $b4
	inc h                                            ; $5bce: $24
	and b                                            ; $5bcf: $a0
	add d                                            ; $5bd0: $82
	ld hl, $0341                                     ; $5bd1: $21 $41 $03
	ld b, e                                          ; $5bd4: $43
	ld h, a                                          ; $5bd5: $67
	ld h, e                                          ; $5bd6: $63
	ld b, e                                          ; $5bd7: $43
	ld h, c                                          ; $5bd8: $61
	ld b, a                                          ; $5bd9: $47
	ret nc                                           ; $5bda: $d0

	ld l, a                                          ; $5bdb: $6f
	add d                                            ; $5bdc: $82
	ld e, a                                          ; $5bdd: $5f
	ldh a, [$66]                                     ; $5bde: $f0 $66
	pop bc                                           ; $5be0: $c1
	sub a                                            ; $5be1: $97
	ld a, [bc]                                       ; $5be2: $0a
	add c                                            ; $5be3: $81
	ld l, d                                          ; $5be4: $6a
	dec h                                            ; $5be5: $25
	and d                                            ; $5be6: $a2
	add hl, de                                       ; $5be7: $19
	dec hl                                           ; $5be8: $2b
	sbc a                                            ; $5be9: $9f
	call c, $dec0                                    ; $5bea: $dc $c0 $de
	ldh [$de], a                                     ; $5bed: $e0 $de
	ei                                               ; $5bef: $fb
	ld a, a                                          ; $5bf0: $7f
	ld d, b                                          ; $5bf1: $50
	sbc h                                            ; $5bf2: $9c
	ld e, e                                          ; $5bf3: $5b
	cp e                                             ; $5bf4: $bb
	ld e, e                                          ; $5bf5: $5b
	ldh [$a1], a                                     ; $5bf6: $e0 $a1
	ld a, h                                          ; $5bf8: $7c
	cp $99                                           ; $5bf9: $fe $99
	ld [bc], a                                       ; $5bfb: $02
	inc bc                                           ; $5bfc: $03
	dec b                                            ; $5bfd: $05
	inc bc                                           ; $5bfe: $03
	dec e                                            ; $5bff: $1d
	ld a, [de]                                       ; $5c00: $1a
	ld [hl], l                                       ; $5c01: $75
	ld c, e                                          ; $5c02: $4b
	ld a, a                                          ; $5c03: $7f
	jr c, @-$71                                      ; $5c04: $38 $8d

	ld [bc], a                                       ; $5c06: $02
	dec b                                            ; $5c07: $05
	and b                                            ; $5c08: $a0
	call nc, $04ec                                   ; $5c09: $d4 $ec $04
	inc c                                            ; $5c0c: $0c
	push af                                          ; $5c0d: $f5
	ld d, l                                          ; $5c0e: $55
	xor d                                            ; $5c0f: $aa
	rlca                                             ; $5c10: $07
	dec bc                                           ; $5c11: $0b
	inc de                                           ; $5c12: $13
	dec sp                                           ; $5c13: $3b
	ld [hl], e                                       ; $5c14: $73
	ld [bc], a                                       ; $5c15: $02
	and d                                            ; $5c16: $a2
	ld d, l                                          ; $5c17: $55
	call c, $9c04                                    ; $5c18: $dc $04 $9c
	push af                                          ; $5c1b: $f5
	jp nz, $dcaa                                     ; $5c1c: $c2 $aa $dc

	ei                                               ; $5c1f: $fb
	ld a, h                                          ; $5c20: $7c
	or b                                             ; $5c21: $b0
	ld a, e                                          ; $5c22: $7b
	ldh a, [$fe]                                     ; $5c23: $f0 $fe
	sbc h                                            ; $5c25: $9c
	db $f4                                           ; $5c26: $f4
	ld [bc], a                                       ; $5c27: $02
	xor a                                            ; $5c28: $af
	call c, Call_046_7cfb                            ; $5c29: $dc $fb $7c
	and d                                            ; $5c2c: $a2
	ld a, [hl]                                       ; $5c2d: $7e
	add a                                            ; $5c2e: $87
	ld [hl], a                                       ; $5c2f: $77
	cpl                                              ; $5c30: $2f
	sbc h                                            ; $5c31: $9c
	and l                                            ; $5c32: $a5
	inc b                                            ; $5c33: $04
	ld a, a                                          ; $5c34: $7f
	call c, $9efb                                    ; $5c35: $dc $fb $9e
	ld d, d                                          ; $5c38: $52
	ld a, d                                          ; $5c39: $7a
	sub h                                            ; $5c3a: $94
	db $dd                                           ; $5c3b: $dd
	inc b                                            ; $5c3c: $04
	sbc h                                            ; $5c3d: $9c
	ld d, b                                          ; $5c3e: $50
	ld [bc], a                                       ; $5c3f: $02
	rst $38                                          ; $5c40: $ff
	call c, Call_046_79fb                            ; $5c41: $dc $fb $79
	ld b, d                                          ; $5c44: $42
	ld [hl], d                                       ; $5c45: $72
	or c                                             ; $5c46: $b1
	ld a, h                                          ; $5c47: $7c
	ld [hl], a                                       ; $5c48: $77
	sbc [hl]                                         ; $5c49: $9e
	ld sp, hl                                        ; $5c4a: $f9
	ld e, e                                          ; $5c4b: $5b
	ld [bc], a                                       ; $5c4c: $02
	ld [hl], a                                       ; $5c4d: $77

jr_046_5c4e:
	adc d                                            ; $5c4e: $8a
	sbc [hl]                                         ; $5c4f: $9e
	db $fd                                           ; $5c50: $fd
	ld h, a                                          ; $5c51: $67
	ldh a, [$df]                                     ; $5c52: $f0 $df
	add hl, bc                                       ; $5c54: $09
	add d                                            ; $5c55: $82
	ld c, $1c                                        ; $5c56: $0e $1c
	inc [hl]                                         ; $5c58: $34
	inc a                                            ; $5c59: $3c
	jr jr_046_5c78                                   ; $5c5a: $18 $1c

	ldh a, [$f0]                                     ; $5c5c: $f0 $f0
	ld sp, hl                                        ; $5c5e: $f9
	rst $38                                          ; $5c5f: $ff
	db $e3                                           ; $5c60: $e3
	db $e3                                           ; $5c61: $e3
	inc h                                            ; $5c62: $24
	ld b, $02                                        ; $5c63: $06 $02
	jr nz, @+$26                                     ; $5c65: $20 $24

	inc h                                            ; $5c67: $24
	inc [hl]                                         ; $5c68: $34
	jr jr_046_5ca3                                   ; $5c69: $18 $38

	jr c, jr_046_5c4e                                ; $5c6b: $38 $e1

	jp $e3e3                                         ; $5c6d: $c3 $e3 $e3


	jp $1cf3                                         ; $5c70: $c3 $f3 $1c


	call c, $ff04                                    ; $5c73: $dc $04 $ff
	sbc l                                            ; $5c76: $9d
	ld e, l                                          ; $5c77: $5d

jr_046_5c78:
	ld e, b                                          ; $5c78: $58
	db $db                                           ; $5c79: $db
	ei                                               ; $5c7a: $fb
	sbc [hl]                                         ; $5c7b: $9e
	ld [hl+], a                                      ; $5c7c: $22
	ld [hl], c                                       ; $5c7d: $71
	ld bc, $04df                                     ; $5c7e: $01 $df $04
	sbc l                                            ; $5c81: $9d
	ld e, d                                          ; $5c82: $5a
	dec e                                            ; $5c83: $1d
	db $db                                           ; $5c84: $db
	ei                                               ; $5c85: $fb
	sbc h                                            ; $5c86: $9c
	add l                                            ; $5c87: $85
	ld [bc], a                                       ; $5c88: $02
	ld a, a                                          ; $5c89: $7f
	sbc $3f                                          ; $5c8a: $de $3f
	db $dd                                           ; $5c8c: $dd
	rra                                              ; $5c8d: $1f
	sub l                                            ; $5c8e: $95
	sbc l                                            ; $5c8f: $9d
	adc $c6                                          ; $5c90: $ce $c6
	push bc                                          ; $5c92: $c5
	ld [$e7e4], a                                    ; $5c93: $ea $e4 $e7
	ld bc, $e0e0                                     ; $5c96: $01 $e0 $e0
	ld [hl], l                                       ; $5c99: $75
	add hl, sp                                       ; $5c9a: $39
	rst SubAFromDE                                          ; $5c9b: $df
	db $fc                                           ; $5c9c: $fc
	sub a                                            ; $5c9d: $97
	cp e                                             ; $5c9e: $bb
	db $db                                           ; $5c9f: $db
	ld l, e                                          ; $5ca0: $6b
	ld a, e                                          ; $5ca1: $7b
	ld [hl], e                                       ; $5ca2: $73

jr_046_5ca3:
	di                                               ; $5ca3: $f3
	ld a, e                                          ; $5ca4: $7b
	ld a, d                                          ; $5ca5: $7a
	ldh [hLCDCIntHandlerIdx], a                                     ; $5ca6: $e0 $81
	sbc [hl]                                         ; $5ca8: $9e
	rra                                              ; $5ca9: $1f
	ldh a, [c]                                       ; $5caa: $f2
	ld a, h                                          ; $5cab: $7c
	and a                                            ; $5cac: $a7
	ld l, d                                          ; $5cad: $6a
	adc b                                            ; $5cae: $88
	ld a, [$0a79]                                    ; $5caf: $fa $79 $0a
	db $fc                                           ; $5cb2: $fc
	ld a, l                                          ; $5cb3: $7d
	ld l, $2f                                        ; $5cb4: $2e $2f
	ldh a, [$9e]                                     ; $5cb6: $f0 $9e
	cp e                                             ; $5cb8: $bb
	ld l, e                                          ; $5cb9: $6b
	cp a                                             ; $5cba: $bf
	sbc [hl]                                         ; $5cbb: $9e
	ld b, h                                          ; $5cbc: $44
	ld a, [$ff9e]                                    ; $5cbd: $fa $9e $ff
	ld e, e                                          ; $5cc0: $5b
	cp a                                             ; $5cc1: $bf
	ld a, h                                          ; $5cc2: $7c
	ld b, l                                          ; $5cc3: $45
	rst $38                                          ; $5cc4: $ff
	sbc [hl]                                         ; $5cc5: $9e
	ld e, $70                                        ; $5cc6: $1e $70
	ld e, a                                          ; $5cc8: $5f
	rst $38                                          ; $5cc9: $ff
	add a                                            ; $5cca: $87
	inc sp                                           ; $5ccb: $33
	rra                                              ; $5ccc: $1f
	rrca                                             ; $5ccd: $0f
	rlca                                             ; $5cce: $07
	xor a                                            ; $5ccf: $af
	ld d, a                                          ; $5cd0: $57
	dec bc                                           ; $5cd1: $0b
	dec b                                            ; $5cd2: $05
	inc l                                            ; $5cd3: $2c
	jr c, jr_046_5d0e                                ; $5cd4: $38 $38

	ld d, l                                          ; $5cd6: $55
	xor a                                            ; $5cd7: $af
	ld a, a                                          ; $5cd8: $7f
	inc hl                                           ; $5cd9: $23
	inc c                                            ; $5cda: $0c
	inc d                                            ; $5cdb: $14
	and $df                                          ; $5cdc: $e6 $df
	xor d                                            ; $5cde: $aa
	ld d, b                                          ; $5cdf: $50
	add b                                            ; $5ce0: $80
	ret nz                                           ; $5ce1: $c0

	ldh a, [rPCM34]                                  ; $5ce2: $f0 $77
	or l                                             ; $5ce4: $b5
	ld a, a                                          ; $5ce5: $7f
	call z, $ff9a                                    ; $5ce6: $cc $9a $ff
	ld bc, $0012                                     ; $5ce9: $01 $12 $00
	rst $38                                          ; $5cec: $ff
	ld h, a                                          ; $5ced: $67
	and l                                            ; $5cee: $a5
	sub [hl]                                         ; $5cef: $96
	ld sp, $00ff                                     ; $5cf0: $31 $ff $00
	ccf                                              ; $5cf3: $3f
	rst $38                                          ; $5cf4: $ff
	rst SubAFromBC                                          ; $5cf5: $e7
	db $10                                           ; $5cf6: $10
	ld [$fdef], a                                    ; $5cf7: $ea $ef $fd
	rst SubAFromDE                                          ; $5cfa: $df
	rrca                                             ; $5cfb: $0f
	sub c                                            ; $5cfc: $91
	rra                                              ; $5cfd: $1f
	ccf                                              ; $5cfe: $3f
	sbc a                                            ; $5cff: $9f
	ccf                                              ; $5d00: $3f
	rst $38                                          ; $5d01: $ff
	rla                                              ; $5d02: $17
	pop hl                                           ; $5d03: $e1
	nop                                              ; $5d04: $00
	and b                                            ; $5d05: $a0
	adc $0a                                          ; $5d06: $ce $0a
	dec d                                            ; $5d08: $15
	cpl                                              ; $5d09: $2f
	nop                                              ; $5d0a: $00
	sbc $fc                                          ; $5d0b: $de $fc
	ld a, a                                          ; $5d0d: $7f

jr_046_5d0e:
	jp nc, $ffde                                     ; $5d0e: $d2 $de $ff

	sub a                                            ; $5d11: $97
	ld hl, sp-$02                                    ; $5d12: $f8 $fe
	ld a, [hl]                                       ; $5d14: $7e
	ccf                                              ; $5d15: $3f
	db $fc                                           ; $5d16: $fc
	ld a, [hl+]                                      ; $5d17: $2a
	sub l                                            ; $5d18: $95
	ld l, d                                          ; $5d19: $6a
	dec sp                                           ; $5d1a: $3b
	nop                                              ; $5d1b: $00
	jp c, $9c55                                      ; $5d1c: $da $55 $9c

	ld d, h                                          ; $5d1f: $54
	ld b, h                                          ; $5d20: $44
	ld b, h                                          ; $5d21: $44
	ld l, e                                          ; $5d22: $6b
	rst FarCall                                          ; $5d23: $f7
	ld a, e                                          ; $5d24: $7b
	or $d5                                           ; $5d25: $f6 $d5
	ld b, h                                          ; $5d27: $44
	sbc [hl]                                         ; $5d28: $9e
	ld b, [hl]                                       ; $5d29: $46
	jp c, $9b44                                      ; $5d2a: $da $44 $9b

	scf                                              ; $5d2d: $37
	ld [hl], $63                                     ; $5d2e: $36 $63
	scf                                              ; $5d30: $37
	sbc $77                                          ; $5d31: $de $77
	rst SubAFromDE                                          ; $5d33: $df
	ld [hl], $9a                                     ; $5d34: $36 $9a
	ld h, [hl]                                       ; $5d36: $66
	ld [hl], $36                                     ; $5d37: $36 $36
	ld h, e                                          ; $5d39: $63
	inc sp                                           ; $5d3a: $33
	sbc $77                                          ; $5d3b: $de $77
	ld a, a                                          ; $5d3d: $7f
	ld hl, sp+$7b                                    ; $5d3e: $f8 $7b
	or $9e                                           ; $5d40: $f6 $9e
	ld h, [hl]                                       ; $5d42: $66
	db $dd                                           ; $5d43: $dd
	inc sp                                           ; $5d44: $33
	ld l, a                                          ; $5d45: $6f
	or $7f                                           ; $5d46: $f6 $7f
	db $eb                                           ; $5d48: $eb
	ld a, e                                          ; $5d49: $7b
	or $7b                                           ; $5d4a: $f6 $7b
	db $f4                                           ; $5d4c: $f4
	ld h, e                                          ; $5d4d: $63
	or $da                                           ; $5d4e: $f6 $da
	inc sp                                           ; $5d50: $33
	ld e, e                                          ; $5d51: $5b
	or $df                                           ; $5d52: $f6 $df
	ld h, [hl]                                       ; $5d54: $66
	ld h, b                                          ; $5d55: $60
	dec bc                                           ; $5d56: $0b
	rst $38                                          ; $5d57: $ff
	sub b                                            ; $5d58: $90
	stop                                             ; $5d59: $10 $00
	ld b, d                                          ; $5d5b: $42
	add b                                            ; $5d5c: $80
	add b                                            ; $5d5d: $80
	nop                                              ; $5d5e: $00
	ld a, b                                          ; $5d5f: $78
	add h                                            ; $5d60: $84
	ld a, [hl+]                                      ; $5d61: $2a
	call nc, $fc42                                   ; $5d62: $d4 $42 $fc
	rst JumpTable                                          ; $5d65: $c7
	ld hl, sp+$07                                    ; $5d66: $f8 $07
	or c                                             ; $5d68: $b1
	inc bc                                           ; $5d69: $03
	nop                                              ; $5d6a: $00
	jr @+$62                                         ; $5d6b: $18 $60

	nop                                              ; $5d6d: $00
	nop                                              ; $5d6e: $00
	ldh [rP1], a                                     ; $5d6f: $e0 $00
	nop                                              ; $5d71: $00
	nop                                              ; $5d72: $00
	nop                                              ; $5d73: $00
	ld [$0200], sp                                   ; $5d74: $08 $00 $02
	ld b, b                                          ; $5d77: $40
	ld [bc], a                                       ; $5d78: $02
	cp d                                             ; $5d79: $ba
	nop                                              ; $5d7a: $00
	nop                                              ; $5d7b: $00
	nop                                              ; $5d7c: $00
	ld bc, $1f0f                                     ; $5d7d: $01 $0f $1f
	ld [hl], a                                       ; $5d80: $77
	sbc l                                            ; $5d81: $9d
	sbc c                                            ; $5d82: $99

jr_046_5d83:
	ld a, a                                          ; $5d83: $7f
	cp d                                             ; $5d84: $ba
	rst $38                                          ; $5d85: $ff
	ccf                                              ; $5d86: $3f
	ccf                                              ; $5d87: $3f
	reti                                             ; $5d88: $d9


	rst $38                                          ; $5d89: $ff
	rst $38                                          ; $5d8a: $ff
	ld l, a                                          ; $5d8b: $6f
	sbc [hl]                                         ; $5d8c: $9e
	sub b                                            ; $5d8d: $90
	ld [hl], a                                       ; $5d8e: $77
	ld a, [$fe94]                                    ; $5d8f: $fa $94 $fe
	nop                                              ; $5d92: $00
	db $e4                                           ; $5d93: $e4
	inc bc                                           ; $5d94: $03
	push af                                          ; $5d95: $f5
	rrca                                             ; $5d96: $0f
	ld a, [$d10f]                                    ; $5d97: $fa $0f $d1
	ld c, $ff                                        ; $5d9a: $0e $ff
	cp h                                             ; $5d9c: $bc
	di                                               ; $5d9d: $f3
	rst $38                                          ; $5d9e: $ff
	ld a, a                                          ; $5d9f: $7f
	rst $38                                          ; $5da0: $ff
	ld a, e                                          ; $5da1: $7b
	sbc d                                            ; $5da2: $9a
	add b                                            ; $5da3: $80
	cp a                                             ; $5da4: $bf
	nop                                              ; $5da5: $00
	adc a                                            ; $5da6: $8f
	inc b                                            ; $5da7: $04
	ld [hl], a                                       ; $5da8: $77
	db $e4                                           ; $5da9: $e4
	sbc [hl]                                         ; $5daa: $9e
	db $f4                                           ; $5dab: $f4
	cp l                                             ; $5dac: $bd
	ldh [$ee], a                                     ; $5dad: $e0 $ee
	cp $de                                           ; $5daf: $fe $de
	add b                                            ; $5db1: $80
	jr nz, jr_046_5d83                               ; $5db2: $20 $cf

	jr nc, @+$01                                     ; $5db4: $30 $ff

	nop                                              ; $5db6: $00
	ld b, c                                          ; $5db7: $41
	and b                                            ; $5db8: $a0
	and e                                            ; $5db9: $a3
	ld b, h                                          ; $5dba: $44
	ld c, l                                          ; $5dbb: $4d
	add d                                            ; $5dbc: $82
	adc a                                            ; $5dbd: $8f
	dec b                                            ; $5dbe: $05
	ld a, l                                          ; $5dbf: $7d
	add d                                            ; $5dc0: $82
	rst FarCall                                          ; $5dc1: $f7
	ld a, [bc]                                       ; $5dc2: $0a
	xor $15                                          ; $5dc3: $ee $15
	db $fd                                           ; $5dc5: $fd
	inc bc                                           ; $5dc6: $03
	ret nz                                           ; $5dc7: $c0

	add b                                            ; $5dc8: $80
	add b                                            ; $5dc9: $80
	ld h, b                                          ; $5dca: $60
	and [hl]                                         ; $5dcb: $a6
	ldh a, [$fc]                                     ; $5dcc: $f0 $fc
	ld [hl], $bc                                     ; $5dce: $36 $bc
	db $db                                           ; $5dd0: $db
	sbc c                                            ; $5dd1: $99
	add e                                            ; $5dd2: $83
	db $fd                                           ; $5dd3: $fd
	ld [bc], a                                       ; $5dd4: $02
	cp $58                                           ; $5dd5: $fe $58
	rst $38                                          ; $5dd7: $ff
	push af                                          ; $5dd8: $f5
	sbc e                                            ; $5dd9: $9b
	ld b, $00                                        ; $5dda: $06 $00
	ld [bc], a                                       ; $5ddc: $02
	dec b                                            ; $5ddd: $05
	rst AddAOntoHL                                          ; $5dde: $ef
	ld a, a                                          ; $5ddf: $7f
	ld d, b                                          ; $5de0: $50
	ld a, a                                          ; $5de1: $7f
	ld a, b                                          ; $5de2: $78
	sub l                                            ; $5de3: $95
	dec a                                            ; $5de4: $3d
	ld [bc], a                                       ; $5de5: $02
	ld d, $01                                        ; $5de6: $16 $01
	scf                                              ; $5de8: $37
	ld [$1b24], sp                                   ; $5de9: $08 $24 $1b
	add hl, de                                       ; $5dec: $19
	ld b, $77                                        ; $5ded: $06 $77
	ldh a, [$9e]                                     ; $5def: $f0 $9e
	ld c, $b4                                        ; $5df1: $0e $b4
	cp $d8                                           ; $5df3: $fe $d8
	ld c, h                                          ; $5df5: $4c
	sbc b                                            ; $5df6: $98
	nop                                              ; $5df7: $00
	rst GetHLinHL                                          ; $5df8: $cf
	or [hl]                                          ; $5df9: $b6
	nop                                              ; $5dfa: $00
	add d                                            ; $5dfb: $82
	ld bc, $0001                                     ; $5dfc: $01 $01 $00
	nop                                              ; $5dff: $00
	ld a, a                                          ; $5e00: $7f
	ccf                                              ; $5e01: $3f
	cp h                                             ; $5e02: $bc
	ld b, h                                          ; $5e03: $44
	cp $1e                                           ; $5e04: $fe $1e
	ld c, a                                          ; $5e06: $4f
	rst SubAFromBC                                          ; $5e07: $e7
	sbc e                                            ; $5e08: $9b
	ld b, b                                          ; $5e09: $40
	and [hl]                                         ; $5e0a: $a6
	ld b, b                                          ; $5e0b: $40
	rlca                                             ; $5e0c: $07
	cp l                                             ; $5e0d: $bd
	pop af                                           ; $5e0e: $f1
	jr c, jr_046_5e4a                                ; $5e0f: $38 $39

	ld a, $92                                        ; $5e11: $3e $92
	ld bc, $043b                                     ; $5e13: $01 $3b $04
	push af                                          ; $5e16: $f5
	rrca                                             ; $5e17: $0f
	ld a, [hl]                                       ; $5e18: $7e
	inc bc                                           ; $5e19: $03
	ld l, e                                          ; $5e1a: $6b
	add a                                            ; $5e1b: $87
	ld b, h                                          ; $5e1c: $44
	cp c                                             ; $5e1d: $b9
	ld l, b                                          ; $5e1e: $68
	rla                                              ; $5e1f: $17
	ld [hl], a                                       ; $5e20: $77
	inc a                                            ; $5e21: $3c
	add b                                            ; $5e22: $80
	cp e                                             ; $5e23: $bb
	ld [hl], b                                       ; $5e24: $70
	rst $38                                          ; $5e25: $ff
	ldh [$c0], a                                     ; $5e26: $e0 $c0
	rst $38                                          ; $5e28: $ff
	jp c, $93ff                                      ; $5e29: $da $ff $93

	rst AddAOntoHL                                          ; $5e2c: $ef
	ld c, l                                          ; $5e2d: $4d
	or e                                             ; $5e2e: $b3
	db $fd                                           ; $5e2f: $fd
	inc bc                                           ; $5e30: $03
	db $fc                                           ; $5e31: $fc
	inc bc                                           ; $5e32: $03
	ldh a, [rIF]                                     ; $5e33: $f0 $0f
	inc b                                            ; $5e35: $04
	rst $38                                          ; $5e36: $ff
	add hl, hl                                       ; $5e37: $29
	rst SubAFromDE                                          ; $5e38: $df

jr_046_5e39:
	rlca                                             ; $5e39: $07
	rst $38                                          ; $5e3a: $ff
	rst FarCall                                          ; $5e3b: $f7
	rst $38                                          ; $5e3c: $ff
	daa                                              ; $5e3d: $27
	rst $38                                          ; $5e3e: $ff
	ld l, a                                          ; $5e3f: $6f
	rst $38                                          ; $5e40: $ff
	sbc a                                            ; $5e41: $9f
	sub a                                            ; $5e42: $97
	rst $38                                          ; $5e43: $ff
	ld a, a                                          ; $5e44: $7f
	cp a                                             ; $5e45: $bf
	cp a                                             ; $5e46: $bf
	ld a, a                                          ; $5e47: $7f
	ld a, a                                          ; $5e48: $7f
	rst $38                                          ; $5e49: $ff

jr_046_5e4a:
	db $fd                                           ; $5e4a: $fd
	ld a, e                                          ; $5e4b: $7b
	push de                                          ; $5e4c: $d5
	adc d                                            ; $5e4d: $8a
	call $dfb2                                       ; $5e4e: $cd $b2 $df
	jr nz, jr_046_5e39                               ; $5e51: $20 $e6

	ld a, b                                          ; $5e53: $78
	call nc, $fbf8                                   ; $5e54: $d4 $f8 $fb
	ldh a, [$27]                                     ; $5e57: $f0 $27
	ld hl, sp+$55                                    ; $5e59: $f8 $55
	cp [hl]                                          ; $5e5b: $be
	add c                                            ; $5e5c: $81
	nop                                              ; $5e5d: $00

jr_046_5e5e:
	ret nz                                           ; $5e5e: $c0

	inc bc                                           ; $5e5f: $03
	add $01                                          ; $5e60: $c6 $01
	ld bc, $cebe                                     ; $5e62: $01 $be $ce
	jp nz, $9362                                     ; $5e65: $c2 $62 $93

	inc bc                                           ; $5e68: $03
	dec de                                           ; $5e69: $1b
	rst SubAFromBC                                          ; $5e6a: $e7
	add c                                            ; $5e6b: $81
	nop                                              ; $5e6c: $00
	dec c                                            ; $5e6d: $0d
	add e                                            ; $5e6e: $83
	cp h                                             ; $5e6f: $bc
	rlca                                             ; $5e70: $07
	call nc, $2622                                   ; $5e71: $d4 $22 $26
	cp a                                             ; $5e74: $bf
	ld sp, $807e                                     ; $5e75: $31 $7e $80
	ld sp, $f5aa                                     ; $5e78: $31 $aa $f5
	jp nz, $3dff                                     ; $5e7b: $c2 $ff $3d

	rst SubAFromBC                                          ; $5e7e: $e7
	adc $01                                          ; $5e7f: $ce $01
	jp nz, $f400                                     ; $5e81: $c2 $00 $f4

	ld [hl+], a                                      ; $5e84: $22
	and c                                            ; $5e85: $a1
	ret nz                                           ; $5e86: $c0

	add d                                            ; $5e87: $82
	rst SubAFromBC                                          ; $5e88: $e7
	or $01                                           ; $5e89: $f6 $01
	sbc $e1                                          ; $5e8b: $de $e1
	jr c, jr_046_5e5e                                ; $5e8d: $38 $cf

	and [hl]                                         ; $5e8f: $a6
	ld a, a                                          ; $5e90: $7f
	jp nc, $8b7f                                     ; $5e91: $d2 $7f $8b

	ld [hl], b                                       ; $5e94: $70
	ld l, e                                          ; $5e95: $6b
	call c, $ac80                                    ; $5e96: $dc $80 $ac
	rla                                              ; $5e99: $17
	ld [hl], l                                       ; $5e9a: $75
	add e                                            ; $5e9b: $83
	ld e, a                                          ; $5e9c: $5f
	ldh [hDisp1_OBP0], a                                     ; $5e9d: $e0 $93
	xor $c7                                          ; $5e9f: $ee $c7
	ld a, [hl]                                       ; $5ea1: $7e
	xor [hl]                                         ; $5ea2: $ae
	ld a, a                                          ; $5ea3: $7f
	db $fd                                           ; $5ea4: $fd
	cp $6f                                           ; $5ea5: $fe $6f
	ldh a, [$eb]                                     ; $5ea7: $f0 $eb
	ldh a, [rHDMA5]                                  ; $5ea9: $f0 $55
	ei                                               ; $5eab: $fb
	rst GetHLinHL                                          ; $5eac: $cf
	jr nc, @-$07                                     ; $5ead: $30 $f7

	ld [$3ccb], sp                                   ; $5eaf: $08 $cb $3c
	ld e, a                                          ; $5eb2: $5f
	ldh a, [$bd]                                     ; $5eb3: $f0 $bd
	ld h, d                                          ; $5eb5: $62
	ret z                                            ; $5eb6: $c8

	sbc h                                            ; $5eb7: $9c
	dec a                                            ; $5eb8: $3d
	db $ed                                           ; $5eb9: $ed
	rra                                              ; $5eba: $1f
	ld [hl], a                                       ; $5ebb: $77
	ld h, [hl]                                       ; $5ebc: $66
	add b                                            ; $5ebd: $80
	rst JumpTable                                          ; $5ebe: $c7
	jr c, @-$0b                                      ; $5ebf: $38 $f3

	add hl, sp                                       ; $5ec1: $39
	and $1b                                          ; $5ec2: $e6 $1b
	ld [hl], c                                       ; $5ec4: $71
	rra                                              ; $5ec5: $1f
	ld [hl+], a                                      ; $5ec6: $22
	rst $38                                          ; $5ec7: $ff
	call nc, $3aeb                                   ; $5ec8: $d4 $eb $3a
	rst JumpTable                                          ; $5ecb: $c7
	db $fd                                           ; $5ecc: $fd
	ld [bc], a                                       ; $5ecd: $02
	ld a, [$7d07]                                    ; $5ece: $fa $07 $7d
	add $bf                                          ; $5ed1: $c6 $bf
	ret nz                                           ; $5ed3: $c0

	daa                                              ; $5ed4: $27
	ld hl, sp-$7d                                    ; $5ed5: $f8 $83
	ld a, h                                          ; $5ed7: $7c
	ld h, h                                          ; $5ed8: $64
	rst $38                                          ; $5ed9: $ff
	ei                                               ; $5eda: $fb
	rst $38                                          ; $5edb: $ff

Call_046_5edc:
	jr nz, jr_046_5e5e                               ; $5edc: $20 $80

	ldh a, [$a0]                                     ; $5ede: $f0 $a0
	ld h, b                                          ; $5ee0: $60
	inc e                                            ; $5ee1: $1c
	jr nz, @-$7e                                     ; $5ee2: $20 $80

	rra                                              ; $5ee4: $1f
	jp z, $b43d                                      ; $5ee5: $ca $3d $b4

	jr @+$4a                                         ; $5ee8: $18 $48

	or c                                             ; $5eea: $b1
	ldh [rIE], a                                     ; $5eeb: $e0 $ff
	ld a, h                                          ; $5eed: $7c
	ld b, d                                          ; $5eee: $42
	ld l, e                                          ; $5eef: $6b
	inc e                                            ; $5ef0: $1c
	xor h                                            ; $5ef1: $ac
	scf                                              ; $5ef2: $37
	sbc d                                            ; $5ef3: $9a
	rst AddAOntoHL                                          ; $5ef4: $ef
	ld h, $fc                                        ; $5ef5: $26 $fc
	push de                                          ; $5ef7: $d5
	rst $38                                          ; $5ef8: $ff
	xor d                                            ; $5ef9: $aa
	rst FarCall                                          ; $5efa: $f7
	push af                                          ; $5efb: $f5
	ld a, [$667f]                                    ; $5efc: $fa $7f $66
	adc [hl]                                         ; $5eff: $8e
	daa                                              ; $5f00: $27
	nop                                              ; $5f01: $00
	add hl, hl                                       ; $5f02: $29
	sub $37                                          ; $5f03: $d6 $37
	add sp, $7f                                      ; $5f05: $e8 $7f
	sub b                                            ; $5f07: $90
	or l                                             ; $5f08: $b5
	jp z, $71ac                                      ; $5f09: $ca $ac $71

	ld a, a                                          ; $5f0c: $7f
	ret nc                                           ; $5f0d: $d0

	inc h                                            ; $5f0e: $24
	ld [$be66], sp                                   ; $5f0f: $08 $66 $be
	ret nc                                           ; $5f12: $d0

	add c                                            ; $5f13: $81
	ld [bc], a                                       ; $5f14: $02
	sub a                                            ; $5f15: $97
	ld bc, $0487                                     ; $5f16: $01 $87 $04
	and h                                            ; $5f19: $a4
	nop                                              ; $5f1a: $00
	jp $0801                                         ; $5f1b: $c3 $01 $08


	cp [hl]                                          ; $5f1e: $be
	ld [$f030], sp                                   ; $5f1f: $08 $30 $f0
	add b                                            ; $5f22: $80
	db $10                                           ; $5f23: $10
	sub $f8                                          ; $5f24: $d6 $f8
	cp c                                             ; $5f26: $b9
	ldh [$e3], a                                     ; $5f27: $e0 $e3
	nop                                              ; $5f29: $00
	inc [hl]                                         ; $5f2a: $34
	dec de                                           ; $5f2b: $1b
	ld c, [hl]                                       ; $5f2c: $4e
	inc b                                            ; $5f2d: $04
	inc bc                                           ; $5f2e: $03
	ld [bc], a                                       ; $5f2f: $02
	dec a                                            ; $5f30: $3d
	ld c, $0f                                        ; $5f31: $0e $0f
	rra                                              ; $5f33: $1f
	inc de                                           ; $5f34: $13
	rrca                                             ; $5f35: $0f
	ld a, a                                          ; $5f36: $7f
	dec sp                                           ; $5f37: $3b
	jr nc, @+$01                                     ; $5f38: $30 $ff

	xor $f9                                          ; $5f3a: $ee $f9
	daa                                              ; $5f3c: $27
	inc bc                                           ; $5f3d: $03
	cpl                                              ; $5f3e: $2f
	jr nz, jr_046_5f65                               ; $5f3f: $20 $24

	ld b, b                                          ; $5f41: $40
	add b                                            ; $5f42: $80
	pop af                                           ; $5f43: $f1
	ret nz                                           ; $5f44: $c0

	cp a                                             ; $5f45: $bf
	rrca                                             ; $5f46: $0f
	ld e, $8f                                        ; $5f47: $1e $8f
	rst JumpTable                                          ; $5f49: $c7
	ccf                                              ; $5f4a: $3f
	or e                                             ; $5f4b: $b3
	ld a, a                                          ; $5f4c: $7f
	push af                                          ; $5f4d: $f5
	inc bc                                           ; $5f4e: $03
	db $ed                                           ; $5f4f: $ed
	ld [hl], e                                       ; $5f50: $73
	ld a, b                                          ; $5f51: $78
	rst $38                                          ; $5f52: $ff
	ld l, d                                          ; $5f53: $6a
	db $fd                                           ; $5f54: $fd
	dec d                                            ; $5f55: $15
	rst $38                                          ; $5f56: $ff
	ld a, [$f7e7]                                    ; $5f57: $fa $e7 $f7
	rst SubAFromBC                                          ; $5f5a: $e7
	xor d                                            ; $5f5b: $aa
	db $dd                                           ; $5f5c: $dd
	pop hl                                           ; $5f5d: $e1
	rst $38                                          ; $5f5e: $ff
	rra                                              ; $5f5f: $1f
	rst $38                                          ; $5f60: $ff
	ccf                                              ; $5f61: $3f
	sbc $ff                                          ; $5f62: $de $ff
	sub d                                            ; $5f64: $92

jr_046_5f65:
	rst SubAFromDE                                          ; $5f65: $df
	daa                                              ; $5f66: $27
	or a                                             ; $5f67: $b7
	ld c, a                                          ; $5f68: $4f
	add hl, hl                                       ; $5f69: $29
	rst $38                                          ; $5f6a: $ff
	halt                                             ; $5f6b: $76
	ccf                                              ; $5f6c: $3f
	adc [hl]                                         ; $5f6d: $8e
	rst $38                                          ; $5f6e: $ff
	ccf                                              ; $5f6f: $3f
	rst SubAFromDE                                          ; $5f70: $df
	rst SubAFromDE                                          ; $5f71: $df
	ld a, d                                          ; $5f72: $7a
	ret c                                            ; $5f73: $d8

	adc b                                            ; $5f74: $88
	ld [$d7ff], a                                    ; $5f75: $ea $ff $d7
	rst $38                                          ; $5f78: $ff
	cp a                                             ; $5f79: $bf
	rst $38                                          ; $5f7a: $ff
	ld [hl], d                                       ; $5f7b: $72
	rst $38                                          ; $5f7c: $ff
	or b                                             ; $5f7d: $b0
	rst $38                                          ; $5f7e: $ff
	ld [bc], a                                       ; $5f7f: $02
	db $fd                                           ; $5f80: $fd
	ret z                                            ; $5f81: $c8

	rst $38                                          ; $5f82: $ff
	di                                               ; $5f83: $f3
	rst $38                                          ; $5f84: $ff
	and a                                            ; $5f85: $a7
	ei                                               ; $5f86: $fb
	ld d, d                                          ; $5f87: $52
	rst $38                                          ; $5f88: $ff
	rst AddAOntoHL                                          ; $5f89: $ef
	rst $38                                          ; $5f8a: $ff
	sbc $7b                                          ; $5f8b: $de $7b
	cpl                                              ; $5f8d: $2f
	sub [hl]                                         ; $5f8e: $96
	ld d, [hl]                                       ; $5f8f: $56
	ld sp, hl                                        ; $5f90: $f9
	ld [hl], b                                       ; $5f91: $70
	cp $40                                           ; $5f92: $fe $40
	cp $ce                                           ; $5f94: $fe $ce
	rst $38                                          ; $5f96: $ff
	inc c                                            ; $5f97: $0c

Jump_046_5f98:
	ld a, e                                          ; $5f98: $7b
	and $7f                                          ; $5f99: $e6 $7f
	cp $80                                           ; $5f9b: $fe $80

jr_046_5f9d:
	inc de                                           ; $5f9d: $13
	rst SubAFromBC                                          ; $5f9e: $e7
	add d                                            ; $5f9f: $82
	ld a, l                                          ; $5fa0: $7d
	ld a, [hl+]                                      ; $5fa1: $2a
	ld a, l                                          ; $5fa2: $7d
	ld h, $df                                        ; $5fa3: $26 $df
	ret nc                                           ; $5fa5: $d0

	rst $38                                          ; $5fa6: $ff
	reti                                             ; $5fa7: $d9


	rst $38                                          ; $5fa8: $ff
	sbc b                                            ; $5fa9: $98
	rst $38                                          ; $5faa: $ff
	adc h                                            ; $5fab: $8c
	rst $38                                          ; $5fac: $ff
	db $d3                                           ; $5fad: $d3
	rst AddAOntoHL                                          ; $5fae: $ef
	cpl                                              ; $5faf: $2f
	jp $1fe5                                         ; $5fb0: $c3 $e5 $1f


	ei                                               ; $5fb3: $fb
	rrca                                             ; $5fb4: $0f
	dec a                                            ; $5fb5: $3d
	rst SubAFromDE                                          ; $5fb6: $df
	halt                                             ; $5fb7: $76
	rst $38                                          ; $5fb8: $ff
	xor $ff                                          ; $5fb9: $ee $ff
	sub b                                            ; $5fbb: $90
	add b                                            ; $5fbc: $80
	db $fd                                           ; $5fbd: $fd

jr_046_5fbe:
	ld h, h                                          ; $5fbe: $64
	sbc e                                            ; $5fbf: $9b
	db $e3                                           ; $5fc0: $e3
	sbc a                                            ; $5fc1: $9f
	sbc a                                            ; $5fc2: $9f
	rst $38                                          ; $5fc3: $ff
	db $ed                                           ; $5fc4: $ed
	rst $38                                          ; $5fc5: $ff
	ld c, d                                          ; $5fc6: $4a
	cp a                                             ; $5fc7: $bf
	ld e, l                                          ; $5fc8: $5d
	add e                                            ; $5fc9: $83
	rst GetHLinHL                                          ; $5fca: $cf
	or $ee                                           ; $5fcb: $f6 $ee

jr_046_5fcd:
	pop af                                           ; $5fcd: $f1
	ld e, a                                          ; $5fce: $5f
	add e                                            ; $5fcf: $83
	cp a                                             ; $5fd0: $bf
	pop bc                                           ; $5fd1: $c1
	ld c, b                                          ; $5fd2: $48
	or a                                             ; $5fd3: $b7
	inc [hl]                                         ; $5fd4: $34
	rst SubAFromDE                                          ; $5fd5: $df
	xor $1f                                          ; $5fd6: $ee $1f
	pop de                                           ; $5fd8: $d1
	rrca                                             ; $5fd9: $0f
	inc e                                            ; $5fda: $1c
	inc hl                                           ; $5fdb: $23
	add b                                            ; $5fdc: $80
	dec [hl]                                         ; $5fdd: $35
	sbc a                                            ; $5fde: $9f
	jp Jump_046_4bbc                                 ; $5fdf: $c3 $bc $4b


	cp h                                             ; $5fe2: $bc
	cp b                                             ; $5fe3: $b8
	ld h, a                                          ; $5fe4: $67
	sbc l                                            ; $5fe5: $9d
	ld h, c                                          ; $5fe6: $61
	ld d, h                                          ; $5fe7: $54
	adc e                                            ; $5fe8: $8b
	inc hl                                           ; $5fe9: $23
	sbc a                                            ; $5fea: $9f
	ld l, d                                          ; $5feb: $6a
	sub a                                            ; $5fec: $97
	adc [hl]                                         ; $5fed: $8e
	rst $38                                          ; $5fee: $ff
	db $e3                                           ; $5fef: $e3
	inc e                                            ; $5ff0: $1c
	ld a, [$711f]                                    ; $5ff1: $fa $1f $71
	cp [hl]                                          ; $5ff4: $be
	ld d, a                                          ; $5ff5: $57
	cp b                                             ; $5ff6: $b8
	xor c                                            ; $5ff7: $a9
	di                                               ; $5ff8: $f3
	jr c, jr_046_5fbe                                ; $5ff9: $38 $c3

	sbc [hl]                                         ; $5ffb: $9e
	add b                                            ; $5ffc: $80
	ld h, c                                          ; $5ffd: $61
	add hl, hl                                       ; $5ffe: $29
	db $fc                                           ; $5fff: $fc
	and c                                            ; $6000: $a1
	ld e, a                                          ; $6001: $5f
	ld d, $ff                                        ; $6002: $16 $ff
	ld l, e                                          ; $6004: $6b
	db $fc                                           ; $6005: $fc
	ccf                                              ; $6006: $3f
	ret nz                                           ; $6007: $c0

	jr c, jr_046_5fcd                                ; $6008: $38 $c3

	jp hl                                            ; $600a: $e9


	ld [de], a                                       ; $600b: $12
	ld a, $c3                                        ; $600c: $3e $c3
	db $db                                           ; $600e: $db
	rst AddAOntoHL                                          ; $600f: $ef
	ld a, c                                          ; $6010: $79
	rst $38                                          ; $6011: $ff
	inc h                                            ; $6012: $24
	rst $38                                          ; $6013: $ff
	ldh [$7f], a                                     ; $6014: $e0 $7f
	ld d, l                                          ; $6016: $55
	ld hl, sp-$4b                                    ; $6017: $f8 $b5
	ld l, b                                          ; $6019: $68
	rst SubAFromDE                                          ; $601a: $df
	jr nz, jr_046_5f9d                               ; $601b: $20 $80

	add e                                            ; $601d: $83
	cp $53                                           ; $601e: $fe $53
	cp h                                             ; $6020: $bc
	sbc b                                            ; $6021: $98
	rst $38                                          ; $6022: $ff
	ld e, b                                          ; $6023: $58
	rst $38                                          ; $6024: $ff
	dec c                                            ; $6025: $0d
	di                                               ; $6026: $f3
	ld d, h                                          ; $6027: $54
	and e                                            ; $6028: $a3
	sbc d                                            ; $6029: $9a
	ld [hl], b                                       ; $602a: $70
	and a                                            ; $602b: $a7
	ld hl, sp-$06                                    ; $602c: $f8 $fa
	ld a, l                                          ; $602e: $7d
	dec [hl]                                         ; $602f: $35
	ld a, e                                          ; $6030: $7b
	add hl, de                                       ; $6031: $19
	ldh [$e4], a                                     ; $6032: $e0 $e4
	sbc b                                            ; $6034: $98

jr_046_6035:
	rrca                                             ; $6035: $0f
	ldh a, [rAUD3HIGH]                               ; $6036: $f0 $1e
	ldh [$61], a                                     ; $6038: $e0 $61
	ld a, $50                                        ; $603a: $3e $50
	sub l                                            ; $603c: $95
	ccf                                              ; $603d: $3f
	ld [de], a                                       ; $603e: $12
	db $fd                                           ; $603f: $fd
	ldh a, [rIE]                                     ; $6040: $f0 $ff
	ld a, c                                          ; $6042: $79
	add b                                            ; $6043: $80
	and e                                            ; $6044: $a3
	ld b, b                                          ; $6045: $40
	db $10                                           ; $6046: $10
	cp [hl]                                          ; $6047: $be
	inc a                                            ; $6048: $3c
	ret nz                                           ; $6049: $c0

	ld h, b                                          ; $604a: $60
	add b                                            ; $604b: $80
	add b                                            ; $604c: $80
	jr jr_046_6035                                   ; $604d: $18 $e6

	ld [de], a                                       ; $604f: $12
	db $ec                                           ; $6050: $ec
	ld h, d                                          ; $6051: $62
	rlca                                             ; $6052: $07
	dec b                                            ; $6053: $05
	ld [bc], a                                       ; $6054: $02
	ld [$e907], sp                                   ; $6055: $08 $07 $e9
	ld d, $83                                        ; $6058: $16 $83
	ld a, h                                          ; $605a: $7c

jr_046_605b:
	ld a, l                                          ; $605b: $7d
	nop                                              ; $605c: $00
	ld h, $01                                        ; $605d: $26 $01
	ld b, [hl]                                       ; $605f: $46
	jr nz, jr_046_605b                               ; $6060: $20 $f9

	rrca                                             ; $6062: $0f

jr_046_6063:
	push bc                                          ; $6063: $c5
	rrca                                             ; $6064: $0f
	sbc e                                            ; $6065: $9b
	db $fc                                           ; $6066: $fc
	ld l, $f0                                        ; $6067: $2e $f0
	ld e, $61                                        ; $6069: $1e $61
	add b                                            ; $606b: $80
	ld [hl], d                                       ; $606c: $72
	add l                                            ; $606d: $85
	add l                                            ; $606e: $85
	ccf                                              ; $606f: $3f
	xor c                                            ; $6070: $a9
	rra                                              ; $6071: $1f
	rst SubAFromHL                                          ; $6072: $d7
	ld sp, hl                                        ; $6073: $f9
	dec bc                                           ; $6074: $0b
	cp $55                                           ; $6075: $fe $55
	cp $7a                                           ; $6077: $fe $7a
	pop af                                           ; $6079: $f1
	add e                                            ; $607a: $83
	db $fc                                           ; $607b: $fc
	ld b, h                                          ; $607c: $44
	cp a                                             ; $607d: $bf
	inc [hl]                                         ; $607e: $34
	rst $38                                          ; $607f: $ff
	rrca                                             ; $6080: $0f
	rst $38                                          ; $6081: $ff
	ld a, a                                          ; $6082: $7f
	ei                                               ; $6083: $fb
	push hl                                          ; $6084: $e5
	ei                                               ; $6085: $fb
	ld c, $ff                                        ; $6086: $0e $ff
	ld b, c                                          ; $6088: $41
	rst $38                                          ; $6089: $ff
	adc a                                            ; $608a: $8f
	ld a, a                                          ; $608b: $7f
	or $7a                                           ; $608c: $f6 $7a
	xor $96                                          ; $608e: $ee $96
	ld l, h                                          ; $6090: $6c
	rst $38                                          ; $6091: $ff
	ld [hl+], a                                      ; $6092: $22
	db $fd                                           ; $6093: $fd
	pop bc                                           ; $6094: $c1
	cp $cc                                           ; $6095: $fe $cc
	rst FarCall                                          ; $6097: $f7
	and e                                            ; $6098: $a3
	ld a, d                                          ; $6099: $7a
	xor $88                                          ; $609a: $ee $88
	ld [hl], l                                       ; $609c: $75
	rst $38                                          ; $609d: $ff
	ld b, d                                          ; $609e: $42
	rst $38                                          ; $609f: $ff
	and l                                            ; $60a0: $a5
	di                                               ; $60a1: $f3
	cp a                                             ; $60a2: $bf
	ld a, h                                          ; $60a3: $7c
	ld e, $ff                                        ; $60a4: $1e $ff
	rst SubAFromBC                                          ; $60a6: $e7
	rst $38                                          ; $60a7: $ff
	ld c, a                                          ; $60a8: $4f
	rst $38                                          ; $60a9: $ff
	ld e, [hl]                                       ; $60aa: $5e
	rst $38                                          ; $60ab: $ff
	sub l                                            ; $60ac: $95

jr_046_60ad:
	rst $38                                          ; $60ad: $ff
	jr z, @+$01                                      ; $60ae: $28 $ff

	ld d, [hl]                                       ; $60b0: $56
	db $fc                                           ; $60b1: $fc
	ldh [$7b], a                                     ; $60b2: $e0 $7b
	ld [$8880], a                                    ; $60b4: $ea $80 $88
	rst FarCall                                          ; $60b7: $f7
	ld a, d                                          ; $60b8: $7a
	rst SubAFromBC                                          ; $60b9: $e7
	jr z, @-$07                                      ; $60ba: $28 $f7

	ld c, e                                          ; $60bc: $4b
	or [hl]                                          ; $60bd: $b6
	ld [$d9f7], sp                                   ; $60be: $08 $f7 $d9
	ld h, $3f                                        ; $60c1: $26 $3f
	rst $38                                          ; $60c3: $ff
	ld h, h                                          ; $60c4: $64
	rst $38                                          ; $60c5: $ff
	ld de, $49ff                                     ; $60c6: $11 $ff $49
	rst $38                                          ; $60c9: $ff
	and e                                            ; $60ca: $a3
	rst $38                                          ; $60cb: $ff
	ld d, e                                          ; $60cc: $53
	rst $38                                          ; $60cd: $ff
	ld h, a                                          ; $60ce: $67
	rst $38                                          ; $60cf: $ff
	ld b, a                                          ; $60d0: $47
	rst $38                                          ; $60d1: $ff
	ret z                                            ; $60d2: $c8

	rst $38                                          ; $60d3: $ff
	inc [hl]                                         ; $60d4: $34
	sub a                                            ; $60d5: $97
	ld hl, sp+$0b                                    ; $60d6: $f8 $0b
	ldh a, [rAUD3ENA]                                ; $60d8: $f0 $1a
	pop hl                                           ; $60da: $e1
	ld l, c                                          ; $60db: $69
	add b                                            ; $60dc: $80
	ldh [$be], a                                     ; $60dd: $e0 $be
	ld h, b                                          ; $60df: $60
	ret nc                                           ; $60e0: $d0

	jr z, jr_046_6063                                ; $60e1: $28 $80

	rst SubAFromDE                                          ; $60e3: $df
	ld h, c                                          ; $60e4: $61
	sbc a                                            ; $60e5: $9f
	ld d, b                                          ; $60e6: $50
	adc a                                            ; $60e7: $8f
	jr c, jr_046_60ad                                ; $60e8: $38 $c3

	ld b, e                                          ; $60ea: $43
	ld sp, $1103                                     ; $60eb: $31 $03 $11
	ld [de], a                                       ; $60ee: $12
	add hl, bc                                       ; $60ef: $09
	inc b                                            ; $60f0: $04
	add hl, bc                                       ; $60f1: $09
	add l                                            ; $60f2: $85
	rst $38                                          ; $60f3: $ff
	xor e                                            ; $60f4: $ab
	ld a, c                                          ; $60f5: $79
	ld e, [hl]                                       ; $60f6: $5e
	di                                               ; $60f7: $f3
	ld a, [hl+]                                      ; $60f8: $2a
	push af                                          ; $60f9: $f5
	ld b, h                                          ; $60fa: $44
	ld sp, hl                                        ; $60fb: $f9
	inc sp                                           ; $60fc: $33
	and $c4                                          ; $60fd: $e6 $c4
	ldh [c], a                                       ; $60ff: $e2
	ld c, c                                          ; $6100: $49
	add $9c                                          ; $6101: $c6 $9c
	jp nc, $a5ff                                     ; $6103: $d2 $ff $a5

	ld a, d                                          ; $6106: $7a
	xor b                                            ; $6107: $a8
	adc [hl]                                         ; $6108: $8e
	ld a, [bc]                                       ; $6109: $0a
	db $fc                                           ; $610a: $fc
	or c                                             ; $610b: $b1
	ld e, h                                          ; $610c: $5c
	ld [hl+], a                                      ; $610d: $22
	ld a, h                                          ; $610e: $7c
	xor l                                            ; $610f: $ad
	ld d, b                                          ; $6110: $50
	ld b, d                                          ; $6111: $42
	add hl, sp                                       ; $6112: $39
	adc d                                            ; $6113: $8a
	rst $38                                          ; $6114: $ff
	dec d                                            ; $6115: $15
	ei                                               ; $6116: $fb
	nop                                              ; $6117: $00
	rst $38                                          ; $6118: $ff
	and b                                            ; $6119: $a0
	ld a, b                                          ; $611a: $78
	ld e, l                                          ; $611b: $5d
	sub [hl]                                         ; $611c: $96
	xor a                                            ; $611d: $af
	ld d, b                                          ; $611e: $50
	halt                                             ; $611f: $76
	ld [$10ed], sp                                   ; $6120: $08 $ed $10
	ld a, [hl]                                       ; $6123: $7e
	rst $38                                          ; $6124: $ff
	ld b, [hl]                                       ; $6125: $46
	ld a, e                                          ; $6126: $7b
	and d                                            ; $6127: $a2
	add b                                            ; $6128: $80
	ld [hl], $fb                                     ; $6129: $36 $fb
	ld a, [bc]                                       ; $612b: $0a
	rst FarCall                                          ; $612c: $f7
	db $10                                           ; $612d: $10
	rst SubAFromBC                                          ; $612e: $e7
	add $1b                                          ; $612f: $c6 $1b
	ld c, c                                          ; $6131: $49
	ld d, $41                                        ; $6132: $16 $41
	rst $38                                          ; $6134: $ff
	xor e                                            ; $6135: $ab
	db $fc                                           ; $6136: $fc
	db $f4                                           ; $6137: $f4
	ld a, [$e75a]                                    ; $6138: $fa $5a $e7
	dec b                                            ; $613b: $05
	ld l, a                                          ; $613c: $6f
	ld [$020e], sp                                   ; $613d: $08 $0e $02
	inc e                                            ; $6140: $1c
	jr z, jr_046_618a                                ; $6141: $28 $47

	inc d                                            ; $6143: $14
	rst $38                                          ; $6144: $ff
	adc h                                            ; $6145: $8c

jr_046_6146:
	ld a, $47                                        ; $6146: $3e $47
	ld a, a                                          ; $6148: $7f
	ret nc                                           ; $6149: $d0

	add b                                            ; $614a: $80
	rst $38                                          ; $614b: $ff
	add hl, bc                                       ; $614c: $09
	or $e4                                           ; $614d: $f6 $e4
	rra                                              ; $614f: $1f
	ret c                                            ; $6150: $d8

	ld a, a                                          ; $6151: $7f
	and e                                            ; $6152: $a3
	rst FarCall                                          ; $6153: $f7
	or l                                             ; $6154: $b5
	ld a, d                                          ; $6155: $7a
	ld d, l                                          ; $6156: $55
	ei                                               ; $6157: $fb
	db $ed                                           ; $6158: $ed
	rst $38                                          ; $6159: $ff
	sbc d                                            ; $615a: $9a
	rst $38                                          ; $615b: $ff
	ld h, $f9                                        ; $615c: $26 $f9
	ld d, d                                          ; $615e: $52
	rst $38                                          ; $615f: $ff
	add l                                            ; $6160: $85
	rst $38                                          ; $6161: $ff
	ld b, h                                          ; $6162: $44
	ld hl, sp+$4b                                    ; $6163: $f8 $4b
	rst $38                                          ; $6165: $ff
	db $e4                                           ; $6166: $e4
	rst $38                                          ; $6167: $ff
	dec hl                                           ; $6168: $2b
	sub $80                                          ; $6169: $d6 $80
	rst SubAFromBC                                          ; $616b: $e7
	jr jr_046_6146                                   ; $616c: $18 $d8

	ld h, c                                          ; $616e: $61
	inc de                                           ; $616f: $13
	db $ec                                           ; $6170: $ec
	ld e, [hl]                                       ; $6171: $5e
	rst $38                                          ; $6172: $ff
	sub b                                            ; $6173: $90
	rst $38                                          ; $6174: $ff
	inc d                                            ; $6175: $14
	rst AddAOntoHL                                          ; $6176: $ef
	dec a                                            ; $6177: $3d
	jp nz, $12c9                                     ; $6178: $c2 $c9 $12

	ld h, c                                          ; $617b: $61
	sbc [hl]                                         ; $617c: $9e
	and c                                            ; $617d: $a1
	rst $38                                          ; $617e: $ff
	add b                                            ; $617f: $80
	ld a, a                                          ; $6180: $7f
	ld d, c                                          ; $6181: $51
	cp a                                             ; $6182: $bf
	ld a, [bc]                                       ; $6183: $0a
	rst $38                                          ; $6184: $ff
	adc [hl]                                         ; $6185: $8e
	ldh a, [$3c]                                     ; $6186: $f0 $3c
	ret nz                                           ; $6188: $c0

	ld e, a                                          ; $6189: $5f

jr_046_618a:
	add b                                            ; $618a: $80
	jr nz, @+$01                                     ; $618b: $20 $ff

	nop                                              ; $618d: $00
	jp $213c                                         ; $618e: $c3 $3c $21


	cp $00                                           ; $6191: $fe $00
	rst $38                                          ; $6193: $ff
	ld l, c                                          ; $6194: $69
	sub b                                            ; $6195: $90
	add sp, $00                                      ; $6196: $e8 $00
	ld c, c                                          ; $6198: $49
	or b                                             ; $6199: $b0
	sub c                                            ; $619a: $91
	ld h, b                                          ; $619b: $60
	ld h, $e0                                        ; $619c: $26 $e0
	jp $953c                                         ; $619e: $c3 $3c $95


	ld a, e                                          ; $61a1: $7b
	ldh [$1f], a                                     ; $61a2: $e0 $1f
	ret z                                            ; $61a4: $c8

	scf                                              ; $61a5: $37
	ld b, e                                          ; $61a6: $43
	ccf                                              ; $61a7: $3f
	push bc                                          ; $61a8: $c5
	ccf                                              ; $61a9: $3f
	sub d                                            ; $61aa: $92
	jr nc, jr_046_61bc                               ; $61ab: $30 $0f

	jp hl                                            ; $61ad: $e9


	rra                                              ; $61ae: $1f
	ld e, d                                          ; $61af: $5a
	cp a                                             ; $61b0: $bf
	dec b                                            ; $61b1: $05
	cp e                                             ; $61b2: $bb
	ld b, b                                          ; $61b3: $40
	or a                                             ; $61b4: $b7
	inc bc                                           ; $61b5: $03
	db $fc                                           ; $61b6: $fc
	ld b, [hl]                                       ; $61b7: $46
	ld a, e                                          ; $61b8: $7b
	ld d, b                                          ; $61b9: $50
	sub [hl]                                         ; $61ba: $96
	db $10                                           ; $61bb: $10

jr_046_61bc:
	rst $38                                          ; $61bc: $ff
	ld a, [bc]                                       ; $61bd: $0a
	rst $38                                          ; $61be: $ff
	xor l                                            ; $61bf: $ad
	cp $12                                           ; $61c0: $fe $12
	db $fc                                           ; $61c2: $fc
	daa                                              ; $61c3: $27
	ld a, d                                          ; $61c4: $7a

jr_046_61c5:
	ld a, b                                          ; $61c5: $78
	add b                                            ; $61c6: $80
	ld [hl], h                                       ; $61c7: $74
	rst $38                                          ; $61c8: $ff
	ld a, [hl-]                                      ; $61c9: $3a
	rst $38                                          ; $61ca: $ff
	ld d, a                                          ; $61cb: $57
	ld sp, hl                                        ; $61cc: $f9
	and h                                            ; $61cd: $a4
	ld a, c                                          ; $61ce: $79
	sub $39                                          ; $61cf: $d6 $39
	db $fd                                           ; $61d1: $fd
	ld [$043d], sp                                   ; $61d2: $08 $3d $04
	ld a, d                                          ; $61d5: $7a
	inc b                                            ; $61d6: $04
	ld c, d                                          ; $61d7: $4a
	rst FarCall                                          ; $61d8: $f7
	sub b                                            ; $61d9: $90
	ld h, [hl]                                       ; $61da: $66
	ld c, l                                          ; $61db: $4d
	or d                                             ; $61dc: $b2
	inc d                                            ; $61dd: $14
	pop hl                                           ; $61de: $e1
	add e                                            ; $61df: $83
	ld h, b                                          ; $61e0: $60
	ld [hl-], a                                      ; $61e1: $32
	db $e4                                           ; $61e2: $e4
	ld b, h                                          ; $61e3: $44
	ldh [c], a                                       ; $61e4: $e2
	ld [bc], a                                       ; $61e5: $02
	sub l                                            ; $61e6: $95
	db $e4                                           ; $61e7: $e4
	add hl, hl                                       ; $61e8: $29
	cp $c4                                           ; $61e9: $fe $c4
	ld a, e                                          ; $61eb: $7b
	xor l                                            ; $61ec: $ad
	ldh a, [$c5]                                     ; $61ed: $f0 $c5
	jr @+$32                                         ; $61ef: $18 $30

	cp l                                             ; $61f1: $bd
	ret nz                                           ; $61f2: $c0

	nop                                              ; $61f3: $00
	nop                                              ; $61f4: $00
	inc [hl]                                         ; $61f5: $34
	adc l                                            ; $61f6: $8d
	rst JumpTable                                          ; $61f7: $c7
	ld a, [bc]                                       ; $61f8: $0a
	rst SubAFromBC                                          ; $61f9: $e7
	or l                                             ; $61fa: $b5
	ld b, e                                          ; $61fb: $43
	jr z, jr_046_61c5                                ; $61fc: $28 $c7

	add [hl]                                         ; $61fe: $86
	inc bc                                           ; $61ff: $03
	add hl, bc                                       ; $6200: $09
	rlca                                             ; $6201: $07
	ld b, $03                                        ; $6202: $06 $03
	or b                                             ; $6204: $b0
	rlca                                             ; $6205: $07
	ld l, a                                          ; $6206: $6f
	rst $38                                          ; $6207: $ff
	ld d, a                                          ; $6208: $57
	ld a, d                                          ; $6209: $7a
	ld a, d                                          ; $620a: $7a
	add b                                            ; $620b: $80
	ld b, l                                          ; $620c: $45
	rst $38                                          ; $620d: $ff
	ld l, e                                          ; $620e: $6b
	cp a                                             ; $620f: $bf
	rla                                              ; $6210: $17
	rst $38                                          ; $6211: $ff
	dec hl                                           ; $6212: $2b
	rst $38                                          ; $6213: $ff
	dec d                                            ; $6214: $15
	rst $38                                          ; $6215: $ff
	xor h                                            ; $6216: $ac
	nop                                              ; $6217: $00
	ld e, h                                          ; $6218: $5c
	add b                                            ; $6219: $80
	cp h                                             ; $621a: $bc
	ld b, b                                          ; $621b: $40
	rst $38                                          ; $621c: $ff
	nop                                              ; $621d: $00
	xor d                                            ; $621e: $aa
	ld d, b                                          ; $621f: $50
	jp nc, $2f20                                     ; $6220: $d2 $20 $2f

	ret nc                                           ; $6223: $d0

	ld e, [hl]                                       ; $6224: $5e
	and c                                            ; $6225: $a1
	ld [bc], a                                       ; $6226: $02
	dec b                                            ; $6227: $05
	inc l                                            ; $6228: $2c
	inc bc                                           ; $6229: $03
	ld d, l                                          ; $622a: $55
	add b                                            ; $622b: $80
	ld [bc], a                                       ; $622c: $02
	inc a                                            ; $622d: $3c
	inc bc                                           ; $622e: $03
	call nc, $eb03                                   ; $622f: $d4 $03 $eb
	ld bc, $01f6                                     ; $6232: $01 $f6 $01
	db $fd                                           ; $6235: $fd
	inc bc                                           ; $6236: $03
	xor [hl]                                         ; $6237: $ae
	call nz, $8855                                   ; $6238: $c4 $55 $88
	inc bc                                           ; $623b: $03
	ldh [rLYC], a                                    ; $623c: $e0 $45
	ret nz                                           ; $623e: $c0

	ld a, [$5580]                                    ; $623f: $fa $80 $55
	add b                                            ; $6242: $80
	dec hl                                           ; $6243: $2b
	add b                                            ; $6244: $80
	ld d, a                                          ; $6245: $57
	add b                                            ; $6246: $80
	dec sp                                           ; $6247: $3b
	call nz, $c02d                                   ; $6248: $c4 $2d $c0
	sbc [hl]                                         ; $624b: $9e
	ld a, [$dfbf]                                    ; $624c: $fa $bf $df
	xor a                                            ; $624f: $af
	sub a                                            ; $6250: $97
	ld b, b                                          ; $6251: $40
	call nc, $7f20                                   ; $6252: $d4 $20 $7f
	nop                                              ; $6255: $00
	db $dd                                           ; $6256: $dd
	ld [hl+], a                                      ; $6257: $22
	cp $b9                                           ; $6258: $fe $b9
	inc a                                            ; $625a: $3c
	nop                                              ; $625b: $00
	ld b, b                                          ; $625c: $40
	ret nz                                           ; $625d: $c0

	add b                                            ; $625e: $80
	ld a, h                                          ; $625f: $7c
	rst $38                                          ; $6260: $ff
	pop hl                                           ; $6261: $e1
	adc c                                            ; $6262: $89
	ld c, $0a                                        ; $6263: $0e $0a
	dec b                                            ; $6265: $05
	inc b                                            ; $6266: $04
	inc bc                                           ; $6267: $03
	ld [$0807], sp                                   ; $6268: $08 $07 $08
	rlca                                             ; $626b: $07
	ld [bc], a                                       ; $626c: $02
	dec b                                            ; $626d: $05
	adc l                                            ; $626e: $8d
	ld [bc], a                                       ; $626f: $02
	add $03                                          ; $6270: $c6 $03
	ldh [c], a                                       ; $6272: $e2
	dec e                                            ; $6273: $1d
	dec c                                            ; $6274: $0d

jr_046_6275:
	ldh a, [hDisp1_BGP]                                     ; $6275: $f0 $92
	ld bc, $bc02                                     ; $6277: $01 $02 $bc
	ld bc, $2001                                     ; $627a: $01 $01 $20
	ld e, l                                          ; $627d: $5d
	ld d, h                                          ; $627e: $54
	ld a, [hl]                                       ; $627f: $7e
	xor $95                                          ; $6280: $ee $95
	ei                                               ; $6282: $fb
	adc d                                            ; $6283: $8a
	ld [hl], c                                       ; $6284: $71

jr_046_6285:
	ld d, h                                          ; $6285: $54
	add hl, hl                                       ; $6286: $29
	xor e                                            ; $6287: $ab
	nop                                              ; $6288: $00
	ld b, d                                          ; $6289: $42
	ld bc, $bfa9                                     ; $628a: $01 $a9 $bf
	ld d, c                                          ; $628d: $51
	ld a, [bc]                                       ; $628e: $0a
	ld a, a                                          ; $628f: $7f
	ldh a, [$7a]                                     ; $6290: $f0 $7a
	and $95                                          ; $6292: $e6 $95
	ld b, a                                          ; $6294: $47
	jr c, jr_046_62b5                                ; $6295: $38 $1e

	ld h, c                                          ; $6297: $61
	reti                                             ; $6298: $d9


	jr nz, jr_046_62cc                               ; $6299: $20 $31

	ld b, b                                          ; $629b: $40
	adc e                                            ; $629c: $8b
	jr nz, jr_046_62e6                               ; $629d: $20 $47

	ldh a, [$bf]                                     ; $629f: $f0 $bf
	rst $38                                          ; $62a1: $ff
	rst $38                                          ; $62a2: $ff
	sub [hl]                                         ; $62a3: $96
	add hl, bc                                       ; $62a4: $09
	halt                                             ; $62a5: $76
	push de                                          ; $62a6: $d5
	jr z, jr_046_6315                                ; $62a7: $28 $6c

	add b                                            ; $62a9: $80
	inc sp                                           ; $62aa: $33
	adc b                                            ; $62ab: $88
	ld c, h                                          ; $62ac: $4c
	ld a, e                                          ; $62ad: $7b
	db $fc                                           ; $62ae: $fc
	sub h                                            ; $62af: $94
	ld a, [bc]                                       ; $62b0: $0a
	push af                                          ; $62b1: $f5
	and b                                            ; $62b2: $a0
	ld e, a                                          ; $62b3: $5f
	ld b, c                                          ; $62b4: $41

jr_046_62b5:
	cp [hl]                                          ; $62b5: $be
	xor e                                            ; $62b6: $ab
	ld d, h                                          ; $62b7: $54
	push de                                          ; $62b8: $d5
	ld a, [hl+]                                      ; $62b9: $2a

jr_046_62ba:
	ld [hl], $be                                     ; $62ba: $36 $be
	sub l                                            ; $62bc: $95
	ld a, [hl+]                                      ; $62bd: $2a
	ld d, $95                                        ; $62be: $16 $95
	jp hl                                            ; $62c0: $e9


	add hl, hl                                       ; $62c1: $29
	sub $57                                          ; $62c2: $d6 $57
	xor b                                            ; $62c4: $a8
	ld [$7514], a                                    ; $62c5: $ea $14 $75
	add d                                            ; $62c8: $82
	and [hl]                                         ; $62c9: $a6
	cp [hl]                                          ; $62ca: $be
	ld a, [de]                                       ; $62cb: $1a

jr_046_62cc:
	inc d                                            ; $62cc: $14
	ld h, e                                          ; $62cd: $63
	add b                                            ; $62ce: $80
	sbc h                                            ; $62cf: $9c
	and d                                            ; $62d0: $a2
	ld e, l                                          ; $62d1: $5d
	adc h                                            ; $62d2: $8c
	ld [hl], b                                       ; $62d3: $70
	cp h                                             ; $62d4: $bc
	ld b, b                                          ; $62d5: $40
	ld c, b                                          ; $62d6: $48
	add b                                            ; $62d7: $80
	ret nz                                           ; $62d8: $c0

	nop                                              ; $62d9: $00
	ld l, d                                          ; $62da: $6a
	add b                                            ; $62db: $80
	push de                                          ; $62dc: $d5
	nop                                              ; $62dd: $00
	pop hl                                           ; $62de: $e1
	jr @-$76                                         ; $62df: $18 $88

	ld [hl], b                                       ; $62e1: $70
	ld d, b                                          ; $62e2: $50
	and b                                            ; $62e3: $a0
	sub b                                            ; $62e4: $90
	ld h, b                                          ; $62e5: $60

jr_046_62e6:
	ret nz                                           ; $62e6: $c0

	jr nc, jr_046_62ba                               ; $62e7: $30 $d1

	jr nz, jr_046_6275                               ; $62e9: $20 $8a

	ld [hl], b                                       ; $62eb: $70
	ld d, l                                          ; $62ec: $55
	jr nz, jr_046_6285                               ; $62ed: $20 $96

	inc d                                            ; $62ef: $14
	db $eb                                           ; $62f0: $eb
	dec sp                                           ; $62f1: $3b
	ret nz                                           ; $62f2: $c0

	ld d, e                                          ; $62f3: $53
	nop                                              ; $62f4: $00
	ld [hl+], a                                      ; $62f5: $22
	ld bc, $be5d                                     ; $62f6: $01 $5d $be
	db $eb                                           ; $62f9: $eb
	db $dd                                           ; $62fa: $dd
	rst FarCall                                          ; $62fb: $f7
	adc l                                            ; $62fc: $8d
	ld [$e004], sp                                   ; $62fd: $08 $04 $e0
	ld d, b                                          ; $6300: $50
	add sp, $58                                      ; $6301: $e8 $58
	ldh a, [$b0]                                     ; $6303: $f0 $b0
	ld [hl], b                                       ; $6305: $70
	ld a, [hl+]                                      ; $6306: $2a
	ldh a, [$c5]                                     ; $6307: $f0 $c5
	ld [hl], b                                       ; $6309: $70
	adc a                                            ; $630a: $8f
	ld [hl], b                                       ; $630b: $70
	dec bc                                           ; $630c: $0b
	ldh a, [rP1]                                     ; $630d: $f0 $00
	cp h                                             ; $630f: $bc
	dec b                                            ; $6310: $05
	ld [hl+], a                                      ; $6311: $22
	dec d                                            ; $6312: $15
	adc a                                            ; $6313: $8f
	db $db                                           ; $6314: $db

jr_046_6315:
	add b                                            ; $6315: $80
	inc b                                            ; $6316: $04
	rst $38                                          ; $6317: $ff
	nop                                              ; $6318: $00
	ei                                               ; $6319: $fb
	inc b                                            ; $631a: $04
	ld d, [hl]                                       ; $631b: $56
	inc bc                                           ; $631c: $03
	xor b                                            ; $631d: $a8
	rlca                                             ; $631e: $07
	ld d, h                                          ; $631f: $54
	inc bc                                           ; $6320: $03
	cp c                                             ; $6321: $b9
	rlca                                             ; $6322: $07
	ld [hl], l                                       ; $6323: $75
	inc bc                                           ; $6324: $03
	or l                                             ; $6325: $b5
	inc bc                                           ; $6326: $03
	ld sp, hl                                        ; $6327: $f9
	inc bc                                           ; $6328: $03
	ld [hl], l                                       ; $6329: $75
	add e                                            ; $632a: $83
	nop                                              ; $632b: $00
	rst $38                                          ; $632c: $ff
	inc b                                            ; $632d: $04
	rst $38                                          ; $632e: $ff
	add b                                            ; $632f: $80
	rst $38                                          ; $6330: $ff
	ld [hl], h                                       ; $6331: $74
	adc a                                            ; $6332: $8f
	ret z                                            ; $6333: $c8

	sbc a                                            ; $6334: $9f
	sub h                                            ; $6335: $94
	or a                                             ; $6336: $b7
	adc a                                            ; $6337: $8f
	jp $a39f                                         ; $6338: $c3 $9f $a3


	rst SubAFromDE                                          ; $633b: $df
	rst $38                                          ; $633c: $ff
	ld c, b                                          ; $633d: $48
	cp a                                             ; $633e: $bf
	inc b                                            ; $633f: $04
	ld bc, $00bd                                     ; $6340: $01 $bd $00
	nop                                              ; $6343: $00
	xor d                                            ; $6344: $aa
	ld [bc], a                                       ; $6345: $02
	ld a, c                                          ; $6346: $79
	inc l                                            ; $6347: $2c
	add d                                            ; $6348: $82
	rst FarCall                                          ; $6349: $f7
	inc hl                                           ; $634a: $23
	ld sp, hl                                        ; $634b: $f9
	add e                                            ; $634c: $83
	ld d, l                                          ; $634d: $55
	inc bc                                           ; $634e: $03
	add hl, bc                                       ; $634f: $09
	inc bc                                           ; $6350: $03
	dec b                                            ; $6351: $05
	inc bc                                           ; $6352: $03
	ld hl, $0507                                     ; $6353: $21 $07 $05
	di                                               ; $6356: $f3
	db $eb                                           ; $6357: $eb
	push af                                          ; $6358: $f5
	cp a                                             ; $6359: $bf
	add b                                            ; $635a: $80
	rst SubAFromHL                                          ; $635b: $d7
	add b                                            ; $635c: $80
	xor l                                            ; $635d: $ad
	add b                                            ; $635e: $80
	nop                                              ; $635f: $00
	add b                                            ; $6360: $80
	add e                                            ; $6361: $83
	nop                                              ; $6362: $00
	ret z                                            ; $6363: $c8

	or a                                             ; $6364: $b7
	add l                                            ; $6365: $85
	sbc $ff                                          ; $6366: $de $ff
	sbc [hl]                                         ; $6368: $9e
	or $bd                                           ; $6369: $f6 $bd
	db $eb                                           ; $636b: $eb
	ld d, [hl]                                       ; $636c: $56
	add hl, hl                                       ; $636d: $29
	ld b, h                                          ; $636e: $44
	ld a, [hl]                                       ; $636f: $7e
	db $ed                                           ; $6370: $ed
	sbc $ff                                          ; $6371: $de $ff
	sbc h                                            ; $6373: $9c
	sbc $ff                                          ; $6374: $de $ff
	xor e                                            ; $6376: $ab
	cp l                                             ; $6377: $bd
	ld d, l                                          ; $6378: $55
	xor d                                            ; $6379: $aa
	ld d, h                                          ; $637a: $54
	and b                                            ; $637b: $a0
	add a                                            ; $637c: $87
	rrca                                             ; $637d: $0f
	ld b, [hl]                                       ; $637e: $46
	db $fd                                           ; $637f: $fd
	ld a, l                                          ; $6380: $7d
	cp e                                             ; $6381: $bb
	ccf                                              ; $6382: $3f
	rst $38                                          ; $6383: $ff
	and a                                            ; $6384: $a7
	rrca                                             ; $6385: $0f
	ld d, a                                          ; $6386: $57
	ld [bc], a                                       ; $6387: $02
	and a                                            ; $6388: $a7
	rlca                                             ; $6389: $07
	ld c, e                                          ; $638a: $4b
	rlca                                             ; $638b: $07
	ld h, a                                          ; $638c: $67
	db $d3                                           ; $638d: $d3
	ld c, a                                          ; $638e: $4f
	and a                                            ; $638f: $a7
	rst $38                                          ; $6390: $ff
	adc e                                            ; $6391: $8b
	ccf                                              ; $6392: $3f
	rst SubAFromHL                                          ; $6393: $d7
	ld a, l                                          ; $6394: $7d
	cp [hl]                                          ; $6395: $be
	cp d                                             ; $6396: $ba
	dec d                                            ; $6397: $15
	ld b, b                                          ; $6398: $40
	rst SubAFromDE                                          ; $6399: $df
	cp a                                             ; $639a: $bf
	adc e                                            ; $639b: $8b
	ld [$5da6], a                                    ; $639c: $ea $a6 $5d
	rst $38                                          ; $639f: $ff
	and b                                            ; $63a0: $a0
	push af                                          ; $63a1: $f5
	add b                                            ; $63a2: $80
	ld [hl], h                                       ; $63a3: $74
	ld bc, $01ab                                     ; $63a4: $01 $ab $01
	ld d, l                                          ; $63a7: $55
	nop                                              ; $63a8: $00
	dec hl                                           ; $63a9: $2b
	db $fd                                           ; $63aa: $fd
	ld d, l                                          ; $63ab: $55
	xor b                                            ; $63ac: $a8
	rst $38                                          ; $63ad: $ff
	dec b                                            ; $63ae: $05
	xor d                                            ; $63af: $aa
	cp a                                             ; $63b0: $bf
	inc b                                            ; $63b1: $04
	ld [$1c7f], a                                    ; $63b2: $ea $7f $1c
	ld a, a                                          ; $63b5: $7f
	and b                                            ; $63b6: $a0
	sub a                                            ; $63b7: $97
	add d                                            ; $63b8: $82
	ld d, d                                          ; $63b9: $52
	cp l                                             ; $63ba: $bd
	cp a                                             ; $63bb: $bf
	ret nz                                           ; $63bc: $c0

	push af                                          ; $63bd: $f5
	ret nz                                           ; $63be: $c0

	and b                                            ; $63bf: $a0
	cp l                                             ; $63c0: $bd
	dec d                                            ; $63c1: $15
	cp e                                             ; $63c2: $bb
	push af                                          ; $63c3: $f5
	add hl, sp                                       ; $63c4: $39
	sbc e                                            ; $63c5: $9b
	add [hl]                                         ; $63c6: $86
	xor $10                                          ; $63c7: $ee $10
	di                                               ; $63c9: $f3
	cp l                                             ; $63ca: $bd
	cp a                                             ; $63cb: $bf
	rst $38                                          ; $63cc: $ff
	rst $38                                          ; $63cd: $ff
	rst FarCall                                          ; $63ce: $f7
	sbc e                                            ; $63cf: $9b
	ld [$00ff], sp                                   ; $63d0: $08 $ff $00
	rst SubAFromDE                                          ; $63d3: $df
	ld a, c                                          ; $63d4: $79
	sub b                                            ; $63d5: $90
	ld a, c                                          ; $63d6: $79
	rra                                              ; $63d7: $1f
	or e                                             ; $63d8: $b3
	rst $38                                          ; $63d9: $ff
	rst $38                                          ; $63da: $ff
	rst FarCall                                          ; $63db: $f7
	ld a, [$ffbf]                                    ; $63dc: $fa $bf $ff
	rst $38                                          ; $63df: $ff
	rst $38                                          ; $63e0: $ff
	rst $38                                          ; $63e1: $ff
	rst $38                                          ; $63e2: $ff
	ld a, l                                          ; $63e3: $7d
	cp a                                             ; $63e4: $bf
	rst $38                                          ; $63e5: $ff
	db $fc                                           ; $63e6: $fc
	sbc [hl]                                         ; $63e7: $9e
	inc bc                                           ; $63e8: $03
	ld h, a                                          ; $63e9: $67
	ldh a, [$80]                                     ; $63ea: $f0 $80
	pop bc                                           ; $63ec: $c1
	nop                                              ; $63ed: $00
	xor d                                            ; $63ee: $aa
	ld b, b                                          ; $63ef: $40
	push bc                                          ; $63f0: $c5
	ld a, [hl-]                                      ; $63f1: $3a
	ei                                               ; $63f2: $fb
	cp $fd                                           ; $63f3: $fe $fd
	ld [bc], a                                       ; $63f5: $02
	cp $00                                           ; $63f6: $fe $00
	or $1d                                           ; $63f8: $f6 $1d
	ei                                               ; $63fa: $fb
	rlca                                             ; $63fb: $07
	cp d                                             ; $63fc: $ba
	ld h, b                                          ; $63fd: $60
	ld d, l                                          ; $63fe: $55
	jr nz, jr_046_645b                               ; $63ff: $20 $5a

	and b                                            ; $6401: $a0
	dec c                                            ; $6402: $0d
	ld [hl], d                                       ; $6403: $72
	adc c                                            ; $6404: $89
	halt                                             ; $6405: $76
	inc h                                            ; $6406: $24
	ld a, e                                          ; $6407: $7b
	xor d                                            ; $6408: $aa
	ld d, l                                          ; $6409: $55
	add h                                            ; $640a: $84
	sbc l                                            ; $640b: $9d
	rst $38                                          ; $640c: $ff
	db $fd                                           ; $640d: $fd
	cp a                                             ; $640e: $bf
	ld d, [hl]                                       ; $640f: $56
	and e                                            ; $6410: $a3
	add h                                            ; $6411: $84
	ld bc, $b04d                                     ; $6412: $01 $4d $b0
	ld [hl], d                                       ; $6415: $72
	call c, $38dd                                    ; $6416: $dc $dd $38
	cp a                                             ; $6419: $bf
	ld a, l                                          ; $641a: $7d
	rst $38                                          ; $641b: $ff
	xor d                                            ; $641c: $aa
	xor d                                            ; $641d: $aa
	ld [hl], b                                       ; $641e: $70
	ld hl, $0af0                                     ; $641f: $21 $f0 $0a
	ldh a, [$61]                                     ; $6422: $f0 $61
	jr nc, jr_046_6455                               ; $6424: $30 $2f

	ld [hl], b                                       ; $6426: $70
	ld b, $f9                                        ; $6427: $06 $f9
	and c                                            ; $6429: $a1
	ld a, [hl]                                       ; $642a: $7e
	ld b, d                                          ; $642b: $42
	db $fd                                           ; $642c: $fd
	ld a, c                                          ; $642d: $79
	or [hl]                                          ; $642e: $b6
	cp l                                             ; $642f: $bd
	nop                                              ; $6430: $00
	xor d                                            ; $6431: $aa
	ld d, l                                          ; $6432: $55
	ret nz                                           ; $6433: $c0

	sbc h                                            ; $6434: $9c
	cp a                                             ; $6435: $bf
	ld b, a                                          ; $6436: $47
	ld a, [$0e7b]                                    ; $6437: $fa $7b $0e
	rst SubAFromDE                                          ; $643a: $df
	rlca                                             ; $643b: $07
	add d                                            ; $643c: $82
	inc bc                                           ; $643d: $03
	dec bc                                           ; $643e: $0b
	ld bc, $0347                                     ; $643f: $01 $47 $03
	xor a                                            ; $6442: $af
	rlca                                             ; $6443: $07
	ld b, a                                          ; $6444: $47
	add e                                            ; $6445: $83
	ld c, $e7                                        ; $6446: $0e $e7
	or $47                                           ; $6448: $f6 $47
	rlca                                             ; $644a: $07
	rst $38                                          ; $644b: $ff
	inc bc                                           ; $644c: $03
	rst $38                                          ; $644d: $ff
	and e                                            ; $644e: $a3
	rra                                              ; $644f: $1f
	ld d, a                                          ; $6450: $57
	cp a                                             ; $6451: $bf
	ld h, e                                          ; $6452: $63
	ccf                                              ; $6453: $3f
	or a                                             ; $6454: $b7

jr_046_6455:
	ccf                                              ; $6455: $3f
	ld l, e                                          ; $6456: $6b
	ccf                                              ; $6457: $3f
	sub l                                            ; $6458: $95
	ld a, a                                          ; $6459: $7f
	db $dd                                           ; $645a: $dd

jr_046_645b:
	rst $38                                          ; $645b: $ff
	sbc l                                            ; $645c: $9d
	ccf                                              ; $645d: $3f
	rst FarCall                                          ; $645e: $f7
	sbc $ff                                          ; $645f: $de $ff
	add a                                            ; $6461: $87
	cp $ff                                           ; $6462: $fe $ff
	ld [bc], a                                       ; $6464: $02
	rst $38                                          ; $6465: $ff
	ld e, a                                          ; $6466: $5f
	ld d, l                                          ; $6467: $55
	nop                                              ; $6468: $00
	rst FarCall                                          ; $6469: $f7
	di                                               ; $646a: $f3
	ei                                               ; $646b: $fb
	pop hl                                           ; $646c: $e1
	ccf                                              ; $646d: $3f
	di                                               ; $646e: $f3
	rst $38                                          ; $646f: $ff
	jp hl                                            ; $6470: $e9


	rst $38                                          ; $6471: $ff
	rra                                              ; $6472: $1f
	ei                                               ; $6473: $fb
	xor a                                            ; $6474: $af
	rst $38                                          ; $6475: $ff
	push de                                          ; $6476: $d5
	ld d, l                                          ; $6477: $55
	nop                                              ; $6478: $00
	add b                                            ; $6479: $80
	ld a, c                                          ; $647a: $79
	ld [bc], a                                       ; $647b: $02
	adc [hl]                                         ; $647c: $8e
	xor [hl]                                         ; $647d: $ae
	pop af                                           ; $647e: $f1
	ld a, a                                          ; $647f: $7f
	add b                                            ; $6480: $80
	db $eb                                           ; $6481: $eb
	sub h                                            ; $6482: $94
	ld [hl], l                                       ; $6483: $75
	adc a                                            ; $6484: $8f
	ld a, [bc]                                       ; $6485: $0a
	ldh a, [$80]                                     ; $6486: $f0 $80
	nop                                              ; $6488: $00
	ld l, a                                          ; $6489: $6f
	rst $38                                          ; $648a: $ff
	rst SubAFromHL                                          ; $648b: $d7
	ld hl, sp-$01                                    ; $648c: $f8 $ff
	cp [hl]                                          ; $648e: $be
	or b                                             ; $648f: $b0
	ld e, l                                          ; $6490: $5d
	rst $38                                          ; $6491: $ff
	sbc l                                            ; $6492: $9d
	ret nz                                           ; $6493: $c0

	ld bc, $eabf                                     ; $6494: $01 $bf $ea
	nop                                              ; $6497: $00
	sbc e                                            ; $6498: $9b
	rst $38                                          ; $6499: $ff
	cpl                                              ; $649a: $2f
	ret nc                                           ; $649b: $d0

	ld b, b                                          ; $649c: $40
	cp e                                             ; $649d: $bb
	dec b                                            ; $649e: $05
	ei                                               ; $649f: $fb
	rst $38                                          ; $64a0: $ff
	cp a                                             ; $64a1: $bf
	ld a, a                                          ; $64a2: $7f
	ld a, b                                          ; $64a3: $78
	sbc l                                            ; $64a4: $9d
	add a                                            ; $64a5: $87
	rst $38                                          ; $64a6: $ff
	cp d                                             ; $64a7: $ba
	nop                                              ; $64a8: $00
	ld d, a                                          ; $64a9: $57
	rst $38                                          ; $64aa: $ff
	rst $38                                          ; $64ab: $ff
	rst $38                                          ; $64ac: $ff
	rst $38                                          ; $64ad: $ff
	ld a, a                                          ; $64ae: $7f
	sbc e                                            ; $64af: $9b
	add b                                            ; $64b0: $80
	or [hl]                                          ; $64b1: $b6
	ld b, b                                          ; $64b2: $40
	xor e                                            ; $64b3: $ab
	cp a                                             ; $64b4: $bf
	rst $38                                          ; $64b5: $ff
	db $fd                                           ; $64b6: $fd
	sbc e                                            ; $64b7: $9b
	ld [bc], a                                       ; $64b8: $02
	db $eb                                           ; $64b9: $eb
	inc d                                            ; $64ba: $14
	db $fd                                           ; $64bb: $fd
	cp h                                             ; $64bc: $bc
	di                                               ; $64bd: $f3
	rst $38                                          ; $64be: $ff
	rst $38                                          ; $64bf: $ff
	rst $38                                          ; $64c0: $ff
	ei                                               ; $64c1: $fb
	ld a, d                                          ; $64c2: $7a
	inc h                                            ; $64c3: $24
	ld a, a                                          ; $64c4: $7f
	cp $9d                                           ; $64c5: $fe $9d
	cp $01                                           ; $64c7: $fe $01
	ld h, a                                          ; $64c9: $67
	jp c, Jump_046_5f98                              ; $64ca: $da $98 $5f

	and b                                            ; $64cd: $a0
	cp $01                                           ; $64ce: $fe $01
	db $fd                                           ; $64d0: $fd
	ld [bc], a                                       ; $64d1: $02
	cp a                                             ; $64d2: $bf
	ld a, b                                          ; $64d3: $78
	ld hl, sp+$73                                    ; $64d4: $f8 $73
	call z, $ffbf                                    ; $64d6: $cc $bf $ff
	rst SubAFromDE                                          ; $64d9: $df
	ld a, d                                          ; $64da: $7a
	call z, $fe5f                                    ; $64db: $cc $5f $fe
	ld a, [hl]                                       ; $64de: $7e
	jp z, $d45f                                      ; $64df: $ca $5f $d4

	ld c, a                                          ; $64e2: $4f
	cp $5e                                           ; $64e3: $fe $5e
	or h                                             ; $64e5: $b4
	sbc [hl]                                         ; $64e6: $9e
	xor a                                            ; $64e7: $af
	cp [hl]                                          ; $64e8: $be
	rst $38                                          ; $64e9: $ff
	rst $38                                          ; $64ea: $ff
	db $fd                                           ; $64eb: $fd
	ld a, a                                          ; $64ec: $7f
	ld a, [hl-]                                      ; $64ed: $3a
	cp d                                             ; $64ee: $ba
	rst $38                                          ; $64ef: $ff
	rst $38                                          ; $64f0: $ff
	rst $38                                          ; $64f1: $ff
	rst $38                                          ; $64f2: $ff
	rst $38                                          ; $64f3: $ff
	rst $38                                          ; $64f4: $ff
	ld a, a                                          ; $64f5: $7f
	ld a, a                                          ; $64f6: $7f
	ccf                                              ; $64f7: $3f
	cp a                                             ; $64f8: $bf
	rst $38                                          ; $64f9: $ff
	and d                                            ; $64fa: $a2
	sbc [hl]                                         ; $64fb: $9e
	dec c                                            ; $64fc: $0d
	ld h, a                                          ; $64fd: $67
	ldh a, [hDisp1_BGP]                                     ; $64fe: $f0 $92
	jp hl                                            ; $6500: $e9


	ld b, $5a                                        ; $6501: $06 $5a
	dec b                                            ; $6503: $05
	call c, $0a23                                    ; $6504: $dc $23 $0a
	push af                                          ; $6507: $f5
	ret nz                                           ; $6508: $c0

	ccf                                              ; $6509: $3f
	push de                                          ; $650a: $d5
	ld a, [hl+]                                      ; $650b: $2a
	ld e, a                                          ; $650c: $5f
	cp a                                             ; $650d: $bf
	rst $38                                          ; $650e: $ff
	and b                                            ; $650f: $a0
	sbc c                                            ; $6510: $99
	ld a, a                                          ; $6511: $7f
	ld l, h                                          ; $6512: $6c
	di                                               ; $6513: $f3
	cpl                                              ; $6514: $2f
	ldh a, [$80]                                     ; $6515: $f0 $80
	ld a, e                                          ; $6517: $7b
	adc l                                            ; $6518: $8d
	ld l, a                                          ; $6519: $6f
	sub $96                                          ; $651a: $d6 $96
	cp h                                             ; $651c: $bc
	di                                               ; $651d: $f3
	di                                               ; $651e: $f3
	rst $38                                          ; $651f: $ff
	rst SubAFromDE                                          ; $6520: $df
	ccf                                              ; $6521: $3f
	ld a, a                                          ; $6522: $7f
	add e                                            ; $6523: $83
	rst $38                                          ; $6524: $ff
	ld a, e                                          ; $6525: $7b
	ld a, [de]                                       ; $6526: $1a
	ld [hl], a                                       ; $6527: $77
	cp $80                                           ; $6528: $fe $80
	add a                                            ; $652a: $87
	ld h, b                                          ; $652b: $60
	dec d                                            ; $652c: $15
	ldh [c], a                                       ; $652d: $e2
	ld [bc], a                                       ; $652e: $02
	push hl                                          ; $652f: $e5
	cp l                                             ; $6530: $bd
	db $e3                                           ; $6531: $e3
	or d                                             ; $6532: $b2
	ld c, l                                          ; $6533: $4d
	call nc, $c00b                                   ; $6534: $d4 $0b $c0
	rra                                              ; $6537: $1f
	add hl, sp                                       ; $6538: $39
	add a                                            ; $6539: $87
	cp e                                             ; $653a: $bb
	ld a, a                                          ; $653b: $7f
	ld [hl], a                                       ; $653c: $77
	ld a, a                                          ; $653d: $7f
	dec sp                                           ; $653e: $3b
	rst $38                                          ; $653f: $ff
	ld a, c                                          ; $6540: $79
	rst $38                                          ; $6541: $ff
	xor e                                            ; $6542: $ab
	rst $38                                          ; $6543: $ff
	pop de                                           ; $6544: $d1
	rst $38                                          ; $6545: $ff
	adc e                                            ; $6546: $8b
	rst $38                                          ; $6547: $ff
	add hl, de                                       ; $6548: $19
	ld a, e                                          ; $6549: $7b
	inc de                                           ; $654a: $13
	ld a, l                                          ; $654b: $7d
	ldh [$9e], a                                     ; $654c: $e0 $9e
	db $fc                                           ; $654e: $fc
	cp a                                             ; $654f: $bf
	ld a, [hl]                                       ; $6550: $7e
	cp $7d                                           ; $6551: $fe $7d
	ld [$aadf], a                                    ; $6553: $ea $df $aa
	rst SubAFromDE                                          ; $6556: $df
	ld d, l                                          ; $6557: $55
	ld a, d                                          ; $6558: $7a
	add e                                            ; $6559: $83
	sbc [hl]                                         ; $655a: $9e
	adc c                                            ; $655b: $89
	cp [hl]                                          ; $655c: $be
	di                                               ; $655d: $f3
	xor l                                            ; $655e: $ad
	ld a, [$0197]                                    ; $655f: $fa $97 $01
	ld a, l                                          ; $6562: $7d
	add d                                            ; $6563: $82
	adc d                                            ; $6564: $8a
	ld [hl], l                                       ; $6565: $75
	ld d, l                                          ; $6566: $55
	xor d                                            ; $6567: $aa
	rra                                              ; $6568: $1f
	cp a                                             ; $6569: $bf
	ld l, e                                          ; $656a: $6b
	ld a, [$0594]                                    ; $656b: $fa $94 $05
	ld e, l                                          ; $656e: $5d
	ld [hl+], a                                      ; $656f: $22
	xor c                                            ; $6570: $a9
	ld d, h                                          ; $6571: $54
	ld e, c                                          ; $6572: $59
	and b                                            ; $6573: $a0
	xor [hl]                                         ; $6574: $ae
	ld d, c                                          ; $6575: $51
	ld d, c                                          ; $6576: $51
	xor [hl]                                         ; $6577: $ae
	ld [hl], h                                       ; $6578: $74
	add $9e                                          ; $6579: $c6 $9e
	xor d                                            ; $657b: $aa
	ld [hl], e                                       ; $657c: $73
	call nc, $f87f                                   ; $657d: $d4 $7f $f8
	sbc c                                            ; $6580: $99
	ld a, [hl+]                                      ; $6581: $2a
	push de                                          ; $6582: $d5
	ld d, l                                          ; $6583: $55
	xor d                                            ; $6584: $aa
	ld [$7715], a                                    ; $6585: $ea $15 $77
	db $fc                                           ; $6588: $fc
	ld a, e                                          ; $6589: $7b
	db $ec                                           ; $658a: $ec
	ld a, e                                          ; $658b: $7b
	call nz, $a67c                                   ; $658c: $c4 $7c $a6
	ld l, a                                          ; $658f: $6f
	cp h                                             ; $6590: $bc
	ld h, a                                          ; $6591: $67
	db $fc                                           ; $6592: $fc
	ld a, a                                          ; $6593: $7f
	call nc, Call_046_7c9d                           ; $6594: $d4 $9d $7c
	add e                                            ; $6597: $83
	ld h, a                                          ; $6598: $67
	db $f4                                           ; $6599: $f4
	sbc d                                            ; $659a: $9a
	sbc [hl]                                         ; $659b: $9e
	ld h, c                                          ; $659c: $61
	ld [hl], c                                       ; $659d: $71
	add b                                            ; $659e: $80
	adc d                                            ; $659f: $8a
	cp [hl]                                          ; $65a0: $be
	db $fd                                           ; $65a1: $fd
	ld [$9e5f], a                                    ; $65a2: $ea $5f $9e
	and b                                            ; $65a5: $a0
	ld [hl], a                                       ; $65a6: $77
	ldh a, [$9c]                                     ; $65a7: $f0 $9c
	dec bc                                           ; $65a9: $0b
	db $f4                                           ; $65aa: $f4
	ld h, c                                          ; $65ab: $61
	cp [hl]                                          ; $65ac: $be
	add c                                            ; $65ad: $81
	ld a, e                                          ; $65ae: $7b
	cp [hl]                                          ; $65af: $be
	sub h                                            ; $65b0: $94
	ld bc, $a05f                                     ; $65b1: $01 $5f $a0
	xor a                                            ; $65b4: $af
	ld d, b                                          ; $65b5: $50
	ld d, l                                          ; $65b6: $55
	xor d                                            ; $65b7: $aa
	ld a, [$f505]                                    ; $65b8: $fa $05 $f5
	ld a, [bc]                                       ; $65bb: $0a
	ld [hl], a                                       ; $65bc: $77
	xor h                                            ; $65bd: $ac
	ld a, a                                          ; $65be: $7f
	db $f4                                           ; $65bf: $f4
	sbc [hl]                                         ; $65c0: $9e
	ld e, b                                          ; $65c1: $58
	cp [hl]                                          ; $65c2: $be
	add b                                            ; $65c3: $80
	rst $38                                          ; $65c4: $ff
	ld [$159e], a                                    ; $65c5: $ea $9e $15
	ld [hl], a                                       ; $65c8: $77
	ldh a, [$7f]                                     ; $65c9: $f0 $7f
	add sp, $7f                                      ; $65cb: $e8 $7f
	or $9e                                           ; $65cd: $f6 $9e
	dec bc                                           ; $65cf: $0b
	cp a                                             ; $65d0: $bf
	ccf                                              ; $65d1: $3f
	push af                                          ; $65d2: $f5
	ld [hl], e                                       ; $65d3: $73
	db $f4                                           ; $65d4: $f4
	ld l, a                                          ; $65d5: $6f
	ldh a, [$6e]                                     ; $65d6: $f0 $6e
	add h                                            ; $65d8: $84
	sbc l                                            ; $65d9: $9d
	cp e                                             ; $65da: $bb
	ld b, h                                          ; $65db: $44
	ld h, a                                          ; $65dc: $67
	ldh a, [$6f]                                     ; $65dd: $f0 $6f
	cp $7f                                           ; $65df: $fe $7f
	ld h, h                                          ; $65e1: $64
	sbc e                                            ; $65e2: $9b
	ld e, [hl]                                       ; $65e3: $5e
	and b                                            ; $65e4: $a0
	cp a                                             ; $65e5: $bf
	ld b, b                                          ; $65e6: $40
	ld h, a                                          ; $65e7: $67
	ldh a, [$9a]                                     ; $65e8: $f0 $9a
	ld [hl], l                                       ; $65ea: $75
	adc d                                            ; $65eb: $8a
	xor e                                            ; $65ec: $ab
	ld d, h                                          ; $65ed: $54
	xor l                                            ; $65ee: $ad
	cp a                                             ; $65ef: $bf
	ld b, b                                          ; $65f0: $40
	ld l, e                                          ; $65f1: $6b
	ld [hl], d                                       ; $65f2: $72
	db $ec                                           ; $65f3: $ec
	ld a, a                                          ; $65f4: $7f
	cp $9d                                           ; $65f5: $fe $9d
	ld e, [hl]                                       ; $65f7: $5e
	and c                                            ; $65f8: $a1
	ld a, d                                          ; $65f9: $7a
	ld e, h                                          ; $65fa: $5c
	ld a, e                                          ; $65fb: $7b
	xor h                                            ; $65fc: $ac
	ld a, a                                          ; $65fd: $7f
	sub h                                            ; $65fe: $94
	ld a, a                                          ; $65ff: $7f
	ld hl, sp+$7f                                    ; $6600: $f8 $7f
	ld [hl+], a                                      ; $6602: $22
	ld a, a                                          ; $6603: $7f
	sbc d                                            ; $6604: $9a
	ld a, a                                          ; $6605: $7f
	sub $7e                                          ; $6606: $d6 $7e

jr_046_6608:
	ld [hl-], a                                      ; $6608: $32
	sbc l                                            ; $6609: $9d
	rst SubAFromHL                                          ; $660a: $d7
	jr z, jr_046_6684                                ; $660b: $28 $77

	ret nz                                           ; $660d: $c0

	sbc [hl]                                         ; $660e: $9e
	or l                                             ; $660f: $b5
	ld a, e                                          ; $6610: $7b
	call nc, $e998                                   ; $6611: $d4 $98 $e9
	ccf                                              ; $6614: $3f
	ldh a, [rIF]                                     ; $6615: $f0 $0f
	cp $03                                           ; $6617: $fe $03
	and a                                            ; $6619: $a7
	cp l                                             ; $661a: $bd
	rst $38                                          ; $661b: $ff
	or $ef                                           ; $661c: $f6 $ef
	ld [$f780], sp                                   ; $661e: $08 $80 $f7
	ld b, $f8                                        ; $6621: $06 $f8
	ld [$a2fe], sp                                   ; $6623: $08 $fe $a2
	ld a, l                                          ; $6626: $7d
	jr z, jr_046_6608                                ; $6627: $28 $df

	db $d3                                           ; $6629: $d3
	ld a, $71                                        ; $662a: $3e $71
	inc c                                            ; $662c: $0c
	call nc, $c40f                                   ; $662d: $d4 $0f $c4
	ccf                                              ; $6630: $3f
	ld d, d                                          ; $6631: $52
	dec l                                            ; $6632: $2d
	push hl                                          ; $6633: $e5
	jr jr_046_6662                                   ; $6634: $18 $2c

	rst $38                                          ; $6636: $ff
	ld a, [$514d]                                    ; $6637: $fa $4d $51
	rst SubAFromDE                                          ; $663a: $df
	ret c                                            ; $663b: $d8

	cp a                                             ; $663c: $bf
	cp b                                             ; $663d: $b8
	ld a, a                                          ; $663e: $7f
	ld a, [hl]                                       ; $663f: $7e
	call z, $398f                                    ; $6640: $cc $8f $39
	rst $38                                          ; $6643: $ff
	ld d, b                                          ; $6644: $50
	rst $38                                          ; $6645: $ff
	xor b                                            ; $6646: $a8
	rst SubAFromHL                                          ; $6647: $d7
	sub d                                            ; $6648: $92
	rst $38                                          ; $6649: $ff
	ld d, $fb                                        ; $664a: $16 $fb
	xor e                                            ; $664c: $ab
	db $dd                                           ; $664d: $dd
	xor d                                            ; $664e: $aa
	ld d, l                                          ; $664f: $55
	dec d                                            ; $6650: $15
	ld [$6473], a                                    ; $6651: $ea $73 $64
	sbc l                                            ; $6654: $9d
	ld d, c                                          ; $6655: $51
	inc b                                            ; $6656: $04
	ld [hl], l                                       ; $6657: $75
	cp l                                             ; $6658: $bd
	ld a, l                                          ; $6659: $7d
	cpl                                              ; $665a: $2f
	ld h, e                                          ; $665b: $63
	nop                                              ; $665c: $00
	cp [hl]                                          ; $665d: $be
	rst $38                                          ; $665e: $ff
	rst $38                                          ; $665f: $ff
	rst $38                                          ; $6660: $ff
	ld e, a                                          ; $6661: $5f

jr_046_6662:
	ldh a, [$9d]                                     ; $6662: $f0 $9d
	inc d                                            ; $6664: $14
	db $eb                                           ; $6665: $eb
	cp a                                             ; $6666: $bf
	rst $38                                          ; $6667: $ff
	rst $38                                          ; $6668: $ff
	ld a, [hl]                                       ; $6669: $7e
	call c, Call_046_7c7f                            ; $666a: $dc $7f $7c
	ld a, a                                          ; $666d: $7f
	add d                                            ; $666e: $82
	sbc l                                            ; $666f: $9d
	ld d, b                                          ; $6670: $50
	xor a                                            ; $6671: $af
	ld [hl], a                                       ; $6672: $77
	ret z                                            ; $6673: $c8

	sub l                                            ; $6674: $95
	ld [bc], a                                       ; $6675: $02
	db $fd                                           ; $6676: $fd
	nop                                              ; $6677: $00
	rst $38                                          ; $6678: $ff
	ld a, [bc]                                       ; $6679: $0a
	push af                                          ; $667a: $f5
	db $dd                                           ; $667b: $dd
	ld [hl+], a                                      ; $667c: $22
	and d                                            ; $667d: $a2
	ld e, l                                          ; $667e: $5d
	ld e, a                                          ; $667f: $5f
	call z, $829d                                    ; $6680: $cc $9d $82
	ld a, l                                          ; $6683: $7d

jr_046_6684:
	ld [hl], a                                       ; $6684: $77
	ld hl, sp-$63                                    ; $6685: $f8 $9d
	ld b, l                                          ; $6687: $45
	cp d                                             ; $6688: $ba
	ld [hl], a                                       ; $6689: $77
	ldh a, [$99]                                     ; $668a: $f0 $99
	ld [hl+], a                                      ; $668c: $22
	db $dd                                           ; $668d: $dd
	nop                                              ; $668e: $00
	rst $38                                          ; $668f: $ff
	rrca                                             ; $6690: $0f
	ldh a, [rPCM34]                                  ; $6691: $f0 $77
	call nc, $e05f                                   ; $6693: $d4 $5f $e0
	ld a, a                                          ; $6696: $7f
	inc a                                            ; $6697: $3c
	ld l, e                                          ; $6698: $6b
	sub b                                            ; $6699: $90
	ld [hl], e                                       ; $669a: $73
	db $fc                                           ; $669b: $fc
	sbc l                                            ; $669c: $9d
	ld de, $56ee                                     ; $669d: $11 $ee $56
	sub b                                            ; $66a0: $90
	ccf                                              ; $66a1: $3f
	ldh a, [$6f]                                     ; $66a2: $f0 $6f
	db $fc                                           ; $66a4: $fc
	sbc e                                            ; $66a5: $9b
	cp h                                             ; $66a6: $bc
	ld b, b                                          ; $66a7: $40
	ld e, a                                          ; $66a8: $5f
	and b                                            ; $66a9: $a0
	ld e, a                                          ; $66aa: $5f
	sbc h                                            ; $66ab: $9c
	ld a, l                                          ; $66ac: $7d
	sbc [hl]                                         ; $66ad: $9e
	sbc [hl]                                         ; $66ae: $9e
	rrca                                             ; $66af: $0f
	ld a, d                                          ; $66b0: $7a
	or b                                             ; $66b1: $b0
	sbc l                                            ; $66b2: $9d
	dec hl                                           ; $66b3: $2b
	call nc, Call_046_5852                           ; $66b4: $d4 $52 $58
	sbc b                                            ; $66b7: $98
	add b                                            ; $66b8: $80
	xor b                                            ; $66b9: $a8
	nop                                              ; $66ba: $00
	ret c                                            ; $66bb: $d8

	jr nz, @-$50                                     ; $66bc: $20 $ae

	ld d, c                                          ; $66be: $51
	ld [hl], a                                       ; $66bf: $77
	ldh a, [$7f]                                     ; $66c0: $f0 $7f
	call nc, $807e                                   ; $66c2: $d4 $7e $80
	ld a, [hl]                                       ; $66c5: $7e
	adc h                                            ; $66c6: $8c
	ld a, h                                          ; $66c7: $7c
	xor $ff                                          ; $66c8: $ee $ff
	ld a, [hl]                                       ; $66ca: $7e
	sub $98                                          ; $66cb: $d6 $98
	ld e, l                                          ; $66cd: $5d
	and d                                            ; $66ce: $a2
	ld l, e                                          ; $66cf: $6b
	add b                                            ; $66d0: $80
	add l                                            ; $66d1: $85
	ld [bc], a                                       ; $66d2: $02
	ld e, [hl]                                       ; $66d3: $5e
	ld a, d                                          ; $66d4: $7a
	db $10                                           ; $66d5: $10
	ld a, [hl]                                       ; $66d6: $7e
	ld h, b                                          ; $66d7: $60
	sbc b                                            ; $66d8: $98
	dec c                                            ; $66d9: $0d
	ld [bc], a                                       ; $66da: $02

jr_046_66db:
	ld [$5715], a                                    ; $66db: $ea $15 $57
	xor b                                            ; $66de: $a8
	cp d                                             ; $66df: $ba
	ld a, e                                          ; $66e0: $7b
	or h                                             ; $66e1: $b4
	ld a, a                                          ; $66e2: $7f
	call c, $e87f                                    ; $66e3: $dc $7f $e8
	ld l, a                                          ; $66e6: $6f
	call nz, Call_046_5b9c                           ; $66e7: $c4 $9c $5b
	jr nz, jr_046_66f2                               ; $66ea: $20 $06

	ld a, c                                          ; $66ec: $79
	ld [$c07f], sp                                   ; $66ed: $08 $7f $c0
	ld a, b                                          ; $66f0: $78
	ld c, d                                          ; $66f1: $4a

jr_046_66f2:
	ld [hl], e                                       ; $66f2: $73
	ldh a, [$7d]                                     ; $66f3: $f0 $7d
	ld a, c                                          ; $66f5: $79
	ld a, a                                          ; $66f6: $7f
	inc h                                            ; $66f7: $24
	ld [hl], l                                       ; $66f8: $75
	ld a, b                                          ; $66f9: $78
	ld a, a                                          ; $66fa: $7f
	inc l                                            ; $66fb: $2c
	ld a, a                                          ; $66fc: $7f
	db $ec                                           ; $66fd: $ec

jr_046_66fe:
	ld [hl], a                                       ; $66fe: $77
	xor b                                            ; $66ff: $a8
	sbc b                                            ; $6700: $98
	ld l, d                                          ; $6701: $6a
	add b                                            ; $6702: $80
	push bc                                          ; $6703: $c5
	ld a, [hl-]                                      ; $6704: $3a
	ld a, [hl+]                                      ; $6705: $2a
	push de                                          ; $6706: $d5
	rst SubAFromDE                                          ; $6707: $df
	cp e                                             ; $6708: $bb
	rst $38                                          ; $6709: $ff
	rst $38                                          ; $670a: $ff
	jp nc, Jump_046_7fef                             ; $670b: $d2 $ef $7f

	ld h, d                                          ; $670e: $62
	sbc h                                            ; $670f: $9c
	sbc l                                            ; $6710: $9d
	nop                                              ; $6711: $00
	rst $38                                          ; $6712: $ff

jr_046_6713:
	ld a, b                                          ; $6713: $78
	add $bc                                          ; $6714: $c6 $bc
	db $fd                                           ; $6716: $fd
	ld a, a                                          ; $6717: $7f
	rst $38                                          ; $6718: $ff
	rst $38                                          ; $6719: $ff
	and b                                            ; $671a: $a0
	sbc d                                            ; $671b: $9a
	ld e, a                                          ; $671c: $5f
	ld e, h                                          ; $671d: $5c
	and e                                            ; $671e: $a3
	rst AddAOntoHL                                          ; $671f: $ef
	db $10                                           ; $6720: $10
	ld a, d                                          ; $6721: $7a
	ld [$04be], sp                                   ; $6722: $08 $be $04
	xor b                                            ; $6725: $a8
	ld [bc], a                                       ; $6726: $02
	ld a, l                                          ; $6727: $7d
	ld [hl], l                                       ; $6728: $75
	ld a, e                                          ; $6729: $7b
	db $eb                                           ; $672a: $eb
	sbc b                                            ; $672b: $98
	pop bc                                           ; $672c: $c1
	ld a, $fd                                        ; $672d: $3e $fd
	nop                                              ; $672f: $00
	ret nc                                           ; $6730: $d0

	jr nz, jr_046_66db                               ; $6731: $20 $a8

	cp a                                             ; $6733: $bf
	ld bc, $7fba                                     ; $6734: $01 $ba $7f
	ld a, c                                          ; $6737: $79
	sub a                                            ; $6738: $97
	rst $38                                          ; $6739: $ff
	jr z, jr_046_6713                                ; $673a: $28 $d7

	ld d, h                                          ; $673c: $54
	xor e                                            ; $673d: $ab
	ld l, d                                          ; $673e: $6a
	dec d                                            ; $673f: $15
	dec d                                            ; $6740: $15
	cp a                                             ; $6741: $bf
	inc bc                                           ; $6742: $03
	ld [$079c], sp                                   ; $6743: $08 $9c $07
	ld hl, sp+$07                                    ; $6746: $f8 $07
	cp [hl]                                          ; $6748: $be
	rst $38                                          ; $6749: $ff
	rst $38                                          ; $674a: $ff
	rst $38                                          ; $674b: $ff
	ld a, a                                          ; $674c: $7f

jr_046_674d:
	jp z, Jump_046_569b                              ; $674d: $ca $9b $56

	adc c                                            ; $6750: $89
	ld b, $f9                                        ; $6751: $06 $f9
	or [hl]                                          ; $6753: $b6
	rst $38                                          ; $6754: $ff
	rst $38                                          ; $6755: $ff
	rst $38                                          ; $6756: $ff
	rst $38                                          ; $6757: $ff
	rst $38                                          ; $6758: $ff
	rst $38                                          ; $6759: $ff
	rst $38                                          ; $675a: $ff
	rst $38                                          ; $675b: $ff
	rst $38                                          ; $675c: $ff
	rst $38                                          ; $675d: $ff
	rst $38                                          ; $675e: $ff
	ld a, a                                          ; $675f: $7f
	db $db                                           ; $6760: $db
	ld a, [hl]                                       ; $6761: $7e
	ld b, b                                          ; $6762: $40
	sbc l                                            ; $6763: $9d
	ld bc, $bdfe                                     ; $6764: $01 $fe $bd
	rst $38                                          ; $6767: $ff
	rst $38                                          ; $6768: $ff
	rst $38                                          ; $6769: $ff
	rst $38                                          ; $676a: $ff
	sub e                                            ; $676b: $93
	jr nz, jr_046_674d                               ; $676c: $20 $df

	ret c                                            ; $676e: $d8

	rlca                                             ; $676f: $07
	ld b, l                                          ; $6770: $45
	jr c, jr_046_66fe                                ; $6771: $38 $8b

	ld [hl], h                                       ; $6773: $74
	nop                                              ; $6774: $00
	rst $38                                          ; $6775: $ff
	add hl, bc                                       ; $6776: $09
	or $bf                                           ; $6777: $f6 $bf
	rst $38                                          ; $6779: $ff
	rst $38                                          ; $677a: $ff
	ld a, [hl]                                       ; $677b: $7e
	adc h                                            ; $677c: $8c
	ld a, h                                          ; $677d: $7c
	ld [hl-], a                                      ; $677e: $32
	ld a, a                                          ; $677f: $7f
	cp e                                             ; $6780: $bb
	ld a, a                                          ; $6781: $7f
	db $fc                                           ; $6782: $fc
	halt                                             ; $6783: $76
	ld h, [hl]                                       ; $6784: $66
	adc l                                            ; $6785: $8d
	dec b                                            ; $6786: $05
	ld a, [$ff00]                                    ; $6787: $fa $00 $ff
	ld l, [hl]                                       ; $678a: $6e
	sub c                                            ; $678b: $91
	ld a, [hl]                                       ; $678c: $7e
	add c                                            ; $678d: $81
	ret nz                                           ; $678e: $c0

	ccf                                              ; $678f: $3f
	pop af                                           ; $6790: $f1
	ld c, $2e                                        ; $6791: $0e $2e
	ret nc                                           ; $6793: $d0

	sbc b                                            ; $6794: $98
	ld h, b                                          ; $6795: $60
	rlca                                             ; $6796: $07
	ld hl, sp+$6e                                    ; $6797: $f8 $6e
	ld d, b                                          ; $6799: $50
	ld a, a                                          ; $679a: $7f
	and d                                            ; $679b: $a2
	sbc c                                            ; $679c: $99
	rra                                              ; $679d: $1f
	ldh [rIE], a                                     ; $679e: $e0 $ff
	nop                                              ; $67a0: $00
	ld e, b                                          ; $67a1: $58
	rlca                                             ; $67a2: $07
	ld [hl], h                                       ; $67a3: $74
	xor d                                            ; $67a4: $aa
	halt                                             ; $67a5: $76
	ld e, b                                          ; $67a6: $58
	ld a, a                                          ; $67a7: $7f
	ld a, $7f                                        ; $67a8: $3e $7f
	ld h, b                                          ; $67aa: $60
	ld a, h                                          ; $67ab: $7c
	db $f4                                           ; $67ac: $f4
	ld a, a                                          ; $67ad: $7f
	db $f4                                           ; $67ae: $f4
	ld a, a                                          ; $67af: $7f
	ret c                                            ; $67b0: $d8

	ld l, a                                          ; $67b1: $6f
	ldh [$7e], a                                     ; $67b2: $e0 $7e
	or h                                             ; $67b4: $b4
	sbc b                                            ; $67b5: $98
	ld b, b                                          ; $67b6: $40
	cp a                                             ; $67b7: $bf
	inc d                                            ; $67b8: $14
	db $eb                                           ; $67b9: $eb
	dec a                                            ; $67ba: $3d
	ret nz                                           ; $67bb: $c0

	inc bc                                           ; $67bc: $03
	ld a, e                                          ; $67bd: $7b
	ld d, d                                          ; $67be: $52
	ld [hl], a                                       ; $67bf: $77
	ldh a, [$7f]                                     ; $67c0: $f0 $7f
	ret c                                            ; $67c2: $d8

	ld a, a                                          ; $67c3: $7f
	db $fc                                           ; $67c4: $fc
	sub a                                            ; $67c5: $97
	ret nz                                           ; $67c6: $c0

	nop                                              ; $67c7: $00
	sbc d                                            ; $67c8: $9a

jr_046_67c9:
	ld h, h                                          ; $67c9: $64
	nop                                              ; $67ca: $00
	rst $38                                          ; $67cb: $ff
	inc bc                                           ; $67cc: $03
	db $fc                                           ; $67cd: $fc
	ld [hl], a                                       ; $67ce: $77
	ldh a, [$7e]                                     ; $67cf: $f0 $7e
	inc l                                            ; $67d1: $2c
	sub l                                            ; $67d2: $95
	or a                                             ; $67d3: $b7
	ld [$050a], sp                                   ; $67d4: $08 $0a $05
	ld e, h                                          ; $67d7: $5c
	inc bc                                           ; $67d8: $03
	nop                                              ; $67d9: $00
	rst $38                                          ; $67da: $ff
	ld sp, hl                                        ; $67db: $f9
	ld b, $6e                                        ; $67dc: $06 $6e
	add sp, -$64                                     ; $67de: $e8 $9c
	ld b, c                                          ; $67e0: $41
	cp [hl]                                          ; $67e1: $be
	cp [hl]                                          ; $67e2: $be
	ld a, d                                          ; $67e3: $7a
	add sp, $7f                                      ; $67e4: $e8 $7f
	ld l, d                                          ; $67e6: $6a
	sbc b                                            ; $67e7: $98
	ld e, d                                          ; $67e8: $5a
	and b                                            ; $67e9: $a0
	xor e                                            ; $67ea: $ab
	ld d, h                                          ; $67eb: $54
	ld e, h                                          ; $67ec: $5c
	and b                                            ; $67ed: $a0
	xor d                                            ; $67ee: $aa
	ld a, e                                          ; $67ef: $7b
	db $fc                                           ; $67f0: $fc
	rst $38                                          ; $67f1: $ff
	sbc [hl]                                         ; $67f2: $9e
	inc c                                            ; $67f3: $0c
	cp b                                             ; $67f4: $b8
	rra                                              ; $67f5: $1f
	rlca                                             ; $67f6: $07
	add b                                            ; $67f7: $80
	adc d                                            ; $67f8: $8a
	rra                                              ; $67f9: $1f
	ld bc, $4301                                     ; $67fa: $01 $01 $43
	or l                                             ; $67fd: $b5
	sub a                                            ; $67fe: $97
	ld b, b                                          ; $67ff: $40
	reti                                             ; $6800: $d9


	ld b, $5e                                        ; $6801: $06 $5e
	ld bc, $030c                                     ; $6803: $01 $0c $03
	ld d, l                                          ; $6806: $55
	ld a, c                                          ; $6807: $79
	ld c, b                                          ; $6808: $48
	sbc l                                            ; $6809: $9d
	xor b                                            ; $680a: $a8
	ld d, a                                          ; $680b: $57
	ld e, [hl]                                       ; $680c: $5e
	ld h, b                                          ; $680d: $60
	sub l                                            ; $680e: $95
	db $e3                                           ; $680f: $e3
	inc e                                            ; $6810: $1c
	ret c                                            ; $6811: $d8

	jr nz, jr_046_67c9                               ; $6812: $20 $b5

	ld b, b                                          ; $6814: $40
	rla                                              ; $6815: $17
	add sp, -$2e                                     ; $6816: $e8 $d2
	dec c                                            ; $6818: $0d
	ld e, [hl]                                       ; $6819: $5e
	inc a                                            ; $681a: $3c
	sbc l                                            ; $681b: $9d
	ld e, d                                          ; $681c: $5a
	dec b                                            ; $681d: $05
	halt                                             ; $681e: $76
	and [hl]                                         ; $681f: $a6
	ld a, b                                          ; $6820: $78
	ld d, b                                          ; $6821: $50
	sbc [hl]                                         ; $6822: $9e
	rst $38                                          ; $6823: $ff
	ld [hl], a                                       ; $6824: $77
	ld e, d                                          ; $6825: $5a
	cp h                                             ; $6826: $bc
	rst $38                                          ; $6827: $ff
	rst $38                                          ; $6828: $ff
	rst $38                                          ; $6829: $ff
	rst $38                                          ; $682a: $ff
	rst $38                                          ; $682b: $ff
	sbc e                                            ; $682c: $9b
	inc d                                            ; $682d: $14
	db $e3                                           ; $682e: $e3
	ld [$b6f7], sp                                   ; $682f: $08 $f7 $b6
	rst $38                                          ; $6832: $ff
	rst $38                                          ; $6833: $ff
	rst $38                                          ; $6834: $ff
	rst $38                                          ; $6835: $ff
	rst $38                                          ; $6836: $ff
	rst $38                                          ; $6837: $ff
	rst $38                                          ; $6838: $ff
	rst $38                                          ; $6839: $ff
	rst $38                                          ; $683a: $ff
	rst $38                                          ; $683b: $ff
	rst $38                                          ; $683c: $ff
	sbc e                                            ; $683d: $9b
	dec e                                            ; $683e: $1d
	ldh [$3a], a                                     ; $683f: $e0 $3a
	ret nz                                           ; $6841: $c0

	ld e, [hl]                                       ; $6842: $5e
	add sp, $7f                                      ; $6843: $e8 $7f
	cp $9b                                           ; $6845: $fe $9b
	ld [hl], b                                       ; $6847: $70
	rrca                                             ; $6848: $0f
	jr nz, jr_046_686a                               ; $6849: $20 $1f

	ld [hl], l                                       ; $684b: $75
	sbc [hl]                                         ; $684c: $9e
	inc bc                                           ; $684d: $03
	cp $03                                           ; $684e: $fe $03
	cp $03                                           ; $6850: $fe $03
	cp $1b                                           ; $6852: $fe $1b
	cp $76                                           ; $6854: $fe $76
	cp h                                             ; $6856: $bc
	cp e                                             ; $6857: $bb
	rst $38                                          ; $6858: $ff
	rst $38                                          ; $6859: $ff
	rst $38                                          ; $685a: $ff
	rst $38                                          ; $685b: $ff
	rst $38                                          ; $685c: $ff
	rst $38                                          ; $685d: $ff
	sbc e                                            ; $685e: $9b
	db $f4                                           ; $685f: $f4
	nop                                              ; $6860: $00
	ccf                                              ; $6861: $3f
	ret nz                                           ; $6862: $c0

	cp d                                             ; $6863: $ba
	rst $38                                          ; $6864: $ff
	rst $38                                          ; $6865: $ff
	rst $38                                          ; $6866: $ff
	rst $38                                          ; $6867: $ff
	rst $38                                          ; $6868: $ff
	rst $38                                          ; $6869: $ff

jr_046_686a:
	nop                                              ; $686a: $00
	sbc l                                            ; $686b: $9d
	ld a, [hl]                                       ; $686c: $7e
	nop                                              ; $686d: $00
	ld d, a                                          ; $686e: $57
	call c, $0699                                    ; $686f: $dc $99 $06
	nop                                              ; $6872: $00
	db $10                                           ; $6873: $10
	rrca                                             ; $6874: $0f
	ldh [$1f], a                                     ; $6875: $e0 $1f
	cp l                                             ; $6877: $bd
	rst $38                                          ; $6878: $ff
	rst $38                                          ; $6879: $ff
	rst $38                                          ; $687a: $ff
	rst $38                                          ; $687b: $ff
	sbc c                                            ; $687c: $99
	ld d, [hl]                                       ; $687d: $56
	add b                                            ; $687e: $80
	cp b                                             ; $687f: $b8
	rlca                                             ; $6880: $07
	ld [bc], a                                       ; $6881: $02
	db $fd                                           ; $6882: $fd
	ld l, h                                          ; $6883: $6c
	add [hl]                                         ; $6884: $86
	ld a, [hl]                                       ; $6885: $7e
	ld b, d                                          ; $6886: $42
	sbc [hl]                                         ; $6887: $9e
	call nc, $aabf                                   ; $6888: $d4 $bf $aa
	and d                                            ; $688b: $a2
	sbc [hl]                                         ; $688c: $9e
	ld e, l                                          ; $688d: $5d
	ld [hl], h                                       ; $688e: $74
	sbc b                                            ; $688f: $98
	sub c                                            ; $6890: $91
	ld c, $f1                                        ; $6891: $0e $f1
	rrca                                             ; $6893: $0f
	ldh a, [rP1]                                     ; $6894: $f0 $00
	rst $38                                          ; $6896: $ff
	ld e, d                                          ; $6897: $5a
	dec b                                            ; $6898: $05
	and h                                            ; $6899: $a4
	dec de                                           ; $689a: $1b
	xor d                                            ; $689b: $aa
	ld d, l                                          ; $689c: $55
	db $10                                           ; $689d: $10
	rst AddAOntoHL                                          ; $689e: $ef
	cp e                                             ; $689f: $bb
	rst $38                                          ; $68a0: $ff
	rst $38                                          ; $68a1: $ff
	rst $38                                          ; $68a2: $ff
	rst $38                                          ; $68a3: $ff
	rst $38                                          ; $68a4: $ff
	rst $38                                          ; $68a5: $ff
	halt                                             ; $68a6: $76
	jr c, @+$80                                      ; $68a7: $38 $7e

	ld [$9a7c], sp                                   ; $68a9: $08 $7c $9a
	sub a                                            ; $68ac: $97
	ret z                                            ; $68ad: $c8

	scf                                              ; $68ae: $37
	inc d                                            ; $68af: $14
	db $eb                                           ; $68b0: $eb
	ld bc, $20fe                                     ; $68b1: $01 $fe $20
	rst SubAFromDE                                          ; $68b4: $df
	ld b, b                                          ; $68b5: $40
	nop                                              ; $68b6: $00
	db $dd                                           ; $68b7: $dd
	ld b, h                                          ; $68b8: $44
	sbc h                                            ; $68b9: $9c
	ld b, [hl]                                       ; $68ba: $46
	ld h, [hl]                                       ; $68bb: $66
	ld h, h                                          ; $68bc: $64
	reti                                             ; $68bd: $d9


	ld b, h                                          ; $68be: $44
	sbc [hl]                                         ; $68bf: $9e
	ld h, [hl]                                       ; $68c0: $66
	sbc $44                                          ; $68c1: $de $44
	sbc [hl]                                         ; $68c3: $9e
	ld d, l                                          ; $68c4: $55
	reti                                             ; $68c5: $d9


	ld b, h                                          ; $68c6: $44
	sbc [hl]                                         ; $68c7: $9e
	ld d, h                                          ; $68c8: $54
	db $dd                                           ; $68c9: $dd
	ld d, l                                          ; $68ca: $55
	db $dd                                           ; $68cb: $dd
	ld b, h                                          ; $68cc: $44
	sbc $55                                          ; $68cd: $de $55
	sbc e                                            ; $68cf: $9b
	dec [hl]                                         ; $68d0: $35
	ld d, e                                          ; $68d1: $53
	dec [hl]                                         ; $68d2: $35
	dec [hl]                                         ; $68d3: $35
	sbc $55                                          ; $68d4: $de $55
	rst SubAFromDE                                          ; $68d6: $df
	ld d, e                                          ; $68d7: $53
	sbc [hl]                                         ; $68d8: $9e
	ld d, l                                          ; $68d9: $55
	db $dd                                           ; $68da: $dd
	ld [hl], a                                       ; $68db: $77
	sub a                                            ; $68dc: $97
	ld [hl], e                                       ; $68dd: $73
	inc sp                                           ; $68de: $33
	scf                                              ; $68df: $37
	ld d, a                                          ; $68e0: $57
	ld d, a                                          ; $68e1: $57
	ld [hl], l                                       ; $68e2: $75
	ld [hl], a                                       ; $68e3: $77
	ld d, a                                          ; $68e4: $57
	call c, $9c33                                    ; $68e5: $dc $33 $9c
	dec [hl]                                         ; $68e8: $35
	ld d, a                                          ; $68e9: $57
	ld d, l                                          ; $68ea: $55
	reti                                             ; $68eb: $d9


	inc sp                                           ; $68ec: $33
	rst SubAFromDE                                          ; $68ed: $df
	ld d, l                                          ; $68ee: $55
	ret c                                            ; $68ef: $d8

	inc sp                                           ; $68f0: $33
	ld e, a                                          ; $68f1: $5f
	or $d6                                           ; $68f2: $f6 $d6
	inc sp                                           ; $68f4: $33
	db $ed                                           ; $68f5: $ed
	adc d                                            ; $68f6: $8a
	add b                                            ; $68f7: $80
	inc b                                            ; $68f8: $04
	nop                                              ; $68f9: $00
	ldh [$58], a                                     ; $68fa: $e0 $58
	ret c                                            ; $68fc: $d8

	db $fd                                           ; $68fd: $fd
	ld d, d                                          ; $68fe: $52
	nop                                              ; $68ff: $00
	ld [bc], a                                       ; $6900: $02
	jr nz, jr_046_690c                               ; $6901: $20 $09

	add d                                            ; $6903: $82
	nop                                              ; $6904: $00
	nop                                              ; $6905: $00
	ld hl, $55a2                                     ; $6906: $21 $a2 $55
	cpl                                              ; $6909: $2f
	adc e                                            ; $690a: $8b
	adc e                                            ; $690b: $8b

jr_046_690c:
	or a                                             ; $690c: $b7
	rst FarCall                                          ; $690d: $f7
	db $eb                                           ; $690e: $eb
	cp c                                             ; $690f: $b9
	nop                                              ; $6910: $00
	inc bc                                           ; $6911: $03
	ld b, a                                          ; $6912: $47
	ld a, a                                          ; $6913: $7f
	ld a, a                                          ; $6914: $7f
	inc bc                                           ; $6915: $03
	inc bc                                           ; $6916: $03
	add b                                            ; $6917: $80
	add $f0                                          ; $6918: $c6 $f0
	ld a, b                                          ; $691a: $78
	ldh a, [$c7]                                     ; $691b: $f0 $c7
	ldh a, [hDisp1_LCDC]                                     ; $691d: $f0 $8f
	push bc                                          ; $691f: $c5
	jr nz, jr_046_6982                               ; $6920: $20 $60

	ldh a, [$f8]                                     ; $6922: $f0 $f8

jr_046_6924:
	add c                                            ; $6924: $81
	jp nz, $c9cf                                     ; $6925: $c2 $cf $c9

	ret nz                                           ; $6928: $c0

	ld a, [de]                                       ; $6929: $1a
	rst SubAFromHL                                          ; $692a: $d7
	add h                                            ; $692b: $84
	sub $e4                                          ; $692c: $d6 $e4
	ld hl, sp-$11                                    ; $692e: $f8 $ef
	ld c, d                                          ; $6930: $4a
	inc b                                            ; $6931: $04
	ld [$a70e], sp                                   ; $6932: $08 $0e $a7
	rst $38                                          ; $6935: $ff
	rst $38                                          ; $6936: $ff
	add b                                            ; $6937: $80
	cp $1c                                           ; $6938: $fe $1c

jr_046_693a:
	xor l                                            ; $693a: $ad
	or [hl]                                          ; $693b: $b6
	ld c, c                                          ; $693c: $49
	ld [hl], d                                       ; $693d: $72
	dec l                                            ; $693e: $2d
	nop                                              ; $693f: $00
	adc $70                                          ; $6940: $ce $70
	nop                                              ; $6942: $00
	ld c, b                                          ; $6943: $48
	ldh a, [$f9]                                     ; $6944: $f0 $f9
	jp Jump_046_71c7                                 ; $6946: $c3 $c7 $71


	ld a, a                                          ; $6949: $7f
	jr jr_046_6924                                   ; $694a: $18 $d8

	ld h, b                                          ; $694c: $60
	ld b, [hl]                                       ; $694d: $46
	ld c, [hl]                                       ; $694e: $4e
	ldh [hDisp0_WY], a                                     ; $694f: $e0 $88
	jr jr_046_693a                                   ; $6951: $18 $e7

	rlca                                             ; $6953: $07
	rra                                              ; $6954: $1f
	sbc c                                            ; $6955: $99
	ldh [$df], a                                     ; $6956: $e0 $df
	ldh a, [$80]                                     ; $6958: $f0 $80
	ldh [rSB], a                                     ; $695a: $e0 $01
	inc bc                                           ; $695c: $03
	ld bc, $ae30                                     ; $695d: $01 $30 $ae
	db $10                                           ; $6960: $10
	jr nz, jr_046_6965                               ; $6961: $20 $02

	rst $38                                          ; $6963: $ff

jr_046_6964:
	db $fd                                           ; $6964: $fd

jr_046_6965:
	ld hl, sp-$40                                    ; $6965: $f8 $c0
	ld bc, $1f0f                                     ; $6967: $01 $0f $1f
	dec e                                            ; $696a: $1d
	ld [hl], b                                       ; $696b: $70
	ld b, [hl]                                       ; $696c: $46
	ldh a, [$fc]                                     ; $696d: $f0 $fc
	ld [hl], c                                       ; $696f: $71
	ld a, $40                                        ; $6970: $3e $40
	ld b, $8f                                        ; $6972: $06 $8f
	cp a                                             ; $6974: $bf
	rst AddAOntoHL                                          ; $6975: $ef
	ld b, e                                          ; $6976: $43
	ldh [c], a                                       ; $6977: $e2
	rst $38                                          ; $6978: $ff
	add l                                            ; $6979: $85
	cp a                                             ; $697a: $bf
	ld sp, hl                                        ; $697b: $f9
	ld h, c                                          ; $697c: $61
	ld bc, $0983                                     ; $697d: $01 $83 $09
	rrca                                             ; $6980: $0f
	ld [de], a                                       ; $6981: $12

jr_046_6982:
	db $ed                                           ; $6982: $ed
	ld a, $fe                                        ; $6983: $3e $fe
	cp $7c                                           ; $6985: $fe $7c
	cp $70                                           ; $6987: $fe $70
	ldh [$f3], a                                     ; $6989: $e0 $f3
	rst $38                                          ; $698b: $ff
	inc d                                            ; $698c: $14

jr_046_698d:
	xor d                                            ; $698d: $aa
	ld e, c                                          ; $698e: $59
	and b                                            ; $698f: $a0
	ld e, b                                          ; $6990: $58
	ld l, h                                          ; $6991: $6c
	ei                                               ; $6992: $fb
	ld [hl], e                                       ; $6993: $73
	db $fc                                           ; $6994: $fc
	add b                                            ; $6995: $80
	inc e                                            ; $6996: $1c
	db $fc                                           ; $6997: $fc
	add b                                            ; $6998: $80
	jr z, @-$66                                      ; $6999: $28 $98

	ld de, $4100                                     ; $699b: $11 $00 $41
	xor d                                            ; $699e: $aa
	ld [$000e], sp                                   ; $699f: $08 $0e $00
	nop                                              ; $69a2: $00
	ld [rRAMG], sp                                   ; $69a3: $08 $00 $00
	ld bc, $0007                                     ; $69a6: $01 $07 $00
	ld a, b                                          ; $69a9: $78
	ld b, d                                          ; $69aa: $42
	ld e, a                                          ; $69ab: $5f
	daa                                              ; $69ac: $27
	ld b, d                                          ; $69ad: $42
	ld c, h                                          ; $69ae: $4c
	ld bc, $0790                                     ; $69af: $01 $90 $07
	inc a                                            ; $69b2: $3c
	jr nz, jr_046_69cd                               ; $69b3: $20 $18

	add b                                            ; $69b5: $80
	dec l                                            ; $69b6: $2d
	or e                                             ; $69b7: $b3
	rst $38                                          ; $69b8: $ff
	ld a, a                                          ; $69b9: $7f
	xor d                                            ; $69ba: $aa
	ld b, h                                          ; $69bb: $44
	adc c                                            ; $69bc: $89
	inc e                                            ; $69bd: $1c
	ld a, [hl]                                       ; $69be: $7e
	rra                                              ; $69bf: $1f
	ld d, [hl]                                       ; $69c0: $56
	ld c, e                                          ; $69c1: $4b
	ld b, h                                          ; $69c2: $44
	jr c, jr_046_6a35                                ; $69c3: $38 $70

	db $e3                                           ; $69c5: $e3
	add c                                            ; $69c6: $81
	add b                                            ; $69c7: $80
	and b                                            ; $69c8: $a0
	and b                                            ; $69c9: $a0
	jr nz, jr_046_6964                               ; $69ca: $20 $98

	dec b                                            ; $69cc: $05

jr_046_69cd:
	ld a, [bc]                                       ; $69cd: $0a
	inc b                                            ; $69ce: $04
	ld [hl-], a                                      ; $69cf: $32
	ld c, d                                          ; $69d0: $4a
	add c                                            ; $69d1: $81
	rra                                              ; $69d2: $1f
	ld h, a                                          ; $69d3: $67
	ldh [hDisp1_SCY], a                                     ; $69d4: $e0 $90
	ret nz                                           ; $69d6: $c0

	ld sp, hl                                        ; $69d7: $f9
	pop bc                                           ; $69d8: $c1
	add h                                            ; $69d9: $84
	nop                                              ; $69da: $00
	ld b, b                                          ; $69db: $40
	ld h, b                                          ; $69dc: $60
	and b                                            ; $69dd: $a0
	nop                                              ; $69de: $00
	add b                                            ; $69df: $80
	and d                                            ; $69e0: $a2
	ld de, $8081                                     ; $69e1: $11 $81 $80
	add b                                            ; $69e4: $80
	cp $80                                           ; $69e5: $fe $80
	inc b                                            ; $69e7: $04
	inc c                                            ; $69e8: $0c
	ld b, b                                          ; $69e9: $40
	ld d, b                                          ; $69ea: $50
	add l                                            ; $69eb: $85
	jr nz, jr_046_69ee                               ; $69ec: $20 $00

jr_046_69ee:
	ld d, b                                          ; $69ee: $50
	add [hl]                                         ; $69ef: $86
	jr @+$03                                         ; $69f0: $18 $01

	jr nz, jr_046_6a6c                               ; $69f2: $20 $78

	add hl, de                                       ; $69f4: $19
	inc c                                            ; $69f5: $0c
	ld l, $78                                        ; $69f6: $2e $78
	ldh a, [$f8]                                     ; $69f8: $f0 $f8
	ld b, b                                          ; $69fa: $40
	cp b                                             ; $69fb: $b8
	ld e, c                                          ; $69fc: $59
	ld b, d                                          ; $69fd: $42
	jr nc, jr_046_6a2a                               ; $69fe: $30 $2a

	inc sp                                           ; $6a00: $33
	ld c, [hl]                                       ; $6a01: $4e
	jr nz, jr_046_6a04                               ; $6a02: $20 $00

jr_046_6a04:
	add b                                            ; $6a04: $80
	ld sp, $0193                                     ; $6a05: $31 $93 $01
	ld de, $011f                                     ; $6a08: $11 $1f $01
	jr nz, jr_046_698d                               ; $6a0b: $20 $80

	ld b, b                                          ; $6a0d: $40
	ld h, b                                          ; $6a0e: $60
	ld b, b                                          ; $6a0f: $40
	ld b, b                                          ; $6a10: $40
	set 6, e                                         ; $6a11: $cb $f3
	cp $de                                           ; $6a13: $fe $de
	add b                                            ; $6a15: $80
	sub a                                            ; $6a16: $97
	or b                                             ; $6a17: $b0
	rst $38                                          ; $6a18: $ff
	nop                                              ; $6a19: $00
	db $10                                           ; $6a1a: $10
	cp b                                             ; $6a1b: $b8
	ld c, d                                          ; $6a1c: $4a
	inc de                                           ; $6a1d: $13
	rlca                                             ; $6a1e: $07
	db $fc                                           ; $6a1f: $fc
	ld a, a                                          ; $6a20: $7f
	ld b, c                                          ; $6a21: $41
	sbc h                                            ; $6a22: $9c
	ld bc, $c000                                     ; $6a23: $01 $00 $c0
	db $fc                                           ; $6a26: $fc
	ld [hl], a                                       ; $6a27: $77
	or h                                             ; $6a28: $b4
	ld l, e                                          ; $6a29: $6b

jr_046_6a2a:
	ld hl, sp-$80                                    ; $6a2a: $f8 $80
	rlca                                             ; $6a2c: $07
	rst GetHLinHL                                          ; $6a2d: $cf
	rst AddAOntoHL                                          ; $6a2e: $ef
	and a                                            ; $6a2f: $a7
	cp a                                             ; $6a30: $bf
	inc e                                            ; $6a31: $1c
	ld a, b                                          ; $6a32: $78
	ld hl, sp+$57                                    ; $6a33: $f8 $57

jr_046_6a35:
	rst $38                                          ; $6a35: $ff
	nop                                              ; $6a36: $00
	ld d, b                                          ; $6a37: $50
	nop                                              ; $6a38: $00
	jr nz, jr_046_6a3b                               ; $6a39: $20 $00

jr_046_6a3b:
	nop                                              ; $6a3b: $00
	db $fc                                           ; $6a3c: $fc
	db $fd                                           ; $6a3d: $fd
	db $e3                                           ; $6a3e: $e3
	ld h, e                                          ; $6a3f: $63
	pop de                                           ; $6a40: $d1
	ld bc, $1c02                                     ; $6a41: $01 $02 $1c
	cp $f8                                           ; $6a44: $fe $f8
	pop hl                                           ; $6a46: $e1
	jp $3021                                         ; $6a47: $c3 $21 $30


	ld [bc], a                                       ; $6a4a: $02
	add [hl]                                         ; $6a4b: $86
	ld [$0824], sp                                   ; $6a4c: $08 $24 $08
	sbc b                                            ; $6a4f: $98
	db $fd                                           ; $6a50: $fd
	db $f4                                           ; $6a51: $f4
	cp [hl]                                          ; $6a52: $be
	ccf                                              ; $6a53: $3f
	rra                                              ; $6a54: $1f
	nop                                              ; $6a55: $00
	ld b, $f1                                        ; $6a56: $06 $f1
	ldh a, [c]                                       ; $6a58: $f2
	cp $7f                                           ; $6a59: $fe $7f
	rra                                              ; $6a5b: $1f
	ld a, $18                                        ; $6a5c: $3e $18
	inc bc                                           ; $6a5e: $03
	add e                                            ; $6a5f: $83
	ld [bc], a                                       ; $6a60: $02
	db $10                                           ; $6a61: $10
	add [hl]                                         ; $6a62: $86
	add l                                            ; $6a63: $85
	jp hl                                            ; $6a64: $e9


	db $dd                                           ; $6a65: $dd
	ld bc, $83ff                                     ; $6a66: $01 $ff $83
	inc bc                                           ; $6a69: $03
	pop bc                                           ; $6a6a: $c1
	ld c, [hl]                                       ; $6a6b: $4e

jr_046_6a6c:
	or d                                             ; $6a6c: $b2
	add e                                            ; $6a6d: $83
	ld h, e                                          ; $6a6e: $63
	ld b, b                                          ; $6a6f: $40
	inc e                                            ; $6a70: $1c
	rst $38                                          ; $6a71: $ff
	rst $38                                          ; $6a72: $ff
	pop af                                           ; $6a73: $f1
	push bc                                          ; $6a74: $c5
	ret nz                                           ; $6a75: $c0

	ret nz                                           ; $6a76: $c0

	nop                                              ; $6a77: $00
	cp $bf                                           ; $6a78: $fe $bf
	rst $38                                          ; $6a7a: $ff
	call c, $2021                                    ; $6a7b: $dc $21 $20
	ret nz                                           ; $6a7e: $c0

	nop                                              ; $6a7f: $00
	sbc [hl]                                         ; $6a80: $9e
	rst $38                                          ; $6a81: $ff
	rst $38                                          ; $6a82: $ff
	ldh [$c0], a                                     ; $6a83: $e0 $c0
	ld a, e                                          ; $6a85: $7b
	and e                                            ; $6a86: $a3
	add c                                            ; $6a87: $81
	ld h, b                                          ; $6a88: $60
	rst $38                                          ; $6a89: $ff
	rst $38                                          ; $6a8a: $ff
	stop                                             ; $6a8b: $10 $00
	call z, $3920                                    ; $6a8d: $cc $20 $39
	ld e, a                                          ; $6a90: $5f
	rst $38                                          ; $6a91: $ff
	rst $38                                          ; $6a92: $ff
	rrca                                             ; $6a93: $0f
	rst $38                                          ; $6a94: $ff
	inc sp                                           ; $6a95: $33
	rra                                              ; $6a96: $1f
	nop                                              ; $6a97: $00
	ld bc, rIE                                     ; $6a98: $01 $ff $ff
	ld b, $0e                                        ; $6a9b: $06 $0e
	dec bc                                           ; $6a9d: $0b
	rrca                                             ; $6a9e: $0f
	ccf                                              ; $6a9f: $3f
	db $fc                                           ; $6aa0: $fc
	ldh a, [$c0]                                     ; $6aa1: $f0 $c0
	ld sp, hl                                        ; $6aa3: $f9
	pop af                                           ; $6aa4: $f1
	rst FarCall                                          ; $6aa5: $f7
	call c, $97ff                                    ; $6aa6: $dc $ff $97
	ld a, a                                          ; $6aa9: $7f
	rst $38                                          ; $6aaa: $ff
	cp $e0                                           ; $6aab: $fe $e0
	nop                                              ; $6aad: $00
	inc e                                            ; $6aae: $1c
	ld c, $0c                                        ; $6aaf: $0e $0c
	db $dd                                           ; $6ab1: $dd
	rst $38                                          ; $6ab2: $ff
	sub h                                            ; $6ab3: $94
	db $d3                                           ; $6ab4: $d3
	db $e3                                           ; $6ab5: $e3
	ret nc                                           ; $6ab6: $d0

	pop hl                                           ; $6ab7: $e1
	ret nz                                           ; $6ab8: $c0

	rst $38                                          ; $6ab9: $ff
	ld a, c                                          ; $6aba: $79
	rlca                                             ; $6abb: $07
	rrca                                             ; $6abc: $0f
	rra                                              ; $6abd: $1f
	dec bc                                           ; $6abe: $0b
	ld a, e                                          ; $6abf: $7b
	sub $95                                          ; $6ac0: $d6 $95
	rst $38                                          ; $6ac2: $ff
	ld hl, sp-$10                                    ; $6ac3: $f8 $f0
	ldh [$64], a                                     ; $6ac5: $e0 $64
	ldh a, [c]                                       ; $6ac7: $f2
	ld hl, $f8ff                                     ; $6ac8: $21 $ff $f8
	ldh [$7b], a                                     ; $6acb: $e0 $7b
	or [hl]                                          ; $6acd: $b6
	add b                                            ; $6ace: $80
	ldh [$cf], a                                     ; $6acf: $e0 $cf
	rst $38                                          ; $6ad1: $ff
	rst $38                                          ; $6ad2: $ff
	ccf                                              ; $6ad3: $3f
	ccf                                              ; $6ad4: $3f
	ld a, a                                          ; $6ad5: $7f
	rst $38                                          ; $6ad6: $ff
	rra                                              ; $6ad7: $1f
	rst $38                                          ; $6ad8: $ff
	add b                                            ; $6ad9: $80
	ld [bc], a                                       ; $6ada: $02
	inc bc                                           ; $6adb: $03
	ld [bc], a                                       ; $6adc: $02
	nop                                              ; $6add: $00
	ld bc, $fe19                                     ; $6ade: $01 $19 $fe
	cp $fc                                           ; $6ae1: $fe $fc
	db $fc                                           ; $6ae3: $fc
	db $fd                                           ; $6ae4: $fd
	rst $38                                          ; $6ae5: $ff
	cp $e6                                           ; $6ae6: $fe $e6
	sub b                                            ; $6ae8: $90

jr_046_6ae9:
	ld h, b                                          ; $6ae9: $60
	db $10                                           ; $6aea: $10
	ld b, c                                          ; $6aeb: $41
	nop                                              ; $6aec: $00
	nop                                              ; $6aed: $00
	add b                                            ; $6aee: $80
	ld b, h                                          ; $6aef: $44
	cp $40                                           ; $6af0: $fe $40

jr_046_6af2:
	nop                                              ; $6af2: $00
	ld h, b                                          ; $6af3: $60
	ldh [$e0], a                                     ; $6af4: $e0 $e0
	ldh a, [$33]                                     ; $6af6: $f0 $33
	ld bc, $040b                                     ; $6af8: $01 $0b $04
	ld b, b                                          ; $6afb: $40
	ret z                                            ; $6afc: $c8

	ld de, $a284                                     ; $6afd: $11 $84 $a2
	rlca                                             ; $6b00: $07
	inc bc                                           ; $6b01: $03
	ld c, $00                                        ; $6b02: $0e $00
	inc b                                            ; $6b04: $04
	ld [$df1b], sp                                   ; $6b05: $08 $1b $df
	ld hl, sp+$40                                    ; $6b08: $f8 $40
	sub c                                            ; $6b0a: $91
	inc a                                            ; $6b0b: $3c
	ld d, e                                          ; $6b0c: $53
	jr nc, @-$7e                                     ; $6b0d: $30 $80

	ld bc, $4180                                     ; $6b0f: $01 $80 $41
	add c                                            ; $6b12: $81
	ld [$2c03], sp                                   ; $6b13: $08 $03 $2c
	call z, $7ff8                                    ; $6b16: $cc $f8 $7f
	ld a, $86                                        ; $6b19: $3e $86
	inc c                                            ; $6b1b: $0c
	jr jr_046_6ae9                                   ; $6b1c: $18 $cb

	ld [bc], a                                       ; $6b1e: $02
	ld b, $1b                                        ; $6b1f: $06 $1b
	ld a, [hl+]                                      ; $6b21: $2a
	ld sp, hl                                        ; $6b22: $f9
	di                                               ; $6b23: $f3
	rst SubAFromBC                                          ; $6b24: $e7
	jr nc, jr_046_6b27                               ; $6b25: $30 $00

jr_046_6b27:
	ld bc, $c4c0                                     ; $6b27: $01 $c0 $c4
	ld a, a                                          ; $6b2a: $7f
	rlca                                             ; $6b2b: $07
	add b                                            ; $6b2c: $80
	db $e3                                           ; $6b2d: $e3
	sub [hl]                                         ; $6b2e: $96
	sub l                                            ; $6b2f: $95
	ld l, b                                          ; $6b30: $68
	ld [hl], h                                       ; $6b31: $74
	add b                                            ; $6b32: $80
	add b                                            ; $6b33: $80
	ld hl, sp+$7f                                    ; $6b34: $f8 $7f
	inc e                                            ; $6b36: $1c
	ld h, b                                          ; $6b37: $60
	ld a, e                                          ; $6b38: $7b
	sub a                                            ; $6b39: $97
	sub l                                            ; $6b3a: $95
	db $fc                                           ; $6b3b: $fc
	add $17                                          ; $6b3c: $c6 $17
	xor d                                            ; $6b3e: $aa
	ld d, h                                          ; $6b3f: $54
	nop                                              ; $6b40: $00
	ld [bc], a                                       ; $6b41: $02
	ld bc, $387f                                     ; $6b42: $01 $7f $38
	ld l, [hl]                                       ; $6b45: $6e
	push de                                          ; $6b46: $d5
	sbc e                                            ; $6b47: $9b
	ldh a, [$80]                                     ; $6b48: $f0 $80
	nop                                              ; $6b4a: $00
	ld b, b                                          ; $6b4b: $40
	halt                                             ; $6b4c: $76
	rst SubAFromHL                                          ; $6b4d: $d7
	sbc h                                            ; $6b4e: $9c
	ldh [rSVBK], a                                   ; $6b4f: $e0 $70
	inc b                                            ; $6b51: $04
	ld sp, hl                                        ; $6b52: $f9
	sbc e                                            ; $6b53: $9b
	ld d, b                                          ; $6b54: $50
	inc d                                            ; $6b55: $14
	inc l                                            ; $6b56: $2c
	ld [hl], c                                       ; $6b57: $71
	cp $df                                           ; $6b58: $fe $df
	jr jr_046_6af2                                   ; $6b5a: $18 $96

	ld [$0e1e], sp                                   ; $6b5c: $08 $1e $0e
	nop                                              ; $6b5f: $00
	ret c                                            ; $6b60: $d8

	add c                                            ; $6b61: $81
	db $eb                                           ; $6b62: $eb
	rst GetHLinHL                                          ; $6b63: $cf
	adc [hl]                                         ; $6b64: $8e
	sbc $ff                                          ; $6b65: $de $ff
	ld sp, hl                                        ; $6b67: $f9
	ld a, [hl]                                       ; $6b68: $7e
	ldh [$80], a                                     ; $6b69: $e0 $80
	rlca                                             ; $6b6b: $07
	ccf                                              ; $6b6c: $3f
	rrca                                             ; $6b6d: $0f
	adc l                                            ; $6b6e: $8d
	sub b                                            ; $6b6f: $90
	ret nz                                           ; $6b70: $c0

	nop                                              ; $6b71: $00
	ld b, $07                                        ; $6b72: $06 $07
	rrca                                             ; $6b74: $0f
	ccf                                              ; $6b75: $3f
	ld a, a                                          ; $6b76: $7f
	ld a, a                                          ; $6b77: $7f
	ccf                                              ; $6b78: $3f
	inc a                                            ; $6b79: $3c
	ld a, c                                          ; $6b7a: $79
	push af                                          ; $6b7b: $f5
	cp b                                             ; $6b7c: $b8
	sbc b                                            ; $6b7d: $98
	sbc b                                            ; $6b7e: $98

Jump_046_6b7f:
	nop                                              ; $6b7f: $00
	inc b                                            ; $6b80: $04
	rra                                              ; $6b81: $1f
	rra                                              ; $6b82: $1f
	ei                                               ; $6b83: $fb
	rst $38                                          ; $6b84: $ff
	rst $38                                          ; $6b85: $ff
	db $fc                                           ; $6b86: $fc
	ret z                                            ; $6b87: $c8

	ret nz                                           ; $6b88: $c0

	ld [bc], a                                       ; $6b89: $02
	sbc h                                            ; $6b8a: $9c
	ld hl, sp-$1d                                    ; $6b8b: $f8 $e3
	ld [$997a], sp                                   ; $6b8d: $08 $7a $99
	sbc l                                            ; $6b90: $9d
	ld bc, $7bfd                                     ; $6b91: $01 $fd $7b
	ld hl, $9e77                                     ; $6b94: $21 $77 $9e
	sub l                                            ; $6b97: $95
	rst $38                                          ; $6b98: $ff
	add e                                            ; $6b99: $83
	ld bc, $1503                                     ; $6b9a: $01 $03 $15
	ld a, [bc]                                       ; $6b9d: $0a
	dec c                                            ; $6b9e: $0d
	xor d                                            ; $6b9f: $aa
	rst $38                                          ; $6ba0: $ff
	db $fc                                           ; $6ba1: $fc
	ei                                               ; $6ba2: $fb
	sub a                                            ; $6ba3: $97
	rst $38                                          ; $6ba4: $ff
	rst SubAFromDE                                          ; $6ba5: $df
	ld d, [hl]                                       ; $6ba6: $56
	cp c                                             ; $6ba7: $b9
	ld [hl], d                                       ; $6ba8: $72
	sbc b                                            ; $6ba9: $98
	ld b, b                                          ; $6baa: $40
	and b                                            ; $6bab: $a0
	ld [hl], e                                       ; $6bac: $73
	xor a                                            ; $6bad: $af
	sub e                                            ; $6bae: $93
	jr nz, jr_046_6be1                               ; $6baf: $20 $30

	db $10                                           ; $6bb1: $10
	di                                               ; $6bb2: $f3
	xor $95                                          ; $6bb3: $ee $95
	dec bc                                           ; $6bb5: $0b
	inc b                                            ; $6bb6: $04
	dec hl                                           ; $6bb7: $2b
	ld d, l                                          ; $6bb8: $55
	xor d                                            ; $6bb9: $aa
	db $fc                                           ; $6bba: $fc
	ld a, d                                          ; $6bbb: $7a
	sub d                                            ; $6bbc: $92
	ld a, e                                          ; $6bbd: $7b
	db $fd                                           ; $6bbe: $fd
	ld a, e                                          ; $6bbf: $7b
	halt                                             ; $6bc0: $76
	sub l                                            ; $6bc1: $95
	dec bc                                           ; $6bc2: $0b
	dec d                                            ; $6bc3: $15
	inc de                                           ; $6bc4: $13
	ld h, b                                          ; $6bc5: $60
	ld d, l                                          ; $6bc6: $55
	xor e                                            ; $6bc7: $ab
	ld a, a                                          ; $6bc8: $7f
	rst $38                                          ; $6bc9: $ff
	ldh a, [$e0]                                     ; $6bca: $f0 $e0
	halt                                             ; $6bcc: $76
	rst SubAFromBC                                          ; $6bcd: $e7
	sub d                                            ; $6bce: $92
	ld c, $0f                                        ; $6bcf: $0e $0f
	add hl, bc                                       ; $6bd1: $09
	dec bc                                           ; $6bd2: $0b
	inc b                                            ; $6bd3: $04
	rst $38                                          ; $6bd4: $ff
	dec hl                                           ; $6bd5: $2b
	or $f1                                           ; $6bd6: $f6 $f1
	ldh a, [$f6]                                     ; $6bd8: $f0 $f6
	db $f4                                           ; $6bda: $f4
	ld hl, sp+$77                                    ; $6bdb: $f8 $77
	db $dd                                           ; $6bdd: $dd
	ld a, l                                          ; $6bde: $7d
	ld h, a                                          ; $6bdf: $67
	add [hl]                                         ; $6be0: $86

jr_046_6be1:
	db $d3                                           ; $6be1: $d3
	nop                                              ; $6be2: $00
	inc e                                            ; $6be3: $1c
	rra                                              ; $6be4: $1f
	rra                                              ; $6be5: $1f
	db $fd                                           ; $6be6: $fd
	jr nz, @+$42                                     ; $6be7: $20 $40

	jr z, @+$57                                      ; $6be9: $28 $55

	ldh [c], a                                       ; $6beb: $e2
	ld h, b                                          ; $6bec: $60
	ret nz                                           ; $6bed: $c0

	ldh [$a0], a                                     ; $6bee: $e0 $a0
	ldh [$f4], a                                     ; $6bf0: $e0 $f4
	rst $38                                          ; $6bf2: $ff
	rst SubAFromDE                                          ; $6bf3: $df
	rst $38                                          ; $6bf4: $ff
	rst $38                                          ; $6bf5: $ff
	rra                                              ; $6bf6: $1f
	ld e, a                                          ; $6bf7: $5f
	rra                                              ; $6bf8: $1f
	add hl, bc                                       ; $6bf9: $09
	db $fd                                           ; $6bfa: $fd
	sbc h                                            ; $6bfb: $9c
	ld sp, $7f7d                                     ; $6bfc: $31 $7d $7f
	ld a, c                                          ; $6bff: $79
	add hl, bc                                       ; $6c00: $09
	rst SubAFromDE                                          ; $6c01: $df
	db $fc                                           ; $6c02: $fc
	sbc l                                            ; $6c03: $9d
	add [hl]                                         ; $6c04: $86
	add d                                            ; $6c05: $82
	ld l, l                                          ; $6c06: $6d
	ei                                               ; $6c07: $fb
	sbc h                                            ; $6c08: $9c
	rst $38                                          ; $6c09: $ff
	ei                                               ; $6c0a: $fb
	pop bc                                           ; $6c0b: $c1
	ld l, a                                          ; $6c0c: $6f
	rla                                              ; $6c0d: $17
	ld sp, hl                                        ; $6c0e: $f9
	sbc h                                            ; $6c0f: $9c
	ld hl, sp+$18                                    ; $6c10: $f8 $18
	ld b, $fd                                        ; $6c12: $06 $fd
	sbc l                                            ; $6c14: $9d
	ld a, h                                          ; $6c15: $7c
	ld [bc], a                                       ; $6c16: $02
	ld l, l                                          ; $6c17: $6d
	call z, $089d                                    ; $6c18: $cc $9d $08
	and d                                            ; $6c1b: $a2
	db $fc                                           ; $6c1c: $fc
	sbc l                                            ; $6c1d: $9d
	ret nc                                           ; $6c1e: $d0

	scf                                              ; $6c1f: $37
	ld a, [$bb97]                                    ; $6c20: $fa $97 $bb
	dec e                                            ; $6c23: $1d
	ld a, [hl+]                                      ; $6c24: $2a
	dec d                                            ; $6c25: $15
	ld a, [bc]                                       ; $6c26: $0a
	inc b                                            ; $6c27: $04
	ld [$f910], sp                                   ; $6c28: $08 $10 $f9
	ld a, e                                          ; $6c2b: $7b
	cp d                                             ; $6c2c: $ba
	sbc d                                            ; $6c2d: $9a
	ld b, b                                          ; $6c2e: $40
	xor b                                            ; $6c2f: $a8
	db $10                                           ; $6c30: $10
	inc b                                            ; $6c31: $04
	dec bc                                           ; $6c32: $0b
	ld hl, sp+$7d                                    ; $6c33: $f8 $7d
	call nz, Call_046_487b                           ; $6c35: $c4 $7b $48
	sbc l                                            ; $6c38: $9d
	inc [hl]                                         ; $6c39: $34
	ld l, e                                          ; $6c3a: $6b
	ld sp, hl                                        ; $6c3b: $f9
	sbc b                                            ; $6c3c: $98
	ld b, b                                          ; $6c3d: $40
	add b                                            ; $6c3e: $80
	ld bc, $a040                                     ; $6c3f: $01 $40 $a0
	ld b, c                                          ; $6c42: $41
	ld [hl+], a                                      ; $6c43: $22
	ld a, d                                          ; $6c44: $7a
	cp h                                             ; $6c45: $bc
	ei                                               ; $6c46: $fb
	sbc c                                            ; $6c47: $99
	add c                                            ; $6c48: $81
	jp $0181                                         ; $6c49: $c3 $81 $01


	rrca                                             ; $6c4c: $0f
	ld a, a                                          ; $6c4d: $7f
	ld a, c                                          ; $6c4e: $79
	or b                                             ; $6c4f: $b0
	rst $38                                          ; $6c50: $ff
	sbc d                                            ; $6c51: $9a
	ret nz                                           ; $6c52: $c0

	ld d, b                                          ; $6c53: $50
	add b                                            ; $6c54: $80
	ld b, b                                          ; $6c55: $40
	and b                                            ; $6c56: $a0
	ld a, e                                          ; $6c57: $7b
	ld [hl], l                                       ; $6c58: $75
	sbc d                                            ; $6c59: $9a
	ld hl, sp-$06                                    ; $6c5a: $f8 $fa
	ldh a, [$ba]                                     ; $6c5c: $f0 $ba
	ld d, h                                          ; $6c5e: $54
	ld a, e                                          ; $6c5f: $7b
	ret z                                            ; $6c60: $c8

	sbc l                                            ; $6c61: $9d
	inc b                                            ; $6c62: $04
	ld b, $de                                        ; $6c63: $06 $de
	rlca                                             ; $6c65: $07
	sub [hl]                                         ; $6c66: $96
	or [hl]                                          ; $6c67: $b6
	ldh a, [$d0]                                     ; $6c68: $f0 $d0
	cp $e0                                           ; $6c6a: $fe $e0
	add b                                            ; $6c6c: $80
	ld c, $be                                        ; $6c6d: $0e $be
	ld c, a                                          ; $6c6f: $4f
	sbc $0f                                          ; $6c70: $de $0f
	ld a, [hl]                                       ; $6c72: $7e
	ret nz                                           ; $6c73: $c0

	ld a, a                                          ; $6c74: $7f
	ret c                                            ; $6c75: $d8

	sub e                                            ; $6c76: $93
	or d                                             ; $6c77: $b2
	push af                                          ; $6c78: $f5
	ret nc                                           ; $6c79: $d0

	ldh a, [$c1]                                     ; $6c7a: $f0 $c1
	ldh [$c0], a                                     ; $6c7c: $e0 $c0
	ret nz                                           ; $6c7e: $c0

	ldh a, [$e0]                                     ; $6c7f: $f0 $e0
	ld h, b                                          ; $6c81: $60
	ret nz                                           ; $6c82: $c0

	ld a, b                                          ; $6c83: $78
	db $fc                                           ; $6c84: $fc
	ld a, a                                          ; $6c85: $7f
	or d                                             ; $6c86: $b2
	ld a, a                                          ; $6c87: $7f
	and c                                            ; $6c88: $a1
	ld a, [hl]                                       ; $6c89: $7e
	inc sp                                           ; $6c8a: $33
	sbc l                                            ; $6c8b: $9d
	inc bc                                           ; $6c8c: $03
	ld de, $3961                                     ; $6c8d: $11 $61 $39
	sub a                                            ; $6c90: $97
	ld d, b                                          ; $6c91: $50
	and b                                            ; $6c92: $a0
	ld [bc], a                                       ; $6c93: $02
	inc b                                            ; $6c94: $04
	ld b, b                                          ; $6c95: $40
	add e                                            ; $6c96: $83
	ret z                                            ; $6c97: $c8

	jp nz, $dffb                                     ; $6c98: $c2 $fb $df

	rlca                                             ; $6c9b: $07
	add a                                            ; $6c9c: $87
	dec bc                                           ; $6c9d: $0b
	ld d, a                                          ; $6c9e: $57
	or a                                             ; $6c9f: $b7
	rla                                              ; $6ca0: $17
	call $ba7f                                       ; $6ca1: $cd $7f $ba
	dec [hl]                                         ; $6ca4: $35
	nop                                              ; $6ca5: $00
	ld [$0008], sp                                   ; $6ca6: $08 $08 $00
	ld [bc], a                                       ; $6ca9: $02
	nop                                              ; $6caa: $00
	ld b, b                                          ; $6cab: $40
	ret nz                                           ; $6cac: $c0

	push af                                          ; $6cad: $f5
	rst $38                                          ; $6cae: $ff
	rst $38                                          ; $6caf: $ff
	rst FarCall                                          ; $6cb0: $f7
	xor a                                            ; $6cb1: $af
	cpl                                              ; $6cb2: $2f
	ld [$72f5], a                                    ; $6cb3: $ea $f5 $72
	ld b, a                                          ; $6cb6: $47
	sub h                                            ; $6cb7: $94
	ret nc                                           ; $6cb8: $d0

	ld de, $df03                                     ; $6cb9: $11 $03 $df
	cp a                                             ; $6cbc: $bf
	ld hl, sp-$04                                    ; $6cbd: $f8 $fc
	ld sp, hl                                        ; $6cbf: $f9
	adc a                                            ; $6cc0: $8f
	ld sp, $79c1                                     ; $6cc1: $31 $c1 $79
	ld b, h                                          ; $6cc4: $44
	ld a, l                                          ; $6cc5: $7d
	db $dd                                           ; $6cc6: $dd
	sub h                                            ; $6cc7: $94
	ld [hl], b                                       ; $6cc8: $70
	ret nz                                           ; $6cc9: $c0

	add b                                            ; $6cca: $80
	ld a, [rIE]                                    ; $6ccb: $fa $ff $ff
	inc e                                            ; $6cce: $1c
	rst $38                                          ; $6ccf: $ff
	cp $41                                           ; $6cd0: $fe $41
	add b                                            ; $6cd2: $80
	ld a, d                                          ; $6cd3: $7a
	and h                                            ; $6cd4: $a4
	sbc [hl]                                         ; $6cd5: $9e
	db $e3                                           ; $6cd6: $e3
	db $fd                                           ; $6cd7: $fd
	ld a, l                                          ; $6cd8: $7d
	add h                                            ; $6cd9: $84
	sub c                                            ; $6cda: $91
	rra                                              ; $6cdb: $1f
	ccf                                              ; $6cdc: $3f
	ld l, a                                          ; $6cdd: $6f
	add c                                            ; $6cde: $81
	ld bc, $a080                                     ; $6cdf: $01 $80 $a0
	ldh [$e0], a                                     ; $6ce2: $e0 $e0
	ld b, b                                          ; $6ce4: $40
	add b                                            ; $6ce5: $80
	nop                                              ; $6ce6: $00
	inc b                                            ; $6ce7: $04
	ld l, $dc                                        ; $6ce8: $2e $dc
	rst $38                                          ; $6cea: $ff
	sbc h                                            ; $6ceb: $9c
	db $dd                                           ; $6cec: $dd
	cp d                                             ; $6ced: $ba
	ld d, l                                          ; $6cee: $55
	ld sp, hl                                        ; $6cef: $f9
	ld a, a                                          ; $6cf0: $7f
	ld d, h                                          ; $6cf1: $54
	sbc d                                            ; $6cf2: $9a
	and b                                            ; $6cf3: $a0
	add b                                            ; $6cf4: $80
	ld d, b                                          ; $6cf5: $50
	db $fc                                           ; $6cf6: $fc
	xor d                                            ; $6cf7: $aa
	ld h, e                                          ; $6cf8: $63
	ldh a, [$fe]                                     ; $6cf9: $f0 $fe
	sbc l                                            ; $6cfb: $9d
	db $10                                           ; $6cfc: $10
	jr z, @+$7d                                      ; $6cfd: $28 $7b

	sub $f9                                          ; $6cff: $d6 $f9
	sub a                                            ; $6d01: $97
	ld hl, $0207                                     ; $6d02: $21 $07 $02
	ld bc, $0500                                     ; $6d05: $01 $00 $05
	ld a, [bc]                                       ; $6d08: $0a
	dec [hl]                                         ; $6d09: $35
	ld sp, hl                                        ; $6d0a: $f9

jr_046_6d0b:
	sbc b                                            ; $6d0b: $98
	ldh a, [$b0]                                     ; $6d0c: $f0 $b0
	ret z                                            ; $6d0e: $c8

	and b                                            ; $6d0f: $a0
	call c, $905e                                    ; $6d10: $dc $5e $90
	ld [hl], a                                       ; $6d13: $77
	reti                                             ; $6d14: $d9


	sbc h                                            ; $6d15: $9c
	ld [$ec04], sp                                   ; $6d16: $08 $04 $ec
	db $fc                                           ; $6d19: $fc
	sbc d                                            ; $6d1a: $9a
	ld h, h                                          ; $6d1b: $64
	cp b                                             ; $6d1c: $b8
	ld h, h                                          ; $6d1d: $64
	ret nz                                           ; $6d1e: $c0

	adc e                                            ; $6d1f: $8b
	ld h, [hl]                                       ; $6d20: $66
	jp nc, $1196                                     ; $6d21: $d2 $96 $11

	rrca                                             ; $6d24: $0f
	dec d                                            ; $6d25: $15
	inc hl                                           ; $6d26: $23
	ld b, b                                          ; $6d27: $40
	add b                                            ; $6d28: $80
	inc sp                                           ; $6d29: $33
	rst SubAFromHL                                          ; $6d2a: $d7
	nop                                              ; $6d2b: $00
	ld a, e                                          ; $6d2c: $7b
	ld d, d                                          ; $6d2d: $52
	ld a, d                                          ; $6d2e: $7a
	db $ed                                           ; $6d2f: $ed
	sub a                                            ; $6d30: $97
	cp a                                             ; $6d31: $bf
	or $fd                                           ; $6d32: $f6 $fd
	ld l, e                                          ; $6d34: $6b
	or l                                             ; $6d35: $b5
	sub b                                            ; $6d36: $90
	inc hl                                           ; $6d37: $23
	cpl                                              ; $6d38: $2f
	ld a, e                                          ; $6d39: $7b
	rst GetHLinHL                                          ; $6d3a: $cf
	sub c                                            ; $6d3b: $91
	db $10                                           ; $6d3c: $10
	ld [bc], a                                       ; $6d3d: $02
	inc c                                            ; $6d3e: $0c
	ld a, h                                          ; $6d3f: $7c
	ret nz                                           ; $6d40: $c0

	inc c                                            ; $6d41: $0c
	and d                                            ; $6d42: $a2
	dec b                                            ; $6d43: $05
	add d                                            ; $6d44: $82
	or a                                             ; $6d45: $b7
	ld b, $7b                                        ; $6d46: $06 $7b
	ld [hl], a                                       ; $6d48: $77
	ldh a, [c]                                       ; $6d49: $f2
	halt                                             ; $6d4a: $76
	or l                                             ; $6d4b: $b5
	sub b                                            ; $6d4c: $90
	ld hl, sp-$80                                    ; $6d4d: $f8 $80
	nop                                              ; $6d4f: $00
	inc c                                            ; $6d50: $0c
	rrca                                             ; $6d51: $0f
	inc bc                                           ; $6d52: $03
	inc bc                                           ; $6d53: $03
	ld l, $55                                        ; $6d54: $2e $55
	ld [$8295], a                                    ; $6d56: $ea $95 $82
	ld d, b                                          ; $6d59: $50
	xor b                                            ; $6d5a: $a8
	ld d, h                                          ; $6d5b: $54
	halt                                             ; $6d5c: $76
	add l                                            ; $6d5d: $85
	add l                                            ; $6d5e: $85
	jr z, jr_046_6d0b                                ; $6d5f: $28 $aa

	ld b, [hl]                                       ; $6d61: $46
	xor c                                            ; $6d62: $a9
	ld c, a                                          ; $6d63: $4f
	dec b                                            ; $6d64: $05
	ld [$a811], sp                                   ; $6d65: $08 $11 $a8
	rlca                                             ; $6d68: $07
	rlca                                             ; $6d69: $07
	rrca                                             ; $6d6a: $0f
	rrca                                             ; $6d6b: $0f
	adc c                                            ; $6d6c: $89
	add hl, de                                       ; $6d6d: $19
	dec de                                           ; $6d6e: $1b
	dec e                                            ; $6d6f: $1d
	xor $06                                          ; $6d70: $ee $06
	add b                                            ; $6d72: $80
	call c, Call_046_5edc                            ; $6d73: $dc $dc $5e
	rlca                                             ; $6d76: $07
	add h                                            ; $6d77: $84
	rra                                              ; $6d78: $1f
	call c, $96ff                                    ; $6d79: $dc $ff $96
	cp $7e                                           ; $6d7c: $fe $7e
	add b                                            ; $6d7e: $80
	ret nc                                           ; $6d7f: $d0

	ld [hl], b                                       ; $6d80: $70
	add sp, -$2f                                     ; $6d81: $e8 $d1
	nop                                              ; $6d83: $00
	dec b                                            ; $6d84: $05
	ld a, e                                          ; $6d85: $7b
	and e                                            ; $6d86: $a3
	sbc [hl]                                         ; $6d87: $9e
	add b                                            ; $6d88: $80
	ld l, d                                          ; $6d89: $6a
	ld c, h                                          ; $6d8a: $4c
	sbc e                                            ; $6d8b: $9b
	dec b                                            ; $6d8c: $05
	xor a                                            ; $6d8d: $af
	pop hl                                           ; $6d8e: $e1
	jp nc, $f56f                                     ; $6d8f: $d2 $6f $f5

	sub d                                            ; $6d92: $92
	inc c                                            ; $6d93: $0c
	inc l                                            ; $6d94: $2c
	nop                                              ; $6d95: $00
	nop                                              ; $6d96: $00
	sbc h                                            ; $6d97: $9c
	ld a, [$ecfc]                                    ; $6d98: $fa $fc $ec
	or d                                             ; $6d9b: $b2
	ld [hl], d                                       ; $6d9c: $72
	ld b, d                                          ; $6d9d: $42
	ld [bc], a                                       ; $6d9e: $02
	inc bc                                           ; $6d9f: $03
	db $dd                                           ; $6da0: $dd
	ld bc, $8182                                     ; $6da1: $01 $82 $81
	ld hl, $7f01                                     ; $6da4: $21 $01 $7f

jr_046_6da7:
	rst SubAFromDE                                          ; $6da7: $df
	rst SubAFromHL                                          ; $6da8: $d7
	adc c                                            ; $6da9: $89
	nop                                              ; $6daa: $00
	ld [bc], a                                       ; $6dab: $02
	ld a, [bc]                                       ; $6dac: $0a
	dec c                                            ; $6dad: $0d
	add b                                            ; $6dae: $80
	nop                                              ; $6daf: $00
	adc b                                            ; $6db0: $88
	ldh a, [$c1]                                     ; $6db1: $f0 $c1
	add c                                            ; $6db3: $81
	add a                                            ; $6db4: $87
	sbc b                                            ; $6db5: $98
	push af                                          ; $6db6: $f5
	ret z                                            ; $6db7: $c8

	ld c, b                                          ; $6db8: $48
	pop af                                           ; $6db9: $f1
	add e                                            ; $6dba: $83
	rst $38                                          ; $6dbb: $ff
	rst AddAOntoHL                                          ; $6dbc: $ef
	ld d, l                                          ; $6dbd: $55
	ld c, $0c                                        ; $6dbe: $0e $0c
	ld a, b                                          ; $6dc0: $78
	or $7d                                           ; $6dc1: $f6 $7d
	jp nc, $0096                                     ; $6dc3: $d2 $96 $00

	add e                                            ; $6dc6: $83
	rla                                              ; $6dc7: $17
	inc b                                            ; $6dc8: $04
	ld d, [hl]                                       ; $6dc9: $56
	call nz, $adbe                                   ; $6dca: $c4 $be $ad
	rst SubAFromBC                                          ; $6dcd: $e7
	cp $92                                           ; $6dce: $fe $92
	add hl, bc                                       ; $6dd0: $09
	dec sp                                           ; $6dd1: $3b
	ld b, c                                          ; $6dd2: $41
	db $d3                                           ; $6dd3: $d3
	jr jr_046_6da7                                   ; $6dd4: $18 $d1

	ld l, d                                          ; $6dd6: $6a
	cp a                                             ; $6dd7: $bf
	ld [hl], h                                       ; $6dd8: $74
	rla                                              ; $6dd9: $17
	inc de                                           ; $6dda: $13
	ld a, h                                          ; $6ddb: $7c
	call nc, Call_046_737a                           ; $6ddc: $d4 $7a $73
	add a                                            ; $6ddf: $87
	adc e                                            ; $6de0: $8b
	ld hl, sp-$14                                    ; $6de1: $f8 $ec
	or e                                             ; $6de3: $b3
	dec bc                                           ; $6de4: $0b
	cp $e9                                           ; $6de5: $fe $e9
	scf                                              ; $6de7: $37
	cp h                                             ; $6de8: $bc
	ldh a, [$7d]                                     ; $6de9: $f0 $7d
	dec sp                                           ; $6deb: $3b
	ld l, l                                          ; $6dec: $6d
	nop                                              ; $6ded: $00
	nop                                              ; $6dee: $00
	ret z                                            ; $6def: $c8

	ld b, b                                          ; $6df0: $40
	nop                                              ; $6df1: $00
	add b                                            ; $6df2: $80
	ret nz                                           ; $6df3: $c0

	sub b                                            ; $6df4: $90
	ld [bc], a                                       ; $6df5: $02
	dec b                                            ; $6df6: $05
	ld [bc], a                                       ; $6df7: $02
	ld [hl], l                                       ; $6df8: $75
	xor $71                                          ; $6df9: $ee $71
	ld [hl-], a                                      ; $6dfb: $32
	ld a, [hl]                                       ; $6dfc: $7e
	ld d, h                                          ; $6dfd: $54
	ld a, l                                          ; $6dfe: $7d

jr_046_6dff:
	push de                                          ; $6dff: $d5
	ld a, [hl]                                       ; $6e00: $7e
	add $9e                                          ; $6e01: $c6 $9e
	xor d                                            ; $6e03: $aa
	ld e, d                                          ; $6e04: $5a
	jp nc, $ee71                                     ; $6e05: $d2 $71 $ee

	sbc [hl]                                         ; $6e08: $9e
	ld b, d                                          ; $6e09: $42
	ld hl, sp-$67                                    ; $6e0a: $f8 $99
	ld [$0214], sp                                   ; $6e0c: $08 $14 $02
	dec b                                            ; $6e0f: $05
	ld a, [hl+]                                      ; $6e10: $2a
	dec d                                            ; $6e11: $15
	db $f4                                           ; $6e12: $f4
	sbc d                                            ; $6e13: $9a
	ld b, c                                          ; $6e14: $41
	adc d                                            ; $6e15: $8a
	ld d, l                                          ; $6e16: $55
	xor b                                            ; $6e17: $a8
	db $10                                           ; $6e18: $10
	ld a, b                                          ; $6e19: $78
	rst GetHLinHL                                          ; $6e1a: $cf
	ld h, e                                          ; $6e1b: $63
	jp nc, $8394                                     ; $6e1c: $d2 $94 $83

	ld d, a                                          ; $6e1f: $57

jr_046_6e20:
	inc bc                                           ; $6e20: $03
	ld bc, $552b                                     ; $6e21: $01 $2b $55
	ld a, [hl+]                                      ; $6e24: $2a
	inc bc                                           ; $6e25: $03
	dec de                                           ; $6e26: $1b
	dec bc                                           ; $6e27: $0b
	rlca                                             ; $6e28: $07
	db $dd                                           ; $6e29: $dd
	ld bc, $c092                                     ; $6e2a: $01 $92 $c0
	adc b                                            ; $6e2d: $88
	add b                                            ; $6e2e: $80
	add c                                            ; $6e2f: $81
	add a                                            ; $6e30: $87
	adc b                                            ; $6e31: $88
	ret nz                                           ; $6e32: $c0

	ret nz                                           ; $6e33: $c0

	cp h                                             ; $6e34: $bc
	ldh [$c0], a                                     ; $6e35: $e0 $c0
	sub d                                            ; $6e37: $92
	ld hl, sp+$78                                    ; $6e38: $f8 $78
	db $ed                                           ; $6e3a: $ed
	sbc e                                            ; $6e3b: $9b
	adc h                                            ; $6e3c: $8c
	jr nz, jr_046_6dff                               ; $6e3d: $20 $c0

	ld d, b                                          ; $6e3f: $50
	ld a, c                                          ; $6e40: $79
	or h                                             ; $6e41: $b4
	sbc h                                            ; $6e42: $9c
	dec b                                            ; $6e43: $05
	inc sp                                           ; $6e44: $33
	jr nz, jr_046_6ebb                               ; $6e45: $20 $74

	ld [hl-], a                                      ; $6e47: $32
	rst $38                                          ; $6e48: $ff
	sbc l                                            ; $6e49: $9d
	or c                                             ; $6e4a: $b1
	add d                                            ; $6e4b: $82
	ld a, e                                          ; $6e4c: $7b
	ld b, $7d                                        ; $6e4d: $06 $7d
	sbc c                                            ; $6e4f: $99
	sbc l                                            ; $6e50: $9d
	ld b, b                                          ; $6e51: $40
	ret z                                            ; $6e52: $c8

	ld h, c                                          ; $6e53: $61
	ld c, [hl]                                       ; $6e54: $4e
	sbc e                                            ; $6e55: $9b
	ld bc, $0004                                     ; $6e56: $01 $04 $00
	ld [bc], a                                       ; $6e59: $02
	ld h, b                                          ; $6e5a: $60
	inc [hl]                                         ; $6e5b: $34
	sub [hl]                                         ; $6e5c: $96
	nop                                              ; $6e5d: $00
	dec de                                           ; $6e5e: $1b
	ld de, $9811                                     ; $6e5f: $11 $11 $98
	cp e                                             ; $6e62: $bb
	add sp, $20                                      ; $6e63: $e8 $20
	ld h, b                                          ; $6e65: $60
	ld [hl], a                                       ; $6e66: $77
	rst SubAFromBC                                          ; $6e67: $e7
	db $fd                                           ; $6e68: $fd
	rst SubAFromDE                                          ; $6e69: $df
	adc h                                            ; $6e6a: $8c
	adc d                                            ; $6e6b: $8a
	cp d                                             ; $6e6c: $ba
	ld a, c                                          ; $6e6d: $79
	ld e, d                                          ; $6e6e: $5a
	sbc c                                            ; $6e6f: $99
	jp c, $7e9b                                      ; $6e70: $da $9b $7e

	ld a, h                                          ; $6e73: $7c
	ld a, h                                          ; $6e74: $7c
	db $fc                                           ; $6e75: $fc
	db $fc                                           ; $6e76: $fc
	ld a, h                                          ; $6e77: $7c
	inc a                                            ; $6e78: $3c
	ld a, b                                          ; $6e79: $78
	and b                                            ; $6e7a: $a0
	ld c, b                                          ; $6e7b: $48
	sub b                                            ; $6e7c: $90
	ld b, b                                          ; $6e7d: $40
	add b                                            ; $6e7e: $80
	ld b, b                                          ; $6e7f: $40
	and c                                            ; $6e80: $a1
	ld [hl], a                                       ; $6e81: $77
	pop hl                                           ; $6e82: $e1
	sub h                                            ; $6e83: $94
	xor d                                            ; $6e84: $aa
	inc b                                            ; $6e85: $04
	xor d                                            ; $6e86: $aa
	inc d                                            ; $6e87: $14
	cp [hl]                                          ; $6e88: $be
	db $10                                           ; $6e89: $10
	ld [hl+], a                                      ; $6e8a: $22
	inc d                                            ; $6e8b: $14
	nop                                              ; $6e8c: $00
	nop                                              ; $6e8d: $00
	ret c                                            ; $6e8e: $d8

	ld [hl], l                                       ; $6e8f: $75
	jr z, jr_046_6e20                                ; $6e90: $28 $8e

	nop                                              ; $6e92: $00
	xor d                                            ; $6e93: $aa
	ld d, l                                          ; $6e94: $55
	ld [hl+], a                                      ; $6e95: $22
	ld d, l                                          ; $6e96: $55
	xor a                                            ; $6e97: $af
	ld de, $0f1d                                     ; $6e98: $11 $1d $0f
	rrca                                             ; $6e9b: $0f
	ld [hl], a                                       ; $6e9c: $77
	ld [hl], e                                       ; $6e9d: $73
	di                                               ; $6e9e: $f3
	ld hl, sp+$11                                    ; $6e9f: $f8 $11
	add hl, bc                                       ; $6ea1: $09
	add hl, bc                                       ; $6ea2: $09
	db $dd                                           ; $6ea3: $dd
	inc bc                                           ; $6ea4: $03
	sub [hl]                                         ; $6ea5: $96
	ld bc, $e3a1                                     ; $6ea6: $01 $a1 $e3
	ret nz                                           ; $6ea9: $c0

	nop                                              ; $6eaa: $00
	inc d                                            ; $6eab: $14
	dec a                                            ; $6eac: $3d
	ld a, [hl+]                                      ; $6ead: $2a
	dec d                                            ; $6eae: $15
	ld a, e                                          ; $6eaf: $7b
	ld [hl], l                                       ; $6eb0: $75
	call c, $97c0                                    ; $6eb1: $dc $c0 $97
	ld [$8a55], a                                    ; $6eb4: $ea $55 $8a
	dec b                                            ; $6eb7: $05
	ld [$a100], sp                                   ; $6eb8: $08 $00 $a1

jr_046_6ebb:
	ld d, h                                          ; $6ebb: $54
	ld h, c                                          ; $6ebc: $61
	ret nz                                           ; $6ebd: $c0

	ld a, e                                          ; $6ebe: $7b
	nop                                              ; $6ebf: $00
	sbc e                                            ; $6ec0: $9b
	jr z, jr_046_6f06                                ; $6ec1: $28 $43

	ld bc, $fc8d                                     ; $6ec3: $01 $8d $fc
	sub e                                            ; $6ec6: $93
	inc b                                            ; $6ec7: $04
	ld bc, $8001                                     ; $6ec8: $01 $01 $80
	ld bc, $4528                                     ; $6ecb: $01 $28 $45
	ld a, [hl+]                                      ; $6ece: $2a
	adc a                                            ; $6ecf: $8f
	add a                                            ; $6ed0: $87
	sbc b                                            ; $6ed1: $98
	rrca                                             ; $6ed2: $0f
	ld [hl], e                                       ; $6ed3: $73
	ld h, b                                          ; $6ed4: $60
	sub l                                            ; $6ed5: $95
	add b                                            ; $6ed6: $80
	adc b                                            ; $6ed7: $88
	ld a, d                                          ; $6ed8: $7a
	pop af                                           ; $6ed9: $f1
	and b                                            ; $6eda: $a0
	ld d, l                                          ; $6edb: $55
	xor c                                            ; $6edc: $a9
	add c                                            ; $6edd: $81
	ld h, c                                          ; $6ede: $61
	rst SubAFromBC                                          ; $6edf: $e7
	ld [hl], e                                       ; $6ee0: $73
	ld b, e                                          ; $6ee1: $43
	ld a, [hl]                                       ; $6ee2: $7e
	cp [hl]                                          ; $6ee3: $be
	ld a, a                                          ; $6ee4: $7f
	call nc, Call_046_5198                           ; $6ee5: $d4 $98 $51
	and d                                            ; $6ee8: $a2
	ld d, l                                          ; $6ee9: $55
	cp b                                             ; $6eea: $b8
	call z, $c6c3                                    ; $6eeb: $cc $c3 $c6
	ld l, b                                          ; $6eee: $68
	sub d                                            ; $6eef: $92

jr_046_6ef0:
	sub a                                            ; $6ef0: $97
	add b                                            ; $6ef1: $80
	jr nz, jr_046_6f44                               ; $6ef2: $20 $50

	ld h, d                                          ; $6ef4: $62
	dec l                                            ; $6ef5: $2d
	ld l, d                                          ; $6ef6: $6a
	or a                                             ; $6ef7: $b7
	ld e, $62                                        ; $6ef8: $1e $62
	db $db                                           ; $6efa: $db
	ld a, a                                          ; $6efb: $7f
	ld [hl], $99                                     ; $6efc: $36 $99
	xor c                                            ; $6efe: $a9
	ld d, d                                          ; $6eff: $52
	xor l                                            ; $6f00: $ad
	ld d, a                                          ; $6f01: $57
	and e                                            ; $6f02: $a3
	ld c, [hl]                                       ; $6f03: $4e
	ld sp, hl                                        ; $6f04: $f9
	ld a, l                                          ; $6f05: $7d

jr_046_6f06:
	add sp, -$67                                     ; $6f06: $e8 $99
	inc d                                            ; $6f08: $14
	ld l, b                                          ; $6f09: $68
	ld e, h                                          ; $6f0a: $5c
	ld [$16e0], sp                                   ; $6f0b: $08 $e0 $16
	ld a, d                                          ; $6f0e: $7a
	add $9b                                          ; $6f0f: $c6 $9b
	add d                                            ; $6f11: $82
	ld bc, $05a0                                     ; $6f12: $01 $a0 $05
	ld a, e                                          ; $6f15: $7b
	cp c                                             ; $6f16: $b9
	ld a, h                                          ; $6f17: $7c
	pop de                                           ; $6f18: $d1
	sbc h                                            ; $6f19: $9c
	and c                                            ; $6f1a: $a1
	inc bc                                           ; $6f1b: $03
	adc d                                            ; $6f1c: $8a
	ld h, e                                          ; $6f1d: $63
	rrca                                             ; $6f1e: $0f
	sbc [hl]                                         ; $6f1f: $9e
	ld d, b                                          ; $6f20: $50
	ld a, d                                          ; $6f21: $7a
	ld [hl], e                                       ; $6f22: $73
	sbc h                                            ; $6f23: $9c
	adc d                                            ; $6f24: $8a
	call nc, Call_046_7328                           ; $6f25: $d4 $28 $73
	inc d                                            ; $6f28: $14
	db $fd                                           ; $6f29: $fd
	add a                                            ; $6f2a: $87
	ld a, h                                          ; $6f2b: $7c
	halt                                             ; $6f2c: $76
	adc c                                            ; $6f2d: $89
	adc c                                            ; $6f2e: $89
	ld b, a                                          ; $6f2f: $47
	ld c, a                                          ; $6f30: $4f
	set 0, c                                         ; $6f31: $cb $c1
	ldh [$e0], a                                     ; $6f33: $e0 $e0
	ld [hl], b                                       ; $6f35: $70
	ld [hl], b                                       ; $6f36: $70
	jr nc, @+$32                                     ; $6f37: $30 $30

	db $10                                           ; $6f39: $10
	stop                                             ; $6f3a: $10 $00
	ld c, b                                          ; $6f3c: $48
	and b                                            ; $6f3d: $a0
	ld b, d                                          ; $6f3e: $42
	add c                                            ; $6f3f: $81
	call nz, $e1a8                                   ; $6f40: $c4 $a8 $e1
	ld sp, hl                                        ; $6f43: $f9

jr_046_6f44:
	sbc h                                            ; $6f44: $9c
	and b                                            ; $6f45: $a0
	ld d, b                                          ; $6f46: $50
	jr z, jr_046_6fc4                                ; $6f47: $28 $7b

	cp $7f                                           ; $6f49: $fe $7f
	ld a, $70                                        ; $6f4b: $3e $70
	ccf                                              ; $6f4d: $3f
	ld a, [hl]                                       ; $6f4e: $7e
	cp c                                             ; $6f4f: $b9
	sbc h                                            ; $6f50: $9c
	cp e                                             ; $6f51: $bb
	nop                                              ; $6f52: $00
	ld [$9dfe], sp                                   ; $6f53: $08 $fe $9d
	inc d                                            ; $6f56: $14
	xor e                                            ; $6f57: $ab
	ld h, e                                          ; $6f58: $63
	jr nc, jr_046_6ef0                               ; $6f59: $30 $95

	dec e                                            ; $6f5b: $1d
	dec a                                            ; $6f5c: $3d
	ld a, a                                          ; $6f5d: $7f
	ld c, $06                                        ; $6f5e: $0e $06
	ld l, [hl]                                       ; $6f60: $6e
	cp h                                             ; $6f61: $bc
	inc e                                            ; $6f62: $1c
	ld h, b                                          ; $6f63: $60
	ld b, b                                          ; $6f64: $40
	ld a, d                                          ; $6f65: $7a
	ret nz                                           ; $6f66: $c0

	adc e                                            ; $6f67: $8b
	ld bc, $e343                                     ; $6f68: $01 $43 $e3
	sbc e                                            ; $6f6b: $9b
	sbc d                                            ; $6f6c: $9a
	sbc h                                            ; $6f6d: $9c
	db $10                                           ; $6f6e: $10
	inc [hl]                                         ; $6f6f: $34
	jr nc, jr_046_6fa6                               ; $6f70: $30 $34

	ld [hl], b                                       ; $6f72: $70
	ld a, b                                          ; $6f73: $78
	ld a, l                                          ; $6f74: $7d
	ld a, d                                          ; $6f75: $7a
	db $fd                                           ; $6f76: $fd
	ld a, [$fbff]                                    ; $6f77: $fa $ff $fb
	rst $38                                          ; $6f7a: $ff
	ld a, a                                          ; $6f7b: $7f
	sbc $ff                                          ; $6f7c: $de $ff
	sbc h                                            ; $6f7e: $9c
	ld bc, $06ff                                     ; $6f7f: $01 $ff $06
	db $fc                                           ; $6f82: $fc
	sub h                                            ; $6f83: $94
	cp $00                                           ; $6f84: $fe $00
	ld sp, hl                                        ; $6f86: $f9
	rst $38                                          ; $6f87: $ff
	cpl                                              ; $6f88: $2f
	rst $38                                          ; $6f89: $ff
	db $fd                                           ; $6f8a: $fd
	ldh a, [c]                                       ; $6f8b: $f2
	db $e4                                           ; $6f8c: $e4
	ldh [c], a                                       ; $6f8d: $e2
	push hl                                          ; $6f8e: $e5
	cp $9e                                           ; $6f8f: $fe $9e
	inc bc                                           ; $6f91: $03
	ld a, b                                          ; $6f92: $78
	sub l                                            ; $6f93: $95
	ld a, l                                          ; $6f94: $7d
	ld e, d                                          ; $6f95: $5a
	ld a, h                                          ; $6f96: $7c
	or b                                             ; $6f97: $b0
	sbc h                                            ; $6f98: $9c
	ld hl, sp+$3e                                    ; $6f99: $f8 $3e
	ld c, [hl]                                       ; $6f9b: $4e
	ld a, c                                          ; $6f9c: $79
	ld [de], a                                       ; $6f9d: $12
	ld a, c                                          ; $6f9e: $79
	add b                                            ; $6f9f: $80
	sbc h                                            ; $6fa0: $9c
	pop hl                                           ; $6fa1: $e1
	pop af                                           ; $6fa2: $f1
	xor $de                                          ; $6fa3: $ee $de
	rst $38                                          ; $6fa5: $ff

jr_046_6fa6:
	sbc b                                            ; $6fa6: $98
	rst AddAOntoHL                                          ; $6fa7: $ef
	rst GetHLinHL                                          ; $6fa8: $cf
	xor $f1                                          ; $6fa9: $ee $f1
	ldh [rSB], a                                     ; $6fab: $e0 $01
	ld [hl+], a                                      ; $6fad: $22
	call c, $94c0                                    ; $6fae: $dc $c0 $94
	rst SubAFromHL                                          ; $6fb1: $d7
	rst $38                                          ; $6fb2: $ff
	rst $38                                          ; $6fb3: $ff
	inc bc                                           ; $6fb4: $03
	rst SubAFromBC                                          ; $6fb5: $e7
	di                                               ; $6fb6: $f3
	ei                                               ; $6fb7: $fb
	rrca                                             ; $6fb8: $0f
	add c                                            ; $6fb9: $81
	db $10                                           ; $6fba: $10
	and b                                            ; $6fbb: $a0
	db $fc                                           ; $6fbc: $fc
	sub [hl]                                         ; $6fbd: $96
	ld a, $ff                                        ; $6fbe: $3e $ff
	rst $38                                          ; $6fc0: $ff
	db $fd                                           ; $6fc1: $fd
	ld sp, hl                                        ; $6fc2: $f9
	db $fd                                           ; $6fc3: $fd

jr_046_6fc4:
	rst $38                                          ; $6fc4: $ff
	rst AddAOntoHL                                          ; $6fc5: $ef
	pop bc                                           ; $6fc6: $c1
	db $dd                                           ; $6fc7: $dd
	ld bc, $f077                                     ; $6fc8: $01 $77 $f0
	rst SubAFromDE                                          ; $6fcb: $df
	cp $99                                           ; $6fcc: $fe $99
	sub b                                            ; $6fce: $90
	ldh a, [$e0]                                     ; $6fcf: $f0 $e0
	rst $38                                          ; $6fd1: $ff
	rst AddAOntoHL                                          ; $6fd2: $ef
	xor $79                                          ; $6fd3: $ee $79
	sub a                                            ; $6fd5: $97
	ld a, h                                          ; $6fd6: $7c
	ld c, a                                          ; $6fd7: $4f
	sub d                                            ; $6fd8: $92
	ret nz                                           ; $6fd9: $c0

	ret nc                                           ; $6fda: $d0

	pop de                                           ; $6fdb: $d1
	rst $38                                          ; $6fdc: $ff
	rst $38                                          ; $6fdd: $ff
	ld l, a                                          ; $6fde: $6f
	ld l, c                                          ; $6fdf: $69
	ld h, c                                          ; $6fe0: $61
	rst $38                                          ; $6fe1: $ff
	rst FarCall                                          ; $6fe2: $f7
	dec bc                                           ; $6fe3: $0b
	rlca                                             ; $6fe4: $07
	dec bc                                           ; $6fe5: $0b
	sbc $40                                          ; $6fe6: $de $40
	sbc l                                            ; $6fe8: $9d
	jr nz, jr_046_7007                               ; $6fe9: $20 $1c

	sbc $fc                                          ; $6feb: $de $fc
	sbc l                                            ; $6fed: $9d
	db $e4                                           ; $6fee: $e4
	add a                                            ; $6fef: $87
	sbc $ff                                          ; $6ff0: $de $ff
	sbc h                                            ; $6ff2: $9c
	jp $0707                                         ; $6ff3: $c3 $07 $07


	ld sp, hl                                        ; $6ff6: $f9
	sbc b                                            ; $6ff7: $98
	sbc b                                            ; $6ff8: $98
	call c, $fffc                                    ; $6ff9: $dc $fc $ff
	or h                                             ; $6ffc: $b4
	rlca                                             ; $6ffd: $07
	add d                                            ; $6ffe: $82
	ld l, e                                          ; $6fff: $6b
	ldh a, [$7f]                                     ; $7000: $f0 $7f
	ld sp, hl                                        ; $7002: $f9
	sub a                                            ; $7003: $97
	ld h, b                                          ; $7004: $60
	ld b, [hl]                                       ; $7005: $46
	add h                                            ; $7006: $84

jr_046_7007:
	db $e3                                           ; $7007: $e3
	ld [hl], a                                       ; $7008: $77
	cp $ae                                           ; $7009: $fe $ae
	cp $fc                                           ; $700b: $fe $fc
	sub h                                            ; $700d: $94
	ld de, $01f1                                     ; $700e: $11 $f1 $01
	ld b, $7f                                        ; $7011: $06 $7f
	ei                                               ; $7013: $fb
	rst $38                                          ; $7014: $ff
	ld a, [$0040]                                    ; $7015: $fa $40 $00
	sub [hl]                                         ; $7018: $96
	db $fd                                           ; $7019: $fd
	sub a                                            ; $701a: $97
	rrca                                             ; $701b: $0f
	cp a                                             ; $701c: $bf
	rst $38                                          ; $701d: $ff
	db $ed                                           ; $701e: $ed
	inc b                                            ; $701f: $04
	adc a                                            ; $7020: $8f
	rrca                                             ; $7021: $0f
	rst $38                                          ; $7022: $ff
	ld a, e                                          ; $7023: $7b
	ld h, $9e                                        ; $7024: $26 $9e
	ld de, $ddfd                                     ; $7026: $11 $fd $dd
	rst $38                                          ; $7029: $ff
	sbc [hl]                                         ; $702a: $9e
	inc e                                            ; $702b: $1c
	ld a, e                                          ; $702c: $7b
	ld a, l                                          ; $702d: $7d
	ld a, b                                          ; $702e: $78
	jp z, $e89e                                      ; $702f: $ca $9e $e8

	cp $9e                                           ; $7032: $fe $9e
	ld [bc], a                                       ; $7034: $02
	db $dd                                           ; $7035: $dd
	rst $38                                          ; $7036: $ff
	adc h                                            ; $7037: $8c
	db $10                                           ; $7038: $10
	jr nc, jr_046_70b4                               ; $7039: $30 $79

	ld [hl], c                                       ; $703b: $71
	ld [hl], b                                       ; $703c: $70
	jr nc, jr_046_703f                               ; $703d: $30 $00

jr_046_703f:
	jr nz, jr_046_7071                               ; $703f: $20 $30

	ld [hl], b                                       ; $7041: $70
	ld [hl], b                                       ; $7042: $70
	ld a, [hl]                                       ; $7043: $7e
	ld a, a                                          ; $7044: $7f
	ccf                                              ; $7045: $3f
	rst $38                                          ; $7046: $ff
	rst $38                                          ; $7047: $ff
	ret nz                                           ; $7048: $c0

	ret nz                                           ; $7049: $c0

	rst $38                                          ; $704a: $ff
	ld a, c                                          ; $704b: $79
	ldh [c], a                                       ; $704c: $e2
	halt                                             ; $704d: $76
	db $db                                           ; $704e: $db
	sbc l                                            ; $704f: $9d
	nop                                              ; $7050: $00
	daa                                              ; $7051: $27
	db $dd                                           ; $7052: $dd
	rst $38                                          ; $7053: $ff
	sbc e                                            ; $7054: $9b
	ld e, $8f                                        ; $7055: $1e $8f
	rst $38                                          ; $7057: $ff
	rrca                                             ; $7058: $0f
	ld a, [$f09e]                                    ; $7059: $fa $9e $f0
	db $dd                                           ; $705c: $dd
	rst $38                                          ; $705d: $ff
	sbc l                                            ; $705e: $9d
	nop                                              ; $705f: $00
	db $e3                                           ; $7060: $e3
	ld a, e                                          ; $7061: $7b
	db $fc                                           ; $7062: $fc
	ld a, [$ffdd]                                    ; $7063: $fa $dd $ff
	sub d                                            ; $7066: $92
	inc bc                                           ; $7067: $03
	rlca                                             ; $7068: $07
	rrca                                             ; $7069: $0f
	ld [bc], a                                       ; $706a: $02
	dec b                                            ; $706b: $05
	nop                                              ; $706c: $00
	nop                                              ; $706d: $00
	ld [de], a                                       ; $706e: $12
	inc bc                                           ; $706f: $03
	rla                                              ; $7070: $17

jr_046_7071:
	ld [hl], a                                       ; $7071: $77
	ld h, a                                          ; $7072: $67
	rst AddAOntoHL                                          ; $7073: $ef
	sbc $ff                                          ; $7074: $de $ff
	sub a                                            ; $7076: $97
	db $fc                                           ; $7077: $fc

jr_046_7078:
	inc a                                            ; $7078: $3c
	ld a, h                                          ; $7079: $7c
	db $fc                                           ; $707a: $fc
	ld [hl], h                                       ; $707b: $74
	and b                                            ; $707c: $a0
	jp z, $ddf7                                      ; $707d: $ca $f7 $dd

	ei                                               ; $7080: $fb
	ld [hl], e                                       ; $7081: $73
	ret nc                                           ; $7082: $d0

	cp $9e                                           ; $7083: $fe $9e
	db $10                                           ; $7085: $10
	ld a, c                                          ; $7086: $79
	sub e                                            ; $7087: $93
	reti                                             ; $7088: $d9


	rst $38                                          ; $7089: $ff
	halt                                             ; $708a: $76
	rst JumpTable                                          ; $708b: $c7
	sbc h                                            ; $708c: $9c
	add b                                            ; $708d: $80
	db $f4                                           ; $708e: $f4
	xor h                                            ; $708f: $ac
	ld d, a                                          ; $7090: $57
	ldh a, [$9a]                                     ; $7091: $f0 $9a
	nop                                              ; $7093: $00
	ld b, $00                                        ; $7094: $06 $00
	ld de, $d90b                                     ; $7096: $11 $0b $d9
	rst $38                                          ; $7099: $ff
	sbc [hl]                                         ; $709a: $9e
	inc e                                            ; $709b: $1c
	ei                                               ; $709c: $fb
	sbc [hl]                                         ; $709d: $9e
	xor b                                            ; $709e: $a8
	reti                                             ; $709f: $d9


	rst $38                                          ; $70a0: $ff
	sbc [hl]                                         ; $70a1: $9e
	ld c, c                                          ; $70a2: $49
	ld a, c                                          ; $70a3: $79
	cp $9b                                           ; $70a4: $fe $9b
	inc d                                            ; $70a6: $14
	ld c, $0f                                        ; $70a7: $0e $0f
	rla                                              ; $70a9: $17
	reti                                             ; $70aa: $d9


	rst $38                                          ; $70ab: $ff
	ld a, l                                          ; $70ac: $7d
	adc a                                            ; $70ad: $8f
	sub a                                            ; $70ae: $97
	jr nz, jr_046_70f1                               ; $70af: $20 $40

	ret nz                                           ; $70b1: $c0

	ldh [c], a                                       ; $70b2: $e2
	ret nc                                           ; $70b3: $d0

jr_046_70b4:
	ret                                              ; $70b4: $c9


	cp $fe                                           ; $70b5: $fe $fe
	db $db                                           ; $70b7: $db
	rst $38                                          ; $70b8: $ff
	ld a, l                                          ; $70b9: $7d
	inc h                                            ; $70ba: $24
	ld a, h                                          ; $70bb: $7c
	and e                                            ; $70bc: $a3
	sbc e                                            ; $70bd: $9b
	jr nz, jr_046_7078                               ; $70be: $20 $b8

	push af                                          ; $70c0: $f5
	ld [$ffd9], a                                    ; $70c1: $ea $d9 $ff
	add b                                            ; $70c4: $80
	dec b                                            ; $70c5: $05
	dec hl                                           ; $70c6: $2b
	dec e                                            ; $70c7: $1d
	and d                                            ; $70c8: $a2
	ld e, l                                          ; $70c9: $5d
	cp h                                             ; $70ca: $bc
	ld e, e                                          ; $70cb: $5b
	db $e4                                           ; $70cc: $e4
	ld a, [$ffdf]                                    ; $70cd: $fa $df $ff
	rst $38                                          ; $70d0: $ff
	cp $f8                                           ; $70d1: $fe $f8
	ldh a, [$c0]                                     ; $70d3: $f0 $c0

jr_046_70d5:
	call nc, Call_046_55ab                           ; $70d5: $d4 $ab $55
	rst $38                                          ; $70d8: $ff
	ld a, a                                          ; $70d9: $7f
	sbc $af                                          ; $70da: $de $af
	rst $38                                          ; $70dc: $ff
	jr z, jr_046_7133                                ; $70dd: $28 $54

	xor d                                            ; $70df: $aa
	nop                                              ; $70e0: $00
	add b                                            ; $70e1: $80
	ld hl, $ff50                                     ; $70e2: $21 $50 $ff
	sbc b                                            ; $70e5: $98
	db $fc                                           ; $70e6: $fc
	ld a, [hl]                                       ; $70e7: $7e
	rst $38                                          ; $70e8: $ff
	rst SubAFromDE                                          ; $70e9: $df
	xor d                                            ; $70ea: $aa
	rst $38                                          ; $70eb: $ff
	or $79                                           ; $70ec: $f6 $79
	xor b                                            ; $70ee: $a8
	ld a, a                                          ; $70ef: $7f
	ret z                                            ; $70f0: $c8

jr_046_70f1:
	sbc h                                            ; $70f1: $9c
	ld d, l                                          ; $70f2: $55
	nop                                              ; $70f3: $00
	add hl, bc                                       ; $70f4: $09
	cp $df                                           ; $70f5: $fe $df
	db $fc                                           ; $70f7: $fc
	ld a, d                                          ; $70f8: $7a
	jr jr_046_7160                                   ; $70f9: $18 $65

	ld [hl], d                                       ; $70fb: $72
	sbc d                                            ; $70fc: $9a
	and d                                            ; $70fd: $a2
	ccf                                              ; $70fe: $3f
	rrca                                             ; $70ff: $0f
	dec b                                            ; $7100: $05
	add b                                            ; $7101: $80
	ld a, e                                          ; $7102: $7b
	ldh a, [$9e]                                     ; $7103: $f0 $9e
	ld e, l                                          ; $7105: $5d
	ld l, e                                          ; $7106: $6b
	ldh a, [$9c]                                     ; $7107: $f0 $9c
	ld d, $5c                                        ; $7109: $16 $5c
	push af                                          ; $710b: $f5
	ld a, e                                          ; $710c: $7b
	dec hl                                           ; $710d: $2b
	sbc d                                            ; $710e: $9a
	db $fc                                           ; $710f: $fc
	nop                                              ; $7110: $00
	ld sp, hl                                        ; $7111: $f9
	cp a                                             ; $7112: $bf
	ld a, [bc]                                       ; $7113: $0a
	db $fc                                           ; $7114: $fc
	sbc d                                            ; $7115: $9a
	rst SubAFromDE                                          ; $7116: $df
	ld [hl+], a                                      ; $7117: $22
	ld e, a                                          ; $7118: $5f
	or b                                             ; $7119: $b0
	ld a, e                                          ; $711a: $7b
	ld a, d                                          ; $711b: $7a
	add d                                            ; $711c: $82
	ld a, [hl]                                       ; $711d: $7e
	ld c, d                                          ; $711e: $4a
	sbc h                                            ; $711f: $9c
	cp a                                             ; $7120: $bf
	rrca                                             ; $7121: $0f
	add h                                            ; $7122: $84
	db $fd                                           ; $7123: $fd
	sbc e                                            ; $7124: $9b
	ld [bc], a                                       ; $7125: $02
	rst JumpTable                                          ; $7126: $c7
	cp a                                             ; $7127: $bf
	ld c, $6a                                        ; $7128: $0e $6a
	db $f4                                           ; $712a: $f4
	ld [hl], c                                       ; $712b: $71
	ld l, e                                          ; $712c: $6b
	sbc c                                            ; $712d: $99

jr_046_712e:
	db $10                                           ; $712e: $10
	jr c, jr_046_712e                                ; $712f: $38 $fd

	rst $38                                          ; $7131: $ff
	dec sp                                           ; $7132: $3b

jr_046_7133:
	inc bc                                           ; $7133: $03
	ld l, a                                          ; $7134: $6f
	jr nz, jr_046_70d5                               ; $7135: $20 $9e

	rra                                              ; $7137: $1f
	db $fd                                           ; $7138: $fd
	sbc c                                            ; $7139: $99
	adc b                                            ; $713a: $88
	ld e, b                                          ; $713b: $58
	cp h                                             ; $713c: $bc
	rst $38                                          ; $713d: $ff
	rst AddAOntoHL                                          ; $713e: $ef
	dec b                                            ; $713f: $05
	db $db                                           ; $7140: $db
	rst $38                                          ; $7141: $ff
	ld a, e                                          ; $7142: $7b
	rst AddAOntoHL                                          ; $7143: $ef
	ld a, h                                          ; $7144: $7c
	inc h                                            ; $7145: $24
	sbc h                                            ; $7146: $9c
	ld bc, $8f05                                     ; $7147: $01 $05 $8f
	rst SubAFromHL                                          ; $714a: $d7
	rst $38                                          ; $714b: $ff
	sbc l                                            ; $714c: $9d
	dec b                                            ; $714d: $05
	ld [bc], a                                       ; $714e: $02
	ld l, l                                          ; $714f: $6d
	push af                                          ; $7150: $f5
	reti                                             ; $7151: $d9


	rst $38                                          ; $7152: $ff
	sub a                                            ; $7153: $97
	dec hl                                           ; $7154: $2b
	inc c                                            ; $7155: $0c
	nop                                              ; $7156: $00
	ret nz                                           ; $7157: $c0

	ld b, b                                          ; $7158: $40
	ld bc, $4220                                     ; $7159: $01 $20 $42
	reti                                             ; $715c: $d9


	rst $38                                          ; $715d: $ff
	sbc b                                            ; $715e: $98
	xor e                                            ; $715f: $ab

jr_046_7160:
	rra                                              ; $7160: $1f
	cpl                                              ; $7161: $2f
	ld [hl], d                                       ; $7162: $72
	ldh [$d8], a                                     ; $7163: $e0 $d8
	cp c                                             ; $7165: $b9
	ret c                                            ; $7166: $d8

	rst $38                                          ; $7167: $ff
	sbc b                                            ; $7168: $98
	ld [bc], a                                       ; $7169: $02
	add c                                            ; $716a: $81
	ld b, e                                          ; $716b: $43
	and [hl]                                         ; $716c: $a6
	ld d, l                                          ; $716d: $55
	ld a, [$63bd]                                    ; $716e: $fa $bd $63
	db $10                                           ; $7171: $10
	sbc c                                            ; $7172: $99
	ld de, $f371                                     ; $7173: $11 $71 $f3
	cp a                                             ; $7176: $bf
	ld sp, hl                                        ; $7177: $f9
	or a                                             ; $7178: $b7
	ld [hl], l                                       ; $7179: $75
	ld e, d                                          ; $717a: $5a
	db $db                                           ; $717b: $db
	rst $38                                          ; $717c: $ff
	sbc h                                            ; $717d: $9c
	db $dd                                           ; $717e: $dd
	cp $fe                                           ; $717f: $fe $fe
	ld a, c                                          ; $7181: $79
	sbc d                                            ; $7182: $9a
	rst SubAFromHL                                          ; $7183: $d7
	rst $38                                          ; $7184: $ff
	sub a                                            ; $7185: $97
	ld a, [bc]                                       ; $7186: $0a
	add h                                            ; $7187: $84
	ld b, d                                          ; $7188: $42
	push hl                                          ; $7189: $e5
	ld l, d                                          ; $718a: $6a
	db $fd                                           ; $718b: $fd
	ei                                               ; $718c: $fb
	and b                                            ; $718d: $a0
	db $db                                           ; $718e: $db
	rst $38                                          ; $718f: $ff
	sub l                                            ; $7190: $95
	db $fc                                           ; $7191: $fc
	ret nz                                           ; $7192: $c0

	rst FarCall                                          ; $7193: $f7
	ccf                                              ; $7194: $3f
	rst $38                                          ; $7195: $ff
	ld a, [hl]                                       ; $7196: $7e
	and $5f                                          ; $7197: $e6 $5f
	ldh a, [$80]                                     ; $7199: $f0 $80
	halt                                             ; $719b: $76
	ld h, e                                          ; $719c: $63
	add b                                            ; $719d: $80
	ld hl, sp-$60                                    ; $719e: $f8 $a0
	rrca                                             ; $71a0: $0f
	ld a, a                                          ; $71a1: $7f
	db $fc                                           ; $71a2: $fc
	or $ac                                           ; $71a3: $f6 $ac
	ret                                              ; $71a5: $c9


	ld b, b                                          ; $71a6: $40
	nop                                              ; $71a7: $00
	dec c                                            ; $71a8: $0d
	nop                                              ; $71a9: $00
	rst $38                                          ; $71aa: $ff
	ld hl, sp-$2d                                    ; $71ab: $f8 $d3
	ld b, $3f                                        ; $71ad: $06 $3f
	rst $38                                          ; $71af: $ff
	ldh a, [c]                                       ; $71b0: $f2
	rst $38                                          ; $71b1: $ff
	push af                                          ; $71b2: $f5
	adc d                                            ; $71b3: $8a
	dec d                                            ; $71b4: $15
	xor d                                            ; $71b5: $aa
	push de                                          ; $71b6: $d5
	cpl                                              ; $71b7: $2f
	ld d, l                                          ; $71b8: $55
	ld a, [bc]                                       ; $71b9: $0a
	ld a, [bc]                                       ; $71ba: $0a
	ld [hl], l                                       ; $71bb: $75
	ld [$5581], a                                    ; $71bc: $ea $81 $55
	ld a, [hl+]                                      ; $71bf: $2a
	ret nc                                           ; $71c0: $d0

	xor d                                            ; $71c1: $aa
	push af                                          ; $71c2: $f5
	ld d, l                                          ; $71c3: $55
	xor a                                            ; $71c4: $af
	ld e, h                                          ; $71c5: $5c
	cp e                                             ; $71c6: $bb

Jump_046_71c7:
	call $05fa                                       ; $71c7: $cd $fa $05
	xor d                                            ; $71ca: $aa
	xor d                                            ; $71cb: $aa
	ld d, b                                          ; $71cc: $50
	and b                                            ; $71cd: $a0
	ld b, b                                          ; $71ce: $40
	ld [bc], a                                       ; $71cf: $02
	dec b                                            ; $71d0: $05
	ld a, [$5b55]                                    ; $71d1: $fa $55 $5b
	rst $38                                          ; $71d4: $ff
	inc a                                            ; $71d5: $3c
	db $eb                                           ; $71d6: $eb
	ld d, l                                          ; $71d7: $55
	xor d                                            ; $71d8: $aa
	ld d, l                                          ; $71d9: $55
	add b                                            ; $71da: $80
	and h                                            ; $71db: $a4
	ld a, d                                          ; $71dc: $7a
	ld l, c                                          ; $71dd: $69
	ld a, a                                          ; $71de: $7f
	ld sp, hl                                        ; $71df: $f9
	sub l                                            ; $71e0: $95
	xor d                                            ; $71e1: $aa
	ld a, a                                          ; $71e2: $7f
	cp $f0                                           ; $71e3: $fe $f0
	nop                                              ; $71e5: $00
	rlca                                             ; $71e6: $07
	ld a, l                                          ; $71e7: $7d
	xor d                                            ; $71e8: $aa
	ld d, l                                          ; $71e9: $55
	ld a, [hl+]                                      ; $71ea: $2a

jr_046_71eb:
	db $fd                                           ; $71eb: $fd
	sbc e                                            ; $71ec: $9b
	add d                                            ; $71ed: $82
	ld d, l                                          ; $71ee: $55
	xor d                                            ; $71ef: $aa
	push de                                          ; $71f0: $d5
	cp $9a                                           ; $71f1: $fe $9a
	add b                                            ; $71f3: $80
	ld a, a                                          ; $71f4: $7f
	xor d                                            ; $71f5: $aa
	ld d, h                                          ; $71f6: $54
	ldh [c], a                                       ; $71f7: $e2
	db $fd                                           ; $71f8: $fd
	sbc e                                            ; $71f9: $9b
	add b                                            ; $71fa: $80
	ld d, l                                          ; $71fb: $55
	xor e                                            ; $71fc: $ab
	dec e                                            ; $71fd: $1d
	ld [hl], b                                       ; $71fe: $70
	ret z                                            ; $71ff: $c8

	sbc h                                            ; $7200: $9c
	and d                                            ; $7201: $a2
	ld c, a                                          ; $7202: $4f
	adc [hl]                                         ; $7203: $8e
	db $fc                                           ; $7204: $fc
	sub h                                            ; $7205: $94
	ld e, l                                          ; $7206: $5d
	or b                                             ; $7207: $b0
	ld [hl], c                                       ; $7208: $71
	nop                                              ; $7209: $00
	inc bc                                           ; $720a: $03
	inc bc                                           ; $720b: $03
	ld bc, $a000                                     ; $720c: $01 $00 $a0
	ld a, a                                          ; $720f: $7f
	xor b                                            ; $7210: $a8
	db $fc                                           ; $7211: $fc
	ld a, l                                          ; $7212: $7d
	add sp, -$65                                     ; $7213: $e8 $9b
	ld d, a                                          ; $7215: $57
	db $10                                           ; $7216: $10
	sub b                                            ; $7217: $90
	pop hl                                           ; $7218: $e1
	ld a, d                                          ; $7219: $7a
	ld [$f09d], a                                    ; $721a: $ea $9d $f0
	ld e, b                                          ; $721d: $58
	ld h, h                                          ; $721e: $64
	ld d, c                                          ; $721f: $51
	ld a, [hl]                                       ; $7220: $7e
	or b                                             ; $7221: $b0
	sbc e                                            ; $7222: $9b
	sbc $ff                                          ; $7223: $de $ff
	pop hl                                           ; $7225: $e1
	inc sp                                           ; $7226: $33
	rst FarCall                                          ; $7227: $f7
	sbc c                                            ; $7228: $99
	ld a, [hl]                                       ; $7229: $7e
	ld e, $ff                                        ; $722a: $1e $ff
	rst $38                                          ; $722c: $ff
	ldh a, [$f0]                                     ; $722d: $f0 $f0
	cp $72                                           ; $722f: $fe $72
	and e                                            ; $7231: $a3
	rst $38                                          ; $7232: $ff
	sub h                                            ; $7233: $94
	rst AddAOntoHL                                          ; $7234: $ef
	ld a, [$fad5]                                    ; $7235: $fa $d5 $fa
	inc bc                                           ; $7238: $03
	ld a, a                                          ; $7239: $7f
	ld a, a                                          ; $723a: $7f
	rst GetHLinHL                                          ; $723b: $cf
	rra                                              ; $723c: $1f
	dec b                                            ; $723d: $05
	ld a, [hl+]                                      ; $723e: $2a
	ld a, c                                          ; $723f: $79
	adc c                                            ; $7240: $89
	ld a, c                                          ; $7241: $79
	ld d, [hl]                                       ; $7242: $56
	sbc d                                            ; $7243: $9a
	db $10                                           ; $7244: $10
	add hl, hl                                       ; $7245: $29
	rlca                                             ; $7246: $07
	ld c, e                                          ; $7247: $4b
	add a                                            ; $7248: $87
	ld h, c                                          ; $7249: $61
	pop hl                                           ; $724a: $e1
	ld a, [hl]                                       ; $724b: $7e
	jr c, jr_046_71eb                                ; $724c: $38 $9d

	or b                                             ; $724e: $b0
	ld a, h                                          ; $724f: $7c
	call nc, $97ff                                   ; $7250: $d4 $ff $97
	ccf                                              ; $7253: $3f
	rst AddAOntoHL                                          ; $7254: $ef
	ld e, a                                          ; $7255: $5f
	rst GetHLinHL                                          ; $7256: $cf
	rst SubAFromDE                                          ; $7257: $df
	rst AddAOntoHL                                          ; $7258: $ef
	rst $38                                          ; $7259: $ff
	call z, $ffda                                    ; $725a: $cc $da $ff
	ld a, h                                          ; $725d: $7c
	ld d, d                                          ; $725e: $52
	ld a, b                                          ; $725f: $78
	ld e, [hl]                                       ; $7260: $5e
	sbc l                                            ; $7261: $9d
	db $fc                                           ; $7262: $fc
	jp $1779                                         ; $7263: $c3 $79 $17


	ld l, [hl]                                       ; $7266: $6e
	pop af                                           ; $7267: $f1
	ld a, d                                          ; $7268: $7a
	adc b                                            ; $7269: $88
	sbc d                                            ; $726a: $9a
	db $fc                                           ; $726b: $fc
	rst JumpTable                                          ; $726c: $c7
	ld a, a                                          ; $726d: $7f
	cp $e0                                           ; $726e: $fe $e0
	halt                                             ; $7270: $76
	add b                                            ; $7271: $80
	sbc b                                            ; $7272: $98
	ld hl, sp-$80                                    ; $7273: $f8 $80
	ld bc, $ff1f                                     ; $7275: $01 $1f $ff
	ld sp, hl                                        ; $7278: $f9
	rst GetHLinHL                                          ; $7279: $cf
	ld [hl], a                                       ; $727a: $77
	ld [$4c7b], a                                    ; $727b: $ea $7b $4c
	ld a, a                                          ; $727e: $7f
	adc h                                            ; $727f: $8c
	sbc [hl]                                         ; $7280: $9e
	inc bc                                           ; $7281: $03
	ld [hl], a                                       ; $7282: $77
	jp c, $e57b                                      ; $7283: $da $7b $e5

	db $fc                                           ; $7286: $fc
	ld a, e                                          ; $7287: $7b
	push hl                                          ; $7288: $e5
	ld l, c                                          ; $7289: $69
	ld d, b                                          ; $728a: $50
	ld l, h                                          ; $728b: $6c
	add l                                            ; $728c: $85
	ld a, e                                          ; $728d: $7b
	pop de                                           ; $728e: $d1
	ld l, e                                          ; $728f: $6b
	ldh a, [$79]                                     ; $7290: $f0 $79
	ld e, a                                          ; $7292: $5f
	ld [hl], e                                       ; $7293: $73
	ldh a, [$6e]                                     ; $7294: $f0 $6e
	ld a, h                                          ; $7296: $7c
	cp $71                                           ; $7297: $fe $71
	dec a                                            ; $7299: $3d
	sbc $ff                                          ; $729a: $de $ff
	ld a, b                                          ; $729c: $78
	sub $4c                                          ; $729d: $d6 $4c
	call nc, $f073                                   ; $729f: $d4 $73 $f0
	sbc [hl]                                         ; $72a2: $9e
	ld [bc], a                                       ; $72a3: $02
	ld l, e                                          ; $72a4: $6b
	ldh a, [$7d]                                     ; $72a5: $f0 $7d
	jp c, $f06f                                      ; $72a7: $da $6f $f0

	sbc [hl]                                         ; $72aa: $9e
	xor d                                            ; $72ab: $aa
	ld [hl], b                                       ; $72ac: $70
	ld h, l                                          ; $72ad: $65
	ld a, a                                          ; $72ae: $7f
	ldh a, [$9d]                                     ; $72af: $f0 $9d
	ld d, l                                          ; $72b1: $55
	xor $dc                                          ; $72b2: $ee $dc
	rst $38                                          ; $72b4: $ff
	sbc h                                            ; $72b5: $9c
	ld b, b                                          ; $72b6: $40
	and [hl]                                         ; $72b7: $a6
	dec c                                            ; $72b8: $0d
	db $fc                                           ; $72b9: $fc
	sbc h                                            ; $72ba: $9c
	cp a                                             ; $72bb: $bf
	ld e, c                                          ; $72bc: $59
	ldh a, [c]                                       ; $72bd: $f2
	call c, $80ff                                    ; $72be: $dc $ff $80
	ld d, b                                          ; $72c1: $50
	add b                                            ; $72c2: $80
	ret nz                                           ; $72c3: $c0

	ld [bc], a                                       ; $72c4: $02
	ld d, l                                          ; $72c5: $55
	jr nz, jr_046_72cb                               ; $72c6: $20 $03

	nop                                              ; $72c8: $00
	xor a                                            ; $72c9: $af
	ld a, a                                          ; $72ca: $7f

jr_046_72cb:
	ccf                                              ; $72cb: $3f
	db $fd                                           ; $72cc: $fd
	xor d                                            ; $72cd: $aa
	rst SubAFromDE                                          ; $72ce: $df
	db $fc                                           ; $72cf: $fc
	rst $38                                          ; $72d0: $ff
	ld [bc], a                                       ; $72d1: $02
	ld a, [bc]                                       ; $72d2: $0a
	ld d, l                                          ; $72d3: $55
	cp $55                                           ; $72d4: $fe $55
	add sp, $70                                      ; $72d6: $e8 $70
	nop                                              ; $72d8: $00
	db $fd                                           ; $72d9: $fd
	push af                                          ; $72da: $f5
	xor d                                            ; $72db: $aa
	ld bc, $17aa                                     ; $72dc: $01 $aa $17
	adc a                                            ; $72df: $8f
	add b                                            ; $72e0: $80
	rst $38                                          ; $72e1: $ff
	xor a                                            ; $72e2: $af
	dec d                                            ; $72e3: $15
	nop                                              ; $72e4: $00
	xor b                                            ; $72e5: $a8
	ld d, h                                          ; $72e6: $54
	ld bc, $0f00                                     ; $72e7: $01 $00 $0f
	ld d, b                                          ; $72ea: $50
	ld [$57ff], a                                    ; $72eb: $ea $ff $57
	xor e                                            ; $72ee: $ab
	cp $ff                                           ; $72ef: $fe $ff
	ldh a, [$fc]                                     ; $72f1: $f0 $fc
	ld d, b                                          ; $72f3: $50
	cp b                                             ; $72f4: $b8
	ld d, a                                          ; $72f5: $57
	ld a, [$ca35]                                    ; $72f6: $fa $35 $ca
	add b                                            ; $72f9: $80
	nop                                              ; $72fa: $00
	and b                                            ; $72fb: $a0
	ld b, b                                          ; $72fc: $40
	xor b                                            ; $72fd: $a8
	dec b                                            ; $72fe: $05
	jp z, $359d                                      ; $72ff: $ca $9d $35

	ld a, a                                          ; $7302: $7f
	db $fd                                           ; $7303: $fd
	rst SubAFromDE                                          ; $7304: $df
	ldh [$9e], a                                     ; $7305: $e0 $9e
	ld [$9efa], a                                    ; $7307: $ea $fa $9e
	dec d                                            ; $730a: $15
	ld a, e                                          ; $730b: $7b
	ld [hl], b                                       ; $730c: $70
	ld a, h                                          ; $730d: $7c
	ld c, [hl]                                       ; $730e: $4e
	ld a, d                                          ; $730f: $7a
	cp d                                             ; $7310: $ba
	ld [hl], e                                       ; $7311: $73
	add sp, $79                                      ; $7312: $e8 $79
	ld d, e                                          ; $7314: $53
	ld a, l                                          ; $7315: $7d
	dec d                                            ; $7316: $15
	ld a, a                                          ; $7317: $7f
	ld de, $e29e                                     ; $7318: $11 $9e $e2
	ld a, e                                          ; $731b: $7b
	jr jr_046_7397                                   ; $731c: $18 $79

	dec de                                           ; $731e: $1b
	ld a, a                                          ; $731f: $7f
	ld l, [hl]                                       ; $7320: $6e
	ld a, e                                          ; $7321: $7b
	ld [$0b91], sp                                   ; $7322: $08 $91 $0b
	db $fd                                           ; $7325: $fd
	rst JumpTable                                          ; $7326: $c7
	ld e, a                                          ; $7327: $5f

Call_046_7328:
	ld [$e7fc], a                                    ; $7328: $ea $fc $e7
	ld [$fe80], sp                                   ; $732b: $08 $80 $fe
	ld hl, sp-$60                                    ; $732e: $f8 $a0
	dec d                                            ; $7330: $15
	inc bc                                           ; $7331: $03
	ld a, e                                          ; $7332: $7b
	inc c                                            ; $7333: $0c
	sbc d                                            ; $7334: $9a
	ld e, a                                          ; $7335: $5f
	rst $38                                          ; $7336: $ff
	ld hl, sp-$59                                    ; $7337: $f8 $a7
	ld [hl], b                                       ; $7339: $70
	ld a, e                                          ; $733a: $7b
	dec e                                            ; $733b: $1d
	ld a, [hl]                                       ; $733c: $7e
	ld h, a                                          ; $733d: $67
	sbc l                                            ; $733e: $9d
	rlca                                             ; $733f: $07
	ld e, a                                          ; $7340: $5f
	db $dd                                           ; $7341: $dd
	rst $38                                          ; $7342: $ff
	sbc h                                            ; $7343: $9c
	ld hl, sp-$78                                    ; $7344: $f8 $88
	ld b, b                                          ; $7346: $40
	db $fc                                           ; $7347: $fc
	sbc [hl]                                         ; $7348: $9e
	rlca                                             ; $7349: $07
	ld l, c                                          ; $734a: $69
	adc l                                            ; $734b: $8d
	ld [hl], e                                       ; $734c: $73
	ld [bc], a                                       ; $734d: $02
	sbc l                                            ; $734e: $9d
	ld b, $02                                        ; $734f: $06 $02
	ld l, a                                          ; $7351: $6f
	jr nz, @-$62                                     ; $7352: $20 $9c

	ld sp, hl                                        ; $7354: $f9
	db $fd                                           ; $7355: $fd
	rst $38                                          ; $7356: $ff
	ld [hl], d                                       ; $7357: $72
	ld e, b                                          ; $7358: $58
	sbc e                                            ; $7359: $9b
	ld e, $18                                        ; $735a: $1e $18
	rlca                                             ; $735c: $07
	rst $38                                          ; $735d: $ff
	ld [hl], h                                       ; $735e: $74
	ld h, b                                          ; $735f: $60
	sbc c                                            ; $7360: $99
	pop hl                                           ; $7361: $e1
	rst SubAFromBC                                          ; $7362: $e7
	ld hl, sp+$4f                                    ; $7363: $f8 $4f
	db $fc                                           ; $7365: $fc
	inc bc                                           ; $7366: $03
	halt                                             ; $7367: $76
	ld e, d                                          ; $7368: $5a
	sbc e                                            ; $7369: $9b
	db $fc                                           ; $736a: $fc
	or b                                             ; $736b: $b0
	nop                                              ; $736c: $00
	db $fc                                           ; $736d: $fc
	sbc $ff                                          ; $736e: $de $ff
	sbc d                                            ; $7370: $9a
	rst FarCall                                          ; $7371: $f7
	inc bc                                           ; $7372: $03
	ldh [$80], a                                     ; $7373: $e0 $80
	inc bc                                           ; $7375: $03
	ld [hl], a                                       ; $7376: $77
	rst AddAOntoHL                                          ; $7377: $ef
	sbc h                                            ; $7378: $9c
	nop                                              ; $7379: $00

Call_046_737a:
	rra                                              ; $737a: $1f
	ld a, a                                          ; $737b: $7f
	ld a, b                                          ; $737c: $78
	adc c                                            ; $737d: $89
	ld [hl], d                                       ; $737e: $72

jr_046_737f:
	ldh [$9d], a                                     ; $737f: $e0 $9d
	jr nz, jr_046_737f                               ; $7381: $20 $fc

	ld l, [hl]                                       ; $7383: $6e
	ldh [$9d], a                                     ; $7384: $e0 $9d
	rst SubAFromDE                                          ; $7386: $df
	inc bc                                           ; $7387: $03
	ld [hl-], a                                      ; $7388: $32
	ret nc                                           ; $7389: $d0

	inc bc                                           ; $738a: $03
	ldh a, [$fc]                                     ; $738b: $f0 $fc
	ld [hl], e                                       ; $738d: $73
	call nz, $2e76                                   ; $738e: $c4 $76 $2e
	scf                                              ; $7391: $37
	ldh [$9b], a                                     ; $7392: $e0 $9b
	ldh [rLCDC], a                                   ; $7394: $e0 $40
	nop                                              ; $7396: $00

jr_046_7397:
	rrca                                             ; $7397: $0f
	ld [hl], b                                       ; $7398: $70
	add d                                            ; $7399: $82
	sbc l                                            ; $739a: $9d
	cp a                                             ; $739b: $bf
	rst $38                                          ; $739c: $ff
	ld a, d                                          ; $739d: $7a
	ld a, [hl+]                                      ; $739e: $2a
	ld a, a                                          ; $739f: $7f
	cp $9d                                           ; $73a0: $fe $9d
	ld e, $01                                        ; $73a2: $1e $01
	halt                                             ; $73a4: $76
	add hl, bc                                       ; $73a5: $09
	ld a, a                                          ; $73a6: $7f
	cp $9d                                           ; $73a7: $fe $9d
	ldh [$fe], a                                     ; $73a9: $e0 $fe
	ld a, e                                          ; $73ab: $7b
	pop hl                                           ; $73ac: $e1
	sub c                                            ; $73ad: $91
	db $fc                                           ; $73ae: $fc
	rlca                                             ; $73af: $07
	nop                                              ; $73b0: $00
	pop hl                                           ; $73b1: $e1
	db $fc                                           ; $73b2: $fc
	ld a, b                                          ; $73b3: $78
	rst $38                                          ; $73b4: $ff
	rst $38                                          ; $73b5: $ff
	inc bc                                           ; $73b6: $03
	ld hl, sp-$01                                    ; $73b7: $f8 $ff
	ld e, $03                                        ; $73b9: $1e $03
	add a                                            ; $73bb: $87
	cp $9a                                           ; $73bc: $fe $9a
	call nz, $feaa                                   ; $73be: $c4 $aa $fe
	ldh a, [$b8]                                     ; $73c1: $f0 $b8
	sbc $ff                                          ; $73c3: $de $ff
	sbc l                                            ; $73c5: $9d
	dec sp                                           ; $73c6: $3b
	ld d, l                                          ; $73c7: $55
	ld a, c                                          ; $73c8: $79
	ld e, a                                          ; $73c9: $5f
	ld a, [hl]                                       ; $73ca: $7e
	ld d, c                                          ; $73cb: $51
	sbc h                                            ; $73cc: $9c
	ld e, b                                          ; $73cd: $58
	ld c, $23                                        ; $73ce: $0e $23
	ld a, d                                          ; $73d0: $7a
	add sp, -$66                                     ; $73d1: $e8 $9a
	db $fc                                           ; $73d3: $fc
	db $fd                                           ; $73d4: $fd
	and b                                            ; $73d5: $a0
	ldh a, [$dc]                                     ; $73d6: $f0 $dc
	db $fd                                           ; $73d8: $fd
	sbc l                                            ; $73d9: $9d
	cp b                                             ; $73da: $b8
	or b                                             ; $73db: $b0
	db $fc                                           ; $73dc: $fc
	sbc [hl]                                         ; $73dd: $9e
	rra                                              ; $73de: $1f
	ld l, [hl]                                       ; $73df: $6e
	ld a, [$41ff]                                    ; $73e0: $fa $ff $41
	nop                                              ; $73e3: $00
	sbc [hl]                                         ; $73e4: $9e
	ld h, h                                          ; $73e5: $64
	ret c                                            ; $73e6: $d8

	ld b, h                                          ; $73e7: $44
	sbc d                                            ; $73e8: $9a
	ld h, h                                          ; $73e9: $64
	ld [hl], h                                       ; $73ea: $74
	ld b, h                                          ; $73eb: $44
	ld b, h                                          ; $73ec: $44
	ld h, [hl]                                       ; $73ed: $66
	ld [hl], e                                       ; $73ee: $73
	pop af                                           ; $73ef: $f1
	sbc b                                            ; $73f0: $98
	ld h, a                                          ; $73f1: $67
	ld [hl], a                                       ; $73f2: $77
	ld b, h                                          ; $73f3: $44
	ld b, h                                          ; $73f4: $44
	ld b, [hl]                                       ; $73f5: $46
	ld h, [hl]                                       ; $73f6: $66
	ld h, [hl]                                       ; $73f7: $66
	ld a, e                                          ; $73f8: $7b
	ei                                               ; $73f9: $fb
	sbc [hl]                                         ; $73fa: $9e
	ld h, a                                          ; $73fb: $67
	sbc $44                                          ; $73fc: $de $44
	ld a, a                                          ; $73fe: $7f
	or $7b                                           ; $73ff: $f6 $7b
	db $eb                                           ; $7401: $eb
	ld a, e                                          ; $7402: $7b
	or $7b                                           ; $7403: $f6 $7b
	db $eb                                           ; $7405: $eb
	sbc $66                                          ; $7406: $de $66
	sbc d                                            ; $7408: $9a
	halt                                             ; $7409: $76
	ld h, h                                          ; $740a: $64
	ld [hl], a                                       ; $740b: $77
	ld h, [hl]                                       ; $740c: $66
	ld b, a                                          ; $740d: $47
	ld [hl], a                                       ; $740e: $77
	ld [$449b], a                                    ; $740f: $ea $9b $44
	ld [hl], h                                       ; $7412: $74
	ld h, h                                          ; $7413: $64
	ld [hl], a                                       ; $7414: $77
	db $d3                                           ; $7415: $d3
	ld d, l                                          ; $7416: $55
	sbc $33                                          ; $7417: $de $33
	call c, $9e55                                    ; $7419: $dc $55 $9e
	ld d, e                                          ; $741c: $53
	db $db                                           ; $741d: $db
	inc sp                                           ; $741e: $33
	ld h, a                                          ; $741f: $67
	ld hl, sp-$2b                                    ; $7420: $f8 $d5
	inc sp                                           ; $7422: $33
	and b                                            ; $7423: $a0
	ld b, $80                                        ; $7424: $06 $80
	jr nz, @-$1f                                     ; $7426: $20 $df

	ldh [$5f], a                                     ; $7428: $e0 $5f
	ld bc, $82ff                                     ; $742a: $01 $ff $82
	ld a, a                                          ; $742d: $7f
	jr nz, @+$01                                     ; $742e: $20 $ff

	nop                                              ; $7430: $00
	rst $38                                          ; $7431: $ff
	ld a, b                                          ; $7432: $78
	add a                                            ; $7433: $87
	rst $38                                          ; $7434: $ff
	nop                                              ; $7435: $00
	db $fc                                           ; $7436: $fc
	rlca                                             ; $7437: $07
	jr @-$17                                         ; $7438: $18 $e7

	or b                                             ; $743a: $b0
	rst AddAOntoHL                                          ; $743b: $ef
	ldh [$df], a                                     ; $743c: $e0 $df
	add b                                            ; $743e: $80
	rst $38                                          ; $743f: $ff
	jr nc, @+$01                                     ; $7440: $30 $ff

	jr c, @+$01                                      ; $7442: $38 $ff

	rst $38                                          ; $7444: $ff
	adc [hl]                                         ; $7445: $8e
	ccf                                              ; $7446: $3f
	ld a, a                                          ; $7447: $7f
	add b                                            ; $7448: $80
	ccf                                              ; $7449: $3f
	ret nz                                           ; $744a: $c0

	rst SubAFromDE                                          ; $744b: $df
	ldh [$ef], a                                     ; $744c: $e0 $ef
	ldh a, [$e5]                                     ; $744e: $f0 $e5
	ldh a, [$fa]                                     ; $7450: $f0 $fa
	ldh [$f5], a                                     ; $7452: $e0 $f5
	ldh a, [$75]                                     ; $7454: $f0 $75
	ld a, [$d97b]                                    ; $7456: $fa $7b $d9
	ld [hl], e                                       ; $7459: $73
	cp $9c                                           ; $745a: $fe $9c
	ld d, l                                          ; $745c: $55
	nop                                              ; $745d: $00
	xor d                                            ; $745e: $aa
	ld [hl], e                                       ; $745f: $73
	db $fc                                           ; $7460: $fc
	ld [hl], a                                       ; $7461: $77
	db $f4                                           ; $7462: $f4
	sbc [hl]                                         ; $7463: $9e
	push de                                          ; $7464: $d5
	ld l, e                                          ; $7465: $6b
	db $f4                                           ; $7466: $f4
	ld [hl], a                                       ; $7467: $77
	db $fc                                           ; $7468: $fc
	ld d, a                                          ; $7469: $57
	db $f4                                           ; $746a: $f4
	ld e, a                                          ; $746b: $5f
	db $fc                                           ; $746c: $fc
	sbc h                                            ; $746d: $9c
	xor a                                            ; $746e: $af
	nop                                              ; $746f: $00
	ld d, a                                          ; $7470: $57
	ld d, e                                          ; $7471: $53
	ldh a, [$9e]                                     ; $7472: $f0 $9e
	ei                                               ; $7474: $fb
	ld a, e                                          ; $7475: $7b
	jp z, $bf9e                                      ; $7476: $ca $9e $bf

	ld h, e                                          ; $7479: $63
	db $e4                                           ; $747a: $e4
	sbc h                                            ; $747b: $9c
	ld a, d                                          ; $747c: $7a
	nop                                              ; $747d: $00
	db $fd                                           ; $747e: $fd
	ld h, e                                          ; $747f: $63
	xor h                                            ; $7480: $ac
	sbc [hl]                                         ; $7481: $9e
	ld a, a                                          ; $7482: $7f
	ld [hl], e                                       ; $7483: $73
	and $7f                                          ; $7484: $e6 $7f
	jp nc, $f067                                     ; $7486: $d2 $67 $f0

	ld h, a                                          ; $7489: $67
	sub b                                            ; $748a: $90
	ld l, a                                          ; $748b: $6f
	cp $03                                           ; $748c: $fe $03
	ldh a, [rHDMA3]                                  ; $748e: $f0 $53
	ldh a, [c]                                       ; $7490: $f2
	sbc [hl]                                         ; $7491: $9e
	ld e, a                                          ; $7492: $5f
	ld d, e                                          ; $7493: $53
	ldh a, [$9e]                                     ; $7494: $f0 $9e
	cp $63                                           ; $7496: $fe $63
	ldh [$7f], a                                     ; $7498: $e0 $7f
	sub d                                            ; $749a: $92
	sbc h                                            ; $749b: $9c
	ld a, [$f500]                                    ; $749c: $fa $00 $f5
	ld a, e                                          ; $749f: $7b
	db $f4                                           ; $74a0: $f4
	sbc [hl]                                         ; $74a1: $9e
	dec b                                            ; $74a2: $05
	ld [hl], e                                       ; $74a3: $73
	ldh a, [$6f]                                     ; $74a4: $f0 $6f
	ld a, b                                          ; $74a6: $78
	sbc [hl]                                         ; $74a7: $9e
	ld d, h                                          ; $74a8: $54
	ld l, e                                          ; $74a9: $6b
	ld h, h                                          ; $74aa: $64
	ld a, a                                          ; $74ab: $7f
	add sp, -$62                                     ; $74ac: $e8 $9e
	ld [$f47b], a                                    ; $74ae: $ea $7b $f4
	sbc h                                            ; $74b1: $9c
	jr z, jr_046_74b4                                ; $74b2: $28 $00

jr_046_74b4:
	ld bc, $f073                                     ; $74b4: $01 $73 $f0
	adc l                                            ; $74b7: $8d
	xor e                                            ; $74b8: $ab
	nop                                              ; $74b9: $00
	ld e, e                                          ; $74ba: $5b
	rlca                                             ; $74bb: $07
	and l                                            ; $74bc: $a5
	dec bc                                           ; $74bd: $0b
	inc d                                            ; $74be: $14
	inc bc                                           ; $74bf: $03
	inc l                                            ; $74c0: $2c
	inc bc                                           ; $74c1: $03
	ld d, b                                          ; $74c2: $50
	rrca                                             ; $74c3: $0f
	xor b                                            ; $74c4: $a8
	rlca                                             ; $74c5: $07
	ld e, b                                          ; $74c6: $58
	rlca                                             ; $74c7: $07
	add sp, $17                                      ; $74c8: $e8 $17
	ld [hl], a                                       ; $74ca: $77
	cp a                                             ; $74cb: $bf
	sub c                                            ; $74cc: $91
	sub c                                            ; $74cd: $91
	ld l, [hl]                                       ; $74ce: $6e
	rst SubAFromBC                                          ; $74cf: $e7
	jr @-$1d                                         ; $74d0: $18 $e1

	ld e, $ff                                        ; $74d2: $1e $ff
	nop                                              ; $74d4: $00
	rst FarCall                                          ; $74d5: $f7
	ld [$1ce3], sp                                   ; $74d6: $08 $e3 $1c
	sbc a                                            ; $74d9: $9f
	ld h, b                                          ; $74da: $60
	ld [hl], a                                       ; $74db: $77
	xor $8b                                          ; $74dc: $ee $8b
	ld d, $ef                                        ; $74de: $16 $ef
	nop                                              ; $74e0: $00
	rst $38                                          ; $74e1: $ff
	inc hl                                           ; $74e2: $23
	rst $38                                          ; $74e3: $ff
	rst $38                                          ; $74e4: $ff
	ld a, a                                          ; $74e5: $7f
	add a                                            ; $74e6: $87
	ld a, a                                          ; $74e7: $7f
	ld a, a                                          ; $74e8: $7f
	rst $38                                          ; $74e9: $ff
	ldh a, [rIE]                                     ; $74ea: $f0 $ff
	db $ec                                           ; $74ec: $ec
	ldh a, [$c7]                                     ; $74ed: $f0 $c7
	ldh [$e0], a                                     ; $74ef: $e0 $e0
	ret nz                                           ; $74f1: $c0

	ld l, a                                          ; $74f2: $6f
	cp $9a                                           ; $74f3: $fe $9a
	ld hl, sp-$01                                    ; $74f5: $f8 $ff
	ccf                                              ; $74f7: $3f
	ret nz                                           ; $74f8: $c0

	nop                                              ; $74f9: $00
	ld a, e                                          ; $74fa: $7b
	db $dd                                           ; $74fb: $dd
	ld sp, hl                                        ; $74fc: $f9
	ld a, [hl]                                       ; $74fd: $7e
	ldh [$7f], a                                     ; $74fe: $e0 $7f
	and b                                            ; $7500: $a0
	ld a, a                                          ; $7501: $7f
	sbc h                                            ; $7502: $9c
	sbc h                                            ; $7503: $9c
	ld a, [hl-]                                      ; $7504: $3a
	nop                                              ; $7505: $00
	inc e                                            ; $7506: $1c
	ld l, a                                          ; $7507: $6f
	cp $9e                                           ; $7508: $fe $9e
	ld bc, $fc6e                                     ; $750a: $01 $6e $fc
	sbc [hl]                                         ; $750d: $9e
	and b                                            ; $750e: $a0
	cp $99                                           ; $750f: $fe $99
	add b                                            ; $7511: $80
	nop                                              ; $7512: $00
	ld h, l                                          ; $7513: $65
	add b                                            ; $7514: $80
	ret z                                            ; $7515: $c8

	ldh a, [$6f]                                     ; $7516: $f0 $6f
	ldh a, [$f9]                                     ; $7518: $f0 $f9
	sbc [hl]                                         ; $751a: $9e
	sub h                                            ; $751b: $94
	ld [hl], e                                       ; $751c: $73
	ld l, h                                          ; $751d: $6c
	sbc [hl]                                         ; $751e: $9e
	ld d, b                                          ; $751f: $50
	cp $9e                                           ; $7520: $fe $9e
	dec d                                            ; $7522: $15
	ld a, [$bc5e]                                    ; $7523: $fa $5e $bc
	sbc [hl]                                         ; $7526: $9e
	ld a, [hl+]                                      ; $7527: $2a
	ld c, e                                          ; $7528: $4b
	ldh a, [$7f]                                     ; $7529: $f0 $7f
	db $fc                                           ; $752b: $fc
	ld a, a                                          ; $752c: $7f
	ld c, h                                          ; $752d: $4c
	ld c, a                                          ; $752e: $4f
	ldh a, [rPCM34]                                  ; $752f: $f0 $77
	call z, $f05f                                    ; $7531: $cc $5f $f0
	ld [hl], a                                       ; $7534: $77
	sbc h                                            ; $7535: $9c
	sbc [hl]                                         ; $7536: $9e
	ld a, [bc]                                       ; $7537: $0a
	ld h, e                                          ; $7538: $63
	ldh a, [$9e]                                     ; $7539: $f0 $9e
	ld b, c                                          ; $753b: $41
	ld d, e                                          ; $753c: $53
	or b                                             ; $753d: $b0
	sbc [hl]                                         ; $753e: $9e
	xor b                                            ; $753f: $a8
	ld hl, sp+$67                                    ; $7540: $f8 $67
	add b                                            ; $7542: $80
	ld a, [hl]                                       ; $7543: $7e
	db $e4                                           ; $7544: $e4
	sbc [hl]                                         ; $7545: $9e
	xor c                                            ; $7546: $a9
	ld c, e                                          ; $7547: $4b
	and b                                            ; $7548: $a0
	sbc d                                            ; $7549: $9a
	adc d                                            ; $754a: $8a
	nop                                              ; $754b: $00
	ret nc                                           ; $754c: $d0

	nop                                              ; $754d: $00
	ld h, b                                          ; $754e: $60
	ld d, e                                          ; $754f: $53
	and b                                            ; $7550: $a0
	ld c, a                                          ; $7551: $4f
	ldh [$9e], a                                     ; $7552: $e0 $9e

jr_046_7554:
	and d                                            ; $7554: $a2
	ld a, e                                          ; $7555: $7b
	add b                                            ; $7556: $80
	ld [hl], e                                       ; $7557: $73
	and b                                            ; $7558: $a0
	sbc e                                            ; $7559: $9b
	ld bc, $0156                                     ; $755a: $01 $56 $01
	xor d                                            ; $755d: $aa
	ld a, e                                          ; $755e: $7b
	jr z, jr_046_75df                                ; $755f: $28 $7e

	call nz, $fc7f                                   ; $7561: $c4 $7f $fc
	sbc [hl]                                         ; $7564: $9e
	dec hl                                           ; $7565: $2b
	ld [hl], a                                       ; $7566: $77
	dec b                                            ; $7567: $05
	add b                                            ; $7568: $80
	rst $38                                          ; $7569: $ff
	ld a, [hl-]                                      ; $756a: $3a
	rst $38                                          ; $756b: $ff
	ld a, $ff                                        ; $756c: $3e $ff
	ld a, e                                          ; $756e: $7b
	rst $38                                          ; $756f: $ff
	ld e, a                                          ; $7570: $5f
	ccf                                              ; $7571: $3f
	ld b, e                                          ; $7572: $43
	ccf                                              ; $7573: $3f
	inc bc                                           ; $7574: $03
	rst $38                                          ; $7575: $ff
	rst JumpTable                                          ; $7576: $c7
	jr c, jr_046_7554                                ; $7577: $38 $db

	inc h                                            ; $7579: $24
	ei                                               ; $757a: $fb
	inc b                                            ; $757b: $04
	ldh a, [rIF]                                     ; $757c: $f0 $0f
	ld hl, sp+$07                                    ; $757e: $f8 $07
	cp c                                             ; $7580: $b9
	ld b, [hl]                                       ; $7581: $46
	nop                                              ; $7582: $00
	rst $38                                          ; $7583: $ff
	ld h, b                                          ; $7584: $60
	sbc a                                            ; $7585: $9f
	adc a                                            ; $7586: $8f

Jump_046_7587:
	rst $38                                          ; $7587: $ff
	sbc d                                            ; $7588: $9a
	pop bc                                           ; $7589: $c1
	rst $38                                          ; $758a: $ff
	add e                                            ; $758b: $83
	rst $38                                          ; $758c: $ff
	rst SubAFromDE                                          ; $758d: $df
	ret c                                            ; $758e: $d8

	rst $38                                          ; $758f: $ff
	ld l, [hl]                                       ; $7590: $6e
	jp z, $d096                                      ; $7591: $ca $96 $d0

	rst AddAOntoHL                                          ; $7594: $ef
	ldh [rIE], a                                     ; $7595: $e0 $ff
	db $fc                                           ; $7597: $fc
	db $e3                                           ; $7598: $e3
	rst GetHLinHL                                          ; $7599: $cf
	rst $38                                          ; $759a: $ff
	ld e, a                                          ; $759b: $5f
	ld h, [hl]                                       ; $759c: $66
	rst JumpTable                                          ; $759d: $c7
	rst SubAFromDE                                          ; $759e: $df
	rst $38                                          ; $759f: $ff
	ld [hl], a                                       ; $75a0: $77
	db $fc                                           ; $75a1: $fc
	sbc $ff                                          ; $75a2: $de $ff
	ld a, [hl]                                       ; $75a4: $7e
	adc $80                                          ; $75a5: $ce $80
	rra                                              ; $75a7: $1f
	ld bc, $011c                                     ; $75a8: $01 $1c $01
	inc bc                                           ; $75ab: $03
	db $fd                                           ; $75ac: $fd
	ret z                                            ; $75ad: $c8

	scf                                              ; $75ae: $37
	daa                                              ; $75af: $27
	ei                                               ; $75b0: $fb
	db $dd                                           ; $75b1: $dd
	cp $fc                                           ; $75b2: $fe $fc
	cp $95                                           ; $75b4: $fe $95
	ldh a, [$ca]                                     ; $75b6: $f0 $ca
	db $fc                                           ; $75b8: $fc
	push af                                          ; $75b9: $f5
	db $fc                                           ; $75ba: $fc
	ld a, [bc]                                       ; $75bb: $0a
	db $fc                                           ; $75bc: $fc
	dec [hl]                                         ; $75bd: $35
	db $ec                                           ; $75be: $ec
	sbc d                                            ; $75bf: $9a
	ldh a, [$a5]                                     ; $75c0: $f0 $a5
	ldh a, [$ca]                                     ; $75c2: $f0 $ca
	jr nz, jr_046_7606                               ; $75c4: $20 $40

	ld a, e                                          ; $75c6: $7b
	inc [hl]                                         ; $75c7: $34
	ld a, a                                          ; $75c8: $7f
	ld [$5c4f], sp                                   ; $75c9: $08 $4f $5c
	halt                                             ; $75cc: $76
	inc [hl]                                         ; $75cd: $34
	sbc d                                            ; $75ce: $9a
	ld b, l                                          ; $75cf: $45
	nop                                              ; $75d0: $00
	ld [hl+], a                                      ; $75d1: $22
	nop                                              ; $75d2: $00
	ld d, c                                          ; $75d3: $51
	ld l, e                                          ; $75d4: $6b
	ldh a, [rPCM34]                                  ; $75d5: $f0 $77
	call c, $e06f                                    ; $75d7: $dc $6f $e0
	ld a, a                                          ; $75da: $7f
	ld e, h                                          ; $75db: $5c
	ei                                               ; $75dc: $fb
	ld a, [hl]                                       ; $75dd: $7e
	or h                                             ; $75de: $b4

jr_046_75df:
	halt                                             ; $75df: $76
	db $fc                                           ; $75e0: $fc
	ld a, a                                          ; $75e1: $7f
	ldh [$9e], a                                     ; $75e2: $e0 $9e
	ldh [$fa], a                                     ; $75e4: $e0 $fa
	ld a, [hl]                                       ; $75e6: $7e
	call nc, $f075                                   ; $75e7: $d4 $75 $f0
	sbc h                                            ; $75ea: $9c
	ld b, h                                          ; $75eb: $44
	nop                                              ; $75ec: $00
	inc b                                            ; $75ed: $04
	ld hl, sp+$77                                    ; $75ee: $f8 $77
	cp h                                             ; $75f0: $bc
	ld a, [hl]                                       ; $75f1: $7e
	inc bc                                           ; $75f2: $03
	sbc l                                            ; $75f3: $9d
	inc c                                            ; $75f4: $0c
	ld b, $fd                                        ; $75f5: $06 $fd
	ld a, [hl]                                       ; $75f7: $7e
	db $e4                                           ; $75f8: $e4
	ld e, [hl]                                       ; $75f9: $5e
	cp b                                             ; $75fa: $b8
	db $fd                                           ; $75fb: $fd
	ld h, l                                          ; $75fc: $65
	call nz, $f067                                   ; $75fd: $c4 $67 $f0
	ld l, a                                          ; $7600: $6f
	add b                                            ; $7601: $80
	ld a, a                                          ; $7602: $7f
	and h                                            ; $7603: $a4
	ld [hl], a                                       ; $7604: $77
	sub b                                            ; $7605: $90

jr_046_7606:
	sbc h                                            ; $7606: $9c
	stop                                             ; $7607: $10 $00
	sbc h                                            ; $7609: $9c
	ld a, c                                          ; $760a: $79
	ld a, b                                          ; $760b: $78
	sub l                                            ; $760c: $95
	sbc $01                                          ; $760d: $de $01
	db $dd                                           ; $760f: $dd
	inc bc                                           ; $7610: $03
	db $db                                           ; $7611: $db
	ld b, $d7                                        ; $7612: $06 $d7
	ld [$1fc0], sp                                   ; $7614: $08 $c0 $1f
	ld a, [$8096]                                    ; $7617: $fa $96 $80
	db $10                                           ; $761a: $10
	ret nz                                           ; $761b: $c0

	add hl, hl                                       ; $761c: $29
	ret nz                                           ; $761d: $c0

	ld d, [hl]                                       ; $761e: $56
	pop bc                                           ; $761f: $c1
	dec hl                                           ; $7620: $2b
	add c                                            ; $7621: $81
	db $fd                                           ; $7622: $fd
	ld a, a                                          ; $7623: $7f
	call c, $fe74                                    ; $7624: $dc $74 $fe
	sub d                                            ; $7627: $92
	db $fc                                           ; $7628: $fc
	ld bc, $01fd                                     ; $7629: $01 $fd $01
	ld [hl], h                                       ; $762c: $74
	ret                                              ; $762d: $c9


	rlca                                             ; $762e: $07
	nop                                              ; $762f: $00
	ld a, [bc]                                       ; $7630: $0a
	ld bc, $0106                                     ; $7631: $01 $06 $01
	xor e                                            ; $7634: $ab
	ld [hl], c                                       ; $7635: $71
	add sp, $77                                      ; $7636: $e8 $77
	cp b                                             ; $7638: $b8
	ld a, [hl]                                       ; $7639: $7e
	ret c                                            ; $763a: $d8

	sub l                                            ; $763b: $95
	ld b, d                                          ; $763c: $42
	cp l                                             ; $763d: $bd
	nop                                              ; $763e: $00
	rst $38                                          ; $763f: $ff
	inc b                                            ; $7640: $04
	ei                                               ; $7641: $fb
	ldh [$5f], a                                     ; $7642: $e0 $5f
	cp h                                             ; $7644: $bc
	inc bc                                           ; $7645: $03
	ld [hl], h                                       ; $7646: $74
	cp h                                             ; $7647: $bc
	ld a, h                                          ; $7648: $7c
	ld d, b                                          ; $7649: $50
	sbc [hl]                                         ; $764a: $9e
	ld [de], a                                       ; $764b: $12
	ld l, c                                          ; $764c: $69
	cpl                                              ; $764d: $2f
	sbc l                                            ; $764e: $9d
	ld d, $f8                                        ; $764f: $16 $f8
	ld [hl], a                                       ; $7651: $77
	call c, Call_046_7e9e                            ; $7652: $dc $9e $7e
	sbc $ff                                          ; $7655: $de $ff
	sbc [hl]                                         ; $7657: $9e
	db $ed                                           ; $7658: $ed
	ld a, e                                          ; $7659: $7b
	cp $91                                           ; $765a: $fe $91
	ld hl, $95ff                                     ; $765c: $21 $ff $95
	ccf                                              ; $765f: $3f
	ld l, l                                          ; $7660: $6d
	ccf                                              ; $7661: $3f
	and d                                            ; $7662: $a2
	dec c                                            ; $7663: $0d
	and b                                            ; $7664: $a0
	ld e, a                                          ; $7665: $5f
	pop hl                                           ; $7666: $e1

jr_046_7667:
	ld e, $60                                        ; $7667: $1e $60
	rra                                              ; $7669: $1f
	ld [hl], a                                       ; $766a: $77
	db $fc                                           ; $766b: $fc
	sbc c                                            ; $766c: $99
	add b                                            ; $766d: $80
	rra                                              ; $766e: $1f
	ldh [$1f], a                                     ; $766f: $e0 $1f
	ld h, b                                          ; $7671: $60
	rra                                              ; $7672: $1f
	ld [hl], a                                       ; $7673: $77
	push de                                          ; $7674: $d5
	ld a, h                                          ; $7675: $7c
	inc a                                            ; $7676: $3c
	sbc d                                            ; $7677: $9a
	xor d                                            ; $7678: $aa
	ld d, l                                          ; $7679: $55
	ld d, l                                          ; $767a: $55
	xor d                                            ; $767b: $aa
	ld [bc], a                                       ; $767c: $02
	ld [hl], b                                       ; $767d: $70
	sbc e                                            ; $767e: $9b
	sbc l                                            ; $767f: $9d
	db $fc                                           ; $7680: $fc
	ld c, $77                                        ; $7681: $0e $77
	cp $95                                           ; $7683: $fe $95
	cp h                                             ; $7685: $bc
	ld c, [hl]                                       ; $7686: $4e
	ld a, h                                          ; $7687: $7c
	adc [hl]                                         ; $7688: $8e
	cp l                                             ; $7689: $bd
	ld c, [hl]                                       ; $768a: $4e
	ld e, [hl]                                       ; $768b: $5e
	xor [hl]                                         ; $768c: $ae
	ld l, $de                                        ; $768d: $2e $de
	ld l, a                                          ; $768f: $6f
	or e                                             ; $7690: $b3
	sub [hl]                                         ; $7691: $96
	inc bc                                           ; $7692: $03
	db $fc                                           ; $7693: $fc
	nop                                              ; $7694: $00
	rst $38                                          ; $7695: $ff
	ld bc, $80ff                                     ; $7696: $01 $ff $80
	ld b, b                                          ; $7699: $40
	nop                                              ; $769a: $00
	ld a, b                                          ; $769b: $78
	ldh a, [c]                                       ; $769c: $f2
	sub h                                            ; $769d: $94
	or e                                             ; $769e: $b3
	inc c                                            ; $769f: $0c
	and e                                            ; $76a0: $a3
	inc e                                            ; $76a1: $1c
	add c                                            ; $76a2: $81
	ld a, $03                                        ; $76a3: $3e $03
	cp h                                             ; $76a5: $bc
	jr nz, jr_046_7667                               ; $76a6: $20 $bf

	ld e, $79                                        ; $76a8: $1e $79
	add [hl]                                         ; $76aa: $86
	add a                                            ; $76ab: $87
	db $ec                                           ; $76ac: $ec
	ld bc, $6588                                     ; $76ad: $01 $88 $65
	jr c, @-$19                                      ; $76b0: $38 $e5

	ld a, d                                          ; $76b2: $7a
	push hl                                          ; $76b3: $e5
	ld h, a                                          ; $76b4: $67
	xor $70                                          ; $76b5: $ee $70
	db $fc                                           ; $76b7: $fc
	ld d, b                                          ; $76b8: $50
	ret nz                                           ; $76b9: $c0

	ld b, b                                          ; $76ba: $40
	ret nz                                           ; $76bb: $c0

	ld [hl], b                                       ; $76bc: $70
	adc a                                            ; $76bd: $8f
	inc bc                                           ; $76be: $03
	db $fd                                           ; $76bf: $fd
	ld c, l                                          ; $76c0: $4d
	or e                                             ; $76c1: $b3
	inc bc                                           ; $76c2: $03
	cp $f8                                           ; $76c3: $fe $f8
	add e                                            ; $76c5: $83
	ret nz                                           ; $76c6: $c0

	ld d, $80                                        ; $76c7: $16 $80
	sbc b                                            ; $76c9: $98
	jr nz, jr_046_76f5                               ; $76ca: $20 $29

	ld d, h                                          ; $76cc: $54
	ld b, h                                          ; $76cd: $44
	ld bc, $0083                                     ; $76ce: $01 $83 $00
	ld h, b                                          ; $76d1: $60
	sbc a                                            ; $76d2: $9f
	sbc [hl]                                         ; $76d3: $9e
	ld bc, $0870                                     ; $76d4: $01 $70 $08
	xor b                                            ; $76d7: $a8
	ld d, h                                          ; $76d8: $54
	ld [bc], a                                       ; $76d9: $02
	db $fc                                           ; $76da: $fc
	db $10                                           ; $76db: $10

jr_046_76dc:
	cp $80                                           ; $76dc: $fe $80
	ld a, [hl]                                       ; $76de: $7e
	db $10                                           ; $76df: $10
	cp $19                                           ; $76e0: $fe $19
	ld a, b                                          ; $76e2: $78

jr_046_76e3:
	adc l                                            ; $76e3: $8d
	adc c                                            ; $76e4: $89
	add b                                            ; $76e5: $80
	rlca                                             ; $76e6: $07
	db $10                                           ; $76e7: $10
	add e                                            ; $76e8: $83
	jp c, $cd01                                      ; $76e9: $da $01 $cd

	nop                                              ; $76ec: $00
	call z, Call_046_7e00                            ; $76ed: $cc $00 $7e
	nop                                              ; $76f0: $00
	add [hl]                                         ; $76f1: $86
	ld h, b                                          ; $76f2: $60
	jr jr_046_76dc                                   ; $76f3: $18 $e7

jr_046_76f5:
	ccf                                              ; $76f5: $3f
	ld b, b                                          ; $76f6: $40
	ccf                                              ; $76f7: $3f
	ld b, b                                          ; $76f8: $40
	nop                                              ; $76f9: $00
	ld a, a                                          ; $76fa: $7f
	ld [hl], a                                       ; $76fb: $77
	cp $7f                                           ; $76fc: $fe $7f
	ld h, h                                          ; $76fe: $64
	ld [hl], d                                       ; $76ff: $72
	daa                                              ; $7700: $27
	sbc h                                            ; $7701: $9c
	nop                                              ; $7702: $00
	jp Jump_046_773c                                 ; $7703: $c3 $3c $77


	ld a, l                                          ; $7706: $7d
	ld a, a                                          ; $7707: $7f
	xor b                                            ; $7708: $a8
	ld a, a                                          ; $7709: $7f
	cp $6f                                           ; $770a: $fe $6f
	ldh a, [hDisp1_WY]                                     ; $770c: $f0 $95
	ld sp, hl                                        ; $770e: $f9
	ld b, $80                                        ; $770f: $06 $80
	ld a, a                                          ; $7711: $7f
	ld [bc], a                                       ; $7712: $02
	db $fd                                           ; $7713: $fd
	jp nz, $c43d                                     ; $7714: $c2 $3d $c4

	dec sp                                           ; $7717: $3b
	db $fd                                           ; $7718: $fd
	add b                                            ; $7719: $80
	ld [hl], d                                       ; $771a: $72
	rst SubAFromDE                                          ; $771b: $df
	jp c, $2d8c                                      ; $771c: $da $8c $2d

	add h                                            ; $771f: $84
	jp c, Jump_046_7587                              ; $7720: $da $87 $75

	rst SubAFromDE                                          ; $7723: $df
	adc d                                            ; $7724: $8a
	rst SubAFromDE                                          ; $7725: $df
	dec [hl]                                         ; $7726: $35
	rrca                                             ; $7727: $0f
	ld e, $1f                                        ; $7728: $1e $1f
	ld a, [hl]                                       ; $772a: $7e
	add c                                            ; $772b: $81
	ldh a, [rIF]                                     ; $772c: $f0 $0f
	ld bc, $40fe                                     ; $772e: $01 $fe $40
	rst $38                                          ; $7731: $ff
	jr nz, @+$01                                     ; $7732: $20 $ff

	ld b, [hl]                                       ; $7734: $46
	rst $38                                          ; $7735: $ff
	ld b, b                                          ; $7736: $40
	ldh [$e0], a                                     ; $7737: $e0 $e0
	sub c                                            ; $7739: $91
	ld h, b                                          ; $773a: $60
	add b                                            ; $773b: $80

Jump_046_773c:
	db $fd                                           ; $773c: $fd
	ld b, h                                          ; $773d: $44
	db $fc                                           ; $773e: $fc
	ld c, l                                          ; $773f: $4d
	jr jr_046_76e3                                   ; $7740: $18 $a1

	add hl, bc                                       ; $7742: $09
	ld hl, sp+$0d                                    ; $7743: $f8 $0d
	rst $38                                          ; $7745: $ff
	dec b                                            ; $7746: $05
	inc d                                            ; $7747: $14
	ld [hl], e                                       ; $7748: $73
	ret nz                                           ; $7749: $c0

	ld a, a                                          ; $774a: $7f
	cp $9a                                           ; $774b: $fe $9a
	di                                               ; $774d: $f3
	inc c                                            ; $774e: $0c
	ld b, $f9                                        ; $774f: $06 $f9
	ld [bc], a                                       ; $7751: $02
	ld [hl], a                                       ; $7752: $77
	rst FarCall                                          ; $7753: $f7
	ld l, e                                          ; $7754: $6b
	ldh a, [$9a]                                     ; $7755: $f0 $9a
	add l                                            ; $7757: $85
	ld a, d                                          ; $7758: $7a
	ld [bc], a                                       ; $7759: $02
	db $fd                                           ; $775a: $fd
	ld h, b                                          ; $775b: $60
	ld e, e                                          ; $775c: $5b
	ldh a, [$7d]                                     ; $775d: $f0 $7d
	ld a, h                                          ; $775f: $7c
	ld a, [hl]                                       ; $7760: $7e
	or b                                             ; $7761: $b0
	ld [hl], e                                       ; $7762: $73
	rst FarCall                                          ; $7763: $f7
	db $fc                                           ; $7764: $fc
	ld a, [hl]                                       ; $7765: $7e
	dec l                                            ; $7766: $2d
	add b                                            ; $7767: $80
	swap h                                           ; $7768: $cb $34
	cp $01                                           ; $776a: $fe $01
	inc sp                                           ; $776c: $33
	call z, $f708                                    ; $776d: $cc $08 $f7
	inc c                                            ; $7770: $0c
	di                                               ; $7771: $f3
	ld bc, $1fff                                     ; $7772: $01 $ff $1f
	rra                                              ; $7775: $1f
	ld a, a                                          ; $7776: $7f
	rra                                              ; $7777: $1f
	rra                                              ; $7778: $1f
	rst $38                                          ; $7779: $ff
	halt                                             ; $777a: $76
	sbc a                                            ; $777b: $9f
	dec de                                           ; $777c: $1b
	rst $38                                          ; $777d: $ff
	ld d, $ff                                        ; $777e: $16 $ff
	ld a, [de]                                       ; $7780: $1a
	rst $38                                          ; $7781: $ff
	ld [hl+], a                                      ; $7782: $22
	rst SubAFromDE                                          ; $7783: $df
	ld [bc], a                                       ; $7784: $02
	rst $38                                          ; $7785: $ff
	add d                                            ; $7786: $82
	add d                                            ; $7787: $82
	ld a, a                                          ; $7788: $7f
	add e                                            ; $7789: $83
	ld a, [hl]                                       ; $778a: $7e
	adc d                                            ; $778b: $8a
	halt                                             ; $778c: $76
	reti                                             ; $778d: $d9


	ld h, $78                                        ; $778e: $26 $78
	ld b, $78                                        ; $7790: $06 $78
	ld b, $7c                                        ; $7792: $06 $7c
	ld [bc], a                                       ; $7794: $02
	ld a, [hl]                                       ; $7795: $7e
	adc [hl]                                         ; $7796: $8e
	ld l, $de                                        ; $7797: $2e $de
	ld a, [hl]                                       ; $7799: $7e
	adc [hl]                                         ; $779a: $8e
	xor a                                            ; $779b: $af
	ld e, [hl]                                       ; $779c: $5e
	cp $0e                                           ; $779d: $fe $0e
	rst AddAOntoHL                                          ; $779f: $ef
	ld e, $df                                        ; $77a0: $1e $df
	ld c, $5f                                        ; $77a2: $0e $5f

jr_046_77a4:
	ld c, $fb                                        ; $77a4: $0e $fb
	sub l                                            ; $77a6: $95
	inc hl                                           ; $77a7: $23
	call c, $0ff0                                    ; $77a8: $dc $f0 $0f
	rst JumpTable                                          ; $77ab: $c7
	ccf                                              ; $77ac: $3f
	adc [hl]                                         ; $77ad: $8e
	ld a, [hl]                                       ; $77ae: $7e
	cp b                                             ; $77af: $b8
	ld a, l                                          ; $77b0: $7d
	ld [hl], l                                       ; $77b1: $75
	and d                                            ; $77b2: $a2
	ld l, a                                          ; $77b3: $6f
	db $fc                                           ; $77b4: $fc
	sub [hl]                                         ; $77b5: $96
	sub h                                            ; $77b6: $94
	jr nz, jr_046_77e3                               ; $77b7: $20 $2a

	ld b, b                                          ; $77b9: $40
	ld d, l                                          ; $77ba: $55
	add b                                            ; $77bb: $80
	push bc                                          ; $77bc: $c5
	ldh [$80], a                                     ; $77bd: $e0 $80
	db $f4                                           ; $77bf: $f4
	sbc l                                            ; $77c0: $9d
	ld l, a                                          ; $77c1: $6f
	db $10                                           ; $77c2: $10
	ld h, l                                          ; $77c3: $65
	db $fd                                           ; $77c4: $fd
	ld l, l                                          ; $77c5: $6d
	add $7e                                          ; $77c6: $c6 $7e
	rst FarCall                                          ; $77c8: $f7
	sbc l                                            ; $77c9: $9d
	ld [$6f15], a                                    ; $77ca: $ea $15 $6f
	xor $7d                                          ; $77cd: $ee $7d
	xor d                                            ; $77cf: $aa
	sbc [hl]                                         ; $77d0: $9e
	ld [$0e7a], sp                                   ; $77d1: $08 $7a $0e
	sbc d                                            ; $77d4: $9a
	ld d, h                                          ; $77d5: $54
	xor e                                            ; $77d6: $ab
	and b                                            ; $77d7: $a0
	ld e, a                                          ; $77d8: $5f
	cp $74                                           ; $77d9: $fe $74
	scf                                              ; $77db: $37
	cp $9e                                           ; $77dc: $fe $9e
	add d                                            ; $77de: $82
	ld [hl], h                                       ; $77df: $74
	halt                                             ; $77e0: $76
	ld a, e                                          ; $77e1: $7b
	ld e, b                                          ; $77e2: $58

jr_046_77e3:
	ld a, [hl]                                       ; $77e3: $7e
	ld b, d                                          ; $77e4: $42
	db $fd                                           ; $77e5: $fd
	ld a, l                                          ; $77e6: $7d
	ld [hl], d                                       ; $77e7: $72
	ld [hl], l                                       ; $77e8: $75
	xor d                                            ; $77e9: $aa
	ld a, [hl]                                       ; $77ea: $7e
	and h                                            ; $77eb: $a4
	ld a, a                                          ; $77ec: $7f
	cp $9e                                           ; $77ed: $fe $9e
	or b                                             ; $77ef: $b0
	ld [hl], a                                       ; $77f0: $77
	and c                                            ; $77f1: $a1
	ld a, e                                          ; $77f2: $7b
	sbc h                                            ; $77f3: $9c
	ld [hl], l                                       ; $77f4: $75
	ld c, d                                          ; $77f5: $4a
	push af                                          ; $77f6: $f5
	ld [hl], l                                       ; $77f7: $75
	ld a, [hl+]                                      ; $77f8: $2a
	ld l, l                                          ; $77f9: $6d
	ld d, h                                          ; $77fa: $54
	rst $38                                          ; $77fb: $ff
	ld a, l                                          ; $77fc: $7d
	ld e, [hl]                                       ; $77fd: $5e
	ld a, a                                          ; $77fe: $7f
	or b                                             ; $77ff: $b0
	ld [hl], c                                       ; $7800: $71
	and h                                            ; $7801: $a4
	sbc [hl]                                         ; $7802: $9e
	dec bc                                           ; $7803: $0b
	ei                                               ; $7804: $fb
	ld a, [hl]                                       ; $7805: $7e
	inc [hl]                                         ; $7806: $34
	sbc b                                            ; $7807: $98
	rlca                                             ; $7808: $07
	ldh [rP1], a                                     ; $7809: $e0 $00
	inc e                                            ; $780b: $1c
	nop                                              ; $780c: $00
	inc bc                                           ; $780d: $03
	nop                                              ; $780e: $00
	ld a, c                                          ; $780f: $79
	ld a, [hl-]                                      ; $7810: $3a
	sub e                                            ; $7811: $93
	ld e, a                                          ; $7812: $5f
	jr nz, jr_046_77a4                               ; $7813: $20 $8f

	ld [hl], b                                       ; $7815: $70
	ld hl, $54fe                                     ; $7816: $21 $fe $54
	rst $38                                          ; $7819: $ff
	ld h, e                                          ; $781a: $63
	rra                                              ; $781b: $1f
	inc bc                                           ; $781c: $03
	ret nz                                           ; $781d: $c0

	ld l, [hl]                                       ; $781e: $6e
	xor $7d                                          ; $781f: $ee $7d
	sub $86                                          ; $7821: $d6 $86
	ld b, b                                          ; $7823: $40
	cp a                                             ; $7824: $bf
	add b                                            ; $7825: $80
	rst $38                                          ; $7826: $ff
	rst FarCall                                          ; $7827: $f7
	rst $38                                          ; $7828: $ff
	ld e, a                                          ; $7829: $5f
	cp a                                             ; $782a: $bf
	or [hl]                                          ; $782b: $b6
	nop                                              ; $782c: $00
	ldh a, [rIF]                                     ; $782d: $f0 $0f
	rst $38                                          ; $782f: $ff
	nop                                              ; $7830: $00
	ld l, e                                          ; $7831: $6b
	sub h                                            ; $7832: $94
	dec bc                                           ; $7833: $0b
	add h                                            ; $7834: $84
	adc e                                            ; $7835: $8b
	inc b                                            ; $7836: $04
	ld bc, $8086                                     ; $7837: $01 $86 $80
	add a                                            ; $783a: $87
	ld [hl], b                                       ; $783b: $70
	ld a, e                                          ; $783c: $7b
	rst SubAFromDE                                          ; $783d: $df
	sub d                                            ; $783e: $92
	rst FarCall                                          ; $783f: $f7
	ld [$d926], sp                                   ; $7840: $08 $26 $d9
	nop                                              ; $7843: $00
	rst $38                                          ; $7844: $ff
	add c                                            ; $7845: $81
	ld a, a                                          ; $7846: $7f
	ldh [$1f], a                                     ; $7847: $e0 $1f
	ld a, $c1                                        ; $7849: $3e $c1
	inc bc                                           ; $784b: $03
	ld a, c                                          ; $784c: $79
	ld a, [hl]                                       ; $784d: $7e
	ld a, a                                          ; $784e: $7f
	ldh [$80], a                                     ; $784f: $e0 $80
	adc b                                            ; $7851: $88
	ld [hl], a                                       ; $7852: $77
	ld [bc], a                                       ; $7853: $02
	rst $38                                          ; $7854: $ff
	ld b, l                                          ; $7855: $45
	rst $38                                          ; $7856: $ff
	and b                                            ; $7857: $a0
	rst $38                                          ; $7858: $ff
	ld c, $f1                                        ; $7859: $0e $f1
	cp a                                             ; $785b: $bf
	ld b, b                                          ; $785c: $40
	ld e, $e1                                        ; $785d: $1e $e1
	ld a, e                                          ; $785f: $7b
	jp $c3fd                                         ; $7860: $c3 $fd $c3


	db $e3                                           ; $7863: $e3
	rst SubAFromDE                                          ; $7864: $df
	reti                                             ; $7865: $d9


	rst $38                                          ; $7866: $ff
	db $e3                                           ; $7867: $e3
	rst SubAFromDE                                          ; $7868: $df
	push de                                          ; $7869: $d5
	db $eb                                           ; $786a: $eb
	xor d                                            ; $786b: $aa
	ld d, a                                          ; $786c: $57
	rla                                              ; $786d: $17
	ld [$7e7f], a                                    ; $786e: $ea $7f $7e
	call $8291                                       ; $7871: $cd $91 $82
	ld h, a                                          ; $7874: $67
	adc d                                            ; $7875: $8a
	ld b, [hl]                                       ; $7876: $46
	cp e                                             ; $7877: $bb
	add d                                            ; $7878: $82
	rst $38                                          ; $7879: $ff
	ld [de], a                                       ; $787a: $12
	rst AddAOntoHL                                          ; $787b: $ef
	ld d, h                                          ; $787c: $54
	ld [bc], a                                       ; $787d: $02
	jr z, jr_046_7882                                ; $787e: $28 $02

	nop                                              ; $7880: $00
	ld a, e                                          ; $7881: $7b

jr_046_7882:
	cp $77                                           ; $7882: $fe $77
	ld hl, sp+$7e                                    ; $7884: $f8 $7e
	jp nz, $fe7f                                     ; $7886: $c2 $7f $fe

	sbc [hl]                                         ; $7889: $9e
	xor a                                            ; $788a: $af
	ld a, d                                          ; $788b: $7a
	call z, $0f9b                                    ; $788c: $cc $9b $0f
	ld c, $0e                                        ; $788f: $0e $0e
	rrca                                             ; $7891: $0f
	ld [hl], a                                       ; $7892: $77
	ld hl, sp-$74                                    ; $7893: $f8 $8c
	cp $0f                                           ; $7895: $fe $0f
	rst $38                                          ; $7897: $ff
	ld c, $f4                                        ; $7898: $0e $f4
	ei                                               ; $789a: $fb
	ret                                              ; $789b: $c9


	or $93                                           ; $789c: $f6 $93
	db $ec                                           ; $789e: $ec
	daa                                              ; $789f: $27
	ret c                                            ; $78a0: $d8

	ld c, a                                          ; $78a1: $4f
	or b                                             ; $78a2: $b0
	sbc a                                            ; $78a3: $9f
	ld h, b                                          ; $78a4: $60
	ld a, a                                          ; $78a5: $7f
	add b                                            ; $78a6: $80
	rst $38                                          ; $78a7: $ff
	ld [hl], e                                       ; $78a8: $73
	inc e                                            ; $78a9: $1c
	sbc [hl]                                         ; $78aa: $9e
	ld [$1f6d], a                                    ; $78ab: $ea $6d $1f
	ld [hl], e                                       ; $78ae: $73
	cp $64                                           ; $78af: $fe $64
	and [hl]                                         ; $78b1: $a6
	sbc [hl]                                         ; $78b2: $9e
	ld a, [$f04b]                                    ; $78b3: $fa $4b $f0
	ld a, a                                          ; $78b6: $7f
	db $fc                                           ; $78b7: $fc
	ld b, a                                          ; $78b8: $47
	ldh a, [$6f]                                     ; $78b9: $f0 $6f
	call c, $f057                                    ; $78bb: $dc $57 $f0
	ld [hl], a                                       ; $78be: $77
	call c, $f003                                    ; $78bf: $dc $03 $f0
	ld e, e                                          ; $78c2: $5b
	ldh a, [rVBK]                                    ; $78c3: $f0 $4f
	or b                                             ; $78c5: $b0
	ld a, h                                          ; $78c6: $7c
	ld c, d                                          ; $78c7: $4a
	scf                                              ; $78c8: $37
	sub b                                            ; $78c9: $90
	sbc h                                            ; $78ca: $9c
	add d                                            ; $78cb: $82
	ld a, h                                          ; $78cc: $7c
	jr nc, jr_046_7949                               ; $78cd: $30 $7a

	ldh [$5f], a                                     ; $78cf: $e0 $5f
	cp $95                                           ; $78d1: $fe $95
	nop                                              ; $78d3: $00
	ccf                                              ; $78d4: $3f
	ld b, h                                          ; $78d5: $44
	add e                                            ; $78d6: $83
	inc b                                            ; $78d7: $04
	ld hl, sp-$20                                    ; $78d8: $f8 $e0
	rra                                              ; $78da: $1f
	cp $01                                           ; $78db: $fe $01
	ld l, a                                          ; $78dd: $6f
	ldh a, [$9c]                                     ; $78de: $f0 $9c
	inc h                                            ; $78e0: $24
	rst $38                                          ; $78e1: $ff
	daa                                              ; $78e2: $27
	ld a, d                                          ; $78e3: $7a
	sub $9c                                          ; $78e4: $d6 $9c
	ld c, [hl]                                       ; $78e6: $4e
	add c                                            ; $78e7: $81
	ld b, $7b                                        ; $78e8: $06 $7b
	db $ec                                           ; $78ea: $ec
	add [hl]                                         ; $78eb: $86
	db $fc                                           ; $78ec: $fc
	inc bc                                           ; $78ed: $03
	cp $01                                           ; $78ee: $fe $01
	ld b, b                                          ; $78f0: $40
	rst $38                                          ; $78f1: $ff
	and d                                            ; $78f2: $a2
	rst $38                                          ; $78f3: $ff
	push af                                          ; $78f4: $f5
	rst $38                                          ; $78f5: $ff
	adc a                                            ; $78f6: $8f
	ld a, a                                          ; $78f7: $7f
	add hl, sp                                       ; $78f8: $39
	rlca                                             ; $78f9: $07
	rlca                                             ; $78fa: $07
	nop                                              ; $78fb: $00
	nop                                              ; $78fc: $00
	ldh a, [$e0]                                     ; $78fd: $f0 $e0
	rra                                              ; $78ff: $1f
	add hl, sp                                       ; $7900: $39
	add $81                                          ; $7901: $c6 $81
	cp $d0                                           ; $7903: $fe $d0
	ld a, d                                          ; $7905: $7a
	add $7f                                          ; $7906: $c6 $7f
	db $ec                                           ; $7908: $ec
	sbc [hl]                                         ; $7909: $9e
	xor d                                            ; $790a: $aa
	ld a, e                                          ; $790b: $7b
	db $ec                                           ; $790c: $ec
	ld a, [hl]                                       ; $790d: $7e
	or d                                             ; $790e: $b2
	rst SubAFromDE                                          ; $790f: $df
	rst $38                                          ; $7910: $ff
	sbc [hl]                                         ; $7911: $9e
	db $fd                                           ; $7912: $fd
	ld a, d                                          ; $7913: $7a
	ret z                                            ; $7914: $c8

	add b                                            ; $7915: $80
	jp $d3ff                                         ; $7916: $c3 $ff $d3


	rst AddAOntoHL                                          ; $7919: $ef
	rst $38                                          ; $791a: $ff
	jp $f7cb                                         ; $791b: $c3 $cb $f7


	db $db                                           ; $791e: $db
	rst SubAFromBC                                          ; $791f: $e7
	db $eb                                           ; $7920: $eb
	rst $38                                          ; $7921: $ff
	and $ff                                          ; $7922: $e6 $ff
	dec hl                                           ; $7924: $2b
	rst SubAFromDE                                          ; $7925: $df
	adc $bf                                          ; $7926: $ce $bf
	ld l, a                                          ; $7928: $6f

jr_046_7929:
	sbc a                                            ; $7929: $9f

Jump_046_792a:
	ld c, a                                          ; $792a: $4f
	cp a                                             ; $792b: $bf
	ld c, a                                          ; $792c: $4f
	cp a                                             ; $792d: $bf
	adc a                                            ; $792e: $8f
	rst $38                                          ; $792f: $ff
	ld a, [hl]                                       ; $7930: $7e
	ld [bc], a                                       ; $7931: $02
	dec hl                                           ; $7932: $2b
	ld d, [hl]                                       ; $7933: $56
	ld d, [hl]                                       ; $7934: $56
	rst SubAFromDE                                          ; $7935: $df
	ld a, [hl+]                                      ; $7936: $2a
	add [hl]                                         ; $7937: $86
	ld d, [hl]                                       ; $7938: $56
	inc bc                                           ; $7939: $03
	ld a, [hl]                                       ; $793a: $7e
	inc bc                                           ; $793b: $03
	ld a, [hl]                                       ; $793c: $7e
	add e                                            ; $793d: $83
	ld a, [hl]                                       ; $793e: $7e
	add d                                            ; $793f: $82
	ld a, a                                          ; $7940: $7f
	rst $38                                          ; $7941: $ff
	ld c, $af                                        ; $7942: $0e $af
	ld e, [hl]                                       ; $7944: $5e
	rst SubAFromDE                                          ; $7945: $df
	ld l, $af                                        ; $7946: $2e $af
	ld e, [hl]                                       ; $7948: $5e

jr_046_7949:
	ld e, [hl]                                       ; $7949: $5e
	xor a                                            ; $794a: $af
	adc [hl]                                         ; $794b: $8e
	ld a, a                                          ; $794c: $7f
	ld c, $ff                                        ; $794d: $0e $ff
	adc [hl]                                         ; $794f: $8e
	ld a, a                                          ; $7950: $7f
	ld h, a                                          ; $7951: $67
	ld a, b                                          ; $7952: $78
	sub a                                            ; $7953: $97
	xor a                                            ; $7954: $af
	ld d, b                                          ; $7955: $50
	ld d, l                                          ; $7956: $55
	xor d                                            ; $7957: $aa
	xor d                                            ; $7958: $aa
	ld d, l                                          ; $7959: $55
	ld d, l                                          ; $795a: $55
	xor d                                            ; $795b: $aa
	ld e, a                                          ; $795c: $5f
	ld h, [hl]                                       ; $795d: $66
	sbc l                                            ; $795e: $9d
	ld d, a                                          ; $795f: $57
	xor b                                            ; $7960: $a8
	ld c, a                                          ; $7961: $4f
	ldh a, [$7f]                                     ; $7962: $f0 $7f
	cp $9d                                           ; $7964: $fe $9d
	xor e                                            ; $7966: $ab
	ld d, h                                          ; $7967: $54
	ld c, a                                          ; $7968: $4f
	ldh a, [$7f]                                     ; $7969: $f0 $7f
	cp $47                                           ; $796b: $fe $47
	ldh a, [rPCM12]                                  ; $796d: $f0 $76
	ld a, [hl]                                       ; $796f: $7e
	inc bc                                           ; $7970: $03
	cp $1b                                           ; $7971: $fe $1b
	cp $9d                                           ; $7973: $fe $9d
	push af                                          ; $7975: $f5
	ld a, [bc]                                       ; $7976: $0a
	rla                                              ; $7977: $17
	and b                                            ; $7978: $a0
	ld a, [hl]                                       ; $7979: $7e
	ldh a, [c]                                       ; $797a: $f2
	ld c, a                                          ; $797b: $4f
	ldh a, [rBGP]                                    ; $797c: $f0 $47
	ld h, b                                          ; $797e: $60
	ld c, a                                          ; $797f: $4f
	ldh a, [$7f]                                     ; $7980: $f0 $7f
	or h                                             ; $7982: $b4
	ld [hl], a                                       ; $7983: $77
	ldh a, [$9c]                                     ; $7984: $f0 $9c
	jp hl                                            ; $7986: $e9


	nop                                              ; $7987: $00
	cp $63                                           ; $7988: $fe $63
	or h                                             ; $798a: $b4
	ld [hl], a                                       ; $798b: $77
	ldh a, [hDisp1_WY]                                     ; $798c: $f0 $95
	ret                                              ; $798e: $c9


	jr nc, jr_046_7929                               ; $798f: $30 $98

	rlca                                             ; $7991: $07
	xor c                                            ; $7992: $a9
	ld b, b                                          ; $7993: $40
	sub $28                                          ; $7994: $d6 $28
	jp hl                                            ; $7996: $e9


	ld d, $6f                                        ; $7997: $16 $6f
	jr nz, jr_046_7a19                               ; $7999: $20 $7e

	add $7e                                          ; $799b: $c6 $7e
	jp z, $c79b                                      ; $799d: $ca $9b $c7

	rst $38                                          ; $79a0: $ff
	rst AddAOntoHL                                          ; $79a1: $ef
	rst SubAFromDE                                          ; $79a2: $df
	halt                                             ; $79a3: $76
	cp h                                             ; $79a4: $bc
	sbc [hl]                                         ; $79a5: $9e
	rst GetHLinHL                                          ; $79a6: $cf
	ld a, e                                          ; $79a7: $7b
	cp $7d                                           ; $79a8: $fe $7d
	ld b, d                                          ; $79aa: $42
	ld l, a                                          ; $79ab: $6f
	cp $8f                                           ; $79ac: $fe $8f
	ld [hl], b                                       ; $79ae: $70
	adc a                                            ; $79af: $8f
	ld d, b                                          ; $79b0: $50
	adc a                                            ; $79b1: $8f
	db $10                                           ; $79b2: $10
	adc a                                            ; $79b3: $8f
	db $10                                           ; $79b4: $10
	rrca                                             ; $79b5: $0f
	inc bc                                           ; $79b6: $03
	cp $02                                           ; $79b7: $fe $02
	rst $38                                          ; $79b9: $ff
	ld [bc], a                                       ; $79ba: $02
	rst $38                                          ; $79bb: $ff
	jp nz, $777f                                     ; $79bc: $c2 $7f $77

	cp $9a                                           ; $79bf: $fe $9a
	ld b, d                                          ; $79c1: $42
	rst $38                                          ; $79c2: $ff
	ld h, d                                          ; $79c3: $62
	rst $38                                          ; $79c4: $ff
	ld c, $4b                                        ; $79c5: $0e $4b
	cp $77                                           ; $79c7: $fe $77
	cp h                                             ; $79c9: $bc
	sbc l                                            ; $79ca: $9d
	ld a, [hl+]                                      ; $79cb: $2a
	push de                                          ; $79cc: $d5
	ld l, a                                          ; $79cd: $6f
	and h                                            ; $79ce: $a4
	inc bc                                           ; $79cf: $03
	db $fc                                           ; $79d0: $fc
	inc bc                                           ; $79d1: $03
	db $fc                                           ; $79d2: $fc
	inc bc                                           ; $79d3: $03
	db $fc                                           ; $79d4: $fc
	inc bc                                           ; $79d5: $03
	db $fc                                           ; $79d6: $fc
	inc bc                                           ; $79d7: $03
	db $fc                                           ; $79d8: $fc
	inc bc                                           ; $79d9: $03
	db $fc                                           ; $79da: $fc
	inc bc                                           ; $79db: $03
	db $fc                                           ; $79dc: $fc
	ld d, e                                          ; $79dd: $53
	db $fc                                           ; $79de: $fc
	add [hl]                                         ; $79df: $86
	ld [hl], c                                       ; $79e0: $71
	rst GetHLinHL                                          ; $79e1: $cf
	ld l, l                                          ; $79e2: $6d
	db $d3                                           ; $79e3: $d3
	ld d, c                                          ; $79e4: $51
	db $e3                                           ; $79e5: $e3
	ld h, l                                          ; $79e6: $65
	jp $c34d                                         ; $79e7: $c3 $4d $c3


	ld e, l                                          ; $79ea: $5d
	jp $c365                                         ; $79eb: $c3 $65 $c3


	ld b, l                                          ; $79ee: $45
	jp $0f3a                                         ; $79ef: $c3 $3a $0f


	call nc, $9a0f                                   ; $79f2: $d4 $0f $9a
	rrca                                             ; $79f5: $0f
	inc e                                            ; $79f6: $1c
	rrca                                             ; $79f7: $0f
	ld a, [de]                                       ; $79f8: $1a
	ld a, e                                          ; $79f9: $7b
	db $fc                                           ; $79fa: $fc

Call_046_79fb:
	sbc b                                            ; $79fb: $98
	ld e, $0f                                        ; $79fc: $1e $0f
	dec e                                            ; $79fe: $1d
	rrca                                             ; $79ff: $0f
	jp nc, $e27f                                     ; $7a00: $d2 $7f $e2

	ld a, d                                          ; $7a03: $7a
	ret z                                            ; $7a04: $c8

	sbc h                                            ; $7a05: $9c
	ld l, d                                          ; $7a06: $6a
	rst $38                                          ; $7a07: $ff
	ld d, d                                          ; $7a08: $52
	ld a, e                                          ; $7a09: $7b
	db $fc                                           ; $7a0a: $fc
	sbc h                                            ; $7a0b: $9c
	ld [hl], d                                       ; $7a0c: $72
	rst $38                                          ; $7a0d: $ff
	ld a, d                                          ; $7a0e: $7a
	ld l, d                                          ; $7a0f: $6a
	jp z, $fd7c                                      ; $7a10: $ca $7c $fd

	ld l, a                                          ; $7a13: $6f
	cp $9e                                           ; $7a14: $fe $9e
	ld c, a                                          ; $7a16: $4f
	ld a, d                                          ; $7a17: $7a
	ret nz                                           ; $7a18: $c0

jr_046_7a19:
	sbc [hl]                                         ; $7a19: $9e
	ld bc, $5f66                                     ; $7a1a: $01 $66 $5f
	ld [hl], e                                       ; $7a1d: $73
	cp $77                                           ; $7a1e: $fe $77
	xor h                                            ; $7a20: $ac
	sbc l                                            ; $7a21: $9d
	ld [bc], a                                       ; $7a22: $02
	db $fd                                           ; $7a23: $fd
	ld c, a                                          ; $7a24: $4f
	ldh a, [$7f]                                     ; $7a25: $f0 $7f
	db $fc                                           ; $7a27: $fc
	ld b, a                                          ; $7a28: $47
	ldh a, [$9d]                                     ; $7a29: $f0 $9d
	dec d                                            ; $7a2b: $15
	ld [$f04f], a                                    ; $7a2c: $ea $4f $f0
	ld a, a                                          ; $7a2f: $7f
	db $fc                                           ; $7a30: $fc
	sbc l                                            ; $7a31: $9d
	ld a, [bc]                                       ; $7a32: $0a
	push af                                          ; $7a33: $f5
	ld c, a                                          ; $7a34: $4f
	ldh a, [$67]                                     ; $7a35: $f0 $67
	call z, $f003                                    ; $7a37: $cc $03 $f0
	inc bc                                           ; $7a3a: $03
	ldh a, [$6f]                                     ; $7a3b: $f0 $6f
	ldh a, [rBGP]                                    ; $7a3d: $f0 $47
	sub b                                            ; $7a3f: $90
	rrca                                             ; $7a40: $0f
	ldh a, [rIF]                                     ; $7a41: $f0 $0f
	ld b, b                                          ; $7a43: $40
	sbc l                                            ; $7a44: $9d
	add b                                            ; $7a45: $80
	ld a, a                                          ; $7a46: $7f
	ld e, a                                          ; $7a47: $5f
	ldh a, [$7e]                                     ; $7a48: $f0 $7e
	adc $4f                                          ; $7a4a: $ce $4f
	cp $7e                                           ; $7a4c: $fe $7e
	call z, $1f9e                                    ; $7a4e: $cc $9e $1f
	ld a, d                                          ; $7a51: $7a
	ret z                                            ; $7a52: $c8

	ld a, a                                          ; $7a53: $7f
	db $fc                                           ; $7a54: $fc
	ld h, a                                          ; $7a55: $67
	cp $9e                                           ; $7a56: $fe $9e
	halt                                             ; $7a58: $76
	ld a, d                                          ; $7a59: $7a
	call z, Call_046_7e9e                            ; $7a5a: $cc $9e $7e
	ld [hl], e                                       ; $7a5d: $73
	db $fc                                           ; $7a5e: $fc
	ld l, a                                          ; $7a5f: $6f
	cp $76                                           ; $7a60: $fe $76
	call z, $2a7c                                    ; $7a62: $cc $7c $2a
	ld e, a                                          ; $7a65: $5f
	db $fc                                           ; $7a66: $fc
	nop                                              ; $7a67: $00
	xor l                                            ; $7a68: $ad
	inc bc                                           ; $7a69: $03
	cp $03                                           ; $7a6a: $fe $03
	cp $6b                                           ; $7a6c: $fe $6b
	cp $7c                                           ; $7a6e: $fe $7c
	ldh a, [c]                                       ; $7a70: $f2
	sbc e                                            ; $7a71: $9b
	jr nc, @+$21                                     ; $7a72: $30 $1f

	sub b                                            ; $7a74: $90
	ccf                                              ; $7a75: $3f
	inc bc                                           ; $7a76: $03
	ret c                                            ; $7a77: $d8

	inc hl                                           ; $7a78: $23
	cp $99                                           ; $7a79: $fe $99
	ld [bc], a                                       ; $7a7b: $02
	pop af                                           ; $7a7c: $f1
	ld b, $e3                                        ; $7a7d: $06 $e3
	ld [de], a                                       ; $7a7f: $12
	rst SubAFromBC                                          ; $7a80: $e7
	inc bc                                           ; $7a81: $03
	ret c                                            ; $7a82: $d8

	inc bc                                           ; $7a83: $03
	cp $4f                                           ; $7a84: $fe $4f
	cp $7e                                           ; $7a86: $fe $7e
	adc $9e                                          ; $7a88: $ce $9e
	add l                                            ; $7a8a: $85
	ld a, d                                          ; $7a8b: $7a
	jp z, $c59e                                      ; $7a8c: $ca $9e $c5

	ld a, e                                          ; $7a8f: $7b
	cp $7f                                           ; $7a90: $fe $7f
	ld hl, sp+$77                                    ; $7a92: $f8 $77
	cp $5e                                           ; $7a94: $fe $5e
	add $6f                                          ; $7a96: $c6 $6f
	cp $66                                           ; $7a98: $fe $66
	ret z                                            ; $7a9a: $c8

	ld h, a                                          ; $7a9b: $67
	cp $66                                           ; $7a9c: $fe $66
	ret z                                            ; $7a9e: $c8

	ld h, l                                          ; $7a9f: $65
	ld a, [hl]                                       ; $7aa0: $7e
	inc bc                                           ; $7aa1: $03
	sbc [hl]                                         ; $7aa2: $9e
	inc bc                                           ; $7aa3: $03
	cp $0f                                           ; $7aa4: $fe $0f
	cp $7e                                           ; $7aa6: $fe $7e
	adc $7f                                          ; $7aa8: $ce $7f
	cp $9d                                           ; $7aaa: $fe $9d
	or b                                             ; $7aac: $b0
	rra                                              ; $7aad: $1f
	ld e, a                                          ; $7aae: $5f
	cp $03                                           ; $7aaf: $fe $03
	adc $4b                                          ; $7ab1: $ce $4b
	cp $7e                                           ; $7ab3: $fe $7e
	adc $7f                                          ; $7ab5: $ce $7f
	cp $9d                                           ; $7ab7: $fe $9d
	ld d, $e3                                        ; $7ab9: $16 $e3
	ld e, a                                          ; $7abb: $5f
	cp $03                                           ; $7abc: $fe $03
	adc $03                                          ; $7abe: $ce $03
	cp $4f                                           ; $7ac0: $fe $4f
	cp $31                                           ; $7ac2: $fe $31
	nop                                              ; $7ac4: $00
	sbc [hl]                                         ; $7ac5: $9e
	ld d, l                                          ; $7ac6: $55
	reti                                             ; $7ac7: $d9


	ld b, h                                          ; $7ac8: $44
	sbc l                                            ; $7ac9: $9d
	ld b, l                                          ; $7aca: $45
	ld d, h                                          ; $7acb: $54
	ld h, e                                          ; $7acc: $63
	or $9d                                           ; $7acd: $f6 $9d
	ld d, a                                          ; $7acf: $57
	ld [hl], a                                       ; $7ad0: $77
	reti                                             ; $7ad1: $d9


	ld d, l                                          ; $7ad2: $55
	sub d                                            ; $7ad3: $92
	ld d, e                                          ; $7ad4: $53
	inc sp                                           ; $7ad5: $33
	ld h, [hl]                                       ; $7ad6: $66
	ld h, [hl]                                       ; $7ad7: $66
	ld [hl], a                                       ; $7ad8: $77
	halt                                             ; $7ad9: $76
	ld h, [hl]                                       ; $7ada: $66
	ld d, [hl]                                       ; $7adb: $56
	ld d, [hl]                                       ; $7adc: $56
	ld h, [hl]                                       ; $7add: $66
	ld h, [hl]                                       ; $7ade: $66
	inc sp                                           ; $7adf: $33
	ld h, a                                          ; $7ae0: $67
	db $dd                                           ; $7ae1: $dd
	ld [hl], a                                       ; $7ae2: $77
	db $dd                                           ; $7ae3: $dd
	ld h, [hl]                                       ; $7ae4: $66
	sbc [hl]                                         ; $7ae5: $9e
	inc sp                                           ; $7ae6: $33
	jp c, $5f77                                      ; $7ae7: $da $77 $5f

	or $9d                                           ; $7aea: $f6 $9d
	ld [hl], a                                       ; $7aec: $77
	ld h, e                                          ; $7aed: $63
	ld h, e                                          ; $7aee: $63
	or $df                                           ; $7aef: $f6 $df
	inc sp                                           ; $7af1: $33
	rla                                              ; $7af2: $17
	or $b1                                           ; $7af3: $f6 $b1
	adc b                                            ; $7af5: $88
	ei                                               ; $7af6: $fb
	add l                                            ; $7af7: $85
	add b                                            ; $7af8: $80
	and b                                            ; $7af9: $a0
	rst $38                                          ; $7afa: $ff
	rst $38                                          ; $7afb: $ff
	xor a                                            ; $7afc: $af
	ld d, l                                          ; $7afd: $55
	xor d                                            ; $7afe: $aa
	ld d, l                                          ; $7aff: $55
	ld a, [bc]                                       ; $7b00: $0a
	inc b                                            ; $7b01: $04
	ld d, b                                          ; $7b02: $50
	db $10                                           ; $7b03: $10
	add h                                            ; $7b04: $84
	add c                                            ; $7b05: $81
	ld d, b                                          ; $7b06: $50
	ld b, c                                          ; $7b07: $41
	add b                                            ; $7b08: $80
	ld b, l                                          ; $7b09: $45
	adc a                                            ; $7b0a: $8f
	rst GetHLinHL                                          ; $7b0b: $cf
	ld c, e                                          ; $7b0c: $4b
	ld a, [hl]                                       ; $7b0d: $7e
	dec hl                                           ; $7b0e: $2b
	ld a, $1c                                        ; $7b0f: $3e $1c
	ld [$dff9], sp                                   ; $7b11: $08 $f9 $df
	rst $38                                          ; $7b14: $ff
	sbc [hl]                                         ; $7b15: $9e
	xor d                                            ; $7b16: $aa
	db $f4                                           ; $7b17: $f4
	sbc b                                            ; $7b18: $98
	ld [$a8d5], a                                    ; $7b19: $ea $d5 $a8
	ld d, h                                          ; $7b1c: $54
	ld a, [hl+]                                      ; $7b1d: $2a
	dec d                                            ; $7b1e: $15
	ld a, [hl+]                                      ; $7b1f: $2a
	ld sp, hl                                        ; $7b20: $f9
	sub [hl]                                         ; $7b21: $96
	ld h, b                                          ; $7b22: $60
	and b                                            ; $7b23: $a0
	ld b, b                                          ; $7b24: $40
	nop                                              ; $7b25: $00
	inc b                                            ; $7b26: $04
	ld a, [bc]                                       ; $7b27: $0a
	ld d, l                                          ; $7b28: $55
	xor d                                            ; $7b29: $aa
	ld d, c                                          ; $7b2a: $51
	or $9a                                           ; $7b2b: $f6 $9a
	ld bc, $5482                                     ; $7b2d: $01 $82 $54
	xor b                                            ; $7b30: $a8
	ld d, l                                          ; $7b31: $55
	ld sp, hl                                        ; $7b32: $f9
	sbc c                                            ; $7b33: $99
	ld a, [hl+]                                      ; $7b34: $2a
	ld d, h                                          ; $7b35: $54
	jr nz, jr_046_7b38                               ; $7b36: $20 $00

jr_046_7b38:
	ld [bc], a                                       ; $7b38: $02
	dec d                                            ; $7b39: $15
	ld e, a                                          ; $7b3a: $5f
	ldh [$9c], a                                     ; $7b3b: $e0 $9c
	cp a                                             ; $7b3d: $bf
	dec b                                            ; $7b3e: $05
	ld [hl+], a                                      ; $7b3f: $22
	ld a, e                                          ; $7b40: $7b
	sub b                                            ; $7b41: $90

Call_046_7b42:
	sbc l                                            ; $7b42: $9d
	xor d                                            ; $7b43: $aa
	dec b                                            ; $7b44: $05
	ld [hl], a                                       ; $7b45: $77
	ret c                                            ; $7b46: $d8

	sub c                                            ; $7b47: $91
	rlca                                             ; $7b48: $07
	rra                                              ; $7b49: $1f
	rra                                              ; $7b4a: $1f
	rlca                                             ; $7b4b: $07
	rst $38                                          ; $7b4c: $ff
	ld a, a                                          ; $7b4d: $7f
	cp a                                             ; $7b4e: $bf
	ld a, h                                          ; $7b4f: $7c
	db $f4                                           ; $7b50: $f4
	ret z                                            ; $7b51: $c8

	ret nc                                           ; $7b52: $d0

	ld h, b                                          ; $7b53: $60
	nop                                              ; $7b54: $00
	ld a, a                                          ; $7b55: $7f
	jp c, $9bff                                      ; $7b56: $da $ff $9b

	push de                                          ; $7b59: $d5
	add b                                            ; $7b5a: $80
	adc b                                            ; $7b5b: $88
	inc d                                            ; $7b5c: $14
	ld [hl], a                                       ; $7b5d: $77
	sbc a                                            ; $7b5e: $9f
	sbc [hl]                                         ; $7b5f: $9e
	ldh [$de], a                                     ; $7b60: $e0 $de
	db $fc                                           ; $7b62: $fc
	db $dd                                           ; $7b63: $dd
	rst $38                                          ; $7b64: $ff
	sbc b                                            ; $7b65: $98
	ld e, a                                          ; $7b66: $5f
	rla                                              ; $7b67: $17
	ld bc, $8241                                     ; $7b68: $01 $41 $82
	ld bc, $fc80                                     ; $7b6b: $01 $80 $fc
	sbc l                                            ; $7b6e: $9d
	rra                                              ; $7b6f: $1f
	cp a                                             ; $7b70: $bf
	call c, $9aff                                    ; $7b71: $dc $ff $9a
	ld e, d                                          ; $7b74: $5a
	or l                                             ; $7b75: $b5
	ld h, e                                          ; $7b76: $63
	ld d, $03                                        ; $7b77: $16 $03
	ld [hl], a                                       ; $7b79: $77
	ld h, l                                          ; $7b7a: $65

jr_046_7b7b:
	rst SubAFromDE                                          ; $7b7b: $df
	rst $38                                          ; $7b7c: $ff
	ld [hl], a                                       ; $7b7d: $77
	jp z, $9f95                                      ; $7b7e: $ca $95 $9f

	inc bc                                           ; $7b81: $03
	db $e4                                           ; $7b82: $e4
	ld h, a                                          ; $7b83: $67
	ld [hl+], a                                      ; $7b84: $22
	ccf                                              ; $7b85: $3f
	ccf                                              ; $7b86: $3f
	ld [hl-], a                                      ; $7b87: $32
	nop                                              ; $7b88: $00
	call nz, $ffde                                   ; $7b89: $c4 $de $ff
	add b                                            ; $7b8c: $80
	ld [$ebf5], a                                    ; $7b8d: $ea $f5 $eb
	ld d, h                                          ; $7b90: $54
	add b                                            ; $7b91: $80
	rst SubAFromDE                                          ; $7b92: $df
	rst $38                                          ; $7b93: $ff
	db $fd                                           ; $7b94: $fd
	rst $38                                          ; $7b95: $ff
	cp a                                             ; $7b96: $bf
	scf                                              ; $7b97: $37
	daa                                              ; $7b98: $27
	ld c, a                                          ; $7b99: $4f
	sbc a                                            ; $7b9a: $9f
	rst $38                                          ; $7b9b: $ff
	rst $38                                          ; $7b9c: $ff
	ld [bc], a                                       ; $7b9d: $02
	add l                                            ; $7b9e: $85
	ld b, d                                          ; $7b9f: $42
	add l                                            ; $7ba0: $85
	ld a, [bc]                                       ; $7ba1: $0a
	inc d                                            ; $7ba2: $14
	ld l, d                                          ; $7ba3: $6a
	add b                                            ; $7ba4: $80
	and b                                            ; $7ba5: $a0
	ld b, l                                          ; $7ba6: $45
	cp b                                             ; $7ba7: $b8

Call_046_7ba8:
	cp a                                             ; $7ba8: $bf
	rst $38                                          ; $7ba9: $ff
	cp a                                             ; $7baa: $bf
	rst $38                                          ; $7bab: $ff
	sbc [hl]                                         ; $7bac: $9e
	ld a, a                                          ; $7bad: $7f
	cp $96                                           ; $7bae: $fe $96
	jr nz, jr_046_7be8                               ; $7bb0: $20 $36

	ld c, $27                                        ; $7bb2: $0e $27
	ld c, d                                          ; $7bb4: $4a
	xor b                                            ; $7bb5: $a8
	dec e                                            ; $7bb6: $1d
	xor a                                            ; $7bb7: $af
	db $fd                                           ; $7bb8: $fd
	ld [hl], a                                       ; $7bb9: $77
	jp $94ff                                         ; $7bba: $c3 $ff $94


	inc c                                            ; $7bbd: $0c
	ld l, b                                          ; $7bbe: $68
	ld b, b                                          ; $7bbf: $40
	adc b                                            ; $7bc0: $88
	ret nc                                           ; $7bc1: $d0

	db $ed                                           ; $7bc2: $ed
	sbc a                                            ; $7bc3: $9f
	dec a                                            ; $7bc4: $3d
	rst FarCall                                          ; $7bc5: $f7
	rst $38                                          ; $7bc6: $ff
	rst FarCall                                          ; $7bc7: $f7
	ld [hl], e                                       ; $7bc8: $73
	ldh a, [hDisp1_OBP1]                                     ; $7bc9: $f0 $94
	ld bc, $2002                                     ; $7bcb: $01 $02 $20
	ld a, [hl-]                                      ; $7bce: $3a
	ld [hl], a                                       ; $7bcf: $77
	ld l, $ff                                        ; $7bd0: $2e $ff
	rst FarCall                                          ; $7bd2: $f7
	ei                                               ; $7bd3: $fb
	rst $38                                          ; $7bd4: $ff
	rst AddAOntoHL                                          ; $7bd5: $ef
	ld a, e                                          ; $7bd6: $7b
	and b                                            ; $7bd7: $a0
	sbc [hl]                                         ; $7bd8: $9e
	ld l, d                                          ; $7bd9: $6a
	ld a, d                                          ; $7bda: $7a
	db $db                                           ; $7bdb: $db
	sub a                                            ; $7bdc: $97
	ld bc, $1900                                     ; $7bdd: $01 $00 $19
	db $10                                           ; $7be0: $10
	rst $38                                          ; $7be1: $ff
	db $fd                                           ; $7be2: $fd
	xor e                                            ; $7be3: $ab
	halt                                             ; $7be4: $76
	ld [hl], a                                       ; $7be5: $77
	sub b                                            ; $7be6: $90
	sub [hl]                                         ; $7be7: $96

jr_046_7be8:
	ld a, [bc]                                       ; $7be8: $0a
	stop                                             ; $7be9: $10 $00
	ld b, $6f                                        ; $7beb: $06 $6f
	add d                                            ; $7bed: $82
	ld c, c                                          ; $7bee: $49
	ld e, $fc                                        ; $7bef: $1e $fc
	sbc $fe                                          ; $7bf1: $de $fe
	sbc [hl]                                         ; $7bf3: $9e
	ldh a, [$73]                                     ; $7bf4: $f0 $73
	ret nc                                           ; $7bf6: $d0

	rst $38                                          ; $7bf7: $ff
	sbc h                                            ; $7bf8: $9c
	jr nc, jr_046_7b7b                               ; $7bf9: $30 $80

	ld b, b                                          ; $7bfb: $40
	ld a, [$819d]                                    ; $7bfc: $fa $9d $81
	jp $08d9                                         ; $7bff: $c3 $d9 $08


	cp $9e                                           ; $7c02: $fe $9e
	ld a, h                                          ; $7c04: $7c
	ld [hl], a                                       ; $7c05: $77
	ld b, b                                          ; $7c06: $40
	db $fd                                           ; $7c07: $fd
	adc c                                            ; $7c08: $89
	inc b                                            ; $7c09: $04
	ld [bc], a                                       ; $7c0a: $02
	ld bc, $0f00                                     ; $7c0b: $01 $00 $0f
	rrca                                             ; $7c0e: $0f
	rra                                              ; $7c0f: $1f
	rra                                              ; $7c10: $1f
	ccf                                              ; $7c11: $3f
	rrca                                             ; $7c12: $0f
	adc a                                            ; $7c13: $8f
	rst $38                                          ; $7c14: $ff
	ld a, [bc]                                       ; $7c15: $0a
	dec b                                            ; $7c16: $05
	ld a, [bc]                                       ; $7c17: $0a
	dec d                                            ; $7c18: $15
	jr z, @+$05                                      ; $7c19: $28 $03

	ld c, $3d                                        ; $7c1b: $0e $3d
	ld hl, sp-$02                                    ; $7c1d: $f8 $fe
	db $db                                           ; $7c1f: $db
	rst $38                                          ; $7c20: $ff
	add [hl]                                         ; $7c21: $86
	db $10                                           ; $7c22: $10
	ld [bc], a                                       ; $7c23: $02
	adc e                                            ; $7c24: $8b
	ld d, $ba                                        ; $7c25: $16 $ba
	ld e, l                                          ; $7c27: $5d
	cp e                                             ; $7c28: $bb
	ld [hl], a                                       ; $7c29: $77
	nop                                              ; $7c2a: $00
	nop                                              ; $7c2b: $00
	pop hl                                           ; $7c2c: $e1
	ldh [$e0], a                                     ; $7c2d: $e0 $e0
	rst AddAOntoHL                                          ; $7c2f: $ef
	rst SubAFromBC                                          ; $7c30: $e7
	rst $38                                          ; $7c31: $ff
	ld [bc], a                                       ; $7c32: $02
	nop                                              ; $7c33: $00
	ld b, c                                          ; $7c34: $41
	ld h, b                                          ; $7c35: $60
	ld h, b                                          ; $7c36: $60
	halt                                             ; $7c37: $76
	rst SubAFromBC                                          ; $7c38: $e7
	jp nc, $7338                                     ; $7c39: $d2 $38 $73

	inc bc                                           ; $7c3c: $03
	rst SubAFromDE                                          ; $7c3d: $df
	rst $38                                          ; $7c3e: $ff
	sbc [hl]                                         ; $7c3f: $9e
	jr z, jr_046_7cbd                                ; $7c40: $28 $7b

	and l                                            ; $7c42: $a5
	sbc e                                            ; $7c43: $9b
	inc bc                                           ; $7c44: $03
	ld b, e                                          ; $7c45: $43
	ld [hl], b                                       ; $7c46: $70
	ld [$797b], a                                    ; $7c47: $ea $7b $79
	adc a                                            ; $7c4a: $8f
	pop hl                                           ; $7c4b: $e1
	ldh a, [$f8]                                     ; $7c4c: $f0 $f8
	db $fd                                           ; $7c4e: $fd
	rst $38                                          ; $7c4f: $ff
	and b                                            ; $7c50: $a0
	ld [bc], a                                       ; $7c51: $02
	add b                                            ; $7c52: $80
	ld b, b                                          ; $7c53: $40
	and b                                            ; $7c54: $a0
	ld c, b                                          ; $7c55: $48
	ld e, b                                          ; $7c56: $58
	inc [hl]                                         ; $7c57: $34
	inc bc                                           ; $7c58: $03
	daa                                              ; $7c59: $27
	ld a, h                                          ; $7c5a: $7c
	ld [hl], e                                       ; $7c5b: $73
	cp [hl]                                          ; $7c5c: $be
	sub a                                            ; $7c5d: $97
	ld bc, $5622                                     ; $7c5e: $01 $22 $56
	and b                                            ; $7c61: $a0
	nop                                              ; $7c62: $00
	nop                                              ; $7c63: $00
	ld c, h                                          ; $7c64: $4c
	jr jr_046_7ce2                                   ; $7c65: $18 $7b

	ld h, l                                          ; $7c67: $65
	ld [hl], d                                       ; $7c68: $72
	cp [hl]                                          ; $7c69: $be
	sbc [hl]                                         ; $7c6a: $9e
	dec d                                            ; $7c6b: $15
	ld [hl], a                                       ; $7c6c: $77
	add [hl]                                         ; $7c6d: $86
	sub h                                            ; $7c6e: $94
	adc e                                            ; $7c6f: $8b
	rlca                                             ; $7c70: $07
	ld [bc], a                                       ; $7c71: $02
	push de                                          ; $7c72: $d5
	xor b                                            ; $7c73: $a8
	ld h, b                                          ; $7c74: $60
	or b                                             ; $7c75: $b0
	ld b, c                                          ; $7c76: $41
	and c                                            ; $7c77: $a1
	ld [hl], a                                       ; $7c78: $77
	xor e                                            ; $7c79: $ab
	ld sp, hl                                        ; $7c7a: $f9
	sub h                                            ; $7c7b: $94
	ld a, a                                          ; $7c7c: $7f
	sbc $fc                                          ; $7c7d: $de $fc

Call_046_7c7f:
	sbc $9e                                          ; $7c7f: $de $9e
	pop bc                                           ; $7c81: $c1
	ld a, [hl+]                                      ; $7c82: $2a
	ldh a, [rAUD2LOW]                                ; $7c83: $f0 $18
	inc b                                            ; $7c85: $04
	jr nc, jr_046_7cff                               ; $7c86: $30 $77

	sbc $9a                                          ; $7c88: $de $9a
	ld b, b                                          ; $7c8a: $40
	ld b, l                                          ; $7c8b: $45
	ld [hl], h                                       ; $7c8c: $74
	add hl, bc                                       ; $7c8d: $09
	rla                                              ; $7c8e: $17
	sbc $ff                                          ; $7c8f: $de $ff
	sbc [hl]                                         ; $7c91: $9e
	ei                                               ; $7c92: $fb
	ld a, e                                          ; $7c93: $7b
	db $10                                           ; $7c94: $10
	add b                                            ; $7c95: $80
	inc bc                                           ; $7c96: $03
	dec d                                            ; $7c97: $15
	dec bc                                           ; $7c98: $0b
	inc b                                            ; $7c99: $04
	ret c                                            ; $7c9a: $d8

	rst $38                                          ; $7c9b: $ff
	dec sp                                           ; $7c9c: $3b

Call_046_7c9d:
	ld [hl], $fd                                     ; $7c9d: $36 $fd
	cp $fe                                           ; $7c9f: $fe $fe
	rst FarCall                                          ; $7ca1: $f7
	ldh [$64], a                                     ; $7ca2: $e0 $64
	dec b                                            ; $7ca4: $05
	dec de                                           ; $7ca5: $1b
	sub c                                            ; $7ca6: $91
	add b                                            ; $7ca7: $80
	nop                                              ; $7ca8: $00
	pop hl                                           ; $7ca9: $e1
	ld b, b                                          ; $7caa: $40
	jp $e38a                                         ; $7cab: $c3 $8a $e3


	pop hl                                           ; $7cae: $e1
	call nz, Call_046_5bbf                           ; $7caf: $c4 $bf $5b
	ccf                                              ; $7cb2: $3f
	add c                                            ; $7cb3: $81
	ld bc, $a198                                     ; $7cb4: $01 $98 $a1
	ld h, c                                          ; $7cb7: $61
	nop                                              ; $7cb8: $00
	ld a, [bc]                                       ; $7cb9: $0a
	ld de, $3f2b                                     ; $7cba: $11 $2b $3f

jr_046_7cbd:
	db $db                                           ; $7cbd: $db
	rst $38                                          ; $7cbe: $ff
	sub [hl]                                         ; $7cbf: $96
	rst FarCall                                          ; $7cc0: $f7
	rrca                                             ; $7cc1: $0f
	dec bc                                           ; $7cc2: $0b
	push de                                          ; $7cc3: $d5
	ld l, e                                          ; $7cc4: $6b
	ld d, d                                          ; $7cc5: $52
	add c                                            ; $7cc6: $81
	nop                                              ; $7cc7: $00
	ld bc, $ffd9                                     ; $7cc8: $01 $d9 $ff
	sub a                                            ; $7ccb: $97
	ld a, [hl]                                       ; $7ccc: $7e
	cp h                                             ; $7ccd: $bc
	rst $38                                          ; $7cce: $ff
	rst $38                                          ; $7ccf: $ff
	cp $6e                                           ; $7cd0: $fe $6e
	ccf                                              ; $7cd2: $3f
	ld a, a                                          ; $7cd3: $7f
	ld a, d                                          ; $7cd4: $7a
	adc [hl]                                         ; $7cd5: $8e
	ld l, [hl]                                       ; $7cd6: $6e
	ld b, c                                          ; $7cd7: $41
	sub a                                            ; $7cd8: $97
	ld h, b                                          ; $7cd9: $60
	call nz, Call_046_50fe                           ; $7cda: $c4 $fe $50
	xor a                                            ; $7cdd: $af
	rst $38                                          ; $7cde: $ff
	ccf                                              ; $7cdf: $3f
	cp $7a                                           ; $7ce0: $fe $7a

jr_046_7ce2:
	sub e                                            ; $7ce2: $93
	db $dd                                           ; $7ce3: $dd
	rst $38                                          ; $7ce4: $ff
	sub a                                            ; $7ce5: $97
	ld b, b                                          ; $7ce6: $40
	inc b                                            ; $7ce7: $04
	ld [$7ff5], sp                                   ; $7ce8: $08 $f5 $7f
	db $eb                                           ; $7ceb: $eb
	rst SubAFromHL                                          ; $7cec: $d7
	ei                                               ; $7ced: $fb
	reti                                             ; $7cee: $d9


	rst $38                                          ; $7cef: $ff
	adc a                                            ; $7cf0: $8f
	rrca                                             ; $7cf1: $0f
	ld d, $ad                                        ; $7cf2: $16 $ad
	halt                                             ; $7cf4: $76
	db $fd                                           ; $7cf5: $fd
	cp e                                             ; $7cf6: $bb
	ld a, l                                          ; $7cf7: $7d
	rst $38                                          ; $7cf8: $ff
	ld e, a                                          ; $7cf9: $5f
	cp a                                             ; $7cfa: $bf

Call_046_7cfb:
	and $c1                                          ; $7cfb: $e6 $c1
	ld [hl], c                                       ; $7cfd: $71
	nop                                              ; $7cfe: $00

jr_046_7cff:
	ld [$fd1c], sp                                   ; $7cff: $08 $1c $fd
	ld a, l                                          ; $7d02: $7d
	sbc $7f                                          ; $7d03: $de $7f
	rst FarCall                                          ; $7d05: $f7
	add h                                            ; $7d06: $84
	ld l, a                                          ; $7d07: $6f
	ld e, b                                          ; $7d08: $58
	sbc e                                            ; $7d09: $9b
	dec de                                           ; $7d0a: $1b
	dec de                                           ; $7d0b: $1b
	jr jr_046_7d26                                   ; $7d0c: $18 $18

	add hl, de                                       ; $7d0e: $19
	ld [$0a08], sp                                   ; $7d0f: $08 $08 $0a
	add hl, bc                                       ; $7d12: $09
	ld [$1808], sp                                   ; $7d13: $08 $08 $18
	jr jr_046_7d73                                   ; $7d16: $18 $5b

	sbc [hl]                                         ; $7d18: $9e
	sub l                                            ; $7d19: $95
	ret z                                            ; $7d1a: $c8

	sub $1f                                          ; $7d1b: $d6 $1f
	cp l                                             ; $7d1d: $bd
	ld a, [$0840]                                    ; $7d1e: $fa $40 $08
	sub b                                            ; $7d21: $90
	ld a, e                                          ; $7d22: $7b
	ldh [c], a                                       ; $7d23: $e2
	sub b                                            ; $7d24: $90
	inc d                                            ; $7d25: $14

jr_046_7d26:
	and b                                            ; $7d26: $a0
	ldh a, [c]                                       ; $7d27: $f2
	push bc                                          ; $7d28: $c5
	db $fd                                           ; $7d29: $fd
	ld [hl], a                                       ; $7d2a: $77
	ldh a, [c]                                       ; $7d2b: $f2
	ldh [$d4], a                                     ; $7d2c: $e0 $d4
	cp l                                             ; $7d2e: $bd
	jr nz, jr_046_7d71                               ; $7d2f: $20 $40

	ld d, h                                          ; $7d31: $54
	jr nz, jr_046_7d74                               ; $7d32: $20 $40

	ld a, e                                          ; $7d34: $7b
	rst GetHLinHL                                          ; $7d35: $cf
	add b                                            ; $7d36: $80
	rst $38                                          ; $7d37: $ff
	rst SubAFromDE                                          ; $7d38: $df
	xor $b7                                          ; $7d39: $ee $b7
	inc l                                            ; $7d3b: $2c
	ccf                                              ; $7d3c: $3f
	ld l, a                                          ; $7d3d: $6f
	rst SubAFromDE                                          ; $7d3e: $df
	ld b, d                                          ; $7d3f: $42
	add c                                            ; $7d40: $81
	inc b                                            ; $7d41: $04
	nop                                              ; $7d42: $00
	nop                                              ; $7d43: $00
	add hl, bc                                       ; $7d44: $09
	ld [bc], a                                       ; $7d45: $02
	inc b                                            ; $7d46: $04
	xor l                                            ; $7d47: $ad
	cp $f9                                           ; $7d48: $fe $f9
	db $db                                           ; $7d4a: $db
	db $fc                                           ; $7d4b: $fc
	jp c, $1eeb                                      ; $7d4c: $da $eb $1e

	add b                                            ; $7d4f: $80
	ld [$3020], sp                                   ; $7d50: $08 $20 $30
	ld c, b                                          ; $7d53: $48
	nop                                              ; $7d54: $00
	nop                                              ; $7d55: $00
	sub a                                            ; $7d56: $97
	ld [bc], a                                       ; $7d57: $02
	rst FarCall                                          ; $7d58: $f7
	cp e                                             ; $7d59: $bb
	ld a, l                                          ; $7d5a: $7d
	db $db                                           ; $7d5b: $db
	sub l                                            ; $7d5c: $95
	ld [$624c], a                                    ; $7d5d: $ea $4c $62
	ld h, [hl]                                       ; $7d60: $66
	sub a                                            ; $7d61: $97
	ld l, d                                          ; $7d62: $6a
	rst SubAFromDE                                          ; $7d63: $df
	cp [hl]                                          ; $7d64: $be
	sub l                                            ; $7d65: $95
	ld [$6a97], a                                    ; $7d66: $ea $97 $6a
	add l                                            ; $7d69: $85
	ld a, e                                          ; $7d6a: $7b
	or h                                             ; $7d6b: $b4
	ld a, e                                          ; $7d6c: $7b
	ldh [c], a                                       ; $7d6d: $e2
	ld a, c                                          ; $7d6e: $79
	ld a, b                                          ; $7d6f: $78
	sbc b                                            ; $7d70: $98

jr_046_7d71:
	ld e, l                                          ; $7d71: $5d
	xor [hl]                                         ; $7d72: $ae

jr_046_7d73:
	ld e, c                                          ; $7d73: $59

jr_046_7d74:
	rlca                                             ; $7d74: $07
	dec hl                                           ; $7d75: $2b
	push de                                          ; $7d76: $d5
	ld [$b57b], a                                    ; $7d77: $ea $7b $b5
	db $fd                                           ; $7d7a: $fd
	sub a                                            ; $7d7b: $97
	ret nz                                           ; $7d7c: $c0

	ei                                               ; $7d7d: $fb
	ld a, l                                          ; $7d7e: $7d
	xor e                                            ; $7d7f: $ab
	ld a, d                                          ; $7d80: $7a
	or a                                             ; $7d81: $b7
	and h                                            ; $7d82: $a4
	ld d, b                                          ; $7d83: $50
	ld a, d                                          ; $7d84: $7a
	or h                                             ; $7d85: $b4
	ld [hl], h                                       ; $7d86: $74
	jp hl                                            ; $7d87: $e9


	rst $38                                          ; $7d88: $ff
	sub a                                            ; $7d89: $97
	ld [hl], h                                       ; $7d8a: $74
	cp h                                             ; $7d8b: $bc
	ccf                                              ; $7d8c: $3f
	rra                                              ; $7d8d: $1f
	inc a                                            ; $7d8e: $3c
	rlca                                             ; $7d8f: $07
	rrca                                             ; $7d90: $0f
	cp a                                             ; $7d91: $bf

jr_046_7d92:
	ld [hl], l                                       ; $7d92: $75
	ldh a, [rPCM34]                                  ; $7d93: $f0 $77
	rst GetHLinHL                                          ; $7d95: $cf
	sbc l                                            ; $7d96: $9d
	ldh a, [rAUD4GO]                                 ; $7d97: $f0 $23
	ld a, c                                          ; $7d99: $79
	pop hl                                           ; $7d9a: $e1
	ld a, d                                          ; $7d9b: $7a
	sbc [hl]                                         ; $7d9c: $9e
	ld a, a                                          ; $7d9d: $7f
	or b                                             ; $7d9e: $b0
	sub h                                            ; $7d9f: $94
	ld d, b                                          ; $7da0: $50
	ld [$0054], a                                    ; $7da1: $ea $54 $00
	ld b, b                                          ; $7da4: $40
	ld [bc], a                                       ; $7da5: $02
	rst $38                                          ; $7da6: $ff
	add a                                            ; $7da7: $87
	rst FarCall                                          ; $7da8: $f7
	cp a                                             ; $7da9: $bf
	rst SubAFromDE                                          ; $7daa: $df
	ld a, c                                          ; $7dab: $79
	and b                                            ; $7dac: $a0
	ld a, a                                          ; $7dad: $7f
	sub h                                            ; $7dae: $94
	sub [hl]                                         ; $7daf: $96
	jr nz, jr_046_7d92                               ; $7db0: $20 $e0

	ld [$1201], sp                                   ; $7db2: $08 $01 $12
	rst SubAFromHL                                          ; $7db5: $d7
	sbc a                                            ; $7db6: $9f
	db $fc                                           ; $7db7: $fc
	ld sp, hl                                        ; $7db8: $f9
	ld a, d                                          ; $7db9: $7a
	rst FarCall                                          ; $7dba: $f7
	halt                                             ; $7dbb: $76
	db $10                                           ; $7dbc: $10
	sbc c                                            ; $7dbd: $99
	adc b                                            ; $7dbe: $88
	nop                                              ; $7dbf: $00
	dec bc                                           ; $7dc0: $0b
	rrca                                             ; $7dc1: $0f
	add h                                            ; $7dc2: $84
	xor $6e                                          ; $7dc3: $ee $6e
	ld [hl], d                                       ; $7dc5: $72
	ld a, l                                          ; $7dc6: $7d
	cp l                                             ; $7dc7: $bd
	sub a                                            ; $7dc8: $97
	inc l                                            ; $7dc9: $2c
	ld bc, $8b01                                     ; $7dca: $01 $01 $8b
	ld e, a                                          ; $7dcd: $5f
	ld [wSwapDEandHL], a                                    ; $7dce: $ea $d4 $ce
	reti                                             ; $7dd1: $d9


	rst $38                                          ; $7dd2: $ff
	ld a, a                                          ; $7dd3: $7f
	and h                                            ; $7dd4: $a4
	sbc c                                            ; $7dd5: $99
	jp nz, Jump_046_7fcd                             ; $7dd6: $c2 $cd $7f

	ccf                                              ; $7dd9: $3f
	ld e, a                                          ; $7dda: $5f
	cp e                                             ; $7ddb: $bb
	reti                                             ; $7ddc: $d9


	rst $38                                          ; $7ddd: $ff
	sub h                                            ; $7dde: $94
	ld a, $4f                                        ; $7ddf: $3e $4f
	cp $ff                                           ; $7de1: $fe $ff
	cp $7f                                           ; $7de3: $fe $7f
	rst $38                                          ; $7de5: $ff
	xor $ff                                          ; $7de6: $ee $ff
	rst $38                                          ; $7de8: $ff
	rst SubAFromDE                                          ; $7de9: $df
	sbc $ff                                          ; $7dea: $de $ff
	sub l                                            ; $7dec: $95
	db $fd                                           ; $7ded: $fd
	db $dd                                           ; $7dee: $dd
	ld a, a                                          ; $7def: $7f
	rst SubAFromDE                                          ; $7df0: $df
	rst AddAOntoHL                                          ; $7df1: $ef
	rst SubAFromHL                                          ; $7df2: $d7
	ei                                               ; $7df3: $fb
	or $d9                                           ; $7df4: $f6 $d9
	ld hl, sp-$2b                                    ; $7df6: $f8 $d5
	rst $38                                          ; $7df8: $ff
	sbc e                                            ; $7df9: $9b
	ld l, e                                          ; $7dfa: $6b
	or l                                             ; $7dfb: $b5
	db $eb                                           ; $7dfc: $eb
	pop af                                           ; $7dfd: $f1
	sub $ff                                          ; $7dfe: $d6 $ff

Call_046_7e00:
	sbc d                                            ; $7e00: $9a
	xor $df                                          ; $7e01: $ee $df
	ei                                               ; $7e03: $fb
	ld h, d                                          ; $7e04: $62
	push af                                          ; $7e05: $f5
	ld [hl], e                                       ; $7e06: $73
	sub l                                            ; $7e07: $95
	sbc c                                            ; $7e08: $99
	nop                                              ; $7e09: $00
	ccf                                              ; $7e0a: $3f
	nop                                              ; $7e0b: $00
	ld d, h                                          ; $7e0c: $54
	xor d                                            ; $7e0d: $aa
	ld d, h                                          ; $7e0e: $54
	ld [hl], a                                       ; $7e0f: $77
	ld b, c                                          ; $7e10: $41
	sub e                                            ; $7e11: $93
	rst $38                                          ; $7e12: $ff
	ld e, e                                          ; $7e13: $5b
	rst $38                                          ; $7e14: $ff
	rst $38                                          ; $7e15: $ff
	ld e, c                                          ; $7e16: $59
	cp d                                             ; $7e17: $ba
	ld e, l                                          ; $7e18: $5d
	jr jr_046_7e33                                   ; $7e19: $18 $18

	ld [$2819], sp                                   ; $7e1b: $08 $19 $28
	db $dd                                           ; $7e1e: $dd
	ld [$ff94], sp                                   ; $7e1f: $08 $94 $ff
	db $f4                                           ; $7e22: $f4
	rst $38                                          ; $7e23: $ff
	dec d                                            ; $7e24: $15
	ld a, [bc]                                       ; $7e25: $0a
	dec d                                            ; $7e26: $15
	ld a, [bc]                                       ; $7e27: $0a
	nop                                              ; $7e28: $00
	nop                                              ; $7e29: $00
	ld d, b                                          ; $7e2a: $50
	or h                                             ; $7e2b: $b4
	ld l, h                                          ; $7e2c: $6c
	add hl, sp                                       ; $7e2d: $39
	sbc h                                            ; $7e2e: $9c
	ld d, a                                          ; $7e2f: $57
	rst $38                                          ; $7e30: $ff
	ld [hl], l                                       ; $7e31: $75
	ld a, b                                          ; $7e32: $78

jr_046_7e33:
	adc c                                            ; $7e33: $89
	ld a, a                                          ; $7e34: $7f
	inc sp                                           ; $7e35: $33
	sbc [hl]                                         ; $7e36: $9e
	nop                                              ; $7e37: $00
	ld l, h                                          ; $7e38: $6c
	ld h, [hl]                                       ; $7e39: $66
	sbc $ff                                          ; $7e3a: $de $ff
	sub l                                            ; $7e3c: $95
	ld d, l                                          ; $7e3d: $55
	xor e                                            ; $7e3e: $ab
	ld d, [hl]                                       ; $7e3f: $56
	xor b                                            ; $7e40: $a8
	ld b, b                                          ; $7e41: $40
	ldh [$8a], a                                     ; $7e42: $e0 $8a
	ld d, l                                          ; $7e44: $55
	nop                                              ; $7e45: $00
	inc bc                                           ; $7e46: $03
	ld l, b                                          ; $7e47: $68
	or h                                             ; $7e48: $b4
	sbc $ff                                          ; $7e49: $de $ff
	adc a                                            ; $7e4b: $8f
	rra                                              ; $7e4c: $1f
	rst $38                                          ; $7e4d: $ff
	add h                                            ; $7e4e: $84
	ld [hl-], a                                      ; $7e4f: $32
	db $fd                                           ; $7e50: $fd
	call nz, $1cec                                   ; $7e51: $c4 $ec $1c
	jr @-$72                                         ; $7e54: $18 $8c

	ld bc, $55ab                                     ; $7e56: $01 $ab $55
	add b                                            ; $7e59: $80
	ld d, l                                          ; $7e5a: $55
	add b                                            ; $7e5b: $80
	ld [hl], h                                       ; $7e5c: $74
	pop af                                           ; $7e5d: $f1
	ld l, a                                          ; $7e5e: $6f
	ret nc                                           ; $7e5f: $d0

	ld a, [hl]                                       ; $7e60: $7e
	ccf                                              ; $7e61: $3f
	ld a, a                                          ; $7e62: $7f
	rst SubAFromHL                                          ; $7e63: $d7
	sbc d                                            ; $7e64: $9a
	dec d                                            ; $7e65: $15
	nop                                              ; $7e66: $00
	and b                                            ; $7e67: $a0
	nop                                              ; $7e68: $00
	add b                                            ; $7e69: $80
	ld [hl], e                                       ; $7e6a: $73
	ret nz                                           ; $7e6b: $c0

	sub h                                            ; $7e6c: $94
	ld e, a                                          ; $7e6d: $5f
	rst $38                                          ; $7e6e: $ff
	db $fd                                           ; $7e6f: $fd
	cp $55                                           ; $7e70: $fe $55
	ld a, [bc]                                       ; $7e72: $0a
	ld b, b                                          ; $7e73: $40
	ld e, $00                                        ; $7e74: $1e $00
	nop                                              ; $7e76: $00
	and b                                            ; $7e77: $a0
	ld [hl], a                                       ; $7e78: $77
	add c                                            ; $7e79: $81
	ld [hl], l                                       ; $7e7a: $75
	ldh a, [c]                                       ; $7e7b: $f2
	ld [hl], a                                       ; $7e7c: $77
	and d                                            ; $7e7d: $a2
	cp $73                                           ; $7e7e: $fe $73
	ei                                               ; $7e80: $fb
	db $dd                                           ; $7e81: $dd
	rst $38                                          ; $7e82: $ff
	sbc [hl]                                         ; $7e83: $9e
	cp a                                             ; $7e84: $bf
	ld c, e                                          ; $7e85: $4b
	ldh a, [$7f]                                     ; $7e86: $f0 $7f
	ldh [$71], a                                     ; $7e88: $e0 $71
	ld [hl], h                                       ; $7e8a: $74
	sbc [hl]                                         ; $7e8b: $9e
	and h                                            ; $7e8c: $a4
	ld l, e                                          ; $7e8d: $6b
	ldh a, [$7d]                                     ; $7e8e: $f0 $7d
	pop de                                           ; $7e90: $d1
	sbc h                                            ; $7e91: $9c
	rst FarCall                                          ; $7e92: $f7

Call_046_7e93:
	xor e                                            ; $7e93: $ab
	dec b                                            ; $7e94: $05
	cp $9b                                           ; $7e95: $fe $9b
	xor e                                            ; $7e97: $ab
	ld [hl], l                                       ; $7e98: $75
	and d                                            ; $7e99: $a2
	ld bc, $c177                                     ; $7e9a: $01 $77 $c1
	sbc d                                            ; $7e9d: $9a

Call_046_7e9e:
	rst SubAFromBC                                          ; $7e9e: $e7
	ei                                               ; $7e9f: $fb
	push af                                          ; $7ea0: $f5
	ld a, [$fef1]                                    ; $7ea1: $fa $f1 $fe
	sbc d                                            ; $7ea4: $9a
	db $dd                                           ; $7ea5: $dd
	jp hl                                            ; $7ea6: $e9


	ret nz                                           ; $7ea7: $c0

	ld h, b                                          ; $7ea8: $60
	ret nc                                           ; $7ea9: $d0

	halt                                             ; $7eaa: $76
	rst JumpTable                                          ; $7eab: $c7
	sub [hl]                                         ; $7eac: $96
	ei                                               ; $7ead: $fb
	ld d, l                                          ; $7eae: $55
	xor d                                            ; $7eaf: $aa
	ld d, l                                          ; $7eb0: $55
	rra                                              ; $7eb1: $1f
	nop                                              ; $7eb2: $00
	nop                                              ; $7eb3: $00
	and e                                            ; $7eb4: $a3
	ld d, c                                          ; $7eb5: $51
	cp $9e                                           ; $7eb6: $fe $9e
	ldh [rPCM34], a                                  ; $7eb8: $e0 $77
	or b                                             ; $7eba: $b0
	ld a, [hl]                                       ; $7ebb: $7e
	db $db                                           ; $7ebc: $db
	sbc [hl]                                         ; $7ebd: $9e
	rst SubAFromHL                                          ; $7ebe: $d7
	cp $9a                                           ; $7ebf: $fe $9a
	rla                                              ; $7ec1: $17
	ld a, [bc]                                       ; $7ec2: $0a
	ld de, $0120                                     ; $7ec3: $11 $20 $01
	ld a, e                                          ; $7ec6: $7b
	cp a                                             ; $7ec7: $bf
	ld a, a                                          ; $7ec8: $7f
	nop                                              ; $7ec9: $00
	ld a, d                                          ; $7eca: $7a
	sbc a                                            ; $7ecb: $9f
	add b                                            ; $7ecc: $80
	rra                                              ; $7ecd: $1f
	jr c, jr_046_7ed0                                ; $7ece: $38 $00

jr_046_7ed0:
	halt                                             ; $7ed0: $76
	xor a                                            ; $7ed1: $af
	rla                                              ; $7ed2: $17
	ld a, [hl+]                                      ; $7ed3: $2a
	add l                                            ; $7ed4: $85
	ld a, [bc]                                       ; $7ed5: $0a
	rst SubAFromHL                                          ; $7ed6: $d7
	rst $38                                          ; $7ed7: $ff
	ld sp, hl                                        ; $7ed8: $f9
	db $fd                                           ; $7ed9: $fd
	cp l                                             ; $7eda: $bd
	rst $38                                          ; $7edb: $ff
	db $ed                                           ; $7edc: $ed
	rst $38                                          ; $7edd: $ff
	ld a, l                                          ; $7ede: $7d
	add hl, sp                                       ; $7edf: $39
	ld l, l                                          ; $7ee0: $6d
	ld c, c                                          ; $7ee1: $49
	ld [$c5b8], sp                                   ; $7ee2: $08 $b8 $c5
	xor c                                            ; $7ee5: $a9
	ld a, c                                          ; $7ee6: $79
	db $fc                                           ; $7ee7: $fc
	rst $38                                          ; $7ee8: $ff
	di                                               ; $7ee9: $f3
	rst FarCall                                          ; $7eea: $f7
	ld h, a                                          ; $7eeb: $67
	add e                                            ; $7eec: $83
	xor $fe                                          ; $7eed: $ee $fe
	rst $38                                          ; $7eef: $ff
	db $fc                                           ; $7ef0: $fc
	ei                                               ; $7ef1: $fb
	pop hl                                           ; $7ef2: $e1
	ld h, e                                          ; $7ef3: $63
	ld l, a                                          ; $7ef4: $6f
	ld [hl], a                                       ; $7ef5: $77
	or $fc                                           ; $7ef6: $f6 $fc
	db $ec                                           ; $7ef8: $ec
	rst $38                                          ; $7ef9: $ff
	db $fd                                           ; $7efa: $fd
	db $fd                                           ; $7efb: $fd
	db $ed                                           ; $7efc: $ed
	ld a, e                                          ; $7efd: $7b
	ld a, a                                          ; $7efe: $7f

Jump_046_7eff:
	rst $38                                          ; $7eff: $ff
	ld a, [hl]                                       ; $7f00: $7e
	add sp, -$24                                     ; $7f01: $e8 $dc
	adc [hl]                                         ; $7f03: $8e
	ld b, c                                          ; $7f04: $41
	ld c, e                                          ; $7f05: $4b
	ld e, a                                          ; $7f06: $5f
	dec hl                                           ; $7f07: $2b
	scf                                              ; $7f08: $37
	ld sp, hl                                        ; $7f09: $f9
	reti                                             ; $7f0a: $d9


	rst $38                                          ; $7f0b: $ff
	ld a, l                                          ; $7f0c: $7d
	adc l                                            ; $7f0d: $8d
	ld l, a                                          ; $7f0e: $6f
	cp $62                                           ; $7f0f: $fe $62
	ld e, b                                          ; $7f11: $58
	ld c, e                                          ; $7f12: $4b
	ldh [$dd], a                                     ; $7f13: $e0 $dd
	ld bc, $039b                                     ; $7f15: $01 $9b $03
	ld [bc], a                                       ; $7f18: $02
	ld d, $1b                                        ; $7f19: $16 $1b
	halt                                             ; $7f1b: $76
	inc e                                            ; $7f1c: $1c
	adc d                                            ; $7f1d: $8a
	rst $38                                          ; $7f1e: $ff
	ldh a, [$e1]                                     ; $7f1f: $f0 $e1
	ldh a, [$f1]                                     ; $7f21: $f0 $f1
	ldh a, [c]                                       ; $7f23: $f2
	cp $fe                                           ; $7f24: $fe $fe
	ld hl, sp-$1f                                    ; $7f26: $f8 $e1
	nop                                              ; $7f28: $00
	adc a                                            ; $7f29: $8f
	ld e, a                                          ; $7f2a: $5f
	rrca                                             ; $7f2b: $0f
	ld e, [hl]                                       ; $7f2c: $5e
	ld hl, sp-$10                                    ; $7f2d: $f8 $f0
	ld [hl+], a                                      ; $7f2f: $22
	adc a                                            ; $7f30: $8f
	ld [hl], b                                       ; $7f31: $70
	ld [$007b], sp                                   ; $7f32: $08 $7b $00
	sub e                                            ; $7f35: $93
	dec d                                            ; $7f36: $15
	ld a, [hl+]                                      ; $7f37: $2a
	inc d                                            ; $7f38: $14
	ld a, [hl+]                                      ; $7f39: $2a
	rst SubAFromHL                                          ; $7f3a: $d7
	inc b                                            ; $7f3b: $04
	ld [bc], a                                       ; $7f3c: $02
	ld b, c                                          ; $7f3d: $41
	ldh [c], a                                       ; $7f3e: $e2
	pop bc                                           ; $7f3f: $c1
	jp $fec1                                         ; $7f40: $c3 $c1 $fe


	sbc d                                            ; $7f43: $9a
	and b                                            ; $7f44: $a0
	db $10                                           ; $7f45: $10
	sub b                                            ; $7f46: $90
	db $10                                           ; $7f47: $10
	sub b                                            ; $7f48: $90
	ld a, b                                          ; $7f49: $78
	ld l, b                                          ; $7f4a: $68
	sbc [hl]                                         ; $7f4b: $9e
	ld e, a                                          ; $7f4c: $5f
	db $dd                                           ; $7f4d: $dd
	ld l, a                                          ; $7f4e: $6f
	ld b, a                                          ; $7f4f: $47
	or b                                             ; $7f50: $b0
	inc bc                                           ; $7f51: $03
	ldh a, [$03]                                     ; $7f52: $f0 $03
	ldh a, [$03]                                     ; $7f54: $f0 $03
	ldh a, [$3b]                                     ; $7f56: $f0 $3b
	ldh a, [$9d]                                     ; $7f58: $f0 $9d
	ld hl, sp-$04                                    ; $7f5a: $f8 $fc
	db $db                                           ; $7f5c: $db
	rst $38                                          ; $7f5d: $ff
	sbc l                                            ; $7f5e: $9d
	rst SubAFromDE                                          ; $7f5f: $df
	rlca                                             ; $7f60: $07
	ld b, a                                          ; $7f61: $47
	ldh [$9b], a                                     ; $7f62: $e0 $9b
	inc a                                            ; $7f64: $3c
	inc e                                            ; $7f65: $1c
	inc c                                            ; $7f66: $0c
	inc e                                            ; $7f67: $1c
	db $dd                                           ; $7f68: $dd
	rra                                              ; $7f69: $1f
	adc h                                            ; $7f6a: $8c
	set 4, a                                         ; $7f6b: $cb $e7
	rst FarCall                                          ; $7f6d: $f7
	rst AddAOntoHL                                          ; $7f6e: $ef
	cp $ed                                           ; $7f6f: $fe $ed
	rst $38                                          ; $7f71: $ff
	rst AddAOntoHL                                          ; $7f72: $ef
	db $ec                                           ; $7f73: $ec
	or $f2                                           ; $7f74: $f6 $f2
	pop hl                                           ; $7f76: $e1

jr_046_7f77:
	ret nz                                           ; $7f77: $c0

	ret nz                                           ; $7f78: $c0

	add b                                            ; $7f79: $80
	add b                                            ; $7f7a: $80
	ld a, a                                          ; $7f7b: $7f
	db $eb                                           ; $7f7c: $eb
	ld e, a                                          ; $7f7d: $5f
	ld a, d                                          ; $7f7e: $7a
	add h                                            ; $7f7f: $84
	ld a, e                                          ; $7f80: $7b
	ldh [$98], a                                     ; $7f81: $e0 $98
	jr c, jr_046_7fb5                                ; $7f83: $38 $30

	jr nc, jr_046_7f77                               ; $7f85: $30 $f0

	ldh a, [$f1]                                     ; $7f87: $f0 $f1
	ld [hl], c                                       ; $7f89: $71
	ld [hl], h                                       ; $7f8a: $74
	scf                                              ; $7f8b: $37
	sbc e                                            ; $7f8c: $9b
	cp a                                             ; $7f8d: $bf
	ld l, a                                          ; $7f8e: $6f
	cp $ef                                           ; $7f8f: $fe $ef

Call_046_7f91:
	ld l, e                                          ; $7f91: $6b
	jp nz, $849e                                     ; $7f92: $c2 $9e $84

	ld h, a                                          ; $7f95: $67

Jump_046_7f96:
	and d                                            ; $7f96: $a2
	ld c, [hl]                                       ; $7f97: $4e
	ret nz                                           ; $7f98: $c0

	sbc l                                            ; $7f99: $9d
	ld e, d                                          ; $7f9a: $5a
	db $10                                           ; $7f9b: $10
	ld l, e                                          ; $7f9c: $6b
	ldh [$9e], a                                     ; $7f9d: $e0 $9e
	ldh [c], a                                       ; $7f9f: $e2
	ld h, a                                          ; $7fa0: $67
	ldh [$9e], a                                     ; $7fa1: $e0 $9e
	db $10                                           ; $7fa3: $10
	sbc $12                                          ; $7fa4: $de $12
	sbc e                                            ; $7fa6: $9b
	ld de, $070b                                     ; $7fa7: $11 $0b $07
	rlca                                             ; $7faa: $07
	call c, $94e0                                    ; $7fab: $dc $e0 $94
	di                                               ; $7fae: $f3
	xor h                                            ; $7faf: $ac
	nop                                              ; $7fb0: $00
	ld a, c                                          ; $7fb1: $79
	ld [bc], a                                       ; $7fb2: $02
	dec b                                            ; $7fb3: $05
	adc [hl]                                         ; $7fb4: $8e

jr_046_7fb5:
	dec d                                            ; $7fb5: $15
	rst $38                                          ; $7fb6: $ff
	cp $fe                                           ; $7fb7: $fe $fe
	db $fc                                           ; $7fb9: $fc
	sbc h                                            ; $7fba: $9c
	adc a                                            ; $7fbb: $8f
	inc bc                                           ; $7fbc: $03
	nop                                              ; $7fbd: $00
	ld a, c                                          ; $7fbe: $79
	ld d, d                                          ; $7fbf: $52

Jump_046_7fc0:
	sub b                                            ; $7fc0: $90
	ld a, [hl+]                                      ; $7fc1: $2a
	dec d                                            ; $7fc2: $15
	ld [hl+], a                                      ; $7fc3: $22
	sbc c                                            ; $7fc4: $99
	and d                                            ; $7fc5: $a2
	jp nz, $e0e1                                     ; $7fc6: $c2 $e1 $e0

	ret nz                                           ; $7fc9: $c0

	ret z                                            ; $7fca: $c8

	ret z                                            ; $7fcb: $c8

	ld b, h                                          ; $7fcc: $44

Jump_046_7fcd:
	inc c                                            ; $7fcd: $0c
	db $10                                           ; $7fce: $10
	sub b                                            ; $7fcf: $90
	ld a, b                                          ; $7fd0: $78
	ld a, d                                          ; $7fd1: $7a
	sbc d                                            ; $7fd2: $9a
	add b                                            ; $7fd3: $80
	ld a, [hl+]                                      ; $7fd4: $2a
	and b                                            ; $7fd5: $a0
	rst AddAOntoHL                                          ; $7fd6: $ef
	ld l, a                                          ; $7fd7: $6f
	ld a, d                                          ; $7fd8: $7a
	rla                                              ; $7fd9: $17
	sbc l                                            ; $7fda: $9d
	ld a, a                                          ; $7fdb: $7f
	push de                                          ; $7fdc: $d5
	ld l, b                                          ; $7fdd: $68
	add hl, sp                                       ; $7fde: $39
	sbc [hl]                                         ; $7fdf: $9e
	ldh [rOCPD], a                                   ; $7fe0: $e0 $6b
	ld d, b                                          ; $7fe2: $50
	sbc [hl]                                         ; $7fe3: $9e
	rra                                              ; $7fe4: $1f
	ld a, c                                          ; $7fe5: $79
	ld c, l                                          ; $7fe6: $4d
	inc bc                                           ; $7fe7: $03
	db $10                                           ; $7fe8: $10
	inc bc                                           ; $7fe9: $03
	ldh a, [rAUD2ENV]                                ; $7fea: $f0 $17
	ldh a, [$72]                                     ; $7fec: $f0 $72
	db $10                                           ; $7fee: $10

Jump_046_7fef:
	ld a, e                                          ; $7fef: $7b
	db $fd                                           ; $7ff0: $fd
	db $dd                                           ; $7ff1: $dd
	rst $38                                          ; $7ff2: $ff
	sbc e                                            ; $7ff3: $9b
	db $fc                                           ; $7ff4: $fc

Call_046_7ff5:
	ld hl, sp-$10                                    ; $7ff5: $f8 $f0
	ldh [$de], a                                     ; $7ff7: $e0 $de
	cp $95                                           ; $7ff9: $fe $95
	db $fc                                           ; $7ffb: $fc
	cp $fb                                           ; $7ffc: $fe $fb
	ldh a, [c]                                       ; $7ffe: $f2

Call_046_7fff:
	db $e6                                           ; $7fff: $e6
