; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $04a", ROMX[$4000], BANK[$4a]

	ld a, d                                          ; $4000: $7a
	call nz, $fc67                                   ; $4001: $c4 $67 $fc
	ld a, [hl]                                       ; $4004: $7e
	cp h                                             ; $4005: $bc
	ld a, h                                          ; $4006: $7c
	ld c, l                                          ; $4007: $4d
	ld a, [hl]                                       ; $4008: $7e
	call z, $fc7f                                    ; $4009: $cc $7f $fc
	rst FarCall                                          ; $400c: $f7
	ld [hl], l                                       ; $400d: $75
	ld a, h                                          ; $400e: $7c
	ld l, [hl]                                       ; $400f: $6e
	add d                                            ; $4010: $82
	ld [hl], a                                       ; $4011: $77
	db $fc                                           ; $4012: $fc
	ld a, [hl]                                       ; $4013: $7e
	xor b                                            ; $4014: $a8
	ld [hl], l                                       ; $4015: $75
	ld a, h                                          ; $4016: $7c
	ld [hl], a                                       ; $4017: $77
	db $fc                                           ; $4018: $fc
	ld [hl], a                                       ; $4019: $77
	daa                                              ; $401a: $27
	halt                                             ; $401b: $76
	xor b                                            ; $401c: $a8
	ld a, h                                          ; $401d: $7c
	inc a                                            ; $401e: $3c
	ld a, [hl]                                       ; $401f: $7e
	call z, $fc7f                                    ; $4020: $cc $7f $fc
	sbc l                                            ; $4023: $9d
	ld d, h                                          ; $4024: $54
	xor e                                            ; $4025: $ab
	ld l, [hl]                                       ; $4026: $6e
	xor b                                            ; $4027: $a8
	ld a, a                                          ; $4028: $7f
	db $fc                                           ; $4029: $fc
	ld d, a                                          ; $402a: $57
	inc d                                            ; $402b: $14
	ld a, a                                          ; $402c: $7f
	reti                                             ; $402d: $d9


	adc d                                            ; $402e: $8a
	ld bc, $abfe                                     ; $402f: $01 $fe $ab
	call nc, $e855                                   ; $4032: $d4 $55 $e8
	ld h, l                                          ; $4035: $65
	ret nz                                           ; $4036: $c0

	ld b, b                                          ; $4037: $40
	add b                                            ; $4038: $80
	adc [hl]                                         ; $4039: $8e
	add b                                            ; $403a: $80
	add h                                            ; $403b: $84
	inc c                                            ; $403c: $0c
	ld e, $0c                                        ; $403d: $1e $0c
	ld [hl], $18                                     ; $403f: $36 $18
	ld l, b                                          ; $4041: $68
	nop                                              ; $4042: $00
	reti                                             ; $4043: $d9


	db $fc                                           ; $4044: $fc
	ld a, [hl]                                       ; $4045: $7e
	rst JumpTable                                          ; $4046: $c7
	sbc [hl]                                         ; $4047: $9e
	inc b                                            ; $4048: $04
	ld a, d                                          ; $4049: $7a
	ld h, b                                          ; $404a: $60
	adc h                                            ; $404b: $8c
	ld c, $01                                        ; $404c: $0e $01
	ld d, e                                          ; $404e: $53
	jr nz, @-$45                                     ; $404f: $20 $b9

	ld b, b                                          ; $4051: $40
	dec h                                            ; $4052: $25
	ld c, b                                          ; $4053: $48
	ld e, $21                                        ; $4054: $1e $21
	dec [hl]                                         ; $4056: $35
	inc bc                                           ; $4057: $03
	ld [hl], $03                                     ; $4058: $36 $03
	sub $23                                          ; $405a: $d6 $23
	ld a, h                                          ; $405c: $7c
	rst SubAFromBC                                          ; $405d: $e7
	ret nz                                           ; $405e: $c0

	ld a, b                                          ; $405f: $78
	reti                                             ; $4060: $d9


	halt                                             ; $4061: $76
	add $27                                          ; $4062: $c6 $27
	cp $7e                                           ; $4064: $fe $7e
	call z, Call_04a_5c7c                            ; $4066: $cc $7c $5c
	ld d, a                                          ; $4069: $57
	db $fc                                           ; $406a: $fc
	ld h, [hl]                                       ; $406b: $66
	ret z                                            ; $406c: $c8

	sbc [hl]                                         ; $406d: $9e
	ld b, b                                          ; $406e: $40
	ld h, d                                          ; $406f: $62
	ret nz                                           ; $4070: $c0

	sbc e                                            ; $4071: $9b
	add hl, bc                                       ; $4072: $09
	ld e, $0a                                        ; $4073: $1e $0a
	dec e                                            ; $4075: $1d
	ld [hl], l                                       ; $4076: $75
	ld a, d                                          ; $4077: $7a
	ld l, a                                          ; $4078: $6f
	cp $8f                                           ; $4079: $fe $8f
	ld l, c                                          ; $407b: $69

Jump_04a_407c:
	sub a                                            ; $407c: $97
	ld d, l                                          ; $407d: $55
	xor e                                            ; $407e: $ab
	ld l, c                                          ; $407f: $69
	sub a                                            ; $4080: $97
	ld d, h                                          ; $4081: $54
	xor e                                            ; $4082: $ab
	xor b                                            ; $4083: $a8
	rst SubAFromHL                                          ; $4084: $d7
	ld d, l                                          ; $4085: $55
	xor e                                            ; $4086: $ab
	xor c                                            ; $4087: $a9
	rst SubAFromHL                                          ; $4088: $d7
	ld d, h                                          ; $4089: $54
	xor e                                            ; $408a: $ab
	db $db                                           ; $408b: $db
	rst $38                                          ; $408c: $ff
	sbc [hl]                                         ; $408d: $9e
	rra                                              ; $408e: $1f
	ld [hl], b                                       ; $408f: $70
	call nz, $8a80                                   ; $4090: $c4 $80 $8a
	ld [hl], l                                       ; $4093: $75
	ld h, b                                          ; $4094: $60
	rst $38                                          ; $4095: $ff
	ldh [rIE], a                                     ; $4096: $e0 $ff
	ld hl, sp-$09                                    ; $4098: $f8 $f7
	ldh a, [rIE]                                     ; $409a: $f0 $ff
	db $e3                                           ; $409c: $e3
	rst $38                                          ; $409d: $ff
	add hl, bc                                       ; $409e: $09
	rst SubAFromBC                                          ; $409f: $e7
	ld b, b                                          ; $40a0: $40
	cp a                                             ; $40a1: $bf
	xor b                                            ; $40a2: $a8
	ld d, a                                          ; $40a3: $57
	ld bc, $87ff                                     ; $40a4: $01 $ff $87
	ld a, a                                          ; $40a7: $7f
	rlca                                             ; $40a8: $07
	rst $38                                          ; $40a9: $ff
	rlca                                             ; $40aa: $07
	rst $38                                          ; $40ab: $ff
	ld e, a                                          ; $40ac: $5f
	and a                                            ; $40ad: $a7
	dec b                                            ; $40ae: $05
	ldh [c], a                                       ; $40af: $e2
	cp [hl]                                          ; $40b0: $be
	sbc e                                            ; $40b1: $9b
	pop bc                                           ; $40b2: $c1
	dec d                                            ; $40b3: $15
	ld [$7800], a                                    ; $40b4: $ea $00 $78
	inc h                                            ; $40b7: $24
	sub a                                            ; $40b8: $97
	ld a, [$f4ff]                                    ; $40b9: $fa $ff $f4
	rst $38                                          ; $40bc: $ff

jr_04a_40bd:
	dec d                                            ; $40bd: $15
	ld [$807f], a                                    ; $40be: $ea $7f $80
	ld [hl], a                                       ; $40c1: $77
	adc $7f                                          ; $40c2: $ce $7f
	ldh a, [$97]                                     ; $40c4: $f0 $97
	ld c, d                                          ; $40c6: $4a
	push af                                          ; $40c7: $f5
	push de                                          ; $40c8: $d5
	ld [$f50a], a                                    ; $40c9: $ea $0a $f5
	sub l                                            ; $40cc: $95
	ld l, d                                          ; $40cd: $6a
	ld a, e                                          ; $40ce: $7b
	ld hl, sp-$6a                                    ; $40cf: $f8 $96
	ld l, d                                          ; $40d1: $6a

jr_04a_40d2:
	ld e, d                                          ; $40d2: $5a
	push hl                                          ; $40d3: $e5
	dec d                                            ; $40d4: $15
	ld [$f81c], a                                    ; $40d5: $ea $1c $f8
	jr jr_04a_40d2                                   ; $40d8: $18 $f8

	ld [hl], a                                       ; $40da: $77
	db $fc                                           ; $40db: $fc
	sbc [hl]                                         ; $40dc: $9e
	inc a                                            ; $40dd: $3c
	ld [hl], e                                       ; $40de: $73
	db $fc                                           ; $40df: $fc
	ld a, [hl]                                       ; $40e0: $7e
	or d                                             ; $40e1: $b2
	pop af                                           ; $40e2: $f1
	ld [hl], l                                       ; $40e3: $75
	ld a, b                                          ; $40e4: $78
	ld l, l                                          ; $40e5: $6d
	ld [hl], h                                       ; $40e6: $74
	ld l, l                                          ; $40e7: $6d
	ld [hl], b                                       ; $40e8: $70
	halt                                             ; $40e9: $76
	call z, Call_04a_706d                            ; $40ea: $cc $6d $70
	ld a, l                                          ; $40ed: $7d
	ld [hl], h                                       ; $40ee: $74
	ld [hl], a                                       ; $40ef: $77
	db $fc                                           ; $40f0: $fc
	halt                                             ; $40f1: $76
	call z, $fc6f                                    ; $40f2: $cc $6f $fc
	add b                                            ; $40f5: $80
	rst FarCall                                          ; $40f6: $f7
	ld [$00f9], sp                                   ; $40f7: $08 $f9 $00
	db $fd                                           ; $40fa: $fd
	ld [bc], a                                       ; $40fb: $02
	add e                                            ; $40fc: $83
	ld a, [hl]                                       ; $40fd: $7e
	ld [bc], a                                       ; $40fe: $02
	db $fc                                           ; $40ff: $fc
	ld [$21f0], sp                                   ; $4100: $08 $f0 $21
	ret nz                                           ; $4103: $c0

	pop bc                                           ; $4104: $c1
	inc bc                                           ; $4105: $03
	adc d                                            ; $4106: $8a
	rlca                                             ; $4107: $07
	jr nz, jr_04a_4129                               ; $4108: $20 $1f

	ld h, b                                          ; $410a: $60
	ccf                                              ; $410b: $3f
	inc de                                           ; $410c: $13
	jr c, jr_04a_418c                                ; $410d: $38 $7d

	jr c, jr_04a_40bd                                ; $410f: $38 $ac

	ld a, h                                          ; $4111: $7c
	call nz, $06fe                                   ; $4112: $c4 $fe $06
	adc h                                            ; $4115: $8c
	db $fc                                           ; $4116: $fc
	inc b                                            ; $4117: $04
	ld hl, sp+$08                                    ; $4118: $f8 $08
	ldh a, [rAUD1SWEEP]                              ; $411a: $f0 $10
	ldh [rAUD2ENV], a                                ; $411c: $e0 $17
	add hl, bc                                       ; $411e: $09
	ld a, b                                          ; $411f: $78
	add c                                            ; $4120: $81
	ldh a, [c]                                       ; $4121: $f2
	ld bc, $0103                                     ; $4122: $01 $03 $01
	rlca                                             ; $4125: $07
	ld bc, $0106                                     ; $4126: $01 $06 $01

jr_04a_4129:
	halt                                             ; $4129: $76
	ld e, b                                          ; $412a: $58
	sbc [hl]                                         ; $412b: $9e
	ld hl, sp+$78                                    ; $412c: $f8 $78
	ld l, b                                          ; $412e: $68
	sub e                                            ; $412f: $93
	ldh a, [$9f]                                     ; $4130: $f0 $9f
	ret nc                                           ; $4132: $d0

	adc a                                            ; $4133: $8f
	ret nz                                           ; $4134: $c0

	rst SubAFromBC                                          ; $4135: $e7
	sub e                                            ; $4136: $93
	ld sp, hl                                        ; $4137: $f9
	call $40f8                                       ; $4138: $cd $f8 $40
	db $fc                                           ; $413b: $fc
	ld c, [hl]                                       ; $413c: $4e
	jp nc, $209d                                     ; $413d: $d2 $9d $20

	ccf                                              ; $4140: $3f
	ld l, $c0                                        ; $4141: $2e $c0
	ld b, l                                          ; $4143: $45
	add b                                            ; $4144: $80
	ld e, l                                          ; $4145: $5d
	ld a, h                                          ; $4146: $7c
	ld e, [hl]                                       ; $4147: $5e
	add $9e                                          ; $4148: $c6 $9e
	ld a, [bc]                                       ; $414a: $0a
	ld a, e                                          ; $414b: $7b
	db $fc                                           ; $414c: $fc
	sub d                                            ; $414d: $92
	rra                                              ; $414e: $1f
	rrca                                             ; $414f: $0f
	xor d                                            ; $4150: $aa
	push de                                          ; $4151: $d5
	ld d, c                                          ; $4152: $51
	xor [hl]                                         ; $4153: $ae
	xor b                                            ; $4154: $a8
	rst SubAFromHL                                          ; $4155: $d7
	ld b, b                                          ; $4156: $40
	cp a                                             ; $4157: $bf
	rst $38                                          ; $4158: $ff
	rst $38                                          ; $4159: $ff
	inc b                                            ; $415a: $04
	ld [hl], l                                       ; $415b: $75
	ld b, d                                          ; $415c: $42
	ld [hl], d                                       ; $415d: $72
	ret z                                            ; $415e: $c8

	ld a, d                                          ; $415f: $7a
	ld h, $9d                                        ; $4160: $26 $9d
	cp $ff                                           ; $4162: $fe $ff
	ld [hl], b                                       ; $4164: $70
	jp c, $3179                                      ; $4165: $da $79 $31

	ld a, l                                          ; $4168: $7d
	and d                                            ; $4169: $a2
	sbc c                                            ; $416a: $99
	xor d                                            ; $416b: $aa
	ld a, [hl+]                                      ; $416c: $2a
	push de                                          ; $416d: $d5
	ld d, l                                          ; $416e: $55
	xor d                                            ; $416f: $aa
	rst $38                                          ; $4170: $ff
	ld a, c                                          ; $4171: $79
	sbc d                                            ; $4172: $9a
	ld h, a                                          ; $4173: $67
	ldh [$7f], a                                     ; $4174: $e0 $7f
	db $fc                                           ; $4176: $fc
	ld [hl], a                                       ; $4177: $77
	ldh [$57], a                                     ; $4178: $e0 $57
	ldh a, [$9d]                                     ; $417a: $f0 $9d
	dec b                                            ; $417c: $05
	ld a, [$f04f]                                    ; $417d: $fa $4f $f0
	ld l, a                                          ; $4180: $6f
	ret nc                                           ; $4181: $d0

	ld [hl], a                                       ; $4182: $77
	jp c, Jump_04a_4e7c                              ; $4183: $da $7c $4e

	ld [hl], h                                       ; $4186: $74
	ld c, d                                          ; $4187: $4a
	ld a, a                                          ; $4188: $7f
	db $fc                                           ; $4189: $fc

Call_04a_418a:
	sbc [hl]                                         ; $418a: $9e
	xor h                                            ; $418b: $ac

jr_04a_418c:
	ld a, e                                          ; $418c: $7b
	db $fc                                           ; $418d: $fc
	sbc [hl]                                         ; $418e: $9e
	inc c                                            ; $418f: $0c
	sbc $f8                                          ; $4190: $de $f8
	pop af                                           ; $4192: $f1
	halt                                             ; $4193: $76
	call z, $c476                                    ; $4194: $cc $76 $c4
	ld h, [hl]                                       ; $4197: $66
	cp b                                             ; $4198: $b8
	ld h, [hl]                                       ; $4199: $66
	ret z                                            ; $419a: $c8

	ld l, h                                          ; $419b: $6c
	jr nc, jr_04a_421d                               ; $419c: $30 $7f

	db $fc                                           ; $419e: $fc
	sub e                                            ; $419f: $93
	ld hl, sp+$04                                    ; $41a0: $f8 $04
	pop af                                           ; $41a2: $f1
	nop                                              ; $41a3: $00
	ldh a, [rIF]                                     ; $41a4: $f0 $0f
	rst AddAOntoHL                                          ; $41a6: $ef
	db $10                                           ; $41a7: $10
	push af                                          ; $41a8: $f5
	rrca                                             ; $41a9: $0f
	ld [$771f], a                                    ; $41aa: $ea $1f $77
	db $fc                                           ; $41ad: $fc
	sbc [hl]                                         ; $41ae: $9e
	ld b, b                                          ; $41af: $40
	ld [hl], b                                       ; $41b0: $70
	adc [hl]                                         ; $41b1: $8e
	ld a, [hl]                                       ; $41b2: $7e
	ld d, d                                          ; $41b3: $52
	sbc h                                            ; $41b4: $9c
	cp a                                             ; $41b5: $bf
	ret nz                                           ; $41b6: $c0

	rst $38                                          ; $41b7: $ff
	ld [hl], e                                       ; $41b8: $73
	db $fc                                           ; $41b9: $fc
	ld a, [hl]                                       ; $41ba: $7e
	or [hl]                                          ; $41bb: $b6
	ld a, h                                          ; $41bc: $7c
	ld h, a                                          ; $41bd: $67
	sbc e                                            ; $41be: $9b
	nop                                              ; $41bf: $00
	ret nz                                           ; $41c0: $c0

	jp nz, Jump_04a_6605                             ; $41c1: $c2 $05 $66

	rst $38                                          ; $41c4: $ff
	sbc b                                            ; $41c5: $98
	add b                                            ; $41c6: $80
	nop                                              ; $41c7: $00
	ld [hl+], a                                      ; $41c8: $22
	pop bc                                           ; $41c9: $c1
	cp l                                             ; $41ca: $bd
	ld h, e                                          ; $41cb: $63
	xor d                                            ; $41cc: $aa
	ld [hl], a                                       ; $41cd: $77
	ld [hl], e                                       ; $41ce: $73
	ld [hl], e                                       ; $41cf: $73
	cp $9a                                           ; $41d0: $fe $9a
	ld b, d                                          ; $41d2: $42
	cp $c0                                           ; $41d3: $fe $c0
	rst $38                                          ; $41d5: $ff
	ld b, b                                          ; $41d6: $40
	ld [hl], a                                       ; $41d7: $77
	add hl, sp                                       ; $41d8: $39
	ld l, e                                          ; $41d9: $6b
	cp $7f                                           ; $41da: $fe $7f
	ldh a, [c]                                       ; $41dc: $f2
	ld [hl], a                                       ; $41dd: $77
	ld sp, hl                                        ; $41de: $f9
	ld h, l                                          ; $41df: $65
	ld a, [de]                                       ; $41e0: $1a
	ld a, a                                          ; $41e1: $7f
	db $fc                                           ; $41e2: $fc
	ld a, $c0                                        ; $41e3: $3e $c0
	ld l, h                                          ; $41e5: $6c
	ld b, b                                          ; $41e6: $40
	ld h, a                                          ; $41e7: $67
	rst AddAOntoHL                                          ; $41e8: $ef
	halt                                             ; $41e9: $76
	ret z                                            ; $41ea: $c8

	sbc [hl]                                         ; $41eb: $9e
	ld d, h                                          ; $41ec: $54
	ld [hl], e                                       ; $41ed: $73
	db $fc                                           ; $41ee: $fc
	ld a, [hl]                                       ; $41ef: $7e
	jp hl                                            ; $41f0: $e9


	sbc [hl]                                         ; $41f1: $9e
	push de                                          ; $41f2: $d5
	ld a, e                                          ; $41f3: $7b
	db $fc                                           ; $41f4: $fc
	sbc l                                            ; $41f5: $9d
	ld [$f507], sp                                   ; $41f6: $08 $07 $f5
	ld a, a                                          ; $41f9: $7f
	sub d                                            ; $41fa: $92
	ld a, e                                          ; $41fb: $7b
	db $dd                                           ; $41fc: $dd
	di                                               ; $41fd: $f3
	inc sp                                           ; $41fe: $33
	ldh a, [$99]                                     ; $41ff: $f0 $99
	dec bc                                           ; $4201: $0b
	inc [hl]                                         ; $4202: $34
	rra                                              ; $4203: $1f
	jr nz, jr_04a_4208                               ; $4204: $20 $02

	dec a                                            ; $4206: $3d
	ld e, a                                          ; $4207: $5f

jr_04a_4208:
	ldh a, [$9e]                                     ; $4208: $f0 $9e
	ldh a, [$7b]                                     ; $420a: $f0 $7b
	cp $9d                                           ; $420c: $fe $9d
	and b                                            ; $420e: $a0
	ld d, b                                          ; $420f: $50
	rra                                              ; $4210: $1f
	ret nc                                           ; $4211: $d0

	rst FarCall                                          ; $4212: $f7
	ld a, l                                          ; $4213: $7d
	db $ec                                           ; $4214: $ec
	db $eb                                           ; $4215: $eb
	ld h, h                                          ; $4216: $64
	inc a                                            ; $4217: $3c
	ld a, [hl]                                       ; $4218: $7e
	call z, Call_04a_6d7c                            ; $4219: $cc $7c $6d
	ld [hl], a                                       ; $421c: $77

jr_04a_421d:
	db $fc                                           ; $421d: $fc
	ld h, h                                          ; $421e: $64
	inc a                                            ; $421f: $3c
	ld h, l                                          ; $4220: $65
	add b                                            ; $4221: $80
	ld [hl], d                                       ; $4222: $72
	reti                                             ; $4223: $d9


	ld a, e                                          ; $4224: $7b
	cp $7a                                           ; $4225: $fe $7a
	call z, $179e                                    ; $4227: $cc $9e $17
	ld [hl], a                                       ; $422a: $77
	db $fc                                           ; $422b: $fc
	sbc l                                            ; $422c: $9d
	push de                                          ; $422d: $d5
	cpl                                              ; $422e: $2f
	ld l, a                                          ; $422f: $6f
	db $fc                                           ; $4230: $fc
	ld a, [hl]                                       ; $4231: $7e
	call z, $fe7e                                    ; $4232: $cc $7e $fe
	ld a, l                                          ; $4235: $7d
	ld e, $66                                        ; $4236: $1e $66
	jp nz, $fc7b                                     ; $4238: $c2 $7b $fc

	ld a, e                                          ; $423b: $7b
	adc [hl]                                         ; $423c: $8e
	ld a, d                                          ; $423d: $7a
	ld d, d                                          ; $423e: $52
	ld e, d                                          ; $423f: $5a
	db $fd                                           ; $4240: $fd

Jump_04a_4241:
	ld l, a                                          ; $4241: $6f
	ldh a, [$7b]                                     ; $4242: $f0 $7b
	sbc a                                            ; $4244: $9f
	ld [hl], a                                       ; $4245: $77
	cp $7a                                           ; $4246: $fe $7a
	add $57                                          ; $4248: $c6 $57
	ldh [rPCM12], a                                  ; $424a: $e0 $76
	call z, $5691                                    ; $424c: $cc $91 $56
	rst $38                                          ; $424f: $ff
	ld d, b                                          ; $4250: $50
	xor a                                            ; $4251: $af
	ld [$d415], a                                    ; $4252: $ea $15 $d4
	dec hl                                           ; $4255: $2b
	xor d                                            ; $4256: $aa
	ld d, l                                          ; $4257: $55
	ld d, [hl]                                       ; $4258: $56
	xor c                                            ; $4259: $a9
	xor d                                            ; $425a: $aa
	ld d, l                                          ; $425b: $55
	ld b, [hl]                                       ; $425c: $46
	ret nz                                           ; $425d: $c0

	ld [hl], a                                       ; $425e: $77
	ei                                               ; $425f: $fb
	ld a, d                                          ; $4260: $7a
	ld h, d                                          ; $4261: $62
	sub c                                            ; $4262: $91
	ld b, b                                          ; $4263: $40
	ld e, a                                          ; $4264: $5f
	and b                                            ; $4265: $a0
	xor a                                            ; $4266: $af
	ld d, b                                          ; $4267: $50
	ld d, a                                          ; $4268: $57
	xor b                                            ; $4269: $a8
	xor e                                            ; $426a: $ab
	ld d, h                                          ; $426b: $54
	push de                                          ; $426c: $d5
	nop                                              ; $426d: $00
	ld [$f500], a                                    ; $426e: $ea $00 $f5
	ld [hl], c                                       ; $4271: $71
	ld l, h                                          ; $4272: $6c
	ld l, a                                          ; $4273: $6f
	rst SubAFromDE                                          ; $4274: $df
	halt                                             ; $4275: $76
	cp b                                             ; $4276: $b8
	ld h, a                                          ; $4277: $67
	ld d, h                                          ; $4278: $54
	ld [hl], a                                       ; $4279: $77
	add sp, -$03                                     ; $427a: $e8 $fd
	ld d, a                                          ; $427c: $57
	db $ec                                           ; $427d: $ec
	ld h, [hl]                                       ; $427e: $66
	xor b                                            ; $427f: $a8
	ld c, a                                          ; $4280: $4f
	ldh a, [$fd]                                     ; $4281: $f0 $fd
	inc bc                                           ; $4283: $03
	ldh a, [$0b]                                     ; $4284: $f0 $0b
	ldh a, [$9e]                                     ; $4286: $f0 $9e
	and d                                            ; $4288: $a2
	ld [hl], e                                       ; $4289: $73
	ldh a, [rPCM12]                                  ; $428a: $f0 $76
	ret z                                            ; $428c: $c8

	ld [hl], l                                       ; $428d: $75
	sub b                                            ; $428e: $90
	ld h, a                                          ; $428f: $67
	and b                                            ; $4290: $a0
	ld a, a                                          ; $4291: $7f
	db $fc                                           ; $4292: $fc
	sbc h                                            ; $4293: $9c
	xor e                                            ; $4294: $ab
	nop                                              ; $4295: $00
	ld d, a                                          ; $4296: $57
	ld l, c                                          ; $4297: $69
	sub b                                            ; $4298: $90
	ld h, [hl]                                       ; $4299: $66
	call z, $fe5f                                    ; $429a: $cc $5f $fe
	ld a, a                                          ; $429d: $7f
	db $10                                           ; $429e: $10
	ld l, [hl]                                       ; $429f: $6e
	ret z                                            ; $42a0: $c8

	sbc l                                            ; $42a1: $9d
	xor d                                            ; $42a2: $aa
	ld d, a                                          ; $42a3: $57
	ld [hl], a                                       ; $42a4: $77
	db $fc                                           ; $42a5: $fc
	sbc e                                            ; $42a6: $9b
	ld d, l                                          ; $42a7: $55
	xor a                                            ; $42a8: $af
	xor d                                            ; $42a9: $aa
	ld d, a                                          ; $42aa: $57
	ld h, d                                          ; $42ab: $62
	ret z                                            ; $42ac: $c8

	ld h, d                                          ; $42ad: $62
	ret nz                                           ; $42ae: $c0

	rrca                                             ; $42af: $0f
	cp $97                                           ; $42b0: $fe $97
	db $fd                                           ; $42b2: $fd
	ld [bc], a                                       ; $42b3: $02
	ld a, [$f505]                                    ; $42b4: $fa $05 $f5
	ld a, [bc]                                       ; $42b7: $0a
	ld [$7715], a                                    ; $42b8: $ea $15 $77
	db $fc                                           ; $42bb: $fc
	sbc l                                            ; $42bc: $9d
	push de                                          ; $42bd: $d5
	ld a, [hl+]                                      ; $42be: $2a
	ld l, [hl]                                       ; $42bf: $6e
	call z, $fc57                                    ; $42c0: $cc $57 $fc
	ld b, a                                          ; $42c3: $47
	rst GetHLinHL                                          ; $42c4: $cf
	sub a                                            ; $42c5: $97
	rla                                              ; $42c6: $17
	add sp, -$75                                     ; $42c7: $e8 $8b
	ld [hl], h                                       ; $42c9: $74
	dec b                                            ; $42ca: $05
	ld a, [$fd02]                                    ; $42cb: $fa $02 $fd
	ld [hl], a                                       ; $42ce: $77
	db $fc                                           ; $42cf: $fc
	ld h, [hl]                                       ; $42d0: $66
	or b                                             ; $42d1: $b0
	ld [hl], a                                       ; $42d2: $77
	cp $6e                                           ; $42d3: $fe $6e
	or b                                             ; $42d5: $b0
	sbc l                                            ; $42d6: $9d
	ld a, [bc]                                       ; $42d7: $0a
	push af                                          ; $42d8: $f5
	ld b, a                                          ; $42d9: $47
	and b                                            ; $42da: $a0
	ld a, [hl]                                       ; $42db: $7e
	and b                                            ; $42dc: $a0
	ld c, a                                          ; $42dd: $4f
	ldh a, [$7f]                                     ; $42de: $f0 $7f
	xor a                                            ; $42e0: $af
	ld a, [hl]                                       ; $42e1: $7e
	sub b                                            ; $42e2: $90
	ld c, a                                          ; $42e3: $4f
	ldh a, [$78]                                     ; $42e4: $f0 $78
	ld sp, $f003                                     ; $42e6: $31 $03 $f0
	ld c, a                                          ; $42e9: $4f
	ldh a, [$57]                                     ; $42ea: $f0 $57
	ld l, e                                          ; $42ec: $6b
	ld [hl], a                                       ; $42ed: $77
	ldh a, [$7e]                                     ; $42ee: $f0 $7e
	ldh [$5f], a                                     ; $42f0: $e0 $5f
	ldh a, [$7f]                                     ; $42f2: $f0 $7f
	db $f4                                           ; $42f4: $f4
	ld a, [hl]                                       ; $42f5: $7e
	ret c                                            ; $42f6: $d8

	ld d, [hl]                                       ; $42f7: $56
	ldh [$57], a                                     ; $42f8: $e0 $57
	db $f4                                           ; $42fa: $f4
	ld a, a                                          ; $42fb: $7f
	inc e                                            ; $42fc: $1c
	ld [hl], h                                       ; $42fd: $74
	adc b                                            ; $42fe: $88
	ld a, a                                          ; $42ff: $7f
	ld hl, sp+$77                                    ; $4300: $f8 $77
	inc c                                            ; $4302: $0c
	ld [hl], a                                       ; $4303: $77
	inc d                                            ; $4304: $14
	ld a, l                                          ; $4305: $7d
	ret z                                            ; $4306: $c8

	sbc [hl]                                         ; $4307: $9e
	xor b                                            ; $4308: $a8
	ld a, d                                          ; $4309: $7a
	call z, $a29d                                    ; $430a: $cc $9d $a2
	ld e, a                                          ; $430d: $5f
	ld [hl], a                                       ; $430e: $77
	db $fc                                           ; $430f: $fc
	sub a                                            ; $4310: $97
	ld b, l                                          ; $4311: $45
	cp a                                             ; $4312: $bf
	add d                                            ; $4313: $82
	ld a, a                                          ; $4314: $7f
	dec b                                            ; $4315: $05
	rst $38                                          ; $4316: $ff
	ld [bc], a                                       ; $4317: $02
	rst $38                                          ; $4318: $ff
	ld d, [hl]                                       ; $4319: $56
	call nz, $f79b                                   ; $431a: $c4 $9b $f7
	adc b                                            ; $431d: $88
	cp d                                             ; $431e: $ba
	push bc                                          ; $431f: $c5
	ld h, [hl]                                       ; $4320: $66
	ldh [$6f], a                                     ; $4321: $e0 $6f
	ret nc                                           ; $4323: $d0

	ld [hl], a                                       ; $4324: $77
	ret nz                                           ; $4325: $c0

	sbc c                                            ; $4326: $99
	cp [hl]                                          ; $4327: $be
	ld b, c                                          ; $4328: $41
	ld a, l                                          ; $4329: $7d
	add d                                            ; $432a: $82
	ld a, [$7705]                                    ; $432b: $fa $05 $77
	db $f4                                           ; $432e: $f4
	scf                                              ; $432f: $37
	db $fc                                           ; $4330: $fc
	sbc l                                            ; $4331: $9d
	ld d, h                                          ; $4332: $54
	xor e                                            ; $4333: $ab
	ld l, a                                          ; $4334: $6f
	db $fc                                           ; $4335: $fc
	halt                                             ; $4336: $76
	call nz, $f877                                   ; $4337: $c4 $77 $f8
	ld b, [hl]                                       ; $433a: $46
	ret nz                                           ; $433b: $c0

	ld a, a                                          ; $433c: $7f
	cp a                                             ; $433d: $bf
	db $d3                                           ; $433e: $d3
	rst $38                                          ; $433f: $ff
	sbc d                                            ; $4340: $9a
	ld d, h                                          ; $4341: $54
	rst $38                                          ; $4342: $ff
	ld a, [$f5ff]                                    ; $4343: $fa $ff $f5
	ld [hl], e                                       ; $4346: $73
	db $fc                                           ; $4347: $fc
	sbc [hl]                                         ; $4348: $9e
	ld [$fc73], a                                    ; $4349: $ea $73 $fc
	ld a, a                                          ; $434c: $7f
	sbc $9a                                          ; $434d: $de $9a
	xor b                                            ; $434f: $a8
	rst $38                                          ; $4350: $ff
	ld d, b                                          ; $4351: $50
	rst $38                                          ; $4352: $ff
	and b                                            ; $4353: $a0
	ld [hl], e                                       ; $4354: $73
	db $fc                                           ; $4355: $fc
	sbc e                                            ; $4356: $9b
	ld b, b                                          ; $4357: $40
	rst $38                                          ; $4358: $ff
	add b                                            ; $4359: $80
	rst $38                                          ; $435a: $ff
	halt                                             ; $435b: $76
	sbc b                                            ; $435c: $98
	sbc l                                            ; $435d: $9d
	ld bc, $67fe                                     ; $435e: $01 $fe $67
	db $fc                                           ; $4361: $fc
	ld a, [hl]                                       ; $4362: $7e
	and b                                            ; $4363: $a0
	ccf                                              ; $4364: $3f
	adc h                                            ; $4365: $8c
	ld [hl], l                                       ; $4366: $75
	jr nc, @+$79                                     ; $4367: $30 $77

	and l                                            ; $4369: $a5
	sbc h                                            ; $436a: $9c
	rst JumpTable                                          ; $436b: $c7
	nop                                              ; $436c: $00
	rst AddAOntoHL                                          ; $436d: $ef
	halt                                             ; $436e: $76
	ldh a, [$9d]                                     ; $436f: $f0 $9d
	xor d                                            ; $4371: $aa
	cp $76                                           ; $4372: $fe $76
	ld a, [hl+]                                      ; $4374: $2a
	ld [hl], e                                       ; $4375: $73
	sub e                                            ; $4376: $93
	sbc [hl]                                         ; $4377: $9e
	ei                                               ; $4378: $fb
	ld [hl], e                                       ; $4379: $73
	ldh a, [$5f]                                     ; $437a: $f0 $5f
	add e                                            ; $437c: $83
	ld a, l                                          ; $437d: $7d
	cp d                                             ; $437e: $ba
	ld a, a                                          ; $437f: $7f
	ld [hl], c                                       ; $4380: $71
	sbc c                                            ; $4381: $99

jr_04a_4382:
	ld b, b                                          ; $4382: $40
	cp a                                             ; $4383: $bf
	xor b                                            ; $4384: $a8
	ld d, a                                          ; $4385: $57
	call nc, Call_04a_6f2b                           ; $4386: $d4 $2b $6f
	jr nc, jr_04a_440a                               ; $4389: $30 $7f

	db $fc                                           ; $438b: $fc
	ld a, a                                          ; $438c: $7f
	ld hl, sp+$5f                                    ; $438d: $f8 $5f
	ld h, [hl]                                       ; $438f: $66
	sbc [hl]                                         ; $4390: $9e
	add b                                            ; $4391: $80
	ld a, c                                          ; $4392: $79
	and c                                            ; $4393: $a1
	ld [hl], a                                       ; $4394: $77
	db $fc                                           ; $4395: $fc
	sub [hl]                                         ; $4396: $96
	db $10                                           ; $4397: $10
	rst AddAOntoHL                                          ; $4398: $ef
	jr jr_04a_4382                                   ; $4399: $18 $e7

	nop                                              ; $439b: $00
	rst $38                                          ; $439c: $ff
	ld [$04f7], sp                                   ; $439d: $08 $f7 $04
	ld a, e                                          ; $43a0: $7b
	pop bc                                           ; $43a1: $c1
	sbc l                                            ; $43a2: $9d
	ld b, $f9                                        ; $43a3: $06 $f9
	add hl, bc                                       ; $43a5: $09
	pop bc                                           ; $43a6: $c1
	sub c                                            ; $43a7: $91
	rst $38                                          ; $43a8: $ff
	ld a, [bc]                                       ; $43a9: $0a
	rst $38                                          ; $43aa: $ff
	ld d, c                                          ; $43ab: $51
	rst $38                                          ; $43ac: $ff
	ld a, [hl+]                                      ; $43ad: $2a
	rst $38                                          ; $43ae: $ff
	ld e, l                                          ; $43af: $5d
	rst $38                                          ; $43b0: $ff
	xor [hl]                                         ; $43b1: $ae
	rst $38                                          ; $43b2: $ff
	ld e, a                                          ; $43b3: $5f
	rst $38                                          ; $43b4: $ff
	xor a                                            ; $43b5: $af
	ld a, e                                          ; $43b6: $7b
	db $fc                                           ; $43b7: $fc
	sbc e                                            ; $43b8: $9b
	push af                                          ; $43b9: $f5
	adc d                                            ; $43ba: $8a
	xor d                                            ; $43bb: $aa
	push de                                          ; $43bc: $d5
	ld [hl], a                                       ; $43bd: $77
	db $fc                                           ; $43be: $fc
	sbc e                                            ; $43bf: $9b
	push bc                                          ; $43c0: $c5
	cp d                                             ; $43c1: $ba
	xor d                                            ; $43c2: $aa
	push de                                          ; $43c3: $d5
	db $dd                                           ; $43c4: $dd
	rst $38                                          ; $43c5: $ff
	ld l, a                                          ; $43c6: $6f
	ld e, h                                          ; $43c7: $5c
	ld a, a                                          ; $43c8: $7f
	adc h                                            ; $43c9: $8c
	ld a, a                                          ; $43ca: $7f
	sub $7f                                          ; $43cb: $d6 $7f
	ld hl, sp-$64                                    ; $43cd: $f8 $9c
	cp a                                             ; $43cf: $bf
	rst $38                                          ; $43d0: $ff
	rst SubAFromDE                                          ; $43d1: $df
	ld l, e                                          ; $43d2: $6b
	ldh a, [$7f]                                     ; $43d3: $f0 $7f
	jr c, jr_04a_444e                                ; $43d5: $38 $77

	ldh a, [$67]                                     ; $43d7: $f0 $67
	ldh [$7e], a                                     ; $43d9: $e0 $7e
	ret c                                            ; $43db: $d8

	ld [hl], a                                       ; $43dc: $77
	or [hl]                                          ; $43dd: $b6
	ld l, a                                          ; $43de: $6f
	ldh a, [hDisp1_OBP1]                                     ; $43df: $f0 $94
	ld d, a                                          ; $43e1: $57
	xor c                                            ; $43e2: $a9
	xor e                                            ; $43e3: $ab
	ld d, l                                          ; $43e4: $55
	rlca                                             ; $43e5: $07
	ld sp, hl                                        ; $43e6: $f9
	ld [bc], a                                       ; $43e7: $02
	db $fd                                           ; $43e8: $fd
	ld d, $e9                                        ; $43e9: $16 $e9
	xor e                                            ; $43eb: $ab
	ld [hl], e                                       ; $43ec: $73
	ldh a, [$7f]                                     ; $43ed: $f0 $7f
	ld b, c                                          ; $43ef: $41
	db $db                                           ; $43f0: $db
	rst $38                                          ; $43f1: $ff
	sbc b                                            ; $43f2: $98
	ccf                                              ; $43f3: $3f
	rst $38                                          ; $43f4: $ff
	adc a                                            ; $43f5: $8f
	rst $38                                          ; $43f6: $ff
	db $e3                                           ; $43f7: $e3
	rst $38                                          ; $43f8: $ff
	ld hl, sp-$22                                    ; $43f9: $f8 $de
	rst $38                                          ; $43fb: $ff
	ld a, a                                          ; $43fc: $7f
	sub $7e                                          ; $43fd: $d6 $7e

Jump_04a_43ff:
	ret c                                            ; $43ff: $d8

	rst SubAFromHL                                          ; $4400: $d7
	rst $38                                          ; $4401: $ff
	ld [hl], l                                       ; $4402: $75
	adc a                                            ; $4403: $8f
	ld a, a                                          ; $4404: $7f
	rst SubAFromHL                                          ; $4405: $d7
	ld a, [hl]                                       ; $4406: $7e
	ret nz                                           ; $4407: $c0

	ld a, a                                          ; $4408: $7f
	sub e                                            ; $4409: $93

jr_04a_440a:
	ld l, [hl]                                       ; $440a: $6e
	cp b                                             ; $440b: $b8
	sbc e                                            ; $440c: $9b
	ld b, h                                          ; $440d: $44
	ei                                               ; $440e: $fb
	ld a, [hl+]                                      ; $440f: $2a
	push de                                          ; $4410: $d5
	ld l, [hl]                                       ; $4411: $6e
	call nz, $909c                                   ; $4412: $c4 $9c $90
	rst $38                                          ; $4415: $ff
	jr nz, jr_04a_4492                               ; $4416: $20 $7a

	cp d                                             ; $4418: $ba
	sub c                                            ; $4419: $91
	dec d                                            ; $441a: $15
	ld [$50af], a                                    ; $441b: $ea $af $50
	dec b                                            ; $441e: $05
	ld a, [$f50a]                                    ; $441f: $fa $0a $f5
	rla                                              ; $4422: $17
	add sp, $0e                                      ; $4423: $e8 $0e
	ldh a, [rAUD2ENV]                                ; $4425: $f0 $17
	add sp, $76                                      ; $4427: $e8 $76
	ret nz                                           ; $4429: $c0

	halt                                             ; $442a: $76
	db $ec                                           ; $442b: $ec
	ld [hl], a                                       ; $442c: $77
	inc b                                            ; $442d: $04
	ld l, [hl]                                       ; $442e: $6e
	ret nz                                           ; $442f: $c0

	sbc l                                            ; $4430: $9d
	ld [hl], h                                       ; $4431: $74
	adc e                                            ; $4432: $8b
	ld l, a                                          ; $4433: $6f
	ldh a, [$7f]                                     ; $4434: $f0 $7f
	db $fc                                           ; $4436: $fc
	sbc l                                            ; $4437: $9d
	xor e                                            ; $4438: $ab
	ld d, h                                          ; $4439: $54
	ld [hl], a                                       ; $443a: $77
	db $fc                                           ; $443b: $fc
	sbc l                                            ; $443c: $9d
	cp [hl]                                          ; $443d: $be
	ld b, b                                          ; $443e: $40
	ld a, e                                          ; $443f: $7b
	ld h, l                                          ; $4440: $65
	ld a, e                                          ; $4441: $7b
	cp $96                                           ; $4442: $fe $96
	ld c, a                                          ; $4444: $4f
	and b                                            ; $4445: $a0
	cp a                                             ; $4446: $bf
	ld b, b                                          ; $4447: $40
	ld a, e                                          ; $4448: $7b
	add h                                            ; $4449: $84
	sub a                                            ; $444a: $97
	ld c, b                                          ; $444b: $48
	adc d                                            ; $444c: $8a
	ld a, b                                          ; $444d: $78

jr_04a_444e:
	ld [hl], d                                       ; $444e: $72
	ld [hl], h                                       ; $444f: $74
	ld a, [hl]                                       ; $4450: $7e
	halt                                             ; $4451: $76
	and h                                            ; $4452: $a4
	ld [hl], c                                       ; $4453: $71
	jr nc, jr_04a_44d5                               ; $4454: $30 $7f

	inc de                                           ; $4456: $13
	sbc [hl]                                         ; $4457: $9e
	nop                                              ; $4458: $00
	halt                                             ; $4459: $76
	ret nz                                           ; $445a: $c0

	ld l, a                                          ; $445b: $6f
	db $fc                                           ; $445c: $fc
	halt                                             ; $445d: $76
	jr nz, jr_04a_44ae                               ; $445e: $20 $4e

	inc e                                            ; $4460: $1c
	ld a, [hl]                                       ; $4461: $7e
	ld e, h                                          ; $4462: $5c
	ld a, a                                          ; $4463: $7f
	sub b                                            ; $4464: $90
	ld a, a                                          ; $4465: $7f
	sbc b                                            ; $4466: $98
	sbc d                                            ; $4467: $9a
	dec bc                                           ; $4468: $0b
	db $f4                                           ; $4469: $f4
	rlca                                             ; $446a: $07
	ld hl, sp+$16                                    ; $446b: $f8 $16
	ld a, e                                          ; $446d: $7b
	ld a, [$867f]                                    ; $446e: $fa $7f $86
	ld [hl], a                                       ; $4471: $77
	ldh [hDisp1_OBP0], a                                     ; $4472: $e0 $93
	ret nc                                           ; $4474: $d0

	cpl                                              ; $4475: $2f
	ld h, b                                          ; $4476: $60
	rra                                              ; $4477: $1f
	jr nc, jr_04a_4489                               ; $4478: $30 $0f

	db $10                                           ; $447a: $10
	rrca                                             ; $447b: $0f
	cp b                                             ; $447c: $b8
	rlca                                             ; $447d: $07
	ldh a, [rIF]                                     ; $447e: $f0 $0f
	ld h, a                                          ; $4480: $67
	ret nc                                           ; $4481: $d0

	ld a, l                                          ; $4482: $7d
	ld h, a                                          ; $4483: $67
	ld a, l                                          ; $4484: $7d

Jump_04a_4485:
	sub h                                            ; $4485: $94
	ld [hl], a                                       ; $4486: $77
	db $fc                                           ; $4487: $fc
	ld a, [hl]                                       ; $4488: $7e

jr_04a_4489:
	call z, $e47e                                    ; $4489: $cc $7e $e4
	sbc [hl]                                         ; $448c: $9e
	dec d                                            ; $448d: $15
	ld [hl], d                                       ; $448e: $72
	add $6f                                          ; $448f: $c6 $6f
	db $fc                                           ; $4491: $fc

jr_04a_4492:
	ld [hl], a                                       ; $4492: $77
	jr nz, jr_04a_44ea                               ; $4493: $20 $55

	call c, $ef9e                                    ; $4495: $dc $9e $ef
	ld a, e                                          ; $4498: $7b
	ldh a, [$9c]                                     ; $4499: $f0 $9c
	ld e, d                                          ; $449b: $5a
	rst $38                                          ; $449c: $ff
	cp $d6                                           ; $449d: $fe $d6
	rst $38                                          ; $449f: $ff
	ld a, e                                          ; $44a0: $7b
	cp [hl]                                          ; $44a1: $be
	sbc l                                            ; $44a2: $9d
	rst $38                                          ; $44a3: $ff
	ld a, a                                          ; $44a4: $7f
	ld a, d                                          ; $44a5: $7a
	ldh a, [$9a]                                     ; $44a6: $f0 $9a
	sbc a                                            ; $44a8: $9f
	rst $38                                          ; $44a9: $ff
	rst SubAFromBC                                          ; $44aa: $e7
	rst $38                                          ; $44ab: $ff
	di                                               ; $44ac: $f3
	ld [hl], e                                       ; $44ad: $73

jr_04a_44ae:
	ldh a, [$7d]                                     ; $44ae: $f0 $7d
	jp z, $ffd5                                      ; $44b0: $ca $d5 $ff

	ld a, a                                          ; $44b3: $7f
	ldh a, [$9e]                                     ; $44b4: $f0 $9e
	cp d                                             ; $44b6: $ba
	sub $ff                                          ; $44b7: $d6 $ff
	ld a, a                                          ; $44b9: $7f
	add $77                                          ; $44ba: $c6 $77
	ret nc                                           ; $44bc: $d0

	rst SubAFromHL                                          ; $44bd: $d7
	rst $38                                          ; $44be: $ff
	ld h, $00                                        ; $44bf: $26 $00
	rst SubAFromHL                                          ; $44c1: $d7
	ld b, h                                          ; $44c2: $44
	rst SubAFromHL                                          ; $44c3: $d7
	ld d, l                                          ; $44c4: $55
	sbc [hl]                                         ; $44c5: $9e
	ld b, h                                          ; $44c6: $44
	db $dd                                           ; $44c7: $dd
	ld [hl], a                                       ; $44c8: $77
	sbc d                                            ; $44c9: $9a
	ld b, h                                          ; $44ca: $44
	ld b, l                                          ; $44cb: $45
	ld d, l                                          ; $44cc: $55
	ld d, l                                          ; $44cd: $55
	ld d, h                                          ; $44ce: $54
	dec de                                           ; $44cf: $1b
	or $df                                           ; $44d0: $f6 $df
	ld h, [hl]                                       ; $44d2: $66
	sbc h                                            ; $44d3: $9c
	ld h, h                                          ; $44d4: $64

jr_04a_44d5:
	ld b, h                                          ; $44d5: $44
	ld b, a                                          ; $44d6: $47
	ld h, e                                          ; $44d7: $63
	or $dc                                           ; $44d8: $f6 $dc
	ld b, h                                          ; $44da: $44
	ld c, a                                          ; $44db: $4f
	or $da                                           ; $44dc: $f6 $da
	inc sp                                           ; $44de: $33
	rst SubAFromDE                                          ; $44df: $df
	ld h, [hl]                                       ; $44e0: $66
	sbc [hl]                                         ; $44e1: $9e
	ld h, e                                          ; $44e2: $63
	rst SubAFromHL                                          ; $44e3: $d7
	inc sp                                           ; $44e4: $33
	ld sp, hl                                        ; $44e5: $f9
	adc e                                            ; $44e6: $8b
	sub [hl]                                         ; $44e7: $96
	ld l, d                                          ; $44e8: $6a
	ld b, l                                          ; $44e9: $45

jr_04a_44ea:
	ld [$fab5], a                                    ; $44ea: $ea $b5 $fa
	push af                                          ; $44ed: $f5
	ld [$80f5], a                                    ; $44ee: $ea $f5 $80
	sbc $c0                                          ; $44f1: $de $c0
	sbc $80                                          ; $44f3: $de $80
	sub [hl]                                         ; $44f5: $96
	nop                                              ; $44f6: $00
	push de                                          ; $44f7: $d5
	ld [$68d4], a                                    ; $44f8: $ea $d4 $68
	ret nc                                           ; $44fb: $d0

	ld h, b                                          ; $44fc: $60
	or b                                             ; $44fd: $b0
	ld [hl], b                                       ; $44fe: $70
	ld sp, hl                                        ; $44ff: $f9
	sbc c                                            ; $4500: $99
	ld d, c                                          ; $4501: $51
	add d                                            ; $4502: $82
	ld bc, $0002                                     ; $4503: $01 $02 $00
	nop                                              ; $4506: $00
	ld [hl], a                                       ; $4507: $77
	db $fc                                           ; $4508: $fc
	ei                                               ; $4509: $fb
	add b                                            ; $450a: $80
	jr z, jr_04a_4561                                ; $450b: $28 $54

	dec l                                            ; $450d: $2d
	dec e                                            ; $450e: $1d
	dec sp                                           ; $450f: $3b
	scf                                              ; $4510: $37
	ld [hl], e                                       ; $4511: $73
	push hl                                          ; $4512: $e5
	rst $38                                          ; $4513: $ff
	cp $fe                                           ; $4514: $fe $fe
	db $fc                                           ; $4516: $fc
	db $fc                                           ; $4517: $fc
	ld hl, sp-$08                                    ; $4518: $f8 $f8
	cp $e3                                           ; $451a: $fe $e3
	and a                                            ; $451c: $a7
	jp $8687                                         ; $451d: $c3 $87 $86


	adc [hl]                                         ; $4520: $8e
	adc h                                            ; $4521: $8c
	jr jr_04a_4533                                   ; $4522: $18 $0f

	rrca                                             ; $4524: $0f
	rra                                              ; $4525: $1f
	rra                                              ; $4526: $1f
	ccf                                              ; $4527: $3f
	ccf                                              ; $4528: $3f
	ld a, a                                          ; $4529: $7f
	add b                                            ; $452a: $80
	cp $f6                                           ; $452b: $fe $f6
	sbc l                                            ; $452d: $9d
	ld [$f2fd], a                                    ; $452e: $ea $fd $f2
	xor a                                            ; $4531: $af
	ld d, b                                          ; $4532: $50

jr_04a_4533:
	dec c                                            ; $4533: $0d
	ld hl, sp+$78                                    ; $4534: $f8 $78
	jr jr_04a_4540                                   ; $4536: $18 $08

	inc c                                            ; $4538: $0c
	inc b                                            ; $4539: $04
	ld b, $02                                        ; $453a: $06 $02
	ld b, [hl]                                       ; $453c: $46
	rlca                                             ; $453d: $07
	ld h, e                                          ; $453e: $63
	inc de                                           ; $453f: $13

jr_04a_4540:
	add hl, de                                       ; $4540: $19
	ld h, l                                          ; $4541: $65
	ld a, [bc]                                       ; $4542: $0a
	ld e, $ff                                        ; $4543: $1e $ff
	rrca                                             ; $4545: $0f
	rrca                                             ; $4546: $0f
	rlca                                             ; $4547: $07
	inc hl                                           ; $4548: $23
	inc bc                                           ; $4549: $03
	sub c                                            ; $454a: $91
	add hl, de                                       ; $454b: $19
	sbc b                                            ; $454c: $98
	add b                                            ; $454d: $80
	ld b, b                                          ; $454e: $40
	and b                                            ; $454f: $a0
	ld b, b                                          ; $4550: $40
	and b                                            ; $4551: $a0
	ret nz                                           ; $4552: $c0

	pop bc                                           ; $4553: $c1
	ld h, b                                          ; $4554: $60
	rst $38                                          ; $4555: $ff
	rst $38                                          ; $4556: $ff
	ld hl, sp-$10                                    ; $4557: $f8 $f0
	sbc $f8                                          ; $4559: $de $f8
	add b                                            ; $455b: $80
	db $fc                                           ; $455c: $fc
	rla                                              ; $455d: $17
	dec bc                                           ; $455e: $0b
	rlca                                             ; $455f: $07
	dec bc                                           ; $4560: $0b

jr_04a_4561:
	dec b                                            ; $4561: $05
	add c                                            ; $4562: $81
	add b                                            ; $4563: $80
	ret nz                                           ; $4564: $c0

	rst $38                                          ; $4565: $ff
	rst $38                                          ; $4566: $ff
	ld a, a                                          ; $4567: $7f
	ccf                                              ; $4568: $3f
	rra                                              ; $4569: $1f
	rra                                              ; $456a: $1f
	rrca                                             ; $456b: $0f
	rrca                                             ; $456c: $0f
	sub h                                            ; $456d: $94
	reti                                             ; $456e: $d9


	push bc                                          ; $456f: $c5
	ret z                                            ; $4570: $c8

	ldh a, [$f2]                                     ; $4571: $f0 $f2
	db $10                                           ; $4573: $10
	rst FarCall                                          ; $4574: $f7
	set 4, d                                         ; $4575: $cb $e2
	ldh a, [$f0]                                     ; $4577: $f0 $f0
	ldh [$cc], a                                     ; $4579: $e0 $cc
	add b                                            ; $457b: $80
	db $fc                                           ; $457c: $fc
	ld a, b                                          ; $457d: $78
	ld a, l                                          ; $457e: $7d
	ld e, a                                          ; $457f: $5f
	cp $ce                                           ; $4580: $fe $ce
	ld h, [hl]                                       ; $4582: $66
	ld [de], a                                       ; $4583: $12
	inc c                                            ; $4584: $0c
	add l                                            ; $4585: $85
	rst $38                                          ; $4586: $ff
	ccf                                              ; $4587: $3f
	ccf                                              ; $4588: $3f
	rra                                              ; $4589: $1f
	rrca                                             ; $458a: $0f
	rlca                                             ; $458b: $07
	nop                                              ; $458c: $00
	nop                                              ; $458d: $00
	call c, Call_04a_418a                            ; $458e: $dc $8a $41
	ld [hl], b                                       ; $4591: $70
	ld [hl], h                                       ; $4592: $74
	jp nc, Jump_04a_5faf                             ; $4593: $d2 $af $5f

	jr nz, @+$76                                     ; $4596: $20 $74

	cp $ff                                           ; $4598: $fe $ff
	rst $38                                          ; $459a: $ff
	sub h                                            ; $459b: $94
	db $ed                                           ; $459c: $ed
	rst SubAFromDE                                          ; $459d: $df
	ccf                                              ; $459e: $3f
	push de                                          ; $459f: $d5
	xor a                                            ; $45a0: $af
	rst $38                                          ; $45a1: $ff
	ld hl, sp-$19                                    ; $45a2: $f8 $e7
	rst $38                                          ; $45a4: $ff
	rst $38                                          ; $45a5: $ff
	cp $fe                                           ; $45a6: $fe $fe
	sbc l                                            ; $45a8: $9d
	rlca                                             ; $45a9: $07
	rra                                              ; $45aa: $1f
	sbc $ff                                          ; $45ab: $de $ff
	add e                                            ; $45ad: $83
	ld sp, hl                                        ; $45ae: $f9
	rst $38                                          ; $45af: $ff
	cp a                                             ; $45b0: $bf
	rst $38                                          ; $45b1: $ff
	cp $fb                                           ; $45b2: $fe $fb
	db $ec                                           ; $45b4: $ec
	ld [hl], b                                       ; $45b5: $70
	rlca                                             ; $45b6: $07
	rra                                              ; $45b7: $1f
	ld a, a                                          ; $45b8: $7f
	rst $38                                          ; $45b9: $ff
	rst $38                                          ; $45ba: $ff
	db $fc                                           ; $45bb: $fc
	ldh a, [$80]                                     ; $45bc: $f0 $80
	ld a, [$dafd]                                    ; $45be: $fa $fd $da
	and c                                            ; $45c1: $a1
	jp nz, $0b05                                     ; $45c2: $c2 $05 $0b

	dec b                                            ; $45c5: $05
	db $fc                                           ; $45c6: $fc
	ldh a, [$e0]                                     ; $45c7: $f0 $e0
	ret nz                                           ; $45c9: $c0

	db $fd                                           ; $45ca: $fd
	add a                                            ; $45cb: $87
	cp l                                             ; $45cc: $bd
	ld a, c                                          ; $45cd: $79
	or e                                             ; $45ce: $b3
	ld [hl], l                                       ; $45cf: $75
	ld a, [$d2f5]                                    ; $45d0: $fa $f5 $d2
	push de                                          ; $45d3: $d5
	ld [bc], a                                       ; $45d4: $02
	ld b, $0c                                        ; $45d5: $06 $0c
	ld [rRAMG], sp                                   ; $45d7: $08 $00 $00
	jr nz, jr_04a_45fc                               ; $45da: $20 $20

	ld a, [hl]                                       ; $45dc: $7e
	db $fd                                           ; $45dd: $fd
	cp $fc                                           ; $45de: $fe $fc
	ld a, [$f8fc]                                    ; $45e0: $fa $fc $f8
	db $f4                                           ; $45e3: $f4
	reti                                             ; $45e4: $d9


	rst $38                                          ; $45e5: $ff
	sub a                                            ; $45e6: $97
	sub [hl]                                         ; $45e7: $96
	ld e, $16                                        ; $45e8: $1e $16
	ld e, $16                                        ; $45ea: $1e $16
	ld d, $06                                        ; $45ec: $16 $06
	ld d, $d9                                        ; $45ee: $16 $d9
	rst $38                                          ; $45f0: $ff
	sbc l                                            ; $45f1: $9d
	ld a, [hl+]                                      ; $45f2: $2a
	ld d, l                                          ; $45f3: $55
	ld l, a                                          ; $45f4: $6f
	cp $d9                                           ; $45f5: $fe $d9
	add b                                            ; $45f7: $80
	sbc l                                            ; $45f8: $9d
	xor d                                            ; $45f9: $aa
	ld d, l                                          ; $45fa: $55
	ld l, a                                          ; $45fb: $6f

jr_04a_45fc:
	cp $f9                                           ; $45fc: $fe $f9
	ld a, [hl]                                       ; $45fe: $7e
	add $9e                                          ; $45ff: $c6 $9e
	ld [$cd7a], a                                    ; $4601: $ea $7a $cd
	sbc l                                            ; $4604: $9d
	xor d                                            ; $4605: $aa
	push de                                          ; $4606: $d5
	ld sp, hl                                        ; $4607: $f9
	sub a                                            ; $4608: $97
	db $10                                           ; $4609: $10
	inc c                                            ; $460a: $0c
	ld [$0304], sp                                   ; $460b: $08 $04 $03
	ld [bc], a                                       ; $460e: $02
	add hl, bc                                       ; $460f: $09
	dec b                                            ; $4610: $05
	ld a, e                                          ; $4611: $7b
	dec h                                            ; $4612: $25
	sub d                                            ; $4613: $92
	xor $06                                          ; $4614: $ee $06
	rlca                                             ; $4616: $07
	inc bc                                           ; $4617: $03
	add e                                            ; $4618: $83
	jr nz, jr_04a_463c                               ; $4619: $20 $21

	ld bc, $0303                                     ; $461b: $01 $03 $03
	ld b, $84                                        ; $461e: $06 $84
	ld b, [hl]                                       ; $4620: $46
	ld a, e                                          ; $4621: $7b
	ld a, [$039e]                                    ; $4622: $fa $9e $03
	sbc $07                                          ; $4625: $de $07
	add h                                            ; $4627: $84
	adc a                                            ; $4628: $8f
	set 5, b                                         ; $4629: $cb $e8
	sbc c                                            ; $462b: $99
	add hl, de                                       ; $462c: $19
	ld de, $0713                                     ; $462d: $11 $13 $07
	adc a                                            ; $4630: $8f
	ld hl, sp-$1f                                    ; $4631: $f8 $e1
	db $e3                                           ; $4633: $e3
	db $e3                                           ; $4634: $e3
	ld h, a                                          ; $4635: $67
	ld a, a                                          ; $4636: $7f
	rst JumpTable                                          ; $4637: $c7
	rst SubAFromDE                                          ; $4638: $df
	ld [hl], b                                       ; $4639: $70
	or e                                             ; $463a: $b3
	db $e3                                           ; $463b: $e3

jr_04a_463c:
	rst JumpTable                                          ; $463c: $c7
	rst JumpTable                                          ; $463d: $c7
	adc a                                            ; $463e: $8f
	adc a                                            ; $463f: $8f
	sbc a                                            ; $4640: $9f
	db $fc                                           ; $4641: $fc
	ld hl, sp-$23                                    ; $4642: $f8 $dd
	ldh [$df], a                                     ; $4644: $e0 $df
	ret nz                                           ; $4646: $c0

	sub a                                            ; $4647: $97
	ld bc, $8081                                     ; $4648: $01 $81 $80
	add b                                            ; $464b: $80
	sub b                                            ; $464c: $90
	sub b                                            ; $464d: $90
	ldh [$fc], a                                     ; $464e: $e0 $fc
	ld a, d                                          ; $4650: $7a
	pop de                                           ; $4651: $d1
	rst SubAFromDE                                          ; $4652: $df
	rlca                                             ; $4653: $07
	sbc [hl]                                         ; $4654: $9e
	inc bc                                           ; $4655: $03
	ld a, e                                          ; $4656: $7b
	dec hl                                           ; $4657: $2b
	add [hl]                                         ; $4658: $86
	sbc a                                            ; $4659: $9f
	db $e3                                           ; $465a: $e3
	ld h, l                                          ; $465b: $65
	ld h, b                                          ; $465c: $60
	jr c, jr_04a_46bb                                ; $465d: $38 $5c

	ccf                                              ; $465f: $3f

jr_04a_4660:
	sub b                                            ; $4660: $90
	ldh [$f8], a                                     ; $4661: $e0 $f8
	cp $f7                                           ; $4663: $fe $f7
	rst $38                                          ; $4665: $ff
	cp $ff                                           ; $4666: $fe $ff
	ld h, b                                          ; $4668: $60
	jr nc, @-$46                                     ; $4669: $30 $b8

	ret c                                            ; $466b: $d8

	inc e                                            ; $466c: $1c
	ld e, h                                          ; $466d: $5c
	ld c, [hl]                                       ; $466e: $4e
	ld c, $7e                                        ; $466f: $0e $7e
	ld a, [hl]                                       ; $4671: $7e
	db $dd                                           ; $4672: $dd
	ccf                                              ; $4673: $3f
	add e                                            ; $4674: $83
	rra                                              ; $4675: $1f
	sbc a                                            ; $4676: $9f
	nop                                              ; $4677: $00
	ld [bc], a                                       ; $4678: $02
	inc b                                            ; $4679: $04
	jr z, jr_04a_4684                                ; $467a: $28 $08

	ld bc, $240a                                     ; $467c: $01 $0a $24
	rrca                                             ; $467f: $0f
	rlca                                             ; $4680: $07
	ld c, $0c                                        ; $4681: $0e $0c
	sbc c                                            ; $4683: $99

jr_04a_4684:
	sub e                                            ; $4684: $93
	or [hl]                                          ; $4685: $b6
	db $e4                                           ; $4686: $e4
	jp hl                                            ; $4687: $e9


	dec l                                            ; $4688: $2d
	ld e, [hl]                                       ; $4689: $5e
	rst AddAOntoHL                                          ; $468a: $ef
	sub a                                            ; $468b: $97
	cpl                                              ; $468c: $2f
	rla                                              ; $468d: $17
	rra                                              ; $468e: $1f
	halt                                             ; $468f: $76
	ld e, $7a                                        ; $4690: $1e $7a
	ret nc                                           ; $4692: $d0

	add d                                            ; $4693: $82

Jump_04a_4694:
	inc bc                                           ; $4694: $03
	ld bc, $4a00                                     ; $4695: $01 $00 $4a
	and l                                            ; $4698: $a5
	ld b, d                                          ; $4699: $42
	inc b                                            ; $469a: $04
	jp c, $e2cc                                      ; $469b: $da $cc $e2

	push af                                          ; $469e: $f5
	ld bc, $8002                                     ; $469f: $01 $02 $80
	ldh [$e0], a                                     ; $46a2: $e0 $e0

Call_04a_46a4:
	ldh a, [$f8]                                     ; $46a4: $f0 $f8
	ld a, b                                          ; $46a6: $78
	and c                                            ; $46a7: $a1
	ld e, d                                          ; $46a8: $5a
	ld l, d                                          ; $46a9: $6a
	dec [hl]                                         ; $46aa: $35
	ld a, [de]                                       ; $46ab: $1a
	and b                                            ; $46ac: $a0
	ld d, b                                          ; $46ad: $50
	ld a, [bc]                                       ; $46ae: $0a
	ld e, a                                          ; $46af: $5f
	dec b                                            ; $46b0: $05
	ei                                               ; $46b1: $fb
	sub l                                            ; $46b2: $95
	rst JumpTable                                          ; $46b3: $c7
	xor b                                            ; $46b4: $a8
	and b                                            ; $46b5: $a0
	ld d, b                                          ; $46b6: $50
	and b                                            ; $46b7: $a0
	db $10                                           ; $46b8: $10
	sub b                                            ; $46b9: $90
	ld c, b                                          ; $46ba: $48

jr_04a_46bb:
	ld hl, sp+$50                                    ; $46bb: $f8 $50
	ei                                               ; $46bd: $fb
	ld a, [hl]                                       ; $46be: $7e
	ld h, d                                          ; $46bf: $62
	sbc d                                            ; $46c0: $9a
	add c                                            ; $46c1: $81
	ld b, [hl]                                       ; $46c2: $46
	adc b                                            ; $46c3: $88
	ld b, b                                          ; $46c4: $40
	and d                                            ; $46c5: $a2
	ld h, e                                          ; $46c6: $63
	jr nz, jr_04a_4660                               ; $46c7: $20 $97

	dec bc                                           ; $46c9: $0b
	rla                                              ; $46ca: $17
	cpl                                              ; $46cb: $2f
	ld e, a                                          ; $46cc: $5f
	cpl                                              ; $46cd: $2f
	ld e, a                                          ; $46ce: $5f
	cp [hl]                                          ; $46cf: $be
	ld a, a                                          ; $46d0: $7f
	ei                                               ; $46d1: $fb
	rst SubAFromDE                                          ; $46d2: $df
	ld bc, $f296                                     ; $46d3: $01 $96 $f2
	and l                                            ; $46d6: $a5
	xor d                                            ; $46d7: $aa
	and l                                            ; $46d8: $a5
	ld c, d                                          ; $46d9: $4a
	push de                                          ; $46da: $d5
	ld c, d                                          ; $46db: $4a
	push de                                          ; $46dc: $d5
	nop                                              ; $46dd: $00
	sbc $40                                          ; $46de: $de $40
	ld [hl], l                                       ; $46e0: $75
	ret nc                                           ; $46e1: $d0

	sub a                                            ; $46e2: $97
	ld a, b                                          ; $46e3: $78
	or b                                             ; $46e4: $b0
	db $10                                           ; $46e5: $10
	jr jr_04a_46fc                                   ; $46e6: $18 $14

	ld a, [de]                                       ; $46e8: $1a
	dec d                                            ; $46e9: $15
	ld a, [de]                                       ; $46ea: $1a
	sbc $ff                                          ; $46eb: $de $ff
	sbc d                                            ; $46ed: $9a
	rst FarCall                                          ; $46ee: $f7
	ei                                               ; $46ef: $fb
	push af                                          ; $46f0: $f5
	ld a, [$dcf5]                                    ; $46f1: $fa $f5 $dc
	ld b, $9c                                        ; $46f4: $06 $9c
	add d                                            ; $46f6: $82
	ld d, b                                          ; $46f7: $50
	xor b                                            ; $46f8: $a8
	call c, $9cff                                    ; $46f9: $dc $ff $9c

jr_04a_46fc:
	ld a, a                                          ; $46fc: $7f
	xor a                                            ; $46fd: $af
	ld d, a                                          ; $46fe: $57
	ld b, [hl]                                       ; $46ff: $46
	ret nz                                           ; $4700: $c0

	ld a, a                                          ; $4701: $7f
	and [hl]                                         ; $4702: $a6
	ld c, [hl]                                       ; $4703: $4e
	ret nz                                           ; $4704: $c0

	sub d                                            ; $4705: $92
	ld l, d                                          ; $4706: $6a
	ld l, [hl]                                       ; $4707: $6e
	ld e, e                                          ; $4708: $5b
	xor e                                            ; $4709: $ab
	ld b, d                                          ; $470a: $42
	xor b                                            ; $470b: $a8
	ld d, l                                          ; $470c: $55
	rst AddAOntoHL                                          ; $470d: $ef

jr_04a_470e:
	add b                                            ; $470e: $80
	ldh a, [$3c]                                     ; $470f: $f0 $3c
	rlca                                             ; $4711: $07
	ld bc, $7ffd                                     ; $4712: $01 $fd $7f
	ld e, b                                          ; $4715: $58
	add b                                            ; $4716: $80
	or b                                             ; $4717: $b0
	call z, $1e70                                    ; $4718: $cc $70 $1e
	adc a                                            ; $471b: $8f
	ld bc, $0001                                     ; $471c: $01 $01 $00
	add b                                            ; $471f: $80
	ldh a, [$7c]                                     ; $4720: $f0 $7c
	rst $38                                          ; $4722: $ff
	rst $38                                          ; $4723: $ff
	xor l                                            ; $4724: $ad
	and h                                            ; $4725: $a4
	ld e, h                                          ; $4726: $5c
	ld [hl], $3a                                     ; $4727: $36 $3a
	ld [de], a                                       ; $4729: $12
	inc c                                            ; $472a: $0c
	ld h, e                                          ; $472b: $63
	adc a                                            ; $472c: $8f
	rst GetHLinHL                                          ; $472d: $cf
	adc $67                                          ; $472e: $ce $67
	ld [hl], a                                       ; $4730: $77
	dec sp                                           ; $4731: $3b
	ld e, a                                          ; $4732: $5f
	rst $38                                          ; $4733: $ff
	ld c, a                                          ; $4734: $4f
	sbc a                                            ; $4735: $9f
	adc b                                            ; $4736: $88
	ld e, a                                          ; $4737: $5f
	rst SubAFromDE                                          ; $4738: $df
	ld e, a                                          ; $4739: $5f
	ld a, [$2a4d]                                    ; $473a: $fa $4d $2a
	cp a                                             ; $473d: $bf
	ld a, a                                          ; $473e: $7f
	cp a                                             ; $473f: $bf
	ccf                                              ; $4740: $3f
	cp a                                             ; $4741: $bf
	rra                                              ; $4742: $1f
	cp a                                             ; $4743: $bf
	rst SubAFromDE                                          ; $4744: $df
	cp l                                             ; $4745: $bd
	sbc d                                            ; $4746: $9a
	inc a                                            ; $4747: $3c
	ld a, [hl-]                                      ; $4748: $3a
	inc [hl]                                         ; $4749: $34
	jr c, @+$16                                      ; $474a: $38 $14

	jr c, jr_04a_470e                                ; $474c: $38 $c0

	ld a, d                                          ; $474e: $7a
	call nz, $c0df                                   ; $474f: $c4 $df $c0
	ld a, a                                          ; $4752: $7f
	ei                                               ; $4753: $fb
	sub h                                            ; $4754: $94
	db $fd                                           ; $4755: $fd
	cp [hl]                                          ; $4756: $be
	ld e, l                                          ; $4757: $5d
	ld l, $17                                        ; $4758: $2e $17
	rrca                                             ; $475a: $0f
	rla                                              ; $475b: $17
	dec bc                                           ; $475c: $0b
	ld [bc], a                                       ; $475d: $02
	ld bc, $7302                                     ; $475e: $01 $02 $73
	or c                                             ; $4761: $b1
	sub a                                            ; $4762: $97
	or [hl]                                          ; $4763: $b6
	ld d, [hl]                                       ; $4764: $56
	or [hl]                                          ; $4765: $b6
	ld d, [hl]                                       ; $4766: $56
	cp [hl]                                          ; $4767: $be
	ld d, a                                          ; $4768: $57
	or [hl]                                          ; $4769: $b6
	ld [hl], l                                       ; $476a: $75
	jp c, $800f                                      ; $476b: $da $0f $80

	ld c, $98                                        ; $476e: $0e $98
	ret                                              ; $4770: $c9


	ld e, d                                          ; $4771: $5a
	dec bc                                           ; $4772: $0b
	jp c, $95b7                                      ; $4773: $da $b7 $95

	ld a, $06                                        ; $4776: $3e $06
	ld b, $84                                        ; $4778: $06 $84
	add h                                            ; $477a: $84
	dec b                                            ; $477b: $05
	ld [$040a], sp                                   ; $477c: $08 $0a $04
	ld c, c                                          ; $477f: $49
	ld h, c                                          ; $4780: $61
	add b                                            ; $4781: $80
	add [hl]                                         ; $4782: $86
	or c                                             ; $4783: $b1
	sub d                                            ; $4784: $92
	ld a, h                                          ; $4785: $7c
	cp c                                             ; $4786: $b9
	db $ec                                           ; $4787: $ec
	ret c                                            ; $4788: $d8

	pop af                                           ; $4789: $f1
	db $e3                                           ; $478a: $e3
	rst GetHLinHL                                          ; $478b: $cf
	rst $38                                          ; $478c: $ff
	sub c                                            ; $478d: $91
	rst GetHLinHL                                          ; $478e: $cf

jr_04a_478f:
	ld a, a                                          ; $478f: $7f
	dec sp                                           ; $4790: $3b
	ld a, l                                          ; $4791: $7d
	db $ed                                           ; $4792: $ed
	ld a, [$ab05]                                    ; $4793: $fa $05 $ab
	rst $38                                          ; $4796: $ff
	rst FarCall                                          ; $4797: $f7
	nop                                              ; $4798: $00
	ld b, $18                                        ; $4799: $06 $18
	jr nz, jr_04a_4816                               ; $479b: $20 $79

	rst GetHLinHL                                          ; $479d: $cf
	add d                                            ; $479e: $82
	ld [$d67c], sp                                   ; $479f: $08 $7c $d6
	inc bc                                           ; $47a2: $03
	ld b, b                                          ; $47a3: $40
	ld a, [hl+]                                      ; $47a4: $2a
	ld d, d                                          ; $47a5: $52
	xor l                                            ; $47a6: $ad
	ld d, [hl]                                       ; $47a7: $56
	rst $38                                          ; $47a8: $ff
	rrca                                             ; $47a9: $0f
	rlca                                             ; $47aa: $07
	ld bc, $0501                                     ; $47ab: $01 $01 $05
	ld [bc], a                                       ; $47ae: $02
	and c                                            ; $47af: $a1
	and h                                            ; $47b0: $a4
	ld [de], a                                       ; $47b1: $12
	add hl, sp                                       ; $47b2: $39
	ld c, h                                          ; $47b3: $4c
	ld [hl], b                                       ; $47b4: $70
	ld a, h                                          ; $47b5: $7c
	jr nc, jr_04a_478f                               ; $47b6: $30 $d7

	ld b, b                                          ; $47b8: $40
	ldh [$c0], a                                     ; $47b9: $e0 $c0
	ldh a, [$de]                                     ; $47bb: $f0 $de
	rst $38                                          ; $47bd: $ff
	adc c                                            ; $47be: $89
	ld l, $80                                        ; $47bf: $2e $80
	ld b, d                                          ; $47c1: $42
	rst GetHLinHL                                          ; $47c2: $cf
	ld [hl], $2c                                     ; $47c3: $36 $2c
	ld b, b                                          ; $47c5: $40
	cp a                                             ; $47c6: $bf
	rst $38                                          ; $47c7: $ff
	nop                                              ; $47c8: $00
	ld bc, $0900                                     ; $47c9: $01 $00 $09
	inc de                                           ; $47cc: $13
	cp a                                             ; $47cd: $bf
	ld a, a                                          ; $47ce: $7f
	rst $38                                          ; $47cf: $ff
	jr nc, @-$14                                     ; $47d0: $30 $ea

	ldh a, [$80]                                     ; $47d2: $f0 $80
	rlca                                             ; $47d4: $07
	ld a, c                                          ; $47d5: $79
	add l                                            ; $47d6: $85
	sbc h                                            ; $47d7: $9c
	nop                                              ; $47d8: $00
	dec d                                            ; $47d9: $15
	rrca                                             ; $47da: $0f
	ld a, e                                          ; $47db: $7b
	ld a, [$ffdf]                                    ; $47dc: $fa $df $ff
	add a                                            ; $47df: $87
	pop bc                                           ; $47e0: $c1
	sbc a                                            ; $47e1: $9f
	inc a                                            ; $47e2: $3c
	ld a, [$e0f7]                                    ; $47e3: $fa $f7 $e0
	ldh [c], a                                       ; $47e6: $e2
	push hl                                          ; $47e7: $e5
	ccf                                              ; $47e8: $3f
	ld a, [hl]                                       ; $47e9: $7e
	cp $fc                                           ; $47ea: $fe $fc
	ld hl, sp-$01                                    ; $47ec: $f8 $ff
	db $fd                                           ; $47ee: $fd
	ld a, [$0e06]                                    ; $47ef: $fa $06 $0e
	ld c, $34                                        ; $47f2: $0e $34
	cp d                                             ; $47f4: $ba
	ld e, h                                          ; $47f5: $5c
	ld a, [$fef4]                                    ; $47f6: $fa $f4 $fe
	sbc d                                            ; $47f9: $9a
	ld a, [bc]                                       ; $47fa: $0a
	ld b, h                                          ; $47fb: $44
	add d                                            ; $47fc: $82
	inc b                                            ; $47fd: $04
	ld a, [bc]                                       ; $47fe: $0a
	ld a, c                                          ; $47ff: $79
	dec hl                                           ; $4800: $2b
	ld a, b                                          ; $4801: $78
	cp $9d                                           ; $4802: $fe $9d
	sub l                                            ; $4804: $95
	ld e, d                                          ; $4805: $5a
	db $db                                           ; $4806: $db
	ldh a, [$9a]                                     ; $4807: $f0 $9a
	ld [hl], b                                       ; $4809: $70
	or b                                             ; $480a: $b0
	ld d, b                                          ; $480b: $50
	xor b                                            ; $480c: $a8
	ld hl, sp-$23                                    ; $480d: $f8 $dd
	ld sp, hl                                        ; $480f: $f9
	sbc h                                            ; $4810: $9c
	jp hl                                            ; $4811: $e9


	xor a                                            ; $4812: $af
	ld d, a                                          ; $4813: $57
	db $db                                           ; $4814: $db
	rlca                                             ; $4815: $07

jr_04a_4816:
	dec [hl]                                         ; $4816: $35
	add b                                            ; $4817: $80
	sbc h                                            ; $4818: $9c
	xor b                                            ; $4819: $a8
	ld d, h                                          ; $481a: $54
	xor d                                            ; $481b: $aa
	ld l, d                                          ; $481c: $6a
	ld d, d                                          ; $481d: $52
	rst $38                                          ; $481e: $ff
	sub h                                            ; $481f: $94
	push de                                          ; $4820: $d5
	rst AddAOntoHL                                          ; $4821: $ef
	and b                                            ; $4822: $a0
	inc bc                                           ; $4823: $03
	rst $38                                          ; $4824: $ff
	ld d, e                                          ; $4825: $53
	cp b                                             ; $4826: $b8
	ld h, a                                          ; $4827: $67
	xor d                                            ; $4828: $aa
	rst SubAFromHL                                          ; $4829: $d7
	ld hl, sp+$7b                                    ; $482a: $f8 $7b
	ld [hl], b                                       ; $482c: $70
	sbc [hl]                                         ; $482d: $9e
	add $7b                                          ; $482e: $c6 $7b
	db $fc                                           ; $4830: $fc
	sbc d                                            ; $4831: $9a
	inc bc                                           ; $4832: $03
	ld a, [bc]                                       ; $4833: $0a
	rst $38                                          ; $4834: $ff
	ret nz                                           ; $4835: $c0

	rrca                                             ; $4836: $0f
	ld a, b                                          ; $4837: $78
	db $ed                                           ; $4838: $ed
	sub c                                            ; $4839: $91
	inc b                                            ; $483a: $04
	ccf                                              ; $483b: $3f

jr_04a_483c:
	rst $38                                          ; $483c: $ff
	pop af                                           ; $483d: $f1
	ldh a, [rP1]                                     ; $483e: $f0 $00
	di                                               ; $4840: $f3
	ld a, [hl]                                       ; $4841: $7e
	rlca                                             ; $4842: $07
	jr c, jr_04a_483c                                ; $4843: $38 $f7

	cp $67                                           ; $4845: $fe $67
	and a                                            ; $4847: $a7
	sbc $ff                                          ; $4848: $de $ff
	sbc l                                            ; $484a: $9d
	rst JumpTable                                          ; $484b: $c7
	ld hl, sp+$7a                                    ; $484c: $f8 $7a
	ld l, [hl]                                       ; $484e: $6e
	add b                                            ; $484f: $80
	dec l                                            ; $4850: $2d
	sub $cb                                          ; $4851: $d6 $cb
	push af                                          ; $4853: $f5
	cp d                                             ; $4854: $ba
	db $ed                                           ; $4855: $ed
	cp [hl]                                          ; $4856: $be
	rst SubAFromDE                                          ; $4857: $df
	rst GetHLinHL                                          ; $4858: $cf
	rst GetHLinHL                                          ; $4859: $cf
	rst SubAFromBC                                          ; $485a: $e7
	di                                               ; $485b: $f3
	ld a, c                                          ; $485c: $79
	inc c                                            ; $485d: $0c
	rst JumpTable                                          ; $485e: $c7
	db $e3                                           ; $485f: $e3
	inc d                                            ; $4860: $14
	ld a, [bc]                                       ; $4861: $0a
	dec c                                            ; $4862: $0d
	add [hl]                                         ; $4863: $86
	ld b, e                                          ; $4864: $43
	ld hl, $a850                                     ; $4865: $21 $50 $a8
	ldh [$f0], a                                     ; $4868: $e0 $f0
	ldh a, [$f8]                                     ; $486a: $f0 $f8
	db $fc                                           ; $486c: $fc
	cp $bf                                           ; $486d: $fe $bf
	sub [hl]                                         ; $486f: $96
	rst SubAFromDE                                          ; $4870: $df
	rla                                              ; $4871: $17
	rrca                                             ; $4872: $0f
	ld d, $ac                                        ; $4873: $16 $ac
	ld a, h                                          ; $4875: $7c
	ld hl, sp-$07                                    ; $4876: $f8 $f9
	pop af                                           ; $4878: $f1
	ld a, d                                          ; $4879: $7a
	inc d                                            ; $487a: $14
	ld [hl], l                                       ; $487b: $75
	ld c, a                                          ; $487c: $4f
	ld a, [hl]                                       ; $487d: $7e
	rst GetHLinHL                                          ; $487e: $cf
	sub a                                            ; $487f: $97
	ld e, $3d                                        ; $4880: $1e $3d
	ld a, d                                          ; $4882: $7a
	ld [hl], l                                       ; $4883: $75
	jp $de87                                         ; $4884: $c3 $87 $de


	ld a, a                                          ; $4887: $7f
	ld a, e                                          ; $4888: $7b
	ld b, c                                          ; $4889: $41
	adc [hl]                                         ; $488a: $8e
	ld sp, hl                                        ; $488b: $f9
	rst SubAFromBC                                          ; $488c: $e7
	sbc $3c                                          ; $488d: $de $3c
	ei                                               ; $488f: $fb
	or a                                             ; $4890: $b7
	ld e, h                                          ; $4891: $5c
	xor $b7                                          ; $4892: $ee $b7
	db $dd                                           ; $4894: $dd
	db $fc                                           ; $4895: $fc
	add [hl]                                         ; $4896: $86
	ccf                                              ; $4897: $3f
	ld a, a                                          ; $4898: $7f
	rst $38                                          ; $4899: $ff
	pop af                                           ; $489a: $f1
	rst GetHLinHL                                          ; $489b: $cf
	ld a, e                                          ; $489c: $7b
	ei                                               ; $489d: $fb
	rst SubAFromDE                                          ; $489e: $df
	rst $38                                          ; $489f: $ff
	sub [hl]                                         ; $48a0: $96
	add hl, de                                       ; $48a1: $19
	ld a, $ff                                        ; $48a2: $3e $ff
	ldh [$cc], a                                     ; $48a4: $e0 $cc
	dec a                                            ; $48a6: $3d
	rst $38                                          ; $48a7: $ff
	rst $38                                          ; $48a8: $ff
	and $de                                          ; $48a9: $e6 $de
	rst $38                                          ; $48ab: $ff
	add b                                            ; $48ac: $80
	di                                               ; $48ad: $f3
	jp nz, $0003                                     ; $48ae: $c2 $03 $00

	xor b                                            ; $48b1: $a8
	ldh [rSC], a                                     ; $48b2: $e0 $02
	dec d                                            ; $48b4: $15
	xor d                                            ; $48b5: $aa
	rra                                              ; $48b6: $1f
	db $fc                                           ; $48b7: $fc
	rst $38                                          ; $48b8: $ff
	inc bc                                           ; $48b9: $03
	rra                                              ; $48ba: $1f
	ld hl, sp-$20                                    ; $48bb: $f8 $e0
	nop                                              ; $48bd: $00
	nop                                              ; $48be: $00
	ld a, [hl+]                                      ; $48bf: $2a
	dec d                                            ; $48c0: $15
	xor l                                            ; $48c1: $ad
	ld b, e                                          ; $48c2: $43
	ld hl, $2b08                                     ; $48c3: $21 $08 $2b
	or l                                             ; $48c6: $b5
	call nc, $0268                                   ; $48c7: $d4 $68 $02
	inc e                                            ; $48ca: $1c
	ld e, $91                                        ; $48cb: $1e $91
	inc d                                            ; $48cd: $14
	ld b, b                                          ; $48ce: $40
	ld a, [bc]                                       ; $48cf: $0a
	xor h                                            ; $48d0: $ac
	ld e, e                                          ; $48d1: $5b
	or e                                             ; $48d2: $b3
	ret nz                                           ; $48d3: $c0

	sbc b                                            ; $48d4: $98
	ld a, e                                          ; $48d5: $7b
	or l                                             ; $48d6: $b5

jr_04a_48d7:
	ld l, d                                          ; $48d7: $6a
	ld de, $40a0                                     ; $48d8: $11 $a0 $40
	cp $7d                                           ; $48db: $fe $7d
	cp l                                             ; $48dd: $bd
	sub h                                            ; $48de: $94
	rrca                                             ; $48df: $0f
	jr z, jr_04a_48d7                                ; $48e0: $28 $f5

	ld c, $7f                                        ; $48e2: $0e $7f
	rst $38                                          ; $48e4: $ff

jr_04a_48e5:
	ld l, a                                          ; $48e5: $6f
	rst SubAFromDE                                          ; $48e6: $df
	rst $38                                          ; $48e7: $ff
	rla                                              ; $48e8: $17
	ld a, [bc]                                       ; $48e9: $0a
	ld a, d                                          ; $48ea: $7a
	ld d, b                                          ; $48eb: $50
	sub l                                            ; $48ec: $95
	db $10                                           ; $48ed: $10
	jr nz, @+$01                                     ; $48ee: $20 $ff

	rra                                              ; $48f0: $1f
	nop                                              ; $48f1: $00
	ldh a, [c]                                       ; $48f2: $f2
	rra                                              ; $48f3: $1f
	adc a                                            ; $48f4: $8f
	rst SubAFromBC                                          ; $48f5: $e7
	db $d3                                           ; $48f6: $d3
	sbc $ff                                          ; $48f7: $de $ff
	sub b                                            ; $48f9: $90
	dec c                                            ; $48fa: $0d
	ldh [rSVBK], a                                   ; $48fb: $e0 $70
	jr c, jr_04a_493b                                ; $48fd: $38 $3c

	jp Jump_04a_5f85                                 ; $48ff: $c3 $85 $5f


	cp a                                             ; $4902: $bf
	rst $38                                          ; $4903: $ff
	ld [hl], a                                       ; $4904: $77
	ld [$fcff], a                                    ; $4905: $ea $ff $fc
	ld a, [$cf7b]                                    ; $4908: $fa $7b $cf
	add d                                            ; $490b: $82
	ld [$0005], sp                                   ; $490c: $08 $05 $00
	ld hl, sp-$02                                    ; $490f: $f8 $fe
	ld hl, sp-$04                                    ; $4911: $f8 $fc
	ld hl, sp-$0b                                    ; $4913: $f8 $f5
	add sp, $50                                      ; $4915: $e8 $50
	ld b, $00                                        ; $4917: $06 $00
	ld b, $02                                        ; $4919: $06 $02
	ld b, $0a                                        ; $491b: $06 $0a
	ld d, $ae                                        ; $491d: $16 $ae
	or l                                             ; $491f: $b5
	ld e, d                                          ; $4920: $5a
	push af                                          ; $4921: $f5
	ld a, [$58b1]                                    ; $4922: $fa $b1 $58
	or c                                             ; $4925: $b1
	ld a, b                                          ; $4926: $78
	ld d, b                                          ; $4927: $50
	or b                                             ; $4928: $b0
	sbc $10                                          ; $4929: $de $10
	sub h                                            ; $492b: $94
	jr nc, @+$12                                     ; $492c: $30 $10

	db $10                                           ; $492e: $10
	ld e, c                                          ; $492f: $59
	xor c                                            ; $4930: $a9
	ld e, c                                          ; $4931: $59
	xor c                                            ; $4932: $a9
	ld e, l                                          ; $4933: $5d
	xor l                                            ; $4934: $ad
	ld b, l                                          ; $4935: $45
	adc e                                            ; $4936: $8b
	db $dd                                           ; $4937: $dd
	rlca                                             ; $4938: $07
	sbc $03                                          ; $4939: $de $03

jr_04a_493b:
	sbc [hl]                                         ; $493b: $9e
	ld bc, $c06a                                     ; $493c: $01 $6a $c0
	sbc [hl]                                         ; $493f: $9e
	sub l                                            ; $4940: $95
	jp c, Jump_04a_7f80                              ; $4941: $da $80 $7f

	ld h, d                                          ; $4944: $62
	sbc h                                            ; $4945: $9c
	ld d, c                                          ; $4946: $51
	xor b                                            ; $4947: $a8
	ld d, b                                          ; $4948: $50
	ld a, c                                          ; $4949: $79
	ld c, $9e                                        ; $494a: $0e $9e
	ld d, c                                          ; $494c: $51
	ld sp, hl                                        ; $494d: $f9
	sub [hl]                                         ; $494e: $96
	add hl, hl                                       ; $494f: $29
	add d                                            ; $4950: $82
	db $10                                           ; $4951: $10
	ld l, l                                          ; $4952: $6d
	rst $38                                          ; $4953: $ff
	rst $38                                          ; $4954: $ff
	xor e                                            ; $4955: $ab
	rst FarCall                                          ; $4956: $f7
	db $fc                                           ; $4957: $fc
	jp c, $80ff                                      ; $4958: $da $ff $80

	db $e3                                           ; $495b: $e3
	ld c, a                                          ; $495c: $4f
	sbc l                                            ; $495d: $9d
	ld b, [hl]                                       ; $495e: $46
	db $e3                                           ; $495f: $e3
	ld sp, hl                                        ; $4960: $f9
	sub $ab                                          ; $4961: $d6 $ab
	jr jr_04a_48e5                                   ; $4963: $18 $80

	ldh [$f1], a                                     ; $4965: $e0 $f1
	ldh a, [$f4]                                     ; $4967: $f0 $f4
	ld [$4055], a                                    ; $4969: $ea $55 $40
	ld [$76cf], sp                                   ; $496c: $08 $cf $76
	add b                                            ; $496f: $80
	sub b                                            ; $4970: $90
	or [hl]                                          ; $4971: $b6
	ld d, h                                          ; $4972: $54
	ccf                                              ; $4973: $3f
	nop                                              ; $4974: $00
	nop                                              ; $4975: $00
	adc c                                            ; $4976: $89
	ret nz                                           ; $4977: $c0

	ld h, b                                          ; $4978: $60
	ld a, b                                          ; $4979: $78
	sub d                                            ; $497a: $92
	cp e                                             ; $497b: $bb
	ld sp, $8c08                                     ; $497c: $31 $08 $8c
	ld h, d                                          ; $497f: $62
	add hl, de                                       ; $4980: $19
	nop                                              ; $4981: $00
	inc bc                                           ; $4982: $03
	dec l                                            ; $4983: $2d
	ei                                               ; $4984: $fb
	dec a                                            ; $4985: $3d
	ld a, a                                          ; $4986: $7f
	sbc a                                            ; $4987: $9f
	cp $80                                           ; $4988: $fe $80
	jp nc, $ead4                                     ; $498a: $d2 $d4 $ea

	db $e3                                           ; $498d: $e3
	ldh a, [c]                                       ; $498e: $f2
	or c                                             ; $498f: $b1
	pop bc                                           ; $4990: $c1
	ld bc, $eff9                                     ; $4991: $01 $f9 $ef
	rst FarCall                                          ; $4994: $f7
	di                                               ; $4995: $f3
	ei                                               ; $4996: $fb
	ld a, e                                          ; $4997: $7b
	add hl, de                                       ; $4998: $19
	stop                                             ; $4999: $10 $00
	ld [hl], e                                       ; $499b: $73
	inc b                                            ; $499c: $04
	dec b                                            ; $499d: $05
	rlca                                             ; $499e: $07
	ld a, [bc]                                       ; $499f: $0a
	sub h                                            ; $49a0: $94
	nop                                              ; $49a1: $00
	di                                               ; $49a2: $f3
	ld b, $87                                        ; $49a3: $06 $87
	rst AddAOntoHL                                          ; $49a5: $ef
	rst AddAOntoHL                                          ; $49a6: $ef
	rst $38                                          ; $49a7: $ff
	ld hl, sp-$6b                                    ; $49a8: $f8 $95
	db $10                                           ; $49aa: $10
	inc b                                            ; $49ab: $04
	ld a, c                                          ; $49ac: $79
	ldh a, [c]                                       ; $49ad: $f2
	pop af                                           ; $49ae: $f1
	ei                                               ; $49af: $fb
	ld [hl-], a                                      ; $49b0: $32
	add b                                            ; $49b1: $80
	ldh [$e1], a                                     ; $49b2: $e0 $e1
	sbc $ff                                          ; $49b4: $de $ff
	sbc [hl]                                         ; $49b6: $9e
	db $fc                                           ; $49b7: $fc
	ld a, c                                          ; $49b8: $79
	or b                                             ; $49b9: $b0
	sub d                                            ; $49ba: $92
	ld e, $07                                        ; $49bb: $1e $07
	add c                                            ; $49bd: $81
	nop                                              ; $49be: $00
	dec b                                            ; $49bf: $05
	inc bc                                           ; $49c0: $03
	ld [bc], a                                       ; $49c1: $02
	dec c                                            ; $49c2: $0d
	inc bc                                           ; $49c3: $03
	add b                                            ; $49c4: $80
	nop                                              ; $49c5: $00
	rst $38                                          ; $49c6: $ff
	ld [bc], a                                       ; $49c7: $02
	ld a, d                                          ; $49c8: $7a
	sbc l                                            ; $49c9: $9d
	add b                                            ; $49ca: $80
	db $fc                                           ; $49cb: $fc
	inc c                                            ; $49cc: $0c
	ccf                                              ; $49cd: $3f
	rl a                                             ; $49ce: $cb $17
	rra                                              ; $49d0: $1f
	cp $fc                                           ; $49d1: $fe $fc
	jp c, $0000                                     ; $49d3: $da $00 $00

	inc b                                            ; $49d6: $04
	dec bc                                           ; $49d7: $0b
	ld h, $0c                                        ; $49d8: $26 $0c
	jr jr_04a_4a00                                   ; $49da: $18 $24

	rst $38                                          ; $49dc: $ff
	db $fd                                           ; $49dd: $fd
	ld [$c3f1], a                                    ; $49de: $ea $f1 $c3
	push bc                                          ; $49e1: $c5
	ld [$0f95], a                                    ; $49e2: $ea $95 $0f
	ld a, b                                          ; $49e5: $78
	pop bc                                           ; $49e6: $c1
	ld b, $2c                                        ; $49e7: $06 $2c
	jr nc, @-$7e                                     ; $49e9: $30 $80

	ld bc, $5e42                                     ; $49eb: $01 $42 $5e
	inc b                                            ; $49ee: $04
	sbc a                                            ; $49ef: $9f
	dec b                                            ; $49f0: $05
	ld [$0285], a                                    ; $49f1: $ea $85 $02
	ld b, c                                          ; $49f4: $41
	ld bc, $7f0b                                     ; $49f5: $01 $0b $7f
	ld a, [$7a15]                                    ; $49f8: $fa $15 $7a
	db $fd                                           ; $49fb: $fd
	cp $a0                                           ; $49fc: $fe $a0
	cp h                                             ; $49fe: $bc
	dec bc                                           ; $49ff: $0b

jr_04a_4a00:
	push de                                          ; $4a00: $d5
	xor a                                            ; $4a01: $af
	ld d, l                                          ; $4a02: $55
	xor e                                            ; $4a03: $ab
	ld d, a                                          ; $4a04: $57
	ld e, a                                          ; $4a05: $5f
	rst $38                                          ; $4a06: $ff
	db $f4                                           ; $4a07: $f4
	ld a, [hl+]                                      ; $4a08: $2a
	ld d, b                                          ; $4a09: $50
	sub h                                            ; $4a0a: $94
	xor d                                            ; $4a0b: $aa
	ld d, h                                          ; $4a0c: $54
	xor b                                            ; $4a0d: $a8
	ccf                                              ; $4a0e: $3f
	rst SubAFromDE                                          ; $4a0f: $df
	rst SubAFromBC                                          ; $4a10: $e7
	pop bc                                           ; $4a11: $c1
	pop hl                                           ; $4a12: $e1
	pop de                                           ; $4a13: $d1
	jp hl                                            ; $4a14: $e9


	rst FarCall                                          ; $4a15: $f7
	ld a, e                                          ; $4a16: $7b
	and h                                            ; $4a17: $a4
	db $fc                                           ; $4a18: $fc
	sbc h                                            ; $4a19: $9c
	jp hl                                            ; $4a1a: $e9


	or $fb                                           ; $4a1b: $f6 $fb
	call c, $9eff                                    ; $4a1d: $dc $ff $9e
	ld e, $79                                        ; $4a20: $1e $79
	ld d, b                                          ; $4a22: $50
	db $fd                                           ; $4a23: $fd
	sub l                                            ; $4a24: $95
	db $fd                                           ; $4a25: $fd
	cp d                                             ; $4a26: $ba
	nop                                              ; $4a27: $00
	rst SubAFromBC                                          ; $4a28: $e7
	ld a, a                                          ; $4a29: $7f
	rst SubAFromDE                                          ; $4a2a: $df
	ld sp, hl                                        ; $4a2b: $f9
	rst $38                                          ; $4a2c: $ff
	ld [bc], a                                       ; $4a2d: $02
	ld b, l                                          ; $4a2e: $45
	sbc $ff                                          ; $4a2f: $de $ff
	sbc b                                            ; $4a31: $98
	ccf                                              ; $4a32: $3f
	rlca                                             ; $4a33: $07
	nop                                              ; $4a34: $00
	ldh [hDisp0_LCDC], a                                     ; $4a35: $e0 $82
	ld [bc], a                                       ; $4a37: $02
	db $e3                                           ; $4a38: $e3
	ld a, d                                          ; $4a39: $7a
	ld e, b                                          ; $4a3a: $58
	sbc h                                            ; $4a3b: $9c
	inc bc                                           ; $4a3c: $03
	ld e, $7e                                        ; $4a3d: $1e $7e
	db $db                                           ; $4a3f: $db
	cp $97                                           ; $4a40: $fe $97
	ld sp, $3138                                     ; $4a42: $31 $38 $31
	cp d                                             ; $4a45: $ba
	ld [hl], c                                       ; $4a46: $71

jr_04a_4a47:
	cp d                                             ; $4a47: $ba
	ld [hl], c                                       ; $4a48: $71
	xor d                                            ; $4a49: $aa
	reti                                             ; $4a4a: $d9


	db $10                                           ; $4a4b: $10
	sub a                                            ; $4a4c: $97
	dec b                                            ; $4a4d: $05
	adc e                                            ; $4a4e: $8b
	rlca                                             ; $4a4f: $07
	adc d                                            ; $4a50: $8a
	inc b                                            ; $4a51: $04
	inc c                                            ; $4a52: $0c
	nop                                              ; $4a53: $00
	ld [$01dd], sp                                   ; $4a54: $08 $dd $01
	ld [hl], l                                       ; $4a57: $75
	rst $38                                          ; $4a58: $ff
	ld a, [hl]                                       ; $4a59: $7e
	ld b, b                                          ; $4a5a: $40
	sbc l                                            ; $4a5b: $9d
	xor d                                            ; $4a5c: $aa
	sub l                                            ; $4a5d: $95
	ld a, e                                          ; $4a5e: $7b
	cp $9e                                           ; $4a5f: $fe $9e
	sub h                                            ; $4a61: $94
	ld a, d                                          ; $4a62: $7a
	push bc                                          ; $4a63: $c5
	db $fc                                           ; $4a64: $fc
	ld a, d                                          ; $4a65: $7a
	call nz, $fe7f                                   ; $4a66: $c4 $7f $fe
	sbc l                                            ; $4a69: $9d
	ld b, b                                          ; $4a6a: $40
	xor b                                            ; $4a6b: $a8

jr_04a_4a6c:
	ld hl, sp+$7f                                    ; $4a6c: $f8 $7f
	ld b, l                                          ; $4a6e: $45
	sbc c                                            ; $4a6f: $99
	ld sp, hl                                        ; $4a70: $f9
	ld hl, sp-$0c                                    ; $4a71: $f8 $f4
	cp $f5                                           ; $4a73: $fe $f5
	ldh a, [c]                                       ; $4a75: $f2
	db $fd                                           ; $4a76: $fd
	add b                                            ; $4a77: $80
	inc e                                            ; $4a78: $1c
	nop                                              ; $4a79: $00
	ld [$5508], sp                                   ; $4a7a: $08 $08 $55
	ld [$37d4], a                                    ; $4a7d: $ea $d4 $37
	ld a, a                                          ; $4a80: $7f
	rst SubAFromDE                                          ; $4a81: $df
	halt                                             ; $4a82: $76
	rst FarCall                                          ; $4a83: $f7
	jr nz, jr_04a_4a47                               ; $4a84: $20 $c1

	inc bc                                           ; $4a86: $03
	rrca                                             ; $4a87: $0f
	rra                                              ; $4a88: $1f
	ccf                                              ; $4a89: $3f
	ccf                                              ; $4a8a: $3f
	ld l, h                                          ; $4a8b: $6c
	dec de                                           ; $4a8c: $1b
	adc [hl]                                         ; $4a8d: $8e
	sbc l                                            ; $4a8e: $9d
	dec bc                                           ; $4a8f: $0b
	adc l                                            ; $4a90: $8d
	call Call_04a_62a4                               ; $4a91: $cd $a4 $62
	sbc b                                            ; $4a94: $98
	sbc a                                            ; $4a95: $9f
	cp a                                             ; $4a96: $bf
	sub [hl]                                         ; $4a97: $96
	cp h                                             ; $4a98: $bc
	call c, $feec                                    ; $4a99: $dc $ec $fe
	and $fc                                          ; $4a9c: $e6 $fc
	inc bc                                           ; $4a9e: $03
	ld hl, sp-$10                                    ; $4a9f: $f8 $f0
	cp $9d                                           ; $4aa1: $fe $9d
	ret nz                                           ; $4aa3: $c0

	inc bc                                           ; $4aa4: $03
	ld a, b                                          ; $4aa5: $78
	db $dd                                           ; $4aa6: $dd
	ld a, a                                          ; $4aa7: $7f
	ld [hl], e                                       ; $4aa8: $73
	ld a, l                                          ; $4aa9: $7d
	rst SubAFromDE                                          ; $4aaa: $df
	sub e                                            ; $4aab: $93
	ld bc, $c5fd                                     ; $4aac: $01 $fd $c5
	dec b                                            ; $4aaf: $05
	rlca                                             ; $4ab0: $07
	ld b, $07                                        ; $4ab1: $06 $07
	rlca                                             ; $4ab3: $07
	cp $fe                                           ; $4ab4: $fe $fe
	ld c, $02                                        ; $4ab6: $0e $02
	db $fd                                           ; $4ab8: $fd
	sbc h                                            ; $4ab9: $9c
	ld [de], a                                       ; $4aba: $12
	inc de                                           ; $4abb: $13
	ld [de], a                                       ; $4abc: $12
	sbc $14                                          ; $4abd: $de $14
	sbc d                                            ; $4abf: $9a
	inc e                                            ; $4ac0: $1c
	inc d                                            ; $4ac1: $14
	dec c                                            ; $4ac2: $0d

jr_04a_4ac3:
	rrca                                             ; $4ac3: $0f
	inc c                                            ; $4ac4: $0c
	sbc $08                                          ; $4ac5: $de $08
	ld a, a                                          ; $4ac7: $7f
	xor a                                            ; $4ac8: $af
	sbc h                                            ; $4ac9: $9c
	add hl, bc                                       ; $4aca: $09
	inc a                                            ; $4acb: $3c
	add hl, bc                                       ; $4acc: $09
	ld [hl], e                                       ; $4acd: $73
	jr c, jr_04a_4a6c                                ; $4ace: $38 $9c

	or $ff                                           ; $4ad0: $f6 $ff
	rlca                                             ; $4ad2: $07
	db $fc                                           ; $4ad3: $fc
	add b                                            ; $4ad4: $80
	ld [bc], a                                       ; $4ad5: $02
	rst FarCall                                          ; $4ad6: $f7
	rst $38                                          ; $4ad7: $ff
	ccf                                              ; $4ad8: $3f
	ld c, $0f                                        ; $4ad9: $0e $0f
	ld a, $2d                                        ; $4adb: $3e $2d
	ld bc, rIF                                     ; $4add: $01 $0f $ff
	rst $38                                          ; $4ae0: $ff
	rrca                                             ; $4ae1: $0f
	ld e, $6c                                        ; $4ae2: $1e $6c
	jr jr_04a_4ac3                                   ; $4ae4: $18 $dd

	cp h                                             ; $4ae6: $bc
	dec a                                            ; $4ae7: $3d
	ld a, a                                          ; $4ae8: $7f
	bit 2, l                                         ; $4ae9: $cb $55
	ld [hl], e                                       ; $4aeb: $73
	ld a, a                                          ; $4aec: $7f
	ldh [c], a                                       ; $4aed: $e2
	jp $83c3                                         ; $4aee: $c3 $c3 $83


	rlca                                             ; $4af1: $07
	rrca                                             ; $4af2: $0f
	rra                                              ; $4af3: $1f
	sub l                                            ; $4af4: $95
	scf                                              ; $4af5: $37
	ld b, d                                          ; $4af6: $42
	dec hl                                           ; $4af7: $2b
	add $e2                                          ; $4af8: $c6 $e2
	add [hl]                                         ; $4afa: $86
	xor h                                            ; $4afb: $ac
	reti                                             ; $4afc: $d9


	cp d                                             ; $4afd: $ba
	add b                                            ; $4afe: $80
	call c, $81c0                                    ; $4aff: $dc $c0 $81
	add b                                            ; $4b02: $80
	ld bc, $0180                                     ; $4b03: $01 $80 $01
	add d                                            ; $4b06: $82
	inc b                                            ; $4b07: $04
	dec bc                                           ; $4b08: $0b
	daa                                              ; $4b09: $27
	ld b, e                                          ; $4b0a: $43
	push bc                                          ; $4b0b: $c5
	ld a, a                                          ; $4b0c: $7f
	ld a, [hl]                                       ; $4b0d: $7e
	ld a, h                                          ; $4b0e: $7c
	ld a, b                                          ; $4b0f: $78
	db $f4                                           ; $4b10: $f4
	ret c                                            ; $4b11: $d8

	cp h                                             ; $4b12: $bc
	ld a, [hl-]                                      ; $4b13: $3a
	xor e                                            ; $4b14: $ab
	ld d, a                                          ; $4b15: $57
	db $eb                                           ; $4b16: $eb
	db $dd                                           ; $4b17: $dd
	xor $f3                                          ; $4b18: $ee $f3
	ld hl, sp-$01                                    ; $4b1a: $f8 $ff
	ld d, h                                          ; $4b1c: $54
	xor b                                            ; $4b1d: $a8
	inc d                                            ; $4b1e: $14
	ld [bc], a                                       ; $4b1f: $02
	ld [hl], a                                       ; $4b20: $77
	and a                                            ; $4b21: $a7
	sbc l                                            ; $4b22: $9d
	db $eb                                           ; $4b23: $eb
	rst FarCall                                          ; $4b24: $f7
	db $dd                                           ; $4b25: $dd
	rst $38                                          ; $4b26: $ff
	sbc [hl]                                         ; $4b27: $9e
	ld hl, $737b                                     ; $4b28: $21 $7b $73
	ei                                               ; $4b2b: $fb
	db $db                                           ; $4b2c: $db
	rst $38                                          ; $4b2d: $ff
	sbc l                                            ; $4b2e: $9d
	rst AddAOntoHL                                          ; $4b2f: $ef
	sub l                                            ; $4b30: $95
	ei                                               ; $4b31: $fb
	add c                                            ; $4b32: $81
	db $10                                           ; $4b33: $10
	ld l, d                                          ; $4b34: $6a
	cp $fd                                           ; $4b35: $fe $fd
	ld a, [$e8f5]                                    ; $4b37: $fa $f5 $e8
	ldh a, [$a8]                                     ; $4b3a: $f0 $a8
	nop                                              ; $4b3c: $00
	ld bc, $0502                                     ; $4b3d: $01 $02 $05
	ld a, [bc]                                       ; $4b40: $0a
	rla                                              ; $4b41: $17
	rrca                                             ; $4b42: $0f
	ld d, a                                          ; $4b43: $57
	rst $38                                          ; $4b44: $ff
	and e                                            ; $4b45: $a3
	ld b, c                                          ; $4b46: $41
	add c                                            ; $4b47: $81
	ld b, c                                          ; $4b48: $41
	dec b                                            ; $4b49: $05
	rlca                                             ; $4b4a: $07
	rlca                                             ; $4b4b: $07
	dec c                                            ; $4b4c: $0d
	ld e, [hl]                                       ; $4b4d: $5e
	cp [hl]                                          ; $4b4e: $be
	ld a, [hl]                                       ; $4b4f: $7e
	cp [hl]                                          ; $4b50: $be
	db $dd                                           ; $4b51: $dd
	cp $93                                           ; $4b52: $fe $93
	ld b, c                                          ; $4b54: $41
	and d                                            ; $4b55: $a2
	ld b, c                                          ; $4b56: $41
	jp nz, Jump_04a_4241                             ; $4b57: $c2 $41 $42

	ld h, c                                          ; $4b5a: $61
	ld h, d                                          ; $4b5b: $62
	or b                                             ; $4b5c: $b0
	ld d, b                                          ; $4b5d: $50
	or b                                             ; $4b5e: $b0
	ld [hl], b                                       ; $4b5f: $70
	db $dd                                           ; $4b60: $dd
	ldh a, [$7a]                                     ; $4b61: $f0 $7a
	db $fd                                           ; $4b63: $fd
	sbc d                                            ; $4b64: $9a
	ld [$ab1b], sp                                   ; $4b65: $08 $1b $ab
	ld e, [hl]                                       ; $4b68: $5e
	xor a                                            ; $4b69: $af
	reti                                             ; $4b6a: $d9


	rlca                                             ; $4b6b: $07
	ld a, [hl]                                       ; $4b6c: $7e
	call nz, $8a99                                   ; $4b6d: $c4 $99 $8a
	sub h                                            ; $4b70: $94
	xor d                                            ; $4b71: $aa
	sub h                                            ; $4b72: $94
	adc b                                            ; $4b73: $88
	sub h                                            ; $4b74: $94
	ld sp, hl                                        ; $4b75: $f9
	ld a, [hl]                                       ; $4b76: $7e
	call nz, $209e                                   ; $4b77: $c4 $9e $20
	ld [hl], l                                       ; $4b7a: $75
	rlca                                             ; $4b7b: $07
	ld l, d                                          ; $4b7c: $6a
	or d                                             ; $4b7d: $b2
	ld a, b                                          ; $4b7e: $78
	cp $80                                           ; $4b7f: $fe $80
	sbc c                                            ; $4b81: $99
	ld [hl-], a                                      ; $4b82: $32
	db $e3                                           ; $4b83: $e3
	add l                                            ; $4b84: $85
	ld a, [bc]                                       ; $4b85: $0a
	ld [hl+], a                                      ; $4b86: $22
	sub [hl]                                         ; $4b87: $96
	jr c, jr_04a_4bfa                                ; $4b88: $38 $70

	ldh [$c1], a                                     ; $4b8a: $e0 $c1
	inc bc                                           ; $4b8c: $03
	rlca                                             ; $4b8d: $07
	dec e                                            ; $4b8e: $1d
	ld h, c                                          ; $4b8f: $61
	ld c, b                                          ; $4b90: $48
	ld e, l                                          ; $4b91: $5d
	rst SubAFromHL                                          ; $4b92: $d7
	sub e                                            ; $4b93: $93
	dec bc                                           ; $4b94: $0b
	dec bc                                           ; $4b95: $0b
	ld h, a                                          ; $4b96: $67
	and e                                            ; $4b97: $a3
	db $fd                                           ; $4b98: $fd
	ei                                               ; $4b99: $fb
	ei                                               ; $4b9a: $fb
	rst $38                                          ; $4b9b: $ff
	rst FarCall                                          ; $4b9c: $f7
	rst FarCall                                          ; $4b9d: $f7

jr_04a_4b9e:
	cp a                                             ; $4b9e: $bf
	ld a, a                                          ; $4b9f: $7f
	add h                                            ; $4ba0: $84
	ld [hl+], a                                      ; $4ba1: $22
	ld [hl], $6f                                     ; $4ba2: $36 $6f
	ld [hl], d                                       ; $4ba4: $72
	ld sp, $1f0d                                     ; $4ba5: $31 $0d $1f
	dec d                                            ; $4ba8: $15
	ret nz                                           ; $4ba9: $c0

	pop bc                                           ; $4baa: $c1
	ldh a, [$fc]                                     ; $4bab: $f0 $fc
	cp $f2                                           ; $4bad: $fe $f2
	pop hl                                           ; $4baf: $e1
	db $e3                                           ; $4bb0: $e3
	ld a, e                                          ; $4bb1: $7b
	rrca                                             ; $4bb2: $0f
	adc [hl]                                         ; $4bb3: $8e
	ld e, l                                          ; $4bb4: $5d
	ld a, [hl]                                       ; $4bb5: $7e
	inc a                                            ; $4bb6: $3c
	adc l                                            ; $4bb7: $8d
	adc l                                            ; $4bb8: $8d
	add b                                            ; $4bb9: $80
	ldh a, [$f1]                                     ; $4bba: $f0 $f1
	ld a, d                                          ; $4bbc: $7a
	jr c, jr_04a_4b9e                                ; $4bbd: $38 $df

	cp $93                                           ; $4bbf: $fe $93
	ldh a, [c]                                       ; $4bc1: $f2
	ld a, $96                                        ; $4bc2: $3e $96
	ld a, b                                          ; $4bc4: $78
	jp hl                                            ; $4bc5: $e9


	add d                                            ; $4bc6: $82
	pop hl                                           ; $4bc7: $e1
	xor a                                            ; $4bc8: $af
	inc c                                            ; $4bc9: $0c
	db $fc                                           ; $4bca: $fc
	db $ec                                           ; $4bcb: $ec
	add b                                            ; $4bcc: $80
	ld a, d                                          ; $4bcd: $7a
	ld c, $7f                                        ; $4bce: $0e $7f
	and h                                            ; $4bd0: $a4
	add h                                            ; $4bd1: $84
	ld b, $05                                        ; $4bd2: $06 $05
	ld a, [bc]                                       ; $4bd4: $0a
	call nc, $1008                                   ; $4bd5: $d4 $08 $10
	cp $0f                                           ; $4bd8: $fe $0f
	rrca                                             ; $4bda: $0f
	ld c, $04                                        ; $4bdb: $0e $04
	jr c, @-$0e                                      ; $4bdd: $38 $f0

	ldh [rP1], a                                     ; $4bdf: $e0 $00
	ret nz                                           ; $4be1: $c0

	ld a, $da                                        ; $4be2: $3e $da
	ccf                                              ; $4be4: $3f
	sub h                                            ; $4be5: $94
	rla                                              ; $4be6: $17
	ld [hl], a                                       ; $4be7: $77
	ld a, $00                                        ; $4be8: $3e $00
	ret nz                                           ; $4bea: $c0

	ld hl, $dd10                                     ; $4beb: $21 $10 $dd
	rrca                                             ; $4bee: $0f
	add b                                            ; $4bef: $80
	rst SubAFromHL                                          ; $4bf0: $d7
	add $02                                          ; $4bf1: $c6 $02
	sbc e                                            ; $4bf3: $9b
	ret                                              ; $4bf4: $c9


	add c                                            ; $4bf5: $81
	ld [hl], $b7                                     ; $4bf6: $36 $b7
	db $10                                           ; $4bf8: $10
	ld [hl], b                                       ; $4bf9: $70

jr_04a_4bfa:
	add hl, hl                                       ; $4bfa: $29
	ld l, a                                          ; $4bfb: $6f
	rst $38                                          ; $4bfc: $ff
	reti                                             ; $4bfd: $d9


	add hl, sp                                       ; $4bfe: $39
	ld a, c                                          ; $4bff: $79
	ld a, b                                          ; $4c00: $78
	sub l                                            ; $4c01: $95
	call Call_04a_58a9                               ; $4c02: $cd $a9 $58
	dec de                                           ; $4c05: $1b
	jr @-$7d                                         ; $4c06: $18 $81

	rlca                                             ; $4c08: $07
	ld c, $1e                                        ; $4c09: $0e $1e
	ld e, $3e                                        ; $4c0b: $1e $3e
	db $fc                                           ; $4c0d: $fc
	cp $80                                           ; $4c0e: $fe $80
	ld a, [hl]                                       ; $4c10: $7e
	db $10                                           ; $4c11: $10
	ld bc, $af40                                     ; $4c12: $01 $40 $af
	ld c, e                                          ; $4c15: $4b
	ld c, l                                          ; $4c16: $4d
	inc c                                            ; $4c17: $0c
	ld bc, $0203                                     ; $4c18: $01 $03 $02
	ld b, $44                                        ; $4c1b: $06 $44
	inc c                                            ; $4c1d: $0c
	ld [$0c09], sp                                   ; $4c1e: $08 $09 $0c
	add d                                            ; $4c21: $82
	ld bc, $4582                                     ; $4c22: $01 $82 $45
	adc d                                            ; $4c25: $8a
	dec d                                            ; $4c26: $15
	ld a, [bc]                                       ; $4c27: $0a
	dec d                                            ; $4c28: $15
	ld a, l                                          ; $4c29: $7d
	cp $7d                                           ; $4c2a: $fe $7d
	cp d                                             ; $4c2c: $ba
	ld [hl], l                                       ; $4c2d: $75
	ld [$f580], a                                    ; $4c2e: $ea $80 $f5
	ld [$7fff], a                                    ; $4c31: $ea $ff $7f
	cp a                                             ; $4c34: $bf
	ld a, a                                          ; $4c35: $7f
	cp [hl]                                          ; $4c36: $be
	ld d, l                                          ; $4c37: $55
	xor [hl]                                         ; $4c38: $ae
	ld d, l                                          ; $4c39: $55
	nop                                              ; $4c3a: $00
	add b                                            ; $4c3b: $80
	ld b, b                                          ; $4c3c: $40
	add b                                            ; $4c3d: $80
	ld b, c                                          ; $4c3e: $41
	xor d                                            ; $4c3f: $aa
	ld d, c                                          ; $4c40: $51
	xor d                                            ; $4c41: $aa
	db $fc                                           ; $4c42: $fc
	cp $ff                                           ; $4c43: $fe $ff
	db $fc                                           ; $4c45: $fc
	add b                                            ; $4c46: $80
	jr z, jr_04a_4c83                                ; $4c47: $28 $3a

	ld a, l                                          ; $4c49: $7d
	inc bc                                           ; $4c4a: $03
	ld bc, $0300                                     ; $4c4b: $01 $00 $03

Call_04a_4c4e:
	ld a, a                                          ; $4c4e: $7f
	adc e                                            ; $4c4f: $8b
	rst JumpTable                                          ; $4c50: $c7
	sbc c                                            ; $4c51: $99
	inc a                                            ; $4c52: $3c
	ld a, [hl+]                                      ; $4c53: $2a
	add l                                            ; $4c54: $85
	adc d                                            ; $4c55: $8a
	dec d                                            ; $4c56: $15
	ld a, [hl+]                                      ; $4c57: $2a
	ld e, l                                          ; $4c58: $5d
	cp [hl]                                          ; $4c59: $be
	ld a, a                                          ; $4c5a: $7f
	push de                                          ; $4c5b: $d5
	ld a, d                                          ; $4c5c: $7a
	ld [hl], l                                       ; $4c5d: $75
	ld [$a2d5], a                                    ; $4c5e: $ea $d5 $a2
	ld b, c                                          ; $4c61: $41
	add b                                            ; $4c62: $80
	ld [$d279], sp                                   ; $4c63: $08 $79 $d2
	sbc [hl]                                         ; $4c66: $9e
	add b                                            ; $4c67: $80
	ld a, c                                          ; $4c68: $79
	call z, $f796                                    ; $4c69: $cc $96 $f7
	xor a                                            ; $4c6c: $af
	ld e, a                                          ; $4c6d: $5f
	cp a                                             ; $4c6e: $bf
	ld a, a                                          ; $4c6f: $7f
	xor a                                            ; $4c70: $af
	ld e, a                                          ; $4c71: $5f
	xor a                                            ; $4c72: $af
	dec b                                            ; $4c73: $05
	cp $9a                                           ; $4c74: $fe $9a
	inc bc                                           ; $4c76: $03
	inc b                                            ; $4c77: $04
	inc b                                            ; $4c78: $04
	inc c                                            ; $4c79: $0c
	cp $de                                           ; $4c7a: $fe $de
	rst $38                                          ; $4c7c: $ff
	rst SubAFromDE                                          ; $4c7d: $df
	cp $7c                                           ; $4c7e: $fe $7c
	dec [hl]                                         ; $4c80: $35
	sub a                                            ; $4c81: $97
	ld h, c                                          ; $4c82: $61

jr_04a_4c83:
	ld l, d                                          ; $4c83: $6a
	ld h, l                                          ; $4c84: $65
	ld l, d                                          ; $4c85: $6a
	ld h, l                                          ; $4c86: $65
	ld a, d                                          ; $4c87: $7a
	ld a, l                                          ; $4c88: $7d
	ld [hl], a                                       ; $4c89: $77
	jp c, $8bf0                                      ; $4c8a: $da $f0 $8b

	ld hl, sp+$5f                                    ; $4c8d: $f8 $5f
	rst FarCall                                          ; $4c8f: $f7
	ld l, a                                          ; $4c90: $6f
	sub $6e                                          ; $4c91: $d6 $6e
	sub $a6                                          ; $4c93: $d6 $a6
	add $07                                          ; $4c95: $c6 $07
	rrca                                             ; $4c97: $0f
	rla                                              ; $4c98: $17
	cpl                                              ; $4c99: $2f
	rla                                              ; $4c9a: $17
	cpl                                              ; $4c9b: $2f
	ld e, a                                          ; $4c9c: $5f
	ccf                                              ; $4c9d: $3f
	adc b                                            ; $4c9e: $88
	add b                                            ; $4c9f: $80
	add c                                            ; $4ca0: $81
	ld l, h                                          ; $4ca1: $6c
	ld b, a                                          ; $4ca2: $47
	ld h, [hl]                                       ; $4ca3: $66
	ret nc                                           ; $4ca4: $d0

	ldh a, [c]                                       ; $4ca5: $f2
	add b                                            ; $4ca6: $80
	ld l, h                                          ; $4ca7: $6c
	sub $ec                                          ; $4ca8: $d6 $ec
	jp c, $eaf4                                      ; $4caa: $da $f4 $ea

	ld d, h                                          ; $4cad: $54
	xor b                                            ; $4cae: $a8
	add e                                            ; $4caf: $83
	ld bc, $0503                                     ; $4cb0: $01 $03 $05
	dec bc                                           ; $4cb3: $0b
	dec d                                            ; $4cb4: $15
	xor e                                            ; $4cb5: $ab
	ld d, a                                          ; $4cb6: $57
	inc de                                           ; $4cb7: $13
	add e                                            ; $4cb8: $83
	inc bc                                           ; $4cb9: $03
	ld a, [hl+]                                      ; $4cba: $2a
	ld e, d                                          ; $4cbb: $5a
	ld a, b                                          ; $4cbc: $78
	add hl, bc                                       ; $4cbd: $09
	xor c                                            ; $4cbe: $a9
	rst AddAOntoHL                                          ; $4cbf: $ef
	ld a, a                                          ; $4cc0: $7f
	rst $38                                          ; $4cc1: $ff
	rst SubAFromHL                                          ; $4cc2: $d7
	and a                                            ; $4cc3: $a7
	rst SubAFromBC                                          ; $4cc4: $e7
	ld h, [hl]                                       ; $4cc5: $66
	add c                                            ; $4cc6: $81
	ld b, [hl]                                       ; $4cc7: $46
	ldh a, [$fa]                                     ; $4cc8: $f0 $fa
	di                                               ; $4cca: $f3
	db $fc                                           ; $4ccb: $fc
	ld l, d                                          ; $4ccc: $6a
	add l                                            ; $4ccd: $85
	jp nz, $e145                                     ; $4cce: $c2 $45 $e1

	pop af                                           ; $4cd1: $f1
	db $fc                                           ; $4cd2: $fc
	ld hl, sp-$04                                    ; $4cd3: $f8 $fc
	ld a, [hl]                                       ; $4cd5: $7e
	inc a                                            ; $4cd6: $3c
	ld a, $00                                        ; $4cd7: $3e $00
	db $d3                                           ; $4cd9: $d3
	ld l, b                                          ; $4cda: $68
	ldh a, [$fe]                                     ; $4cdb: $f0 $fe
	cp [hl]                                          ; $4cdd: $be
	cp a                                             ; $4cde: $bf
	adc a                                            ; $4cdf: $8f
	and $e0                                          ; $4ce0: $e6 $e0
	pop af                                           ; $4ce2: $f1
	ld a, b                                          ; $4ce3: $78
	ld a, h                                          ; $4ce4: $7c
	sbc $7f                                          ; $4ce5: $de $7f
	add b                                            ; $4ce7: $80
	rlc e                                            ; $4ce8: $cb $03
	add c                                            ; $4cea: $81
	ld h, c                                          ; $4ceb: $61
	or c                                             ; $4cec: $b1
	jr c, @-$6e                                      ; $4ced: $38 $90

	push bc                                          ; $4cef: $c5
	rlca                                             ; $4cf0: $07
	add c                                            ; $4cf1: $81
	add b                                            ; $4cf2: $80
	ret nz                                           ; $4cf3: $c0

	ld h, b                                          ; $4cf4: $60
	ldh a, [$f8]                                     ; $4cf5: $f0 $f8
	ld hl, sp-$06                                    ; $4cf7: $f8 $fa
	add sp, $72                                      ; $4cf9: $e8 $72
	ld [hl-], a                                      ; $4cfb: $32
	ld b, d                                          ; $4cfc: $42
	ld bc, $2000                                     ; $4cfd: $01 $00 $20
	db $fc                                           ; $4d00: $fc
	ldh a, [$c0]                                     ; $4d01: $f0 $c0
	nop                                              ; $4d03: $00
	pop hl                                           ; $4d04: $e1
	jp $92c3                                         ; $4d05: $c3 $c3 $92


	rst JumpTable                                          ; $4d08: $c7
	inc e                                            ; $4d09: $1c
	add hl, sp                                       ; $4d0a: $39
	ld [hl], d                                       ; $4d0b: $72
	ld hl, $a797                                     ; $4d0c: $21 $97 $a7
	ld c, h                                          ; $4d0f: $4c
	adc b                                            ; $4d10: $88
	ld [$2110], sp                                   ; $4d11: $08 $10 $21
	ld b, a                                          ; $4d14: $47
	ld a, c                                          ; $4d15: $79
	cpl                                              ; $4d16: $2f
	sub d                                            ; $4d17: $92
	ld a, a                                          ; $4d18: $7f
	ld d, b                                          ; $4d19: $50
	add c                                            ; $4d1a: $81
	db $eb                                           ; $4d1b: $eb
	ldh [$c2], a                                     ; $4d1c: $e0 $c2
	add b                                            ; $4d1e: $80
	add b                                            ; $4d1f: $80
	add d                                            ; $4d20: $82
	ld hl, $c763                                     ; $4d21: $21 $63 $c7
	rst SubAFromDE                                          ; $4d24: $df
	sbc $ff                                          ; $4d25: $de $ff
	sub l                                            ; $4d27: $95
	push af                                          ; $4d28: $f5
	sbc h                                            ; $4d29: $9c
	inc [hl]                                         ; $4d2a: $34
	ld h, $23                                        ; $4d2b: $26 $23
	dec h                                            ; $4d2d: $25
	jr nc, jr_04a_4d51                               ; $4d2e: $30 $21

	xor c                                            ; $4d30: $a9
	cp $7b                                           ; $4d31: $fe $7b
	cpl                                              ; $4d33: $2f
	add b                                            ; $4d34: $80
	ei                                               ; $4d35: $fb
	rst AddAOntoHL                                          ; $4d36: $ef
	rst $38                                          ; $4d37: $ff
	ld [hl], a                                       ; $4d38: $77
	dec b                                            ; $4d39: $05
	ld [$8005], sp                                   ; $4d3a: $08 $05 $80
	ld b, b                                          ; $4d3d: $40
	ret nc                                           ; $4d3e: $d0

	db $f4                                           ; $4d3f: $f4
	sbc $0c                                          ; $4d40: $de $0c
	ld b, $02                                        ; $4d42: $06 $02
	ld bc, $e080                                     ; $4d44: $01 $80 $e0
	ld hl, sp-$04                                    ; $4d47: $f8 $fc
	ld b, d                                          ; $4d49: $42
	and b                                            ; $4d4a: $a0
	ret c                                            ; $4d4b: $d8

	ld l, b                                          ; $4d4c: $68
	or l                                             ; $4d4d: $b5
	ld a, $00                                        ; $4d4e: $3e $00
	ld [bc], a                                       ; $4d50: $02

jr_04a_4d51:
	cp l                                             ; $4d51: $bd
	ld e, a                                          ; $4d52: $5f
	daa                                              ; $4d53: $27
	sbc l                                            ; $4d54: $9d
	sub a                                            ; $4d55: $97
	ld c, d                                          ; $4d56: $4a
	sbc $01                                          ; $4d57: $de $01
	ld a, [hl]                                       ; $4d59: $7e
	ld h, a                                          ; $4d5a: $67
	sub [hl]                                         ; $4d5b: $96
	ld a, [hl-]                                      ; $4d5c: $3a
	inc [hl]                                         ; $4d5d: $34
	ld [$8ad5], a                                    ; $4d5e: $ea $d5 $8a
	dec b                                            ; $4d61: $05
	nop                                              ; $4d62: $00
	ldh a, [$c0]                                     ; $4d63: $f0 $c0
	ld [hl], b                                       ; $4d65: $70
	ld c, l                                          ; $4d66: $4d
	ld a, e                                          ; $4d67: $7b
	ret                                              ; $4d68: $c9


	rst SubAFromDE                                          ; $4d69: $df
	ld a, a                                          ; $4d6a: $7f
	ld a, a                                          ; $4d6b: $7f
	db $fd                                           ; $4d6c: $fd
	sbc e                                            ; $4d6d: $9b
	rst $38                                          ; $4d6e: $ff
	ld a, [hl]                                       ; $4d6f: $7e
	ld a, [hl]                                       ; $4d70: $7e
	ld a, a                                          ; $4d71: $7f
	ld [hl], a                                       ; $4d72: $77
	or $7b                                           ; $4d73: $f6 $7b
	push af                                          ; $4d75: $f5
	sub h                                            ; $4d76: $94
	ld a, [hl]                                       ; $4d77: $7e
	sub l                                            ; $4d78: $95
	ld [bc], a                                       ; $4d79: $02
	sub b                                            ; $4d7a: $90
	or b                                             ; $4d7b: $b0
	jr nc, jr_04a_4d7e                               ; $4d7c: $30 $00

jr_04a_4d7e:
	nop                                              ; $4d7e: $00
	ld bc, $bd2a                                     ; $4d7f: $01 $2a $bd
	sbc $bf                                          ; $4d82: $de $bf
	sbc h                                            ; $4d84: $9c
	and b                                            ; $4d85: $a0
	ret nz                                           ; $4d86: $c0

	and b                                            ; $4d87: $a0
	db $fc                                           ; $4d88: $fc
	ld a, [hl]                                       ; $4d89: $7e
	or $9e                                           ; $4d8a: $f6 $9e
	ld e, a                                          ; $4d8c: $5f
	call c, $80ff                                    ; $4d8d: $dc $ff $80
	inc bc                                           ; $4d90: $03
	dec bc                                           ; $4d91: $0b
	ld e, $02                                        ; $4d92: $1e $02
	cpl                                              ; $4d94: $2f
	dec e                                            ; $4d95: $1d
	db $dd                                           ; $4d96: $dd
	ld a, a                                          ; $4d97: $7f
	ld hl, sp-$10                                    ; $4d98: $f8 $f0
	db $e3                                           ; $4d9a: $e3
	rst SubAFromBC                                          ; $4d9b: $e7
	add $ce                                          ; $4d9c: $c6 $ce
	adc [hl]                                         ; $4d9e: $8e
	sbc [hl]                                         ; $4d9f: $9e
	ld a, e                                          ; $4da0: $7b
	rst FarCall                                          ; $4da1: $f7
	ei                                               ; $4da2: $fb
	push af                                          ; $4da3: $f5
	di                                               ; $4da4: $f3
	push af                                          ; $4da5: $f5
	jp nc, $f4f1                                     ; $4da6: $d2 $f1 $f4

	ld hl, sp-$0c                                    ; $4da9: $f8 $f4
	ld a, [$fafc]                                    ; $4dab: $fa $fc $fa
	db $fd                                           ; $4dae: $fd
	sub [hl]                                         ; $4daf: $96
	cp $a4                                           ; $4db0: $fe $a4
	call nz, Call_04a_46a4                           ; $4db2: $c4 $a4 $46
	add [hl]                                         ; $4db5: $86
	ld b, a                                          ; $4db6: $47
	add [hl]                                         ; $4db7: $86
	ld b, a                                          ; $4db8: $47
	ld a, e                                          ; $4db9: $7b
	ret nc                                           ; $4dba: $d0

	ld a, d                                          ; $4dbb: $7a
	ld d, a                                          ; $4dbc: $57
	ld a, a                                          ; $4dbd: $7f
	cp $d9                                           ; $4dbe: $fe $d9
	add b                                            ; $4dc0: $80
	jp hl                                            ; $4dc1: $e9


	add b                                            ; $4dc2: $80
	ld d, b                                          ; $4dc3: $50
	inc h                                            ; $4dc4: $24
	ld d, b                                          ; $4dc5: $50
	xor c                                            ; $4dc6: $a9
	ld c, b                                          ; $4dc7: $48
	jr nz, jr_04a_4e19                               ; $4dc8: $20 $4f

	ld b, $af                                        ; $4dca: $06 $af
	reti                                             ; $4dcc: $d9


	xor e                                            ; $4dcd: $ab
	ld d, a                                          ; $4dce: $57
	or e                                             ; $4dcf: $b3
	rst SubAFromHL                                          ; $4dd0: $d7
	or d                                             ; $4dd1: $b2
	di                                               ; $4dd2: $f3
	dec e                                            ; $4dd3: $1d
	ld hl, sp+$51                                    ; $4dd4: $f8 $51
	xor b                                            ; $4dd6: $a8
	ld d, c                                          ; $4dd7: $51
	add c                                            ; $4dd8: $81
	inc bc                                           ; $4dd9: $03
	add b                                            ; $4dda: $80
	jp nz, $ae86                                     ; $4ddb: $c2 $86 $ae

	ld d, [hl]                                       ; $4dde: $56
	xor [hl]                                         ; $4ddf: $ae
	ld a, [hl]                                       ; $4de0: $7e
	db $fc                                           ; $4de1: $fc
	adc [hl]                                         ; $4de2: $8e
	ld a, l                                          ; $4de3: $7d
	ld b, b                                          ; $4de4: $40
	inc bc                                           ; $4de5: $03
	ld d, e                                          ; $4de6: $53
	and l                                            ; $4de7: $a5
	ld d, e                                          ; $4de8: $53
	ld bc, $0422                                     ; $4de9: $01 $22 $04
	ld a, $7c                                        ; $4dec: $3e $7c
	inc l                                            ; $4dee: $2c
	ld e, b                                          ; $4def: $58
	xor c                                            ; $4df0: $a9
	di                                               ; $4df1: $f3
	rst JumpTable                                          ; $4df2: $c7
	rst GetHLinHL                                          ; $4df3: $cf
	ld a, e                                          ; $4df4: $7b
	ld e, d                                          ; $4df5: $5a
	sbc d                                            ; $4df6: $9a
	cp $ee                                           ; $4df7: $fe $ee
	rlca                                             ; $4df9: $07
	rrca                                             ; $4dfa: $0f
	cpl                                              ; $4dfb: $2f
	jp c, $94ff                                      ; $4dfc: $da $ff $94

	rst GetHLinHL                                          ; $4dff: $cf
	ldh [c], a                                       ; $4e00: $e2
	ldh a, [c]                                       ; $4e01: $f2
	ldh a, [c]                                       ; $4e02: $f2
	ld hl, sp-$08                                    ; $4e03: $f8 $f8
	xor $e7                                          ; $4e05: $ee $e7
	db $e4                                           ; $4e07: $e4
	db $fc                                           ; $4e08: $fc
	ld hl, sp+$7b                                    ; $4e09: $f8 $7b
	rst SubAFromBC                                          ; $4e0b: $e7
	ld a, e                                          ; $4e0c: $7b
	db $fd                                           ; $4e0d: $fd
	add a                                            ; $4e0e: $87
	add hl, de                                       ; $4e0f: $19
	pop de                                           ; $4e10: $d1
	add e                                            ; $4e11: $83
	ld h, e                                          ; $4e12: $63
	rst SubAFromBC                                          ; $4e13: $e7
	rra                                              ; $4e14: $1f
	db $fd                                           ; $4e15: $fd
	call $2307                                       ; $4e16: $cd $07 $23

jr_04a_4e19:
	ld l, a                                          ; $4e19: $6f
	rra                                              ; $4e1a: $1f
	rra                                              ; $4e1b: $1f
	ld a, a                                          ; $4e1c: $7f
	rst $38                                          ; $4e1d: $ff
	rra                                              ; $4e1e: $1f
	rst $38                                          ; $4e1f: $ff
	ei                                               ; $4e20: $fb
	ei                                               ; $4e21: $fb
	db $fd                                           ; $4e22: $fd
	rst $38                                          ; $4e23: $ff
	rst GetHLinHL                                          ; $4e24: $cf
	sub e                                            ; $4e25: $93
	or $de                                           ; $4e26: $f6 $de
	rst $38                                          ; $4e28: $ff
	add b                                            ; $4e29: $80
	ei                                               ; $4e2a: $fb
	ld sp, hl                                        ; $4e2b: $f9
	ld hl, sp-$14                                    ; $4e2c: $f8 $ec
	adc h                                            ; $4e2e: $8c
	xor l                                            ; $4e2f: $ad
	jp nz, $4ad1                                     ; $4e30: $c2 $d1 $4a

	ld [hl], l                                       ; $4e33: $75
	inc h                                            ; $4e34: $24
	ld [hl], b                                       ; $4e35: $70
	ld a, h                                          ; $4e36: $7c
	jp nz, $eefd                                     ; $4e37: $c2 $fd $ee

	push hl                                          ; $4e3a: $e5
	ldh [c], a                                       ; $4e3b: $e2
	di                                               ; $4e3c: $f3
	ld sp, hl                                        ; $4e3d: $f9
	ld hl, sp-$0f                                    ; $4e3e: $f8 $f1
	xor l                                            ; $4e40: $ad
	ld h, a                                          ; $4e41: $67
	cp d                                             ; $4e42: $ba
	and c                                            ; $4e43: $a1
	or b                                             ; $4e44: $b0
	and h                                            ; $4e45: $a4
	ldh [c], a                                       ; $4e46: $e2
	ld h, $72                                        ; $4e47: $26 $72
	add b                                            ; $4e49: $80
	or b                                             ; $4e4a: $b0
	ld h, l                                          ; $4e4b: $65
	halt                                             ; $4e4c: $76
	ld l, a                                          ; $4e4d: $6f
	ld a, e                                          ; $4e4e: $7b
	ld l, l                                          ; $4e4f: $6d
	ld b, d                                          ; $4e50: $42
	cp d                                             ; $4e51: $ba
	and l                                            ; $4e52: $a5
	ld a, [de]                                       ; $4e53: $1a
	dec d                                            ; $4e54: $15
	xor d                                            ; $4e55: $aa
	pop de                                           ; $4e56: $d1
	ret nc                                           ; $4e57: $d0

	rst $38                                          ; $4e58: $ff
	ld b, l                                          ; $4e59: $45
	ld c, d                                          ; $4e5a: $4a
	push bc                                          ; $4e5b: $c5
	jp z, $eed5                                      ; $4e5c: $ca $d5 $ee

	rst AddAOntoHL                                          ; $4e5f: $ef
	add b                                            ; $4e60: $80
	inc e                                            ; $4e61: $1c
	ld e, b                                          ; $4e62: $58
	and d                                            ; $4e63: $a2
	ld b, h                                          ; $4e64: $44
	adc b                                            ; $4e65: $88
	ld a, [bc]                                       ; $4e66: $0a
	nop                                              ; $4e67: $00
	nop                                              ; $4e68: $00
	sub b                                            ; $4e69: $90
	ldh [$bc], a                                     ; $4e6a: $e0 $bc
	ld e, c                                          ; $4e6c: $59
	cp b                                             ; $4e6d: $b8
	ld [hl], b                                       ; $4e6e: $70
	ldh a, [$fc]                                     ; $4e6f: $f0 $fc
	xor e                                            ; $4e71: $ab
	dec d                                            ; $4e72: $15
	adc a                                            ; $4e73: $8f
	rst JumpTable                                          ; $4e74: $c7
	db $e3                                           ; $4e75: $e3
	db $f4                                           ; $4e76: $f4
	add b                                            ; $4e77: $80
	ld [hl], $fc                                     ; $4e78: $36 $fc
	sub b                                            ; $4e7a: $90
	ld b, e                                          ; $4e7b: $43

Jump_04a_4e7c:
	ld h, e                                          ; $4e7c: $63
	ld b, e                                          ; $4e7d: $43
	rst $38                                          ; $4e7e: $ff
	ret                                              ; $4e7f: $c9


	db $ed                                           ; $4e80: $ed
	rst $38                                          ; $4e81: $ff
	ccf                                              ; $4e82: $3f
	ld a, a                                          ; $4e83: $7f
	rst $38                                          ; $4e84: $ff
	sbc a                                            ; $4e85: $9f
	ccf                                              ; $4e86: $3f
	ld e, $03                                        ; $4e87: $1e $03
	rra                                              ; $4e89: $1f
	db $dd                                           ; $4e8a: $dd
	rst $38                                          ; $4e8b: $ff
	sbc h                                            ; $4e8c: $9c
	jr nc, jr_04a_4f07                               ; $4e8d: $30 $78

	db $fd                                           ; $4e8f: $fd
	call c, Call_04a_7bff                            ; $4e90: $dc $ff $7b
	ld e, b                                          ; $4e93: $58
	call c, rIE                                    ; $4e94: $dc $ff $ff
	sbc l                                            ; $4e97: $9d
	ldh [c], a                                       ; $4e98: $e2
	cp $77                                           ; $4e99: $fe $77
	ld h, a                                          ; $4e9b: $67
	db $dd                                           ; $4e9c: $dd
	rst $38                                          ; $4e9d: $ff
	ld [hl], a                                       ; $4e9e: $77
	ld sp, hl                                        ; $4e9f: $f9
	sbc d                                            ; $4ea0: $9a
	cp a                                             ; $4ea1: $bf
	rst SubAFromDE                                          ; $4ea2: $df
	cp l                                             ; $4ea3: $bd
	ld a, a                                          ; $4ea4: $7f
	cp a                                             ; $4ea5: $bf
	ld a, e                                          ; $4ea6: $7b
	rst GetHLinHL                                          ; $4ea7: $cf
	ld a, l                                          ; $4ea8: $7d
	inc de                                           ; $4ea9: $13
	rst SubAFromDE                                          ; $4eaa: $df
	ld a, $df                                        ; $4eab: $3e $df
	ld a, [hl]                                       ; $4ead: $7e
	rst SubAFromDE                                          ; $4eae: $df
	cp $7e                                           ; $4eaf: $fe $7e
	add $9d                                          ; $4eb1: $c6 $9d
	ret c                                            ; $4eb3: $d8

	ldh a, [$dd]                                     ; $4eb4: $f0 $dd
	ret c                                            ; $4eb6: $d8

	ld a, [hl]                                       ; $4eb7: $7e
	add $db                                          ; $4eb8: $c6 $db
	rst $38                                          ; $4eba: $ff
	sub [hl]                                         ; $4ebb: $96
	add [hl]                                         ; $4ebc: $86
	dec b                                            ; $4ebd: $05
	ld b, $07                                        ; $4ebe: $06 $07
	ld b, $17                                        ; $4ec0: $06 $17
	ld h, $16                                        ; $4ec2: $26 $16
	ld a, a                                          ; $4ec4: $7f
	ld [hl], a                                       ; $4ec5: $77
	jp z, $ec7b                                      ; $4ec6: $ca $7b $ec

	ld b, $c0                                        ; $4ec9: $06 $c0
	sub d                                            ; $4ecb: $92
	add c                                            ; $4ecc: $81
	ld b, h                                          ; $4ecd: $44
	ld bc, $a844                                     ; $4ece: $01 $44 $a8
	ld h, h                                          ; $4ed1: $64
	ld l, b                                          ; $4ed2: $68
	inc c                                            ; $4ed3: $0c
	ld [hl], d                                       ; $4ed4: $72
	inc sp                                           ; $4ed5: $33
	ld [hl-], a                                      ; $4ed6: $32
	sub e                                            ; $4ed7: $93
	db $d3                                           ; $4ed8: $d3
	sbc $f3                                          ; $4ed9: $de $f3
	add b                                            ; $4edb: $80
	inc e                                            ; $4edc: $1c
	ld [hl], $71                                     ; $4edd: $36 $71
	cpl                                              ; $4edf: $2f
	ld c, a                                          ; $4ee0: $4f

jr_04a_4ee1:
	cp a                                             ; $4ee1: $bf
	ld a, a                                          ; $4ee2: $7f
	ld a, [$f8fb]                                    ; $4ee3: $fa $fb $f8
	ldh [$c3], a                                     ; $4ee6: $e0 $c3
	sbc a                                            ; $4ee8: $9f
	ld a, a                                          ; $4ee9: $7f
	rst $38                                          ; $4eea: $ff
	db $fc                                           ; $4eeb: $fc
	adc c                                            ; $4eec: $89
	ld a, d                                          ; $4eed: $7a
	ld [hl], l                                       ; $4eee: $75
	adc d                                            ; $4eef: $8a
	ld [$4b81], sp                                   ; $4ef0: $08 $81 $4b
	sub l                                            ; $4ef3: $95
	ld e, $35                                        ; $4ef4: $1e $35
	ld [$fcf4], a                                    ; $4ef6: $ea $f4 $fc
	ld hl, sp-$0f                                    ; $4ef9: $f8 $f1
	sub l                                            ; $4efb: $95
	ld h, e                                          ; $4efc: $63
	ld c, c                                          ; $4efd: $49
	cp b                                             ; $4efe: $b8
	ld a, b                                          ; $4eff: $78
	jr c, jr_04a_4f72                                ; $4f00: $38 $70

	ld [hl], d                                       ; $4f02: $72
	push hl                                          ; $4f03: $e5
	add d                                            ; $4f04: $82
	sbc a                                            ; $4f05: $9f
	ld a, c                                          ; $4f06: $79

jr_04a_4f07:
	or h                                             ; $4f07: $b4
	add b                                            ; $4f08: $80
	rst $38                                          ; $4f09: $ff
	db $fd                                           ; $4f0a: $fd
	ld a, [$24fd]                                    ; $4f0b: $fa $fd $24
	ld [hl-], a                                      ; $4f0e: $32
	ld [hl], b                                       ; $4f0f: $70
	pop af                                           ; $4f10: $f1
	ld sp, $29b0                                     ; $4f11: $31 $b0 $29
	ret nz                                           ; $4f14: $c0

	and $e7                                          ; $4f15: $e6 $e7
	and [hl]                                         ; $4f17: $a6
	ld h, $a7                                        ; $4f18: $26 $a7
	ld h, a                                          ; $4f1a: $67
	rst SubAFromBC                                          ; $4f1b: $e7
	ld l, a                                          ; $4f1c: $6f
	inc a                                            ; $4f1d: $3c
	ret nz                                           ; $4f1e: $c0

	inc e                                            ; $4f1f: $1c
	call nz, $1312                                   ; $4f20: $c4 $12 $13
	nop                                              ; $4f23: $00
	ld d, b                                          ; $4f24: $50
	add hl, de                                       ; $4f25: $19
	add hl, sp                                       ; $4f26: $39
	ld bc, $3980                                     ; $4f27: $01 $80 $39
	db $ed                                           ; $4f2a: $ed
	inc c                                            ; $4f2b: $0c
	xor $8e                                          ; $4f2c: $ee $8e
	adc h                                            ; $4f2e: $8c
	sbc d                                            ; $4f2f: $9a
	add [hl]                                         ; $4f30: $86
	add c                                            ; $4f31: $81
	add c                                            ; $4f32: $81
	and e                                            ; $4f33: $a3
	ld h, d                                          ; $4f34: $62
	set 6, [hl]                                      ; $4f35: $cb $f6
	and $fb                                          ; $4f37: $e6 $fb
	rst $38                                          ; $4f39: $ff
	rst $38                                          ; $4f3a: $ff
	rst SubAFromDE                                          ; $4f3b: $df
	rst SubAFromDE                                          ; $4f3c: $df
	ld [hl], a                                       ; $4f3d: $77
	inc b                                            ; $4f3e: $04
	ld b, c                                          ; $4f3f: $41
	add hl, hl                                       ; $4f40: $29
	sub b                                            ; $4f41: $90
	adc b                                            ; $4f42: $88
	db $e4                                           ; $4f43: $e4
	ld b, c                                          ; $4f44: $41
	ld [hl], b                                       ; $4f45: $70
	ld a, [hl]                                       ; $4f46: $7e
	ccf                                              ; $4f47: $3f
	adc [hl]                                         ; $4f48: $8e
	ld e, $0f                                        ; $4f49: $1e $0f
	add a                                            ; $4f4b: $87
	jp $e0e0                                         ; $4f4c: $c3 $e0 $e0


	jr z, jr_04a_4ee1                                ; $4f4f: $28 $90

	ld d, h                                          ; $4f51: $54
	xor a                                            ; $4f52: $af
	inc h                                            ; $4f53: $24
	jr nc, jr_04a_4f68                               ; $4f54: $30 $12

	inc de                                           ; $4f56: $13
	rra                                              ; $4f57: $1f
	rrca                                             ; $4f58: $0f
	db $e3                                           ; $4f59: $e3
	ld [hl], e                                       ; $4f5a: $73
	dec c                                            ; $4f5b: $0d
	sbc l                                            ; $4f5c: $9d
	ldh [$36], a                                     ; $4f5d: $e0 $36
	ld a, d                                          ; $4f5f: $7a
	ld sp, hl                                        ; $4f60: $f9
	sbc h                                            ; $4f61: $9c
	ld a, [hl]                                       ; $4f62: $7e
	ld a, h                                          ; $4f63: $7c
	pop af                                           ; $4f64: $f1
	jp c, $82ff                                      ; $4f65: $da $ff $82

jr_04a_4f68:
	cp $80                                           ; $4f68: $fe $80
	ld d, b                                          ; $4f6a: $50
	sub b                                            ; $4f6b: $90
	nop                                              ; $4f6c: $00
	inc sp                                           ; $4f6d: $33
	ld h, a                                          ; $4f6e: $67
	jp nz, Jump_04a_7080                             ; $4f6f: $c2 $80 $70

jr_04a_4f72:
	ldh [$e0], a                                     ; $4f72: $e0 $e0
	pop hl                                           ; $4f74: $e1
	pop bc                                           ; $4f75: $c1
	add d                                            ; $4f76: $82
	inc b                                            ; $4f77: $04
	dec c                                            ; $4f78: $0d
	and h                                            ; $4f79: $a4
	add sp, $50                                      ; $4f7a: $e8 $50
	ld b, c                                          ; $4f7c: $41
	add b                                            ; $4f7d: $80
	inc b                                            ; $4f7e: $04
	ld [$4318], sp                                   ; $4f7f: $08 $18 $43
	rlca                                             ; $4f82: $07
	rst GetHLinHL                                          ; $4f83: $cf
	sbc [hl]                                         ; $4f84: $9e
	ld a, e                                          ; $4f85: $7b
	ld a, [hl]                                       ; $4f86: $7e
	adc d                                            ; $4f87: $8a
	rst $38                                          ; $4f88: $ff
	ld e, l                                          ; $4f89: $5d
	or b                                             ; $4f8a: $b0
	dec bc                                           ; $4f8b: $0b
	ld d, e                                          ; $4f8c: $53
	ld a, [hl]                                       ; $4f8d: $7e
	ld d, b                                          ; $4f8e: $50
	ld b, b                                          ; $4f8f: $40
	ret nc                                           ; $4f90: $d0

	cp [hl]                                          ; $4f91: $be
	ld a, b                                          ; $4f92: $78
	ldh [$ef], a                                     ; $4f93: $e0 $ef
	db $fc                                           ; $4f95: $fc
	and b                                            ; $4f96: $a0
	or b                                             ; $4f97: $b0
	ldh [$b8], a                                     ; $4f98: $e0 $b8
	adc h                                            ; $4f9a: $8c
	ld [hl], l                                       ; $4f9b: $75
	ld a, [hl+]                                      ; $4f9c: $2a
	db $fd                                           ; $4f9d: $fd
	sbc h                                            ; $4f9e: $9c
	ld b, a                                          ; $4f9f: $47
	ld h, d                                          ; $4fa0: $62
	ldh [$71], a                                     ; $4fa1: $e0 $71
	ld h, b                                          ; $4fa3: $60
	add a                                            ; $4fa4: $87
	rlca                                             ; $4fa5: $07
	and a                                            ; $4fa6: $a7
	ld c, b                                          ; $4fa7: $48
	xor d                                            ; $4fa8: $aa
	ld d, l                                          ; $4fa9: $55
	ld [bc], a                                       ; $4faa: $02
	dec b                                            ; $4fab: $05
	jp nz, Jump_04a_5fff                             ; $4fac: $c2 $ff $5f

	rra                                              ; $4faf: $1f
	ld de, $6122                                     ; $4fb0: $11 $22 $61
	ld b, b                                          ; $4fb3: $40
	nop                                              ; $4fb4: $00
	rst $38                                          ; $4fb5: $ff
	rst $38                                          ; $4fb6: $ff
	halt                                             ; $4fb7: $76
	add c                                            ; $4fb8: $81
	pop hl                                           ; $4fb9: $e1
	ldh a, [$f9]                                     ; $4fba: $f0 $f9
	db $fd                                           ; $4fbc: $fd
	ld a, c                                          ; $4fbd: $79
	db $10                                           ; $4fbe: $10
	sbc d                                            ; $4fbf: $9a
	ld a, [hl]                                       ; $4fc0: $7e
	ld e, $0f                                        ; $4fc1: $1e $0f
	ld b, $02                                        ; $4fc3: $06 $02
	reti                                             ; $4fc5: $d9


	ret c                                            ; $4fc6: $d8

	reti                                             ; $4fc7: $d9


	rst $38                                          ; $4fc8: $ff
	sub a                                            ; $4fc9: $97
	ld h, $56                                        ; $4fca: $26 $56
	ld [hl], $76                                     ; $4fcc: $36 $76
	ld [hl], $74                                     ; $4fce: $36 $74
	or $74                                           ; $4fd0: $f6 $74
	reti                                             ; $4fd2: $d9


	rst $38                                          ; $4fd3: $ff
	ld b, $c0                                        ; $4fd4: $06 $c0
	sbc l                                            ; $4fd6: $9d
	db $eb                                           ; $4fd7: $eb
	rst FarCall                                          ; $4fd8: $f7
	sbc $ff                                          ; $4fd9: $de $ff
	sbc h                                            ; $4fdb: $9c
	ld [hl], b                                       ; $4fdc: $70
	rst $38                                          ; $4fdd: $ff
	rst $38                                          ; $4fde: $ff
	ld [hl], a                                       ; $4fdf: $77
	ld sp, hl                                        ; $4fe0: $f9
	rst SubAFromDE                                          ; $4fe1: $df
	rst $38                                          ; $4fe2: $ff
	ld a, a                                          ; $4fe3: $7f
	adc l                                            ; $4fe4: $8d
	ld a, h                                          ; $4fe5: $7c
	ld e, c                                          ; $4fe6: $59
	sbc c                                            ; $4fe7: $99
	db $d3                                           ; $4fe8: $d3
	add c                                            ; $4fe9: $81
	rst $38                                          ; $4fea: $ff
	ld d, e                                          ; $4feb: $53
	ld [hl], $3c                                     ; $4fec: $36 $3c
	ld [hl], d                                       ; $4fee: $72
	ld [hl], c                                       ; $4fef: $71
	add b                                            ; $4ff0: $80
	xor a                                            ; $4ff1: $af
	pop bc                                           ; $4ff2: $c1
	rst $38                                          ; $4ff3: $ff
	ld c, e                                          ; $4ff4: $4b
	dec sp                                           ; $4ff5: $3b
	daa                                              ; $4ff6: $27
	jp hl                                            ; $4ff7: $e9


	rst FarCall                                          ; $4ff8: $f7
	ld a, [$bf7d]                                    ; $4ff9: $fa $7d $bf
	add a                                            ; $4ffc: $87
	adc a                                            ; $4ffd: $8f
	db $d3                                           ; $4ffe: $d3
	di                                               ; $4fff: $f3
	ld sp, hl                                        ; $5000: $f9
	db $fd                                           ; $5001: $fd
	rst $38                                          ; $5002: $ff
	ld a, a                                          ; $5003: $7f
	add h                                            ; $5004: $84
	pop hl                                           ; $5005: $e1
	rst AddAOntoHL                                          ; $5006: $ef
	sbc $b8                                          ; $5007: $de $b8
	sub b                                            ; $5009: $90
	and b                                            ; $500a: $a0
	add c                                            ; $500b: $81
	ld a, [$f1fc]                                    ; $500c: $fa $fc $f1
	db $e3                                           ; $500f: $e3
	sub [hl]                                         ; $5010: $96
	add $ec                                          ; $5011: $c6 $ec
	ret c                                            ; $5013: $d8

	ld hl, sp+$61                                    ; $5014: $f8 $61
	adc [hl]                                         ; $5016: $8e
	cpl                                              ; $5017: $2f
	ccf                                              ; $5018: $3f
	ld e, a                                          ; $5019: $5f
	ld a, d                                          ; $501a: $7a
	or h                                             ; $501b: $b4
	sbc l                                            ; $501c: $9d
	adc $df                                          ; $501d: $ce $df
	ld [hl], d                                       ; $501f: $72
	xor [hl]                                         ; $5020: $ae
	sub l                                            ; $5021: $95
	rst $38                                          ; $5022: $ff
	ld hl, $0c88                                     ; $5023: $21 $88 $0c
	sbc $fe                                          ; $5026: $de $fe
	db $fd                                           ; $5028: $fd
	rst $38                                          ; $5029: $ff
	sbc a                                            ; $502a: $9f
	ld e, $69                                        ; $502b: $1e $69
	rst $38                                          ; $502d: $ff
	add b                                            ; $502e: $80
	jr nc, @-$7e                                     ; $502f: $30 $80

	nop                                              ; $5031: $00
	ld [de], a                                       ; $5032: $12
	ld c, c                                          ; $5033: $49
	inc h                                            ; $5034: $24
	ldh a, [c]                                       ; $5035: $f2
	and b                                            ; $5036: $a0
	ld l, a                                          ; $5037: $6f
	ccf                                              ; $5038: $3f
	sbc a                                            ; $5039: $9f
	call $e3e6                                       ; $503a: $cd $e6 $e3
	pop hl                                           ; $503d: $e1
	pop af                                           ; $503e: $f1
	ld a, c                                          ; $503f: $79
	ld a, $38                                        ; $5040: $3e $38
	sub h                                            ; $5042: $94
	rst SubAFromHL                                          ; $5043: $d7
	sbc a                                            ; $5044: $9f
	ld e, [hl]                                       ; $5045: $5e
	sbc l                                            ; $5046: $9d
	or $fc                                           ; $5047: $f6 $fc
	db $fd                                           ; $5049: $fd
	ld a, e                                          ; $504a: $7b
	ccf                                              ; $504b: $3f
	ld a, a                                          ; $504c: $7f
	ccf                                              ; $504d: $3f
	add l                                            ; $504e: $85
	ld a, [hl]                                       ; $504f: $7e
	ld l, e                                          ; $5050: $6b
	adc a                                            ; $5051: $8f
	ld a, a                                          ; $5052: $7f
	rst FarCall                                          ; $5053: $f7
	or $5d                                           ; $5054: $f6 $5d
	xor [hl]                                         ; $5056: $ae
	call c, $7f1f                                    ; $5057: $dc $1f $7f
	cp $fc                                           ; $505a: $fe $fc
	call z, $0484                                    ; $505c: $cc $84 $04
	inc b                                            ; $505f: $04
	adc $bd                                          ; $5060: $ce $bd
	ld a, [$a2d1]                                    ; $5062: $fa $d1 $a2
	ld bc, $0100                                     ; $5065: $01 $00 $01
	ldh a, [$73]                                     ; $5068: $f0 $73
	ld [bc], a                                       ; $506a: $02
	rst $38                                          ; $506b: $ff
	sub d                                            ; $506c: $92
	sub a                                            ; $506d: $97
	dec bc                                           ; $506e: $0b
	inc hl                                           ; $506f: $23
	rra                                              ; $5070: $1f
	cp h                                             ; $5071: $bc
	ld e, a                                          ; $5072: $5f
	sbc l                                            ; $5073: $9d
	ld e, b                                          ; $5074: $58
	add hl, bc                                       ; $5075: $09
	inc de                                           ; $5076: $13
	rla                                              ; $5077: $17
	rlca                                             ; $5078: $07
	rlca                                             ; $5079: $07
	cp $92                                           ; $507a: $fe $92
	db $fd                                           ; $507c: $fd
	ei                                               ; $507d: $fb
	push af                                          ; $507e: $f5
	reti                                             ; $507f: $d9


	push af                                          ; $5080: $f5
	xor e                                            ; $5081: $ab
	ld d, a                                          ; $5082: $57
	xor e                                            ; $5083: $ab
	cp $fc                                           ; $5084: $fe $fc
	ld a, [$00e3]                                    ; $5086: $fa $e3 $00
	sbc $01                                          ; $5089: $de $01
	add l                                            ; $508b: $85
	and b                                            ; $508c: $a0
	ld d, c                                          ; $508d: $51
	dec d                                            ; $508e: $15
	rra                                              ; $508f: $1f
	inc a                                            ; $5090: $3c
	ld [hl], b                                       ; $5091: $70
	ldh [c], a                                       ; $5092: $e2
	add h                                            ; $5093: $84
	nop                                              ; $5094: $00
	jr nz, jr_04a_50d2                               ; $5095: $20 $3b

	rst $38                                          ; $5097: $ff
	rst $38                                          ; $5098: $ff
	rrca                                             ; $5099: $0f
	db $fd                                           ; $509a: $fd
	cp $15                                           ; $509b: $fe $15
	jp nz, $c0fc                                     ; $509d: $c2 $fc $c0

	nop                                              ; $50a0: $00
	inc d                                            ; $50a1: $14
	ld d, c                                          ; $50a2: $51
	ld [bc], a                                       ; $50a3: $02
	nop                                              ; $50a4: $00
	dec a                                            ; $50a5: $3d
	sbc $ff                                          ; $50a6: $de $ff
	sub d                                            ; $50a8: $92
	db $eb                                           ; $50a9: $eb
	ld [bc], a                                       ; $50aa: $02
	ld [bc], a                                       ; $50ab: $02
	ld b, c                                          ; $50ac: $41
	sbc d                                            ; $50ad: $9a
	cp $ff                                           ; $50ae: $fe $ff
	inc bc                                           ; $50b0: $03
	ld b, b                                          ; $50b1: $40
	ld l, h                                          ; $50b2: $6c
	dec bc                                           ; $50b3: $0b
	add b                                            ; $50b4: $80
	ret nz                                           ; $50b5: $c0

	ld [hl], l                                       ; $50b6: $75
	add e                                            ; $50b7: $83
	ld a, [hl]                                       ; $50b8: $7e
	daa                                              ; $50b9: $27
	add a                                            ; $50ba: $87
	add b                                            ; $50bb: $80
	db $d3                                           ; $50bc: $d3
	ld a, [hl+]                                      ; $50bd: $2a
	rst JumpTable                                          ; $50be: $c7
	ld a, [$0201]                                    ; $50bf: $fa $01 $02
	pop bc                                           ; $50c2: $c1
	ld a, [hl]                                       ; $50c3: $7e
	inc l                                            ; $50c4: $2c
	call nc, $fcf8                                   ; $50c5: $d4 $f8 $fc
	cp $fc                                           ; $50c8: $fe $fc
	ld a, $d0                                        ; $50ca: $3e $d0
	ret c                                            ; $50cc: $d8

	ret nc                                           ; $50cd: $d0

	ld sp, hl                                        ; $50ce: $f9
	ret nc                                           ; $50cf: $d0

	reti                                             ; $50d0: $d9


	ret c                                            ; $50d1: $d8

jr_04a_50d2:
	reti                                             ; $50d2: $d9


	reti                                             ; $50d3: $d9


	rst $38                                          ; $50d4: $ff
	ld a, [hl]                                       ; $50d5: $7e
	add $7b                                          ; $50d6: $c6 $7b
	cp $9e                                           ; $50d8: $fe $9e
	db $f4                                           ; $50da: $f4
	ld [bc], a                                       ; $50db: $02
	ret nz                                           ; $50dc: $c0

	ld hl, sp+$60                                    ; $50dd: $f8 $60
	nop                                              ; $50df: $00
	sub h                                            ; $50e0: $94
	ld h, [hl]                                       ; $50e1: $66
	ld h, l                                          ; $50e2: $65
	ld d, [hl]                                       ; $50e3: $56
	ld d, l                                          ; $50e4: $55
	ld d, a                                          ; $50e5: $57
	ld [hl], a                                       ; $50e6: $77
	ld h, [hl]                                       ; $50e7: $66
	ld h, [hl]                                       ; $50e8: $66
	ld b, h                                          ; $50e9: $44
	inc sp                                           ; $50ea: $33
	ld h, l                                          ; $50eb: $65
	sbc $55                                          ; $50ec: $de $55
	sbc h                                            ; $50ee: $9c
	ld d, [hl]                                       ; $50ef: $56
	ld [hl], a                                       ; $50f0: $77
	halt                                             ; $50f1: $76
	ld [hl], e                                       ; $50f2: $73
	or $9c                                           ; $50f3: $f6 $9c
	inc sp                                           ; $50f5: $33
	ld h, [hl]                                       ; $50f6: $66
	ld d, [hl]                                       ; $50f7: $56
	sbc $77                                          ; $50f8: $de $77
	ld a, a                                          ; $50fa: $7f
	or $9a                                           ; $50fb: $f6 $9a
	ld d, l                                          ; $50fd: $55
	dec [hl]                                         ; $50fe: $35
	inc sp                                           ; $50ff: $33
	ld d, e                                          ; $5100: $53
	inc [hl]                                         ; $5101: $34
	ld l, a                                          ; $5102: $6f
	or $7b                                           ; $5103: $f6 $7b
	cp $9e                                           ; $5105: $fe $9e
	ld b, h                                          ; $5107: $44
	ld [hl], e                                       ; $5108: $73
	or $9a                                           ; $5109: $f6 $9a
	ld h, [hl]                                       ; $510b: $66
	ld d, e                                          ; $510c: $53
	inc sp                                           ; $510d: $33
	inc sp                                           ; $510e: $33
	ld [hl], $73                                     ; $510f: $36 $73
	or $98                                           ; $5111: $f6 $98
	ld [hl], a                                       ; $5113: $77
	ld b, e                                          ; $5114: $43
	inc sp                                           ; $5115: $33
	dec [hl]                                         ; $5116: $35
	ld b, a                                          ; $5117: $47
	ld [hl], a                                       ; $5118: $77
	ld h, a                                          ; $5119: $67
	ld [hl], a                                       ; $511a: $77
	or $98                                           ; $511b: $f6 $98
	ld [hl], h                                       ; $511d: $74
	inc sp                                           ; $511e: $33
	ld b, a                                          ; $511f: $47
	ld [hl], a                                       ; $5120: $77
	halt                                             ; $5121: $76
	ld b, a                                          ; $5122: $47
	halt                                             ; $5123: $76
	ld a, e                                          ; $5124: $7b
	or $99                                           ; $5125: $f6 $99
	ld [hl], a                                       ; $5127: $77
	ld d, l                                          ; $5128: $55
	ld h, a                                          ; $5129: $67
	ld [hl], a                                       ; $512a: $77
	halt                                             ; $512b: $76
	ld h, a                                          ; $512c: $67
	ld a, e                                          ; $512d: $7b
	cp d                                             ; $512e: $ba
	call c, $9d77                                    ; $512f: $dc $77 $9d
	ld [hl], h                                       ; $5132: $74
	ld [hl], a                                       ; $5133: $77
	ld a, e                                          ; $5134: $7b
	db $ec                                           ; $5135: $ec
	rst SubAFromDE                                          ; $5136: $df
	ld h, a                                          ; $5137: $67
	rst SubAFromDE                                          ; $5138: $df
	ld [hl], a                                       ; $5139: $77
	rst SubAFromDE                                          ; $513a: $df
	ld h, [hl]                                       ; $513b: $66
	ld [hl], a                                       ; $513c: $77
	adc $7f                                          ; $513d: $ce $7f
	adc d                                            ; $513f: $8a
	rst SubAFromDE                                          ; $5140: $df
	rst $38                                          ; $5141: $ff
	sbc [hl]                                         ; $5142: $9e
	cp $dd                                           ; $5143: $fe $dd
	rst $38                                          ; $5145: $ff
	sbc [hl]                                         ; $5146: $9e
	add sp, -$25                                     ; $5147: $e8 $db
	rst $38                                          ; $5149: $ff
	sbc l                                            ; $514a: $9d
	cp $f0                                           ; $514b: $fe $f0
	sbc $ff                                          ; $514d: $de $ff
	sbc d                                            ; $514f: $9a
	ld [hl], a                                       ; $5150: $77
	cp e                                             ; $5151: $bb
	rst FarCall                                          ; $5152: $f7
	pop hl                                           ; $5153: $e1
	ret nz                                           ; $5154: $c0

	call c, $94ff                                    ; $5155: $dc $ff $94
	ld hl, sp+$00                                    ; $5158: $f8 $00
	ccf                                              ; $515a: $3f
	rst $38                                          ; $515b: $ff
	rst FarCall                                          ; $515c: $f7
	ld a, [rIE]                                    ; $515d: $fa $ff $ff
	rst JumpTable                                          ; $5160: $c7
	rst $38                                          ; $5161: $ff
	ld [bc], a                                       ; $5162: $02
	call c, rIE                                    ; $5163: $dc $ff $ff
	sub [hl]                                         ; $5166: $96
	rst $38                                          ; $5167: $ff
	ld a, [$eafd]                                    ; $5168: $fa $fd $ea
	ld [hl], l                                       ; $516b: $75
	ld [$db7e], a                                    ; $516c: $ea $7e $db
	sub e                                            ; $516f: $93
	db $db                                           ; $5170: $db
	rst $38                                          ; $5171: $ff
	sub l                                            ; $5172: $95
	rlca                                             ; $5173: $07
	ldh [rIF], a                                     ; $5174: $e0 $0f
	dec bc                                           ; $5176: $0b
	adc e                                            ; $5177: $8b
	ld c, a                                          ; $5178: $4f
	and l                                            ; $5179: $a5
	ld b, l                                          ; $517a: $45
	xor a                                            ; $517b: $af
	ld d, a                                          ; $517c: $57
	sbc $f7                                          ; $517d: $de $f7
	sbc d                                            ; $517f: $9a
	di                                               ; $5180: $f3
	ei                                               ; $5181: $fb
	ei                                               ; $5182: $fb
	pop af                                           ; $5183: $f1
	ld sp, hl                                        ; $5184: $f9
	ld sp, hl                                        ; $5185: $f9
	sub a                                            ; $5186: $97
	ld d, h                                          ; $5187: $54
	xor d                                            ; $5188: $aa
	db $10                                           ; $5189: $10
	adc b                                            ; $518a: $88
	inc d                                            ; $518b: $14
	adc b                                            ; $518c: $88
	dec d                                            ; $518d: $15
	xor b                                            ; $518e: $a8
	jp c, $9140                                      ; $518f: $da $40 $91

	ld b, h                                          ; $5192: $44
	ld l, d                                          ; $5193: $6a
	push bc                                          ; $5194: $c5
	ld l, d                                          ; $5195: $6a
	push de                                          ; $5196: $d5
	ld l, d                                          ; $5197: $6a
	push af                                          ; $5198: $f5
	ld l, [hl]                                       ; $5199: $6e
	rst $38                                          ; $519a: $ff
	ld a, [hl+]                                      ; $519b: $2a
	dec d                                            ; $519c: $15
	ccf                                              ; $519d: $3f
	ld e, a                                          ; $519e: $5f
	cp a                                             ; $519f: $bf
	ld a, e                                          ; $51a0: $7b
	cp $d9                                           ; $51a1: $fe $d9
	rst $38                                          ; $51a3: $ff
	sbc [hl]                                         ; $51a4: $9e
	rst AddAOntoHL                                          ; $51a5: $ef
	ld a, e                                          ; $51a6: $7b
	cp $9c                                           ; $51a7: $fe $9c
	db $ed                                           ; $51a9: $ed
	db $fd                                           ; $51aa: $fd
	rst AddAOntoHL                                          ; $51ab: $ef
	ld a, e                                          ; $51ac: $7b
	sbc e                                            ; $51ad: $9b
	call c, $9eff                                    ; $51ae: $dc $ff $9e
	db $fc                                           ; $51b1: $fc
	db $db                                           ; $51b2: $db
	rst $38                                          ; $51b3: $ff
	sbc l                                            ; $51b4: $9d
	rst GetHLinHL                                          ; $51b5: $cf
	nop                                              ; $51b6: $00
	db $db                                           ; $51b7: $db
	rst $38                                          ; $51b8: $ff
	sbc [hl]                                         ; $51b9: $9e
	ldh a, [rPCM34]                                  ; $51ba: $f0 $77
	ld hl, sp-$21                                    ; $51bc: $f8 $df
	rst SubAFromDE                                          ; $51be: $df
	sbc l                                            ; $51bf: $9d
	rst $38                                          ; $51c0: $ff
	di                                               ; $51c1: $f3
	ld l, e                                          ; $51c2: $6b
	ldh a, [hDisp1_WY]                                     ; $51c3: $f0 $95
	rrca                                             ; $51c5: $0f
	nop                                              ; $51c6: $00
	db $f4                                           ; $51c7: $f4
	add sp, -$0b                                     ; $51c8: $e8 $f5
	jp c, $a2b5                                      ; $51ca: $da $b5 $a2

	push af                                          ; $51cd: $f5
	cp d                                             ; $51ce: $ba
	jp c, $8eff                                      ; $51cf: $da $ff $8e

	ld a, a                                          ; $51d2: $7f
	ld a, h                                          ; $51d3: $7c
	ld hl, sp+$70                                    ; $51d4: $f8 $70
	ldh a, [rSVBK]                                   ; $51d6: $f0 $70
	ldh [$f0], a                                     ; $51d8: $e0 $f0
	ret c                                            ; $51da: $d8

	cp $fd                                           ; $51db: $fe $fd
	ld a, [$fef5]                                    ; $51dd: $fa $f5 $fe
	db $fd                                           ; $51e0: $fd
	cp $fd                                           ; $51e1: $fe $fd
	sbc $1f                                          ; $51e3: $de $1f
	rst SubAFromDE                                          ; $51e5: $df
	ld e, $9c                                        ; $51e6: $1e $9c
	inc e                                            ; $51e8: $1c
	jr @+$1a                                         ; $51e9: $18 $18

	ld [hl], a                                       ; $51eb: $77
	sbc h                                            ; $51ec: $9c
	sbc b                                            ; $51ed: $98
	cp [hl]                                          ; $51ee: $be
	ld e, l                                          ; $51ef: $5d
	cp [hl]                                          ; $51f0: $be
	ld e, l                                          ; $51f1: $5d
	pop bc                                           ; $51f2: $c1
	add e                                            ; $51f3: $83
	rlca                                             ; $51f4: $07
	db $dd                                           ; $51f5: $dd
	rrca                                             ; $51f6: $0f
	sbc e                                            ; $51f7: $9b
	ld e, $eb                                        ; $51f8: $1e $eb
	rst SubAFromHL                                          ; $51fa: $d7
	xor a                                            ; $51fb: $af
	ld [hl], a                                       ; $51fc: $77
	adc b                                            ; $51fd: $88
	ld a, a                                          ; $51fe: $7f
	ld e, $98                                        ; $51ff: $1e $98
	db $fc                                           ; $5201: $fc
	ldh a, [$e1]                                     ; $5202: $f0 $e1
	jp nz, $2a95                                     ; $5204: $c2 $95 $2a

	add $d9                                          ; $5207: $c6 $d9
	rst $38                                          ; $5209: $ff
	sub a                                            ; $520a: $97
	scf                                              ; $520b: $37
	ld l, a                                          ; $520c: $6f
	sbc a                                            ; $520d: $9f
	ld a, $7d                                        ; $520e: $3e $7d
	cp e                                             ; $5210: $bb
	rst $38                                          ; $5211: $ff
	rrca                                             ; $5212: $0f
	jp c, Jump_04a_7bff                              ; $5213: $da $ff $7b

	nop                                              ; $5216: $00
	sbc c                                            ; $5217: $99
	db $fd                                           ; $5218: $fd
	ei                                               ; $5219: $fb
	rst SubAFromBC                                          ; $521a: $e7
	rst SubAFromDE                                          ; $521b: $df
	rst $38                                          ; $521c: $ff
	ld [hl], e                                       ; $521d: $73
	jp c, Jump_04a_7bff                              ; $521e: $da $ff $7b

	add sp, $7e                                      ; $5221: $e8 $7e
	ldh [$9b], a                                     ; $5223: $e0 $9b
	rst AddAOntoHL                                          ; $5225: $ef
	call c, $f7f9                                    ; $5226: $dc $f9 $f7
	reti                                             ; $5229: $d9


	rst $38                                          ; $522a: $ff
	sub l                                            ; $522b: $95
	or c                                             ; $522c: $b1
	ld h, a                                          ; $522d: $67
	rst SubAFromBC                                          ; $522e: $e7
	rst SubAFromDE                                          ; $522f: $df
	cp a                                             ; $5230: $bf
	db $fc                                           ; $5231: $fc
	ei                                               ; $5232: $fb
	ldh [$fe], a                                     ; $5233: $e0 $fe
	ei                                               ; $5235: $fb
	ld l, a                                          ; $5236: $6f
	ld d, c                                          ; $5237: $51
	sub d                                            ; $5238: $92
	add h                                            ; $5239: $84
	daa                                              ; $523a: $27
	rra                                              ; $523b: $1f
	ld a, a                                          ; $523c: $7f
	ld a, l                                          ; $523d: $7d
	ei                                               ; $523e: $fb
	di                                               ; $523f: $f3
	rst FarCall                                          ; $5240: $f7
	inc bc                                           ; $5241: $03
	jr @-$1e                                         ; $5242: $18 $e0

	add b                                            ; $5244: $80
	add b                                            ; $5245: $80
	cp $9e                                           ; $5246: $fe $9e
	rra                                              ; $5248: $1f
	ld a, e                                          ; $5249: $7b
	ld l, h                                          ; $524a: $6c
	db $dd                                           ; $524b: $dd
	rst $38                                          ; $524c: $ff
	sbc h                                            ; $524d: $9c
	ldh [rP1], a                                     ; $524e: $e0 $00
	nop                                              ; $5250: $00
	ld [hl], a                                       ; $5251: $77
	pop af                                           ; $5252: $f1
	add b                                            ; $5253: $80
	nop                                              ; $5254: $00
	ret nz                                           ; $5255: $c0

	ldh [c], a                                       ; $5256: $e2
	jp hl                                            ; $5257: $e9


	ld sp, hl                                        ; $5258: $f9
	ld sp, hl                                        ; $5259: $f9
	add sp, -$2d                                     ; $525a: $e8 $d3
	sbc c                                            ; $525c: $99
	ccf                                              ; $525d: $3f
	rra                                              ; $525e: $1f
	ld d, $06                                        ; $525f: $16 $06
	ld b, $17                                        ; $5261: $06 $17
	rrca                                             ; $5263: $0f
	rlca                                             ; $5264: $07
	pop hl                                           ; $5265: $e1
	db $e4                                           ; $5266: $e4
	ld [hl], h                                       ; $5267: $74
	and [hl]                                         ; $5268: $a6
	ldh a, [$fc]                                     ; $5269: $f0 $fc
	rst $38                                          ; $526b: $ff
	ld a, [$f3f6]                                    ; $526c: $fa $f6 $f3
	ei                                               ; $526f: $fb
	ld [hl], c                                       ; $5270: $71
	ld a, h                                          ; $5271: $7c
	cp $7f                                           ; $5272: $fe $7f
	and h                                            ; $5274: $a4
	adc h                                            ; $5275: $8c
	rst JumpTable                                          ; $5276: $c7
	add hl, sp                                       ; $5277: $39
	ld e, [hl]                                       ; $5278: $5e
	dec hl                                           ; $5279: $2b
	add $83                                          ; $527a: $c6 $83
	sub e                                            ; $527c: $93
	rst SubAFromBC                                          ; $527d: $e7
	add hl, sp                                       ; $527e: $39
	rst GetHLinHL                                          ; $527f: $cf
	rst SubAFromBC                                          ; $5280: $e7

jr_04a_5281:
	rst FarCall                                          ; $5281: $f7
	ccf                                              ; $5282: $3f
	rst SubAFromDE                                          ; $5283: $df
	rst SubAFromDE                                          ; $5284: $df
	ld e, a                                          ; $5285: $5f
	ld bc, $02d7                                     ; $5286: $01 $d7 $02
	db $fc                                           ; $5289: $fc
	sbc h                                            ; $528a: $9c
	ld d, l                                          ; $528b: $55
	rst $38                                          ; $528c: $ff
	db $fd                                           ; $528d: $fd
	db $dd                                           ; $528e: $dd
	rst $38                                          ; $528f: $ff
	sbc d                                            ; $5290: $9a
	db $eb                                           ; $5291: $eb
	ld l, b                                          ; $5292: $68
	rst SubAFromHL                                          ; $5293: $d7
	ld a, [bc]                                       ; $5294: $0a
	ld bc, $ee77                                     ; $5295: $01 $77 $ee
	sbc l                                            ; $5298: $9d
	ld a, [hl]                                       ; $5299: $7e
	rst $38                                          ; $529a: $ff
	ld [hl], e                                       ; $529b: $73
	ld hl, $ea93                                     ; $529c: $21 $93 $ea
	cp a                                             ; $529f: $bf
	push de                                          ; $52a0: $d5
	ld b, b                                          ; $52a1: $40
	and l                                            ; $52a2: $a5
	ld e, h                                          ; $52a3: $5c
	inc l                                            ; $52a4: $2c
	ld e, [hl]                                       ; $52a5: $5e
	rrca                                             ; $52a6: $0f
	rst $38                                          ; $52a7: $ff
	cp $38                                           ; $52a8: $fe $38
	sbc $03                                          ; $52aa: $de $03
	rst SubAFromDE                                          ; $52ac: $df
	ld bc, $a094                                     ; $52ad: $01 $94 $a0
	jr jr_04a_5281                                   ; $52b0: $18 $cf

	ld a, a                                          ; $52b2: $7f
	ld a, a                                          ; $52b3: $7f
	rst $38                                          ; $52b4: $ff
	ld a, a                                          ; $52b5: $7f
	rlca                                             ; $52b6: $07
	ret nz                                           ; $52b7: $c0

	rlca                                             ; $52b8: $07
	jr nc, jr_04a_5336                               ; $52b9: $30 $7b

	add b                                            ; $52bb: $80
	sbc l                                            ; $52bc: $9d
	add b                                            ; $52bd: $80
	ld hl, sp+$6f                                    ; $52be: $f8 $6f
	add d                                            ; $52c0: $82
	ld a, d                                          ; $52c1: $7a
	ld d, l                                          ; $52c2: $55
	ld [hl], e                                       ; $52c3: $73
	add d                                            ; $52c4: $82
	rst $38                                          ; $52c5: $ff
	halt                                             ; $52c6: $76
	cpl                                              ; $52c7: $2f
	ld l, [hl]                                       ; $52c8: $6e
	ld b, l                                          ; $52c9: $45
	ei                                               ; $52ca: $fb
	sbc e                                            ; $52cb: $9b
	dec d                                            ; $52cc: $15
	ld [bc], a                                       ; $52cd: $02
	ldh [$f9], a                                     ; $52ce: $e0 $f9
	db $dd                                           ; $52d0: $dd
	db $fc                                           ; $52d1: $fc
	sbc l                                            ; $52d2: $9d
	rrca                                             ; $52d3: $0f
	ld bc, $9afb                                     ; $52d4: $01 $fb $9a
	ld l, b                                          ; $52d7: $68
	ld e, e                                          ; $52d8: $5b
	sub b                                            ; $52d9: $90
	nop                                              ; $52da: $00
	ld [bc], a                                       ; $52db: $02
	ld a, e                                          ; $52dc: $7b
	sbc [hl]                                         ; $52dd: $9e
	ld a, a                                          ; $52de: $7f
	halt                                             ; $52df: $76
	sbc h                                            ; $52e0: $9c
	ld a, a                                          ; $52e1: $7f
	rrca                                             ; $52e2: $0f
	rla                                              ; $52e3: $17
	ld a, e                                          ; $52e4: $7b
	cp $96                                           ; $52e5: $fe $96
	db $10                                           ; $52e7: $10
	ld a, [de]                                       ; $52e8: $1a
	dec d                                            ; $52e9: $15
	ld [bc], a                                       ; $52ea: $02
	dec d                                            ; $52eb: $15
	ld a, [bc]                                       ; $52ec: $0a
	dec b                                            ; $52ed: $05
	ld a, [bc]                                       ; $52ee: $0a
	cp e                                             ; $52ef: $bb
	jp c, $97ff                                      ; $52f0: $da $ff $97

	dec e                                            ; $52f3: $1d
	ccf                                              ; $52f4: $3f
	ld e, a                                          ; $52f5: $5f
	xor [hl]                                         ; $52f6: $ae
	ld e, [hl]                                       ; $52f7: $5e
	xor l                                            ; $52f8: $ad
	ld c, l                                          ; $52f9: $4d
	adc l                                            ; $52fa: $8d
	ld a, d                                          ; $52fb: $7a
	ld hl, sp-$63                                    ; $52fc: $f8 $9d
	db $fc                                           ; $52fe: $fc
	db $fd                                           ; $52ff: $fd
	sbc $fe                                          ; $5300: $de $fe
	sbc l                                            ; $5302: $9d
	inc l                                            ; $5303: $2c
	add e                                            ; $5304: $83
	ld a, e                                          ; $5305: $7b
	ld e, $76                                        ; $5306: $1e $76
	rst SubAFromHL                                          ; $5308: $d7
	sbc [hl]                                         ; $5309: $9e
	ret nz                                           ; $530a: $c0

	ei                                               ; $530b: $fb
	sub l                                            ; $530c: $95
	rrca                                             ; $530d: $0f
	ld [$f0f8], a                                    ; $530e: $ea $f8 $f0
	ldh a, [$f5]                                     ; $5311: $f0 $f5
	or $e6                                           ; $5313: $f6 $e6
	nop                                              ; $5315: $00
	rra                                              ; $5316: $1f
	sbc $0f                                          ; $5317: $de $0f
	sub c                                            ; $5319: $91
	ld a, [bc]                                       ; $531a: $0a
	ld [$f018], sp                                   ; $531b: $08 $18 $f0
	or a                                             ; $531e: $b7
	rla                                              ; $531f: $17
	dec hl                                           ; $5320: $2b
	sub a                                            ; $5321: $97
	ld l, a                                          ; $5322: $6f
	cp a                                             ; $5323: $bf
	ld c, l                                          ; $5324: $4d
	nop                                              ; $5325: $00
	ld hl, sp-$20                                    ; $5326: $f8 $e0
	ld [hl], a                                       ; $5328: $77
	sbc $8b                                          ; $5329: $de $8b
	ld [hl-], a                                      ; $532b: $32
	rst $38                                          ; $532c: $ff
	cpl                                              ; $532d: $2f
	push af                                          ; $532e: $f5
	add sp, $00                                      ; $532f: $e8 $00
	dec b                                            ; $5331: $05
	add d                                            ; $5332: $82
	dec b                                            ; $5333: $05
	ccf                                              ; $5334: $3f
	add e                                            ; $5335: $83

jr_04a_5336:
	nop                                              ; $5336: $00
	ld bc, $f8ff                                     ; $5337: $01 $ff $f8
	jr c, jr_04a_53b4                                ; $533a: $38 $78

	call c, $3ca6                                    ; $533c: $dc $a6 $3c
	ld a, d                                          ; $533f: $7a
	push hl                                          ; $5340: $e5
	ld a, c                                          ; $5341: $79
	or a                                             ; $5342: $b7
	ld a, l                                          ; $5343: $7d
	and h                                            ; $5344: $a4
	db $fc                                           ; $5345: $fc
	rst SubAFromDE                                          ; $5346: $df
	rst FarCall                                          ; $5347: $f7
	sbc c                                            ; $5348: $99
	rst JumpTable                                          ; $5349: $c7
	ccf                                              ; $534a: $3f
	cp $c6                                           ; $534b: $fe $c6
	sbc $88                                          ; $534d: $de $88
	halt                                             ; $534f: $76
	push de                                          ; $5350: $d5
	db $dd                                           ; $5351: $dd
	ld bc, $997f                                     ; $5352: $01 $7f $99
	ld a, a                                          ; $5355: $7f
	sbc b                                            ; $5356: $98
	sbc e                                            ; $5357: $9b
	cp $7f                                           ; $5358: $fe $7f
	ld hl, sp+$70                                    ; $535a: $f8 $70
	db $fc                                           ; $535c: $fc
	ld a, e                                          ; $535d: $7b
	cpl                                              ; $535e: $2f
	add e                                            ; $535f: $83
	add hl, hl                                       ; $5360: $29
	ld a, e                                          ; $5361: $7b
	ld a, a                                          ; $5362: $7f
	ld a, a                                          ; $5363: $7f
	ld a, c                                          ; $5364: $79
	ei                                               ; $5365: $fb
	ld c, e                                          ; $5366: $4b
	ld c, [hl]                                       ; $5367: $4e
	rla                                              ; $5368: $17
	rlca                                             ; $5369: $07
	inc bc                                           ; $536a: $03
	inc bc                                           ; $536b: $03
	rlca                                             ; $536c: $07
	inc b                                            ; $536d: $04
	inc [hl]                                         ; $536e: $34
	ld sp, $fdfb                                     ; $536f: $31 $fb $fd
	ld a, d                                          ; $5372: $7a
	inc [hl]                                         ; $5373: $34
	ld hl, sp-$04                                    ; $5374: $f8 $fc
	db $f4                                           ; $5376: $f4
	ldh a, [$fd]                                     ; $5377: $f0 $fd
	ld a, h                                          ; $5379: $7c
	ld a, h                                          ; $537a: $7c
	ld a, b                                          ; $537b: $78
	sbc $f8                                          ; $537c: $de $f8
	sub c                                            ; $537e: $91
	db $fc                                           ; $537f: $fc
	rla                                              ; $5380: $17
	cp e                                             ; $5381: $bb
	ld a, e                                          ; $5382: $7b
	ld [$fadb], a                                    ; $5383: $ea $db $fa
	ei                                               ; $5386: $fb
	ld a, [$c7ef]                                    ; $5387: $fa $ef $c7
	rst JumpTable                                          ; $538a: $c7
	rla                                              ; $538b: $17
	daa                                              ; $538c: $27
	sbc $07                                          ; $538d: $de $07
	ld sp, hl                                        ; $538f: $f9
	sub a                                            ; $5390: $97
	rst SubAFromHL                                          ; $5391: $d7
	db $eb                                           ; $5392: $eb
	rst SubAFromHL                                          ; $5393: $d7
	xor d                                            ; $5394: $aa
	rst SubAFromHL                                          ; $5395: $d7
	add d                                            ; $5396: $82
	ld bc, $fca2                                     ; $5397: $01 $a2 $fc
	sub e                                            ; $539a: $93
	ld [hl], b                                       ; $539b: $70
	cp b                                             ; $539c: $b8
	ld [$aa55], sp                                   ; $539d: $08 $55 $aa
	ld d, l                                          ; $53a0: $55
	ld a, [bc]                                       ; $53a1: $0a
	dec b                                            ; $53a2: $05
	ld a, [$9afc]                                    ; $53a3: $fa $fc $9a
	inc e                                            ; $53a6: $1c
	ld [hl], a                                       ; $53a7: $77
	ld e, b                                          ; $53a8: $58
	sbc $0f                                          ; $53a9: $de $0f
	ld l, e                                          ; $53ab: $6b
	ld bc, $787f                                     ; $53ac: $01 $7f $78
	sbc [hl]                                         ; $53af: $9e
	ret nz                                           ; $53b0: $c0

	db $db                                           ; $53b1: $db
	add b                                            ; $53b2: $80
	ld a, a                                          ; $53b3: $7f

jr_04a_53b4:
	rst FarCall                                          ; $53b4: $f7
	db $db                                           ; $53b5: $db
	ld b, b                                          ; $53b6: $40
	ld a, [hl]                                       ; $53b7: $7e
	rst SubAFromHL                                          ; $53b8: $d7
	db $db                                           ; $53b9: $db
	ld b, b                                          ; $53ba: $40
	ld a, a                                          ; $53bb: $7f
	ldh a, [rOCPD]                                   ; $53bc: $f0 $6b
	ldh [rWX], a                                     ; $53be: $e0 $4b
	ldh a, [$9b]                                     ; $53c0: $f0 $9b
	cp $01                                           ; $53c2: $fe $01
	ld b, b                                          ; $53c4: $40
	ld b, c                                          ; $53c5: $41
	ld [hl], a                                       ; $53c6: $77
	cp $9d                                           ; $53c7: $fe $9d
	nop                                              ; $53c9: $00
	db $fc                                           ; $53ca: $fc
	push af                                          ; $53cb: $f5
	sbc l                                            ; $53cc: $9d

jr_04a_53cd:
	inc b                                            ; $53cd: $04
	nop                                              ; $53ce: $00
	halt                                             ; $53cf: $76
	call nz, $a57f                                   ; $53d0: $c4 $7f $a5
	sub l                                            ; $53d3: $95
	dec de                                           ; $53d4: $1b
	rrca                                             ; $53d5: $0f
	dec d                                            ; $53d6: $15
	ld a, [bc]                                       ; $53d7: $0a
	dec d                                            ; $53d8: $15
	ld a, [bc]                                       ; $53d9: $0a
	nop                                              ; $53da: $00
	jr nz, jr_04a_53cd                               ; $53db: $20 $f0

	ld [$ffdc], sp                                   ; $53dd: $08 $dc $ff
	sbc c                                            ; $53e0: $99
	jp c, $ff0d                                      ; $53e1: $da $0d $ff

	ld c, l                                          ; $53e4: $4d
	adc l                                            ; $53e5: $8d
	ld c, l                                          ; $53e6: $4d
	sbc $0e                                          ; $53e7: $de $0e
	sbc l                                            ; $53e9: $9d
	ld [bc], a                                       ; $53ea: $02
	adc a                                            ; $53eb: $8f
	sbc $fe                                          ; $53ec: $de $fe
	sbc d                                            ; $53ee: $9a
	db $fc                                           ; $53ef: $fc
	ld e, l                                          ; $53f0: $5d
	cp a                                             ; $53f1: $bf
	ld e, a                                          ; $53f2: $5f
	ccf                                              ; $53f3: $3f
	sbc $ff                                          ; $53f4: $de $ff
	sbc d                                            ; $53f6: $9a
	or [hl]                                          ; $53f7: $b6
	cp $3f                                           ; $53f8: $fe $3f
	rst $38                                          ; $53fa: $ff
	ld a, [$93fe]                                    ; $53fb: $fa $fe $93
	ld a, b                                          ; $53fe: $78
	rst $38                                          ; $53ff: $ff
	ld b, a                                          ; $5400: $47
	ld e, $fd                                        ; $5401: $1e $fd
	ld hl, sp-$05                                    ; $5403: $f8 $fb
	rst $38                                          ; $5405: $ff
	ld a, a                                          ; $5406: $7f
	ld b, $7b                                        ; $5407: $06 $7b
	rst $38                                          ; $5409: $ff
	ld l, a                                          ; $540a: $6f
	ld [hl], c                                       ; $540b: $71
	ld a, a                                          ; $540c: $7f
	cp c                                             ; $540d: $b9
	ld a, [hl]                                       ; $540e: $7e
	ld a, c                                          ; $540f: $79
	sub l                                            ; $5410: $95
	cp $21                                           ; $5411: $fe $21
	ldh a, [rIE]                                     ; $5413: $f0 $ff
	ld a, b                                          ; $5415: $78
	ld a, [hl]                                       ; $5416: $7e
	rrca                                             ; $5417: $0f
	nop                                              ; $5418: $00
	nop                                              ; $5419: $00
	sbc $7b                                          ; $541a: $de $7b
	nop                                              ; $541c: $00
	add b                                            ; $541d: $80
	add b                                            ; $541e: $80
	ldh a, [hDisp1_BGP]                                     ; $541f: $f0 $92
	ld bc, $3793                                     ; $5421: $01 $93 $37
	db $eb                                           ; $5424: $eb
	ld [hl], a                                       ; $5425: $77
	rst $38                                          ; $5426: $ff
	rst $38                                          ; $5427: $ff
	ld l, h                                          ; $5428: $6c
	ld a, [hl]                                       ; $5429: $7e
	ld l, l                                          ; $542a: $6d
	ld c, c                                          ; $542b: $49
	ld sp, $7a3b                                     ; $542c: $31 $3b $7a
	cp $00                                           ; $542f: $fe $00
	ld b, b                                          ; $5431: $40
	ldh [$f0], a                                     ; $5432: $e0 $f0
	cp h                                             ; $5434: $bc
	ld [hl], c                                       ; $5435: $71
	ld sp, hl                                        ; $5436: $f9
	ld [hl], e                                       ; $5437: $73
	nop                                              ; $5438: $00
	add b                                            ; $5439: $80
	ret nz                                           ; $543a: $c0

	ret c                                            ; $543b: $d8

	sbc b                                            ; $543c: $98
	sbc d                                            ; $543d: $9a
	add hl, sp                                       ; $543e: $39
	ld [hl], e                                       ; $543f: $73
	rst FarCall                                          ; $5440: $f7
	ld [hl], a                                       ; $5441: $77
	ld [hl], a                                       ; $5442: $77
	ld a, c                                          ; $5443: $79
	and $8f                                          ; $5444: $e6 $8f
	ld [$badd], a                                    ; $5446: $ea $dd $ba
	adc b                                            ; $5449: $88
	adc c                                            ; $544a: $89
	add c                                            ; $544b: $81
	inc bc                                           ; $544c: $03
	rrca                                             ; $544d: $0f
	rra                                              ; $544e: $1f
	ccf                                              ; $544f: $3f
	ld a, a                                          ; $5450: $7f
	ld a, b                                          ; $5451: $78
	ldh a, [$08]                                     ; $5452: $f0 $08
	ld [$7ac0], sp                                   ; $5454: $08 $c0 $7a
	inc b                                            ; $5457: $04
	ld a, a                                          ; $5458: $7f
	db $fd                                           ; $5459: $fd
	rst SubAFromDE                                          ; $545a: $df
	ldh a, [$fd]                                     ; $545b: $f0 $fd
	add d                                            ; $545d: $82
	ld l, $2f                                        ; $545e: $2e $2f
	cpl                                              ; $5460: $2f
	ccf                                              ; $5461: $3f
	ccf                                              ; $5462: $3f
	ld a, [hl]                                       ; $5463: $7e
	ld a, [hl]                                       ; $5464: $7e
	rst $38                                          ; $5465: $ff
	ld de, $1010                                     ; $5466: $11 $10 $10
	nop                                              ; $5469: $00
	nop                                              ; $546a: $00
	ld bc, $0001                                     ; $546b: $01 $01 $00
	cp $cd                                           ; $546e: $fe $cd
	and $e3                                          ; $5470: $e6 $e3
	push hl                                          ; $5472: $e5
	xor e                                            ; $5473: $ab
	ret z                                            ; $5474: $c8

	adc a                                            ; $5475: $8f
	db $fc                                           ; $5476: $fc
	cp $c7                                           ; $5477: $fe $c7
	rst JumpTable                                          ; $5479: $c7
	jp $c1de                                         ; $547a: $c3 $de $c1


	sub a                                            ; $547d: $97
	ld a, e                                          ; $547e: $7b
	ld a, d                                          ; $547f: $7a
	ld a, e                                          ; $5480: $7b
	or d                                             ; $5481: $b2
	or a                                             ; $5482: $b7
	ld b, d                                          ; $5483: $42
	add a                                            ; $5484: $87
	jp nz, $07dc                                     ; $5485: $c2 $dc $07

	sbc h                                            ; $5488: $9c
	add a                                            ; $5489: $87
	rst JumpTable                                          ; $548a: $c7
	add a                                            ; $548b: $87
	ld sp, hl                                        ; $548c: $f9
	sbc [hl]                                         ; $548d: $9e
	ld d, l                                          ; $548e: $55
	ld a, c                                          ; $548f: $79
	db $eb                                           ; $5490: $eb
	ld [hl], a                                       ; $5491: $77
	cp $7d                                           ; $5492: $fe $7d
	inc de                                           ; $5494: $13
	add a                                            ; $5495: $87
	and $53                                          ; $5496: $e6 $53
	and a                                            ; $5498: $a7
	or e                                             ; $5499: $b3
	add e                                            ; $549a: $83
	sbc a                                            ; $549b: $9f
	ld [$4d78], sp                                   ; $549c: $08 $78 $4d
	add [hl]                                         ; $549f: $86
	ld [bc], a                                       ; $54a0: $02
	nop                                              ; $54a1: $00
	db $10                                           ; $54a2: $10
	adc d                                            ; $54a3: $8a
	or b                                             ; $54a4: $b0
	ld d, d                                          ; $54a5: $52
	xor a                                            ; $54a6: $af
	ld c, a                                          ; $54a7: $4f
	and a                                            ; $54a8: $a7
	ld b, a                                          ; $54a9: $47
	and [hl]                                         ; $54aa: $a6
	ld b, b                                          ; $54ab: $40
	rrca                                             ; $54ac: $0f
	dec c                                            ; $54ad: $0d
	ei                                               ; $54ae: $fb
	sbc l                                            ; $54af: $9d
	add b                                            ; $54b0: $80
	cp a                                             ; $54b1: $bf
	call c, $9e80                                    ; $54b2: $dc $80 $9e
	add [hl]                                         ; $54b5: $86
	jp c, $9d40                                      ; $54b6: $da $40 $9d

	ld b, e                                          ; $54b9: $43
	ld b, b                                          ; $54ba: $40
	ld [hl], d                                       ; $54bb: $72
	cp b                                             ; $54bc: $b8
	sbc l                                            ; $54bd: $9d
	ld b, d                                          ; $54be: $42
	ld b, a                                          ; $54bf: $47
	ei                                               ; $54c0: $fb
	sbc l                                            ; $54c1: $9d
	ld bc, $6f07                                     ; $54c2: $01 $07 $6f
	ldh a, [$9d]                                     ; $54c5: $f0 $9d
	and b                                            ; $54c7: $a0
	ret nc                                           ; $54c8: $d0

	ei                                               ; $54c9: $fb
	sbc l                                            ; $54ca: $9d
	ret nz                                           ; $54cb: $c0

	ldh [$7b], a                                     ; $54cc: $e0 $7b
	ldh a, [$9a]                                     ; $54ce: $f0 $9a
	ld b, c                                          ; $54d0: $41
	ld a, b                                          ; $54d1: $78
	ld [hl], c                                       ; $54d2: $71
	ld d, b                                          ; $54d3: $50
	dec l                                            ; $54d4: $2d
	cp $9a                                           ; $54d5: $fe $9a
	jr nz, jr_04a_5509                               ; $54d7: $20 $30

	db $10                                           ; $54d9: $10
	jr c, jr_04a_5554                                ; $54da: $38 $78

	jp c, $9d1f                                      ; $54dc: $da $1f $9d

	rla                                              ; $54df: $17
	rra                                              ; $54e0: $1f
	ei                                               ; $54e1: $fb
	add l                                            ; $54e2: $85
	ld [$f050], sp                                   ; $54e3: $08 $50 $f0
	db $fc                                           ; $54e6: $fc
	db $fc                                           ; $54e7: $fc
	cp $fe                                           ; $54e8: $fe $fe
	ret nz                                           ; $54ea: $c0

	ld [$08fc], sp                                   ; $54eb: $08 $fc $08
	ld [bc], a                                       ; $54ee: $02
	inc bc                                           ; $54ef: $03
	ld bc, $2100                                     ; $54f0: $01 $00 $21
	daa                                              ; $54f3: $27
	db $eb                                           ; $54f4: $eb
	ret                                              ; $54f5: $c9


	ld a, [bc]                                       ; $54f6: $0a
	dec hl                                           ; $54f7: $2b
	ld h, [hl]                                       ; $54f8: $66
	inc b                                            ; $54f9: $04
	ld l, d                                          ; $54fa: $6a
	add hl, bc                                       ; $54fb: $09
	rra                                              ; $54fc: $1f
	sbc $1d                                          ; $54fd: $de $1d
	sub e                                            ; $54ff: $93
	rra                                              ; $5500: $1f
	cp $0d                                           ; $5501: $fe $0d
	db $fc                                           ; $5503: $fc
	pop af                                           ; $5504: $f1
	rst FarCall                                          ; $5505: $f7
	ret z                                            ; $5506: $c8

	adc b                                            ; $5507: $88
	sbc d                                            ; $5508: $9a

jr_04a_5509:
	rst SubAFromDE                                          ; $5509: $df
	cp a                                             ; $550a: $bf
	rst $38                                          ; $550b: $ff
	ld a, b                                          ; $550c: $78
	add c                                            ; $550d: $81
	adc [hl]                                         ; $550e: $8e
	rst SubAFromDE                                          ; $550f: $df
	ld a, a                                          ; $5510: $7f
	ccf                                              ; $5511: $3f
	ld a, a                                          ; $5512: $7f
	ld c, a                                          ; $5513: $4f
	rst AddAOntoHL                                          ; $5514: $ef
	db $fd                                           ; $5515: $fd
	reti                                             ; $5516: $d9


	cp l                                             ; $5517: $bd
	ld sp, hl                                        ; $5518: $f9
	ld sp, hl                                        ; $5519: $f9
	pop af                                           ; $551a: $f1
	db $eb                                           ; $551b: $eb
	ldh a, [$f8]                                     ; $551c: $f0 $f8
	inc a                                            ; $551e: $3c
	ld a, b                                          ; $551f: $78
	ld a, c                                          ; $5520: $79
	halt                                             ; $5521: $76
	add b                                            ; $5522: $80
	pop af                                           ; $5523: $f1
	or d                                             ; $5524: $b2
	add a                                            ; $5525: $87
	add a                                            ; $5526: $87
	sbc h                                            ; $5527: $9c
	cp l                                             ; $5528: $bd
	add sp, $58                                      ; $5529: $e8 $58
	jp c, $0301                                      ; $552b: $da $01 $03

	rrca                                             ; $552e: $0f
	rrca                                             ; $552f: $0f
	dec de                                           ; $5530: $1b
	scf                                              ; $5531: $37
	db $ed                                           ; $5532: $ed
	cp a                                             ; $5533: $bf
	sbc l                                            ; $5534: $9d
	ld hl, $3272                                     ; $5535: $21 $72 $32
	ld e, c                                          ; $5538: $59
	ld de, $bf83                                     ; $5539: $11 $83 $bf
	rst AddAOntoHL                                          ; $553c: $ef
	rst SubAFromDE                                          ; $553d: $df
	call z, $88cc                                    ; $553e: $cc $cc $88
	adc b                                            ; $5541: $88
	sub b                                            ; $5542: $90
	inc de                                           ; $5543: $13
	rla                                              ; $5544: $17
	cp a                                             ; $5545: $bf
	ld e, a                                          ; $5546: $5f
	ld a, a                                          ; $5547: $7f
	ld a, a                                          ; $5548: $7f
	ld a, l                                          ; $5549: $7d
	cp $ff                                           ; $554a: $fe $ff
	rst $38                                          ; $554c: $ff
	rst GetHLinHL                                          ; $554d: $cf
	cp a                                             ; $554e: $bf
	ccf                                              ; $554f: $3f
	ld a, a                                          ; $5550: $7f
	ld a, [hl]                                       ; $5551: $7e
	sbc $ff                                          ; $5552: $de $ff

jr_04a_5554:
	sub l                                            ; $5554: $95
	or l                                             ; $5555: $b5
	cp c                                             ; $5556: $b9
	ld [hl], l                                       ; $5557: $75
	and c                                            ; $5558: $a1
	jp $38b7                                         ; $5559: $c3 $b7 $38


	db $fd                                           ; $555c: $fd
	ld a, [hl]                                       ; $555d: $7e
	ld a, [hl]                                       ; $555e: $7e
	ld a, d                                          ; $555f: $7a
	ld e, a                                          ; $5560: $5f
	ld a, h                                          ; $5561: $7c
	jp nz, $ff90                                     ; $5562: $c2 $90 $ff

	rst AddAOntoHL                                          ; $5565: $ef
	and a                                            ; $5566: $a7
	rst AddAOntoHL                                          ; $5567: $ef
	or a                                             ; $5568: $b7
	rst FarCall                                          ; $5569: $f7
	or d                                             ; $556a: $b2
	ld bc, $3057                                     ; $556b: $01 $57 $30
	ld a, b                                          ; $556e: $78
	ld a, b                                          ; $556f: $78
	ld l, b                                          ; $5570: $68
	ld l, b                                          ; $5571: $68
	ld l, l                                          ; $5572: $6d
	sbc $ff                                          ; $5573: $de $ff
	ld a, a                                          ; $5575: $7f
	rst JumpTable                                          ; $5576: $c7
	adc d                                            ; $5577: $8a
	rst GetHLinHL                                          ; $5578: $cf
	xor a                                            ; $5579: $af
	ld a, a                                          ; $557a: $7f
	sbc $80                                          ; $557b: $de $80
	ld bc, $3f17                                     ; $557d: $01 $17 $3f
	scf                                              ; $5580: $37
	halt                                             ; $5581: $76
	db $e4                                           ; $5582: $e4
	db $ec                                           ; $5583: $ec
	ret nz                                           ; $5584: $c0

	db $dd                                           ; $5585: $dd
	db $dd                                           ; $5586: $dd
	ld a, l                                          ; $5587: $7d
	jr c, @+$03                                      ; $5588: $38 $01

	ld b, $04                                        ; $558a: $06 $04
	ld b, $de                                        ; $558c: $06 $de
	add e                                            ; $558e: $83
	sub c                                            ; $558f: $91
	inc bc                                           ; $5590: $03
	ld [bc], a                                       ; $5591: $02
	ld [bc], a                                       ; $5592: $02
	ld b, $07                                        ; $5593: $06 $07
	rlca                                             ; $5595: $07
	xor d                                            ; $5596: $aa
	rst SubAFromBC                                          ; $5597: $e7
	ld b, d                                          ; $5598: $42
	inc bc                                           ; $5599: $03
	ld h, d                                          ; $559a: $62
	inc b                                            ; $559b: $04
	add b                                            ; $559c: $80
	add a                                            ; $559d: $87
	call c, Call_04a_6c07                            ; $559e: $dc $07 $6c
	ld b, h                                          ; $55a1: $44
	db $fd                                           ; $55a2: $fd
	add b                                            ; $55a3: $80
	inc bc                                           ; $55a4: $03
	ld [de], a                                       ; $55a5: $12
	dec hl                                           ; $55a6: $2b
	ld d, a                                          ; $55a7: $57
	cp e                                             ; $55a8: $bb
	ld [hl], a                                       ; $55a9: $77
	rst $38                                          ; $55aa: $ff
	ld d, a                                          ; $55ab: $57
	xor a                                            ; $55ac: $af
	rst $38                                          ; $55ad: $ff
	push bc                                          ; $55ae: $c5
	rst SubAFromHL                                          ; $55af: $d7
	ld d, a                                          ; $55b0: $57
	rst SubAFromBC                                          ; $55b1: $e7
	db $e3                                           ; $55b2: $e3
	db $e3                                           ; $55b3: $e3
	sbc $7e                                          ; $55b4: $de $7e
	ld a, [hl]                                       ; $55b6: $7e
	ld a, h                                          ; $55b7: $7c
	db $fc                                           ; $55b8: $fc
	db $fc                                           ; $55b9: $fc
	ld a, h                                          ; $55ba: $7c
	inc a                                            ; $55bb: $3c
	and b                                            ; $55bc: $a0
	ld b, b                                          ; $55bd: $40
	and b                                            ; $55be: $a0
	ld c, a                                          ; $55bf: $4f
	ldh a, [rSVBK]                                   ; $55c0: $f0 $70
	add sp, -$62                                     ; $55c2: $e8 $9e
	ld [$91fb], a                                    ; $55c4: $ea $fb $91
	jr nc, jr_04a_5639                               ; $55c7: $30 $70

	cpl                                              ; $55c9: $2f
	dec hl                                           ; $55ca: $2b
	inc e                                            ; $55cb: $1c
	rst $38                                          ; $55cc: $ff
	ccf                                              ; $55cd: $3f
	rra                                              ; $55ce: $1f
	rra                                              ; $55cf: $1f
	rlca                                             ; $55d0: $07
	ld d, a                                          ; $55d1: $57
	ld e, a                                          ; $55d2: $5f
	ld a, a                                          ; $55d3: $7f
	rra                                              ; $55d4: $1f
	halt                                             ; $55d5: $76
	db $fc                                           ; $55d6: $fc
	add b                                            ; $55d7: $80
	rst GetHLinHL                                          ; $55d8: $cf
	adc c                                            ; $55d9: $89
	ldh [$e5], a                                     ; $55da: $e0 $e5
	cpl                                              ; $55dc: $2f
	db $dd                                           ; $55dd: $dd
	ldh a, [$e0]                                     ; $55de: $f0 $e0
	add a                                            ; $55e0: $87
	rst JumpTable                                          ; $55e1: $c7

jr_04a_55e2:
	rlca                                             ; $55e2: $07
	jp $20d0                                         ; $55e3: $c3 $d0 $20


	nop                                              ; $55e6: $00
	nop                                              ; $55e7: $00
	ret                                              ; $55e8: $c9


	adc e                                            ; $55e9: $8b
	inc de                                           ; $55ea: $13
	rst JumpTable                                          ; $55eb: $c7
	adc a                                            ; $55ec: $8f
	ei                                               ; $55ed: $fb
	ldh [c], a                                       ; $55ee: $e2
	jr nc, jr_04a_55e2                               ; $55ef: $30 $f1

	di                                               ; $55f1: $f3
	rst SubAFromBC                                          ; $55f2: $e7
	rst $38                                          ; $55f3: $ff
	ld a, a                                          ; $55f4: $7f
	inc bc                                           ; $55f5: $03
	inc bc                                           ; $55f6: $03
	add h                                            ; $55f7: $84
	nop                                              ; $55f8: $00
	ld a, [$bdff]                                    ; $55f9: $fa $ff $bd
	rst SubAFromDE                                          ; $55fc: $df
	ei                                               ; $55fd: $fb
	rrc l                                            ; $55fe: $cb $0d
	ld a, [de]                                       ; $5600: $1a
	db $fc                                           ; $5601: $fc
	db $f4                                           ; $5602: $f4
	adc $bc                                          ; $5603: $ce $bc
	db $fc                                           ; $5605: $fc
	inc a                                            ; $5606: $3c
	nop                                              ; $5607: $00
	ld bc, $5db8                                     ; $5608: $01 $b8 $5d
	cp h                                             ; $560b: $bc
	ret c                                            ; $560c: $d8

jr_04a_560d:
	cp h                                             ; $560d: $bc
	ret c                                            ; $560e: $d8

	cp b                                             ; $560f: $b8
	ret c                                            ; $5610: $d8

	inc c                                            ; $5611: $0c
	ld [$0cde], sp                                   ; $5612: $08 $de $0c
	adc e                                            ; $5615: $8b
	dec c                                            ; $5616: $0d
	inc c                                            ; $5617: $0c
	inc c                                            ; $5618: $0c
	dec b                                            ; $5619: $05
	ld d, b                                          ; $561a: $50
	dec d                                            ; $561b: $15
	ld [bc], a                                       ; $561c: $02
	ld b, h                                          ; $561d: $44
	sub b                                            ; $561e: $90
	inc h                                            ; $561f: $24
	inc d                                            ; $5620: $14
	rlca                                             ; $5621: $07
	add e                                            ; $5622: $83
	rrca                                             ; $5623: $0f
	rra                                              ; $5624: $1f
	rra                                              ; $5625: $1f
	rrca                                             ; $5626: $0f
	rst SubAFromDE                                          ; $5627: $df
	dec sp                                           ; $5628: $3b
	jr @-$20                                         ; $5629: $18 $de

	db $10                                           ; $562b: $10
	sbc [hl]                                         ; $562c: $9e
	jr nz, jr_04a_560d                               ; $562d: $20 $de

	ld a, [hl+]                                      ; $562f: $2a
	adc e                                            ; $5630: $8b
	ld a, [$3a1d]                                    ; $5631: $fa $1d $3a
	dec a                                            ; $5634: $3d
	ld a, d                                          ; $5635: $7a
	ld a, l                                          ; $5636: $7d
	ld a, h                                          ; $5637: $7c
	dec a                                            ; $5638: $3d

jr_04a_5639:
	inc l                                            ; $5639: $2c
	sub b                                            ; $563a: $90
	set 7, d                                         ; $563b: $cb $fa
	db $e3                                           ; $563d: $e3
	ldh [c], a                                       ; $563e: $e2
	ret nc                                           ; $563f: $d0

	adc e                                            ; $5640: $8b
	db $db                                           ; $5641: $db
	ld sp, hl                                        ; $5642: $f9
	rst FarCall                                          ; $5643: $f7
	and $7a                                          ; $5644: $e6 $7a
	ld sp, hl                                        ; $5646: $f9
	add b                                            ; $5647: $80
	cp $a2                                           ; $5648: $fe $a2
	or d                                             ; $564a: $b2
	ld a, [hl]                                       ; $564b: $7e
	ld a, [hl-]                                      ; $564c: $3a
	dec a                                            ; $564d: $3d
	ld [hl], $2f                                     ; $564e: $36 $2f
	ccf                                              ; $5650: $3f
	rst JumpTable                                          ; $5651: $c7
	inc c                                            ; $5652: $0c
	jp hl                                            ; $5653: $e9


	ld h, a                                          ; $5654: $67
	ldh a, [c]                                       ; $5655: $f2
	ld sp, hl                                        ; $5656: $f9
	ld hl, sp-$08                                    ; $5657: $f8 $f8
	cp a                                             ; $5659: $bf
	ld a, [hl]                                       ; $565a: $7e
	rst $38                                          ; $565b: $ff
	sbc e                                            ; $565c: $9b
	xor l                                            ; $565d: $ad
	xor l                                            ; $565e: $ad
	db $e3                                           ; $565f: $e3
	adc a                                            ; $5660: $8f
	halt                                             ; $5661: $76
	db $ed                                           ; $5662: $ed
	reti                                             ; $5663: $d9


	jr nc, jr_04a_56d6                               ; $5664: $30 $70

	db $db                                           ; $5666: $db
	adc l                                            ; $5667: $8d
	ccf                                              ; $5668: $3f
	ld [hl], a                                       ; $5669: $77
	or a                                             ; $566a: $b7
	or a                                             ; $566b: $b7
	rst JumpTable                                          ; $566c: $c7
	rst GetHLinHL                                          ; $566d: $cf
	rst GetHLinHL                                          ; $566e: $cf
	cp [hl]                                          ; $566f: $be
	ld e, a                                          ; $5670: $5f
	ld a, a                                          ; $5671: $7f
	scf                                              ; $5672: $37
	inc hl                                           ; $5673: $23
	ld h, a                                          ; $5674: $67
	rst GetHLinHL                                          ; $5675: $cf
	sbc a                                            ; $5676: $9f
	ccf                                              ; $5677: $3f
	cp $9e                                           ; $5678: $fe $9e
	sbc $ff                                          ; $567a: $de $ff
	sbc e                                            ; $567c: $9b
	or $fa                                           ; $567d: $f6 $fa
	sbc a                                            ; $567f: $9f
	ld a, a                                          ; $5680: $7f
	ld a, e                                          ; $5681: $7b
	add $7f                                          ; $5682: $c6 $7f
	jp nz, $c49e                                     ; $5684: $c2 $9e $c4

	cp $9d                                           ; $5687: $fe $9d
	ld a, [hl]                                       ; $5689: $7e
	xor [hl]                                         ; $568a: $ae
	ld a, c                                          ; $568b: $79
	sub e                                            ; $568c: $93
	ld [hl], h                                       ; $568d: $74
	ret c                                            ; $568e: $d8

	ld a, b                                          ; $568f: $78
	ldh [$dc], a                                     ; $5690: $e0 $dc
	rst $38                                          ; $5692: $ff
	sbc [hl]                                         ; $5693: $9e
	ld d, h                                          ; $5694: $54
	ld a, c                                          ; $5695: $79
	sbc b                                            ; $5696: $98
	sub h                                            ; $5697: $94
	inc bc                                           ; $5698: $03
	inc b                                            ; $5699: $04
	inc bc                                           ; $569a: $03
	rst $38                                          ; $569b: $ff
	cp $0c                                           ; $569c: $fe $0c
	nop                                              ; $569e: $00
	ldh [$e0], a                                     ; $569f: $e0 $e0
	ldh [c], a                                       ; $56a1: $e2
	and $fe                                          ; $56a2: $e6 $fe
	sbc d                                            ; $56a4: $9a
	ld a, [bc]                                       ; $56a5: $0a
	add b                                            ; $56a6: $80
	ld d, b                                          ; $56a7: $50
	xor b                                            ; $56a8: $a8
	ld b, b                                          ; $56a9: $40
	ld l, a                                          ; $56aa: $6f
	jp c, Jump_04a_4694                              ; $56ab: $da $94 $46

	inc a                                            ; $56ae: $3c
	ld h, $20                                        ; $56af: $26 $20
	nop                                              ; $56b1: $00
	jr nz, @+$12                                     ; $56b2: $20 $10

	ld [$2010], sp                                   ; $56b4: $08 $10 $20
	jr jr_04a_5730                                   ; $56b7: $18 $77

	ld [bc], a                                       ; $56b9: $02
	rst SubAFromDE                                          ; $56ba: $df
	jr nc, jr_04a_5738                               ; $56bb: $30 $7b

	db $d3                                           ; $56bd: $d3
	ld [hl], c                                       ; $56be: $71
	ret c                                            ; $56bf: $d8

	ld a, c                                          ; $56c0: $79
	db $10                                           ; $56c1: $10
	ld [hl], d                                       ; $56c2: $72
	jp z, Jump_04a_407c                              ; $56c3: $ca $7c $40

	rst SubAFromDE                                          ; $56c6: $df
	ld a, a                                          ; $56c7: $7f
	sbc [hl]                                         ; $56c8: $9e
	ld d, b                                          ; $56c9: $50
	ld l, a                                          ; $56ca: $6f
	or b                                             ; $56cb: $b0
	db $db                                           ; $56cc: $db
	rst $38                                          ; $56cd: $ff
	sub e                                            ; $56ce: $93
	inc a                                            ; $56cf: $3c
	rst FarCall                                          ; $56d0: $f7
	cp $38                                           ; $56d1: $fe $38
	inc [hl]                                         ; $56d3: $34
	jr c, jr_04a_570e                                ; $56d4: $38 $38

jr_04a_56d6:
	inc a                                            ; $56d6: $3c
	rst AddAOntoHL                                          ; $56d7: $ef
	rst AddAOntoHL                                          ; $56d8: $ef
	rst SubAFromBC                                          ; $56d9: $e7
	rst SubAFromBC                                          ; $56da: $e7
	sbc $ef                                          ; $56db: $de $ef
	adc a                                            ; $56dd: $8f
	rst $38                                          ; $56de: $ff
	call z, $0fa8                                    ; $56df: $cc $a8 $0f
	ld a, [bc]                                       ; $56e2: $0a
	inc e                                            ; $56e3: $1c
	ld a, [hl+]                                      ; $56e4: $2a
	dec e                                            ; $56e5: $1d
	ld a, [hl+]                                      ; $56e6: $2a
	ldh a, [$d0]                                     ; $56e7: $f0 $d0
	ldh a, [$f0]                                     ; $56e9: $f0 $f0
	ldh [$d0], a                                     ; $56eb: $e0 $d0
	ldh [$79], a                                     ; $56ed: $e0 $79
	xor b                                            ; $56ef: $a8
	sbc [hl]                                         ; $56f0: $9e
	ld a, [$da7a]                                    ; $56f1: $fa $7a $da
	ld a, c                                          ; $56f4: $79
	ld de, $9ef8                                     ; $56f5: $11 $f8 $9e
	and b                                            ; $56f8: $a0
	db $f4                                           ; $56f9: $f4
	ld a, a                                          ; $56fa: $7f
	sub h                                            ; $56fb: $94
	sbc l                                            ; $56fc: $9d
	inc b                                            ; $56fd: $04
	ld [bc], a                                       ; $56fe: $02
	ld l, h                                          ; $56ff: $6c
	and e                                            ; $5700: $a3
	ei                                               ; $5701: $fb
	sub a                                            ; $5702: $97

Call_04a_5703:
	add hl, bc                                       ; $5703: $09
	inc bc                                           ; $5704: $03
	inc bc                                           ; $5705: $03
	dec b                                            ; $5706: $05
	ld [bc], a                                       ; $5707: $02
	add l                                            ; $5708: $85
	jp nz, Jump_04a_7961                             ; $5709: $c2 $61 $79

	and e                                            ; $570c: $a3
	db $fc                                           ; $570d: $fc

jr_04a_570e:
	sbc $f8                                          ; $570e: $de $f8
	sub b                                            ; $5710: $90
	ld a, b                                          ; $5711: $78
	cp h                                             ; $5712: $bc
	ld a, b                                          ; $5713: $78
	cp l                                             ; $5714: $bd
	ld a, e                                          ; $5715: $7b
	call z, Call_04a_7cfc                            ; $5716: $cc $fc $7c
	jr @+$1a                                         ; $5719: $18 $18

	inc e                                            ; $571b: $1c
	ld a, [de]                                       ; $571c: $1a
	rra                                              ; $571d: $1f
	ld [$6f00], sp                                   ; $571e: $08 $00 $6f
	cp $da                                           ; $5721: $fe $da
	rlca                                             ; $5723: $07
	add b                                            ; $5724: $80
	add a                                            ; $5725: $87
	inc d                                            ; $5726: $14
	rrca                                             ; $5727: $0f
	ld c, $0c                                        ; $5728: $0e $0c
	ld a, [bc]                                       ; $572a: $0a
	dec d                                            ; $572b: $15
	ld a, [de]                                       ; $572c: $1a
	dec e                                            ; $572d: $1d
	ccf                                              ; $572e: $3f
	rra                                              ; $572f: $1f

jr_04a_5730:
	inc e                                            ; $5730: $1c
	add hl, de                                       ; $5731: $19
	jr jr_04a_5744                                   ; $5732: $18 $10

	jr jr_04a_574e                                   ; $5734: $18 $18

	sub l                                            ; $5736: $95
	and h                                            ; $5737: $a4

jr_04a_5738:
	adc d                                            ; $5738: $8a
	ld [hl], a                                       ; $5739: $77
	sbc [hl]                                         ; $573a: $9e
	sbc [hl]                                         ; $573b: $9e
	ld [hl], $a8                                     ; $573c: $36 $a8
	cp $fe                                           ; $573e: $fe $fe
	rst FarCall                                          ; $5740: $f7
	rst $38                                          ; $5741: $ff
	ld a, a                                          ; $5742: $7f
	ld a, [hl]                                       ; $5743: $7e

jr_04a_5744:
	ld a, a                                          ; $5744: $7f
	set 3, a                                         ; $5745: $cb $df
	cp a                                             ; $5747: $bf
	add b                                            ; $5748: $80
	rrca                                             ; $5749: $0f
	rst GetHLinHL                                          ; $574a: $cf
	rst SubAFromDE                                          ; $574b: $df
	rla                                              ; $574c: $17
	ld c, a                                          ; $574d: $4f

jr_04a_574e:
	rra                                              ; $574e: $1f
	ld a, b                                          ; $574f: $78
	ld [hl], b                                       ; $5750: $70
	ldh a, [$f8]                                     ; $5751: $f0 $f8
	jr nc, jr_04a_5755                               ; $5753: $30 $00

jr_04a_5755:
	jr jr_04a_5757                                   ; $5755: $18 $00

jr_04a_5757:
	adc $d1                                          ; $5757: $ce $d1
	jp $9f9f                                         ; $5759: $c3 $9f $9f


	db $d3                                           ; $575c: $d3
	db $d3                                           ; $575d: $d3
	pop de                                           ; $575e: $d1
	scf                                              ; $575f: $37
	ld l, $3c                                        ; $5760: $2e $3c
	jr nz, jr_04a_5784                               ; $5762: $20 $20

	inc l                                            ; $5764: $2c
	inc l                                            ; $5765: $2c
	ld l, $7e                                        ; $5766: $2e $7e
	sub e                                            ; $5768: $93
	ld e, a                                          ; $5769: $5f
	ld e, [hl]                                       ; $576a: $5e
	rra                                              ; $576b: $1f
	rrca                                             ; $576c: $0f
	rrca                                             ; $576d: $0f
	rra                                              ; $576e: $1f
	rrca                                             ; $576f: $0f
	sbc a                                            ; $5770: $9f
	cp a                                             ; $5771: $bf
	xor a                                            ; $5772: $af
	rst AddAOntoHL                                          ; $5773: $ef
	rst $38                                          ; $5774: $ff
	ld a, e                                          ; $5775: $7b
	inc a                                            ; $5776: $3c
	ld a, e                                          ; $5777: $7b
	ld d, [hl]                                       ; $5778: $56
	sbc d                                            ; $5779: $9a
	add b                                            ; $577a: $80
	ld [$9e9c], sp                                   ; $577b: $08 $9c $9e
	rst SubAFromDE                                          ; $577e: $df
	db $dd                                           ; $577f: $dd
	ld a, a                                          ; $5780: $7f
	sbc e                                            ; $5781: $9b
	rst FarCall                                          ; $5782: $f7
	db $e3                                           ; $5783: $e3

jr_04a_5784:
	pop bc                                           ; $5784: $c1
	ldh [$fb], a                                     ; $5785: $e0 $fb
	sbc l                                            ; $5787: $9d
	add h                                            ; $5788: $84
	ld [$ffdb], a                                    ; $5789: $ea $db $ff
	sbc d                                            ; $578c: $9a
	pop af                                           ; $578d: $f1
	rst $38                                          ; $578e: $ff
	inc b                                            ; $578f: $04
	ld [bc], a                                       ; $5790: $02
	ld b, $fd                                        ; $5791: $06 $fd
	sbc h                                            ; $5793: $9c
	add [hl]                                         ; $5794: $86
	ldh [c], a                                       ; $5795: $e2
	rst SubAFromBC                                          ; $5796: $e7
	call c, $9ee0                                    ; $5797: $dc $e0 $9e
	ld hl, sp+$72                                    ; $579a: $f8 $72
	di                                               ; $579c: $f3
	rst $38                                          ; $579d: $ff
	sbc l                                            ; $579e: $9d
	add e                                            ; $579f: $83
	ldh [$6f], a                                     ; $57a0: $e0 $6f
	ld e, $8a                                        ; $57a2: $1e $8a
	ld bc, $0030                                     ; $57a4: $01 $30 $00
	ld bc, $3f0b                                     ; $57a7: $01 $0b $3f
	ccf                                              ; $57aa: $3f
	ld a, a                                          ; $57ab: $7f
	rst $38                                          ; $57ac: $ff
	db $10                                           ; $57ad: $10
	jr nc, jr_04a_57e0                               ; $57ae: $30 $30

	scf                                              ; $57b0: $37
	ccf                                              ; $57b1: $3f
	inc a                                            ; $57b2: $3c
	ld hl, sp-$08                                    ; $57b3: $f8 $f8
	rrca                                             ; $57b5: $0f
	ccf                                              ; $57b6: $3f
	rst $38                                          ; $57b7: $ff
	cp a                                             ; $57b8: $bf
	db $dd                                           ; $57b9: $dd
	rst $38                                          ; $57ba: $ff
	sbc d                                            ; $57bb: $9a
	inc e                                            ; $57bc: $1c
	ld a, b                                          ; $57bd: $78
	ldh [$c0], a                                     ; $57be: $e0 $c0
	push de                                          ; $57c0: $d5
	cp $97                                           ; $57c1: $fe $97
	xor e                                            ; $57c3: $ab
	ld d, l                                          ; $57c4: $55
	xor [hl]                                         ; $57c5: $ae
	ld d, l                                          ; $57c6: $55
	rst $38                                          ; $57c7: $ff
	xor [hl]                                         ; $57c8: $ae
	ld d, l                                          ; $57c9: $55
	xor d                                            ; $57ca: $aa
	reti                                             ; $57cb: $d9


	rst $38                                          ; $57cc: $ff
	rst SubAFromDE                                          ; $57cd: $df
	ld hl, sp-$01                                    ; $57ce: $f8 $ff
	sbc [hl]                                         ; $57d0: $9e
	inc d                                            ; $57d1: $14
	ld a, d                                          ; $57d2: $7a
	ld sp, hl                                        ; $57d3: $f9
	reti                                             ; $57d4: $d9


	rst $38                                          ; $57d5: $ff
	adc a                                            ; $57d6: $8f
	ld e, l                                          ; $57d7: $5d
	ld a, [hl+]                                      ; $57d8: $2a
	ld d, h                                          ; $57d9: $54
	cp d                                             ; $57da: $ba
	ld c, a                                          ; $57db: $4f
	and d                                            ; $57dc: $a2
	ld [hl], h                                       ; $57dd: $74
	xor b                                            ; $57de: $a8
	and b                                            ; $57df: $a0

jr_04a_57e0:
	ret nc                                           ; $57e0: $d0

	and b                                            ; $57e1: $a0
	ld b, b                                          ; $57e2: $40
	or b                                             ; $57e3: $b0
	ld b, b                                          ; $57e4: $40
	add b                                            ; $57e5: $80
	ld b, b                                          ; $57e6: $40
	ld a, d                                          ; $57e7: $7a
	ld h, a                                          ; $57e8: $67
	sbc [hl]                                         ; $57e9: $9e
	add b                                            ; $57ea: $80
	ld a, d                                          ; $57eb: $7a
	ld b, l                                          ; $57ec: $45
	db $f4                                           ; $57ed: $f4
	ld b, a                                          ; $57ee: $47
	ldh a, [$9e]                                     ; $57ef: $f0 $9e
	xor d                                            ; $57f1: $aa
	or $97                                           ; $57f2: $f6 $97
	ld [hl-], a                                      ; $57f4: $32
	add hl, de                                       ; $57f5: $19
	ld c, $03                                        ; $57f6: $0e $03
	xor l                                            ; $57f8: $ad
	inc bc                                           ; $57f9: $03
	dec b                                            ; $57fa: $05
	ld a, [bc]                                       ; $57fb: $0a
	cp $7f                                           ; $57fc: $fe $7f
	ld d, l                                          ; $57fe: $55
	cp $86                                           ; $57ff: $fe $86
	jp hl                                            ; $5801: $e9


	ld a, l                                          ; $5802: $7d
	jp z, $ca75                                      ; $5803: $ca $75 $ca

	ld d, l                                          ; $5806: $55
	jp z, $1fa5                                      ; $5807: $ca $a5 $1f

	jr jr_04a_5848                                   ; $580a: $18 $3c

	jr jr_04a_584a                                   ; $580c: $18 $3c

	jr c, jr_04a_584c                                ; $580e: $38 $3c

	ld e, b                                          ; $5810: $58
	db $ed                                           ; $5811: $ed
	ld [hl], l                                       ; $5812: $75
	rst $38                                          ; $5813: $ff
	ld b, l                                          ; $5814: $45
	cp d                                             ; $5815: $ba
	ld d, c                                          ; $5816: $51
	xor b                                            ; $5817: $a8
	ld e, b                                          ; $5818: $58
	ret nz                                           ; $5819: $c0

	ld a, c                                          ; $581a: $79
	ld a, [hl+]                                      ; $581b: $2a
	db $dd                                           ; $581c: $dd
	rlca                                             ; $581d: $07
	sub [hl]                                         ; $581e: $96
	xor d                                            ; $581f: $aa
	dec c                                            ; $5820: $0d
	cp $0f                                           ; $5821: $fe $0f
	ld c, $0f                                        ; $5823: $0e $0f
	ld e, $ab                                        ; $5825: $1e $ab
	inc e                                            ; $5827: $1c
	ld a, b                                          ; $5828: $78
	ld a, [hl+]                                      ; $5829: $2a
	rst SubAFromDE                                          ; $582a: $df
	cp $9b                                           ; $582b: $fe $9b
	xor $5e                                          ; $582d: $ee $5e
	ld a, [hl]                                       ; $582f: $7e
	ld a, [hl]                                       ; $5830: $7e
	ld a, c                                          ; $5831: $79
	call nz, $ffde                                   ; $5832: $c4 $de $ff
	sbc [hl]                                         ; $5835: $9e
	db $fc                                           ; $5836: $fc
	jp c, $9aff                                      ; $5837: $da $ff $9a

	rra                                              ; $583a: $1f
	rst $38                                          ; $583b: $ff
	ld sp, hl                                        ; $583c: $f9
	ldh a, [$fa]                                     ; $583d: $f0 $fa
	sbc $f0                                          ; $583f: $de $f0
	ld a, l                                          ; $5841: $7d
	ld [$f0dd], a                                    ; $5842: $ea $dd $f0
	ld a, h                                          ; $5845: $7c
	ld a, $7c                                        ; $5846: $3e $7c

jr_04a_5848:
	ld a, [hl+]                                      ; $5848: $2a
	sub a                                            ; $5849: $97

jr_04a_584a:
	ld d, h                                          ; $584a: $54
	nop                                              ; $584b: $00

jr_04a_584c:
	dec b                                            ; $584c: $05
	ld d, $1d                                        ; $584d: $16 $1d
	ld c, $22                                        ; $584f: $0e $22
	inc a                                            ; $5851: $3c
	cp $85                                           ; $5852: $fe $85
	ld [$031d], sp                                   ; $5854: $08 $1d $03
	rlca                                             ; $5857: $07
	rrca                                             ; $5858: $0f
	ld d, a                                          ; $5859: $57
	rrca                                             ; $585a: $0f
	ld e, a                                          ; $585b: $5f
	rst $38                                          ; $585c: $ff
	rst $38                                          ; $585d: $ff
	db $eb                                           ; $585e: $eb
	rst FarCall                                          ; $585f: $f7
	di                                               ; $5860: $f3
	daa                                              ; $5861: $27
	inc bc                                           ; $5862: $03
	rrca                                             ; $5863: $0f
	ld a, a                                          ; $5864: $7f
	rst FarCall                                          ; $5865: $f7
	cp $cf                                           ; $5866: $fe $cf
	rst GetHLinHL                                          ; $5868: $cf
	rst SubAFromBC                                          ; $5869: $e7
	rst JumpTable                                          ; $586a: $c7
	rst SubAFromBC                                          ; $586b: $e7
	db $eb                                           ; $586c: $eb
	pop bc                                           ; $586d: $c1
	ld a, e                                          ; $586e: $7b
	jp nc, $f8de                                     ; $586f: $d2 $de $f8

	sbc d                                            ; $5872: $9a
	call nz, $c0c0                                   ; $5873: $c4 $c0 $c0
	ld d, a                                          ; $5876: $57
	ld a, [$ffd3]                                    ; $5877: $fa $d3 $ff
	sub a                                            ; $587a: $97
	db $fc                                           ; $587b: $fc
	and c                                            ; $587c: $a1
	ld a, [$fffd]                                    ; $587d: $fa $fd $ff
	ld hl, sp-$40                                    ; $5880: $f8 $c0
	ret nc                                           ; $5882: $d0

	jp c, $9cff                                      ; $5883: $da $ff $9c

	cp $07                                           ; $5886: $fe $07
	ccf                                              ; $5888: $3f
	sbc $bf                                          ; $5889: $de $bf
	ld a, a                                          ; $588b: $7f
	ld [hl], l                                       ; $588c: $75
	adc d                                            ; $588d: $8a
	sbc a                                            ; $588e: $9f
	rst JumpTable                                          ; $588f: $c7
	rst GetHLinHL                                          ; $5890: $cf
	rst $38                                          ; $5891: $ff
	cp $f8                                           ; $5892: $fe $f8
	ldh [$c0], a                                     ; $5894: $e0 $c0
	nop                                              ; $5896: $00
	di                                               ; $5897: $f3
	ld sp, hl                                        ; $5898: $f9
	or d                                             ; $5899: $b2
	inc a                                            ; $589a: $3c
	cp c                                             ; $589b: $b9
	or c                                             ; $589c: $b1
	cp a                                             ; $589d: $bf
	cp d                                             ; $589e: $ba
	db $fc                                           ; $589f: $fc
	cp $7d                                           ; $58a0: $fe $7d
	rst $38                                          ; $58a2: $ff
	db $dd                                           ; $58a3: $dd
	ld a, a                                          ; $58a4: $7f
	sub l                                            ; $58a5: $95
	xor d                                            ; $58a6: $aa
	ld d, b                                          ; $58a7: $50
	sbc b                                            ; $58a8: $98

Call_04a_58a9:
	ld d, [hl]                                       ; $58a9: $56
	db $fd                                           ; $58aa: $fd
	xor e                                            ; $58ab: $ab
	dec d                                            ; $58ac: $15
	adc d                                            ; $58ad: $8a
	ld d, l                                          ; $58ae: $55
	xor a                                            ; $58af: $af
	ld l, a                                          ; $58b0: $6f
	ld l, b                                          ; $58b1: $68
	ld a, [hl]                                       ; $58b2: $7e
	add $7f                                          ; $58b3: $c6 $7f
	or $9b                                           ; $58b5: $f6 $9b
	ld e, a                                          ; $58b7: $5f
	xor e                                            ; $58b8: $ab
	ld d, a                                          ; $58b9: $57
	xor [hl]                                         ; $58ba: $ae
	reti                                             ; $58bb: $d9


	rst $38                                          ; $58bc: $ff
	sbc d                                            ; $58bd: $9a
	ld a, h                                          ; $58be: $7c
	ld hl, sp-$2c                                    ; $58bf: $f8 $d4
	ret z                                            ; $58c1: $c8

	sub b                                            ; $58c2: $90
	ld a, c                                          ; $58c3: $79
	and b                                            ; $58c4: $a0
	reti                                             ; $58c5: $d9


	rst $38                                          ; $58c6: $ff
	sub a                                            ; $58c7: $97
	ld [hl], h                                       ; $58c8: $74
	ld [$ea55], a                                    ; $58c9: $ea $55 $ea
	ld a, a                                          ; $58cc: $7f
	ld [$eb75], a                                    ; $58cd: $ea $75 $eb
	ld a, d                                          ; $58d0: $7a
	ret                                              ; $58d1: $c9


	ld [hl], e                                       ; $58d2: $73
	cp $7c                                           ; $58d3: $fe $7c
	ld sp, $409a                                     ; $58d5: $31 $9a $40
	ld [$a8f5], a                                    ; $58d8: $ea $f5 $a8
	call nc, $3068                                   ; $58db: $d4 $68 $30
	db $fc                                           ; $58de: $fc
	sbc l                                            ; $58df: $9d
	add b                                            ; $58e0: $80
	ld d, l                                          ; $58e1: $55
	ldh a, [c]                                       ; $58e2: $f2
	ld d, a                                          ; $58e3: $57
	ldh a, [$98]                                     ; $58e4: $f0 $98
	dec d                                            ; $58e6: $15
	dec bc                                           ; $58e7: $0b
	dec d                                            ; $58e8: $15
	dec hl                                           ; $58e9: $2b
	ld d, a                                          ; $58ea: $57
	dec bc                                           ; $58eb: $0b
	rla                                              ; $58ec: $17
	ld l, c                                          ; $58ed: $69
	db $10                                           ; $58ee: $10
	rst $38                                          ; $58ef: $ff
	add b                                            ; $58f0: $80
	ld c, d                                          ; $58f1: $4a
	sub l                                            ; $58f2: $95
	ldh a, [c]                                       ; $58f3: $f2
	set 0, l                                         ; $58f4: $cb $c5
	pop hl                                           ; $58f6: $e1
	pop hl                                           ; $58f7: $e1
	ldh [$3c], a                                     ; $58f8: $e0 $3c
	jr c, jr_04a_5918                                ; $58fa: $38 $1c

	inc a                                            ; $58fc: $3c
	ld a, $1e                                        ; $58fd: $3e $1e
	rra                                              ; $58ff: $1f
	rra                                              ; $5900: $1f
	xor b                                            ; $5901: $a8
	call nc, $f8aa                                   ; $5902: $d4 $aa $f8
	ldh a, [$5c]                                     ; $5905: $f0 $5c
	xor d                                            ; $5907: $aa
	ld e, h                                          ; $5908: $5c
	rlca                                             ; $5909: $07
	inc bc                                           ; $590a: $03
	dec b                                            ; $590b: $05
	rlca                                             ; $590c: $07
	rrca                                             ; $590d: $0f
	inc bc                                           ; $590e: $03
	dec b                                            ; $590f: $05
	adc c                                            ; $5910: $89
	add e                                            ; $5911: $83
	ld [$eaef], a                                    ; $5912: $ea $ef $ea
	rst FarCall                                          ; $5915: $f7
	ld a, [de]                                       ; $5916: $1a
	rst FarCall                                          ; $5917: $f7

jr_04a_5918:
	ldh [$ef], a                                     ; $5918: $e0 $ef
	dec de                                           ; $591a: $1b
	ld a, [de]                                       ; $591b: $1a
	ld [de], a                                       ; $591c: $12
	ld [de], a                                       ; $591d: $12
	ldh a, [c]                                       ; $591e: $f2
	ld [de], a                                       ; $591f: $12
	ld a, [de]                                       ; $5920: $1a
	ld a, [de]                                       ; $5921: $1a
	ld [hl], b                                       ; $5922: $70
	cp a                                             ; $5923: $bf
	ld b, b                                          ; $5924: $40
	and b                                            ; $5925: $a0
	ld h, b                                          ; $5926: $60
	ld a, e                                          ; $5927: $7b
	cp $7f                                           ; $5928: $fe $7f
	ld b, e                                          ; $592a: $43
	adc a                                            ; $592b: $8f
	cp a                                             ; $592c: $bf
	ld [hl], h                                       ; $592d: $74
	or h                                             ; $592e: $b4
	halt                                             ; $592f: $76
	and h                                            ; $5930: $a4
	ld l, h                                          ; $5931: $6c
	ld a, [$e8f0]                                    ; $5932: $fa $f0 $e8
	ld h, b                                          ; $5935: $60
	ret nz                                           ; $5936: $c0

	ld b, b                                          ; $5937: $40
	ret nz                                           ; $5938: $c0

	add b                                            ; $5939: $80
	ldh a, [$e0]                                     ; $593a: $f0 $e0
	db $db                                           ; $593c: $db
	ld b, b                                          ; $593d: $40
	sbc e                                            ; $593e: $9b
	nop                                              ; $593f: $00
	ld e, b                                          ; $5940: $58
	ld d, l                                          ; $5941: $55
	ld a, [hl+]                                      ; $5942: $2a
	ld a, e                                          ; $5943: $7b
	cp $7c                                           ; $5944: $fe $7c
	db $ec                                           ; $5946: $ec
	sbc h                                            ; $5947: $9c
	add b                                            ; $5948: $80
	ccf                                              ; $5949: $3f
	ld a, a                                          ; $594a: $7f
	ld [hl], a                                       ; $594b: $77
	cp $9d                                           ; $594c: $fe $9d
	sub h                                            ; $594e: $94
	and d                                            ; $594f: $a2
	ld a, e                                          ; $5950: $7b
	ld l, $78                                        ; $5951: $2e $78
	add c                                            ; $5953: $81
	sbc l                                            ; $5954: $9d
	ld b, c                                          ; $5955: $41
	ld bc, $ffdb                                     ; $5956: $01 $db $ff
	sbc h                                            ; $5959: $9c
	ld b, b                                          ; $595a: $40
	and e                                            ; $595b: $a3

jr_04a_595c:
	ld d, l                                          ; $595c: $55
	ld [hl], b                                       ; $595d: $70
	rst SubAFromDE                                          ; $595e: $df
	sbc [hl]                                         ; $595f: $9e
	or b                                             ; $5960: $b0
	ld h, [hl]                                       ; $5961: $66
	ld a, a                                          ; $5962: $7f
	ld a, [hl]                                       ; $5963: $7e
	ld e, b                                          ; $5964: $58
	ld l, a                                          ; $5965: $6f
	rlca                                             ; $5966: $07
	jp c, $9cff                                      ; $5967: $da $ff $9c

	jp z, $cedd                                      ; $596a: $ca $dd $ce

	ld [hl], e                                       ; $596d: $73
	cp $d9                                           ; $596e: $fe $d9
	rst $38                                          ; $5970: $ff
	sbc h                                            ; $5971: $9c
	ld e, a                                          ; $5972: $5f
	rra                                              ; $5973: $1f
	rra                                              ; $5974: $1f
	ld a, e                                          ; $5975: $7b
	db $fd                                           ; $5976: $fd
	rst SubAFromDE                                          ; $5977: $df
	rra                                              ; $5978: $1f
	sbc l                                            ; $5979: $9d
	jr nz, jr_04a_595c                               ; $597a: $20 $e0

	sbc $a0                                          ; $597c: $de $a0
	rst SubAFromDE                                          ; $597e: $df
	or b                                             ; $597f: $b0
	sub a                                            ; $5980: $97
	cp a                                             ; $5981: $bf
	or l                                             ; $5982: $b5
	xor d                                            ; $5983: $aa
	cp l                                             ; $5984: $bd
	cp d                                             ; $5985: $ba
	dec [hl]                                         ; $5986: $35
	sbc d                                            ; $5987: $9a
	dec [hl]                                         ; $5988: $35
	ld [hl], d                                       ; $5989: $72
	call nz, $fb7f                                   ; $598a: $c4 $7f $fb
	rst SubAFromDE                                          ; $598d: $df
	rst $38                                          ; $598e: $ff
	sbc b                                            ; $598f: $98
	dec d                                            ; $5990: $15
	adc [hl]                                         ; $5991: $8e
	dec b                                            ; $5992: $05
	adc d                                            ; $5993: $8a
	dec d                                            ; $5994: $15
	adc d                                            ; $5995: $8a
	rra                                              ; $5996: $1f
	ret c                                            ; $5997: $d8

	rst $38                                          ; $5998: $ff
	sbc b                                            ; $5999: $98
	ld e, l                                          ; $599a: $5d
	ld a, [$bad5]                                    ; $599b: $fa $d5 $ba
	ld [hl], l                                       ; $599e: $75
	ld [$d8d7], a                                    ; $599f: $ea $d7 $d8
	rst $38                                          ; $59a2: $ff
	ld a, a                                          ; $59a3: $7f
	ld a, b                                          ; $59a4: $78
	ld a, a                                          ; $59a5: $7f
	ld d, b                                          ; $59a6: $50
	sbc e                                            ; $59a7: $9b
	ld a, h                                          ; $59a8: $7c
	cp [hl]                                          ; $59a9: $be
	ld d, h                                          ; $59aa: $54
	cp $d9                                           ; $59ab: $fe $d9
	rst $38                                          ; $59ad: $ff
	sub l                                            ; $59ae: $95
	ld [hl], a                                       ; $59af: $77
	ccf                                              ; $59b0: $3f
	ld a, a                                          ; $59b1: $7f
	cp a                                             ; $59b2: $bf
	ld e, a                                          ; $59b3: $5f
	dec a                                            ; $59b4: $3d
	ld e, $81                                        ; $59b5: $1e $81
	add b                                            ; $59b7: $80
	ret nz                                           ; $59b8: $c0

	ld a, e                                          ; $59b9: $7b
	rst SubAFromBC                                          ; $59ba: $e7
	sub h                                            ; $59bb: $94
	ret nz                                           ; $59bc: $c0

	ldh [$fe], a                                     ; $59bd: $e0 $fe
	push af                                          ; $59bf: $f5
	ld a, [$faf5]                                    ; $59c0: $fa $f5 $fa
	db $fd                                           ; $59c3: $fd
	ld a, [$45fd]                                    ; $59c4: $fa $fd $45
	ld a, [$ba9e]                                    ; $59c7: $fa $9e $ba
	ld [hl], b                                       ; $59ca: $70
	inc [hl]                                         ; $59cb: $34
	ld a, a                                          ; $59cc: $7f
	push hl                                          ; $59cd: $e5
	ld c, c                                          ; $59ce: $49
	ld a, l                                          ; $59cf: $7d
	ld a, a                                          ; $59d0: $7f
	ld b, e                                          ; $59d1: $43
	ld sp, hl                                        ; $59d2: $f9
	ld a, [hl]                                       ; $59d3: $7e
	add $99                                          ; $59d4: $c6 $99
	rla                                              ; $59d6: $17
	cpl                                              ; $59d7: $2f
	ld d, a                                          ; $59d8: $57
	xor a                                            ; $59d9: $af
	ld e, a                                          ; $59da: $5f
	ret nz                                           ; $59db: $c0

	ld a, [$3f94]                                    ; $59dc: $fa $94 $3f
	ldh a, [$e1]                                     ; $59df: $f0 $e1
	ldh a, [$e0]                                     ; $59e1: $f0 $e0
	ldh a, [$f8]                                     ; $59e3: $f0 $f8
	db $f4                                           ; $59e5: $f4
	and b                                            ; $59e6: $a0
	rrca                                             ; $59e7: $0f
	ld e, $78                                        ; $59e8: $1e $78
	sbc e                                            ; $59ea: $9b
	add b                                            ; $59eb: $80
	rlca                                             ; $59ec: $07
	dec bc                                           ; $59ed: $0b
	ld e, a                                          ; $59ee: $5f
	ld a, [hl+]                                      ; $59ef: $2a
	inc e                                            ; $59f0: $1c
	adc [hl]                                         ; $59f1: $8e
	ld b, l                                          ; $59f2: $45
	ld a, [hl-]                                      ; $59f3: $3a
	inc d                                            ; $59f4: $14
	ld a, [hl+]                                      ; $59f5: $2a
	ld bc, $e3c5                                     ; $59f6: $01 $c5 $e3
	ld [hl], c                                       ; $59f9: $71
	cp d                                             ; $59fa: $ba
	call $d7ef                                       ; $59fb: $cd $ef $d7
	rst $38                                          ; $59fe: $ff
	ld [$f6ff], a                                    ; $59ff: $ea $ff $f6
	or $f2                                           ; $5a02: $f6 $f2
	push af                                          ; $5a04: $f5
	di                                               ; $5a05: $f3
	ld b, $1a                                        ; $5a06: $06 $1a
	ld c, $0f                                        ; $5a08: $0e $0f
	rrca                                             ; $5a0a: $0f
	sbc d                                            ; $5a0b: $9a
	inc c                                            ; $5a0c: $0c
	rrca                                             ; $5a0d: $0f
	rrca                                             ; $5a0e: $0f
	rst $38                                          ; $5a0f: $ff
	ld h, b                                          ; $5a10: $60
	ld [hl], a                                       ; $5a11: $77
	adc c                                            ; $5a12: $89
	sub d                                            ; $5a13: $92
	ret nz                                           ; $5a14: $c0

	ldh a, [rSVBK]                                   ; $5a15: $f0 $70
	xor b                                            ; $5a17: $a8
	ld l, b                                          ; $5a18: $68
	cp c                                             ; $5a19: $b9
	ld e, c                                          ; $5a1a: $59
	add hl, sp                                       ; $5a1b: $39
	ld sp, hl                                        ; $5a1c: $f9
	ei                                               ; $5a1d: $fb
	ld sp, hl                                        ; $5a1e: $f9
	ret nz                                           ; $5a1f: $c0

	add b                                            ; $5a20: $80
	ld a, e                                          ; $5a21: $7b
	ldh a, [c]                                       ; $5a22: $f2
	ld a, l                                          ; $5a23: $7d
	di                                               ; $5a24: $f3
	ld a, e                                          ; $5a25: $7b
	and b                                            ; $5a26: $a0
	sub [hl]                                         ; $5a27: $96
	add b                                            ; $5a28: $80
	ldh [$f8], a                                     ; $5a29: $e0 $f8
	cp $3f                                           ; $5a2b: $fe $3f
	ccf                                              ; $5a2d: $3f
	ld b, b                                          ; $5a2e: $40
	jr nz, jr_04a_5a31                               ; $5a2f: $20 $00

jr_04a_5a31:
	ld [hl], a                                       ; $5a31: $77
	cp $7d                                           ; $5a32: $fe $7d
	call Call_04a_7fdb                               ; $5a34: $cd $db $7f
	ld h, a                                          ; $5a37: $67
	sbc b                                            ; $5a38: $98
	ld h, e                                          ; $5a39: $63
	ld sp, $f047                                     ; $5a3a: $31 $47 $f0
	pop de                                           ; $5a3d: $d1
	rst $38                                          ; $5a3e: $ff
	ld l, [hl]                                       ; $5a3f: $6e
	jp nz, $c05e                                     ; $5a40: $c2 $5e $c0

	reti                                             ; $5a43: $d9


	and b                                            ; $5a44: $a0
	reti                                             ; $5a45: $d9


	rra                                              ; $5a46: $1f
	sbc e                                            ; $5a47: $9b
	dec d                                            ; $5a48: $15
	ld l, d                                          ; $5a49: $6a
	push de                                          ; $5a4a: $d5
	xor d                                            ; $5a4b: $aa
	ld a, d                                          ; $5a4c: $7a
	ld l, [hl]                                       ; $5a4d: $6e
	ld h, b                                          ; $5a4e: $60
	ld h, b                                          ; $5a4f: $60
	sbc d                                            ; $5a50: $9a
	ld e, e                                          ; $5a51: $5b
	or a                                             ; $5a52: $b7
	ld e, a                                          ; $5a53: $5f
	cp a                                             ; $5a54: $bf
	ld e, a                                          ; $5a55: $5f
	halt                                             ; $5a56: $76
	or a                                             ; $5a57: $b7
	jp c, Jump_04a_7dff                              ; $5a58: $da $ff $7d

	and d                                            ; $5a5b: $a2
	ld [hl], a                                       ; $5a5c: $77
	ldh [$9e], a                                     ; $5a5d: $e0 $9e
	push de                                          ; $5a5f: $d5
	ld h, c                                          ; $5a60: $61
	ld a, [hl+]                                      ; $5a61: $2a
	sub a                                            ; $5a62: $97
	ld e, h                                          ; $5a63: $5c
	xor b                                            ; $5a64: $a8
	ld d, b                                          ; $5a65: $50
	xor b                                            ; $5a66: $a8
	ld d, b                                          ; $5a67: $50
	and b                                            ; $5a68: $a0
	ld e, b                                          ; $5a69: $58
	xor b                                            ; $5a6a: $a8
	reti                                             ; $5a6b: $d9


	rst $38                                          ; $5a6c: $ff
	add a                                            ; $5a6d: $87
	dec a                                            ; $5a6e: $3d
	ld e, a                                          ; $5a6f: $5f
	cpl                                              ; $5a70: $2f
	dec d                                            ; $5a71: $15
	ld a, [bc]                                       ; $5a72: $0a
	dec b                                            ; $5a73: $05
	nop                                              ; $5a74: $00
	ld bc, $a0c0                                     ; $5a75: $01 $c0 $a0
	ret nc                                           ; $5a78: $d0

	ld [$faf5], a                                    ; $5a79: $ea $f5 $fa
	rst $38                                          ; $5a7c: $ff
	cp $fd                                           ; $5a7d: $fe $fd
	cp $ff                                           ; $5a7f: $fe $ff
	ld a, [hl]                                       ; $5a81: $7e
	xor a                                            ; $5a82: $af
	ld d, a                                          ; $5a83: $57
	xor a                                            ; $5a84: $af
	ld d, a                                          ; $5a85: $57
	halt                                             ; $5a86: $76
	ret z                                            ; $5a87: $c8

	ld a, e                                          ; $5a88: $7b
	sub $7a                                          ; $5a89: $d6 $7a
	ld d, $9e                                        ; $5a8b: $16 $9e
	ld b, b                                          ; $5a8d: $40
	ld a, c                                          ; $5a8e: $79
	ld [hl], d                                       ; $5a8f: $72
	ld a, a                                          ; $5a90: $7f
	and $f9                                          ; $5a91: $e6 $f9
	ld a, h                                          ; $5a93: $7c
	ld d, [hl]                                       ; $5a94: $56
	sbc c                                            ; $5a95: $99
	dec d                                            ; $5a96: $15
	ld a, [hl+]                                      ; $5a97: $2a
	ld d, l                                          ; $5a98: $55
	xor e                                            ; $5a99: $ab
	ld e, a                                          ; $5a9a: $5f
	cp a                                             ; $5a9b: $bf
	ld sp, hl                                        ; $5a9c: $f9
	ld a, [hl]                                       ; $5a9d: $7e
	add d                                            ; $5a9e: $82
	ld [hl], a                                       ; $5a9f: $77
	sub h                                            ; $5aa0: $94
	sbc l                                            ; $5aa1: $9d
	rst SubAFromDE                                          ; $5aa2: $df
	xor $fb                                          ; $5aa3: $ee $fb
	sbc d                                            ; $5aa5: $9a
	jr nz, jr_04a_5ab9                               ; $5aa6: $20 $11

	db $f4                                           ; $5aa8: $f4
	ld a, [$7bd5]                                    ; $5aa9: $fa $d5 $7b
	and b                                            ; $5aac: $a0
	ld a, a                                          ; $5aad: $7f
	cp $9c                                           ; $5aae: $fe $9c
	dec bc                                           ; $5ab0: $0b
	dec b                                            ; $5ab1: $05
	ld a, [hl+]                                      ; $5ab2: $2a
	ld a, d                                          ; $5ab3: $7a
	xor c                                            ; $5ab4: $a9
	ld a, a                                          ; $5ab5: $7f
	cp $8a                                           ; $5ab6: $fe $8a
	inc d                                            ; $5ab8: $14

jr_04a_5ab9:
	xor d                                            ; $5ab9: $aa
	ld e, h                                          ; $5aba: $5c
	add sp, $10                                      ; $5abb: $e8 $10
	jr nz, jr_04a_5aff                               ; $5abd: $20 $40

	nop                                              ; $5abf: $00
	db $eb                                           ; $5ac0: $eb
	ld d, l                                          ; $5ac1: $55
	and e                                            ; $5ac2: $a3
	rla                                              ; $5ac3: $17
	rst AddAOntoHL                                          ; $5ac4: $ef
	rst SubAFromDE                                          ; $5ac5: $df
	cp a                                             ; $5ac6: $bf
	rst $38                                          ; $5ac7: $ff
	add a                                            ; $5ac8: $87
	bit 5, a                                         ; $5ac9: $cb $6f
	dec sp                                           ; $5acb: $3b
	rra                                              ; $5acc: $1f
	ld a, d                                          ; $5acd: $7a
	adc h                                            ; $5ace: $8c
	reti                                             ; $5acf: $d9


	rst $38                                          ; $5ad0: $ff
	sub a                                            ; $5ad1: $97
	db $eb                                           ; $5ad2: $eb
	push af                                          ; $5ad3: $f5
	dec bc                                           ; $5ad4: $0b
	rrca                                             ; $5ad5: $0f
	nop                                              ; $5ad6: $00
	ld b, b                                          ; $5ad7: $40
	xor d                                            ; $5ad8: $aa
	ld d, l                                          ; $5ad9: $55
	call c, $8fff                                    ; $5ada: $dc $ff $8f
	cp a                                             ; $5add: $bf
	ld d, l                                          ; $5ade: $55
	xor d                                            ; $5adf: $aa
	xor a                                            ; $5ae0: $af
	db $e3                                           ; $5ae1: $e3
	pop af                                           ; $5ae2: $f1
	db $f4                                           ; $5ae3: $f4
	ld a, [bc]                                       ; $5ae4: $0a
	push de                                          ; $5ae5: $d5
	xor d                                            ; $5ae6: $aa
	push de                                          ; $5ae7: $d5
	rst SubAFromDE                                          ; $5ae8: $df
	rst FarCall                                          ; $5ae9: $f7
	ei                                               ; $5aea: $fb
	ld sp, hl                                        ; $5aeb: $f9
	ldh a, [$fe]                                     ; $5aec: $f0 $fe
	sub a                                            ; $5aee: $97
	ret nz                                           ; $5aef: $c0

	rst $38                                          ; $5af0: $ff
	pop hl                                           ; $5af1: $e1
	ld a, a                                          ; $5af2: $7f
	or l                                             ; $5af3: $b5
	ld [$e8f1], a                                    ; $5af4: $ea $f1 $e8
	db $dd                                           ; $5af7: $dd
	rst $38                                          ; $5af8: $ff
	sbc [hl]                                         ; $5af9: $9e
	ld a, a                                          ; $5afa: $7f
	ld a, e                                          ; $5afb: $7b
	rst JumpTable                                          ; $5afc: $c7
	ld a, [hl]                                       ; $5afd: $7e
	rst SubAFromDE                                          ; $5afe: $df

jr_04a_5aff:
	ld a, e                                          ; $5aff: $7b
	cp $52                                           ; $5b00: $fe $52
	rst GetHLinHL                                          ; $5b02: $cf
	ld a, [hl]                                       ; $5b03: $7e
	ld a, h                                          ; $5b04: $7c
	ld a, d                                          ; $5b05: $7a
	jr nc, @+$6b                                     ; $5b06: $30 $69

	ld [hl], d                                       ; $5b08: $72
	rst GetHLinHL                                          ; $5b09: $cf
	rst $38                                          ; $5b0a: $ff
	ld l, d                                          ; $5b0b: $6a
	ret nz                                           ; $5b0c: $c0

	sbc [hl]                                         ; $5b0d: $9e
	call c, $c052                                    ; $5b0e: $dc $52 $c0
	sbc $20                                          ; $5b11: $de $20
	reti                                             ; $5b13: $d9


	rra                                              ; $5b14: $1f
	sbc e                                            ; $5b15: $9b
	push af                                          ; $5b16: $f5
	ei                                               ; $5b17: $fb
	push af                                          ; $5b18: $f5
	ei                                               ; $5b19: $fb
	push bc                                          ; $5b1a: $c5
	rst $38                                          ; $5b1b: $ff
	ld [hl], c                                       ; $5b1c: $71
	or d                                             ; $5b1d: $b2
	ld a, e                                          ; $5b1e: $7b

jr_04a_5b1f:
	cp $d9                                           ; $5b1f: $fe $d9
	rst $38                                          ; $5b21: $ff
	sbc l                                            ; $5b22: $9d
	ld d, h                                          ; $5b23: $54
	xor b                                            ; $5b24: $a8
	halt                                             ; $5b25: $76
	sub d                                            ; $5b26: $92
	sbc [hl]                                         ; $5b27: $9e
	ld e, l                                          ; $5b28: $5d
	ld h, d                                          ; $5b29: $62
	sub b                                            ; $5b2a: $90
	rst $38                                          ; $5b2b: $ff
	ld a, [hl]                                       ; $5b2c: $7e
	nop                                              ; $5b2d: $00
	ld a, [hl]                                       ; $5b2e: $7e
	jp c, $549e                                      ; $5b2f: $da $9e $54

	ld h, e                                          ; $5b32: $63
	ldh a, [hDisp1_WY]                                     ; $5b33: $f0 $95
	xor e                                            ; $5b35: $ab
	ld d, l                                          ; $5b36: $55
	ld a, [bc]                                       ; $5b37: $0a
	dec b                                            ; $5b38: $05
	ld a, [bc]                                       ; $5b39: $0a
	ld bc, $810a                                     ; $5b3a: $01 $0a $81
	ld d, h                                          ; $5b3d: $54
	xor d                                            ; $5b3e: $aa
	ld a, c                                          ; $5b3f: $79
	halt                                             ; $5b40: $76
	ld a, l                                          ; $5b41: $7d
	ld [hl], d                                       ; $5b42: $72
	ld a, [hl]                                       ; $5b43: $7e
	or b                                             ; $5b44: $b0
	ld a, d                                          ; $5b45: $7a
	rst SubAFromDE                                          ; $5b46: $df
	ld a, [hl]                                       ; $5b47: $7e
	ld l, a                                          ; $5b48: $6f
	ld a, [hl]                                       ; $5b49: $7e
	ld hl, sp+$79                                    ; $5b4a: $f8 $79
	ld a, h                                          ; $5b4c: $7c
	ld a, c                                          ; $5b4d: $79
	sub $7e                                          ; $5b4e: $d6 $7e
	add sp, $7a                                      ; $5b50: $e8 $7a
	jp nc, $ec7f                                     ; $5b52: $d2 $7f $ec

	sbc h                                            ; $5b55: $9c
	ld [$a855], a                                    ; $5b56: $ea $55 $a8
	ld [hl], l                                       ; $5b59: $75
	ld a, e                                          ; $5b5a: $7b
	sbc c                                            ; $5b5b: $99
	ld [bc], a                                       ; $5b5c: $02
	dec d                                            ; $5b5d: $15
	xor d                                            ; $5b5e: $aa
	ld d, a                                          ; $5b5f: $57
	push af                                          ; $5b60: $f5
	cp $76                                           ; $5b61: $fe $76
	ld h, b                                          ; $5b63: $60
	ld a, [hl]                                       ; $5b64: $7e
	ld a, l                                          ; $5b65: $7d
	ld a, a                                          ; $5b66: $7f
	call z, $a97e                                    ; $5b67: $cc $7e $a9
	ld a, a                                          ; $5b6a: $7f
	rst FarCall                                          ; $5b6b: $f7
	ld a, [hl]                                       ; $5b6c: $7e
	sub a                                            ; $5b6d: $97
	ld a, a                                          ; $5b6e: $7f
	call c, $d87f                                    ; $5b6f: $dc $7f $d8
	ld a, c                                          ; $5b72: $79
	ld c, [hl]                                       ; $5b73: $4e
	ld a, l                                          ; $5b74: $7d
	rst GetHLinHL                                          ; $5b75: $cf
	ld a, [hl]                                       ; $5b76: $7e
	sbc l                                            ; $5b77: $9d
	ld [hl], b                                       ; $5b78: $70
	ldh a, [rBCPD]                                   ; $5b79: $f0 $69
	ld d, b                                          ; $5b7b: $50
	sbc [hl]                                         ; $5b7c: $9e
	inc b                                            ; $5b7d: $04
	ld h, d                                          ; $5b7e: $62
	jr nc, jr_04a_5b1f                               ; $5b7f: $30 $9e

	dec hl                                           ; $5b81: $2b
	ld a, b                                          ; $5b82: $78
	ld [hl], d                                       ; $5b83: $72
	ld e, d                                          ; $5b84: $5a
	db $10                                           ; $5b85: $10
	ld a, a                                          ; $5b86: $7f
	sbc b                                            ; $5b87: $98
	sbc b                                            ; $5b88: $98
	push de                                          ; $5b89: $d5
	add sp, $60                                      ; $5b8a: $e8 $60
	cp b                                             ; $5b8c: $b8
	ld c, h                                          ; $5b8d: $4c
	and [hl]                                         ; $5b8e: $a6
	rst $38                                          ; $5b8f: $ff
	ld a, d                                          ; $5b90: $7a
	ld b, a                                          ; $5b91: $47
	ld [hl], b                                       ; $5b92: $70
	and b                                            ; $5b93: $a0
	ld a, a                                          ; $5b94: $7f
	db $e4                                           ; $5b95: $e4
	ld a, a                                          ; $5b96: $7f
	ldh [$7a], a                                     ; $5b97: $e0 $7a
	cpl                                              ; $5b99: $2f
	sbc [hl]                                         ; $5b9a: $9e
	and b                                            ; $5b9b: $a0
	ld a, d                                          ; $5b9c: $7a
	dec bc                                           ; $5b9d: $0b
	ld a, e                                          ; $5b9e: $7b
	ld a, l                                          ; $5b9f: $7d
	sbc c                                            ; $5ba0: $99
	rst $38                                          ; $5ba1: $ff
	pop de                                           ; $5ba2: $d1
	ldh [rHDMA1], a                                  ; $5ba3: $e0 $51
	and d                                            ; $5ba5: $a2
	ld b, c                                          ; $5ba6: $41
	ld a, e                                          ; $5ba7: $7b
	cp $9c                                           ; $5ba8: $fe $9c
	cpl                                              ; $5baa: $2f
	rra                                              ; $5bab: $1f
	xor a                                            ; $5bac: $af
	ld a, c                                          ; $5bad: $79
	rst SubAFromBC                                          ; $5bae: $e7
	ld a, a                                          ; $5baf: $7f
	cp $7f                                           ; $5bb0: $fe $7f
	jp hl                                            ; $5bb2: $e9


	ld a, e                                          ; $5bb3: $7b
	ld [hl], e                                       ; $5bb4: $73
	ld [hl], d                                       ; $5bb5: $72
	ld c, h                                          ; $5bb6: $4c
	db $db                                           ; $5bb7: $db
	rst $38                                          ; $5bb8: $ff
	sbc [hl]                                         ; $5bb9: $9e
	ld d, a                                          ; $5bba: $57
	jp nc, Jump_04a_43ff                             ; $5bbb: $d2 $ff $43

	nop                                              ; $5bbe: $00
	adc $33                                          ; $5bbf: $ce $33
	sbc [hl]                                         ; $5bc1: $9e
	ld d, e                                          ; $5bc2: $53
	db $dd                                           ; $5bc3: $dd
	inc sp                                           ; $5bc4: $33
	rst SubAFromDE                                          ; $5bc5: $df
	ld d, l                                          ; $5bc6: $55
	ld [hl], a                                       ; $5bc7: $77
	or $7b                                           ; $5bc8: $f6 $7b
	push af                                          ; $5bca: $f5
	sbc d                                            ; $5bcb: $9a
	ld d, h                                          ; $5bcc: $54
	ld d, l                                          ; $5bcd: $55
	ld d, l                                          ; $5bce: $55
	ld b, l                                          ; $5bcf: $45
	halt                                             ; $5bd0: $76
	ld a, e                                          ; $5bd1: $7b
	ldh a, [$7f]                                     ; $5bd2: $f0 $7f
	push af                                          ; $5bd4: $f5
	sub h                                            ; $5bd5: $94
	ld d, h                                          ; $5bd6: $54
	ld b, h                                          ; $5bd7: $44
	ld b, h                                          ; $5bd8: $44
	ld d, l                                          ; $5bd9: $55
	ld [hl], e                                       ; $5bda: $73
	inc sp                                           ; $5bdb: $33
	ld [hl], $55                                     ; $5bdc: $36 $55
	ld d, l                                          ; $5bde: $55
	ld d, [hl]                                       ; $5bdf: $56
	ld h, h                                          ; $5be0: $64
	ld [hl], e                                       ; $5be1: $73
	or $de                                           ; $5be2: $f6 $de
	ld d, l                                          ; $5be4: $55
	sbc [hl]                                         ; $5be5: $9e
	ld d, h                                          ; $5be6: $54
	ld a, e                                          ; $5be7: $7b
	or $9d                                           ; $5be8: $f6 $9d
	ld b, h                                          ; $5bea: $44
	ld [hl], h                                       ; $5beb: $74
	ld [hl], a                                       ; $5bec: $77
	rst FarCall                                          ; $5bed: $f7
	call c, $9e44                                    ; $5bee: $dc $44 $9e
	halt                                             ; $5bf1: $76
	ld d, e                                          ; $5bf2: $53
	or $77                                           ; $5bf3: $f6 $77
	db $e4                                           ; $5bf5: $e4
	rst SubAFromDE                                          ; $5bf6: $df
	ld b, h                                          ; $5bf7: $44
	sbc h                                            ; $5bf8: $9c
	ld b, e                                          ; $5bf9: $43
	inc [hl]                                         ; $5bfa: $34

jr_04a_5bfb:
	ld h, [hl]                                       ; $5bfb: $66
	ld l, e                                          ; $5bfc: $6b
	or $de                                           ; $5bfd: $f6 $de
	ld b, h                                          ; $5bff: $44
	ld a, $87                                        ; $5c00: $3e $87
	adc h                                            ; $5c02: $8c
	ret nz                                           ; $5c03: $c0

	ld bc, $0500                                     ; $5c04: $01 $00 $05
	xor e                                            ; $5c07: $ab
	ld d, l                                          ; $5c08: $55
	xor e                                            ; $5c09: $ab
	ld d, a                                          ; $5c0a: $57
	rst $38                                          ; $5c0b: $ff
	cp $ff                                           ; $5c0c: $fe $ff
	ld a, [$aa54]                                    ; $5c0e: $fa $54 $aa
	ld d, h                                          ; $5c11: $54
	xor b                                            ; $5c12: $a8
	dec d                                            ; $5c13: $15
	xor d                                            ; $5c14: $aa
	ld d, l                                          ; $5c15: $55
	ld [hl], e                                       ; $5c16: $73
	cp $f9                                           ; $5c17: $fe $f9
	ld l, a                                          ; $5c19: $6f
	ldh a, [c]                                       ; $5c1a: $f2
	rra                                              ; $5c1b: $1f
	ldh a, [$98]                                     ; $5c1c: $f0 $98
	ld b, b                                          ; $5c1e: $40
	and b                                            ; $5c1f: $a0
	ld b, b                                          ; $5c20: $40
	and b                                            ; $5c21: $a0
	ld d, b                                          ; $5c22: $50
	xor b                                            ; $5c23: $a8
	ld d, h                                          ; $5c24: $54
	ld h, e                                          ; $5c25: $63
	ldh a, [$e0]                                     ; $5c26: $f0 $e0
	and c                                            ; $5c28: $a1
	sub h                                            ; $5c29: $94
	inc b                                            ; $5c2a: $04
	ld [bc], a                                       ; $5c2b: $02
	ld b, $03                                        ; $5c2c: $06 $03
	ld bc, $0103                                     ; $5c2e: $01 $03 $01
	ld [bc], a                                       ; $5c31: $02
	inc bc                                           ; $5c32: $03
	ld bc, $f801                                     ; $5c33: $01 $01 $f8
	ld [hl], a                                       ; $5c36: $77
	ld [hl], b                                       ; $5c37: $70
	db $dd                                           ; $5c38: $dd
	rst $38                                          ; $5c39: $ff
	ld [hl], a                                       ; $5c3a: $77
	ld h, a                                          ; $5c3b: $67
	sbc e                                            ; $5c3c: $9b
	ld b, $02                                        ; $5c3d: $06 $02
	dec b                                            ; $5c3f: $05
	dec hl                                           ; $5c40: $2b
	ld [hl], a                                       ; $5c41: $77
	ldh a, [$9b]                                     ; $5c42: $f0 $9b
	ld hl, sp-$04                                    ; $5c44: $f8 $fc
	ld a, [$77d4]                                    ; $5c46: $fa $d4 $77
	ldh a, [$fd]                                     ; $5c49: $f0 $fd
	sbc e                                            ; $5c4b: $9b
	add b                                            ; $5c4c: $80
	ret nz                                           ; $5c4d: $c0

	ld b, b                                          ; $5c4e: $40
	and b                                            ; $5c4f: $a0
	ei                                               ; $5c50: $fb
	sbc l                                            ; $5c51: $9d
	add b                                            ; $5c52: $80
	ld b, b                                          ; $5c53: $40
	ld [$0a9e], a                                    ; $5c54: $ea $9e $0a
	push af                                          ; $5c57: $f5
	sbc l                                            ; $5c58: $9d
	dec b                                            ; $5c59: $05
	ld a, [bc]                                       ; $5c5a: $0a
	ld e, a                                          ; $5c5b: $5f
	jr nz, jr_04a_5bfb                               ; $5c5c: $20 $9d

	dec d                                            ; $5c5e: $15
	ld a, [hl+]                                      ; $5c5f: $2a
	ld [hl], e                                       ; $5c60: $73
	db $10                                           ; $5c61: $10
	sbc [hl]                                         ; $5c62: $9e
	xor b                                            ; $5c63: $a8
	ld a, [$039e]                                    ; $5c64: $fa $9e $03
	ld l, e                                          ; $5c67: $6b
	nop                                              ; $5c68: $00
	ld sp, hl                                        ; $5c69: $f9
	sbc [hl]                                         ; $5c6a: $9e
	rst $38                                          ; $5c6b: $ff
	ld a, e                                          ; $5c6c: $7b
	db $fd                                           ; $5c6d: $fd
	ld a, a                                          ; $5c6e: $7f
	call nc, $ffde                                   ; $5c6f: $d4 $de $ff
	db $fc                                           ; $5c72: $fc
	ld [hl], d                                       ; $5c73: $72
	add sp, -$63                                     ; $5c74: $e8 $9d
	rst $38                                          ; $5c76: $ff
	cp a                                             ; $5c77: $bf
	ld c, e                                          ; $5c78: $4b
	ldh a, [$7f]                                     ; $5c79: $f0 $7f
	db $f4                                           ; $5c7b: $f4

Call_04a_5c7c:
	dec de                                           ; $5c7c: $1b
	ldh a, [$df]                                     ; $5c7d: $f0 $df
	ld bc, $f9df                                     ; $5c7f: $01 $df $f9
	sbc [hl]                                         ; $5c82: $9e
	add hl, bc                                       ; $5c83: $09
	sbc $c9                                          ; $5c84: $de $c9
	ld l, e                                          ; $5c86: $6b
	ld h, c                                          ; $5c87: $61
	rst SubAFromDE                                          ; $5c88: $df
	add b                                            ; $5c89: $80
	sbc h                                            ; $5c8a: $9c
	ret nc                                           ; $5c8b: $d0

	xor d                                            ; $5c8c: $aa
	push de                                          ; $5c8d: $d5
	ld [hl], a                                       ; $5c8e: $77
	cp $f6                                           ; $5c8f: $fe $f6
	sbc [hl]                                         ; $5c91: $9e
	ld d, b                                          ; $5c92: $50
	ld d, a                                          ; $5c93: $57
	adc a                                            ; $5c94: $8f
	db $fd                                           ; $5c95: $fd
	sbc [hl]                                         ; $5c96: $9e
	and b                                            ; $5c97: $a0
	ld c, e                                          ; $5c98: $4b
	ldh a, [$9b]                                     ; $5c99: $f0 $9b
	cpl                                              ; $5c9b: $2f
	ld c, a                                          ; $5c9c: $4f
	xor a                                            ; $5c9d: $af
	ld e, a                                          ; $5c9e: $5f
	db $fc                                           ; $5c9f: $fc
	sbc $07                                          ; $5ca0: $de $07
	ld [hl], e                                       ; $5ca2: $73
	ld l, e                                          ; $5ca3: $6b
	ld h, a                                          ; $5ca4: $67
	and b                                            ; $5ca5: $a0
	ld l, a                                          ; $5ca6: $6f
	ld hl, sp-$63                                    ; $5ca7: $f8 $9d
	ld [bc], a                                       ; $5ca9: $02
	ld d, l                                          ; $5caa: $55
	ld l, e                                          ; $5cab: $6b
	ldh a, [rPCM12]                                  ; $5cac: $f0 $76
	db $db                                           ; $5cae: $db
	ld a, [hl]                                       ; $5caf: $7e
	add $7a                                          ; $5cb0: $c6 $7a
	ld e, $5b                                        ; $5cb2: $1e $5b
	ldh a, [$9c]                                     ; $5cb4: $f0 $9c
	push de                                          ; $5cb6: $d5
	cp $7d                                           ; $5cb7: $fe $7d
	ld [hl], e                                       ; $5cb9: $73
	ld [hl], b                                       ; $5cba: $70
	sbc h                                            ; $5cbb: $9c
	ld a, [hl+]                                      ; $5cbc: $2a
	ld bc, $7302                                     ; $5cbd: $01 $02 $73
	ret z                                            ; $5cc0: $c8

	sbc h                                            ; $5cc1: $9c
	ld d, l                                          ; $5cc2: $55
	xor a                                            ; $5cc3: $af
	ld d, a                                          ; $5cc4: $57
	ld [hl], e                                       ; $5cc5: $73
	ldh a, [$9c]                                     ; $5cc6: $f0 $9c
	xor d                                            ; $5cc8: $aa
	ld d, b                                          ; $5cc9: $50
	xor b                                            ; $5cca: $a8
	ld [hl], e                                       ; $5ccb: $73
	ldh a, [$9b]                                     ; $5ccc: $f0 $9b
	push af                                          ; $5cce: $f5
	jp c, $feed                                      ; $5ccf: $da $ed $fe

	ld [hl], e                                       ; $5cd2: $73
	cp b                                             ; $5cd3: $b8
	sbc l                                            ; $5cd4: $9d
	jr nz, @+$12                                     ; $5cd5: $20 $10

	ld [hl], e                                       ; $5cd7: $73
	ldh a, [$9e]                                     ; $5cd8: $f0 $9e
	dec b                                            ; $5cda: $05
	ld [hl], a                                       ; $5cdb: $77
	ld [hl], e                                       ; $5cdc: $73
	sbc h                                            ; $5cdd: $9c
	ld [$eaf5], a                                    ; $5cde: $ea $f5 $ea
	ld l, [hl]                                       ; $5ce1: $6e
	xor b                                            ; $5ce2: $a8
	rst SubAFromDE                                          ; $5ce3: $df
	ret nz                                           ; $5ce4: $c0

	add hl, hl                                       ; $5ce5: $29
	ldh [$9e], a                                     ; $5ce6: $e0 $9e
	xor e                                            ; $5ce8: $ab
	ld sp, hl                                        ; $5ce9: $f9
	sub [hl]                                         ; $5cea: $96
	ld d, a                                          ; $5ceb: $57
	xor e                                            ; $5cec: $ab
	ld d, e                                          ; $5ced: $53
	xor e                                            ; $5cee: $ab
	ld e, e                                          ; $5cef: $5b
	cp e                                             ; $5cf0: $bb
	ei                                               ; $5cf1: $fb
	ei                                               ; $5cf2: $fb
	inc bc                                           ; $5cf3: $03
	jp c, $de07                                      ; $5cf4: $da $07 $de

	rst $38                                          ; $5cf7: $ff
	sbc d                                            ; $5cf8: $9a
	db $fc                                           ; $5cf9: $fc
	ld hl, sp-$10                                    ; $5cfa: $f8 $f0
	ldh a, [$e6]                                     ; $5cfc: $f0 $e6
	sbc $ff                                          ; $5cfe: $de $ff
	call c, $9ee0                                    ; $5d00: $dc $e0 $9e
	rst SubAFromDE                                          ; $5d03: $df
	sbc $ff                                          ; $5d04: $de $ff
	sbc e                                            ; $5d06: $9b
	adc l                                            ; $5d07: $8d
	nop                                              ; $5d08: $00
	rlca                                             ; $5d09: $07
	add a                                            ; $5d0a: $87
	ld [hl], a                                       ; $5d0b: $77
	jp z, $058a                                      ; $5d0c: $ca $8a $05

	nop                                              ; $5d0f: $00
	dec b                                            ; $5d10: $05
	add d                                            ; $5d11: $82
	rst GetHLinHL                                          ; $5d12: $cf
	add sp, -$01                                     ; $5d13: $e8 $ff
	rst $38                                          ; $5d15: $ff
	ld sp, hl                                        ; $5d16: $f9
	ld [hl], e                                       ; $5d17: $73
	rst $38                                          ; $5d18: $ff
	ld hl, sp+$45                                    ; $5d19: $f8 $45
	xor b                                            ; $5d1b: $a8
	ld d, l                                          ; $5d1c: $55
	xor d                                            ; $5d1d: $aa
	ld d, c                                          ; $5d1e: $51
	ld [hl+], a                                      ; $5d1f: $22
	ld d, b                                          ; $5d20: $50
	xor b                                            ; $5d21: $a8
	cp $de                                           ; $5d22: $fe $de
	rst $38                                          ; $5d24: $ff
	sbc d                                            ; $5d25: $9a
	ld sp, hl                                        ; $5d26: $f9
	jp Jump_04a_7b7f                                 ; $5d27: $c3 $7f $7b


	ld b, h                                          ; $5d2a: $44
	ld a, e                                          ; $5d2b: $7b
	ldh [$9b], a                                     ; $5d2c: $e0 $9b
	ld d, c                                          ; $5d2e: $51
	add d                                            ; $5d2f: $82
	ld bc, $d910                                     ; $5d30: $01 $10 $d9
	rst $38                                          ; $5d33: $ff
	ld h, a                                          ; $5d34: $67
	adc b                                            ; $5d35: $88
	reti                                             ; $5d36: $d9


	ret                                              ; $5d37: $c9


	ld a, [hl]                                       ; $5d38: $7e
	add $6f                                          ; $5d39: $c6 $6f
	cp $6e                                           ; $5d3b: $fe $6e
	jp nz, $c05e                                     ; $5d3d: $c2 $5e $c0

	ld l, e                                          ; $5d40: $6b
	reti                                             ; $5d41: $d9


	ld h, d                                          ; $5d42: $62
	ret nc                                           ; $5d43: $d0

	ld l, a                                          ; $5d44: $6f
	ldh a, [c]                                       ; $5d45: $f2
	sbc l                                            ; $5d46: $9d
	xor a                                            ; $5d47: $af
	ld a, a                                          ; $5d48: $7f
	ld sp, hl                                        ; $5d49: $f9
	ld a, [hl]                                       ; $5d4a: $7e
	add $77                                          ; $5d4b: $c6 $77
	cp $9d                                           ; $5d4d: $fe $9d
	rst AddAOntoHL                                          ; $5d4f: $ef
	rst $38                                          ; $5d50: $ff
	reti                                             ; $5d51: $d9


	rlca                                             ; $5d52: $07
	reti                                             ; $5d53: $d9


	rst $38                                          ; $5d54: $ff
	sbc [hl]                                         ; $5d55: $9e
	add b                                            ; $5d56: $80
	sbc $9f                                          ; $5d57: $de $9f
	sbc e                                            ; $5d59: $9b
	sbc e                                            ; $5d5a: $9b
	sbc a                                            ; $5d5b: $9f
	sbc [hl]                                         ; $5d5c: $9e
	sub l                                            ; $5d5d: $95
	reti                                             ; $5d5e: $d9


	rst $38                                          ; $5d5f: $ff
	ld a, e                                          ; $5d60: $7b
	inc bc                                           ; $5d61: $03
	sbc d                                            ; $5d62: $9a
	ei                                               ; $5d63: $fb
	rst $38                                          ; $5d64: $ff
	db $fd                                           ; $5d65: $fd
	ld [$5b7d], a                                    ; $5d66: $ea $7d $5b
	ldh a, [$9a]                                     ; $5d69: $f0 $9a
	cp $f5                                           ; $5d6b: $fe $f5
	and d                                            ; $5d6d: $a2
	inc bc                                           ; $5d6e: $03
	jr nc, jr_04a_5dd4                               ; $5d6f: $30 $63

	ldh a, [$98]                                     ; $5d71: $f0 $98
	cp e                                             ; $5d73: $bb
	ld [hl], a                                       ; $5d74: $77
	xor [hl]                                         ; $5d75: $ae
	ld e, l                                          ; $5d76: $5d
	xor d                                            ; $5d77: $aa
	ld d, b                                          ; $5d78: $50
	ld a, [bc]                                       ; $5d79: $0a
	ld h, e                                          ; $5d7a: $63
	ldh a, [$98]                                     ; $5d7b: $f0 $98
	cp [hl]                                          ; $5d7d: $be
	ld a, a                                          ; $5d7e: $7f
	rst $38                                          ; $5d7f: $ff
	ld a, [hl]                                       ; $5d80: $7e
	ld a, l                                          ; $5d81: $7d
	db $db                                           ; $5d82: $db
	xor e                                            ; $5d83: $ab
	reti                                             ; $5d84: $d9


	rst $38                                          ; $5d85: $ff
	adc a                                            ; $5d86: $8f
	dec b                                            ; $5d87: $05
	xor [hl]                                         ; $5d88: $ae
	ld d, l                                          ; $5d89: $55
	and [hl]                                         ; $5d8a: $a6
	ld a, a                                          ; $5d8b: $7f
	rst $38                                          ; $5d8c: $ff
	rst SubAFromDE                                          ; $5d8d: $df
	push hl                                          ; $5d8e: $e5
	push af                                          ; $5d8f: $f5
	ld [$cbf5], a                                    ; $5d90: $ea $f5 $cb
	rst $38                                          ; $5d93: $ff
	rst SubAFromDE                                          ; $5d94: $df
	rst AddAOntoHL                                          ; $5d95: $ef
	rst SubAFromHL                                          ; $5d96: $d7
	sbc $c0                                          ; $5d97: $de $c0
	sub a                                            ; $5d99: $97
	ldh [$c0], a                                     ; $5d9a: $e0 $c0
	ldh [$d0], a                                     ; $5d9c: $e0 $d0
	add sp, $55                                      ; $5d9e: $e8 $55
	xor d                                            ; $5da0: $aa
	ld e, a                                          ; $5da1: $5f
	ld l, a                                          ; $5da2: $6f
	ret nc                                           ; $5da3: $d0

	ld a, [$f26f]                                    ; $5da4: $fa $6f $f2
	ld e, a                                          ; $5da7: $5f
	ldh a, [$da]                                     ; $5da8: $f0 $da
	ei                                               ; $5daa: $fb
	sbc [hl]                                         ; $5dab: $9e
	di                                               ; $5dac: $f3
	jp c, $9c07                                      ; $5dad: $da $07 $9c

	rrca                                             ; $5db0: $0f
	and $ee                                          ; $5db1: $e6 $ee
	sbc $ef                                          ; $5db3: $de $ef
	sbc $ff                                          ; $5db5: $de $ff
	reti                                             ; $5db7: $d9


	ret nz                                           ; $5db8: $c0

	ld a, d                                          ; $5db9: $7a
	or d                                             ; $5dba: $b2
	sbc [hl]                                         ; $5dbb: $9e
	ldh a, [c]                                       ; $5dbc: $f2
	ld [hl], d                                       ; $5dbd: $72
	adc b                                            ; $5dbe: $88
	sbc h                                            ; $5dbf: $9c
	xor b                                            ; $5dc0: $a8
	ld d, b                                          ; $5dc1: $50
	and d                                            ; $5dc2: $a2
	db $fd                                           ; $5dc3: $fd
	sbc d                                            ; $5dc4: $9a
	ldh a, [rAUD4LEN]                                ; $5dc5: $f0 $20
	ldh [rIE], a                                     ; $5dc7: $e0 $ff
	rra                                              ; $5dc9: $1f
	ld [hl], l                                       ; $5dca: $75
	bit 7, h                                         ; $5dcb: $cb $7c
	ld h, [hl]                                       ; $5dcd: $66
	sbc [hl]                                         ; $5dce: $9e
	or l                                             ; $5dcf: $b5
	ld [hl], l                                       ; $5dd0: $75
	dec hl                                           ; $5dd1: $2b
	sbc e                                            ; $5dd2: $9b
	ld sp, hl                                        ; $5dd3: $f9

jr_04a_5dd4:
	ld a, h                                          ; $5dd4: $7c
	db $fc                                           ; $5dd5: $fc
	ei                                               ; $5dd6: $fb
	ld [hl], a                                       ; $5dd7: $77
	or e                                             ; $5dd8: $b3
	sbc e                                            ; $5dd9: $9b
	add hl, hl                                       ; $5dda: $29
	nop                                              ; $5ddb: $00
	xor b                                            ; $5ddc: $a8
	ld d, c                                          ; $5ddd: $51
	halt                                             ; $5dde: $76
	ld e, e                                          ; $5ddf: $5b
	rst SubAFromDE                                          ; $5de0: $df
	rst $38                                          ; $5de1: $ff
	sbc c                                            ; $5de2: $99
	ld a, a                                          ; $5de3: $7f
	dec bc                                           ; $5de4: $0b
	ret nz                                           ; $5de5: $c0

	nop                                              ; $5de6: $00
	inc bc                                           ; $5de7: $03
	ld d, $7a                                        ; $5de8: $16 $7a
	ei                                               ; $5dea: $fb
	sbc l                                            ; $5deb: $9d
	ld a, [bc]                                       ; $5dec: $0a
	add b                                            ; $5ded: $80
	ld a, c                                          ; $5dee: $79
	db $e4                                           ; $5def: $e4
	db $dd                                           ; $5df0: $dd
	ret                                              ; $5df1: $c9


	sbc e                                            ; $5df2: $9b
	add hl, bc                                       ; $5df3: $09
	ei                                               ; $5df4: $fb
	rst $38                                          ; $5df5: $ff
	rst $38                                          ; $5df6: $ff
	halt                                             ; $5df7: $76
	call nz, $c37f                                   ; $5df8: $c4 $7f $c3
	sbc d                                            ; $5dfb: $9a
	inc a                                            ; $5dfc: $3c
	ld a, [hl]                                       ; $5dfd: $7e
	ld [$ead5], a                                    ; $5dfe: $ea $d5 $ea
	sbc $ff                                          ; $5e01: $de $ff
	sbc l                                            ; $5e03: $9d
	ld a, a                                          ; $5e04: $7f
	cp $68                                           ; $5e05: $fe $68
	ret nc                                           ; $5e07: $d0

	sbc l                                            ; $5e08: $9d
	ld bc, $6fab                                     ; $5e09: $01 $ab $6f
	ld l, a                                          ; $5e0c: $6f
	ld l, e                                          ; $5e0d: $6b
	ldh a, [$9d]                                     ; $5e0e: $f0 $9d
	nop                                              ; $5e10: $00
	ld bc, $ffda                                     ; $5e11: $01 $da $ff
	ld h, e                                          ; $5e14: $63
	ldh a, [$7f]                                     ; $5e15: $f0 $7f
	ld [hl], h                                       ; $5e17: $74
	ld a, e                                          ; $5e18: $7b
	ld [hl], d                                       ; $5e19: $72
	sbc h                                            ; $5e1a: $9c
	rst FarCall                                          ; $5e1b: $f7
	rst $38                                          ; $5e1c: $ff
	rst FarCall                                          ; $5e1d: $f7
	ld l, a                                          ; $5e1e: $6f
	ld h, d                                          ; $5e1f: $62
	ld a, a                                          ; $5e20: $7f
	cp $d9                                           ; $5e21: $fe $d9
	rst $38                                          ; $5e23: $ff
	sub a                                            ; $5e24: $97
	sbc d                                            ; $5e25: $9a
	sub h                                            ; $5e26: $94
	sbc b                                            ; $5e27: $98
	sub h                                            ; $5e28: $94
	adc c                                            ; $5e29: $89

jr_04a_5e2a:
	sub e                                            ; $5e2a: $93
	add e                                            ; $5e2b: $83
	sub c                                            ; $5e2c: $91
	reti                                             ; $5e2d: $d9


	rst $38                                          ; $5e2e: $ff
	sub d                                            ; $5e2f: $92
	cp [hl]                                          ; $5e30: $be
	rst FarCall                                          ; $5e31: $f7
	ei                                               ; $5e32: $fb
	ld e, e                                          ; $5e33: $5b
	ei                                               ; $5e34: $fb
	db $fd                                           ; $5e35: $fd
	ld e, a                                          ; $5e36: $5f
	rst SubAFromDE                                          ; $5e37: $df
	rst $38                                          ; $5e38: $ff
	cp $fc                                           ; $5e39: $fe $fc
	ld hl, sp-$04                                    ; $5e3b: $f8 $fc
	ld a, d                                          ; $5e3d: $7a
	dec hl                                           ; $5e3e: $2b
	rst SubAFromDE                                          ; $5e3f: $df
	db $e4                                           ; $5e40: $e4
	adc c                                            ; $5e41: $89
	ld hl, sp-$70                                    ; $5e42: $f8 $90
	add b                                            ; $5e44: $80
	add b                                            ; $5e45: $80
	ld hl, sp-$39                                    ; $5e46: $f8 $c7
	rst $38                                          ; $5e48: $ff
	ccf                                              ; $5e49: $3f
	rrca                                             ; $5e4a: $0f
	rlca                                             ; $5e4b: $07
	ld b, $fc                                        ; $5e4c: $06 $fc
	rst $38                                          ; $5e4e: $ff
	rst $38                                          ; $5e4f: $ff
	inc e                                            ; $5e50: $1c
	ld [$0200], sp                                   ; $5e51: $08 $00 $02
	nop                                              ; $5e54: $00
	nop                                              ; $5e55: $00
	inc d                                            ; $5e56: $14
	ld a, [$ffdc]                                    ; $5e57: $fa $dc $ff
	sbc d                                            ; $5e5a: $9a
	ccf                                              ; $5e5b: $3f
	rst $38                                          ; $5e5c: $ff
	rst GetHLinHL                                          ; $5e5d: $cf
	ld b, l                                          ; $5e5e: $45
	ld [$ef7b], sp                                   ; $5e5f: $08 $7b $ef
	sbc h                                            ; $5e62: $9c
	inc bc                                           ; $5e63: $03
	ld b, d                                          ; $5e64: $42
	or h                                             ; $5e65: $b4
	ld a, e                                          ; $5e66: $7b
	di                                               ; $5e67: $f3
	sbc [hl]                                         ; $5e68: $9e
	sbc a                                            ; $5e69: $9f
	db $dd                                           ; $5e6a: $dd
	rst $38                                          ; $5e6b: $ff
	adc [hl]                                         ; $5e6c: $8e
	di                                               ; $5e6d: $f3
	ld a, a                                          ; $5e6e: $7f
	rra                                              ; $5e6f: $1f
	rra                                              ; $5e70: $1f
	rst SubAFromDE                                          ; $5e71: $df
	push af                                          ; $5e72: $f5
	add b                                            ; $5e73: $80
	nop                                              ; $5e74: $00
	db $eb                                           ; $5e75: $eb
	push de                                          ; $5e76: $d5
	ld [$cad5], a                                    ; $5e77: $ea $d5 $ca
	push hl                                          ; $5e7a: $e5
	ld a, [$d4fd]                                    ; $5e7b: $fa $fd $d4
	ld a, e                                          ; $5e7e: $7b
	ld d, a                                          ; $5e7f: $57
	sbc h                                            ; $5e80: $9c
	push af                                          ; $5e81: $f5
	ld a, [$75fd]                                    ; $5e82: $fa $fd $75
	pop hl                                           ; $5e85: $e1
	ld a, e                                          ; $5e86: $7b
	ld d, c                                          ; $5e87: $51
	sbc [hl]                                         ; $5e88: $9e
	cp d                                             ; $5e89: $ba
	ld l, [hl]                                       ; $5e8a: $6e
	jr nz, jr_04a_5e2a                               ; $5e8b: $20 $9d

	add b                                            ; $5e8d: $80
	ld b, l                                          ; $5e8e: $45
	ld a, c                                          ; $5e8f: $79
	dec l                                            ; $5e90: $2d
	sbc h                                            ; $5e91: $9c
	cp $fd                                           ; $5e92: $fe $fd
	ld [$1072], a                                    ; $5e94: $ea $72 $10
	ld [hl], c                                       ; $5e97: $71
	ld d, $9c                                        ; $5e98: $16 $9c
	xor d                                            ; $5e9a: $aa
	db $eb                                           ; $5e9b: $eb
	db $d3                                           ; $5e9c: $d3
	ld a, c                                          ; $5e9d: $79
	ld a, a                                          ; $5e9e: $7f
	ld a, e                                          ; $5e9f: $7b
	cp $9b                                           ; $5ea0: $fe $9b
	rla                                              ; $5ea2: $17
	cpl                                              ; $5ea3: $2f
	ld d, a                                          ; $5ea4: $57
	xor a                                            ; $5ea5: $af
	ld [hl], a                                       ; $5ea6: $77
	cp $9b                                           ; $5ea7: $fe $9b
	xor $fe                                          ; $5ea9: $ee $fe
	db $fc                                           ; $5eab: $fc
	db $fd                                           ; $5eac: $fd
	sbc $ff                                          ; $5ead: $de $ff
	sbc l                                            ; $5eaf: $9d
	db $fd                                           ; $5eb0: $fd
	ret nz                                           ; $5eb1: $c0

	jp c, Jump_04a_7780                              ; $5eb2: $da $80 $77

	inc a                                            ; $5eb5: $3c
	ld [hl], h                                       ; $5eb6: $74
	ld l, l                                          ; $5eb7: $6d
	rst FarCall                                          ; $5eb8: $f7
	sbc h                                            ; $5eb9: $9c
	ld bc, $bff7                                     ; $5eba: $01 $f7 $bf

jr_04a_5ebd:
	ld e, e                                          ; $5ebd: $5b
	ldh a, [$9d]                                     ; $5ebe: $f0 $9d
	inc bc                                           ; $5ec0: $03
	ld a, a                                          ; $5ec1: $7f
	ld d, d                                          ; $5ec2: $52
	ld [hl], c                                       ; $5ec3: $71
	sbc l                                            ; $5ec4: $9d
	nop                                              ; $5ec5: $00
	rst FarCall                                          ; $5ec6: $f7
	halt                                             ; $5ec7: $76
	add e                                            ; $5ec8: $83
	ld a, a                                          ; $5ec9: $7f
	pop bc                                           ; $5eca: $c1
	sbc [hl]                                         ; $5ecb: $9e
	dec bc                                           ; $5ecc: $0b
	db $db                                           ; $5ecd: $db
	inc bc                                           ; $5ece: $03
	sbc l                                            ; $5ecf: $9d
	dec b                                            ; $5ed0: $05
	dec bc                                           ; $5ed1: $0b
	ld a, e                                          ; $5ed2: $7b
	nop                                              ; $5ed3: $00
	sub c                                            ; $5ed4: $91
	rst SubAFromDE                                          ; $5ed5: $df
	rst FarCall                                          ; $5ed6: $f7
	xor a                                            ; $5ed7: $af
	rst AddAOntoHL                                          ; $5ed8: $ef
	rst GetHLinHL                                          ; $5ed9: $cf
	rst JumpTable                                          ; $5eda: $c7
	xor $85                                          ; $5edb: $ee $85
	adc d                                            ; $5edd: $8a
	dec e                                            ; $5ede: $1d
	cp [hl]                                          ; $5edf: $be
	inc bc                                           ; $5ee0: $03
	ret nz                                           ; $5ee1: $c0

	ld [hl], l                                       ; $5ee2: $75
	ld [hl], c                                       ; $5ee3: $71
	sbc a                                            ; $5ee4: $9f
	sbc h                                            ; $5ee5: $9c
	push de                                          ; $5ee6: $d5
	jp nz, Jump_04a_6d8a                             ; $5ee7: $c2 $8a $6d

	adc b                                            ; $5eea: $88
	sbc [hl]                                         ; $5eeb: $9e
	db $fd                                           ; $5eec: $fd
	ld h, l                                          ; $5eed: $65
	ld e, b                                          ; $5eee: $58
	ld h, l                                          ; $5eef: $65
	ld a, b                                          ; $5ef0: $78
	ld b, a                                          ; $5ef1: $47
	ldh a, [$9d]                                     ; $5ef2: $f0 $9d
	ld d, a                                          ; $5ef4: $57
	and a                                            ; $5ef5: $a7
	ld l, a                                          ; $5ef6: $6f
	cp $6d                                           ; $5ef7: $fe $6d
	ld a, b                                          ; $5ef9: $78
	ld a, a                                          ; $5efa: $7f
	cp $9b                                           ; $5efb: $fe $9b
	set 0, e                                         ; $5efd: $cb $c3
	jp $ddc1                                         ; $5eff: $c3 $c1 $dd


	rst $38                                          ; $5f02: $ff
	sbc b                                            ; $5f03: $98
	db $f4                                           ; $5f04: $f4
	cp l                                             ; $5f05: $bd
	db $fd                                           ; $5f06: $fd
	cp [hl]                                          ; $5f07: $be
	ret nz                                           ; $5f08: $c0

	add b                                            ; $5f09: $80
	rst $38                                          ; $5f0a: $ff
	ld a, c                                          ; $5f0b: $79
	ret nz                                           ; $5f0c: $c0

	sbc l                                            ; $5f0d: $9d
	cp $e0                                           ; $5f0e: $fe $e0
	ld [hl], a                                       ; $5f10: $77
	dec de                                           ; $5f11: $1b
	sub l                                            ; $5f12: $95
	ld e, a                                          ; $5f13: $5f
	cp [hl]                                          ; $5f14: $be
	add c                                            ; $5f15: $81
	rra                                              ; $5f16: $1f
	ld bc, $f500                                     ; $5f17: $01 $00 $f5
	ld a, a                                          ; $5f1a: $7f
	rst FarCall                                          ; $5f1b: $f7
	ret nz                                           ; $5f1c: $c0

	ld l, h                                          ; $5f1d: $6c
	jr z, jr_04a_5ebd                                ; $5f1e: $28 $9d

	db $eb                                           ; $5f20: $eb
	ccf                                              ; $5f21: $3f
	ld [hl], a                                       ; $5f22: $77
	ld l, d                                          ; $5f23: $6a
	ld a, b                                          ; $5f24: $78
	ld [hl], $9c                                     ; $5f25: $36 $9c
	cp a                                             ; $5f27: $bf
	nop                                              ; $5f28: $00
	rlca                                             ; $5f29: $07
	ld [hl], b                                       ; $5f2a: $70
	ld h, a                                          ; $5f2b: $67
	sbc h                                            ; $5f2c: $9c
	ld b, b                                          ; $5f2d: $40
	rst $38                                          ; $5f2e: $ff
	ld hl, sp+$73                                    ; $5f2f: $f8 $73
	ldh a, [$9c]                                     ; $5f31: $f0 $9c
	rrca                                             ; $5f33: $0f
	rra                                              ; $5f34: $1f
	cp a                                             ; $5f35: $bf
	ld [hl], a                                       ; $5f36: $77
	ld c, l                                          ; $5f37: $4d
	sub a                                            ; $5f38: $97
	xor d                                            ; $5f39: $aa
	ld sp, hl                                        ; $5f3a: $f9
	ldh a, [rHDMA1]                                  ; $5f3b: $f0 $51
	and b                                            ; $5f3d: $a0
	ld b, l                                          ; $5f3e: $45
	adc e                                            ; $5f3f: $8b
	rla                                              ; $5f40: $17
	ld h, c                                          ; $5f41: $61
	ld [hl], b                                       ; $5f42: $70
	sbc [hl]                                         ; $5f43: $9e
	inc d                                            ; $5f44: $14
	ld a, e                                          ; $5f45: $7b
	sub d                                            ; $5f46: $92
	ld a, l                                          ; $5f47: $7d
	add e                                            ; $5f48: $83
	sbc [hl]                                         ; $5f49: $9e
	push de                                          ; $5f4a: $d5
	reti                                             ; $5f4b: $d9


	cp $92                                           ; $5f4c: $fe $92
	add a                                            ; $5f4e: $87
	ld d, a                                          ; $5f4f: $57
	db $eb                                           ; $5f50: $eb
	ld d, a                                          ; $5f51: $57
	db $eb                                           ; $5f52: $eb
	rst SubAFromHL                                          ; $5f53: $d7
	db $eb                                           ; $5f54: $eb
	rst SubAFromHL                                          ; $5f55: $d7
	adc d                                            ; $5f56: $8a
	ld b, l                                          ; $5f57: $45
	adc d                                            ; $5f58: $8a
	dec b                                            ; $5f59: $05
	add d                                            ; $5f5a: $82
	cp $9b                                           ; $5f5b: $fe $9b
	ld [hl], l                                       ; $5f5d: $75
	cp d                                             ; $5f5e: $ba
	ld [hl], l                                       ; $5f5f: $75
	ld a, [$2375]                                    ; $5f60: $fa $75 $23
	ld a, e                                          ; $5f63: $7b
	jp c, $549d                                      ; $5f64: $da $9d $54

	and b                                            ; $5f67: $a0
	ld l, h                                          ; $5f68: $6c
	jr c, jr_04a_5fdd                                ; $5f69: $38 $72

	dec b                                            ; $5f6b: $05
	ld a, [hl]                                       ; $5f6c: $7e
	add $9e                                          ; $5f6d: $c6 $9e
	add e                                            ; $5f6f: $83
	call c, $7e03                                    ; $5f70: $dc $03 $7e
	add $6e                                          ; $5f73: $c6 $6e
	rst FarCall                                          ; $5f75: $f7
	sbc e                                            ; $5f76: $9b
	db $fd                                           ; $5f77: $fd
	pop bc                                           ; $5f78: $c1
	jp $dddb                                         ; $5f79: $c3 $db $dd


	jp $809e                                         ; $5f7c: $c3 $9e $80


	db $db                                           ; $5f7f: $db
	add c                                            ; $5f80: $81
	sbc [hl]                                         ; $5f81: $9e
	add e                                            ; $5f82: $83
	ld [hl], a                                       ; $5f83: $77
	ld [hl], e                                       ; $5f84: $73

Jump_04a_5f85:
	db $fd                                           ; $5f85: $fd
	ld a, b                                          ; $5f86: $78
	rst AddAOntoHL                                          ; $5f87: $ef
	ld [hl], e                                       ; $5f88: $73
	ld a, c                                          ; $5f89: $79
	ld a, e                                          ; $5f8a: $7b
	or $9e                                           ; $5f8b: $f6 $9e
	jr nc, jr_04a_5fda                               ; $5f8d: $30 $4b

	ldh a, [$fc]                                     ; $5f8f: $f0 $fc
	ld a, a                                          ; $5f91: $7f
	ld a, [$e09e]                                    ; $5f92: $fa $9e $e0
	ld [hl], e                                       ; $5f95: $73
	ldh a, [$9c]                                     ; $5f96: $f0 $9c
	ld a, [bc]                                       ; $5f98: $0a
	inc e                                            ; $5f99: $1c
	db $fd                                           ; $5f9a: $fd
	db $dd                                           ; $5f9b: $dd
	rla                                              ; $5f9c: $17
	sub l                                            ; $5f9d: $95
	rra                                              ; $5f9e: $1f
	ld [$1408], sp                                   ; $5f9f: $08 $08 $14
	db $10                                           ; $5fa2: $10
	ldh a, [$f0]                                     ; $5fa3: $f0 $f0
	ldh a, [c]                                       ; $5fa5: $f2
	di                                               ; $5fa6: $f3
	sbc a                                            ; $5fa7: $9f
	ld a, d                                          ; $5fa8: $7a
	sub e                                            ; $5fa9: $93
	ld [hl], b                                       ; $5faa: $70
	sub b                                            ; $5fab: $90
	rst SubAFromDE                                          ; $5fac: $df
	adc b                                            ; $5fad: $88
	sbc d                                            ; $5fae: $9a

Jump_04a_5faf:
	sbc h                                            ; $5faf: $9c
	add h                                            ; $5fb0: $84
	add h                                            ; $5fb1: $84
	adc [hl]                                         ; $5fb2: $8e
	add c                                            ; $5fb3: $81
	sbc $40                                          ; $5fb4: $de $40
	sbc d                                            ; $5fb6: $9a
	ld h, b                                          ; $5fb7: $60
	ldh [$e0], a                                     ; $5fb8: $e0 $e0
	ldh a, [$f8]                                     ; $5fba: $f0 $f8
	ld [hl], d                                       ; $5fbc: $72
	add hl, hl                                       ; $5fbd: $29
	sbc h                                            ; $5fbe: $9c
	ld l, a                                          ; $5fbf: $6f
	ccf                                              ; $5fc0: $3f
	sbc e                                            ; $5fc1: $9b
	ld h, h                                          ; $5fc2: $64
	ld b, a                                          ; $5fc3: $47
	ld a, d                                          ; $5fc4: $7a
	daa                                              ; $5fc5: $27
	call c, $9eff                                    ; $5fc6: $dc $ff $9e
	ld d, l                                          ; $5fc9: $55
	ld [hl], a                                       ; $5fca: $77
	ld h, e                                          ; $5fcb: $63
	ld [hl], a                                       ; $5fcc: $77
	ldh a, [rBCPS]                                   ; $5fcd: $f0 $68
	rst SubAFromHL                                          ; $5fcf: $d7
	sbc [hl]                                         ; $5fd0: $9e
	ld d, e                                          ; $5fd1: $53
	halt                                             ; $5fd2: $76
	ld a, $74                                        ; $5fd3: $3e $74
	jr c, @+$71                                      ; $5fd5: $38 $6f

	ld h, c                                          ; $5fd7: $61
	ld h, d                                          ; $5fd8: $62
	ld d, [hl]                                       ; $5fd9: $56

jr_04a_5fda:
	ret c                                            ; $5fda: $d8

	rst $38                                          ; $5fdb: $ff
	scf                                              ; $5fdc: $37

jr_04a_5fdd:
	ldh a, [$9c]                                     ; $5fdd: $f0 $9c
	ld a, [de]                                       ; $5fdf: $1a
	ld d, $67                                        ; $5fe0: $16 $67
	call c, $9aff                                    ; $5fe2: $dc $ff $9a
	pop hl                                           ; $5fe5: $e1
	jp hl                                            ; $5fe6: $e9


	sbc b                                            ; $5fe7: $98
	rst $38                                          ; $5fe8: $ff
	ld bc, $7cfc                                     ; $5fe9: $01 $fc $7c
	cp b                                             ; $5fec: $b8
	db $db                                           ; $5fed: $db
	rst $38                                          ; $5fee: $ff
	halt                                             ; $5fef: $76
	xor d                                            ; $5ff0: $aa
	sbc [hl]                                         ; $5ff1: $9e
	ld [hl], a                                       ; $5ff2: $77
	ld [hl], l                                       ; $5ff3: $75
	ld [hl], $7d                                     ; $5ff4: $36 $7d
	push de                                          ; $5ff6: $d5
	sbc [hl]                                         ; $5ff7: $9e
	xor [hl]                                         ; $5ff8: $ae
	ld a, c                                          ; $5ff9: $79
	or [hl]                                          ; $5ffa: $b6
	ld a, l                                          ; $5ffb: $7d
	db $d3                                           ; $5ffc: $d3
	reti                                             ; $5ffd: $d9


	rst $38                                          ; $5ffe: $ff

Jump_04a_5fff:
	ld a, c                                          ; $5fff: $79
	sub c                                            ; $6000: $91
	sbc d                                            ; $6001: $9a
	ld d, l                                          ; $6002: $55
	ld a, [hl+]                                      ; $6003: $2a
	dec d                                            ; $6004: $15
	adc d                                            ; $6005: $8a
	inc d                                            ; $6006: $14
	reti                                             ; $6007: $d9


	db $fc                                           ; $6008: $fc
	sub a                                            ; $6009: $97
	rst AddAOntoHL                                          ; $600a: $ef
	ld e, a                                          ; $600b: $5f
	cp a                                             ; $600c: $bf
	ld e, a                                          ; $600d: $5f
	xor a                                            ; $600e: $af
	ld b, a                                          ; $600f: $47
	adc a                                            ; $6010: $8f
	rla                                              ; $6011: $17
	ld sp, hl                                        ; $6012: $f9
	ld d, a                                          ; $6013: $57
	and c                                            ; $6014: $a1
	sbc e                                            ; $6015: $9b
	dec c                                            ; $6016: $0d
	inc de                                           ; $6017: $13
	ld de, $dd6b                                     ; $6018: $11 $6b $dd
	rst $38                                          ; $601b: $ff
	sbc e                                            ; $601c: $9b
	ldh a, [$ec]                                     ; $601d: $f0 $ec
	db $ec                                           ; $601f: $ec
	sbc h                                            ; $6020: $9c
	db $dd                                           ; $6021: $dd
	inc bc                                           ; $6022: $03
	ld d, a                                          ; $6023: $57
	and b                                            ; $6024: $a0
	sbc [hl]                                         ; $6025: $9e
	add a                                            ; $6026: $87
	ld l, e                                          ; $6027: $6b
	call c, $ffd9                                    ; $6028: $dc $d9 $ff
	sbc h                                            ; $602b: $9c
	ret nz                                           ; $602c: $c0

	db $fc                                           ; $602d: $fc
	ld a, a                                          ; $602e: $7f
	ld [hl], a                                       ; $602f: $77
	ldh [$9c], a                                     ; $6030: $e0 $9c
	nop                                              ; $6032: $00
	ccf                                              ; $6033: $3f
	rra                                              ; $6034: $1f
	ld h, a                                          ; $6035: $67
	ret nz                                           ; $6036: $c0

	ld a, a                                          ; $6037: $7f
	push de                                          ; $6038: $d5
	sbc [hl]                                         ; $6039: $9e
	ccf                                              ; $603a: $3f
	ld c, a                                          ; $603b: $4f
	or b                                             ; $603c: $b0
	ld l, e                                          ; $603d: $6b
	ei                                               ; $603e: $fb
	db $db                                           ; $603f: $db
	rst $38                                          ; $6040: $ff
	sub l                                            ; $6041: $95
	add hl, de                                       ; $6042: $19
	jr jr_04a_605d                                   ; $6043: $18 $18

	ldh a, [$f2]                                     ; $6045: $f0 $f2
	ld [hl], d                                       ; $6047: $72
	pop af                                           ; $6048: $f1
	ld [hl], b                                       ; $6049: $70
	ld hl, sp-$18                                    ; $604a: $f8 $e8
	sbc $f0                                          ; $604c: $de $f0
	adc a                                            ; $604e: $8f
	add b                                            ; $604f: $80
	ld b, d                                          ; $6050: $42
	pop af                                           ; $6051: $f1
	add c                                            ; $6052: $81
	cp $fe                                           ; $6053: $fe $fe
	ld b, $06                                        ; $6055: $06 $06
	inc bc                                           ; $6057: $03
	inc bc                                           ; $6058: $03
	add e                                            ; $6059: $83
	add b                                            ; $605a: $80
	add e                                            ; $605b: $83
	ld a, a                                          ; $605c: $7f

jr_04a_605d:
	inc bc                                           ; $605d: $03
	inc bc                                           ; $605e: $03
	sbc $01                                          ; $605f: $de $01
	add [hl]                                         ; $6061: $86
	db $fc                                           ; $6062: $fc
	ld a, h                                          ; $6063: $7c

jr_04a_6064:
	ld e, $1f                                        ; $6064: $1e $1f
	rrca                                             ; $6066: $0f
	rrca                                             ; $6067: $0f
	add hl, bc                                       ; $6068: $09
	inc c                                            ; $6069: $0c
	adc $c7                                          ; $606a: $ce $c7
	rst SubAFromBC                                          ; $606c: $e7
	reti                                             ; $606d: $d9


	call c, $dfcf                                    ; $606e: $dc $cf $df
	rst GetHLinHL                                          ; $6071: $cf
	ret nz                                           ; $6072: $c0

	ld [hl], b                                       ; $6073: $70
	ccf                                              ; $6074: $3f
	rlca                                             ; $6075: $07
	add e                                            ; $6076: $83
	db $e3                                           ; $6077: $e3
	or e                                             ; $6078: $b3
	ld l, l                                          ; $6079: $6d
	ccf                                              ; $607a: $3f
	ld [hl], d                                       ; $607b: $72
	sbc b                                            ; $607c: $98
	sbc l                                            ; $607d: $9d
	ld e, a                                          ; $607e: $5f
	rst GetHLinHL                                          ; $607f: $cf
	cp $7a                                           ; $6080: $fe $7a
	and h                                            ; $6082: $a4
	sbc l                                            ; $6083: $9d
	ld e, b                                          ; $6084: $58
	jr jr_04a_6064                                   ; $6085: $18 $dd

	rst $38                                          ; $6087: $ff
	ld a, a                                          ; $6088: $7f
	db $ed                                           ; $6089: $ed
	sbc [hl]                                         ; $608a: $9e
	rra                                              ; $608b: $1f
	ld [hl], e                                       ; $608c: $73
	ld b, b                                          ; $608d: $40
	ld [hl], d                                       ; $608e: $72
	ld e, d                                          ; $608f: $5a
	ld e, a                                          ; $6090: $5f
	sub b                                            ; $6091: $90
	ld a, h                                          ; $6092: $7c
	inc a                                            ; $6093: $3c
	sbc [hl]                                         ; $6094: $9e
	ldh a, [$5f]                                     ; $6095: $f0 $5f
	ldh a, [$9c]                                     ; $6097: $f0 $9c
	inc bc                                           ; $6099: $03
	rrca                                             ; $609a: $0f
	ld a, b                                          ; $609b: $78
	ld a, e                                          ; $609c: $7b
	ldh a, [c]                                       ; $609d: $f2
	rst $38                                          ; $609e: $ff
	rst SubAFromDE                                          ; $609f: $df
	cp $db                                           ; $60a0: $fe $db
	rst $38                                          ; $60a2: $ff
	sub h                                            ; $60a3: $94
	sub [hl]                                         ; $60a4: $96
	ld [hl+], a                                      ; $60a5: $22
	ld b, $02                                        ; $60a6: $06 $02
	ld b, $02                                        ; $60a8: $06 $02
	ld d, $12                                        ; $60aa: $16 $12
	ld a, c                                          ; $60ac: $79
	db $fd                                           ; $60ad: $fd
	ld sp, hl                                        ; $60ae: $f9
	ld [hl], e                                       ; $60af: $73
	cp $9c                                           ; $60b0: $fe $9c
	ld [hl], b                                       ; $60b2: $70
	rra                                              ; $60b3: $1f
	rlca                                             ; $60b4: $07
	db $fc                                           ; $60b5: $fc
	sbc [hl]                                         ; $60b6: $9e
	adc a                                            ; $60b7: $8f
	ld [hl], b                                       ; $60b8: $70
	add sp, $79                                      ; $60b9: $e8 $79
	add c                                            ; $60bb: $81
	ld a, a                                          ; $60bc: $7f
	jp nz, $ff9e                                     ; $60bd: $c2 $9e $ff

	db $dd                                           ; $60c0: $dd
	rlca                                             ; $60c1: $07
	sbc b                                            ; $60c2: $98
	ld a, [$fafc]                                    ; $60c3: $fa $fc $fa
	db $fd                                           ; $60c6: $fd
	rst $38                                          ; $60c7: $ff
	db $fd                                           ; $60c8: $fd
	cp $74                                           ; $60c9: $fe $74
	sub h                                            ; $60cb: $94
	call c, $9cff                                    ; $60cc: $dc $ff $9c
	ld a, [bc]                                       ; $60cf: $0a
	dec d                                            ; $60d0: $15
	ld a, [hl+]                                      ; $60d1: $2a
	ld [hl], l                                       ; $60d2: $75
	ld d, e                                          ; $60d3: $53
	sbc l                                            ; $60d4: $9d
	ld e, [hl]                                       ; $60d5: $5e
	db $fc                                           ; $60d6: $fc
	ld a, d                                          ; $60d7: $7a
	xor [hl]                                         ; $60d8: $ae
	db $dd                                           ; $60d9: $dd
	ld hl, sp-$63                                    ; $60da: $f8 $9d
	rst AddAOntoHL                                          ; $60dc: $ef
	ld d, a                                          ; $60dd: $57
	ld l, a                                          ; $60de: $6f
	rst GetHLinHL                                          ; $60df: $cf
	sbc h                                            ; $60e0: $9c
	inc bc                                           ; $60e1: $03
	ccf                                              ; $60e2: $3f
	db $fc                                           ; $60e3: $fc
	ld [hl], l                                       ; $60e4: $75
	ld l, $9e                                        ; $60e5: $2e $9e
	nop                                              ; $60e7: $00
	ld [hl], b                                       ; $60e8: $70
	ld l, d                                          ; $60e9: $6a
	sbc $ff                                          ; $60ea: $de $ff
	sbc d                                            ; $60ec: $9a
	pop bc                                           ; $60ed: $c1
	dec bc                                           ; $60ee: $0b
	ld bc, $090b                                     ; $60ef: $01 $0b $09
	ld a, e                                          ; $60f2: $7b
	cp $9c                                           ; $60f3: $fe $9c
	ld a, [hl]                                       ; $60f5: $7e
	db $fc                                           ; $60f6: $fc
	cp $73                                           ; $60f7: $fe $73
	cp $9c                                           ; $60f9: $fe $9c
	ldh a, [$3f]                                     ; $60fb: $f0 $3f
	rrca                                             ; $60fd: $0f
	db $fc                                           ; $60fe: $fc
	sbc [hl]                                         ; $60ff: $9e
	rst GetHLinHL                                          ; $6100: $cf
	ld h, a                                          ; $6101: $67
	ld h, b                                          ; $6102: $60
	sbc h                                            ; $6103: $9c
	ldh [rIE], a                                     ; $6104: $e0 $ff
	rra                                              ; $6106: $1f
	ld b, [hl]                                       ; $6107: $46
	sub b                                            ; $6108: $90
	inc bc                                           ; $6109: $03
	ldh a, [$5b]                                     ; $610a: $f0 $5b

jr_04a_610c:
	ldh a, [$9e]                                     ; $610c: $f0 $9e
	db $10                                           ; $610e: $10
	cp $9a                                           ; $610f: $fe $9a
	inc c                                            ; $6111: $0c
	rlca                                             ; $6112: $07
	inc b                                            ; $6113: $04
	inc b                                            ; $6114: $04
	ldh [$de], a                                     ; $6115: $e0 $de
	ldh a, [$99]                                     ; $6117: $f0 $99
	ld hl, sp-$05                                    ; $6119: $f8 $fb
	db $fc                                           ; $611b: $fc
	db $fc                                           ; $611c: $fc
	ld b, e                                          ; $611d: $43
	inc bc                                           ; $611e: $03
	sbc $07                                          ; $611f: $de $07
	sub d                                            ; $6121: $92
	cp $fb                                           ; $6122: $fe $fb
	ld h, c                                          ; $6124: $61
	add c                                            ; $6125: $81
	ld b, c                                          ; $6126: $41
	ld bc, $0201                                     ; $6127: $01 $01 $02
	rst GetHLinHL                                          ; $612a: $cf
	ld h, b                                          ; $612b: $60
	jr nz, @+$2e                                     ; $612c: $20 $2c

	jr c, jr_04a_610c                                ; $612e: $38 $dc

	jr z, @-$62                                      ; $6130: $28 $9c

	adc b                                            ; $6132: $88
	rst SubAFromDE                                          ; $6133: $df
	rst GetHLinHL                                          ; $6134: $cf
	call c, $9bdf                                    ; $6135: $dc $df $9b
	rst $38                                          ; $6138: $ff
	ld [hl], $15                                     ; $6139: $36 $15
	inc c                                            ; $613b: $0c
	sbc $02                                          ; $613c: $de $02
	sbc e                                            ; $613e: $9b
	nop                                              ; $613f: $00
	inc bc                                           ; $6140: $03
	pop hl                                           ; $6141: $e1
	ei                                               ; $6142: $fb
	db $db                                           ; $6143: $db
	rst $38                                          ; $6144: $ff
	adc a                                            ; $6145: $8f
	ldh a, [$6c]                                     ; $6146: $f0 $6c
	ld c, [hl]                                       ; $6148: $4e
	ld c, $42                                        ; $6149: $0e $42
	ld c, d                                          ; $614b: $4a
	ld l, [hl]                                       ; $614c: $6e
	call nz, $9fff                                   ; $614d: $c4 $ff $9f
	cp e                                             ; $6150: $bb
	di                                               ; $6151: $f3
	di                                               ; $6152: $f3
	rst FarCall                                          ; $6153: $f7
	rst FarCall                                          ; $6154: $f7
	rst AddAOntoHL                                          ; $6155: $ef
	inc bc                                           ; $6156: $03
	add b                                            ; $6157: $80
	ld c, e                                          ; $6158: $4b
	ldh a, [$7e]                                     ; $6159: $f0 $7e
	add $6f                                          ; $615b: $c6 $6f
	cp $6e                                           ; $615d: $fe $6e
	jp nz, $fe7f                                     ; $615f: $c2 $7f $fe

	ld b, a                                          ; $6162: $47
	ldh [$dd], a                                     ; $6163: $e0 $dd
	rlca                                             ; $6165: $07
	db $dd                                           ; $6166: $dd
	inc bc                                           ; $6167: $03
	ld a, [hl]                                       ; $6168: $7e
	sub c                                            ; $6169: $91
	ld l, a                                          ; $616a: $6f
	cp $d9                                           ; $616b: $fe $d9
	rst $38                                          ; $616d: $ff
	ld a, [hl]                                       ; $616e: $7e
	add $99                                          ; $616f: $c6 $99
	xor a                                            ; $6171: $af
	ld e, [hl]                                       ; $6172: $5e
	cp l                                             ; $6173: $bd
	sbc $fd                                          ; $6174: $de $fd
	ld a, [hl]                                       ; $6176: $7e
	sbc $f8                                          ; $6177: $de $f8
	call c, $98f0                                    ; $6179: $dc $f0 $98
	rst SubAFromDE                                          ; $617c: $df
	rst AddAOntoHL                                          ; $617d: $ef
	ld e, a                                          ; $617e: $5f
	rst $38                                          ; $617f: $ff
	ld e, a                                          ; $6180: $5f
	cp a                                             ; $6181: $bf
	ld a, a                                          ; $6182: $7f
	ld b, e                                          ; $6183: $43
	and b                                            ; $6184: $a0
	halt                                             ; $6185: $76
	call nz, $fe7b                                   ; $6186: $c4 $7b $fe
	sbc [hl]                                         ; $6189: $9e
	add hl, bc                                       ; $618a: $09
	ld l, [hl]                                       ; $618b: $6e
	jp nz, $fedf                                     ; $618c: $c2 $df $fe

	rlca                                             ; $618f: $07
	ld [hl], b                                       ; $6190: $70
	inc bc                                           ; $6191: $03
	ld c, b                                          ; $6192: $48
	ld c, e                                          ; $6193: $4b
	ldh a, [$df]                                     ; $6194: $f0 $df
	db $fc                                           ; $6196: $fc
	db $db                                           ; $6197: $db
	cp $7a                                           ; $6198: $fe $7a
	db $ec                                           ; $619a: $ec
	call c, $9c01                                    ; $619b: $dc $01 $9c
	ld [hl], b                                       ; $619e: $70
	inc a                                            ; $619f: $3c
	ld a, $de                                        ; $61a0: $3e $de
	ccf                                              ; $61a2: $3f
	rst SubAFromDE                                          ; $61a3: $df
	ld a, a                                          ; $61a4: $7f
	adc a                                            ; $61a5: $8f
	inc a                                            ; $61a6: $3c
	ld h, d                                          ; $61a7: $62
	ld h, e                                          ; $61a8: $63
	ld h, b                                          ; $61a9: $60
	ld h, b                                          ; $61aa: $60
	ld h, e                                          ; $61ab: $63
	rlca                                             ; $61ac: $07
	nop                                              ; $61ad: $00
	rst SubAFromDE                                          ; $61ae: $df
	ld a, a                                          ; $61af: $7f
	ccf                                              ; $61b0: $3f
	sbc a                                            ; $61b1: $9f
	rst GetHLinHL                                          ; $61b2: $cf
	rst SubAFromBC                                          ; $61b3: $e7
	di                                               ; $61b4: $f3
	pop af                                           ; $61b5: $f1
	sbc $08                                          ; $61b6: $de $08
	sbc d                                            ; $61b8: $9a
	ld c, b                                          ; $61b9: $48
	db $ec                                           ; $61ba: $ec

jr_04a_61bb:
	ei                                               ; $61bb: $fb
	jp hl                                            ; $61bc: $e9


	jr z, @-$21                                      ; $61bd: $28 $dd

Call_04a_61bf:
	rst $38                                          ; $61bf: $ff
	db $dd                                           ; $61c0: $dd
	db $fc                                           ; $61c1: $fc
	sbc $02                                          ; $61c2: $de $02
	sbc d                                            ; $61c4: $9a
	inc bc                                           ; $61c5: $03
	ld [bc], a                                       ; $61c6: $02
	add d                                            ; $61c7: $82
	add e                                            ; $61c8: $83
	inc bc                                           ; $61c9: $03
	ld a, d                                          ; $61ca: $7a
	xor l                                            ; $61cb: $ad
	sub d                                            ; $61cc: $92
	rst $38                                          ; $61cd: $ff
	ld h, e                                          ; $61ce: $63
	ld [hl], e                                       ; $61cf: $73
	db $fc                                           ; $61d0: $fc
	db $fc                                           ; $61d1: $fc
	ld h, h                                          ; $61d2: $64
	inc a                                            ; $61d3: $3c
	ld h, [hl]                                       ; $61d4: $66
	call nz, $aefc                                   ; $61d5: $c4 $fc $ae
	rlca                                             ; $61d8: $07
	add b                                            ; $61d9: $80
	ld c, e                                          ; $61da: $4b
	and b                                            ; $61db: $a0
	ld h, h                                          ; $61dc: $64
	ret c                                            ; $61dd: $d8

	cpl                                              ; $61de: $2f
	add b                                            ; $61df: $80
	rst SubAFromDE                                          ; $61e0: $df
	ld bc, $009e                                     ; $61e1: $01 $9e $00
	db $dd                                           ; $61e4: $dd
	ei                                               ; $61e5: $fb
	ld a, [hl]                                       ; $61e6: $7e
	jp z, $387a                                      ; $61e7: $ca $7a $38

	sbc $10                                          ; $61ea: $de $10
	sbc h                                            ; $61ec: $9c
	add hl, sp                                       ; $61ed: $39
	ld sp, hl                                        ; $61ee: $f9
	ld hl, sp+$4f                                    ; $61ef: $f8 $4f
	ldh [$df], a                                     ; $61f1: $e0 $df
	ret nz                                           ; $61f3: $c0

	ld a, c                                          ; $61f4: $79
	ld e, b                                          ; $61f5: $58
	halt                                             ; $61f6: $76
	call z, $fc7f                                    ; $61f7: $cc $7f $fc
	reti                                             ; $61fa: $d9


	inc bc                                           ; $61fb: $03
	sub a                                            ; $61fc: $97
	cp h                                             ; $61fd: $bc
	ld e, [hl]                                       ; $61fe: $5e
	ld a, $5e                                        ; $61ff: $3e $5e
	ld a, $1e                                        ; $6201: $3e $1e
	ld a, $5e                                        ; $6203: $3e $5e
	sbc $ff                                          ; $6205: $de $ff
	ld a, d                                          ; $6207: $7a
	ld a, $df                                        ; $6208: $3e $df
	ei                                               ; $620a: $fb
	sbc l                                            ; $620b: $9d
	ld [hl], a                                       ; $620c: $77
	cp a                                             ; $620d: $bf
	ld l, a                                          ; $620e: $6f
	cp $d9                                           ; $620f: $fe $d9
	ld hl, sp+$47                                    ; $6211: $f8 $47
	sub b                                            ; $6213: $90
	halt                                             ; $6214: $76
	ld l, e                                          ; $6215: $6b
	ld a, c                                          ; $6216: $79
	ld c, b                                          ; $6217: $48
	sbc [hl]                                         ; $6218: $9e
	rst $38                                          ; $6219: $ff
	sbc $08                                          ; $621a: $de $08
	rst SubAFromDE                                          ; $621c: $df
	jr jr_04a_61bb                                   ; $621d: $18 $9c

	inc a                                            ; $621f: $3c
	cp $7f                                           ; $6220: $fe $7f
	ld c, a                                          ; $6222: $4f
	and b                                            ; $6223: $a0
	sbc [hl]                                         ; $6224: $9e
	ld h, b                                          ; $6225: $60
	ld b, e                                          ; $6226: $43
	ld h, b                                          ; $6227: $60
	sbc b                                            ; $6228: $98
	ld a, [$aaf5]                                    ; $6229: $fa $f5 $aa
	push de                                          ; $622c: $d5
	add sp, $50                                      ; $622d: $e8 $50
	and e                                            ; $622f: $a3
	ld hl, sp-$69                                    ; $6230: $f8 $97
	xor d                                            ; $6232: $aa
	ld d, l                                          ; $6233: $55
	and e                                            ; $6234: $a3
	ld b, [hl]                                       ; $6235: $46
	add hl, de                                       ; $6236: $19
	jr nc, @+$62                                     ; $6237: $30 $60

	add b                                            ; $6239: $80
	ld h, e                                          ; $623a: $63
	ld b, b                                          ; $623b: $40
	sbc b                                            ; $623c: $98
	xor e                                            ; $623d: $ab
	ld d, a                                          ; $623e: $57
	xor d                                            ; $623f: $aa
	ld d, l                                          ; $6240: $55
	xor e                                            ; $6241: $ab
	ld e, a                                          ; $6242: $5f
	ld a, [bc]                                       ; $6243: $0a
	ld sp, hl                                        ; $6244: $f9
	rst SubAFromDE                                          ; $6245: $df
	cp $7d                                           ; $6246: $fe $7d
	dec l                                            ; $6248: $2d
	db $dd                                           ; $6249: $dd
	rst $38                                          ; $624a: $ff
	ld a, e                                          ; $624b: $7b
	dec [hl]                                         ; $624c: $35
	sbc l                                            ; $624d: $9d
	nop                                              ; $624e: $00
	inc sp                                           ; $624f: $33
	cp $df                                           ; $6250: $fe $df
	ld a, a                                          ; $6252: $7f
	rst SubAFromDE                                          ; $6253: $df
	ccf                                              ; $6254: $3f
	db $dd                                           ; $6255: $dd
	rst $38                                          ; $6256: $ff
	rst SubAFromDE                                          ; $6257: $df
	add b                                            ; $6258: $80
	sbc l                                            ; $6259: $9d
	ld b, b                                          ; $625a: $40
	ccf                                              ; $625b: $3f
	halt                                             ; $625c: $76
	ld d, e                                          ; $625d: $53
	rst SubAFromDE                                          ; $625e: $df
	pop af                                           ; $625f: $f1
	sbc l                                            ; $6260: $9d
	db $e3                                           ; $6261: $e3
	rst SubAFromBC                                          ; $6262: $e7
	db $dd                                           ; $6263: $dd
	rst $38                                          ; $6264: $ff
	rst SubAFromDE                                          ; $6265: $df
	ld [bc], a                                       ; $6266: $02
	sbc h                                            ; $6267: $9c
	inc b                                            ; $6268: $04
	ld e, l                                          ; $6269: $5d
	xor d                                            ; $626a: $aa
	halt                                             ; $626b: $76
	sub b                                            ; $626c: $90
	ld l, c                                          ; $626d: $69
	db $fd                                           ; $626e: $fd
	ld a, e                                          ; $626f: $7b
	inc bc                                           ; $6270: $03
	sbc l                                            ; $6271: $9d
	ld d, a                                          ; $6272: $57
	xor b                                            ; $6273: $a8
	cp $9e                                           ; $6274: $fe $9e
	ld l, d                                          ; $6276: $6a
	ld a, b                                          ; $6277: $78
	cp d                                             ; $6278: $ba
	sbc h                                            ; $6279: $9c
	cp $f0                                           ; $627a: $fe $f0
	ld [$9cfe], a                                    ; $627c: $ea $fe $9c
	add b                                            ; $627f: $80
	xor d                                            ; $6280: $aa
	ld d, b                                          ; $6281: $50
	cp $95                                           ; $6282: $fe $95
	db $eb                                           ; $6284: $eb

jr_04a_6285:
	rst FarCall                                          ; $6285: $f7
	jp hl                                            ; $6286: $e9


	pop af                                           ; $6287: $f1
	ret nz                                           ; $6288: $c0

	nop                                              ; $6289: $00
	inc b                                            ; $628a: $04
	nop                                              ; $628b: $00
	ld b, b                                          ; $628c: $40
	ret nz                                           ; $628d: $c0

	ld l, a                                          ; $628e: $6f
	adc l                                            ; $628f: $8d
	sub a                                            ; $6290: $97
	rst $38                                          ; $6291: $ff
	ld d, a                                          ; $6292: $57
	xor d                                            ; $6293: $aa
	sub l                                            ; $6294: $95
	add b                                            ; $6295: $80
	ret nz                                           ; $6296: $c0

	ld h, d                                          ; $6297: $62
	jr nz, jr_04a_62f8                               ; $6298: $20 $5e

	ret nz                                           ; $629a: $c0

	sbc d                                            ; $629b: $9a
	cp a                                             ; $629c: $bf
	ld d, l                                          ; $629d: $55
	xor d                                            ; $629e: $aa
	dec d                                            ; $629f: $15
	cp a                                             ; $62a0: $bf
	ld hl, sp-$22                                    ; $62a1: $f8 $de
	rst $38                                          ; $62a3: $ff

Call_04a_62a4:
	sbc h                                            ; $62a4: $9c
	db $fd                                           ; $62a5: $fd
	xor [hl]                                         ; $62a6: $ae
	ld d, l                                          ; $62a7: $55
	ld h, e                                          ; $62a8: $63
	ld b, c                                          ; $62a9: $41
	ld l, [hl]                                       ; $62aa: $6e
	ret nz                                           ; $62ab: $c0

	ld a, [hl]                                       ; $62ac: $7e
	ld l, h                                          ; $62ad: $6c
	ld [hl], b                                       ; $62ae: $70
	xor h                                            ; $62af: $ac
	ld [hl], e                                       ; $62b0: $73
	jr nc, jr_04a_6328                               ; $62b1: $30 $75

	sub h                                            ; $62b3: $94
	ld a, e                                          ; $62b4: $7b
	sbc l                                            ; $62b5: $9d
	rst SubAFromDE                                          ; $62b6: $df
	rlca                                             ; $62b7: $07
	sbc [hl]                                         ; $62b8: $9e
	rra                                              ; $62b9: $1f
	ld [hl], c                                       ; $62ba: $71
	and e                                            ; $62bb: $a3
	ld a, c                                          ; $62bc: $79
	sbc l                                            ; $62bd: $9d
	ld a, d                                          ; $62be: $7a
	ret z                                            ; $62bf: $c8

	ld a, a                                          ; $62c0: $7f
	adc [hl]                                         ; $62c1: $8e
	ld [hl], d                                       ; $62c2: $72
	adc d                                            ; $62c3: $8a
	cp $9c                                           ; $62c4: $fe $9c
	ld [hl], a                                       ; $62c6: $77
	ei                                               ; $62c7: $fb
	ei                                               ; $62c8: $fb
	ld a, e                                          ; $62c9: $7b
	rst AddAOntoHL                                          ; $62ca: $ef
	sbc l                                            ; $62cb: $9d
	call z, Call_04a_7904                            ; $62cc: $cc $04 $79
	ld a, c                                          ; $62cf: $79
	sbc [hl]                                         ; $62d0: $9e
	ld hl, sp+$77                                    ; $62d1: $f8 $77
	ld d, b                                          ; $62d3: $50
	sub a                                            ; $62d4: $97
	rst FarCall                                          ; $62d5: $f7
	ld e, [hl]                                       ; $62d6: $5e
	xor a                                            ; $62d7: $af
	push de                                          ; $62d8: $d5
	ldh [c], a                                       ; $62d9: $e2
	nop                                              ; $62da: $00
	ld [bc], a                                       ; $62db: $02
	add hl, de                                       ; $62dc: $19
	ld sp, hl                                        ; $62dd: $f9
	ld [hl], d                                       ; $62de: $72
	rst GetHLinHL                                          ; $62df: $cf
	ld l, a                                          ; $62e0: $6f
	push bc                                          ; $62e1: $c5
	ld bc, $72b0                                     ; $62e2: $01 $b0 $72
	dec l                                            ; $62e5: $2d
	ld a, a                                          ; $62e6: $7f
	jr jr_04a_6285                                   ; $62e7: $18 $9c

	ld [$4030], sp                                   ; $62e9: $08 $30 $40
	ld h, d                                          ; $62ec: $62
	pop de                                           ; $62ed: $d1
	ldh a, [$99]                                     ; $62ee: $f0 $99
	dec d                                            ; $62f0: $15
	ld [bc], a                                       ; $62f1: $02
	ld bc, $0512                                     ; $62f2: $01 $12 $05
	nop                                              ; $62f5: $00
	ld a, d                                          ; $62f6: $7a
	db $d3                                           ; $62f7: $d3

jr_04a_62f8:
	ld a, [$5f9c]                                    ; $62f8: $fa $9c $5f
	xor a                                            ; $62fb: $af
	ld e, l                                          ; $62fc: $5d
	halt                                             ; $62fd: $76
	xor [hl]                                         ; $62fe: $ae
	sbc [hl]                                         ; $62ff: $9e
	ld a, [hl+]                                      ; $6300: $2a
	ld h, d                                          ; $6301: $62
	ld d, b                                          ; $6302: $50
	sbc c                                            ; $6303: $99
	ld [$aad5], a                                    ; $6304: $ea $d5 $aa
	ld d, l                                          ; $6307: $55
	xor d                                            ; $6308: $aa
	ld d, h                                          ; $6309: $54
	halt                                             ; $630a: $76
	push de                                          ; $630b: $d5
	db $fc                                           ; $630c: $fc
	sbc l                                            ; $630d: $9d
	ld d, l                                          ; $630e: $55
	xor b                                            ; $630f: $a8
	ld a, e                                          ; $6310: $7b
	or e                                             ; $6311: $b3
	ld e, e                                          ; $6312: $5b
	or c                                             ; $6313: $b1
	sbc [hl]                                         ; $6314: $9e
	ld b, b                                          ; $6315: $40
	ldh [$d0], a                                     ; $6316: $e0 $d0
	sbc h                                            ; $6318: $9c
	db $10                                           ; $6319: $10
	ld [$7a08], sp                                   ; $631a: $08 $08 $7a
	or b                                             ; $631d: $b0
	jp hl                                            ; $631e: $e9


	sbc d                                            ; $631f: $9a
	ld a, [hl+]                                      ; $6320: $2a
	dec d                                            ; $6321: $15
	nop                                              ; $6322: $00
	nop                                              ; $6323: $00
	ld [bc], a                                       ; $6324: $02
	or $9a                                           ; $6325: $f6 $9a
	xor d                                            ; $6327: $aa

jr_04a_6328:
	ld d, c                                          ; $6328: $51
	adc d                                            ; $6329: $8a
	ld b, h                                          ; $632a: $44
	xor b                                            ; $632b: $a8
	ld e, e                                          ; $632c: $5b
	pop de                                           ; $632d: $d1
	halt                                             ; $632e: $76
	ld l, h                                          ; $632f: $6c
	ldh [$c5], a                                     ; $6330: $e0 $c5
	sub a                                            ; $6332: $97
	dec b                                            ; $6333: $05
	cpl                                              ; $6334: $2f
	rlca                                             ; $6335: $07
	rrca                                             ; $6336: $0f
	rla                                              ; $6337: $17
	dec bc                                           ; $6338: $0b
	dec d                                            ; $6339: $15
	ld c, e                                          ; $633a: $4b
	ld [bc], a                                       ; $633b: $02
	ret nz                                           ; $633c: $c0

	ld a, [$003a]                                    ; $633d: $fa $3a $00
	rst SubAFromHL                                          ; $6340: $d7
	ld h, [hl]                                       ; $6341: $66
	rst SubAFromDE                                          ; $6342: $df
	ld [hl], a                                       ; $6343: $77
	sbc [hl]                                         ; $6344: $9e
	halt                                             ; $6345: $76
	db $db                                           ; $6346: $db
	ld h, [hl]                                       ; $6347: $66
	sbc [hl]                                         ; $6348: $9e
	ld h, a                                          ; $6349: $67
	ld [hl], a                                       ; $634a: $77
	or $3f                                           ; $634b: $f6 $3f
	ei                                               ; $634d: $fb
	sbc [hl]                                         ; $634e: $9e
	ld d, [hl]                                       ; $634f: $56
	ld [hl], a                                       ; $6350: $77
	ei                                               ; $6351: $fb
	sbc [hl]                                         ; $6352: $9e
	ld [hl], a                                       ; $6353: $77
	ld [hl], a                                       ; $6354: $77
	ei                                               ; $6355: $fb
	sbc [hl]                                         ; $6356: $9e
	ld d, l                                          ; $6357: $55
	ld [hl], e                                       ; $6358: $73
	db $db                                           ; $6359: $db
	ld a, e                                          ; $635a: $7b
	db $fc                                           ; $635b: $fc
	sbc h                                            ; $635c: $9c
	ld h, a                                          ; $635d: $67
	ld [hl], l                                       ; $635e: $75
	ld h, a                                          ; $635f: $67
	ld [hl], e                                       ; $6360: $73
	or $7f                                           ; $6361: $f6 $7f
	ld a, [$679e]                                    ; $6363: $fa $9e $67
	ld [hl], a                                       ; $6366: $77
	call nz, $ec77                                   ; $6367: $c4 $77 $ec
	sbc d                                            ; $636a: $9a
	ld b, h                                          ; $636b: $44
	ld b, e                                          ; $636c: $43
	inc sp                                           ; $636d: $33
	inc sp                                           ; $636e: $33
	inc [hl]                                         ; $636f: $34
	db $db                                           ; $6370: $db
	ld b, h                                          ; $6371: $44
	ld a, a                                          ; $6372: $7f
	or $6b                                           ; $6373: $f6 $6b
	rst FarCall                                          ; $6375: $f7
	rst SubAFromHL                                          ; $6376: $d7
	ld b, h                                          ; $6377: $44
	adc a                                            ; $6378: $8f
	adc e                                            ; $6379: $8b
	sub l                                            ; $637a: $95
	di                                               ; $637b: $f3
	ld sp, hl                                        ; $637c: $f9
	db $fd                                           ; $637d: $fd
	cp $ff                                           ; $637e: $fe $ff
	cp $ff                                           ; $6380: $fe $ff
	ld a, [hl]                                       ; $6382: $7e
	rlca                                             ; $6383: $07
	inc bc                                           ; $6384: $03
	db $fc                                           ; $6385: $fc
	sub c                                            ; $6386: $91
	add b                                            ; $6387: $80
	ld b, a                                          ; $6388: $47
	cp e                                             ; $6389: $bb
	ld l, a                                          ; $638a: $6f
	or e                                             ; $638b: $b3
	ld c, l                                          ; $638c: $4d
	xor e                                            ; $638d: $ab
	ld d, l                                          ; $638e: $55
	xor d                                            ; $638f: $aa
	cp b                                             ; $6390: $b8
	call nz, $3cf0                                   ; $6391: $c4 $f0 $3c
	ld e, $7b                                        ; $6394: $1e $7b
	db $eb                                           ; $6396: $eb
	rst SubAFromDE                                          ; $6397: $df
	rst $38                                          ; $6398: $ff
	sub a                                            ; $6399: $97
	cp $ee                                           ; $639a: $fe $ee
	cp $7b                                           ; $639c: $fe $7b
	cp a                                             ; $639e: $bf
	ld l, d                                          ; $639f: $6a
	nop                                              ; $63a0: $00
	nop                                              ; $63a1: $00
	sbc $01                                          ; $63a2: $de $01
	sub c                                            ; $63a4: $91
	add h                                            ; $63a5: $84
	ret nz                                           ; $63a6: $c0

	db $f4                                           ; $63a7: $f4
	add h                                            ; $63a8: $84
	and [hl]                                         ; $63a9: $a6
	or h                                             ; $63aa: $b4
	ld a, [bc]                                       ; $63ab: $0a
	call $fd72                                       ; $63ac: $cd $72 $fd
	cp $78                                           ; $63af: $fe $78
	ld a, h                                          ; $63b1: $7c
	ld a, a                                          ; $63b2: $7f
	sbc $ff                                          ; $63b3: $de $ff
	add b                                            ; $63b5: $80
	rra                                              ; $63b6: $1f
	rrca                                             ; $63b7: $0f
	ccf                                              ; $63b8: $3f
	ld c, [hl]                                       ; $63b9: $4e
	and a                                            ; $63ba: $a7
	db $d3                                           ; $63bb: $d3
	ld l, c                                          ; $63bc: $69
	or h                                             ; $63bd: $b4
	ld e, d                                          ; $63be: $5a
	xor e                                            ; $63bf: $ab
	ld e, $1f                                        ; $63c0: $1e $1f
	rrca                                             ; $63c2: $0f
	add a                                            ; $63c3: $87
	jp $f0e1                                         ; $63c4: $c3 $e1 $f0


	db $fc                                           ; $63c7: $fc
	xor l                                            ; $63c8: $ad
	ld e, [hl]                                       ; $63c9: $5e
	ld l, a                                          ; $63ca: $6f
	or a                                             ; $63cb: $b7
	rst SubAFromDE                                          ; $63cc: $df
	rst $38                                          ; $63cd: $ff
	ld a, l                                          ; $63ce: $7d
	ld a, $7e                                        ; $63cf: $3e $7e
	cp a                                             ; $63d1: $bf
	sbc a                                            ; $63d2: $9f
	rst GetHLinHL                                          ; $63d3: $cf
	rst SubAFromBC                                          ; $63d4: $e7
	add b                                            ; $63d5: $80
	di                                               ; $63d6: $f3
	ei                                               ; $63d7: $fb
	ld a, l                                          ; $63d8: $7d
	db $dd                                           ; $63d9: $dd
	db $eb                                           ; $63da: $eb
	ld l, e                                          ; $63db: $6b
	db $fd                                           ; $63dc: $fd
	cp a                                             ; $63dd: $bf
	db $dd                                           ; $63de: $dd
	cp $ef                                           ; $63df: $fe $ef
	ld a, [hl-]                                      ; $63e1: $3a
	rra                                              ; $63e2: $1f
	sub a                                            ; $63e3: $97
	add e                                            ; $63e4: $83
	pop bc                                           ; $63e5: $c1
	ldh [c], a                                       ; $63e6: $e2
	pop hl                                           ; $63e7: $e1
	ldh a, [$61]                                     ; $63e8: $f0 $61
	and c                                            ; $63ea: $a1
	ld d, e                                          ; $63eb: $53
	or e                                             ; $63ec: $b3
	db $db                                           ; $63ed: $db
	add sp, -$0a                                     ; $63ee: $e8 $f6
	ld l, d                                          ; $63f0: $6a
	add b                                            ; $63f1: $80
	ld b, b                                          ; $63f2: $40
	and b                                            ; $63f3: $a0
	ret nz                                           ; $63f4: $c0

	sbc d                                            ; $63f5: $9a
	and b                                            ; $63f6: $a0
	pop de                                           ; $63f7: $d1
	jp hl                                            ; $63f8: $e9


	push af                                          ; $63f9: $f5
	ret nz                                           ; $63fa: $c0

	cp $dd                                           ; $63fb: $fe $dd
	jr nz, @-$60                                     ; $63fd: $20 $9e

	nop                                              ; $63ff: $00
	jp c, $e1c0                                      ; $6400: $da $c0 $e1

	sub a                                            ; $6403: $97
	rlca                                             ; $6404: $07
	ld [bc], a                                       ; $6405: $02
	ld b, $02                                        ; $6406: $06 $02
	inc b                                            ; $6408: $04
	ld [bc], a                                       ; $6409: $02
	inc b                                            ; $640a: $04
	ld b, d                                          ; $640b: $42
	ld [hl], a                                       ; $640c: $77
	ld [hl], c                                       ; $640d: $71

jr_04a_640e:
	sbc [hl]                                         ; $640e: $9e
	inc bc                                           ; $640f: $03
	ld a, e                                          ; $6410: $7b
	cp $96                                           ; $6411: $fe $96
	ldh [$50], a                                     ; $6413: $e0 $50
	ld h, b                                          ; $6415: $60
	ld d, b                                          ; $6416: $50
	ld l, b                                          ; $6417: $68
	ld d, h                                          ; $6418: $54
	ld a, [hl+]                                      ; $6419: $2a
	dec [hl]                                         ; $641a: $35
	nop                                              ; $641b: $00
	call c, $3f80                                    ; $641c: $dc $80 $3f
	ret nz                                           ; $641f: $c0

	sbc l                                            ; $6420: $9d
	ld b, b                                          ; $6421: $40
	add b                                            ; $6422: $80
	ld l, a                                          ; $6423: $6f
	cp $f8                                           ; $6424: $fe $f8
	ld a, e                                          ; $6426: $7b
	call z, $02df                                    ; $6427: $cc $df $02
	sbc l                                            ; $642a: $9d
	dec c                                            ; $642b: $0d
	ld b, $77                                        ; $642c: $06 $77
	rst FarCall                                          ; $642e: $f7
	add a                                            ; $642f: $87
	inc bc                                           ; $6430: $03
	rlca                                             ; $6431: $07
	ld b, $0d                                        ; $6432: $06 $0d
	nop                                              ; $6434: $00
	add b                                            ; $6435: $80
	ld a, [hl+]                                      ; $6436: $2a
	sub l                                            ; $6437: $95
	ldh [c], a                                       ; $6438: $e2
	ld h, e                                          ; $6439: $63
	add hl, sp                                       ; $643a: $39
	or [hl]                                          ; $643b: $b6
	nop                                              ; $643c: $00
	nop                                              ; $643d: $00
	ret nz                                           ; $643e: $c0

	ld h, b                                          ; $643f: $60
	jr jr_04a_640e                                   ; $6440: $18 $cc

	adc $83                                          ; $6442: $ce $83
	nop                                              ; $6444: $00
	nop                                              ; $6445: $00
	xor d                                            ; $6446: $aa
	ld d, l                                          ; $6447: $55
	ld [hl], a                                       ; $6448: $77
	cp $fa                                           ; $6449: $fe $fa
	ld [hl], a                                       ; $644b: $77
	ret z                                            ; $644c: $c8

	ld d, a                                          ; $644d: $57
	ldh a, [$99]                                     ; $644e: $f0 $99
	nop                                              ; $6450: $00
	add hl, bc                                       ; $6451: $09
	ld bc, $5101                                     ; $6452: $01 $01 $51
	xor c                                            ; $6455: $a9
	ld a, e                                          ; $6456: $7b
	cp $d9                                           ; $6457: $fe $d9
	ld b, $93                                        ; $6459: $06 $93
	or a                                             ; $645b: $b7
	ld l, a                                          ; $645c: $6f
	db $eb                                           ; $645d: $eb
	xor a                                            ; $645e: $af
	ld h, e                                          ; $645f: $63
	jr jr_04a_6470                                   ; $6460: $18 $0e

	dec d                                            ; $6462: $15
	ret nz                                           ; $6463: $c0

	ldh a, [rAUD3LEVEL]                              ; $6464: $f0 $1c
	sbc $dd                                          ; $6466: $de $dd
	rst $38                                          ; $6468: $ff
	ld a, [hl]                                       ; $6469: $7e
	and $99                                          ; $646a: $e6 $99
	db $fd                                           ; $646c: $fd
	cp e                                             ; $646d: $bb
	sub a                                            ; $646e: $97
	ei                                               ; $646f: $fb

jr_04a_6470:
	dec a                                            ; $6470: $3d
	adc l                                            ; $6471: $8d
	db $fd                                           ; $6472: $fd
	sub b                                            ; $6473: $90
	ret nz                                           ; $6474: $c0

	ldh [$f0], a                                     ; $6475: $e0 $f0
	cp $30                                           ; $6477: $fe $30
	xor [hl]                                         ; $6479: $ae
	ld d, h                                          ; $647a: $54
	ld [$fafc], a                                    ; $647b: $ea $fc $fa
	ld [hl], h                                       ; $647e: $74
	xor d                                            ; $647f: $aa
	ld a, h                                          ; $6480: $7c
	inc e                                            ; $6481: $1c
	inc b                                            ; $6482: $04
	db $fc                                           ; $6483: $fc
	sub h                                            ; $6484: $94
	scf                                              ; $6485: $37
	ld bc, $060c                                     ; $6486: $01 $0c $06
	dec c                                            ; $6489: $0d
	inc b                                            ; $648a: $04
	ld c, $06                                        ; $648b: $0e $06
	rrca                                             ; $648d: $0f
	rrca                                             ; $648e: $0f
	rlca                                             ; $648f: $07
	ld [hl], e                                       ; $6490: $73
	cp $96                                           ; $6491: $fe $96
	ld d, a                                          ; $6493: $57
	xor e                                            ; $6494: $ab
	ld b, l                                          ; $6495: $45
	or d                                             ; $6496: $b2
	reti                                             ; $6497: $d9


	db $ec                                           ; $6498: $ec
	halt                                             ; $6499: $76
	dec sp                                           ; $649a: $3b
	cp $da                                           ; $649b: $fe $da
	rst $38                                          ; $649d: $ff
	add h                                            ; $649e: $84
	adc a                                            ; $649f: $8f
	rst SubAFromDE                                          ; $64a0: $df
	rst SubAFromBC                                          ; $64a1: $e7
	pop af                                           ; $64a2: $f1
	ld l, c                                          ; $64a3: $69
	sub h                                            ; $64a4: $94
	cpl                                              ; $64a5: $2f
	ld d, a                                          ; $64a6: $57
	ld a, $0f                                        ; $64a7: $3e $0f
	adc a                                            ; $64a9: $8f
	rst JumpTable                                          ; $64aa: $c7
	di                                               ; $64ab: $f3
	ld sp, hl                                        ; $64ac: $f9
	db $fc                                           ; $64ad: $fc
	cp $76                                           ; $64ae: $fe $76
	db $fd                                           ; $64b0: $fd
	ld a, [$eefd]                                    ; $64b1: $fa $fd $ee
	ld a, a                                          ; $64b4: $7f
	dec sp                                           ; $64b5: $3b
	daa                                              ; $64b6: $27
	ld sp, hl                                        ; $64b7: $f9
	ld a, d                                          ; $64b8: $7a
	cp l                                             ; $64b9: $bd
	ld [hl], a                                       ; $64ba: $77
	and b                                            ; $64bb: $a0
	adc [hl]                                         ; $64bc: $8e
	ld a, c                                          ; $64bd: $79
	or [hl]                                          ; $64be: $b6
	ld e, d                                          ; $64bf: $5a
	cp l                                             ; $64c0: $bd
	rst SubAFromDE                                          ; $64c1: $df
	xor a                                            ; $64c2: $af
	ld d, a                                          ; $64c3: $57
	ld l, a                                          ; $64c4: $6f
	or a                                             ; $64c5: $b7
	ld a, c                                          ; $64c6: $79
	cp l                                             ; $64c7: $bd
	ld e, a                                          ; $64c8: $5f
	cpl                                              ; $64c9: $2f
	ld d, a                                          ; $64ca: $57
	xor a                                            ; $64cb: $af
	sub a                                            ; $64cc: $97
	rst GetHLinHL                                          ; $64cd: $cf
	call c, $df60                                    ; $64ce: $dc $60 $df
	ret nz                                           ; $64d1: $c0

	sbc [hl]                                         ; $64d2: $9e
	ld b, b                                          ; $64d3: $40
	call c, $dfc0                                    ; $64d4: $dc $c0 $df
	ld h, b                                          ; $64d7: $60
	sbc [hl]                                         ; $64d8: $9e
	ldh [$ef], a                                     ; $64d9: $e0 $ef
	sbc c                                            ; $64db: $99
	ld [$0804], sp                                   ; $64dc: $08 $04 $08
	ld e, l                                          ; $64df: $5d
	xor d                                            ; $64e0: $aa
	ld c, l                                          ; $64e1: $4d
	ld h, a                                          ; $64e2: $67
	jr nc, jr_04a_6563                               ; $64e3: $30 $7e

	add $7f                                          ; $64e5: $c6 $7f
	cp $9b                                           ; $64e7: $fe $9b
	add h                                            ; $64e9: $84
	ld b, d                                          ; $64ea: $42
	push bc                                          ; $64eb: $c5
	ld b, d                                          ; $64ec: $42
	halt                                             ; $64ed: $76
	call nz, $f67a                                   ; $64ee: $c4 $7a $f6
	sbc d                                            ; $64f1: $9a
	ld bc, $1d1e                                     ; $64f2: $01 $1e $1d
	ld e, $1f                                        ; $64f5: $1e $1f
	ld a, e                                          ; $64f7: $7b
	cp $9e                                           ; $64f8: $fe $9e
	sub a                                            ; $64fa: $97
	jp c, $9ee0                                      ; $64fb: $da $e0 $9e

	ld h, b                                          ; $64fe: $60
	ld l, d                                          ; $64ff: $6a
	pop de                                           ; $6500: $d1
	sbc [hl]                                         ; $6501: $9e
	ld b, b                                          ; $6502: $40
	ld e, d                                          ; $6503: $5a
	ret nz                                           ; $6504: $c0

	sbc [hl]                                         ; $6505: $9e
	and b                                            ; $6506: $a0
	ld a, e                                          ; $6507: $7b
	cp $7e                                           ; $6508: $fe $7e
	ld h, b                                          ; $650a: $60
	ld a, [$1a80]                                    ; $650b: $fa $80 $1a
	inc c                                            ; $650e: $0c
	jr nc, jr_04a_651c                               ; $650f: $30 $0b

	ld a, a                                          ; $6511: $7f
	ccf                                              ; $6512: $3f
	rst $38                                          ; $6513: $ff
	ld e, h                                          ; $6514: $5c
	dec c                                            ; $6515: $0d
	add hl, de                                       ; $6516: $19
	rra                                              ; $6517: $1f
	scf                                              ; $6518: $37
	ld hl, $4261                                     ; $6519: $21 $61 $42

jr_04a_651c:
	db $e3                                           ; $651c: $e3
	cp b                                             ; $651d: $b8
	ld [hl], a                                       ; $651e: $77
	rst SubAFromBC                                          ; $651f: $e7
	rst AddAOntoHL                                          ; $6520: $ef
	and b                                            ; $6521: $a0
	xor a                                            ; $6522: $af
	inc sp                                           ; $6523: $33
	reti                                             ; $6524: $d9


	rst JumpTable                                          ; $6525: $c7
	xor $ec                                          ; $6526: $ee $ec
	ld hl, sp-$04                                    ; $6528: $f8 $fc
	ret nc                                           ; $652a: $d0

	sbc $df                                          ; $652b: $de $df
	ld a, $86                                        ; $652d: $3e $86
	adc h                                            ; $652f: $8c
	rst SubAFromBC                                          ; $6530: $e7
	xor a                                            ; $6531: $af
	ld d, d                                          ; $6532: $52
	add e                                            ; $6533: $83
	or $5f                                           ; $6534: $f6 $5f
	ret nz                                           ; $6536: $c0

	ld [hl], e                                       ; $6537: $73
	rra                                              ; $6538: $1f
	rra                                              ; $6539: $1f
	rst AddAOntoHL                                          ; $653a: $ef
	rst $38                                          ; $653b: $ff
	rst GetHLinHL                                          ; $653c: $cf
	ld hl, sp-$56                                    ; $653d: $f8 $aa
	ld a, a                                          ; $653f: $7f
	rst $38                                          ; $6540: $ff
	ld d, l                                          ; $6541: $55
	xor d                                            ; $6542: $aa
	rst $38                                          ; $6543: $ff
	xor e                                            ; $6544: $ab
	rst SubAFromBC                                          ; $6545: $e7
	nop                                              ; $6546: $00
	add b                                            ; $6547: $80
	call c, $9aff                                    ; $6548: $dc $ff $9a
	add hl, de                                       ; $654b: $19
	xor c                                            ; $654c: $a9
	ld sp, hl                                        ; $654d: $f9
	ld sp, hl                                        ; $654e: $f9
	ld d, c                                          ; $654f: $51
	ld a, e                                          ; $6550: $7b
	db $fc                                           ; $6551: $fc
	sbc h                                            ; $6552: $9c
	ld hl, sp+$06                                    ; $6553: $f8 $06
	ld b, $de                                        ; $6555: $06 $de
	cp $84                                           ; $6557: $fe $84
	add $fe                                          ; $6559: $c6 $fe
	rst $38                                          ; $655b: $ff
	ld a, [bc]                                       ; $655c: $0a
	sub l                                            ; $655d: $95
	ld c, d                                          ; $655e: $4a
	push de                                          ; $655f: $d5
	ld a, [bc]                                       ; $6560: $0a
	dec d                                            ; $6561: $15
	sbc [hl]                                         ; $6562: $9e

jr_04a_6563:
	ld [de], a                                       ; $6563: $12
	rst $38                                          ; $6564: $ff
	ld a, a                                          ; $6565: $7f
	cp a                                             ; $6566: $bf
	ccf                                              ; $6567: $3f
	rra                                              ; $6568: $1f
	rra                                              ; $6569: $1f
	ld bc, $e30d                                     ; $656a: $01 $0d $e3
	ld d, b                                          ; $656d: $50
	xor h                                            ; $656e: $ac
	ld d, a                                          ; $656f: $57
	xor d                                            ; $6570: $aa
	ld d, l                                          ; $6571: $55
	rst $38                                          ; $6572: $ff
	dec d                                            ; $6573: $15
	db $db                                           ; $6574: $db

jr_04a_6575:
	rst $38                                          ; $6575: $ff
	adc b                                            ; $6576: $88
	nop                                              ; $6577: $00
	jp nz, $cadc                                     ; $6578: $c2 $dc $ca

	ld [hl], h                                       ; $657b: $74
	ld e, $fc                                        ; $657c: $1e $fc
	db $e4                                           ; $657e: $e4
	ld l, b                                          ; $657f: $68
	ld d, b                                          ; $6580: $50
	nop                                              ; $6581: $00
	ldh [$f8], a                                     ; $6582: $e0 $f8
	db $fc                                           ; $6584: $fc
	db $fc                                           ; $6585: $fc
	ld hl, sp-$10                                    ; $6586: $f8 $f0
	ldh [$08], a                                     ; $6588: $e0 $08
	ld b, $0d                                        ; $658a: $06 $0d
	ld [bc], a                                       ; $658c: $02
	ld [$0ade], sp                                   ; $658d: $08 $de $0a
	sbc d                                            ; $6590: $9a
	rlca                                             ; $6591: $07
	dec c                                            ; $6592: $0d
	nop                                              ; $6593: $00
	dec c                                            ; $6594: $0d
	rlca                                             ; $6595: $07
	sbc $05                                          ; $6596: $de $05
	sub a                                            ; $6598: $97
	or l                                             ; $6599: $b5
	ld a, d                                          ; $659a: $7a
	or l                                             ; $659b: $b5
	nop                                              ; $659c: $00
	rlca                                             ; $659d: $07
	ld b, [hl]                                       ; $659e: $46
	push bc                                          ; $659f: $c5
	add $dc                                          ; $65a0: $c6 $dc
	rst $38                                          ; $65a2: $ff
	ld a, a                                          ; $65a3: $7f
	cp l                                             ; $65a4: $bd
	sub [hl]                                         ; $65a5: $96
	ccf                                              ; $65a6: $3f
	db $eb                                           ; $65a7: $eb
	push de                                          ; $65a8: $d5
	ld l, d                                          ; $65a9: $6a
	ld sp, $bd78                                     ; $65aa: $31 $78 $bd
	ld a, d                                          ; $65ad: $7a
	cp d                                             ; $65ae: $ba
	jp c, $82ff                                      ; $65af: $da $ff $82

	db $fd                                           ; $65b2: $fd
	add a                                            ; $65b3: $87
	push bc                                          ; $65b4: $c5

jr_04a_65b5:
	call nz, $9644                                   ; $65b5: $c4 $44 $96
	ld [de], a                                       ; $65b8: $12
	ld c, h                                          ; $65b9: $4c
	sbc e                                            ; $65ba: $9b
	jr c, jr_04a_6575                                ; $65bb: $38 $b8

	ld hl, sp-$08                                    ; $65bd: $f8 $f8
	jp hl                                            ; $65bf: $e9


	rst AddAOntoHL                                          ; $65c0: $ef
	cp a                                             ; $65c1: $bf
	ld a, a                                          ; $65c2: $7f
	rst $38                                          ; $65c3: $ff
	call nc, $b2ef                                   ; $65c4: $d4 $ef $b2
	sub d                                            ; $65c7: $92
	adc d                                            ; $65c8: $8a
	ld d, e                                          ; $65c9: $53
	ei                                               ; $65ca: $fb
	add $ef                                          ; $65cb: $c6 $ef
	ld [hl], a                                       ; $65cd: $77
	ld a, a                                          ; $65ce: $7f
	ld [hl], l                                       ; $65cf: $75
	ld a, $9c                                        ; $65d0: $3e $9c
	add b                                            ; $65d2: $80
	jr nz, jr_04a_65b5                               ; $65d3: $20 $e0

	db $dd                                           ; $65d5: $dd
	ld h, b                                          ; $65d6: $60
	sbc [hl]                                         ; $65d7: $9e
	ld h, c                                          ; $65d8: $61
	ld l, [hl]                                       ; $65d9: $6e
	cp a                                             ; $65da: $bf
	ld h, l                                          ; $65db: $65
	ret nz                                           ; $65dc: $c0

	sbc l                                            ; $65dd: $9d
	ret z                                            ; $65de: $c8

	ldh [c], a                                       ; $65df: $e2
	ei                                               ; $65e0: $fb
	add c                                            ; $65e1: $81
	inc b                                            ; $65e2: $04
	inc c                                            ; $65e3: $0c
	ld l, d                                          ; $65e4: $6a
	dec e                                            ; $65e5: $1d
	ld a, [hl+]                                      ; $65e6: $2a
	ld e, l                                          ; $65e7: $5d
	ei                                               ; $65e8: $fb
	ld l, l                                          ; $65e9: $6d
	rst SubAFromHL                                          ; $65ea: $d7
	rlca                                             ; $65eb: $07
	add b                                            ; $65ec: $80
	ret nz                                           ; $65ed: $c0

	add b                                            ; $65ee: $80
	add b                                            ; $65ef: $80
	db $10                                           ; $65f0: $10
	db $10                                           ; $65f1: $10
	jr c, @+$7a                                      ; $65f2: $38 $78

	add $42                                          ; $65f4: $c6 $42
	rst SubAFromHL                                          ; $65f6: $d7
	call c, $8b2b                                    ; $65f7: $dc $2b $8b
	cp e                                             ; $65fa: $bb
	xor d                                            ; $65fb: $aa
	ld bc, $0b01                                     ; $65fc: $01 $01 $0b
	ccf                                              ; $65ff: $3f
	sbc $7c                                          ; $6600: $de $7c
	sub e                                            ; $6602: $93
	ld a, l                                          ; $6603: $7d
	ld a, [bc]                                       ; $6604: $0a

Jump_04a_6605:
	push de                                          ; $6605: $d5
	ld a, [$70b0]                                    ; $6606: $fa $b0 $70
	or b                                             ; $6609: $b0
	ld [hl], b                                       ; $660a: $70
	xor d                                            ; $660b: $aa
	ldh [$ea], a                                     ; $660c: $e0 $ea
	push af                                          ; $660e: $f5
	halt                                             ; $660f: $76
	ret z                                            ; $6610: $c8

	ld a, l                                          ; $6611: $7d
	ret c                                            ; $6612: $d8

	sbc l                                            ; $6613: $9d
	ld a, b                                          ; $6614: $78
	xor d                                            ; $6615: $aa
	db $fd                                           ; $6616: $fd
	sbc l                                            ; $6617: $9d
	xor b                                            ; $6618: $a8
	nop                                              ; $6619: $00
	ld a, e                                          ; $661a: $7b
	push af                                          ; $661b: $f5
	cp $80                                           ; $661c: $fe $80
	ld d, b                                          ; $661e: $50
	ld b, c                                          ; $661f: $41
	jr nz, jr_04a_6663                               ; $6620: $20 $41

	ld [bc], a                                       ; $6622: $02
	ld bc, $1f08                                     ; $6623: $01 $08 $1f
	rra                                              ; $6626: $1f
	nop                                              ; $6627: $00
	ld bc, $8383                                     ; $6628: $01 $83 $83
	ld b, $07                                        ; $662b: $06 $07
	inc c                                            ; $662d: $0c
	ld [$efad], sp                                   ; $662e: $08 $ad $ef
	ld a, [bc]                                       ; $6631: $0a
	ld h, b                                          ; $6632: $60
	call $26c7                                       ; $6633: $cd $c7 $26
	ld h, b                                          ; $6636: $60
	jp nc, $f793                                     ; $6637: $d2 $93 $f7

	rst SubAFromDE                                          ; $663a: $df
	di                                               ; $663b: $f3
	cp l                                             ; $663c: $bd
	add b                                            ; $663d: $80
	db $fd                                           ; $663e: $fd
	rst $38                                          ; $663f: $ff
	xor c                                            ; $6640: $a9
	ld l, b                                          ; $6641: $68
	call $6ffb                                       ; $6642: $cd $fb $6f
	ld [hl], e                                       ; $6645: $73
	daa                                              ; $6646: $27
	ld a, $36                                        ; $6647: $3e $36
	or [hl]                                          ; $6649: $b6
	ld a, $3c                                        ; $664a: $3e $3c
	or b                                             ; $664c: $b0
	add b                                            ; $664d: $80
	rst SubAFromDE                                          ; $664e: $df
	rst $38                                          ; $664f: $ff
	ld a, a                                          ; $6650: $7f
	ld a, h                                          ; $6651: $7c
	cp $f9                                           ; $6652: $fe $f9
	rst GetHLinHL                                          ; $6654: $cf
	ld l, [hl]                                       ; $6655: $6e
	inc l                                            ; $6656: $2c
	ld h, d                                          ; $6657: $62
	ldh [$80], a                                     ; $6658: $e0 $80
	ld bc, $3f07                                     ; $665a: $01 $07 $3f
	sbc $ff                                          ; $665d: $de $ff
	sbc l                                            ; $665f: $9d
	rlca                                             ; $6660: $07
	rra                                              ; $6661: $1f
	ld a, e                                          ; $6662: $7b

jr_04a_6663:
	ld e, d                                          ; $6663: $5a
	sbc e                                            ; $6664: $9b
	ld a, a                                          ; $6665: $7f
	rrca                                             ; $6666: $0f
	adc a                                            ; $6667: $8f
	rst $38                                          ; $6668: $ff
	ld [hl], a                                       ; $6669: $77
	ld d, e                                          ; $666a: $53
	sbc $fe                                          ; $666b: $de $fe
	add b                                            ; $666d: $80
	ld hl, sp-$20                                    ; $666e: $f8 $e0
	sub $f7                                          ; $6670: $d6 $f7
	ldh [c], a                                       ; $6672: $e2
	ldh [c], a                                       ; $6673: $e2
	ld a, $ac                                        ; $6674: $3e $ac
	rst FarCall                                          ; $6676: $f7
	rst SubAFromDE                                          ; $6677: $df
	or e                                             ; $6678: $b3
	jr nz, @+$43                                     ; $6679: $20 $41

	ld b, c                                          ; $667b: $41
	pop bc                                           ; $667c: $c1
	db $d3                                           ; $667d: $d3
	sub c                                            ; $667e: $91
	db $10                                           ; $667f: $10
	sbc c                                            ; $6680: $99
	ld e, [hl]                                       ; $6681: $5e
	rst SubAFromDE                                          ; $6682: $df
	add [hl]                                         ; $6683: $86
	dec [hl]                                         ; $6684: $35
	ld a, e                                          ; $6685: $7b
	ld c, $0e                                        ; $6686: $0e $0e
	ld b, $3f                                        ; $6688: $06 $3f
	db $e3                                           ; $668a: $e3
	ld sp, hl                                        ; $668b: $f9
	ld a, [$b07e]                                    ; $668c: $fa $7e $b0
	adc l                                            ; $668f: $8d
	add a                                            ; $6690: $87
	ld [bc], a                                       ; $6691: $02
	inc bc                                           ; $6692: $03
	ldh a, [$3d]                                     ; $6693: $f0 $3d
	sbc b                                            ; $6695: $98
	dec a                                            ; $6696: $3d
	ld h, b                                          ; $6697: $60
	ld [hl], b                                       ; $6698: $70
	ld a, b                                          ; $6699: $78
	call c, $fefe                                    ; $669a: $dc $fe $fe
	ld a, [hl]                                       ; $669d: $7e
	cp $38                                           ; $669e: $fe $38
	sub b                                            ; $66a0: $90
	sbc b                                            ; $66a1: $98
	ld [hl], e                                       ; $66a2: $73
	cp $79                                           ; $66a3: $fe $79
	db $e4                                           ; $66a5: $e4
	call c, $9560                                    ; $66a6: $dc $60 $95
	add hl, bc                                       ; $66a9: $09
	ld b, $0b                                        ; $66aa: $06 $0b
	inc b                                            ; $66ac: $04
	ld a, [bc]                                       ; $66ad: $0a
	ld b, $10                                        ; $66ae: $06 $10
	ccf                                              ; $66b0: $3f
	ld b, $01                                        ; $66b1: $06 $01
	db $fd                                           ; $66b3: $fd
	sub e                                            ; $66b4: $93
	rrca                                             ; $66b5: $0f
	rra                                              ; $66b6: $1f
	push bc                                          ; $66b7: $c5
	ld b, [hl]                                       ; $66b8: $46
	dec b                                            ; $66b9: $05
	ld h, [hl]                                       ; $66ba: $66
	ld e, $1d                                        ; $66bb: $1e $1d
	sbc d                                            ; $66bd: $9a
	db $fd                                           ; $66be: $fd
	ccf                                              ; $66bf: $3f
	cp a                                             ; $66c0: $bf
	ld a, b                                          ; $66c1: $78
	inc sp                                           ; $66c2: $33
	add b                                            ; $66c3: $80
	ld c, $0d                                        ; $66c4: $0e $0d
	jp c, $ca75                                      ; $66c6: $da $75 $ca

	ld h, l                                          ; $66c9: $65
	ld [$7aed], a                                    ; $66ca: $ea $ed $7a
	push af                                          ; $66cd: $f5
	ld a, d                                          ; $66ce: $7a
	ld a, [$caf5]                                    ; $66cf: $fa $f5 $ca
	push bc                                          ; $66d2: $c5
	ld b, d                                          ; $66d3: $42
	push bc                                          ; $66d4: $c5
	ld c, d                                          ; $66d5: $4a
	push bc                                          ; $66d6: $c5
	ld a, e                                          ; $66d7: $7b
	cp h                                             ; $66d8: $bc
	ld a, h                                          ; $66d9: $7c
	or h                                             ; $66da: $b4
	ld h, l                                          ; $66db: $65
	add h                                            ; $66dc: $84
	ld b, h                                          ; $66dd: $44
	add h                                            ; $66de: $84
	cp a                                             ; $66df: $bf
	ld a, e                                          ; $66e0: $7b
	cp b                                             ; $66e1: $b8
	ld a, b                                          ; $66e2: $78
	ld [hl], a                                       ; $66e3: $77
	cp $95                                           ; $66e4: $fe $95
	ei                                               ; $66e6: $fb
	inc sp                                           ; $66e7: $33
	dec c                                            ; $66e8: $0d
	rra                                              ; $66e9: $1f
	inc c                                            ; $66ea: $0c
	inc [hl]                                         ; $66eb: $34
	inc c                                            ; $66ec: $0c
	ld [hl], b                                       ; $66ed: $70
	rst $38                                          ; $66ee: $ff
	rst GetHLinHL                                          ; $66ef: $cf
	ld a, e                                          ; $66f0: $7b
	adc [hl]                                         ; $66f1: $8e
	sub h                                            ; $66f2: $94
	ld b, $36                                        ; $66f3: $06 $36
	ld a, $60                                        ; $66f5: $3e $60
	ldh [$a1], a                                     ; $66f7: $e0 $a1
	ld h, c                                          ; $66f9: $61
	nop                                              ; $66fa: $00
	nop                                              ; $66fb: $00
	ld [de], a                                       ; $66fc: $12
	add hl, hl                                       ; $66fd: $29
	ld a, c                                          ; $66fe: $79
	ld a, l                                          ; $66ff: $7d
	ld [hl], h                                       ; $6700: $74
	and e                                            ; $6701: $a3
	add b                                            ; $6702: $80
	ld d, $8a                                        ; $6703: $16 $8a
	and b                                            ; $6705: $a0
	ld [hl+], a                                      ; $6706: $22
	ld [hl-], a                                      ; $6707: $32
	or $2a                                           ; $6708: $f6 $2a
	and d                                            ; $670a: $a2
	jr z, jr_04a_6751                                ; $670b: $28 $44

	ld c, [hl]                                       ; $670d: $4e
	call z, $08cc                                    ; $670e: $cc $cc $08
	inc d                                            ; $6711: $14
	inc b                                            ; $6712: $04
	inc b                                            ; $6713: $04
	sbc e                                            ; $6714: $9b
	dec l                                            ; $6715: $2d
	xor a                                            ; $6716: $af
	ld e, a                                          ; $6717: $5f
	cp h                                             ; $6718: $bc
	ld a, e                                          ; $6719: $7b
	call z, Call_04a_6c2d                            ; $671a: $cc $2d $6c
	ld e, d                                          ; $671d: $5a
	ld a, b                                          ; $671e: $78
	jr c, jr_04a_67a0                                ; $671f: $38 $7f

	ld a, a                                          ; $6721: $7f
	add c                                            ; $6722: $81
	ld a, e                                          ; $6723: $7b
	ld c, e                                          ; $6724: $4b
	ld sp, $dd5f                                     ; $6725: $31 $5f $dd
	sbc e                                            ; $6728: $9b
	dec sp                                           ; $6729: $3b
	ld a, l                                          ; $672a: $7d
	ld l, l                                          ; $672b: $6d
	db $ed                                           ; $672c: $ed
	ld a, a                                          ; $672d: $7f
	ccf                                              ; $672e: $3f
	dec sp                                           ; $672f: $3b
	ld a, a                                          ; $6730: $7f
	rst $38                                          ; $6731: $ff
	db $eb                                           ; $6732: $eb
	res 3, e                                         ; $6733: $cb $9b
	ldh a, [rSCY]                                    ; $6735: $f0 $42
	ld d, [hl]                                       ; $6737: $56
	ld c, a                                          ; $6738: $4f
	ld d, a                                          ; $6739: $57
	ld c, a                                          ; $673a: $4f
	rla                                              ; $673b: $17
	ld a, [bc]                                       ; $673c: $0a
	rst $38                                          ; $673d: $ff
	db $fc                                           ; $673e: $fc
	add sp, -$10                                     ; $673f: $e8 $f0
	ld a, e                                          ; $6741: $7b
	cp $95                                           ; $6742: $fe $95
	push af                                          ; $6744: $f5
	nop                                              ; $6745: $00
	ld bc, $8000                                     ; $6746: $01 $00 $80
	ld hl, sp-$04                                    ; $6749: $f8 $fc
	ld d, b                                          ; $674b: $50
	or b                                             ; $674c: $b0
	rst $38                                          ; $674d: $ff
	db $fc                                           ; $674e: $fc
	ld a, l                                          ; $674f: $7d
	add a                                            ; $6750: $87

jr_04a_6751:
	sub l                                            ; $6751: $95
	jr @+$61                                         ; $6752: $18 $5f

	rrca                                             ; $6754: $0f
	nop                                              ; $6755: $00
	ld a, a                                          ; $6756: $7f
	ld b, $40                                        ; $6757: $06 $40
	ld b, b                                          ; $6759: $40
	adc a                                            ; $675a: $8f
	adc a                                            ; $675b: $8f
	cp $91                                           ; $675c: $fe $91
	ld a, b                                          ; $675e: $78
	nop                                              ; $675f: $00
	nop                                              ; $6760: $00
	and d                                            ; $6761: $a2
	rst $38                                          ; $6762: $ff
	db $fc                                           ; $6763: $fc
	add e                                            ; $6764: $83
	ld e, $67                                        ; $6765: $1e $67
	jp $c1e3                                         ; $6767: $c3 $e3 $c1


	rst $38                                          ; $676a: $ff
	ld b, a                                          ; $676b: $47
	ld a, d                                          ; $676c: $7a
	xor $80                                          ; $676d: $ee $80
	ld h, a                                          ; $676f: $67
	ld b, a                                          ; $6770: $47
	ld sp, hl                                        ; $6771: $f9
	jp z, $8246                                      ; $6772: $ca $46 $82

	jp hl                                            ; $6775: $e9


	ld l, b                                          ; $6776: $68
	and d                                            ; $6777: $a2
	inc bc                                           ; $6778: $03

jr_04a_6779:
	cp $f4                                           ; $6779: $fe $f4
	ld hl, sp-$03                                    ; $677b: $f8 $fd
	or $f7                                           ; $677d: $f6 $f7
	ld a, l                                          ; $677f: $7d
	db $fc                                           ; $6780: $fc
	ld d, b                                          ; $6781: $50
	ld a, [hl+]                                      ; $6782: $2a
	call nc, $f609                                   ; $6783: $d4 $09 $f6
	ld e, $1f                                        ; $6786: $1e $1f
	add h                                            ; $6788: $84
	rst AddAOntoHL                                          ; $6789: $ef
	ld d, l                                          ; $678a: $55
	dec hl                                           ; $678b: $2b
	inc d                                            ; $678c: $14
	inc c                                            ; $678d: $0c
	ld a, [hl]                                       ; $678e: $7e
	ret                                              ; $678f: $c9


	sub e                                            ; $6790: $93
	ld c, a                                          ; $6791: $4f
	ld b, h                                          ; $6792: $44
	ld c, h                                          ; $6793: $4c
	and a                                            ; $6794: $a7
	ld c, l                                          ; $6795: $4d
	ld e, c                                          ; $6796: $59
	ld sp, hl                                        ; $6797: $f9
	ld sp, hl                                        ; $6798: $f9
	cp e                                             ; $6799: $bb
	rst $38                                          ; $679a: $ff
	or a                                             ; $679b: $b7
	db $fd                                           ; $679c: $fd
	db $dd                                           ; $679d: $dd
	rst $38                                          ; $679e: $ff
	add b                                            ; $679f: $80

jr_04a_67a0:
	rst SubAFromDE                                          ; $67a0: $df
	xor l                                            ; $67a1: $ad
	jp hl                                            ; $67a2: $e9


	xor b                                            ; $67a3: $a8
	ret nz                                           ; $67a4: $c0

	ld bc, $e41b                                     ; $67a5: $01 $1b $e4
	ld b, $d3                                        ; $67a8: $06 $d3
	sub a                                            ; $67aa: $97
	rst SubAFromHL                                          ; $67ab: $d7
	cp a                                             ; $67ac: $bf
	cp $ff                                           ; $67ad: $fe $ff
	cp $cc                                           ; $67af: $fe $cc
	call Call_04a_61bf                               ; $67b1: $cd $bf $61
	ld c, e                                          ; $67b4: $4b
	ld h, [hl]                                       ; $67b5: $66
	call z, $d3aa                                    ; $67b6: $cc $aa $d3
	rst $38                                          ; $67b9: $ff
	ret nz                                           ; $67ba: $c0

	sbc b                                            ; $67bb: $98
	sbc b                                            ; $67bc: $98
	add b                                            ; $67bd: $80
	add d                                            ; $67be: $82

jr_04a_67bf:
	sub c                                            ; $67bf: $91
	call nz, Call_04a_7ce1                           ; $67c0: $c4 $e1 $7c
	ld a, l                                          ; $67c3: $7d
	ld a, b                                          ; $67c4: $78
	ld sp, hl                                        ; $67c5: $f9
	jr z, jr_04a_6779                                ; $67c6: $28 $b1

	ld a, b                                          ; $67c8: $78
	pop af                                           ; $67c9: $f1
	cp $fe                                           ; $67ca: $fe $fe
	cp [hl]                                          ; $67cc: $be
	cp [hl]                                          ; $67cd: $be
	ld a, d                                          ; $67ce: $7a
	pop bc                                           ; $67cf: $c1
	sbc [hl]                                         ; $67d0: $9e
	cp $6e                                           ; $67d1: $fe $6e
	jp nz, $fe7f                                     ; $67d3: $c2 $7f $fe

	reti                                             ; $67d6: $d9


	ld h, b                                          ; $67d7: $60
	sub a                                            ; $67d8: $97
	jr nz, jr_04a_6801                               ; $67d9: $20 $26

	ccf                                              ; $67db: $3f
	ld de, $0f1a                                     ; $67dc: $11 $1a $0f
	dec l                                            ; $67df: $2d
	jr nz, jr_04a_67bf                               ; $67e0: $20 $dd

	ccf                                              ; $67e2: $3f
	sub b                                            ; $67e3: $90
	dec e                                            ; $67e4: $1d
	inc e                                            ; $67e5: $1c
	db $10                                           ; $67e6: $10
	db $10                                           ; $67e7: $10
	ld h, [hl]                                       ; $67e8: $66
	xor c                                            ; $67e9: $a9
	ld d, l                                          ; $67ea: $55
	add b                                            ; $67eb: $80
	ret nz                                           ; $67ec: $c0

	ld [hl], b                                       ; $67ed: $70
	db $10                                           ; $67ee: $10
	or e                                             ; $67ef: $b3
	rst $38                                          ; $67f0: $ff
	ld d, a                                          ; $67f1: $57
	xor e                                            ; $67f2: $ab
	db $dd                                           ; $67f3: $dd
	rst $38                                          ; $67f4: $ff
	sub h                                            ; $67f5: $94
	ld e, a                                          ; $67f6: $5f
	ld a, l                                          ; $67f7: $7d
	ld a, d                                          ; $67f8: $7a
	dec a                                            ; $67f9: $3d
	ld a, [$fabd]                                    ; $67fa: $fa $bd $fa
	or l                                             ; $67fd: $b5
	ld a, [$85c2]                                    ; $67fe: $fa $c2 $85

jr_04a_6801:
	ld [hl], a                                       ; $6801: $77
	cp $80                                           ; $6802: $fe $80
	jp z, Jump_04a_4485                              ; $6804: $ca $85 $44

	adc l                                            ; $6807: $8d
	dec d                                            ; $6808: $15
	xor l                                            ; $6809: $ad
	inc d                                            ; $680a: $14
	xor e                                            ; $680b: $ab
	ld e, $9f                                        ; $680c: $1e $9f
	cp b                                             ; $680e: $b8
	ld [hl], b                                       ; $680f: $70
	add sp, $50                                      ; $6810: $e8 $50
	add sp, $5c                                      ; $6812: $e8 $5c
	rst $38                                          ; $6814: $ff
	ld a, a                                          ; $6815: $7f
	ld a, [$b1f5]                                    ; $6816: $fa $f5 $b1
	xor l                                            ; $6819: $ad
	or c                                             ; $681a: $b1
	xor l                                            ; $681b: $ad
	and l                                            ; $681c: $a5
	push hl                                          ; $681d: $e5
	scf                                              ; $681e: $37
	inc sp                                           ; $681f: $33
	ld a, a                                          ; $6820: $7f
	ld [hl], e                                       ; $6821: $73
	ld h, e                                          ; $6822: $63
	rst SubAFromDE                                          ; $6823: $df
	ld [hl], e                                       ; $6824: $73
	sbc b                                            ; $6825: $98
	inc sp                                           ; $6826: $33
	rla                                              ; $6827: $17
	adc [hl]                                         ; $6828: $8e
	sbc a                                            ; $6829: $9f
	add b                                            ; $682a: $80
	add b                                            ; $682b: $80
	sub b                                            ; $682c: $90
	ld a, e                                          ; $682d: $7b
	inc hl                                           ; $682e: $23
	sbc [hl]                                         ; $682f: $9e
	ld de, $7176                                     ; $6830: $11 $76 $71
	rst $38                                          ; $6833: $ff
	add b                                            ; $6834: $80
	db $fc                                           ; $6835: $fc
	di                                               ; $6836: $f3
	rst SubAFromBC                                          ; $6837: $e7
	dec de                                           ; $6838: $1b
	rla                                              ; $6839: $17
	sbc d                                            ; $683a: $9a
	sub h                                            ; $683b: $94
	jr c, jr_04a_683e                                ; $683c: $38 $00

jr_04a_683e:
	nop                                              ; $683e: $00
	inc bc                                           ; $683f: $03
	rlca                                             ; $6840: $07
	dec bc                                           ; $6841: $0b
	rlca                                             ; $6842: $07
	ld a, [hl+]                                      ; $6843: $2a
	inc bc                                           ; $6844: $03
	ld c, e                                          ; $6845: $4b
	ld a, [$fe7f]                                    ; $6846: $fa $7f $fe
	cp $de                                           ; $6849: $fe $de
	inc d                                            ; $684b: $14
	inc c                                            ; $684c: $0c
	ld c, a                                          ; $684d: $4f
	rst $38                                          ; $684e: $ff
	or a                                             ; $684f: $b7
	rst FarCall                                          ; $6850: $f7
	rst SubAFromDE                                          ; $6851: $df
	rrca                                             ; $6852: $0f
	ld b, $9d                                        ; $6853: $06 $9d
	inc b                                            ; $6855: $04
	rst AddAOntoHL                                          ; $6856: $ef
	ld a, c                                          ; $6857: $79
	ei                                               ; $6858: $fb
	adc c                                            ; $6859: $89
	ld a, [hl]                                       ; $685a: $7e
	ld a, [hl-]                                      ; $685b: $3a
	ld a, [hl-]                                      ; $685c: $3a
	ld c, h                                          ; $685d: $4c
	sbc c                                            ; $685e: $99
	ld bc, $0901                                     ; $685f: $01 $01 $09
	add hl, bc                                       ; $6862: $09
	ld c, l                                          ; $6863: $4d
	ld l, l                                          ; $6864: $6d
	ei                                               ; $6865: $fb
	ld e, l                                          ; $6866: $5d
	ldh a, [$e7]                                     ; $6867: $f0 $e7
	rst SubAFromBC                                          ; $6869: $e7
	rst FarCall                                          ; $686a: $f7
	rst SubAFromBC                                          ; $686b: $e7
	db $fc                                           ; $686c: $fc
	xor $be                                          ; $686d: $ee $be
	rst $38                                          ; $686f: $ff
	call c, $9df8                                    ; $6870: $dc $f8 $9d
	cp $c0                                           ; $6873: $fe $c0
	ld [hl], l                                       ; $6875: $75
	ld d, a                                          ; $6876: $57
	sbc h                                            ; $6877: $9c
	jr @+$2a                                         ; $6878: $18 $28

	or b                                             ; $687a: $b0
	ei                                               ; $687b: $fb
	sub a                                            ; $687c: $97
	db $10                                           ; $687d: $10
	ld b, b                                          ; $687e: $40
	ld a, b                                          ; $687f: $78
	nop                                              ; $6880: $00
	ld a, [hl]                                       ; $6881: $7e
	ld e, $00                                        ; $6882: $1e $00

jr_04a_6884:
	ld c, h                                          ; $6884: $4c
	ld [hl], b                                       ; $6885: $70
	ld sp, $609e                                     ; $6886: $31 $9e $60
	db $fd                                           ; $6889: $fd
	reti                                             ; $688a: $d9


	db $e3                                           ; $688b: $e3
	reti                                             ; $688c: $d9


	ld b, a                                          ; $688d: $47
	sub [hl]                                         ; $688e: $96
	inc bc                                           ; $688f: $03
	ld [bc], a                                       ; $6890: $02
	inc d                                            ; $6891: $14
	rra                                              ; $6892: $1f
	ld hl, sp-$10                                    ; $6893: $f8 $f0
	rst $38                                          ; $6895: $ff
	rst $38                                          ; $6896: $ff
	db $fc                                           ; $6897: $fc
	ld [hl], d                                       ; $6898: $72
	pop hl                                           ; $6899: $e1
	rst SubAFromDE                                          ; $689a: $df
	rst $38                                          ; $689b: $ff
	rst SubAFromDE                                          ; $689c: $df
	rra                                              ; $689d: $1f
	add b                                            ; $689e: $80
	xor [hl]                                         ; $689f: $ae
	push de                                          ; $68a0: $d5
	ld [$fb74], a                                    ; $68a1: $ea $74 $fb
	pop af                                           ; $68a4: $f1
	rst GetHLinHL                                          ; $68a5: $cf
	ccf                                              ; $68a6: $3f
	ld e, a                                          ; $68a7: $5f
	xor $f5                                          ; $68a8: $ee $f5
	ei                                               ; $68aa: $fb
	db $fd                                           ; $68ab: $fd
	ei                                               ; $68ac: $fb
	ld [bc], a                                       ; $68ad: $02
	rlca                                             ; $68ae: $07
	and [hl]                                         ; $68af: $a6
	ld d, l                                          ; $68b0: $55
	and h                                            ; $68b1: $a4
	db $fd                                           ; $68b2: $fd
	call z, $ff77                                    ; $68b3: $cc $77 $ff
	cp [hl]                                          ; $68b6: $be
	ld e, a                                          ; $68b7: $5f
	xor [hl]                                         ; $68b8: $ae
	ld e, a                                          ; $68b9: $5f
	cp $3f                                           ; $68ba: $fe $3f
	adc [hl]                                         ; $68bc: $8e
	db $f4                                           ; $68bd: $f4
	add b                                            ; $68be: $80
	ld l, [hl]                                       ; $68bf: $6e
	xor l                                            ; $68c0: $ad
	ld c, d                                          ; $68c1: $4a
	sbc c                                            ; $68c2: $99
	ld a, [de]                                       ; $68c3: $1a
	sub l                                            ; $68c4: $95
	ld a, [hl-]                                      ; $68c5: $3a
	ld c, $9c                                        ; $68c6: $0e $9c
	ld e, h                                          ; $68c8: $5c
	cp h                                             ; $68c9: $bc
	ld a, h                                          ; $68ca: $7c
	db $fd                                           ; $68cb: $fd
	ld a, d                                          ; $68cc: $7a
	push af                                          ; $68cd: $f5
	add e                                            ; $68ce: $83
	or e                                             ; $68cf: $b3
	inc b                                            ; $68d0: $04
	ld b, c                                          ; $68d1: $41
	db $d3                                           ; $68d2: $d3
	jr nz, jr_04a_6884                               ; $68d3: $20 $af

	ld h, $ff                                        ; $68d5: $26 $ff
	rst GetHLinHL                                          ; $68d7: $cf
	jp $0c86                                         ; $68d8: $c3 $86 $0c


	rra                                              ; $68db: $1f
	db $10                                           ; $68dc: $10
	sub b                                            ; $68dd: $90
	sub a                                            ; $68de: $97
	ldh a, [$71]                                     ; $68df: $f0 $71
	ld [hl], b                                       ; $68e1: $70

jr_04a_68e2:
	add hl, sp                                       ; $68e2: $39
	ld e, b                                          ; $68e3: $58
	sub c                                            ; $68e4: $91
	inc b                                            ; $68e5: $04
	dec d                                            ; $68e6: $15
	db $dd                                           ; $68e7: $dd
	cp $9b                                           ; $68e8: $fe $9b
	cp [hl]                                          ; $68ea: $be
	ld c, $02                                        ; $68eb: $0e $02
	ld [bc], a                                       ; $68ed: $02
	ld l, [hl]                                       ; $68ee: $6e
	jp nz, $999d                                     ; $68ef: $c2 $9d $99

	sub e                                            ; $68f2: $93
	jp c, $8060                                      ; $68f3: $da $60 $80

	ld h, c                                          ; $68f6: $61
	ld [$0009], sp                                   ; $68f7: $08 $09 $00
	ld e, $1b                                        ; $68fa: $1e $1b
	ld b, [hl]                                       ; $68fc: $46
	ld c, d                                          ; $68fd: $4a
	sub l                                            ; $68fe: $95
	db $10                                           ; $68ff: $10
	db $10                                           ; $6900: $10
	rra                                              ; $6901: $1f
	rrca                                             ; $6902: $0f
	rrca                                             ; $6903: $0f
	dec sp                                           ; $6904: $3b
	rst FarCall                                          ; $6905: $f7
	rst $38                                          ; $6906: $ff
	ld a, a                                          ; $6907: $7f
	ld a, a                                          ; $6908: $7f
	ccf                                              ; $6909: $3f
	ld e, $0e                                        ; $690a: $1e $0e
	ld d, a                                          ; $690c: $57
	xor a                                            ; $690d: $af
	db $dd                                           ; $690e: $dd
	ccf                                              ; $690f: $3f
	ld a, $1f                                        ; $6910: $3e $1f
	inc b                                            ; $6912: $04
	inc b                                            ; $6913: $04
	rlca                                             ; $6914: $07
	adc c                                            ; $6915: $89
	rlca                                             ; $6916: $07
	ld [$1dc2], sp                                   ; $6917: $08 $c2 $1d
	sub d                                            ; $691a: $92
	ld e, e                                          ; $691b: $5b
	sbc [hl]                                         ; $691c: $9e
	ld b, c                                          ; $691d: $41
	rst $38                                          ; $691e: $ff
	rst $38                                          ; $691f: $ff
	ld b, d                                          ; $6920: $42
	dec e                                            ; $6921: $1d
	ld [hl-], a                                      ; $6922: $32
	ccf                                              ; $6923: $3f
	ccf                                              ; $6924: $3f
	ld [hl], $de                                     ; $6925: $36 $de
	ld h, e                                          ; $6927: $63
	rlca                                             ; $6928: $07
	inc bc                                           ; $6929: $03
	rra                                              ; $692a: $1f
	ccf                                              ; $692b: $3f
	ld [hl], h                                       ; $692c: $74
	ld d, a                                          ; $692d: $57
	add b                                            ; $692e: $80
	and e                                            ; $692f: $a3
	ld b, c                                          ; $6930: $41
	or h                                             ; $6931: $b4
	ld b, b                                          ; $6932: $40
	and b                                            ; $6933: $a0
	and b                                            ; $6934: $a0
	ld c, b                                          ; $6935: $48
	jr @+$01                                         ; $6936: $18 $ff

	di                                               ; $6938: $f3
	cp $bd                                           ; $6939: $fe $bd
	jp c, $eaf9                                      ; $693b: $da $f9 $ea

	db $ed                                           ; $693e: $ed
	jr nc, jr_04a_68e2                               ; $693f: $30 $a1

	pop hl                                           ; $6941: $e1
	rst $38                                          ; $6942: $ff
	dec sp                                           ; $6943: $3b
	dec de                                           ; $6944: $1b
	ld e, a                                          ; $6945: $5f
	ld e, a                                          ; $6946: $5f
	ld bc, $559f                                     ; $6947: $01 $9f $55
	ld l, $a2                                        ; $694a: $2e $a2
	cp [hl]                                          ; $694c: $be
	ld a, [hl-]                                      ; $694d: $3a
	add b                                            ; $694e: $80
	ld d, [hl]                                       ; $694f: $56
	add b                                            ; $6950: $80
	ret nz                                           ; $6951: $c0

	xor d                                            ; $6952: $aa
	rst FarCall                                          ; $6953: $f7
	ld a, a                                          ; $6954: $7f
	rst FarCall                                          ; $6955: $f7
	rst FarCall                                          ; $6956: $f7
	rst $38                                          ; $6957: $ff
	inc bc                                           ; $6958: $03
	ld [bc], a                                       ; $6959: $02
	ld [de], a                                       ; $695a: $12
	xor h                                            ; $695b: $ac
	ld c, $03                                        ; $695c: $0e $03
	inc bc                                           ; $695e: $03
	ld b, d                                          ; $695f: $42
	inc bc                                           ; $6960: $03
	ld e, $7c                                        ; $6961: $1e $7c
	cp $bf                                           ; $6963: $fe $bf
	sbc [hl]                                         ; $6965: $9e
	cp $fe                                           ; $6966: $fe $fe
	add hl, de                                       ; $6968: $19
	pop af                                           ; $6969: $f1

jr_04a_696a:
	ld c, c                                          ; $696a: $49
	dec b                                            ; $696b: $05
	jr nz, jr_04a_696a                               ; $696c: $20 $fc

	add b                                            ; $696e: $80
	ld h, $2a                                        ; $696f: $26 $2a
	ld bc, $3031                                     ; $6971: $01 $31 $30
	ccf                                              ; $6974: $3f
	rst $38                                          ; $6975: $ff
	ccf                                              ; $6976: $3f
	ccf                                              ; $6977: $3f
	dec sp                                           ; $6978: $3b
	ld d, [hl]                                       ; $6979: $56
	cp a                                             ; $697a: $bf
	xor l                                            ; $697b: $ad
	cp $eb                                           ; $697c: $fe $eb
	ld c, d                                          ; $697e: $4a
	dec l                                            ; $697f: $2d
	ld l, e                                          ; $6980: $6b
	cp a                                             ; $6981: $bf
	ld a, a                                          ; $6982: $7f
	ld a, [hl]                                       ; $6983: $7e
	daa                                              ; $6984: $27
	rst SubAFromBC                                          ; $6985: $e7
	pop af                                           ; $6986: $f1
	di                                               ; $6987: $f3
	rst FarCall                                          ; $6988: $f7
	ld h, b                                          ; $6989: $60
	add b                                            ; $698a: $80
	ld d, [hl]                                       ; $698b: $56
	bit 2, a                                         ; $698c: $cb $57
	sub a                                            ; $698e: $97
	db $eb                                           ; $698f: $eb
	or $fd                                           ; $6990: $f6 $fd
	rst $38                                          ; $6992: $ff
	db $fc                                           ; $6993: $fc
	db $fc                                           ; $6994: $fc
	ld a, h                                          ; $6995: $7c
	db $fc                                           ; $6996: $fc
	ld a, d                                          ; $6997: $7a
	ei                                               ; $6998: $fb
	sub e                                            ; $6999: $93
	ld a, h                                          ; $699a: $7c
	sbc $3f                                          ; $699b: $de $3f
	ld [hl], $76                                     ; $699d: $36 $76
	call c, $3488                                    ; $699f: $dc $88 $34
	add b                                            ; $69a2: $80
	ld a, $3f                                        ; $69a3: $3e $3f
	ld a, c                                          ; $69a5: $79
	db $dd                                           ; $69a6: $dd
	ld hl, sp-$6a                                    ; $69a7: $f8 $96
	ld bc, $0c7c                                     ; $69a9: $01 $7c $0c
	ld b, $4a                                        ; $69ac: $06 $4a
	ld bc, $4076                                     ; $69ae: $01 $76 $40
	ld a, [hl]                                       ; $69b1: $7e
	db $fd                                           ; $69b2: $fd
	ld a, e                                          ; $69b3: $7b
	ei                                               ; $69b4: $fb
	rst SubAFromDE                                          ; $69b5: $df
	db $e3                                           ; $69b6: $e3
	rst SubAFromDE                                          ; $69b7: $df
	ei                                               ; $69b8: $fb
	rst SubAFromDE                                          ; $69b9: $df
	ld a, [$ee9d]                                    ; $69ba: $fa $9d $ee
	rst GetHLinHL                                          ; $69bd: $cf
	reti                                             ; $69be: $d9


	ld b, a                                          ; $69bf: $47
	sbc e                                            ; $69c0: $9b
	rst AddAOntoHL                                          ; $69c1: $ef
	ldh [$f8], a                                     ; $69c2: $e0 $f8
	cp a                                             ; $69c4: $bf
	call c, Call_04a_7eff                            ; $69c5: $dc $ff $7e
	cp e                                             ; $69c8: $bb
	sbc l                                            ; $69c9: $9d
	ret nz                                           ; $69ca: $c0

	nop                                              ; $69cb: $00
	sbc $01                                          ; $69cc: $de $01
	rst SubAFromDE                                          ; $69ce: $df
	inc bc                                           ; $69cf: $03
	sub d                                            ; $69d0: $92
	add e                                            ; $69d1: $83
	jp $afc3                                         ; $69d2: $c3 $c3 $af


	rra                                              ; $69d5: $1f
	rra                                              ; $69d6: $1f
	sbc a                                            ; $69d7: $9f
	rra                                              ; $69d8: $1f
	cp a                                             ; $69d9: $bf
	rst $38                                          ; $69da: $ff
	cp $fc                                           ; $69db: $fe $fc
	ldh a, [$74]                                     ; $69dd: $f0 $74
	ld c, l                                          ; $69df: $4d
	add a                                            ; $69e0: $87
	cp $1c                                           ; $69e1: $fe $1c
	ldh a, [$fc]                                     ; $69e3: $f0 $fc
	cp $07                                           ; $69e5: $fe $07
	adc $ff                                          ; $69e7: $ce $ff
	cp $0d                                           ; $69e9: $fe $0d
	ld a, [bc]                                       ; $69eb: $0a
	dec b                                            ; $69ec: $05
	add d                                            ; $69ed: $82

jr_04a_69ee:
	jr nc, jr_04a_69ee                               ; $69ee: $30 $fe

	ld a, [$ca9d]                                    ; $69f0: $fa $9d $ca
	ld l, h                                          ; $69f3: $6c

jr_04a_69f4:
	ld e, [hl]                                       ; $69f4: $5e
	cp h                                             ; $69f5: $bc
	rst $38                                          ; $69f6: $ff
	ld sp, $77bf                                     ; $69f7: $31 $bf $77
	add hl, hl                                       ; $69fa: $29
	ld a, l                                          ; $69fb: $7d
	ret                                              ; $69fc: $c9


	rst SubAFromDE                                          ; $69fd: $df
	ld b, b                                          ; $69fe: $40
	sbc c                                            ; $69ff: $99
	ld h, c                                          ; $6a00: $61
	dec a                                            ; $6a01: $3d
	rrca                                             ; $6a02: $0f
	ld a, a                                          ; $6a03: $7f
	add a                                            ; $6a04: $87
	and b                                            ; $6a05: $a0
	sbc $80                                          ; $6a06: $de $80
	add e                                            ; $6a08: $83
	ret nz                                           ; $6a09: $c0

	ldh a, [$80]                                     ; $6a0a: $f0 $80
	ret nz                                           ; $6a0c: $c0

	jr nz, jr_04a_6a6f                               ; $6a0d: $20 $60

	ldh a, [c]                                       ; $6a0f: $f2
	or d                                             ; $6a10: $b2
	sub b                                            ; $6a11: $90
	ld b, b                                          ; $6a12: $40
	ld h, c                                          ; $6a13: $61
	ld h, c                                          ; $6a14: $61

jr_04a_6a15:
	add e                                            ; $6a15: $83
	inc bc                                           ; $6a16: $03
	ld bc, $6141                                     ; $6a17: $01 $41 $61
	pop af                                           ; $6a1a: $f1
	ldh a, [$f0]                                     ; $6a1b: $f0 $f0
	sbc h                                            ; $6a1d: $9c
	adc [hl]                                         ; $6a1e: $8e
	adc a                                            ; $6a1f: $8f
	adc d                                            ; $6a20: $8a
	sbc d                                            ; $6a21: $9a
	dec bc                                           ; $6a22: $0b
	dec bc                                           ; $6a23: $0b
	adc a                                            ; $6a24: $8f
	ld a, c                                          ; $6a25: $79
	call nc, Call_04a_778f                           ; $6a26: $d4 $8f $77
	ld h, a                                          ; $6a29: $67
	rst FarCall                                          ; $6a2a: $f7
	rst FarCall                                          ; $6a2b: $f7
	di                                               ; $6a2c: $f3
	push de                                          ; $6a2d: $d5
	jp z, $b8f5                                      ; $6a2e: $ca $f5 $b8

	sub b                                            ; $6a31: $90
	add b                                            ; $6a32: $80
	ccf                                              ; $6a33: $3f
	inc hl                                           ; $6a34: $23
	jr nz, @+$62                                     ; $6a35: $20 $60

	jr nz, jr_04a_6a15                               ; $6a37: $20 $dc

jr_04a_6a39:
	rst $38                                          ; $6a39: $ff
	sub h                                            ; $6a3a: $94
	ret z                                            ; $6a3b: $c8

	jp z, $e753                                      ; $6a3c: $ca $53 $e7

	rla                                              ; $6a3f: $17
	rra                                              ; $6a40: $1f
	sbc a                                            ; $6a41: $9f
	sbc $30                                          ; $6a42: $de $30
	db $10                                           ; $6a44: $10
	ld h, b                                          ; $6a45: $60
	sbc $f0                                          ; $6a46: $de $f0
	ld a, a                                          ; $6a48: $7f
	adc [hl]                                         ; $6a49: $8e
	adc l                                            ; $6a4a: $8d
	ld a, a                                          ; $6a4b: $7f
	scf                                              ; $6a4c: $37
	ccf                                              ; $6a4d: $3f
	ld a, $9d                                        ; $6a4e: $3e $9d
	sbc a                                            ; $6a50: $9f
	add hl, de                                       ; $6a51: $19
	sbc b                                            ; $6a52: $98
	ld a, $33                                        ; $6a53: $3e $33
	dec d                                            ; $6a55: $15
	add hl, de                                       ; $6a56: $19
	rra                                              ; $6a57: $1f
	rra                                              ; $6a58: $1f
	ld d, $11                                        ; $6a59: $16 $11
	rst $38                                          ; $6a5b: $ff
	cp a                                             ; $6a5c: $bf
	db $dd                                           ; $6a5d: $dd
	ccf                                              ; $6a5e: $3f
	ld a, [hl]                                       ; $6a5f: $7e
	sbc e                                            ; $6a60: $9b
	add b                                            ; $6a61: $80
	jr c, jr_04a_69f4                                ; $6a62: $38 $90

	ret nc                                           ; $6a64: $d0

	sub b                                            ; $6a65: $90
	jr nz, jr_04a_6ac8                               ; $6a66: $20 $60

	ldh [$e3], a                                     ; $6a68: $e0 $e3
	ld a, e                                          ; $6a6a: $7b
	ld a, l                                          ; $6a6b: $7d
	ld a, c                                          ; $6a6c: $79
	ld sp, hl                                        ; $6a6d: $f9
	jp hl                                            ; $6a6e: $e9


jr_04a_6a6f:
	ld e, e                                          ; $6a6f: $5b
	ld [$cfc8], a                                    ; $6a70: $ea $c8 $cf
	ret                                              ; $6a73: $c9


	reti                                             ; $6a74: $d9


	ld a, c                                          ; $6a75: $79
	ld c, c                                          ; $6a76: $49
	adc e                                            ; $6a77: $8b
	ld c, d                                          ; $6a78: $4a
	adc h                                            ; $6a79: $8c
	and $f5                                          ; $6a7a: $e6 $f5
	or h                                             ; $6a7c: $b4
	xor h                                            ; $6a7d: $ac
	db $f4                                           ; $6a7e: $f4
	push bc                                          ; $6a7f: $c5
	ld a, h                                          ; $6a80: $7c
	adc l                                            ; $6a81: $8d
	jp nz, $fefb                                     ; $6a82: $c2 $fb $fe

	rst $38                                          ; $6a85: $ff
	rst $38                                          ; $6a86: $ff
	rst AddAOntoHL                                          ; $6a87: $ef
	cp $c3                                           ; $6a88: $fe $c3
	ld bc, $5256                                     ; $6a8a: $01 $56 $52
	ldh a, [$e2]                                     ; $6a8d: $f0 $e2
	ldh [c], a                                       ; $6a8f: $e2
	ld [hl-], a                                      ; $6a90: $32
	ld [hl+], a                                      ; $6a91: $22
	ld b, $ff                                        ; $6a92: $06 $ff
	ld a, b                                          ; $6a94: $78
	db $e3                                           ; $6a95: $e3
	sbc $ff                                          ; $6a96: $de $ff
	add b                                            ; $6a98: $80
	cp $29                                           ; $6a99: $fe $29
	ccf                                              ; $6a9b: $3f
	add hl, sp                                       ; $6a9c: $39
	jr c, jr_04a_6ade                                ; $6a9d: $38 $3f

	daa                                              ; $6a9f: $27
	daa                                              ; $6aa0: $27
	rst AddAOntoHL                                          ; $6aa1: $ef
	add hl, sp                                       ; $6aa2: $39
	cp d                                             ; $6aa3: $ba
	ld [hl], b                                       ; $6aa4: $70
	ldh a, [$f9]                                     ; $6aa5: $f0 $f9
	ccf                                              ; $6aa7: $3f
	ld a, a                                          ; $6aa8: $7f
	rst $38                                          ; $6aa9: $ff
	dec [hl]                                         ; $6aaa: $35
	dec hl                                           ; $6aab: $2b
	ld [hl-], a                                      ; $6aac: $32
	ld l, $c7                                        ; $6aad: $2e $c7
	and l                                            ; $6aaf: $a5
	ld l, a                                          ; $6ab0: $6f
	db $db                                           ; $6ab1: $db
	jp hl                                            ; $6ab2: $e9


jr_04a_6ab3:
	rst FarCall                                          ; $6ab3: $f7
	db $fc                                           ; $6ab4: $fc
	ld hl, sp+$38                                    ; $6ab5: $f8 $38
	jr jr_04a_6a39                                   ; $6ab7: $18 $80

	add c                                            ; $6ab9: $81
	and $e5                                          ; $6aba: $e6 $e5
	ld hl, sp+$6c                                    ; $6abc: $f8 $6c
	ldh [c], a                                       ; $6abe: $e2
	ld a, a                                          ; $6abf: $7f
	xor c                                            ; $6ac0: $a9
	ldh a, [c]                                       ; $6ac1: $f2
	ld a, [hl]                                       ; $6ac2: $7e
	ei                                               ; $6ac3: $fb
	db $e3                                           ; $6ac4: $e3
	di                                               ; $6ac5: $f3
	ld a, a                                          ; $6ac6: $7f
	rst $38                                          ; $6ac7: $ff

jr_04a_6ac8:
	rst FarCall                                          ; $6ac8: $f7
	ld h, a                                          ; $6ac9: $67
	rst SubAFromBC                                          ; $6aca: $e7
	or h                                             ; $6acb: $b4
	db $f4                                           ; $6acc: $f4
	rst FarCall                                          ; $6acd: $f7
	dec bc                                           ; $6ace: $0b
	or e                                             ; $6acf: $b3
	ld hl, sp-$10                                    ; $6ad0: $f8 $f0
	sbc b                                            ; $6ad2: $98
	ld a, b                                          ; $6ad3: $78
	ld a, b                                          ; $6ad4: $78
	jr jr_04a_6ab3                                   ; $6ad5: $18 $dc

	call c, $f098                                    ; $6ad7: $dc $98 $f0
	ret c                                            ; $6ada: $d8

	sbc b                                            ; $6adb: $98
	ld h, b                                          ; $6adc: $60
	ld b, b                                          ; $6add: $40

jr_04a_6ade:
	adc c                                            ; $6ade: $89
	add b                                            ; $6adf: $80
	ei                                               ; $6ae0: $fb
	sbc l                                            ; $6ae1: $9d
	halt                                             ; $6ae2: $76
	ld a, a                                          ; $6ae3: $7f
	db $fd                                           ; $6ae4: $fd
	sub c                                            ; $6ae5: $91
	rst AddAOntoHL                                          ; $6ae6: $ef
	rst SubAFromBC                                          ; $6ae7: $e7
	db $e3                                           ; $6ae8: $e3
	push hl                                          ; $6ae9: $e5
	db $fd                                           ; $6aea: $fd
	rst SubAFromHL                                          ; $6aeb: $d7
	db $eb                                           ; $6aec: $eb
	ld d, l                                          ; $6aed: $55
	ld b, a                                          ; $6aee: $47
	ld c, l                                          ; $6aef: $4d
	db $dd                                           ; $6af0: $dd
	sbc $46                                          ; $6af1: $de $46
	ld a, [hl]                                       ; $6af3: $7e
	ld a, d                                          ; $6af4: $7a
	cp $69                                           ; $6af5: $fe $69
	adc b                                            ; $6af7: $88
	halt                                             ; $6af8: $76
	rst JumpTable                                          ; $6af9: $c7
	sbc e                                            ; $6afa: $9b
	add e                                            ; $6afb: $83
	sub e                                            ; $6afc: $93
	ld a, [$7bc7]                                    ; $6afd: $fa $c7 $7b
	sbc l                                            ; $6b00: $9d
	call c, $99ff                                    ; $6b01: $dc $ff $99
	ldh [$e2], a                                     ; $6b04: $e0 $e2
	and d                                            ; $6b06: $a2
	and [hl]                                         ; $6b07: $a6
	and a                                            ; $6b08: $a7
	rst AddAOntoHL                                          ; $6b09: $ef
	ld l, e                                          ; $6b0a: $6b
	di                                               ; $6b0b: $f3
	sbc $ff                                          ; $6b0c: $de $ff
	add b                                            ; $6b0e: $80
	ld h, l                                          ; $6b0f: $65
	jr c, jr_04a_6b4a                                ; $6b10: $38 $38

	jr jr_04a_6b30                                   ; $6b12: $18 $1c

	cp $ff                                           ; $6b14: $fe $ff
	db $fd                                           ; $6b16: $fd
	and c                                            ; $6b17: $a1
	and c                                            ; $6b18: $a1
	rst SubAFromBC                                          ; $6b19: $e7
	ld sp, hl                                        ; $6b1a: $f9
	ld a, [$fff5]                                    ; $6b1b: $fa $f5 $ff
	ldh [c], a                                       ; $6b1e: $e2
	ei                                               ; $6b1f: $fb
	db $e3                                           ; $6b20: $e3
	rst SubAFromBC                                          ; $6b21: $e7
	ld a, c                                          ; $6b22: $79
	rra                                              ; $6b23: $1f
	ccf                                              ; $6b24: $3f
	rst $38                                          ; $6b25: $ff
	rst $38                                          ; $6b26: $ff
	ld h, e                                          ; $6b27: $63
	ld [bc], a                                       ; $6b28: $02
	cp $c3                                           ; $6b29: $fe $c3
	xor c                                            ; $6b2b: $a9
	sub l                                            ; $6b2c: $95
	cp c                                             ; $6b2d: $b9
	sbc l                                            ; $6b2e: $9d
	db $fd                                           ; $6b2f: $fd

jr_04a_6b30:
	add b                                            ; $6b30: $80
	sbc $ff                                          ; $6b31: $de $ff
	ld a, a                                          ; $6b33: $7f
	xor c                                            ; $6b34: $a9
	add e                                            ; $6b35: $83
	rst JumpTable                                          ; $6b36: $c7
	add d                                            ; $6b37: $82
	ld sp, $bbfb                                     ; $6b38: $31 $fb $bb
	db $db                                           ; $6b3b: $db
	dec sp                                           ; $6b3c: $3b
	rst SubAFromDE                                          ; $6b3d: $df
	cp a                                             ; $6b3e: $bf
	ld e, a                                          ; $6b3f: $5f
	ldh a, [$b0]                                     ; $6b40: $f0 $b0
	jr jr_04a_6b5c                                   ; $6b42: $18 $18

jr_04a_6b44:
	sbc b                                            ; $6b44: $98
	sub b                                            ; $6b45: $90
	ret nc                                           ; $6b46: $d0

	jp z, $cdcd                                      ; $6b47: $ca $cd $cd

jr_04a_6b4a:
	ld c, d                                          ; $6b4a: $4a
	ld c, d                                          ; $6b4b: $4a
	ld c, e                                          ; $6b4c: $4b
	ld c, e                                          ; $6b4d: $4b
	ld c, h                                          ; $6b4e: $4c
	ld h, c                                          ; $6b4f: $61
	di                                               ; $6b50: $f3
	di                                               ; $6b51: $f3

jr_04a_6b52:
	db $dd                                           ; $6b52: $dd
	pop af                                           ; $6b53: $f1
	sub l                                            ; $6b54: $95
	di                                               ; $6b55: $f3
	rst $38                                          ; $6b56: $ff
	jr nz, jr_04a_6b52                               ; $6b57: $20 $f9

	rst $38                                          ; $6b59: $ff
	ld hl, sp-$01                                    ; $6b5a: $f8 $ff

jr_04a_6b5c:
	ldh [$e0], a                                     ; $6b5c: $e0 $e0
	add sp, -$22                                     ; $6b5e: $e8 $de
	rst $38                                          ; $6b60: $ff
	ld [hl], e                                       ; $6b61: $73
	and e                                            ; $6b62: $a3
	sub a                                            ; $6b63: $97
	sbc [hl]                                         ; $6b64: $9e
	sub a                                            ; $6b65: $97
	rra                                              ; $6b66: $1f
	add hl, sp                                       ; $6b67: $39
	rst $38                                          ; $6b68: $ff
	inc bc                                           ; $6b69: $03
	ld bc, $de01                                     ; $6b6a: $01 $01 $de
	db $f4                                           ; $6b6d: $f4
	ld a, a                                          ; $6b6e: $7f
	and $de                                          ; $6b6f: $e6 $de
	rst $38                                          ; $6b71: $ff
	add b                                            ; $6b72: $80
	sbc b                                            ; $6b73: $98
	sbc c                                            ; $6b74: $99
	sbc c                                            ; $6b75: $99
	sbc b                                            ; $6b76: $98
	reti                                             ; $6b77: $d9


	ld sp, hl                                        ; $6b78: $f9
	ld sp, hl                                        ; $6b79: $f9
	di                                               ; $6b7a: $f3
	dec e                                            ; $6b7b: $1d
	ld c, $8c                                        ; $6b7c: $0e $8c
	dec c                                            ; $6b7e: $0d
	ld c, $0c                                        ; $6b7f: $0e $0c
	sbc b                                            ; $6b81: $98
	ld hl, sp+$3f                                    ; $6b82: $f8 $3f
	scf                                              ; $6b84: $37
	or [hl]                                          ; $6b85: $b6
	ld a, l                                          ; $6b86: $7d
	ldh a, [c]                                       ; $6b87: $f2
	cp [hl]                                          ; $6b88: $be
	cp e                                             ; $6b89: $bb
	rst $38                                          ; $6b8a: $ff
	cp a                                             ; $6b8b: $bf
	sbc e                                            ; $6b8c: $9b
	dec de                                           ; $6b8d: $1b
	sub d                                            ; $6b8e: $92
	rst $38                                          ; $6b8f: $ff
	rra                                              ; $6b90: $1f
	ccf                                              ; $6b91: $3f
	add l                                            ; $6b92: $85
	dec de                                           ; $6b93: $1b
	ei                                               ; $6b94: $fb
	rst AddAOntoHL                                          ; $6b95: $ef
	pop af                                           ; $6b96: $f1
	rst $38                                          ; $6b97: $ff
	rst AddAOntoHL                                          ; $6b98: $ef
	db $fc                                           ; $6b99: $fc
	ldh a, [rSVBK]                                   ; $6b9a: $f0 $70
	sbc h                                            ; $6b9c: $9c
	or b                                             ; $6b9d: $b0
	adc [hl]                                         ; $6b9e: $8e
	add b                                            ; $6b9f: $80
	ld b, b                                          ; $6ba0: $40
	ld h, b                                          ; $6ba1: $60
	jr nz, jr_04a_6b44                               ; $6ba2: $20 $a0

	ld a, [$00f5]                                    ; $6ba4: $fa $f5 $00
	add b                                            ; $6ba7: $80
	add b                                            ; $6ba8: $80
	ld h, b                                          ; $6ba9: $60
	ld c, $00                                        ; $6baa: $0e $00
	ld bc, $9dfa                                     ; $6bac: $01 $fa $9d
	rst JumpTable                                          ; $6baf: $c7
	rst AddAOntoHL                                          ; $6bb0: $ef
	ld a, e                                          ; $6bb1: $7b
	and a                                            ; $6bb2: $a7
	sbc $7f                                          ; $6bb3: $de $7f
	rst SubAFromDE                                          ; $6bb5: $df
	rst $38                                          ; $6bb6: $ff
	sub a                                            ; $6bb7: $97
	ld a, [$fa57]                                    ; $6bb8: $fa $57 $fa
	rst SubAFromDE                                          ; $6bbb: $df
	ld l, e                                          ; $6bbc: $6b
	ld d, l                                          ; $6bbd: $55
	rst SubAFromBC                                          ; $6bbe: $e7
	di                                               ; $6bbf: $f3
	jp c, $80ff                                      ; $6bc0: $da $ff $80

	ld e, a                                          ; $6bc3: $5f
	xor a                                            ; $6bc4: $af
	ld d, [hl]                                       ; $6bc5: $56
	xor $d6                                          ; $6bc6: $ee $d6
	xor h                                            ; $6bc8: $ac
	call nc, $b1fc                                   ; $6bc9: $d4 $fc $b1
	ld hl, sp-$08                                    ; $6bcc: $f8 $f8
	db $fc                                           ; $6bce: $fc
	rst $38                                          ; $6bcf: $ff
	xor l                                            ; $6bd0: $ad
	xor h                                            ; $6bd1: $ac
	or l                                             ; $6bd2: $b5
	jr jr_04a_6bd5                                   ; $6bd3: $18 $00

jr_04a_6bd5:
	inc c                                            ; $6bd5: $0c
	ld b, $06                                        ; $6bd6: $06 $06
	inc b                                            ; $6bd8: $04
	inc b                                            ; $6bd9: $04
	cp $ee                                           ; $6bda: $fe $ee
	ld a, [$8146]                                    ; $6bdc: $fa $46 $81
	add c                                            ; $6bdf: $81
	inc bc                                           ; $6be0: $03
	ld a, a                                          ; $6be1: $7f
	rst SubAFromDE                                          ; $6be2: $df
	rst SubAFromBC                                          ; $6be3: $e7
	adc c                                            ; $6be4: $89
	ld b, a                                          ; $6be5: $47
	jp $c083                                         ; $6be6: $c3 $83 $c0


	pop hl                                           ; $6be9: $e1
	pop hl                                           ; $6bea: $e1
	add sp, $7c                                      ; $6beb: $e8 $7c
	ld l, h                                          ; $6bed: $6c
	ld e, h                                          ; $6bee: $5c
	dec a                                            ; $6bef: $3d
	db $fc                                           ; $6bf0: $fc
	ld l, h                                          ; $6bf1: $6c
	ret nc                                           ; $6bf2: $d0

	sbc h                                            ; $6bf3: $9c
	cp $9e                                           ; $6bf4: $fe $9e
	cp [hl]                                          ; $6bf6: $be
	cp $ff                                           ; $6bf7: $fe $ff
	jp $fe6f                                         ; $6bf9: $c3 $6f $fe


	sbc d                                            ; $6bfc: $9a
	rrca                                             ; $6bfd: $0f
	rst $38                                          ; $6bfe: $ff
	xor e                                            ; $6bff: $ab
	rlca                                             ; $6c00: $07
	ld [bc], a                                       ; $6c01: $02
	db $fc                                           ; $6c02: $fc
	sub h                                            ; $6c03: $94
	ld d, h                                          ; $6c04: $54
	ld hl, sp-$03                                    ; $6c05: $f8 $fd

Call_04a_6c07:
	ld l, e                                          ; $6c07: $6b
	push af                                          ; $6c08: $f5
	set 2, l                                         ; $6c09: $cb $d5
	ld d, e                                          ; $6c0b: $53
	pop hl                                           ; $6c0c: $e1
	add hl, de                                       ; $6c0d: $19
	ld l, c                                          ; $6c0e: $69
	ld a, e                                          ; $6c0f: $7b
	sbc e                                            ; $6c10: $9b
	sbc [hl]                                         ; $6c11: $9e
	ld l, a                                          ; $6c12: $6f
	ld a, e                                          ; $6c13: $7b
	sub l                                            ; $6c14: $95
	sbc [hl]                                         ; $6c15: $9e
	sbc a                                            ; $6c16: $9f
	db $dd                                           ; $6c17: $dd
	db $fc                                           ; $6c18: $fc
	db $dd                                           ; $6c19: $dd
	rst $38                                          ; $6c1a: $ff
	sbc [hl]                                         ; $6c1b: $9e
	scf                                              ; $6c1c: $37
	sbc $07                                          ; $6c1d: $de $07
	rst SubAFromDE                                          ; $6c1f: $df
	rst $38                                          ; $6c20: $ff
	sbc c                                            ; $6c21: $99
	and c                                            ; $6c22: $a1
	sub c                                            ; $6c23: $91
	pop hl                                           ; $6c24: $e1
	db $e4                                           ; $6c25: $e4
	add b                                            ; $6c26: $80
	cp b                                             ; $6c27: $b8
	ld a, c                                          ; $6c28: $79
	ld l, [hl]                                       ; $6c29: $6e
	sbc l                                            ; $6c2a: $9d
	cp a                                             ; $6c2b: $bf
	ret nz                                           ; $6c2c: $c0

Call_04a_6c2d:
	sbc $80                                          ; $6c2d: $de $80
	rst SubAFromDE                                          ; $6c2f: $df
	sub b                                            ; $6c30: $90
	sub h                                            ; $6c31: $94
	cp [hl]                                          ; $6c32: $be
	sbc h                                            ; $6c33: $9c
	ld sp, hl                                        ; $6c34: $f9
	ld [hl], e                                       ; $6c35: $73
	ld [hl], c                                       ; $6c36: $71
	ld [hl], b                                       ; $6c37: $70
	ldh a, [$be]                                     ; $6c38: $f0 $be
	ld [hl], b                                       ; $6c3a: $70
	cp h                                             ; $6c3b: $bc
	ld a, a                                          ; $6c3c: $7f
	jp c, Jump_04a_7f3f                              ; $6c3d: $da $3f $7f

	inc b                                            ; $6c40: $04
	add b                                            ; $6c41: $80
	xor $03                                          ; $6c42: $ee $03
	add e                                            ; $6c44: $83
	ld sp, hl                                        ; $6c45: $f9
	ld a, $33                                        ; $6c46: $3e $33
	add b                                            ; $6c48: $80
	rst $38                                          ; $6c49: $ff
	db $fd                                           ; $6c4a: $fd
	db $fd                                           ; $6c4b: $fd
	ld a, a                                          ; $6c4c: $7f
	rlca                                             ; $6c4d: $07
	pop bc                                           ; $6c4e: $c1
	rst GetHLinHL                                          ; $6c4f: $cf
	ld a, [hl+]                                      ; $6c50: $2a
	dec b                                            ; $6c51: $05
	ld h, d                                          ; $6c52: $62
	push de                                          ; $6c53: $d5
	xor [hl]                                         ; $6c54: $ae
	sbc a                                            ; $6c55: $9f
	cp [hl]                                          ; $6c56: $be
	rst $38                                          ; $6c57: $ff
	push de                                          ; $6c58: $d5
	ld a, [$eafd]                                    ; $6c59: $fa $fd $ea
	pop de                                           ; $6c5c: $d1
	ldh [$c1], a                                     ; $6c5d: $e0 $c1
	add b                                            ; $6c5f: $80
	rst AddAOntoHL                                          ; $6c60: $ef
	sub b                                            ; $6c61: $90
	ccf                                              ; $6c62: $3f
	xor a                                            ; $6c63: $af
	scf                                              ; $6c64: $37
	and [hl]                                         ; $6c65: $a6
	ccf                                              ; $6c66: $3f
	and e                                            ; $6c67: $a3
	ld c, e                                          ; $6c68: $4b
	ld c, a                                          ; $6c69: $4f
	db $e4                                           ; $6c6a: $e4
	ld h, h                                          ; $6c6b: $64
	ldh [c], a                                       ; $6c6c: $e2
	ld a, h                                          ; $6c6d: $7c
	db $fc                                           ; $6c6e: $fc
	ld a, a                                          ; $6c6f: $7f
	di                                               ; $6c70: $f3
	sbc $c3                                          ; $6c71: $de $c3
	rst SubAFromDE                                          ; $6c73: $df
	rst JumpTable                                          ; $6c74: $c7
	sbc h                                            ; $6c75: $9c
	rst GetHLinHL                                          ; $6c76: $cf
	cpl                                              ; $6c77: $2f
	ld a, a                                          ; $6c78: $7f
	ld a, d                                          ; $6c79: $7a
	ld e, c                                          ; $6c7a: $59
	sbc $7f                                          ; $6c7b: $de $7f
	sub [hl]                                         ; $6c7d: $96
	rst SubAFromDE                                          ; $6c7e: $df
	rst $38                                          ; $6c7f: $ff
	ret z                                            ; $6c80: $c8

	db $fc                                           ; $6c81: $fc
	cp [hl]                                          ; $6c82: $be
	cp a                                             ; $6c83: $bf
	cp a                                             ; $6c84: $bf
	sbc a                                            ; $6c85: $9f
	ld e, a                                          ; $6c86: $5f
	ld h, d                                          ; $6c87: $62
	ld h, a                                          ; $6c88: $67
	ld a, a                                          ; $6c89: $7f
	ld [$4099], sp                                   ; $6c8a: $08 $99 $40
	ret nz                                           ; $6c8d: $c0

	add b                                            ; $6c8e: $80
	ld b, h                                          ; $6c8f: $44
	ld c, h                                          ; $6c90: $4c
	ld a, e                                          ; $6c91: $7b
	reti                                             ; $6c92: $d9


	rst $38                                          ; $6c93: $ff
	add d                                            ; $6c94: $82
	db $fd                                           ; $6c95: $fd
	sbc d                                            ; $6c96: $9a
	adc h                                            ; $6c97: $8c
	rst GetHLinHL                                          ; $6c98: $cf
	db $e3                                           ; $6c99: $e3
	ldh [c], a                                       ; $6c9a: $e2
	ldh a, [$f8]                                     ; $6c9b: $f0 $f8
	ldh a, [c]                                       ; $6c9d: $f2
	db $fc                                           ; $6c9e: $fc
	cp h                                             ; $6c9f: $bc
	and h                                            ; $6ca0: $a4
	ld b, h                                          ; $6ca1: $44
	ld e, l                                          ; $6ca2: $5d
	ld a, a                                          ; $6ca3: $7f
	rra                                              ; $6ca4: $1f
	dec de                                           ; $6ca5: $1b
	dec de                                           ; $6ca6: $1b
	ld a, [de]                                       ; $6ca7: $1a
	ld a, [de]                                       ; $6ca8: $1a
	sbc [hl]                                         ; $6ca9: $9e
	inc e                                            ; $6caa: $1c
	inc a                                            ; $6cab: $3c
	nop                                              ; $6cac: $00
	rra                                              ; $6cad: $1f
	ld e, $1f                                        ; $6cae: $1e $1f
	rst $38                                          ; $6cb0: $ff
	ld e, a                                          ; $6cb1: $5f
	sbc $ff                                          ; $6cb2: $de $ff
	sbc d                                            ; $6cb4: $9a
	add a                                            ; $6cb5: $87
	ld a, [$7a7d]                                    ; $6cb6: $fa $7d $7a
	db $f4                                           ; $6cb9: $f4
	cp $9a                                           ; $6cba: $fe $9a
	ldh a, [$75]                                     ; $6cbc: $f0 $75
	ldh a, [c]                                       ; $6cbe: $f2
	push af                                          ; $6cbf: $f5
	ei                                               ; $6cc0: $fb
	ld [hl], l                                       ; $6cc1: $75
	sbc a                                            ; $6cc2: $9f
	sbc h                                            ; $6cc3: $9c
	ld [bc], a                                       ; $6cc4: $02
	add l                                            ; $6cc5: $85
	ld [$9cfc], sp                                   ; $6cc6: $08 $fc $9c
	db $fd                                           ; $6cc9: $fd
	ld a, d                                          ; $6cca: $7a
	rst FarCall                                          ; $6ccb: $f7
	db $dd                                           ; $6ccc: $dd
	rst $38                                          ; $6ccd: $ff
	reti                                             ; $6cce: $d9


	ld a, a                                          ; $6ccf: $7f
	sbc h                                            ; $6cd0: $9c
	ld l, e                                          ; $6cd1: $6b
	push de                                          ; $6cd2: $d5
	db $eb                                           ; $6cd3: $eb
	ld [hl], a                                       ; $6cd4: $77
	cp $9e                                           ; $6cd5: $fe $9e
	rst SubAFromHL                                          ; $6cd7: $d7
	ld a, e                                          ; $6cd8: $7b
	inc hl                                           ; $6cd9: $23
	sbc [hl]                                         ; $6cda: $9e
	db $fd                                           ; $6cdb: $fd
	db $dd                                           ; $6cdc: $dd
	ld sp, hl                                        ; $6cdd: $f9
	sbc l                                            ; $6cde: $9d
	xor a                                            ; $6cdf: $af
	rst SubAFromHL                                          ; $6ce0: $d7
	ld a, e                                          ; $6ce1: $7b
	cp $9b                                           ; $6ce2: $fe $9b
	rst SubAFromDE                                          ; $6ce4: $df
	rst AddAOntoHL                                          ; $6ce5: $ef
	rst SubAFromDE                                          ; $6ce6: $df
	or h                                             ; $6ce7: $b4
	ld a, b                                          ; $6ce8: $78
	sub d                                            ; $6ce9: $92
	sub a                                            ; $6cea: $97
	ld a, [hl]                                       ; $6ceb: $7e
	ld h, d                                          ; $6cec: $62
	ld h, b                                          ; $6ced: $60
	push hl                                          ; $6cee: $e5
	inc b                                            ; $6cef: $04
	inc h                                            ; $6cf0: $24
	and a                                            ; $6cf1: $a7
	ld a, a                                          ; $6cf2: $7f
	sbc $23                                          ; $6cf3: $de $23
	add b                                            ; $6cf5: $80
	ld [hl+], a                                      ; $6cf6: $22
	ld a, a                                          ; $6cf7: $7f
	ld d, [hl]                                       ; $6cf8: $56
	db $eb                                           ; $6cf9: $eb
	rst SubAFromHL                                          ; $6cfa: $d7
	xor d                                            ; $6cfb: $aa
	ld d, l                                          ; $6cfc: $55
	xor b                                            ; $6cfd: $a8
	nop                                              ; $6cfe: $00
	pop bc                                           ; $6cff: $c1
	db $eb                                           ; $6d00: $eb
	sub $2b                                          ; $6d01: $d6 $2b
	ld d, l                                          ; $6d03: $55
	xor d                                            ; $6d04: $aa
	ld d, a                                          ; $6d05: $57
	rst $38                                          ; $6d06: $ff
	ldh [rOCPS], a                                   ; $6d07: $e0 $6a
	rst SubAFromDE                                          ; $6d09: $df
	rst $38                                          ; $6d0a: $ff
	xor d                                            ; $6d0b: $aa
	ld d, l                                          ; $6d0c: $55
	nop                                              ; $6d0d: $00
	nop                                              ; $6d0e: $00
	ld e, a                                          ; $6d0f: $5f
	push de                                          ; $6d10: $d5
	ldh [$e0], a                                     ; $6d11: $e0 $e0
	ld d, l                                          ; $6d13: $55
	xor d                                            ; $6d14: $aa
	rst SubAFromDE                                          ; $6d15: $df
	rst $38                                          ; $6d16: $ff
	adc [hl]                                         ; $6d17: $8e
	inc h                                            ; $6d18: $24
	ld c, a                                          ; $6d19: $4f
	cp $ff                                           ; $6d1a: $fe $ff
	xor e                                            ; $6d1c: $ab
	ld d, l                                          ; $6d1d: $55
	ld a, [hl+]                                      ; $6d1e: $2a
	dec d                                            ; $6d1f: $15
	rst SubAFromDE                                          ; $6d20: $df
	or a                                             ; $6d21: $b7
	ld bc, $5400                                     ; $6d22: $01 $00 $54
	xor d                                            ; $6d25: $aa
	push de                                          ; $6d26: $d5
	ld [$ddb7], a                                    ; $6d27: $ea $b7 $dd
	rst $38                                          ; $6d2a: $ff
	sub h                                            ; $6d2b: $94
	rst FarCall                                          ; $6d2c: $f7
	xor a                                            ; $6d2d: $af
	ld d, [hl]                                       ; $6d2e: $56
	ld c, a                                          ; $6d2f: $4f
	rst $38                                          ; $6d30: $ff
	rst $38                                          ; $6d31: $ff
	ld [hl], e                                       ; $6d32: $73
	add hl, de                                       ; $6d33: $19
	ld c, $53                                        ; $6d34: $0e $53
	xor c                                            ; $6d36: $a9
	call c, $9bff                                    ; $6d37: $dc $ff $9b
	ccf                                              ; $6d3a: $3f
	inc l                                            ; $6d3b: $2c
	db $ec                                           ; $6d3c: $ec
	add hl, hl                                       ; $6d3d: $29
	sbc $01                                          ; $6d3e: $de $01
	add b                                            ; $6d40: $80
	jp $c8ec                                         ; $6d41: $c3 $ec $c8


	ret z                                            ; $6d44: $c8

	rst SubAFromDE                                          ; $6d45: $df
	sbc [hl]                                         ; $6d46: $9e
	rst SubAFromDE                                          ; $6d47: $df
	adc [hl]                                         ; $6d48: $8e
	rst GetHLinHL                                          ; $6d49: $cf
	rst AddAOntoHL                                          ; $6d4a: $ef
	ld e, a                                          ; $6d4b: $5f
	ld l, a                                          ; $6d4c: $6f
	sbc h                                            ; $6d4d: $9c
	adc h                                            ; $6d4e: $8c
	adc h                                            ; $6d4f: $8c
	add h                                            ; $6d50: $84
	add [hl]                                         ; $6d51: $86
	ld b, $42                                        ; $6d52: $06 $42
	ld b, a                                          ; $6d54: $47
	ccf                                              ; $6d55: $3f
	inc sp                                           ; $6d56: $33
	jr nc, jr_04a_6d79                               ; $6d57: $30 $20

	jr c, @-$57                                      ; $6d59: $38 $a7

	pop hl                                           ; $6d5b: $e1
	and b                                            ; $6d5c: $a0
	ccf                                              ; $6d5d: $3f

jr_04a_6d5e:
	dec sp                                           ; $6d5e: $3b
	dec a                                            ; $6d5f: $3d
	sub c                                            ; $6d60: $91
	dec sp                                           ; $6d61: $3b
	dec e                                            ; $6d62: $1d
	rra                                              ; $6d63: $1f
	cp a                                             ; $6d64: $bf
	cp a                                             ; $6d65: $bf
	cp l                                             ; $6d66: $bd
	db $ec                                           ; $6d67: $ec
	cp [hl]                                          ; $6d68: $be
	add hl, bc                                       ; $6d69: $09
	ld h, $fd                                        ; $6d6a: $26 $fd
	db $fc                                           ; $6d6c: $fc
	dec sp                                           ; $6d6d: $3b
	jp $1179                                         ; $6d6e: $c3 $79 $11


	sbc c                                            ; $6d71: $99
	ld sp, hl                                        ; $6d72: $f9
	ldh a, [c]                                       ; $6d73: $f2
	db $e3                                           ; $6d74: $e3
	db $fc                                           ; $6d75: $fc
	cp [hl]                                          ; $6d76: $be
	rst $38                                          ; $6d77: $ff
	ld [hl], e                                       ; $6d78: $73

jr_04a_6d79:
	cp $9c                                           ; $6d79: $fe $9c
	ld a, a                                          ; $6d7b: $7f

Call_04a_6d7c:
	pop bc                                           ; $6d7c: $c1
	add b                                            ; $6d7d: $80
	ld l, a                                          ; $6d7e: $6f
	cp $96                                           ; $6d7f: $fe $96
	ld [$7272], a                                    ; $6d81: $ea $72 $72
	ld a, l                                          ; $6d84: $7d
	ld a, e                                          ; $6d85: $7b
	rst $38                                          ; $6d86: $ff
	ei                                               ; $6d87: $fb
	ei                                               ; $6d88: $fb
	ld d, c                                          ; $6d89: $51

Jump_04a_6d8a:
	sbc $f9                                          ; $6d8a: $de $f9
	sub [hl]                                         ; $6d8c: $96
	db $fd                                           ; $6d8d: $fd
	rst SubAFromDE                                          ; $6d8e: $df
	rst GetHLinHL                                          ; $6d8f: $cf
	adc a                                            ; $6d90: $8f
	ld a, b                                          ; $6d91: $78
	ld a, h                                          ; $6d92: $7c
	ld a, [hl]                                       ; $6d93: $7e
	ccf                                              ; $6d94: $3f
	cp h                                             ; $6d95: $bc
	sbc $10                                          ; $6d96: $de $10
	sbc e                                            ; $6d98: $9b
	ei                                               ; $6d99: $fb
	db $fd                                           ; $6d9a: $fd
	cp $7f                                           ; $6d9b: $fe $7f
	halt                                             ; $6d9d: $76
	cp e                                             ; $6d9e: $bb
	sbc d                                            ; $6d9f: $9a
	ld h, a                                          ; $6da0: $67
	dec b                                            ; $6da1: $05
	ld c, $ff                                        ; $6da2: $0e $ff
	rst $38                                          ; $6da4: $ff
	sbc $c3                                          ; $6da5: $de $c3
	ld a, [hl]                                       ; $6da7: $7e
	ld b, [hl]                                       ; $6da8: $46
	ld a, [hl]                                       ; $6da9: $7e
	ld [hl], l                                       ; $6daa: $75
	sbc $82                                          ; $6dab: $de $82
	adc h                                            ; $6dad: $8c
	add e                                            ; $6dae: $83
	ld hl, sp-$20                                    ; $6daf: $f8 $e0
	inc bc                                           ; $6db1: $03
	adc a                                            ; $6db2: $8f
	rst $38                                          ; $6db3: $ff
	rrca                                             ; $6db4: $0f
	rrca                                             ; $6db5: $0f
	rlca                                             ; $6db6: $07
	db $fc                                           ; $6db7: $fc
	pop af                                           ; $6db8: $f1
	rst JumpTable                                          ; $6db9: $c7
	db $fc                                           ; $6dba: $fc
	call z, $0408                                    ; $6dbb: $cc $08 $04
	inc bc                                           ; $6dbe: $03
	inc c                                            ; $6dbf: $0c
	or $de                                           ; $6dc0: $f6 $de
	di                                               ; $6dc2: $f3
	sbc b                                            ; $6dc3: $98
	ld sp, hl                                        ; $6dc4: $f9
	db $fc                                           ; $6dc5: $fc
	db $fc                                           ; $6dc6: $fc
	ld a, a                                          ; $6dc7: $7f
	rst FarCall                                          ; $6dc8: $f7
	di                                               ; $6dc9: $f3
	inc bc                                           ; $6dca: $03
	ld l, l                                          ; $6dcb: $6d
	xor h                                            ; $6dcc: $ac
	sbc c                                            ; $6dcd: $99
	add b                                            ; $6dce: $80
	ld [hl], b                                       ; $6dcf: $70
	jr jr_04a_6d5e                                   ; $6dd0: $18 $8c

	add sp, $78                                      ; $6dd2: $e8 $78
	reti                                             ; $6dd4: $d9


	rst $38                                          ; $6dd5: $ff
	ld sp, hl                                        ; $6dd6: $f9
	daa                                              ; $6dd7: $27
	ldh a, [$9c]                                     ; $6dd8: $f0 $9c
	ld l, e                                          ; $6dda: $6b
	ccf                                              ; $6ddb: $3f
	rra                                              ; $6ddc: $1f
	ld a, e                                          ; $6ddd: $7b
	or d                                             ; $6dde: $b2
	sbc l                                            ; $6ddf: $9d
	rlca                                             ; $6de0: $07
	inc bc                                           ; $6de1: $03
	reti                                             ; $6de2: $d9


	rst $38                                          ; $6de3: $ff
	reti                                             ; $6de4: $d9


	ld hl, sp+$7e                                    ; $6de5: $f8 $7e
	add $7e                                          ; $6de7: $c6 $7e
	jp nz, $fe77                                     ; $6de9: $c2 $77 $fe

	sub h                                            ; $6dec: $94
	ldh [rAUDTERM], a                                ; $6ded: $e0 $25
	daa                                              ; $6def: $27
	inc hl                                           ; $6df0: $23
	ld [hl+], a                                      ; $6df1: $22
	ld h, $3c                                        ; $6df2: $26 $3c
	inc a                                            ; $6df4: $3c
	and l                                            ; $6df5: $a5
	db $e4                                           ; $6df6: $e4
	ldh [c], a                                       ; $6df7: $e2
	sbc $e3                                          ; $6df8: $de $e3
	rst SubAFromDE                                          ; $6dfa: $df
	rst SubAFromBC                                          ; $6dfb: $e7
	rst SubAFromDE                                          ; $6dfc: $df
	add b                                            ; $6dfd: $80
	sbc d                                            ; $6dfe: $9a
	ldh [$a0], a                                     ; $6dff: $e0 $a0
	jr nz, @-$5e                                     ; $6e01: $20 $a0

	ld h, b                                          ; $6e03: $60
	ld [hl], e                                       ; $6e04: $73
	ret nz                                           ; $6e05: $c0

	ld a, d                                          ; $6e06: $7a
	and l                                            ; $6e07: $a5
	inc bc                                           ; $6e08: $03
	and b                                            ; $6e09: $a0
	ld a, [hl]                                       ; $6e0a: $7e
	or [hl]                                          ; $6e0b: $b6
	ld l, l                                          ; $6e0c: $6d
	ld [hl], l                                       ; $6e0d: $75
	ld a, [hl]                                       ; $6e0e: $7e
	or [hl]                                          ; $6e0f: $b6
	ld l, h                                          ; $6e10: $6c
	ld b, a                                          ; $6e11: $47
	sub e                                            ; $6e12: $93
	ld l, b                                          ; $6e13: $68
	jr z, jr_04a_6e36                                ; $6e14: $28 $20

	jr nc, jr_04a_6e29                               ; $6e16: $30 $11

	ld de, $0201                                     ; $6e18: $11 $01 $02
	add sp, -$08                                     ; $6e1b: $e8 $f8
	ld sp, hl                                        ; $6e1d: $f9
	pop af                                           ; $6e1e: $f1
	db $dd                                           ; $6e1f: $dd
	di                                               ; $6e20: $f3
	add a                                            ; $6e21: $87
	rst $38                                          ; $6e22: $ff
	xor $ce                                          ; $6e23: $ee $ce
	adc [hl]                                         ; $6e25: $8e
	sbc d                                            ; $6e26: $9a
	ld a, [hl-]                                      ; $6e27: $3a
	ld a, e                                          ; $6e28: $7b

jr_04a_6e29:
	inc sp                                           ; $6e29: $33
	ld b, [hl]                                       ; $6e2a: $46
	add $86                                          ; $6e2b: $c6 $86
	adc [hl]                                         ; $6e2d: $8e
	ld c, $1e                                        ; $6e2e: $0e $1e
	ld e, $3e                                        ; $6e30: $1e $3e
	ld h, b                                          ; $6e32: $60
	ld h, b                                          ; $6e33: $60
	ld a, b                                          ; $6e34: $78
	cpl                                              ; $6e35: $2f

jr_04a_6e36:
	ld hl, $6020                                     ; $6e36: $21 $20 $60
	ld h, b                                          ; $6e39: $60
	reti                                             ; $6e3a: $d9


	ccf                                              ; $6e3b: $3f
	adc a                                            ; $6e3c: $8f
	ld e, a                                          ; $6e3d: $5f
	dec [hl]                                         ; $6e3e: $35
	rrca                                             ; $6e3f: $0f
	inc d                                            ; $6e40: $14
	db $ec                                           ; $6e41: $ec
	ld [hl], h                                       ; $6e42: $74
	dec e                                            ; $6e43: $1d
	rrca                                             ; $6e44: $0f
	adc a                                            ; $6e45: $8f
	jp $ebf0                                         ; $6e46: $c3 $f0 $eb


	db $d3                                           ; $6e49: $d3
	ei                                               ; $6e4a: $fb
	cp $ff                                           ; $6e4b: $fe $ff
	sbc $3e                                          ; $6e4d: $de $3e
	sbc d                                            ; $6e4f: $9a
	ld e, h                                          ; $6e50: $5c
	ld a, [hl]                                       ; $6e51: $7e
	call c, $9cde                                    ; $6e52: $dc $de $9c

jr_04a_6e55:
	sbc $c1                                          ; $6e55: $de $c1
	sbc d                                            ; $6e57: $9a
	db $e3                                           ; $6e58: $e3
	pop bc                                           ; $6e59: $c1
	db $e3                                           ; $6e5a: $e3
	pop hl                                           ; $6e5b: $e1
	db $e3                                           ; $6e5c: $e3
	db $db                                           ; $6e5d: $db
	ei                                               ; $6e5e: $fb
	rst SubAFromDE                                          ; $6e5f: $df
	ld a, e                                          ; $6e60: $7b
	call c, $de8f                                    ; $6e61: $dc $8f $de
	rst GetHLinHL                                          ; $6e64: $cf
	add [hl]                                         ; $6e65: $86
	stop                                             ; $6e66: $10 $00
	ld [$0888], sp                                   ; $6e68: $08 $88 $08
	ld [$c804], sp                                   ; $6e6b: $08 $04 $c8
	ei                                               ; $6e6e: $fb
	rst $38                                          ; $6e6f: $ff
	rst SubAFromDE                                          ; $6e70: $df
	add a                                            ; $6e71: $87
	adc a                                            ; $6e72: $8f
	rst GetHLinHL                                          ; $6e73: $cf
	adc a                                            ; $6e74: $8f
	or a                                             ; $6e75: $b7
	jp $e3c3                                         ; $6e76: $c3 $c3 $e3


	ld h, e                                          ; $6e79: $63
	ld h, e                                          ; $6e7a: $63
	ld h, a                                          ; $6e7b: $67
	ld a, a                                          ; $6e7c: $7f
	ld a, e                                          ; $6e7d: $7b
	add e                                            ; $6e7e: $83
	ld a, e                                          ; $6e7f: $7b
	rst FarCall                                          ; $6e80: $f7
	sbc $c1                                          ; $6e81: $de $c1
	sbc h                                            ; $6e83: $9c
	pop hl                                           ; $6e84: $e1
	add c                                            ; $6e85: $81
	ldh [$7b], a                                     ; $6e86: $e0 $7b
	adc l                                            ; $6e88: $8d
	sbc [hl]                                         ; $6e89: $9e
	or $7b                                           ; $6e8a: $f6 $7b
	ld e, b                                          ; $6e8c: $58
	add b                                            ; $6e8d: $80
	ret nz                                           ; $6e8e: $c0

	ld h, b                                          ; $6e8f: $60
	jr nc, jr_04a_6ea0                               ; $6e90: $30 $0e

	add a                                            ; $6e92: $87
	add c                                            ; $6e93: $81
	add b                                            ; $6e94: $80
	db $fc                                           ; $6e95: $fc
	sbc $be                                          ; $6e96: $de $be
	rra                                              ; $6e98: $1f
	rra                                              ; $6e99: $1f
	rrca                                             ; $6e9a: $0f
	add a                                            ; $6e9b: $87
	push bc                                          ; $6e9c: $c5
	add b                                            ; $6e9d: $80
	ld h, b                                          ; $6e9e: $60
	ld h, b                                          ; $6e9f: $60

jr_04a_6ea0:
	jr nz, jr_04a_6eb2                               ; $6ea0: $20 $10

	sub b                                            ; $6ea2: $90
	ret z                                            ; $6ea3: $c8

	and $00                                          ; $6ea4: $e6 $00
	ld b, b                                          ; $6ea6: $40
	nop                                              ; $6ea7: $00
	jr nz, jr_04a_6eaa                               ; $6ea8: $20 $00

jr_04a_6eaa:
	stop                                             ; $6eaa: $10 $00
	db $10                                           ; $6eac: $10
	ld a, c                                          ; $6ead: $79
	and a                                            ; $6eae: $a7
	rst SubAFromDE                                          ; $6eaf: $df
	ccf                                              ; $6eb0: $3f
	ld a, l                                          ; $6eb1: $7d

jr_04a_6eb2:
	ld b, a                                          ; $6eb2: $47
	sbc [hl]                                         ; $6eb3: $9e
	cp a                                             ; $6eb4: $bf
	rlca                                             ; $6eb5: $07
	jr nz, jr_04a_6e55                               ; $6eb6: $20 $9d

	inc bc                                           ; $6eb8: $03
	ld [bc], a                                       ; $6eb9: $02
	ld l, [hl]                                       ; $6eba: $6e
	adc c                                            ; $6ebb: $89
	rst SubAFromDE                                          ; $6ebc: $df
	cp $62                                           ; $6ebd: $fe $62
	ret nz                                           ; $6ebf: $c0

	sbc h                                            ; $6ec0: $9c
	ret z                                            ; $6ec1: $c8

	ld hl, sp-$08                                    ; $6ec2: $f8 $f8
	ld [hl], a                                       ; $6ec4: $77
	ldh [$9c], a                                     ; $6ec5: $e0 $9c
	adc a                                            ; $6ec7: $8f
	rlca                                             ; $6ec8: $07
	add a                                            ; $6ec9: $87
	sbc $ff                                          ; $6eca: $de $ff
	rst SubAFromDE                                          ; $6ecc: $df
	inc a                                            ; $6ecd: $3c
	sub [hl]                                         ; $6ece: $96
	ld c, h                                          ; $6ecf: $4c
	call z, Call_04a_70bc                            ; $6ed0: $cc $bc $70
	nop                                              ; $6ed3: $00
	nop                                              ; $6ed4: $00
	rst SubAFromBC                                          ; $6ed5: $e7
	rst $38                                          ; $6ed6: $ff
	rst SubAFromDE                                          ; $6ed7: $df
	ld a, b                                          ; $6ed8: $78
	add c                                            ; $6ed9: $81
	ld [bc], a                                       ; $6eda: $02
	ret nc                                           ; $6edb: $d0

	inc bc                                           ; $6edc: $03
	ldh a, [$9a]                                     ; $6edd: $f0 $9a
	ld [bc], a                                       ; $6edf: $02
	ld [hl+], a                                      ; $6ee0: $22
	inc de                                           ; $6ee1: $13
	rra                                              ; $6ee2: $1f
	scf                                              ; $6ee3: $37
	ld a, e                                          ; $6ee4: $7b
	adc l                                            ; $6ee5: $8d
	rst SubAFromDE                                          ; $6ee6: $df
	or $9e                                           ; $6ee7: $f6 $9e
	sbc $dc                                          ; $6ee9: $de $dc
	rst $38                                          ; $6eeb: $ff
	sbc [hl]                                         ; $6eec: $9e
	ld [hl], e                                       ; $6eed: $73
	sbc $e3                                          ; $6eee: $de $e3
	ld a, d                                          ; $6ef0: $7a
	push af                                          ; $6ef1: $f5
	sbc h                                            ; $6ef2: $9c
	nop                                              ; $6ef3: $00
	ld a, $3f                                        ; $6ef4: $3e $3f
	ld l, h                                          ; $6ef6: $6c
	sbc l                                            ; $6ef7: $9d
	sub a                                            ; $6ef8: $97
	ld h, b                                          ; $6ef9: $60
	ldh [$60], a                                     ; $6efa: $e0 $60
	add b                                            ; $6efc: $80
	ldh a, [$f8]                                     ; $6efd: $f0 $f8
	cp $00                                           ; $6eff: $fe $00
	ld l, h                                          ; $6f01: $6c
	ld b, e                                          ; $6f02: $43
	ld a, e                                          ; $6f03: $7b
	ld h, b                                          ; $6f04: $60
	ld c, e                                          ; $6f05: $4b
	ret nz                                           ; $6f06: $c0

	ld e, l                                          ; $6f07: $5d
	nop                                              ; $6f08: $00
	db $dd                                           ; $6f09: $dd
	inc sp                                           ; $6f0a: $33
	sbc c                                            ; $6f0b: $99
	ld d, e                                          ; $6f0c: $53
	inc sp                                           ; $6f0d: $33
	inc sp                                           ; $6f0e: $33
	ld h, l                                          ; $6f0f: $65
	ld d, l                                          ; $6f10: $55
	ld d, l                                          ; $6f11: $55
	ld [hl], e                                       ; $6f12: $73
	or $9d                                           ; $6f13: $f6 $9d
	ld h, e                                          ; $6f15: $63
	ld [hl], $67                                     ; $6f16: $36 $67
	or $7f                                           ; $6f18: $f6 $7f
	ld a, [$55df]                                    ; $6f1a: $fa $df $55
	sbc [hl]                                         ; $6f1d: $9e
	ld h, [hl]                                       ; $6f1e: $66
	call c, Call_04a_7f33                            ; $6f1f: $dc $33 $7f
	or $9d                                           ; $6f22: $f6 $9d
	ld h, l                                          ; $6f24: $65
	ld h, [hl]                                       ; $6f25: $66
	ld l, a                                          ; $6f26: $6f
	or $9e                                           ; $6f27: $f6 $9e
	ld b, l                                          ; $6f29: $45
	ld a, e                                          ; $6f2a: $7b

Call_04a_6f2b:
	or $92                                           ; $6f2b: $f6 $92
	ld h, e                                          ; $6f2d: $63
	inc sp                                           ; $6f2e: $33
	inc sp                                           ; $6f2f: $33
	ld b, h                                          ; $6f30: $44
	ld [hl], a                                       ; $6f31: $77
	ld h, h                                          ; $6f32: $64
	ld b, e                                          ; $6f33: $43
	inc sp                                           ; $6f34: $33
	ld h, l                                          ; $6f35: $65
	ld b, a                                          ; $6f36: $47
	ld [hl], e                                       ; $6f37: $73
	inc sp                                           ; $6f38: $33
	inc [hl]                                         ; $6f39: $34
	ld [hl], a                                       ; $6f3a: $77
	or $8c                                           ; $6f3b: $f6 $8c
	dec [hl]                                         ; $6f3d: $35
	ld h, l                                          ; $6f3e: $65
	ld b, a                                          ; $6f3f: $47
	ld [hl], a                                       ; $6f40: $77
	ld d, e                                          ; $6f41: $53
	inc [hl]                                         ; $6f42: $34
	ld b, h                                          ; $6f43: $44
	ld d, [hl]                                       ; $6f44: $56
	ld h, a                                          ; $6f45: $67
	ld [hl], h                                       ; $6f46: $74
	ld d, l                                          ; $6f47: $55
	ld d, l                                          ; $6f48: $55
	ld b, h                                          ; $6f49: $44
	ld b, l                                          ; $6f4a: $45
	ld d, e                                          ; $6f4b: $53
	inc [hl]                                         ; $6f4c: $34
	ld b, l                                          ; $6f4d: $45
	ld d, l                                          ; $6f4e: $55
	ld d, a                                          ; $6f4f: $57
	ld l, a                                          ; $6f50: $6f
	or $df                                           ; $6f51: $f6 $df
	ld b, h                                          ; $6f53: $44
	rst SubAFromDE                                          ; $6f54: $df
	ld h, [hl]                                       ; $6f55: $66
	sbc h                                            ; $6f56: $9c
	ld [hl], h                                       ; $6f57: $74
	ld b, [hl]                                       ; $6f58: $46
	ld h, l                                          ; $6f59: $65
	ld [hl], e                                       ; $6f5a: $73
	or $98                                           ; $6f5b: $f6 $98
	ld d, [hl]                                       ; $6f5d: $56
	ld h, [hl]                                       ; $6f5e: $66
	ld h, h                                          ; $6f5f: $64
	ld b, [hl]                                       ; $6f60: $46
	ld h, [hl]                                       ; $6f61: $66
	ld b, h                                          ; $6f62: $44
	ld b, [hl]                                       ; $6f63: $46
	scf                                              ; $6f64: $37
	ld a, [bc]                                       ; $6f65: $0a
	sbc b                                            ; $6f66: $98
	nop                                              ; $6f67: $00
	rst $38                                          ; $6f68: $ff
	ld d, b                                          ; $6f69: $50
	rst $38                                          ; $6f6a: $ff
	xor d                                            ; $6f6b: $aa
	rst $38                                          ; $6f6c: $ff
	ld d, l                                          ; $6f6d: $55
	ld l, e                                          ; $6f6e: $6b
	db $fc                                           ; $6f6f: $fc
	rst SubAFromDE                                          ; $6f70: $df
	rst $38                                          ; $6f71: $ff
	ld a, a                                          ; $6f72: $7f
	ldh a, [$7f]                                     ; $6f73: $f0 $7f
	cp $9e                                           ; $6f75: $fe $9e
	xor b                                            ; $6f77: $a8
	ld h, e                                          ; $6f78: $63
	ldh a, [$9e]                                     ; $6f79: $f0 $9e
	push af                                          ; $6f7b: $f5
	ld [hl], e                                       ; $6f7c: $73
	ldh a, [$57]                                     ; $6f7d: $f0 $57
	call c, $f06f                                    ; $6f7f: $dc $6f $f0
	ld a, a                                          ; $6f82: $7f

jr_04a_6f83:
	cp $67                                           ; $6f83: $fe $67
	ldh a, [$9c]                                     ; $6f85: $f0 $9c
	ccf                                              ; $6f87: $3f
	ldh [rTIMA], a                                   ; $6f88: $e0 $05
	ld l, e                                          ; $6f8a: $6b
	xor $6b                                          ; $6f8b: $ee $6b
	ldh [$9b], a                                     ; $6f8d: $e0 $9b
	nop                                              ; $6f8f: $00
	ld d, h                                          ; $6f90: $54
	ld hl, sp+$2a                                    ; $6f91: $f8 $2a
	ld e, e                                          ; $6f93: $5b
	ldh [$fd], a                                     ; $6f94: $e0 $fd
	sbc d                                            ; $6f96: $9a
	xor h                                            ; $6f97: $ac
	ld hl, sp+$15                                    ; $6f98: $f8 $15
	rst $38                                          ; $6f9a: $ff
	and b                                            ; $6f9b: $a0
	ld e, e                                          ; $6f9c: $5b
	ldh a, [rIE]                                     ; $6f9d: $f0 $ff
	sbc l                                            ; $6f9f: $9d
	ld e, a                                          ; $6fa0: $5f
	ldh [$57], a                                     ; $6fa1: $e0 $57
	ldh [rIE], a                                     ; $6fa3: $e0 $ff
	sbc e                                            ; $6fa5: $9b
	add b                                            ; $6fa6: $80
	nop                                              ; $6fa7: $00
	xor a                                            ; $6fa8: $af
	ldh a, [$57]                                     ; $6fa9: $f0 $57
	ldh a, [$9a]                                     ; $6fab: $f0 $9a
	ld a, b                                          ; $6fad: $78
	rlca                                             ; $6fae: $07
	cp $01                                           ; $6faf: $fe $01
	call nc, $f05f                                   ; $6fb1: $d4 $5f $f0
	sbc b                                            ; $6fb4: $98
	ld bc, $04fa                                     ; $6fb5: $01 $fa $04
	ld h, b                                          ; $6fb8: $60
	sbc a                                            ; $6fb9: $9f
	jr c, jr_04a_6f83                                ; $6fba: $38 $c7

	ld [hl], e                                       ; $6fbc: $73
	ldh a, [hDisp0_WX]                                     ; $6fbd: $f0 $89
	inc b                                            ; $6fbf: $04
	ld bc, $0f30                                     ; $6fc0: $01 $30 $0f
	ret nz                                           ; $6fc3: $c0

	inc a                                            ; $6fc4: $3c
	inc bc                                           ; $6fc5: $03
	ld bc, $07ff                                     ; $6fc6: $01 $ff $07
	rst $38                                          ; $6fc9: $ff
	rra                                              ; $6fca: $1f
	rst $38                                          ; $6fcb: $ff
	ld a, a                                          ; $6fcc: $7f
	rst $38                                          ; $6fcd: $ff
	ld a, l                                          ; $6fce: $7d
	inc bc                                           ; $6fcf: $03
	jp nz, $953f                                     ; $6fd0: $c2 $3f $95

	ld a, a                                          ; $6fd3: $7f
	ld a, [hl+]                                      ; $6fd4: $2a
	ld a, e                                          ; $6fd5: $7b
	and $9e                                          ; $6fd6: $e6 $9e
	ld a, [$ffdc]                                    ; $6fd8: $fa $dc $ff
	ld h, a                                          ; $6fdb: $67
	ld b, [hl]                                       ; $6fdc: $46
	ld [hl], a                                       ; $6fdd: $77
	db $fc                                           ; $6fde: $fc
	sbc [hl]                                         ; $6fdf: $9e
	push de                                          ; $6fe0: $d5
	ld e, e                                          ; $6fe1: $5b
	db $f4                                           ; $6fe2: $f4
	ld l, a                                          ; $6fe3: $6f
	db $fc                                           ; $6fe4: $fc
	ld a, a                                          ; $6fe5: $7f
	ld h, $9e                                        ; $6fe6: $26 $9e
	ld d, a                                          ; $6fe8: $57
	ld l, e                                          ; $6fe9: $6b
	db $f4                                           ; $6fea: $f4
	ld a, a                                          ; $6feb: $7f
	ld l, $7f                                        ; $6fec: $2e $7f
	ld l, [hl]                                       ; $6fee: $6e
	ld a, a                                          ; $6fef: $7f
	ld e, d                                          ; $6ff0: $5a
	sbc b                                            ; $6ff1: $98
	ld [bc], a                                       ; $6ff2: $02
	db $fd                                           ; $6ff3: $fd
	rst $38                                          ; $6ff4: $ff
	rst $38                                          ; $6ff5: $ff
	cp a                                             ; $6ff6: $bf
	rst $38                                          ; $6ff7: $ff
	ld b, c                                          ; $6ff8: $41
	ld a, e                                          ; $6ff9: $7b
	ld hl, sp-$6a                                    ; $6ffa: $f8 $96
	dec b                                            ; $6ffc: $05
	ld a, [$f50a]                                    ; $6ffd: $fa $0a $f5
	dec d                                            ; $7000: $15
	ld [$54ab], a                                    ; $7001: $ea $ab $54
	push de                                          ; $7004: $d5
	ld [hl], e                                       ; $7005: $73
	cp b                                             ; $7006: $b8
	adc h                                            ; $7007: $8c
	sbc a                                            ; $7008: $9f
	ld a, a                                          ; $7009: $7f
	ld [hl], a                                       ; $700a: $77
	adc e                                            ; $700b: $8b
	xor e                                            ; $700c: $ab
	ld d, h                                          ; $700d: $54
	ld d, l                                          ; $700e: $55
	xor d                                            ; $700f: $aa
	rst $38                                          ; $7010: $ff
	nop                                              ; $7011: $00
	ld [bc], a                                       ; $7012: $02
	db $fd                                           ; $7013: $fd
	and b                                            ; $7014: $a0
	rst $38                                          ; $7015: $ff
	ld d, h                                          ; $7016: $54
	rst $38                                          ; $7017: $ff
	ld [$fdff], a                                    ; $7018: $ea $ff $fd
	ld a, e                                          ; $701b: $7b
	db $ec                                           ; $701c: $ec
	add [hl]                                         ; $701d: $86
	ld a, l                                          ; $701e: $7d
	add d                                            ; $701f: $82
	xor d                                            ; $7020: $aa
	ld d, l                                          ; $7021: $55
	xor d                                            ; $7022: $aa
	ld d, l                                          ; $7023: $55
	ld d, l                                          ; $7024: $55
	xor d                                            ; $7025: $aa
	ld a, [bc]                                       ; $7026: $0a
	push af                                          ; $7027: $f5
	add l                                            ; $7028: $85
	ld a, [$fd52]                                    ; $7029: $fa $52 $fd
	ldh a, [rIE]                                     ; $702c: $f0 $ff
	dec [hl]                                         ; $702e: $35
	ld [$7fbf], a                                    ; $702f: $ea $bf $7f
	ld a, b                                          ; $7032: $78
	add b                                            ; $7033: $80
	cp $ff                                           ; $7034: $fe $ff
	ld bc, $b67b                                     ; $7036: $01 $7b $b6
	rst SubAFromDE                                          ; $7039: $df
	rst $38                                          ; $703a: $ff
	sbc l                                            ; $703b: $9d
	add b                                            ; $703c: $80
	ld a, a                                          ; $703d: $7f
	ei                                               ; $703e: $fb
	sbc h                                            ; $703f: $9c
	ld a, a                                          ; $7040: $7f
	add b                                            ; $7041: $80
	rst $38                                          ; $7042: $ff
	ld a, e                                          ; $7043: $7b
	ld h, [hl]                                       ; $7044: $66
	ld a, a                                          ; $7045: $7f
	cp $7a                                           ; $7046: $fe $7a
	or h                                             ; $7048: $b4
	sbc [hl]                                         ; $7049: $9e
	rra                                              ; $704a: $1f
	db $fc                                           ; $704b: $fc
	ret c                                            ; $704c: $d8

	rst $38                                          ; $704d: $ff
	ld a, e                                          ; $704e: $7b
	or $fe                                           ; $704f: $f6 $fe
	sbc h                                            ; $7051: $9c
	ccf                                              ; $7052: $3f
	rst $38                                          ; $7053: $ff
	ldh [rOCPD], a                                   ; $7054: $e0 $6b
	cp $7b                                           ; $7056: $fe $7b
	or $99                                           ; $7058: $f6 $99
	ccf                                              ; $705a: $3f
	nop                                              ; $705b: $00
	nop                                              ; $705c: $00
	cp $f0                                           ; $705d: $fe $f0
	inc bc                                           ; $705f: $03
	ld l, d                                          ; $7060: $6a
	cp [hl]                                          ; $7061: $be
	rst SubAFromDE                                          ; $7062: $df
	rst $38                                          ; $7063: $ff
	sub a                                            ; $7064: $97
	ld a, l                                          ; $7065: $7d
	sbc a                                            ; $7066: $9f
	xor d                                            ; $7067: $aa
	nop                                              ; $7068: $00
	dec b                                            ; $7069: $05
	nop                                              ; $706a: $00
	rst $38                                          ; $706b: $ff
	db $fc                                           ; $706c: $fc

Call_04a_706d:
	ld h, a                                          ; $706d: $67
	ldh a, [$98]                                     ; $706e: $f0 $98
	rst AddAOntoHL                                          ; $7070: $ef
	rst $38                                          ; $7071: $ff
	xor d                                            ; $7072: $aa
	nop                                              ; $7073: $00
	ld d, l                                          ; $7074: $55
	nop                                              ; $7075: $00
	ld a, [$c777]                                    ; $7076: $fa $77 $c7
	ld [hl], e                                       ; $7079: $73
	ldh a, [$df]                                     ; $707a: $f0 $df
	rst $38                                          ; $707c: $ff
	ld [hl], a                                       ; $707d: $77
	ldh a, [$7f]                                     ; $707e: $f0 $7f

Jump_04a_7080:
	db $fc                                           ; $7080: $fc
	sbc h                                            ; $7081: $9c
	rst $38                                          ; $7082: $ff
	ld hl, sp+$18                                    ; $7083: $f8 $18
	ld [hl], e                                       ; $7085: $73
	sbc [hl]                                         ; $7086: $9e
	sbc [hl]                                         ; $7087: $9e
	ldh [$7b], a                                     ; $7088: $e0 $7b
	ret nc                                           ; $708a: $d0

	ld a, a                                          ; $708b: $7f
	ldh a, [$9e]                                     ; $708c: $f0 $9e
	xor e                                            ; $708e: $ab
	ld a, e                                          ; $708f: $7b
	db $e3                                           ; $7090: $e3
	sbc l                                            ; $7091: $9d
	ld bc, $ddfe                                     ; $7092: $01 $fe $dd
	rst $38                                          ; $7095: $ff
	ld a, [hl]                                       ; $7096: $7e
	ldh a, [$7f]                                     ; $7097: $f0 $7f
	ldh a, [$9e]                                     ; $7099: $f0 $9e
	ld d, a                                          ; $709b: $57
	ld [hl], e                                       ; $709c: $73
	jp $fc9b                                         ; $709d: $c3 $9b $fc


	inc bc                                           ; $70a0: $03
	add b                                            ; $70a1: $80
	rst $38                                          ; $70a2: $ff
	ld a, e                                          ; $70a3: $7b
	ld [hl], a                                       ; $70a4: $77
	sbc l                                            ; $70a5: $9d
	rst $38                                          ; $70a6: $ff
	xor a                                            ; $70a7: $af
	ld l, d                                          ; $70a8: $6a
	ld c, a                                          ; $70a9: $4f
	ld h, a                                          ; $70aa: $67
	xor [hl]                                         ; $70ab: $ae
	ld c, a                                          ; $70ac: $4f
	ldh a, [c]                                       ; $70ad: $f2
	rst SubAFromDE                                          ; $70ae: $df
	add b                                            ; $70af: $80
	ld e, a                                          ; $70b0: $5f
	ldh a, [$7f]                                     ; $70b1: $f0 $7f
	ld a, d                                          ; $70b3: $7a
	ld a, e                                          ; $70b4: $7b
	adc b                                            ; $70b5: $88
	sbc l                                            ; $70b6: $9d
	nop                                              ; $70b7: $00
	push de                                          ; $70b8: $d5
	ld [hl], e                                       ; $70b9: $73
	or d                                             ; $70ba: $b2
	ld l, e                                          ; $70bb: $6b

Call_04a_70bc:
	ldh [c], a                                       ; $70bc: $e2
	cp $9e                                           ; $70bd: $fe $9e
	ld d, b                                          ; $70bf: $50
	ld a, e                                          ; $70c0: $7b
	push af                                          ; $70c1: $f5
	sbc l                                            ; $70c2: $9d
	ret nz                                           ; $70c3: $c0

	ccf                                              ; $70c4: $3f
	ld l, a                                          ; $70c5: $6f
	ldh a, [$fb]                                     ; $70c6: $f0 $fb
	sbc l                                            ; $70c8: $9d
	ld hl, sp+$07                                    ; $70c9: $f8 $07
	ld [hl], a                                       ; $70cb: $77
	ldh a, [c]                                       ; $70cc: $f2
	ld a, a                                          ; $70cd: $7f
	add d                                            ; $70ce: $82
	sbc l                                            ; $70cf: $9d
	db $fc                                           ; $70d0: $fc
	ldh [$72], a                                     ; $70d1: $e0 $72
	ld h, l                                          ; $70d3: $65
	ld h, e                                          ; $70d4: $63
	or h                                             ; $70d5: $b4
	ld d, a                                          ; $70d6: $57
	ldh [c], a                                       ; $70d7: $e2
	ld l, a                                          ; $70d8: $6f
	or h                                             ; $70d9: $b4
	ld l, a                                          ; $70da: $6f
	ld [bc], a                                       ; $70db: $02
	ld e, a                                          ; $70dc: $5f
	or h                                             ; $70dd: $b4
	ld h, a                                          ; $70de: $67
	ldh a, [$7e]                                     ; $70df: $f0 $7e
	ld b, [hl]                                       ; $70e1: $46
	ld a, a                                          ; $70e2: $7f
	ld b, b                                          ; $70e3: $40
	ld e, a                                          ; $70e4: $5f
	pop af                                           ; $70e5: $f1
	ld a, a                                          ; $70e6: $7f
	ld c, [hl]                                       ; $70e7: $4e
	ld a, a                                          ; $70e8: $7f
	sbc h                                            ; $70e9: $9c
	sbc h                                            ; $70ea: $9c
	and b                                            ; $70eb: $a0
	nop                                              ; $70ec: $00
	ld b, b                                          ; $70ed: $40
	ld a, c                                          ; $70ee: $79
	db $fc                                           ; $70ef: $fc
	ld [hl], a                                       ; $70f0: $77
	db $fc                                           ; $70f1: $fc
	ld a, a                                          ; $70f2: $7f
	ld c, b                                          ; $70f3: $48
	sbc l                                            ; $70f4: $9d
	xor d                                            ; $70f5: $aa
	ld bc, $ac7b                                     ; $70f6: $01 $7b $ac
	ld hl, sp+$65                                    ; $70f9: $f8 $65
	adc a                                            ; $70fb: $8f
	ld a, [hl]                                       ; $70fc: $7e
	and e                                            ; $70fd: $a3
	ld a, a                                          ; $70fe: $7f
	cp $7f                                           ; $70ff: $fe $7f
	ld a, c                                          ; $7101: $79
	ld a, [hl]                                       ; $7102: $7e
	xor a                                            ; $7103: $af
	ld a, d                                          ; $7104: $7a
	bit 2, e                                         ; $7105: $cb $53
	cp $92                                           ; $7107: $fe $92
	db $fd                                           ; $7109: $fd
	db $db                                           ; $710a: $db
	ei                                               ; $710b: $fb
	db $fd                                           ; $710c: $fd
	db $fd                                           ; $710d: $fd
	ei                                               ; $710e: $fb
	ei                                               ; $710f: $fb
	db $fd                                           ; $7110: $fd
	ret                                              ; $7111: $c9


	rst $38                                          ; $7112: $ff
	ret                                              ; $7113: $c9


	rst $38                                          ; $7114: $ff
	bit 7, e                                         ; $7115: $cb $7b
	ld a, [$f69b]                                    ; $7117: $fa $9b $f6
	rst AddAOntoHL                                          ; $711a: $ef
	xor $f7                                          ; $711b: $ee $f7
	ld [hl], a                                       ; $711d: $77
	db $fc                                           ; $711e: $fc
	sbc e                                            ; $711f: $9b
	cp [hl]                                          ; $7120: $be
	rst SubAFromBC                                          ; $7121: $e7
	xor $b7                                          ; $7122: $ee $b7
	ld [hl], a                                       ; $7124: $77
	db $fc                                           ; $7125: $fc
	sbc c                                            ; $7126: $99
	or l                                             ; $7127: $b5
	ld l, e                                          ; $7128: $6b
	ld l, $f1                                        ; $7129: $2e $f1
	cp l                                             ; $712b: $bd
	ld h, d                                          ; $712c: $62
	ld a, e                                          ; $712d: $7b
	db $fc                                           ; $712e: $fc
	sbc h                                            ; $712f: $9c
	ld [hl], e                                       ; $7130: $73
	ld l, $f3                                        ; $7131: $2e $f3
	ld [hl], a                                       ; $7133: $77
	db $fc                                           ; $7134: $fc
	add [hl]                                         ; $7135: $86
	cp a                                             ; $7136: $bf
	add b                                            ; $7137: $80
	sub e                                            ; $7138: $93
	xor [hl]                                         ; $7139: $ae
	cp c                                             ; $713a: $b9
	add [hl]                                         ; $713b: $86
	sub l                                            ; $713c: $95
	adc d                                            ; $713d: $8a
	xor c                                            ; $713e: $a9
	sub [hl]                                         ; $713f: $96
	sub h                                            ; $7140: $94
	adc e                                            ; $7141: $8b
	adc c                                            ; $7142: $89
	add [hl]                                         ; $7143: $86
	adc l                                            ; $7144: $8d
	add d                                            ; $7145: $82
	ld a, a                                          ; $7146: $7f
	ld a, l                                          ; $7147: $7d
	ld a, a                                          ; $7148: $7f
	ld e, d                                          ; $7149: $5a
	ld a, a                                          ; $714a: $7f
	ld e, l                                          ; $714b: $5d
	rst $38                                          ; $714c: $ff
	ld e, d                                          ; $714d: $5a
	rst $38                                          ; $714e: $ff
	ld a, e                                          ; $714f: $7b
	db $fc                                           ; $7150: $fc
	sbc l                                            ; $7151: $9d
	rst SubAFromDE                                          ; $7152: $df
	ld a, l                                          ; $7153: $7d
	ld a, e                                          ; $7154: $7b
	ld hl, sp+$76                                    ; $7155: $f8 $76
	ret                                              ; $7157: $c9


	ld h, e                                          ; $7158: $63
	cp $9a                                           ; $7159: $fe $9a
	cp $80                                           ; $715b: $fe $80
	db $fd                                           ; $715d: $fd
	rst $38                                          ; $715e: $ff
	cp $7a                                           ; $715f: $fe $7a
	inc b                                            ; $7161: $04
	ld a, [hl]                                       ; $7162: $7e
	nop                                              ; $7163: $00
	ld a, l                                          ; $7164: $7d
	ld [hl], d                                       ; $7165: $72
	ld a, l                                          ; $7166: $7d
	call nz, $cc75                                   ; $7167: $c4 $75 $cc
	ld h, l                                          ; $716a: $65
	ret z                                            ; $716b: $c8

	ld a, l                                          ; $716c: $7d
	call nc, $2a99                                   ; $716d: $d4 $99 $2a
	push de                                          ; $7170: $d5
	ld d, l                                          ; $7171: $55
	xor d                                            ; $7172: $aa
	xor d                                            ; $7173: $aa
	ld d, l                                          ; $7174: $55
	ld [hl], c                                       ; $7175: $71
	ld b, $7b                                        ; $7176: $06 $7b
	ld hl, sp+$7f                                    ; $7178: $f8 $7f
	db $fc                                           ; $717a: $fc
	sbc c                                            ; $717b: $99
	xor a                                            ; $717c: $af
	ld d, b                                          ; $717d: $50
	ld e, a                                          ; $717e: $5f
	and b                                            ; $717f: $a0
	xor l                                            ; $7180: $ad
	ld d, e                                          ; $7181: $53
	ld [hl], a                                       ; $7182: $77
	db $e4                                           ; $7183: $e4
	ld [hl], a                                       ; $7184: $77
	ldh a, [$9d]                                     ; $7185: $f0 $9d
	ld d, a                                          ; $7187: $57
	xor b                                            ; $7188: $a8
	ld l, a                                          ; $7189: $6f
	rlca                                             ; $718a: $07
	ld a, b                                          ; $718b: $78
	or $73                                           ; $718c: $f6 $73
	db $e4                                           ; $718e: $e4
	ld [hl], a                                       ; $718f: $77
	ldh a, [c]                                       ; $7190: $f2
	ld a, [hl]                                       ; $7191: $7e
	db $e4                                           ; $7192: $e4
	rst SubAFromDE                                          ; $7193: $df
	rst $38                                          ; $7194: $ff
	ld a, [hl]                                       ; $7195: $7e
	ld e, b                                          ; $7196: $58
	ld [hl], a                                       ; $7197: $77
	ldh a, [$6f]                                     ; $7198: $f0 $6f
	inc l                                            ; $719a: $2c
	ld a, d                                          ; $719b: $7a
	ld c, h                                          ; $719c: $4c
	sbc h                                            ; $719d: $9c
	cp $54                                           ; $719e: $fe $54
	xor e                                            ; $71a0: $ab
	ld [hl], a                                       ; $71a1: $77
	ldh a, [$9d]                                     ; $71a2: $f0 $9d
	ld [$6715], a                                    ; $71a4: $ea $15 $67
	jr jr_04a_7218                                   ; $71a7: $18 $6f

	ret nc                                           ; $71a9: $d0

	ld [hl], a                                       ; $71aa: $77
	db $fc                                           ; $71ab: $fc
	ld a, h                                          ; $71ac: $7c
	cp $6f                                           ; $71ad: $fe $6f
	ldh a, [$7d]                                     ; $71af: $f0 $7d
	xor b                                            ; $71b1: $a8
	ld l, a                                          ; $71b2: $6f
	call c, $fc7f                                    ; $71b3: $dc $7f $fc
	sbc l                                            ; $71b6: $9d
	push af                                          ; $71b7: $f5
	ld a, [bc]                                       ; $71b8: $0a
	ld h, [hl]                                       ; $71b9: $66
	ld b, [hl]                                       ; $71ba: $46
	ld a, a                                          ; $71bb: $7f
	db $ec                                           ; $71bc: $ec
	sbc l                                            ; $71bd: $9d
	ld d, b                                          ; $71be: $50
	xor a                                            ; $71bf: $af
	ld l, a                                          ; $71c0: $6f
	db $ec                                           ; $71c1: $ec
	ld h, [hl]                                       ; $71c2: $66
	ret z                                            ; $71c3: $c8

	ld h, a                                          ; $71c4: $67
	db $fc                                           ; $71c5: $fc
	ld a, [hl]                                       ; $71c6: $7e
	call nz, $0792                                   ; $71c7: $c4 $92 $07
	inc bc                                           ; $71ca: $03
	ld c, $07                                        ; $71cb: $0e $07
	rlca                                             ; $71cd: $07
	rrca                                             ; $71ce: $0f
	inc bc                                           ; $71cf: $03
	rlca                                             ; $71d0: $07
	dec b                                            ; $71d1: $05
	inc bc                                           ; $71d2: $03
	dec b                                            ; $71d3: $05
	ld bc, $7702                                     ; $71d4: $01 $02 $77
	cp h                                             ; $71d7: $bc
	sub d                                            ; $71d8: $92
	ld hl, sp-$71                                    ; $71d9: $f8 $8f
	db $fc                                           ; $71db: $fc
	ld d, a                                          ; $71dc: $57
	cp $af                                           ; $71dd: $fe $af
	db $fc                                           ; $71df: $fc
	cp $fc                                           ; $71e0: $fe $fc
	db $fd                                           ; $71e2: $fd
	db $fc                                           ; $71e3: $fc
	db $fc                                           ; $71e4: $fc
	ld hl, sp+$66                                    ; $71e5: $f8 $66
	ret z                                            ; $71e7: $c8

	sbc [hl]                                         ; $71e8: $9e
	cp $73                                           ; $71e9: $fe $73
	db $fc                                           ; $71eb: $fc
	sbc l                                            ; $71ec: $9d
	db $fd                                           ; $71ed: $fd
	ccf                                              ; $71ee: $3f
	halt                                             ; $71ef: $76
	call z, $fc7f                                    ; $71f0: $cc $7f $fc
	sbc e                                            ; $71f3: $9b
	reti                                             ; $71f4: $d9


	rst AddAOntoHL                                          ; $71f5: $ef
	db $db                                           ; $71f6: $db
	db $ed                                           ; $71f7: $ed
	ld l, a                                          ; $71f8: $6f
	db $fc                                           ; $71f9: $fc
	sub e                                            ; $71fa: $93
	or [hl]                                          ; $71fb: $b6
	rst AddAOntoHL                                          ; $71fc: $ef
	ld l, [hl]                                       ; $71fd: $6e
	or a                                             ; $71fe: $b7
	or [hl]                                          ; $71ff: $b6
	ld l, a                                          ; $7200: $6f
	ld l, [hl]                                       ; $7201: $6e
	or a                                             ; $7202: $b7
	sub $2f                                          ; $7203: $d6 $2f
	ld l, [hl]                                       ; $7205: $6e
	sub a                                            ; $7206: $97
	ld [hl], a                                       ; $7207: $77
	db $fc                                           ; $7208: $fc
	sub a                                            ; $7209: $97
	cp [hl]                                          ; $720a: $be
	ld h, c                                          ; $720b: $61
	dec l                                            ; $720c: $2d
	ldh a, [c]                                       ; $720d: $f2
	cp [hl]                                          ; $720e: $be
	ld h, c                                          ; $720f: $61
	ld l, l                                          ; $7210: $6d
	or d                                             ; $7211: $b2
	ld [hl], a                                       ; $7212: $77
	db $fc                                           ; $7213: $fc
	sbc b                                            ; $7214: $98
	or [hl]                                          ; $7215: $b6
	ld l, c                                          ; $7216: $69
	ld l, l                                          ; $7217: $6d

jr_04a_7218:
	or d                                             ; $7218: $b2
	sbc l                                            ; $7219: $9d
	add d                                            ; $721a: $82
	adc c                                            ; $721b: $89
	ld a, d                                          ; $721c: $7a
	jp nz, $999b                                     ; $721d: $c2 $9b $99

	add [hl]                                         ; $7220: $86
	sbc l                                            ; $7221: $9d
	add d                                            ; $7222: $82
	ld [hl], a                                       ; $7223: $77
	cp $7e                                           ; $7224: $fe $7e
	or [hl]                                          ; $7226: $b6
	ld a, l                                          ; $7227: $7d
	ld c, l                                          ; $7228: $4d
	sbc b                                            ; $7229: $98
	rst $38                                          ; $722a: $ff
	ld l, d                                          ; $722b: $6a
	rst $38                                          ; $722c: $ff
	ld a, l                                          ; $722d: $7d
	rst AddAOntoHL                                          ; $722e: $ef
	ld a, d                                          ; $722f: $7a
	rst AddAOntoHL                                          ; $7230: $ef
	ld l, e                                          ; $7231: $6b
	db $fc                                           ; $7232: $fc
	sbc e                                            ; $7233: $9b
	db $fd                                           ; $7234: $fd
	add b                                            ; $7235: $80
	ld a, [$7780]                                    ; $7236: $fa $80 $77
	db $fc                                           ; $7239: $fc
	sbc [hl]                                         ; $723a: $9e
	push af                                          ; $723b: $f5
	ld a, e                                          ; $723c: $7b
	db $fc                                           ; $723d: $fc
	sbc d                                            ; $723e: $9a
	push de                                          ; $723f: $d5
	add b                                            ; $7240: $80
	ld [$4080], a                                    ; $7241: $ea $80 $40

jr_04a_7244:
	ld a, d                                          ; $7244: $7a
	cp c                                             ; $7245: $b9
	sbc e                                            ; $7246: $9b
	ld b, c                                          ; $7247: $41
	cp $82                                           ; $7248: $fe $82
	db $fd                                           ; $724a: $fd
	ld [hl], a                                       ; $724b: $77
	db $fc                                           ; $724c: $fc
	ld a, h                                          ; $724d: $7c
	sbc h                                            ; $724e: $9c
	ld a, a                                          ; $724f: $7f
	db $fc                                           ; $7250: $fc
	ld l, a                                          ; $7251: $6f
	inc h                                            ; $7252: $24
	ld e, a                                          ; $7253: $5f
	db $fc                                           ; $7254: $fc
	sub a                                            ; $7255: $97
	ld e, l                                          ; $7256: $5d
	and e                                            ; $7257: $a3
	cp l                                             ; $7258: $bd
	ld b, e                                          ; $7259: $43
	ld a, l                                          ; $725a: $7d
	add e                                            ; $725b: $83
	db $fd                                           ; $725c: $fd
	inc bc                                           ; $725d: $03
	ld h, a                                          ; $725e: $67
	cp $d1                                           ; $725f: $fe $d1
	rst $38                                          ; $7261: $ff
	ld a, a                                          ; $7262: $7f
	ld c, [hl]                                       ; $7263: $4e
	sub d                                            ; $7264: $92
	ld hl, sp-$10                                    ; $7265: $f8 $f0
	db $fc                                           ; $7267: $fc
	ldh a, [$f8]                                     ; $7268: $f0 $f8
	ldh [$f5], a                                     ; $726a: $e0 $f5
	ret nz                                           ; $726c: $c0

	ld [$ddc0], a                                    ; $726d: $ea $c0 $dd
	add b                                            ; $7270: $80
	cp [hl]                                          ; $7271: $be
	ld a, e                                          ; $7272: $7b
	jr nz, @+$65                                     ; $7273: $20 $63

	cp $9a                                           ; $7275: $fe $9a
	ld [bc], a                                       ; $7277: $02
	nop                                              ; $7278: $00
	ld b, c                                          ; $7279: $41
	ld bc, $6e82                                     ; $727a: $01 $82 $6e
	jp z, $e795                                      ; $727d: $ca $95 $e7

	rra                                              ; $7280: $1f
	pop bc                                           ; $7281: $c1
	ccf                                              ; $7282: $3f
	cp d                                             ; $7283: $ba
	ld a, a                                          ; $7284: $7f
	rst SubAFromHL                                          ; $7285: $d7
	ccf                                              ; $7286: $3f
	cp $11                                           ; $7287: $fe $11
	ld h, [hl]                                       ; $7289: $66
	cp b                                             ; $728a: $b8
	sbc e                                            ; $728b: $9b
	cp a                                             ; $728c: $bf
	ret nz                                           ; $728d: $c0

	rst $38                                          ; $728e: $ff
	ret nz                                           ; $728f: $c0

	ld a, b                                          ; $7290: $78
	sbc l                                            ; $7291: $9d
	ld a, a                                          ; $7292: $7f
	db $fc                                           ; $7293: $fc
	ld h, c                                          ; $7294: $61
	cp [hl]                                          ; $7295: $be
	ld l, a                                          ; $7296: $6f
	cp $7e                                           ; $7297: $fe $7e
	cp h                                             ; $7299: $bc
	ld l, [hl]                                       ; $729a: $6e
	xor b                                            ; $729b: $a8
	ld h, a                                          ; $729c: $67
	cp $6e                                           ; $729d: $fe $6e
	ret z                                            ; $729f: $c8

	add b                                            ; $72a0: $80
	db $d3                                           ; $72a1: $d3
	rst $38                                          ; $72a2: $ff
	adc h                                            ; $72a3: $8c
	rst SubAFromDE                                          ; $72a4: $df
	call $f073                                       ; $72a5: $cd $73 $f0
	pop af                                           ; $72a8: $f1
	inc e                                            ; $72a9: $1c
	jr jr_04a_72ad                                   ; $72aa: $18 $01

	nop                                              ; $72ac: $00

jr_04a_72ad:
	dec bc                                           ; $72ad: $0b
	rlca                                             ; $72ae: $07
	dec hl                                           ; $72af: $2b
	add hl, de                                       ; $72b0: $19
	cp e                                             ; $72b1: $bb
	pop af                                           ; $72b2: $f1
	ld sp, $41e3                                     ; $72b3: $31 $e3 $41
	jp $8386                                         ; $72b6: $c3 $86 $83


	ld [bc], a                                       ; $72b9: $02
	ld c, $f0                                        ; $72ba: $0e $f0
	jr c, jr_04a_7244                                ; $72bc: $38 $86

	inc c                                            ; $72be: $0c
	add a                                            ; $72bf: $87
	sub h                                            ; $72c0: $94
	ld [bc], a                                       ; $72c1: $02
	inc bc                                           ; $72c2: $03
	ld bc, $0103                                     ; $72c3: $01 $03 $01
	inc de                                           ; $72c6: $13
	ld bc, $0235                                     ; $72c7: $01 $35 $02
	ld h, $02                                        ; $72ca: $26 $02
	halt                                             ; $72cc: $76
	call z, Call_04a_7e9a                            ; $72cd: $cc $9a $7e
	ccf                                              ; $72d0: $3f
	ld a, l                                          ; $72d1: $7d
	ccf                                              ; $72d2: $3f
	ld a, d                                          ; $72d3: $7a
	ld l, e                                          ; $72d4: $6b
	db $fc                                           ; $72d5: $fc
	halt                                             ; $72d6: $76
	call z, $9b9e                                    ; $72d7: $cc $9e $9b
	ld [hl], e                                       ; $72da: $73
	db $fc                                           ; $72db: $fc
	adc l                                            ; $72dc: $8d
	sbc l                                            ; $72dd: $9d
	rst AddAOntoHL                                          ; $72de: $ef
	sbc a                                            ; $72df: $9f
	db $ed                                           ; $72e0: $ed
	db $dd                                           ; $72e1: $dd
	rst AddAOntoHL                                          ; $72e2: $ef
	jp nc, Jump_04a_7b3f                             ; $72e3: $d2 $3f $7b

	sub a                                            ; $72e6: $97
	jp c, Jump_04a_7b37                              ; $72e7: $da $37 $7b

	or a                                             ; $72ea: $b7
	cp $13                                           ; $72eb: $fe $13
	ld e, a                                          ; $72ed: $5f
	or e                                             ; $72ee: $b3
	ld [hl], a                                       ; $72ef: $77
	db $fc                                           ; $72f0: $fc
	adc [hl]                                         ; $72f1: $8e
	or h                                             ; $72f2: $b4
	ld a, e                                          ; $72f3: $7b
	ld d, l                                          ; $72f4: $55
	cp e                                             ; $72f5: $bb
	or a                                             ; $72f6: $b7
	ld e, c                                          ; $72f7: $59
	ld d, a                                          ; $72f8: $57
	cp c                                             ; $72f9: $b9
	rst FarCall                                          ; $72fa: $f7
	add hl, de                                       ; $72fb: $19
	ld [hl], a                                       ; $72fc: $77
	sbc c                                            ; $72fd: $99
	rst FarCall                                          ; $72fe: $f7
	add hl, de                                       ; $72ff: $19
	ld d, [hl]                                       ; $7300: $56
	cp c                                             ; $7301: $b9
	cp l                                             ; $7302: $bd
	ld a, d                                          ; $7303: $7a
	call z, $fc7f                                    ; $7304: $cc $7f $fc
	ld [hl], a                                       ; $7307: $77
	ld a, [$c276]                                    ; $7308: $fa $76 $c2
	adc h                                            ; $730b: $8c

jr_04a_730c:
	push af                                          ; $730c: $f5
	adc d                                            ; $730d: $8a
	ld l, a                                          ; $730e: $6f
	db $fd                                           ; $730f: $fd
	ld l, a                                          ; $7310: $6f
	ld a, [$65ff]                                    ; $7311: $fa $ff $65
	ld l, a                                          ; $7314: $6f
	ldh a, [$ef]                                     ; $7315: $f0 $ef
	ld [hl], l                                       ; $7317: $75
	rst AddAOntoHL                                          ; $7318: $ef
	ld [hl], b                                       ; $7319: $70
	ld l, a                                          ; $731a: $6f
	push af                                          ; $731b: $f5
	ld l, a                                          ; $731c: $6f
	ldh a, [$dd]                                     ; $731d: $f0 $dd
	ld [hl], d                                       ; $731f: $72
	ret z                                            ; $7320: $c8

	ld e, a                                          ; $7321: $5f
	db $fc                                           ; $7322: $fc
	halt                                             ; $7323: $76
	call z, $fc7f                                    ; $7324: $cc $7f $fc
	ld a, l                                          ; $7327: $7d
	xor h                                            ; $7328: $ac
	ld l, a                                          ; $7329: $6f
	db $fc                                           ; $732a: $fc
	ld d, [hl]                                       ; $732b: $56
	ret nz                                           ; $732c: $c0

	sbc l                                            ; $732d: $9d
	xor e                                            ; $732e: $ab
	ld d, h                                          ; $732f: $54
	ld [hl], a                                       ; $7330: $77
	db $fc                                           ; $7331: $fc
	ld e, [hl]                                       ; $7332: $5e
	add $62                                          ; $7333: $c6 $62
	ret nz                                           ; $7335: $c0

	adc a                                            ; $7336: $8f
	cp $fd                                           ; $7337: $fe $fd
	cp $ff                                           ; $7339: $fe $ff
	db $fc                                           ; $733b: $fc
	rst $38                                          ; $733c: $ff
	ld hl, sp-$09                                    ; $733d: $f8 $f7
	ld hl, sp-$05                                    ; $733f: $f8 $fb
	db $f4                                           ; $7341: $f4
	push hl                                          ; $7342: $e5
	ld a, [$007d]                                    ; $7343: $fa $7d $00
	cp $7b                                           ; $7346: $fe $7b
	ld a, [de]                                       ; $7348: $1a
	ld [hl], a                                       ; $7349: $77
	db $fc                                           ; $734a: $fc
	ld l, a                                          ; $734b: $6f
	cp $80                                           ; $734c: $fe $80
	ld b, l                                          ; $734e: $45
	nop                                              ; $734f: $00
	add e                                            ; $7350: $83
	nop                                              ; $7351: $00
	ld d, a                                          ; $7352: $57
	nop                                              ; $7353: $00
	xor e                                            ; $7354: $ab
	nop                                              ; $7355: $00
	ld e, e                                          ; $7356: $5b
	nop                                              ; $7357: $00
	cp e                                             ; $7358: $bb
	ld de, $31bb                                     ; $7359: $11 $bb $31
	ld a, e                                          ; $735c: $7b
	inc sp                                           ; $735d: $33
	pop af                                           ; $735e: $f1
	jr @+$01                                         ; $735f: $18 $ff

	rrca                                             ; $7361: $0f
	ei                                               ; $7362: $fb
	rlca                                             ; $7363: $07
	halt                                             ; $7364: $76
	ldh a, [c]                                       ; $7365: $f2
	sbc h                                            ; $7366: $9c
	ret z                                            ; $7367: $c8

	rlca                                             ; $7368: $07
	add e                                            ; $7369: $83
	ldh [rP1], a                                     ; $736a: $e0 $00
	jr nc, jr_04a_730c                               ; $736c: $30 $9e

	jr nz, jr_04a_73ea                               ; $736e: $20 $7a

	ld d, c                                          ; $7370: $51
	ld a, h                                          ; $7371: $7c
	sub [hl]                                         ; $7372: $96
	sub h                                            ; $7373: $94
	add b                                            ; $7374: $80
	ld e, a                                          ; $7375: $5f
	ld h, b                                          ; $7376: $60
	cpl                                              ; $7377: $2f
	ret nc                                           ; $7378: $d0

	ccf                                              ; $7379: $3f
	sub b                                            ; $737a: $90
	ccf                                              ; $737b: $3f
	db $10                                           ; $737c: $10
	ccf                                              ; $737d: $3f
	db $10                                           ; $737e: $10
	ld b, [hl]                                       ; $737f: $46
	ret nz                                           ; $7380: $c0

	ld b, a                                          ; $7381: $47
	cp $9a                                           ; $7382: $fe $9a
	ld a, [bc]                                       ; $7384: $0a
	inc b                                            ; $7385: $04
	nop                                              ; $7386: $00
	inc bc                                           ; $7387: $03
	ld d, l                                          ; $7388: $55
	ld a, b                                          ; $7389: $78
	inc a                                            ; $738a: $3c
	ld a, a                                          ; $738b: $7f
	or $8c                                           ; $738c: $f6 $8c
	call $0a32                                       ; $738e: $cd $32 $0a
	rst $38                                          ; $7391: $ff
	dec d                                            ; $7392: $15
	rst $38                                          ; $7393: $ff
	ld c, [hl]                                       ; $7394: $4e
	ld [de], a                                       ; $7395: $12
	jp c, $fe36                                      ; $7396: $da $36 $fe

	db $e4                                           ; $7399: $e4
	db $dd                                           ; $739a: $dd
	ld l, [hl]                                       ; $739b: $6e
	ret                                              ; $739c: $c9


	ld a, a                                          ; $739d: $7f
	ld l, b                                          ; $739e: $68
	rst $38                                          ; $739f: $ff
	ld hl, sp+$7b                                    ; $73a0: $f8 $7b
	cp $8e                                           ; $73a2: $fe $8e
	ld [hl+], a                                      ; $73a4: $22
	inc b                                            ; $73a5: $04
	inc c                                            ; $73a6: $0c
	inc b                                            ; $73a7: $04
	dec c                                            ; $73a8: $0d
	ld [$08fe], sp                                   ; $73a9: $08 $fe $08
	ld sp, hl                                        ; $73ac: $f9
	db $fc                                           ; $73ad: $fc
	ld b, $fc                                        ; $73ae: $06 $fc
	ld bc, $03fe                                     ; $73b0: $01 $fe $03
	cp $7e                                           ; $73b3: $fe $7e
	ld [hl], d                                       ; $73b5: $72
	ret nz                                           ; $73b6: $c0

	sbc h                                            ; $73b7: $9c
	push af                                          ; $73b8: $f5
	ccf                                              ; $73b9: $3f
	ld a, e                                          ; $73ba: $7b
	ld a, e                                          ; $73bb: $7b
	db $fc                                           ; $73bc: $fc
	sbc [hl]                                         ; $73bd: $9e
	ei                                               ; $73be: $fb
	ld a, e                                          ; $73bf: $7b
	db $fc                                           ; $73c0: $fc
	sub a                                            ; $73c1: $97
	cp a                                             ; $73c2: $bf
	call $cfbd                                       ; $73c3: $cd $bd $cf
	sbc [hl]                                         ; $73c6: $9e
	db $ed                                           ; $73c7: $ed
	sbc l                                            ; $73c8: $9d
	xor $67                                          ; $73c9: $ee $67
	db $fc                                           ; $73cb: $fc
	adc [hl]                                         ; $73cc: $8e
	cp [hl]                                          ; $73cd: $be
	inc de                                           ; $73ce: $13
	rra                                              ; $73cf: $1f
	or e                                             ; $73d0: $b3
	or [hl]                                          ; $73d1: $b6
	dec de                                           ; $73d2: $1b
	rla                                              ; $73d3: $17
	cp e                                             ; $73d4: $bb
	ldh a, [c]                                       ; $73d5: $f2
	dec de                                           ; $73d6: $1b
	ld d, e                                          ; $73d7: $53
	cp e                                             ; $73d8: $bb
	or $1b                                           ; $73d9: $f6 $1b
	ld b, a                                          ; $73db: $47
	cp e                                             ; $73dc: $bb
	or $7a                                           ; $73dd: $f6 $7a
	call z, $fc7f                                    ; $73df: $cc $7f $fc
	adc [hl]                                         ; $73e2: $8e
	halt                                             ; $73e3: $76
	sbc c                                            ; $73e4: $99
	or $19                                           ; $73e5: $f6 $19
	ld [hl], a                                       ; $73e7: $77
	sbc b                                            ; $73e8: $98
	di                                               ; $73e9: $f3

jr_04a_73ea:
	inc e                                            ; $73ea: $1c
	ld [hl], e                                       ; $73eb: $73
	sbc h                                            ; $73ec: $9c
	db $fd                                           ; $73ed: $fd
	add d                                            ; $73ee: $82
	ei                                               ; $73ef: $fb
	add h                                            ; $73f0: $84
	db $fc                                           ; $73f1: $fc
	add e                                            ; $73f2: $83
	ld sp, hl                                        ; $73f3: $f9
	ld a, d                                          ; $73f4: $7a
	add $8d                                          ; $73f5: $c6 $8d
	xor c                                            ; $73f7: $a9
	sub $b5                                          ; $73f8: $d6 $b5
	jp z, $d6a9                                      ; $73fa: $ca $a9 $d6

	ld l, a                                          ; $73fd: $6f
	push de                                          ; $73fe: $d5
	ld a, a                                          ; $73ff: $7f
	ret nz                                           ; $7400: $c0

	ld l, a                                          ; $7401: $6f
	push de                                          ; $7402: $d5
	ld l, a                                          ; $7403: $6f
	ret nc                                           ; $7404: $d0

	ld a, a                                          ; $7405: $7f
	push bc                                          ; $7406: $c5
	ld a, a                                          ; $7407: $7f
	jp nz, $f87b                                     ; $7408: $c2 $7b $f8

	sbc [hl]                                         ; $740b: $9e
	ldh a, [c]                                       ; $740c: $f2
	ld d, [hl]                                       ; $740d: $56
	call nz, $c066                                   ; $740e: $c4 $66 $c0
	ld a, a                                          ; $7411: $7f
	adc b                                            ; $7412: $88
	ld [hl], l                                       ; $7413: $75
	ld a, h                                          ; $7414: $7c
	ld a, a                                          ; $7415: $7f
	db $fc                                           ; $7416: $fc
	ld a, l                                          ; $7417: $7d
	ld [hl], h                                       ; $7418: $74
	ld a, h                                          ; $7419: $7c
	ld b, h                                          ; $741a: $44
	ld c, l                                          ; $741b: $4d
	add b                                            ; $741c: $80
	ld a, h                                          ; $741d: $7c
	inc a                                            ; $741e: $3c
	halt                                             ; $741f: $76
	call z, $8075                                    ; $7420: $cc $75 $80
	ld a, a                                          ; $7423: $7f
	db $fc                                           ; $7424: $fc
	ld [hl], l                                       ; $7425: $75
	ld a, b                                          ; $7426: $78
	ld a, a                                          ; $7427: $7f
	db $fc                                           ; $7428: $fc
	sbc d                                            ; $7429: $9a
	set 6, h                                         ; $742a: $cb $f4
	push de                                          ; $742c: $d5
	ld [$70aa], a                                    ; $742d: $ea $aa $70
	ld h, $6f                                        ; $7430: $26 $6f
	db $fc                                           ; $7432: $fc
	halt                                             ; $7433: $76
	ldh a, [c]                                       ; $7434: $f2
	ld a, e                                          ; $7435: $7b
	ld hl, sp+$68                                    ; $7436: $f8 $68
	ld a, [hl]                                       ; $7438: $7e
	ld a, a                                          ; $7439: $7f
	db $fc                                           ; $743a: $fc
	add b                                            ; $743b: $80
	ei                                               ; $743c: $fb
	ld [hl], d                                       ; $743d: $72
	rst FarCall                                          ; $743e: $f7
	ld a, [$f6f8]                                    ; $743f: $fa $f8 $f6
	db $f4                                           ; $7442: $f4
	ld a, [$56a8]                                    ; $7443: $fa $a8 $56
	cp $02                                           ; $7446: $fe $02
	xor e                                            ; $7448: $ab
	ld d, [hl]                                       ; $7449: $56
	ld d, a                                          ; $744a: $57
	xor e                                            ; $744b: $ab
	ld sp, $f320                                     ; $744c: $31 $20 $f3
	ld h, b                                          ; $744f: $60
	ldh [rLCDC], a                                   ; $7450: $e0 $40
	ld h, b                                          ; $7452: $60
	ld b, b                                          ; $7453: $40
	ld a, a                                          ; $7454: $7f
	jr nc, jr_04a_74d6                               ; $7455: $30 $7f

	ccf                                              ; $7457: $3f
	ld a, a                                          ; $7458: $7f
	ld h, $7f                                        ; $7459: $26 $7f
	sbc b                                            ; $745b: $98
	ld l, $1f                                        ; $745c: $2e $1f
	jr nc, jr_04a_747f                               ; $745e: $30 $1f

	ld [hl], b                                       ; $7460: $70
	rst GetHLinHL                                          ; $7461: $cf
	ld e, b                                          ; $7462: $58
	ld [hl], e                                       ; $7463: $73
	cp $9a                                           ; $7464: $fe $9a
	ret c                                            ; $7466: $d8

	rst GetHLinHL                                          ; $7467: $cf
	ret c                                            ; $7468: $d8

	rst SubAFromDE                                          ; $7469: $df
	ldh a, [$5e]                                     ; $746a: $f0 $5e
	sub $7f                                          ; $746c: $d6 $7f
	call nz, $a89b                                   ; $746e: $c4 $9b $a8
	ld d, a                                          ; $7471: $57
	ld b, b                                          ; $7472: $40
	cp a                                             ; $7473: $bf
	ld e, a                                          ; $7474: $5f
	ldh a, [hDisp1_OBP1]                                     ; $7475: $f0 $94
	ld hl, sp+$07                                    ; $7477: $f8 $07
	daa                                              ; $7479: $27
	ret c                                            ; $747a: $d8

	dec d                                            ; $747b: $15
	ldh [rIE], a                                     ; $747c: $e0 $ff
	rst $38                                          ; $747e: $ff

jr_04a_747f:
	ld a, [hl]                                       ; $747f: $7e
	add c                                            ; $7480: $81
	ld bc, $3379                                     ; $7481: $01 $79 $33
	ld a, [hl]                                       ; $7484: $7e
	cp [hl]                                          ; $7485: $be
	halt                                             ; $7486: $76
	cp d                                             ; $7487: $ba
	ld a, [hl]                                       ; $7488: $7e
	ld h, [hl]                                       ; $7489: $66
	halt                                             ; $748a: $76
	call z, $b89e                                    ; $748b: $cc $9e $b8
	ld a, e                                          ; $748e: $7b
	db $fc                                           ; $748f: $fc
	sub h                                            ; $7490: $94
	ldh [$1f], a                                     ; $7491: $e0 $1f
	ld e, b                                          ; $7493: $58
	rra                                              ; $7494: $1f
	cp a                                             ; $7495: $bf
	inc de                                           ; $7496: $13
	cp $11                                           ; $7497: $fe $11
	inc bc                                           ; $7499: $03
	cp $23                                           ; $749a: $fe $23
	ld a, e                                          ; $749c: $7b
	cp $92                                           ; $749d: $fe $92
	ld [hl], e                                       ; $749f: $73
	cp $e5                                           ; $74a0: $fe $e5
	cp $1f                                           ; $74a2: $fe $1f
	db $fc                                           ; $74a4: $fc
	di                                               ; $74a5: $f3
	db $ec                                           ; $74a6: $ec
	adc e                                            ; $74a7: $8b
	call nz, $3f3b                                   ; $74a8: $c4 $3b $3f
	ld [hl], l                                       ; $74ab: $75
	ld [hl], d                                       ; $74ac: $72
	ret z                                            ; $74ad: $c8

	ld [hl], a                                       ; $74ae: $77
	db $fc                                           ; $74af: $fc
	sbc [hl]                                         ; $74b0: $9e
	ld sp, hl                                        ; $74b1: $f9
	ld a, e                                          ; $74b2: $7b
	db $fc                                           ; $74b3: $fc
	sbc e                                            ; $74b4: $9b
	sub h                                            ; $74b5: $94
	rst AddAOntoHL                                          ; $74b6: $ef
	add l                                            ; $74b7: $85
	xor $77                                          ; $74b8: $ee $77
	cp $9a                                           ; $74ba: $fe $9a
	adc l                                            ; $74bc: $8d
	and $8d                                          ; $74bd: $e6 $8d
	and $9f                                          ; $74bf: $e6 $9f
	ld a, e                                          ; $74c1: $7b
	cp $94                                           ; $74c2: $fe $94
	ld b, a                                          ; $74c4: $47
	cp c                                             ; $74c5: $b9
	db $d3                                           ; $74c6: $d3
	add hl, sp                                       ; $74c7: $39
	ld d, a                                          ; $74c8: $57
	cp c                                             ; $74c9: $b9
	rst SubAFromHL                                          ; $74ca: $d7
	add hl, de                                       ; $74cb: $19
	rst SubAFromBC                                          ; $74cc: $e7
	add hl, de                                       ; $74cd: $19
	rst GetHLinHL                                          ; $74ce: $cf
	ld [hl], a                                       ; $74cf: $77
	cp $9c                                           ; $74d0: $fe $9c
	jr jr_04a_7547                                   ; $74d2: $18 $73

	sbc h                                            ; $74d4: $9c
	ld h, a                                          ; $74d5: $67

jr_04a_74d6:
	cp $9e                                           ; $74d6: $fe $9e
	ld a, e                                          ; $74d8: $7b
	ld [hl], e                                       ; $74d9: $73
	cp $9b                                           ; $74da: $fe $9b
	or h                                             ; $74dc: $b4
	res 5, b                                         ; $74dd: $cb $a8
	rst SubAFromHL                                          ; $74df: $d7
	ld [hl], a                                       ; $74e0: $77

jr_04a_74e1:
	db $fc                                           ; $74e1: $fc
	sub a                                            ; $74e2: $97
	or b                                             ; $74e3: $b0
	rst GetHLinHL                                          ; $74e4: $cf
	xor b                                            ; $74e5: $a8
	rst SubAFromHL                                          ; $74e6: $d7
	or d                                             ; $74e7: $b2
	rst GetHLinHL                                          ; $74e8: $cf
	xor l                                            ; $74e9: $ad
	rst SubAFromHL                                          ; $74ea: $d7
	halt                                             ; $74eb: $76
	call nz, $6f89                                   ; $74ec: $c4 $89 $6f
	pop de                                           ; $74ef: $d1
	ld l, a                                          ; $74f0: $6f
	ldh a, [$6f]                                     ; $74f1: $f0 $6f
	pop af                                           ; $74f3: $f1
	ld l, a                                          ; $74f4: $6f
	ret nz                                           ; $74f5: $c0

	ld l, a                                          ; $74f6: $6f
	pop hl                                           ; $74f7: $e1
	ld l, l                                          ; $74f8: $6d
	ldh [c], a                                       ; $74f9: $e2
	db $fd                                           ; $74fa: $fd
	add b                                            ; $74fb: $80
	cp d                                             ; $74fc: $ba
	ret nz                                           ; $74fd: $c0

	db $fd                                           ; $74fe: $fd
	add b                                            ; $74ff: $80
	cp [hl]                                          ; $7500: $be
	ret nz                                           ; $7501: $c0

	rst $38                                          ; $7502: $ff
	add b                                            ; $7503: $80
	ld a, b                                          ; $7504: $78
	cp [hl]                                          ; $7505: $be
	adc e                                            ; $7506: $8b
	add b                                            ; $7507: $80
	xor a                                            ; $7508: $af
	ret nc                                           ; $7509: $d0

	ld d, b                                          ; $750a: $50
	rst $38                                          ; $750b: $ff
	xor a                                            ; $750c: $af
	ld hl, sp+$40                                    ; $750d: $f8 $40
	add b                                            ; $750f: $80
	ld hl, sp-$42                                    ; $7510: $f8 $be
	ld e, a                                          ; $7512: $5f
	rst $38                                          ; $7513: $ff
	and a                                            ; $7514: $a7
	ld hl, sp-$0b                                    ; $7515: $f8 $f5
	rst $38                                          ; $7517: $ff
	ld a, [rIE]                                    ; $7518: $fa $ff $ff
	ld a, [$ffdf]                                    ; $751b: $fa $df $ff
	sub h                                            ; $751e: $94
	cp a                                             ; $751f: $bf
	jr jr_04a_74e1                                   ; $7520: $18 $bf

	sbc b                                            ; $7522: $98
	rst SubAFromDE                                          ; $7523: $df
	adc c                                            ; $7524: $89
	ld [hl], e                                       ; $7525: $73
	adc a                                            ; $7526: $8f
	rst $38                                          ; $7527: $ff
	inc bc                                           ; $7528: $03
	ld hl, sp-$02                                    ; $7529: $f8 $fe
	sbc b                                            ; $752b: $98
	ld a, $c0                                        ; $752c: $3e $c0
	ccf                                              ; $752e: $3f
	rst $38                                          ; $752f: $ff
	ld hl, sp+$07                                    ; $7530: $f8 $07
	and a                                            ; $7532: $a7
	ld a, e                                          ; $7533: $7b
	ldh [$67], a                                     ; $7534: $e0 $67
	db $dd                                           ; $7536: $dd
	sbc $ff                                          ; $7537: $de $ff
	sbc h                                            ; $7539: $9c
	rra                                              ; $753a: $1f
	rst $38                                          ; $753b: $ff
	rlca                                             ; $753c: $07
	ld [hl], a                                       ; $753d: $77
	ldh a, [$9e]                                     ; $753e: $f0 $9e
	rlca                                             ; $7540: $07
	cp $7f                                           ; $7541: $fe $7f
	dec e                                            ; $7543: $1d
	sbc [hl]                                         ; $7544: $9e
	pop af                                           ; $7545: $f1
	ld [hl], a                                       ; $7546: $77

jr_04a_7547:
	xor $9d                                          ; $7547: $ee $9d
	ret nz                                           ; $7549: $c0

	ei                                               ; $754a: $fb
	ld [hl], a                                       ; $754b: $77
	ld a, [$7cfe]                                    ; $754c: $fa $fe $7c
	adc d                                            ; $754f: $8a
	ld a, e                                          ; $7550: $7b
	sbc $7f                                          ; $7551: $de $7f
	ld [bc], a                                       ; $7553: $02
	ld a, a                                          ; $7554: $7f
	sbc $9c                                          ; $7555: $de $9c
	xor $ff                                          ; $7557: $ee $ff
	ld a, [hl]                                       ; $7559: $7e
	sbc $7f                                          ; $755a: $de $7f
	sbc c                                            ; $755c: $99
	rrca                                             ; $755d: $0f
	ccf                                              ; $755e: $3f
	nop                                              ; $755f: $00
	dec d                                            ; $7560: $15
	nop                                              ; $7561: $00
	ld [$e477], a                                    ; $7562: $ea $77 $e4
	ld [hl], h                                       ; $7565: $74
	ld c, h                                          ; $7566: $4c
	sbc l                                            ; $7567: $9d
	ret nz                                           ; $7568: $c0

	push de                                          ; $7569: $d5
	ld a, c                                          ; $756a: $79
	ld a, d                                          ; $756b: $7a
	sbc [hl]                                         ; $756c: $9e
	ld e, a                                          ; $756d: $5f
	ld [hl], l                                       ; $756e: $75
	xor d                                            ; $756f: $aa
	ld [hl], a                                       ; $7570: $77
	or b                                             ; $7571: $b0
	ld a, e                                          ; $7572: $7b
	cp $9e                                           ; $7573: $fe $9e
	ld d, b                                          ; $7575: $50
	ld a, e                                          ; $7576: $7b
	ret nc                                           ; $7577: $d0

	sbc [hl]                                         ; $7578: $9e
	ret nc                                           ; $7579: $d0

	ld a, e                                          ; $757a: $7b
	db $fc                                           ; $757b: $fc
	sbc c                                            ; $757c: $99
	rst $38                                          ; $757d: $ff
	ldh a, [$c0]                                     ; $757e: $f0 $c0
	nop                                              ; $7580: $00
	cp a                                             ; $7581: $bf
	nop                                              ; $7582: $00
	ld a, d                                          ; $7583: $7a
	sub [hl]                                         ; $7584: $96
	sbc l                                            ; $7585: $9d
	ccf                                              ; $7586: $3f
	dec hl                                           ; $7587: $2b
	ld a, d                                          ; $7588: $7a
	ret nc                                           ; $7589: $d0

	adc b                                            ; $758a: $88
	dec hl                                           ; $758b: $2b
	ld bc, $07df                                     ; $758c: $01 $df $07
	db $eb                                           ; $758f: $eb
	nop                                              ; $7590: $00
	add b                                            ; $7591: $80
	ld a, a                                          ; $7592: $7f
	ld a, [$ff80]                                    ; $7593: $fa $80 $ff
	rst $38                                          ; $7596: $ff
	cp d                                             ; $7597: $ba
	ret nz                                           ; $7598: $c0

	ld e, a                                          ; $7599: $5f
	nop                                              ; $759a: $00
	rlca                                             ; $759b: $07
	ld hl, sp-$01                                    ; $759c: $f8 $ff
	rst $38                                          ; $759e: $ff
	ld hl, sp+$11                                    ; $759f: $f8 $11
	ld a, [$fe77]                                    ; $75a1: $fa $77 $fe

jr_04a_75a4:
	add [hl]                                         ; $75a4: $86
	pop af                                           ; $75a5: $f1

jr_04a_75a6:
	or d                                             ; $75a6: $b2
	add hl, de                                       ; $75a7: $19
	pop af                                           ; $75a8: $f1
	jr jr_04a_75a4                                   ; $75a9: $18 $f9

	jr nc, jr_04a_75a6                               ; $75ab: $30 $f9

	ldh a, [$2f]                                     ; $75ad: $f0 $2f
	call nz, $6487                                   ; $75af: $c4 $87 $64
	add $e3                                          ; $75b2: $c6 $e3
	jp nc, $d323                                     ; $75b4: $d2 $23 $d3

	and c                                            ; $75b7: $a1
	ld b, d                                          ; $75b8: $42

jr_04a_75b9:
	or c                                             ; $75b9: $b1
	ld l, d                                          ; $75ba: $6a
	sub c                                            ; $75bb: $91
	ld a, d                                          ; $75bc: $7a
	sub c                                            ; $75bd: $91
	halt                                             ; $75be: $76
	call z, $c066                                    ; $75bf: $cc $66 $c0
	sbc [hl]                                         ; $75c2: $9e
	rst $38                                          ; $75c3: $ff
	ld a, e                                          ; $75c4: $7b
	db $fc                                           ; $75c5: $fc
	ld a, [hl]                                       ; $75c6: $7e
	adc $85                                          ; $75c7: $ce $85
	rst $38                                          ; $75c9: $ff
	and $de                                          ; $75ca: $e6 $de
	rst SubAFromBC                                          ; $75cc: $e7

jr_04a_75cd:
	sbc $e7                                          ; $75cd: $de $e7
	rst SubAFromDE                                          ; $75cf: $df
	rst SubAFromBC                                          ; $75d0: $e7
	rst $38                                          ; $75d1: $ff
	and $df                                          ; $75d2: $e6 $df
	rst SubAFromBC                                          ; $75d4: $e7
	rst AddAOntoHL                                          ; $75d5: $ef
	rst $38                                          ; $75d6: $ff
	call z, $cd19                                    ; $75d7: $cc $19 $cd
	jr jr_04a_75b9                                   ; $75da: $18 $dd

	jr @-$11                                         ; $75dc: $18 $ed

	jr jr_04a_75cd                                   ; $75de: $18 $ed

	sbc b                                            ; $75e0: $98
	db $dd                                           ; $75e1: $dd
	inc a                                            ; $75e2: $3c
	db $dd                                           ; $75e3: $dd
	rst $38                                          ; $75e4: $ff
	ld a, [hl]                                       ; $75e5: $7e
	adc $9e                                          ; $75e6: $ce $9e
	ld e, e                                          ; $75e8: $5b
	ld a, d                                          ; $75e9: $7a
	jp z, $f999                                      ; $75ea: $ca $99 $f9

	sbc [hl]                                         ; $75ed: $9e
	sbc a                                            ; $75ee: $9f
	sbc a                                            ; $75ef: $9f
	cp a                                             ; $75f0: $bf
	rst SubAFromDE                                          ; $75f1: $df
	db $dd                                           ; $75f2: $dd
	rst $38                                          ; $75f3: $ff
	ld a, [hl]                                       ; $75f4: $7e
	ld a, [hl-]                                      ; $75f5: $3a
	sbc d                                            ; $75f6: $9a
	ld l, d                                          ; $75f7: $6a
	cp a                                             ; $75f8: $bf
	ld d, l                                          ; $75f9: $55
	cp a                                             ; $75fa: $bf
	dec hl                                           ; $75fb: $2b
	call c, $7cff                                    ; $75fc: $dc $ff $7c
	sbc c                                            ; $75ff: $99
	ld a, a                                          ; $7600: $7f
	add a                                            ; $7601: $87
	sbc d                                            ; $7602: $9a
	ld l, c                                          ; $7603: $69
	rst $38                                          ; $7604: $ff
	jp hl                                            ; $7605: $e9


	rst $38                                          ; $7606: $ff
	ld l, l                                          ; $7607: $6d
	call c, $7cff                                    ; $7608: $dc $ff $7c
	adc l                                            ; $760b: $8d
	ld [hl], a                                       ; $760c: $77
	ld d, l                                          ; $760d: $55
	sbc d                                            ; $760e: $9a
	sub l                                            ; $760f: $95
	ld [$f5ca], a                                    ; $7610: $ea $ca $f5
	ret nz                                           ; $7613: $c0

	db $db                                           ; $7614: $db
	rst $38                                          ; $7615: $ff
	ld [hl], e                                       ; $7616: $73
	ld b, [hl]                                       ; $7617: $46
	ld a, l                                          ; $7618: $7d
	jp nz, $bf99                                     ; $7619: $c2 $99 $bf

	ld b, b                                          ; $761c: $40
	ld d, a                                          ; $761d: $57
	xor b                                            ; $761e: $a8
	jp z, Jump_04a_77f5                              ; $761f: $ca $f5 $77

	ldh a, [$9e]                                     ; $7622: $f0 $9e
	db $fd                                           ; $7624: $fd
	ld a, e                                          ; $7625: $7b
	ld e, $9b                                        ; $7626: $1e $9b
	rst SubAFromDE                                          ; $7628: $df
	adc e                                            ; $7629: $8b
	rst SubAFromDE                                          ; $762a: $df
	adc d                                            ; $762b: $8a
	ld l, e                                          ; $762c: $6b
	db $fc                                           ; $762d: $fc
	ld [hl], a                                       ; $762e: $77
	ld a, [$899a]                                    ; $762f: $fa $9a $89
	and d                                            ; $7632: $a2
	ld e, a                                          ; $7633: $5f
	ld d, d                                          ; $7634: $52
	xor a                                            ; $7635: $af
	ld [hl], a                                       ; $7636: $77
	db $fc                                           ; $7637: $fc
	ld a, [hl]                                       ; $7638: $7e
	rst SubAFromHL                                          ; $7639: $d7
	sbc [hl]                                         ; $763a: $9e
	ldh a, [c]                                       ; $763b: $f2
	ld [hl], b                                       ; $763c: $70
	inc h                                            ; $763d: $24
	sbc h                                            ; $763e: $9c
	pop af                                           ; $763f: $f1
	rrca                                             ; $7640: $0f
	rst $38                                          ; $7641: $ff
	ld a, e                                          ; $7642: $7b
	cp $95                                           ; $7643: $fe $95
	push af                                          ; $7645: $f5
	rrca                                             ; $7646: $0f
	ld e, $ef                                        ; $7647: $1e $ef
	ld de, $5def                                     ; $7649: $11 $ef $5d
	and b                                            ; $764c: $a0
	xor a                                            ; $764d: $af
	ld d, b                                          ; $764e: $50
	ld [hl], d                                       ; $764f: $72
	xor a                                            ; $7650: $af
	ld a, a                                          ; $7651: $7f
	adc d                                            ; $7652: $8a
	sbc l                                            ; $7653: $9d
	rst $38                                          ; $7654: $ff
	xor d                                            ; $7655: $aa
	halt                                             ; $7656: $76
	push hl                                          ; $7657: $e5
	ld a, l                                          ; $7658: $7d
	db $fd                                           ; $7659: $fd
	ld a, h                                          ; $765a: $7c
	ld [hl], $99                                     ; $765b: $36 $99
	rst $38                                          ; $765d: $ff
	ld bc, $b0ff                                     ; $765e: $01 $ff $b0
	rst $38                                          ; $7661: $ff
	ld e, a                                          ; $7662: $5f
	ld a, e                                          ; $7663: $7b
	ldh a, [$7f]                                     ; $7664: $f0 $7f
	xor l                                            ; $7666: $ad
	ld a, a                                          ; $7667: $7f
	ccf                                              ; $7668: $3f
	sbc [hl]                                         ; $7669: $9e
	sbc a                                            ; $766a: $9f
	ld [hl], d                                       ; $766b: $72
	sbc c                                            ; $766c: $99
	ld a, l                                          ; $766d: $7d
	ld a, [hl-]                                      ; $766e: $3a
	ld a, a                                          ; $766f: $7f
	rlca                                             ; $7670: $07
	sbc [hl]                                         ; $7671: $9e
	xor a                                            ; $7672: $af
	ld a, e                                          ; $7673: $7b
	call c, $e47f                                    ; $7674: $dc $7f $e4
	sub a                                            ; $7677: $97
	jp $0f3f                                         ; $7678: $c3 $3f $0f


	rst $38                                          ; $767b: $ff
	db $fd                                           ; $767c: $fd
	cp $aa                                           ; $767d: $fe $aa
	ld d, l                                          ; $767f: $55
	ld [hl], a                                       ; $7680: $77
	ld [$4a94], a                                    ; $7681: $ea $94 $4a
	db $fc                                           ; $7684: $fc
	xor d                                            ; $7685: $aa
	db $fc                                           ; $7686: $fc
	rst $38                                          ; $7687: $ff
	db $fc                                           ; $7688: $fc
	ldh [rIE], a                                     ; $7689: $e0 $ff
	ld b, b                                          ; $768b: $40
	cp a                                             ; $768c: $bf
	inc bc                                           ; $768d: $03
	ld a, d                                          ; $768e: $7a
	sbc c                                            ; $768f: $99
	db $db                                           ; $7690: $db
	rst $38                                          ; $7691: $ff
	ld a, [hl]                                       ; $7692: $7e
	ld hl, $408e                                     ; $7693: $21 $8e $40
	sbc a                                            ; $7696: $9f
	rst $38                                          ; $7697: $ff
	rst $38                                          ; $7698: $ff
	adc a                                            ; $7699: $8f
	rst $38                                          ; $769a: $ff
	rst AddAOntoHL                                          ; $769b: $ef
	sbc a                                            ; $769c: $9f
	rst AddAOntoHL                                          ; $769d: $ef
	sbc a                                            ; $769e: $9f
	pop hl                                           ; $769f: $e1
	sbc [hl]                                         ; $76a0: $9e
	ld h, h                                          ; $76a1: $64
	sbc e                                            ; $76a2: $9b
	ld l, h                                          ; $76a3: $6c
	sbc e                                            ; $76a4: $9b
	ld [bc], a                                       ; $76a5: $02
	ld a, e                                          ; $76a6: $7b
	and b                                            ; $76a7: $a0
	ld a, a                                          ; $76a8: $7f
	ld a, [hl-]                                      ; $76a9: $3a
	ld a, a                                          ; $76aa: $7f
	ld c, [hl]                                       ; $76ab: $4e
	sbc h                                            ; $76ac: $9c
	rst AddAOntoHL                                          ; $76ad: $ef
	rra                                              ; $76ae: $1f
	ld a, b                                          ; $76af: $78
	ld a, e                                          ; $76b0: $7b
	or $94                                           ; $76b1: $f6 $94
	ld [bc], a                                       ; $76b3: $02
	db $fd                                           ; $76b4: $fd
	or d                                             ; $76b5: $b2
	pop af                                           ; $76b6: $f1
	ld [de], a                                       ; $76b7: $12
	pop af                                           ; $76b8: $f1
	inc sp                                           ; $76b9: $33
	pop af                                           ; $76ba: $f1
	ld de, $16f3                                     ; $76bb: $11 $f3 $16
	ld a, e                                          ; $76be: $7b
	cp $88                                           ; $76bf: $fe $88
	ld d, a                                          ; $76c1: $57
	or d                                             ; $76c2: $b2
	add b                                            ; $76c3: $80
	ld [hl], a                                       ; $76c4: $77
	adc b                                            ; $76c5: $88
	pop af                                           ; $76c6: $f1
	ldh a, [$f9]                                     ; $76c7: $f0 $f9
	db $10                                           ; $76c9: $10
	ld sp, hl                                        ; $76ca: $f9
	ld [$4cf9], sp                                   ; $76cb: $08 $f9 $4c
	cp c                                             ; $76ce: $b9
	xor e                                            ; $76cf: $ab
	ld e, l                                          ; $76d0: $5d
	ld e, c                                          ; $76d1: $59
	xor a                                            ; $76d2: $af
	xor h                                            ; $76d3: $ac
	ld e, c                                          ; $76d4: $59
	ld a, a                                          ; $76d5: $7f
	cp a                                             ; $76d6: $bf
	ccf                                              ; $76d7: $3f
	sbc $ff                                          ; $76d8: $de $ff
	ld a, a                                          ; $76da: $7f
	db $fc                                           ; $76db: $fc
	sub a                                            ; $76dc: $97
	db $10                                           ; $76dd: $10
	rst AddAOntoHL                                          ; $76de: $ef
	and b                                            ; $76df: $a0
	ld e, a                                          ; $76e0: $5f
	ld d, b                                          ; $76e1: $50
	xor a                                            ; $76e2: $af
	xor b                                            ; $76e3: $a8
	rst SubAFromHL                                          ; $76e4: $d7
	db $dd                                           ; $76e5: $dd
	rst $38                                          ; $76e6: $ff
	ld [hl], l                                       ; $76e7: $75
	dec de                                           ; $76e8: $1b
	ld a, h                                          ; $76e9: $7c
	sbc h                                            ; $76ea: $9c
	ld a, a                                          ; $76eb: $7f
	call nz, $947c                                   ; $76ec: $c4 $7c $94
	ld a, a                                          ; $76ef: $7f
	add [hl]                                         ; $76f0: $86
	ld a, d                                          ; $76f1: $7a
	ld a, [hl]                                       ; $76f2: $7e
	sub c                                            ; $76f3: $91
	rst $38                                          ; $76f4: $ff
	add a                                            ; $76f5: $87
	ld a, b                                          ; $76f6: $78
	inc hl                                           ; $76f7: $23
	call z, $e01f                                    ; $76f8: $cc $1f $e0
	xor e                                            ; $76fb: $ab
	ld e, h                                          ; $76fc: $5c
	ld d, a                                          ; $76fd: $57
	xor a                                            ; $76fe: $af
	xor d                                            ; $76ff: $aa
	ld d, l                                          ; $7700: $55
	ret nz                                           ; $7701: $c0

	ld [hl], a                                       ; $7702: $77
	and b                                            ; $7703: $a0
	sub h                                            ; $7704: $94
	ld a, a                                          ; $7705: $7f
	ldh [$1f], a                                     ; $7706: $e0 $1f
	jp z, $b505                                      ; $7708: $ca $05 $b5

	ld a, [de]                                       ; $770b: $1a
	jp nz, $b5fd                                     ; $770c: $c2 $fd $b5

	ld c, d                                          ; $770f: $4a
	halt                                             ; $7710: $76
	db $eb                                           ; $7711: $eb
	ld a, a                                          ; $7712: $7f
	sub $64                                          ; $7713: $d6 $64
	and b                                            ; $7715: $a0
	ld a, c                                          ; $7716: $79
	or $60                                           ; $7717: $f6 $60
	ld l, [hl]                                       ; $7719: $6e
	sbc e                                            ; $771a: $9b
	ld e, a                                          ; $771b: $5f
	and b                                            ; $771c: $a0
	cp a                                             ; $771d: $bf
	ld b, b                                          ; $771e: $40
	ld d, a                                          ; $771f: $57
	ldh a, [$98]                                     ; $7720: $f0 $98
	push de                                          ; $7722: $d5
	ld a, [hl+]                                      ; $7723: $2a
	ei                                               ; $7724: $fb
	inc b                                            ; $7725: $04
	or $08                                           ; $7726: $f6 $08
	ld a, [hl+]                                      ; $7728: $2a
	ld e, b                                          ; $7729: $58
	ld [hl], h                                       ; $772a: $74
	sbc e                                            ; $772b: $9b
	ld [$f515], a                                    ; $772c: $ea $15 $f5
	ld a, [bc]                                       ; $772f: $0a
	ld a, d                                          ; $7730: $7a
	call $c976                                       ; $7731: $cd $76 $c9
	ld [hl], e                                       ; $7734: $73
	db $fc                                           ; $7735: $fc
	sbc h                                            ; $7736: $9c
	add d                                            ; $7737: $82
	rst SubAFromDE                                          ; $7738: $df
	inc c                                            ; $7739: $0c
	ld d, b                                          ; $773a: $50
	jr nc, jr_04a_77bb                               ; $773b: $30 $7e

	sub h                                            ; $773d: $94
	ld a, a                                          ; $773e: $7f
	adc $8c                                          ; $773f: $ce $8c
	ld e, b                                          ; $7741: $58
	and b                                            ; $7742: $a0
	and b                                            ; $7743: $a0
	ld e, a                                          ; $7744: $5f
	ld e, a                                          ; $7745: $5f
	xor a                                            ; $7746: $af
	xor [hl]                                         ; $7747: $ae
	ld e, a                                          ; $7748: $5f
	ld e, l                                          ; $7749: $5d
	xor a                                            ; $774a: $af
	cp $0f                                           ; $774b: $fe $0f
	db $fd                                           ; $774d: $fd
	rrca                                             ; $774e: $0f
	rst AddAOntoHL                                          ; $774f: $ef
	rra                                              ; $7750: $1f
	inc bc                                           ; $7751: $03
	nop                                              ; $7752: $00
	inc a                                            ; $7753: $3c
	ld a, d                                          ; $7754: $7a
	ld [hl], c                                       ; $7755: $71
	ld a, [hl]                                       ; $7756: $7e
	jp nc, $be76                                     ; $7757: $d2 $76 $be

	ld a, a                                          ; $775a: $7f
	db $fc                                           ; $775b: $fc
	ld l, l                                          ; $775c: $6d
	ld b, b                                          ; $775d: $40
	ld a, l                                          ; $775e: $7d
	ret c                                            ; $775f: $d8

	ld a, h                                          ; $7760: $7c
	ld a, c                                          ; $7761: $79
	ld l, a                                          ; $7762: $6f
	ldh a, [$7a]                                     ; $7763: $f0 $7a
	xor d                                            ; $7765: $aa
	ld a, a                                          ; $7766: $7f
	ldh a, [c]                                       ; $7767: $f2
	cp $9d                                           ; $7768: $fe $9d
	db $ed                                           ; $776a: $ed
	ld a, [$f067]                                    ; $776b: $fa $67 $f0
	ld a, l                                          ; $776e: $7d
	inc a                                            ; $776f: $3c
	sub h                                            ; $7770: $94
	cp $00                                           ; $7771: $fe $00
	ld c, $00                                        ; $7773: $0e $00
	cp $00                                           ; $7775: $fe $00
	ld d, a                                          ; $7777: $57
	db $fc                                           ; $7778: $fc
	ld [bc], a                                       ; $7779: $02
	db $fc                                           ; $777a: $fc
	ld d, [hl]                                       ; $777b: $56
	ld a, d                                          ; $777c: $7a
	cp [hl]                                          ; $777d: $be
	ld a, a                                          ; $777e: $7f
	ld [hl], b                                       ; $777f: $70

Jump_04a_7780:
	sbc h                                            ; $7780: $9c
	ld b, $f9                                        ; $7781: $06 $f9
	inc bc                                           ; $7783: $03
	ld a, e                                          ; $7784: $7b
	db $10                                           ; $7785: $10
	reti                                             ; $7786: $d9


	rst $38                                          ; $7787: $ff
	sbc b                                            ; $7788: $98
	ld l, e                                          ; $7789: $6b
	sbc a                                            ; $778a: $9f
	ld l, a                                          ; $778b: $6f
	sbc a                                            ; $778c: $9f
	db $e3                                           ; $778d: $e3
	sbc a                                            ; $778e: $9f

Call_04a_778f:
	xor e                                            ; $778f: $ab
	ld h, e                                          ; $7790: $63
	cp $73                                           ; $7791: $fe $73
	add h                                            ; $7793: $84
	sbc h                                            ; $7794: $9c
	xor e                                            ; $7795: $ab
	xor c                                            ; $7796: $a9
	ld d, a                                          ; $7797: $57
	ld [hl], a                                       ; $7798: $77
	ld hl, sp+$7f                                    ; $7799: $f8 $7f
	ld h, d                                          ; $779b: $62
	add l                                            ; $779c: $85
	cp $01                                           ; $779d: $fe $01
	ld c, l                                          ; $779f: $4d
	and [hl]                                         ; $77a0: $a6
	adc [hl]                                         ; $77a1: $8e
	ld a, a                                          ; $77a2: $7f
	ccf                                              ; $77a3: $3f
	cp $fc                                           ; $77a4: $fe $fc
	rst $38                                          ; $77a6: $ff
	ld b, l                                          ; $77a7: $45
	cp d                                             ; $77a8: $ba
	ld c, $f1                                        ; $77a9: $0e $f1

jr_04a_77ab:
	rla                                              ; $77ab: $17
	ldh [$2b], a                                     ; $77ac: $e0 $2b
	ret nz                                           ; $77ae: $c0

	dec b                                            ; $77af: $05
	ei                                               ; $77b0: $fb
	add e                                            ; $77b1: $83
	ld a, a                                          ; $77b2: $7f
	ld e, a                                          ; $77b3: $5f
	cp a                                             ; $77b4: $bf
	add b                                            ; $77b5: $80
	ld a, a                                          ; $77b6: $7f
	ld a, d                                          ; $77b7: $7a
	call nc, $dc73                                   ; $77b8: $d4 $73 $dc

jr_04a_77bb:
	sbc h                                            ; $77bb: $9c
	push de                                          ; $77bc: $d5
	xor d                                            ; $77bd: $aa
	xor d                                            ; $77be: $aa
	ld a, e                                          ; $77bf: $7b
	ld l, $7f                                        ; $77c0: $2e $7f
	ld a, [hl+]                                      ; $77c2: $2a
	ld a, l                                          ; $77c3: $7d
	db $ec                                           ; $77c4: $ec
	ld e, a                                          ; $77c5: $5f
	ld c, b                                          ; $77c6: $48
	ld a, a                                          ; $77c7: $7f
	db $fc                                           ; $77c8: $fc
	ld a, d                                          ; $77c9: $7a
	jr jr_04a_7846                                   ; $77ca: $18 $7a

	rst SubAFromBC                                          ; $77cc: $e7
	ld a, a                                          ; $77cd: $7f
	sub e                                            ; $77ce: $93
	sbc e                                            ; $77cf: $9b
	call nz, Call_04a_5703                           ; $77d0: $c4 $03 $57
	xor b                                            ; $77d3: $a8
	ld l, l                                          ; $77d4: $6d
	ret z                                            ; $77d5: $c8

	ld a, a                                          ; $77d6: $7f
	db $f4                                           ; $77d7: $f4
	sbc d                                            ; $77d8: $9a
	rst JumpTable                                          ; $77d9: $c7
	nop                                              ; $77da: $00
	daa                                              ; $77db: $27
	rra                                              ; $77dc: $1f
	ld a, $7b                                        ; $77dd: $3e $7b
	ld h, b                                          ; $77df: $60
	sbc [hl]                                         ; $77e0: $9e
	ld a, [$c879]                                    ; $77e1: $fa $79 $c8
	ld a, h                                          ; $77e4: $7c
	or $7c                                           ; $77e5: $f6 $7c
	ldh [c], a                                       ; $77e7: $e2
	sbc b                                            ; $77e8: $98
	jr nc, jr_04a_77ab                               ; $77e9: $30 $c0

	cp $ff                                           ; $77eb: $fe $ff
	xor e                                            ; $77ed: $ab
	rst $38                                          ; $77ee: $ff
	push af                                          ; $77ef: $f5
	ld a, e                                          ; $77f0: $7b
	db $f4                                           ; $77f1: $f4
	sbc [hl]                                         ; $77f2: $9e
	ld e, l                                          ; $77f3: $5d
	ld a, e                                          ; $77f4: $7b

Jump_04a_77f5:
	db $fc                                           ; $77f5: $fc
	ld a, [hl]                                       ; $77f6: $7e
	dec e                                            ; $77f7: $1d
	ld a, a                                          ; $77f8: $7f
	db $fc                                           ; $77f9: $fc
	sbc h                                            ; $77fa: $9c
	add c                                            ; $77fb: $81
	nop                                              ; $77fc: $00
	ldh a, [c]                                       ; $77fd: $f2
	ld a, c                                          ; $77fe: $79
	adc e                                            ; $77ff: $8b
	sbc [hl]                                         ; $7800: $9e
	cp e                                             ; $7801: $bb
	ld [hl], e                                       ; $7802: $73
	db $f4                                           ; $7803: $f4
	ld l, a                                          ; $7804: $6f
	db $fc                                           ; $7805: $fc
	sbc [hl]                                         ; $7806: $9e
	ld a, [hl+]                                      ; $7807: $2a
	ld a, e                                          ; $7808: $7b
	call nc, $447f                                   ; $7809: $d4 $7f $44
	ld h, a                                          ; $780c: $67
	ldh [$7f], a                                     ; $780d: $e0 $7f
	db $fc                                           ; $780f: $fc
	sbc b                                            ; $7810: $98
	xor e                                            ; $7811: $ab
	nop                                              ; $7812: $00
	ld a, d                                          ; $7813: $7a
	dec b                                            ; $7814: $05
	cp l                                             ; $7815: $bd
	ld [bc], a                                       ; $7816: $02
	ld e, d                                          ; $7817: $5a
	ld [hl], e                                       ; $7818: $73
	db $fc                                           ; $7819: $fc
	add a                                            ; $781a: $87
	xor l                                            ; $781b: $ad
	ld [bc], a                                       ; $781c: $02
	ld e, h                                          ; $781d: $5c
	inc hl                                           ; $781e: $23
	xor e                                            ; $781f: $ab
	nop                                              ; $7820: $00
	ld a, h                                          ; $7821: $7c
	rst $38                                          ; $7822: $ff
	ld c, b                                          ; $7823: $48
	add a                                            ; $7824: $87
	ld c, e                                          ; $7825: $4b
	add a                                            ; $7826: $87
	ld c, [hl]                                       ; $7827: $4e
	add a                                            ; $7828: $87
	ld c, b                                          ; $7829: $48
	add a                                            ; $782a: $87
	ret z                                            ; $782b: $c8

	add a                                            ; $782c: $87
	jp z, $cd85                                      ; $782d: $ca $85 $cd

	ld [bc], a                                       ; $7830: $02
	cp $01                                           ; $7831: $fe $01
	ld l, a                                          ; $7833: $6f
	sub b                                            ; $7834: $90
	ld l, a                                          ; $7835: $6f
	cp $7c                                           ; $7836: $fe $7c
	cp h                                             ; $7838: $bc
	sub [hl]                                         ; $7839: $96
	ld a, a                                          ; $783a: $7f
	adc a                                            ; $783b: $8f
	rst AddAOntoHL                                          ; $783c: $ef
	rra                                              ; $783d: $1f
	rst FarCall                                          ; $783e: $f7
	rrca                                             ; $783f: $0f
	ldh [$1f], a                                     ; $7840: $e0 $1f
	ldh a, [$73]                                     ; $7842: $f0 $73
	db $fc                                           ; $7844: $fc
	sbc l                                            ; $7845: $9d

jr_04a_7846:
	add sp, $17                                      ; $7846: $e8 $17
	db $db                                           ; $7848: $db
	rst $38                                          ; $7849: $ff
	ld a, l                                          ; $784a: $7d
	xor d                                            ; $784b: $aa
	ld h, a                                          ; $784c: $67
	db $dd                                           ; $784d: $dd
	ld [hl], l                                       ; $784e: $75
	sbc d                                            ; $784f: $9a
	db $dd                                           ; $7850: $dd
	rst $38                                          ; $7851: $ff
	ld l, a                                          ; $7852: $6f
	ret                                              ; $7853: $c9


	sbc l                                            ; $7854: $9d
	ld a, [bc]                                       ; $7855: $0a
	push af                                          ; $7856: $f5
	ld l, [hl]                                       ; $7857: $6e
	ret z                                            ; $7858: $c8

	ld [hl], a                                       ; $7859: $77
	db $ec                                           ; $785a: $ec
	sbc l                                            ; $785b: $9d
	add c                                            ; $785c: $81
	ld a, a                                          ; $785d: $7f
	ld [hl], a                                       ; $785e: $77
	inc [hl]                                         ; $785f: $34
	ld a, [hl]                                       ; $7860: $7e
	call z, $ae9e                                    ; $7861: $cc $9e $ae
	ld a, d                                          ; $7864: $7a
	ret z                                            ; $7865: $c8

	ld a, a                                          ; $7866: $7f
	db $fc                                           ; $7867: $fc
	sbc c                                            ; $7868: $99
	or $fc                                           ; $7869: $f6 $fc
	rst $38                                          ; $786b: $ff
	cp $57                                           ; $786c: $fe $57
	xor e                                            ; $786e: $ab
	ld a, d                                          ; $786f: $7a
	ld l, $da                                        ; $7870: $2e $da
	rst $38                                          ; $7872: $ff
	ld a, l                                          ; $7873: $7d
	ld [$ee88], a                                    ; $7874: $ea $88 $ee
	pop af                                           ; $7877: $f1
	ld bc, $00fe                                     ; $7878: $01 $fe $00
	rst $38                                          ; $787b: $ff
	xor e                                            ; $787c: $ab
	sbc a                                            ; $787d: $9f
	adc b                                            ; $787e: $88
	sbc a                                            ; $787f: $9f
	adc h                                            ; $7880: $8c
	sbc e                                            ; $7881: $9b
	ld [$1c9f], sp                                   ; $7882: $08 $9f $1c
	adc e                                            ; $7885: $8b
	dec hl                                           ; $7886: $2b
	call c, $fe79                                    ; $7887: $dc $79 $fe
	ld a, d                                          ; $788a: $7a
	add l                                            ; $788b: $85
	ld a, a                                          ; $788c: $7f
	ld a, e                                          ; $788d: $7b
	cp c                                             ; $788e: $b9
	ld a, h                                          ; $788f: $7c
	ld l, $9c                                        ; $7890: $2e $9c
	ld e, [hl]                                       ; $7892: $5e
	nop                                              ; $7893: $00
	xor l                                            ; $7894: $ad
	ld a, e                                          ; $7895: $7b
	ld c, b                                          ; $7896: $48
	ld a, a                                          ; $7897: $7f
	db $fc                                           ; $7898: $fc
	sbc b                                            ; $7899: $98
	ld e, l                                          ; $789a: $5d
	rlca                                             ; $789b: $07
	push de                                          ; $789c: $d5
	nop                                              ; $789d: $00
	db $eb                                           ; $789e: $eb
	nop                                              ; $789f: $00
	push de                                          ; $78a0: $d5
	ld a, e                                          ; $78a1: $7b
	ld c, b                                          ; $78a2: $48
	ld a, a                                          ; $78a3: $7f
	ld b, h                                          ; $78a4: $44
	adc [hl]                                         ; $78a5: $8e
	xor [hl]                                         ; $78a6: $ae
	ld bc, $3fca                                     ; $78a7: $01 $ca $3f
	push de                                          ; $78aa: $d5
	rst $38                                          ; $78ab: $ff
	push af                                          ; $78ac: $f5
	ld a, [bc]                                       ; $78ad: $0a
	ld a, [$ff05]                                    ; $78ae: $fa $05 $ff
	nop                                              ; $78b1: $00
	adc $01                                          ; $78b2: $ce $01
	ld l, d                                          ; $78b4: $6a
	rra                                              ; $78b5: $1f
	push de                                          ; $78b6: $d5
	ld a, e                                          ; $78b7: $7b
	sub [hl]                                         ; $78b8: $96
	sbc b                                            ; $78b9: $98
	ld d, h                                          ; $78ba: $54
	rst $38                                          ; $78bb: $ff
	ld d, h                                          ; $78bc: $54
	xor b                                            ; $78bd: $a8
	cp a                                             ; $78be: $bf
	ld b, c                                          ; $78bf: $41
	ld [$e87b], a                                    ; $78c0: $ea $7b $e8
	add b                                            ; $78c3: $80
	xor l                                            ; $78c4: $ad
	ld a, [$fd52]                                    ; $78c5: $fa $52 $fd
	xor a                                            ; $78c8: $af
	ret nc                                           ; $78c9: $d0

	ld d, l                                          ; $78ca: $55
	xor e                                            ; $78cb: $ab
	rst SubAFromDE                                          ; $78cc: $df
	rlca                                             ; $78cd: $07
	ld [hl], l                                       ; $78ce: $75
	jp z, $c58b                                      ; $78cf: $ca $8b $c5

	ld d, l                                          ; $78d2: $55
	adc d                                            ; $78d3: $8a
	cp b                                             ; $78d4: $b8
	ld b, b                                          ; $78d5: $40
	ld a, [$f505]                                    ; $78d6: $fa $05 $f5
	ld a, [bc]                                       ; $78d9: $0a
	rst GetHLinHL                                          ; $78da: $cf
	rst $38                                          ; $78db: $ff
	rst JumpTable                                          ; $78dc: $c7
	rst $38                                          ; $78dd: $ff
	sbc l                                            ; $78de: $9d
	cp $fc                                           ; $78df: $fe $fc
	ldh [$80], a                                     ; $78e1: $e0 $80
	sub a                                            ; $78e3: $97
	nop                                              ; $78e4: $00
	ld d, [hl]                                       ; $78e5: $56
	xor b                                            ; $78e6: $a8
	xor d                                            ; $78e7: $aa
	ld d, h                                          ; $78e8: $54
	ld d, a                                          ; $78e9: $57
	xor b                                            ; $78ea: $a8
	cp $70                                           ; $78eb: $fe $70
	jp c, $309c                                      ; $78ed: $da $9c $30

	rrca                                             ; $78f0: $0f
	pop af                                           ; $78f1: $f1
	ld a, e                                          ; $78f2: $7b
	and d                                            ; $78f3: $a2
	sbc d                                            ; $78f4: $9a
	dec h                                            ; $78f5: $25
	nop                                              ; $78f6: $00
	db $db                                           ; $78f7: $db
	daa                                              ; $78f8: $27
	rst $38                                          ; $78f9: $ff
	ld a, b                                          ; $78fa: $78
	or $7f                                           ; $78fb: $f6 $7f
	cp $7f                                           ; $78fd: $fe $7f
	xor $90                                          ; $78ff: $ee $90
	ld l, e                                          ; $7901: $6b
	rla                                              ; $7902: $17
	push de                                          ; $7903: $d5

Call_04a_7904:
	ld [$146a], sp                                   ; $7904: $08 $6a $14
	rst $38                                          ; $7907: $ff
	rra                                              ; $7908: $1f
	jr @+$01                                         ; $7909: $18 $ff

	pop hl                                           ; $790b: $e1
	add b                                            ; $790c: $80
	rst $38                                          ; $790d: $ff
	cp $af                                           ; $790e: $fe $af
	ld a, e                                          ; $7910: $7b
	jp c, $3e9b                                      ; $7911: $da $9b $3e

	ld a, a                                          ; $7914: $7f
	add l                                            ; $7915: $85
	inc bc                                           ; $7916: $03
	ld [hl], h                                       ; $7917: $74
	or [hl]                                          ; $7918: $b6
	sub h                                            ; $7919: $94
	inc hl                                           ; $791a: $23
	inc e                                            ; $791b: $1c
	ld hl, sp+$00                                    ; $791c: $f8 $00
	rst SubAFromBC                                          ; $791e: $e7
	ld hl, sp+$7f                                    ; $791f: $f8 $7f
	rst $38                                          ; $7921: $ff
	xor d                                            ; $7922: $aa
	db $fd                                           ; $7923: $fd
	ld d, h                                          ; $7924: $54
	ld a, b                                          ; $7925: $78
	ld l, $9d                                        ; $7926: $2e $9d
	sbc e                                            ; $7928: $9b
	ld a, l                                          ; $7929: $7d
	halt                                             ; $792a: $76
	cp b                                             ; $792b: $b8
	ld a, [hl]                                       ; $792c: $7e
	add h                                            ; $792d: $84
	sbc [hl]                                         ; $792e: $9e
	or c                                             ; $792f: $b1
	ld a, d                                          ; $7930: $7a
	add h                                            ; $7931: $84
	ld [hl], e                                       ; $7932: $73
	ld d, $99                                        ; $7933: $16 $99
	cp a                                             ; $7935: $bf
	add l                                            ; $7936: $85
	nop                                              ; $7937: $00
	and d                                            ; $7938: $a2
	nop                                              ; $7939: $00
	or l                                             ; $793a: $b5
	ld a, d                                          ; $793b: $7a
	ld l, h                                          ; $793c: $6c
	sbc l                                            ; $793d: $9d
	daa                                              ; $793e: $27
	ret nz                                           ; $793f: $c0

	ld [hl], h                                       ; $7940: $74
	adc h                                            ; $7941: $8c
	sbc d                                            ; $7942: $9a
	ld b, l                                          ; $7943: $45
	rst $38                                          ; $7944: $ff
	xor a                                            ; $7945: $af
	nop                                              ; $7946: $00
	ld d, a                                          ; $7947: $57
	ld [hl], e                                       ; $7948: $73
	ld d, d                                          ; $7949: $52
	halt                                             ; $794a: $76
	sub d                                            ; $794b: $92
	sbc c                                            ; $794c: $99
	cp d                                             ; $794d: $ba
	ret nz                                           ; $794e: $c0

	ld a, [hl]                                       ; $794f: $7e
	rst $38                                          ; $7950: $ff
	db $f4                                           ; $7951: $f4
	dec bc                                           ; $7952: $0b
	ld [hl], l                                       ; $7953: $75
	ld e, d                                          ; $7954: $5a
	sbc d                                            ; $7955: $9a
	ld l, d                                          ; $7956: $6a
	dec d                                            ; $7957: $15
	or l                                             ; $7958: $b5
	ld a, [bc]                                       ; $7959: $0a
	ld c, d                                          ; $795a: $4a
	ld a, e                                          ; $795b: $7b
	db $fc                                           ; $795c: $fc
	sbc h                                            ; $795d: $9c
	jp z, $0115                                      ; $795e: $ca $15 $01

Jump_04a_7961:
	ld a, b                                          ; $7961: $78
	ld [hl], d                                       ; $7962: $72
	ld d, l                                          ; $7963: $55
	ld e, h                                          ; $7964: $5c
	ld b, [hl]                                       ; $7965: $46
	inc c                                            ; $7966: $0c
	ld h, a                                          ; $7967: $67
	ldh a, [$7f]                                     ; $7968: $f0 $7f
	ld d, h                                          ; $796a: $54
	sbc h                                            ; $796b: $9c
	rst AddAOntoHL                                          ; $796c: $ef
	db $10                                           ; $796d: $10
	cp $7a                                           ; $796e: $fe $7a
	ld b, d                                          ; $7970: $42
	sub d                                            ; $7971: $92
	ld d, h                                          ; $7972: $54
	xor e                                            ; $7973: $ab
	cp $01                                           ; $7974: $fe $01
	cp $01                                           ; $7976: $fe $01
	db $fc                                           ; $7978: $fc
	ld bc, $01fa                                     ; $7979: $01 $fa $01
	ld d, h                                          ; $797c: $54
	ld bc, $7baa                                     ; $797d: $01 $aa $7b
	db $fc                                           ; $7980: $fc
	ld [hl], h                                       ; $7981: $74
	jp nc, $a87c                                     ; $7982: $d2 $7c $a8

	ld a, d                                          ; $7985: $7a
	sbc b                                            ; $7986: $98
	ld a, c                                          ; $7987: $79
	call z, $d877                                    ; $7988: $cc $77 $d8
	sbc e                                            ; $798b: $9b
	xor a                                            ; $798c: $af
	rst SubAFromDE                                          ; $798d: $df
	cpl                                              ; $798e: $2f
	rst SubAFromDE                                          ; $798f: $df
	ld [hl], a                                       ; $7990: $77
	db $fc                                           ; $7991: $fc
	sub a                                            ; $7992: $97
	xor [hl]                                         ; $7993: $ae
	rst SubAFromDE                                          ; $7994: $df
	dec h                                            ; $7995: $25
	rst SubAFromDE                                          ; $7996: $df
	xor d                                            ; $7997: $aa
	rst SubAFromDE                                          ; $7998: $df
	inc h                                            ; $7999: $24
	rst SubAFromDE                                          ; $799a: $df
	inc [hl]                                         ; $799b: $34
	nop                                              ; $799c: $00
	rst SubAFromHL                                          ; $799d: $d7
	ld b, h                                          ; $799e: $44
	rst SubAFromHL                                          ; $799f: $d7
	inc sp                                           ; $79a0: $33
	sbc d                                            ; $79a1: $9a
	ld b, h                                          ; $79a2: $44
	ld h, [hl]                                       ; $79a3: $66
	ld d, l                                          ; $79a4: $55
	ld d, h                                          ; $79a5: $54
	ld d, e                                          ; $79a6: $53
	call c, $9e44                                    ; $79a7: $dc $44 $9e
	ld b, [hl]                                       ; $79aa: $46
	ld [hl], e                                       ; $79ab: $73
	or $9a                                           ; $79ac: $f6 $9a
	ld b, a                                          ; $79ae: $47
	ld h, h                                          ; $79af: $64
	ld b, h                                          ; $79b0: $44
	ld b, h                                          ; $79b1: $44
	ld h, [hl]                                       ; $79b2: $66
	ld l, a                                          ; $79b3: $6f
	or $9e                                           ; $79b4: $f6 $9e
	ld h, [hl]                                       ; $79b6: $66
	ld h, e                                          ; $79b7: $63
	or $9d                                           ; $79b8: $f6 $9d
	ld [hl], a                                       ; $79ba: $77
	ld h, h                                          ; $79bb: $64
	ld l, a                                          ; $79bc: $6f
	or $df                                           ; $79bd: $f6 $df
	ld b, [hl]                                       ; $79bf: $46
	call c, $9b66                                    ; $79c0: $dc $66 $9b
	ld d, l                                          ; $79c3: $55
	ld d, a                                          ; $79c4: $57
	ld [hl], e                                       ; $79c5: $73
	ld [hl], $d8                                     ; $79c6: $36 $d8
	ld [hl], a                                       ; $79c8: $77
	sbc [hl]                                         ; $79c9: $9e
	ld [hl], h                                       ; $79ca: $74
	dec sp                                           ; $79cb: $3b
	or $73                                           ; $79cc: $f6 $73
	ldh a, [c]                                       ; $79ce: $f2
	ld c, e                                          ; $79cf: $4b
	adc e                                            ; $79d0: $8b
	sbc [hl]                                         ; $79d1: $9e
	ccf                                              ; $79d2: $3f
	db $fc                                           ; $79d3: $fc
	sbc h                                            ; $79d4: $9c
	inc bc                                           ; $79d5: $03
	nop                                              ; $79d6: $00
	ret nz                                           ; $79d7: $c0

	db $db                                           ; $79d8: $db
	rst $38                                          ; $79d9: $ff
	sbc h                                            ; $79da: $9c
	nop                                              ; $79db: $00
	add b                                            ; $79dc: $80
	ld a, a                                          ; $79dd: $7f
	db $fd                                           ; $79de: $fd
	sbc e                                            ; $79df: $9b
	ldh a, [$03]                                     ; $79e0: $f0 $03
	nop                                              ; $79e2: $00
	add b                                            ; $79e3: $80
	ld l, e                                          ; $79e4: $6b
	rst AddAOntoHL                                          ; $79e5: $ef
	sbc h                                            ; $79e6: $9c
	nop                                              ; $79e7: $00
	cp $07                                           ; $79e8: $fe $07
	cp $9b                                           ; $79ea: $fe $9b
	ret nz                                           ; $79ec: $c0

	nop                                              ; $79ed: $00
	nop                                              ; $79ee: $00
	ldh [rOCPD], a                                   ; $79ef: $e0 $6b
	ldh a, [$9d]                                     ; $79f1: $f0 $9d
	nop                                              ; $79f3: $00
	adc $6f                                          ; $79f4: $ce $6f
	call z, $db7f                                    ; $79f6: $cc $7f $db
	db $dd                                           ; $79f9: $dd
	rst $38                                          ; $79fa: $ff
	sbc [hl]                                         ; $79fb: $9e
	dec b                                            ; $79fc: $05
	cp $9b                                           ; $79fd: $fe $9b
	jp $017f                                         ; $79ff: $c3 $7f $01


	nop                                              ; $7a02: $00
	ld [hl], a                                       ; $7a03: $77
	db $db                                           ; $7a04: $db
	sbc [hl]                                         ; $7a05: $9e
	db $fc                                           ; $7a06: $fc
	ld [hl], a                                       ; $7a07: $77
	ldh [$7b], a                                     ; $7a08: $e0 $7b
	rst AddAOntoHL                                          ; $7a0a: $ef
	sbc c                                            ; $7a0b: $99
	ldh a, [$80]                                     ; $7a0c: $f0 $80
	rst $38                                          ; $7a0e: $ff
	nop                                              ; $7a0f: $00
	rst $38                                          ; $7a10: $ff
	rrca                                             ; $7a11: $0f
	cp $73                                           ; $7a12: $fe $73
	ret nc                                           ; $7a14: $d0

	sbc e                                            ; $7a15: $9b
	ld a, [hl+]                                      ; $7a16: $2a
	nop                                              ; $7a17: $00
	nop                                              ; $7a18: $00
	ld hl, sp+$77                                    ; $7a19: $f8 $77
	and d                                            ; $7a1b: $a2
	ld [hl], a                                       ; $7a1c: $77
	jp z, $f077                                      ; $7a1d: $ca $77 $f0

	sbc d                                            ; $7a20: $9a
	and b                                            ; $7a21: $a0
	dec d                                            ; $7a22: $15
	nop                                              ; $7a23: $00
	nop                                              ; $7a24: $00
	ld sp, hl                                        ; $7a25: $f9
	ld [hl], a                                       ; $7a26: $77
	or e                                             ; $7a27: $b3
	sbc [hl]                                         ; $7a28: $9e
	rra                                              ; $7a29: $1f
	ld [hl], a                                       ; $7a2a: $77
	rst AddAOntoHL                                          ; $7a2b: $ef
	cp $9d                                           ; $7a2c: $fe $9d
	ld d, l                                          ; $7a2e: $55
	ld a, [bc]                                       ; $7a2f: $0a
	ld l, a                                          ; $7a30: $6f
	push de                                          ; $7a31: $d5
	sbc d                                            ; $7a32: $9a
	rst $38                                          ; $7a33: $ff
	ld e, a                                          ; $7a34: $5f
	ld a, [hl+]                                      ; $7a35: $2a
	ld d, l                                          ; $7a36: $55
	ld [$9efd], a                                    ; $7a37: $ea $fd $9e
	xor d                                            ; $7a3a: $aa
	ld a, e                                          ; $7a3b: $7b
	sbc $dc                                          ; $7a3c: $de $dc
	rst $38                                          ; $7a3e: $ff
	sbc h                                            ; $7a3f: $9c
	cp a                                             ; $7a40: $bf
	ld d, l                                          ; $7a41: $55
	xor d                                            ; $7a42: $aa
	db $fc                                           ; $7a43: $fc
	sbc l                                            ; $7a44: $9d
	ld d, h                                          ; $7a45: $54

jr_04a_7a46:
	ld a, [hl+]                                      ; $7a46: $2a
	ld l, a                                          ; $7a47: $6f
	ldh a, [$df]                                     ; $7a48: $f0 $df
	rst $38                                          ; $7a4a: $ff
	ld l, a                                          ; $7a4b: $6f
	ldh a, [$7f]                                     ; $7a4c: $f0 $7f
	sbc $9e                                          ; $7a4e: $de $9e
	ld d, l                                          ; $7a50: $55
	reti                                             ; $7a51: $d9


	rst $38                                          ; $7a52: $ff
	ld a, [$f047]                                    ; $7a53: $fa $47 $f0
	sbc [hl]                                         ; $7a56: $9e
	ld b, b                                          ; $7a57: $40
	jp c, $9eff                                      ; $7a58: $da $ff $9e

	ldh a, [$fb]                                     ; $7a5b: $f0 $fb
	sbc l                                            ; $7a5d: $9d
	jr jr_04a_7a46                                   ; $7a5e: $18 $e6

	db $db                                           ; $7a60: $db
	rst $38                                          ; $7a61: $ff
	sbc l                                            ; $7a62: $9d
	ldh [rDIV], a                                    ; $7a63: $e0 $04
	ei                                               ; $7a65: $fb
	sbc l                                            ; $7a66: $9d
	sbc a                                            ; $7a67: $9f
	ld h, a                                          ; $7a68: $67
	ld l, e                                          ; $7a69: $6b
	jp nc, $187f                                     ; $7a6a: $d2 $7f $18

	db $fc                                           ; $7a6d: $fc
	sbc l                                            ; $7a6e: $9d
	ccf                                              ; $7a6f: $3f
	adc b                                            ; $7a70: $88
	ld h, a                                          ; $7a71: $67
	ld bc, $f16e                                     ; $7a72: $01 $6e $f1
	sbc [hl]                                         ; $7a75: $9e
	ldh [$6f], a                                     ; $7a76: $e0 $6f
	sub b                                            ; $7a78: $90
	sbc [hl]                                         ; $7a79: $9e
	db $fc                                           ; $7a7a: $fc
	ld a, [$fe9e]                                    ; $7a7b: $fa $9e $fe
	ld l, e                                          ; $7a7e: $6b
	ld [hl], b                                       ; $7a7f: $70
	ld a, [$7c9e]                                    ; $7a80: $fa $9e $7c
	ld l, e                                          ; $7a83: $6b
	ld d, b                                          ; $7a84: $50
	ld l, a                                          ; $7a85: $6f
	db $d3                                           ; $7a86: $d3
	db $fd                                           ; $7a87: $fd
	sbc [hl]                                         ; $7a88: $9e
	call z, $d673                                    ; $7a89: $cc $73 $d6
	sbc e                                            ; $7a8c: $9b
	add d                                            ; $7a8d: $82
	ld d, l                                          ; $7a8e: $55
	ld [bc], a                                       ; $7a8f: $02
	ld a, c                                          ; $7a90: $79
	ei                                               ; $7a91: $fb
	rst SubAFromDE                                          ; $7a92: $df
	inc e                                            ; $7a93: $1c
	ld a, [hl]                                       ; $7a94: $7e
	rst SubAFromBC                                          ; $7a95: $e7
	sbc c                                            ; $7a96: $99
	ld a, [bc]                                       ; $7a97: $0a
	ld d, l                                          ; $7a98: $55
	xor d                                            ; $7a99: $aa
	ld d, l                                          ; $7a9a: $55
	cp d                                             ; $7a9b: $ba
	ld e, e                                          ; $7a9c: $5b
	ld [hl], a                                       ; $7a9d: $77
	dec de                                           ; $7a9e: $1b
	db $fd                                           ; $7a9f: $fd
	ld a, a                                          ; $7aa0: $7f
	inc hl                                           ; $7aa1: $23
	sbc c                                            ; $7aa2: $99
	xor e                                            ; $7aa3: $ab
	ld d, a                                          ; $7aa4: $57
	xor a                                            ; $7aa5: $af
	ld e, a                                          ; $7aa6: $5f
	cp a                                             ; $7aa7: $bf
	rst $38                                          ; $7aa8: $ff
	ld [hl], d                                       ; $7aa9: $72
	add sp, $6f                                      ; $7aaa: $e8 $6f
	ret nz                                           ; $7aac: $c0

	sbc d                                            ; $7aad: $9a
	sbc a                                            ; $7aae: $9f
	sub l                                            ; $7aaf: $95
	sbc d                                            ; $7ab0: $9a
	sub l                                            ; $7ab1: $95
	sbc d                                            ; $7ab2: $9a
	ld a, d                                          ; $7ab3: $7a
	db $e3                                           ; $7ab4: $e3
	ld a, a                                          ; $7ab5: $7f
	push hl                                          ; $7ab6: $e5
	ld a, a                                          ; $7ab7: $7f
	rst SubAFromHL                                          ; $7ab8: $d7
	sbc h                                            ; $7ab9: $9c
	xor d                                            ; $7aba: $aa
	rst $38                                          ; $7abb: $ff
	rst $38                                          ; $7abc: $ff
	halt                                             ; $7abd: $76
	cp [hl]                                          ; $7abe: $be
	ld h, [hl]                                       ; $7abf: $66
	xor b                                            ; $7ac0: $a8
	sbc [hl]                                         ; $7ac1: $9e
	ld d, a                                          ; $7ac2: $57
	ld a, e                                          ; $7ac3: $7b
	ldh a, [$6f]                                     ; $7ac4: $f0 $6f
	sub $77                                          ; $7ac6: $d6 $77
	ld e, a                                          ; $7ac8: $5f
	ld a, e                                          ; $7ac9: $7b
	rst AddAOntoHL                                          ; $7aca: $ef
	sbc [hl]                                         ; $7acb: $9e
	xor a                                            ; $7acc: $af
	db $dd                                           ; $7acd: $dd
	rst $38                                          ; $7ace: $ff
	ld [hl], d                                       ; $7acf: $72
	xor l                                            ; $7ad0: $ad
	ld [hl], a                                       ; $7ad1: $77
	ei                                               ; $7ad2: $fb
	ld a, a                                          ; $7ad3: $7f
	rst AddAOntoHL                                          ; $7ad4: $ef
	sbc [hl]                                         ; $7ad5: $9e
	ei                                               ; $7ad6: $fb
	call c, Call_04a_7bff                            ; $7ad7: $dc $ff $7b
	db $f4                                           ; $7ada: $f4
	ld a, a                                          ; $7adb: $7f
	push af                                          ; $7adc: $f5
	halt                                             ; $7add: $76
	xor b                                            ; $7ade: $a8
	ld l, d                                          ; $7adf: $6a
	ld b, d                                          ; $7ae0: $42
	ld [hl], a                                       ; $7ae1: $77
	db $f4                                           ; $7ae2: $f4
	ld a, d                                          ; $7ae3: $7a
	ld a, e                                          ; $7ae4: $7b
	ld [hl], a                                       ; $7ae5: $77
	call z, $fd9e                                    ; $7ae6: $cc $9e $fd
	db $db                                           ; $7ae9: $db
	rst $38                                          ; $7aea: $ff
	ld a, d                                          ; $7aeb: $7a
	ld [hl-], a                                      ; $7aec: $32
	ld a, e                                          ; $7aed: $7b
	rst AddAOntoHL                                          ; $7aee: $ef
	sbc d                                            ; $7aef: $9a
	rlca                                             ; $7af0: $07
	add hl, sp                                       ; $7af1: $39
	rlca                                             ; $7af2: $07
	ld d, l                                          ; $7af3: $55
	cp $dd                                           ; $7af4: $fe $dd
	rst $38                                          ; $7af6: $ff
	sbc l                                            ; $7af7: $9d
	rst JumpTable                                          ; $7af8: $c7
	ld sp, hl                                        ; $7af9: $f9

Jump_04a_7afa:
	cp $7f                                           ; $7afa: $fe $7f
	adc a                                            ; $7afc: $8f
	ld a, e                                          ; $7afd: $7b
	scf                                              ; $7afe: $37
	sbc h                                            ; $7aff: $9c
	ld e, d                                          ; $7b00: $5a
	xor l                                            ; $7b01: $ad
	ld a, [$2d63]                                    ; $7b02: $fa $63 $2d
	sbc b                                            ; $7b05: $98
	push af                                          ; $7b06: $f5
	ld a, [$0300]                                    ; $7b07: $fa $00 $03
	and b                                            ; $7b0a: $a0
	ld d, b                                          ; $7b0b: $50
	xor b                                            ; $7b0c: $a8
	ld [hl], e                                       ; $7b0d: $73
	ld c, $80                                        ; $7b0e: $0e $80
	rst $38                                          ; $7b10: $ff
	cp $f1                                           ; $7b11: $fe $f1
	ld b, $55                                        ; $7b13: $06 $55
	or e                                             ; $7b15: $b3
	ld e, e                                          ; $7b16: $5b
	ld e, e                                          ; $7b17: $5b
	nop                                              ; $7b18: $00
	nop                                              ; $7b19: $00
	dec c                                            ; $7b1a: $0d
	ei                                               ; $7b1b: $fb
	ld a, [$87e0]                                    ; $7b1c: $fa $e0 $87
	ccf                                              ; $7b1f: $3f
	dec h                                            ; $7b20: $25
	add c                                            ; $7b21: $81
	inc bc                                           ; $7b22: $03
	ld bc, $7f83                                     ; $7b23: $01 $83 $7f
	add b                                            ; $7b26: $80
	dec e                                            ; $7b27: $1d
	inc a                                            ; $7b28: $3c
	sbc c                                            ; $7b29: $99
	pop bc                                           ; $7b2a: $c1
	or $00                                           ; $7b2b: $f6 $00
	rst $38                                          ; $7b2d: $ff
	jp hl                                            ; $7b2e: $e9


	add b                                            ; $7b2f: $80
	ldh [$fb], a                                     ; $7b30: $e0 $fb
	ld a, l                                          ; $7b32: $7d
	adc d                                            ; $7b33: $8a
	sub l                                            ; $7b34: $95
	cp $ff                                           ; $7b35: $fe $ff

Jump_04a_7b37:
	db $10                                           ; $7b37: $10
	ld d, $f0                                        ; $7b38: $16 $f0
	sbc b                                            ; $7b3a: $98
	sbc [hl]                                         ; $7b3b: $9e
	ld c, $00                                        ; $7b3c: $0e $00
	rst $38                                          ; $7b3e: $ff

Jump_04a_7b3f:
	adc h                                            ; $7b3f: $8c
	adc c                                            ; $7b40: $89
	db $e4                                           ; $7b41: $e4
	ld [hl], a                                       ; $7b42: $77
	inc d                                            ; $7b43: $14
	sub [hl]                                         ; $7b44: $96
	dec e                                            ; $7b45: $1d
	ld a, [$c40f]                                    ; $7b46: $fa $0f $c4
	ldh [$30], a                                     ; $7b49: $e0 $30
	db $d3                                           ; $7b4b: $d3
	ld [hl], c                                       ; $7b4c: $71
	nop                                              ; $7b4d: $00
	db $fc                                           ; $7b4e: $fc
	sbc l                                            ; $7b4f: $9d
	rra                                              ; $7b50: $1f
	db $fc                                           ; $7b51: $fc
	ld [hl], d                                       ; $7b52: $72
	ld l, $7e                                        ; $7b53: $2e $7e
	cp c                                             ; $7b55: $b9
	sbc [hl]                                         ; $7b56: $9e
	rst SubAFromBC                                          ; $7b57: $e7
	ld [hl], e                                       ; $7b58: $73
	ld e, $9b                                        ; $7b59: $1e $9b
	ld a, a                                          ; $7b5b: $7f
	ret nz                                           ; $7b5c: $c0

	ldh a, [c]                                       ; $7b5d: $f2
	inc bc                                           ; $7b5e: $03
	ld a, c                                          ; $7b5f: $79
	add $6e                                          ; $7b60: $c6 $6e
	sbc l                                            ; $7b62: $9d
	sbc $ff                                          ; $7b63: $de $ff
	ld a, [hl]                                       ; $7b65: $7e
	cp b                                             ; $7b66: $b8
	ld h, d                                          ; $7b67: $62
	cp h                                             ; $7b68: $bc
	ld [hl], d                                       ; $7b69: $72
	cp a                                             ; $7b6a: $bf
	halt                                             ; $7b6b: $76
	nop                                              ; $7b6c: $00
	ld a, e                                          ; $7b6d: $7b
	ld c, e                                          ; $7b6e: $4b
	ld [hl], a                                       ; $7b6f: $77
	or $96                                           ; $7b70: $f6 $96
	rst $38                                          ; $7b72: $ff
	ld d, b                                          ; $7b73: $50
	ldh [$a5], a                                     ; $7b74: $e0 $a5
	xor d                                            ; $7b76: $aa
	dec h                                            ; $7b77: $25
	adc d                                            ; $7b78: $8a
	nop                                              ; $7b79: $00
	ccf                                              ; $7b7a: $3f
	ld a, d                                          ; $7b7b: $7a
	db $dd                                           ; $7b7c: $dd
	ld [hl], a                                       ; $7b7d: $77
	scf                                              ; $7b7e: $37

Jump_04a_7b7f:
	adc b                                            ; $7b7f: $88
	db $fc                                           ; $7b80: $fc
	ld a, h                                          ; $7b81: $7c
	inc a                                            ; $7b82: $3c
	inc a                                            ; $7b83: $3c
	cp l                                             ; $7b84: $bd
	inc a                                            ; $7b85: $3c
	cp h                                             ; $7b86: $bc
	rla                                              ; $7b87: $17
	ld hl, sp-$04                                    ; $7b88: $f8 $fc
	db $fc                                           ; $7b8a: $fc
	ld hl, sp-$08                                    ; $7b8b: $f8 $f8
	cp $fe                                           ; $7b8d: $fe $fe
	rlca                                             ; $7b8f: $07
	ld b, a                                          ; $7b90: $47
	inc bc                                           ; $7b91: $03
	dec bc                                           ; $7b92: $0b
	inc de                                           ; $7b93: $13
	add a                                            ; $7b94: $87
	ret nz                                           ; $7b95: $c0

	ld a, a                                          ; $7b96: $7f
	ld h, [hl]                                       ; $7b97: $66
	or c                                             ; $7b98: $b1
	sbc h                                            ; $7b99: $9c
	ldh [hDisp1_WY], a                                     ; $7b9a: $e0 $95
	sbc [hl]                                         ; $7b9c: $9e
	db $dd                                           ; $7b9d: $dd
	sbc a                                            ; $7b9e: $9f
	adc l                                            ; $7b9f: $8d
	ld e, a                                          ; $7ba0: $5f
	rst $38                                          ; $7ba1: $ff
	nop                                              ; $7ba2: $00
	rra                                              ; $7ba3: $1f
	ld a, a                                          ; $7ba4: $7f
	rrca                                             ; $7ba5: $0f
	nop                                              ; $7ba6: $00
	rlca                                             ; $7ba7: $07
	adc l                                            ; $7ba8: $8d
	xor l                                            ; $7ba9: $ad
	ld d, l                                          ; $7baa: $55
	sbc h                                            ; $7bab: $9c
	sbc a                                            ; $7bac: $9f
	ldh a, [$fa]                                     ; $7bad: $f0 $fa
	add b                                            ; $7baf: $80
	add l                                            ; $7bb0: $85
	add h                                            ; $7bb1: $84
	ld a, e                                          ; $7bb2: $7b
	add l                                            ; $7bb3: $85
	add a                                            ; $7bb4: $87
	adc a                                            ; $7bb5: $8f
	rrca                                             ; $7bb6: $0f
	rrca                                             ; $7bb7: $0f
	adc a                                            ; $7bb8: $8f
	and a                                            ; $7bb9: $a7
	rst $38                                          ; $7bba: $ff
	rra                                              ; $7bbb: $1f
	sbc b                                            ; $7bbc: $98
	halt                                             ; $7bbd: $76
	or $16                                           ; $7bbe: $f6 $16
	ld d, $0e                                        ; $7bc0: $16 $0e
	ret nz                                           ; $7bc2: $c0

	ld hl, sp+$78                                    ; $7bc3: $f8 $78
	nop                                              ; $7bc5: $00
	jr jr_04a_7bec                                   ; $7bc6: $18 $24

	inc h                                            ; $7bc8: $24
	jr @+$41                                         ; $7bc9: $18 $3f

	rst JumpTable                                          ; $7bcb: $c7
	ld bc, $f873                                     ; $7bcc: $01 $73 $f8
	sbc [hl]                                         ; $7bcf: $9e
	nop                                              ; $7bd0: $00
	jp c, $d901                                      ; $7bd1: $da $01 $d9

	ld sp, hl                                        ; $7bd4: $f9
	ld l, l                                          ; $7bd5: $6d
	ld a, [hl-]                                      ; $7bd6: $3a
	rst SubAFromDE                                          ; $7bd7: $df
	rst $38                                          ; $7bd8: $ff
	sbc e                                            ; $7bd9: $9b
	ld d, l                                          ; $7bda: $55
	jp z, $c7a3                                      ; $7bdb: $ca $a3 $c7

	ld a, e                                          ; $7bde: $7b
	cp $9e                                           ; $7bdf: $fe $9e
	rst SubAFromHL                                          ; $7be1: $d7
	cp $84                                           ; $7be2: $fe $84
	dec d                                            ; $7be4: $15
	ld a, [hl+]                                      ; $7be5: $2a
	dec d                                            ; $7be6: $15
	dec hl                                           ; $7be7: $2b
	sbc b                                            ; $7be8: $98
	inc bc                                           ; $7be9: $03
	add b                                            ; $7bea: $80
	ld b, b                                          ; $7beb: $40

jr_04a_7bec:
	cp a                                             ; $7bec: $bf
	rst $38                                          ; $7bed: $ff
	cp a                                             ; $7bee: $bf
	rst $38                                          ; $7bef: $ff
	db $fc                                           ; $7bf0: $fc
	inc bc                                           ; $7bf1: $03
	inc bc                                           ; $7bf2: $03
	ld bc, $a141                                     ; $7bf3: $01 $41 $a1
	ld h, c                                          ; $7bf6: $61
	ei                                               ; $7bf7: $fb
	ld h, l                                          ; $7bf8: $65
	db $fd                                           ; $7bf9: $fd
	xor l                                            ; $7bfa: $ad
	ld d, l                                          ; $7bfb: $55
	db $fd                                           ; $7bfc: $fd
	push af                                          ; $7bfd: $f5
	push af                                          ; $7bfe: $f5

Call_04a_7bff:
Jump_04a_7bff:
	ld a, d                                          ; $7bff: $7a
	xor d                                            ; $7c00: $aa
	ld a, [hl]                                       ; $7c01: $7e
	ld d, h                                          ; $7c02: $54
	sbc h                                            ; $7c03: $9c
	and b                                            ; $7c04: $a0
	ld e, a                                          ; $7c05: $5f
	cp a                                             ; $7c06: $bf
	halt                                             ; $7c07: $76
	scf                                              ; $7c08: $37
	sbc $ff                                          ; $7c09: $de $ff
	sbc e                                            ; $7c0b: $9b
	ld hl, sp-$10                                    ; $7c0c: $f8 $f0
	ld sp, hl                                        ; $7c0e: $f9
	cp $79                                           ; $7c0f: $fe $79
	ld l, [hl]                                       ; $7c11: $6e
	db $dd                                           ; $7c12: $dd
	rst $38                                          ; $7c13: $ff
	rst SubAFromDE                                          ; $7c14: $df
	cp $77                                           ; $7c15: $fe $77
	ld a, [hl-]                                      ; $7c17: $3a
	sbc c                                            ; $7c18: $99
	add hl, hl                                       ; $7c19: $29
	cpl                                              ; $7c1a: $2f
	ld [hl], e                                       ; $7c1b: $73
	ld b, [hl]                                       ; $7c1c: $46
	ld e, $01                                        ; $7c1d: $1e $01
	ld a, d                                          ; $7c1f: $7a
	sbc a                                            ; $7c20: $9f
	sub h                                            ; $7c21: $94
	rst $38                                          ; $7c22: $ff
	rst SubAFromDE                                          ; $7c23: $df
	call $877f                                       ; $7c24: $cd $7f $87
	ld hl, sp+$07                                    ; $7c27: $f8 $07
	ld c, b                                          ; $7c29: $48
	ld c, e                                          ; $7c2a: $4b
	cp $02                                           ; $7c2b: $fe $02
	ld a, c                                          ; $7c2d: $79
	jp nz, $f0de                                     ; $7c2e: $c2 $de $f0

	sbc d                                            ; $7c31: $9a
	adc [hl]                                         ; $7c32: $8e
	db $fc                                           ; $7c33: $fc
	cp $fe                                           ; $7c34: $fe $fe
	ld [bc], a                                       ; $7c36: $02
	sbc $3e                                          ; $7c37: $de $3e
	adc [hl]                                         ; $7c39: $8e
	ld bc, $3343                                     ; $7c3a: $01 $43 $33
	ld d, $04                                        ; $7c3d: $16 $04
	rlca                                             ; $7c3f: $07
	rlca                                             ; $7c40: $07
	inc bc                                           ; $7c41: $03
	sbc $fd                                          ; $7c42: $de $fd
	ld a, a                                          ; $7c44: $7f
	ld a, $1c                                        ; $7c45: $3e $1c
	ld c, $0f                                        ; $7c47: $0e $0f
	dec e                                            ; $7c49: $1d
	or $7a                                           ; $7c4a: $f6 $7a
	inc a                                            ; $7c4c: $3c
	add b                                            ; $7c4d: $80
	jr nz, jr_04a_7c78                               ; $7c4e: $20 $28

	inc e                                            ; $7c50: $1c
	inc e                                            ; $7c51: $1c
	inc b                                            ; $7c52: $04
	ldh a, [c]                                       ; $7c53: $f2
	rst $38                                          ; $7c54: $ff
	ld a, a                                          ; $7c55: $7f
	sbc a                                            ; $7c56: $9f
	adc a                                            ; $7c57: $8f
	sbc $ff                                          ; $7c58: $de $ff
	cp d                                             ; $7c5a: $ba
	ld [hl], l                                       ; $7c5b: $75
	ld a, [hl+]                                      ; $7c5c: $2a
	dec b                                            ; $7c5d: $05
	inc b                                            ; $7c5e: $04
	inc b                                            ; $7c5f: $04
	adc e                                            ; $7c60: $8b
	adc d                                            ; $7c61: $8a
	db $10                                           ; $7c62: $10
	jr nz, @-$3e                                     ; $7c63: $20 $c0

	ldh a, [$fb]                                     ; $7c65: $f0 $fb
	rst $38                                          ; $7c67: $ff
	inc e                                            ; $7c68: $1c
	inc a                                            ; $7c69: $3c
	ret nz                                           ; $7c6a: $c0

	nop                                              ; $7c6b: $00
	rrca                                             ; $7c6c: $0f
	sbc d                                            ; $7c6d: $9a
	ld [$cac8], sp                                   ; $7c6e: $08 $c8 $ca
	db $eb                                           ; $7c71: $eb
	jp hl                                            ; $7c72: $e9


	db $dd                                           ; $7c73: $dd
	rst $38                                          ; $7c74: $ff
	sbc e                                            ; $7c75: $9b
	cp h                                             ; $7c76: $bc
	ld sp, hl                                        ; $7c77: $f9

jr_04a_7c78:
	ld a, l                                          ; $7c78: $7d
	ld a, b                                          ; $7c79: $78
	ld l, h                                          ; $7c7a: $6c
	call $809d                                       ; $7c7b: $cd $9d $80
	ret                                              ; $7c7e: $c9


	ld [hl], d                                       ; $7c7f: $72
	pop bc                                           ; $7c80: $c1
	sbc h                                            ; $7c81: $9c
	ld d, l                                          ; $7c82: $55
	ld a, [hl+]                                      ; $7c83: $2a
	sub h                                            ; $7c84: $94
	ld l, [hl]                                       ; $7c85: $6e
	sub b                                            ; $7c86: $90
	ld l, b                                          ; $7c87: $68
	or [hl]                                          ; $7c88: $b6
	halt                                             ; $7c89: $76
	sbc c                                            ; $7c8a: $99
	sbc h                                            ; $7c8b: $9c
	ld [hl], c                                       ; $7c8c: $71
	ld l, d                                          ; $7c8d: $6a
	ld a, a                                          ; $7c8e: $7f
	halt                                             ; $7c8f: $76
	add [hl]                                         ; $7c90: $86
	ld a, a                                          ; $7c91: $7f
	ei                                               ; $7c92: $fb
	sbc $7f                                          ; $7c93: $de $7f
	ld a, a                                          ; $7c95: $7f
	db $fc                                           ; $7c96: $fc
	add b                                            ; $7c97: $80
	ccf                                              ; $7c98: $3f
	adc [hl]                                         ; $7c99: $8e
	rst SubAFromDE                                          ; $7c9a: $df
	call $e8c4                                       ; $7c9b: $cd $c4 $e8
	db $e4                                           ; $7c9e: $e4
	push bc                                          ; $7c9f: $c5
	add d                                            ; $7ca0: $82
	adc [hl]                                         ; $7ca1: $8e
	rst $38                                          ; $7ca2: $ff
	call $e8c6                                       ; $7ca3: $cd $c6 $e8
	db $e4                                           ; $7ca6: $e4
	call nz, $7883                                   ; $7ca7: $c4 $83 $78
	rst SubAFromDE                                          ; $7caa: $df
	rst $38                                          ; $7cab: $ff
	cp $6e                                           ; $7cac: $fe $6e
	xor [hl]                                         ; $7cae: $ae
	ld a, $7e                                        ; $7caf: $3e $7e
	jr jr_04a_7cb9                                   ; $7cb1: $18 $06

	add e                                            ; $7cb3: $83
	jp nz, Jump_04a_7afa                             ; $7cb4: $c2 $fa $7a

	sbc [hl]                                         ; $7cb7: $9e
	ld a, [hl]                                       ; $7cb8: $7e

jr_04a_7cb9:
	ld a, e                                          ; $7cb9: $7b
	ld h, h                                          ; $7cba: $64
	ld c, a                                          ; $7cbb: $4f
	cp a                                             ; $7cbc: $bf
	sbc [hl]                                         ; $7cbd: $9e
	ld b, $6b                                        ; $7cbe: $06 $6b
	ld hl, sp-$62                                    ; $7cc0: $f8 $9e
	ld de, $a747                                     ; $7cc2: $11 $47 $a7
	ld l, a                                          ; $7cc5: $6f
	ld hl, sp-$63                                    ; $7cc6: $f8 $9d
	dec d                                            ; $7cc8: $15
	ld bc, $1b7a                                     ; $7cc9: $01 $7a $1b
	db $fd                                           ; $7ccc: $fd
	ld a, [hl]                                       ; $7ccd: $7e
	rst JumpTable                                          ; $7cce: $c7
	ld a, l                                          ; $7ccf: $7d
	push de                                          ; $7cd0: $d5
	rst $38                                          ; $7cd1: $ff
	ld a, l                                          ; $7cd2: $7d
	inc e                                            ; $7cd3: $1c
	ld a, e                                          ; $7cd4: $7b
	ei                                               ; $7cd5: $fb
	ld [hl], c                                       ; $7cd6: $71
	inc b                                            ; $7cd7: $04
	ld a, c                                          ; $7cd8: $79
	add l                                            ; $7cd9: $85
	ld a, a                                          ; $7cda: $7f
	db $ed                                           ; $7cdb: $ed
	sbc l                                            ; $7cdc: $9d
	dec d                                            ; $7cdd: $15
	xor d                                            ; $7cde: $aa
	ld a, c                                          ; $7cdf: $79
	sbc c                                            ; $7ce0: $99

Call_04a_7ce1:
	adc b                                            ; $7ce1: $88
	ccf                                              ; $7ce2: $3f
	ld a, a                                          ; $7ce3: $7f
	sub b                                            ; $7ce4: $90
	ld b, b                                          ; $7ce5: $40
	xor b                                            ; $7ce6: $a8
	ld d, h                                          ; $7ce7: $54
	ld hl, sp+$1c                                    ; $7ce8: $f8 $1c

jr_04a_7cea:
	rra                                              ; $7cea: $1f
	ccf                                              ; $7ceb: $3f
	dec de                                           ; $7cec: $1b
	add hl, bc                                       ; $7ced: $09
	inc c                                            ; $7cee: $0c
	rlca                                             ; $7cef: $07
	di                                               ; $7cf0: $f3
	inc bc                                           ; $7cf1: $03
	inc bc                                           ; $7cf2: $03
	rst JumpTable                                          ; $7cf3: $c7
	rst $38                                          ; $7cf4: $ff
	cp $7c                                           ; $7cf5: $fe $7c
	add hl, sp                                       ; $7cf7: $39
	rrca                                             ; $7cf8: $0f
	db $db                                           ; $7cf9: $db
	rst $38                                          ; $7cfa: $ff
	sbc [hl]                                         ; $7cfb: $9e

Call_04a_7cfc:
	ld a, [hl]                                       ; $7cfc: $7e
	halt                                             ; $7cfd: $76
	call nz, $fe77                                   ; $7cfe: $c4 $77 $fe
	sbc b                                            ; $7d01: $98
	di                                               ; $7d02: $f3
	ld hl, sp-$0f                                    ; $7d03: $f8 $f1
	ld sp, hl                                        ; $7d05: $f9
	push af                                          ; $7d06: $f5
	ei                                               ; $7d07: $fb
	rst FarCall                                          ; $7d08: $f7
	ld l, l                                          ; $7d09: $6d
	jr c, jr_04a_7cea                                ; $7d0a: $38 $de

	rst $38                                          ; $7d0c: $ff
	sub [hl]                                         ; $7d0d: $96
	add h                                            ; $7d0e: $84
	ld a, b                                          ; $7d0f: $78
	and d                                            ; $7d10: $a2
	rst FarCall                                          ; $7d11: $f7
	xor a                                            ; $7d12: $af
	ld e, b                                          ; $7d13: $58
	cp [hl]                                          ; $7d14: $be
	ld a, a                                          ; $7d15: $7f
	rst $38                                          ; $7d16: $ff
	ld l, c                                          ; $7d17: $69
	ld b, a                                          ; $7d18: $47
	ld a, l                                          ; $7d19: $7d
	inc a                                            ; $7d1a: $3c
	sbc c                                            ; $7d1b: $99
	ld c, d                                          ; $7d1c: $4a
	ld a, [hl]                                       ; $7d1d: $7e
	jr z, jr_04a_7d20                                ; $7d1e: $28 $00

jr_04a_7d20:
	ld b, $ff                                        ; $7d20: $06 $ff
	reti                                             ; $7d22: $d9


	ldh a, [$df]                                     ; $7d23: $f0 $df
	cp [hl]                                          ; $7d25: $be
	call c, $9c3e                                    ; $7d26: $dc $3e $9c
	cp $1b                                           ; $7d29: $fe $1b
	dec sp                                           ; $7d2b: $3b
	sbc $20                                          ; $7d2c: $de $20
	adc a                                            ; $7d2e: $8f
	ccf                                              ; $7d2f: $3f
	ld b, $06                                        ; $7d30: $06 $06
	ld bc, $1f00                                     ; $7d32: $01 $00 $1f
	ccf                                              ; $7d35: $3f
	ccf                                              ; $7d36: $3f
	rra                                              ; $7d37: $1f
	inc bc                                           ; $7d38: $03
	inc bc                                           ; $7d39: $03
	ld [$1ce2], sp                                   ; $7d3a: $08 $e2 $1c
	inc c                                            ; $7d3d: $0c
	add d                                            ; $7d3e: $82
	ld a, b                                          ; $7d3f: $78
	ld [hl], a                                       ; $7d40: $77
	sbc h                                            ; $7d41: $9c
	rst $38                                          ; $7d42: $ff
	db $dd                                           ; $7d43: $dd
	di                                               ; $7d44: $f3
	ld l, h                                          ; $7d45: $6c
	ld c, l                                          ; $7d46: $4d
	sub a                                            ; $7d47: $97
	rst $38                                          ; $7d48: $ff
	rst FarCall                                          ; $7d49: $f7
	ldh [$c0], a                                     ; $7d4a: $e0 $c0
	ret nz                                           ; $7d4c: $c0

	ldh [$e0], a                                     ; $7d4d: $e0 $e0
	db $fc                                           ; $7d4f: $fc
	ld [hl], c                                       ; $7d50: $71
	db $10                                           ; $7d51: $10
	rst SubAFromDE                                          ; $7d52: $df
	rst $38                                          ; $7d53: $ff
	adc [hl]                                         ; $7d54: $8e
	add sp, -$38                                     ; $7d55: $e8 $c8
	adc b                                            ; $7d57: $88
	rrca                                             ; $7d58: $0f
	rrca                                             ; $7d59: $0f
	nop                                              ; $7d5a: $00
	ld l, h                                          ; $7d5b: $6c
	ld l, h                                          ; $7d5c: $6c
	ld a, l                                          ; $7d5d: $7d
	ld hl, sp-$03                                    ; $7d5e: $f8 $fd
	rst $38                                          ; $7d60: $ff
	ldh a, [rIE]                                     ; $7d61: $f0 $ff
	cp a                                             ; $7d63: $bf
	or a                                             ; $7d64: $b7
	ei                                               ; $7d65: $fb
	halt                                             ; $7d66: $76
	ld d, c                                          ; $7d67: $51
	cp $9d                                           ; $7d68: $fe $9d
	ld b, c                                          ; $7d6a: $41
	nop                                              ; $7d6b: $00
	ld a, e                                          ; $7d6c: $7b
	ld b, l                                          ; $7d6d: $45
	ld [hl], c                                       ; $7d6e: $71
	ld a, l                                          ; $7d6f: $7d
	add b                                            ; $7d70: $80
	ld bc, $0103                                     ; $7d71: $01 $03 $01
	rrca                                             ; $7d74: $0f
	ld a, a                                          ; $7d75: $7f
	ld [hl], a                                       ; $7d76: $77
	nop                                              ; $7d77: $00
	nop                                              ; $7d78: $00
	dec bc                                           ; $7d79: $0b
	ld d, l                                          ; $7d7a: $55
	xor c                                            ; $7d7b: $a9
	ld d, c                                          ; $7d7c: $51
	add e                                            ; $7d7d: $83
	ld h, e                                          ; $7d7e: $63
	rra                                              ; $7d7f: $1f
	ld a, [hl]                                       ; $7d80: $7e
	rst $38                                          ; $7d81: $ff
	ld sp, hl                                        ; $7d82: $f9
	inc a                                            ; $7d83: $3c
	cp $ff                                           ; $7d84: $fe $ff
	rra                                              ; $7d86: $1f
	ld a, $46                                        ; $7d87: $3e $46
	and d                                            ; $7d89: $a2
	dec e                                            ; $7d8a: $1d
	daa                                              ; $7d8b: $27
	ld e, a                                          ; $7d8c: $5f
	di                                               ; $7d8d: $f3
	inc sp                                           ; $7d8e: $33
	ld b, c                                          ; $7d8f: $41
	add h                                            ; $7d90: $84
	ld [hl-], a                                      ; $7d91: $32
	db $fc                                           ; $7d92: $fc
	cp b                                             ; $7d93: $b8
	ld [hl], b                                       ; $7d94: $70
	inc bc                                           ; $7d95: $03
	add a                                            ; $7d96: $87
	rst $38                                          ; $7d97: $ff
	inc bc                                           ; $7d98: $03
	ld h, [hl]                                       ; $7d99: $66
	ld b, h                                          ; $7d9a: $44
	ret z                                            ; $7d9b: $c8

	pop af                                           ; $7d9c: $f1
	ld bc, $7ec3                                     ; $7d9d: $01 $c3 $7e
	cp $27                                           ; $7da0: $fe $27
	jr nz, jr_04a_7dc4                               ; $7da2: $20 $20

	jp wMemSetBC                                         ; $7da4: $c3 $cc $cf


	ret nz                                           ; $7da7: $c0

	rst $38                                          ; $7da8: $ff
	ld a, a                                          ; $7da9: $7f
	ld [hl], a                                       ; $7daa: $77
	ld [hl], a                                       ; $7dab: $77
	ld [hl], d                                       ; $7dac: $72
	ld a, h                                          ; $7dad: $7c
	adc a                                            ; $7dae: $8f
	inc bc                                           ; $7daf: $03
	add e                                            ; $7db0: $83
	add a                                            ; $7db1: $87
	rst GetHLinHL                                          ; $7db2: $cf
	ld c, a                                          ; $7db3: $4f
	rst GetHLinHL                                          ; $7db4: $cf
	ccf                                              ; $7db5: $3f
	nop                                              ; $7db6: $00
	ld d, l                                          ; $7db7: $55
	xor b                                            ; $7db8: $a8
	push de                                          ; $7db9: $d5
	jp hl                                            ; $7dba: $e9


	jp c, $ecee                                      ; $7dbb: $da $ee $ec

	nop                                              ; $7dbe: $00
	ld [hl], a                                       ; $7dbf: $77
	adc b                                            ; $7dc0: $88
	ld a, d                                          ; $7dc1: $7a
	ld a, [hl]                                       ; $7dc2: $7e
	sub e                                            ; $7dc3: $93

jr_04a_7dc4:
	xor d                                            ; $7dc4: $aa
	ld bc, $8c00                                     ; $7dc5: $01 $00 $8c
	ld hl, sp+$04                                    ; $7dc8: $f8 $04
	ld b, d                                          ; $7dca: $42
	inc bc                                           ; $7dcb: $03
	nop                                              ; $7dcc: $00
	ld h, b                                          ; $7dcd: $60
	pop hl                                           ; $7dce: $e1
	db $e3                                           ; $7dcf: $e3
	db $dd                                           ; $7dd0: $dd
	rst FarCall                                          ; $7dd1: $f7
	sbc b                                            ; $7dd2: $98
	xor d                                            ; $7dd3: $aa
	dec [hl]                                         ; $7dd4: $35
	adc d                                            ; $7dd5: $8a
	halt                                             ; $7dd6: $76
	cp c                                             ; $7dd7: $b9
	ld a, b                                          ; $7dd8: $78
	cp b                                             ; $7dd9: $b8
	ld a, d                                          ; $7dda: $7a
	ld b, b                                          ; $7ddb: $40
	sub d                                            ; $7ddc: $92
	nop                                              ; $7ddd: $00
	sbc h                                            ; $7dde: $9c
	ld hl, sp-$06                                    ; $7ddf: $f8 $fa
	ld hl, sp-$08                                    ; $7de1: $f8 $f8
	xor d                                            ; $7de3: $aa
	ld d, l                                          ; $7de4: $55
	xor e                                            ; $7de5: $ab
	nop                                              ; $7de6: $00
	add h                                            ; $7de7: $84
	ld h, e                                          ; $7de8: $63
	ld a, [de]                                       ; $7de9: $1a
	ld hl, sp-$66                                    ; $7dea: $f8 $9a
	xor d                                            ; $7dec: $aa
	push af                                          ; $7ded: $f5
	ld a, [bc]                                       ; $7dee: $0a
	dec b                                            ; $7def: $05
	ld [bc], a                                       ; $7df0: $02
	sbc $03                                          ; $7df1: $de $03
	sbc e                                            ; $7df3: $9b
	rrca                                             ; $7df4: $0f
	ld e, $38                                        ; $7df5: $1e $38
	ld a, [hl]                                       ; $7df7: $7e
	ld a, d                                          ; $7df8: $7a
	ld b, a                                          ; $7df9: $47
	sub h                                            ; $7dfa: $94
	rst $38                                          ; $7dfb: $ff
	and c                                            ; $7dfc: $a1
	ld e, l                                          ; $7dfd: $5d
	xor [hl]                                         ; $7dfe: $ae

Jump_04a_7dff:
	ld [hl], a                                       ; $7dff: $77
	db $db                                           ; $7e00: $db
	call $e2e6                                       ; $7e01: $cd $e6 $e2
	cp a                                             ; $7e04: $bf
	ld bc, $127a                                     ; $7e05: $01 $7a $12
	ld a, b                                          ; $7e08: $78
	ld hl, $0097                                     ; $7e09: $21 $97 $00
	sbc a                                            ; $7e0c: $9f
	ld bc, $40dc                                     ; $7e0d: $01 $dc $40
	cp a                                             ; $7e10: $bf
	ld a, a                                          ; $7e11: $7f
	nop                                              ; $7e12: $00
	ld a, e                                          ; $7e13: $7b
	push hl                                          ; $7e14: $e5
	halt                                             ; $7e15: $76
	daa                                              ; $7e16: $27
	ld a, e                                          ; $7e17: $7b
	rst AddAOntoHL                                          ; $7e18: $ef
	sub l                                            ; $7e19: $95
	ldh [$d4], a                                     ; $7e1a: $e0 $d4
	ld [$dff5], a                                    ; $7e1c: $ea $f5 $df
	ld e, [hl]                                       ; $7e1f: $5e
	rst $38                                          ; $7e20: $ff
	ldh [$f8], a                                     ; $7e21: $e0 $f8
	db $fc                                           ; $7e23: $fc
	call c, $98ff                                    ; $7e24: $dc $ff $98
	rra                                              ; $7e27: $1f
	scf                                              ; $7e28: $37
	ld [hl], e                                       ; $7e29: $73
	pop hl                                           ; $7e2a: $e1

jr_04a_7e2b:
	jp nz, $0884                                     ; $7e2b: $c2 $84 $08

	ld [hl], a                                       ; $7e2e: $77
	inc h                                            ; $7e2f: $24
	rst SubAFromDE                                          ; $7e30: $df
	rst $38                                          ; $7e31: $ff
	sbc [hl]                                         ; $7e32: $9e
	pop hl                                           ; $7e33: $e1
	ld l, l                                          ; $7e34: $6d
	inc l                                            ; $7e35: $2c
	sbc e                                            ; $7e36: $9b
	xor d                                            ; $7e37: $aa
	ld b, b                                          ; $7e38: $40
	jr nc, jr_04a_7e2b                               ; $7e39: $30 $f0

	ld [hl], h                                       ; $7e3b: $74
	db $d3                                           ; $7e3c: $d3
	sbc l                                            ; $7e3d: $9d
	ld hl, sp+$00                                    ; $7e3e: $f8 $00
	ld a, c                                          ; $7e40: $79
	ld h, b                                          ; $7e41: $60
	rst SubAFromDE                                          ; $7e42: $df
	cp $9d                                           ; $7e43: $fe $9d
	ld e, [hl]                                       ; $7e45: $5e
	xor [hl]                                         ; $7e46: $ae
	cp $93                                           ; $7e47: $fe $93
	ld h, b                                          ; $7e49: $60
	jr nz, jr_04a_7ec8                               ; $7e4a: $20 $7c

	rra                                              ; $7e4c: $1f
	rrca                                             ; $7e4d: $0f
	ldh a, [rIE]                                     ; $7e4e: $f0 $ff
	ccf                                              ; $7e50: $3f
	ccf                                              ; $7e51: $3f
	ld a, a                                          ; $7e52: $7f
	ccf                                              ; $7e53: $3f
	rlca                                             ; $7e54: $07
	ld a, e                                          ; $7e55: $7b
	and h                                            ; $7e56: $a4
	ld a, e                                          ; $7e57: $7b
	nop                                              ; $7e58: $00
	sbc l                                            ; $7e59: $9d
	ld [bc], a                                       ; $7e5a: $02
	cp $72                                           ; $7e5b: $fe $72
	or $de                                           ; $7e5d: $f6 $de
	rst $38                                          ; $7e5f: $ff
	ld a, [hl]                                       ; $7e60: $7e
	ld a, $7f                                        ; $7e61: $3e $7f
	call nc, $897d                                   ; $7e63: $d4 $7d $89
	rst SubAFromDE                                          ; $7e66: $df
	ldh a, [$9e]                                     ; $7e67: $f0 $9e
	ldh [$6d], a                                     ; $7e69: $e0 $6d
	inc l                                            ; $7e6b: $2c
	rst SubAFromDE                                          ; $7e6c: $df
	rst $38                                          ; $7e6d: $ff

jr_04a_7e6e:
	add l                                            ; $7e6e: $85
	scf                                              ; $7e6f: $37
	rst SubAFromHL                                          ; $7e70: $d7
	inc l                                            ; $7e71: $2c
	adc h                                            ; $7e72: $8c
	ldh [$fc], a                                     ; $7e73: $e0 $fc
	cp a                                             ; $7e75: $bf
	sbc a                                            ; $7e76: $9f
	adc a                                            ; $7e77: $8f
	and h                                            ; $7e78: $a4
	inc h                                            ; $7e79: $24
	inc b                                            ; $7e7a: $04
	nop                                              ; $7e7b: $00
	nop                                              ; $7e7c: $00
	ld b, b                                          ; $7e7d: $40
	ld h, b                                          ; $7e7e: $60
	ld [hl], b                                       ; $7e7f: $70
	ld e, e                                          ; $7e80: $5b
	nop                                              ; $7e81: $00
	nop                                              ; $7e82: $00
	db $10                                           ; $7e83: $10
	jr c, jr_04a_7e6e                                ; $7e84: $38 $e8

	ret z                                            ; $7e86: $c8

	jr @-$1f                                         ; $7e87: $18 $df

	db $fd                                           ; $7e89: $fd
	sub a                                            ; $7e8a: $97
	db $10                                           ; $7e8b: $10
	jr nc, jr_04a_7e6e                               ; $7e8c: $30 $e0

	jr nz, jr_04a_7f03                               ; $7e8e: $20 $73

	rst $38                                          ; $7e90: $ff
	rst $38                                          ; $7e91: $ff
	cp a                                             ; $7e92: $bf
	ld [hl], h                                       ; $7e93: $74
	di                                               ; $7e94: $f3
	sub l                                            ; $7e95: $95
	add c                                            ; $7e96: $81
	ld bc, $4000                                     ; $7e97: $01 $00 $40

Call_04a_7e9a:
	jr nc, jr_04a_7eb3                               ; $7e9a: $30 $17

	sub a                                            ; $7e9c: $97
	cp l                                             ; $7e9d: $bd
	rra                                              ; $7e9e: $1f
	rra                                              ; $7e9f: $1f
	sbc $ff                                          ; $7ea0: $de $ff
	sub a                                            ; $7ea2: $97
	sbc a                                            ; $7ea3: $9f
	sbc h                                            ; $7ea4: $9c
	sbc b                                            ; $7ea5: $98
	inc sp                                           ; $7ea6: $33
	or [hl]                                          ; $7ea7: $b6
	cp h                                             ; $7ea8: $bc
	ld sp, hl                                        ; $7ea9: $f9

jr_04a_7eaa:
	ldh a, [$de]                                     ; $7eaa: $f0 $de
	rst SubAFromDE                                          ; $7eac: $df
	ld a, b                                          ; $7ead: $78
	and $7a                                          ; $7eae: $e6 $7a
	ld l, e                                          ; $7eb0: $6b
	sbc l                                            ; $7eb1: $9d
	inc c                                            ; $7eb2: $0c

jr_04a_7eb3:
	ld b, $79                                        ; $7eb3: $06 $79
	jp hl                                            ; $7eb5: $e9


	sbc l                                            ; $7eb6: $9d
	adc a                                            ; $7eb7: $8f
	inc e                                            ; $7eb8: $1c
	sbc $fe                                          ; $7eb9: $de $fe
	rst SubAFromDE                                          ; $7ebb: $df
	ldh [$7f], a                                     ; $7ebc: $e0 $7f
	db $ed                                           ; $7ebe: $ed
	ld a, l                                          ; $7ebf: $7d
	ld [bc], a                                       ; $7ec0: $02
	ld a, [hl]                                       ; $7ec1: $7e
	adc l                                            ; $7ec2: $8d
	sub [hl]                                         ; $7ec3: $96
	ld hl, sp+$38                                    ; $7ec4: $f8 $38
	ccf                                              ; $7ec6: $3f
	rst $38                                          ; $7ec7: $ff

jr_04a_7ec8:
	ei                                               ; $7ec8: $fb
	dec b                                            ; $7ec9: $05
	ld de, $371b                                     ; $7eca: $11 $1b $37
	ld a, e                                          ; $7ecd: $7b
	inc [hl]                                         ; $7ece: $34
	ld a, e                                          ; $7ecf: $7b
	db $db                                           ; $7ed0: $db
	sub [hl]                                         ; $7ed1: $96
	rst $38                                          ; $7ed2: $ff
	ld l, l                                          ; $7ed3: $6d
	ld l, d                                          ; $7ed4: $6a
	rst FarCall                                          ; $7ed5: $f7
	cp $f4                                           ; $7ed6: $fe $f4
	ldh [hLCDCIntHandlerIdx], a                                     ; $7ed8: $e0 $81
	add b                                            ; $7eda: $80
	db $dd                                           ; $7edb: $dd
	rst $38                                          ; $7edc: $ff
	sub e                                            ; $7edd: $93
	ld a, l                                          ; $7ede: $7d
	ld [hl], b                                       ; $7edf: $70
	ldh [$c8], a                                     ; $7ee0: $e0 $c8
	ld d, a                                          ; $7ee2: $57
	cpl                                              ; $7ee3: $2f
	rst $38                                          ; $7ee4: $ff
	dec hl                                           ; $7ee5: $2b
	ld d, e                                          ; $7ee6: $53
	dec h                                            ; $7ee7: $25
	ld [$749d], a                                    ; $7ee8: $ea $9d $74
	and l                                            ; $7eeb: $a5
	ld a, a                                          ; $7eec: $7f
	rst SubAFromHL                                          ; $7eed: $d7
	add l                                            ; $7eee: $85
	rra                                              ; $7eef: $1f
	dec bc                                           ; $7ef0: $0b
	ldh a, [$a8]                                     ; $7ef1: $f0 $a8
	ld e, b                                          ; $7ef3: $58
	ld sp, hl                                        ; $7ef4: $f9
	cp $7c                                           ; $7ef5: $fe $7c
	cp [hl]                                          ; $7ef7: $be
	ld e, a                                          ; $7ef8: $5f
	ld hl, sp-$02                                    ; $7ef9: $f8 $fe
	rst FarCall                                          ; $7efb: $f7
	cp $ff                                           ; $7efc: $fe $ff
	ld l, e                                          ; $7efe: $6b

Call_04a_7eff:
	ld [hl], a                                       ; $7eff: $77
	ld l, a                                          ; $7f00: $6f
	inc d                                            ; $7f01: $14
	ld b, b                                          ; $7f02: $40

jr_04a_7f03:
	xor d                                            ; $7f03: $aa
	sub [hl]                                         ; $7f04: $96
	dec hl                                           ; $7f05: $2b
	daa                                              ; $7f06: $27
	rst GetHLinHL                                          ; $7f07: $cf
	sbc a                                            ; $7f08: $9f
	ld a, b                                          ; $7f09: $78
	jr nc, jr_04a_7eaa                               ; $7f0a: $30 $9e

	add hl, sp                                       ; $7f0c: $39
	sbc $ff                                          ; $7f0d: $de $ff
	sub a                                            ; $7f0f: $97
	rst GetHLinHL                                          ; $7f10: $cf
	rlca                                             ; $7f11: $07
	rrca                                             ; $7f12: $0f
	ld bc, $2201                                     ; $7f13: $01 $01 $22
	and l                                            ; $7f16: $a5
	jp z, $f46e                                      ; $7f17: $ca $6e $f4

	sbc $ff                                          ; $7f1a: $de $ff
	sub a                                            ; $7f1c: $97
	and d                                            ; $7f1d: $a2
	ld b, $8e                                        ; $7f1e: $06 $8e
	ld a, [bc]                                       ; $7f20: $0a
	ld a, [bc]                                       ; $7f21: $0a
	jr jr_04a_7f50                                   ; $7f22: $18 $2c

	ld e, a                                          ; $7f24: $5f
	jp c, $9eff                                      ; $7f25: $da $ff $9e

	pop bc                                           ; $7f28: $c1
	ld a, d                                          ; $7f29: $7a
	add hl, de                                       ; $7f2a: $19
	sbc d                                            ; $7f2b: $9a
	ld b, $04                                        ; $7f2c: $06 $04
	ld [$0001], sp                                   ; $7f2e: $08 $01 $00
	db $dd                                           ; $7f31: $dd
	ei                                               ; $7f32: $fb

Call_04a_7f33:
	db $dd                                           ; $7f33: $dd
	di                                               ; $7f34: $f3
	sub a                                            ; $7f35: $97
	call Call_04a_4c4e                               ; $7f36: $cd $4e $4c
	adc $dd                                          ; $7f39: $ce $dd
	sbc $fd                                          ; $7f3b: $de $fd
	ld l, $dc                                        ; $7f3d: $2e $dc

Jump_04a_7f3f:
	rst $38                                          ; $7f3f: $ff
	sub l                                            ; $7f40: $95
	ld a, [$f2f5]                                    ; $7f41: $fa $f5 $f2
	ld d, h                                          ; $7f44: $54
	ld a, [hl+]                                      ; $7f45: $2a
	ld d, l                                          ; $7f46: $55
	cp a                                             ; $7f47: $bf
	ld a, a                                          ; $7f48: $7f
	push af                                          ; $7f49: $f5
	ld a, d                                          ; $7f4a: $7a
	ld l, l                                          ; $7f4b: $6d
	add d                                            ; $7f4c: $82
	ld a, [hl]                                       ; $7f4d: $7e
	ld h, e                                          ; $7f4e: $63
	ld a, l                                          ; $7f4f: $7d

jr_04a_7f50:
	and d                                            ; $7f50: $a2
	ld a, a                                          ; $7f51: $7f
	db $fc                                           ; $7f52: $fc
	halt                                             ; $7f53: $76
	cp a                                             ; $7f54: $bf
	ld [hl], a                                       ; $7f55: $77
	add d                                            ; $7f56: $82
	call c, Call_04a_7ffe                            ; $7f57: $dc $fe $7f
	ld [hl], d                                       ; $7f5a: $72
	sub c                                            ; $7f5b: $91
	rla                                              ; $7f5c: $17
	rrca                                             ; $7f5d: $0f
	ld d, $0e                                        ; $7f5e: $16 $0e
	sbc h                                            ; $7f60: $9c
	cp h                                             ; $7f61: $bc
	rst $38                                          ; $7f62: $ff
	ld [hl], h                                       ; $7f63: $74
	ld sp, hl                                        ; $7f64: $f9
	di                                               ; $7f65: $f3
	ld [hl], e                                       ; $7f66: $73
	inc sp                                           ; $7f67: $33
	inc de                                           ; $7f68: $13
	ld de, $ea7b                                     ; $7f69: $11 $7b $ea
	adc d                                            ; $7f6c: $8a
	ld sp, hl                                        ; $7f6d: $f9
	pop af                                           ; $7f6e: $f1
	ld a, b                                          ; $7f6f: $78
	jr c, jr_04a_7fb0                                ; $7f70: $38 $3e

	ldh a, [$e0]                                     ; $7f72: $f0 $e0
	add e                                            ; $7f74: $83
	add a                                            ; $7f75: $87
	ld c, $1c                                        ; $7f76: $0e $1c
	cp b                                             ; $7f78: $b8
	pop af                                           ; $7f79: $f1
	xor a                                            ; $7f7a: $af
	ld e, a                                          ; $7f7b: $5f
	db $fc                                           ; $7f7c: $fc
	ld a, e                                          ; $7f7d: $7b
	push af                                          ; $7f7e: $f5
	db $eb                                           ; $7f7f: $eb

Jump_04a_7f80:
	ld [hl], a                                       ; $7f80: $77
	ld c, $79                                        ; $7f81: $0e $79
	ret nz                                           ; $7f83: $c0

	adc a                                            ; $7f84: $8f
	add a                                            ; $7f85: $87
	rlca                                             ; $7f86: $07
	ld c, $3e                                        ; $7f87: $0e $3e
	ld hl, sp-$40                                    ; $7f89: $f8 $c0
	sub l                                            ; $7f8b: $95
	ld [$f67f], a                                    ; $7f8c: $ea $7f $f6
	rst AddAOntoHL                                          ; $7f8f: $ef
	cp l                                             ; $7f90: $bd
	rst $38                                          ; $7f91: $ff
	db $d3                                           ; $7f92: $d3
	rst AddAOntoHL                                          ; $7f93: $ef
	or $79                                           ; $7f94: $f6 $79
	inc e                                            ; $7f96: $1c
	sbc d                                            ; $7f97: $9a
	add a                                            ; $7f98: $87
	nop                                              ; $7f99: $00
	inc l                                            ; $7f9a: $2c
	db $10                                           ; $7f9b: $10
	add hl, bc                                       ; $7f9c: $09
	ld a, d                                          ; $7f9d: $7a
	cp [hl]                                          ; $7f9e: $be
	rst $38                                          ; $7f9f: $ff
	sub c                                            ; $7fa0: $91
	cp l                                             ; $7fa1: $bd
	ld a, a                                          ; $7fa2: $7f
	rst AddAOntoHL                                          ; $7fa3: $ef
	rst JumpTable                                          ; $7fa4: $c7
	sbc c                                            ; $7fa5: $99
	rst SubAFromHL                                          ; $7fa6: $d7
	ldh [rP1], a                                     ; $7fa7: $e0 $00
	ld b, d                                          ; $7fa9: $42
	add b                                            ; $7faa: $80
	db $10                                           ; $7fab: $10
	jr c, @+$68                                      ; $7fac: $38 $66

	jr nz, @+$78                                     ; $7fae: $20 $76

jr_04a_7fb0:
	sbc b                                            ; $7fb0: $98
	sbc d                                            ; $7fb1: $9a
	ld a, a                                          ; $7fb2: $7f
	inc e                                            ; $7fb3: $1c
	jr jr_04a_7fbe                                   ; $7fb4: $18 $08

	ld a, a                                          ; $7fb6: $7f
	halt                                             ; $7fb7: $76
	ld a, [hl]                                       ; $7fb8: $7e
	sbc c                                            ; $7fb9: $99
	dec sp                                           ; $7fba: $3b
	ld e, b                                          ; $7fbb: $58
	xor l                                            ; $7fbc: $ad
	add a                                            ; $7fbd: $87

jr_04a_7fbe:
	nop                                              ; $7fbe: $00
	sbc b                                            ; $7fbf: $98
	db $dd                                           ; $7fc0: $dd
	ldh a, [$df]                                     ; $7fc1: $f0 $df
	ldh [$9d], a                                     ; $7fc3: $e0 $9d
	xor h                                            ; $7fc5: $ac
	rst GetHLinHL                                          ; $7fc6: $cf
	halt                                             ; $7fc7: $76
	db $eb                                           ; $7fc8: $eb
	sub h                                            ; $7fc9: $94
	db $e3                                           ; $7fca: $e3
	db $fc                                           ; $7fcb: $fc
	ld a, a                                          ; $7fcc: $7f
	ld b, $23                                        ; $7fcd: $06 $23
	ld d, e                                          ; $7fcf: $53
	and e                                            ; $7fd0: $a3
	ld d, e                                          ; $7fd1: $53
	add e                                            ; $7fd2: $83
	inc bc                                           ; $7fd3: $03
	ccf                                              ; $7fd4: $3f
	ld [hl], e                                       ; $7fd5: $73
	ld a, d                                          ; $7fd6: $7a
	adc h                                            ; $7fd7: $8c
	jp $fe3f                                         ; $7fd8: $c3 $3f $fe


Call_04a_7fdb:
	add hl, bc                                       ; $7fdb: $09
	add hl, bc                                       ; $7fdc: $09
	ld [$df09], sp                                   ; $7fdd: $08 $09 $df
	cp $fc                                           ; $7fe0: $fe $fc
	rst FarCall                                          ; $7fe2: $f7
	add hl, de                                       ; $7fe3: $19
	dec c                                            ; $7fe4: $0d
	dec c                                            ; $7fe5: $0d
	adc a                                            ; $7fe6: $8f
	ld e, a                                          ; $7fe7: $5f
	cp $e6                                           ; $7fe8: $fe $e6
	ld b, a                                          ; $7fea: $47
	ld [hl], c                                       ; $7feb: $71
	inc c                                            ; $7fec: $0c
	ld a, c                                          ; $7fed: $79
	ld [$c195], a                                    ; $7fee: $ea $95 $c1
	xor d                                            ; $7ff1: $aa
	ld d, l                                          ; $7ff2: $55
	xor d                                            ; $7ff3: $aa
	nop                                              ; $7ff4: $00
	inc bc                                           ; $7ff5: $03
	rst $38                                          ; $7ff6: $ff
	rst $38                                          ; $7ff7: $ff
	sbc b                                            ; $7ff8: $98
	ld hl, sp+$78                                    ; $7ff9: $f8 $78
	cpl                                              ; $7ffb: $2f
	ld a, b                                          ; $7ffc: $78
	sub e                                            ; $7ffd: $93

Call_04a_7ffe:
	sbc e                                            ; $7ffe: $9b
	ld [hl-], a                                      ; $7fff: $32
