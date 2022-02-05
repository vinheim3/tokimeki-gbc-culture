; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $018", ROMX[$4000], BANK[$18]

	ld b, a                                          ; $4000: $47
	inc bc                                           ; $4001: $03
	set 7, a                                         ; $4002: $cb $ff
	sub l                                            ; $4004: $95
	ld hl, sp-$01                                    ; $4005: $f8 $ff
	ldh [rIE], a                                     ; $4007: $e0 $ff
	ret nz                                           ; $4009: $c0

	ld hl, sp-$40                                    ; $400a: $f8 $c0
	ldh a, [$80]                                     ; $400c: $f0 $80
	rst AddAOntoHL                                          ; $400e: $ef
	db $db                                           ; $400f: $db
	rst $38                                          ; $4010: $ff
	sub h                                            ; $4011: $94
	ccf                                              ; $4012: $3f
	rst $38                                          ; $4013: $ff
	rrca                                             ; $4014: $0f
	rst $38                                          ; $4015: $ff
	rlca                                             ; $4016: $07
	ccf                                              ; $4017: $3f
	rlca                                             ; $4018: $07
	rra                                              ; $4019: $1f
	inc bc                                           ; $401a: $03
	rst AddAOntoHL                                          ; $401b: $ef
	inc bc                                           ; $401c: $03
	ld a, e                                          ; $401d: $7b
	db $f4                                           ; $401e: $f4
	ld a, a                                          ; $401f: $7f
	db $fd                                           ; $4020: $fd
	sub h                                            ; $4021: $94
	cp a                                             ; $4022: $bf
	ccf                                              ; $4023: $3f
	rra                                              ; $4024: $1f
	sbc a                                            ; $4025: $9f
	rst GetHLinHL                                          ; $4026: $cf
	adc a                                            ; $4027: $8f
	rst SubAFromBC                                          ; $4028: $e7
	rst JumpTable                                          ; $4029: $c7
	db $e3                                           ; $402a: $e3
	rst $38                                          ; $402b: $ff
	add b                                            ; $402c: $80
	ld a, e                                          ; $402d: $7b
	call nc, $fe94                                   ; $402e: $d4 $94 $fe
	ld sp, hl                                        ; $4031: $f9
	ei                                               ; $4032: $fb
	ld sp, hl                                        ; $4033: $f9
	pop af                                           ; $4034: $f1
	di                                               ; $4035: $f3
	rst SubAFromBC                                          ; $4036: $e7
	db $e3                                           ; $4037: $e3
	rst GetHLinHL                                          ; $4038: $cf
	rst JumpTable                                          ; $4039: $c7
	adc a                                            ; $403a: $8f
	ld b, e                                          ; $403b: $43
	cp [hl]                                          ; $403c: $be
	reti                                             ; $403d: $d9


	rst $38                                          ; $403e: $ff
	ld h, a                                          ; $403f: $67
	cp [hl]                                          ; $4040: $be
	sbc h                                            ; $4041: $9c
	rlca                                             ; $4042: $07
	rst $38                                          ; $4043: $ff
	inc bc                                           ; $4044: $03
	ld l, a                                          ; $4045: $6f
	ret nz                                           ; $4046: $c0

	rst SubAFromDE                                          ; $4047: $df
	cp a                                             ; $4048: $bf
	sbc $9f                                          ; $4049: $de $9f
	ld a, a                                          ; $404b: $7f
	ret nc                                           ; $404c: $d0

	sbc [hl]                                         ; $404d: $9e
	ret nz                                           ; $404e: $c0

	ld a, e                                          ; $404f: $7b
	cp [hl]                                          ; $4050: $be
	ld [hl], e                                       ; $4051: $73
	ret nz                                           ; $4052: $c0

	rst SubAFromDE                                          ; $4053: $df
	ei                                               ; $4054: $fb
	sbc $f3                                          ; $4055: $de $f3
	ld a, a                                          ; $4057: $7f
	or b                                             ; $4058: $b0
	ld a, a                                          ; $4059: $7f
	ldh [c], a                                       ; $405a: $e2
	ld a, e                                          ; $405b: $7b
	jp c, $fe7f                                      ; $405c: $da $7f $fe

	sub d                                            ; $405f: $92
	ld a, a                                          ; $4060: $7f
	daa                                              ; $4061: $27
	ld h, a                                          ; $4062: $67
	rla                                              ; $4063: $17
	di                                               ; $4064: $f3
	dec bc                                           ; $4065: $0b
	di                                               ; $4066: $f3
	ld [$80f8], sp                                   ; $4067: $08 $f8 $80
	cp $c0                                           ; $406a: $fe $c0
	ld sp, hl                                        ; $406c: $f9
	ld a, e                                          ; $406d: $7b
	cp b                                             ; $406e: $b8
	sub a                                            ; $406f: $97
	db $fd                                           ; $4070: $fd
	ret z                                            ; $4071: $c8

	db $dd                                           ; $4072: $dd
	ret nc                                           ; $4073: $d0

	sbc a                                            ; $4074: $9f
	and b                                            ; $4075: $a0
	sbc a                                            ; $4076: $9f
	jr nz, jr_018_40f4                               ; $4077: $20 $7b

	add e                                            ; $4079: $83
	push de                                          ; $407a: $d5
	rst $38                                          ; $407b: $ff
	rst SubAFromDE                                          ; $407c: $df
	cp $9a                                           ; $407d: $fe $9a
	ld b, e                                          ; $407f: $43
	ccf                                              ; $4080: $3f
	rlca                                             ; $4081: $07
	rst $38                                          ; $4082: $ff
	rrca                                             ; $4083: $0f
	ld a, e                                          ; $4084: $7b
	adc $92                                          ; $4085: $ce $92
	inc bc                                           ; $4087: $03
	ld a, e                                          ; $4088: $7b
	add hl, sp                                       ; $4089: $39
	ld [hl], c                                       ; $408a: $71
	inc e                                            ; $408b: $1c
	ld hl, sp+$0f                                    ; $408c: $f8 $0f
	db $fc                                           ; $408e: $fc
	add h                                            ; $408f: $84
	ld hl, sp-$40                                    ; $4090: $f8 $c0
	cp $e0                                           ; $4092: $fe $e0
	ld a, e                                          ; $4094: $7b
	adc $97                                          ; $4095: $ce $97
	add b                                            ; $4097: $80
	cp l                                             ; $4098: $bd
	jr c, jr_018_40b8                                ; $4099: $38 $1d

	ld [hl], b                                       ; $409b: $70
	ccf                                              ; $409c: $3f
	ldh [$7f], a                                     ; $409d: $e0 $7f
	ld d, e                                          ; $409f: $53
	ld a, [hl+]                                      ; $40a0: $2a
	ld a, e                                          ; $40a1: $7b
	ld d, l                                          ; $40a2: $55
	add b                                            ; $40a3: $80
	ld b, e                                          ; $40a4: $43
	cp a                                             ; $40a5: $bf
	inc bc                                           ; $40a6: $03
	cp a                                             ; $40a7: $bf
	inc bc                                           ; $40a8: $03
	sbc a                                            ; $40a9: $9f
	ld h, e                                          ; $40aa: $63
	ld l, a                                          ; $40ab: $6f
	ld h, e                                          ; $40ac: $63
	ld l, a                                          ; $40ad: $6f
	inc de                                           ; $40ae: $13
	rrca                                             ; $40af: $0f
	inc hl                                           ; $40b0: $23
	rra                                              ; $40b1: $1f
	ld b, e                                          ; $40b2: $43
	ccf                                              ; $40b3: $3f
	sub d                                            ; $40b4: $92
	db $ed                                           ; $40b5: $ed
	add b                                            ; $40b6: $80
	db $ed                                           ; $40b7: $ed

jr_018_40b8:
	add b                                            ; $40b8: $80
	db $e4                                           ; $40b9: $e4
	adc h                                            ; $40ba: $8c
	db $ec                                           ; $40bb: $ec
	adc h                                            ; $40bc: $8c
	db $ec                                           ; $40bd: $ec
	sub c                                            ; $40be: $91
	pop hl                                           ; $40bf: $e1
	adc c                                            ; $40c0: $89
	pop af                                           ; $40c1: $f1
	add h                                            ; $40c2: $84
	ld a, a                                          ; $40c3: $7f
	ret z                                            ; $40c4: $c8

	sbc [hl]                                         ; $40c5: $9e
	rst $38                                          ; $40c6: $ff
	ld e, a                                          ; $40c7: $5f
	xor $99                                          ; $40c8: $ee $99
	sub h                                            ; $40ca: $94
	db $e4                                           ; $40cb: $e4
	adc c                                            ; $40cc: $89
	pop af                                           ; $40cd: $f1
	inc bc                                           ; $40ce: $03
	rst $38                                          ; $40cf: $ff
	ld e, a                                          ; $40d0: $5f
	adc $9b                                          ; $40d1: $ce $9b
	inc sp                                           ; $40d3: $33
	cpl                                              ; $40d4: $2f
	inc hl                                           ; $40d5: $23
	rra                                              ; $40d6: $1f
	ld b, [hl]                                       ; $40d7: $46
	ldh a, [c]                                       ; $40d8: $f2
	ld c, [hl]                                       ; $40d9: $4e
	jp nc, $c27f                                     ; $40da: $d2 $7f $c2

	ld [hl], a                                       ; $40dd: $77
	db $fc                                           ; $40de: $fc
	ld d, a                                          ; $40df: $57
	cp [hl]                                          ; $40e0: $be
	ld [hl], a                                       ; $40e1: $77
	call c, $be57                                    ; $40e2: $dc $57 $be
	rst SubAFromDE                                          ; $40e5: $df
	ld a, a                                          ; $40e6: $7f
	rst SubAFromDE                                          ; $40e7: $df
	sbc a                                            ; $40e8: $9f
	rst SubAFromDE                                          ; $40e9: $df
	rst AddAOntoHL                                          ; $40ea: $ef
	db $db                                           ; $40eb: $db
	rst FarCall                                          ; $40ec: $f7
	sbc h                                            ; $40ed: $9c
	rst GetHLinHL                                          ; $40ee: $cf
	rst AddAOntoHL                                          ; $40ef: $ef
	rra                                              ; $40f0: $1f
	ld a, d                                          ; $40f1: $7a
	ldh a, [$df]                                     ; $40f2: $f0 $df

jr_018_40f4:
	rst $38                                          ; $40f4: $ff
	ld a, a                                          ; $40f5: $7f
	ld e, e                                          ; $40f6: $5b
	sub l                                            ; $40f7: $95
	ld [hl], e                                       ; $40f8: $73
	rrca                                             ; $40f9: $0f
	rla                                              ; $40fa: $17
	rrca                                             ; $40fb: $0f
	ld [hl], a                                       ; $40fc: $77
	rst $38                                          ; $40fd: $ff
	ccf                                              ; $40fe: $3f
	rst GetHLinHL                                          ; $40ff: $cf
	db $fc                                           ; $4100: $fc
	ldh a, [$7b]                                     ; $4101: $f0 $7b
	cp [hl]                                          ; $4103: $be
	ld [hl], a                                       ; $4104: $77
	ret nz                                           ; $4105: $c0

jr_018_4106:
	sbc h                                            ; $4106: $9c
	db $e4                                           ; $4107: $e4
	add b                                            ; $4108: $80
	ldh [$67], a                                     ; $4109: $e0 $67
	add b                                            ; $410b: $80
	ld [hl], e                                       ; $410c: $73
	ret nz                                           ; $410d: $c0

	sbc h                                            ; $410e: $9c
	sbc a                                            ; $410f: $9f
	inc bc                                           ; $4110: $03
	rrca                                             ; $4111: $0f
	ld l, a                                          ; $4112: $6f
	add b                                            ; $4113: $80
	sub h                                            ; $4114: $94
	nop                                              ; $4115: $00
	rst $38                                          ; $4116: $ff
	or $f9                                           ; $4117: $f6 $f9
	push af                                          ; $4119: $f5
	ld hl, sp-$08                                    ; $411a: $f8 $f8
	db $fc                                           ; $411c: $fc
	db $fc                                           ; $411d: $fc
	rst $38                                          ; $411e: $ff
	cp $7b                                           ; $411f: $fe $7b
	cp $7f                                           ; $4121: $fe $7f
	ld a, [$6798]                                    ; $4123: $fa $98 $67
	rst SubAFromBC                                          ; $4126: $e7
	rst SubAFromBC                                          ; $4127: $e7
	rra                                              ; $4128: $1f
	cpl                                              ; $4129: $2f
	rra                                              ; $412a: $1f
	ld l, a                                          ; $412b: $6f
	ld a, e                                          ; $412c: $7b
	cp h                                             ; $412d: $bc
	db $db                                           ; $412e: $db
	rst $38                                          ; $412f: $ff
	sbc [hl]                                         ; $4130: $9e
	db $fc                                           ; $4131: $fc
	ld a, e                                          ; $4132: $7b
	push hl                                          ; $4133: $e5
	sbc c                                            ; $4134: $99
	cp $fc                                           ; $4135: $fe $fc
	jp nz, Jump_018_7ec1                             ; $4137: $c2 $c1 $7e

	ccf                                              ; $413a: $3f
	ld [hl], a                                       ; $413b: $77
	ldh [$df], a                                     ; $413c: $e0 $df
	rst $38                                          ; $413e: $ff
	db $dd                                           ; $413f: $dd
	cp a                                             ; $4140: $bf
	rst SubAFromDE                                          ; $4141: $df
	rst SubAFromDE                                          ; $4142: $df
	rst SubAFromDE                                          ; $4143: $df
	rst SubAFromBC                                          ; $4144: $e7
	ld a, e                                          ; $4145: $7b
	inc b                                            ; $4146: $04
	call c, Call_018_7fff                            ; $4147: $dc $ff $7f
	sub b                                            ; $414a: $90
	ld [hl], e                                       ; $414b: $73
	sub $df                                          ; $414c: $d6 $df
	ld a, a                                          ; $414e: $7f
	rst SubAFromDE                                          ; $414f: $df
	ccf                                              ; $4150: $3f
	sbc e                                            ; $4151: $9b
	rra                                              ; $4152: $1f
	rst AddAOntoHL                                          ; $4153: $ef
	sbc a                                            ; $4154: $9f
	rst JumpTable                                          ; $4155: $c7
	ld c, d                                          ; $4156: $4a

jr_018_4157:
	or d                                             ; $4157: $b2
	rst SubAFromDE                                          ; $4158: $df
	ld hl, sp+$62                                    ; $4159: $f8 $62
	ret nz                                           ; $415b: $c0

	sbc h                                            ; $415c: $9c
	db $fd                                           ; $415d: $fd
	jr jr_018_419d                                   ; $415e: $18 $3d

	halt                                             ; $4160: $76
	ret nz                                           ; $4161: $c0

	ld h, d                                          ; $4162: $62
	and b                                            ; $4163: $a0
	sbc b                                            ; $4164: $98
	ld a, a                                          ; $4165: $7f
	ld sp, $1c79                                     ; $4166: $31 $79 $1c
	ld hl, sp+$0e                                    ; $4169: $f8 $0e
	db $fc                                           ; $416b: $fc
	push de                                          ; $416c: $d5
	rst $38                                          ; $416d: $ff
	rst SubAFromDE                                          ; $416e: $df
	ccf                                              ; $416f: $3f
	db $dd                                           ; $4170: $dd
	rst $38                                          ; $4171: $ff
	rst SubAFromDE                                          ; $4172: $df
	db $fd                                           ; $4173: $fd
	rst SubAFromDE                                          ; $4174: $df
	ldh a, [$7f]                                     ; $4175: $f0 $7f
	adc [hl]                                         ; $4177: $8e
	ld [hl], e                                       ; $4178: $73
	sub e                                            ; $4179: $93
	sbc $ff                                          ; $417a: $de $ff
	halt                                             ; $417c: $76
	cp h                                             ; $417d: $bc
	ld a, a                                          ; $417e: $7f
	cp [hl]                                          ; $417f: $be
	sub l                                            ; $4180: $95
	ld [hl], b                                       ; $4181: $70
	ld a, c                                          ; $4182: $79
	nop                                              ; $4183: $00
	jr c, jr_018_4106                                ; $4184: $38 $80

	dec a                                            ; $4186: $3d
	ld hl, sp-$03                                    ; $4187: $f8 $fd
	ldh a, [rIE]                                     ; $4189: $f0 $ff
	halt                                             ; $418b: $76
	sbc h                                            ; $418c: $9c
	ld d, a                                          ; $418d: $57
	cp [hl]                                          ; $418e: $be
	ld a, a                                          ; $418f: $7f
	ld b, b                                          ; $4190: $40
	ld a, a                                          ; $4191: $7f
	db $ec                                           ; $4192: $ec
	ld a, a                                          ; $4193: $7f
	ld a, $df                                        ; $4194: $3e $df
	ld hl, sp+$7f                                    ; $4196: $f8 $7f
	adc $7f                                          ; $4198: $ce $7f
	call $fe7f                                       ; $419a: $cd $7f $fe

jr_018_419d:
	ld l, e                                          ; $419d: $6b
	ld l, e                                          ; $419e: $6b
	ld h, d                                          ; $419f: $62
	ld h, b                                          ; $41a0: $60
	rst SubAFromDE                                          ; $41a1: $df
	cp $75                                           ; $41a2: $fe $75
	ldh [$7e], a                                     ; $41a4: $e0 $7e
	db $dd                                           ; $41a6: $dd
	adc b                                            ; $41a7: $88
	rst SubAFromDE                                          ; $41a8: $df
	sbc a                                            ; $41a9: $9f
	sbc a                                            ; $41aa: $9f
	rst GetHLinHL                                          ; $41ab: $cf
	rst AddAOntoHL                                          ; $41ac: $ef
	rst JumpTable                                          ; $41ad: $c7
	rst SubAFromBC                                          ; $41ae: $e7
	rst SubAFromBC                                          ; $41af: $e7
	db $e3                                           ; $41b0: $e3
	rst $38                                          ; $41b1: $ff
	ld b, e                                          ; $41b2: $43
	ccf                                              ; $41b3: $3f
	ld b, $fe                                        ; $41b4: $06 $fe
	inc c                                            ; $41b6: $0c
	inc a                                            ; $41b7: $3c
	ld bc, $0338                                     ; $41b8: $01 $38 $03
	ld a, c                                          ; $41bb: $79
	ccf                                              ; $41bc: $3f
	ld a, a                                          ; $41bd: $7f
	rra                                              ; $41be: $1f
	ld a, d                                          ; $41bf: $7a
	adc b                                            ; $41c0: $88
	rst SubAFromDE                                          ; $41c1: $df
	ld a, a                                          ; $41c2: $7f
	rst SubAFromDE                                          ; $41c3: $df
	rra                                              ; $41c4: $1f
	ld h, e                                          ; $41c5: $63
	inc de                                           ; $41c6: $13
	ld l, e                                          ; $41c7: $6b
	ld c, h                                          ; $41c8: $4c
	rst SubAFromDE                                          ; $41c9: $df
	cp $d7                                           ; $41ca: $fe $d7
	rst $38                                          ; $41cc: $ff
	ld a, a                                          ; $41cd: $7f
	add d                                            ; $41ce: $82
	sub a                                            ; $41cf: $97
	ld b, b                                          ; $41d0: $40
	ld a, [hl]                                       ; $41d1: $7e
	jr nz, jr_018_420d                               ; $41d2: $20 $39

	nop                                              ; $41d4: $00
	jr jr_018_4157                                   ; $41d5: $18 $80

	sbc l                                            ; $41d7: $9d
	ld [hl], a                                       ; $41d8: $77
	add d                                            ; $41d9: $82
	ld a, d                                          ; $41da: $7a
	ld l, b                                          ; $41db: $68
	ld a, d                                          ; $41dc: $7a
	or b                                             ; $41dd: $b0
	sub h                                            ; $41de: $94
	db $fd                                           ; $41df: $fd
	di                                               ; $41e0: $f3
	rst FarCall                                          ; $41e1: $f7
	di                                               ; $41e2: $f3
	di                                               ; $41e3: $f3
	rst SubAFromBC                                          ; $41e4: $e7
	rst AddAOntoHL                                          ; $41e5: $ef
	rst JumpTable                                          ; $41e6: $c7
	rst GetHLinHL                                          ; $41e7: $cf
	rst GetHLinHL                                          ; $41e8: $cf
	adc a                                            ; $41e9: $8f
	ld a, e                                          ; $41ea: $7b
	cp [hl]                                          ; $41eb: $be
	ld [hl], a                                       ; $41ec: $77
	cp d                                             ; $41ed: $ba
	add l                                            ; $41ee: $85
	ld b, a                                          ; $41ef: $47
	rst $38                                          ; $41f0: $ff
	ld [hl], a                                       ; $41f1: $77
	rst SubAFromBC                                          ; $41f2: $e7
	dec sp                                           ; $41f3: $3b
	di                                               ; $41f4: $f3
	dec e                                            ; $41f5: $1d
	ld sp, hl                                        ; $41f6: $f9
	ld [$82fc], sp                                   ; $41f7: $08 $fc $82
	pop af                                           ; $41fa: $f1
	ret nz                                           ; $41fb: $c0

	rst $38                                          ; $41fc: $ff
	ldh [$e4], a                                     ; $41fd: $e0 $e4
	ret nz                                           ; $41ff: $c0

	ldh [$a0], a                                     ; $4200: $e0 $a0
	sub l                                            ; $4202: $95
	ld h, b                                          ; $4203: $60
	dec [hl]                                         ; $4204: $35
	ld b, b                                          ; $4205: $40
	ld a, a                                          ; $4206: $7f
	nop                                              ; $4207: $00
	ld a, a                                          ; $4208: $7f

jr_018_4209:
	ld [hl], a                                       ; $4209: $77
	ret nc                                           ; $420a: $d0

	ld a, c                                          ; $420b: $79
	ld [hl], d                                       ; $420c: $72

jr_018_420d:
	sbc h                                            ; $420d: $9c
	ld hl, sp-$0d                                    ; $420e: $f8 $f3
	pop af                                           ; $4210: $f1
	ld l, l                                          ; $4211: $6d
	jr nc, jr_018_428b                               ; $4212: $30 $77

	ld [hl], b                                       ; $4214: $70
	ld a, c                                          ; $4215: $79
	ld d, d                                          ; $4216: $52
	sbc h                                            ; $4217: $9c
	ccf                                              ; $4218: $3f
	sbc a                                            ; $4219: $9f
	rra                                              ; $421a: $1f
	ld l, l                                          ; $421b: $6d
	db $10                                           ; $421c: $10
	ld d, a                                          ; $421d: $57
	add [hl]                                         ; $421e: $86
	ld [hl], a                                       ; $421f: $77
	adc b                                            ; $4220: $88
	ld h, a                                          ; $4221: $67
	or h                                             ; $4222: $b4
	ld a, a                                          ; $4223: $7f
	ld h, $99                                        ; $4224: $26 $99
	inc c                                            ; $4226: $0c
	db $fc                                           ; $4227: $fc
	dec b                                            ; $4228: $05
	db $fd                                           ; $4229: $fd
	di                                               ; $422a: $f3
	di                                               ; $422b: $f3
	ld l, a                                          ; $422c: $6f
	adc [hl]                                         ; $422d: $8e
	ld [hl], a                                       ; $422e: $77
	cp [hl]                                          ; $422f: $be
	sbc h                                            ; $4230: $9c
	rst SubAFromBC                                          ; $4231: $e7
	pop hl                                           ; $4232: $e1
	bit 7, e                                         ; $4233: $cb $7b
	ret nz                                           ; $4235: $c0

	ld a, [hl]                                       ; $4236: $7e
	adc $67                                          ; $4237: $ce $67
	cp [hl]                                          ; $4239: $be
	sbc h                                            ; $423a: $9c
	rst GetHLinHL                                          ; $423b: $cf
	rrca                                             ; $423c: $0f
	and a                                            ; $423d: $a7
	ld a, e                                          ; $423e: $7b
	ret nz                                           ; $423f: $c0

	ld l, [hl]                                       ; $4240: $6e
	call z, $ffd7                                    ; $4241: $cc $d7 $ff
	sbc [hl]                                         ; $4244: $9e
	ret nz                                           ; $4245: $c0

	ld a, d                                          ; $4246: $7a
	ld d, $77                                        ; $4247: $16 $77
	add h                                            ; $4249: $84
	sub a                                            ; $424a: $97
	ret nz                                           ; $424b: $c0

	ld a, a                                          ; $424c: $7f
	add b                                            ; $424d: $80
	rst $38                                          ; $424e: $ff
	nop                                              ; $424f: $00
	rst $38                                          ; $4250: $ff
	db $fc                                           ; $4251: $fc
	ldh a, [$6f]                                     ; $4252: $f0 $6f
	jp nz, $df7e                                     ; $4254: $c2 $7e $df

Call_018_4257:
	ld c, a                                          ; $4257: $4f
	add b                                            ; $4258: $80
	rst SubAFromDE                                          ; $4259: $df
	ccf                                              ; $425a: $3f
	ld c, a                                          ; $425b: $4f
	add b                                            ; $425c: $80
	rst SubAFromDE                                          ; $425d: $df
	cp $df                                           ; $425e: $fe $df
	ld sp, hl                                        ; $4260: $f9
	rst SubAFromDE                                          ; $4261: $df
	rst SubAFromBC                                          ; $4262: $e7
	rst SubAFromDE                                          ; $4263: $df
	rst SubAFromDE                                          ; $4264: $df
	db $dd                                           ; $4265: $dd
	cp a                                             ; $4266: $bf
	db $dd                                           ; $4267: $dd
	ld a, a                                          ; $4268: $7f
	ld a, e                                          ; $4269: $7b
	xor d                                            ; $426a: $aa
	ld l, d                                          ; $426b: $6a
	db $ec                                           ; $426c: $ec
	ld l, a                                          ; $426d: $6f
	jr nz, jr_018_4209                               ; $426e: $20 $99

	ld b, [hl]                                       ; $4270: $46
	cp $70                                           ; $4271: $fe $70
	ldh [$3d], a                                     ; $4273: $e0 $3d
	pop af                                           ; $4275: $f1
	ld [hl], a                                       ; $4276: $77

Call_018_4277:
	or $77                                           ; $4277: $f6 $77
	jr nz, jr_018_42f2                               ; $4279: $20 $77

	sbc h                                            ; $427b: $9c
	sbc e                                            ; $427c: $9b
	nop                                              ; $427d: $00
	dec [hl]                                         ; $427e: $35
	ldh [$f5], a                                     ; $427f: $e0 $f5
	ld [hl], d                                       ; $4281: $72
	db $f4                                           ; $4282: $f4
	sbc [hl]                                         ; $4283: $9e
	db $fd                                           ; $4284: $fd
	db $dd                                           ; $4285: $dd
	ld sp, hl                                        ; $4286: $f9
	ld a, c                                          ; $4287: $79
	call c, $cc6a                                    ; $4288: $dc $6a $cc

jr_018_428b:
	ld l, [hl]                                       ; $428b: $6e
	ld h, d                                          ; $428c: $62
	ld a, a                                          ; $428d: $7f
	cp $7f                                           ; $428e: $fe $7f
	and b                                            ; $4290: $a0
	sub a                                            ; $4291: $97
	ld c, a                                          ; $4292: $4f
	adc a                                            ; $4293: $8f
	cpl                                              ; $4294: $2f
	rst GetHLinHL                                          ; $4295: $cf
	rrca                                             ; $4296: $0f
	rst $38                                          ; $4297: $ff
	add l                                            ; $4298: $85
	ld sp, hl                                        ; $4299: $f9
	halt                                             ; $429a: $76
	nop                                              ; $429b: $00
	adc [hl]                                         ; $429c: $8e
	ldh a, [$f9]                                     ; $429d: $f0 $f9
	ldh a, [c]                                       ; $429f: $f2
	pop af                                           ; $42a0: $f1
	db $e4                                           ; $42a1: $e4
	db $e3                                           ; $42a2: $e3
	add sp, -$19                                     ; $42a3: $e8 $e7
	ldh [rIE], a                                     ; $42a5: $e0 $ff
	rlca                                             ; $42a7: $07
	ld a, a                                          ; $42a8: $7f
	rst JumpTable                                          ; $42a9: $c7
	cp a                                             ; $42aa: $bf
	ld b, a                                          ; $42ab: $47
	cp a                                             ; $42ac: $bf
	ld b, a                                          ; $42ad: $47
	ld a, b                                          ; $42ae: $78
	ld l, [hl]                                       ; $42af: $6e
	sbc h                                            ; $42b0: $9c
	add a                                            ; $42b1: $87
	ld a, a                                          ; $42b2: $7f
	rrca                                             ; $42b3: $0f
	ld a, e                                          ; $42b4: $7b
	or b                                             ; $42b5: $b0
	sub e                                            ; $42b6: $93
	inc h                                            ; $42b7: $24
	sub d                                            ; $42b8: $92
	ld sp, $33b1                                     ; $42b9: $31 $b1 $33
	or e                                             ; $42bc: $b3
	db $10                                           ; $42bd: $10
	sub b                                            ; $42be: $90
	ld c, d                                          ; $42bf: $4a
	adc d                                            ; $42c0: $8a
	inc h                                            ; $42c1: $24
	call nz, $a477                                   ; $42c2: $c4 $77 $a4
	ld l, a                                          ; $42c5: $6f
	ld [hl], d                                       ; $42c6: $72
	db $dd                                           ; $42c7: $dd
	db $fd                                           ; $42c8: $fd
	db $db                                           ; $42c9: $db
	ei                                               ; $42ca: $fb
	rst SubAFromDE                                          ; $42cb: $df
	ldh [$df], a                                     ; $42cc: $e0 $df
	sbc a                                            ; $42ce: $9f
	sbc [hl]                                         ; $42cf: $9e
	ld [hl], b                                       ; $42d0: $70
	ld [hl], d                                       ; $42d1: $72
	cp d                                             ; $42d2: $ba
	sub c                                            ; $42d3: $91
	add b                                            ; $42d4: $80
	db $e3                                           ; $42d5: $e3
	nop                                              ; $42d6: $00
	pop bc                                           ; $42d7: $c1
	nop                                              ; $42d8: $00
	cp [hl]                                          ; $42d9: $be
	rra                                              ; $42da: $1f
	rra                                              ; $42db: $1f
	rst SubAFromBC                                          ; $42dc: $e7
	rst SubAFromBC                                          ; $42dd: $e7
	ld a, c                                          ; $42de: $79
	ld sp, hl                                        ; $42df: $f9
	ld e, $fe                                        ; $42e0: $1e $fe
	ld [hl], a                                       ; $42e2: $77
	call nz, $967f                                   ; $42e3: $c4 $7f $96
	ld [hl], l                                       ; $42e6: $75
	ld [de], a                                       ; $42e7: $12
	db $db                                           ; $42e8: $db
	rst $38                                          ; $42e9: $ff
	db $dd                                           ; $42ea: $dd
	ld a, a                                          ; $42eb: $7f
	ld l, l                                          ; $42ec: $6d
	ld h, h                                          ; $42ed: $64
	push de                                          ; $42ee: $d5
	rst SubAFromDE                                          ; $42ef: $df
	rst SubAFromDE                                          ; $42f0: $df
	cp a                                             ; $42f1: $bf

jr_018_42f2:
	ld a, [hl]                                       ; $42f2: $7e
	ld c, h                                          ; $42f3: $4c
	ld e, a                                          ; $42f4: $5f
	call nz, $f07e                                   ; $42f5: $c4 $7e $f0
	sbc h                                            ; $42f8: $9c
	ld c, b                                          ; $42f9: $48
	or [hl]                                          ; $42fa: $b6
	ld a, a                                          ; $42fb: $7f
	ld [hl], e                                       ; $42fc: $73
	jr nc, @+$71                                     ; $42fd: $30 $6f

	call nz, $fe63                                   ; $42ff: $c4 $63 $fe
	sbc h                                            ; $4302: $9c
	ld a, a                                          ; $4303: $7f
	ld b, a                                          ; $4304: $47
	ccf                                              ; $4305: $3f
	ld [hl], a                                       ; $4306: $77
	cp $77                                           ; $4307: $fe $77
	ld l, h                                          ; $4309: $6c
	ld [hl], a                                       ; $430a: $77
	call c, Call_018_6c7f                            ; $430b: $dc $7f $6c
	ld a, a                                          ; $430e: $7f
	ld l, [hl]                                       ; $430f: $6e
	ld a, a                                          ; $4310: $7f
	cp $9d                                           ; $4311: $fe $9d
	ld de, $7791                                     ; $4313: $11 $91 $77
	ld l, h                                          ; $4316: $6c
	db $dd                                           ; $4317: $dd
	rst $38                                          ; $4318: $ff
	ld d, a                                          ; $4319: $57
	cp h                                             ; $431a: $bc
	ld [hl], e                                       ; $431b: $73
	sub h                                            ; $431c: $94
	ld e, e                                          ; $431d: $5b
	cp h                                             ; $431e: $bc
	db $d3                                           ; $431f: $d3
	ei                                               ; $4320: $fb
	rst SubAFromDE                                          ; $4321: $df
	db $fd                                           ; $4322: $fd
	ld c, h                                          ; $4323: $4c
	ld h, d                                          ; $4324: $62
	sbc l                                            ; $4325: $9d
	and e                                            ; $4326: $a3
	sbc a                                            ; $4327: $9f
	ld c, h                                          ; $4328: $4c
	ld b, d                                          ; $4329: $42
	sbc h                                            ; $432a: $9c
	adc d                                            ; $432b: $8a
	ldh a, [c]                                       ; $432c: $f2
	ldh [$7a], a                                     ; $432d: $e0 $7a
	ld c, [hl]                                       ; $432f: $4e
	push de                                          ; $4330: $d5
	rra                                              ; $4331: $1f
	ld [hl], d                                       ; $4332: $72
	ld c, h                                          ; $4333: $4c

jr_018_4334:
	ld a, e                                          ; $4334: $7b
	cp $7b                                           ; $4335: $fe $7b
	add sp, $7b                                      ; $4337: $e8 $7b
	xor d                                            ; $4339: $aa
	ld [hl], e                                       ; $433a: $73
	pop af                                           ; $433b: $f1
	sbc l                                            ; $433c: $9d
	rst $38                                          ; $433d: $ff
	ld bc, $fe7b                                     ; $433e: $01 $7b $fe
	ld a, a                                          ; $4341: $7f
	cp b                                             ; $4342: $b8
	rst SubAFromDE                                          ; $4343: $df
	cp $dd                                           ; $4344: $fe $dd
	db $fc                                           ; $4346: $fc
	dec [hl]                                         ; $4347: $35
	add h                                            ; $4348: $84
	call c, $deff                                    ; $4349: $dc $ff $de
	ld a, a                                          ; $434c: $7f
	ld h, a                                          ; $434d: $67
	ld hl, sp-$25                                    ; $434e: $f8 $db
	rra                                              ; $4350: $1f
	sbc l                                            ; $4351: $9d
	jr nc, jr_018_4334                               ; $4352: $30 $e0

	db $db                                           ; $4354: $db
	rra                                              ; $4355: $1f
	sbc [hl]                                         ; $4356: $9e
	ccf                                              ; $4357: $3f
	sbc $ff                                          ; $4358: $de $ff
	rst SubAFromDE                                          ; $435a: $df
	ret nz                                           ; $435b: $c0

	sbc e                                            ; $435c: $9b
	ldh [$3f], a                                     ; $435d: $e0 $3f
	rra                                              ; $435f: $1f
	rra                                              ; $4360: $1f
	ld [hl], e                                       ; $4361: $73
	ld hl, sp-$24                                    ; $4362: $f8 $dc
	rst $38                                          ; $4364: $ff
	rst SubAFromDE                                          ; $4365: $df
	ld bc, $039b                                     ; $4366: $01 $9b $03
	cp $fc                                           ; $4369: $fe $fc
	db $fc                                           ; $436b: $fc
	ld h, a                                          ; $436c: $67
	ld hl, sp-$22                                    ; $436d: $f8 $de
	db $fc                                           ; $436f: $fc
	sbc d                                            ; $4370: $9a
	cp $03                                           ; $4371: $fe $03
	ld bc, $ff01                                     ; $4373: $01 $01 $ff
	ld h, a                                          ; $4376: $67
	ld hl, sp+$77                                    ; $4377: $f8 $77
	res 3, h                                         ; $4379: $cb $9c
	ldh [$c0], a                                     ; $437b: $e0 $c0
	ret nz                                           ; $437d: $c0

	call c, Call_018_77ff                            ; $437e: $dc $ff $77
	ld hl, sp-$23                                    ; $4381: $f8 $dd
	ld a, a                                          ; $4383: $7f
	push de                                          ; $4384: $d5
	rst $38                                          ; $4385: $ff
	ld h, a                                          ; $4386: $67
	ret c                                            ; $4387: $d8

	db $dd                                           ; $4388: $dd
	rst $38                                          ; $4389: $ff
	ld d, a                                          ; $438a: $57
	ret nc                                           ; $438b: $d0

	ld h, a                                          ; $438c: $67
	ld hl, sp+$67                                    ; $438d: $f8 $67
	ret nc                                           ; $438f: $d0

	ld e, a                                          ; $4390: $5f
	ret z                                            ; $4391: $c8

	ld h, a                                          ; $4392: $67
	add b                                            ; $4393: $80
	sbc $ff                                          ; $4394: $de $ff
	ld a, e                                          ; $4396: $7b
	ld hl, sp+$57                                    ; $4397: $f8 $57
	sub b                                            ; $4399: $90
	db $dd                                           ; $439a: $dd
	rst $38                                          ; $439b: $ff
	ld d, a                                          ; $439c: $57
	sub b                                            ; $439d: $90
	ld [hl], e                                       ; $439e: $73
	xor h                                            ; $439f: $ac
	ld l, a                                          ; $43a0: $6f
	ld l, h                                          ; $43a1: $6c
	sbc [hl]                                         ; $43a2: $9e
	db $fc                                           ; $43a3: $fc
	ld h, a                                          ; $43a4: $67
	ld hl, sp+$53                                    ; $43a5: $f8 $53
	ld b, b                                          ; $43a7: $40
	ld [hl], e                                       ; $43a8: $73
	ld hl, sp+$5b                                    ; $43a9: $f8 $5b
	ld b, b                                          ; $43ab: $40
	reti                                             ; $43ac: $d9


	rst $38                                          ; $43ad: $ff
	ld e, e                                          ; $43ae: $5b
	ld e, h                                          ; $43af: $5c
	ld [hl], a                                       ; $43b0: $77
	call c, $1fdd                                    ; $43b1: $dc $dd $1f
	ld l, a                                          ; $43b4: $6f
	inc d                                            ; $43b5: $14
	ld [hl], e                                       ; $43b6: $73
	and b                                            ; $43b7: $a0
	ld [hl], d                                       ; $43b8: $72
	ldh a, [$5b]                                     ; $43b9: $f0 $5b
	ld b, b                                          ; $43bb: $40
	sbc $fc                                          ; $43bc: $de $fc
	sbc l                                            ; $43be: $9d
	ld b, $03                                        ; $43bf: $06 $03
	db $db                                           ; $43c1: $db
	db $fc                                           ; $43c2: $fc
	ld a, a                                          ; $43c3: $7f
	ld a, l                                          ; $43c4: $7d
	jp c, Jump_018_637f                              ; $43c5: $da $7f $63

	ld hl, sp+$5f                                    ; $43c8: $f8 $5f
	rst FarCall                                          ; $43ca: $f7
	scf                                              ; $43cb: $37
	ret nz                                           ; $43cc: $c0

	sbc l                                            ; $43cd: $9d
	ldh a, [$e0]                                     ; $43ce: $f0 $e0
	ld c, a                                          ; $43d0: $4f
	ret nz                                           ; $43d1: $c0

	ld a, a                                          ; $43d2: $7f
	ld hl, sp+$63                                    ; $43d3: $f8 $63
	ld d, b                                          ; $43d5: $50
	ld b, a                                          ; $43d6: $47
	add b                                            ; $43d7: $80
	ld l, e                                          ; $43d8: $6b
	ld hl, sp+$47                                    ; $43d9: $f8 $47
	sbc a                                            ; $43db: $9f
	ld h, e                                          ; $43dc: $63
	jr z, jr_018_444a                                ; $43dd: $28 $6b

	ld hl, sp+$63                                    ; $43df: $f8 $63
	ret c                                            ; $43e1: $d8

	ld e, a                                          ; $43e2: $5f
	dec [hl]                                         ; $43e3: $35
	ld d, d                                          ; $43e4: $52
	adc l                                            ; $43e5: $8d

jr_018_43e6:
	ld c, [hl]                                       ; $43e6: $4e
	jr nc, jr_018_4468                               ; $43e7: $30 $7f

	ld hl, sp+$67                                    ; $43e9: $f8 $67
	adc b                                            ; $43eb: $88
	db $db                                           ; $43ec: $db
	rst $38                                          ; $43ed: $ff
	sbc l                                            ; $43ee: $9d
	rlca                                             ; $43ef: $07
	inc bc                                           ; $43f0: $03
	ld sp, hl                                        ; $43f1: $f9
	reti                                             ; $43f2: $d9


	rst $38                                          ; $43f3: $ff
	ld a, [$019e]                                    ; $43f4: $fa $9e $01

jr_018_43f7:
	ld c, e                                          ; $43f7: $4b
	ld hl, sp-$62                                    ; $43f8: $f8 $9e
	add b                                            ; $43fa: $80
	ld h, a                                          ; $43fb: $67
	ld hl, sp+$7f                                    ; $43fc: $f8 $7f
	adc b                                            ; $43fe: $88
	rst SubAFromDE                                          ; $43ff: $df
	cp $77                                           ; $4400: $fe $77
	rlca                                             ; $4402: $07
	sub a                                            ; $4403: $97
	ld [bc], a                                       ; $4404: $02
	inc b                                            ; $4405: $04
	inc b                                            ; $4406: $04
	ld [$1008], sp                                   ; $4407: $08 $08 $10
	db $10                                           ; $440a: $10
	jr nz, jr_018_43e6                               ; $440b: $20 $d9

	rst $38                                          ; $440d: $ff
	ld a, a                                          ; $440e: $7f
	db $f4                                           ; $440f: $f4
	ei                                               ; $4410: $fb
	sbc l                                            ; $4411: $9d
	rrca                                             ; $4412: $0f
	rra                                              ; $4413: $1f
	ld l, a                                          ; $4414: $6f
	add h                                            ; $4415: $84
	sbc h                                            ; $4416: $9c
	ld c, $18                                        ; $4417: $0e $18
	ld h, b                                          ; $4419: $60
	ld [hl], e                                       ; $441a: $73
	call z, $f0de                                    ; $441b: $cc $de $f0
	sbc l                                            ; $441e: $9d
	pop af                                           ; $441f: $f1
	rst AddAOntoHL                                          ; $4420: $ef
	sbc $ff                                          ; $4421: $de $ff
	sub a                                            ; $4423: $97
	ld h, b                                          ; $4424: $60
	ld b, b                                          ; $4425: $40
	ld b, b                                          ; $4426: $40
	ld b, c                                          ; $4427: $41
	ld c, [hl]                                       ; $4428: $4e
	ld [hl], b                                       ; $4429: $70
	ret nz                                           ; $442a: $c0

	add b                                            ; $442b: $80
	reti                                             ; $442c: $d9


	rst $38                                          ; $442d: $ff
	sbc [hl]                                         ; $442e: $9e
	jr nz, jr_018_447c                               ; $442f: $20 $4b

	adc b                                            ; $4431: $88
	sbc l                                            ; $4432: $9d
	ld hl, sp-$10                                    ; $4433: $f8 $f0
	ld a, d                                          ; $4435: $7a
	ld a, [hl-]                                      ; $4436: $3a
	rst SubAFromDE                                          ; $4437: $df
	add b                                            ; $4438: $80
	ld a, a                                          ; $4439: $7f
	ldh a, [$7d]                                     ; $443a: $f0 $7d
	ld a, [hl]                                       ; $443c: $7e
	sbc [hl]                                         ; $443d: $9e
	rrca                                             ; $443e: $0f
	ld a, d                                          ; $443f: $7a
	jr nz, jr_018_44c1                               ; $4440: $20 $7f

	ld hl, sp+$7f                                    ; $4442: $f8 $7f
	ld sp, hl                                        ; $4444: $f9
	ld a, a                                          ; $4445: $7f
	ld h, e                                          ; $4446: $63
	ld [hl], a                                       ; $4447: $77
	ld hl, sp-$62                                    ; $4448: $f8 $9e

jr_018_444a:
	cp $de                                           ; $444a: $fe $de
	ld hl, sp-$6e                                    ; $444c: $f8 $92
	add sp, -$20                                     ; $444e: $e8 $e0
	and b                                            ; $4450: $a0
	ld c, b                                          ; $4451: $48
	ld d, b                                          ; $4452: $50
	ld h, b                                          ; $4453: $60
	ld h, b                                          ; $4454: $60
	jr nz, jr_018_43f7                               ; $4455: $20 $a0

	ld h, b                                          ; $4457: $60
	jr nz, jr_018_44b9                               ; $4458: $20 $5f

	cp a                                             ; $445a: $bf
	ld h, [hl]                                       ; $445b: $66
	or [hl]                                          ; $445c: $b6
	sub l                                            ; $445d: $95
	ldh a, [hDisp0_WY]                                     ; $445e: $f0 $88
	ld b, $01                                        ; $4460: $06 $01
	ld bc, $3e02                                     ; $4462: $01 $02 $3e
	ld a, [hl]                                       ; $4465: $7e
	cp $fd                                           ; $4466: $fe $fd

jr_018_4468:
	db $dd                                           ; $4468: $dd
	rst $38                                          ; $4469: $ff
	sub a                                            ; $446a: $97
	inc hl                                           ; $446b: $23
	ld e, a                                          ; $446c: $5f
	or e                                             ; $446d: $b3
	ld h, a                                          ; $446e: $67
	rst JumpTable                                          ; $446f: $c7
	add [hl]                                         ; $4470: $86
	ld c, $0c                                        ; $4471: $0e $0c
	pop de                                           ; $4473: $d1
	rst $38                                          ; $4474: $ff
	ld a, e                                          ; $4475: $7b
	ld l, c                                          ; $4476: $69
	ld a, d                                          ; $4477: $7a
	rla                                              ; $4478: $17
	sbc l                                            ; $4479: $9d
	inc bc                                           ; $447a: $03
	rlca                                             ; $447b: $07

jr_018_447c:
	ld [hl], a                                       ; $447c: $77
	inc [hl]                                         ; $447d: $34
	ld [hl], a                                       ; $447e: $77
	ld hl, sp+$72                                    ; $447f: $f8 $72
	ret                                              ; $4481: $c9


	sbc $f8                                          ; $4482: $de $f8
	sbc b                                            ; $4484: $98
	adc b                                            ; $4485: $88
	ld c, b                                          ; $4486: $48
	ld d, b                                          ; $4487: $50
	ld d, b                                          ; $4488: $50
	ld [hl], b                                       ; $4489: $70
	jr nc, @+$22                                     ; $448a: $30 $20

	ld h, a                                          ; $448c: $67
	ld b, b                                          ; $448d: $40
	ld a, c                                          ; $448e: $79
	ldh a, [$dc]                                     ; $448f: $f0 $dc
	rst $38                                          ; $4491: $ff
	sbc e                                            ; $4492: $9b
	cp $fb                                           ; $4493: $fe $fb
	rst $38                                          ; $4495: $ff
	db $fd                                           ; $4496: $fd
	ld a, e                                          ; $4497: $7b
	ld [hl+], a                                      ; $4498: $22
	sbc [hl]                                         ; $4499: $9e
	jp nz, $3b7b                                     ; $449a: $c2 $7b $3b

	ld a, a                                          ; $449d: $7f
	xor c                                            ; $449e: $a9
	rst SubAFromDE                                          ; $449f: $df
	cp $95                                           ; $44a0: $fe $95
	rst SubAFromDE                                          ; $44a2: $df
	ld a, a                                          ; $44a3: $7f
	ld a, [$3d9b]                                    ; $44a4: $fa $9b $3d
	cp $8e                                           ; $44a7: $fe $8e
	ld [hl], c                                       ; $44a9: $71
	ld h, e                                          ; $44aa: $63
	ld l, $79                                        ; $44ab: $2e $79
	add e                                            ; $44ad: $83
	db $dd                                           ; $44ae: $dd
	rst $38                                          ; $44af: $ff
	add e                                            ; $44b0: $83
	ld l, a                                          ; $44b1: $6f
	sub d                                            ; $44b2: $92
	or h                                             ; $44b3: $b4
	or h                                             ; $44b4: $b4
	dec a                                            ; $44b5: $3d
	rra                                              ; $44b6: $1f
	add a                                            ; $44b7: $87
	pop bc                                           ; $44b8: $c1

jr_018_44b9:
	ld a, b                                          ; $44b9: $78
	rst $38                                          ; $44ba: $ff
	rst FarCall                                          ; $44bb: $f7
	rst FarCall                                          ; $44bc: $f7
	ld a, a                                          ; $44bd: $7f
	cp a                                             ; $44be: $bf
	rst SubAFromDE                                          ; $44bf: $df
	rst FarCall                                          ; $44c0: $f7

jr_018_44c1:
	cp $23                                           ; $44c1: $fe $23
	ld h, c                                          ; $44c3: $61
	sbc $9b                                          ; $44c4: $de $9b
	cp c                                             ; $44c6: $b9
	cp c                                             ; $44c7: $b9
	ldh a, [c]                                       ; $44c8: $f2
	ld b, $ff                                        ; $44c9: $06 $ff
	rst AddAOntoHL                                          ; $44cb: $ef
	rst SubAFromDE                                          ; $44cc: $df
	ld [hl], e                                       ; $44cd: $73
	ret nz                                           ; $44ce: $c0

	ld [hl], d                                       ; $44cf: $72
	ld a, h                                          ; $44d0: $7c
	rst SubAFromDE                                          ; $44d1: $df
	cpl                                              ; $44d2: $2f
	sbc [hl]                                         ; $44d3: $9e
	ld l, e                                          ; $44d4: $6b
	ld l, d                                          ; $44d5: $6a
	ld [hl], d                                       ; $44d6: $72
	ld h, c                                          ; $44d7: $61
	and l                                            ; $44d8: $a5
	ld [hl], a                                       ; $44d9: $77
	ld hl, $c0df                                     ; $44da: $21 $df $c0
	rst SubAFromDE                                          ; $44dd: $df
	ld b, b                                          ; $44de: $40
	ld a, a                                          ; $44df: $7f
	ld d, d                                          ; $44e0: $52
	sbc $fd                                          ; $44e1: $de $fd
	db $dd                                           ; $44e3: $dd
	rst $38                                          ; $44e4: $ff
	db $dd                                           ; $44e5: $dd
	db $fd                                           ; $44e6: $fd
	ld a, d                                          ; $44e7: $7a
	or l                                             ; $44e8: $b5
	ld a, e                                          ; $44e9: $7b
	db $dd                                           ; $44ea: $dd
	call c, $9cff                                    ; $44eb: $dc $ff $9c
	rst JumpTable                                          ; $44ee: $c7
	rst GetHLinHL                                          ; $44ef: $cf
	adc a                                            ; $44f0: $8f
	ld a, c                                          ; $44f1: $79
	ld [hl], $94                                     ; $44f2: $36 $94
	daa                                              ; $44f4: $27
	cpl                                              ; $44f5: $2f
	jp nc, $9495                                     ; $44f6: $d2 $95 $94

	and l                                            ; $44f9: $a5
	dec hl                                           ; $44fa: $2b
	cpl                                              ; $44fb: $2f
	cpl                                              ; $44fc: $2f
	ld e, a                                          ; $44fd: $5f
	ld [hl], a                                       ; $44fe: $77
	ld [hl], a                                       ; $44ff: $77
	or e                                             ; $4500: $b3
	ld a, e                                          ; $4501: $7b
	ld d, [hl]                                       ; $4502: $56
	ld a, c                                          ; $4503: $79
	inc c                                            ; $4504: $0c
	db $dd                                           ; $4505: $dd
	rrca                                             ; $4506: $0f
	sub [hl]                                         ; $4507: $96
	rra                                              ; $4508: $1f
	ld bc, $0202                                     ; $4509: $01 $02 $02
	inc b                                            ; $450c: $04
	dec b                                            ; $450d: $05
	add hl, bc                                       ; $450e: $09
	add hl, bc                                       ; $450f: $09
	ld de, $dd75                                     ; $4510: $11 $75 $dd
	sbc e                                            ; $4513: $9b
	ld hl, sp-$09                                    ; $4514: $f8 $f7
	db $e3                                           ; $4516: $e3
	call nz, $cd76                                   ; $4517: $c4 $76 $cd
	db $dd                                           ; $451a: $dd
	rst $38                                          ; $451b: $ff
	sbc h                                            ; $451c: $9c
	pop af                                           ; $451d: $f1
	add $ff                                          ; $451e: $c6 $ff
	ld a, d                                          ; $4520: $7a
	inc a                                            ; $4521: $3c
	ld a, a                                          ; $4522: $7f
	pop bc                                           ; $4523: $c1
	sbc l                                            ; $4524: $9d
	ld sp, hl                                        ; $4525: $f9
	rst SubAFromBC                                          ; $4526: $e7
	ld a, d                                          ; $4527: $7a
	ld [hl-], a                                      ; $4528: $32
	ld a, e                                          ; $4529: $7b
	xor $94                                          ; $452a: $ee $94
	add c                                            ; $452c: $81
	rra                                              ; $452d: $1f
	ld h, c                                          ; $452e: $61
	rst $38                                          ; $452f: $ff
	jr c, jr_018_4541                                ; $4530: $38 $0f

	db $e3                                           ; $4532: $e3
	add hl, sp                                       ; $4533: $39
	rst SubAFromBC                                          ; $4534: $e7
	sbc a                                            ; $4535: $9f
	rst FarCall                                          ; $4536: $f7
	ld l, h                                          ; $4537: $6c
	call $3295                                       ; $4538: $cd $95 $32
	dec h                                            ; $453b: $25
	or [hl]                                          ; $453c: $b6
	xor h                                            ; $453d: $ac
	cp b                                             ; $453e: $b8
	xor [hl]                                         ; $453f: $ae
	cp a                                             ; $4540: $bf

jr_018_4541:
	ld a, a                                          ; $4541: $7f
	ld a, e                                          ; $4542: $7b
	rst FarCall                                          ; $4543: $f7
	ld [hl], e                                       ; $4544: $73
	rst AddAOntoHL                                          ; $4545: $ef
	sub a                                            ; $4546: $97
	sbc [hl]                                         ; $4547: $9e
	rlca                                             ; $4548: $07
	ld hl, sp+$0e                                    ; $4549: $f8 $0e
	ld bc, $1c00                                     ; $454b: $01 $00 $1c
	db $e3                                           ; $454e: $e3
	ld [hl], d                                       ; $454f: $72
	ld [bc], a                                       ; $4550: $02
	sbc [hl]                                         ; $4551: $9e
	ld sp, hl                                        ; $4552: $f9
	ld a, d                                          ; $4553: $7a
	ld c, b                                          ; $4554: $48
	ld a, a                                          ; $4555: $7f
	or c                                             ; $4556: $b1
	sbc d                                            ; $4557: $9a
	ld a, $8f                                        ; $4558: $3e $8f
	ld c, a                                          ; $455a: $4f
	ld de, $7b08                                     ; $455b: $11 $08 $7b
	ld [de], a                                       ; $455e: $12
	sbc $ff                                          ; $455f: $de $ff
	ld a, [hl]                                       ; $4561: $7e
	and e                                            ; $4562: $a3
	sub [hl]                                         ; $4563: $96
	dec bc                                           ; $4564: $0b
	adc e                                            ; $4565: $8b
	dec bc                                           ; $4566: $0b
	scf                                              ; $4567: $37
	call $8f19                                       ; $4568: $cd $19 $8f
	rst $38                                          ; $456b: $ff
	rst SubAFromDE                                          ; $456c: $df
	ld h, a                                          ; $456d: $67
	ld h, a                                          ; $456e: $67
	ld a, e                                          ; $456f: $7b
	ld b, [hl]                                       ; $4570: $46
	sbc [hl]                                         ; $4571: $9e
	ldh [$7a], a                                     ; $4572: $e0 $7a
	add l                                            ; $4574: $85
	sbc [hl]                                         ; $4575: $9e

jr_018_4576:
	jr c, jr_018_45f3                                ; $4576: $38 $7b

	ld b, h                                          ; $4578: $44
	rst SubAFromDE                                          ; $4579: $df
	jr nz, jr_018_45e2                               ; $457a: $20 $66

	ld d, b                                          ; $457c: $50
	rst SubAFromDE                                          ; $457d: $df
	cp $9d                                           ; $457e: $fe $9d
	add e                                            ; $4580: $83
	inc bc                                           ; $4581: $03
	ld a, e                                          ; $4582: $7b
	ld l, a                                          ; $4583: $6f
	rst SubAFromDE                                          ; $4584: $df
	inc b                                            ; $4585: $04
	sbc d                                            ; $4586: $9a
	adc b                                            ; $4587: $88
	ld a, a                                          ; $4588: $7f
	ld b, e                                          ; $4589: $43
	rst JumpTable                                          ; $458a: $c7
	rst GetHLinHL                                          ; $458b: $cf
	ld [hl], a                                       ; $458c: $77
	rla                                              ; $458d: $17
	sub [hl]                                         ; $458e: $96
	pop af                                           ; $458f: $f1
	pop bc                                           ; $4590: $c1
	add $cc                                          ; $4591: $c6 $cc
	ld hl, sp-$20                                    ; $4593: $f8 $e0
	rst SubAFromBC                                          ; $4595: $e7
	add sp, -$03                                     ; $4596: $e8 $fd
	ld a, d                                          ; $4598: $7a
	pop bc                                           ; $4599: $c1
	ld a, [hl]                                       ; $459a: $7e

Call_018_459b:
	ret nz                                           ; $459b: $c0

	rst SubAFromDE                                          ; $459c: $df
	cp $d4                                           ; $459d: $fe $d4
	rst $38                                          ; $459f: $ff
	ld e, a                                          ; $45a0: $5f
	ldh a, [hDisp1_WX]                                     ; $45a1: $f0 $96
	cp $c9                                           ; $45a3: $fe $c9
	sub d                                            ; $45a5: $92
	and h                                            ; $45a6: $a4
	add hl, hl                                       ; $45a7: $29
	ld b, d                                          ; $45a8: $42
	ld b, h                                          ; $45a9: $44
	adc c                                            ; $45aa: $89
	sub d                                            ; $45ab: $92
	reti                                             ; $45ac: $d9


	rst $38                                          ; $45ad: $ff
	ld a, l                                          ; $45ae: $7d
	reti                                             ; $45af: $d9


	adc c                                            ; $45b0: $89
	add e                                            ; $45b1: $83
	inc c                                            ; $45b2: $0c
	jr nc, jr_018_4576                               ; $45b3: $30 $c1

	jp nz, $ff4c                                     ; $45b5: $c2 $4c $ff

	pop af                                           ; $45b8: $f1
	rst SubAFromBC                                          ; $45b9: $e7
	rst SubAFromDE                                          ; $45ba: $df
	db $fc                                           ; $45bb: $fc
	di                                               ; $45bc: $f3
	rst $38                                          ; $45bd: $ff
	rst $38                                          ; $45be: $ff
	ld e, $73                                        ; $45bf: $1e $73
	add a                                            ; $45c1: $87
	ld a, [de]                                       ; $45c2: $1a
	ld h, [hl]                                       ; $45c3: $66
	adc [hl]                                         ; $45c4: $8e
	inc e                                            ; $45c5: $1c
	inc a                                            ; $45c6: $3c
	ld l, [hl]                                       ; $45c7: $6e
	jp nz, $be95                                     ; $45c8: $c2 $95 $be

	ld h, a                                          ; $45cb: $67
	ld h, b                                          ; $45cc: $60
	ldh [$98], a                                     ; $45cd: $e0 $98
	adc $cf                                          ; $45cf: $ce $cf
	push bc                                          ; $45d1: $c5
	push hl                                          ; $45d2: $e5
	db $e4                                           ; $45d3: $e4
	ld l, a                                          ; $45d4: $6f
	ld [de], a                                       ; $45d5: $12
	sub l                                            ; $45d6: $95
	xor l                                            ; $45d7: $ad
	xor a                                            ; $45d8: $af
	ld [hl], b                                       ; $45d9: $70
	inc a                                            ; $45da: $3c
	inc de                                           ; $45db: $13
	ld [$e204], sp                                   ; $45dc: $08 $04 $e2
	ld e, c                                          ; $45df: $59
	xor [hl]                                         ; $45e0: $ae
	ld a, e                                          ; $45e1: $7b

jr_018_45e2:
	ld h, $92                                        ; $45e2: $26 $92
	sbc a                                            ; $45e4: $9f
	rst AddAOntoHL                                          ; $45e5: $ef
	or $ff                                           ; $45e6: $f6 $ff
	rst $38                                          ; $45e8: $ff
	call nz, $1122                                   ; $45e9: $c4 $22 $11
	adc b                                            ; $45ec: $88
	ld c, h                                          ; $45ed: $4c
	ld h, $12                                        ; $45ee: $26 $12
	sub c                                            ; $45f0: $91
	db $dd                                           ; $45f1: $dd
	rst $38                                          ; $45f2: $ff

jr_018_45f3:
	ld a, a                                          ; $45f3: $7f
	ld c, h                                          ; $45f4: $4c
	sbc [hl]                                         ; $45f5: $9e
	or a                                             ; $45f6: $b7
	ld [hl], a                                       ; $45f7: $77
	inc a                                            ; $45f8: $3c
	rst SubAFromDE                                          ; $45f9: $df
	cp a                                             ; $45fa: $bf
	sbc h                                            ; $45fb: $9c
	rst $38                                          ; $45fc: $ff
	ld e, a                                          ; $45fd: $5f
	ld e, a                                          ; $45fe: $5f
	reti                                             ; $45ff: $d9


	rst $38                                          ; $4600: $ff
	sbc c                                            ; $4601: $99
	and a                                            ; $4602: $a7
	daa                                              ; $4603: $27
	cpl                                              ; $4604: $2f
	ld c, a                                          ; $4605: $4f
	ld e, a                                          ; $4606: $5f
	ld e, a                                          ; $4607: $5f
	ld a, e                                          ; $4608: $7b
	db $ed                                           ; $4609: $ed
	sbc $ff                                          ; $460a: $de $ff
	rst SubAFromDE                                          ; $460c: $df
	rst FarCall                                          ; $460d: $f7
	rst SubAFromDE                                          ; $460e: $df
	rst SubAFromBC                                          ; $460f: $e7
	sbc [hl]                                         ; $4610: $9e
	add sp, -$23                                     ; $4611: $e8 $dd
	ret                                              ; $4613: $c9


	sbc e                                            ; $4614: $9b
	jp z, $d2d2                                      ; $4615: $ca $d2 $d2

	ld a, e                                          ; $4618: $7b
	db $dd                                           ; $4619: $dd
	db $db                                           ; $461a: $db
	sbc e                                            ; $461b: $9b
	rst SubAFromDE                                          ; $461c: $df
	rst SubAFromHL                                          ; $461d: $d7
	rst FarCall                                          ; $461e: $f7
	ccf                                              ; $461f: $3f
	ld l, e                                          ; $4620: $6b
	add hl, de                                       ; $4621: $19
	ld a, c                                          ; $4622: $79
	pop hl                                           ; $4623: $e1
	adc a                                            ; $4624: $8f
	rlca                                             ; $4625: $07
	add hl, bc                                       ; $4626: $09
	ld sp, $01c1                                     ; $4627: $31 $c1 $01
	add sp, $50                                      ; $462a: $e8 $50
	ld [hl], b                                       ; $462c: $70
	ld [hl], b                                       ; $462d: $70
	ld bc, $0763                                     ; $462e: $01 $63 $07
	rra                                              ; $4631: $1f
	ld l, b                                          ; $4632: $68

jr_018_4633:
	nop                                              ; $4633: $00
	jr nc, jr_018_4633                               ; $4634: $30 $fd

	sbc d                                            ; $4636: $9a
	rlca                                             ; $4637: $07
	db $fc                                           ; $4638: $fc
	db $fd                                           ; $4639: $fd
	db $fd                                           ; $463a: $fd
	ld sp, hl                                        ; $463b: $f9
	sbc $fa                                          ; $463c: $de $fa
	sbc l                                            ; $463e: $9d
	ei                                               ; $463f: $fb
	cp $7a                                           ; $4640: $fe $7a
	ld c, a                                          ; $4642: $4f
	ld a, a                                          ; $4643: $7f
	ld b, d                                          ; $4644: $42
	sub l                                            ; $4645: $95
	ld a, [$a4ff]                                    ; $4646: $fa $ff $a4
	ld d, c                                          ; $4649: $51
	ld d, d                                          ; $464a: $52
	ld h, h                                          ; $464b: $64
	and h                                            ; $464c: $a4
	ret                                              ; $464d: $c9


	ret                                              ; $464e: $c9


	sub e                                            ; $464f: $93
	ld a, e                                          ; $4650: $7b
	ld h, d                                          ; $4651: $62
	sub a                                            ; $4652: $97
	ld [hl], a                                       ; $4653: $77
	db $ed                                           ; $4654: $ed
	rst AddAOntoHL                                          ; $4655: $ef
	db $eb                                           ; $4656: $eb
	jp c, $bc9c                                      ; $4657: $da $9c $bc

	ld a, l                                          ; $465a: $7d
	halt                                             ; $465b: $76
	ld sp, $f393                                     ; $465c: $31 $93 $f3
	cp $e5                                           ; $465f: $fe $e5
	push bc                                          ; $4661: $c5
	add a                                            ; $4662: $87
	add [hl]                                         ; $4663: $86
	ld b, $04                                        ; $4664: $06 $04
	ld c, $7d                                        ; $4666: $0e $7d
	db $fd                                           ; $4668: $fd
	push bc                                          ; $4669: $c5
	sbc $87                                          ; $466a: $de $87
	sbc d                                            ; $466c: $9a
	rlca                                             ; $466d: $07
	ld b, $c5                                        ; $466e: $06 $c5
	add l                                            ; $4670: $85
	rlca                                             ; $4671: $07
	sbc $06                                          ; $4672: $de $06
	rst SubAFromDE                                          ; $4674: $df
	ld [bc], a                                       ; $4675: $02
	sbc h                                            ; $4676: $9c
	sub [hl]                                         ; $4677: $96
	rla                                              ; $4678: $17
	rla                                              ; $4679: $17
	sbc $1f                                          ; $467a: $de $1f
	rst SubAFromDE                                          ; $467c: $df
	rrca                                             ; $467d: $0f
	rst SubAFromDE                                          ; $467e: $df
	rla                                              ; $467f: $17
	add a                                            ; $4680: $87
	dec e                                            ; $4681: $1d
	dec c                                            ; $4682: $0d
	inc c                                            ; $4683: $0c
	inc c                                            ; $4684: $0c
	inc b                                            ; $4685: $04
	inc b                                            ; $4686: $04
	sub e                                            ; $4687: $93
	ld c, b                                          ; $4688: $48
	jr z, @-$5a                                      ; $4689: $28 $a4

	sub h                                            ; $468b: $94
	sub d                                            ; $468c: $92
	jp z, $ffc8                                      ; $468d: $ca $c8 $ff

	ld sp, hl                                        ; $4690: $f9
	db $ed                                           ; $4691: $ed
	db $fc                                           ; $4692: $fc
	or [hl]                                          ; $4693: $b6
	sub $5a                                          ; $4694: $d6 $5a
	ld e, e                                          ; $4696: $5b
	ret                                              ; $4697: $c9


	ld c, c                                          ; $4698: $49
	sbc $24                                          ; $4699: $de $24
	sub a                                            ; $469b: $97
	inc [hl]                                         ; $469c: $34
	ld [de], a                                       ; $469d: $12
	ld [de], a                                       ; $469e: $12
	db $db                                           ; $469f: $db
	rst $38                                          ; $46a0: $ff
	rst AddAOntoHL                                          ; $46a1: $ef
	db $ed                                           ; $46a2: $ed
	db $fd                                           ; $46a3: $fd
	sbc $77                                          ; $46a4: $de $77
	sbc [hl]                                         ; $46a6: $9e
	rst SubAFromDE                                          ; $46a7: $df
	sbc $b7                                          ; $46a8: $de $b7
	sbc e                                            ; $46aa: $9b

jr_018_46ab:
	rst SubAFromHL                                          ; $46ab: $d7
	sub a                                            ; $46ac: $97
	and a                                            ; $46ad: $a7
	xor a                                            ; $46ae: $af
	reti                                             ; $46af: $d9


	rst $38                                          ; $46b0: $ff
	sbc $80                                          ; $46b1: $de $80
	sbc d                                            ; $46b3: $9a
	ret nz                                           ; $46b4: $c0

	ldh [$f0], a                                     ; $46b5: $e0 $f0
	ld hl, sp-$02                                    ; $46b7: $f8 $fe
	ld a, b                                          ; $46b9: $78
	add l                                            ; $46ba: $85
	sbc b                                            ; $46bb: $98
	ret nz                                           ; $46bc: $c0

	ld h, b                                          ; $46bd: $60
	ldh a, [$f8]                                     ; $46be: $f0 $f8
	call z, $3f3f                                    ; $46c0: $cc $3f $3f
	db $db                                           ; $46c3: $db
	ld a, a                                          ; $46c4: $7f
	ld h, h                                          ; $46c5: $64
	ret                                              ; $46c6: $c9


	db $dd                                           ; $46c7: $dd
	push af                                          ; $46c8: $f5
	ld h, l                                          ; $46c9: $65
	xor l                                            ; $46ca: $ad
	db $dd                                           ; $46cb: $dd
	rst $38                                          ; $46cc: $ff
	rst SubAFromDE                                          ; $46cd: $df
	sub d                                            ; $46ce: $92
	db $dd                                           ; $46cf: $dd
	sub e                                            ; $46d0: $93
	rst SubAFromDE                                          ; $46d1: $df
	and a                                            ; $46d2: $a7
	ld a, d                                          ; $46d3: $7a
	ld sp, hl                                        ; $46d4: $f9
	ld a, d                                          ; $46d5: $7a
	ld [hl-], a                                      ; $46d6: $32
	rst SubAFromDE                                          ; $46d7: $df
	cp a                                             ; $46d8: $bf
	db $dd                                           ; $46d9: $dd
	push af                                          ; $46da: $f5
	sbc $fa                                          ; $46db: $de $fa
	sbc [hl]                                         ; $46dd: $9e
	ldh a, [c]                                       ; $46de: $f2
	reti                                             ; $46df: $d9


	rst $38                                          ; $46e0: $ff
	sbc d                                            ; $46e1: $9a
	sub e                                            ; $46e2: $93
	sub a                                            ; $46e3: $97
	daa                                              ; $46e4: $27
	daa                                              ; $46e5: $27
	ld c, a                                          ; $46e6: $4f
	sbc $4c                                          ; $46e7: $de $4c
	sub [hl]                                         ; $46e9: $96
	sbc $f4                                          ; $46ea: $de $f4
	or h                                             ; $46ec: $b4
	cp h                                             ; $46ed: $bc
	add sp, -$18                                     ; $46ee: $e8 $e8
	ld hl, sp-$08                                    ; $46f0: $f8 $f8
	rst SubAFromDE                                          ; $46f2: $df
	ld a, e                                          ; $46f3: $7b
	or [hl]                                          ; $46f4: $b6
	adc [hl]                                         ; $46f5: $8e
	rst SubAFromBC                                          ; $46f6: $e7
	cp a                                             ; $46f7: $bf
	daa                                              ; $46f8: $27
	daa                                              ; $46f9: $27
	ccf                                              ; $46fa: $3f
	pop hl                                           ; $46fb: $e1
	jr jr_018_473a                                   ; $46fc: $18 $3c

	and $be                                          ; $46fe: $e6 $be
	ccf                                              ; $4700: $3f
	ld d, $86                                        ; $4701: $16 $86
	add d                                            ; $4703: $82
	add b                                            ; $4704: $80
	ret nz                                           ; $4705: $c0

	add c                                            ; $4706: $81
	ld a, b                                          ; $4707: $78
	ld a, b                                          ; $4708: $78
	rst SubAFromDE                                          ; $4709: $df
	ld [bc], a                                       ; $470a: $02
	ld l, b                                          ; $470b: $68
	jr nc, jr_018_46ab                               ; $470c: $30 $9d

	rlca                                             ; $470e: $07
	rrca                                             ; $470f: $0f
	db $dd                                           ; $4710: $dd
	rst $38                                          ; $4711: $ff
	sub e                                            ; $4712: $93
	or a                                             ; $4713: $b7
	inc b                                            ; $4714: $04
	inc b                                            ; $4715: $04
	inc a                                            ; $4716: $3c
	ld a, [hl]                                       ; $4717: $7e
	inc bc                                           ; $4718: $03
	jr jr_018_4797                                   ; $4719: $18 $7c

	or [hl]                                          ; $471b: $b6
	ret z                                            ; $471c: $c8

	call nz, $dcc0                                   ; $471d: $c4 $c0 $dc
	ldh [$df], a                                     ; $4720: $e0 $df
	ld l, l                                          ; $4722: $6d
	sbc c                                            ; $4723: $99
	ld l, [hl]                                       ; $4724: $6e
	ld [hl], $b7                                     ; $4725: $36 $b7
	ld [hl], l                                       ; $4727: $75
	dec h                                            ; $4728: $25
	dec h                                            ; $4729: $25
	db $db                                           ; $472a: $db
	ld [de], a                                       ; $472b: $12
	rst SubAFromDE                                          ; $472c: $df
	sub d                                            ; $472d: $92
	sbc $37                                          ; $472e: $de $37
	sbc $3f                                          ; $4730: $de $3f
	rst SubAFromDE                                          ; $4732: $df
	cp a                                             ; $4733: $bf
	rst SubAFromDE                                          ; $4734: $df
	rst GetHLinHL                                          ; $4735: $cf
	rst SubAFromDE                                          ; $4736: $df
	rst SubAFromDE                                          ; $4737: $df

jr_018_4738:
	ld l, [hl]                                       ; $4738: $6e
	sub d                                            ; $4739: $92

jr_018_473a:
	db $db                                           ; $473a: $db
	rst $38                                          ; $473b: $ff
	sbc [hl]                                         ; $473c: $9e
	ldh [$db], a                                     ; $473d: $e0 $db
	db $e4                                           ; $473f: $e4
	sbc e                                            ; $4740: $9b
	add sp, $25                                      ; $4741: $e8 $25
	dec h                                            ; $4743: $25
	db $ed                                           ; $4744: $ed
	db $dd                                           ; $4745: $dd
	dec l                                            ; $4746: $2d
	sbc c                                            ; $4747: $99
	ccf                                              ; $4748: $3f
	xor a                                            ; $4749: $af
	and a                                            ; $474a: $a7
	ld h, e                                          ; $474b: $63
	rst SubAFromBC                                          ; $474c: $e7
	ld a, a                                          ; $474d: $7f
	sbc $1f                                          ; $474e: $de $1f
	sbc d                                            ; $4750: $9a
	cp a                                             ; $4751: $bf
	ccf                                              ; $4752: $3f
	ld a, a                                          ; $4753: $7f
	ld [hl], a                                       ; $4754: $77
	inc a                                            ; $4755: $3c
	db $fd                                           ; $4756: $fd
	sbc [hl]                                         ; $4757: $9e
	jr nc, jr_018_4738                               ; $4758: $30 $de

	ld a, b                                          ; $475a: $78
	sbc h                                            ; $475b: $9c
	ldh [$80], a                                     ; $475c: $e0 $80
	inc b                                            ; $475e: $04
	db $fc                                           ; $475f: $fc
	ld a, a                                          ; $4760: $7f
	adc c                                            ; $4761: $89
	sbc h                                            ; $4762: $9c
	inc b                                            ; $4763: $04
	cp $08                                           ; $4764: $fe $08
	ei                                               ; $4766: $fb
	sbc [hl]                                         ; $4767: $9e
	inc e                                            ; $4768: $1c
	ld a, [$f4dd]                                    ; $4769: $fa $dd $f4
	db $dd                                           ; $476c: $dd
	push af                                          ; $476d: $f5
	reti                                             ; $476e: $d9


	rst $38                                          ; $476f: $ff
	sbc $9c                                          ; $4770: $de $9c
	sbc d                                            ; $4772: $9a
	sbc [hl]                                         ; $4773: $9e
	ld e, $3e                                        ; $4774: $1e $3e
	ccf                                              ; $4776: $3f
	ccf                                              ; $4777: $3f
	sbc $f8                                          ; $4778: $de $f8
	ld [hl], c                                       ; $477a: $71
	sub a                                            ; $477b: $97
	sbc a                                            ; $477c: $9f
	dec b                                            ; $477d: $05
	pop af                                           ; $477e: $f1
	add b                                            ; $477f: $80
	ld a, [de]                                       ; $4780: $1a
	dec de                                           ; $4781: $1b
	sbc c                                            ; $4782: $99
	sbc e                                            ; $4783: $9b
	ldh a, [c]                                       ; $4784: $f2
	di                                               ; $4785: $f3
	ld b, $07                                        ; $4786: $06 $07
	ld e, a                                          ; $4788: $5f

jr_018_4789:
	rst $38                                          ; $4789: $ff
	cpl                                              ; $478a: $2f
	rst $38                                          ; $478b: $ff
	rla                                              ; $478c: $17
	rst $38                                          ; $478d: $ff
	add e                                            ; $478e: $83
	ld a, a                                          ; $478f: $7f
	db $fc                                           ; $4790: $fc
	db $fc                                           ; $4791: $fc
	db $fd                                           ; $4792: $fd
	db $fd                                           ; $4793: $fd
	inc a                                            ; $4794: $3c
	db $fc                                           ; $4795: $fc
	ld a, [bc]                                       ; $4796: $0a

jr_018_4797:
	cp $41                                           ; $4797: $fe $41
	cp a                                             ; $4799: $bf
	xor d                                            ; $479a: $aa
	ld d, l                                          ; $479b: $55
	ld d, l                                          ; $479c: $55
	xor d                                            ; $479d: $aa
	ld [$1595], a                                    ; $479e: $ea $95 $15
	inc sp                                           ; $47a1: $33
	jr nc, jr_018_4789                               ; $47a2: $30 $e5

	ldh [$32], a                                     ; $47a4: $e0 $32
	jr nc, jr_018_47dd                               ; $47a6: $30 $35

	jr nc, jr_018_47dd                               ; $47a8: $30 $33

	call c, $ff30                                    ; $47aa: $dc $30 $ff
	rst SubAFromDE                                          ; $47ad: $df
	ld b, $df                                        ; $47ae: $06 $df
	rst FarCall                                          ; $47b0: $f7
	sbc $06                                          ; $47b1: $de $06
	sub b                                            ; $47b3: $90
	halt                                             ; $47b4: $76
	ld b, [hl]                                       ; $47b5: $46
	halt                                             ; $47b6: $76
	ld b, $06                                        ; $47b7: $06 $06
	or $f6                                           ; $47b9: $f6 $f6
	nop                                              ; $47bb: $00
	nop                                              ; $47bc: $00
	inc bc                                           ; $47bd: $03
	inc bc                                           ; $47be: $03
	di                                               ; $47bf: $f3
	di                                               ; $47c0: $f3
	dec de                                           ; $47c1: $1b
	dec de                                           ; $47c2: $1b
	db $dd                                           ; $47c3: $dd
	ld e, e                                          ; $47c4: $5b
	rst SubAFromDE                                          ; $47c5: $df
	dec de                                           ; $47c6: $1b
	rst SubAFromDE                                          ; $47c7: $df
	di                                               ; $47c8: $f3
	sub l                                            ; $47c9: $95
	nop                                              ; $47ca: $00
	ld [$5b5b], sp                                   ; $47cb: $08 $5b $5b
	add hl, de                                       ; $47ce: $19
	ld e, c                                          ; $47cf: $59
	ld e, b                                          ; $47d0: $58
	ld e, b                                          ; $47d1: $58
	jr jr_018_482c                                   ; $47d2: $18 $58

	ld [hl], a                                       ; $47d4: $77
	ldh a, [$df]                                     ; $47d5: $f0 $df
	pop af                                           ; $47d7: $f1
	sbc l                                            ; $47d8: $9d
	nop                                              ; $47d9: $00
	inc b                                            ; $47da: $04
	ld a, e                                          ; $47db: $7b
	db $e4                                           ; $47dc: $e4

jr_018_47dd:
	ret c                                            ; $47dd: $d8

	dec de                                           ; $47de: $1b
	ld a, e                                          ; $47df: $7b
	ldh a, [hDisp1_WX]                                     ; $47e0: $f0 $96
	nop                                              ; $47e2: $00
	inc sp                                           ; $47e3: $33
	inc sp                                           ; $47e4: $33
	db $e3                                           ; $47e5: $e3
	db $e3                                           ; $47e6: $e3
	inc sp                                           ; $47e7: $33
	inc sp                                           ; $47e8: $33
	or e                                             ; $47e9: $b3
	or e                                             ; $47ea: $b3

jr_018_47eb:
	ld a, e                                          ; $47eb: $7b
	db $fd                                           ; $47ec: $fd
	sbc $b3                                          ; $47ed: $de $b3
	rst SubAFromDE                                          ; $47ef: $df

jr_018_47f0:
	add b                                            ; $47f0: $80
	ld l, a                                          ; $47f1: $6f
	or b                                             ; $47f2: $b0
	db $dd                                           ; $47f3: $dd
	halt                                             ; $47f4: $76
	ld l, a                                          ; $47f5: $6f
	or b                                             ; $47f6: $b0
	ld a, e                                          ; $47f7: $7b
	ret z                                            ; $47f8: $c8

	ld a, e                                          ; $47f9: $7b
	rst GetHLinHL                                          ; $47fa: $cf
	rst SubAFromDE                                          ; $47fb: $df
	or e                                             ; $47fc: $b3
	rst SubAFromDE                                          ; $47fd: $df
	di                                               ; $47fe: $f3
	sbc $e3                                          ; $47ff: $de $e3
	sbc h                                            ; $4801: $9c
	db $eb                                           ; $4802: $eb
	nop                                              ; $4803: $00
	ld [$c06f], sp                                   ; $4804: $08 $6f $c0
	db $dd                                           ; $4807: $dd
	add hl, de                                       ; $4808: $19
	rst SubAFromDE                                          ; $4809: $df
	jr jr_018_47eb                                   ; $480a: $18 $df

	ldh a, [rIE]                                     ; $480c: $f0 $ff
	adc l                                            ; $480e: $8d
	ld h, e                                          ; $480f: $63
	add e                                            ; $4810: $83
	or e                                             ; $4811: $b3
	ld b, e                                          ; $4812: $43
	ld d, e                                          ; $4813: $53
	and e                                            ; $4814: $a3
	adc e                                            ; $4815: $8b
	di                                               ; $4816: $f3

jr_018_4817:
	ld c, e                                          ; $4817: $4b
	di                                               ; $4818: $f3
	and e                                            ; $4819: $a3
	ei                                               ; $481a: $fb
	pop de                                           ; $481b: $d1
	ld sp, hl                                        ; $481c: $f9
	add sp, -$04                                     ; $481d: $e8 $fc
	inc a                                            ; $481f: $3c
	inc a                                            ; $4820: $3c
	push de                                          ; $4821: $d5
	ld h, [hl]                                       ; $4822: $66
	rst $38                                          ; $4823: $ff
	rst SubAFromDE                                          ; $4824: $df
	jr nc, @-$1f                                     ; $4825: $30 $df

	di                                               ; $4827: $f3
	reti                                             ; $4828: $d9


	inc sp                                           ; $4829: $33
	rst SubAFromDE                                          ; $482a: $df
	ei                                               ; $482b: $fb

jr_018_482c:
	rst $38                                          ; $482c: $ff
	rst SubAFromDE                                          ; $482d: $df
	ld hl, sp-$21                                    ; $482e: $f8 $df
	sbc c                                            ; $4830: $99
	reti                                             ; $4831: $d9


	sbc e                                            ; $4832: $9b
	rst SubAFromDE                                          ; $4833: $df
	ld sp, hl                                        ; $4834: $f9
	rst SubAFromDE                                          ; $4835: $df
	jr jr_018_4817                                   ; $4836: $18 $df

	inc c                                            ; $4838: $0c
	rst SubAFromDE                                          ; $4839: $df
	ld a, l                                          ; $483a: $7d
	reti                                             ; $483b: $d9


	call Call_018_7edf                               ; $483c: $cd $df $7e
	rst $38                                          ; $483f: $ff
	db $dd                                           ; $4840: $dd
	call z, $fcdf                                    ; $4841: $cc $df $fc
	db $dd                                           ; $4844: $dd
	ret nz                                           ; $4845: $c0

	rst SubAFromDE                                          ; $4846: $df
	call z, $78df                                    ; $4847: $cc $df $78
	rst SubAFromDE                                          ; $484a: $df
	inc bc                                           ; $484b: $03
	rst SubAFromHL                                          ; $484c: $d7
	ld h, [hl]                                       ; $484d: $66
	rst SubAFromDE                                          ; $484e: $df
	inc a                                            ; $484f: $3c
	rst SubAFromDE                                          ; $4850: $df
	jr jr_018_47f0                                   ; $4851: $18 $9d

	nop                                              ; $4853: $00
	jp $5477                                         ; $4854: $c3 $77 $54


	rst SubAFromDE                                          ; $4857: $df
	cp a                                             ; $4858: $bf
	db $dd                                           ; $4859: $dd
	or b                                             ; $485a: $b0
	rst SubAFromDE                                          ; $485b: $df
	or e                                             ; $485c: $b3
	rst SubAFromDE                                          ; $485d: $df
	sbc [hl]                                         ; $485e: $9e
	rst $38                                          ; $485f: $ff
	rst SubAFromDE                                          ; $4860: $df
	ld l, h                                          ; $4861: $6c
	rst SubAFromDE                                          ; $4862: $df
	ld l, l                                          ; $4863: $6d
	rst SubAFromDE                                          ; $4864: $df
	db $ed                                           ; $4865: $ed
	db $dd                                           ; $4866: $dd
	dec c                                            ; $4867: $0d
	rst SubAFromDE                                          ; $4868: $df
	ld l, l                                          ; $4869: $6d
	rst SubAFromDE                                          ; $486a: $df
	call $dfff                                       ; $486b: $cd $ff $df
	ld [hl], $df                                     ; $486e: $36 $df
	and $df                                          ; $4870: $e6 $df
	scf                                              ; $4872: $37
	rst SubAFromDE                                          ; $4873: $df
	or [hl]                                          ; $4874: $b6
	add l                                            ; $4875: $85
	ld [hl], $b6                                     ; $4876: $36 $b6
	ld [hl], $36                                     ; $4878: $36 $36
	db $e3                                           ; $487a: $e3
	db $e3                                           ; $487b: $e3
	nop                                              ; $487c: $00
	ld [$f6f6], sp                                   ; $487d: $08 $f6 $f6
	or a                                             ; $4880: $b7
	rst FarCall                                          ; $4881: $f7
	ld d, [hl]                                       ; $4882: $56
	or $a6                                           ; $4883: $f6 $a6
	or $56                                           ; $4885: $f6 $56
	or $26                                           ; $4887: $f6 $26
	or $07                                           ; $4889: $f6 $07
	rst FarCall                                          ; $488b: $f7
	nop                                              ; $488c: $00
	ldh a, [rSB]                                     ; $488d: $f0 $01
	nop                                              ; $488f: $00
	ld a, e                                          ; $4890: $7b
	rst GetHLinHL                                          ; $4891: $cf
	sub a                                            ; $4892: $97
	ld l, h                                          ; $4893: $6c
	inc h                                            ; $4894: $24
	dec h                                            ; $4895: $25
	ld bc, $e600                                     ; $4896: $01 $00 $e6
	pop hl                                           ; $4899: $e1
	scf                                              ; $489a: $37
	ld a, d                                          ; $489b: $7a
	cp b                                             ; $489c: $b8
	rst $38                                          ; $489d: $ff
	ld a, a                                          ; $489e: $7f
	or $fb                                           ; $489f: $f6 $fb
	ld [hl], a                                       ; $48a1: $77
	ld [$469c], sp                                   ; $48a2: $08 $9c $46
	ld b, $00                                        ; $48a5: $06 $00
	cp h                                             ; $48a7: $bc
	ld d, b                                          ; $48a8: $50
	xor d                                            ; $48a9: $aa
	db $fd                                           ; $48aa: $fd
	nop                                              ; $48ab: $00
	di                                               ; $48ac: $f3
	ld a, d                                          ; $48ad: $7a
	cp b                                             ; $48ae: $b8
	ld a, a                                          ; $48af: $7f
	inc de                                           ; $48b0: $13
	sub e                                            ; $48b1: $93
	ld a, [de]                                       ; $48b2: $1a
	ldh [$af], a                                     ; $48b3: $e0 $af
	ret nc                                           ; $48b5: $d0

	rst SubAFromDE                                          ; $48b6: $df
	ldh [$ab], a                                     ; $48b7: $e0 $ab
	db $f4                                           ; $48b9: $f4
	inc b                                            ; $48ba: $04
	nop                                              ; $48bb: $00
	pop af                                           ; $48bc: $f1
	pop af                                           ; $48bd: $f1
	halt                                             ; $48be: $76
	xor b                                            ; $48bf: $a8
	sub a                                            ; $48c0: $97
	or l                                             ; $48c1: $b5
	ld a, [bc]                                       ; $48c2: $0a
	ld a, d                                          ; $48c3: $7a
	dec b                                            ; $48c4: $05
	cp l                                             ; $48c5: $bd
	ld [bc], a                                       ; $48c6: $02
	ld e, d                                          ; $48c7: $5a
	dec b                                            ; $48c8: $05
	ld l, e                                          ; $48c9: $6b
	ldh a, [$9e]                                     ; $48ca: $f0 $9e
	dec de                                           ; $48cc: $1b
	ld e, a                                          ; $48cd: $5f
	ret nz                                           ; $48ce: $c0

	ld [hl], d                                       ; $48cf: $72
	cp b                                             ; $48d0: $b8
	sbc [hl]                                         ; $48d1: $9e
	inc sp                                           ; $48d2: $33
	ld e, a                                          ; $48d3: $5f
	ret nz                                           ; $48d4: $c0

	ld [hl], a                                       ; $48d5: $77
	or b                                             ; $48d6: $b0
	sbc l                                            ; $48d7: $9d
	ld h, $76                                        ; $48d8: $26 $76
	ld h, a                                          ; $48da: $67
	ret nz                                           ; $48db: $c0

	rst SubAFromDE                                          ; $48dc: $df
	ld b, b                                          ; $48dd: $40
	db $db                                           ; $48de: $db
	ld e, e                                          ; $48df: $5b
	sub a                                            ; $48e0: $97
	dec [hl]                                         ; $48e1: $35
	ld a, [bc]                                       ; $48e2: $0a
	cp d                                             ; $48e3: $ba
	add l                                            ; $48e4: $85
	cp l                                             ; $48e5: $bd
	add d                                            ; $48e6: $82
	sbc d                                            ; $48e7: $9a
	add l                                            ; $48e8: $85
	ld l, a                                          ; $48e9: $6f
	and b                                            ; $48ea: $a0
	ld [hl], a                                       ; $48eb: $77
	ret nz                                           ; $48ec: $c0

	db $dd                                           ; $48ed: $dd
	adc l                                            ; $48ee: $8d

jr_018_48ef:
	rst SubAFromDE                                          ; $48ef: $df
	add h                                            ; $48f0: $84
	rst $38                                          ; $48f1: $ff
	adc c                                            ; $48f2: $89
	ld b, c                                          ; $48f3: $41
	ld bc, $0383                                     ; $48f4: $01 $83 $03
	jp $0003                                         ; $48f7: $c3 $03 $00


	nop                                              ; $48fa: $00
	ld c, l                                          ; $48fb: $4d
	dec c                                            ; $48fc: $0d
	xor l                                            ; $48fd: $ad
	dec c                                            ; $48fe: $0d
	db $e4                                           ; $48ff: $e4
	inc b                                            ; $4900: $04
	ld d, b                                          ; $4901: $50
	and b                                            ; $4902: $a0
	xor a                                            ; $4903: $af
	ld d, b                                          ; $4904: $50
	dec d                                            ; $4905: $15
	ld l, d                                          ; $4906: $6a

jr_018_4907:
	nop                                              ; $4907: $00
	ld bc, $c067                                     ; $4908: $01 $67 $c0
	sub a                                            ; $490b: $97
	push de                                          ; $490c: $d5
	ld a, [$fdea]                                    ; $490d: $fa $ea $fd
	nop                                              ; $4910: $00
	ld [$e3e3], sp                                   ; $4911: $08 $e3 $e3
	ld h, a                                          ; $4914: $67
	add b                                            ; $4915: $80
	ld a, a                                          ; $4916: $7f
	db $fc                                           ; $4917: $fc
	sbc c                                            ; $4918: $99
	ld e, [hl]                                       ; $4919: $5e
	ld bc, $00a0                                     ; $491a: $01 $a0 $00
	dec c                                            ; $491d: $0d
	dec c                                            ; $491e: $0d
	ld h, a                                          ; $491f: $67
	add b                                            ; $4920: $80
	sbc [hl]                                         ; $4921: $9e
	add b                                            ; $4922: $80

jr_018_4923:
	cp [hl]                                          ; $4923: $be
	ld b, b                                          ; $4924: $40
	nop                                              ; $4925: $00
	ld a, b                                          ; $4926: $78
	sbc [hl]                                         ; $4927: $9e
	ld a, b                                          ; $4928: $78
	ld h, a                                          ; $4929: $67
	add b                                            ; $492a: $80
	sbc [hl]                                         ; $492b: $9e
	ld e, [hl]                                       ; $492c: $5e
	ld a, e                                          ; $492d: $7b
	ret nz                                           ; $492e: $c0

	sbc e                                            ; $492f: $9b
	ld bc, $7802                                     ; $4930: $01 $02 $78
	ld a, b                                          ; $4933: $78
	ld d, e                                          ; $4934: $53
	ret nz                                           ; $4935: $c0

	sbc h                                            ; $4936: $9c
	nop                                              ; $4937: $00
	ld h, [hl]                                       ; $4938: $66
	ld h, [hl]                                       ; $4939: $66
	ld d, a                                          ; $493a: $57
	ret nz                                           ; $493b: $c0

	rst $38                                          ; $493c: $ff
	halt                                             ; $493d: $76
	cp [hl]                                          ; $493e: $be
	ld h, a                                          ; $493f: $67
	ret nz                                           ; $4940: $c0

	sbc [hl]                                         ; $4941: $9e
	ld c, h                                          ; $4942: $4c
	sbc $0c                                          ; $4943: $de $0c
	halt                                             ; $4945: $76
	cp [hl]                                          ; $4946: $be
	ld a, a                                          ; $4947: $7f
	ret nz                                           ; $4948: $c0

	sbc [hl]                                         ; $4949: $9e
	ld a, [hl+]                                      ; $494a: $2a
	cp [hl]                                          ; $494b: $be
	ld a, l                                          ; $494c: $7d
	ld c, $e7                                        ; $494d: $0e $e7
	sub a                                            ; $494f: $97
	ldh [$30], a                                     ; $4950: $e0 $30
	jr nc, jr_018_4907                               ; $4952: $30 $b3

	or e                                             ; $4954: $b3
	nop                                              ; $4955: $00
	ret nz                                           ; $4956: $c0

	sbc e                                            ; $4957: $9b
	sbc $db                                          ; $4958: $de $db
	sbc c                                            ; $495a: $99
	adc c                                            ; $495b: $89
	ret                                              ; $495c: $c9


	ret nz                                           ; $495d: $c0

	ldh [$e7], a                                     ; $495e: $e0 $e7

jr_018_4960:
	rst FarCall                                          ; $4960: $f7
	db $dd                                           ; $4961: $dd
	or $96                                           ; $4962: $f6 $96
	cp e                                             ; $4964: $bb
	jr c, jr_018_49a2                                ; $4965: $38 $3b

	jr c, jr_018_4923                                ; $4967: $38 $ba

	jr c, jr_018_49a4                                ; $4969: $38 $39

	jr c, jr_018_48ef                                ; $496b: $38 $82

	cp l                                             ; $496d: $bd
	nop                                              ; $496e: $00
	nop                                              ; $496f: $00
	nop                                              ; $4970: $00
	add hl, sp                                       ; $4971: $39
	sbc e                                            ; $4972: $9b
	cp e                                             ; $4973: $bb
	cp b                                             ; $4974: $b8
	dec sp                                           ; $4975: $3b
	jr c, jr_018_49f3                                ; $4976: $38 $7b

	db $fc                                           ; $4978: $fc
	sbc d                                            ; $4979: $9a
	add b                                            ; $497a: $80
	inc bc                                           ; $497b: $03
	ld a, [$f505]                                    ; $497c: $fa $05 $f5
	ld a, e                                          ; $497f: $7b
	and h                                            ; $4980: $a4
	sub [hl]                                         ; $4981: $96
	rst SubAFromDE                                          ; $4982: $df
	ret nz                                           ; $4983: $c0

	rst SubAFromDE                                          ; $4984: $df
	ret nz                                           ; $4985: $c0

	jp z, $d5c0                                      ; $4986: $ca $c0 $d5

	ret nz                                           ; $4989: $c0

	ld a, [bc]                                       ; $498a: $0a
	cp l                                             ; $498b: $bd
	nop                                              ; $498c: $00
	nop                                              ; $498d: $00
	nop                                              ; $498e: $00
	add c                                            ; $498f: $81
	add b                                            ; $4990: $80
	ld bc, $1d5d                                     ; $4991: $01 $5d $1d
	sbc l                                            ; $4994: $9d
	dec e                                            ; $4995: $1d
	ld e, a                                          ; $4996: $5f
	rra                                              ; $4997: $1f
	nop                                              ; $4998: $00
	add b                                            ; $4999: $80
	ld b, b                                          ; $499a: $40
	add b                                            ; $499b: $80
	ld h, b                                          ; $499c: $60
	add b                                            ; $499d: $80
	jr nc, jr_018_4960                               ; $499e: $30 $c0

	xor d                                            ; $49a0: $aa
	cp a                                             ; $49a1: $bf

jr_018_49a2:
	sub l                                            ; $49a2: $95
	cp a                                             ; $49a3: $bf

jr_018_49a4:
	cp d                                             ; $49a4: $ba
	cp a                                             ; $49a5: $bf

jr_018_49a6:
	cp [hl]                                          ; $49a6: $be
	cp a                                             ; $49a7: $bf
	sbc a                                            ; $49a8: $9f
	cp a                                             ; $49a9: $bf
	xor a                                            ; $49aa: $af
	cp a                                             ; $49ab: $bf
	sub a                                            ; $49ac: $97
	cp a                                             ; $49ad: $bf
	inc bc                                           ; $49ae: $03
	ccf                                              ; $49af: $3f
	rst SubAFromDE                                          ; $49b0: $df
	rst $38                                          ; $49b1: $ff
	ld a, c                                          ; $49b2: $79
	xor c                                            ; $49b3: $a9
	sbc $eb                                          ; $49b4: $de $eb
	ld a, a                                          ; $49b6: $7f
	ei                                               ; $49b7: $fb
	rst SubAFromDE                                          ; $49b8: $df
	db $e3                                           ; $49b9: $e3
	rst SubAFromDE                                          ; $49ba: $df
	rst $38                                          ; $49bb: $ff
	rst $38                                          ; $49bc: $ff
	rst SubAFromDE                                          ; $49bd: $df
	db $fc                                           ; $49be: $fc
	rst SubAFromDE                                          ; $49bf: $df
	inc e                                            ; $49c0: $1c
	sbc [hl]                                         ; $49c1: $9e
	ld e, h                                          ; $49c2: $5c
	ld h, e                                          ; $49c3: $63
	cp $7f                                           ; $49c4: $fe $7f
	inc l                                            ; $49c6: $2c
	db $d3                                           ; $49c7: $d3
	rst SubAFromBC                                          ; $49c8: $e7
	rst $38                                          ; $49c9: $ff
	rst SubAFromDE                                          ; $49ca: $df
	ccf                                              ; $49cb: $3f
	rst SubAFromDE                                          ; $49cc: $df
	jr c, jr_018_49a6                                ; $49cd: $38 $d7

	ld a, [hl-]                                      ; $49cf: $3a
	rst SubAFromDE                                          ; $49d0: $df
	ld [bc], a                                       ; $49d1: $02
	rst SubAFromDE                                          ; $49d2: $df
	rst $38                                          ; $49d3: $ff
	rst SubAFromDE                                          ; $49d4: $df
	rst JumpTable                                          ; $49d5: $c7
	rst SubAFromDE                                          ; $49d6: $df
	ret nc                                           ; $49d7: $d0

	sbc c                                            ; $49d8: $99
	jp z, $c0de                                      ; $49d9: $ca $de $c0

	ret nc                                           ; $49dc: $d0

	rst JumpTable                                          ; $49dd: $c7
	rst JumpTable                                          ; $49de: $c7
	ld [hl], a                                       ; $49df: $77
	ret nz                                           ; $49e0: $c0

	rst SubAFromDE                                          ; $49e1: $df
	ld sp, hl                                        ; $49e2: $f9
	rst SubAFromDE                                          ; $49e3: $df
	add hl, sp                                       ; $49e4: $39
	rst SubAFromDE                                          ; $49e5: $df
	ld sp, hl                                        ; $49e6: $f9
	rst SubAFromDE                                          ; $49e7: $df
	ld bc, $b99e                                     ; $49e8: $01 $9e $b9
	sbc $39                                          ; $49eb: $de $39
	rst SubAFromDE                                          ; $49ed: $df
	ld sp, hl                                        ; $49ee: $f9
	rst $38                                          ; $49ef: $ff
	rst SubAFromDE                                          ; $49f0: $df
	rst GetHLinHL                                          ; $49f1: $cf
	rst SubAFromDE                                          ; $49f2: $df

jr_018_49f3:
	adc $77                                          ; $49f3: $ce $77
	db $fc                                           ; $49f5: $fc
	db $dd                                           ; $49f6: $dd
	adc $df                                          ; $49f7: $ce $df
	rst GetHLinHL                                          ; $49f9: $cf
	rst $38                                          ; $49fa: $ff
	sbc d                                            ; $49fb: $9a
	xor c                                            ; $49fc: $a9
	db $fd                                           ; $49fd: $fd
	push de                                          ; $49fe: $d5
	db $fd                                           ; $49ff: $fd
	ld sp, hl                                        ; $4a00: $f9
	sbc $fd                                          ; $4a01: $de $fd
	sub a                                            ; $4a03: $97
	ld e, l                                          ; $4a04: $5d
	db $fd                                           ; $4a05: $fd
	dec l                                            ; $4a06: $2d
	db $fd                                           ; $4a07: $fd
	dec d                                            ; $4a08: $15
	db $fd                                           ; $4a09: $fd
	add b                                            ; $4a0a: $80
	ld a, h                                          ; $4a0b: $7c
	db $db                                           ; $4a0c: $db
	cp a                                             ; $4a0d: $bf
	sub e                                            ; $4a0e: $93
	adc d                                            ; $4a0f: $8a
	cp a                                             ; $4a10: $bf
	add c                                            ; $4a11: $81
	cp a                                             ; $4a12: $bf
	xor d                                            ; $4a13: $aa
	sub l                                            ; $4a14: $95
	sub l                                            ; $4a15: $95
	xor d                                            ; $4a16: $aa
	ld a, [hl+]                                      ; $4a17: $2a
	dec d                                            ; $4a18: $15
	cp a                                             ; $4a19: $bf
	cp a                                             ; $4a1a: $bf
	rst SubAFromHL                                          ; $4a1b: $d7
	cp e                                             ; $4a1c: $bb
	rst SubAFromDE                                          ; $4a1d: $df
	cp a                                             ; $4a1e: $bf
	rst SubAFromDE                                          ; $4a1f: $df
	jr c, jr_018_4a71                                ; $4a20: $38 $4f

	ldh a, [rIE]                                     ; $4a22: $f0 $ff
	ld h, a                                          ; $4a24: $67
	ldh a, [$9e]                                     ; $4a25: $f0 $9e
	dec sp                                           ; $4a27: $3b
	ld a, e                                          ; $4a28: $7b
	cp $99                                           ; $4a29: $fe $99
	ccf                                              ; $4a2b: $3f
	cp a                                             ; $4a2c: $bf
	cp b                                             ; $4a2d: $b8

jr_018_4a2e:
	jr c, jr_018_4a2e                                ; $4a2e: $38 $fe

	cp $dd                                           ; $4a30: $fe $dd
	ldh [$67], a                                     ; $4a32: $e0 $67
	ld a, [$dfff]                                    ; $4a34: $fa $ff $df
	cp $df                                           ; $4a37: $fe $df
	xor $db                                          ; $4a39: $ee $db
	ldh [$df], a                                     ; $4a3b: $e0 $df
	xor $67                                          ; $4a3d: $ee $67
	ldh a, [$d7]                                     ; $4a3f: $f0 $d7
	xor $ff                                          ; $4a41: $ee $ff
	rst SubAFromDE                                          ; $4a43: $df
	ld a, [$417f]                                    ; $4a44: $fa $7f $41
	rst SubAFromDE                                          ; $4a47: $df
	ld a, [$badd]                                    ; $4a48: $fa $dd $ba
	rst SubAFromDE                                          ; $4a4b: $df
	cp b                                             ; $4a4c: $b8
	ld [hl], a                                       ; $4a4d: $77
	ldh [$df], a                                     ; $4a4e: $e0 $df
	ld sp, hl                                        ; $4a50: $f9
	rst SubAFromDE                                          ; $4a51: $df
	cp b                                             ; $4a52: $b8
	reti                                             ; $4a53: $d9


	cp e                                             ; $4a54: $bb

jr_018_4a55:
	ld [hl], h                                       ; $4a55: $74
	ldh [$99], a                                     ; $4a56: $e0 $99
	db $d3                                           ; $4a58: $d3
	set 1, e                                         ; $4a59: $cb $cb
	db $d3                                           ; $4a5b: $d3
	jp $ddc3                                         ; $4a5c: $c3 $c3 $dd


	db $db                                           ; $4a5f: $db
	ld a, e                                          ; $4a60: $7b
	ld a, [$c399]                                    ; $4a61: $fa $99 $c3
	ret c                                            ; $4a64: $d8

	ret nz                                           ; $4a65: $c0

	ld bc, $0501                                     ; $4a66: $01 $01 $05
	sbc $01                                          ; $4a69: $de $01
	ld e, a                                          ; $4a6b: $5f
	db $fc                                           ; $4a6c: $fc
	sbc d                                            ; $4a6d: $9a
	ld a, e                                          ; $4a6e: $7b
	ld a, b                                          ; $4a6f: $78
	add hl, sp                                       ; $4a70: $39

jr_018_4a71:
	jr c, @+$3c                                      ; $4a71: $38 $3a

	ld a, d                                          ; $4a73: $7a
	add b                                            ; $4a74: $80
	ld a, [hl]                                       ; $4a75: $7e
	adc e                                            ; $4a76: $8b
	db $db                                           ; $4a77: $db
	jr c, jr_018_4a55                                ; $4a78: $38 $db

	rst SubAFromDE                                          ; $4a7a: $df
	rst SubAFromDE                                          ; $4a7b: $df
	jp $f992                                         ; $4a7c: $c3 $92 $f9


	ei                                               ; $4a7f: $fb
	jp nz, $c5c3                                     ; $4a80: $c2 $c3 $c5

	rst SubAFromDE                                          ; $4a83: $df
	ret nz                                           ; $4a84: $c0

	ret nz                                           ; $4a85: $c0

	xor e                                            ; $4a86: $ab
	inc bc                                           ; $4a87: $03
	ld d, c                                          ; $4a88: $51
	ld bc, $de29                                     ; $4a89: $01 $29 $de
	ld bc, $0fdf                                     ; $4a8c: $01 $df $0f
	db $db                                           ; $4a8f: $db
	ld bc, $8c7e                                     ; $4a90: $01 $7e $8c
	sub c                                            ; $4a93: $91
	or b                                             ; $4a94: $b0
	ld b, b                                          ; $4a95: $40
	ld d, b                                          ; $4a96: $50
	and b                                            ; $4a97: $a0
	adc b                                            ; $4a98: $88
	ldh a, [$4c]                                     ; $4a99: $f0 $4c
	ldh a, [$a6]                                     ; $4a9b: $f0 $a6
	ld hl, sp-$29                                    ; $4a9d: $f8 $d7
	db $fc                                           ; $4a9f: $fc
	add hl, hl                                       ; $4aa0: $29
	ld a, $4f                                        ; $4aa1: $3e $4f
	ldh a, [rIE]                                     ; $4aa3: $f0 $ff
	sub d                                            ; $4aa5: $92
	ld d, c                                          ; $4aa6: $51
	cp $ea                                           ; $4aa7: $fe $ea
	rst $38                                          ; $4aa9: $ff
	push af                                          ; $4aaa: $f5
	rst $38                                          ; $4aab: $ff
	cp $ff                                           ; $4aac: $fe $ff
	ld a, a                                          ; $4aae: $7f
	rst $38                                          ; $4aaf: $ff
	cp a                                             ; $4ab0: $bf
	rst $38                                          ; $4ab1: $ff
	ld e, a                                          ; $4ab2: $5f
	ld a, d                                          ; $4ab3: $7a
	ret nz                                           ; $4ab4: $c0

	rst SubAFromDE                                          ; $4ab5: $df
	rst $38                                          ; $4ab6: $ff
	ld [hl], a                                       ; $4ab7: $77
	ld hl, sp-$68                                    ; $4ab8: $f8 $98
	xor a                                            ; $4aba: $af
	rst $38                                          ; $4abb: $ff
	ld d, l                                          ; $4abc: $55
	rst $38                                          ; $4abd: $ff
	ld a, [hl+]                                      ; $4abe: $2a
	rst $38                                          ; $4abf: $ff
	dec b                                            ; $4ac0: $05
	ld a, e                                          ; $4ac1: $7b
	ldh a, [$9e]                                     ; $4ac2: $f0 $9e
	xor e                                            ; $4ac4: $ab
	cp c                                             ; $4ac5: $b9
	ld d, l                                          ; $4ac6: $55
	ld a, [hl+]                                      ; $4ac7: $2a
	dec d                                            ; $4ac8: $15
	inc bc                                           ; $4ac9: $03
	nop                                              ; $4aca: $00
	nop                                              ; $4acb: $00
	nop                                              ; $4acc: $00
	ld a, b                                          ; $4acd: $78
	sbc [hl]                                         ; $4ace: $9e
	ld a, b                                          ; $4acf: $78
	sbc $38                                          ; $4ad0: $de $38
	sbc $b8                                          ; $4ad2: $de $b8
	ld a, a                                          ; $4ad4: $7f
	db $fc                                           ; $4ad5: $fc
	ld a, a                                          ; $4ad6: $7f
	ccf                                              ; $4ad7: $3f
	ld a, [hl]                                       ; $4ad8: $7e
	add hl, bc                                       ; $4ad9: $09
	rst SubAFromDE                                          ; $4ada: $df
	jr c, @-$69                                      ; $4adb: $38 $95

	ld de, $ca1e                                     ; $4add: $11 $1e $ca
	rst SubAFromDE                                          ; $4ae0: $df
	push de                                          ; $4ae1: $d5
	rst SubAFromDE                                          ; $4ae2: $df
	sbc $df                                          ; $4ae3: $de $df
	rra                                              ; $4ae5: $1f
	rra                                              ; $4ae6: $1f
	db $dd                                           ; $4ae7: $dd
	rst SubAFromDE                                          ; $4ae8: $df
	sbc d                                            ; $4ae9: $9a
	ret nz                                           ; $4aea: $c0

	ret c                                            ; $4aeb: $d8

	db $fc                                           ; $4aec: $fc
	db $fc                                           ; $4aed: $fc
	cp l                                             ; $4aee: $bd
	ld a, d                                          ; $4aef: $7a
	and h                                            ; $4af0: $a4
	sub c                                            ; $4af1: $91
	xor l                                            ; $4af2: $ad
	db $fd                                           ; $4af3: $fd
	ld d, b                                          ; $4af4: $50
	ld hl, sp+$2b                                    ; $4af5: $f8 $2b
	ei                                               ; $4af7: $fb
	ld bc, $01f9                                     ; $4af8: $01 $f9 $01
	db $fd                                           ; $4afb: $fd
	ld a, d                                          ; $4afc: $7a
	nop                                              ; $4afd: $00
	xor a                                            ; $4afe: $af
	ld d, b                                          ; $4aff: $50
	ld h, l                                          ; $4b00: $65
	add b                                            ; $4b01: $80
	ld a, a                                          ; $4b02: $7f
	sbc b                                            ; $4b03: $98
	sbc c                                            ; $4b04: $99
	db $fc                                           ; $4b05: $fc
	rst $38                                          ; $4b06: $ff
	or $ff                                           ; $4b07: $f6 $ff
	ld sp, hl                                        ; $4b09: $f9
	cp $65                                           ; $4b0a: $fe $65
	add b                                            ; $4b0c: $80
	sbc [hl]                                         ; $4b0d: $9e
	xor a                                            ; $4b0e: $af
	cp a                                             ; $4b0f: $bf
	ld bc, $deff                                     ; $4b10: $01 $ff $de
	rst $38                                          ; $4b13: $ff
	ld h, l                                          ; $4b14: $65
	ld b, b                                          ; $4b15: $40
	ld a, a                                          ; $4b16: $7f
	db $fc                                           ; $4b17: $fc
	sbc e                                            ; $4b18: $9b
	ret nz                                           ; $4b19: $c0

	nop                                              ; $4b1a: $00
	rrca                                             ; $4b1b: $0f
	rrca                                             ; $4b1c: $0f
	ld e, l                                          ; $4b1d: $5d
	ld b, b                                          ; $4b1e: $40
	sbc e                                            ; $4b1f: $9b
	dec d                                            ; $4b20: $15
	ld [$f5aa], a                                    ; $4b21: $ea $aa $f5
	ld d, l                                          ; $4b24: $55
	ld b, b                                          ; $4b25: $40
	ld a, a                                          ; $4b26: $7f
	ret nz                                           ; $4b27: $c0

	sbc l                                            ; $4b28: $9d
	inc e                                            ; $4b29: $1c
	rra                                              ; $4b2a: $1f
	ld d, l                                          ; $4b2b: $55
	ld b, b                                          ; $4b2c: $40
	ld a, a                                          ; $4b2d: $7f
	ret nz                                           ; $4b2e: $c0

	ld a, a                                          ; $4b2f: $7f
	call nc, $989b                                   ; $4b30: $d4 $9b $98
	ret nz                                           ; $4b33: $c0

	ld h, c                                          ; $4b34: $61
	add b                                            ; $4b35: $80
	ld d, a                                          ; $4b36: $57
	ret nz                                           ; $4b37: $c0

	sbc [hl]                                         ; $4b38: $9e
	db $fd                                           ; $4b39: $fd
	ld a, e                                          ; $4b3a: $7b
	inc [hl]                                         ; $4b3b: $34
	ld d, a                                          ; $4b3c: $57
	ret nz                                           ; $4b3d: $c0

	ld [hl], a                                       ; $4b3e: $77
	jr nc, jr_018_4b98                               ; $4b3f: $30 $57

	add b                                            ; $4b41: $80
	sbc l                                            ; $4b42: $9d
	or a                                             ; $4b43: $b7
	dec bc                                           ; $4b44: $0b
	ld d, a                                          ; $4b45: $57
	ret nz                                           ; $4b46: $c0

	ld a, a                                          ; $4b47: $7f
	inc h                                            ; $4b48: $24
	ld d, h                                          ; $4b49: $54
	ret nz                                           ; $4b4a: $c0

jr_018_4b4b:
	ld [hl], a                                       ; $4b4b: $77
	or a                                             ; $4b4c: $b7
	sbc $ff                                          ; $4b4d: $de $ff
	sub a                                            ; $4b4f: $97
	cp $fa                                           ; $4b50: $fe $fa
	db $fc                                           ; $4b52: $fc
	push af                                          ; $4b53: $f5
	ld hl, sp-$16                                    ; $4b54: $f8 $ea
	ldh [$80], a                                     ; $4b56: $e0 $80
	ld [hl], e                                       ; $4b58: $73
	xor b                                            ; $4b59: $a8
	adc e                                            ; $4b5a: $8b
	rst SubAFromDE                                          ; $4b5b: $df
	xor a                                            ; $4b5c: $af
	rst SubAFromDE                                          ; $4b5d: $df
	and a                                            ; $4b5e: $a7
	rst AddAOntoHL                                          ; $4b5f: $ef
	or a                                             ; $4b60: $b7
	ld l, a                                          ; $4b61: $6f
	db $d3                                           ; $4b62: $d3
	ld h, a                                          ; $4b63: $67
	db $db                                           ; $4b64: $db
	ld [hl], a                                       ; $4b65: $77
	ld e, c                                          ; $4b66: $59
	halt                                             ; $4b67: $76
	ld l, b                                          ; $4b68: $68
	ld a, b                                          ; $4b69: $78
	ld h, b                                          ; $4b6a: $60
	ld [$eafd], a                                    ; $4b6b: $ea $fd $ea
	db $fc                                           ; $4b6e: $fc
	ld [hl], a                                       ; $4b6f: $77
	cp $9c                                           ; $4b70: $fe $9c
	db $ed                                           ; $4b72: $ed
	cp $f5                                           ; $4b73: $fe $f5
	ld a, e                                          ; $4b75: $7b
	cp $7f                                           ; $4b76: $fe $7f
	ld [hl-], a                                      ; $4b78: $32
	db $d3                                           ; $4b79: $d3
	rst $38                                          ; $4b7a: $ff
	rst SubAFromDE                                          ; $4b7b: $df
	ccf                                              ; $4b7c: $3f
	call c, $dfff                                    ; $4b7d: $dc $ff $df
	ld a, a                                          ; $4b80: $7f
	rst SubAFromDE                                          ; $4b81: $df
	ccf                                              ; $4b82: $3f
	adc [hl]                                         ; $4b83: $8e
	sbc a                                            ; $4b84: $9f
	ld b, a                                          ; $4b85: $47
	add a                                            ; $4b86: $87
	ld h, c                                          ; $4b87: $61
	add c                                            ; $4b88: $81
	jr nc, jr_018_4b4b                               ; $4b89: $30 $c0

	ld d, e                                          ; $4b8b: $53
	xor a                                            ; $4b8c: $af
	xor c                                            ; $4b8d: $a9
	ld d, a                                          ; $4b8e: $57
	ld d, h                                          ; $4b8f: $54
	xor e                                            ; $4b90: $ab
	add sp, $17                                      ; $4b91: $e8 $17
	db $f4                                           ; $4b93: $f4
	dec bc                                           ; $4b94: $0b
	ld l, h                                          ; $4b95: $6c
	ldh [$9a], a                                     ; $4b96: $e0 $9a

jr_018_4b98:
	jp nz, $c5c0                                     ; $4b98: $c2 $c0 $c5

	add b                                            ; $4b9b: $80
	add d                                            ; $4b9c: $82
	cp a                                             ; $4b9d: $bf
	ld b, c                                          ; $4b9e: $41
	jr nz, jr_018_4c09                               ; $4b9f: $20 $68

	ldh a, [$dd]                                     ; $4ba1: $f0 $dd
	rst $38                                          ; $4ba3: $ff
	ld a, a                                          ; $4ba4: $7f
	ld c, [hl]                                       ; $4ba5: $4e
	ld a, a                                          ; $4ba6: $7f
	ld l, b                                          ; $4ba7: $68
	sbc e                                            ; $4ba8: $9b
	db $fc                                           ; $4ba9: $fc
	ei                                               ; $4baa: $fb
	ld a, [$7765]                                    ; $4bab: $fa $65 $77
	ldh [$8d], a                                     ; $4bae: $e0 $8d
	or a                                             ; $4bb0: $b7
	ld l, e                                          ; $4bb1: $6b
	or a                                             ; $4bb2: $b7
	add hl, hl                                       ; $4bb3: $29
	cp e                                             ; $4bb4: $bb
	dec l                                            ; $4bb5: $2d
	sbc e                                            ; $4bb6: $9b
	inc [hl]                                         ; $4bb7: $34
	ld e, c                                          ; $4bb8: $59
	or [hl]                                          ; $4bb9: $b6
	ld e, l                                          ; $4bba: $5d
	sub [hl]                                         ; $4bbb: $96
	ld e, l                                          ; $4bbc: $5d
	sbc d                                            ; $4bbd: $9a
	sbc a                                            ; $4bbe: $9f
	ret c                                            ; $4bbf: $d8

	ld a, [$6fff]                                    ; $4bc0: $fa $ff $6f
	cp $9c                                           ; $4bc3: $fe $9c
	ei                                               ; $4bc5: $fb
	rst $38                                          ; $4bc6: $ff
	db $fd                                           ; $4bc7: $fd
	ld [hl], e                                       ; $4bc8: $73
	cp $d4                                           ; $4bc9: $fe $d4
	rst $38                                          ; $4bcb: $ff
	rst SubAFromDE                                          ; $4bcc: $df
	ld a, a                                          ; $4bcd: $7f
	sbc [hl]                                         ; $4bce: $9e
	rrca                                             ; $4bcf: $0f
	ld [hl], a                                       ; $4bd0: $77
	ld a, [$bf96]                                    ; $4bd1: $fa $96 $bf
	rra                                              ; $4bd4: $1f
	ld e, a                                          ; $4bd5: $5f
	rrca                                             ; $4bd6: $0f
	xor a                                            ; $4bd7: $af
	rlca                                             ; $4bd8: $07
	dec d                                            ; $4bd9: $15
	ld bc, $6a02                                     ; $4bda: $01 $02 $6a
	or b                                             ; $4bdd: $b0
	rst SubAFromDE                                          ; $4bde: $df
	rst $38                                          ; $4bdf: $ff
	ld a, a                                          ; $4be0: $7f
	ret nc                                           ; $4be1: $d0

	sub a                                            ; $4be2: $97
	pop af                                           ; $4be3: $f1
	rst $38                                          ; $4be4: $ff
	ld [$d5f5], a                                    ; $4be5: $ea $f5 $d5
	ld [$95ea], a                                    ; $4be8: $ea $ea $95
	ld a, d                                          ; $4beb: $7a
	daa                                              ; $4bec: $27
	ld a, e                                          ; $4bed: $7b
	cp $7f                                           ; $4bee: $fe $7f
	db $dd                                           ; $4bf0: $dd
	ld a, a                                          ; $4bf1: $7f
	cp $89                                           ; $4bf2: $fe $89
	cp a                                             ; $4bf4: $bf
	ld e, a                                          ; $4bf5: $5f
	cp a                                             ; $4bf6: $bf
	ld e, a                                          ; $4bf7: $5f
	rst SubAFromDE                                          ; $4bf8: $df
	ld l, a                                          ; $4bf9: $6f
	sub [hl]                                         ; $4bfa: $96
	push hl                                          ; $4bfb: $e5
	and [hl]                                         ; $4bfc: $a6
	push af                                          ; $4bfd: $f5
	xor d                                            ; $4bfe: $aa
	rst FarCall                                          ; $4bff: $f7
	xor e                                            ; $4c00: $ab
	ldh a, [c]                                       ; $4c01: $f2
	set 6, d                                         ; $4c02: $cb $f2
	push de                                          ; $4c04: $d5
	ei                                               ; $4c05: $fb
	push de                                          ; $4c06: $d5
	ld sp, hl                                        ; $4c07: $f9
	push de                                          ; $4c08: $d5

jr_018_4c09:
	ld sp, hl                                        ; $4c09: $f9
	ld l, a                                          ; $4c0a: $6f
	cp b                                             ; $4c0b: $b8
	ld [hl], a                                       ; $4c0c: $77
	db $fd                                           ; $4c0d: $fd
	ld a, a                                          ; $4c0e: $7f
	ld b, l                                          ; $4c0f: $45
	sbc h                                            ; $4c10: $9c
	rra                                              ; $4c11: $1f
	rst $38                                          ; $4c12: $ff
	add a                                            ; $4c13: $87
	ld a, e                                          ; $4c14: $7b
	or $7f                                           ; $4c15: $f6 $7f
	ld [hl], c                                       ; $4c17: $71
	ld a, a                                          ; $4c18: $7f
	or $8a                                           ; $4c19: $f6 $8a
	ld a, [bc]                                       ; $4c1b: $0a
	rst $38                                          ; $4c1c: $ff
	ld b, c                                          ; $4c1d: $41
	cp a                                             ; $4c1e: $bf
	xor d                                            ; $4c1f: $aa
	ld d, l                                          ; $4c20: $55
	ld d, l                                          ; $4c21: $55
	xor d                                            ; $4c22: $aa
	ld [$d315], a                                    ; $4c23: $ea $15 $d3
	xor a                                            ; $4c26: $af
	jp hl                                            ; $4c27: $e9


	rla                                              ; $4c28: $17
	ldh a, [rIF]                                     ; $4c29: $f0 $0f
	add sp, $17                                      ; $4c2b: $e8 $17
	push af                                          ; $4c2d: $f5
	ld a, [bc]                                       ; $4c2e: $0a
	ld a, [$f179]                                    ; $4c2f: $fa $79 $f1
	ld a, e                                          ; $4c32: $7b
	cp $6f                                           ; $4c33: $fe $6f
	ld c, a                                          ; $4c35: $4f
	ld a, e                                          ; $4c36: $7b
	ld c, l                                          ; $4c37: $4d
	sbc c                                            ; $4c38: $99
	db $fd                                           ; $4c39: $fd
	ld hl, sp-$0d                                    ; $4c3a: $f8 $f3
	ldh a, [$e5]                                     ; $4c3c: $f0 $e5
	ldh [rPCM34], a                                  ; $4c3e: $e0 $77
	xor d                                            ; $4c40: $aa
	sbc l                                            ; $4c41: $9d
	cp a                                             ; $4c42: $bf
	rst SubAFromDE                                          ; $4c43: $df
	ld a, d                                          ; $4c44: $7a
	jp c, $af94                                      ; $4c45: $da $94 $af

	ld l, a                                          ; $4c48: $6f
	rst SubAFromHL                                          ; $4c49: $d7
	ld l, a                                          ; $4c4a: $6f
	ld d, a                                          ; $4c4b: $57
	ld [hl], a                                       ; $4c4c: $77
	ld e, e                                          ; $4c4d: $5b
	push hl                                          ; $4c4e: $e5
	ld sp, hl                                        ; $4c4f: $f9
	jp hl                                            ; $4c50: $e9


	db $fd                                           ; $4c51: $fd
	halt                                             ; $4c52: $76
	call c, $f29d                                    ; $4c53: $dc $9d $f2
	db $fc                                           ; $4c56: $fc
	halt                                             ; $4c57: $76
	ldh [$7f], a                                     ; $4c58: $e0 $7f
	cp $6b                                           ; $4c5a: $fe $6b
	and a                                            ; $4c5c: $a7
	ld a, a                                          ; $4c5d: $7f
	cp $7f                                           ; $4c5e: $fe $7f
	ld d, [hl]                                       ; $4c60: $56
	sub b                                            ; $4c61: $90
	rlca                                             ; $4c62: $07
	rst $38                                          ; $4c63: $ff
	inc bc                                           ; $4c64: $03
	rst $38                                          ; $4c65: $ff
	ld bc, $c0eb                                     ; $4c66: $01 $eb $c0
	push de                                          ; $4c69: $d5
	ret nz                                           ; $4c6a: $c0

	xor d                                            ; $4c6b: $aa
	ret nz                                           ; $4c6c: $c0

	sub l                                            ; $4c6d: $95
	add b                                            ; $4c6e: $80
	add e                                            ; $4c6f: $83
	add b                                            ; $4c70: $80
	cp [hl]                                          ; $4c71: $be
	add b                                            ; $4c72: $80
	nop                                              ; $4c73: $00
	nop                                              ; $4c74: $00
	jp nc, Jump_018_7fff                             ; $4c75: $d2 $ff $7f

	add h                                            ; $4c78: $84
	adc h                                            ; $4c79: $8c
	rst JumpTable                                          ; $4c7a: $c7
	rst AddAOntoHL                                          ; $4c7b: $ef

Call_018_4c7c:
	rla                                              ; $4c7c: $17
	sub a                                            ; $4c7d: $97
	ei                                               ; $4c7e: $fb
	sub a                                            ; $4c7f: $97
	db $db                                           ; $4c80: $db
	sbc e                                            ; $4c81: $9b
	push de                                          ; $4c82: $d5
	ld l, e                                          ; $4c83: $6b
	call $ca6d                                       ; $4c84: $cd $6d $ca
	ld d, l                                          ; $4c87: $55
	ld [$9fe0], a                                    ; $4c88: $ea $e0 $9f
	rst $38                                          ; $4c8b: $ff
	ldh [rPCM34], a                                  ; $4c8c: $e0 $77
	sub c                                            ; $4c8e: $91
	reti                                             ; $4c8f: $d9


	rst $38                                          ; $4c90: $ff
	adc d                                            ; $4c91: $8a
	ld l, a                                          ; $4c92: $6f
	adc a                                            ; $4c93: $8f
	cp a                                             ; $4c94: $bf
	ld c, a                                          ; $4c95: $4f
	ld e, a                                          ; $4c96: $5f
	xor a                                            ; $4c97: $af
	adc a                                            ; $4c98: $8f
	rst FarCall                                          ; $4c99: $f7
	ld c, a                                          ; $4c9a: $4f
	rst FarCall                                          ; $4c9b: $f7
	and a                                            ; $4c9c: $a7
	ei                                               ; $4c9d: $fb
	rst SubAFromHL                                          ; $4c9e: $d7
	rst $38                                          ; $4c9f: $ff
	db $eb                                           ; $4ca0: $eb
	db $fd                                           ; $4ca1: $fd
	pop af                                           ; $4ca2: $f1
	cp $fa                                           ; $4ca3: $fe $fa
	rst $38                                          ; $4ca5: $ff
	push hl                                          ; $4ca6: $e5
	ld [hl], e                                       ; $4ca7: $73
	ldh [$9e], a                                     ; $4ca8: $e0 $9e
	rst SubAFromDE                                          ; $4caa: $df
	ld a, e                                          ; $4cab: $7b
	cp $9e                                           ; $4cac: $fe $9e
	and a                                            ; $4cae: $a7
	ld e, d                                          ; $4caf: $5a
	db $e4                                           ; $4cb0: $e4
	ld l, a                                          ; $4cb1: $6f
	ld a, [bc]                                       ; $4cb2: $0a
	rst SubAFromDE                                          ; $4cb3: $df
	pop af                                           ; $4cb4: $f1
	adc l                                            ; $4cb5: $8d
	rlca                                             ; $4cb6: $07
	dec b                                            ; $4cb7: $05
	cp l                                             ; $4cb8: $bd
	ld a, [$fca7]                                    ; $4cb9: $fa $a7 $fc
	xor $f5                                          ; $4cbc: $ee $f5
	jp c, $d7f7                                      ; $4cbe: $da $f7 $d7

	ld a, [$fad5]                                    ; $4cc1: $fa $d5 $fa
	rst SubAFromBC                                          ; $4cc4: $e7
	rst SubAFromBC                                          ; $4cc5: $e7
	ld hl, sp-$08                                    ; $4cc6: $f8 $f8
	add $ff                                          ; $4cc8: $c6 $ff
	ld a, e                                          ; $4cca: $7b
	nop                                              ; $4ccb: $00
	ld d, c                                          ; $4ccc: $51
	nop                                              ; $4ccd: $00
	ld a, h                                          ; $4cce: $7c
	db $e4                                           ; $4ccf: $e4
	rst SubAFromDE                                          ; $4cd0: $df
	ld a, [$f593]                                    ; $4cd1: $fa $93 $f5
	db $fd                                           ; $4cd4: $fd
	ldh a, [c]                                       ; $4cd5: $f2
	ld a, [$edf5]                                    ; $4cd6: $fa $f5 $ed
	ldh a, [c]                                       ; $4cd9: $f2
	cp $e1                                           ; $4cda: $fe $e1
	rst AddAOntoHL                                          ; $4cdc: $ef
	ldh [$d5], a                                     ; $4cdd: $e0 $d5
	ld a, e                                          ; $4cdf: $7b
	db $10                                           ; $4ce0: $10
	ld [hl], a                                       ; $4ce1: $77
	xor d                                            ; $4ce2: $aa
	ld [hl], d                                       ; $4ce3: $72
	xor d                                            ; $4ce4: $aa
	db $db                                           ; $4ce5: $db
	rst $38                                          ; $4ce6: $ff
	cp [hl]                                          ; $4ce7: $be
	cp a                                             ; $4ce8: $bf
	rst $38                                          ; $4ce9: $ff
	xor [hl]                                         ; $4cea: $ae
	sub l                                            ; $4ceb: $95
	ld bc, $01fe                                     ; $4cec: $01 $fe $01
	dec e                                            ; $4cef: $1d
	ld [bc], a                                       ; $4cf0: $02
	di                                               ; $4cf1: $f3
	dec c                                            ; $4cf2: $0d
	rst GetHLinHL                                          ; $4cf3: $cf
	inc sp                                           ; $4cf4: $33
	rst $38                                          ; $4cf5: $ff
	cp e                                             ; $4cf6: $bb
	ld [$aaff], a                                    ; $4cf7: $ea $ff $aa
	rst $38                                          ; $4cfa: $ff
	ret nz                                           ; $4cfb: $c0

	ld a, a                                          ; $4cfc: $7f
	adc a                                            ; $4cfd: $8f
	add b                                            ; $4cfe: $80
	sbc a                                            ; $4cff: $9f
	ld h, b                                          ; $4d00: $60
	rst AddAOntoHL                                          ; $4d01: $ef
	ret nc                                           ; $4d02: $d0

	rst FarCall                                          ; $4d03: $f7
	add sp, -$09                                     ; $4d04: $e8 $f7
	add sp, -$05                                     ; $4d06: $e8 $fb
	db $f4                                           ; $4d08: $f4
	ei                                               ; $4d09: $fb
	db $f4                                           ; $4d0a: $f4
	db $fd                                           ; $4d0b: $fd
	ld a, [$79fe]                                    ; $4d0c: $fa $fe $79
	ld h, e                                          ; $4d0f: $63
	reti                                             ; $4d10: $d9


	ccf                                              ; $4d11: $3f
	sub a                                            ; $4d12: $97
	cp a                                             ; $4d13: $bf
	ccf                                              ; $4d14: $3f
	ld e, a                                          ; $4d15: $5f
	ccf                                              ; $4d16: $3f
	sbc a                                            ; $4d17: $9f
	rra                                              ; $4d18: $1f
	rst SubAFromDE                                          ; $4d19: $df
	rra                                              ; $4d1a: $1f
	ld [hl-], a                                      ; $4d1b: $32
	add e                                            ; $4d1c: $83
	rst SubAFromDE                                          ; $4d1d: $df
	db $fc                                           ; $4d1e: $fc
	sbc c                                            ; $4d1f: $99
	cp $fd                                           ; $4d20: $fe $fd
	ld a, [$fdff]                                    ; $4d22: $fa $ff $fd
	ldh a, [c]                                       ; $4d25: $f2
	call c, $94fc                                    ; $4d26: $dc $fc $94
	ld hl, sp-$06                                    ; $4d29: $f8 $fa
	db $fd                                           ; $4d2b: $fd
	rla                                              ; $4d2c: $17
	cpl                                              ; $4d2d: $2f
	cpl                                              ; $4d2e: $2f
	ld e, a                                          ; $4d2f: $5f
	ld e, a                                          ; $4d30: $5f
	cp a                                             ; $4d31: $bf
	ld a, a                                          ; $4d32: $7f
	rst $38                                          ; $4d33: $ff
	ld h, a                                          ; $4d34: $67
	ld hl, sp-$69                                    ; $4d35: $f8 $97
	nop                                              ; $4d37: $00
	ld d, b                                          ; $4d38: $50
	nop                                              ; $4d39: $00
	ld d, h                                          ; $4d3a: $54
	nop                                              ; $4d3b: $00
	ld hl, sp+$03                                    ; $4d3c: $f8 $03
	inc c                                            ; $4d3e: $0c
	ld h, e                                          ; $4d3f: $63
	ld hl, sp-$68                                    ; $4d40: $f8 $98
	dec b                                            ; $4d42: $05
	nop                                              ; $4d43: $00
	dec d                                            ; $4d44: $15
	nop                                              ; $4d45: $00
	adc a                                            ; $4d46: $8f
	ld h, b                                          ; $4d47: $60
	sbc b                                            ; $4d48: $98
	ld h, a                                          ; $4d49: $67
	ld hl, sp-$69                                    ; $4d4a: $f8 $97
	db $f4                                           ; $4d4c: $f4
	ld a, [$fdfa]                                    ; $4d4d: $fa $fa $fd
	db $fd                                           ; $4d50: $fd
	cp $ff                                           ; $4d51: $fe $ff
	rst $38                                          ; $4d53: $ff
	ld h, a                                          ; $4d54: $67
	ld hl, sp-$6c                                    ; $4d55: $f8 $94
	rra                                              ; $4d57: $1f
	xor a                                            ; $4d58: $af
	rst SubAFromDE                                          ; $4d59: $df
	xor a                                            ; $4d5a: $af
	rst SubAFromDE                                          ; $4d5b: $df
	rst SubAFromBC                                          ; $4d5c: $e7
	rst FarCall                                          ; $4d5d: $f7
	rst $38                                          ; $4d5e: $ff
	rst AddAOntoHL                                          ; $4d5f: $ef
	rst SubAFromDE                                          ; $4d60: $df
	rst AddAOntoHL                                          ; $4d61: $ef
	call c, $8dff                                    ; $4d62: $dc $ff $8d
	pop af                                           ; $4d65: $f1
	ld hl, sp-$0c                                    ; $4d66: $f8 $f4
	ld hl, sp-$0c                                    ; $4d68: $f8 $f4
	ld a, [$faf5]                                    ; $4d6a: $fa $f5 $fa
	rst $38                                          ; $4d6d: $ff
	rst FarCall                                          ; $4d6e: $f7
	ei                                               ; $4d6f: $fb
	rst FarCall                                          ; $4d70: $f7
	ei                                               ; $4d71: $fb
	push af                                          ; $4d72: $f5
	ld a, [$7ff5]                                    ; $4d73: $fa $f5 $7f
	ld a, a                                          ; $4d76: $7f
	reti                                             ; $4d77: $d9


	cp a                                             ; $4d78: $bf
	db $db                                           ; $4d79: $db
	ld e, a                                          ; $4d7a: $5f
	db $dd                                           ; $4d7b: $dd
	rst $38                                          ; $4d7c: $ff
	sbc $7f                                          ; $4d7d: $de $7f
	ld a, a                                          ; $4d7f: $7f
	sbc b                                            ; $4d80: $98
	ld a, [$ffde]                                    ; $4d81: $fa $de $ff
	sbc [hl]                                         ; $4d84: $9e
	ld hl, sp-$22                                    ; $4d85: $f8 $de
	rst FarCall                                          ; $4d87: $f7
	sbc [hl]                                         ; $4d88: $9e
	ld hl, sp-$03                                    ; $4d89: $f8 $fd
	sbc $07                                          ; $4d8b: $de $07
	sbc h                                            ; $4d8d: $9c
	nop                                              ; $4d8e: $00
	rst FarCall                                          ; $4d8f: $f7
	rst FarCall                                          ; $4d90: $f7
	db $db                                           ; $4d91: $db
	rst AddAOntoHL                                          ; $4d92: $ef

Jump_018_4d93:
	rst SubAFromDE                                          ; $4d93: $df
	add sp, -$25                                     ; $4d94: $e8 $db
	ret nc                                           ; $4d96: $d0

	rst SubAFromDE                                          ; $4d97: $df
	rst $38                                          ; $4d98: $ff
	ld a, a                                          ; $4d99: $7f
	ld l, e                                          ; $4d9a: $6b
	sbc [hl]                                         ; $4d9b: $9e
	cp a                                             ; $4d9c: $bf
	sub $3f                                          ; $4d9d: $d6 $3f
	rst SubAFromDE                                          ; $4d9f: $df
	rst $38                                          ; $4da0: $ff
	ld a, a                                          ; $4da1: $7f
	ld b, b                                          ; $4da2: $40
	sbc [hl]                                         ; $4da3: $9e
	cp $d6                                           ; $4da4: $fe $d6
	db $fc                                           ; $4da6: $fc
	rst SubAFromDE                                          ; $4da7: $df
	cpl                                              ; $4da8: $2f
	db $db                                           ; $4da9: $db
	rla                                              ; $4daa: $17
	ld h, a                                          ; $4dab: $67
	ld hl, sp-$02                                    ; $4dac: $f8 $fe
	sbc [hl]                                         ; $4dae: $9e
	ret nz                                           ; $4daf: $c0

	sbc $e0                                          ; $4db0: $de $e0
	sbc [hl]                                         ; $4db2: $9e
	ret nz                                           ; $4db3: $c0

	ld e, e                                          ; $4db4: $5b
	ld hl, sp-$62                                    ; $4db5: $f8 $9e
	ld bc, $03de                                     ; $4db7: $01 $de $03
	sbc [hl]                                         ; $4dba: $9e
	ld bc, $f867                                     ; $4dbb: $01 $67 $f8
	rst SubAFromDE                                          ; $4dbe: $df
	ld a, [$f4db]                                    ; $4dbf: $fa $db $f4
	ld h, a                                          ; $4dc2: $67
	ld hl, sp-$69                                    ; $4dc3: $f8 $97
	adc a                                            ; $4dc5: $8f
	ld c, a                                          ; $4dc6: $4f
	adc a                                            ; $4dc7: $8f
	ld c, a                                          ; $4dc8: $4f
	cpl                                              ; $4dc9: $2f
	ld c, a                                          ; $4dca: $4f
	ld l, a                                          ; $4dcb: $6f
	ccf                                              ; $4dcc: $3f
	db $dd                                           ; $4dcd: $dd
	rrca                                             ; $4dce: $0f
	sbc $8f                                          ; $4dcf: $de $8f
	sub [hl]                                         ; $4dd1: $96
	rst GetHLinHL                                          ; $4dd2: $cf
	ld [$dad5], a                                    ; $4dd3: $ea $d5 $da
	cp $ff                                           ; $4dd6: $fe $ff
	rst AddAOntoHL                                          ; $4dd8: $ef
	rst SubAFromBC                                          ; $4dd9: $e7
	di                                               ; $4dda: $f3
	set 7, a                                         ; $4ddb: $cb $ff
	ld a, e                                          ; $4ddd: $7b
	ld b, a                                          ; $4dde: $47
	sbc b                                            ; $4ddf: $98
	rst $38                                          ; $4de0: $ff
	ccf                                              ; $4de1: $3f
	rst GetHLinHL                                          ; $4de2: $cf
	di                                               ; $4de3: $f3
	db $fd                                           ; $4de4: $fd
	cp $fe                                           ; $4de5: $fe $fe
	ld a, e                                          ; $4de7: $7b
	ld sp, hl                                        ; $4de8: $f9
	sub [hl]                                         ; $4de9: $96
	inc sp                                           ; $4dea: $33
	dec c                                            ; $4deb: $0d
	ld [bc], a                                       ; $4dec: $02
	ld bc, $bf01                                     ; $4ded: $01 $01 $bf
	ld e, a                                          ; $4df0: $5f
	ldh [$9f], a                                     ; $4df1: $e0 $9f
	ld a, e                                          ; $4df3: $7b
	db $eb                                           ; $4df4: $eb
	rst SubAFromDE                                          ; $4df5: $df
	rst $38                                          ; $4df6: $ff
	sbc e                                            ; $4df7: $9b
	ld h, b                                          ; $4df8: $60
	sbc a                                            ; $4df9: $9f
	ld h, b                                          ; $4dfa: $60
	add b                                            ; $4dfb: $80
	cp $9c                                           ; $4dfc: $fe $9c
	ld sp, hl                                        ; $4dfe: $f9
	db $fd                                           ; $4dff: $fd
	db $fc                                           ; $4e00: $fc
	ld a, e                                          ; $4e01: $7b
	ld e, [hl]                                       ; $4e02: $5e
	rst SubAFromDE                                          ; $4e03: $df
	ei                                               ; $4e04: $fb
	ld a, e                                          ; $4e05: $7b
	sbc $7a                                          ; $4e06: $de $7a
	sub a                                            ; $4e08: $97
	rst SubAFromDE                                          ; $4e09: $df
	db $f4                                           ; $4e0a: $f4
	rst SubAFromDE                                          ; $4e0b: $df
	rst $38                                          ; $4e0c: $ff
	sbc e                                            ; $4e0d: $9b
	cpl                                              ; $4e0e: $2f
	rra                                              ; $4e0f: $1f
	ld e, a                                          ; $4e10: $5f
	cp a                                             ; $4e11: $bf
	ld [hl], e                                       ; $4e12: $73
	add hl, bc                                       ; $4e13: $09
	ld a, a                                          ; $4e14: $7f
	ld [hl], $7f                                     ; $4e15: $36 $7f
	rst FarCall                                          ; $4e17: $f7
	adc [hl]                                         ; $4e18: $8e
	ccf                                              ; $4e19: $3f
	di                                               ; $4e1a: $f3
	ld sp, hl                                        ; $4e1b: $f9
	ldh a, [$f8]                                     ; $4e1c: $f0 $f8
	db $fd                                           ; $4e1e: $fd
	ld a, [$fffb]                                    ; $4e1f: $fa $fb $ff
	rst $38                                          ; $4e22: $ff
	rst FarCall                                          ; $4e23: $f7
	rst $38                                          ; $4e24: $ff
	rst $38                                          ; $4e25: $ff
	ld a, [$fcfd]                                    ; $4e26: $fa $fd $fc
	db $fc                                           ; $4e29: $fc
	ld [hl], e                                       ; $4e2a: $73
	xor d                                            ; $4e2b: $aa
	ld a, d                                          ; $4e2c: $7a
	db $e4                                           ; $4e2d: $e4
	ld h, e                                          ; $4e2e: $63
	ld hl, sp-$65                                    ; $4e2f: $f8 $9b
	rrca                                             ; $4e31: $0f
	di                                               ; $4e32: $f3
	inc c                                            ; $4e33: $0c
	inc bc                                           ; $4e34: $03
	halt                                             ; $4e35: $76
	add sp, $6b                                      ; $4e36: $e8 $6b
	ld hl, sp-$65                                    ; $4e38: $f8 $9b
	ld h, a                                          ; $4e3a: $67
	ld d, b                                          ; $4e3b: $50
	daa                                              ; $4e3c: $27
	sbc b                                            ; $4e3d: $98
	ld [hl], a                                       ; $4e3e: $77
	and a                                            ; $4e3f: $a7
	sbc h                                            ; $4e40: $9c
	cp a                                             ; $4e41: $bf
	ldh a, [$e7]                                     ; $4e42: $f0 $e7
	ld [hl], e                                       ; $4e44: $73
	ld hl, sp+$7a                                    ; $4e45: $f8 $7a
	adc l                                            ; $4e47: $8d
	halt                                             ; $4e48: $76
	db $fd                                           ; $4e49: $fd
	sbc [hl]                                         ; $4e4a: $9e
	db $fd                                           ; $4e4b: $fd
	call c, Call_018_7bff                            ; $4e4c: $dc $ff $7b
	ld hl, sp-$64                                    ; $4e4f: $f8 $9c
	inc bc                                           ; $4e51: $03
	rlca                                             ; $4e52: $07
	inc bc                                           ; $4e53: $03
	db $dd                                           ; $4e54: $dd
	rlca                                             ; $4e55: $07
	sbc l                                            ; $4e56: $9d
	rrca                                             ; $4e57: $0f
	inc bc                                           ; $4e58: $03
	ld l, a                                          ; $4e59: $6f
	ld sp, hl                                        ; $4e5a: $f9
	sub a                                            ; $4e5b: $97
	rrca                                             ; $4e5c: $0f
	xor e                                            ; $4e5d: $ab
	ld d, l                                          ; $4e5e: $55
	ld a, [hl+]                                      ; $4e5f: $2a
	dec d                                            ; $4e60: $15
	inc bc                                           ; $4e61: $03
	nop                                              ; $4e62: $00
	add b                                            ; $4e63: $80
	ld [hl], a                                       ; $4e64: $77
	ld [hl], l                                       ; $4e65: $75
	rst $38                                          ; $4e66: $ff
	rst SubAFromDE                                          ; $4e67: $df
	add b                                            ; $4e68: $80
	sbc h                                            ; $4e69: $9c
	ret nz                                           ; $4e6a: $c0

	ld hl, sp-$04                                    ; $4e6b: $f8 $fc
	ld [hl], e                                       ; $4e6d: $73
	adc $9d                                          ; $4e6e: $ce $9d
	rst $38                                          ; $4e70: $ff
	db $fc                                           ; $4e71: $fc
	sbc $fe                                          ; $4e72: $de $fe
	ld h, e                                          ; $4e74: $63
	dec sp                                           ; $4e75: $3b
	ld a, d                                          ; $4e76: $7a
	ld l, h                                          ; $4e77: $6c
	ld h, a                                          ; $4e78: $67
	db $f4                                           ; $4e79: $f4
	add e                                            ; $4e7a: $83
	sbc d                                            ; $4e7b: $9a
	adc $cc                                          ; $4e7c: $ce $cc
	push hl                                          ; $4e7e: $e5
	push hl                                          ; $4e7f: $e5
	pop af                                           ; $4e80: $f1
	ldh a, [c]                                       ; $4e81: $f2
	ld a, [$f5f3]                                    ; $4e82: $fa $f3 $f5
	ld sp, hl                                        ; $4e85: $f9
	ld sp, hl                                        ; $4e86: $f9
	db $fc                                           ; $4e87: $fc
	db $fd                                           ; $4e88: $fd
	db $fc                                           ; $4e89: $fc
	cp $60                                           ; $4e8a: $fe $60
	or b                                             ; $4e8c: $b0
	ld d, c                                          ; $4e8d: $51
	adc c                                            ; $4e8e: $89
	ld c, a                                          ; $4e8f: $4f
	and e                                            ; $4e90: $a3
	rst SubAFromHL                                          ; $4e91: $d7
	rst SubAFromBC                                          ; $4e92: $e7
	add b                                            ; $4e93: $80
	ld b, b                                          ; $4e94: $40
	and c                                            ; $4e95: $a1
	di                                               ; $4e96: $f3
	halt                                             ; $4e97: $76
	ei                                               ; $4e98: $fb
	sub a                                            ; $4e99: $97
	ld d, c                                          ; $4e9a: $51
	ld l, d                                          ; $4e9b: $6a
	push af                                          ; $4e9c: $f5
	cp $ff                                           ; $4e9d: $fe $ff
	rst SubAFromDE                                          ; $4e9f: $df
	rst $38                                          ; $4ea0: $ff
	rst SubAFromBC                                          ; $4ea1: $e7
	ld a, e                                          ; $4ea2: $7b
	jp $cc73                                         ; $4ea3: $c3 $73 $cc


	ld h, a                                          ; $4ea6: $67
	cp e                                             ; $4ea7: $bb
	reti                                             ; $4ea8: $d9


	rst $38                                          ; $4ea9: $ff
	rst SubAFromDE                                          ; $4eaa: $df
	cp a                                             ; $4eab: $bf
	sbc c                                            ; $4eac: $99
	ccf                                              ; $4ead: $3f
	ld e, a                                          ; $4eae: $5f
	rst SubAFromDE                                          ; $4eaf: $df
	sbc a                                            ; $4eb0: $9f
	rst AddAOntoHL                                          ; $4eb1: $ef
	rst GetHLinHL                                          ; $4eb2: $cf
	ld [hl], a                                       ; $4eb3: $77
	xor d                                            ; $4eb4: $aa
	rst SubAFromDE                                          ; $4eb5: $df
	ccf                                              ; $4eb6: $3f
	sbc d                                            ; $4eb7: $9a
	ld a, a                                          ; $4eb8: $7f
	sbc a                                            ; $4eb9: $9f
	and $f3                                          ; $4eba: $e6 $f3
	di                                               ; $4ebc: $f3
	ld a, e                                          ; $4ebd: $7b
	or a                                             ; $4ebe: $b7
	ld a, a                                          ; $4ebf: $7f
	cp b                                             ; $4ec0: $b8
	ld a, a                                          ; $4ec1: $7f
	or h                                             ; $4ec2: $b4
	ld l, a                                          ; $4ec3: $6f
	sub b                                            ; $4ec4: $90
	ld a, d                                          ; $4ec5: $7a
	db $e4                                           ; $4ec6: $e4
	ld [hl], d                                       ; $4ec7: $72
	pop hl                                           ; $4ec8: $e1
	ld e, a                                          ; $4ec9: $5f
	rst GetHLinHL                                          ; $4eca: $cf
	sbc c                                            ; $4ecb: $99
	ld e, a                                          ; $4ecc: $5f
	xor a                                            ; $4ecd: $af
	ld d, l                                          ; $4ece: $55
	ld a, [hl+]                                      ; $4ecf: $2a
	dec b                                            ; $4ed0: $05
	ld bc, $ffd9                                     ; $4ed1: $01 $d9 $ff
	sub d                                            ; $4ed4: $92
	or l                                             ; $4ed5: $b5
	ld a, d                                          ; $4ed6: $7a
	cp l                                             ; $4ed7: $bd
	ld e, d                                          ; $4ed8: $5a
	cp l                                             ; $4ed9: $bd
	ld e, [hl]                                       ; $4eda: $5e
	xor a                                            ; $4edb: $af
	ld d, l                                          ; $4edc: $55
	ld a, [bc]                                       ; $4edd: $0a
	dec b                                            ; $4ede: $05
	ld [bc], a                                       ; $4edf: $02
	dec b                                            ; $4ee0: $05
	ld [bc], a                                       ; $4ee1: $02
	ld [hl], d                                       ; $4ee2: $72
	ld e, d                                          ; $4ee3: $5a
	ld a, a                                          ; $4ee4: $7f
	ld c, d                                          ; $4ee5: $4a
	ld a, [hl]                                       ; $4ee6: $7e
	ld b, a                                          ; $4ee7: $47
	ld a, [hl]                                       ; $4ee8: $7e
	call c, Call_018_4277                            ; $4ee9: $dc $77 $42
	ld [hl], a                                       ; $4eec: $77
	ld hl, sp+$6b                                    ; $4eed: $f8 $6b
	ld b, c                                          ; $4eef: $41
	ld a, e                                          ; $4ef0: $7b
	ld b, b                                          ; $4ef1: $40
	set 7, a                                         ; $4ef2: $cb $ff
	ld a, a                                          ; $4ef4: $7f
	ld d, [hl]                                       ; $4ef5: $56
	sub b                                            ; $4ef6: $90
	ld l, e                                          ; $4ef7: $6b
	ld a, e                                          ; $4ef8: $7b
	or e                                             ; $4ef9: $b3
	dec h                                            ; $4efa: $25
	ld e, l                                          ; $4efb: $5d
	sbc c                                            ; $4efc: $99
	rst GetHLinHL                                          ; $4efd: $cf
	adc a                                            ; $4efe: $8f
	xor a                                            ; $4eff: $af
	rst JumpTable                                          ; $4f00: $c7
	rst SubAFromHL                                          ; $4f01: $d7
	rst FarCall                                          ; $4f02: $f7
	db $eb                                           ; $4f03: $eb
	db $eb                                           ; $4f04: $eb
	ld a, d                                          ; $4f05: $7a
	ld h, a                                          ; $4f06: $67
	add a                                            ; $4f07: $87
	ld h, e                                          ; $4f08: $63
	and b                                            ; $4f09: $a0
	ld a, d                                          ; $4f0a: $7a
	adc d                                            ; $4f0b: $8a
	ld a, c                                          ; $4f0c: $79
	daa                                              ; $4f0d: $27
	ld a, a                                          ; $4f0e: $7f
	and b                                            ; $4f0f: $a0
	ld a, [hl]                                       ; $4f10: $7e
	rst SubAFromDE                                          ; $4f11: $df
	sbc e                                            ; $4f12: $9b
	rrca                                             ; $4f13: $0f
	rra                                              ; $4f14: $1f
	ccf                                              ; $4f15: $3f
	ld a, a                                          ; $4f16: $7f
	ld a, e                                          ; $4f17: $7b
	and b                                            ; $4f18: $a0
	ld a, a                                          ; $4f19: $7f
	and a                                            ; $4f1a: $a7
	sbc l                                            ; $4f1b: $9d
	ld b, b                                          ; $4f1c: $40
	add b                                            ; $4f1d: $80
	ld [hl], l                                       ; $4f1e: $75
	add sp, -$05                                     ; $4f1f: $e8 $fb
	sbc b                                            ; $4f21: $98
	ld d, b                                          ; $4f22: $50
	xor d                                            ; $4f23: $aa
	db $fd                                           ; $4f24: $fd
	ld e, [hl]                                       ; $4f25: $5e
	xor a                                            ; $4f26: $af
	dec d                                            ; $4f27: $15
	xor d                                            ; $4f28: $aa
	db $fd                                           ; $4f29: $fd
	adc [hl]                                         ; $4f2a: $8e
	and b                                            ; $4f2b: $a0
	ld d, b                                          ; $4f2c: $50
	ld [$1af5], a                                    ; $4f2d: $ea $f5 $1a
	xor a                                            ; $4f30: $af
	rst SubAFromDE                                          ; $4f31: $df
	db $eb                                           ; $4f32: $eb
	push af                                          ; $4f33: $f5
	ld a, [$fefd]                                    ; $4f34: $fa $fd $fe
	ldh [$d0], a                                     ; $4f37: $e0 $d0
	ldh [$f4], a                                     ; $4f39: $e0 $f4
	ld a, [$9a6e]                                    ; $4f3b: $fa $6e $9a
	inc bc                                           ; $4f3e: $03
	rst $38                                          ; $4f3f: $ff
	ld [hl], c                                       ; $4f40: $71
	cpl                                              ; $4f41: $2f
	ld h, a                                          ; $4f42: $67
	sub b                                            ; $4f43: $90
	adc a                                            ; $4f44: $8f
	add hl, sp                                       ; $4f45: $39
	ld e, d                                          ; $4f46: $5a
	sbc [hl]                                         ; $4f47: $9e
	xor h                                            ; $4f48: $ac
	ret                                              ; $4f49: $c9


	rst SubAFromHL                                          ; $4f4a: $d7
	and $f3                                          ; $4f4b: $e6 $f3
	db $e3                                           ; $4f4d: $e3
	db $eb                                           ; $4f4e: $eb
	pop af                                           ; $4f4f: $f1
	push af                                          ; $4f50: $f5
	db $fd                                           ; $4f51: $fd
	ld a, [$1efa]                                    ; $4f52: $fa $fa $1e
	ld a, c                                          ; $4f55: $79
	ld c, [hl]                                       ; $4f56: $4e
	db $dd                                           ; $4f57: $dd
	rst $38                                          ; $4f58: $ff
	ld a, a                                          ; $4f59: $7f
	add l                                            ; $4f5a: $85
	db $db                                           ; $4f5b: $db
	rst $38                                          ; $4f5c: $ff
	ld [hl], a                                       ; $4f5d: $77
	sub b                                            ; $4f5e: $90
	ld a, [hl]                                       ; $4f5f: $7e
	cp $9d                                           ; $4f60: $fe $9d
	rra                                              ; $4f62: $1f
	cp a                                             ; $4f63: $bf
	ld [hl], a                                       ; $4f64: $77
	ld d, $9b                                        ; $4f65: $16 $9b
	and e                                            ; $4f67: $a3
	ld d, a                                          ; $4f68: $57
	rst AddAOntoHL                                          ; $4f69: $ef
	rst $38                                          ; $4f6a: $ff
	ld a, e                                          ; $4f6b: $7b
	sub b                                            ; $4f6c: $90
	sbc d                                            ; $4f6d: $9a
	xor e                                            ; $4f6e: $ab
	push de                                          ; $4f6f: $d5
	ld [$fcf5], a                                    ; $4f70: $ea $f5 $fc
	ld h, e                                          ; $4f73: $63
	sub b                                            ; $4f74: $90
	sbc b                                            ; $4f75: $98
	ld e, a                                          ; $4f76: $5f
	xor d                                            ; $4f77: $aa
	ld d, l                                          ; $4f78: $55
	xor d                                            ; $4f79: $aa
	add b                                            ; $4f7a: $80
	ldh [$f0], a                                     ; $4f7b: $e0 $f0
	ld l, [hl]                                       ; $4f7d: $6e
	ld b, b                                          ; $4f7e: $40
	ld a, a                                          ; $4f7f: $7f
	ld hl, sp-$65                                    ; $4f80: $f8 $9b
	add d                                            ; $4f82: $82
	ld b, l                                          ; $4f83: $45
	jp nz, Jump_018_77f1                             ; $4f84: $c2 $f1 $77

	jr nc, @+$01                                     ; $4f87: $30 $ff

	sbc l                                            ; $4f89: $9d
	ldh [$f8], a                                     ; $4f8a: $e0 $f8
	ld [hl], a                                       ; $4f8c: $77
	ld hl, sp-$63                                    ; $4f8d: $f8 $9d
	ld d, c                                          ; $4f8f: $51
	ld hl, sp-$25                                    ; $4f90: $f8 $db
	rst $38                                          ; $4f92: $ff
	sbc [hl]                                         ; $4f93: $9e
	xor a                                            ; $4f94: $af
	jp c, $9eff                                      ; $4f95: $da $ff $9e

	db $fd                                           ; $4f98: $fd
	ld l, e                                          ; $4f99: $6b
	add [hl]                                         ; $4f9a: $86
	sbc [hl]                                         ; $4f9b: $9e
	ld [bc], a                                       ; $4f9c: $02
	reti                                             ; $4f9d: $d9


	rst $38                                          ; $4f9e: $ff
	ld a, e                                          ; $4f9f: $7b
	and e                                            ; $4fa0: $a3
	sbc b                                            ; $4fa1: $98
	xor a                                            ; $4fa2: $af
	adc a                                            ; $4fa3: $8f
	ld c, a                                          ; $4fa4: $4f
	ld d, a                                          ; $4fa5: $57
	nop                                              ; $4fa6: $00
	nop                                              ; $4fa7: $00
	rra                                              ; $4fa8: $1f
	ld [hl], h                                       ; $4fa9: $74
	add [hl]                                         ; $4faa: $86
	sub [hl]                                         ; $4fab: $96
	rst SubAFromDE                                          ; $4fac: $df
	add d                                            ; $4fad: $82
	ld b, l                                          ; $4fae: $45
	add d                                            ; $4faf: $82
	ld b, c                                          ; $4fb0: $41
	jr nz, jr_018_4ff7                               ; $4fb1: $20 $44

	ld [hl], l                                       ; $4fb3: $75
	add hl, sp                                       ; $4fb4: $39
	db $fd                                           ; $4fb5: $fd
	sub a                                            ; $4fb6: $97
	add c                                            ; $4fb7: $81
	add e                                            ; $4fb8: $83
	sbc a                                            ; $4fb9: $9f
	rst $38                                          ; $4fba: $ff
	ld d, c                                          ; $4fbb: $51
	xor b                                            ; $4fbc: $a8
	ld d, h                                          ; $4fbd: $54
	add sp, $78                                      ; $4fbe: $e8 $78
	ld h, b                                          ; $4fc0: $60
	adc [hl]                                         ; $4fc1: $8e
	ld a, d                                          ; $4fc2: $7a
	xor a                                            ; $4fc3: $af
	ld d, a                                          ; $4fc4: $57
	xor e                                            ; $4fc5: $ab
	rla                                              ; $4fc6: $17
	dec bc                                           ; $4fc7: $0b
	dec b                                            ; $4fc8: $05
	ld a, [bc]                                       ; $4fc9: $0a
	dec b                                            ; $4fca: $05
	db $fd                                           ; $4fcb: $fd
	cp $bf                                           ; $4fcc: $fe $bf
	ld d, a                                          ; $4fce: $57
	xor e                                            ; $4fcf: $ab
	dec d                                            ; $4fd0: $15
	ld [bc], a                                       ; $4fd1: $02
	ld bc, $8472                                     ; $4fd2: $01 $72 $84
	cp $6f                                           ; $4fd5: $fe $6f
	ldh [$7f], a                                     ; $4fd7: $e0 $7f
	ld [$e077], a                                    ; $4fd9: $ea $77 $e0
	sbc b                                            ; $4fdc: $98
	adc e                                            ; $4fdd: $8b
	push hl                                          ; $4fde: $e5
	ld a, [$fdfd]                                    ; $4fdf: $fa $fd $fd
	cp $f7                                           ; $4fe2: $fe $f7
	ld [hl], d                                       ; $4fe4: $72
	ld a, [$e07f]                                    ; $4fe5: $fa $7f $e0
	ld [hl], e                                       ; $4fe8: $73
	add c                                            ; $4fe9: $81
	ld h, c                                          ; $4fea: $61
	rst $38                                          ; $4feb: $ff
	ld [hl], h                                       ; $4fec: $74
	ld b, a                                          ; $4fed: $47
	db $dd                                           ; $4fee: $dd
	rst $38                                          ; $4fef: $ff
	sbc [hl]                                         ; $4ff0: $9e
	add d                                            ; $4ff1: $82
	ld l, l                                          ; $4ff2: $6d
	dec h                                            ; $4ff3: $25
	ld a, a                                          ; $4ff4: $7f
	ldh a, [rOCPD]                                   ; $4ff5: $f0 $6b

jr_018_4ff7:
	jr nz, jr_018_5078                               ; $4ff7: $20 $7f

	ret nz                                           ; $4ff9: $c0

	sub c                                            ; $4ffa: $91
	ld d, e                                          ; $4ffb: $53
	rst SubAFromBC                                          ; $4ffc: $e7
	xor e                                            ; $4ffd: $ab
	dec hl                                           ; $4ffe: $2b
	ld a, e                                          ; $4fff: $7b
	ld [hl], l                                       ; $5000: $75
	xor a                                            ; $5001: $af
	ld d, a                                          ; $5002: $57
	xor a                                            ; $5003: $af
	rra                                              ; $5004: $1f
	ld l, a                                          ; $5005: $6f
	rst SubAFromBC                                          ; $5006: $e7
	rst JumpTable                                          ; $5007: $c7
	rst SubAFromHL                                          ; $5008: $d7
	ld l, a                                          ; $5009: $6f
	and b                                            ; $500a: $a0

jr_018_500b:
	sbc l                                            ; $500b: $9d
	dec b                                            ; $500c: $05
	ld c, $6f                                        ; $500d: $0e $6f
	and b                                            ; $500f: $a0
	ld a, [hl]                                       ; $5010: $7e
	ld a, l                                          ; $5011: $7d
	ld [hl], e                                       ; $5012: $73
	jr nz, jr_018_500b                               ; $5013: $20 $f6

	ld [hl], e                                       ; $5015: $73
	ld h, b                                          ; $5016: $60
	sbc h                                            ; $5017: $9c
	ld b, b                                          ; $5018: $40
	ld h, b                                          ; $5019: $60
	jr nc, jr_018_5089                               ; $501a: $30 $6d

	ld d, c                                          ; $501c: $51
	ld a, [hl]                                       ; $501d: $7e
	ld l, b                                          ; $501e: $68
	sub a                                            ; $501f: $97
	xor d                                            ; $5020: $aa
	push de                                          ; $5021: $d5
	ld a, [$5ffe]                                    ; $5022: $fa $fe $5f
	cpl                                              ; $5025: $2f
	rla                                              ; $5026: $17
	add e                                            ; $5027: $83
	ld h, [hl]                                       ; $5028: $66
	and [hl]                                         ; $5029: $a6
	ld a, b                                          ; $502a: $78
	sub b                                            ; $502b: $90
	sbc d                                            ; $502c: $9a
	ld a, [bc]                                       ; $502d: $0a
	ld b, c                                          ; $502e: $41
	xor d                                            ; $502f: $aa
	ld d, l                                          ; $5030: $55
	ld [$c571], a                                    ; $5031: $ea $71 $c5
	ld a, a                                          ; $5034: $7f
	add $98                                          ; $5035: $c6 $98
	dec d                                            ; $5037: $15
	db $d3                                           ; $5038: $d3
	jp hl                                            ; $5039: $e9


	ldh a, [$e8]                                     ; $503a: $f0 $e8
	push af                                          ; $503c: $f5
	ld a, [$aa78]                                    ; $503d: $fa $78 $aa
	sub [hl]                                         ; $5040: $96
	rla                                              ; $5041: $17
	rrca                                             ; $5042: $0f
	rla                                              ; $5043: $17
	ld a, [bc]                                       ; $5044: $0a
	dec b                                            ; $5045: $05
	nop                                              ; $5046: $00
	nop                                              ; $5047: $00
	inc bc                                           ; $5048: $03
	dec b                                            ; $5049: $05
	ld l, a                                          ; $504a: $6f
	cp $f9                                           ; $504b: $fe $f9
	ld h, d                                          ; $504d: $62
	inc bc                                           ; $504e: $03
	db $fd                                           ; $504f: $fd
	rst SubAFromDE                                          ; $5050: $df
	rla                                              ; $5051: $17
	add l                                            ; $5052: $85
	ccf                                              ; $5053: $3f
	ld a, $7f                                        ; $5054: $3e $7f
	ld h, l                                          ; $5056: $65
	ld a, a                                          ; $5057: $7f
	ld e, e                                          ; $5058: $5b
	ld a, [hl]                                       ; $5059: $7e
	ld a, a                                          ; $505a: $7f
	ld a, c                                          ; $505b: $79
	ld a, a                                          ; $505c: $7f
	ld h, c                                          ; $505d: $61
	ld a, [hl]                                       ; $505e: $7e
	ld sp, $303f                                     ; $505f: $31 $3f $30
	ccf                                              ; $5062: $3f
	ld c, a                                          ; $5063: $4f
	ld a, a                                          ; $5064: $7f
	scf                                              ; $5065: $37
	ld a, [hl-]                                      ; $5066: $3a
	ld [hl+], a                                      ; $5067: $22
	rra                                              ; $5068: $1f
	jr nc, @+$21                                     ; $5069: $30 $1f

	ld a, b                                          ; $506b: $78
	ld a, a                                          ; $506c: $7f
	ei                                               ; $506d: $fb
	sbc l                                            ; $506e: $9d
	ret nz                                           ; $506f: $c0

	ld b, b                                          ; $5070: $40
	db $db                                           ; $5071: $db
	ldh [$9d], a                                     ; $5072: $e0 $9d
	ld b, b                                          ; $5074: $40
	ret nz                                           ; $5075: $c0

	ld a, e                                          ; $5076: $7b
	push af                                          ; $5077: $f5

jr_018_5078:
	sbc l                                            ; $5078: $9d
	ret nz                                           ; $5079: $c0

	add b                                            ; $507a: $80
	ld a, e                                          ; $507b: $7b
	db $fc                                           ; $507c: $fc
	ld a, a                                          ; $507d: $7f
	ld hl, sp+$77                                    ; $507e: $f8 $77
	or $7f                                           ; $5080: $f6 $7f
	push af                                          ; $5082: $f5
	jp hl                                            ; $5083: $e9


	sbc d                                            ; $5084: $9a
	ld [bc], a                                       ; $5085: $02
	inc bc                                           ; $5086: $03
	ld c, $0d                                        ; $5087: $0e $0d

jr_018_5089:
	ld c, $de                                        ; $5089: $0e $de
	inc c                                            ; $508b: $0c
	ld b, a                                          ; $508c: $47
	or b                                             ; $508d: $b0
	adc a                                            ; $508e: $8f
	ld a, a                                          ; $508f: $7f
	ld a, [hl]                                       ; $5090: $7e
	ld a, l                                          ; $5091: $7d

jr_018_5092:
	ld a, a                                          ; $5092: $7f
	sbc b                                            ; $5093: $98
	rst $38                                          ; $5094: $ff
	inc d                                            ; $5095: $14
	rst $38                                          ; $5096: $ff
	jr nz, jr_018_5092                               ; $5097: $20 $f9

	ld h, c                                          ; $5099: $61
	pop de                                           ; $509a: $d1
	pop bc                                           ; $509b: $c1
	ret nz                                           ; $509c: $c0

	ld bc, $4701                                     ; $509d: $01 $01 $47
	or b                                             ; $50a0: $b0
	sbc l                                            ; $50a1: $9d
	call nz, Call_018_7b7c                           ; $50a2: $c4 $7c $7b
	ei                                               ; $50a5: $fb
	sub h                                            ; $50a6: $94
	ldh [$60], a                                     ; $50a7: $e0 $60
	ldh [$e0], a                                     ; $50a9: $e0 $e0
	ret nz                                           ; $50ab: $c0

	ld hl, sp+$38                                    ; $50ac: $f8 $38
	ldh a, [$f0]                                     ; $50ae: $f0 $f0
	ret nz                                           ; $50b0: $c0

	ret nz                                           ; $50b1: $c0

	ei                                               ; $50b2: $fb
	ld b, a                                          ; $50b3: $47
	ld e, [hl]                                       ; $50b4: $5e
	sub l                                            ; $50b5: $95
	ld c, c                                          ; $50b6: $49
	ld a, a                                          ; $50b7: $7f
	ld [hl], $3f                                     ; $50b8: $36 $3f
	inc h                                            ; $50ba: $24
	ccf                                              ; $50bb: $3f
	jr nc, jr_018_50dd                               ; $50bc: $30 $1f

	add hl, sp                                       ; $50be: $39
	rrca                                             ; $50bf: $0f
	ld sp, hl                                        ; $50c0: $f9
	ccf                                              ; $50c1: $3f
	ld e, [hl]                                       ; $50c2: $5e
	ld a, e                                          ; $50c3: $7b
	or d                                             ; $50c4: $b2
	rst SubAFromDE                                          ; $50c5: $df
	ret nz                                           ; $50c6: $c0

	sbc [hl]                                         ; $50c7: $9e
	ld b, b                                          ; $50c8: $40
	db $ed                                           ; $50c9: $ed
	rst SubAFromDE                                          ; $50ca: $df
	ld c, $99                                        ; $50cb: $0e $99
	rra                                              ; $50cd: $1f
	dec e                                            ; $50ce: $1d
	ld a, [de]                                       ; $50cf: $1a
	add hl, de                                       ; $50d0: $19
	ld [bc], a                                       ; $50d1: $02
	inc bc                                           ; $50d2: $03

jr_018_50d3:
	ld a, e                                          ; $50d3: $7b
	add d                                            ; $50d4: $82
	sbc [hl]                                         ; $50d5: $9e
	nop                                              ; $50d6: $00
	ld b, a                                          ; $50d7: $47
	or b                                             ; $50d8: $b0
	adc a                                            ; $50d9: $8f
	ld a, a                                          ; $50da: $7f
	ld a, h                                          ; $50db: $7c
	rst $38                                          ; $50dc: $ff

jr_018_50dd:
	rst $38                                          ; $50dd: $ff
	ld a, [$11ff]                                    ; $50de: $fa $ff $11
	rst $38                                          ; $50e1: $ff
	jr z, jr_018_50d3                                ; $50e2: $28 $ef

	ld b, a                                          ; $50e4: $47
	push bc                                          ; $50e5: $c5
	add e                                            ; $50e6: $83
	add c                                            ; $50e7: $81
	rlca                                             ; $50e8: $07
	rlca                                             ; $50e9: $07
	ld b, a                                          ; $50ea: $47
	or b                                             ; $50eb: $b0
	sbc b                                            ; $50ec: $98
	db $e4                                           ; $50ed: $e4
	db $fc                                           ; $50ee: $fc

jr_018_50ef:
	adc b                                            ; $50ef: $88
	cp b                                             ; $50f0: $b8
	add b                                            ; $50f1: $80

jr_018_50f2:
	add b                                            ; $50f2: $80
	nop                                              ; $50f3: $00
	ld a, e                                          ; $50f4: $7b
	cp $7f                                           ; $50f5: $fe $7f
	db $fd                                           ; $50f7: $fd
	rst SubAFromDE                                          ; $50f8: $df
	ret nz                                           ; $50f9: $c0

	rst SubAFromDE                                          ; $50fa: $df
	ldh [$f9], a                                     ; $50fb: $e0 $f9
	ld b, a                                          ; $50fd: $47
	ld e, [hl]                                       ; $50fe: $5e
	sub a                                            ; $50ff: $97
	ld c, b                                          ; $5100: $48
	ld a, a                                          ; $5101: $7f
	ccf                                              ; $5102: $3f
	scf                                              ; $5103: $37
	ld c, h                                          ; $5104: $4c
	ccf                                              ; $5105: $3f
	ld c, b                                          ; $5106: $48
	ccf                                              ; $5107: $3f
	rst FarCall                                          ; $5108: $f7
	ld b, a                                          ; $5109: $47
	ld e, [hl]                                       ; $510a: $5e
	ld a, e                                          ; $510b: $7b
	pop bc                                           ; $510c: $c1
	ld a, e                                          ; $510d: $7b
	xor e                                            ; $510e: $ab
	jp hl                                            ; $510f: $e9


	rst SubAFromDE                                          ; $5110: $df
	ld bc, $03dd                                     ; $5111: $01 $dd $03
	rst $38                                          ; $5114: $ff
	ld b, a                                          ; $5115: $47
	or b                                             ; $5116: $b0
	adc a                                            ; $5117: $8f
	pop hl                                           ; $5118: $e1
	rst $38                                          ; $5119: $ff
	rst $38                                          ; $511a: $ff
	cp $63                                           ; $511b: $fe $63
	ld a, a                                          ; $511d: $7f
	or d                                             ; $511e: $b2
	cp a                                             ; $511f: $bf
	jp nz, $c4bf                                     ; $5120: $c2 $bf $c4

	cp a                                             ; $5123: $bf
	ld a, $2a                                        ; $5124: $3e $2a
	ccf                                              ; $5126: $3f
	ccf                                              ; $5127: $3f
	ld b, a                                          ; $5128: $47
	or b                                             ; $5129: $b0
	sub a                                            ; $512a: $97
	ret nc                                           ; $512b: $d0

	ld [hl], b                                       ; $512c: $70
	and b                                            ; $512d: $a0
	ldh [hDisp1_SCY], a                                     ; $512e: $e0 $90
	ldh a, [$80]                                     ; $5130: $f0 $80
	and b                                            ; $5132: $a0
	push af                                          ; $5133: $f5
	ld l, $20                                        ; $5134: $2e $20
	sbc d                                            ; $5136: $9a
	inc h                                            ; $5137: $24
	rra                                              ; $5138: $1f
	ld [$033f], sp                                   ; $5139: $08 $3f $03
	ld l, e                                          ; $513c: $6b
	ld h, b                                          ; $513d: $60
	dec sp                                           ; $513e: $3b
	ld h, h                                          ; $513f: $64
	ld a, d                                          ; $5140: $7a
	ld a, c                                          ; $5141: $79
	ld [hl], a                                       ; $5142: $77
	rst FarCall                                          ; $5143: $f7
	jp hl                                            ; $5144: $e9


	sbc h                                            ; $5145: $9c
	ld b, $07                                        ; $5146: $06 $07
	rlca                                             ; $5148: $07
	ld a, e                                          ; $5149: $7b
	db $fd                                           ; $514a: $fd
	rst SubAFromDE                                          ; $514b: $df
	rlca                                             ; $514c: $07
	ld b, a                                          ; $514d: $47
	or b                                             ; $514e: $b0
	sbc [hl]                                         ; $514f: $9e
	ld h, a                                          ; $5150: $67
	ld a, d                                          ; $5151: $7a
	jr nz, jr_018_50f2                               ; $5152: $20 $9e

	cp b                                             ; $5154: $b8
	ld a, d                                          ; $5155: $7a
	jr nz, jr_018_50ef                               ; $5156: $20 $97

	jr z, @-$05                                      ; $5158: $28 $f9

	ld d, c                                          ; $515a: $51
	pop af                                           ; $515b: $f1
	pop hl                                           ; $515c: $e1
	and b                                            ; $515d: $a0
	add c                                            ; $515e: $81
	add c                                            ; $515f: $81
	ld b, a                                          ; $5160: $47
	or b                                             ; $5161: $b0
	ld [bc], a                                       ; $5162: $02
	jr nz, jr_018_51d0                               ; $5163: $20 $6b

	ld [de], a                                       ; $5165: $12
	sub a                                            ; $5166: $97
	scf                                              ; $5167: $37
	ccf                                              ; $5168: $3f
	ld b, l                                          ; $5169: $45
	ld a, [hl]                                       ; $516a: $7e
	adc a                                            ; $516b: $8f
	ld a, [$f49f]                                    ; $516c: $fa $9f $f4
	ld a, [de]                                       ; $516f: $1a
	jp nz, $c02a                                     ; $5170: $c2 $2a $c0

	rst SubAFromDE                                          ; $5173: $df
	rlca                                             ; $5174: $07
	sbc l                                            ; $5175: $9d
	ld c, $0f                                        ; $5176: $0e $0f
	ld b, [hl]                                       ; $5178: $46
	jr nz, jr_018_51da                               ; $5179: $20 $5f

	or b                                             ; $517b: $b0
	sbc h                                            ; $517c: $9c
	rrca                                             ; $517d: $0f
	ld a, h                                          ; $517e: $7c
	rst GetHLinHL                                          ; $517f: $cf
	ld a, d                                          ; $5180: $7a
	jr nz, @-$60                                     ; $5181: $20 $9e

	ld sp, $2042                                     ; $5183: $31 $42 $20
	ld h, a                                          ; $5186: $67
	or b                                             ; $5187: $b0
	rst SubAFromDE                                          ; $5188: $df
	ldh [$dd], a                                     ; $5189: $e0 $dd
	add b                                            ; $518b: $80
	ld e, [hl]                                       ; $518c: $5e
	jr nz, jr_018_51bd                               ; $518d: $20 $2e

	add b                                            ; $518f: $80
	sbc c                                            ; $5190: $99
	and d                                            ; $5191: $a2
	rst $38                                          ; $5192: $ff
	jp nc, $e4bf                                     ; $5193: $d2 $bf $e4

	cp [hl]                                          ; $5196: $be
	ld l, $80                                        ; $5197: $2e $80
	db $db                                           ; $5199: $db
	add b                                            ; $519a: $80
	push af                                          ; $519b: $f5
	rst SubAFromDE                                          ; $519c: $df
	dec c                                            ; $519d: $0d
	rst SubAFromDE                                          ; $519e: $df
	ccf                                              ; $519f: $3f
	db $db                                           ; $51a0: $db
	ld a, a                                          ; $51a1: $7f
	ld a, a                                          ; $51a2: $7f
	or d                                             ; $51a3: $b2
	sbc h                                            ; $51a4: $9c
	ld e, l                                          ; $51a5: $5d
	ld a, a                                          ; $51a6: $7f
	ld d, l                                          ; $51a7: $55
	ld a, e                                          ; $51a8: $7b
	ld a, [$3895]                                    ; $51a9: $fa $95 $38
	ccf                                              ; $51ac: $3f
	ld e, h                                          ; $51ad: $5c
	ld a, a                                          ; $51ae: $7f
	adc e                                            ; $51af: $8b
	db $fc                                           ; $51b0: $fc
	add hl, de                                       ; $51b1: $19
	cp $1b                                           ; $51b2: $fe $1b
	call c, Call_018_7afd                            ; $51b4: $dc $fd $7a
	di                                               ; $51b7: $f3
	sbc h                                            ; $51b8: $9c
	ret nz                                           ; $51b9: $c0

	ldh a, [$f0]                                     ; $51ba: $f0 $f0
	db $db                                           ; $51bc: $db

jr_018_51bd:
	ld hl, sp-$65                                    ; $51bd: $f8 $9b
	ret nc                                           ; $51bf: $d0

	ldh a, [$50]                                     ; $51c0: $f0 $50
	ldh a, [rPCM34]                                  ; $51c2: $f0 $77
	xor h                                            ; $51c4: $ac
	rst SubAFromDE                                          ; $51c5: $df
	add b                                            ; $51c6: $80
	sbc c                                            ; $51c7: $99
	ld [hl], b                                       ; $51c8: $70
	ldh a, [$e9]                                     ; $51c9: $f0 $e9
	ld sp, hl                                        ; $51cb: $f9
	set 7, e                                         ; $51cc: $cb $fb
	ld b, a                                          ; $51ce: $47
	ret nc                                           ; $51cf: $d0

jr_018_51d0:
	sub d                                            ; $51d0: $92
	ccf                                              ; $51d1: $3f
	cp a                                             ; $51d2: $bf
	ld e, $9f                                        ; $51d3: $1e $9f
	ld c, $13                                        ; $51d5: $0e $13
	inc de                                           ; $51d7: $13
	rra                                              ; $51d8: $1f
	daa                                              ; $51d9: $27

jr_018_51da:
	ccf                                              ; $51da: $3f
	ld hl, $133f                                     ; $51db: $21 $3f $13
	sbc $3f                                          ; $51de: $de $3f
	ld b, a                                          ; $51e0: $47
	ret nc                                           ; $51e1: $d0

	rst SubAFromDE                                          ; $51e2: $df
	inc bc                                           ; $51e3: $03
	sub c                                            ; $51e4: $91
	rlca                                             ; $51e5: $07
	add a                                            ; $51e6: $87
	ld a, $ff                                        ; $51e7: $3e $ff
	and $ff                                          ; $51e9: $e6 $ff
	db $e3                                           ; $51eb: $e3
	ccf                                              ; $51ec: $3f
	ldh [$3f], a                                     ; $51ed: $e0 $3f
	ld hl, sp+$1f                                    ; $51ef: $f8 $1f
	rst $38                                          ; $51f1: $ff
	rst $38                                          ; $51f2: $ff
	rst FarCall                                          ; $51f3: $f7
	rst SubAFromDE                                          ; $51f4: $df
	ld h, b                                          ; $51f5: $60
	rst SubAFromDE                                          ; $51f6: $df
	ld hl, sp-$73                                    ; $51f7: $f8 $8d
	cp $3e                                           ; $51f9: $fe $3e
	db $fc                                           ; $51fb: $fc
	cp h                                             ; $51fc: $bc
	cp $de                                           ; $51fd: $fe $de
	rst $38                                          ; $51ff: $ff
	di                                               ; $5200: $f3
	ccf                                              ; $5201: $3f
	rst $38                                          ; $5202: $ff
	dec a                                            ; $5203: $3d
	rst $38                                          ; $5204: $ff
	ldh a, [c]                                       ; $5205: $f2
	cp $04                                           ; $5206: $fe $04
	db $fc                                           ; $5208: $fc
	ld hl, sp-$08                                    ; $5209: $f8 $f8
	db $fd                                           ; $520b: $fd
	rst SubAFromDE                                          ; $520c: $df
	ld l, $79                                        ; $520d: $2e $79
	ld a, [bc]                                       ; $520f: $0a
	adc b                                            ; $5210: $88
	set 7, a                                         ; $5211: $cb $ff
	or a                                             ; $5213: $b7
	db $fd                                           ; $5214: $fd
	rst $38                                          ; $5215: $ff
	ldh a, [rIE]                                     ; $5216: $f0 $ff
	jp nz, Jump_018_60ff                             ; $5218: $c2 $ff $60

	ld a, a                                          ; $521b: $7f
	ld [hl], b                                       ; $521c: $70
	ld a, [hl]                                       ; $521d: $7e
	adc b                                            ; $521e: $88
	or $0e                                           ; $521f: $f6 $0e
	pop af                                           ; $5221: $f1
	ld a, h                                          ; $5222: $7c
	jp $c33e                                         ; $5223: $c3 $3e $c3


	ld a, l                                          ; $5226: $7d
	add c                                            ; $5227: $81
	ei                                               ; $5228: $fb
	rst SubAFromDE                                          ; $5229: $df
	add b                                            ; $522a: $80
	db $db                                           ; $522b: $db
	ret nz                                           ; $522c: $c0

	ld [hl], a                                       ; $522d: $77
	jr z, jr_018_5297                                ; $522e: $28 $67

	inc h                                            ; $5230: $24
	ld a, e                                          ; $5231: $7b
	ld [$f89c], sp                                   ; $5232: $08 $9c $f8
	add b                                            ; $5235: $80
	xor b                                            ; $5236: $a8
	ld b, a                                          ; $5237: $47
	ret nc                                           ; $5238: $d0

	db $dd                                           ; $5239: $dd
	ld a, h                                          ; $523a: $7c
	sub e                                            ; $523b: $93
	ld c, h                                          ; $523c: $4c
	ld a, h                                          ; $523d: $7c
	ld c, b                                          ; $523e: $48
	ld a, h                                          ; $523f: $7c
	res 7, a                                         ; $5240: $cb $bf
	call c, $cebb                                    ; $5242: $dc $bb $ce
	rst GetHLinHL                                          ; $5245: $cf
	rst AddAOntoHL                                          ; $5246: $ef
	rst AddAOntoHL                                          ; $5247: $ef
	ld c, a                                          ; $5248: $4f
	ret nc                                           ; $5249: $d0

	sbc l                                            ; $524a: $9d

jr_018_524b:
	add c                                            ; $524b: $81

jr_018_524c:
	xor c                                            ; $524c: $a9
	db $dd                                           ; $524d: $dd
	inc bc                                           ; $524e: $03
	rst SubAFromDE                                          ; $524f: $df
	rlca                                             ; $5250: $07
	sub l                                            ; $5251: $95
	rrca                                             ; $5252: $0f
	rlca                                             ; $5253: $07
	rst $38                                          ; $5254: $ff
	rst JumpTable                                          ; $5255: $c7
	ld a, [$7ccf]                                    ; $5256: $fa $cf $7c
	rst JumpTable                                          ; $5259: $c7
	ld a, a                                          ; $525a: $7f
	di                                               ; $525b: $f3
	push af                                          ; $525c: $f5
	rst SubAFromDE                                          ; $525d: $df
	ld [hl], b                                       ; $525e: $70
	rst SubAFromDE                                          ; $525f: $df
	db $fc                                           ; $5260: $fc
	ld a, d                                          ; $5261: $7a
	and c                                            ; $5262: $a1
	sbc $fe                                          ; $5263: $de $fe
	sub l                                            ; $5265: $95
	sbc a                                            ; $5266: $9f
	rst $38                                          ; $5267: $ff
	add l                                            ; $5268: $85
	rst $38                                          ; $5269: $ff
	ld [hl], e                                       ; $526a: $73
	rst $38                                          ; $526b: $ff
	rlca                                             ; $526c: $07
	rst $38                                          ; $526d: $ff
	db $fd                                           ; $526e: $fd
	db $fd                                           ; $526f: $fd
	ld l, $80                                        ; $5270: $2e $80
	sbc c                                            ; $5272: $99

Jump_018_5273:
	ld [hl+], a                                      ; $5273: $22
	ccf                                              ; $5274: $3f
	ld [de], a                                       ; $5275: $12
	rra                                              ; $5276: $1f
	inc h                                            ; $5277: $24
	ld a, $36                                        ; $5278: $3e $36
	add b                                            ; $527a: $80
	sbc l                                            ; $527b: $9d
	ret nz                                           ; $527c: $c0

	ld h, b                                          ; $527d: $60
	dec a                                            ; $527e: $3d
	nop                                              ; $527f: $00
	sbc b                                            ; $5280: $98
	dec e                                            ; $5281: $1d
	rra                                              ; $5282: $1f
	inc hl                                           ; $5283: $23
	ccf                                              ; $5284: $3f
	ld d, [hl]                                       ; $5285: $56
	ld a, a                                          ; $5286: $7f
	ld l, l                                          ; $5287: $6d
	ld [hl], d                                       ; $5288: $72
	ld a, a                                          ; $5289: $7f
	sbc l                                            ; $528a: $9d
	ld h, c                                          ; $528b: $61
	ld a, a                                          ; $528c: $7f
	ld h, l                                          ; $528d: $65
	ld d, b                                          ; $528e: $50
	sbc c                                            ; $528f: $99
	ld [hl+], a                                      ; $5290: $22
	rra                                              ; $5291: $1f
	jr nc, @+$21                                     ; $5292: $30 $1f

	ld a, b                                          ; $5294: $78
	ld a, a                                          ; $5295: $7f
	ld l, c                                          ; $5296: $69

jr_018_5297:
	and d                                            ; $5297: $a2
	sbc l                                            ; $5298: $9d
	ret nz                                           ; $5299: $c0

	and b                                            ; $529a: $a0
	sbc $e0                                          ; $529b: $de $e0
	ld [hl], c                                       ; $529d: $71
	or b                                             ; $529e: $b0
	ld [hl], e                                       ; $529f: $73
	or h                                             ; $52a0: $b4
	ld [hl], a                                       ; $52a1: $77
	xor h                                            ; $52a2: $ac
	ld [hl], a                                       ; $52a3: $77
	or $7f                                           ; $52a4: $f6 $7f
	push af                                          ; $52a6: $f5
	ld b, a                                          ; $52a7: $47
	ret nc                                           ; $52a8: $d0

	ld a, a                                          ; $52a9: $7f
	cp [hl]                                          ; $52aa: $be
	ld a, l                                          ; $52ab: $7d
	jr nz, jr_018_524c                               ; $52ac: $20 $9e

	sbc b                                            ; $52ae: $98
	ld a, c                                          ; $52af: $79
	jr nz, jr_018_524b                               ; $52b0: $20 $99

	jr nz, @-$05                                     ; $52b2: $20 $f9

	ld h, c                                          ; $52b4: $61
	pop de                                           ; $52b5: $d1
	pop bc                                           ; $52b6: $c1
	ret nz                                           ; $52b7: $c0

	ld [hl], l                                       ; $52b8: $75
	sbc [hl]                                         ; $52b9: $9e
	ld c, a                                          ; $52ba: $4f
	sbc [hl]                                         ; $52bb: $9e
	ld a, a                                          ; $52bc: $7f
	ld d, b                                          ; $52bd: $50
	ld [hl], a                                       ; $52be: $77
	adc $95                                          ; $52bf: $ce $95
	ld c, c                                          ; $52c1: $49
	ld a, a                                          ; $52c2: $7f
	ld [hl], $3f                                     ; $52c3: $36 $3f
	inc h                                            ; $52c5: $24
	ccf                                              ; $52c6: $3f
	jr nc, jr_018_52e8                               ; $52c7: $30 $1f

	add hl, sp                                       ; $52c9: $39
	rrca                                             ; $52ca: $0f
	ld h, c                                          ; $52cb: $61
	ld b, b                                          ; $52cc: $40
	ld l, e                                          ; $52cd: $6b
	sbc [hl]                                         ; $52ce: $9e
	ld h, a                                          ; $52cf: $67
	ld d, d                                          ; $52d0: $52
	ld [hl], a                                       ; $52d1: $77
	ld d, l                                          ; $52d2: $55
	ld [hl], l                                       ; $52d3: $75
	adc [hl]                                         ; $52d4: $8e
	ld b, a                                          ; $52d5: $47
	ret nc                                           ; $52d6: $d0

	ld a, d                                          ; $52d7: $7a
	halt                                             ; $52d8: $76
	ld a, c                                          ; $52d9: $79
	ld h, b                                          ; $52da: $60
	sbc [hl]                                         ; $52db: $9e
	ld de, $6061                                     ; $52dc: $11 $61 $60
	ccf                                              ; $52df: $3f
	inc a                                            ; $52e0: $3c
	ld l, a                                          ; $52e1: $6f
	adc $66                                          ; $52e2: $ce $66
	ldh a, [$f7]                                     ; $52e4: $f0 $f7
	ld l, a                                          ; $52e6: $6f
	sbc [hl]                                         ; $52e7: $9e

jr_018_52e8:
	ld [hl], a                                       ; $52e8: $77
	xor b                                            ; $52e9: $a8
	ld d, [hl]                                       ; $52ea: $56
	ldh a, [rBGP]                                    ; $52eb: $f0 $47
	ret nc                                           ; $52ed: $d0

	ld l, [hl]                                       ; $52ee: $6e
	ret nz                                           ; $52ef: $c0

	sbc c                                            ; $52f0: $99
	or d                                             ; $52f1: $b2
	cp a                                             ; $52f2: $bf
	jp nz, $c4bf                                     ; $52f3: $c2 $bf $c4

	cp a                                             ; $52f6: $bf
	halt                                             ; $52f7: $76
	ret nz                                           ; $52f8: $c0

	ld b, a                                          ; $52f9: $47
	ret nc                                           ; $52fa: $d0

	ld a, l                                          ; $52fb: $7d
	ld b, b                                          ; $52fc: $40
	ld [bc], a                                       ; $52fd: $02
	ret nz                                           ; $52fe: $c0

	ld l, d                                          ; $52ff: $6a
	ldh a, [$9a]                                     ; $5300: $f0 $9a
	inc h                                            ; $5302: $24
	rra                                              ; $5303: $1f
	ld [$033f], sp                                   ; $5304: $08 $3f $03
	ld l, e                                          ; $5307: $6b
	add b                                            ; $5308: $80
	ld b, [hl]                                       ; $5309: $46
	ret nz                                           ; $530a: $c0

	ld [hl], b                                       ; $530b: $70
	or d                                             ; $530c: $b2
	ld a, a                                          ; $530d: $7f
	ld sp, hl                                        ; $530e: $f9
	ld a, e                                          ; $530f: $7b
	rst FarCall                                          ; $5310: $f7
	ld b, a                                          ; $5311: $47
	ret nc                                           ; $5312: $d0

	sbc [hl]                                         ; $5313: $9e
	ld h, a                                          ; $5314: $67
	ld a, d                                          ; $5315: $7a
	ret nz                                           ; $5316: $c0

jr_018_5317:
	sbc [hl]                                         ; $5317: $9e
	cp b                                             ; $5318: $b8
	ld a, d                                          ; $5319: $7a
	ret nz                                           ; $531a: $c0

	sbc b                                            ; $531b: $98
	jr z, jr_018_5317                                ; $531c: $28 $f9

	ld d, c                                          ; $531e: $51
	pop af                                           ; $531f: $f1
	pop hl                                           ; $5320: $e1
	and b                                            ; $5321: $a0
	add c                                            ; $5322: $81
	ld l, c                                          ; $5323: $69
	and b                                            ; $5324: $a0
	ccf                                              ; $5325: $3f
	ld [hl+], a                                      ; $5326: $22
	ld h, h                                          ; $5327: $64
	ld d, b                                          ; $5328: $50
	ld h, $c0                                        ; $5329: $26 $c0
	ld h, h                                          ; $532b: $64
	ld d, b                                          ; $532c: $50
	ld b, a                                          ; $532d: $47
	ret nc                                           ; $532e: $d0

	sbc h                                            ; $532f: $9c
	rrca                                             ; $5330: $0f
	ld a, h                                          ; $5331: $7c
	rst GetHLinHL                                          ; $5332: $cf
	ld a, d                                          ; $5333: $7a
	ret nz                                           ; $5334: $c0

	sbc [hl]                                         ; $5335: $9e
	ld sp, $c062                                     ; $5336: $31 $62 $c0
	cpl                                              ; $5339: $2f
	nop                                              ; $533a: $00
	ld e, h                                          ; $533b: $5c
	ld b, b                                          ; $533c: $40
	sbc [hl]                                         ; $533d: $9e
	ld h, b                                          ; $533e: $60
	nop                                              ; $533f: $00
	ld b, b                                          ; $5340: $40
	rst $38                                          ; $5341: $ff
	rst SubAFromDE                                          ; $5342: $df
	rra                                              ; $5343: $1f
	ld a, b                                          ; $5344: $78
	ld b, b                                          ; $5345: $40
	adc c                                            ; $5346: $89
	ld b, a                                          ; $5347: $47
	ld a, a                                          ; $5348: $7f
	ld l, $7f                                        ; $5349: $2e $7f
	ld e, a                                          ; $534b: $5f
	ld a, c                                          ; $534c: $79
	ld a, a                                          ; $534d: $7f
	ld h, h                                          ; $534e: $64
	ld a, a                                          ; $534f: $7f
	ld h, h                                          ; $5350: $64
	ld a, e                                          ; $5351: $7b
	ld [hl], h                                       ; $5352: $74
	ld a, a                                          ; $5353: $7f
	jr c, jr_018_5385                                ; $5354: $38 $2f

	ld a, a                                          ; $5356: $7f
	ld b, b                                          ; $5357: $40
	sbc a                                            ; $5358: $9f
	ldh [rAUD2HIGH], a                               ; $5359: $e0 $19
	and $03                                          ; $535b: $e6 $03
	ld [hl], b                                       ; $535d: $70
	ld b, b                                          ; $535e: $40
	rst SubAFromDE                                          ; $535f: $df
	ret nz                                           ; $5360: $c0

	rst SubAFromDE                                          ; $5361: $df
	ldh [$9d], a                                     ; $5362: $e0 $9d
	ldh a, [rSVBK]                                   ; $5364: $f0 $70
	db $dd                                           ; $5366: $dd
	ldh a, [$7f]                                     ; $5367: $f0 $7f

jr_018_5369:
	ei                                               ; $5369: $fb
	sbc h                                            ; $536a: $9c
	or b                                             ; $536b: $b0
	ldh a, [$b0]                                     ; $536c: $f0 $b0
	ld a, d                                          ; $536e: $7a
	cp [hl]                                          ; $536f: $be
	ld a, a                                          ; $5370: $7f
	xor d                                            ; $5371: $aa
	rst SubAFromDE                                          ; $5372: $df
	add b                                            ; $5373: $80
	ld a, a                                          ; $5374: $7f
	ld hl, sp-$65                                    ; $5375: $f8 $9b
	adc c                                            ; $5377: $89
	ld a, c                                          ; $5378: $79
	dec bc                                           ; $5379: $0b
	ld a, e                                          ; $537a: $7b
	ld b, a                                          ; $537b: $47
	ret nc                                           ; $537c: $d0

	ld b, h                                          ; $537d: $44
	ld b, b                                          ; $537e: $40
	ld b, a                                          ; $537f: $47
	ret nc                                           ; $5380: $d0

	inc e                                            ; $5381: $1c
	ld b, b                                          ; $5382: $40
	rst SubAFromDE                                          ; $5383: $df
	ld [hl], b                                       ; $5384: $70

jr_018_5385:
	rst SubAFromDE                                          ; $5385: $df
	ld hl, sp-$71                                    ; $5386: $f8 $8f
	ld [$b6fe], a                                    ; $5388: $ea $fe $b6
	cp $cf                                           ; $538b: $fe $cf
	rst $38                                          ; $538d: $ff
	ei                                               ; $538e: $fb
	rst $38                                          ; $538f: $ff
	rst SubAFromBC                                          ; $5390: $e7
	ld a, a                                          ; $5391: $7f
	rst $38                                          ; $5392: $ff
	dec a                                            ; $5393: $3d
	cp $f2                                           ; $5394: $fe $f2

Jump_018_5396:
	db $fc                                           ; $5396: $fc
	inc b                                            ; $5397: $04
	ld l, h                                          ; $5398: $6c
	ld b, b                                          ; $5399: $40
	sbc b                                            ; $539a: $98
	ld a, [hl-]                                      ; $539b: $3a
	ld a, $47                                        ; $539c: $3e $47
	ld a, a                                          ; $539e: $7f
	xor l                                            ; $539f: $ad
	rst $38                                          ; $53a0: $ff
	db $db                                           ; $53a1: $db
	ld a, e                                          ; $53a2: $7b
	ld h, $9d                                        ; $53a3: $26 $9d
	rst $38                                          ; $53a5: $ff
	db $fc                                           ; $53a6: $fc
	inc h                                            ; $53a7: $24
	ld b, b                                          ; $53a8: $40
	ld [hl], l                                       ; $53a9: $75
	sub d                                            ; $53aa: $92
	ld l, a                                          ; $53ab: $6f
	jr z, jr_018_53fa                                ; $53ac: $28 $4c

	ld b, b                                          ; $53ae: $40
	ld c, l                                          ; $53af: $4d
	ld bc, $dfff                                     ; $53b0: $01 $ff $df
	add b                                            ; $53b3: $80
	ei                                               ; $53b4: $fb
	adc c                                            ; $53b5: $89
	ld b, b                                          ; $53b6: $40
	ret nz                                           ; $53b7: $c0

	nop                                              ; $53b8: $00

jr_018_53b9:
	ld hl, sp-$80                                    ; $53b9: $f8 $80
	xor b                                            ; $53bb: $a8
	ld bc, $0301                                     ; $53bc: $01 $01 $03
	ld [bc], a                                       ; $53bf: $02
	rlca                                             ; $53c0: $07
	rlca                                             ; $53c1: $07
	rrca                                             ; $53c2: $0f
	rrca                                             ; $53c3: $0f
	rst $38                                          ; $53c4: $ff
	rst JumpTable                                          ; $53c5: $c7
	ld hl, sp-$31                                    ; $53c6: $f8 $cf
	ld a, h                                          ; $53c8: $7c
	rst JumpTable                                          ; $53c9: $c7
	ld a, a                                          ; $53ca: $7f
	di                                               ; $53cb: $f3
	push af                                          ; $53cc: $f5
	rst SubAFromDE                                          ; $53cd: $df
	jr c, jr_018_5369                                ; $53ce: $38 $99

	db $fc                                           ; $53d0: $fc
	cp h                                             ; $53d1: $bc
	cp $4e                                           ; $53d2: $fe $4e
	cp $9e                                           ; $53d4: $fe $9e
	db $dd                                           ; $53d6: $dd
	rst $38                                          ; $53d7: $ff
	add b                                            ; $53d8: $80
	sbc l                                            ; $53d9: $9d
	rst $38                                          ; $53da: $ff
	ld [hl], e                                       ; $53db: $73
	rst $38                                          ; $53dc: $ff
	ld b, $fe                                        ; $53dd: $06 $fe
	db $fc                                           ; $53df: $fc
	db $fc                                           ; $53e0: $fc
	ld a, a                                          ; $53e1: $7f
	ld a, a                                          ; $53e2: $7f
	ld a, [hl]                                       ; $53e3: $7e
	ld a, a                                          ; $53e4: $7f
	ld h, c                                          ; $53e5: $61
	ld a, a                                          ; $53e6: $7f
	ld sp, $483f                                     ; $53e7: $31 $3f $48
	ld a, a                                          ; $53ea: $7f
	ccf                                              ; $53eb: $3f
	scf                                              ; $53ec: $37
	ld c, h                                          ; $53ed: $4c
	ccf                                              ; $53ee: $3f
	ld c, b                                          ; $53ef: $48
	ccf                                              ; $53f0: $3f
	pop hl                                           ; $53f1: $e1
	rst $38                                          ; $53f2: $ff
	rst $38                                          ; $53f3: $ff
	cp $63                                           ; $53f4: $fe $63
	ld a, a                                          ; $53f6: $7f
	ld [hl+], a                                      ; $53f7: $22
	sub h                                            ; $53f8: $94
	ccf                                              ; $53f9: $3f

jr_018_53fa:
	ld [de], a                                       ; $53fa: $12
	rra                                              ; $53fb: $1f
	inc h                                            ; $53fc: $24
	ld a, $3e                                        ; $53fd: $3e $3e
	ld a, [hl+]                                      ; $53ff: $2a
	ccf                                              ; $5400: $3f
	ccf                                              ; $5401: $3f
	ld b, b                                          ; $5402: $40
	ret nz                                           ; $5403: $c0

	ld a, e                                          ; $5404: $7b
	xor b                                            ; $5405: $a8
	ld a, e                                          ; $5406: $7b
	db $fc                                           ; $5407: $fc
	sbc [hl]                                         ; $5408: $9e
	add b                                            ; $5409: $80
	ld a, e                                          ; $540a: $7b
	ld a, [$f97b]                                    ; $540b: $fa $7b $f9
	ld a, a                                          ; $540e: $7f
	cp $98                                           ; $540f: $fe $98
	ld h, b                                          ; $5411: $60
	and b                                            ; $5412: $a0
	ldh [hDisp1_SCY], a                                     ; $5413: $e0 $90
	ldh a, [$80]                                     ; $5415: $f0 $80
	and b                                            ; $5417: $a0
	di                                               ; $5418: $f3
	rst SubAFromDE                                          ; $5419: $df
	jr nc, jr_018_53b9                               ; $541a: $30 $9d

	jr c, jr_018_543e                                ; $541c: $38 $20

	db $dd                                           ; $541e: $dd
	inc a                                            ; $541f: $3c
	sbc d                                            ; $5420: $9a
	inc e                                            ; $5421: $1c
	inc a                                            ; $5422: $3c
	jr c, jr_018_545d                                ; $5423: $38 $38

	jr z, jr_018_54a2                                ; $5425: $28 $7b

	db $fd                                           ; $5427: $fd
	sub l                                            ; $5428: $95
	db $10                                           ; $5429: $10
	jr nc, jr_018_544c                               ; $542a: $30 $20

	jr nz, jr_018_543e                               ; $542c: $20 $10

	jr nc, jr_018_5440                               ; $542e: $30 $10

	jr nc, jr_018_5456                               ; $5430: $30 $24

	inc a                                            ; $5432: $3c
	rla                                              ; $5433: $17
	sbc $9b                                          ; $5434: $de $9b
	ld [de], a                                       ; $5436: $12
	ld a, $12                                        ; $5437: $3e $12
	ld a, $07                                        ; $5439: $3e $07
	cp h                                             ; $543b: $bc
	inc bc                                           ; $543c: $03
	ret nz                                           ; $543d: $c0

jr_018_543e:
	ld h, a                                          ; $543e: $67
	ldh [c], a                                       ; $543f: $e2

jr_018_5440:
	sub d                                            ; $5440: $92
	jr c, @+$3e                                      ; $5441: $38 $3c

	inc l                                            ; $5443: $2c
	inc a                                            ; $5444: $3c
	inc [hl]                                         ; $5445: $34
	inc e                                            ; $5446: $1c
	inc a                                            ; $5447: $3c
	jr z, @+$3a                                      ; $5448: $28 $38

	jr nz, jr_018_545c                               ; $544a: $20 $10

jr_018_544c:
	jr z, @+$3a                                      ; $544c: $28 $38

	inc sp                                           ; $544e: $33
	add b                                            ; $544f: $80
	ld b, e                                          ; $5450: $43
	sbc $43                                          ; $5451: $de $43
	add b                                            ; $5453: $80
	dec sp                                           ; $5454: $3b
	cp h                                             ; $5455: $bc

jr_018_5456:
	rrca                                             ; $5456: $0f
	ldh [c], a                                       ; $5457: $e2
	ld e, a                                          ; $5458: $5f
	ldh [$de], a                                     ; $5459: $e0 $de

jr_018_545b:
	ld a, a                                          ; $545b: $7f

jr_018_545c:
	sbc h                                            ; $545c: $9c

jr_018_545d:
	add b                                            ; $545d: $80
	rst $38                                          ; $545e: $ff
	nop                                              ; $545f: $00
	ld c, a                                          ; $5460: $4f
	cp $7f                                           ; $5461: $fe $7f
	xor $df                                          ; $5463: $ee $df
	ld a, a                                          ; $5465: $7f
	db $fd                                           ; $5466: $fd
	sbc c                                            ; $5467: $99
	ret nz                                           ; $5468: $c0

	and b                                            ; $5469: $a0
	ld a, b                                          ; $546a: $78
	ld c, b                                          ; $546b: $48
	rst $38                                          ; $546c: $ff
	rst SubAFromBC                                          ; $546d: $e7
	ld b, a                                          ; $546e: $47
	ldh [c], a                                       ; $546f: $e2
	ld [hl], e                                       ; $5470: $73
	cp $7f                                           ; $5471: $fe $7f
	db $fd                                           ; $5473: $fd
	or $df                                           ; $5474: $f6 $df
	ld h, $91                                        ; $5476: $26 $91
	ld [hl], a                                       ; $5478: $77
	ld h, e                                          ; $5479: $63
	ld a, [hl-]                                      ; $547a: $3a
	ld a, a                                          ; $547b: $7f
	ld [hl-], a                                      ; $547c: $32
	ld [hl+], a                                      ; $547d: $22
	ld h, $22                                        ; $547e: $26 $22
	inc h                                            ; $5480: $24
	ld h, $20                                        ; $5481: $26 $20
	jr nz, jr_018_54c3                               ; $5483: $20 $3e

	ld e, $f1                                        ; $5485: $1e $f1
	adc a                                            ; $5487: $8f
	db $10                                           ; $5488: $10
	jr jr_018_54a3                                   ; $5489: $18 $18

	ld c, b                                          ; $548b: $48

jr_018_548c:
	ld [hl], h                                       ; $548c: $74
	ld a, h                                          ; $548d: $7c
	ld [$180c], sp                                   ; $548e: $08 $0c $18
	db $10                                           ; $5491: $10
	jr nz, jr_018_54c4                               ; $5492: $20 $30

	ld [hl], b                                       ; $5494: $70
	ld e, b                                          ; $5495: $58
	adc $8e                                          ; $5496: $ce $8e
	pop af                                           ; $5498: $f1
	sbc d                                            ; $5499: $9a
	jr c, @+$7e                                      ; $549a: $38 $7c

	ld h, [hl]                                       ; $549c: $66
	jp nc, $dc52                                     ; $549d: $d2 $52 $dc

	sub d                                            ; $54a0: $92
	sbc c                                            ; $54a1: $99

jr_018_54a2:
	and [hl]                                         ; $54a2: $a6

jr_018_54a3:
	or d                                             ; $54a3: $b2
	db $fc                                           ; $54a4: $fc
	and [hl]                                         ; $54a5: $a6
	ld l, b                                          ; $54a6: $68
	ld c, h                                          ; $54a7: $4c
	rst AddAOntoHL                                          ; $54a8: $ef
	rst SubAFromDE                                          ; $54a9: $df
	ld b, d                                          ; $54aa: $42
	sbc [hl]                                         ; $54ab: $9e
	ld b, c                                          ; $54ac: $41
	ld a, e                                          ; $54ad: $7b
	db $fd                                           ; $54ae: $fd
	rst SubAFromDE                                          ; $54af: $df
	ld b, c                                          ; $54b0: $41
	sbc d                                            ; $54b1: $9a
	jr nz, jr_018_54f4                               ; $54b2: $20 $40

	jr nc, jr_018_551e                               ; $54b4: $30 $68

	jr nc, jr_018_551b                               ; $54b6: $30 $63

	ld b, h                                          ; $54b8: $44
	di                                               ; $54b9: $f3
	rst SubAFromDE                                          ; $54ba: $df
	inc c                                            ; $54bb: $0c
	sub a                                            ; $54bc: $97
	ld l, [hl]                                       ; $54bd: $6e
	ld [hl], d                                       ; $54be: $72
	ld [bc], a                                       ; $54bf: $02
	ld [bc], a                                       ; $54c0: $02
	inc b                                            ; $54c1: $04
	ld [bc], a                                       ; $54c2: $02

jr_018_54c3:
	inc c                                            ; $54c3: $0c

jr_018_54c4:
	inc c                                            ; $54c4: $0c
	pop af                                           ; $54c5: $f1
	rst SubAFromDE                                          ; $54c6: $df
	jr nz, jr_018_545b                               ; $54c7: $20 $92

	ld a, b                                          ; $54c9: $78
	jr c, jr_018_548c                                ; $54ca: $38 $c0

	ldh [$28], a                                     ; $54cc: $e0 $28
	ld e, h                                          ; $54ce: $5c
	ld [hl], d                                       ; $54cf: $72
	ld h, [hl]                                       ; $54d0: $66
	ld b, $02                                        ; $54d1: $06 $02
	ld [$1806], sp                                   ; $54d3: $08 $06 $18
	ld h, d                                          ; $54d6: $62
	and h                                            ; $54d7: $a4
	ld hl, sp-$21                                    ; $54d8: $f8 $df
	inc b                                            ; $54da: $04
	sbc l                                            ; $54db: $9d
	dec c                                            ; $54dc: $0d
	inc c                                            ; $54dd: $0c
	jp c, $de08                                      ; $54de: $da $08 $de

	dec c                                            ; $54e1: $0d
	sbc [hl]                                         ; $54e2: $9e
	ld [$deef], sp                                   ; $54e3: $08 $ef $de
	ldh [$9a], a                                     ; $54e6: $e0 $9a
	ld b, b                                          ; $54e8: $40
	nop                                              ; $54e9: $00
	nop                                              ; $54ea: $00
	inc bc                                           ; $54eb: $03
	inc bc                                           ; $54ec: $03
	ld l, a                                          ; $54ed: $6f
	db $f4                                           ; $54ee: $f4
	db $eb                                           ; $54ef: $eb
	rst SubAFromDE                                          ; $54f0: $df
	ld h, b                                          ; $54f1: $60
	sub a                                            ; $54f2: $97
	ld [hl], b                                       ; $54f3: $70

jr_018_54f4:
	sub b                                            ; $54f4: $90
	db $10                                           ; $54f5: $10
	db $10                                           ; $54f6: $10
	jr nz, jr_018_5509                               ; $54f7: $20 $10

	ld h, b                                          ; $54f9: $60
	ld h, b                                          ; $54fa: $60
	db $fd                                           ; $54fb: $fd
	db $f4                                           ; $54fc: $f4
	ld bc, $dfff                                     ; $54fd: $01 $ff $df
	ld [bc], a                                       ; $5500: $02
	add b                                            ; $5501: $80
	dec e                                            ; $5502: $1d
	rra                                              ; $5503: $1f
	ld h, b                                          ; $5504: $60
	ld a, a                                          ; $5505: $7f
	nop                                              ; $5506: $00
	ld l, a                                          ; $5507: $6f
	nop                                              ; $5508: $00

jr_018_5509:
	rst GetHLinHL                                          ; $5509: $cf
	nop                                              ; $550a: $00
	cp d                                             ; $550b: $ba
	nop                                              ; $550c: $00
	rst FarCall                                          ; $550d: $f7
	ld bc, $0bef                                     ; $550e: $01 $ef $0b
	cp $1f                                           ; $5511: $fe $1f
	rst FarCall                                          ; $5513: $f7
	ccf                                              ; $5514: $3f
	rst SubAFromDE                                          ; $5515: $df
	ccf                                              ; $5516: $3f
	sbc $1f                                          ; $5517: $de $1f
	ld [hl], a                                       ; $5519: $77
	ld c, a                                          ; $551a: $4f

jr_018_551b:
	ld a, c                                          ; $551b: $79
	daa                                              ; $551c: $27
	inc a                                            ; $551d: $3c

jr_018_551e:
	nop                                              ; $551e: $00
	nop                                              ; $551f: $00
	add b                                            ; $5520: $80
	add b                                            ; $5521: $80
	ret nz                                           ; $5522: $c0

	ld h, [hl]                                       ; $5523: $66
	cp $08                                           ; $5524: $fe $08
	ld hl, sp+$04                                    ; $5526: $f8 $04
	db $ec                                           ; $5528: $ec
	ld [bc], a                                       ; $5529: $02
	ld d, [hl]                                       ; $552a: $56
	ld [bc], a                                       ; $552b: $02

jr_018_552c:
	or [hl]                                          ; $552c: $b6
	add c                                            ; $552d: $81
	rst $38                                          ; $552e: $ff
	and c                                            ; $552f: $a1
	ld l, l                                          ; $5530: $6d
	ldh [$7e], a                                     ; $5531: $e0 $7e
	db $ec                                           ; $5533: $ec
	ld a, $fa                                        ; $5534: $3e $fa
	ld a, [$68f8]                                    ; $5536: $fa $f8 $68
	ld hl, sp+$78                                    ; $5539: $f8 $78
	ldh a, [$d8]                                     ; $553b: $f0 $d8
	ldh [$b8], a                                     ; $553d: $e0 $b8
	inc bc                                           ; $553f: $03
	rrca                                             ; $5540: $0f
	adc e                                            ; $5541: $8b
	rra                                              ; $5542: $1f
	ld a, [de]                                       ; $5543: $1a
	add hl, sp                                       ; $5544: $39
	cpl                                              ; $5545: $2f
	add hl, sp                                       ; $5546: $39
	ld l, $1f                                        ; $5547: $2e $1f
	inc d                                            ; $5549: $14
	ld [$040f], sp                                   ; $554a: $08 $0f $04
	rlca                                             ; $554d: $07
	ld b, $03                                        ; $554e: $06 $03
	rlca                                             ; $5550: $07
	ld bc, $0103                                     ; $5551: $01 $03 $01
	ld bc, $7300                                     ; $5554: $01 $00 $73
	cp $7f                                           ; $5557: $fe $7f
	or $7f                                           ; $5559: $f6 $7f
	ldh a, [c]                                       ; $555b: $f2
	adc b                                            ; $555c: $88
	rlca                                             ; $555d: $07
	ret nz                                           ; $555e: $c0

	ldh a, [$f8]                                     ; $555f: $f0 $f8
	adc b                                            ; $5561: $88

jr_018_5562:
	call z, $ce34                                    ; $5562: $cc $34 $ce
	ld [hl-], a                                      ; $5565: $32
	db $fc                                           ; $5566: $fc
	inc d                                            ; $5567: $14
	jr jr_018_5562                                   ; $5568: $18 $f8

	jr nc, jr_018_552c                               ; $556a: $30 $c0

	ld [hl], b                                       ; $556c: $70
	add b                                            ; $556d: $80
	ldh a, [rP1]                                     ; $556e: $f0 $00
	ldh a, [rP1]                                     ; $5570: $f0 $00
	ldh [$80], a                                     ; $5572: $e0 $80
	ld [hl], e                                       ; $5574: $73
	cp $8a                                           ; $5575: $fe $8a
	ldh [$f0], a                                     ; $5577: $e0 $f0
	sub b                                            ; $5579: $90
	ld hl, sp+$78                                    ; $557a: $f8 $78
	inc a                                            ; $557c: $3c
	inc a                                            ; $557d: $3c
	rst AddAOntoHL                                          ; $557e: $ef
	xor b                                            ; $557f: $a8
	sbc h                                            ; $5580: $9c
	sub b                                            ; $5581: $90
	sbc h                                            ; $5582: $9c
	add b                                            ; $5583: $80
	rst $38                                          ; $5584: $ff
	ld b, c                                          ; $5585: $41
	add c                                            ; $5586: $81
	rst $38                                          ; $5587: $ff
	ld b, b                                          ; $5588: $40
	ld a, h                                          ; $5589: $7c
	jr nz, jr_018_55c4                               ; $558a: $20 $38

	db $dd                                           ; $558c: $dd
	db $10                                           ; $558d: $10
	db $db                                           ; $558e: $db
	ld [$1edf], sp                                   ; $558f: $08 $df $1e
	sbc e                                            ; $5592: $9b
	ccf                                              ; $5593: $3f
	add hl, sp                                       ; $5594: $39
	ld a, a                                          ; $5595: $7f
	ld [hl], a                                       ; $5596: $77
	db $eb                                           ; $5597: $eb
	ld [hl], a                                       ; $5598: $77
	and b                                            ; $5599: $a0
	sbc l                                            ; $559a: $9d
	inc bc                                           ; $559b: $03
	nop                                              ; $559c: $00
	ld [hl], a                                       ; $559d: $77
	sub [hl]                                         ; $559e: $96
	ld a, e                                          ; $559f: $7b
	db $f4                                           ; $55a0: $f4
	add b                                            ; $55a1: $80
	inc bc                                           ; $55a2: $03
	ld h, [hl]                                       ; $55a3: $66
	ld a, a                                          ; $55a4: $7f
	db $10                                           ; $55a5: $10
	rra                                              ; $55a6: $1f
	jr nz, jr_018_55e0                               ; $55a7: $20 $37

	ld b, b                                          ; $55a9: $40
	ld l, d                                          ; $55aa: $6a
	ld b, b                                          ; $55ab: $40
	ld l, l                                          ; $55ac: $6d
	add c                                            ; $55ad: $81
	rst $38                                          ; $55ae: $ff
	adc l                                            ; $55af: $8d
	or [hl]                                          ; $55b0: $b6
	rlca                                             ; $55b1: $07
	ld a, [hl]                                       ; $55b2: $7e
	scf                                              ; $55b3: $37
	ld a, h                                          ; $55b4: $7c
	ld e, a                                          ; $55b5: $5f
	ld e, a                                          ; $55b6: $5f
	rra                                              ; $55b7: $1f
	ld d, $9f                                        ; $55b8: $16 $9f
	ld e, $df                                        ; $55ba: $1e $df
	ld e, d                                          ; $55bc: $5a
	rst SubAFromBC                                          ; $55bd: $e7
	cp l                                             ; $55be: $bd
	nop                                              ; $55bf: $00
	nop                                              ; $55c0: $00
	rst SubAFromDE                                          ; $55c1: $df
	ld b, b                                          ; $55c2: $40
	add b                                            ; $55c3: $80

jr_018_55c4:
	cp b                                             ; $55c4: $b8
	ld hl, sp+$06                                    ; $55c5: $f8 $06
	cp $00                                           ; $55c7: $fe $00
	or $00                                           ; $55c9: $f6 $00
	di                                               ; $55cb: $f3
	nop                                              ; $55cc: $00
	ld e, l                                          ; $55cd: $5d
	nop                                              ; $55ce: $00
	rst AddAOntoHL                                          ; $55cf: $ef
	adc b                                            ; $55d0: $88
	rst FarCall                                          ; $55d1: $f7
	ret nc                                           ; $55d2: $d0

	ld a, a                                          ; $55d3: $7f
	ld hl, sp-$11                                    ; $55d4: $f8 $ef
	db $fc                                           ; $55d6: $fc
	ei                                               ; $55d7: $fb
	db $fc                                           ; $55d8: $fc
	ld a, e                                          ; $55d9: $7b
	ld hl, sp-$12                                    ; $55da: $f8 $ee
	ldh a, [c]                                       ; $55dc: $f2
	sbc [hl]                                         ; $55dd: $9e
	db $e4                                           ; $55de: $e4
	inc a                                            ; $55df: $3c

jr_018_55e0:
	ld [hl], e                                       ; $55e0: $73
	rrca                                             ; $55e1: $0f
	ld a, a                                          ; $55e2: $7f
	sub [hl]                                         ; $55e3: $96
	ld b, d                                          ; $55e4: $42
	inc sp                                           ; $55e5: $33
	dec l                                            ; $55e6: $2d
	inc de                                           ; $55e7: $13
	inc e                                            ; $55e8: $1c
	rlca                                             ; $55e9: $07
	inc b                                            ; $55ea: $04
	nop                                              ; $55eb: $00
	rlca                                             ; $55ec: $07
	ld h, a                                          ; $55ed: $67
	ld b, b                                          ; $55ee: $40
	ld a, a                                          ; $55ef: $7f
	and [hl]                                         ; $55f0: $a6
	ld e, a                                          ; $55f1: $5f
	ld b, b                                          ; $55f2: $40
	sub l                                            ; $55f3: $95
	call z, $f2fc                                    ; $55f4: $cc $fc $f2
	sub d                                            ; $55f7: $92
	sbc [hl]                                         ; $55f8: $9e
	ld a, [hl]                                       ; $55f9: $7e
	sbc [hl]                                         ; $55fa: $9e
	ld [hl], d                                       ; $55fb: $72
	db $fc                                           ; $55fc: $fc
	inc h                                            ; $55fd: $24
	daa                                              ; $55fe: $27
	ld b, b                                          ; $55ff: $40
	sub l                                            ; $5600: $95
	rst JumpTable                                          ; $5601: $c7
	add hl, hl                                       ; $5602: $29
	add hl, hl                                       ; $5603: $29
	ld de, $0139                                     ; $5604: $11 $39 $01
	ld a, a                                          ; $5607: $7f
	ld b, d                                          ; $5608: $42
	ld bc, $2f7f                                     ; $5609: $01 $7f $2f
	ld b, b                                          ; $560c: $40
	ld c, [hl]                                       ; $560d: $4e
	and b                                            ; $560e: $a0
	sbc [hl]                                         ; $560f: $9e
	ld de, $a00a                                     ; $5610: $11 $0a $a0
	sbc [hl]                                         ; $5613: $9e
	or c                                             ; $5614: $b1
	ld h, [hl]                                       ; $5615: $66
	and b                                            ; $5616: $a0
	sbc b                                            ; $5617: $98
	add sp, -$07                                     ; $5618: $e8 $f9
	ld a, b                                          ; $561a: $78
	ei                                               ; $561b: $fb
	ld e, d                                          ; $561c: $5a
	rst SubAFromBC                                          ; $561d: $e7
	cp c                                             ; $561e: $b9
	db $eb                                           ; $561f: $eb
	sbc [hl]                                         ; $5620: $9e
	add b                                            ; $5621: $80
	ld a, e                                          ; $5622: $7b
	cp $99                                           ; $5623: $fe $99
	ret nz                                           ; $5625: $c0

	nop                                              ; $5626: $00
	ret nz                                           ; $5627: $c0

	add b                                            ; $5628: $80
	add b                                            ; $5629: $80
	nop                                              ; $562a: $00
	ld b, $80                                        ; $562b: $06 $80
	sub e                                            ; $562d: $93
	cp $f0                                           ; $562e: $fe $f0
	cp $52                                           ; $5630: $fe $52
	db $fc                                           ; $5632: $fc
	adc h                                            ; $5633: $8c
	ld hl, sp+$08                                    ; $5634: $f8 $08
	ldh a, [rAUD1SWEEP]                              ; $5636: $f0 $10
	db $10                                           ; $5638: $10
	ldh a, [$37]                                     ; $5639: $f0 $37
	ld b, b                                          ; $563b: $40
	dec hl                                           ; $563c: $2b
	ld h, b                                          ; $563d: $60
	sbc h                                            ; $563e: $9c
	push de                                          ; $563f: $d5
	ccf                                              ; $5640: $3f
	jp c, Jump_018_601b                              ; $5641: $da $1b $60

	sbc d                                            ; $5644: $9a
	sbc $fa                                          ; $5645: $de $fa
	xor d                                            ; $5647: $aa
	ld hl, sp-$30                                    ; $5648: $f8 $d0
	ld a, d                                          ; $564a: $7a
	nop                                              ; $564b: $00
	sbc h                                            ; $564c: $9c
	ld e, b                                          ; $564d: $58
	ldh [$b8], a                                     ; $564e: $e0 $b8
	sbc $7f                                          ; $5650: $de $7f
	ld a, [hl]                                       ; $5652: $7e
	ld b, h                                          ; $5653: $44
	sbc [hl]                                         ; $5654: $9e
	nop                                              ; $5655: $00
	ld c, a                                          ; $5656: $4f
	cp $7f                                           ; $5657: $fe $7f
	xor $df                                          ; $5659: $ee $df
	ld a, a                                          ; $565b: $7f
	ld sp, hl                                        ; $565c: $f9
	sbc $ff                                          ; $565d: $de $ff
	ld c, e                                          ; $565f: $4b
	ldh [c], a                                       ; $5660: $e2
	ld [hl], e                                       ; $5661: $73
	cp $9a                                           ; $5662: $fe $9a
	rst SubAFromBC                                          ; $5664: $e7
	ld a, b                                          ; $5665: $78
	ld c, b                                          ; $5666: $48
	ret nz                                           ; $5667: $c0

	and b                                            ; $5668: $a0
	pop af                                           ; $5669: $f1
	rst SubAFromDE                                          ; $566a: $df
	ld h, $91                                        ; $566b: $26 $91
	ld [hl], a                                       ; $566d: $77
	ld h, e                                          ; $566e: $63
	ld a, [hl-]                                      ; $566f: $3a
	ld a, a                                          ; $5670: $7f
	ld [hl-], a                                      ; $5671: $32
	ld [hl+], a                                      ; $5672: $22
	ld h, $22                                        ; $5673: $26 $22
	inc h                                            ; $5675: $24
	ld h, $20                                        ; $5676: $26 $20
	jr nz, jr_018_56b8                               ; $5678: $20 $3e

	ld e, $f1                                        ; $567a: $1e $f1
	adc a                                            ; $567c: $8f
	db $10                                           ; $567d: $10
	jr jr_018_5698                                   ; $567e: $18 $18

jr_018_5680:
	ld c, b                                          ; $5680: $48
	ld [hl], h                                       ; $5681: $74
	ld a, h                                          ; $5682: $7c
	ld [$180c], sp                                   ; $5683: $08 $0c $18
	db $10                                           ; $5686: $10
	jr nz, jr_018_56b9                               ; $5687: $20 $30

	ld [hl], b                                       ; $5689: $70
	ld e, b                                          ; $568a: $58
	adc $8e                                          ; $568b: $ce $8e
	pop af                                           ; $568d: $f1
	sbc d                                            ; $568e: $9a
	jr c, jr_018_570d                                ; $568f: $38 $7c

	ld h, [hl]                                       ; $5691: $66
	jp nc, $dc52                                     ; $5692: $d2 $52 $dc

	sub d                                            ; $5695: $92
	sbc c                                            ; $5696: $99
	and [hl]                                         ; $5697: $a6

jr_018_5698:
	or d                                             ; $5698: $b2
	db $fc                                           ; $5699: $fc
	and [hl]                                         ; $569a: $a6
	ld l, b                                          ; $569b: $68
	ld c, h                                          ; $569c: $4c
	rst AddAOntoHL                                          ; $569d: $ef
	rst SubAFromDE                                          ; $569e: $df
	ld b, d                                          ; $569f: $42
	sbc [hl]                                         ; $56a0: $9e
	ld b, c                                          ; $56a1: $41
	ld a, e                                          ; $56a2: $7b
	db $fd                                           ; $56a3: $fd
	rst SubAFromDE                                          ; $56a4: $df
	ld b, c                                          ; $56a5: $41
	sbc c                                            ; $56a6: $99
	jr nz, jr_018_56e9                               ; $56a7: $20 $40

	jr nc, jr_018_5713                               ; $56a9: $30 $68

	jr nc, jr_018_56dd                               ; $56ab: $30 $30

	db $eb                                           ; $56ad: $eb
	rst SubAFromDE                                          ; $56ae: $df
	inc c                                            ; $56af: $0c
	sub a                                            ; $56b0: $97
	ld l, [hl]                                       ; $56b1: $6e
	ld [hl], d                                       ; $56b2: $72
	ld [bc], a                                       ; $56b3: $02
	ld [bc], a                                       ; $56b4: $02
	inc b                                            ; $56b5: $04
	ld [bc], a                                       ; $56b6: $02
	inc c                                            ; $56b7: $0c

jr_018_56b8:
	inc c                                            ; $56b8: $0c

jr_018_56b9:
	pop af                                           ; $56b9: $f1
	rst SubAFromDE                                          ; $56ba: $df
	jr nz, @-$6c                                     ; $56bb: $20 $92

	ld a, b                                          ; $56bd: $78
	jr c, jr_018_5680                                ; $56be: $38 $c0

	ldh [$28], a                                     ; $56c0: $e0 $28
	ld e, h                                          ; $56c2: $5c
	ld [hl], d                                       ; $56c3: $72
	ld h, [hl]                                       ; $56c4: $66
	ld b, $02                                        ; $56c5: $06 $02
	ld [$1806], sp                                   ; $56c7: $08 $06 $18
	ld a, d                                          ; $56ca: $7a
	db $e4                                           ; $56cb: $e4
	ldh a, [c]                                       ; $56cc: $f2
	rst SubAFromDE                                          ; $56cd: $df
	inc b                                            ; $56ce: $04
	sbc l                                            ; $56cf: $9d
	dec c                                            ; $56d0: $0d
	inc c                                            ; $56d1: $0c
	jp c, $de08                                      ; $56d2: $da $08 $de

	dec c                                            ; $56d5: $0d
	sbc [hl]                                         ; $56d6: $9e
	ld [$deef], sp                                   ; $56d7: $08 $ef $de
	ldh [$9a], a                                     ; $56da: $e0 $9a
	ld b, b                                          ; $56dc: $40

jr_018_56dd:
	nop                                              ; $56dd: $00
	nop                                              ; $56de: $00
	inc bc                                           ; $56df: $03
	inc bc                                           ; $56e0: $03
	ld l, a                                          ; $56e1: $6f
	db $f4                                           ; $56e2: $f4
	db $eb                                           ; $56e3: $eb
	rst SubAFromDE                                          ; $56e4: $df
	ld h, b                                          ; $56e5: $60
	sub a                                            ; $56e6: $97
	ld [hl], b                                       ; $56e7: $70
	sub b                                            ; $56e8: $90

jr_018_56e9:
	db $10                                           ; $56e9: $10
	db $10                                           ; $56ea: $10
	jr nz, jr_018_56fd                               ; $56eb: $20 $10

	ld h, b                                          ; $56ed: $60
	ld h, b                                          ; $56ee: $60
	db $fd                                           ; $56ef: $fd
	or d                                             ; $56f0: $b2
	dec bc                                           ; $56f1: $0b
	rst SubAFromDE                                          ; $56f2: $df
	ld bc, $0fdf                                     ; $56f3: $01 $df $0f
	add b                                            ; $56f6: $80
	rra                                              ; $56f7: $1f
	jr jr_018_5722                                   ; $56f8: $18 $28

	scf                                              ; $56fa: $37
	ld l, d                                          ; $56fb: $6a
	ld a, a                                          ; $56fc: $7f

jr_018_56fd:
	ld d, d                                          ; $56fd: $52
	ld a, a                                          ; $56fe: $7f
	ld d, [hl]                                       ; $56ff: $56
	ld a, l                                          ; $5700: $7d
	ld l, a                                          ; $5701: $6f
	ld a, l                                          ; $5702: $7d
	ld e, a                                          ; $5703: $5f
	ld [hl], a                                       ; $5704: $77
	ld a, a                                          ; $5705: $7f
	halt                                             ; $5706: $76
	ld a, a                                          ; $5707: $7f
	ld h, d                                          ; $5708: $62
	ld e, a                                          ; $5709: $5f
	halt                                             ; $570a: $76
	ld e, h                                          ; $570b: $5c
	ld [hl], e                                       ; $570c: $73

jr_018_570d:
	ld e, a                                          ; $570d: $5f
	ld a, b                                          ; $570e: $78
	ld d, a                                          ; $570f: $57
	ld a, [hl]                                       ; $5710: $7e
	ld e, a                                          ; $5711: $5f
	ld a, a                                          ; $5712: $7f

jr_018_5713:
	add b                                            ; $5713: $80
	add b                                            ; $5714: $80
	ld [hl], b                                       ; $5715: $70
	add b                                            ; $5716: $80
	ldh a, [$d8]                                     ; $5717: $f0 $d8
	jr c, jr_018_5787                                ; $5719: $38 $6c

	call c, $fc54                                    ; $571b: $dc $54 $fc
	ld e, d                                          ; $571e: $5a
	cp $b6                                           ; $571f: $fe $b6
	ld e, [hl]                                       ; $5721: $5e

jr_018_5722:
	or $5e                                           ; $5722: $f6 $5e
	jp c, $fefe                                      ; $5724: $da $fe $fe

	xor $fe                                          ; $5727: $ee $fe
	ld h, $fa                                        ; $5729: $26 $fa
	ld l, [hl]                                       ; $572b: $6e
	ld a, [hl-]                                      ; $572c: $3a
	adc $fa                                          ; $572d: $ce $fa
	ld e, $ea                                        ; $572f: $1e $ea
	ld a, [hl]                                       ; $5731: $7e
	ld a, [$5ffe]                                    ; $5732: $fa $fe $5f
	ld a, a                                          ; $5735: $7f
	sbc e                                            ; $5736: $9b
	ld e, h                                          ; $5737: $5c
	ld a, h                                          ; $5738: $7c
	inc a                                            ; $5739: $3c
	inc a                                            ; $573a: $3c
	sbc $1f                                          ; $573b: $de $1f
	sbc [hl]                                         ; $573d: $9e
	ld e, $7b                                        ; $573e: $1e $7b
	cp $9c                                           ; $5740: $fe $9c
	rra                                              ; $5742: $1f
	rrca                                             ; $5743: $0f
	rrca                                             ; $5744: $0f
	rst SubAFromHL                                          ; $5745: $d7
	rlca                                             ; $5746: $07
	sub e                                            ; $5747: $93
	rra                                              ; $5748: $1f
	add hl, de                                       ; $5749: $19
	ccf                                              ; $574a: $3f
	ccf                                              ; $574b: $3f
	rra                                              ; $574c: $1f
	rra                                              ; $574d: $1f
	ld a, [$3afe]                                    ; $574e: $fa $fe $3a
	ld a, $3c                                        ; $5751: $3e $3c
	inc a                                            ; $5753: $3c
	call c, $9af8                                    ; $5754: $dc $f8 $9a
	ld a, b                                          ; $5757: $78
	ld hl, sp-$08                                    ; $5758: $f8 $f8
	ldh a, [$f0]                                     ; $575a: $f0 $f0
	rst SubAFromHL                                          ; $575c: $d7
	ldh [$80], a                                     ; $575d: $e0 $80
	ld hl, sp-$68                                    ; $575f: $f8 $98
	db $fc                                           ; $5761: $fc
	db $fc                                           ; $5762: $fc
	ld hl, sp-$08                                    ; $5763: $f8 $f8
	ld [bc], a                                       ; $5765: $02
	inc bc                                           ; $5766: $03
	ccf                                              ; $5767: $3f
	ccf                                              ; $5768: $3f
	ld l, d                                          ; $5769: $6a
	ld [hl], a                                       ; $576a: $77
	ld sp, hl                                        ; $576b: $f9
	rst $38                                          ; $576c: $ff
	ld h, [hl]                                       ; $576d: $66
	ld a, a                                          ; $576e: $7f
	ld c, e                                          ; $576f: $4b
	ld [hl], a                                       ; $5770: $77
	call nc, $8def                                   ; $5771: $d4 $ef $8d
	ei                                               ; $5774: $fb
	sbc a                                            ; $5775: $9f
	ldh a, [c]                                       ; $5776: $f2
	cp a                                             ; $5777: $bf
	db $ec                                           ; $5778: $ec
	cp a                                             ; $5779: $bf
	add sp, -$41                                     ; $577a: $e8 $bf
	db $ec                                           ; $577c: $ec
	rst $38                                          ; $577d: $ff
	add b                                            ; $577e: $80
	ldh [$7f], a                                     ; $577f: $e0 $7f
	ld [hl], b                                       ; $5781: $70
	ccf                                              ; $5782: $3f
	inc a                                            ; $5783: $3c

jr_018_5784:
	ld l, a                                          ; $5784: $6f
	ld a, a                                          ; $5785: $7f
	nop                                              ; $5786: $00

jr_018_5787:
	nop                                              ; $5787: $00
	ldh [$e0], a                                     ; $5788: $e0 $e0
	jr c, jr_018_5784                                ; $578a: $38 $f8

	ld e, h                                          ; $578c: $5c
	db $fc                                           ; $578d: $fc
	xor $fe                                          ; $578e: $ee $fe
	jp nc, $a6fe                                     ; $5790: $d2 $fe $a6

	cp $96                                           ; $5793: $fe $96
	cp $94                                           ; $5795: $fe $94
	ld a, h                                          ; $5797: $7c
	call c, $dcfc                                    ; $5798: $dc $fc $dc
	or h                                             ; $579b: $b4
	call c, $87f4                                    ; $579c: $dc $f4 $87
	call c, $d83c                                    ; $579f: $dc $3c $d8
	ld a, b                                          ; $57a2: $78
	rst AddAOntoHL                                          ; $57a3: $ef
	rst AddAOntoHL                                          ; $57a4: $ef
	ccf                                              ; $57a5: $3f
	ld sp, $5c7c                                     ; $57a6: $31 $7c $5c
	ld [hl], b                                       ; $57a9: $70
	ld [hl], b                                       ; $57aa: $70
	ld h, b                                          ; $57ab: $60
	ld h, b                                          ; $57ac: $60
	ld hl, $3321                                     ; $57ad: $21 $21 $33

jr_018_57b0:
	inc sp                                           ; $57b0: $33
	ld e, $1e                                        ; $57b1: $1e $1e
	inc c                                            ; $57b3: $0c
	inc c                                            ; $57b4: $0c
	ld c, $0e                                        ; $57b5: $0e $0e
	sbc $0f                                          ; $57b7: $de $0f
	sbc [hl]                                         ; $57b9: $9e
	dec bc                                           ; $57ba: $0b
	ld [hl], a                                       ; $57bb: $77
	cp $9b                                           ; $57bc: $fe $9b
	ld e, $1a                                        ; $57be: $1e $1a
	rra                                              ; $57c0: $1f
	inc de                                           ; $57c1: $13
	ld [hl], a                                       ; $57c2: $77
	add b                                            ; $57c3: $80
	sbc b                                            ; $57c4: $98
	ccf                                              ; $57c5: $3f
	ld hl, $637f                                     ; $57c6: $21 $7f $63
	cp $fe                                           ; $57c9: $fe $fe
	or d                                             ; $57cb: $b2
	sbc $fe                                          ; $57cc: $de $fe
	reti                                             ; $57ce: $d9


	jr nz, jr_018_57b0                               ; $57cf: $20 $df

	and b                                            ; $57d1: $a0
	sbc c                                            ; $57d2: $99
	ldh [$60], a                                     ; $57d3: $e0 $60
	ldh a, [$b0]                                     ; $57d5: $f0 $b0
	ldh a, [$d0]                                     ; $57d7: $f0 $d0
	ld l, a                                          ; $57d9: $6f
	add b                                            ; $57da: $80
	rst $38                                          ; $57db: $ff
	rst SubAFromDE                                          ; $57dc: $df
	inc bc                                           ; $57dd: $03
	add b                                            ; $57de: $80
	dec c                                            ; $57df: $0d
	rrca                                             ; $57e0: $0f
	inc de                                           ; $57e1: $13
	rra                                              ; $57e2: $1f
	inc d                                            ; $57e3: $14
	rra                                              ; $57e4: $1f
	dec d                                            ; $57e5: $15
	dec de                                           ; $57e6: $1b
	dec hl                                           ; $57e7: $2b
	ld a, $33                                        ; $57e8: $3e $33
	ld a, $7f                                        ; $57ea: $3e $7f
	ld a, h                                          ; $57ec: $7c
	ld c, a                                          ; $57ed: $4f
	halt                                             ; $57ee: $76
	ld e, a                                          ; $57ef: $5f
	ld [hl], h                                       ; $57f0: $74
	ld e, a                                          ; $57f1: $5f
	halt                                             ; $57f2: $76
	ld c, a                                          ; $57f3: $4f
	ld a, b                                          ; $57f4: $78
	ld l, a                                          ; $57f5: $6f
	ld a, [hl]                                       ; $57f6: $7e
	ccf                                              ; $57f7: $3f
	add hl, sp                                       ; $57f8: $39
	rra                                              ; $57f9: $1f
	inc de                                           ; $57fa: $13
	nop                                              ; $57fb: $00
	nop                                              ; $57fc: $00
	ld h, b                                          ; $57fd: $60
	add b                                            ; $57fe: $80
	ld h, b                                          ; $57ff: $60
	sbc b                                            ; $5800: $98
	ld hl, sp-$1c                                    ; $5801: $f8 $e4
	db $fc                                           ; $5803: $fc
	ld a, h                                          ; $5804: $7c
	or h                                             ; $5805: $b4
	cp h                                             ; $5806: $bc
	call nc, Call_018_7eca                           ; $5807: $d4 $ca $7e
	ld [$f77e], a                                    ; $580a: $ea $7e $f7
	ccf                                              ; $580d: $3f
	ei                                               ; $580e: $fb
	ld l, a                                          ; $580f: $6f
	db $fd                                           ; $5810: $fd
	ld c, a                                          ; $5811: $4f
	ld sp, hl                                        ; $5812: $f9
	ld l, a                                          ; $5813: $6f
	ld sp, hl                                        ; $5814: $f9
	rrca                                             ; $5815: $0f
	di                                               ; $5816: $f3
	rst SubAFromDE                                          ; $5817: $df
	or $3e                                           ; $5818: $f6 $3e
	db $fc                                           ; $581a: $fc
	sbc h                                            ; $581b: $9c
	inc e                                            ; $581c: $1c
	inc d                                            ; $581d: $14
	rst SubAFromDE                                          ; $581e: $df
	rra                                              ; $581f: $1f
	sbc l                                            ; $5820: $9d
	rla                                              ; $5821: $17
	inc d                                            ; $5822: $14
	ld a, e                                          ; $5823: $7b
	cp $9c                                           ; $5824: $fe $9c
	rla                                              ; $5826: $17
	inc c                                            ; $5827: $0c
	inc c                                            ; $5828: $0c
	reti                                             ; $5829: $d9


	inc b                                            ; $582a: $04
	rst SubAFromDE                                          ; $582b: $df
	rlca                                             ; $582c: $07
	sbc c                                            ; $582d: $99
	inc bc                                           ; $582e: $03
	ld [bc], a                                       ; $582f: $02
	rlca                                             ; $5830: $07
	ld b, $0f                                        ; $5831: $06 $0f
	inc c                                            ; $5833: $0c
	halt                                             ; $5834: $76
	ldh a, [hDisp1_OBP0]                                     ; $5835: $f0 $93
	ld a, h                                          ; $5837: $7c
	ld c, h                                          ; $5838: $4c
	db $fc                                           ; $5839: $fc
	db $ec                                           ; $583a: $ec
	db $fc                                           ; $583b: $fc
	inc a                                            ; $583c: $3c
	db $e4                                           ; $583d: $e4
	inc h                                            ; $583e: $24
	db $e4                                           ; $583f: $e4
	db $e4                                           ; $5840: $e4
	jr c, jr_018_587b                                ; $5841: $38 $38

	reti                                             ; $5843: $d9


	db $10                                           ; $5844: $10
	rst SubAFromDE                                          ; $5845: $df
	ldh a, [hDisp0_SCX]                                     ; $5846: $f0 $84
	ld hl, sp-$28                                    ; $5848: $f8 $d8
	cp b                                             ; $584a: $b8
	xor b                                            ; $584b: $a8
	db $fc                                           ; $584c: $fc
	db $ec                                           ; $584d: $ec
	cp $fe                                           ; $584e: $fe $fe
	db $fc                                           ; $5850: $fc
	db $fc                                           ; $5851: $fc
	ccf                                              ; $5852: $3f
	ccf                                              ; $5853: $3f
	ld h, a                                          ; $5854: $67
	ld a, c                                          ; $5855: $79
	add hl, de                                       ; $5856: $19
	ld e, $33                                        ; $5857: $1e $33
	ccf                                              ; $5859: $3f
	ld l, l                                          ; $585a: $6d
	ld [hl], e                                       ; $585b: $73
	adc $ff                                          ; $585c: $ce $ff
	rst FarCall                                          ; $585e: $f7
	ei                                               ; $585f: $fb
	and [hl]                                         ; $5860: $a6
	cp a                                             ; $5861: $bf
	ld e, d                                          ; $5862: $5a
	sbc $7f                                          ; $5863: $de $7f
	sub [hl]                                         ; $5865: $96
	ld c, a                                          ; $5866: $4f
	ld d, h                                          ; $5867: $54
	rrca                                             ; $5868: $0f
	ld d, $0f                                        ; $5869: $16 $0f
	jr jr_018_587c                                   ; $586b: $18 $0f

	inc e                                            ; $586d: $1c
	rra                                              ; $586e: $1f
	ld a, e                                          ; $586f: $7b
	inc a                                            ; $5870: $3c
	rst $38                                          ; $5871: $ff
	rst SubAFromDE                                          ; $5872: $df
	ld hl, sp-$80                                    ; $5873: $f8 $80
	call z, $86fc                                    ; $5875: $cc $fc $86
	cp $ef                                           ; $5878: $fe $ef
	di                                               ; $587a: $f3

jr_018_587b:
	pop af                                           ; $587b: $f1

jr_018_587c:
	rst $38                                          ; $587c: $ff
	ld e, c                                          ; $587d: $59
	rst AddAOntoHL                                          ; $587e: $ef
	rst AddAOntoHL                                          ; $587f: $ef
	rst FarCall                                          ; $5880: $f7
	ld a, [$7dbf]                                    ; $5881: $fa $bf $7d
	rst AddAOntoHL                                          ; $5884: $ef
	db $fd                                           ; $5885: $fd
	ld c, e                                          ; $5886: $4b
	db $fd                                           ; $5887: $fd
	ld l, e                                          ; $5888: $6b
	ei                                               ; $5889: $fb
	rra                                              ; $588a: $1f
	ld a, [$fe7e]                                    ; $588b: $fa $7e $fe
	sbc [hl]                                         ; $588e: $9e
	db $fc                                           ; $588f: $fc
	call z, $0606                                    ; $5890: $cc $06 $06
	add hl, de                                       ; $5893: $19
	ld a, a                                          ; $5894: $7f
	add b                                            ; $5895: $80
	ld a, [hl]                                       ; $5896: $7e
	sub [hl]                                         ; $5897: $96
	add b                                            ; $5898: $80
	scf                                              ; $5899: $37
	add hl, hl                                       ; $589a: $29
	ccf                                              ; $589b: $3f
	ld [hl], a                                       ; $589c: $77
	ld a, c                                          ; $589d: $79
	ld l, [hl]                                       ; $589e: $6e
	ld [hl], a                                       ; $589f: $77
	set 7, [hl]                                      ; $58a0: $cb $fe
	cp a                                             ; $58a2: $bf
	ld hl, sp-$21                                    ; $58a3: $f8 $df
	db $f4                                           ; $58a5: $f4

jr_018_58a6:
	cp a                                             ; $58a6: $bf
	ld [$707f], a                                    ; $58a7: $ea $7f $70
	ld a, a                                          ; $58aa: $7f
	ld a, b                                          ; $58ab: $78
	ld a, a                                          ; $58ac: $7f
	ld c, h                                          ; $58ad: $4c
	rst $38                                          ; $58ae: $ff
	rst GetHLinHL                                          ; $58af: $cf
	ei                                               ; $58b0: $fb
	sbc d                                            ; $58b1: $9a
	ret nz                                           ; $58b2: $c0

	ret nz                                           ; $58b3: $c0

	jr nc, jr_018_58a6                               ; $58b4: $30 $f0

	ld e, b                                          ; $58b6: $58
	cp b                                             ; $58b7: $b8
	add b                                            ; $58b8: $80
	add sp, -$28                                     ; $58b9: $e8 $d8
	ld l, h                                          ; $58bb: $6c
	db $fc                                           ; $58bc: $fc
	ld a, h                                          ; $58bd: $7c
	cp h                                             ; $58be: $bc
	or $de                                           ; $58bf: $f6 $de
	xor [hl]                                         ; $58c1: $ae
	cp $ff                                           ; $58c2: $fe $ff
	ccf                                              ; $58c4: $3f
	rst $38                                          ; $58c5: $ff
	ld e, c                                          ; $58c6: $59
	rst $38                                          ; $58c7: $ff
	or l                                             ; $58c8: $b5
	rst $38                                          ; $58c9: $ff
	add hl, de                                       ; $58ca: $19
	rst $38                                          ; $58cb: $ff
	inc sp                                           ; $58cc: $33
	cp $66                                           ; $58cd: $fe $66
	cp $fe                                           ; $58cf: $fe $fe
	and d                                            ; $58d1: $a2
	and d                                            ; $58d2: $a2
	ld hl, sp-$48                                    ; $58d3: $f8 $b8
	rst AddAOntoHL                                          ; $58d5: $ef
	xor a                                            ; $58d6: $af
	rst AddAOntoHL                                          ; $58d7: $ef
	adc b                                            ; $58d8: $88
	add sp, -$31                                     ; $58d9: $e8 $cf
	ret z                                            ; $58db: $c8

	adc a                                            ; $58dc: $8f
	adc a                                            ; $58dd: $8f
	adc d                                            ; $58de: $8a
	adc d                                            ; $58df: $8a
	jp c, Jump_018_7ada                              ; $58e0: $da $da $7a

	ld a, d                                          ; $58e3: $7a
	dec bc                                           ; $58e4: $0b
	dec bc                                           ; $58e5: $0b
	rrca                                             ; $58e6: $0f
	ld c, $07                                        ; $58e7: $0e $07
	ld b, $07                                        ; $58e9: $06 $07
	dec b                                            ; $58eb: $05
	rra                                              ; $58ec: $1f
	dec e                                            ; $58ed: $1d
	rra                                              ; $58ee: $1f
	ld de, $c076                                     ; $58ef: $11 $76 $c0
	rst SubAFromDE                                          ; $58f2: $df
	ld [hl+], a                                      ; $58f3: $22
	sbc $e2                                          ; $58f4: $de $e2
	ld a, a                                          ; $58f6: $7f
	db $fc                                           ; $58f7: $fc
	sbc b                                            ; $58f8: $98
	ld [hl+], a                                      ; $58f9: $22
	ldh a, [c]                                       ; $58fa: $f2
	ldh a, [c]                                       ; $58fb: $f2
	ld a, [hl-]                                      ; $58fc: $3a
	ld a, [hl-]                                      ; $58fd: $3a
	ld l, $2e                                        ; $58fe: $2e $2e
	ld [hl], d                                       ; $5900: $72
	jp nz, $e0df                                     ; $5901: $c2 $df $e0

	ld a, [hl]                                       ; $5904: $7e
	ret nz                                           ; $5905: $c0

	ld a, a                                          ; $5906: $7f
	xor e                                            ; $5907: $ab
	sbc h                                            ; $5908: $9c
	sub b                                            ; $5909: $90
	ld hl, sp-$28                                    ; $590a: $f8 $d8
	ld l, [hl]                                       ; $590c: $6e
	ret nz                                           ; $590d: $c0

	rst SubAFromDE                                          ; $590e: $df
	rrca                                             ; $590f: $0f
	add a                                            ; $5910: $87
	jr jr_018_5932                                   ; $5911: $18 $1f

	scf                                              ; $5913: $37
	dec a                                            ; $5914: $3d
	ld a, a                                          ; $5915: $7f
	ld l, e                                          ; $5916: $6b
	sub $fb                                          ; $5917: $d6 $fb
	xor c                                            ; $5919: $a9
	rst $38                                          ; $591a: $ff
	db $d3                                           ; $591b: $d3
	cp $d7                                           ; $591c: $fe $d7
	db $fc                                           ; $591e: $fc
	ld d, a                                          ; $591f: $57
	ld a, l                                          ; $5920: $7d
	ld d, a                                          ; $5921: $57
	ld a, h                                          ; $5922: $7c
	ld h, a                                          ; $5923: $67
	ld a, h                                          ; $5924: $7c
	dec sp                                           ; $5925: $3b
	ld a, $1f                                        ; $5926: $3e $1f
	inc e                                            ; $5928: $1c
	ld a, c                                          ; $5929: $79
	and [hl]                                         ; $592a: $a6
	add c                                            ; $592b: $81
	ld e, $60                                        ; $592c: $1e $60
	ld h, b                                          ; $592e: $60
	ret c                                            ; $592f: $d8

	ld hl, sp+$2c                                    ; $5930: $f8 $2c

jr_018_5932:
	db $fc                                           ; $5932: $fc
	add h                                            ; $5933: $84
	db $fc                                           ; $5934: $fc
	halt                                             ; $5935: $76
	sbc [hl]                                         ; $5936: $9e
	ld a, d                                          ; $5937: $7a
	xor $76                                          ; $5938: $ee $76
	sbc [hl]                                         ; $593a: $9e
	adc [hl]                                         ; $593b: $8e
	cp $da                                           ; $593c: $fe $da
	cp $ca                                           ; $593e: $fe $ca
	cp $d2                                           ; $5940: $fe $d2
	xor [hl]                                         ; $5942: $ae
	sub $ee                                          ; $5943: $d6 $ee
	call nc, $c43c                                   ; $5945: $d4 $3c $c4
	ld a, h                                          ; $5948: $7c
	db $ec                                           ; $5949: $ec
	ld a, e                                          ; $594a: $7b
	ret nz                                           ; $594b: $c0

	ld a, a                                          ; $594c: $7f
	ld b, [hl]                                       ; $594d: $46
	sbc l                                            ; $594e: $9d
	ccf                                              ; $594f: $3f
	cpl                                              ; $5950: $2f
	ld a, e                                          ; $5951: $7b
	cp $98                                           ; $5952: $fe $98
	inc hl                                           ; $5954: $23
	inc a                                            ; $5955: $3c
	inc h                                            ; $5956: $24
	inc a                                            ; $5957: $3c
	inc [hl]                                         ; $5958: $34
	rra                                              ; $5959: $1f
	rra                                              ; $595a: $1f
	ret c                                            ; $595b: $d8

	rlca                                             ; $595c: $07
	sbc h                                            ; $595d: $9c
	dec b                                            ; $595e: $05
	rrca                                             ; $595f: $0f
	dec c                                            ; $5960: $0d
	ld l, l                                          ; $5961: $6d
	ret nz                                           ; $5962: $c0

	ld a, a                                          ; $5963: $7f
	ld e, $9d                                        ; $5964: $1e $9d
	db $fc                                           ; $5966: $fc
	db $e4                                           ; $5967: $e4
	ld a, e                                          ; $5968: $7b
	cp $7f                                           ; $5969: $fe $7f
	db $d3                                           ; $596b: $d3
	sbc d                                            ; $596c: $9a
	ld c, h                                          ; $596d: $4c
	jr c, jr_018_5998                                ; $596e: $38 $28

	ld hl, sp-$08                                    ; $5970: $f8 $f8
	rst SubAFromHL                                          ; $5972: $d7
	ldh [$7a], a                                     ; $5973: $e0 $7a
	cp h                                             ; $5975: $bc
	ld [hl], d                                       ; $5976: $72
	ld b, b                                          ; $5977: $40
	halt                                             ; $5978: $76
	ld b, d                                          ; $5979: $42
	sbc [hl]                                         ; $597a: $9e
	ld a, $7a                                        ; $597b: $3e $7a
	jp nz, Jump_018_5396                             ; $597d: $c2 $96 $53

	ld l, a                                          ; $5980: $6f
	push hl                                          ; $5981: $e5
	sbc $aa                                          ; $5982: $de $aa
	db $dd                                           ; $5984: $dd
	adc h                                            ; $5985: $8c
	ei                                               ; $5986: $fb
	sub e                                            ; $5987: $93
	sbc $ff                                          ; $5988: $de $ff
	sub e                                            ; $598a: $93
	xor a                                            ; $598b: $af
	cp $af                                           ; $598c: $fe $af
	ld a, [$7e6f]                                    ; $598e: $fa $6f $7e
	ld d, a                                          ; $5991: $57
	ld a, a                                          ; $5992: $7f
	ccf                                              ; $5993: $3f
	inc a                                            ; $5994: $3c
	ccf                                              ; $5995: $3f
	ld [hl-], a                                      ; $5996: $32
	halt                                             ; $5997: $76

jr_018_5998:
	ret nz                                           ; $5998: $c0

	ld a, l                                          ; $5999: $7d
	ld a, $81                                        ; $599a: $3e $81
	adc h                                            ; $599c: $8c
	db $fc                                           ; $599d: $fc
	or [hl]                                          ; $599e: $b6
	adc $cb                                          ; $599f: $ce $cb
	ld [hl], a                                       ; $59a1: $77
	dec d                                            ; $59a2: $15
	ei                                               ; $59a3: $fb
	sbc c                                            ; $59a4: $99
	rst $38                                          ; $59a5: $ff
	cp l                                             ; $59a6: $bd
	rst AddAOntoHL                                          ; $59a7: $ef
	ei                                               ; $59a8: $fb
	ld a, a                                          ; $59a9: $7f
	rst $38                                          ; $59aa: $ff
	rst FarCall                                          ; $59ab: $f7
	db $fd                                           ; $59ac: $fd
	push de                                          ; $59ad: $d5
	db $fc                                           ; $59ae: $fc
	db $f4                                           ; $59af: $f4
	db $fc                                           ; $59b0: $fc
	inc a                                            ; $59b1: $3c
	db $fc                                           ; $59b2: $fc
	inc e                                            ; $59b3: $1c
	ld hl, sp+$38                                    ; $59b4: $f8 $38
	rra                                              ; $59b6: $1f
	ld de, $1b1f                                     ; $59b7: $11 $1f $1b
	ld a, c                                          ; $59ba: $79
	jp c, $3f9e                                      ; $59bb: $da $9e $3f

	db $dd                                           ; $59be: $dd
	ld a, h                                          ; $59bf: $7c
	rst SubAFromDE                                          ; $59c0: $df
	ccf                                              ; $59c1: $3f
	rst SubAFromHL                                          ; $59c2: $d7
	rrca                                             ; $59c3: $0f
	sbc $1f                                          ; $59c4: $de $1f
	ld [hl], c                                       ; $59c6: $71
	ret nz                                           ; $59c7: $c0

	db $dd                                           ; $59c8: $dd
	ldh a, [$df]                                     ; $59c9: $f0 $df
	ld hl, sp-$21                                    ; $59cb: $f8 $df
	db $fc                                           ; $59cd: $fc
	db $dd                                           ; $59ce: $dd
	ld a, h                                          ; $59cf: $7c
	scf                                              ; $59d0: $37
	add b                                            ; $59d1: $80
	rst $38                                          ; $59d2: $ff
	ld [hl], h                                       ; $59d3: $74
	cp [hl]                                          ; $59d4: $be
	add b                                            ; $59d5: $80
	ld a, [de]                                       ; $59d6: $1a
	dec e                                            ; $59d7: $1d
	scf                                              ; $59d8: $37
	ccf                                              ; $59d9: $3f
	ld l, a                                          ; $59da: $6f
	ld a, a                                          ; $59db: $7f
	ld d, l                                          ; $59dc: $55
	ld a, a                                          ; $59dd: $7f
	ld l, h                                          ; $59de: $6c
	ld a, a                                          ; $59df: $7f
	sbc [hl]                                         ; $59e0: $9e
	ei                                               ; $59e1: $fb
	ld a, a                                          ; $59e2: $7f
	ld [hl], c                                       ; $59e3: $71
	ld a, a                                          ; $59e4: $7f
	or $ff                                           ; $59e5: $f6 $ff
	db $e4                                           ; $59e7: $e4
	cp a                                             ; $59e8: $bf
	or [hl]                                          ; $59e9: $b6
	ccf                                              ; $59ea: $3f
	ld [hl], b                                       ; $59eb: $70
	ld l, a                                          ; $59ec: $6f
	ld l, h                                          ; $59ed: $6c
	ld e, a                                          ; $59ee: $5f
	ld d, d                                          ; $59ef: $52
	ld h, b                                          ; $59f0: $60
	ld h, b                                          ; $59f1: $60
	ret nz                                           ; $59f2: $c0

	ret nz                                           ; $59f3: $c0

	ldh a, [$80]                                     ; $59f4: $f0 $80
	ldh a, [$b8]                                     ; $59f6: $f0 $b8
	ret c                                            ; $59f8: $d8

	db $ec                                           ; $59f9: $ec
	db $fc                                           ; $59fa: $fc
	sub [hl]                                         ; $59fb: $96
	cp $6a                                           ; $59fc: $fe $6a
	sbc $ab                                          ; $59fe: $de $ab
	rst $38                                          ; $5a00: $ff
	ld e, a                                          ; $5a01: $5f
	rst $38                                          ; $5a02: $ff
	db $e4                                           ; $5a03: $e4
	cp $fe                                           ; $5a04: $fe $fe
	ld a, a                                          ; $5a06: $7f
	rst $38                                          ; $5a07: $ff
	ld b, a                                          ; $5a08: $47
	db $fd                                           ; $5a09: $fd
	ld l, l                                          ; $5a0a: $6d
	db $fc                                           ; $5a0b: $fc
	ld c, $fe                                        ; $5a0c: $0e $fe
	ld e, $f2                                        ; $5a0e: $1e $f2
	ld [hl], d                                       ; $5a10: $72
	rrca                                             ; $5a11: $0f
	rrca                                             ; $5a12: $0f
	add hl, bc                                       ; $5a13: $09
	add hl, bc                                       ; $5a14: $09
	rst SubAFromDE                                          ; $5a15: $df
	rra                                              ; $5a16: $1f
	ld a, a                                          ; $5a17: $7f
	jp nz, Jump_018_6d87                             ; $5a18: $c2 $87 $6d

	ld a, a                                          ; $5a1b: $7f
	db $d3                                           ; $5a1c: $d3
	db $ec                                           ; $5a1d: $ec
	and h                                            ; $5a1e: $a4
	ei                                               ; $5a1f: $fb
	sub $ff                                          ; $5a20: $d6 $ff
	and a                                            ; $5a22: $a7
	db $fd                                           ; $5a23: $fd
	sub [hl]                                         ; $5a24: $96

jr_018_5a25:
	jp hl                                            ; $5a25: $e9


	rst $38                                          ; $5a26: $ff
	call z, Call_018_687f                            ; $5a27: $cc $7f $68
	ccf                                              ; $5a2a: $3f
	inc l                                            ; $5a2b: $2c
	ccf                                              ; $5a2c: $3f
	jr nc, jr_018_5a6e                               ; $5a2d: $30 $3f

	inc a                                            ; $5a2f: $3c
	ld a, a                                          ; $5a30: $7f
	ld h, a                                          ; $5a31: $67
	ld a, c                                          ; $5a32: $79
	ld [bc], a                                       ; $5a33: $02
	add [hl]                                         ; $5a34: $86
	jr c, jr_018_5a25                                ; $5a35: $38 $ee

	cp $f7                                           ; $5a37: $fe $f7
	ei                                               ; $5a39: $fb
	ld e, e                                          ; $5a3a: $5b
	db $fd                                           ; $5a3b: $fd
	rst AddAOntoHL                                          ; $5a3c: $ef
	cp l                                             ; $5a3d: $bd
	and l                                            ; $5a3e: $a5
	rst $38                                          ; $5a3f: $ff
	ld b, l                                          ; $5a40: $45
	rst $38                                          ; $5a41: $ff
	ld d, l                                          ; $5a42: $55
	rst $38                                          ; $5a43: $ff
	sbc l                                            ; $5a44: $9d
	ld a, a                                          ; $5a45: $7f
	rst SubAFromDE                                          ; $5a46: $df
	rst AddAOntoHL                                          ; $5a47: $ef
	jp c, $dcaa                                      ; $5a48: $da $aa $dc

	db $fc                                           ; $5a4b: $fc
	cp $36                                           ; $5a4c: $fe $36
	ld a, d                                          ; $5a4e: $7a
	or l                                             ; $5a4f: $b5
	sub a                                            ; $5a50: $97
	add [hl]                                         ; $5a51: $86
	ld a, a                                          ; $5a52: $7f
	ld c, c                                          ; $5a53: $49
	ld a, a                                          ; $5a54: $7f
	ld e, a                                          ; $5a55: $5f
	ld a, h                                          ; $5a56: $7c
	ld a, a                                          ; $5a57: $7f
	ld a, h                                          ; $5a58: $7c
	ld a, d                                          ; $5a59: $7a
	ld de, $5277                                     ; $5a5a: $11 $77 $52
	ccf                                              ; $5a5d: $3f
	ld b, b                                          ; $5a5e: $40
	sub l                                            ; $5a5f: $95
	db $fc                                           ; $5a60: $fc
	inc b                                            ; $5a61: $04
	db $fc                                           ; $5a62: $fc
	ld l, h                                          ; $5a63: $6c
	db $fc                                           ; $5a64: $fc
	call c, $84fc                                    ; $5a65: $dc $fc $84
	ld a, h                                          ; $5a68: $7c
	call z, Call_018_4257                            ; $5a69: $cc $57 $42
	ld e, a                                          ; $5a6c: $5f
	ld b, b                                          ; $5a6d: $40

jr_018_5a6e:
	rst SubAFromDE                                          ; $5a6e: $df
	ccf                                              ; $5a6f: $3f
	add l                                            ; $5a70: $85
	jr nz, jr_018_5ab2                               ; $5a71: $20 $3f

	ld b, b                                          ; $5a73: $40
	ld [hl], c                                       ; $5a74: $71
	ld e, [hl]                                       ; $5a75: $5e
	ld a, a                                          ; $5a76: $7f
	ld h, a                                          ; $5a77: $67
	ld a, a                                          ; $5a78: $7f
	sbc b                                            ; $5a79: $98
	rst $38                                          ; $5a7a: $ff
	ld h, l                                          ; $5a7b: $65
	cp a                                             ; $5a7c: $bf
	ld a, [hl-]                                      ; $5a7d: $3a
	rst AddAOntoHL                                          ; $5a7e: $ef
	dec hl                                           ; $5a7f: $2b
	rst $38                                          ; $5a80: $ff
	dec hl                                           ; $5a81: $2b
	db $fd                                           ; $5a82: $fd
	cp a                                             ; $5a83: $bf
	add sp, $7f                                      ; $5a84: $e8 $7f
	ld l, h                                          ; $5a86: $6c
	ccf                                              ; $5a87: $3f
	jr nz, @+$21                                     ; $5a88: $20 $1f

	ld d, $7a                                        ; $5a8a: $16 $7a
	ld a, [hl]                                       ; $5a8c: $7e
	add d                                            ; $5a8d: $82
	inc [hl]                                         ; $5a8e: $34
	nop                                              ; $5a8f: $00
	nop                                              ; $5a90: $00
	adc [hl]                                         ; $5a91: $8e
	adc [hl]                                         ; $5a92: $8e
	sub c                                            ; $5a93: $91
	sbc a                                            ; $5a94: $9f
	push de                                          ; $5a95: $d5
	rst $38                                          ; $5a96: $ff
	add hl, sp                                       ; $5a97: $39
	db $eb                                           ; $5a98: $eb
	ld sp, hl                                        ; $5a99: $f9
	sub e                                            ; $5a9a: $93
	ld c, c                                          ; $5a9b: $49
	ei                                               ; $5a9c: $fb
	cp c                                             ; $5a9d: $b9
	db $eb                                           ; $5a9e: $eb
	ld a, l                                          ; $5a9f: $7d
	cp a                                             ; $5aa0: $bf
	sub c                                            ; $5aa1: $91
	rst $38                                          ; $5aa2: $ff
	db $d3                                           ; $5aa3: $d3
	xor a                                            ; $5aa4: $af
	jp c, $feee                                      ; $5aa5: $da $ee $fe

	ld a, $f0                                        ; $5aa8: $3e $f0
	ld [hl], b                                       ; $5aaa: $70
	ld [hl], a                                       ; $5aab: $77
	cp d                                             ; $5aac: $ba
	sbc l                                            ; $5aad: $9d
	ccf                                              ; $5aae: $3f
	ld h, $7a                                        ; $5aaf: $26 $7a
	ld b, d                                          ; $5ab1: $42

jr_018_5ab2:
	call c, Call_018_733f                            ; $5ab2: $dc $3f $73
	add d                                            ; $5ab5: $82
	sbc [hl]                                         ; $5ab6: $9e
	dec bc                                           ; $5ab7: $0b
	ld a, d                                          ; $5ab8: $7a
	or d                                             ; $5ab9: $b2
	sbc d                                            ; $5aba: $9a
	ld [de], a                                       ; $5abb: $12
	ccf                                              ; $5abc: $3f
	ld [hl], $3f                                     ; $5abd: $36 $3f
	daa                                              ; $5abf: $27
	ld a, e                                          ; $5ac0: $7b
	ld [$697e], a                                    ; $5ac1: $ea $7e $69
	ld h, d                                          ; $5ac4: $62
	ret nz                                           ; $5ac5: $c0

	rst SubAFromDE                                          ; $5ac6: $df
	ret z                                            ; $5ac7: $c8

	rst SubAFromDE                                          ; $5ac8: $df
	adc b                                            ; $5ac9: $88
	db $dd                                           ; $5aca: $dd
	ld hl, sp-$21                                    ; $5acb: $f8 $df
	ldh a, [$dd]                                     ; $5acd: $f0 $dd
	ldh [$97], a                                     ; $5acf: $e0 $97
	ret nz                                           ; $5ad1: $c0

	ld b, b                                          ; $5ad2: $40
	ldh [$60], a                                     ; $5ad3: $e0 $60
	ldh [rAUD4LEN], a                                ; $5ad5: $e0 $20
	ld hl, sp+$38                                    ; $5ad7: $f8 $38
	ld l, [hl]                                       ; $5ad9: $6e
	ret nz                                           ; $5ada: $c0

	rst SubAFromDE                                          ; $5adb: $df
	rlca                                             ; $5adc: $07
	ld a, l                                          ; $5add: $7d
	sub h                                            ; $5ade: $94
	adc h                                            ; $5adf: $8c
	dec [hl]                                         ; $5ae0: $35
	ccf                                              ; $5ae1: $3f
	ld h, a                                          ; $5ae2: $67
	ld a, e                                          ; $5ae3: $7b
	ld e, l                                          ; $5ae4: $5d
	ld a, a                                          ; $5ae5: $7f
	rst SubAFromBC                                          ; $5ae6: $e7
	rst $38                                          ; $5ae7: $ff
	rst SubAFromDE                                          ; $5ae8: $df
	ldh a, [rIE]                                     ; $5ae9: $f0 $ff
	ldh [$f5], a                                     ; $5aeb: $e0 $f5
	rst SubAFromDE                                          ; $5aed: $df
	rst SubAFromDE                                          ; $5aee: $df
	push af                                          ; $5aef: $f5
	halt                                             ; $5af0: $76
	ld a, l                                          ; $5af1: $7d
	dec [hl]                                         ; $5af2: $35
	ld a, e                                          ; $5af3: $7b
	call nz, $03df                                   ; $5af4: $c4 $df $03
	db $fd                                           ; $5af7: $fd
	rst SubAFromDE                                          ; $5af8: $df
	ret nz                                           ; $5af9: $c0

	ld a, [hl]                                       ; $5afa: $7e
	ld b, b                                          ; $5afb: $40
	add a                                            ; $5afc: $87
	ld e, b                                          ; $5afd: $58
	ld hl, sp-$34                                    ; $5afe: $f8 $cc
	cp h                                             ; $5b00: $bc
	ld h, h                                          ; $5b01: $64
	db $fc                                           ; $5b02: $fc
	adc $fe                                          ; $5b03: $ce $fe
	rst SubAFromBC                                          ; $5b05: $e7
	rra                                              ; $5b06: $1f
	rst $38                                          ; $5b07: $ff
	dec c                                            ; $5b08: $0d
	ld a, a                                          ; $5b09: $7f
	push af                                          ; $5b0a: $f5
	or a                                             ; $5b0b: $b7
	ld e, a                                          ; $5b0c: $5f
	add [hl]                                         ; $5b0d: $86
	ld a, [hl]                                       ; $5b0e: $7e
	ld e, h                                          ; $5b0f: $5c
	db $fc                                           ; $5b10: $fc
	ld [hl], b                                       ; $5b11: $70
	ldh a, [$c0]                                     ; $5b12: $f0 $c0
	ret nz                                           ; $5b14: $c0

	db $fd                                           ; $5b15: $fd
	rst SubAFromDE                                          ; $5b16: $df
	inc bc                                           ; $5b17: $03
	ld a, l                                          ; $5b18: $7d
	ld c, [hl]                                       ; $5b19: $4e
	adc h                                            ; $5b1a: $8c
	ccf                                              ; $5b1b: $3f
	dec a                                            ; $5b1c: $3d
	ld l, [hl]                                       ; $5b1d: $6e
	ld [hl], a                                       ; $5b1e: $77
	di                                               ; $5b1f: $f3
	rst AddAOntoHL                                          ; $5b20: $ef
	ldh a, [rIE]                                     ; $5b21: $f0 $ff
	adc a                                            ; $5b23: $8f
	rst $38                                          ; $5b24: $ff
	ld l, [hl]                                       ; $5b25: $6e
	rst $38                                          ; $5b26: $ff
	db $d3                                           ; $5b27: $d3
	cp a                                             ; $5b28: $bf
	db $e4                                           ; $5b29: $e4
	rst $38                                          ; $5b2a: $ff
	ld a, l                                          ; $5b2b: $7d
	ld l, d                                          ; $5b2c: $6a
	add hl, hl                                       ; $5b2d: $29
	sbc $3f                                          ; $5b2e: $de $3f
	ld a, h                                          ; $5b30: $7c
	ld a, [hl]                                       ; $5b31: $7e
	rst SubAFromDE                                          ; $5b32: $df
	rlca                                             ; $5b33: $07
	rst $38                                          ; $5b34: $ff
	rst SubAFromDE                                          ; $5b35: $df
	add b                                            ; $5b36: $80
	rst SubAFromDE                                          ; $5b37: $df
	ldh [$7d], a                                     ; $5b38: $e0 $7d
	ld d, c                                          ; $5b3a: $51
	sbc d                                            ; $5b3b: $9a
	cp b                                             ; $5b3c: $b8
	ld hl, sp+$28                                    ; $5b3d: $f8 $28
	ld hl, sp+$4c                                    ; $5b3f: $f8 $4c
	ld a, c                                          ; $5b41: $79
	ld a, b                                          ; $5b42: $78
	sub [hl]                                         ; $5b43: $96
	ld b, [hl]                                       ; $5b44: $46
	cp $e6                                           ; $5b45: $fe $e6
	cp $be                                           ; $5b47: $fe $be
	sbc $cc                                          ; $5b49: $de $cc
	db $fc                                           ; $5b4b: $fc
	cp b                                             ; $5b4c: $b8
	ld [hl], a                                       ; $5b4d: $77
	ld [hl], h                                       ; $5b4e: $74
	ld a, d                                          ; $5b4f: $7a
	ld h, h                                          ; $5b50: $64
	ld [hl], a                                       ; $5b51: $77
	add b                                            ; $5b52: $80
	ld a, c                                          ; $5b53: $79
	sub h                                            ; $5b54: $94
	ld [hl], h                                       ; $5b55: $74
	cp h                                             ; $5b56: $bc
	ld a, a                                          ; $5b57: $7f
	ld c, l                                          ; $5b58: $4d
	sbc e                                            ; $5b59: $9b
	add hl, sp                                       ; $5b5a: $39
	ld a, c                                          ; $5b5b: $79
	ld [hl], a                                       ; $5b5c: $77
	di                                               ; $5b5d: $f3
	ld a, d                                          ; $5b5e: $7a
	ld a, [hl]                                       ; $5b5f: $7e
	sub c                                            ; $5b60: $91
	rst SubAFromHL                                          ; $5b61: $d7
	db $fd                                           ; $5b62: $fd
	jp hl                                            ; $5b63: $e9


	cp a                                             ; $5b64: $bf
	ld [hl], l                                       ; $5b65: $75
	ld a, a                                          ; $5b66: $7f
	ccf                                              ; $5b67: $3f
	rra                                              ; $5b68: $1f
	ccf                                              ; $5b69: $3f
	dec h                                            ; $5b6a: $25
	ld e, $12                                        ; $5b6b: $1e $12
	nop                                              ; $5b6d: $00
	nop                                              ; $5b6e: $00
	ld a, e                                          ; $5b6f: $7b
	ld a, [de]                                       ; $5b70: $1a
	add h                                            ; $5b71: $84
	or b                                             ; $5b72: $b0
	ret c                                            ; $5b73: $d8

	ld hl, sp+$6c                                    ; $5b74: $f8 $6c
	cp h                                             ; $5b76: $bc
	call nc, $eefc                                   ; $5b77: $d4 $fc $ee
	cp [hl]                                          ; $5b7a: $be
	ld a, [hl-]                                      ; $5b7b: $3a
	sbc $d5                                          ; $5b7c: $de $d5
	rst $38                                          ; $5b7e: $ff
	ld d, e                                          ; $5b7f: $53
	rst $38                                          ; $5b80: $ff
	xor c                                            ; $5b81: $a9
	ld a, a                                          ; $5b82: $7f
	ld d, e                                          ; $5b83: $53
	cp a                                             ; $5b84: $bf
	rrca                                             ; $5b85: $0f
	rst $38                                          ; $5b86: $ff
	rst $38                                          ; $5b87: $ff
	db $fd                                           ; $5b88: $fd
	cp $42                                           ; $5b89: $fe $42
	ld hl, sp-$78                                    ; $5b8b: $f8 $88
	ld [hl], l                                       ; $5b8d: $75
	nop                                              ; $5b8e: $00
	ld a, h                                          ; $5b8f: $7c
	ld a, [hl]                                       ; $5b90: $7e
	adc [hl]                                         ; $5b91: $8e
	dec [hl]                                         ; $5b92: $35
	dec sp                                           ; $5b93: $3b
	ld l, a                                          ; $5b94: $6f
	ld [hl], a                                       ; $5b95: $77
	ld e, l                                          ; $5b96: $5d
	ld [hl], a                                       ; $5b97: $77
	ld d, a                                          ; $5b98: $57
	ld a, l                                          ; $5b99: $7d
	ld c, e                                          ; $5b9a: $4b
	ld a, a                                          ; $5b9b: $7f
	ld l, l                                          ; $5b9c: $6d
	ld a, a                                          ; $5b9d: $7f
	ld d, e                                          ; $5b9e: $53
	ld a, l                                          ; $5b9f: $7d
	ld h, d                                          ; $5ba0: $62
	ld a, a                                          ; $5ba1: $7f
	call nc, $9d78                                   ; $5ba2: $d4 $78 $9d
	sbc e                                            ; $5ba5: $9b
	rst FarCall                                          ; $5ba6: $f7
	cp $5c                                           ; $5ba7: $fe $5c
	ld e, h                                          ; $5ba9: $5c
	db $fd                                           ; $5baa: $fd
	rst SubAFromDE                                          ; $5bab: $df
	ldh a, [$9e]                                     ; $5bac: $f0 $9e
	sbc b                                            ; $5bae: $98
	ld a, e                                          ; $5baf: $7b
	jp nz, $f489                                     ; $5bb0: $c2 $89 $f4

	call c, $de76                                    ; $5bb3: $dc $76 $de
	jp nc, $ae7e                                     ; $5bb6: $d2 $7e $ae

	ld a, [$ff27]                                    ; $5bb9: $fa $27 $ff
	sbc e                                            ; $5bbc: $9b
	rst $38                                          ; $5bbd: $ff
	rst GetHLinHL                                          ; $5bbe: $cf
	rst $38                                          ; $5bbf: $ff
	and a                                            ; $5bc0: $a7
	rst $38                                          ; $5bc1: $ff
	sbc [hl]                                         ; $5bc2: $9e
	cp $cc                                           ; $5bc3: $fe $cc
	db $fc                                           ; $5bc5: $fc
	ld a, b                                          ; $5bc6: $78
	ld a, b                                          ; $5bc7: $78
	db $fd                                           ; $5bc8: $fd
	rst SubAFromDE                                          ; $5bc9: $df
	rlca                                             ; $5bca: $07
	ld a, h                                          ; $5bcb: $7c
	sub l                                            ; $5bcc: $95
	sub l                                            ; $5bcd: $95
	ld [hl-], a                                      ; $5bce: $32
	dec a                                            ; $5bcf: $3d
	cpl                                              ; $5bd0: $2f
	ccf                                              ; $5bd1: $3f
	ld a, l                                          ; $5bd2: $7d
	ld [hl], e                                       ; $5bd3: $73
	rst SubAFromBC                                          ; $5bd4: $e7
	cp a                                             ; $5bd5: $bf
	db $ec                                           ; $5bd6: $ec
	cp a                                             ; $5bd7: $bf
	ld [hl], a                                       ; $5bd8: $77
	ld b, d                                          ; $5bd9: $42
	sub l                                            ; $5bda: $95
	ei                                               ; $5bdb: $fb
	db $fd                                           ; $5bdc: $fd
	halt                                             ; $5bdd: $76
	ccf                                              ; $5bde: $3f
	ld a, e                                          ; $5bdf: $7b
	ld e, a                                          ; $5be0: $5f
	inc a                                            ; $5be1: $3c
	daa                                              ; $5be2: $27
	dec de                                           ; $5be3: $1b
	rra                                              ; $5be4: $1f
	ld h, a                                          ; $5be5: $67
	ret nz                                           ; $5be6: $c0

	add a                                            ; $5be7: $87
	xor h                                            ; $5be8: $ac
	call c, $fee6                                    ; $5be9: $dc $e6 $fe
	cp d                                             ; $5bec: $ba
	sbc $ea                                          ; $5bed: $de $ea
	cp $97                                           ; $5bef: $fe $97
	rst $38                                          ; $5bf1: $ff
	db $eb                                           ; $5bf2: $eb
	cp $b7                                           ; $5bf3: $fe $b7
	rst SubAFromDE                                          ; $5bf5: $df
	rst $38                                          ; $5bf6: $ff
	xor $9f                                          ; $5bf7: $ee $9f
	db $fd                                           ; $5bf9: $fd
	cp $f8                                           ; $5bfa: $fe $f8
	sbc [hl]                                         ; $5bfc: $9e
	ldh a, [c]                                       ; $5bfd: $f2
	db $ec                                           ; $5bfe: $ec
	db $fc                                           ; $5bff: $fc
	ld l, a                                          ; $5c00: $6f
	ret nz                                           ; $5c01: $c0

	sbc [hl]                                         ; $5c02: $9e
	inc e                                            ; $5c03: $1c
	ld a, c                                          ; $5c04: $79
	ret nz                                           ; $5c05: $c0

	adc [hl]                                         ; $5c06: $8e
	ld h, b                                          ; $5c07: $60
	ld a, a                                          ; $5c08: $7f
	call c, $e6ff                                    ; $5c09: $dc $ff $e6
	ld a, a                                          ; $5c0c: $7f
	bit 7, a                                         ; $5c0d: $cb $7f
	ret nc                                           ; $5c0f: $d0

	rst $38                                          ; $5c10: $ff
	xor $ff                                          ; $5c11: $ee $ff
	ld [hl], e                                       ; $5c13: $73
	ld a, a                                          ; $5c14: $7f
	inc sp                                           ; $5c15: $33
	cpl                                              ; $5c16: $2f
	add hl, de                                       ; $5c17: $19
	ld a, d                                          ; $5c18: $7a

jr_018_5c19:
	ld [hl], d                                       ; $5c19: $72
	rst SubAFromDE                                          ; $5c1a: $df
	inc b                                            ; $5c1b: $04
	ld h, [hl]                                       ; $5c1c: $66
	ret nz                                           ; $5c1d: $c0

	adc h                                            ; $5c1e: $8c
	jr c, jr_018_5c19                                ; $5c1f: $38 $f8

	db $ec                                           ; $5c21: $ec
	db $fc                                           ; $5c22: $fc
	ld b, h                                          ; $5c23: $44
	db $fc                                           ; $5c24: $fc
	or $fe                                           ; $5c25: $f6 $fe
	xor a                                            ; $5c27: $af
	rst $38                                          ; $5c28: $ff
	rst SubAFromBC                                          ; $5c29: $e7
	db $fd                                           ; $5c2a: $fd
	cp a                                             ; $5c2b: $bf
	db $fd                                           ; $5c2c: $fd
	xor a                                            ; $5c2d: $af
	ei                                               ; $5c2e: $fb
	ld a, $fe                                        ; $5c2f: $3e $fe
	ld a, h                                          ; $5c31: $7c
	ld a, d                                          ; $5c32: $7a
	add h                                            ; $5c33: $84
	rst SubAFromDE                                          ; $5c34: $df
	ret nz                                           ; $5c35: $c0

	rst SubAFromDE                                          ; $5c36: $df
	ld b, b                                          ; $5c37: $40
	ld h, a                                          ; $5c38: $67
	ret nz                                           ; $5c39: $c0

	adc e                                            ; $5c3a: $8b
	ld a, [hl]                                       ; $5c3b: $7e
	ld l, a                                          ; $5c3c: $6f
	db $dd                                           ; $5c3d: $dd
	rst AddAOntoHL                                          ; $5c3e: $ef
	sub a                                            ; $5c3f: $97
	rst $38                                          ; $5c40: $ff
	xor d                                            ; $5c41: $aa
	rst $38                                          ; $5c42: $ff
	push de                                          ; $5c43: $d5
	rst $38                                          ; $5c44: $ff
	push bc                                          ; $5c45: $c5
	rst $38                                          ; $5c46: $ff
	db $db                                           ; $5c47: $db
	rst $38                                          ; $5c48: $ff
	or $bf                                           ; $5c49: $f6 $bf
	db $fc                                           ; $5c4b: $fc
	rst GetHLinHL                                          ; $5c4c: $cf
	ld a, a                                          ; $5c4d: $7f
	ld a, a                                          ; $5c4e: $7f
	halt                                             ; $5c4f: $76
	jp nz, $0077                                     ; $5c50: $c2 $77 $00

	adc d                                            ; $5c53: $8a
	or b                                             ; $5c54: $b0
	ld [hl], b                                       ; $5c55: $70
	sbc h                                            ; $5c56: $9c
	db $fc                                           ; $5c57: $fc
	cp $3e                                           ; $5c58: $fe $3e
	sub a                                            ; $5c5a: $97
	rst AddAOntoHL                                          ; $5c5b: $ef
	rst FarCall                                          ; $5c5c: $f7
	db $fd                                           ; $5c5d: $fd
	db $eb                                           ; $5c5e: $eb
	cp a                                             ; $5c5f: $bf
	and d                                            ; $5c60: $a2
	sbc $d2                                          ; $5c61: $de $d2
	cp $52                                           ; $5c63: $fe $52
	cp $56                                           ; $5c65: $fe $56
	cp $dc                                           ; $5c67: $fe $dc
	ld [hl], d                                       ; $5c69: $72
	cp [hl]                                          ; $5c6a: $be
	db $fd                                           ; $5c6b: $fd
	rst SubAFromDE                                          ; $5c6c: $df
	ld e, [hl]                                       ; $5c6d: $5e
	rst SubAFromDE                                          ; $5c6e: $df
	db $fc                                           ; $5c6f: $fc
	ld a, a                                          ; $5c70: $7f
	xor b                                            ; $5c71: $a8
	adc b                                            ; $5c72: $88
	cp l                                             ; $5c73: $bd
	rst $38                                          ; $5c74: $ff
	rst SubAFromBC                                          ; $5c75: $e7
	rst $38                                          ; $5c76: $ff
	ld [hl], l                                       ; $5c77: $75
	ld a, e                                          ; $5c78: $7b
	ld c, c                                          ; $5c79: $49
	ld a, a                                          ; $5c7a: $7f
	rst $38                                          ; $5c7b: $ff
	rst SubAFromBC                                          ; $5c7c: $e7
	push de                                          ; $5c7d: $d5
	ld a, e                                          ; $5c7e: $7b
	jp hl                                            ; $5c7f: $e9


	ld e, a                                          ; $5c80: $5f
	rst SubAFromHL                                          ; $5c81: $d7
	rst AddAOntoHL                                          ; $5c82: $ef
	pop af                                           ; $5c83: $f1
	rst $38                                          ; $5c84: $ff
	ld l, a                                          ; $5c85: $6f
	ld a, a                                          ; $5c86: $7f
	dec a                                            ; $5c87: $3d
	dec sp                                           ; $5c88: $3b
	rra                                              ; $5c89: $1f
	ld a, e                                          ; $5c8a: $7b
	ld a, $df                                        ; $5c8b: $3e $df
	ld a, d                                          ; $5c8d: $7a
	rst SubAFromDE                                          ; $5c8e: $df
	ccf                                              ; $5c8f: $3f
	add l                                            ; $5c90: $85
	push de                                          ; $5c91: $d5
	rst SubAFromDE                                          ; $5c92: $df
	db $fd                                           ; $5c93: $fd
	cp a                                             ; $5c94: $bf
	ei                                               ; $5c95: $fb
	rst $38                                          ; $5c96: $ff
	sbc $be                                          ; $5c97: $de $be
	or [hl]                                          ; $5c99: $b6
	cp $fe                                           ; $5c9a: $fe $fe
	adc $52                                          ; $5c9c: $ce $52
	cp [hl]                                          ; $5c9e: $be
	ld a, [hl+]                                      ; $5c9f: $2a
	or $d6                                           ; $5ca0: $f6 $d6
	xor $1c                                          ; $5ca2: $ee $1c
	db $fc                                           ; $5ca4: $fc
	xor $fe                                          ; $5ca5: $ee $fe
	ld e, [hl]                                       ; $5ca7: $5e
	cp d                                             ; $5ca8: $ba
	cp $fe                                           ; $5ca9: $fe $fe
	halt                                             ; $5cab: $76
	ld b, b                                          ; $5cac: $40
	adc b                                            ; $5cad: $88
	ld b, $07                                        ; $5cae: $06 $07
	dec c                                            ; $5cb0: $0d
	rrca                                             ; $5cb1: $0f
	rra                                              ; $5cb2: $1f
	inc e                                            ; $5cb3: $1c
	scf                                              ; $5cb4: $37
	ccf                                              ; $5cb5: $3f
	ld h, l                                          ; $5cb6: $65
	ld a, a                                          ; $5cb7: $7f
	ld c, d                                          ; $5cb8: $4a
	ld a, a                                          ; $5cb9: $7f
	jp c, $deef                                      ; $5cba: $da $ef $de

jr_018_5cbd:
	db $eb                                           ; $5cbd: $eb
	rst JumpTable                                          ; $5cbe: $c7
	ld a, [$7e6b]                                    ; $5cbf: $fa $6b $7e
	scf                                              ; $5cc2: $37
	ld a, $1e                                        ; $5cc3: $3e $1e
	ld a, e                                          ; $5cc5: $7b
	ld a, $6f                                        ; $5cc6: $3e $6f
	ld b, b                                          ; $5cc8: $40
	ld a, l                                          ; $5cc9: $7d
	db $d3                                           ; $5cca: $d3
	adc d                                            ; $5ccb: $8a
	or b                                             ; $5ccc: $b0
	ldh a, [$f8]                                     ; $5ccd: $f0 $f8
	jr c, jr_018_5cbd                                ; $5ccf: $38 $ec

	db $fc                                           ; $5cd1: $fc
	sub $fe                                          ; $5cd2: $d6 $fe
	xor d                                            ; $5cd4: $aa
	cp $93                                           ; $5cd5: $fe $93
	rst $38                                          ; $5cd7: $ff
	sub e                                            ; $5cd8: $93
	rst $38                                          ; $5cd9: $ff
	jp nc, $26be                                     ; $5cda: $d2 $be $26

	sbc $dc                                          ; $5cdd: $de $dc
	db $fc                                           ; $5cdf: $fc
	ld e, b                                          ; $5ce0: $58
	ld l, e                                          ; $5ce1: $6b
	add b                                            ; $5ce2: $80
	rst SubAFromDE                                          ; $5ce3: $df
	inc a                                            ; $5ce4: $3c
	add a                                            ; $5ce5: $87
	ld b, [hl]                                       ; $5ce6: $46
	ld a, [hl]                                       ; $5ce7: $7e
	ld b, a                                          ; $5ce8: $47
	ld h, a                                          ; $5ce9: $67
	ld l, d                                          ; $5cea: $6a
	ld l, a                                          ; $5ceb: $6f
	ld a, [hl]                                       ; $5cec: $7e
	ld [hl], a                                       ; $5ced: $77
	rst $38                                          ; $5cee: $ff
	rst $38                                          ; $5cef: $ff
	adc e                                            ; $5cf0: $8b
	rst $38                                          ; $5cf1: $ff
	cp [hl]                                          ; $5cf2: $be
	push de                                          ; $5cf3: $d5
	sub l                                            ; $5cf4: $95
	cp $ca                                           ; $5cf5: $fe $ca
	rst $38                                          ; $5cf7: $ff
	ld c, [hl]                                       ; $5cf8: $4e
	ld a, a                                          ; $5cf9: $7f
	ld l, a                                          ; $5cfa: $6f
	ld [hl], l                                       ; $5cfb: $75
	ccf                                              ; $5cfc: $3f
	ld a, $6d                                        ; $5cfd: $3e $6d
	ret nz                                           ; $5cff: $c0

	rst SubAFromDE                                          ; $5d00: $df
	inc a                                            ; $5d01: $3c
	adc h                                            ; $5d02: $8c
	ld h, d                                          ; $5d03: $62
	ld a, [hl]                                       ; $5d04: $7e
	ldh [c], a                                       ; $5d05: $e2
	and $12                                          ; $5d06: $e6 $12
	or $ce                                           ; $5d08: $f6 $ce
	ld a, $26                                        ; $5d0a: $3e $26
	sbc $c6                                          ; $5d0c: $de $c6
	cp $a2                                           ; $5d0e: $fe $a2
	cp $d2                                           ; $5d10: $fe $d2
	cp [hl]                                          ; $5d12: $be
	sub [hl]                                         ; $5d13: $96
	cp $8e                                           ; $5d14: $fe $8e
	ld a, e                                          ; $5d16: $7b
	cp $7c                                           ; $5d17: $fe $7c
	dec l                                            ; $5d19: $2d
	ld [hl], l                                       ; $5d1a: $75
	add d                                            ; $5d1b: $82
	ei                                               ; $5d1c: $fb
	rst SubAFromDE                                          ; $5d1d: $df
	inc bc                                           ; $5d1e: $03
	adc b                                            ; $5d1f: $88
	ld c, $0f                                        ; $5d20: $0e $0f
	rra                                              ; $5d22: $1f

jr_018_5d23:
	jr jr_018_5d54                                   ; $5d23: $18 $2f

	scf                                              ; $5d25: $37
	ld l, h                                          ; $5d26: $6c
	ld a, a                                          ; $5d27: $7f
	ld e, d                                          ; $5d28: $5a
	ld [hl], a                                       ; $5d29: $77
	ld e, d                                          ; $5d2a: $5a
	ld [hl], l                                       ; $5d2b: $75
	ld d, l                                          ; $5d2c: $55
	ld a, a                                          ; $5d2d: $7f
	ld a, a                                          ; $5d2e: $7f
	ld [hl], a                                       ; $5d2f: $77
	ld a, a                                          ; $5d30: $7f
	ld h, d                                          ; $5d31: $62
	ld e, a                                          ; $5d32: $5f
	halt                                             ; $5d33: $76
	ld e, h                                          ; $5d34: $5c
	ld [hl], e                                       ; $5d35: $73
	ld e, a                                          ; $5d36: $5f
	ld [hl], d                                       ; $5d37: $72
	ld e, [hl]                                       ; $5d38: $5e
	ld l, [hl]                                       ; $5d39: $6e
	cp h                                             ; $5d3a: $bc
	add b                                            ; $5d3b: $80
	ret c                                            ; $5d3c: $d8

	jr c, jr_018_5d23                                ; $5d3d: $38 $e4

	call c, $fe66                                    ; $5d3f: $dc $66 $fe
	ld e, d                                          ; $5d42: $5a
	or $ba                                           ; $5d43: $f6 $ba
	ld d, [hl]                                       ; $5d45: $56
	ld e, d                                          ; $5d46: $5a
	cp $fe                                           ; $5d47: $fe $fe
	xor $fa                                          ; $5d49: $ee $fa
	ld h, $fa                                        ; $5d4b: $26 $fa
	ld l, [hl]                                       ; $5d4d: $6e
	ld a, [hl-]                                      ; $5d4e: $3a
	adc $fa                                          ; $5d4f: $ce $fa
	ld e, $57                                        ; $5d51: $1e $57
	ld a, [hl]                                       ; $5d53: $7e

jr_018_5d54:
	ld e, a                                          ; $5d54: $5f
	ld a, a                                          ; $5d55: $7f
	ld e, a                                          ; $5d56: $5f
	ld a, a                                          ; $5d57: $7f
	inc a                                            ; $5d58: $3c
	inc a                                            ; $5d59: $3c
	inc e                                            ; $5d5a: $1c
	ld a, [hl]                                       ; $5d5b: $7e
	cp e                                             ; $5d5c: $bb
	rst SubAFromDE                                          ; $5d5d: $df
	rra                                              ; $5d5e: $1f
	ld a, a                                          ; $5d5f: $7f
	ld c, l                                          ; $5d60: $4d
	sbc h                                            ; $5d61: $9c
	ld e, $0f                                        ; $5d62: $1e $0f
	rrca                                             ; $5d64: $0f
	reti                                             ; $5d65: $d9


	rlca                                             ; $5d66: $07
	ld a, b                                          ; $5d67: $78
	jp nz, $3c79                                     ; $5d68: $c2 $79 $3c

	sub l                                            ; $5d6b: $95
	ld [$fa7e], a                                    ; $5d6c: $ea $7e $fa
	cp $fa                                           ; $5d6f: $fe $fa
	cp $3c                                           ; $5d71: $fe $3c
	inc a                                            ; $5d73: $3c
	jr c, jr_018_5dae                                ; $5d74: $38 $38

	call c, $9ef8                                    ; $5d76: $dc $f8 $9e
	ld a, b                                          ; $5d79: $78
	ld l, h                                          ; $5d7a: $6c
	cp $dd                                           ; $5d7b: $fe $dd
	ldh [$6c], a                                     ; $5d7d: $e0 $6c
	add b                                            ; $5d7f: $80
	db $fd                                           ; $5d80: $fd
	rst SubAFromDE                                          ; $5d81: $df
	ld b, $df                                        ; $5d82: $06 $df
	inc bc                                           ; $5d84: $03
	rst SubAFromDE                                          ; $5d85: $df
	ld a, a                                          ; $5d86: $7f
	sub e                                            ; $5d87: $93
	ld c, d                                          ; $5d88: $4a
	ld [hl], a                                       ; $5d89: $77
	ld sp, hl                                        ; $5d8a: $f9
	rst $38                                          ; $5d8b: $ff
	ld h, [hl]                                       ; $5d8c: $66
	ld a, a                                          ; $5d8d: $7f
	ld c, e                                          ; $5d8e: $4b
	ld [hl], a                                       ; $5d8f: $77
	call nc, $8def                                   ; $5d90: $d4 $ef $8d
	ei                                               ; $5d93: $fb
	ld a, c                                          ; $5d94: $79
	rst FarCall                                          ; $5d95: $f7
	sbc b                                            ; $5d96: $98
	add sp, -$41                                     ; $5d97: $e8 $bf
	db $ec                                           ; $5d99: $ec
	rst $38                                          ; $5d9a: $ff
	ldh [$7f], a                                     ; $5d9b: $e0 $7f
	ld [hl], b                                       ; $5d9d: $70
	ld sp, hl                                        ; $5d9e: $f9
	rst SubAFromDE                                          ; $5d9f: $df
	ldh [$7f], a                                     ; $5da0: $e0 $7f
	cp a                                             ; $5da2: $bf
	ld a, l                                          ; $5da3: $7d
	inc c                                            ; $5da4: $0c
	ld a, [hl]                                       ; $5da5: $7e
	call z, $827e                                    ; $5da6: $cc $7e $82
	sbc h                                            ; $5da9: $9c
	and [hl]                                         ; $5daa: $a6
	cp $96                                           ; $5dab: $fe $96
	ld a, d                                          ; $5dad: $7a

jr_018_5dae:
	add d                                            ; $5dae: $82
	add e                                            ; $5daf: $83
	call c, $dcb4                                    ; $5db0: $dc $b4 $dc
	db $f4                                           ; $5db3: $f4
	call c, $d83c                                    ; $5db4: $dc $3c $d8
	ld a, b                                          ; $5db7: $78
	ccf                                              ; $5db8: $3f
	inc a                                            ; $5db9: $3c
	ld a, e                                          ; $5dba: $7b
	ld a, e                                          ; $5dbb: $7b
	ld [hl], b                                       ; $5dbc: $70
	ld d, b                                          ; $5dbd: $50
	ld h, b                                          ; $5dbe: $60
	ld h, b                                          ; $5dbf: $60
	ld hl, $3321                                     ; $5dc0: $21 $21 $33
	inc sp                                           ; $5dc3: $33
	ld e, $1e                                        ; $5dc4: $1e $1e
	ld [$0e08], sp                                   ; $5dc6: $08 $08 $0e
	ld c, $0f                                        ; $5dc9: $0e $0f
	dec bc                                           ; $5dcb: $0b
	ld [hl], a                                       ; $5dcc: $77
	cp $9b                                           ; $5dcd: $fe $9b
	ld e, $1a                                        ; $5dcf: $1e $1a
	rra                                              ; $5dd1: $1f
	inc de                                           ; $5dd2: $13
	ld [hl], a                                       ; $5dd3: $77
	add b                                            ; $5dd4: $80
	rst SubAFromDE                                          ; $5dd5: $df
	xor $98                                          ; $5dd6: $ee $98
	ccf                                              ; $5dd8: $3f
	ld sp, $437f                                     ; $5dd9: $31 $7f $43
	cp $ce                                           ; $5ddc: $fe $ce
	ld a, [hl-]                                      ; $5dde: $3a
	sbc $fe                                          ; $5ddf: $de $fe
	db $db                                           ; $5de1: $db
	jr nz, @-$20                                     ; $5de2: $20 $de

	ldh [$9a], a                                     ; $5de4: $e0 $9a
	ld h, b                                          ; $5de6: $60
	ldh a, [$b0]                                     ; $5de7: $f0 $b0
	ldh a, [$d0]                                     ; $5de9: $f0 $d0
	ld e, a                                          ; $5deb: $5f
	add b                                            ; $5dec: $80
	ld l, [hl]                                       ; $5ded: $6e
	cp $7e                                           ; $5dee: $fe $7e
	ld a, h                                          ; $5df0: $7c
	adc e                                            ; $5df1: $8b
	inc de                                           ; $5df2: $13
	rra                                              ; $5df3: $1f
	inc d                                            ; $5df4: $14
	rra                                              ; $5df5: $1f
	dec d                                            ; $5df6: $15
	dec de                                           ; $5df7: $1b
	dec hl                                           ; $5df8: $2b
	ld a, $33                                        ; $5df9: $3e $33
	ld a, $4f                                        ; $5dfb: $3e $4f
	halt                                             ; $5dfd: $76
	ld a, a                                          ; $5dfe: $7f
	ld [hl], h                                       ; $5dff: $74
	ld e, a                                          ; $5e00: $5f
	halt                                             ; $5e01: $76
	ld c, a                                          ; $5e02: $4f
	ld a, b                                          ; $5e03: $78
	ccf                                              ; $5e04: $3f
	ld a, $f9                                        ; $5e05: $3e $f9
	rst SubAFromDE                                          ; $5e07: $df
	ld h, b                                          ; $5e08: $60
	ld a, l                                          ; $5e09: $7d
	ld a, d                                          ; $5e0a: $7a
	add a                                            ; $5e0b: $87
	db $e4                                           ; $5e0c: $e4
	db $fc                                           ; $5e0d: $fc
	ld a, h                                          ; $5e0e: $7c
	or h                                             ; $5e0f: $b4
	cp h                                             ; $5e10: $bc
	call nc, Call_018_7eca                           ; $5e11: $d4 $ca $7e
	ld [$f97e], a                                    ; $5e14: $ea $7e $f9
	ld l, a                                          ; $5e17: $6f
	rst $38                                          ; $5e18: $ff
	ld c, a                                          ; $5e19: $4f
	ld sp, hl                                        ; $5e1a: $f9
	ld l, a                                          ; $5e1b: $6f
	ld sp, hl                                        ; $5e1c: $f9
	rrca                                             ; $5e1d: $0f
	di                                               ; $5e1e: $f3
	rst SubAFromDE                                          ; $5e1f: $df
	rra                                              ; $5e20: $1f
	add hl, de                                       ; $5e21: $19
	rra                                              ; $5e22: $1f
	inc de                                           ; $5e23: $13
	ld a, b                                          ; $5e24: $78
	jp nz, $149e                                     ; $5e25: $c2 $9e $14

	ld a, e                                          ; $5e28: $7b
	cp $9c                                           ; $5e29: $fe $9c
	rla                                              ; $5e2b: $17
	inc c                                            ; $5e2c: $0c
	inc c                                            ; $5e2d: $0c
	db $db                                           ; $5e2e: $db
	inc b                                            ; $5e2f: $04
	rst SubAFromDE                                          ; $5e30: $df
	rlca                                             ; $5e31: $07
	sbc b                                            ; $5e32: $98
	inc bc                                           ; $5e33: $03
	ld [bc], a                                       ; $5e34: $02
	rlca                                             ; $5e35: $07
	ld b, $0f                                        ; $5e36: $06 $0f
	inc c                                            ; $5e38: $0c
	rra                                              ; $5e39: $1f
	ld a, d                                          ; $5e3a: $7a
	ld a, $91                                        ; $5e3b: $3e $91
	or $3e                                           ; $5e3d: $f6 $3e
	db $fc                                           ; $5e3f: $fc
	sbc h                                            ; $5e40: $9c
	db $fc                                           ; $5e41: $fc
	db $ec                                           ; $5e42: $ec
	db $fc                                           ; $5e43: $fc
	inc a                                            ; $5e44: $3c
	db $e4                                           ; $5e45: $e4
	inc h                                            ; $5e46: $24
	db $e4                                           ; $5e47: $e4
	db $e4                                           ; $5e48: $e4
	jr c, jr_018_5e83                                ; $5e49: $38 $38

	db $db                                           ; $5e4b: $db
	db $10                                           ; $5e4c: $10
	rst SubAFromDE                                          ; $5e4d: $df
	ldh a, [hDisp1_WX]                                     ; $5e4e: $f0 $96
	ld hl, sp-$28                                    ; $5e50: $f8 $d8
	cp b                                             ; $5e52: $b8
	xor b                                            ; $5e53: $a8
	db $fc                                           ; $5e54: $fc
	db $ec                                           ; $5e55: $ec
	cp $fe                                           ; $5e56: $fe $fe
	db $fc                                           ; $5e58: $fc
	ld [hl], c                                       ; $5e59: $71
	ld a, $ff                                        ; $5e5a: $3e $ff
	rst SubAFromDE                                          ; $5e5c: $df
	ccf                                              ; $5e5d: $3f
	add a                                            ; $5e5e: $87
	ld h, a                                          ; $5e5f: $67
	ld a, c                                          ; $5e60: $79
	add hl, sp                                       ; $5e61: $39
	ld a, $73                                        ; $5e62: $3e $73
	ld a, a                                          ; $5e64: $7f
	call $8ef3                                       ; $5e65: $cd $f3 $8e
	rst $38                                          ; $5e68: $ff
	or a                                             ; $5e69: $b7
	ei                                               ; $5e6a: $fb
	and $ff                                          ; $5e6b: $e6 $ff
	ld c, a                                          ; $5e6d: $4f
	ld e, a                                          ; $5e6e: $5f
	rrca                                             ; $5e6f: $0f
	inc d                                            ; $5e70: $14
	rrca                                             ; $5e71: $0f
	ld d, $0f                                        ; $5e72: $16 $0f
	jr jr_018_5e85                                   ; $5e74: $18 $0f

	inc e                                            ; $5e76: $1c
	ld sp, hl                                        ; $5e77: $f9
	rst SubAFromDE                                          ; $5e78: $df
	ld hl, sp+$7c                                    ; $5e79: $f8 $7c
	ret nc                                           ; $5e7b: $d0

	ld a, h                                          ; $5e7c: $7c
	call z, $ef8d                                    ; $5e7d: $cc $8d $ef
	di                                               ; $5e80: $f3
	pop af                                           ; $5e81: $f1
	rst $38                                          ; $5e82: $ff

jr_018_5e83:
	ld e, c                                          ; $5e83: $59
	rst AddAOntoHL                                          ; $5e84: $ef

jr_018_5e85:
	rst AddAOntoHL                                          ; $5e85: $ef
	rst FarCall                                          ; $5e86: $f7
	ld a, c                                          ; $5e87: $79
	rst $38                                          ; $5e88: $ff
	db $fd                                           ; $5e89: $fd
	ld c, e                                          ; $5e8a: $4b
	db $fd                                           ; $5e8b: $fd
	ld l, e                                          ; $5e8c: $6b
	ld sp, hl                                        ; $5e8d: $f9
	rra                                              ; $5e8e: $1f
	ld a, [$fb7e]                                    ; $5e8f: $fa $7e $fb
	rst SubAFromDE                                          ; $5e92: $df
	ld c, $7f                                        ; $5e93: $0e $7f
	ld a, c                                          ; $5e95: $79
	ld a, h                                          ; $5e96: $7c
	ld a, $7e                                        ; $5e97: $3e $7e
	ld b, b                                          ; $5e99: $40
	adc l                                            ; $5e9a: $8d
	add hl, hl                                       ; $5e9b: $29
	ccf                                              ; $5e9c: $3f
	ld d, a                                          ; $5e9d: $57
	ld a, c                                          ; $5e9e: $79
	ld l, [hl]                                       ; $5e9f: $6e
	ld [hl], a                                       ; $5ea0: $77

jr_018_5ea1:
	set 7, [hl]                                      ; $5ea1: $cb $fe
	rst SubAFromDE                                          ; $5ea3: $df
	db $f4                                           ; $5ea4: $f4
	cp a                                             ; $5ea5: $bf
	ld [$707f], a                                    ; $5ea6: $ea $7f $70
	ccf                                              ; $5ea9: $3f
	jr c, jr_018_5f2b                                ; $5eaa: $38 $7f

	ld c, h                                          ; $5eac: $4c
	ld h, [hl]                                       ; $5ead: $66
	jp nz, $3080                                     ; $5eae: $c2 $80 $30

	ldh a, [$58]                                     ; $5eb1: $f0 $58
	cp b                                             ; $5eb3: $b8
	add sp, -$28                                     ; $5eb4: $e8 $d8
	ld l, h                                          ; $5eb6: $6c
	db $fc                                           ; $5eb7: $fc
	ld a, h                                          ; $5eb8: $7c
	cp h                                             ; $5eb9: $bc
	ldh a, [c]                                       ; $5eba: $f2
	sbc $ae                                          ; $5ebb: $de $ae
	cp $fe                                           ; $5ebd: $fe $fe
	ld e, [hl]                                       ; $5ebf: $5e
	cp $b2                                           ; $5ec0: $fe $b2
	cp $12                                           ; $5ec2: $fe $12
	cp $32                                           ; $5ec4: $fe $32
	cp $66                                           ; $5ec6: $fe $66
	ld a, a                                          ; $5ec8: $7f
	ld c, a                                          ; $5ec9: $4f
	ei                                               ; $5eca: $fb
	sbc d                                            ; $5ecb: $9a
	rst AddAOntoHL                                          ; $5ecc: $ef
	cpl                                              ; $5ecd: $2f
	rst AddAOntoHL                                          ; $5ece: $ef
	adc h                                            ; $5ecf: $8c
	jr z, jr_018_5ea1                                ; $5ed0: $28 $cf

	ret z                                            ; $5ed2: $c8

	adc a                                            ; $5ed3: $8f
	adc a                                            ; $5ed4: $8f
	adc d                                            ; $5ed5: $8a
	adc d                                            ; $5ed6: $8a
	sbc d                                            ; $5ed7: $9a
	sbc d                                            ; $5ed8: $9a
	ld a, e                                          ; $5ed9: $7b
	ld a, e                                          ; $5eda: $7b
	rrca                                             ; $5edb: $0f
	ld c, $07                                        ; $5edc: $0e $07
	ld b, $07                                        ; $5ede: $06 $07
	dec b                                            ; $5ee0: $05
	rrca                                             ; $5ee1: $0f
	dec c                                            ; $5ee2: $0d
	ld l, [hl]                                       ; $5ee3: $6e
	ld b, b                                          ; $5ee4: $40
	rst SubAFromDE                                          ; $5ee5: $df
	cp $df                                           ; $5ee6: $fe $df
	and d                                            ; $5ee8: $a2
	sbc $e2                                          ; $5ee9: $de $e2
	sub h                                            ; $5eeb: $94
	ld [hl+], a                                      ; $5eec: $22
	ldh [c], a                                       ; $5eed: $e2
	ld [hl+], a                                      ; $5eee: $22
	ldh a, [c]                                       ; $5eef: $f2
	ldh a, [c]                                       ; $5ef0: $f2
	ld a, [hl-]                                      ; $5ef1: $3a
	ld a, [hl-]                                      ; $5ef2: $3a
	ld l, $2e                                        ; $5ef3: $2e $2e
	and b                                            ; $5ef5: $a0
	and b                                            ; $5ef6: $a0
	ld [hl], d                                       ; $5ef7: $72
	ret nz                                           ; $5ef8: $c0

	ld a, a                                          ; $5ef9: $7f
	or c                                             ; $5efa: $b1
	sbc h                                            ; $5efb: $9c
	sub b                                            ; $5efc: $90
	ld hl, sp-$28                                    ; $5efd: $f8 $d8
	ld d, [hl]                                       ; $5eff: $56
	ret nz                                           ; $5f00: $c0

	rst SubAFromDE                                          ; $5f01: $df
	rrca                                             ; $5f02: $0f
	adc d                                            ; $5f03: $8a
	jr jr_018_5f25                                   ; $5f04: $18 $1f

	scf                                              ; $5f06: $37
	dec a                                            ; $5f07: $3d
	ld a, a                                          ; $5f08: $7f
	ld l, e                                          ; $5f09: $6b
	ld d, [hl]                                       ; $5f0a: $56
	ld a, e                                          ; $5f0b: $7b
	xor c                                            ; $5f0c: $a9
	rst $38                                          ; $5f0d: $ff
	db $d3                                           ; $5f0e: $d3
	cp $57                                           ; $5f0f: $fe $57
	ld a, l                                          ; $5f11: $7d
	ld d, a                                          ; $5f12: $57
	ld a, h                                          ; $5f13: $7c
	ld h, a                                          ; $5f14: $67
	ld a, h                                          ; $5f15: $7c
	dec sp                                           ; $5f16: $3b
	ld a, $1f                                        ; $5f17: $3e $1f
	ld l, e                                          ; $5f19: $6b
	ld b, b                                          ; $5f1a: $40
	rst SubAFromDE                                          ; $5f1b: $df
	ld [hl], b                                       ; $5f1c: $70
	add b                                            ; $5f1d: $80
	ret c                                            ; $5f1e: $d8

	ld hl, sp+$2c                                    ; $5f1f: $f8 $2c
	db $fc                                           ; $5f21: $fc
	add h                                            ; $5f22: $84
	db $fc                                           ; $5f23: $fc
	halt                                             ; $5f24: $76

jr_018_5f25:
	sbc [hl]                                         ; $5f25: $9e
	ld a, d                                          ; $5f26: $7a
	xor $76                                          ; $5f27: $ee $76
	sbc [hl]                                         ; $5f29: $9e
	adc [hl]                                         ; $5f2a: $8e

jr_018_5f2b:
	cp $ca                                           ; $5f2b: $fe $ca
	cp $f2                                           ; $5f2d: $fe $f2
	xor [hl]                                         ; $5f2f: $ae
	or $ee                                           ; $5f30: $f6 $ee
	db $e4                                           ; $5f32: $e4
	inc a                                            ; $5f33: $3c
	db $e4                                           ; $5f34: $e4
	ld a, h                                          ; $5f35: $7c
	rrca                                             ; $5f36: $0f
	rrca                                             ; $5f37: $0f
	rra                                              ; $5f38: $1f
	ld e, $3f                                        ; $5f39: $1e $3f
	scf                                              ; $5f3b: $37
	ccf                                              ; $5f3c: $3f
	sub [hl]                                         ; $5f3d: $96
	cpl                                              ; $5f3e: $2f
	ccf                                              ; $5f3f: $3f
	inc hl                                           ; $5f40: $23
	inc a                                            ; $5f41: $3c
	inc h                                            ; $5f42: $24
	inc a                                            ; $5f43: $3c
	inc [hl]                                         ; $5f44: $34
	rra                                              ; $5f45: $1f
	rra                                              ; $5f46: $1f
	jp c, Jump_018_6307                              ; $5f47: $da $07 $63

	add b                                            ; $5f4a: $80
	sbc [hl]                                         ; $5f4b: $9e
	add sp, -$22                                     ; $5f4c: $e8 $de
	ld hl, sp+$7a                                    ; $5f4e: $f8 $7a
	ret nz                                           ; $5f50: $c0

	ld a, [hl]                                       ; $5f51: $7e
	add l                                            ; $5f52: $85
	sbc b                                            ; $5f53: $98
	call nz, Call_018_4c7c                           ; $5f54: $c4 $7c $4c
	jr c, jr_018_5f81                                ; $5f57: $38 $28

	ld hl, sp-$08                                    ; $5f59: $f8 $f8
	reti                                             ; $5f5b: $d9


	ldh [$7a], a                                     ; $5f5c: $e0 $7a
	cp h                                             ; $5f5e: $bc
	ld e, d                                          ; $5f5f: $5a
	ld b, b                                          ; $5f60: $40
	halt                                             ; $5f61: $76
	ld b, d                                          ; $5f62: $42
	adc l                                            ; $5f63: $8d
	ld a, $3f                                        ; $5f64: $3e $3f
	dec l                                            ; $5f66: $2d
	inc sp                                           ; $5f67: $33
	ld d, e                                          ; $5f68: $53
	ld l, a                                          ; $5f69: $6f
	and l                                            ; $5f6a: $a5
	sbc $aa                                          ; $5f6b: $de $aa
	db $dd                                           ; $5f6d: $dd
	adc h                                            ; $5f6e: $8c
	ei                                               ; $5f6f: $fb
	rst $38                                          ; $5f70: $ff
	rst $38                                          ; $5f71: $ff
	xor a                                            ; $5f72: $af
	cp $ef                                           ; $5f73: $fe $ef
	ld a, [$ed78]                                    ; $5f75: $fa $78 $ed
	sbc [hl]                                         ; $5f78: $9e
	ld a, a                                          ; $5f79: $7f
	ld sp, hl                                        ; $5f7a: $f9
	rst SubAFromDE                                          ; $5f7b: $df
	db $fc                                           ; $5f7c: $fc
	adc l                                            ; $5f7d: $8d
	ld a, b                                          ; $5f7e: $78
	ld hl, sp-$72                                    ; $5f7f: $f8 $8e

jr_018_5f81:
	cp $b3                                           ; $5f81: $fe $b3
	rst GetHLinHL                                          ; $5f83: $cf
	ret                                              ; $5f84: $c9


	ld [hl], a                                       ; $5f85: $77
	dec d                                            ; $5f86: $15
	ei                                               ; $5f87: $fb
	sbc c                                            ; $5f88: $99
	rst $38                                          ; $5f89: $ff
	ei                                               ; $5f8a: $fb
	ld a, a                                          ; $5f8b: $7f
	db $fc                                           ; $5f8c: $fc
	db $f4                                           ; $5f8d: $f4
	db $fc                                           ; $5f8e: $fc
	call nc, $fc7b                                   ; $5f8f: $d4 $7b $fc
	sub h                                            ; $5f92: $94
	inc a                                            ; $5f93: $3c
	ccf                                              ; $5f94: $3f
	inc a                                            ; $5f95: $3c
	ccf                                              ; $5f96: $3f
	ld [hl-], a                                      ; $5f97: $32
	rra                                              ; $5f98: $1f
	dec de                                           ; $5f99: $1b
	rra                                              ; $5f9a: $1f
	rra                                              ; $5f9b: $1f
	ccf                                              ; $5f9c: $3f
	ccf                                              ; $5f9d: $3f
	db $dd                                           ; $5f9e: $dd
	ld a, h                                          ; $5f9f: $7c
	rst SubAFromDE                                          ; $5fa0: $df
	ccf                                              ; $5fa1: $3f
	reti                                             ; $5fa2: $d9


	rrca                                             ; $5fa3: $0f
	sbc $1f                                          ; $5fa4: $de $1f
	ld [hl], c                                       ; $5fa6: $71
	ret nz                                           ; $5fa7: $c0

	sbc e                                            ; $5fa8: $9b
	db $f4                                           ; $5fa9: $f4
	inc e                                            ; $5faa: $1c
	db $ec                                           ; $5fab: $ec
	inc a                                            ; $5fac: $3c
	db $dd                                           ; $5fad: $dd
	ld hl, sp-$21                                    ; $5fae: $f8 $df
	db $fc                                           ; $5fb0: $fc
	db $dd                                           ; $5fb1: $dd
	ld a, h                                          ; $5fb2: $7c
	daa                                              ; $5fb3: $27
	add b                                            ; $5fb4: $80
	ld l, [hl]                                       ; $5fb5: $6e
	cp $8c                                           ; $5fb6: $fe $8c
	ld a, [de]                                       ; $5fb8: $1a
	dec e                                            ; $5fb9: $1d
	scf                                              ; $5fba: $37
	ccf                                              ; $5fbb: $3f
	ld l, a                                          ; $5fbc: $6f
	ld a, a                                          ; $5fbd: $7f
	ld d, l                                          ; $5fbe: $55
	ld a, a                                          ; $5fbf: $7f
	ld l, h                                          ; $5fc0: $6c
	ld a, a                                          ; $5fc1: $7f
	ld a, a                                          ; $5fc2: $7f
	ld [hl], c                                       ; $5fc3: $71
	ld a, a                                          ; $5fc4: $7f
	or $ff                                           ; $5fc5: $f6 $ff
	db $e4                                           ; $5fc7: $e4
	cp a                                             ; $5fc8: $bf
	or [hl]                                          ; $5fc9: $b6
	ccf                                              ; $5fca: $3f
	ld l, c                                          ; $5fcb: $69
	ld b, b                                          ; $5fcc: $40
	rst SubAFromDE                                          ; $5fcd: $df
	ld h, b                                          ; $5fce: $60
	ld [hl], h                                       ; $5fcf: $74
	cp [hl]                                          ; $5fd0: $be
	adc e                                            ; $5fd1: $8b
	cp b                                             ; $5fd2: $b8
	ret c                                            ; $5fd3: $d8

	db $ec                                           ; $5fd4: $ec
	db $fc                                           ; $5fd5: $fc
	sub [hl]                                         ; $5fd6: $96
	cp $6a                                           ; $5fd7: $fe $6a
	sbc $aa                                          ; $5fd9: $de $aa
	cp $e6                                           ; $5fdb: $fe $e6
	cp $fe                                           ; $5fdd: $fe $fe
	ld a, a                                          ; $5fdf: $7f
	rst $38                                          ; $5fe0: $ff
	ld b, a                                          ; $5fe1: $47
	db $fd                                           ; $5fe2: $fd
	ld l, l                                          ; $5fe3: $6d
	db $fc                                           ; $5fe4: $fc
	ld c, $67                                        ; $5fe5: $0e $67
	call nz, $09df                                   ; $5fe7: $c4 $df $09
	rst SubAFromDE                                          ; $5fea: $df
	rra                                              ; $5feb: $1f
	ld a, a                                          ; $5fec: $7f
	jp nz, $6d8d                                     ; $5fed: $c2 $8d $6d

	ld a, a                                          ; $5ff0: $7f
	db $d3                                           ; $5ff1: $d3
	db $ec                                           ; $5ff2: $ec
	and h                                            ; $5ff3: $a4

jr_018_5ff4:
	ei                                               ; $5ff4: $fb
	sub $ff                                          ; $5ff5: $d6 $ff
	sub [hl]                                         ; $5ff7: $96
	jp hl                                            ; $5ff8: $e9


	ld a, a                                          ; $5ff9: $7f
	ld c, h                                          ; $5ffa: $4c
	ld a, a                                          ; $5ffb: $7f
	ld l, b                                          ; $5ffc: $68
	ccf                                              ; $5ffd: $3f
	inc l                                            ; $5ffe: $2c
	ccf                                              ; $5fff: $3f
	jr nc, jr_018_6063                               ; $6000: $30 $61

	ld [bc], a                                       ; $6002: $02
	add b                                            ; $6003: $80
	jr c, jr_018_5ff4                                ; $6004: $38 $ee

	cp $d7                                           ; $6006: $fe $d7
	ei                                               ; $6008: $fb
	ld c, e                                          ; $6009: $4b
	db $fd                                           ; $600a: $fd
	db $eb                                           ; $600b: $eb
	cp l                                             ; $600c: $bd
	and l                                            ; $600d: $a5
	rst $38                                          ; $600e: $ff
	ld b, l                                          ; $600f: $45
	rst $38                                          ; $6010: $ff
	sbc l                                            ; $6011: $9d
	ld a, a                                          ; $6012: $7f
	rst SubAFromDE                                          ; $6013: $df
	rst AddAOntoHL                                          ; $6014: $ef
	jp c, $dcaa                                      ; $6015: $da $aa $dc

	db $fc                                           ; $6018: $fc
	cp $36                                           ; $6019: $fe $36

Jump_018_601b:
	ccf                                              ; $601b: $3f
	inc a                                            ; $601c: $3c
	ld a, a                                          ; $601d: $7f
	ld h, a                                          ; $601e: $67
	ld a, a                                          ; $601f: $7f
	ld e, a                                          ; $6020: $5f
	ld a, h                                          ; $6021: $7c
	ld a, a                                          ; $6022: $7f
	ld a, a                                          ; $6023: $7f
	cp $9d                                           ; $6024: $fe $9d
	ld a, b                                          ; $6026: $78
	ld a, a                                          ; $6027: $7f
	ld [hl], a                                       ; $6028: $77
	ld d, b                                          ; $6029: $50
	ld b, a                                          ; $602a: $47
	ld b, b                                          ; $602b: $40
	ld a, d                                          ; $602c: $7a
	sub l                                            ; $602d: $95
	sub [hl]                                         ; $602e: $96
	add [hl]                                         ; $602f: $86
	db $fc                                           ; $6030: $fc
	ld l, h                                          ; $6031: $6c
	db $fc                                           ; $6032: $fc
	call c, $84fc                                    ; $6033: $dc $fc $84
	ld a, h                                          ; $6036: $7c
	call z, $425f                                    ; $6037: $cc $5f $42
	ld b, a                                          ; $603a: $47
	ld b, b                                          ; $603b: $40
	rst SubAFromDE                                          ; $603c: $df
	rra                                              ; $603d: $1f
	add a                                            ; $603e: $87
	jr nz, jr_018_6080                               ; $603f: $20 $3f

	jr nz, jr_018_6074                               ; $6041: $20 $31

	ld a, $3f                                        ; $6043: $3e $3f
	ld h, a                                          ; $6045: $67
	ld a, a                                          ; $6046: $7f
	sbc b                                            ; $6047: $98
	rst $38                                          ; $6048: $ff
	ld h, l                                          ; $6049: $65
	cp a                                             ; $604a: $bf
	ld a, [hl-]                                      ; $604b: $3a
	rst AddAOntoHL                                          ; $604c: $ef
	dec hl                                           ; $604d: $2b
	db $fd                                           ; $604e: $fd
	cp a                                             ; $604f: $bf
	add sp, -$01                                     ; $6050: $e8 $ff
	db $ec                                           ; $6052: $ec
	ld a, a                                          ; $6053: $7f
	ld h, b                                          ; $6054: $60
	ccf                                              ; $6055: $3f
	ld [hl], $f9                                     ; $6056: $36 $f9
	rst SubAFromDE                                          ; $6058: $df
	sbc [hl]                                         ; $6059: $9e
	adc c                                            ; $605a: $89
	sub c                                            ; $605b: $91
	sbc a                                            ; $605c: $9f
	push de                                          ; $605d: $d5
	rst $38                                          ; $605e: $ff
	add hl, sp                                       ; $605f: $39
	db $eb                                           ; $6060: $eb
	ld sp, hl                                        ; $6061: $f9
	sub e                                            ; $6062: $93

jr_018_6063:
	ld c, c                                          ; $6063: $49
	ei                                               ; $6064: $fb
	cp c                                             ; $6065: $b9
	db $eb                                           ; $6066: $eb
	sbc e                                            ; $6067: $9b
	rst $38                                          ; $6068: $ff
	jp c, $deae                                      ; $6069: $da $ae $de

	xor $f4                                          ; $606c: $ee $f4
	inc [hl]                                         ; $606e: $34
	ldh a, [rSVBK]                                   ; $606f: $f0 $70
	ld a, c                                          ; $6071: $79
	nop                                              ; $6072: $00
	sbc [hl]                                         ; $6073: $9e

jr_018_6074:
	inc d                                            ; $6074: $14
	ld a, d                                          ; $6075: $7a
	ld b, d                                          ; $6076: $42
	call c, Call_018_773f                            ; $6077: $dc $3f $77
	add d                                            ; $607a: $82
	ld a, d                                          ; $607b: $7a
	or h                                             ; $607c: $b4
	sbc d                                            ; $607d: $9a
	ld [de], a                                       ; $607e: $12
	ccf                                              ; $607f: $3f

jr_018_6080:
	ld [hl], $3d                                     ; $6080: $36 $3d
	dec h                                            ; $6082: $25
	ld a, e                                          ; $6083: $7b
	db $ec                                           ; $6084: $ec
	ld a, a                                          ; $6085: $7f
	or c                                             ; $6086: $b1
	ld a, e                                          ; $6087: $7b
	xor $77                                          ; $6088: $ee $77
	sub [hl]                                         ; $608a: $96
	ld a, e                                          ; $608b: $7b
	sub h                                            ; $608c: $94
	sbc d                                            ; $608d: $9a
	ld hl, sp-$38                                    ; $608e: $f8 $c8
	ret z                                            ; $6090: $c8

	adc b                                            ; $6091: $88
	adc b                                            ; $6092: $88
	db $dd                                           ; $6093: $dd
	ld hl, sp-$21                                    ; $6094: $f8 $df
	ldh a, [$df]                                     ; $6096: $f0 $df
	ldh [$97], a                                     ; $6098: $e0 $97
	ret nz                                           ; $609a: $c0

	ld b, b                                          ; $609b: $40
	ldh [$60], a                                     ; $609c: $e0 $60
	ldh [rAUD4LEN], a                                ; $609e: $e0 $20
	ld hl, sp+$38                                    ; $60a0: $f8 $38
	ld c, [hl]                                       ; $60a2: $4e
	ret nz                                           ; $60a3: $c0

	ld sp, hl                                        ; $60a4: $f9
	sub c                                            ; $60a5: $91
	ld a, b                                          ; $60a6: $78
	ld a, h                                          ; $60a7: $7c
	rst GetHLinHL                                          ; $60a8: $cf
	rst $38                                          ; $60a9: $ff
	cp b                                             ; $60aa: $b8
	rst SubAFromDE                                          ; $60ab: $df
	or b                                             ; $60ac: $b0
	rst $38                                          ; $60ad: $ff
	ldh [rIE], a                                     ; $60ae: $e0 $ff
	cpl                                              ; $60b0: $2f
	ld [hl], l                                       ; $60b1: $75
	cpl                                              ; $60b2: $2f
	dec [hl]                                         ; $60b3: $35
	rst AddAOntoHL                                          ; $60b4: $ef
	add h                                            ; $60b5: $84
	ld e, $7e                                        ; $60b6: $1e $7e
	di                                               ; $60b8: $f3
	rst $38                                          ; $60b9: $ff
	dec e                                            ; $60ba: $1d
	ei                                               ; $60bb: $fb
	dec c                                            ; $60bc: $0d
	rst $38                                          ; $60bd: $ff
	rlca                                             ; $60be: $07
	rst $38                                          ; $60bf: $ff
	db $f4                                           ; $60c0: $f4
	xor [hl]                                         ; $60c1: $ae
	db $f4                                           ; $60c2: $f4
	xor h                                            ; $60c3: $ac
	ld hl, $343f                                     ; $60c4: $21 $3f $34
	ccf                                              ; $60c7: $3f
	ei                                               ; $60c8: $fb
	rst $38                                          ; $60c9: $ff
	sbc a                                            ; $60ca: $9f
	rst $38                                          ; $60cb: $ff
	ret nz                                           ; $60cc: $c0

	rst $38                                          ; $60cd: $ff
	ld [hl], b                                       ; $60ce: $70
	ld a, a                                          ; $60cf: $7f
	ld e, $7b                                        ; $60d0: $1e $7b
	inc c                                            ; $60d2: $0c
	ld a, h                                          ; $60d3: $7c
	ld sp, hl                                        ; $60d4: $f9
	sub h                                            ; $60d5: $94
	sbc h                                            ; $60d6: $9c
	sbc a                                            ; $60d7: $9f
	ldh a, [rIE]                                     ; $60d8: $f0 $ff
	and b                                            ; $60da: $a0
	rst $38                                          ; $60db: $ff
	add b                                            ; $60dc: $80
	rst $38                                          ; $60dd: $ff
	rst GetHLinHL                                          ; $60de: $cf
	rst $38                                          ; $60df: $ff
	ld a, a                                          ; $60e0: $7f
	ld a, d                                          ; $60e1: $7a
	xor $7d                                          ; $60e2: $ee $7d
	adc h                                            ; $60e4: $8c
	ld a, l                                          ; $60e5: $7d
	adc b                                            ; $60e6: $88
	ld a, l                                          ; $60e7: $7d
	ld d, a                                          ; $60e8: $57
	ld a, a                                          ; $60e9: $7f
	ld a, e                                          ; $60ea: $7b
	ld a, l                                          ; $60eb: $7d
	ld c, a                                          ; $60ec: $4f
	sbc d                                            ; $60ed: $9a
	db $10                                           ; $60ee: $10
	ld hl, sp+$08                                    ; $60ef: $f8 $08
	ld hl, sp+$08                                    ; $60f1: $f8 $08
	ld a, c                                          ; $60f3: $79
	ld a, h                                          ; $60f4: $7c
	sub l                                            ; $60f5: $95
	inc b                                            ; $60f6: $04
	db $fc                                           ; $60f7: $fc
	rlca                                             ; $60f8: $07
	rst $38                                          ; $60f9: $ff
	dec b                                            ; $60fa: $05
	rst $38                                          ; $60fb: $ff
	dec c                                            ; $60fc: $0d
	rst $38                                          ; $60fd: $ff
	rra                                              ; $60fe: $1f

Jump_018_60ff:
	rst $38                                          ; $60ff: $ff

Call_018_6100:
	ld l, a                                          ; $6100: $6f
	add b                                            ; $6101: $80
	sbc d                                            ; $6102: $9a
	dec e                                            ; $6103: $1d
	rra                                              ; $6104: $1f
	inc l                                            ; $6105: $2c
	ccf                                              ; $6106: $3f
	inc sp                                           ; $6107: $33
	ld a, d                                          ; $6108: $7a
	sub l                                            ; $6109: $95
	adc [hl]                                         ; $610a: $8e
	ld e, b                                          ; $610b: $58
	ld a, a                                          ; $610c: $7f
	sub b                                            ; $610d: $90
	rst $38                                          ; $610e: $ff
	db $fc                                           ; $610f: $fc
	rst $38                                          ; $6110: $ff
	ld b, b                                          ; $6111: $40
	ld a, a                                          ; $6112: $7f
	ld hl, sp-$01                                    ; $6113: $f8 $ff
	sub b                                            ; $6115: $90
	rst $38                                          ; $6116: $ff
	ld l, b                                          ; $6117: $68
	ld a, a                                          ; $6118: $7f
	scf                                              ; $6119: $37
	ld a, $2d                                        ; $611a: $3e $2d
	ld a, e                                          ; $611c: $7b
	ld b, d                                          ; $611d: $42
	db $fd                                           ; $611e: $fd
	sub [hl]                                         ; $611f: $96
	ret nz                                           ; $6120: $c0

	ldh [rAUD2LOW], a                                ; $6121: $e0 $18
	ld hl, sp-$1c                                    ; $6123: $f8 $e4
	db $fc                                           ; $6125: $fc
	ld a, [de]                                       ; $6126: $1a
	cp $0f                                           ; $6127: $fe $0f
	ld a, e                                          ; $6129: $7b
	adc [hl]                                         ; $612a: $8e
	ld a, a                                          ; $612b: $7f
	call z, $019c                                    ; $612c: $cc $9c $01
	rst $38                                          ; $612f: $ff
	rrca                                             ; $6130: $0f
	ld a, e                                          ; $6131: $7b
	jp nz, $0a9a                                     ; $6132: $c2 $9a $0a

	cp $f4                                           ; $6135: $fe $f4
	inc a                                            ; $6137: $3c
	ret c                                            ; $6138: $d8

	ld a, d                                          ; $6139: $7a
	or d                                             ; $613a: $b2
	ld sp, hl                                        ; $613b: $f9
	sbc h                                            ; $613c: $9c
	inc bc                                           ; $613d: $03
	rlca                                             ; $613e: $07
	inc b                                            ; $613f: $04
	ld a, e                                          ; $6140: $7b
	cp $80                                           ; $6141: $fe $80
	dec b                                            ; $6143: $05
	ld b, $05                                        ; $6144: $06 $05
	ld c, $0d                                        ; $6146: $0e $0d
	ld c, $0b                                        ; $6148: $0e $0b
	inc c                                            ; $614a: $0c
	rrca                                             ; $614b: $0f
	ld [$0e0f], sp                                   ; $614c: $08 $0f $0e
	rrca                                             ; $614f: $0f
	ld e, $1f                                        ; $6150: $1e $1f
	ld e, $1b                                        ; $6152: $1e $1b
	ld e, $11                                        ; $6154: $1e $11
	ld e, $1b                                        ; $6156: $1e $1b
	ld d, $1b                                        ; $6158: $16 $1b
	ld d, $1d                                        ; $615a: $16 $1d
	ld [hl], $3d                                     ; $615c: $36 $3d
	ld [hl], $3b                                     ; $615e: $36 $3b
	scf                                              ; $6160: $37
	inc l                                            ; $6161: $2c
	adc [hl]                                         ; $6162: $8e
	inc sp                                           ; $6163: $33
	dec hl                                           ; $6164: $2b
	scf                                              ; $6165: $37
	dec h                                            ; $6166: $25
	ld a, $27                                        ; $6167: $3e $27
	ccf                                              ; $6169: $3f
	inc sp                                           ; $616a: $33
	inc a                                            ; $616b: $3c
	ld a, c                                          ; $616c: $79
	ld a, [hl]                                       ; $616d: $7e
	ld e, [hl]                                       ; $616e: $5e
	ld a, a                                          ; $616f: $7f
	ld l, e                                          ; $6170: $6b
	ld [hl], a                                       ; $6171: $77
	dec sp                                           ; $6172: $3b
	inc a                                            ; $6173: $3c
	halt                                             ; $6174: $76
	ldh [$f9], a                                     ; $6175: $e0 $f9
	rst SubAFromDE                                          ; $6177: $df
	rlca                                             ; $6178: $07
	ld a, a                                          ; $6179: $7f
	ret z                                            ; $617a: $c8

	sbc c                                            ; $617b: $99
	rla                                              ; $617c: $17
	jr jr_018_618e                                   ; $617d: $18 $0f

	db $10                                           ; $617f: $10
	cpl                                              ; $6180: $2f
	jr nc, jr_018_61fa                               ; $6181: $30 $77

	cp $7f                                           ; $6183: $fe $7f
	or $99                                           ; $6185: $f6 $99
	inc de                                           ; $6187: $13
	inc e                                            ; $6188: $1c
	ld [$030f], sp                                   ; $6189: $08 $0f $03
	inc bc                                           ; $618c: $03
	halt                                             ; $618d: $76

jr_018_618e:
	ld h, l                                          ; $618e: $65
	ld a, d                                          ; $618f: $7a
	ld h, e                                          ; $6190: $63
	ld a, a                                          ; $6191: $7f
	db $fd                                           ; $6192: $fd
	sbc [hl]                                         ; $6193: $9e
	rrca                                             ; $6194: $0f
	ld [hl], a                                       ; $6195: $77
	ld a, [$0797]                                    ; $6196: $fa $97 $07
	jr jr_018_61ab                                   ; $6199: $18 $10

	rra                                              ; $619b: $1f
	jr jr_018_61bd                                   ; $619c: $18 $1f

jr_018_619e:
	rra                                              ; $619e: $1f
	dec d                                            ; $619f: $15
	ld [hl], a                                       ; $61a0: $77
	cp $7f                                           ; $61a1: $fe $7f
	ld hl, sp+$7e                                    ; $61a3: $f8 $7e
	ld c, [hl]                                       ; $61a5: $4e
	ld [hl], a                                       ; $61a6: $77
	jr nz, jr_018_619e                               ; $61a7: $20 $f5

	ld a, a                                          ; $61a9: $7f
	db $ec                                           ; $61aa: $ec

jr_018_61ab:
	ld a, a                                          ; $61ab: $7f
	ldh [rPCM34], a                                  ; $61ac: $e0 $77
	cp $5f                                           ; $61ae: $fe $5f
	xor d                                            ; $61b0: $aa
	rst SubAFromBC                                          ; $61b1: $e7
	rst SubAFromDE                                          ; $61b2: $df
	ld e, $7f                                        ; $61b3: $1e $7f
	inc c                                            ; $61b5: $0c
	sbc e                                            ; $61b6: $9b
	ld l, $33                                        ; $61b7: $2e $33
	inc l                                            ; $61b9: $2c
	scf                                              ; $61ba: $37
	jp hl                                            ; $61bb: $e9


	rst SubAFromDE                                          ; $61bc: $df

jr_018_61bd:
	ld a, b                                          ; $61bd: $78
	adc b                                            ; $61be: $88
	call z, Call_018_74fc                            ; $61bf: $cc $fc $74
	call z, $ec34                                    ; $61c2: $cc $34 $ec
	jr nc, jr_018_6206                               ; $61c5: $30 $3f

	rra                                              ; $61c7: $1f
	dec d                                            ; $61c8: $15
	ld de, $121f                                     ; $61c9: $11 $1f $12
	rra                                              ; $61cc: $1f
	dec a                                            ; $61cd: $3d
	ccf                                              ; $61ce: $3f
	daa                                              ; $61cf: $27
	ccf                                              ; $61d0: $3f
	db $10                                           ; $61d1: $10
	rra                                              ; $61d2: $1f
	ld [$060f], sp                                   ; $61d3: $08 $0f $06
	ld a, b                                          ; $61d6: $78
	ld h, h                                          ; $61d7: $64
	sbc b                                            ; $61d8: $98
	ld [hl], $37                                     ; $61d9: $36 $37
	jr z, jr_018_621c                                ; $61db: $28 $3f

	jr nz, jr_018_621e                               ; $61dd: $20 $3f

	inc de                                           ; $61df: $13
	ld a, b                                          ; $61e0: $78
	call z, $1fdf                                    ; $61e1: $cc $df $1f
	sub [hl]                                         ; $61e4: $96
	inc c                                            ; $61e5: $0c
	db $fc                                           ; $61e6: $fc
	ld hl, sp-$58                                    ; $61e7: $f8 $a8
	adc b                                            ; $61e9: $88
	ld hl, sp+$28                                    ; $61ea: $f8 $28
	ld hl, sp-$30                                    ; $61ec: $f8 $d0
	sbc $f0                                          ; $61ee: $de $f0
	sub b                                            ; $61f0: $90
	db $10                                           ; $61f1: $10
	ldh a, [rP1]                                     ; $61f2: $f0 $00
	ldh a, [$08]                                     ; $61f4: $f0 $08
	ld hl, sp-$78                                    ; $61f6: $f8 $88
	ld hl, sp+$0a                                    ; $61f8: $f8 $0a

jr_018_61fa:
	cp $04                                           ; $61fa: $fe $04
	cp $06                                           ; $61fc: $fe $06
	cp $88                                           ; $61fe: $fe $88
	ld a, b                                          ; $6200: $78
	call z, $2066                                    ; $6201: $cc $66 $20
	ld a, [hl]                                       ; $6204: $7e
	cp h                                             ; $6205: $bc

jr_018_6206:
	sbc [hl]                                         ; $6206: $9e
	jr nz, jr_018_6284                               ; $6207: $20 $7b

	cp $9a                                           ; $6209: $fe $9a
	and b                                            ; $620b: $a0
	ld h, b                                          ; $620c: $60
	and b                                            ; $620d: $a0
	ld [hl], b                                       ; $620e: $70
	ret nc                                           ; $620f: $d0

	ld a, d                                          ; $6210: $7a
	ld [hl], a                                       ; $6211: $77
	ld a, l                                          ; $6212: $7d
	jp z, $f080                                      ; $6213: $ca $80 $f0

	ld a, b                                          ; $6216: $78
	ld hl, sp+$78                                    ; $6217: $f8 $78
	ret c                                            ; $6219: $d8

	ld a, b                                          ; $621a: $78
	adc b                                            ; $621b: $88

jr_018_621c:
	ld a, b                                          ; $621c: $78
	ret c                                            ; $621d: $d8

jr_018_621e:
	ld l, b                                          ; $621e: $68
	cp b                                             ; $621f: $b8
	ld l, h                                          ; $6220: $6c
	cp h                                             ; $6221: $bc
	ld l, h                                          ; $6222: $6c
	call c, $34ec                                    ; $6223: $dc $ec $34
	call z, $ecd4                                    ; $6226: $cc $d4 $ec
	and h                                            ; $6229: $a4
	ld a, h                                          ; $622a: $7c
	db $ec                                           ; $622b: $ec
	db $fc                                           ; $622c: $fc
	sbc [hl]                                         ; $622d: $9e
	ld a, [hl]                                       ; $622e: $7e
	ld a, d                                          ; $622f: $7a
	cp $d6                                           ; $6230: $fe $d6
	xor $dc                                          ; $6232: $ee $dc
	sbc [hl]                                         ; $6234: $9e
	inc a                                            ; $6235: $3c
	ld c, l                                          ; $6236: $4d
	and $78                                          ; $6237: $e6 $78
	ld [hl+], a                                      ; $6239: $22
	adc b                                            ; $623a: $88
	ld c, $37                                        ; $623b: $0e $37
	dec sp                                           ; $623d: $3b
	inc d                                            ; $623e: $14
	ld l, $48                                        ; $623f: $2e $48
	ld a, b                                          ; $6241: $78
	or b                                             ; $6242: $b0
	ret nc                                           ; $6243: $d0

	or b                                             ; $6244: $b0
	ret nc                                           ; $6245: $d0

	sbc b                                            ; $6246: $98
	add sp, $58                                      ; $6247: $e8 $58
	ld h, [hl]                                       ; $6249: $66
	ld h, $39                                        ; $624a: $26 $39
	add hl, de                                       ; $624c: $19
	ld e, $07                                        ; $624d: $1e $07
	rrca                                             ; $624f: $0f
	nop                                              ; $6250: $00
	ld bc, $4471                                     ; $6251: $01 $71 $44
	ld a, [hl]                                       ; $6254: $7e
	db $fc                                           ; $6255: $fc
	ld a, [hl]                                       ; $6256: $7e
	ld d, $7e                                        ; $6257: $16 $7e
	db $10                                           ; $6259: $10
	sbc [hl]                                         ; $625a: $9e
	ret nz                                           ; $625b: $c0

	push af                                          ; $625c: $f5
	ld a, a                                          ; $625d: $7f
	sub b                                            ; $625e: $90
	sbc b                                            ; $625f: $98
	rst SubAFromBC                                          ; $6260: $e7
	rra                                              ; $6261: $1f
	ccf                                              ; $6262: $3f
	ret nz                                           ; $6263: $c0

	ldh a, [rIE]                                     ; $6264: $f0 $ff
	rrca                                             ; $6266: $0f
	ld [hl], d                                       ; $6267: $72
	or $df                                           ; $6268: $f6 $df
	inc bc                                           ; $626a: $03
	rst SubAFromDE                                          ; $626b: $df
	rrca                                             ; $626c: $0f
	rst SubAFromDE                                          ; $626d: $df
	ccf                                              ; $626e: $3f
	rst SubAFromDE                                          ; $626f: $df
	ld a, $df                                        ; $6270: $3e $df
	ld a, b                                          ; $6272: $78
	ld l, l                                          ; $6273: $6d
	ld [hl], h                                       ; $6274: $74
	rst SubAFromDE                                          ; $6275: $df
	ld a, [hl]                                       ; $6276: $7e
	ld l, l                                          ; $6277: $6d
	ld d, h                                          ; $6278: $54
	rst SubAFromDE                                          ; $6279: $df
	ld bc, $dffd                                     ; $627a: $01 $fd $df
	ccf                                              ; $627d: $3f
	db $dd                                           ; $627e: $dd
	rst $38                                          ; $627f: $ff
	rst SubAFromDE                                          ; $6280: $df
	ret nz                                           ; $6281: $c0

	push af                                          ; $6282: $f5
	rst SubAFromDE                                          ; $6283: $df

jr_018_6284:
	ldh [$db], a                                     ; $6284: $e0 $db
	rst $38                                          ; $6286: $ff
	ld l, $b6                                        ; $6287: $2e $b6
	ld d, a                                          ; $6289: $57
	ld [hl], b                                       ; $628a: $70
	rst AddAOntoHL                                          ; $628b: $ef
	scf                                              ; $628c: $37
	ld [hl], b                                       ; $628d: $70
	rst FarCall                                          ; $628e: $f7
	ccf                                              ; $628f: $3f
	ld b, b                                          ; $6290: $40
	db $ed                                           ; $6291: $ed
	ld c, a                                          ; $6292: $4f
	ld b, b                                          ; $6293: $40
	push af                                          ; $6294: $f5
	rst SubAFromDE                                          ; $6295: $df
	inc a                                            ; $6296: $3c
	sbc e                                            ; $6297: $9b
	ld a, [hl]                                       ; $6298: $7e
	ld b, d                                          ; $6299: $42
	rst $38                                          ; $629a: $ff
	add c                                            ; $629b: $81
	ld l, a                                          ; $629c: $6f
	cp $7f                                           ; $629d: $fe $7f
	or $df                                           ; $629f: $f6 $df
	inc a                                            ; $62a1: $3c
	ld [hl], a                                       ; $62a2: $77
	ld bc, $2b80                                     ; $62a3: $01 $80 $2b
	inc l                                            ; $62a6: $2c
	dec l                                            ; $62a7: $2d
	dec hl                                           ; $62a8: $2b
	dec hl                                           ; $62a9: $2b
	inc a                                            ; $62aa: $3c
	dec a                                            ; $62ab: $3d
	dec hl                                           ; $62ac: $2b
	ld c, e                                          ; $62ad: $4b
	ld c, h                                          ; $62ae: $4c
	ld c, l                                          ; $62af: $4d
	ld c, [hl]                                       ; $62b0: $4e
	dec hl                                           ; $62b1: $2b
	ld e, h                                          ; $62b2: $5c
	ld e, l                                          ; $62b3: $5d
	dec hl                                           ; $62b4: $2b
	dec hl                                           ; $62b5: $2b
	jr nc, jr_018_62e9                               ; $62b6: $30 $31

	dec hl                                           ; $62b8: $2b
	dec hl                                           ; $62b9: $2b
	ld b, b                                          ; $62ba: $40
	ld b, c                                          ; $62bb: $41
	dec hl                                           ; $62bc: $2b
	ld c, a                                          ; $62bd: $4f
	ld d, b                                          ; $62be: $50
	ld d, c                                          ; $62bf: $51
	dec hl                                           ; $62c0: $2b
	dec hl                                           ; $62c1: $2b
	ld h, b                                          ; $62c2: $60
	ld h, c                                          ; $62c3: $61
	sbc [hl]                                         ; $62c4: $9e
	ld h, d                                          ; $62c5: $62
	ld [hl], e                                       ; $62c6: $73
	ldh [hDisp1_OBP1], a                                     ; $62c7: $e0 $94
	ld b, h                                          ; $62c9: $44
	ld b, l                                          ; $62ca: $45
	dec hl                                           ; $62cb: $2b
	ld d, e                                          ; $62cc: $53
	ld c, h                                          ; $62cd: $4c
	ld d, l                                          ; $62ce: $55
	ld d, [hl]                                       ; $62cf: $56
	dec hl                                           ; $62d0: $2b
	ld h, h                                          ; $62d1: $64
	ld h, l                                          ; $62d2: $65
	dec hl                                           ; $62d3: $2b
	ld h, a                                          ; $62d4: $67
	ldh a, [$9d]                                     ; $62d5: $f0 $9d
	ld d, a                                          ; $62d7: $57
	ld e, b                                          ; $62d8: $58
	ld e, e                                          ; $62d9: $5b
	ldh a, [$80]                                     ; $62da: $f0 $80
	ld a, h                                          ; $62dc: $7c
	ld a, e                                          ; $62dd: $7b
	dec hl                                           ; $62de: $2b
	dec hl                                           ; $62df: $2b
	ld l, h                                          ; $62e0: $6c
	ld l, e                                          ; $62e1: $6b
	dec hl                                           ; $62e2: $2b
	dec hl                                           ; $62e3: $2b
	ld e, c                                          ; $62e4: $59
	ld d, h                                          ; $62e5: $54
	dec hl                                           ; $62e6: $2b
	ld l, a                                          ; $62e7: $6f
	ld [hl], b                                       ; $62e8: $70

jr_018_62e9:
	ld [hl], c                                       ; $62e9: $71
	ld [hl], d                                       ; $62ea: $72
	ld a, d                                          ; $62eb: $7a
	ld [hl], a                                       ; $62ec: $77
	halt                                             ; $62ed: $76
	ld [hl], e                                       ; $62ee: $73
	ld l, d                                          ; $62ef: $6a
	ld l, c                                          ; $62f0: $69
	ld l, b                                          ; $62f1: $68
	ld h, a                                          ; $62f2: $67
	dec hl                                           ; $62f3: $2b
	ld d, d                                          ; $62f4: $52
	ld c, d                                          ; $62f5: $4a
	dec hl                                           ; $62f6: $2b
	dec hl                                           ; $62f7: $2b
	ld [hl], h                                       ; $62f8: $74
	ld [hl], l                                       ; $62f9: $75
	dec hl                                           ; $62fa: $2b
	add e                                            ; $62fb: $83
	dec hl                                           ; $62fc: $2b
	ld l, [hl]                                       ; $62fd: $6e
	ld l, l                                          ; $62fe: $6d
	dec hl                                           ; $62ff: $2b
	ld h, [hl]                                       ; $6300: $66
	ld h, e                                          ; $6301: $63
	ld e, a                                          ; $6302: $5f
	dec hl                                           ; $6303: $2b
	ld c, c                                          ; $6304: $49
	ld c, b                                          ; $6305: $48
	ld b, a                                          ; $6306: $47

Jump_018_6307:
	dec hl                                           ; $6307: $2b
	dec hl                                           ; $6308: $2b
	ld a, b                                          ; $6309: $78
	ld a, c                                          ; $630a: $79
	dec hl                                           ; $630b: $2b
	dec hl                                           ; $630c: $2b
	ld [hl], a                                       ; $630d: $77
	halt                                             ; $630e: $76
	dec hl                                           ; $630f: $2b
	ld e, [hl]                                       ; $6310: $5e
	ld e, e                                          ; $6311: $5b
	ld e, d                                          ; $6312: $5a
	dec hl                                           ; $6313: $2b
	dec hl                                           ; $6314: $2b
	ld b, [hl]                                       ; $6315: $46
	ld b, e                                          ; $6316: $43
	ld b, d                                          ; $6317: $42
	ld h, a                                          ; $6318: $67
	add b                                            ; $6319: $80
	add b                                            ; $631a: $80
	add hl, sp                                       ; $631b: $39
	jr c, jr_018_6355                                ; $631c: $38 $37

	ld c, [hl]                                       ; $631e: $4e
	dec hl                                           ; $631f: $2b
	inc sp                                           ; $6320: $33
	ld [hl-], a                                      ; $6321: $32
	dec hl                                           ; $6322: $2b
	dec hl                                           ; $6323: $2b
	ccf                                              ; $6324: $3f
	ld a, $2b                                        ; $6325: $3e $2b
	dec hl                                           ; $6327: $2b
	dec sp                                           ; $6328: $3b
	ld a, [hl-]                                      ; $6329: $3a
	dec hl                                           ; $632a: $2b
	ld [hl], $35                                     ; $632b: $36 $35
	inc [hl]                                         ; $632d: $34
	dec hl                                           ; $632e: $2b
	dec hl                                           ; $632f: $2b
	cpl                                              ; $6330: $2f
	ld l, $2b                                        ; $6331: $2e $2b
	rlca                                             ; $6333: $07
	ld a, [hl]                                       ; $6334: $7e
	ld a, a                                          ; $6335: $7f
	add b                                            ; $6336: $80
	rlca                                             ; $6337: $07
	sub d                                            ; $6338: $92
	sub e                                            ; $6339: $93
	add [hl]                                         ; $633a: $86
	sub h                                            ; $633b: $94
	rlca                                             ; $633c: $07
	sbc h                                            ; $633d: $9c
	sbc e                                            ; $633e: $9b
	sbc d                                            ; $633f: $9a
	rlca                                             ; $6340: $07
	adc h                                            ; $6341: $8c
	adc e                                            ; $6342: $8b
	adc c                                            ; $6343: $89
	rlca                                             ; $6344: $07
	add d                                            ; $6345: $82
	add e                                            ; $6346: $83
	add b                                            ; $6347: $80
	rlca                                             ; $6348: $07
	sub [hl]                                         ; $6349: $96
	sub a                                            ; $634a: $97
	sub h                                            ; $634b: $94
	rlca                                             ; $634c: $07
	sbc c                                            ; $634d: $99
	sbc b                                            ; $634e: $98
	sub l                                            ; $634f: $95
	rlca                                             ; $6350: $07
	adc b                                            ; $6351: $88
	add a                                            ; $6352: $87
	add [hl]                                         ; $6353: $86
	ld h, e                                          ; $6354: $63

jr_018_6355:
	ldh a, [hDisp1_WX]                                     ; $6355: $f0 $96
	sub c                                            ; $6357: $91
	adc l                                            ; $6358: $8d
	sbc d                                            ; $6359: $9a
	rlca                                             ; $635a: $07
	add l                                            ; $635b: $85
	add h                                            ; $635c: $84
	adc c                                            ; $635d: $89
	rlca                                             ; $635e: $07
	adc d                                            ; $635f: $8a
	ld a, e                                          ; $6360: $7b
	ret nc                                           ; $6361: $d0

	sbc [hl]                                         ; $6362: $9e
	sbc [hl]                                         ; $6363: $9e
	ld l, e                                          ; $6364: $6b
	ldh a, [rPCM34]                                  ; $6365: $f0 $77
	ret nc                                           ; $6367: $d0

	sbc b                                            ; $6368: $98
	adc [hl]                                         ; $6369: $8e
	adc a                                            ; $636a: $8f
	sub b                                            ; $636b: $90
	rlca                                             ; $636c: $07
	sbc [hl]                                         ; $636d: $9e
	sbc a                                            ; $636e: $9f
	sbc l                                            ; $636f: $9d
	ld h, e                                          ; $6370: $63
	ldh [$67], a                                     ; $6371: $e0 $67
	ldh a, [$9e]                                     ; $6373: $f0 $9e
	sbc c                                            ; $6375: $99
	ld a, e                                          ; $6376: $7b
	ldh a, [$9e]                                     ; $6377: $f0 $9e
	adc b                                            ; $6379: $88
	ld [hl], a                                       ; $637a: $77
	ldh a, [$7b]                                     ; $637b: $f0 $7b
	ret nz                                           ; $637d: $c0

	sbc [hl]                                         ; $637e: $9e

Jump_018_637f:
	add c                                            ; $637f: $81
	ld e, e                                          ; $6380: $5b
	and b                                            ; $6381: $a0
	ld [hl], a                                       ; $6382: $77
	ldh a, [rPCM34]                                  ; $6383: $f0 $77
	ret nz                                           ; $6385: $c0

	ld d, a                                          ; $6386: $57
	ldh [rHDMA3], a                                  ; $6387: $e0 $53
	or b                                             ; $6389: $b0
	ld l, e                                          ; $638a: $6b
	ret nc                                           ; $638b: $d0

	sbc [hl]                                         ; $638c: $9e
	ld a, l                                          ; $638d: $7d
	ld a, e                                          ; $638e: $7b
	ret nc                                           ; $638f: $d0

	ld a, e                                          ; $6390: $7b
	ldh [$dc], a                                     ; $6391: $e0 $dc
	and b                                            ; $6393: $a0
	sbc $ad                                          ; $6394: $de $ad
	ld a, e                                          ; $6396: $7b
	db $fc                                           ; $6397: $fc
	sbc d                                            ; $6398: $9a
	cp e                                             ; $6399: $bb
	and b                                            ; $639a: $a0
	xor l                                            ; $639b: $ad
	add $c7                                          ; $639c: $c6 $c7
	db $dd                                           ; $639e: $dd
	and b                                            ; $639f: $a0
	sub e                                            ; $63a0: $93
	or b                                             ; $63a1: $b0
	or c                                             ; $63a2: $b1
	or d                                             ; $63a3: $b2
	or e                                             ; $63a4: $b3
	cp h                                             ; $63a5: $bc
	cp l                                             ; $63a6: $bd
	cp [hl]                                          ; $63a7: $be
	cp a                                             ; $63a8: $bf
	ret z                                            ; $63a9: $c8

	ret                                              ; $63aa: $c9


	jp z, $ddcb                                      ; $63ab: $ca $cb $dd

	and b                                            ; $63ae: $a0
	sub h                                            ; $63af: $94
	or h                                             ; $63b0: $b4
	or l                                             ; $63b1: $b5
	xor l                                            ; $63b2: $ad
	and b                                            ; $63b3: $a0
	ret nz                                           ; $63b4: $c0

	pop bc                                           ; $63b5: $c1
	xor l                                            ; $63b6: $ad
	and b                                            ; $63b7: $a0
	call z, $adcd                                    ; $63b8: $cc $cd $ad
	ld a, e                                          ; $63bb: $7b
	call nc, $d280                                   ; $63bc: $d4 $80 $d2
	db $d3                                           ; $63bf: $d3
	and b                                            ; $63c0: $a0
	xor l                                            ; $63c1: $ad
	sbc $df                                          ; $63c2: $de $df
	and b                                            ; $63c4: $a0
	xor l                                            ; $63c5: $ad
	ld [$a0eb], a                                    ; $63c6: $ea $eb $a0
	xor l                                            ; $63c9: $ad
	call c, $d4db                                    ; $63ca: $dc $db $d4
	push de                                          ; $63cd: $d5
	sub $d7                                          ; $63ce: $d6 $d7
	ldh [$e1], a                                     ; $63d0: $e0 $e1
	ldh [c], a                                       ; $63d2: $e2
	db $e3                                           ; $63d3: $e3
	jp hl                                            ; $63d4: $e9


	add sp, -$19                                     ; $63d5: $e8 $e7
	and $da                                          ; $63d7: $e6 $da
	pop de                                           ; $63d9: $d1
	ret nc                                           ; $63da: $d0

	rst GetHLinHL                                          ; $63db: $cf
	ret c                                            ; $63dc: $d8

	sub a                                            ; $63dd: $97
	reti                                             ; $63de: $d9


	xor l                                            ; $63df: $ad
	and b                                            ; $63e0: $a0
	db $e4                                           ; $63e1: $e4
	push hl                                          ; $63e2: $e5
	xor l                                            ; $63e3: $ad
	and b                                            ; $63e4: $a0
	db $dd                                           ; $63e5: $dd
	ld a, e                                          ; $63e6: $7b
	xor l                                            ; $63e7: $ad
	sbc [hl]                                         ; $63e8: $9e
	adc $7b                                          ; $63e9: $ce $7b
	db $fc                                           ; $63eb: $fc
	ld a, a                                          ; $63ec: $7f
	call c, $c595                                    ; $63ed: $dc $95 $c5
	call nz, $ada0                                   ; $63f0: $c4 $a0 $ad
	or a                                             ; $63f3: $b7
	or [hl]                                          ; $63f4: $b6
	and b                                            ; $63f5: $a0
	xor l                                            ; $63f6: $ad
	xor b                                            ; $63f7: $a8
	and a                                            ; $63f8: $a7
	db $dd                                           ; $63f9: $dd
	and b                                            ; $63fa: $a0
	sub e                                            ; $63fb: $93
	jp $bac2                                         ; $63fc: $c3 $c2 $ba


	cp c                                             ; $63ff: $b9
	xor a                                            ; $6400: $af
	xor [hl]                                         ; $6401: $ae
	xor h                                            ; $6402: $ac
	xor e                                            ; $6403: $ab
	and [hl]                                         ; $6404: $a6
	and l                                            ; $6405: $a5
	and h                                            ; $6406: $a4
	and e                                            ; $6407: $a3
	db $dd                                           ; $6408: $dd
	and b                                            ; $6409: $a0
	sbc [hl]                                         ; $640a: $9e
	cp b                                             ; $640b: $b8
	ld a, e                                          ; $640c: $7b
	call c, $aa99                                    ; $640d: $dc $99 $aa
	xor c                                            ; $6410: $a9
	xor l                                            ; $6411: $ad
	and b                                            ; $6412: $a0
	and d                                            ; $6413: $a2
	and c                                            ; $6414: $a1
	ld a, e                                          ; $6415: $7b
	call nc, $a0de                                   ; $6416: $d4 $de $a0
	ld c, $00                                        ; $6419: $0e $00
	pop bc                                           ; $641b: $c1
	ld de, $ff03                                     ; $641c: $11 $03 $ff
	inc bc                                           ; $641f: $03
	rst $38                                          ; $6420: $ff
	inc bc                                           ; $6421: $03
	rst $38                                          ; $6422: $ff
	call nz, $e011                                   ; $6423: $c4 $11 $e0
	cp c                                             ; $6426: $b9
	ld d, h                                          ; $6427: $54
	ld bc, $cd9b                                     ; $6428: $01 $9b $cd
	call z, $cacb                                    ; $642b: $cc $cb $ca
	ld b, a                                          ; $642e: $47
	db $fc                                           ; $642f: $fc
	push af                                          ; $6430: $f5
	adc e                                            ; $6431: $8b
	ret                                              ; $6432: $c9


	ret z                                            ; $6433: $c8

	rst JumpTable                                          ; $6434: $c7
	add $c5                                          ; $6435: $c6 $c5
	call nz, $c2c3                                   ; $6437: $c4 $c3 $c2
	ret                                              ; $643a: $c9


	ret z                                            ; $643b: $c8

	pop bc                                           ; $643c: $c1
	ret nz                                           ; $643d: $c0

	cp a                                             ; $643e: $bf
	cp [hl]                                          ; $643f: $be
	cp l                                             ; $6440: $bd
	cp h                                             ; $6441: $bc
	cp e                                             ; $6442: $bb
	cp d                                             ; $6443: $ba
	pop bc                                           ; $6444: $c1
	ret nz                                           ; $6445: $c0

	push af                                          ; $6446: $f5
	sbc d                                            ; $6447: $9a
	cp c                                             ; $6448: $b9
	cp b                                             ; $6449: $b8
	or a                                             ; $644a: $b7
	or [hl]                                          ; $644b: $b6
	or l                                             ; $644c: $b5
	sbc $b3                                          ; $644d: $de $b3
	sbc c                                            ; $644f: $99
	or d                                             ; $6450: $b2
	or c                                             ; $6451: $b1
	or b                                             ; $6452: $b0
	xor a                                            ; $6453: $af
	xor [hl]                                         ; $6454: $ae
	xor l                                            ; $6455: $ad
	sbc $b3                                          ; $6456: $de $b3
	sbc h                                            ; $6458: $9c
	xor e                                            ; $6459: $ab
	xor d                                            ; $645a: $aa
	xor c                                            ; $645b: $a9
	push af                                          ; $645c: $f5
	sbc d                                            ; $645d: $9a
	xor b                                            ; $645e: $a8
	and a                                            ; $645f: $a7
	or e                                             ; $6460: $b3
	and [hl]                                         ; $6461: $a6
	and l                                            ; $6462: $a5
	sbc $b3                                          ; $6463: $de $b3
	sbc b                                            ; $6465: $98
	and h                                            ; $6466: $a4
	and e                                            ; $6467: $a3
	and d                                            ; $6468: $a2
	or e                                             ; $6469: $b3
	or e                                             ; $646a: $b3
	and c                                            ; $646b: $a1
	and b                                            ; $646c: $a0
	sbc $b3                                          ; $646d: $de $b3
	sbc l                                            ; $646f: $9d
	sbc a                                            ; $6470: $9f
	sbc [hl]                                         ; $6471: $9e
	push af                                          ; $6472: $f5
	adc e                                            ; $6473: $8b
	sbc l                                            ; $6474: $9d
	or e                                             ; $6475: $b3
	or e                                             ; $6476: $b3
	sbc h                                            ; $6477: $9c
	sbc e                                            ; $6478: $9b
	sbc d                                            ; $6479: $9a
	sbc c                                            ; $647a: $99
	or e                                             ; $647b: $b3
	or e                                             ; $647c: $b3
	sbc b                                            ; $647d: $98
	sub a                                            ; $647e: $97
	or e                                             ; $647f: $b3
	or e                                             ; $6480: $b3
	sub [hl]                                         ; $6481: $96
	sub l                                            ; $6482: $95
	sub h                                            ; $6483: $94
	sub e                                            ; $6484: $93
	or e                                             ; $6485: $b3
	or e                                             ; $6486: $b3
	sub d                                            ; $6487: $92
	push af                                          ; $6488: $f5
	adc e                                            ; $6489: $8b
	sub c                                            ; $648a: $91
	or e                                             ; $648b: $b3
	or e                                             ; $648c: $b3
	sub b                                            ; $648d: $90
	adc a                                            ; $648e: $8f
	adc [hl]                                         ; $648f: $8e
	adc l                                            ; $6490: $8d
	or e                                             ; $6491: $b3
	or e                                             ; $6492: $b3
	adc h                                            ; $6493: $8c
	adc e                                            ; $6494: $8b
	or e                                             ; $6495: $b3
	or e                                             ; $6496: $b3
	adc d                                            ; $6497: $8a
	adc c                                            ; $6498: $89
	adc b                                            ; $6499: $88
	add a                                            ; $649a: $87
	or e                                             ; $649b: $b3
	or e                                             ; $649c: $b3
	add [hl]                                         ; $649d: $86
	push af                                          ; $649e: $f5
	adc e                                            ; $649f: $8b
	add l                                            ; $64a0: $85
	or e                                             ; $64a1: $b3
	or e                                             ; $64a2: $b3
	add h                                            ; $64a3: $84
	add e                                            ; $64a4: $83
	add d                                            ; $64a5: $82
	add c                                            ; $64a6: $81
	or e                                             ; $64a7: $b3
	or e                                             ; $64a8: $b3
	add b                                            ; $64a9: $80
	ld a, a                                          ; $64aa: $7f
	or e                                             ; $64ab: $b3
	or e                                             ; $64ac: $b3
	ld a, [hl]                                       ; $64ad: $7e
	ld a, l                                          ; $64ae: $7d
	ld a, h                                          ; $64af: $7c
	ld a, e                                          ; $64b0: $7b
	or e                                             ; $64b1: $b3
	or e                                             ; $64b2: $b3
	ld a, d                                          ; $64b3: $7a
	push af                                          ; $64b4: $f5
	adc e                                            ; $64b5: $8b
	ld a, c                                          ; $64b6: $79
	ld a, b                                          ; $64b7: $78
	or e                                             ; $64b8: $b3
	or e                                             ; $64b9: $b3
	ld [hl], a                                       ; $64ba: $77
	halt                                             ; $64bb: $76
	ld [hl], l                                       ; $64bc: $75
	or e                                             ; $64bd: $b3
	or e                                             ; $64be: $b3
	ld [hl], h                                       ; $64bf: $74
	ld [hl], e                                       ; $64c0: $73
	or e                                             ; $64c1: $b3
	or e                                             ; $64c2: $b3
	xor h                                            ; $64c3: $ac
	ld [hl], d                                       ; $64c4: $72
	ld [hl], c                                       ; $64c5: $71
	xor h                                            ; $64c6: $ac
	or e                                             ; $64c7: $b3
	ld [hl], b                                       ; $64c8: $70
	ld l, a                                          ; $64c9: $6f
	push af                                          ; $64ca: $f5
	sbc l                                            ; $64cb: $9d
	call $de6e                                       ; $64cc: $cd $6e $de
	or e                                             ; $64cf: $b3
	sbc b                                            ; $64d0: $98
	ld l, l                                          ; $64d1: $6d
	ld l, h                                          ; $64d2: $6c
	or e                                             ; $64d3: $b3
	ld l, e                                          ; $64d4: $6b
	ld l, d                                          ; $64d5: $6a
	ld l, c                                          ; $64d6: $69
	ld l, b                                          ; $64d7: $68
	ld a, e                                          ; $64d8: $7b
	rst SubAFromDE                                          ; $64d9: $df
	sbc e                                            ; $64da: $9b
	ld h, a                                          ; $64db: $67
	ld h, [hl]                                       ; $64dc: $66
	or e                                             ; $64dd: $b3
	ld h, l                                          ; $64de: $65
	ld c, e                                          ; $64df: $4b
	nop                                              ; $64e0: $00
	adc a                                            ; $64e1: $8f
	ld h, h                                          ; $64e2: $64
	ld h, e                                          ; $64e3: $63
	or e                                             ; $64e4: $b3
	ld h, d                                          ; $64e5: $62
	ld h, c                                          ; $64e6: $61
	ld h, b                                          ; $64e7: $60
	ld e, a                                          ; $64e8: $5f
	ret z                                            ; $64e9: $c8

	pop bc                                           ; $64ea: $c1
	ld e, [hl]                                       ; $64eb: $5e
	ld e, l                                          ; $64ec: $5d
	ld e, h                                          ; $64ed: $5c
	or e                                             ; $64ee: $b3
	ld e, e                                          ; $64ef: $5b
	ld e, d                                          ; $64f0: $5a
	ld e, c                                          ; $64f1: $59
	ld c, e                                          ; $64f2: $4b
	nop                                              ; $64f3: $00
	adc l                                            ; $64f4: $8d
	or c                                             ; $64f5: $b1
	ld e, b                                          ; $64f6: $58
	ld d, a                                          ; $64f7: $57
	ld d, [hl]                                       ; $64f8: $56
	ld d, l                                          ; $64f9: $55
	ld d, h                                          ; $64fa: $54
	xor c                                            ; $64fb: $a9
	cp c                                             ; $64fc: $b9
	or c                                             ; $64fd: $b1
	or b                                             ; $64fe: $b0
	ld d, e                                          ; $64ff: $53
	ld d, d                                          ; $6500: $52
	ld d, c                                          ; $6501: $51
	ld d, b                                          ; $6502: $50
	ld c, a                                          ; $6503: $4f
	ld c, [hl]                                       ; $6504: $4e
	or c                                             ; $6505: $b1
	or b                                             ; $6506: $b0
	ld d, e                                          ; $6507: $53
	nop                                              ; $6508: $00
	sbc b                                            ; $6509: $98
	ld c, l                                          ; $650a: $4d
	ld c, h                                          ; $650b: $4c
	ld c, e                                          ; $650c: $4b
	ld c, d                                          ; $650d: $4a
	ld c, c                                          ; $650e: $49
	ld c, b                                          ; $650f: $48
	ld b, a                                          ; $6510: $47
	ld a, e                                          ; $6511: $7b
	db $fc                                           ; $6512: $fc
	sbc c                                            ; $6513: $99
	ld b, [hl]                                       ; $6514: $46
	ld b, l                                          ; $6515: $45
	ld b, h                                          ; $6516: $44
	ld c, b                                          ; $6517: $48
	ld b, a                                          ; $6518: $47
	ld b, e                                          ; $6519: $43
	ld [hl], a                                       ; $651a: $77
	db $f4                                           ; $651b: $f4
	push af                                          ; $651c: $f5
	adc e                                            ; $651d: $8b
	ld b, d                                          ; $651e: $42
	ld b, c                                          ; $651f: $41
	ld b, b                                          ; $6520: $40
	ccf                                              ; $6521: $3f
	ld a, $3d                                        ; $6522: $3e $3d
	inc a                                            ; $6524: $3c
	dec sp                                           ; $6525: $3b
	ld a, [hl-]                                      ; $6526: $3a
	add hl, sp                                       ; $6527: $39
	jr c, @+$39                                      ; $6528: $38 $37

	ld [hl], $35                                     ; $652a: $36 $35
	inc [hl]                                         ; $652c: $34
	inc sp                                           ; $652d: $33
	ld [hl-], a                                      ; $652e: $32
	ld sp, $2f30                                     ; $652f: $31 $30 $2f
	push af                                          ; $6532: $f5
	sbc e                                            ; $6533: $9b
	ld l, $2d                                        ; $6534: $2e $2d
	pop bc                                           ; $6536: $c1
	ret nz                                           ; $6537: $c0

	ld a, d                                          ; $6538: $7a
	add h                                            ; $6539: $84
	sbc h                                            ; $653a: $9c
	inc l                                            ; $653b: $2c
	ret                                              ; $653c: $c9


	dec hl                                           ; $653d: $2b
	ld [hl], e                                       ; $653e: $73
	ld hl, sp+$73                                    ; $653f: $f8 $73
	db $fc                                           ; $6541: $fc
	push af                                          ; $6542: $f5
	adc e                                            ; $6543: $8b
	ld a, [hl+]                                      ; $6544: $2a
	add hl, hl                                       ; $6545: $29
	jr z, jr_018_656f                                ; $6546: $28 $27

	ld h, $25                                        ; $6548: $26 $25
	inc h                                            ; $654a: $24
	inc hl                                           ; $654b: $23
	ld [hl+], a                                      ; $654c: $22
	ld hl, $1f20                                     ; $654d: $21 $20 $1f
	ld e, $1d                                        ; $6550: $1e $1d
	inc e                                            ; $6552: $1c
	dec de                                           ; $6553: $1b
	ld a, [de]                                       ; $6554: $1a
	add hl, de                                       ; $6555: $19
	jr jr_018_656f                                   ; $6556: $18 $17

	push af                                          ; $6558: $f5
	adc e                                            ; $6559: $8b
	ld d, $15                                        ; $655a: $16 $15
	inc d                                            ; $655c: $14
	inc de                                           ; $655d: $13
	ld [de], a                                       ; $655e: $12
	ld de, $0f10                                     ; $655f: $11 $10 $0f
	ld c, $0d                                        ; $6562: $0e $0d
	inc c                                            ; $6564: $0c
	dec bc                                           ; $6565: $0b
	ld a, [bc]                                       ; $6566: $0a
	add hl, bc                                       ; $6567: $09
	ld [$0607], sp                                   ; $6568: $08 $07 $06
	dec b                                            ; $656b: $05
	inc b                                            ; $656c: $04
	inc bc                                           ; $656d: $03
	ld d, e                                          ; $656e: $53

jr_018_656f:
	nop                                              ; $656f: $00
	ld [hl], d                                       ; $6570: $72
	inc c                                            ; $6571: $0c
	sbc l                                            ; $6572: $9d
	ld [bc], a                                       ; $6573: $02
	ld bc, $001e                                     ; $6574: $01 $1e $00
	ld e, a                                          ; $6577: $5f
	adc b                                            ; $6578: $88
	ld h, a                                          ; $6579: $67
	db $fc                                           ; $657a: $fc
	ld h, $00                                        ; $657b: $26 $00
	ldh [$df], a                                     ; $657d: $e0 $df
	sbc [hl]                                         ; $657f: $9e

jr_018_6580:
	jr nz, jr_018_6580                               ; $6580: $20 $fe

	sbc [hl]                                         ; $6582: $9e
	ld bc, $9df2                                     ; $6583: $01 $f2 $9d
	ld bc, $f810                                     ; $6586: $01 $10 $f8
	sbc l                                            ; $6589: $9d
	ld [bc], a                                       ; $658a: $02
	ld [hl+], a                                      ; $658b: $22
	ld a, e                                          ; $658c: $7b
	rst SubAFromDE                                          ; $658d: $df
	sbc l                                            ; $658e: $9d
	ld bc, $6311                                     ; $658f: $01 $11 $63
	rst AddAOntoHL                                          ; $6592: $ef
	rlca                                             ; $6593: $07
	ldh a, [$9d]                                     ; $6594: $f0 $9d
	nop                                              ; $6596: $00
	ld [hl+], a                                      ; $6597: $22
	ld [hl], a                                       ; $6598: $77
	ret nz                                           ; $6599: $c0

	ld e, e                                          ; $659a: $5b
	ldh a, [$fc]                                     ; $659b: $f0 $fc
	ld b, a                                          ; $659d: $47
	ldh a, [$e0]                                     ; $659e: $f0 $e0
	ld a, [hl]                                       ; $65a0: $7e
	ld b, c                                          ; $65a1: $41
	nop                                              ; $65a2: $00
	adc a                                            ; $65a3: $8f
	add [hl]                                         ; $65a4: $86
	add a                                            ; $65a5: $87
	xor h                                            ; $65a6: $ac
	xor l                                            ; $65a7: $ad
	sub [hl]                                         ; $65a8: $96
	cp e                                             ; $65a9: $bb
	cp h                                             ; $65aa: $bc
	cp l                                             ; $65ab: $bd
	dec c                                            ; $65ac: $0d
	and a                                            ; $65ad: $a7
	cp b                                             ; $65ae: $b8
	or a                                             ; $65af: $b7
	inc b                                            ; $65b0: $04
	inc bc                                           ; $65b1: $03
	adc h                                            ; $65b2: $8c
	adc e                                            ; $65b3: $8b
	ld a, e                                          ; $65b4: $7b
	ldh a, [hDisp1_WX]                                     ; $65b5: $f0 $96
	or c                                             ; $65b7: $b1
	sbc d                                            ; $65b8: $9a
	sbc e                                            ; $65b9: $9b
	ret nz                                           ; $65ba: $c0

	pop bc                                           ; $65bb: $c1
	dec c                                            ; $65bc: $0d
	ld a, [bc]                                       ; $65bd: $0a
	or [hl]                                          ; $65be: $b6
	or l                                             ; $65bf: $b5
	ld [hl], a                                       ; $65c0: $77
	ldh a, [hDisp1_LCDC]                                     ; $65c1: $f0 $8f
	or d                                             ; $65c3: $b2
	add a                                            ; $65c4: $87
	or h                                             ; $65c5: $b4
	or c                                             ; $65c6: $b1
	sbc [hl]                                         ; $65c7: $9e
	sbc a                                            ; $65c8: $9f
	cp a                                             ; $65c9: $bf
	cp [hl]                                          ; $65ca: $be
	sub e                                            ; $65cb: $93
	sub d                                            ; $65cc: $92
	or e                                             ; $65cd: $b3
	or b                                             ; $65ce: $b0
	xor e                                            ; $65cf: $ab
	inc bc                                           ; $65d0: $03
	adc h                                            ; $65d1: $8c
	xor d                                            ; $65d2: $aa
	ld [hl], a                                       ; $65d3: $77
	ret nc                                           ; $65d4: $d0

	sub e                                            ; $65d5: $93
	and d                                            ; $65d6: $a2
	and e                                            ; $65d7: $a3
	cp d                                             ; $65d8: $ba
	cp c                                             ; $65d9: $b9
	dec c                                            ; $65da: $0d
	ld b, $af                                        ; $65db: $06 $af

jr_018_65dd:
	xor [hl]                                         ; $65dd: $ae
	inc b                                            ; $65de: $04
	ld [bc], a                                       ; $65df: $02
	adc h                                            ; $65e0: $8c
	adc e                                            ; $65e1: $8b
	dec c                                            ; $65e2: $0d
	nop                                              ; $65e3: $00
	sbc l                                            ; $65e4: $9d
	ld d, l                                          ; $65e5: $55
	ld h, [hl]                                       ; $65e6: $66
	ld a, e                                          ; $65e7: $7b
	cp $9c                                           ; $65e8: $fe $9c
	ld [hl], a                                       ; $65ea: $77
	ld d, l                                          ; $65eb: $55
	ld b, l                                          ; $65ec: $45
	daa                                              ; $65ed: $27
	ld hl, sp-$37                                    ; $65ee: $f8 $c9
	dec b                                            ; $65f0: $05
	pop af                                           ; $65f1: $f1
	db $db                                           ; $65f2: $db
	rst $38                                          ; $65f3: $ff
	ld a, a                                          ; $65f4: $7f
	ld sp, hl                                        ; $65f5: $f9
	ld [hl], a                                       ; $65f6: $77
	cp $86                                           ; $65f7: $fe $86
	ld d, l                                          ; $65f9: $55
	xor d                                            ; $65fa: $aa
	xor d                                            ; $65fb: $aa
	ld d, l                                          ; $65fc: $55
	rlca                                             ; $65fd: $07
	and l                                            ; $65fe: $a5
	and $e7                                          ; $65ff: $e6 $e7
	cp d                                             ; $6601: $ba
	rst SubAFromBC                                          ; $6602: $e7
	ei                                               ; $6603: $fb
	rst SubAFromBC                                          ; $6604: $e7
	add sp, -$4c                                     ; $6605: $e8 $b4
	cp h                                             ; $6607: $bc
	rst $38                                          ; $6608: $ff
	and h                                            ; $6609: $a4
	rst SubAFromBC                                          ; $660a: $e7
	and d                                            ; $660b: $a2
	db $e3                                           ; $660c: $e3
	inc b                                            ; $660d: $04
	and a                                            ; $660e: $a7
	db $e4                                           ; $660f: $e4

jr_018_6610:
	rst SubAFromBC                                          ; $6610: $e7
	cp b                                             ; $6611: $b8
	ld e, e                                          ; $6612: $5b
	ldh a, [$80]                                     ; $6613: $f0 $80
	inc h                                            ; $6615: $24
	cp h                                             ; $6616: $bc
	inc h                                            ; $6617: $24
	cp h                                             ; $6618: $bc
	inc hl                                           ; $6619: $23
	cp h                                             ; $661a: $bc
	dec sp                                           ; $661b: $3b
	cp h                                             ; $661c: $bc
	ld [hl+], a                                      ; $661d: $22
	and l                                            ; $661e: $a5
	daa                                              ; $661f: $27
	cp a                                             ; $6620: $bf
	inc h                                            ; $6621: $24
	cp h                                             ; $6622: $bc
	jr z, jr_018_65dd                                ; $6623: $28 $b8

	ld de, $80ee                                     ; $6625: $11 $ee $80
	rst $38                                          ; $6628: $ff
	db $10                                           ; $6629: $10
	rst $38                                          ; $662a: $ff
	ld bc, $00fe                                     ; $662b: $01 $fe $00
	rst $38                                          ; $662e: $ff
	jr nz, jr_018_6610                               ; $662f: $20 $df

	inc bc                                           ; $6631: $03
	db $fc                                           ; $6632: $fc
	inc b                                            ; $6633: $04
	adc e                                            ; $6634: $8b
	rst $38                                          ; $6635: $ff
	ldh a, [rIE]                                     ; $6636: $f0 $ff
	xor h                                            ; $6638: $ac
	rst AddAOntoHL                                          ; $6639: $ef
	ld c, $0b                                        ; $663a: $0e $0b
	ld c, $0b                                        ; $663c: $0e $0b
	sbc e                                            ; $663e: $9b
	dec c                                            ; $663f: $0d
	ei                                               ; $6640: $fb
	db $fd                                           ; $6641: $fd
	rlca                                             ; $6642: $07
	dec b                                            ; $6643: $05
	rra                                              ; $6644: $1f
	add hl, bc                                       ; $6645: $09
	sub c                                            ; $6646: $91
	xor $00                                          ; $6647: $ee $00
	ld d, e                                          ; $6649: $53
	ldh [$8e], a                                     ; $664a: $e0 $8e
	or $f9                                           ; $664c: $f6 $f9
	and l                                            ; $664e: $a5
	db $eb                                           ; $664f: $eb
	ld b, $0b                                        ; $6650: $06 $0b
	inc b                                            ; $6652: $04
	rlca                                             ; $6653: $07
	sbc b                                            ; $6654: $98
	rrca                                             ; $6655: $0f
	ld hl, sp-$01                                    ; $6656: $f8 $ff
	inc b                                            ; $6658: $04
	rlca                                             ; $6659: $07
	inc d                                            ; $665a: $14
	rlca                                             ; $665b: $07
	ld de, $e07b                                     ; $665c: $11 $7b $e0
	sbc [hl]                                         ; $665f: $9e
	ld [$e073], sp                                   ; $6660: $08 $73 $e0
	sbc l                                            ; $6663: $9d
	db $10                                           ; $6664: $10
	rst AddAOntoHL                                          ; $6665: $ef
	ld [hl], a                                       ; $6666: $77
	ldh [hDisp1_WX], a                                     ; $6667: $e0 $96
	rst FarCall                                          ; $6669: $f7
	ld sp, hl                                        ; $666a: $f9
	xor a                                            ; $666b: $af
	jp hl                                            ; $666c: $e9


	rrca                                             ; $666d: $0f
	dec c                                            ; $666e: $0d
	inc bc                                           ; $666f: $03
	dec b                                            ; $6670: $05
	sbc [hl]                                         ; $6671: $9e
	ld l, e                                          ; $6672: $6b
	ldh [$97], a                                     ; $6673: $e0 $97
	pop af                                           ; $6675: $f1
	xor [hl]                                         ; $6676: $ae
	ldh [$bf], a                                     ; $6677: $e0 $bf
	add sp, $3f                                      ; $6679: $e8 $3f
	pop bc                                           ; $667b: $c1
	ld a, [hl]                                       ; $667c: $7e
	ld a, e                                          ; $667d: $7b
	sbc d                                            ; $667e: $9a
	ld [hl], e                                       ; $667f: $73
	ldh [$9d], a                                     ; $6680: $e0 $9d
	cp $ff                                           ; $6682: $fe $ff
	ld a, e                                          ; $6684: $7b
	ldh [$9b], a                                     ; $6685: $e0 $9b
	ld [$0407], sp                                   ; $6687: $08 $07 $04
	sbc e                                            ; $668a: $9b
	ld l, e                                          ; $668b: $6b
	ldh [$7f], a                                     ; $668c: $e0 $7f
	ld a, d                                          ; $668e: $7a
	sub [hl]                                         ; $668f: $96
	cp [hl]                                          ; $6690: $be
	jp c, $a2fe                                      ; $6691: $da $fe $a2

	rst AddAOntoHL                                          ; $6694: $ef
	or [hl]                                          ; $6695: $b6
	cp e                                             ; $6696: $bb
	cp $23                                           ; $6697: $fe $23
	ld a, e                                          ; $6699: $7b
	ld [hl], b                                       ; $669a: $70
	sub e                                            ; $669b: $93
	dec h                                            ; $669c: $25
	cp h                                             ; $669d: $bc
	add e                                            ; $669e: $83
	db $fc                                           ; $669f: $fc
	sub h                                            ; $66a0: $94
	ei                                               ; $66a1: $fb
	add b                                            ; $66a2: $80
	rst $38                                          ; $66a3: $ff
	ld a, a                                          ; $66a4: $7f
	rst $38                                          ; $66a5: $ff
	nop                                              ; $66a6: $00
	add b                                            ; $66a7: $80
	ld [hl], a                                       ; $66a8: $77
	ld l, $80                                        ; $66a9: $2e $80
	inc c                                            ; $66ab: $0c
	rst FarCall                                          ; $66ac: $f7
	or $ab                                           ; $66ad: $f6 $ab
	ei                                               ; $66af: $fb
	dec d                                            ; $66b0: $15
	or $0d                                           ; $66b1: $f6 $0d
	rst $38                                          ; $66b3: $ff
	inc de                                           ; $66b4: $13
	rst $38                                          ; $66b5: $ff
	ld bc, $f30e                                     ; $66b6: $01 $0e $f3
	db $ec                                           ; $66b9: $ec
	rla                                              ; $66ba: $17
	ld e, b                                          ; $66bb: $58
	xor a                                            ; $66bc: $af
	dec sp                                           ; $66bd: $3b
	and h                                            ; $66be: $a4
	ccf                                              ; $66bf: $3f
	xor c                                            ; $66c0: $a9
	dec a                                            ; $66c1: $3d
	or [hl]                                          ; $66c2: $b6
	ccf                                              ; $66c3: $3f
	cp c                                             ; $66c4: $b9
	ccf                                              ; $66c5: $3f
	or b                                             ; $66c6: $b0
	ld l, $b9                                        ; $66c7: $2e $b9
	ld h, $9c                                        ; $66c9: $26 $9c
	cp l                                             ; $66cb: $bd
	inc hl                                           ; $66cc: $23
	cp [hl]                                          ; $66cd: $be
	ld c, a                                          ; $66ce: $4f
	ret nc                                           ; $66cf: $d0

	sbc [hl]                                         ; $66d0: $9e
	adc h                                            ; $66d1: $8c
	ld [hl], e                                       ; $66d2: $73
	ret nc                                           ; $66d3: $d0

	sbc [hl]                                         ; $66d4: $9e
	cp $7b                                           ; $66d5: $fe $7b
	ret nc                                           ; $66d7: $d0

	sub a                                            ; $66d8: $97
	rst AddAOntoHL                                          ; $66d9: $ef
	ld sp, $03fe                                     ; $66da: $31 $fe $03
	rst SubAFromDE                                          ; $66dd: $df
	push hl                                          ; $66de: $e5
	ei                                               ; $66df: $fb
	inc c                                            ; $66e0: $0c
	ld [hl], a                                       ; $66e1: $77
	ret nc                                           ; $66e2: $d0

	sbc [hl]                                         ; $66e3: $9e
	ccf                                              ; $66e4: $3f
	ld a, e                                          ; $66e5: $7b
	ret nc                                           ; $66e6: $d0

	sub a                                            ; $66e7: $97
	ld a, $b3                                        ; $66e8: $3e $b3
	cpl                                              ; $66ea: $2f
	cp b                                             ; $66eb: $b8
	daa                                              ; $66ec: $27
	cp h                                             ; $66ed: $bc
	ld [hl+], a                                      ; $66ee: $22
	cp a                                             ; $66ef: $bf
	ld l, a                                          ; $66f0: $6f
	ret nc                                           ; $66f1: $d0

	ld a, d                                          ; $66f2: $7a
	adc $7a                                          ; $66f3: $ce $7a
	push bc                                          ; $66f5: $c5
	ld [hl], a                                       ; $66f6: $77
	and b                                            ; $66f7: $a0
	ld a, a                                          ; $66f8: $7f
	ei                                               ; $66f9: $fb
	sbc h                                            ; $66fa: $9c
	ld d, l                                          ; $66fb: $55
	nop                                              ; $66fc: $00
	xor d                                            ; $66fd: $aa
	or $77                                           ; $66fe: $f6 $77
	ret nz                                           ; $6700: $c0

	sub e                                            ; $6701: $93
	xor $3d                                          ; $6702: $ee $3d
	rst GetHLinHL                                          ; $6704: $cf
	inc hl                                           ; $6705: $23
	ei                                               ; $6706: $fb
	dec [hl]                                         ; $6707: $35

jr_018_6708:
	ld a, $c3                                        ; $6708: $3e $c3
	sbc $27                                          ; $670a: $de $27
	ei                                               ; $670c: $fb
	dec c                                            ; $670d: $0d
	ld [hl], a                                       ; $670e: $77
	ret nz                                           ; $670f: $c0

	sbc c                                            ; $6710: $99
	ld a, $b7                                        ; $6711: $3e $b7
	cp h                                             ; $6713: $bc
	cp d                                             ; $6714: $ba
	dec sp                                           ; $6715: $3b

jr_018_6716:
	scf                                              ; $6716: $37
	ld b, a                                          ; $6717: $47
	ret nz                                           ; $6718: $c0

	sub l                                            ; $6719: $95
	ret nz                                           ; $671a: $c0

	rst $38                                          ; $671b: $ff
	ldh [$3f], a                                     ; $671c: $e0 $3f
	db $ec                                           ; $671e: $ec
	scf                                              ; $671f: $37
	or $bb                                           ; $6720: $f6 $bb
	ei                                               ; $6722: $fb
	dec e                                            ; $6723: $1d
	ld a, e                                          ; $6724: $7b
	sub b                                            ; $6725: $90
	sub [hl]                                         ; $6726: $96
	cp e                                             ; $6727: $bb
	rst $38                                          ; $6728: $ff
	add hl, bc                                       ; $6729: $09
	rrca                                             ; $672a: $0f
	di                                               ; $672b: $f3
	rst AddAOntoHL                                          ; $672c: $ef
	rla                                              ; $672d: $17
	dec e                                            ; $672e: $1d
	rst AddAOntoHL                                          ; $672f: $ef
	ld l, a                                          ; $6730: $6f
	sub b                                            ; $6731: $90
	sub c                                            ; $6732: $91
	cp a                                             ; $6733: $bf
	cp e                                             ; $6734: $bb
	ccf                                              ; $6735: $3f
	ld [hl-], a                                      ; $6736: $32
	ld l, $b9                                        ; $6737: $2e $b9
	ld l, $bd                                        ; $6739: $2e $bd
	daa                                              ; $673b: $27
	cp [hl]                                          ; $673c: $be
	ld b, e                                          ; $673d: $43
	db $fc                                           ; $673e: $fc
	inc d                                            ; $673f: $14
	ei                                               ; $6740: $fb
	halt                                             ; $6741: $76
	ld e, e                                          ; $6742: $5b
	rst $38                                          ; $6743: $ff
	sbc h                                            ; $6744: $9c
	jr nz, @+$01                                     ; $6745: $20 $ff

	ld b, b                                          ; $6747: $40
	ld a, e                                          ; $6748: $7b
	sub b                                            ; $6749: $90
	halt                                             ; $674a: $76
	sub b                                            ; $674b: $90
	ld h, [hl]                                       ; $674c: $66
	ret nc                                           ; $674d: $d0

	ld a, a                                          ; $674e: $7f
	or h                                             ; $674f: $b4
	sbc [hl]                                         ; $6750: $9e
	add h                                            ; $6751: $84
	ld a, d                                          ; $6752: $7a
	sub b                                            ; $6753: $90
	sub c                                            ; $6754: $91
	jr nz, jr_018_6716                               ; $6755: $20 $bf

	inc hl                                           ; $6757: $23
	cp a                                             ; $6758: $bf
	dec h                                            ; $6759: $25
	cp [hl]                                          ; $675a: $be
	dec hl                                           ; $675b: $2b
	cp h                                             ; $675c: $bc
	dec a                                            ; $675d: $3d
	or e                                             ; $675e: $b3
	jr c, jr_018_6708                                ; $675f: $38 $a7

	dec a                                            ; $6761: $3d
	and e                                            ; $6762: $a3
	ld e, a                                          ; $6763: $5f
	ldh [$7e], a                                     ; $6764: $e0 $7e
	sub b                                            ; $6766: $90
	ld [hl], a                                       ; $6767: $77
	ldh [rPCM34], a                                  ; $6768: $e0 $77
	ld e, d                                          ; $676a: $5a
	sub e                                            ; $676b: $93
	cp b                                             ; $676c: $b8
	rst $38                                          ; $676d: $ff
	db $ec                                           ; $676e: $ec
	ld d, a                                          ; $676f: $57
	or $2b                                           ; $6770: $f6 $2b
	rst GetHLinHL                                          ; $6772: $cf
	ld sp, $bc63                                     ; $6773: $31 $63 $bc
	db $ed                                           ; $6776: $ed
	or $6f                                           ; $6777: $f6 $6f
	ret nc                                           ; $6779: $d0

	ld a, a                                          ; $677a: $7f
	halt                                             ; $677b: $76
	ld a, a                                          ; $677c: $7f
	ld [hl], d                                       ; $677d: $72
	ld b, a                                          ; $677e: $47
	ret nc                                           ; $677f: $d0

	ld a, e                                          ; $6780: $7b
	or b                                             ; $6781: $b0
	sbc l                                            ; $6782: $9d

jr_018_6783:
	ld a, h                                          ; $6783: $7c
	inc b                                            ; $6784: $04
	ld [hl], a                                       ; $6785: $77
	jr z, jr_018_6783                                ; $6786: $28 $fb

	sbc b                                            ; $6788: $98
	add d                                            ; $6789: $82
	nop                                              ; $678a: $00
	inc h                                            ; $678b: $24
	nop                                              ; $678c: $00
	db $db                                           ; $678d: $db
	nop                                              ; $678e: $00
	cp a                                             ; $678f: $bf
	ld hl, sp-$62                                    ; $6790: $f8 $9e
	adc b                                            ; $6792: $88
	ld a, e                                          ; $6793: $7b
	rla                                              ; $6794: $17
	sbc h                                            ; $6795: $9c
	ld l, d                                          ; $6796: $6a
	nop                                              ; $6797: $00
	db $dd                                           ; $6798: $dd
	db $fd                                           ; $6799: $fd
	rst SubAFromDE                                          ; $679a: $df
	ret nz                                           ; $679b: $c0

	sbc b                                            ; $679c: $98
	ldh a, [$30]                                     ; $679d: $f0 $30
	ld hl, sp+$0a                                    ; $679f: $f8 $0a
	ldh a, [$34]                                     ; $67a1: $f0 $34
	ret nz                                           ; $67a3: $c0

	ld a, e                                          ; $67a4: $7b
	ldh [$df], a                                     ; $67a5: $e0 $df
	ldh a, [hDisp1_SCX]                                     ; $67a7: $f0 $91
	cp $8e                                           ; $67a9: $fe $8e
	rst SubAFromDE                                          ; $67ab: $df
	and c                                            ; $67ac: $a1
	rst SubAFromDE                                          ; $67ad: $df
	and b                                            ; $67ae: $a0
	rst $38                                          ; $67af: $ff
	add b                                            ; $67b0: $80
	rst SubAFromDE                                          ; $67b1: $df
	and b                                            ; $67b2: $a0
	rst SubAFromDE                                          ; $67b3: $df
	and c                                            ; $67b4: $a1
	sbc $af                                          ; $67b5: $de $af
	ld hl, sp-$68                                    ; $67b7: $f8 $98
	adc d                                            ; $67b9: $8a
	nop                                              ; $67ba: $00
	dec h                                            ; $67bb: $25
	nop                                              ; $67bc: $00
	reti                                             ; $67bd: $d9


	nop                                              ; $67be: $00
	halt                                             ; $67bf: $76
	or $8a                                           ; $67c0: $f6 $8a
	xor l                                            ; $67c2: $ad
	nop                                              ; $67c3: $00
	ld d, h                                          ; $67c4: $54
	nop                                              ; $67c5: $00
	cp e                                             ; $67c6: $bb
	inc bc                                           ; $67c7: $03
	rst $38                                          ; $67c8: $ff
	ld c, e                                          ; $67c9: $4b
	ld [hl-], a                                      ; $67ca: $32
	ld a, e                                          ; $67cb: $7b
	ld [hl+], a                                      ; $67cc: $22
	rst $38                                          ; $67cd: $ff
	ld [hl+], a                                      ; $67ce: $22
	rst $38                                          ; $67cf: $ff
	ld d, d                                          ; $67d0: $52
	rst $38                                          ; $67d1: $ff
	ld [de], a                                       ; $67d2: $12
	ld a, a                                          ; $67d3: $7f
	ld e, [hl]                                       ; $67d4: $5e
	di                                               ; $67d5: $f3
	db $d3                                           ; $67d6: $d3
	pop af                                           ; $67d7: $f1
	sub a                                            ; $67d8: $97
	ld d, a                                          ; $67d9: $57
	xor e                                            ; $67da: $ab
	xor e                                            ; $67db: $ab
	ld d, l                                          ; $67dc: $55
	ld d, l                                          ; $67dd: $55
	xor e                                            ; $67de: $ab
	rst $38                                          ; $67df: $ff
	ld bc, $fe77                                     ; $67e0: $01 $77 $fe
	sbc e                                            ; $67e3: $9b
	cp $02                                           ; $67e4: $fe $02
	rst $38                                          ; $67e6: $ff
	rlca                                             ; $67e7: $07
	di                                               ; $67e8: $f3
	sbc [hl]                                         ; $67e9: $9e
	ld a, a                                          ; $67ea: $7f
	ld b, l                                          ; $67eb: $45
	ld b, d                                          ; $67ec: $42
	ldh a, [c]                                       ; $67ed: $f2
	ld a, l                                          ; $67ee: $7d
	rst SubAFromDE                                          ; $67ef: $df
	push hl                                          ; $67f0: $e5
	sbc h                                            ; $67f1: $9c
	inc bc                                           ; $67f2: $03
	nop                                              ; $67f3: $00
	rlca                                             ; $67f4: $07
	ld d, e                                          ; $67f5: $53
	or b                                             ; $67f6: $b0
	sub [hl]                                         ; $67f7: $96
	ldh [rAUD4LEN], a                                ; $67f8: $e0 $20
	ldh a, [$b0]                                     ; $67fa: $f0 $b0
	ld e, $12                                        ; $67fc: $1e $12
	rrca                                             ; $67fe: $0f
	ld c, $23                                        ; $67ff: $0e $23
	ld l, a                                          ; $6801: $6f
	ld [hl], b                                       ; $6802: $70
	ld a, a                                          ; $6803: $7f
	cp $92                                           ; $6804: $fe $92
	jp c, Jump_018_5273                              ; $6806: $da $73 $52

	inc bc                                           ; $6809: $03
	inc bc                                           ; $680a: $03
	ccf                                              ; $680b: $3f
	jr nz, jr_018_688d                               ; $680c: $20 $7f

	ld h, b                                          ; $680e: $60
	ld a, a                                          ; $680f: $7f
	ld l, a                                          ; $6810: $6f
	ld a, e                                          ; $6811: $7b
	ld l, e                                          ; $6812: $6b
	ld [hl], a                                       ; $6813: $77
	cp $9b                                           ; $6814: $fe $9b
	ld a, a                                          ; $6816: $7f
	ld l, e                                          ; $6817: $6b
	ldh [$e0], a                                     ; $6818: $e0 $e0
	ld a, e                                          ; $681a: $7b
	ld a, d                                          ; $681b: $7a
	ld a, a                                          ; $681c: $7f
	ld c, e                                          ; $681d: $4b
	sbc h                                            ; $681e: $9c
	ei                                               ; $681f: $fb
	ld l, a                                          ; $6820: $6f
	ld l, e                                          ; $6821: $6b
	ld [hl], a                                       ; $6822: $77
	cp $97                                           ; $6823: $fe $97
	rst $38                                          ; $6825: $ff
	ld l, e                                          ; $6826: $6b
	jp $81c3                                         ; $6827: $c3 $c3 $81


	add c                                            ; $682a: $81
	sbc c                                            ; $682b: $99
	sbc c                                            ; $682c: $99
	sbc $ff                                          ; $682d: $de $ff
	ld a, a                                          ; $682f: $7f
	db $fc                                           ; $6830: $fc
	ld a, a                                          ; $6831: $7f
	cp $9c                                           ; $6832: $fe $9c
	or l                                             ; $6834: $b5
	sbc l                                            ; $6835: $9d
	sub l                                            ; $6836: $95
	push af                                          ; $6837: $f5
	rst SubAFromDE                                          ; $6838: $df
	ld bc, $03df                                     ; $6839: $01 $df $03
	push af                                          ; $683c: $f5
	adc e                                            ; $683d: $8b
	ld hl, sp+$08                                    ; $683e: $f8 $08
	ld hl, sp-$18                                    ; $6840: $f8 $e8
	ret nz                                           ; $6842: $c0

	cp a                                             ; $6843: $bf
	pop hl                                           ; $6844: $e1
	sbc [hl]                                         ; $6845: $9e
	pop af                                           ; $6846: $f1
	adc l                                            ; $6847: $8d
	call $dd89                                       ; $6848: $cd $89 $dd
	sub l                                            ; $684b: $95
	rst $38                                          ; $684c: $ff
	sub l                                            ; $684d: $95
	rst $38                                          ; $684e: $ff
	rst FarCall                                          ; $684f: $f7
	dec e                                            ; $6850: $1d
	dec d                                            ; $6851: $15
	di                                               ; $6852: $f3
	sbc e                                            ; $6853: $9b
	rra                                              ; $6854: $1f
	db $10                                           ; $6855: $10
	xor d                                            ; $6856: $aa
	ld d, l                                          ; $6857: $55
	ld [hl], h                                       ; $6858: $74
	adc d                                            ; $6859: $8a
	ld l, b                                          ; $685a: $68
	ld a, a                                          ; $685b: $7f
	ld a, a                                          ; $685c: $7f
	cp $7f                                           ; $685d: $fe $7f
	inc c                                            ; $685f: $0c
	sub a                                            ; $6860: $97
	di                                               ; $6861: $f3
	rrca                                             ; $6862: $0f
	db $fc                                           ; $6863: $fc
	ld b, $f5                                        ; $6864: $06 $f5
	rst FarCall                                          ; $6866: $f7
	ld h, h                                          ; $6867: $64
	rst $38                                          ; $6868: $ff
	ld [hl], a                                       ; $6869: $77
	cp $93                                           ; $686a: $fe $93
	cp h                                             ; $686c: $bc
	di                                               ; $686d: $f3
	and d                                            ; $686e: $a2
	rst FarCall                                          ; $686f: $f7
	call nz, $03ff                                   ; $6870: $c4 $ff $03
	cp $82                                           ; $6873: $fe $82
	cp $82                                           ; $6875: $fe $82
	rst $38                                          ; $6877: $ff
	ld [hl], a                                       ; $6878: $77
	cp $93                                           ; $6879: $fe $93
	add a                                            ; $687b: $87
	ld a, c                                          ; $687c: $79
	ld c, b                                          ; $687d: $48
	di                                               ; $687e: $f3

Call_018_687f:
	ld [hl], e                                       ; $687f: $73
	and b                                            ; $6880: $a0
	ld a, a                                          ; $6881: $7f
	ld h, b                                          ; $6882: $60
	xor [hl]                                         ; $6883: $ae
	xor $24                                          ; $6884: $ee $24
	rst $38                                          ; $6886: $ff
	ld [hl], a                                       ; $6887: $77
	cp $84                                           ; $6888: $fe $84
	dec sp                                           ; $688a: $3b
	adc $4a                                          ; $688b: $ce $4a

jr_018_688d:
	ld h, [hl]                                       ; $688d: $66
	ld a, [$0d0e]                                    ; $688e: $fa $0e $0d
	dec c                                            ; $6891: $0d
	ld a, [bc]                                       ; $6892: $0a
	ld c, a                                          ; $6893: $4f
	ld c, b                                          ; $6894: $48
	rst $38                                          ; $6895: $ff
	ld hl, sp-$01                                    ; $6896: $f8 $ff
	ld c, b                                          ; $6898: $48
	rst $38                                          ; $6899: $ff
	xor b                                            ; $689a: $a8
	rst AddAOntoHL                                          ; $689b: $ef
	and h                                            ; $689c: $a4
	rst $38                                          ; $689d: $ff
	nop                                              ; $689e: $00
	jp $8283                                         ; $689f: $c3 $83 $82


	add d                                            ; $68a2: $82
	sub d                                            ; $68a3: $92
	sub d                                            ; $68a4: $92
	sbc $ff                                          ; $68a5: $de $ff
	ld a, a                                          ; $68a7: $7f
	db $fc                                           ; $68a8: $fc
	sbc b                                            ; $68a9: $98
	xor d                                            ; $68aa: $aa
	add hl, sp                                       ; $68ab: $39
	add hl, hl                                       ; $68ac: $29
	rst $38                                          ; $68ad: $ff
	ccf                                              ; $68ae: $3f
	rst $38                                          ; $68af: $ff
	jr nc, jr_018_6905                               ; $68b0: $30 $53

	cp $79                                           ; $68b2: $fe $79
	or l                                             ; $68b4: $b5
	sbc c                                            ; $68b5: $99
	db $fd                                           ; $68b6: $fd
	nop                                              ; $68b7: $00
	rst $38                                          ; $68b8: $ff
	ld [bc], a                                       ; $68b9: $02
	rst $38                                          ; $68ba: $ff
	nop                                              ; $68bb: $00
	ld a, d                                          ; $68bc: $7a
	dec c                                            ; $68bd: $0d
	ld a, e                                          ; $68be: $7b
	cp $99                                           ; $68bf: $fe $99
	xor $e6                                          ; $68c1: $ee $e6
	rst AddAOntoHL                                          ; $68c3: $ef
	rlca                                             ; $68c4: $07
	rst AddAOntoHL                                          ; $68c5: $ef
	inc b                                            ; $68c6: $04
	ld a, e                                          ; $68c7: $7b
	cp $7f                                           ; $68c8: $fe $7f
	ld a, [$069b]                                    ; $68ca: $fa $9b $06
	xor $07                                          ; $68cd: $ee $07
	xor $72                                          ; $68cf: $ee $72
	ldh [$73], a                                     ; $68d1: $e0 $73
	halt                                             ; $68d3: $76
	rst SubAFromDE                                          ; $68d4: $df
	rst $38                                          ; $68d5: $ff
	sub h                                            ; $68d6: $94
	inc b                                            ; $68d7: $04
	add h                                            ; $68d8: $84
	ld a, a                                          ; $68d9: $7f
	add h                                            ; $68da: $84
	ld a, a                                          ; $68db: $7f
	rlca                                             ; $68dc: $07
	inc b                                            ; $68dd: $04
	rrca                                             ; $68de: $0f
	rrca                                             ; $68df: $0f
	rst $38                                          ; $68e0: $ff
	rra                                              ; $68e1: $1f
	ld a, b                                          ; $68e2: $78
	dec a                                            ; $68e3: $3d
	ld a, l                                          ; $68e4: $7d
	rst JumpTable                                          ; $68e5: $c7
	sub d                                            ; $68e6: $92
	db $10                                           ; $68e7: $10
	ccf                                              ; $68e8: $3f
	ret nc                                           ; $68e9: $d0

	ccf                                              ; $68ea: $3f
	rst SubAFromHL                                          ; $68eb: $d7
	ld hl, sp+$38                                    ; $68ec: $f8 $38
	ld hl, sp-$08                                    ; $68ee: $f8 $f8
	di                                               ; $68f0: $f3

jr_018_68f1:
	ldh a, [rIE]                                     ; $68f1: $f0 $ff
	jr jr_018_6970                                   ; $68f3: $18 $7b

	db $ec                                           ; $68f5: $ec
	sub c                                            ; $68f6: $91
	jr jr_018_68f1                                   ; $68f7: $18 $f8

	rra                                              ; $68f9: $1f
	ld hl, sp-$21                                    ; $68fa: $f8 $df
	jp nz, $c381                                     ; $68fc: $c2 $81 $c3

	rst $38                                          ; $68ff: $ff
	and l                                            ; $6900: $a5
	cp l                                             ; $6901: $bd
	cp l                                             ; $6902: $bd
	sbc c                                            ; $6903: $99
	cp l                                             ; $6904: $bd

jr_018_6905:
	halt                                             ; $6905: $76
	ldh a, [$8c]                                     ; $6906: $f0 $8c
	jp hl                                            ; $6908: $e9


	add hl, sp                                       ; $6909: $39
	add hl, hl                                       ; $690a: $29
	ld a, e                                          ; $690b: $7b
	ld l, a                                          ; $690c: $6f
	ld a, e                                          ; $690d: $7b
	ld l, a                                          ; $690e: $6f
	ei                                               ; $690f: $fb
	ld l, a                                          ; $6910: $6f
	ei                                               ; $6911: $fb
	rst AddAOntoHL                                          ; $6912: $ef
	ei                                               ; $6913: $fb
	rst AddAOntoHL                                          ; $6914: $ef
	rst $38                                          ; $6915: $ff
	ld l, a                                          ; $6916: $6f
	ld a, a                                          ; $6917: $7f
	ldh [$7f], a                                     ; $6918: $e0 $7f
	db $e3                                           ; $691a: $e3
	ld [hl], a                                       ; $691b: $77
	di                                               ; $691c: $f3
	ld l, a                                          ; $691d: $6f
	cp $7e                                           ; $691e: $fe $7e
	cp h                                             ; $6920: $bc
	ld a, d                                          ; $6921: $7a
	cp b                                             ; $6922: $b8
	sbc h                                            ; $6923: $9c
	ld h, e                                          ; $6924: $63
	nop                                              ; $6925: $00
	rst $38                                          ; $6926: $ff
	ld c, a                                          ; $6927: $4f
	db $10                                           ; $6928: $10
	rst SubAFromDE                                          ; $6929: $df
	inc bc                                           ; $692a: $03
	rst SubAFromDE                                          ; $692b: $df
	rlca                                             ; $692c: $07
	ld a, [hl]                                       ; $692d: $7e
	ld a, [de]                                       ; $692e: $1a
	ld a, l                                          ; $692f: $7d
	daa                                              ; $6930: $27
	sub a                                            ; $6931: $97
	rst $38                                          ; $6932: $ff
	db $fc                                           ; $6933: $fc
	rst $38                                          ; $6934: $ff
	inc c                                            ; $6935: $0c
	add a                                            ; $6936: $87
	ld a, h                                          ; $6937: $7c
	add a                                            ; $6938: $87
	ld a, l                                          ; $6939: $7d
	ld a, d                                          ; $693a: $7a
	call z, $367f                                    ; $693b: $cc $7f $36
	sbc h                                            ; $693e: $9c
	cp $ff                                           ; $693f: $fe $ff
	ld b, $7b                                        ; $6941: $06 $7b
	db $ec                                           ; $6943: $ec
	sbc c                                            ; $6944: $99
	inc b                                            ; $6945: $04
	cp $05                                           ; $6946: $fe $05
	cp $f5                                           ; $6948: $fe $f5
	add b                                            ; $694a: $80
	ld c, a                                          ; $694b: $4f
	ret nc                                           ; $694c: $d0

	sbc b                                            ; $694d: $98
	nop                                              ; $694e: $00
	dec sp                                           ; $694f: $3b
	inc sp                                           ; $6950: $33
	ld a, e                                          ; $6951: $7b
	ld [hl], b                                       ; $6952: $70
	ei                                               ; $6953: $fb
	db $10                                           ; $6954: $10
	ld a, e                                          ; $6955: $7b
	cp $8e                                           ; $6956: $fe $8e
	ldh a, [$fb]                                     ; $6958: $f0 $fb
	jr nc, jr_018_6997                               ; $695a: $30 $3b

	ldh a, [$3b]                                     ; $695c: $f0 $3b
	ldh a, [$8e]                                     ; $695e: $f0 $8e
	nop                                              ; $6960: $00
	add a                                            ; $6961: $87
	rst $38                                          ; $6962: $ff
	adc $7b                                          ; $6963: $ce $7b
	di                                               ; $6965: $f3
	or d                                             ; $6966: $b2
	sub e                                            ; $6967: $93
	sub d                                            ; $6968: $92
	ld a, e                                          ; $6969: $7b
	db $10                                           ; $696a: $10
	ld a, a                                          ; $696b: $7f
	cp $9e                                           ; $696c: $fe $9e
	or $73                                           ; $696e: $f6 $73

jr_018_6970:
	call nz, $fe5b                                   ; $6970: $c4 $5b $fe
	ld c, d                                          ; $6973: $4a
	and b                                            ; $6974: $a0
	sbc h                                            ; $6975: $9c
	nop                                              ; $6976: $00
	ld [$4ff5], a                                    ; $6977: $ea $f5 $4f
	ldh a, [$7c]                                     ; $697a: $f0 $7c
	xor c                                            ; $697c: $a9
	ld a, l                                          ; $697d: $7d
	res 3, c                                         ; $697e: $cb $99
	add b                                            ; $6980: $80
	ld a, [hl]                                       ; $6981: $7e
	call nz, $834f                                   ; $6982: $c4 $4f $83
	add e                                            ; $6985: $83
	db $dd                                           ; $6986: $dd
	add b                                            ; $6987: $80
	sbc e                                            ; $6988: $9b
	ret nz                                           ; $6989: $c0

	db $fc                                           ; $698a: $fc
	rst $38                                          ; $698b: $ff
	ld c, d                                          ; $698c: $4a
	ld a, e                                          ; $698d: $7b
	ld e, d                                          ; $698e: $5a
	sub l                                            ; $698f: $95
	add l                                            ; $6990: $85
	rst $38                                          ; $6991: $ff
	ld a, a                                          ; $6992: $7f
	rst GetHLinHL                                          ; $6993: $cf
	dec bc                                           ; $6994: $0b
	cp [hl]                                          ; $6995: $be
	and d                                            ; $6996: $a2

jr_018_6997:
	ccf                                              ; $6997: $3f
	rlca                                             ; $6998: $07
	ccf                                              ; $6999: $3f
	ld l, [hl]                                       ; $699a: $6e
	jp nz, $d677                                     ; $699b: $c2 $77 $d6

	ld a, e                                          ; $699e: $7b
	or $9e                                           ; $699f: $f6 $9e
	cp a                                             ; $69a1: $bf
	ld a, e                                          ; $69a2: $7b
	cp $6e                                           ; $69a3: $fe $6e
	jp z, $e072                                      ; $69a5: $ca $72 $e0

	ld [hl], e                                       ; $69a8: $73
	ld hl, sp+$72                                    ; $69a9: $f8 $72
	jp nz, $fc7f                                     ; $69ab: $c2 $7f $fc

	ld a, a                                          ; $69ae: $7f
	ld d, d                                          ; $69af: $52
	sbc e                                            ; $69b0: $9b
	or $fe                                           ; $69b1: $f6 $fe
	rlca                                             ; $69b3: $07
	cp $77                                           ; $69b4: $fe $77
	ld hl, sp+$7b                                    ; $69b6: $f8 $7b
	xor l                                            ; $69b8: $ad
	call c, Call_018_72ff                            ; $69b9: $dc $ff $72
	jp nz, $ffde                                     ; $69bc: $c2 $de $ff

	sub e                                            ; $69bf: $93
	rst FarCall                                          ; $69c0: $f7
	db $fd                                           ; $69c1: $fd
	rla                                              ; $69c2: $17
	rst $38                                          ; $69c3: $ff
	rst FarCall                                          ; $69c4: $f7
	rst $38                                          ; $69c5: $ff
	ldh [rIE], a                                     ; $69c6: $e0 $ff
	ccf                                              ; $69c8: $3f
	ccf                                              ; $69c9: $3f
	ld hl, sp+$3f                                    ; $69ca: $f8 $3f
	ld a, e                                          ; $69cc: $7b
	ldh a, [c]                                       ; $69cd: $f2
	sub c                                            ; $69ce: $91
	rst $38                                          ; $69cf: $ff
	rst SubAFromDE                                          ; $69d0: $df
	ld a, a                                          ; $69d1: $7f
	call c, $dfff                                    ; $69d2: $dc $ff $df
	rst $38                                          ; $69d5: $ff
	rrca                                             ; $69d6: $0f
	rst $38                                          ; $69d7: $ff
	ld hl, sp-$08                                    ; $69d8: $f8 $f8
	ccf                                              ; $69da: $3f
	ld hl, sp-$01                                    ; $69db: $f8 $ff
	ld a, e                                          ; $69dd: $7b
	or $9e                                           ; $69de: $f6 $9e
	adc e                                            ; $69e0: $8b
	ld a, e                                          ; $69e1: $7b
	cp $9e                                           ; $69e2: $fe $9e
	adc d                                            ; $69e4: $8a
	sbc $ff                                          ; $69e5: $de $ff
	sub [hl]                                         ; $69e7: $96
	ld a, [bc]                                       ; $69e8: $0a
	ld a, a                                          ; $69e9: $7f
	ld a, h                                          ; $69ea: $7c
	ld a, a                                          ; $69eb: $7f
	ld sp, hl                                        ; $69ec: $f9
	xor a                                            ; $69ed: $af
	ld d, l                                          ; $69ee: $55
	rst $38                                          ; $69ef: $ff
	db $eb                                           ; $69f0: $eb
	ld l, [hl]                                       ; $69f1: $6e
	jp nz, $c07a                                     ; $69f2: $c2 $7a $c0

	ld l, a                                          ; $69f5: $6f
	ld a, [$8a7d]                                    ; $69f6: $fa $7d $8a
	ld h, d                                          ; $69f9: $62
	ret nz                                           ; $69fa: $c0

	ld [hl], e                                       ; $69fb: $73
	ld a, [$2c7b]                                    ; $69fc: $fa $7b $2c
	ld a, [hl]                                       ; $69ff: $7e
	ld d, [hl]                                       ; $6a00: $56
	ld l, e                                          ; $6a01: $6b
	ld [hl+], a                                      ; $6a02: $22
	ld [hl], a                                       ; $6a03: $77
	ld a, [hl]                                       ; $6a04: $7e
	sbc h                                            ; $6a05: $9c
	db $fd                                           ; $6a06: $fd
	rst $38                                          ; $6a07: $ff
	dec c                                            ; $6a08: $0d
	ld a, e                                          ; $6a09: $7b
	db $fc                                           ; $6a0a: $fc
	ld a, a                                          ; $6a0b: $7f
	or l                                             ; $6a0c: $b5
	sbc d                                            ; $6a0d: $9a
	rrca                                             ; $6a0e: $0f
	adc a                                            ; $6a0f: $8f
	ld a, [hl]                                       ; $6a10: $7e
	adc a                                            ; $6a11: $8f
	ld a, a                                          ; $6a12: $7f
	ld a, e                                          ; $6a13: $7b
	or $9c                                           ; $6a14: $f6 $9c
	rst FarCall                                          ; $6a16: $f7
	ld e, a                                          ; $6a17: $5f
	or $7b                                           ; $6a18: $f6 $7b
	sbc d                                            ; $6a1a: $9a
	ld a, a                                          ; $6a1b: $7f
	inc a                                            ; $6a1c: $3c
	rst SubAFromDE                                          ; $6a1d: $df
	db $fc                                           ; $6a1e: $fc
	ld a, l                                          ; $6a1f: $7d
	or a                                             ; $6a20: $b7
	ld [hl], a                                       ; $6a21: $77
	sub b                                            ; $6a22: $90
	ld a, e                                          ; $6a23: $7b
	call c, $107a                                    ; $6a24: $dc $7a $10
	ld h, e                                          ; $6a27: $63
	cp $76                                           ; $6a28: $fe $76
	ret z                                            ; $6a2a: $c8

	ld a, a                                          ; $6a2b: $7f
	db $fc                                           ; $6a2c: $fc
	ld a, d                                          ; $6a2d: $7a
	ld [hl-], a                                      ; $6a2e: $32
	sbc [hl]                                         ; $6a2f: $9e
	scf                                              ; $6a30: $37
	halt                                             ; $6a31: $76
	jp nz, $f67b                                     ; $6a32: $c2 $7b $f6

	ld c, e                                          ; $6a35: $4b
	jr nc, @-$62                                     ; $6a36: $30 $9c

	rst $38                                          ; $6a38: $ff
	add [hl]                                         ; $6a39: $86
	ld a, a                                          ; $6a3a: $7f
	ld l, a                                          ; $6a3b: $6f
	xor b                                            ; $6a3c: $a8
	ld l, d                                          ; $6a3d: $6a
	cp b                                             ; $6a3e: $b8
	adc a                                            ; $6a3f: $8f
	cp $90                                           ; $6a40: $fe $90
	cp $2a                                           ; $6a42: $fe $2a
	cp $4a                                           ; $6a44: $fe $4a
	db $fc                                           ; $6a46: $fc
	sbc h                                            ; $6a47: $9c
	ldh [c], a                                       ; $6a48: $e2
	ld [hl+], a                                      ; $6a49: $22
	pop de                                           ; $6a4a: $d1
	ld d, c                                          ; $6a4b: $51
	cp e                                             ; $6a4c: $bb
	adc e                                            ; $6a4d: $8b
	ccf                                              ; $6a4e: $3f
	dec h                                            ; $6a4f: $25
	ld a, b                                          ; $6a50: $78
	jp z, $347f                                      ; $6a51: $ca $7f $34

	sbc [hl]                                         ; $6a54: $9e
	rst $38                                          ; $6a55: $ff
	rst SubAFromHL                                          ; $6a56: $d7
	add b                                            ; $6a57: $80
	sbc e                                            ; $6a58: $9b
	ld hl, sp+$6e                                    ; $6a59: $f8 $6e
	add [hl]                                         ; $6a5b: $86
	adc a                                            ; $6a5c: $8f
	ld l, c                                          ; $6a5d: $69
	ld a, [bc]                                       ; $6a5e: $0a
	sbc d                                            ; $6a5f: $9a
	ldh a, [$57]                                     ; $6a60: $f0 $57
	rst $38                                          ; $6a62: $ff
	di                                               ; $6a63: $f3
	db $fc                                           ; $6a64: $fc
	ld d, b                                          ; $6a65: $50
	ld h, d                                          ; $6a66: $62
	rst SubAFromDE                                          ; $6a67: $df
	rst $38                                          ; $6a68: $ff
	sbc h                                            ; $6a69: $9c
	ld [$303f], sp                                   ; $6a6a: $08 $3f $30
	ld [hl], a                                       ; $6a6d: $77
	cp $95                                           ; $6a6e: $fe $95
	sbc a                                            ; $6a70: $9f
	ldh a, [$3f]                                     ; $6a71: $f0 $3f
	cp a                                             ; $6a73: $bf
	jp nz, $81ff                                     ; $6a74: $c2 $ff $81

	rst AddAOntoHL                                          ; $6a77: $ef
	jr nc, @-$02                                     ; $6a78: $30 $fc

	ld l, a                                          ; $6a7a: $6f
	sbc d                                            ; $6a7b: $9a
	sub h                                            ; $6a7c: $94
	ccf                                              ; $6a7d: $3f
	ret nz                                           ; $6a7e: $c0

	rst SubAFromDE                                          ; $6a7f: $df
	ld a, a                                          ; $6a80: $7f
	rst SubAFromDE                                          ; $6a81: $df
	and b                                            ; $6a82: $a0
	ccf                                              ; $6a83: $3f
	ldh [rIE], a                                     ; $6a84: $e0 $ff
	ret nz                                           ; $6a86: $c0

	xor $7a                                          ; $6a87: $ee $7a
	call z, $307f                                    ; $6a89: $cc $7f $30
	ld a, a                                          ; $6a8c: $7f
	db $fc                                           ; $6a8d: $fc
	sbc l                                            ; $6a8e: $9d
	xor $e7                                          ; $6a8f: $ee $e7
	ld [hl], e                                       ; $6a91: $73
	ld h, $7d                                        ; $6a92: $26 $7d
	add b                                            ; $6a94: $80
	db $dd                                           ; $6a95: $dd
	rst $38                                          ; $6a96: $ff
	sbc l                                            ; $6a97: $9d
	ld b, d                                          ; $6a98: $42
	rst $38                                          ; $6a99: $ff
	ld a, d                                          ; $6a9a: $7a
	sub c                                            ; $6a9b: $91
	sub [hl]                                         ; $6a9c: $96
	bit 1, e                                         ; $6a9d: $cb $4b
	cp l                                             ; $6a9f: $bd
	cp l                                             ; $6aa0: $bd
	db $e3                                           ; $6aa1: $e3
	db $e3                                           ; $6aa2: $e3
	ccf                                              ; $6aa3: $3f
	ret nc                                           ; $6aa4: $d0

	db $fd                                           ; $6aa5: $fd
	halt                                             ; $6aa6: $76
	cp [hl]                                          ; $6aa7: $be
	ld a, a                                          ; $6aa8: $7f
	ld e, b                                          ; $6aa9: $58
	sbc [hl]                                         ; $6aaa: $9e
	db $fd                                           ; $6aab: $fd
	halt                                             ; $6aac: $76
	or e                                             ; $6aad: $b3
	rst SubAFromDE                                          ; $6aae: $df
	rst JumpTable                                          ; $6aaf: $c7
	ld a, l                                          ; $6ab0: $7d
	adc h                                            ; $6ab1: $8c
	ld a, a                                          ; $6ab2: $7f
	rst JumpTable                                          ; $6ab3: $c7
	sbc l                                            ; $6ab4: $9d
	ld a, a                                          ; $6ab5: $7f
	db $dd                                           ; $6ab6: $dd
	ld a, c                                          ; $6ab7: $79
	add d                                            ; $6ab8: $82
	sbc [hl]                                         ; $6ab9: $9e
	cp h                                             ; $6aba: $bc
	db $dd                                           ; $6abb: $dd
	rst $38                                          ; $6abc: $ff
	rst SubAFromDE                                          ; $6abd: $df
	sbc a                                            ; $6abe: $9f
	ld a, l                                          ; $6abf: $7d
	ld h, a                                          ; $6ac0: $67
	sbc $ff                                          ; $6ac1: $de $ff
	adc d                                            ; $6ac3: $8a
	ld de, rIE                                     ; $6ac4: $11 $ff $ff
	ei                                               ; $6ac7: $fb
	ccf                                              ; $6ac8: $3f
	rst AddAOntoHL                                          ; $6ac9: $ef
	rst AddAOntoHL                                          ; $6aca: $ef
	rst SubAFromDE                                          ; $6acb: $df
	rst SubAFromDE                                          ; $6acc: $df
	pop af                                           ; $6acd: $f1
	pop af                                           ; $6ace: $f1
	ld a, a                                          ; $6acf: $7f
	ldh [rIE], a                                     ; $6ad0: $e0 $ff
	db $e3                                           ; $6ad2: $e3
	rst $38                                          ; $6ad3: $ff

jr_018_6ad4:
	ld h, b                                          ; $6ad4: $60
	rst $38                                          ; $6ad5: $ff
	ldh [$7f], a                                     ; $6ad6: $e0 $7f
	ld h, c                                          ; $6ad8: $61
	db $dd                                           ; $6ad9: $dd
	rst $38                                          ; $6ada: $ff
	rst SubAFromDE                                          ; $6adb: $df
	db $e3                                           ; $6adc: $e3
	ld [hl], l                                       ; $6add: $75
	adc h                                            ; $6ade: $8c
	sbc l                                            ; $6adf: $9d
	rst $38                                          ; $6ae0: $ff
	add e                                            ; $6ae1: $83
	ld a, e                                          ; $6ae2: $7b
	ld a, [$db9d]                                    ; $6ae3: $fa $9d $db
	ld a, a                                          ; $6ae6: $7f
	ld a, e                                          ; $6ae7: $7b
	cp a                                             ; $6ae8: $bf
	rst SubAFromDE                                          ; $6ae9: $df
	ld c, $7e                                        ; $6aea: $0e $7e
	ld l, e                                          ; $6aec: $6b
	sbc $ff                                          ; $6aed: $de $ff
	sbc l                                            ; $6aef: $9d
	ld b, h                                          ; $6af0: $44
	rst $38                                          ; $6af1: $ff
	ld a, d                                          ; $6af2: $7a

jr_018_6af3:
	ld l, a                                          ; $6af3: $6f
	jp c, $7dff                                      ; $6af4: $da $ff $7d

	add [hl]                                         ; $6af7: $86
	ld a, [hl]                                       ; $6af8: $7e
	call z, Call_018_459b                            ; $6af9: $cc $9b $45
	rst $38                                          ; $6afc: $ff
	db $fc                                           ; $6afd: $fc
	rrca                                             ; $6afe: $0f
	db $db                                           ; $6aff: $db
	rst $38                                          ; $6b00: $ff
	ld a, a                                          ; $6b01: $7f
	db $f4                                           ; $6b02: $f4
	sbc b                                            ; $6b03: $98
	ld b, $5f                                        ; $6b04: $06 $5f
	rst FarCall                                          ; $6b06: $f7
	ld e, a                                          ; $6b07: $5f
	db $f4                                           ; $6b08: $f4
	rst $38                                          ; $6b09: $ff
	daa                                              ; $6b0a: $27
	ld a, d                                          ; $6b0b: $7a
	ld h, l                                          ; $6b0c: $65
	sbc h                                            ; $6b0d: $9c
	rst SubAFromDE                                          ; $6b0e: $df
	and e                                            ; $6b0f: $a3
	and e                                            ; $6b10: $a3
	ld [hl], d                                       ; $6b11: $72
	ld [$ffdf], a                                    ; $6b12: $ea $df $ff
	sbc [hl]                                         ; $6b15: $9e
	jr nz, jr_018_6af3                               ; $6b16: $20 $db

	rst $38                                          ; $6b18: $ff
	rst SubAFromDE                                          ; $6b19: $df
	adc e                                            ; $6b1a: $8b
	sbc $ff                                          ; $6b1b: $de $ff
	ld a, l                                          ; $6b1d: $7d
	ldh a, [c]                                       ; $6b1e: $f2
	ld a, a                                          ; $6b1f: $7f
	ld [hl], h                                       ; $6b20: $74
	sbc h                                            ; $6b21: $9c
	or b                                             ; $6b22: $b0
	rst SubAFromDE                                          ; $6b23: $df
	ret nz                                           ; $6b24: $c0

	sbc $ff                                          ; $6b25: $de $ff
	ld a, [hl]                                       ; $6b27: $7e
	sbc $77                                          ; $6b28: $de $77
	db $fc                                           ; $6b2a: $fc
	ld a, h                                          ; $6b2b: $7c
	ld a, d                                          ; $6b2c: $7a
	sub b                                            ; $6b2d: $90
	add c                                            ; $6b2e: $81
	rst $38                                          ; $6b2f: $ff
	ld e, d                                          ; $6b30: $5a
	rst $38                                          ; $6b31: $ff
	rst $38                                          ; $6b32: $ff
	cp l                                             ; $6b33: $bd
	and l                                            ; $6b34: $a5
	sbc c                                            ; $6b35: $99
	sbc c                                            ; $6b36: $99
	add c                                            ; $6b37: $81
	ld bc, $0181                                     ; $6b38: $01 $81 $01
	rst $38                                          ; $6b3b: $ff
	sub l                                            ; $6b3c: $95
	ld a, d                                          ; $6b3d: $7a
	jr nc, jr_018_6ad4                               ; $6b3e: $30 $94

	pop af                                           ; $6b40: $f1
	rst SubAFromDE                                          ; $6b41: $df
	ld hl, sp+$3f                                    ; $6b42: $f8 $3f
	inc b                                            ; $6b44: $04
	ei                                               ; $6b45: $fb
	adc d                                            ; $6b46: $8a
	pop af                                           ; $6b47: $f1
	ld de, $e0e0                                     ; $6b48: $11 $e0 $e0
	rst FarCall                                          ; $6b4b: $f7
	rst SubAFromDE                                          ; $6b4c: $df
	ld bc, $ffde                                     ; $6b4d: $01 $de $ff
	sbc [hl]                                         ; $6b50: $9e
	add hl, bc                                       ; $6b51: $09
	reti                                             ; $6b52: $d9


	add b                                            ; $6b53: $80
	rst SubAFromDE                                          ; $6b54: $df
	cp $de                                           ; $6b55: $fe $de
	rst $38                                          ; $6b57: $ff
	sub [hl]                                         ; $6b58: $96
	rst GetHLinHL                                          ; $6b59: $cf
	add a                                            ; $6b5a: $87
	add a                                            ; $6b5b: $87
	ld sp, hl                                        ; $6b5c: $f9
	rrca                                             ; $6b5d: $0f
	rst $38                                          ; $6b5e: $ff
	ld c, $ff                                        ; $6b5f: $0e $ff
	ld [$d676], sp                                   ; $6b61: $08 $76 $d6
	db $dd                                           ; $6b64: $dd
	rst $38                                          ; $6b65: $ff
	sbc l                                            ; $6b66: $9d
	push de                                          ; $6b67: $d5
	xor d                                            ; $6b68: $aa
	ld a, e                                          ; $6b69: $7b
	ld hl, sp+$77                                    ; $6b6a: $f8 $77
	cp $6b                                           ; $6b6c: $fe $6b
	ldh a, [$7d]                                     ; $6b6e: $f0 $7d
	ld d, h                                          ; $6b70: $54
	add [hl]                                         ; $6b71: $86
	cp h                                             ; $6b72: $bc
	adc a                                            ; $6b73: $8f
	or $c3                                           ; $6b74: $f6 $c3
	cp $89                                           ; $6b76: $fe $89
	rst $38                                          ; $6b78: $ff
	add e                                            ; $6b79: $83
	db $fd                                           ; $6b7a: $fd
	ld c, a                                          ; $6b7b: $4f
	ldh a, [$f1]                                     ; $6b7c: $f0 $f1
	add h                                            ; $6b7e: $84
	add d                                            ; $6b7f: $82
	add [hl]                                         ; $6b80: $86
	inc b                                            ; $6b81: $04
	rst $38                                          ; $6b82: $ff
	add b                                            ; $6b83: $80
	rst $38                                          ; $6b84: $ff
	add b                                            ; $6b85: $80
	cp a                                             ; $6b86: $bf
	add b                                            ; $6b87: $80
	rst SubAFromDE                                          ; $6b88: $df
	ret nz                                           ; $6b89: $c0

	rra                                              ; $6b8a: $1f
	ld [hl], a                                       ; $6b8b: $77
	ld l, b                                          ; $6b8c: $68
	sbc h                                            ; $6b8d: $9c
	ret nz                                           ; $6b8e: $c0

	ld a, a                                          ; $6b8f: $7f
	ld b, b                                          ; $6b90: $40
	ld [hl], l                                       ; $6b91: $75
	add h                                            ; $6b92: $84
	ld l, a                                          ; $6b93: $6f
	cp $9d                                           ; $6b94: $fe $9d
	cp $f7                                           ; $6b96: $fe $f7
	ld [hl], c                                       ; $6b98: $71
	ld a, b                                          ; $6b99: $78
	ld a, b                                          ; $6b9a: $78
	ld [hl], c                                       ; $6b9b: $71
	ld a, e                                          ; $6b9c: $7b
	ld l, [hl]                                       ; $6b9d: $6e
	sub [hl]                                         ; $6b9e: $96
	ld b, e                                          ; $6b9f: $43
	add hl, de                                       ; $6ba0: $19
	and l                                            ; $6ba1: $a5
	inc bc                                           ; $6ba2: $03
	ld a, [de]                                       ; $6ba3: $1a
	ld b, e                                          ; $6ba4: $43
	ld b, d                                          ; $6ba5: $42
	jp Jump_018_7b42                                 ; $6ba6: $c3 $42 $7b


	ldh a, [$9e]                                     ; $6ba9: $f0 $9e
	add hl, hl                                       ; $6bab: $29
	ld a, e                                          ; $6bac: $7b
	nop                                              ; $6bad: $00
	ld a, a                                          ; $6bae: $7f
	ret nz                                           ; $6baf: $c0

	sbc b                                            ; $6bb0: $98
	rst JumpTable                                          ; $6bb1: $c7
	sub e                                            ; $6bb2: $93
	xor d                                            ; $6bb3: $aa
	add e                                            ; $6bb4: $83
	ld [de], a                                       ; $6bb5: $12
	call Call_018_6100                               ; $6bb6: $cd $00 $61
	inc bc                                           ; $6bb9: $03
	add b                                            ; $6bba: $80
	rst $38                                          ; $6bbb: $ff
	rrca                                             ; $6bbc: $0f
	db $fc                                           ; $6bbd: $fc
	ld d, a                                          ; $6bbe: $57
	db $fc                                           ; $6bbf: $fc
	rlca                                             ; $6bc0: $07
	db $fc                                           ; $6bc1: $fc
	rrca                                             ; $6bc2: $0f
	db $f4                                           ; $6bc3: $f4
	sub a                                            ; $6bc4: $97
	ld [hl+], a                                      ; $6bc5: $22
	db $d3                                           ; $6bc6: $d3
	add d                                            ; $6bc7: $82
	inc hl                                           ; $6bc8: $23
	sbc [hl]                                         ; $6bc9: $9e
	ld b, e                                          ; $6bca: $43
	rst $38                                          ; $6bcb: $ff
	ldh [rIE], a                                     ; $6bcc: $e0 $ff
	jp z, $c0ff                                      ; $6bce: $ca $ff $c0

	rst $38                                          ; $6bd1: $ff
	ldh [$4e], a                                     ; $6bd2: $e0 $4e
	pop af                                           ; $6bd4: $f1
	add b                                            ; $6bd5: $80
	adc [hl]                                         ; $6bd6: $8e
	rst $38                                          ; $6bd7: $ff
	and h                                            ; $6bd8: $a4
	rst $38                                          ; $6bd9: $ff
	sbc d                                            ; $6bda: $9a
	adc [hl]                                         ; $6bdb: $8e
	rst SubAFromBC                                          ; $6bdc: $e7
	and $e7                                          ; $6bdd: $e6 $e7

jr_018_6bdf:
	ld h, [hl]                                       ; $6bdf: $66
	ld a, e                                          ; $6be0: $7b
	cp $7b                                           ; $6be1: $fe $7b
	db $fd                                           ; $6be3: $fd
	add b                                            ; $6be4: $80
	inc a                                            ; $6be5: $3c
	ld a, h                                          ; $6be6: $7c
	cp [hl]                                          ; $6be7: $be
	xor [hl]                                         ; $6be8: $ae
	rst $38                                          ; $6be9: $ff
	inc [hl]                                         ; $6bea: $34
	rst $38                                          ; $6beb: $ff
	rlca                                             ; $6bec: $07
	rst $38                                          ; $6bed: $ff
	sub e                                            ; $6bee: $93
	rst $38                                          ; $6bef: $ff
	rlca                                             ; $6bf0: $07
	rst FarCall                                          ; $6bf1: $f7
	rrca                                             ; $6bf2: $0f
	ld h, e                                          ; $6bf3: $63
	sub e                                            ; $6bf4: $93
	ld h, c                                          ; $6bf5: $61
	ld h, c                                          ; $6bf6: $61
	rst FarCall                                          ; $6bf7: $f7
	sub a                                            ; $6bf8: $97
	rst $38                                          ; $6bf9: $ff
	ld h, c                                          ; $6bfa: $61
	rst $38                                          ; $6bfb: $ff
	rst $38                                          ; $6bfc: $ff
	inc bc                                           ; $6bfd: $03
	rst $38                                          ; $6bfe: $ff
	di                                               ; $6bff: $f3
	rst FarCall                                          ; $6c00: $f7
	inc sp                                           ; $6c01: $33
	ld [hl], a                                       ; $6c02: $77
	inc sp                                           ; $6c03: $33
	add b                                            ; $6c04: $80
	ld [hl], a                                       ; $6c05: $77
	cp e                                             ; $6c06: $bb
	rst $38                                          ; $6c07: $ff
	add b                                            ; $6c08: $80
	rst $38                                          ; $6c09: $ff
	ld d, l                                          ; $6c0a: $55
	xor d                                            ; $6c0b: $aa
	db $fd                                           ; $6c0c: $fd
	rst $38                                          ; $6c0d: $ff
	ld b, l                                          ; $6c0e: $45
	rst $38                                          ; $6c0f: $ff
	ld b, l                                          ; $6c10: $45
	rst GetHLinHL                                          ; $6c11: $cf
	ld b, l                                          ; $6c12: $45
	adc $45                                          ; $6c13: $ce $45
	rst GetHLinHL                                          ; $6c15: $cf
	rst JumpTable                                          ; $6c16: $c7
	rst $38                                          ; $6c17: $ff
	ld bc, $55ff                                     ; $6c18: $01 $ff $55
	xor e                                            ; $6c1b: $ab
	ldh a, [rIE]                                     ; $6c1c: $f0 $ff
	jr nz, jr_018_6bdf                               ; $6c1e: $20 $bf

	cpl                                              ; $6c20: $2f
	cp a                                             ; $6c21: $bf
	daa                                              ; $6c22: $27
	cp a                                             ; $6c23: $bf
	sub [hl]                                         ; $6c24: $96
	ccf                                              ; $6c25: $3f
	cp a                                             ; $6c26: $bf
	ld [hl], $b6                                     ; $6c27: $36 $b6
	dec a                                            ; $6c29: $3d
	cp l                                             ; $6c2a: $bd
	add hl, sp                                       ; $6c2b: $39
	cp c                                             ; $6c2c: $b9
	nop                                              ; $6c2d: $00
	ld a, e                                          ; $6c2e: $7b
	jp c, $f89c                                      ; $6c2f: $da $9c $f8

	rst $38                                          ; $6c32: $ff
	cp $de                                           ; $6c33: $fe $de
	rst $38                                          ; $6c35: $ff
	rst SubAFromDE                                          ; $6c36: $df
	reti                                             ; $6c37: $d9


	rst SubAFromDE                                          ; $6c38: $df
	ld d, a                                          ; $6c39: $57
	rst SubAFromDE                                          ; $6c3a: $df
	ld a, e                                          ; $6c3b: $7b
	ld a, a                                          ; $6c3c: $7f
	ldh a, [$8e]                                     ; $6c3d: $f0 $8e
	ld b, $ff                                        ; $6c3f: $06 $ff
	rlca                                             ; $6c41: $07
	ld sp, hl                                        ; $6c42: $f9
	ld c, a                                          ; $6c43: $4f
	db $fc                                           ; $6c44: $fc
	ld a, b                                          ; $6c45: $78
	or b                                             ; $6c46: $b0
	ccf                                              ; $6c47: $3f
	jp $c557                                         ; $6c48: $c3 $57 $c5


	xor a                                            ; $6c4b: $af
	add d                                            ; $6c4c: $82
	nop                                              ; $6c4d: $00
	rst $38                                          ; $6c4e: $ff
	nop                                              ; $6c4f: $00
	ld a, e                                          ; $6c50: $7b
	ld a, l                                          ; $6c51: $7d
	adc l                                            ; $6c52: $8d
	ld hl, sp+$1f                                    ; $6c53: $f8 $1f
	ld a, h                                          ; $6c55: $7c
	rlca                                             ; $6c56: $07
	sbc [hl]                                         ; $6c57: $9e
	sub e                                            ; $6c58: $93
	xor $6b                                          ; $6c59: $ee $6b
	rst FarCall                                          ; $6c5b: $f7
	sub c                                            ; $6c5c: $91
	dec b                                            ; $6c5d: $05
	db $fd                                           ; $6c5e: $fd
	inc h                                            ; $6c5f: $24
	db $fc                                           ; $6c60: $fc
	inc b                                            ; $6c61: $04
	db $fc                                           ; $6c62: $fc
	db $fc                                           ; $6c63: $fc
	cp $de                                           ; $6c64: $fe $de
	ld [bc], a                                       ; $6c66: $02
	sub d                                            ; $6c67: $92
	cp $07                                           ; $6c68: $fe $07
	rst $38                                          ; $6c6a: $ff
	ld [$90f8], sp                                   ; $6c6b: $08 $f8 $90
	sbc a                                            ; $6c6e: $9f
	db $10                                           ; $6c6f: $10
	sbc a                                            ; $6c70: $9f
	sub b                                            ; $6c71: $90
	sbc a                                            ; $6c72: $9f
	adc a                                            ; $6c73: $8f
	rst SubAFromDE                                          ; $6c74: $df
	sbc $48                                          ; $6c75: $de $48
	sbc c                                            ; $6c77: $99
	ld c, a                                          ; $6c78: $4f
	cp b                                             ; $6c79: $b8
	rst $38                                          ; $6c7a: $ff
	and h                                            ; $6c7b: $a4
	rst SubAFromBC                                          ; $6c7c: $e7
	add l                                            ; $6c7d: $85
	ld c, e                                          ; $6c7e: $4b

Call_018_6c7f:
jr_018_6c7f:
	ldh [hDisp1_BGP], a                                     ; $6c7f: $e0 $92
	ld a, a                                          ; $6c81: $7f
	di                                               ; $6c82: $f3
	rst GetHLinHL                                          ; $6c83: $cf
	rlc [hl]                                         ; $6c84: $cb $06
	rlca                                             ; $6c86: $07
	ld d, $17                                        ; $6c87: $16 $17
	ld a, [de]                                       ; $6c89: $1a
	cp e                                             ; $6c8a: $bb
	ld [hl+], a                                      ; $6c8b: $22
	scf                                              ; $6c8c: $37
	db $f4                                           ; $6c8d: $f4
	ld a, e                                          ; $6c8e: $7b
	sub [hl]                                         ; $6c8f: $96
	add a                                            ; $6c90: $87

jr_018_6c91:
	dec a                                            ; $6c91: $3d
	db $e3                                           ; $6c92: $e3
	dec a                                            ; $6c93: $3d
	push hl                                          ; $6c94: $e5
	jr c, jr_018_6c7f                                ; $6c95: $38 $e8

	jr jr_018_6c91                                   ; $6c97: $18 $f8

	inc d                                            ; $6c99: $14
	push af                                          ; $6c9a: $f5
	ld [de], a                                       ; $6c9b: $12
	ldh a, [c]                                       ; $6c9c: $f2
	rrca                                             ; $6c9d: $0f
	rst $38                                          ; $6c9e: $ff
	rla                                              ; $6c9f: $17
	rst $38                                          ; $6ca0: $ff
	ld l, a                                          ; $6ca1: $6f
	jp hl                                            ; $6ca2: $e9


jr_018_6ca3:
	rst JumpTable                                          ; $6ca3: $c7
	push bc                                          ; $6ca4: $c5
	adc d                                            ; $6ca5: $8a
	adc e                                            ; $6ca6: $8b
	ld [de], a                                       ; $6ca7: $12
	inc de                                           ; $6ca8: $13
	ld a, e                                          ; $6ca9: $7b
	ldh [$8e], a                                     ; $6caa: $e0 $8e
	daa                                              ; $6cac: $27
	db $f4                                           ; $6cad: $f4
	rst FarCall                                          ; $6cae: $f7
	ret c                                            ; $6caf: $d8

	rst $38                                          ; $6cb0: $ff
	cp a                                             ; $6cb1: $bf
	db $e3                                           ; $6cb2: $e3
	inc a                                            ; $6cb3: $3c
	db $e4                                           ; $6cb4: $e4
	jr c, jr_018_6ca3                                ; $6cb5: $38 $ec

	ld de, $12f9                                     ; $6cb7: $11 $f9 $12
	rst FarCall                                          ; $6cba: $f7
	ld c, $fe                                        ; $6cbb: $0e $fe
	ld [hl], a                                       ; $6cbd: $77
	ldh [rWX], a                                     ; $6cbe: $e0 $4b
	add b                                            ; $6cc0: $80
	add b                                            ; $6cc1: $80
	ld de, $f9fe                                     ; $6cc2: $11 $fe $f9
	xor l                                            ; $6cc5: $ad
	db $eb                                           ; $6cc6: $eb
	ld c, $0b                                        ; $6cc7: $0e $0b
	inc c                                            ; $6cc9: $0c
	rrca                                             ; $6cca: $0f
	jr jr_018_6cdc                                   ; $6ccb: $18 $0f

	ld hl, sp-$01                                    ; $6ccd: $f8 $ff
	inc b                                            ; $6ccf: $04
	rlca                                             ; $6cd0: $07
	inc d                                            ; $6cd1: $14
	rlca                                             ; $6cd2: $07
	daa                                              ; $6cd3: $27
	cp a                                             ; $6cd4: $bf
	cp [hl]                                          ; $6cd5: $be
	jp c, $a2fe                                      ; $6cd6: $da $fe $a2

	xor $b6                                          ; $6cd9: $ee $b6
	cp e                                             ; $6cdb: $bb

jr_018_6cdc:
	cp $23                                           ; $6cdc: $fe $23
	cp a                                             ; $6cde: $bf
	inc h                                            ; $6cdf: $24
	cp h                                             ; $6ce0: $bc
	sbc l                                            ; $6ce1: $9d
	dec h                                            ; $6ce2: $25
	cp h                                             ; $6ce3: $bc
	ld [hl], a                                       ; $6ce4: $77
	or b                                             ; $6ce5: $b0
	sbc l                                            ; $6ce6: $9d
	ld a, [bc]                                       ; $6ce7: $0a
	dec bc                                           ; $6ce8: $0b
	ld [hl], e                                       ; $6ce9: $73
	or b                                             ; $6cea: $b0
	sbc [hl]                                         ; $6ceb: $9e
	inc hl                                           ; $6cec: $23
	ld [hl], a                                       ; $6ced: $77
	or b                                             ; $6cee: $b0
	ld d, a                                          ; $6cef: $57
	ret nz                                           ; $6cf0: $c0

	sbc [hl]                                         ; $6cf1: $9e
	rst AddAOntoHL                                          ; $6cf2: $ef
	ld a, e                                          ; $6cf3: $7b
	ret nz                                           ; $6cf4: $c0

	ld a, a                                          ; $6cf5: $7f
	ld [$3f80], sp                                   ; $6cf6: $08 $80 $3f
	cp [hl]                                          ; $6cf9: $be
	dec sp                                           ; $6cfa: $3b
	cp h                                             ; $6cfb: $bc
	ccf                                              ; $6cfc: $3f
	cp c                                             ; $6cfd: $b9
	ccf                                              ; $6cfe: $3f
	or d                                             ; $6cff: $b2
	ld l, $b9                                        ; $6d00: $2e $b9
	ld h, $bd                                        ; $6d02: $26 $bd
	inc hl                                           ; $6d04: $23
	cp [hl]                                          ; $6d05: $be
	db $fd                                           ; $6d06: $fd
	db $fd                                           ; $6d07: $fd
	rst SubAFromDE                                          ; $6d08: $df
	db $ec                                           ; $6d09: $ec
	rst $38                                          ; $6d0a: $ff
	ld b, h                                          ; $6d0b: $44
	ld e, a                                          ; $6d0c: $5f
	or d                                             ; $6d0d: $b2
	rst $38                                          ; $6d0e: $ff
	ld a, [bc]                                       ; $6d0f: $0a
	rrca                                             ; $6d10: $0f
	db $f4                                           ; $6d11: $f4
	xor $15                                          ; $6d12: $ee $15
	ld e, e                                          ; $6d14: $5b
	xor l                                            ; $6d15: $ad
	xor a                                            ; $6d16: $af
	add b                                            ; $6d17: $80
	adc d                                            ; $6d18: $8a
	rst $38                                          ; $6d19: $ff
	adc [hl]                                         ; $6d1a: $8e
	rst $38                                          ; $6d1b: $ff
	rst SubAFromDE                                          ; $6d1c: $df
	or [hl]                                          ; $6d1d: $b6
	or $a2                                           ; $6d1e: $f6 $a2
	ldh a, [c]                                       ; $6d20: $f2
	pop de                                           ; $6d21: $d1
	ret nc                                           ; $6d22: $d0

	ret c                                            ; $6d23: $d8

	ret c                                            ; $6d24: $d8

	sbc h                                            ; $6d25: $9c
	sub [hl]                                         ; $6d26: $96
	rst $38                                          ; $6d27: $ff
	ret                                              ; $6d28: $c9


	rst $38                                          ; $6d29: $ff
	push af                                          ; $6d2a: $f5
	ld a, a                                          ; $6d2b: $7f
	ld a, l                                          ; $6d2c: $7d
	ld h, a                                          ; $6d2d: $67
	ld h, l                                          ; $6d2e: $65
	daa                                              ; $6d2f: $27
	dec l                                            ; $6d30: $2d
	rst GetHLinHL                                          ; $6d31: $cf
	add hl, bc                                       ; $6d32: $09
	rst SubAFromDE                                          ; $6d33: $df
	ld de, $311f                                     ; $6d34: $11 $1f $31
	ld [hl], e                                       ; $6d37: $73
	ret nz                                           ; $6d38: $c0

	add h                                            ; $6d39: $84
	cp a                                             ; $6d3a: $bf
	dec a                                            ; $6d3b: $3d
	cp c                                             ; $6d3c: $b9
	ccf                                              ; $6d3d: $3f
	or e                                             ; $6d3e: $b3
	cpl                                              ; $6d3f: $2f
	cp b                                             ; $6d40: $b8
	daa                                              ; $6d41: $27
	cp h                                             ; $6d42: $bc
	ld [hl+], a                                      ; $6d43: $22
	cp a                                             ; $6d44: $bf
	rst $38                                          ; $6d45: $ff
	rst $38                                          ; $6d46: $ff
	rst SubAFromDE                                          ; $6d47: $df
	rst AddAOntoHL                                          ; $6d48: $ef
	rst $38                                          ; $6d49: $ff
	ld a, a                                          ; $6d4a: $7f
	db $db                                           ; $6d4b: $db
	rla                                              ; $6d4c: $17
	cp $31                                           ; $6d4d: $fe $31
	ld a, $c3                                        ; $6d4f: $3e $c3
	rst SubAFromDE                                          ; $6d51: $df
	daa                                              ; $6d52: $27
	ei                                               ; $6d53: $fb
	dec c                                            ; $6d54: $0d
	ld [hl], a                                       ; $6d55: $77
	ret nz                                           ; $6d56: $c0

	sbc [hl]                                         ; $6d57: $9e
	ld a, a                                          ; $6d58: $7f
	ld a, e                                          ; $6d59: $7b
	ret nz                                           ; $6d5a: $c0

	sbc c                                            ; $6d5b: $99
	ld [hl-], a                                      ; $6d5c: $32
	ld h, d                                          ; $6d5d: $62
	ld sp, $78e0                                     ; $6d5e: $31 $e0 $78
	add sp, $57                                      ; $6d61: $e8 $57
	ret nz                                           ; $6d63: $c0

	sbc h                                            ; $6d64: $9c
	ld c, a                                          ; $6d65: $4f
	add hl, bc                                       ; $6d66: $09
	sbc a                                            ; $6d67: $9f
	ld h, a                                          ; $6d68: $67

jr_018_6d69:
	ret nz                                           ; $6d69: $c0

	ld a, e                                          ; $6d6a: $7b
	add b                                            ; $6d6b: $80
	sbc e                                            ; $6d6c: $9b
	ld a, $f3                                        ; $6d6d: $3e $f3
	cpl                                              ; $6d6f: $2f
	ld hl, sp+$63                                    ; $6d70: $f8 $63
	ret nz                                           ; $6d72: $c0

	sub h                                            ; $6d73: $94
	ld b, a                                          ; $6d74: $47
	cp e                                             ; $6d75: $bb
	ld d, a                                          ; $6d76: $57
	xor $33                                          ; $6d77: $ee $33
	cp $03                                           ; $6d79: $fe $03
	rst SubAFromDE                                          ; $6d7b: $df
	push hl                                          ; $6d7c: $e5
	ei                                               ; $6d7d: $fb
	inc c                                            ; $6d7e: $0c
	ld [hl], e                                       ; $6d7f: $73
	ret nz                                           ; $6d80: $c0

	adc c                                            ; $6d81: $89
	sbc $b7                                          ; $6d82: $de $b7
	rst FarCall                                          ; $6d84: $f7
	ld [hl], $66                                     ; $6d85: $36 $66

Jump_018_6d87:
	jr nc, jr_018_6d69                               ; $6d87: $30 $e0

	add hl, sp                                       ; $6d89: $39
	add sp, -$44                                     ; $6d8a: $e8 $bc
	and $ff                                          ; $6d8c: $e6 $ff
	adc c                                            ; $6d8e: $89
	rst $38                                          ; $6d8f: $ff
	push de                                          ; $6d90: $d5
	rst $38                                          ; $6d91: $ff
	db $ed                                           ; $6d92: $ed
	ld [hl], a                                       ; $6d93: $77
	ld [hl], l                                       ; $6d94: $75
	ld h, a                                          ; $6d95: $67
	ld l, l                                          ; $6d96: $6d
	rrca                                             ; $6d97: $0f
	ld d, e                                          ; $6d98: $53
	ret nz                                           ; $6d99: $c0

	sbc l                                            ; $6d9a: $9d
	ccf                                              ; $6d9b: $3f
	or b                                             ; $6d9c: $b0
	ld l, a                                          ; $6d9d: $6f
	ld b, b                                          ; $6d9e: $40
	rst SubAFromDE                                          ; $6d9f: $df
	cp $77                                           ; $6da0: $fe $77
	ret nz                                           ; $6da2: $c0

	sub l                                            ; $6da3: $95
	rst $38                                          ; $6da4: $ff
	inc de                                           ; $6da5: $13
	rst $38                                          ; $6da6: $ff
	ld bc, $f30e                                     ; $6da7: $01 $0e $f3
	db $ec                                           ; $6daa: $ec
	rla                                              ; $6dab: $17
	ld e, b                                          ; $6dac: $58
	xor a                                            ; $6dad: $af
	ld h, a                                          ; $6dae: $67
	ret nz                                           ; $6daf: $c0

	ld a, a                                          ; $6db0: $7f
	add b                                            ; $6db1: $80
	ld a, a                                          ; $6db2: $7f
	ret nz                                           ; $6db3: $c0

	ld a, [hl]                                       ; $6db4: $7e
	sbc b                                            ; $6db5: $98
	sbc [hl]                                         ; $6db6: $9e
	inc a                                            ; $6db7: $3c
	ld [hl], e                                       ; $6db8: $73
	ret nz                                           ; $6db9: $c0

	sbc b                                            ; $6dba: $98
	ld a, a                                          ; $6dbb: $7f
	ld l, l                                          ; $6dbc: $6d
	ld [hl], a                                       ; $6dbd: $77
	ld [hl], l                                       ; $6dbe: $75
	daa                                              ; $6dbf: $27
	dec l                                            ; $6dc0: $2d
	rrca                                             ; $6dc1: $0f
	ld [hl], e                                       ; $6dc2: $73
	ld b, b                                          ; $6dc3: $40
	sub h                                            ; $6dc4: $94
	sbc a                                            ; $6dc5: $9f
	sub a                                            ; $6dc6: $97
	ld e, c                                          ; $6dc7: $59
	db $dd                                           ; $6dc8: $dd

jr_018_6dc9:
	ld c, b                                          ; $6dc9: $48
	ret c                                            ; $6dca: $d8

	ld b, b                                          ; $6dcb: $40
	ret z                                            ; $6dcc: $c8

	inc l                                            ; $6dcd: $2c

jr_018_6dce:
	db $ed                                           ; $6dce: $ed
	ld a, [de]                                       ; $6dcf: $1a
	ld a, d                                          ; $6dd0: $7a
	ld h, b                                          ; $6dd1: $60
	ld a, [hl]                                       ; $6dd2: $7e
	and b                                            ; $6dd3: $a0
	sub [hl]                                         ; $6dd4: $96
	push af                                          ; $6dd5: $f5
	ei                                               ; $6dd6: $fb
	xor [hl]                                         ; $6dd7: $ae
	db $e3                                           ; $6dd8: $e3
	ld a, [bc]                                       ; $6dd9: $0a
	rlca                                             ; $6dda: $07
	inc b                                            ; $6ddb: $04
	rlca                                             ; $6ddc: $07
	sbc b                                            ; $6ddd: $98
	ld l, d                                          ; $6dde: $6a
	or b                                             ; $6ddf: $b0
	ld [hl], e                                       ; $6de0: $73
	ldh [$9a], a                                     ; $6de1: $e0 $9a
	ret z                                            ; $6de3: $c8

	jr z, jr_018_6dce                                ; $6de4: $28 $e8

	inc e                                            ; $6de6: $1c
	db $fd                                           ; $6de7: $fd
	halt                                             ; $6de8: $76
	ld b, b                                          ; $6de9: $40
	ld l, [hl]                                       ; $6dea: $6e
	ld h, b                                          ; $6deb: $60
	rst SubAFromDE                                          ; $6dec: $df
	dec bc                                           ; $6ded: $0b
	ld e, [hl]                                       ; $6dee: $5e
	or b                                             ; $6def: $b0
	sub a                                            ; $6df0: $97
	sub b                                            ; $6df1: $90
	sbc [hl]                                         ; $6df2: $9e
	db $10                                           ; $6df3: $10
	sbc [hl]                                         ; $6df4: $9e
	sub b                                            ; $6df5: $90
	sbc [hl]                                         ; $6df6: $9e
	adc [hl]                                         ; $6df7: $8e
	sbc $de                                          ; $6df8: $de $de
	ld c, b                                          ; $6dfa: $48
	adc a                                            ; $6dfb: $8f
	ld c, [hl]                                       ; $6dfc: $4e
	cp b                                             ; $6dfd: $b8
	cp $a4                                           ; $6dfe: $fe $a4
	and $24                                          ; $6e00: $e6 $24
	cp h                                             ; $6e02: $bc
	inc h                                            ; $6e03: $24
	cp h                                             ; $6e04: $bc
	inc hl                                           ; $6e05: $23
	cp h                                             ; $6e06: $bc
	cp e                                             ; $6e07: $bb
	cp h                                             ; $6e08: $bc
	ld [hl+], a                                      ; $6e09: $22
	dec h                                            ; $6e0a: $25
	daa                                              ; $6e0b: $27
	ld a, d                                          ; $6e0c: $7a
	add b                                            ; $6e0d: $80
	adc l                                            ; $6e0e: $8d
	jr z, jr_018_6dc9                                ; $6e0f: $28 $b8

	nop                                              ; $6e11: $00
	rst $38                                          ; $6e12: $ff
	ld c, $fb                                        ; $6e13: $0e $fb
	daa                                              ; $6e15: $27
	db $fd                                           ; $6e16: $fd
	rrca                                             ; $6e17: $0f
	cp $3f                                           ; $6e18: $fe $3f
	ldh a, [$79]                                     ; $6e1a: $f0 $79
	ret nz                                           ; $6e1c: $c0

	rst FarCall                                          ; $6e1d: $f7
	add b                                            ; $6e1e: $80
	rst $38                                          ; $6e1f: $ff
	and h                                            ; $6e20: $a4
	halt                                             ; $6e21: $76
	add b                                            ; $6e22: $80

jr_018_6e23:
	adc l                                            ; $6e23: $8d
	ld b, b                                          ; $6e24: $40
	rst $38                                          ; $6e25: $ff
	ldh a, [$bf]                                     ; $6e26: $f0 $bf
	inc a                                            ; $6e28: $3c
	rrca                                             ; $6e29: $0f
	adc [hl]                                         ; $6e2a: $8e
	inc bc                                           ; $6e2b: $03
	rst FarCall                                          ; $6e2c: $f7
	ld bc, $119f                                     ; $6e2d: $01 $9f $11
	ld h, h                                          ; $6e30: $64
	ld a, e                                          ; $6e31: $7b
	call c, $b4c7                                    ; $6e32: $dc $c7 $b4
	add a                                            ; $6e35: $87
	ld [hl], e                                       ; $6e36: $73
	or b                                             ; $6e37: $b0
	ld [hl], c                                       ; $6e38: $71
	ldh a, [$99]                                     ; $6e39: $f0 $99
	dec c                                            ; $6e3b: $0d
	ei                                               ; $6e3c: $fb
	inc c                                            ; $6e3d: $0c
	db $fc                                           ; $6e3e: $fc
	inc c                                            ; $6e3f: $0c
	db $fc                                           ; $6e40: $fc
	halt                                             ; $6e41: $76
	db $10                                           ; $6e42: $10
	sbc l                                            ; $6e43: $9d
	ld d, $f6                                        ; $6e44: $16 $f6
	halt                                             ; $6e46: $76
	db $10                                           ; $6e47: $10
	adc a                                            ; $6e48: $8f
	inc h                                            ; $6e49: $24
	ld a, [hl-]                                      ; $6e4a: $3a
	call c, $b4c6                                    ; $6e4b: $dc $c6 $b4
	add [hl]                                         ; $6e4e: $86
	ld [de], a                                       ; $6e4f: $12
	ld [de], a                                       ; $6e50: $12
	ld a, [de]                                       ; $6e51: $1a
	cp d                                             ; $6e52: $ba
	ld [hl+], a                                      ; $6e53: $22
	ld [hl], $f4                                     ; $6e54: $36 $f4
	cp $f8                                           ; $6e56: $fe $f8

jr_018_6e58:
	cp $4f                                           ; $6e58: $fe $4f
	ret nz                                           ; $6e5a: $c0

	sbc h                                            ; $6e5b: $9c
	rst $38                                          ; $6e5c: $ff
	ld de, $4970                                     ; $6e5d: $11 $70 $49
	ld b, b                                          ; $6e60: $40
	sbc c                                            ; $6e61: $99
	ld de, $0cef                                     ; $6e62: $11 $ef $0c
	ldh a, [$0c]                                     ; $6e65: $f0 $0c
	ldh a, [$5f]                                     ; $6e67: $f0 $5f
	ret nz                                           ; $6e69: $c0

	ld c, e                                          ; $6e6a: $4b
	add b                                            ; $6e6b: $80
	sub [hl]                                         ; $6e6c: $96
	and b                                            ; $6e6d: $a0
	and h                                            ; $6e6e: $a4
	cp a                                             ; $6e6f: $bf

jr_018_6e70:
	sbc $c7                                          ; $6e70: $de $c7
	ld a, [de]                                       ; $6e72: $1a
	inc bc                                           ; $6e73: $03
	ld [$6709], sp                                   ; $6e74: $08 $09 $67
	sub b                                            ; $6e77: $90
	sub h                                            ; $6e78: $94
	sub d                                            ; $6e79: $92
	sbc [hl]                                         ; $6e7a: $9e
	ld e, l                                          ; $6e7b: $5d
	pop de                                           ; $6e7c: $d1
	ld e, h                                          ; $6e7d: $5c
	ret nc                                           ; $6e7e: $d0

	ld b, b                                          ; $6e7f: $40
	ret z                                            ; $6e80: $c8

	jr z, jr_018_6e70                                ; $6e81: $28 $ed

	inc e                                            ; $6e83: $1c
	ld [hl], e                                       ; $6e84: $73
	jr nz, jr_018_6e23                               ; $6e85: $20 $9c

	db $e4                                           ; $6e87: $e4
	rst SubAFromDE                                          ; $6e88: $df
	inc e                                            ; $6e89: $1c
	ld a, e                                          ; $6e8a: $7b
	ldh [$7d], a                                     ; $6e8b: $e0 $7d
	adc $67                                          ; $6e8d: $ce $67
	ldh [$99], a                                     ; $6e8f: $e0 $99
	sub e                                            ; $6e91: $93
	sbc a                                            ; $6e92: $9f
	ld e, l                                          ; $6e93: $5d
	pop de                                           ; $6e94: $d1
	ld c, h                                          ; $6e95: $4c
	ret nz                                           ; $6e96: $c0

	ld e, a                                          ; $6e97: $5f
	ldh [$80], a                                     ; $6e98: $e0 $80
	rst GetHLinHL                                          ; $6e9a: $cf
	ld b, c                                          ; $6e9b: $41
	cp e                                             ; $6e9c: $bb
	and c                                            ; $6e9d: $a1
	ei                                               ; $6e9e: $fb
	pop af                                           ; $6e9f: $f1
	cpl                                              ; $6ea0: $2f
	add hl, sp                                       ; $6ea1: $39
	ld c, a                                          ; $6ea2: $4f
	ld l, c                                          ; $6ea3: $69
	sbc a                                            ; $6ea4: $9f
	sbc e                                            ; $6ea5: $9b
	ld a, [hl]                                       ; $6ea6: $7e

jr_018_6ea7:
	ld [hl], e                                       ; $6ea7: $73
	inc e                                            ; $6ea8: $1c
	sub a                                            ; $6ea9: $97
	rst AddAOntoHL                                          ; $6eaa: $ef
	and h                                            ; $6eab: $a4
	ld a, a                                          ; $6eac: $7f
	xor $3f                                          ; $6ead: $ee $3f
	cp $b3                                           ; $6eaf: $fe $b3
	di                                               ; $6eb1: $f3
	dec [hl]                                         ; $6eb2: $35
	ld [hl], a                                       ; $6eb3: $77
	jr nc, jr_018_6ea7                               ; $6eb4: $30 $f1

	ld a, $ee                                        ; $6eb6: $3e $ee
	jr jr_018_6e58                                   ; $6eb8: $18 $9e

	pop af                                           ; $6eba: $f1
	ld d, l                                          ; $6ebb: $55
	ret nz                                           ; $6ebc: $c0

	add b                                            ; $6ebd: $80
	rst AddAOntoHL                                          ; $6ebe: $ef
	inc d                                            ; $6ebf: $14
	ld e, e                                          ; $6ec0: $5b
	xor l                                            ; $6ec1: $ad
	rst $38                                          ; $6ec2: $ff
	xor h                                            ; $6ec3: $ac
	rst $38                                          ; $6ec4: $ff
	rst SubAFromDE                                          ; $6ec5: $df
	xor [hl]                                         ; $6ec6: $ae
	xor $b6                                          ; $6ec7: $ee $b6
	or $a7                                           ; $6ec9: $f6 $a7
	rst AddAOntoHL                                          ; $6ecb: $ef
	call c, $d8dc                                    ; $6ecc: $dc $dc $d8
	res 3, h                                         ; $6ecf: $cb $9c
	add l                                            ; $6ed1: $85

jr_018_6ed2:
	rst $38                                          ; $6ed2: $ff
	and c                                            ; $6ed3: $a1
	db $db                                           ; $6ed4: $db
	pop de                                           ; $6ed5: $d1
	rst $38                                          ; $6ed6: $ff
	ld sp, hl                                        ; $6ed7: $f9
	xor a                                            ; $6ed8: $af
	xor c                                            ; $6ed9: $a9
	cpl                                              ; $6eda: $2f
	ld l, c                                          ; $6edb: $69
	rst $38                                          ; $6edc: $ff
	sbc c                                            ; $6edd: $99
	di                                               ; $6ede: $f3
	ld e, $83                                        ; $6edf: $1e $83
	inc a                                            ; $6ee1: $3c
	and a                                            ; $6ee2: $a7
	rst SubAFromDE                                          ; $6ee3: $df
	ld [hl], e                                       ; $6ee4: $73
	or b                                             ; $6ee5: $b0
	sub d                                            ; $6ee6: $92
	ld l, a                                          ; $6ee7: $6f
	ld l, c                                          ; $6ee8: $69
	rra                                              ; $6ee9: $1f
	ld a, c                                          ; $6eea: $79
	sbc a                                            ; $6eeb: $9f
	cp c                                             ; $6eec: $b9
	ld a, [hl]                                       ; $6eed: $7e
	ld [hl], d                                       ; $6eee: $72
	ld e, $86                                        ; $6eef: $1e $86
	xor $a2                                          ; $6ef1: $ee $a2
	ld a, l                                          ; $6ef3: $7d
	ld a, e                                          ; $6ef4: $7b
	or b                                             ; $6ef5: $b0
	sub l                                            ; $6ef6: $95
	cp l                                             ; $6ef7: $bd
	db $fd                                           ; $6ef8: $fd
	inc sp                                           ; $6ef9: $33
	ld a, a                                          ; $6efa: $7f
	ld [hl-], a                                      ; $6efb: $32
	rst SubAFromBC                                          ; $6efc: $e7
	ld a, $e6                                        ; $6efd: $3e $e6
	jr c, jr_018_6ed2                                ; $6eff: $38 $d1

	ld l, a                                          ; $6f01: $6f
	and b                                            ; $6f02: $a0
	ld a, [hl]                                       ; $6f03: $7e
	ld b, b                                          ; $6f04: $40
	sub [hl]                                         ; $6f05: $96
	inc sp                                           ; $6f06: $33
	ld a, e                                          ; $6f07: $7b
	ld [de], a                                       ; $6f08: $12
	or $7e                                           ; $6f09: $f6 $7e
	xor $9d                                          ; $6f0b: $ee $9d
	add l                                            ; $6f0d: $85
	rst $38                                          ; $6f0e: $ff
	ld h, a                                          ; $6f0f: $67
	ret nc                                           ; $6f10: $d0

	sbc b                                            ; $6f11: $98
	ld e, e                                          ; $6f12: $5b
	sbc a                                            ; $6f13: $9f
	cp e                                             ; $6f14: $bb
	cp $f3                                           ; $6f15: $fe $f3
	ld e, [hl]                                       ; $6f17: $5e
	ld b, a                                          ; $6f18: $47
	db $ed                                           ; $6f19: $ed
	nop                                              ; $6f1a: $00
	pop bc                                           ; $6f1b: $c1
	ld bc, $15cd                                     ; $6f1c: $01 $cd $15
	push de                                          ; $6f1f: $d5
	ld bc, $29df                                     ; $6f20: $01 $df $29
	adc l                                            ; $6f23: $8d
	dec hl                                           ; $6f24: $2b
	inc l                                            ; $6f25: $2c
	dec l                                            ; $6f26: $2d
	ld l, $2f                                        ; $6f27: $2e $2f
	jr nc, jr_018_6f59                               ; $6f29: $30 $2e

	ld [hl-], a                                      ; $6f2b: $32
	inc sp                                           ; $6f2c: $33
	ld l, $35                                        ; $6f2d: $2e $35
	ld [hl], $2e                                     ; $6f2f: $36 $2e
	jr c, jr_018_6f5f                                ; $6f31: $38 $2c

	inc l                                            ; $6f33: $2c
	add hl, hl                                       ; $6f34: $29
	add hl, hl                                       ; $6f35: $29
	push de                                          ; $6f36: $d5
	ld bc, $2edf                                     ; $6f37: $01 $df $2e
	adc l                                            ; $6f3a: $8d
	ccf                                              ; $6f3b: $3f
	ld b, b                                          ; $6f3c: $40
	ld b, c                                          ; $6f3d: $41
	ld b, d                                          ; $6f3e: $42
	ld b, e                                          ; $6f3f: $43
	ld b, h                                          ; $6f40: $44
	ld b, d                                          ; $6f41: $42
	ld b, [hl]                                       ; $6f42: $46
	ld b, a                                          ; $6f43: $47

Call_018_6f44:
	ld b, d                                          ; $6f44: $42
	ld c, c                                          ; $6f45: $49
	ld c, d                                          ; $6f46: $4a
	ld b, d                                          ; $6f47: $42
	ld c, h                                          ; $6f48: $4c
	ld b, b                                          ; $6f49: $40
	ld c, [hl]                                       ; $6f4a: $4e
	ld l, $2e                                        ; $6f4b: $2e $2e
	push de                                          ; $6f4d: $d5
	ld bc, $518b                                     ; $6f4e: $01 $8b $51
	ld l, $53                                        ; $6f51: $2e $53
	ld d, h                                          ; $6f53: $54
	ld d, l                                          ; $6f54: $55
	ld d, [hl]                                       ; $6f55: $56
	ld d, a                                          ; $6f56: $57
	ld e, b                                          ; $6f57: $58
	ld d, [hl]                                       ; $6f58: $56

jr_018_6f59:
	ld e, d                                          ; $6f59: $5a
	ld e, e                                          ; $6f5a: $5b
	ld d, [hl]                                       ; $6f5b: $56
	ld e, l                                          ; $6f5c: $5d
	ld e, [hl]                                       ; $6f5d: $5e
	ld d, [hl]                                       ; $6f5e: $56

jr_018_6f5f:
	ld h, b                                          ; $6f5f: $60
	ld h, c                                          ; $6f60: $61
	ld h, d                                          ; $6f61: $62
	ld l, $64                                        ; $6f62: $2e $64
	push de                                          ; $6f64: $d5
	ld bc, $658b                                     ; $6f65: $01 $8b $65
	ld h, [hl]                                       ; $6f68: $66
	ld h, a                                          ; $6f69: $67
	ld l, b                                          ; $6f6a: $68
	ld l, c                                          ; $6f6b: $69
	ld l, d                                          ; $6f6c: $6a
	ld l, e                                          ; $6f6d: $6b
	ld l, h                                          ; $6f6e: $6c
	ld l, l                                          ; $6f6f: $6d
	ld l, [hl]                                       ; $6f70: $6e
	ld l, a                                          ; $6f71: $6f
	ld [hl], b                                       ; $6f72: $70
	ld [hl], c                                       ; $6f73: $71
	ld [hl], d                                       ; $6f74: $72
	ld [hl], e                                       ; $6f75: $73
	ld [hl], h                                       ; $6f76: $74
	ld h, c                                          ; $6f77: $61
	ld h, d                                          ; $6f78: $62
	ld [hl], a                                       ; $6f79: $77
	ld a, b                                          ; $6f7a: $78
	push de                                          ; $6f7b: $d5
	ld bc, $798b                                     ; $6f7c: $01 $8b $79

jr_018_6f7f:
	ld a, d                                          ; $6f7f: $7a
	ld a, e                                          ; $6f80: $7b
	ld a, h                                          ; $6f81: $7c
	ld a, l                                          ; $6f82: $7d
	ld a, [hl]                                       ; $6f83: $7e
	ld a, a                                          ; $6f84: $7f
	add b                                            ; $6f85: $80
	add c                                            ; $6f86: $81
	add d                                            ; $6f87: $82
	add e                                            ; $6f88: $83
	add h                                            ; $6f89: $84
	add l                                            ; $6f8a: $85
	halt                                             ; $6f8b: $76
	ld [hl], l                                       ; $6f8c: $75
	ld h, e                                          ; $6f8d: $63
	ld e, a                                          ; $6f8e: $5f
	ld e, h                                          ; $6f8f: $5c
	ld e, c                                          ; $6f90: $59
	ld d, d                                          ; $6f91: $52
	push de                                          ; $6f92: $d5
	ld bc, $508b                                     ; $6f93: $01 $8b $50
	ld c, a                                          ; $6f96: $4f
	ld c, l                                          ; $6f97: $4d
	ld c, e                                          ; $6f98: $4b
	ld c, b                                          ; $6f99: $48
	ld b, l                                          ; $6f9a: $45
	ld a, $3d                                        ; $6f9b: $3e $3d
	inc a                                            ; $6f9d: $3c
	dec sp                                           ; $6f9e: $3b
	ld a, [hl-]                                      ; $6f9f: $3a
	ld c, a                                          ; $6fa0: $4f
	add hl, sp                                       ; $6fa1: $39
	scf                                              ; $6fa2: $37
	inc [hl]                                         ; $6fa3: $34
	ld sp, $4f4f                                     ; $6fa4: $31 $4f $4f
	ld a, [hl+]                                      ; $6fa7: $2a
	jr z, jr_018_6f7f                                ; $6fa8: $28 $d5

	ld bc, $279b                                     ; $6faa: $01 $9b $27
	ld h, $25                                        ; $6fad: $26 $25
	inc h                                            ; $6faf: $24
	ld c, a                                          ; $6fb0: $4f
	db $fc                                           ; $6fb1: $fc
	sbc l                                            ; $6fb2: $9d
	inc hl                                           ; $6fb3: $23
	ld [hl+], a                                      ; $6fb4: $22
	push de                                          ; $6fb5: $d5
	ld bc, $21df                                     ; $6fb6: $01 $df $21
	sbc b                                            ; $6fb9: $98
	jr nz, jr_018_6fdb                               ; $6fba: $20 $1f

	ld e, $21                                        ; $6fbc: $1e $21
	dec e                                            ; $6fbe: $1d
	rra                                              ; $6fbf: $1f
	inc e                                            ; $6fc0: $1c
	ld h, e                                          ; $6fc1: $63
	db $fc                                           ; $6fc2: $fc
	rst SubAFromDE                                          ; $6fc3: $df
	ld hl, $01d5                                     ; $6fc4: $21 $d5 $01
	rst SubAFromDE                                          ; $6fc7: $df
	dec de                                           ; $6fc8: $1b
	sub b                                            ; $6fc9: $90
	ld a, [de]                                       ; $6fca: $1a
	add hl, de                                       ; $6fcb: $19
	jr jr_018_6fe9                                   ; $6fcc: $18 $1b

	rla                                              ; $6fce: $17
	ld d, $14                                        ; $6fcf: $16 $14
	dec de                                           ; $6fd1: $1b
	inc de                                           ; $6fd2: $13
	ld [de], a                                       ; $6fd3: $12
	ld de, $101b                                     ; $6fd4: $11 $1b $10
	rrca                                             ; $6fd7: $0f
	ld c, $de                                        ; $6fd8: $0e $de
	dec de                                           ; $6fda: $1b

jr_018_6fdb:
	ld c, a                                          ; $6fdb: $4f
	ret nz                                           ; $6fdc: $c0

	sub b                                            ; $6fdd: $90
	dec c                                            ; $6fde: $0d
	inc c                                            ; $6fdf: $0c
	dec bc                                           ; $6fe0: $0b
	ld hl, $0a0d                                     ; $6fe1: $21 $0d $0a
	add hl, bc                                       ; $6fe4: $09
	ld hl, $080d                                     ; $6fe5: $21 $0d $08
	rlca                                             ; $6fe8: $07

jr_018_6fe9:
	ld hl, $060d                                     ; $6fe9: $21 $0d $06
	dec b                                            ; $6fec: $05
	ld b, e                                          ; $6fed: $43
	ret nz                                           ; $6fee: $c0

	sbc l                                            ; $6fef: $9d
	inc b                                            ; $6ff0: $04
	inc bc                                           ; $6ff1: $03
	ld e, e                                          ; $6ff2: $5b
	db $fc                                           ; $6ff3: $fc
	sbc [hl]                                         ; $6ff4: $9e
	ld [bc], a                                       ; $6ff5: $02
	db $dd                                           ; $6ff6: $dd
	dec de                                           ; $6ff7: $1b
	ld c, a                                          ; $6ff8: $4f
	ret nz                                           ; $6ff9: $c0

	rst GetHLinHL                                          ; $6ffa: $cf
	ld hl, $c04f                                     ; $6ffb: $21 $4f $c0
	rst GetHLinHL                                          ; $6ffe: $cf
	dec de                                           ; $6fff: $1b
	inc bc                                           ; $7000: $03
	ret nz                                           ; $7001: $c0

	inc bc                                           ; $7002: $03
	ret nz                                           ; $7003: $c0

	rrca                                             ; $7004: $0f
	ret nz                                           ; $7005: $c0

	ld [hl-], a                                      ; $7006: $32
	nop                                              ; $7007: $00
	rst SubAFromHL                                          ; $7008: $d7
	ld de, $43fb                                     ; $7009: $11 $fb $43
	ldh a, [$d9]                                     ; $700c: $f0 $d9
	ld [hl+], a                                      ; $700e: $22
	ld l, e                                          ; $700f: $6b
	ldh a, [$d7]                                     ; $7010: $f0 $d7
	ld [hl+], a                                      ; $7012: $22
	ei                                               ; $7013: $fb
	sbc [hl]                                         ; $7014: $9e

jr_018_7015:
	ld [bc], a                                       ; $7015: $02
	reti                                             ; $7016: $d9


	ld [hl+], a                                      ; $7017: $22
	sbc [hl]                                         ; $7018: $9e
	jr nz, jr_018_7015                               ; $7019: $20 $fa

	ld c, a                                          ; $701b: $4f
	pop hl                                           ; $701c: $e1
	ld a, e                                          ; $701d: $7b
	rst SubAFromDE                                          ; $701e: $df
	ld l, a                                          ; $701f: $6f
	rst SubAFromBC                                          ; $7020: $e7
	ld h, e                                          ; $7021: $63
	ldh a, [$f2]                                     ; $7022: $f0 $f2
	rst SubAFromHL                                          ; $7024: $d7
	inc sp                                           ; $7025: $33
	ei                                               ; $7026: $fb
	sbc l                                            ; $7027: $9d
	ld b, h                                          ; $7028: $44
	ld d, l                                          ; $7029: $55
	ld l, e                                          ; $702a: $6b
	cp $9e                                           ; $702b: $fe $9e
	ld b, h                                          ; $702d: $44
	inc bc                                           ; $702e: $03
	ldh a, [$2f]                                     ; $702f: $f0 $2f
	ldh a, [$d8]                                     ; $7031: $f0 $d8
	ld b, h                                          ; $7033: $44
	inc bc                                           ; $7034: $03
	ldh a, [$0b]                                     ; $7035: $f0 $0b
	ldh a, [$3a]                                     ; $7037: $f0 $3a
	nop                                              ; $7039: $00
	adc a                                            ; $703a: $8f
	add [hl]                                         ; $703b: $86
	add a                                            ; $703c: $87
	adc b                                            ; $703d: $88
	adc c                                            ; $703e: $89
	sub [hl]                                         ; $703f: $96
	sub a                                            ; $7040: $97
	sbc b                                            ; $7041: $98
	sbc c                                            ; $7042: $99
	dec c                                            ; $7043: $0d
	and a                                            ; $7044: $a7
	xor b                                            ; $7045: $a8
	xor c                                            ; $7046: $a9
	inc b                                            ; $7047: $04
	inc bc                                           ; $7048: $03
	adc h                                            ; $7049: $8c
	adc e                                            ; $704a: $8b
	ld [hl], a                                       ; $704b: $77
	ldh a, [$97]                                     ; $704c: $f0 $97
	sbc d                                            ; $704e: $9a
	sbc e                                            ; $704f: $9b
	sbc h                                            ; $7050: $9c
	sbc l                                            ; $7051: $9d
	dec c                                            ; $7052: $0d
	ld a, [bc]                                       ; $7053: $0a
	and [hl]                                         ; $7054: $a6
	sub h                                            ; $7055: $94
	ld l, e                                          ; $7056: $6b
	ldh a, [hDisp1_WX]                                     ; $7057: $f0 $96
	sub c                                            ; $7059: $91
	sbc [hl]                                         ; $705a: $9e
	sbc a                                            ; $705b: $9f
	and b                                            ; $705c: $a0
	and c                                            ; $705d: $a1
	sub e                                            ; $705e: $93
	sub d                                            ; $705f: $92
	sub b                                            ; $7060: $90
	adc a                                            ; $7061: $8f
	ld l, e                                          ; $7062: $6b
	ldh a, [hDisp1_BGP]                                     ; $7063: $f0 $92
	sub l                                            ; $7065: $95
	and d                                            ; $7066: $a2
	and e                                            ; $7067: $a3
	and h                                            ; $7068: $a4
	and l                                            ; $7069: $a5
	dec c                                            ; $706a: $0d
	ld b, $8e                                        ; $706b: $06 $8e
	adc l                                            ; $706d: $8d
	inc b                                            ; $706e: $04
	ld [bc], a                                       ; $706f: $02
	adc d                                            ; $7070: $8a
	adc e                                            ; $7071: $8b
	dec c                                            ; $7072: $0d
	nop                                              ; $7073: $00
	sbc l                                            ; $7074: $9d
	ld d, l                                          ; $7075: $55
	ld h, [hl]                                       ; $7076: $66
	ld a, e                                          ; $7077: $7b
	cp $9c                                           ; $7078: $fe $9c
	ld [hl], a                                       ; $707a: $77
	ld d, l                                          ; $707b: $55
	ld b, l                                          ; $707c: $45
	daa                                              ; $707d: $27
	ld hl, sp-$2b                                    ; $707e: $f8 $d5
	inc bc                                           ; $7080: $03
	pop af                                           ; $7081: $f1
	adc a                                            ; $7082: $8f
	rst $38                                          ; $7083: $ff
	ld a, a                                          ; $7084: $7f
	rst $38                                          ; $7085: $ff
	rst $38                                          ; $7086: $ff
	ldh a, [rIE]                                     ; $7087: $f0 $ff
	rst FarCall                                          ; $7089: $f7
	ld hl, sp-$05                                    ; $708a: $f8 $fb
	db $fc                                           ; $708c: $fc
	db $dd                                           ; $708d: $dd
	cp $ce                                           ; $708e: $fe $ce
	rst $38                                          ; $7090: $ff
	rst SubAFromHL                                          ; $7091: $d7
	rst AddAOntoHL                                          ; $7092: $ef
	db $dd                                           ; $7093: $dd
	rst $38                                          ; $7094: $ff
	ld a, a                                          ; $7095: $7f
	db $eb                                           ; $7096: $eb
	ld a, e                                          ; $7097: $7b
	db $fd                                           ; $7098: $fd
	ld a, e                                          ; $7099: $7b
	cp $9b                                           ; $709a: $fe $9b
	db $fd                                           ; $709c: $fd
	inc bc                                           ; $709d: $03
	ld a, e                                          ; $709e: $7b
	add a                                            ; $709f: $87
	ld d, a                                          ; $70a0: $57
	ldh a, [$dd]                                     ; $70a1: $f0 $dd
	rst $38                                          ; $70a3: $ff
	sub h                                            ; $70a4: $94
	db $eb                                           ; $70a5: $eb
	rst FarCall                                          ; $70a6: $f7
	ld [hl], e                                       ; $70a7: $73
	rst $38                                          ; $70a8: $ff
	cp e                                             ; $70a9: $bb
	ld a, a                                          ; $70aa: $7f
	rst SubAFromDE                                          ; $70ab: $df
	ccf                                              ; $70ac: $3f
	rst AddAOntoHL                                          ; $70ad: $ef
	rra                                              ; $70ae: $1f
	rrca                                             ; $70af: $0f
	sbc $ff                                          ; $70b0: $de $ff
	sbc c                                            ; $70b2: $99
	cp $ff                                           ; $70b3: $fe $ff
	sbc $e1                                          ; $70b5: $de $e1
	sbc a                                            ; $70b7: $9f
	ldh [$6f], a                                     ; $70b8: $e0 $6f
	ldh [c], a                                       ; $70ba: $e2
	ld [hl], e                                       ; $70bb: $73
	pop hl                                           ; $70bc: $e1
	db $db                                           ; $70bd: $db
	rst $38                                          ; $70be: $ff
	ld e, e                                          ; $70bf: $5b
	ldh a, [$9d]                                     ; $70c0: $f0 $9d
	ld a, a                                          ; $70c2: $7f
	add e                                            ; $70c3: $83
	ld l, e                                          ; $70c4: $6b
	call nz, $f06b                                   ; $70c5: $c4 $6b $f0
	ld a, a                                          ; $70c8: $7f
	sbc [hl]                                         ; $70c9: $9e
	ld a, a                                          ; $70ca: $7f
	sbc d                                            ; $70cb: $9a
	ld a, a                                          ; $70cc: $7f
	sub [hl]                                         ; $70cd: $96
	ld a, a                                          ; $70ce: $7f
	sub d                                            ; $70cf: $92
	ld a, a                                          ; $70d0: $7f
	adc [hl]                                         ; $70d1: $8e
	ld a, a                                          ; $70d2: $7f
	adc d                                            ; $70d3: $8a
	ld a, e                                          ; $70d4: $7b
	ldh [c], a                                       ; $70d5: $e2
	sbc d                                            ; $70d6: $9a
	rst $38                                          ; $70d7: $ff
	dec sp                                           ; $70d8: $3b
	rst JumpTable                                          ; $70d9: $c7
	ei                                               ; $70da: $fb
	rlca                                             ; $70db: $07
	ld l, a                                          ; $70dc: $6f
	cp $7f                                           ; $70dd: $fe $7f
	sub h                                            ; $70df: $94
	adc e                                            ; $70e0: $8b
	cp e                                             ; $70e1: $bb
	rst JumpTable                                          ; $70e2: $c7
	db $db                                           ; $70e3: $db
	rst SubAFromBC                                          ; $70e4: $e7
	ccf                                              ; $70e5: $3f
	ld a, a                                          ; $70e6: $7f
	ld a, b                                          ; $70e7: $78
	rst $38                                          ; $70e8: $ff
	ld a, e                                          ; $70e9: $7b
	db $fc                                           ; $70ea: $fc
	ld a, l                                          ; $70eb: $7d
	cp $4e                                           ; $70ec: $fe $4e
	rst $38                                          ; $70ee: $ff
	ld d, a                                          ; $70ef: $57
	rst AddAOntoHL                                          ; $70f0: $ef
	ld e, e                                          ; $70f1: $5b
	rst SubAFromBC                                          ; $70f2: $e7
	ld e, l                                          ; $70f3: $5d
	db $e3                                           ; $70f4: $e3
	ld c, e                                          ; $70f5: $4b
	ld d, d                                          ; $70f6: $52
	sbc h                                            ; $70f7: $9c
	nop                                              ; $70f8: $00
	ldh [$e0], a                                     ; $70f9: $e0 $e0
	ld c, a                                          ; $70fb: $4f
	ldh a, [$99]                                     ; $70fc: $f0 $99
	ldh a, [rAUD1SWEEP]                              ; $70fe: $f0 $10
	ldh [rAUD4LEN], a                                ; $7100: $e0 $20
	ret nz                                           ; $7102: $c0

	ret nz                                           ; $7103: $c0

	ld e, a                                          ; $7104: $5f
	ldh a, [$99]                                     ; $7105: $f0 $99
	rra                                              ; $7107: $1f
	db $10                                           ; $7108: $10
	rrca                                             ; $7109: $0f
	ld [$0707], sp                                   ; $710a: $08 $07 $07
	ld e, a                                          ; $710d: $5f
	ldh a, [$57]                                     ; $710e: $f0 $57
	ld b, b                                          ; $7110: $40
	sbc d                                            ; $7111: $9a
	cp a                                             ; $7112: $bf
	ret nz                                           ; $7113: $c0

	sbc $e1                                          ; $7114: $de $e1
	cp $de                                           ; $7116: $fe $de
	rst $38                                          ; $7118: $ff
	ld a, a                                          ; $7119: $7f
	ld b, [hl]                                       ; $711a: $46
	ld a, a                                          ; $711b: $7f
	ld b, d                                          ; $711c: $42
	ld a, a                                          ; $711d: $7f
	ld a, $7f                                        ; $711e: $3e $7f
	ld a, [hl-]                                      ; $7120: $3a
	ld a, a                                          ; $7121: $7f
	ld [hl], $7f                                     ; $7122: $36 $7f
	ld [hl-], a                                      ; $7124: $32
	ld a, a                                          ; $7125: $7f
	adc [hl]                                         ; $7126: $8e
	sbc c                                            ; $7127: $99
	db $dd                                           ; $7128: $dd
	db $e3                                           ; $7129: $e3
	sbc $e1                                          ; $712a: $de $e1
	rst SubAFromDE                                          ; $712c: $df
	ldh [rPCM34], a                                  ; $712d: $e0 $77
	cp $7f                                           ; $712f: $fe $7f
	ld hl, sp+$7f                                    ; $7131: $f8 $7f
	db $f4                                           ; $7133: $f4
	adc a                                            ; $7134: $8f
	cp d                                             ; $7135: $ba
	rst JumpTable                                          ; $7136: $c7
	jp c, $eae7                                      ; $7137: $da $e7 $ea

	rst FarCall                                          ; $713a: $f7
	ld a, d                                          ; $713b: $7a
	rst FarCall                                          ; $713c: $f7
	cp [hl]                                          ; $713d: $be
	ld a, a                                          ; $713e: $7f
	cp $1f                                           ; $713f: $fe $1f
	inc e                                            ; $7141: $1c
	rst $38                                          ; $7142: $ff
	db $fc                                           ; $7143: $fc
	cp $7b                                           ; $7144: $fe $7b
	ld c, b                                          ; $7146: $48
	ld c, e                                          ; $7147: $4b
	ld a, [hl]                                       ; $7148: $7e
	rst FarCall                                          ; $7149: $f7
	rst SubAFromDE                                          ; $714a: $df
	ldh a, [$9b]                                     ; $714b: $f0 $9b
	sub b                                            ; $714d: $90
	ldh a, [$0e]                                     ; $714e: $f0 $0e
	ld c, $4f                                        ; $7150: $0e $4f
	ldh [c], a                                       ; $7152: $e2
	ld a, a                                          ; $7153: $7f

jr_018_7154:
	adc $8f                                          ; $7154: $ce $8f
	ld e, $ff                                        ; $7156: $1e $ff
	sbc $3f                                          ; $7158: $de $3f
	cp [hl]                                          ; $715a: $be
	ld a, a                                          ; $715b: $7f
	ld [hl], d                                       ; $715c: $72
	rst $38                                          ; $715d: $ff
	ld [$daf7], a                                    ; $715e: $ea $f7 $da
	rst SubAFromBC                                          ; $7161: $e7
	cp d                                             ; $7162: $ba
	rst JumpTable                                          ; $7163: $c7
	sbc $e1                                          ; $7164: $de $e1
	ld d, a                                          ; $7166: $57
	and d                                            ; $7167: $a2
	ld a, a                                          ; $7168: $7f
	sub d                                            ; $7169: $92
	sbc l                                            ; $716a: $9d
	ld bc, $5700                                     ; $716b: $01 $00 $57
	cp $9a                                           ; $716e: $fe $9a
	ccf                                              ; $7170: $3f
	nop                                              ; $7171: $00
	jr nz, jr_018_7154                               ; $7172: $20 $e0

	jr nz, jr_018_7154                               ; $7174: $20 $de

	ldh [hDisp1_WY], a                                     ; $7176: $e0 $95
	ret nz                                           ; $7178: $c0

	ld b, b                                          ; $7179: $40
	ldh [rAUD4LEN], a                                ; $717a: $e0 $20
	ldh a, [rAUD1SWEEP]                              ; $717c: $f0 $10
	ldh a, [rAUD1SWEEP]                              ; $717e: $f0 $10
	ret nc                                           ; $7180: $d0

	jr nc, @+$51                                     ; $7181: $30 $4f

	sub b                                            ; $7183: $90
	rst SubAFromDE                                          ; $7184: $df
	ld [bc], a                                       ; $7185: $02
	ld d, a                                          ; $7186: $57
	ldh a, [$df]                                     ; $7187: $f0 $df
	rlca                                             ; $7189: $07
	sbc l                                            ; $718a: $9d
	dec b                                            ; $718b: $05
	rlca                                             ; $718c: $07
	ld [hl], a                                       ; $718d: $77
	scf                                              ; $718e: $37
	sub e                                            ; $718f: $93
	add c                                            ; $7190: $81
	rst $38                                          ; $7191: $ff
	rst SubAFromBC                                          ; $7192: $e7
	ld a, [hl]                                       ; $7193: $7e
	db $fd                                           ; $7194: $fd
	ld a, $f5                                        ; $7195: $3e $f5
	ld e, $fe                                        ; $7197: $1e $fe
	sbc a                                            ; $7199: $9f
	pop af                                           ; $719a: $f1
	sub c                                            ; $719b: $91
	ld d, a                                          ; $719c: $57
	ldh [$df], a                                     ; $719d: $e0 $df
	ld a, a                                          ; $719f: $7f
	sbc l                                            ; $71a0: $9d
	ld b, b                                          ; $71a1: $40
	ld a, a                                          ; $71a2: $7f
	ld d, a                                          ; $71a3: $57
	ldh a, [$df]                                     ; $71a4: $f0 $df
	cp $87                                           ; $71a6: $fe $87
	ld [bc], a                                       ; $71a8: $02
	cp $5d                                           ; $71a9: $fe $5d
	db $e3                                           ; $71ab: $e3
	ld e, e                                          ; $71ac: $5b
	rst SubAFromBC                                          ; $71ad: $e7

jr_018_71ae:
	ld d, a                                          ; $71ae: $57
	rst AddAOntoHL                                          ; $71af: $ef
	ld c, [hl]                                       ; $71b0: $4e
	rst $38                                          ; $71b1: $ff
	ld a, l                                          ; $71b2: $7d
	cp $7b                                           ; $71b3: $fe $7b
	db $fc                                           ; $71b5: $fc
	ld a, b                                          ; $71b6: $78
	rst $38                                          ; $71b7: $ff
	ccf                                              ; $71b8: $3f
	rst $38                                          ; $71b9: $ff
	db $db                                           ; $71ba: $db
	rst SubAFromBC                                          ; $71bb: $e7
	cp e                                             ; $71bc: $bb
	rst JumpTable                                          ; $71bd: $c7
	ld a, e                                          ; $71be: $7b
	add a                                            ; $71bf: $87
	ld e, [hl]                                       ; $71c0: $5e
	adc h                                            ; $71c1: $8c
	sbc l                                            ; $71c2: $9d
	rst SubAFromDE                                          ; $71c3: $df
	db $e3                                           ; $71c4: $e3
	ld c, a                                          ; $71c5: $4f
	cp $8a                                           ; $71c6: $fe $8a
	ld bc, $01ff                                     ; $71c8: $01 $ff $01
	rst $38                                          ; $71cb: $ff
	inc bc                                           ; $71cc: $03
	rst $38                                          ; $71cd: $ff
	adc a                                            ; $71ce: $8f
	db $fc                                           ; $71cf: $fc
	ld a, a                                          ; $71d0: $7f
	ld hl, sp+$5f                                    ; $71d1: $f8 $5f
	ldh a, [rIE]                                     ; $71d3: $f0 $ff
	ldh a, [c]                                       ; $71d5: $f2
	rra                                              ; $71d6: $1f
	ld [de], a                                       ; $71d7: $12
	nop                                              ; $71d8: $00
	nop                                              ; $71d9: $00
	ccf                                              ; $71da: $3f
	ccf                                              ; $71db: $3f
	jr nz, @+$7d                                     ; $71dc: $20 $7b

	cp $df                                           ; $71de: $fe $df
	ccf                                              ; $71e0: $3f
	sub [hl]                                         ; $71e1: $96
	ld [bc], a                                       ; $71e2: $02
	inc bc                                           ; $71e3: $03
	inc b                                            ; $71e4: $04
	rlca                                             ; $71e5: $07
	ld [$900f], sp                                   ; $71e6: $08 $0f $90
	ldh a, [$9f]                                     ; $71e9: $f0 $9f
	ld [hl], d                                       ; $71eb: $72
	or e                                             ; $71ec: $b3
	ld a, [hl]                                       ; $71ed: $7e
	cp h                                             ; $71ee: $bc
	sub h                                            ; $71ef: $94
	inc b                                            ; $71f0: $04
	db $fc                                           ; $71f1: $fc
	ld [bc], a                                       ; $71f2: $02
	cp $91                                           ; $71f3: $fe $91
	rst $38                                          ; $71f5: $ff
	ld bc, $c101                                     ; $71f6: $01 $01 $c1
	pop bc                                           ; $71f9: $c1
	ld b, c                                          ; $71fa: $41
	ld a, e                                          ; $71fb: $7b
	cp $df                                           ; $71fc: $fe $df
	pop bc                                           ; $71fe: $c1
	db $db                                           ; $71ff: $db
	ld bc, $9576                                     ; $7200: $01 $76 $95
	ld a, a                                          ; $7203: $7f
	sbc d                                            ; $7204: $9a
	ld [hl], a                                       ; $7205: $77
	ld a, [hl+]                                      ; $7206: $2a
	ld a, a                                          ; $7207: $7f
	cp $7f                                           ; $7208: $fe $7f
	ld hl, sp+$7f                                    ; $720a: $f8 $7f
	db $f4                                           ; $720c: $f4
	rst SubAFromDE                                          ; $720d: $df
	ldh a, [$7f]                                     ; $720e: $f0 $7f
	add hl, hl                                       ; $7210: $29
	ld a, a                                          ; $7211: $7f
	call z, $fe67                                    ; $7212: $cc $67 $fe
	ld a, a                                          ; $7215: $7f
	db $f4                                           ; $7216: $f4
	ld [hl], e                                       ; $7217: $73
	jr c, jr_018_71ae                                ; $7218: $38 $94

	inc bc                                           ; $721a: $03
	inc e                                            ; $721b: $1c
	rrca                                             ; $721c: $0f
	jr nc, jr_018_723e                               ; $721d: $30 $1f

	ld h, d                                          ; $721f: $62
	ccf                                              ; $7220: $3f
	ld b, a                                          ; $7221: $47
	ld a, l                                          ; $7222: $7d
	adc c                                            ; $7223: $89
	ld sp, hl                                        ; $7224: $f9
	db $fd                                           ; $7225: $fd
	ld a, l                                          ; $7226: $7d
	push af                                          ; $7227: $f5
	sbc [hl]                                         ; $7228: $9e
	inc c                                            ; $7229: $0c
	ld a, e                                          ; $722a: $7b
	or h                                             ; $722b: $b4
	add b                                            ; $722c: $80
	inc hl                                           ; $722d: $23
	cp $51                                           ; $722e: $fe $51
	rst SubAFromDE                                          ; $7230: $df
	ld c, c                                          ; $7231: $49
	rst GetHLinHL                                          ; $7232: $cf
	dec b                                            ; $7233: $05
	rlca                                             ; $7234: $07
	add hl, bc                                       ; $7235: $09
	rrca                                             ; $7236: $0f
	db $10                                           ; $7237: $10
	rra                                              ; $7238: $1f
	jr jr_018_725a                                   ; $7239: $18 $1f

	add hl, bc                                       ; $723b: $09
	rrca                                             ; $723c: $0f
	dec de                                           ; $723d: $1b

jr_018_723e:
	rra                                              ; $723e: $1f
	inc de                                           ; $723f: $13
	rra                                              ; $7240: $1f
	db $10                                           ; $7241: $10
	rra                                              ; $7242: $1f
	dec b                                            ; $7243: $05
	rlca                                             ; $7244: $07
	db $fd                                           ; $7245: $fd
	rst $38                                          ; $7246: $ff
	ld b, b                                          ; $7247: $40
	rst $38                                          ; $7248: $ff
	db $fd                                           ; $7249: $fd
	rst $38                                          ; $724a: $ff
	push bc                                          ; $724b: $c5
	sbc e                                            ; $724c: $9b
	rst JumpTable                                          ; $724d: $c7
	ld a, l                                          ; $724e: $7d
	rst $38                                          ; $724f: $ff
	jr nz, jr_018_72cd                               ; $7250: $20 $7b

	and [hl]                                         ; $7252: $a6
	halt                                             ; $7253: $76
	adc d                                            ; $7254: $8a
	ld a, a                                          ; $7255: $7f
	cp d                                             ; $7256: $ba
	rst SubAFromDE                                          ; $7257: $df
	ldh a, [rIE]                                     ; $7258: $f0 $ff

jr_018_725a:
	rst SubAFromDE                                          ; $725a: $df
	ldh [$7f], a                                     ; $725b: $e0 $7f
	sbc [hl]                                         ; $725d: $9e
	rst SubAFromDE                                          ; $725e: $df
	pop hl                                           ; $725f: $e1
	sbc l                                            ; $7260: $9d
	ld c, [hl]                                       ; $7261: $4e
	ld a, a                                          ; $7262: $7f
	ld [hl], a                                       ; $7263: $77
	cp $7f                                           ; $7264: $fe $7f
	ld [$fa6f], sp                                   ; $7266: $08 $6f $fa
	ld a, [hl]                                       ; $7269: $7e
	ld d, c                                          ; $726a: $51
	sbc l                                            ; $726b: $9d
	ld [hl], d                                       ; $726c: $72
	cp $77                                           ; $726d: $fe $77
	cp $7f                                           ; $726f: $fe $7f
	or d                                             ; $7271: $b2
	ld l, a                                          ; $7272: $6f
	ld a, [$f17e]                                    ; $7273: $fa $7e $f1
	sbc [hl]                                         ; $7276: $9e
	ld a, a                                          ; $7277: $7f
	ld d, d                                          ; $7278: $52
	sub b                                            ; $7279: $90
	sbc e                                            ; $727a: $9b
	add c                                            ; $727b: $81
	add b                                            ; $727c: $80
	ei                                               ; $727d: $fb
	rst JumpTable                                          ; $727e: $c7
	ld c, a                                          ; $727f: $4f
	cp $7f                                           ; $7280: $fe $7f
	ld l, $7f                                        ; $7282: $2e $7f
	cp $df                                           ; $7284: $fe $df
	rrca                                             ; $7286: $0f
	sub e                                            ; $7287: $93
	rlca                                             ; $7288: $07
	inc b                                            ; $7289: $04
	rrca                                             ; $728a: $0f
	ld [$101f], sp                                   ; $728b: $08 $1f $10
	ld e, $11                                        ; $728e: $1e $11
	rla                                              ; $7290: $17
	add hl, de                                       ; $7291: $19
	add b                                            ; $7292: $80
	nop                                              ; $7293: $00
	ld c, a                                          ; $7294: $4f
	cp $95                                           ; $7295: $fe $95
	ld de, $231f                                     ; $7297: $11 $1f $23
	ccf                                              ; $729a: $3f
	ld b, h                                          ; $729b: $44
	ld a, a                                          ; $729c: $7f
	ld c, h                                          ; $729d: $4c
	ld a, a                                          ; $729e: $7f
	scf                                              ; $729f: $37
	scf                                              ; $72a0: $37
	ei                                               ; $72a1: $fb
	sbc d                                            ; $72a2: $9a
	sbc b                                            ; $72a3: $98
	rst $38                                          ; $72a4: $ff
	sbc h                                            ; $72a5: $9c
	rst $38                                          ; $72a6: $ff
	ld [bc], a                                       ; $72a7: $02
	ld a, d                                          ; $72a8: $7a
	sbc $9d                                          ; $72a9: $de $9d
	sbc [hl]                                         ; $72ab: $9e
	cp $77                                           ; $72ac: $fe $77
	jr nc, @-$1f                                     ; $72ae: $30 $df

	ldh a, [$df]                                     ; $72b0: $f0 $df
	add c                                            ; $72b2: $81
	ld a, a                                          ; $72b3: $7f
	inc b                                            ; $72b4: $04
	sbc e                                            ; $72b5: $9b
	ld hl, $21e1                                     ; $72b6: $21 $e1 $21
	pop hl                                           ; $72b9: $e1
	ld h, a                                          ; $72ba: $67
	nop                                              ; $72bb: $00
	ld d, a                                          ; $72bc: $57
	inc b                                            ; $72bd: $04
	ld a, a                                          ; $72be: $7f
	db $fc                                           ; $72bf: $fc
	rst SubAFromDE                                          ; $72c0: $df
	ldh [$57], a                                     ; $72c1: $e0 $57
	inc b                                            ; $72c3: $04
	ld [hl], a                                       ; $72c4: $77
	ret nc                                           ; $72c5: $d0

	sbc b                                            ; $72c6: $98
	sub b                                            ; $72c7: $90
	pop af                                           ; $72c8: $f1
	sub d                                            ; $72c9: $92
	di                                               ; $72ca: $f3
	sbc h                                            ; $72cb: $9c
	rst FarCall                                          ; $72cc: $f7

jr_018_72cd:
	adc b                                            ; $72cd: $88
	ld a, d                                          ; $72ce: $7a
	inc a                                            ; $72cf: $3c
	add b                                            ; $72d0: $80
	jp Jump_018_7ffe                                 ; $72d1: $c3 $fe $7f


	ld a, a                                          ; $72d4: $7f
	ld bc, $4901                                     ; $72d5: $01 $01 $49
	rst GetHLinHL                                          ; $72d8: $cf
	ld c, c                                          ; $72d9: $49
	rst GetHLinHL                                          ; $72da: $cf
	ret                                              ; $72db: $c9


	adc a                                            ; $72dc: $8f
	sub c                                            ; $72dd: $91
	sbc a                                            ; $72de: $9f
	pop af                                           ; $72df: $f1
	ld a, a                                          ; $72e0: $7f
	db $e3                                           ; $72e1: $e3
	rst $38                                          ; $72e2: $ff
	ld c, $fe                                        ; $72e3: $0e $fe
	db $fc                                           ; $72e5: $fc
	db $fc                                           ; $72e6: $fc
	ld e, $1f                                        ; $72e7: $1e $1f
	ld c, $0f                                        ; $72e9: $0e $0f
	ld a, [bc]                                       ; $72eb: $0a
	rrca                                             ; $72ec: $0f
	ld a, [de]                                       ; $72ed: $1a
	rra                                              ; $72ee: $1f
	ld [de], a                                       ; $72ef: $12
	sub d                                            ; $72f0: $92
	rra                                              ; $72f1: $1f
	ld d, $1f                                        ; $72f2: $16 $1f
	ld e, $1f                                        ; $72f4: $1e $1f
	inc bc                                           ; $72f6: $03
	inc bc                                           ; $72f7: $03
	and b                                            ; $72f8: $a0
	rst $38                                          ; $72f9: $ff
	rst SubAFromBC                                          ; $72fa: $e7
	rst $38                                          ; $72fb: $ff
	and l                                            ; $72fc: $a5
	db $fd                                           ; $72fd: $fd
	ld [hl], a                                       ; $72fe: $77

Call_018_72ff:
	cp $7f                                           ; $72ff: $fe $7f
	ld hl, sp-$62                                    ; $7301: $f8 $9e
	and b                                            ; $7303: $a0
	sbc $bf                                          ; $7304: $de $bf
	ld [hl], a                                       ; $7306: $77
	sub h                                            ; $7307: $94
	ld l, a                                          ; $7308: $6f
	sbc [hl]                                         ; $7309: $9e
	sbc h                                            ; $730a: $9c
	inc hl                                           ; $730b: $23
	db $e3                                           ; $730c: $e3
	ld [hl+], a                                      ; $730d: $22
	sbc $e3                                          ; $730e: $de $e3
	ld a, a                                          ; $7310: $7f
	sbc d                                            ; $7311: $9a
	ld a, a                                          ; $7312: $7f
	inc c                                            ; $7313: $0c
	sub e                                            ; $7314: $93
	inc c                                            ; $7315: $0c

jr_018_7316:
	rrca                                             ; $7316: $0f
	jr jr_018_7338                                   ; $7317: $18 $1f

	ld [hl-], a                                      ; $7319: $32
	ccf                                              ; $731a: $3f
	and $ff                                          ; $731b: $e6 $ff
	ld c, $ff                                        ; $731d: $0e $ff
	ei                                               ; $731f: $fb

jr_018_7320:
	ei                                               ; $7320: $fb
	ld [hl], h                                       ; $7321: $74
	cpl                                              ; $7322: $2f
	adc a                                            ; $7323: $8f
	jr nc, jr_018_7316                               ; $7324: $30 $f0

	jr jr_018_7320                                   ; $7326: $18 $f8

	ld c, h                                          ; $7328: $4c
	db $fc                                           ; $7329: $fc
	ld h, a                                          ; $732a: $67
	rst $38                                          ; $732b: $ff
	ld [hl], b                                       ; $732c: $70
	rst $38                                          ; $732d: $ff
	rst SubAFromDE                                          ; $732e: $df
	rst SubAFromDE                                          ; $732f: $df
	add c                                            ; $7330: $81
	add b                                            ; $7331: $80
	add c                                            ; $7332: $81
	add b                                            ; $7333: $80
	ld l, a                                          ; $7334: $6f
	inc b                                            ; $7335: $04
	sbc c                                            ; $7336: $99
	pop bc                                           ; $7337: $c1

jr_018_7338:
	ret nz                                           ; $7338: $c0

	ld b, c                                          ; $7339: $41
	ret nz                                           ; $733a: $c0

	pop bc                                           ; $733b: $c1
	ret nz                                           ; $733c: $c0

	ld c, a                                          ; $733d: $4f
	ld [hl+], a                                      ; $733e: $22

Call_018_733f:
	sbc l                                            ; $733f: $9d
	db $fc                                           ; $7340: $fc
	nop                                              ; $7341: $00
	ld c, [hl]                                       ; $7342: $4e
	ld [bc], a                                       ; $7343: $02
	ld a, l                                          ; $7344: $7d
	ld e, [hl]                                       ; $7345: $5e
	ld sp, hl                                        ; $7346: $f9
	db $dd                                           ; $7347: $dd
	add b                                            ; $7348: $80
	add b                                            ; $7349: $80
	ld b, b                                          ; $734a: $40
	ret nz                                           ; $734b: $c0

	ld b, b                                          ; $734c: $40
	ret nz                                           ; $734d: $c0

	ldh [$e0], a                                     ; $734e: $e0 $e0
	cp b                                             ; $7350: $b8
	ld a, b                                          ; $7351: $78
	ld c, $fe                                        ; $7352: $0e $fe
	inc de                                           ; $7354: $13
	rst $38                                          ; $7355: $ff
	dec a                                            ; $7356: $3d
	db $e3                                           ; $7357: $e3
	ld a, [hl]                                       ; $7358: $7e
	pop bc                                           ; $7359: $c1
	ldh [$9f], a                                     ; $735a: $e0 $9f
	add b                                            ; $735c: $80
	rst $38                                          ; $735d: $ff
	rrca                                             ; $735e: $0f
	rrca                                             ; $735f: $0f
	dec sp                                           ; $7360: $3b
	inc a                                            ; $7361: $3c
	ldh [rIE], a                                     ; $7362: $e0 $ff
	sub b                                            ; $7364: $90
	rst $38                                          ; $7365: $ff
	ld a, b                                          ; $7366: $78
	adc a                                            ; $7367: $8f
	db $fc                                           ; $7368: $fc
	sbc e                                            ; $7369: $9b
	rlca                                             ; $736a: $07
	ld c, $f3                                        ; $736b: $0e $f3
	inc bc                                           ; $736d: $03
	ld l, c                                          ; $736e: $69
	sub c                                            ; $736f: $91
	rst SubAFromDE                                          ; $7370: $df
	ld bc, $e27d                                     ; $7371: $01 $7d $e2
	ld [hl], l                                       ; $7374: $75
	ldh [$7f], a                                     ; $7375: $e0 $7f
	cp $9a                                           ; $7377: $fe $9a
	call $cdff                                       ; $7379: $cd $ff $cd
	rst $38                                          ; $737c: $ff
	ld b, c                                          ; $737d: $41
	sbc $7f                                          ; $737e: $de $7f
	ld a, b                                          ; $7380: $78
	db $f4                                           ; $7381: $f4
	ld a, c                                          ; $7382: $79
	or [hl]                                          ; $7383: $b6
	rst SubAFromDE                                          ; $7384: $df
	rst $38                                          ; $7385: $ff
	sub d                                            ; $7386: $92
	sub h                                            ; $7387: $94
	rst FarCall                                          ; $7388: $f7
	sbc b                                            ; $7389: $98
	rst $38                                          ; $738a: $ff
	sbc c                                            ; $738b: $99
	rst $38                                          ; $738c: $ff
	sub d                                            ; $738d: $92
	cp $84                                           ; $738e: $fe $84
	db $fc                                           ; $7390: $fc
	adc a                                            ; $7391: $8f
	rst $38                                          ; $7392: $ff
	add b                                            ; $7393: $80
	sbc $ff                                          ; $7394: $de $ff
	sub a                                            ; $7396: $97
	ld c, b                                          ; $7397: $48
	ld hl, sp-$78                                    ; $7398: $f8 $88
	ld hl, sp-$70                                    ; $739a: $f8 $90
	ldh a, [$60]                                     ; $739c: $f0 $60

jr_018_739e:
	ld h, b                                          ; $739e: $60
	ld sp, hl                                        ; $739f: $f9
	sbc l                                            ; $73a0: $9d
	ret nz                                           ; $73a1: $c0

	ld a, a                                          ; $73a2: $7f
	ld [hl], a                                       ; $73a3: $77
	cp $93                                           ; $73a4: $fe $93
	pop bc                                           ; $73a6: $c1
	rst $38                                          ; $73a7: $ff
	add d                                            ; $73a8: $82
	cp $0c                                           ; $73a9: $fe $0c
	db $fc                                           ; $73ab: $fc
	jr nc, jr_018_739e                               ; $73ac: $30 $f0

	ret nz                                           ; $73ae: $c0

	ret nz                                           ; $73af: $c0

	rlca                                             ; $73b0: $07
	db $fc                                           ; $73b1: $fc
	ld [hl], e                                       ; $73b2: $73
	cp $8e                                           ; $73b3: $fe $8e
	cp $83                                           ; $73b5: $fe $83
	rst $38                                          ; $73b7: $ff
	ld h, b                                          ; $73b8: $60
	ld a, a                                          ; $73b9: $7f
	jr jr_018_73db                                   ; $73ba: $18 $1f

	rlca                                             ; $73bc: $07
	rlca                                             ; $73bd: $07
	inc h                                            ; $73be: $24

jr_018_73bf:
	ccf                                              ; $73bf: $3f
	ld [hl+], a                                      ; $73c0: $22
	ccf                                              ; $73c1: $3f
	ld [de], a                                       ; $73c2: $12
	rra                                              ; $73c3: $1f
	dec c                                            ; $73c4: $0d
	dec c                                            ; $73c5: $0d
	ld h, b                                          ; $73c6: $60
	sbc [hl]                                         ; $73c7: $9e
	ld a, e                                          ; $73c8: $7b
	xor d                                            ; $73c9: $aa
	ld a, a                                          ; $73ca: $7f
	cp $96                                           ; $73cb: $fe $96
	rst GetHLinHL                                          ; $73cd: $cf
	rst $38                                          ; $73ce: $ff
	ret z                                            ; $73cf: $c8

	ld hl, sp-$38                                    ; $73d0: $f8 $c8
	ld hl, sp-$35                                    ; $73d2: $f8 $cb
	ei                                               ; $73d4: $fb
	rst GetHLinHL                                          ; $73d5: $cf
	sbc $ff                                          ; $73d6: $de $ff
	ld a, a                                          ; $73d8: $7f
	xor d                                            ; $73d9: $aa
	ld a, a                                          ; $73da: $7f

jr_018_73db:
	cp $7e                                           ; $73db: $fe $7e
	ld l, h                                          ; $73dd: $6c
	ld a, a                                          ; $73de: $7f
	sbc b                                            ; $73df: $98
	ld l, a                                          ; $73e0: $6f
	cp $9d                                           ; $73e1: $fe $9d
	jr nz, jr_018_73e5                               ; $73e3: $20 $00

jr_018_73e5:
	ld l, a                                          ; $73e5: $6f
	cp $97                                           ; $73e6: $fe $97
	and b                                            ; $73e8: $a0
	ld h, b                                          ; $73e9: $60
	ld d, b                                          ; $73ea: $50
	ldh a, [rOBP0]                                   ; $73eb: $f0 $48
	ld hl, sp+$48                                    ; $73ed: $f8 $48
	ld hl, sp+$4c                                    ; $73ef: $f8 $4c
	sub b                                            ; $73f1: $90
	ld a, a                                          ; $73f2: $7f
	cp $80                                           ; $73f3: $fe $80
	ld c, d                                          ; $73f5: $4a
	adc d                                            ; $73f6: $8a
	ld b, h                                          ; $73f7: $44
	adc [hl]                                         ; $73f8: $8e
	ld b, b                                          ; $73f9: $40
	add b                                            ; $73fa: $80
	ld b, b                                          ; $73fb: $40
	add b                                            ; $73fc: $80
	jr nz, jr_018_73bf                               ; $73fd: $20 $c0

	rra                                              ; $73ff: $1f
	ldh [$80], a                                     ; $7400: $e0 $80
	rst $38                                          ; $7402: $ff
	ret nz                                           ; $7403: $c0

	rst $38                                          ; $7404: $ff
	ld d, d                                          ; $7405: $52
	ld d, c                                          ; $7406: $51
	ld [hl+], a                                      ; $7407: $22
	ld [hl], c                                       ; $7408: $71
	ld [bc], a                                       ; $7409: $02
	ld bc, $0102                                     ; $740a: $01 $02 $01
	inc b                                            ; $740d: $04
	inc bc                                           ; $740e: $03
	ld hl, sp+$07                                    ; $740f: $f8 $07
	inc bc                                           ; $7411: $03
	rst $38                                          ; $7412: $ff
	rlca                                             ; $7413: $07
	sbc h                                            ; $7414: $9c
	cp $04                                           ; $7415: $fe $04
	nop                                              ; $7417: $00
	ld l, a                                          ; $7418: $6f
	cp $97                                           ; $7419: $fe $97
	ld a, [bc]                                       ; $741b: $0a
	inc c                                            ; $741c: $0c
	dec d                                            ; $741d: $15
	ld e, $24                                        ; $741e: $1e $24
	ccf                                              ; $7420: $3f
	inc h                                            ; $7421: $24
	ccf                                              ; $7422: $3f
	ld h, d                                          ; $7423: $62
	ldh a, [$9b]                                     ; $7424: $f0 $9b
	nop                                              ; $7426: $00
	ld b, b                                          ; $7427: $40
	nop                                              ; $7428: $00
	ld h, b                                          ; $7429: $60
	ld a, e                                          ; $742a: $7b
	xor b                                            ; $742b: $a8
	rst FarCall                                          ; $742c: $f7
	db $dd                                           ; $742d: $dd
	ld bc, $0c7f                                     ; $742e: $01 $7f $0c
	rst FarCall                                          ; $7431: $f7
	ld h, [hl]                                       ; $7432: $66
	adc $76                                          ; $7433: $ce $76
	call z, $3f9b                                    ; $7435: $cc $9b $3f
	ret nz                                           ; $7438: $c0

	ld hl, $77c0                                     ; $7439: $21 $c0 $77
	sbc d                                            ; $743c: $9a
	ld a, a                                          ; $743d: $7f
	cp $76                                           ; $743e: $fe $76
	add sp, -$21                                     ; $7440: $e8 $df
	rlca                                             ; $7442: $07
	sbc e                                            ; $7443: $9b
	ld a, h                                          ; $7444: $7c
	inc bc                                           ; $7445: $03
	add h                                            ; $7446: $84
	inc bc                                           ; $7447: $03
	ld [hl], a                                       ; $7448: $77
	sbc d                                            ; $7449: $9a
	ld a, a                                          ; $744a: $7f
	cp $63                                           ; $744b: $fe $63
	jp nz, $247c                                     ; $744d: $c2 $7c $24

	ld a, e                                          ; $7450: $7b
	cp $7f                                           ; $7451: $fe $7f
	sbc b                                            ; $7453: $98
	and a                                            ; $7454: $a7
	nop                                              ; $7455: $00
	sub h                                            ; $7456: $94
	ld bc, $0302                                     ; $7457: $01 $02 $03
	inc b                                            ; $745a: $04
	dec b                                            ; $745b: $05
	ld b, $07                                        ; $745c: $06 $07
	ld [$0a09], sp                                   ; $745e: $08 $09 $0a
	dec bc                                           ; $7461: $0b
	ld d, e                                          ; $7462: $53
	ld hl, sp-$23                                    ; $7463: $f8 $dd
	add hl, de                                       ; $7465: $19
	ld [hl], a                                       ; $7466: $77
	ld hl, sp-$6c                                    ; $7467: $f8 $94
	ld hl, $2322                                     ; $7469: $21 $22 $23
	inc h                                            ; $746c: $24
	dec h                                            ; $746d: $25
	ld h, $27                                        ; $746e: $26 $27
	jr z, jr_018_7493                                ; $7470: $28 $21

	ld a, [hl+]                                      ; $7472: $2a
	dec hl                                           ; $7473: $2b
	ld d, e                                          ; $7474: $53
	ld hl, sp-$23                                    ; $7475: $f8 $dd
	add hl, de                                       ; $7477: $19
	ld [hl], a                                       ; $7478: $77
	ld hl, sp-$6c                                    ; $7479: $f8 $94
	ld b, c                                          ; $747b: $41
	ld b, d                                          ; $747c: $42
	ld b, e                                          ; $747d: $43
	ld b, h                                          ; $747e: $44
	ld b, l                                          ; $747f: $45
	ld b, [hl]                                       ; $7480: $46
	ld b, a                                          ; $7481: $47
	ld c, b                                          ; $7482: $48
	ld c, c                                          ; $7483: $49
	ld c, d                                          ; $7484: $4a
	ld c, e                                          ; $7485: $4b
	ld d, e                                          ; $7486: $53
	ld hl, sp-$23                                    ; $7487: $f8 $dd
	add hl, de                                       ; $7489: $19
	ld [hl], a                                       ; $748a: $77
	ld hl, sp-$6b                                    ; $748b: $f8 $95
	ld c, h                                          ; $748d: $4c
	ld b, b                                          ; $748e: $40
	ccf                                              ; $748f: $3f
	ld a, $3d                                        ; $7490: $3e $3d
	inc a                                            ; $7492: $3c

jr_018_7493:
	dec sp                                           ; $7493: $3b
	ld a, [hl-]                                      ; $7494: $3a
	add hl, sp                                       ; $7495: $39
	jr c, @+$51                                      ; $7496: $38 $4f

	ld hl, sp-$23                                    ; $7498: $f8 $dd
	add hl, de                                       ; $749a: $19
	ld [hl], a                                       ; $749b: $77
	ld hl, sp-$69                                    ; $749c: $f8 $97
	scf                                              ; $749e: $37
	ld [hl], $35                                     ; $749f: $36 $35
	inc [hl]                                         ; $74a1: $34
	inc sp                                           ; $74a2: $33
	ld [hl-], a                                      ; $74a3: $32
	ld sp, $4730                                     ; $74a4: $31 $30 $47
	ld hl, sp-$23                                    ; $74a7: $f8 $dd
	add hl, de                                       ; $74a9: $19
	ld [hl], a                                       ; $74aa: $77
	ld hl, sp-$69                                    ; $74ab: $f8 $97
	cpl                                              ; $74ad: $2f
	ld l, $2d                                        ; $74ae: $2e $2d
	inc l                                            ; $74b0: $2c
	add hl, hl                                       ; $74b1: $29
	jr nz, jr_018_74d3                               ; $74b2: $20 $1f

	ld e, $47                                        ; $74b4: $1e $47
	ld hl, sp-$23                                    ; $74b6: $f8 $dd
	add hl, de                                       ; $74b8: $19
	ld [hl], a                                       ; $74b9: $77
	ld hl, sp-$69                                    ; $74ba: $f8 $97
	dec e                                            ; $74bc: $1d
	inc e                                            ; $74bd: $1c
	dec de                                           ; $74be: $1b
	ld a, [de]                                       ; $74bf: $1a
	jr @+$19                                         ; $74c0: $18 $17

	ld d, $15                                        ; $74c2: $16 $15
	ld b, a                                          ; $74c4: $47
	ld hl, sp-$23                                    ; $74c5: $f8 $dd
	add hl, de                                       ; $74c7: $19
	ld [hl], a                                       ; $74c8: $77
	ld hl, sp-$69                                    ; $74c9: $f8 $97
	inc d                                            ; $74cb: $14
	inc de                                           ; $74cc: $13
	ld [de], a                                       ; $74cd: $12
	ld de, $0f10                                     ; $74ce: $11 $10 $0f
	ld c, $0d                                        ; $74d1: $0e $0d

jr_018_74d3:
	ld [hl], e                                       ; $74d3: $73
	ld hl, sp-$62                                    ; $74d4: $f8 $9e
	inc c                                            ; $74d6: $0c
	ld e, a                                          ; $74d7: $5f
	ld hl, sp-$23                                    ; $74d8: $f8 $dd
	add hl, de                                       ; $74da: $19
	ld [hl], a                                       ; $74db: $77
	ld hl, sp+$47                                    ; $74dc: $f8 $47
	ld [$0043], sp                                   ; $74de: $08 $43 $00
	ld c, e                                          ; $74e1: $4b
	ld [$0047], sp                                   ; $74e2: $08 $47 $00
	ld b, a                                          ; $74e5: $47
	ld [$0047], sp                                   ; $74e6: $08 $47 $00
	ld b, a                                          ; $74e9: $47
	ld [$0003], sp                                   ; $74ea: $08 $03 $00
	inc bc                                           ; $74ed: $03
	nop                                              ; $74ee: $00
	inc bc                                           ; $74ef: $03
	nop                                              ; $74f0: $00
	ccf                                              ; $74f1: $3f
	nop                                              ; $74f2: $00
	ld e, e                                          ; $74f3: $5b
	ld [$0003], sp                                   ; $74f4: $08 $03 $00
	inc bc                                           ; $74f7: $03
	nop                                              ; $74f8: $00
	ld a, e                                          ; $74f9: $7b
	ld hl, sp+$16                                    ; $74fa: $f8 $16

Call_018_74fc:
	nop                                              ; $74fc: $00
	pop bc                                           ; $74fd: $c1
	ld de, $ff03                                     ; $74fe: $11 $03 $ff
	inc bc                                           ; $7501: $03
	rst $38                                          ; $7502: $ff
	inc bc                                           ; $7503: $03
	rst $38                                          ; $7504: $ff
	inc bc                                           ; $7505: $03
	rst $38                                          ; $7506: $ff
	inc bc                                           ; $7507: $03
	rst $38                                          ; $7508: $ff
	inc bc                                           ; $7509: $03
	rst $38                                          ; $750a: $ff
	inc bc                                           ; $750b: $03
	rst $38                                          ; $750c: $ff
	adc $11                                          ; $750d: $ce $11
	sbc [hl]                                         ; $750f: $9e
	db $10                                           ; $7510: $10
	jp z, $ce00                                      ; $7511: $ca $00 $ce

	ld e, h                                          ; $7514: $5c
	sbc [hl]                                         ; $7515: $9e
	ld e, e                                          ; $7516: $5b
	push de                                          ; $7517: $d5
	ld e, d                                          ; $7518: $5a
	sbc c                                            ; $7519: $99
	ld e, c                                          ; $751a: $59
	ld e, b                                          ; $751b: $58
	ld d, a                                          ; $751c: $57
	ld d, [hl]                                       ; $751d: $56
	ld d, l                                          ; $751e: $55
	ld d, h                                          ; $751f: $54
	ld a, e                                          ; $7520: $7b
	db $fc                                           ; $7521: $fc
	sbc [hl]                                         ; $7522: $9e
	ld d, e                                          ; $7523: $53
	ld l, e                                          ; $7524: $6b
	ld hl, sp-$64                                    ; $7525: $f8 $9c
	ld d, h                                          ; $7527: $54
	ld d, d                                          ; $7528: $52
	ld d, c                                          ; $7529: $51
	ld d, e                                          ; $752a: $53
	ldh [$8c], a                                     ; $752b: $e0 $8c
	ld d, b                                          ; $752d: $50
	ld c, a                                          ; $752e: $4f
	ld c, [hl]                                       ; $752f: $4e
	ld c, l                                          ; $7530: $4d
	ld c, h                                          ; $7531: $4c
	ld c, e                                          ; $7532: $4b
	ld c, d                                          ; $7533: $4a
	ld c, c                                          ; $7534: $49
	ld c, b                                          ; $7535: $48
	ld b, a                                          ; $7536: $47
	ld b, [hl]                                       ; $7537: $46

jr_018_7538:
	ld b, l                                          ; $7538: $45
	ld b, h                                          ; $7539: $44
	ld b, e                                          ; $753a: $43
	ld b, d                                          ; $753b: $42
	ld b, c                                          ; $753c: $41
	ld c, a                                          ; $753d: $4f
	ld b, b                                          ; $753e: $40
	ld e, h                                          ; $753f: $5c
	push de                                          ; $7540: $d5
	ld e, d                                          ; $7541: $5a
	adc e                                            ; $7542: $8b
	ccf                                              ; $7543: $3f
	ld a, $4f                                        ; $7544: $3e $4f
	dec a                                            ; $7546: $3d
	inc a                                            ; $7547: $3c
	dec sp                                           ; $7548: $3b
	ld a, [hl-]                                      ; $7549: $3a
	add hl, sp                                       ; $754a: $39
	jr c, jr_018_7584                                ; $754b: $38 $37

	ld [hl], $35                                     ; $754d: $36 $35
	inc [hl]                                         ; $754f: $34
	inc sp                                           ; $7550: $33
	ld [hl-], a                                      ; $7551: $32
	ld sp, $4f30                                     ; $7552: $31 $30 $4f
	cpl                                              ; $7555: $2f
	ld l, $d5                                        ; $7556: $2e $d5
	ld e, d                                          ; $7558: $5a
	sbc l                                            ; $7559: $9d
	dec l                                            ; $755a: $2d
	ld c, a                                          ; $755b: $4f
	pop de                                           ; $755c: $d1
	inc l                                            ; $755d: $2c
	sbc l                                            ; $755e: $9d
	dec hl                                           ; $755f: $2b
	ld a, [hl+]                                      ; $7560: $2a
	push de                                          ; $7561: $d5
	ld e, d                                          ; $7562: $5a
	sbc l                                            ; $7563: $9d
	add hl, hl                                       ; $7564: $29
	jr z, jr_018_7538                                ; $7565: $28 $d1

	inc l                                            ; $7567: $2c
	sbc l                                            ; $7568: $9d
	daa                                              ; $7569: $27
	ld h, $d5                                        ; $756a: $26 $d5
	ld e, d                                          ; $756c: $5a
	sbc l                                            ; $756d: $9d
	dec h                                            ; $756e: $25
	inc h                                            ; $756f: $24
	pop de                                           ; $7570: $d1
	inc l                                            ; $7571: $2c
	sbc l                                            ; $7572: $9d
	inc hl                                           ; $7573: $23
	ld [hl+], a                                      ; $7574: $22
	push de                                          ; $7575: $d5
	ld e, d                                          ; $7576: $5a
	sbc l                                            ; $7577: $9d
	ld hl, $d120                                     ; $7578: $21 $20 $d1
	inc l                                            ; $757b: $2c
	sbc l                                            ; $757c: $9d
	rra                                              ; $757d: $1f
	ld e, $d5                                        ; $757e: $1e $d5
	ld e, d                                          ; $7580: $5a
	sbc l                                            ; $7581: $9d
	dec e                                            ; $7582: $1d
	inc e                                            ; $7583: $1c

jr_018_7584:
	pop de                                           ; $7584: $d1
	inc l                                            ; $7585: $2c
	sbc l                                            ; $7586: $9d
	dec de                                           ; $7587: $1b
	ld a, [de]                                       ; $7588: $1a
	push de                                          ; $7589: $d5
	ld e, d                                          ; $758a: $5a
	sbc [hl]                                         ; $758b: $9e
	add hl, de                                       ; $758c: $19
	ld b, e                                          ; $758d: $43
	ld h, b                                          ; $758e: $60
	sbc l                                            ; $758f: $9d
	jr jr_018_75a9                                   ; $7590: $18 $17

	push de                                          ; $7592: $d5
	ld e, d                                          ; $7593: $5a
	sbc l                                            ; $7594: $9d
	ld d, $15                                        ; $7595: $16 $15
	ld b, e                                          ; $7597: $43
	ld h, b                                          ; $7598: $60
	sbc [hl]                                         ; $7599: $9e
	inc d                                            ; $759a: $14
	push de                                          ; $759b: $d5
	ld e, d                                          ; $759c: $5a
	sbc l                                            ; $759d: $9d
	inc de                                           ; $759e: $13
	ld [de], a                                       ; $759f: $12
	pop de                                           ; $75a0: $d1
	inc l                                            ; $75a1: $2c
	sbc l                                            ; $75a2: $9d
	ld de, $d510                                     ; $75a3: $11 $10 $d5
	ld e, d                                          ; $75a6: $5a
	sbc l                                            ; $75a7: $9d
	rrca                                             ; $75a8: $0f

jr_018_75a9:
	ld c, $d1                                        ; $75a9: $0e $d1
	inc l                                            ; $75ab: $2c
	sbc l                                            ; $75ac: $9d
	dec c                                            ; $75ad: $0d
	inc c                                            ; $75ae: $0c
	push de                                          ; $75af: $d5
	ld e, d                                          ; $75b0: $5a
	sbc l                                            ; $75b1: $9d
	dec bc                                           ; $75b2: $0b
	ld a, [bc]                                       ; $75b3: $0a
	pop de                                           ; $75b4: $d1
	inc l                                            ; $75b5: $2c
	sbc l                                            ; $75b6: $9d
	ld c, a                                          ; $75b7: $4f
	add hl, bc                                       ; $75b8: $09
	push de                                          ; $75b9: $d5
	ld e, d                                          ; $75ba: $5a
	sbc [hl]                                         ; $75bb: $9e
	ld [$4043], sp                                   ; $75bc: $08 $43 $40
	sbc l                                            ; $75bf: $9d
	rlca                                             ; $75c0: $07
	ld [$c053], sp                                   ; $75c1: $08 $53 $c0
	sbc [hl]                                         ; $75c4: $9e
	ld b, $d1                                        ; $75c5: $06 $d1
	inc l                                            ; $75c7: $2c
	sbc l                                            ; $75c8: $9d
	inc e                                            ; $75c9: $1c
	dec bc                                           ; $75ca: $0b
	ld d, e                                          ; $75cb: $53
	ldh [$9a], a                                     ; $75cc: $e0 $9a
	dec b                                            ; $75ce: $05
	inc b                                            ; $75cf: $04
	inc bc                                           ; $75d0: $03
	ld [bc], a                                       ; $75d1: $02
	inc b                                            ; $75d2: $04
	ld d, a                                          ; $75d3: $57
	db $fc                                           ; $75d4: $fc
	sbc [hl]                                         ; $75d5: $9e
	ld bc, $e04f                                     ; $75d6: $01 $4f $e0
	adc $0b                                          ; $75d9: $ce $0b
	ld b, l                                          ; $75db: $45
	nop                                              ; $75dc: $00
	ret c                                            ; $75dd: $d8

	ld h, [hl]                                       ; $75de: $66
	sbc [hl]                                         ; $75df: $9e
	ld h, c                                          ; $75e0: $61
	ei                                               ; $75e1: $fb
	sbc h                                            ; $75e2: $9c
	ld [hl], $11                                     ; $75e3: $36 $11
	ld h, [hl]                                       ; $75e5: $66
	ld l, a                                          ; $75e6: $6f
	cp $67                                           ; $75e7: $fe $67
	ldh a, [$9e]                                     ; $75e9: $f0 $9e
	ld h, c                                          ; $75eb: $61
	db $db                                           ; $75ec: $db
	ld de, $169d                                     ; $75ed: $11 $9d $16
	ld h, [hl]                                       ; $75f0: $66
	ei                                               ; $75f1: $fb
	sbc [hl]                                         ; $75f2: $9e
	ld d, [hl]                                       ; $75f3: $56
	ret c                                            ; $75f4: $d8

	ld h, [hl]                                       ; $75f5: $66
	ld l, e                                          ; $75f6: $6b
	ldh a, [$d9]                                     ; $75f7: $f0 $d9
	ld [hl], a                                       ; $75f9: $77
	sbc [hl]                                         ; $75fa: $9e
	ld h, h                                          ; $75fb: $64
	ei                                               ; $75fc: $fb
	sbc [hl]                                         ; $75fd: $9e
	ld d, d                                          ; $75fe: $52
	inc bc                                           ; $75ff: $03
	ldh a, [$da]                                     ; $7600: $f0 $da
	ld [hl], a                                       ; $7602: $77
	sbc [hl]                                         ; $7603: $9e
	ld h, l                                          ; $7604: $65
	cpl                                              ; $7605: $2f
	ldh [$03], a                                     ; $7606: $e0 $03
	or b                                             ; $7608: $b0
	ld c, e                                          ; $7609: $4b
	ldh a, [$9e]                                     ; $760a: $f0 $9e
	ld [hl+], a                                      ; $760c: $22
	ld c, e                                          ; $760d: $4b
	ldh a, [$9e]                                     ; $760e: $f0 $9e
	ld b, d                                          ; $7610: $42
	daa                                              ; $7611: $27
	ldh a, [$9e]                                     ; $7612: $f0 $9e
	inc h                                            ; $7614: $24
	cpl                                              ; $7615: $2f
	ldh a, [$9e]                                     ; $7616: $f0 $9e
	ld b, c                                          ; $7618: $41
	reti                                             ; $7619: $d9


	ld de, $149e                                     ; $761a: $11 $9e $14
	ei                                               ; $761d: $fb
	rst SubAFromHL                                          ; $761e: $d7
	ld b, h                                          ; $761f: $44
	adc b                                            ; $7620: $88
	nop                                              ; $7621: $00
	sbc l                                            ; $7622: $9d
	add c                                            ; $7623: $81
	add d                                            ; $7624: $82
	push de                                          ; $7625: $d5
	add e                                            ; $7626: $83
	sbc c                                            ; $7627: $99
	adc a                                            ; $7628: $8f
	sub b                                            ; $7629: $90
	sub c                                            ; $762a: $91
	sub d                                            ; $762b: $92
	sub e                                            ; $762c: $93
	sub h                                            ; $762d: $94
	call c, $8093                                    ; $762e: $dc $93 $80
	sbc d                                            ; $7631: $9a
	sbc e                                            ; $7632: $9b
	sub e                                            ; $7633: $93
	sbc l                                            ; $7634: $9d
	sbc [hl]                                         ; $7635: $9e
	sbc a                                            ; $7636: $9f
	and b                                            ; $7637: $a0
	and c                                            ; $7638: $a1
	nop                                              ; $7639: $00
	and e                                            ; $763a: $a3
	and h                                            ; $763b: $a4
	and l                                            ; $763c: $a5
	and [hl]                                         ; $763d: $a6
	and a                                            ; $763e: $a7
	xor b                                            ; $763f: $a8
	xor c                                            ; $7640: $a9
	xor d                                            ; $7641: $aa
	xor e                                            ; $7642: $ab
	xor h                                            ; $7643: $ac
	xor l                                            ; $7644: $ad
	xor [hl]                                         ; $7645: $ae
	xor a                                            ; $7646: $af
	or b                                             ; $7647: $b0
	and c                                            ; $7648: $a1
	or d                                             ; $7649: $b2
	or e                                             ; $764a: $b3
	or h                                             ; $764b: $b4
	or l                                             ; $764c: $b5
	or [hl]                                          ; $764d: $b6
	or a                                             ; $764e: $b7
	cp b                                             ; $764f: $b8
	sbc b                                            ; $7650: $98
	cp c                                             ; $7651: $b9
	cp d                                             ; $7652: $ba
	cp e                                             ; $7653: $bb
	cp h                                             ; $7654: $bc
	cp l                                             ; $7655: $bd
	cp [hl]                                          ; $7656: $be
	cp a                                             ; $7657: $bf
	ld a, e                                          ; $7658: $7b
	ldh a, [$f5]                                     ; $7659: $f0 $f5
	sbc [hl]                                         ; $765b: $9e
	rst GetHLinHL                                          ; $765c: $cf
	ld [hl], a                                       ; $765d: $77
	ldh a, [$9d]                                     ; $765e: $f0 $9d
	call nc, $53d5                                   ; $7660: $d4 $d5 $53
	ldh a, [$9b]                                     ; $7663: $f0 $9b
	ret c                                            ; $7665: $d8

	rst SubAFromHL                                          ; $7666: $d7
	sub $d3                                          ; $7667: $d6 $d3
	ld d, a                                          ; $7669: $57
	ldh a, [$9b]                                     ; $766a: $f0 $9b
	jp nc, $d0d1                                     ; $766c: $d2 $d1 $d0

	adc $fc                                          ; $766f: $ce $fc
	sbc l                                            ; $7671: $9d
	call $73cc                                       ; $7672: $cd $cc $73
	ldh a, [$9b]                                     ; $7675: $f0 $9b
	set 1, d                                         ; $7677: $cb $ca
	ret                                              ; $7679: $c9


	ret z                                            ; $767a: $c8

	db $fc                                           ; $767b: $fc
	sbc l                                            ; $767c: $9d
	rst JumpTable                                          ; $767d: $c7
	add $6f                                          ; $767e: $c6 $6f
	ret nz                                           ; $7680: $c0

	ld c, e                                          ; $7681: $4b
	or b                                             ; $7682: $b0
	sbc e                                            ; $7683: $9b
	push bc                                          ; $7684: $c5
	call nz, $c2c3                                   ; $7685: $c4 $c3 $c2
	ld e, a                                          ; $7688: $5f
	ret nc                                           ; $7689: $d0

	sbc c                                            ; $768a: $99
	pop bc                                           ; $768b: $c1
	ret nz                                           ; $768c: $c0

	or c                                             ; $768d: $b1
	and d                                            ; $768e: $a2
	sbc h                                            ; $768f: $9c
	sbc c                                            ; $7690: $99
	ld h, a                                          ; $7691: $67
	ret nc                                           ; $7692: $d0

	sub a                                            ; $7693: $97
	sbc b                                            ; $7694: $98
	or b                                             ; $7695: $b0
	sub a                                            ; $7696: $97
	sub [hl]                                         ; $7697: $96
	sub l                                            ; $7698: $95
	adc [hl]                                         ; $7699: $8e
	adc l                                            ; $769a: $8d
	adc h                                            ; $769b: $8c
	reti                                             ; $769c: $d9


	adc e                                            ; $769d: $8b
	sbc e                                            ; $769e: $9b
	adc d                                            ; $769f: $8a
	adc c                                            ; $76a0: $89
	adc b                                            ; $76a1: $88
	add a                                            ; $76a2: $87
	push de                                          ; $76a3: $d5
	add [hl]                                         ; $76a4: $86
	sbc l                                            ; $76a5: $9d
	add l                                            ; $76a6: $85
	add h                                            ; $76a7: $84
	ld hl, wCurrTextLinePixelIdx                                     ; $76a8: $21 $00 $d8
	ld d, l                                          ; $76ab: $55
	db $db                                           ; $76ac: $db
	inc sp                                           ; $76ad: $33
	sbc l                                            ; $76ae: $9d
	ld d, l                                          ; $76af: $55
	ld d, e                                          ; $76b0: $53
	db $db                                           ; $76b1: $db
	inc sp                                           ; $76b2: $33
	sbc [hl]                                         ; $76b3: $9e

jr_018_76b4:
	dec [hl]                                         ; $76b4: $35
	inc bc                                           ; $76b5: $03
	ld hl, sp+$47                                    ; $76b6: $f8 $47
	ld hl, sp-$62                                    ; $76b8: $f8 $9e
	ld b, h                                          ; $76ba: $44
	ld h, a                                          ; $76bb: $67
	ld hl, sp+$73                                    ; $76bc: $f8 $73

jr_018_76be:
	rst FarCall                                          ; $76be: $f7
	ld h, e                                          ; $76bf: $63
	ld hl, sp-$62                                    ; $76c0: $f8 $9e
	ld d, l                                          ; $76c2: $55
	sbc $44                                          ; $76c3: $de $44
	ld [hl], a                                       ; $76c5: $77
	xor b                                            ; $76c6: $a8
	reti                                             ; $76c7: $d9


jr_018_76c8:
	ld d, l                                          ; $76c8: $55
	jp z, $ce00                                      ; $76c9: $ca $00 $ce

	ld bc, $149e                                     ; $76cc: $01 $9e $14
	push de                                          ; $76cf: $d5
	dec d                                            ; $76d0: $15
	sbc c                                            ; $76d1: $99

jr_018_76d2:
	ld hl, $2322                                     ; $76d2: $21 $22 $23
	inc h                                            ; $76d5: $24
	dec h                                            ; $76d6: $25
	ld h, $7b                                        ; $76d7: $26 $7b
	db $fc                                           ; $76d9: $fc
	sbc [hl]                                         ; $76da: $9e
	ld a, [hl+]                                      ; $76db: $2a

jr_018_76dc:
	ld l, e                                          ; $76dc: $6b
	ld hl, sp-$64                                    ; $76dd: $f8 $9c
	ld h, $33                                        ; $76df: $26 $33
	inc [hl]                                         ; $76e1: $34
	ld d, e                                          ; $76e2: $53
	ldh [$8c], a                                     ; $76e3: $e0 $8c
	ld b, d                                          ; $76e5: $42
	ld b, e                                          ; $76e6: $43
	ld b, e                                          ; $76e7: $43
	ld b, l                                          ; $76e8: $45
	ld b, [hl]                                       ; $76e9: $46
	ld b, a                                          ; $76ea: $47
	ld c, b                                          ; $76eb: $48
	ld c, c                                          ; $76ec: $49
	ld c, d                                          ; $76ed: $4a
	ld c, e                                          ; $76ee: $4b
	ld c, h                                          ; $76ef: $4c
	ld c, l                                          ; $76f0: $4d
	ld c, [hl]                                       ; $76f1: $4e
	ld c, a                                          ; $76f2: $4f
	ld d, b                                          ; $76f3: $50
	ld b, e                                          ; $76f4: $43
	ld b, e                                          ; $76f5: $43
	ld d, e                                          ; $76f6: $53
	ld bc, $15d5                                     ; $76f7: $01 $d5 $15
	adc e                                            ; $76fa: $8b
	ld e, b                                          ; $76fb: $58
	ld d, a                                          ; $76fc: $57
	ld b, e                                          ; $76fd: $43
	ld b, e                                          ; $76fe: $43
	ld d, [hl]                                       ; $76ff: $56
	ld d, l                                          ; $7700: $55
	ld d, h                                          ; $7701: $54

jr_018_7702:
	ld d, d                                          ; $7702: $52
	ld d, c                                          ; $7703: $51
	ld b, h                                          ; $7704: $44
	ld b, c                                          ; $7705: $41
	ld b, b                                          ; $7706: $40
	ccf                                              ; $7707: $3f
	ld a, $3d                                        ; $7708: $3e $3d
	inc a                                            ; $770a: $3c
	ld b, e                                          ; $770b: $43

jr_018_770c:
	ld b, e                                          ; $770c: $43
	dec sp                                           ; $770d: $3b
	ld a, [hl-]                                      ; $770e: $3a
	push de                                          ; $770f: $d5
	dec d                                            ; $7710: $15
	sbc l                                            ; $7711: $9d
	add hl, sp                                       ; $7712: $39
	ld b, e                                          ; $7713: $43
	pop de                                           ; $7714: $d1
	jr c, jr_018_76b4                                ; $7715: $38 $9d

	scf                                              ; $7717: $37
	ld [hl], $d5                                     ; $7718: $36 $d5
	dec d                                            ; $771a: $15
	sbc l                                            ; $771b: $9d
	dec [hl]                                         ; $771c: $35
	ld [hl-], a                                      ; $771d: $32

jr_018_771e:
	pop de                                           ; $771e: $d1
	jr c, jr_018_76be                                ; $771f: $38 $9d

	ld sp, $d530                                     ; $7721: $31 $30 $d5
	dec d                                            ; $7724: $15
	sbc l                                            ; $7725: $9d
	cpl                                              ; $7726: $2f
	ld l, $d1                                        ; $7727: $2e $d1
	jr c, jr_018_76c8                                ; $7729: $38 $9d

	dec l                                            ; $772b: $2d
	inc l                                            ; $772c: $2c
	push de                                          ; $772d: $d5
	dec d                                            ; $772e: $15
	sbc l                                            ; $772f: $9d
	dec hl                                           ; $7730: $2b
	add hl, hl                                       ; $7731: $29
	pop de                                           ; $7732: $d1
	jr c, jr_018_76d2                                ; $7733: $38 $9d

	jr z, @+$29                                      ; $7735: $28 $27

	push de                                          ; $7737: $d5
	dec d                                            ; $7738: $15
	sbc l                                            ; $7739: $9d
	jr nz, jr_018_775b                               ; $773a: $20 $1f

	pop de                                           ; $773c: $d1
	jr c, jr_018_76dc                                ; $773d: $38 $9d

Call_018_773f:
	ld e, $1d                                        ; $773f: $1e $1d
	push de                                          ; $7741: $d5
	dec d                                            ; $7742: $15
	sbc [hl]                                         ; $7743: $9e
	inc e                                            ; $7744: $1c
	ld b, e                                          ; $7745: $43
	ld h, b                                          ; $7746: $60
	sbc l                                            ; $7747: $9d
	dec de                                           ; $7748: $1b
	ld a, [de]                                       ; $7749: $1a
	push de                                          ; $774a: $d5
	dec d                                            ; $774b: $15
	sbc l                                            ; $774c: $9d
	add hl, de                                       ; $774d: $19
	jr jr_018_7793                                   ; $774e: $18 $43

	ld h, b                                          ; $7750: $60
	sbc [hl]                                         ; $7751: $9e
	rla                                              ; $7752: $17
	push de                                          ; $7753: $d5
	dec d                                            ; $7754: $15
	sbc l                                            ; $7755: $9d
	ld d, $13                                        ; $7756: $16 $13
	pop de                                           ; $7758: $d1
	jr c, @-$61                                      ; $7759: $38 $9d

jr_018_775b:
	ld [de], a                                       ; $775b: $12
	ld de, $15d5                                     ; $775c: $11 $d5 $15
	sbc l                                            ; $775f: $9d
	db $10                                           ; $7760: $10
	rrca                                             ; $7761: $0f
	pop de                                           ; $7762: $d1
	jr c, jr_018_7702                                ; $7763: $38 $9d

	ld c, $0d                                        ; $7765: $0e $0d
	push de                                          ; $7767: $d5
	dec d                                            ; $7768: $15
	sbc l                                            ; $7769: $9d
	inc c                                            ; $776a: $0c
	dec bc                                           ; $776b: $0b
	pop de                                           ; $776c: $d1
	jr c, jr_018_770c                                ; $776d: $38 $9d

	ld b, e                                          ; $776f: $43
	ld a, [bc]                                       ; $7770: $0a
	push de                                          ; $7771: $d5
	dec d                                            ; $7772: $15
	sbc [hl]                                         ; $7773: $9e
	add hl, bc                                       ; $7774: $09
	ld b, e                                          ; $7775: $43
	ld b, b                                          ; $7776: $40
	sbc l                                            ; $7777: $9d
	ld [$5309], sp                                   ; $7778: $08 $09 $53
	ret nz                                           ; $777b: $c0

	sbc [hl]                                         ; $777c: $9e
	rlca                                             ; $777d: $07
	pop de                                           ; $777e: $d1
	jr c, jr_018_771e                                ; $777f: $38 $9d

	rra                                              ; $7781: $1f
	inc c                                            ; $7782: $0c
	ld d, e                                          ; $7783: $53
	ldh [$9a], a                                     ; $7784: $e0 $9a
	ld b, $05                                        ; $7786: $06 $05
	inc b                                            ; $7788: $04
	inc bc                                           ; $7789: $03
	dec b                                            ; $778a: $05
	ld d, a                                          ; $778b: $57
	db $fc                                           ; $778c: $fc
	sbc [hl]                                         ; $778d: $9e
	ld [bc], a                                       ; $778e: $02
	ld c, a                                          ; $778f: $4f
	ldh [$ce], a                                     ; $7790: $e0 $ce
	inc c                                            ; $7792: $0c

jr_018_7793:
	ld b, a                                          ; $7793: $47
	nop                                              ; $7794: $00
	ret c                                            ; $7795: $d8

	ld h, [hl]                                       ; $7796: $66
	sbc [hl]                                         ; $7797: $9e
	ld h, c                                          ; $7798: $61
	ei                                               ; $7799: $fb
	sbc h                                            ; $779a: $9c
	ld [hl], $11                                     ; $779b: $36 $11
	ld h, [hl]                                       ; $779d: $66
	ld l, a                                          ; $779e: $6f
	cp $67                                           ; $779f: $fe $67
	ldh a, [$7f]                                     ; $77a1: $f0 $7f
	push af                                          ; $77a3: $f5
	sbc $11                                          ; $77a4: $de $11
	sbc e                                            ; $77a6: $9b
	ld d, $11                                        ; $77a7: $16 $11
	ld h, [hl]                                       ; $77a9: $66
	ld h, [hl]                                       ; $77aa: $66
	ei                                               ; $77ab: $fb
	sbc [hl]                                         ; $77ac: $9e
	ld d, [hl]                                       ; $77ad: $56
	ret c                                            ; $77ae: $d8

	ld h, [hl]                                       ; $77af: $66
	ld l, e                                          ; $77b0: $6b
	ldh a, [$d9]                                     ; $77b1: $f0 $d9
	ld [hl], a                                       ; $77b3: $77
	sbc [hl]                                         ; $77b4: $9e
	ld h, h                                          ; $77b5: $64
	ei                                               ; $77b6: $fb
	sbc [hl]                                         ; $77b7: $9e
	ld d, d                                          ; $77b8: $52
	inc bc                                           ; $77b9: $03
	ldh a, [$da]                                     ; $77ba: $f0 $da
	ld [hl], a                                       ; $77bc: $77
	sbc [hl]                                         ; $77bd: $9e
	ld h, l                                          ; $77be: $65
	cpl                                              ; $77bf: $2f
	ldh [$03], a                                     ; $77c0: $e0 $03
	or b                                             ; $77c2: $b0
	ld c, e                                          ; $77c3: $4b
	ldh a, [$9e]                                     ; $77c4: $f0 $9e
	ld [hl+], a                                      ; $77c6: $22
	ld c, e                                          ; $77c7: $4b
	ldh a, [$9e]                                     ; $77c8: $f0 $9e
	ld b, d                                          ; $77ca: $42
	daa                                              ; $77cb: $27
	ldh a, [$9e]                                     ; $77cc: $f0 $9e
	inc h                                            ; $77ce: $24
	cpl                                              ; $77cf: $2f
	ldh a, [$9e]                                     ; $77d0: $f0 $9e
	ld b, c                                          ; $77d2: $41
	reti                                             ; $77d3: $d9


	ld de, $149e                                     ; $77d4: $11 $9e $14
	ei                                               ; $77d7: $fb

jr_018_77d8:
	rst SubAFromHL                                          ; $77d8: $d7
	ld b, h                                          ; $77d9: $44
	ld a, l                                          ; $77da: $7d
	nop                                              ; $77db: $00
	call $f501                                       ; $77dc: $cd $01 $f5
	jp c, $9915                                      ; $77df: $da $15 $99

	inc e                                            ; $77e2: $1c
	dec e                                            ; $77e3: $1d
	ld e, $1f                                        ; $77e4: $1e $1f
	jr nz, jr_018_7809                               ; $77e6: $20 $21

	jp c, $f522                                      ; $77e8: $da $22 $f5

	db $dd                                           ; $77eb: $dd
	add hl, hl                                       ; $77ec: $29
	sub e                                            ; $77ed: $93
	dec l                                            ; $77ee: $2d
	ld l, $2f                                        ; $77ef: $2e $2f

Jump_018_77f1:
	jr nc, jr_018_7824                               ; $77f1: $30 $31

	ld [hl-], a                                      ; $77f3: $32
	inc sp                                           ; $77f4: $33
	inc [hl]                                         ; $77f5: $34
	dec [hl]                                         ; $77f6: $35
	ld [hl], $37                                     ; $77f7: $36 $37
	jr c, jr_018_77d8                                ; $77f9: $38 $dd

	add hl, hl                                       ; $77fb: $29
	ld b, a                                          ; $77fc: $47
	ldh [hDisp1_OBP0], a                                     ; $77fd: $e0 $93

Call_018_77ff:
	ld b, c                                          ; $77ff: $41
	ld b, d                                          ; $7800: $42
	ld b, e                                          ; $7801: $43
	ld b, h                                          ; $7802: $44
	ld b, l                                          ; $7803: $45
	ld b, l                                          ; $7804: $45
	ld b, [hl]                                       ; $7805: $46
	ld b, [hl]                                       ; $7806: $46
	ld b, b                                          ; $7807: $40
	ccf                                              ; $7808: $3f

jr_018_7809:
	ld a, $3d                                        ; $7809: $3e $3d
	ld b, a                                          ; $780b: $47
	ldh [$df], a                                     ; $780c: $e0 $df
	inc a                                            ; $780e: $3c
	adc l                                            ; $780f: $8d
	dec sp                                           ; $7810: $3b
	ld a, [hl-]                                      ; $7811: $3a
	add hl, sp                                       ; $7812: $39
	inc l                                            ; $7813: $2c
	dec hl                                           ; $7814: $2b
	ld a, [hl+]                                      ; $7815: $2a
	jr z, jr_018_783f                                ; $7816: $28 $27

	ld h, $25                                        ; $7818: $26 $25
	inc h                                            ; $781a: $24
	inc hl                                           ; $781b: $23
	dec de                                           ; $781c: $1b
	ld a, [de]                                       ; $781d: $1a
	add hl, de                                       ; $781e: $19
	jr jr_018_785d                                   ; $781f: $18 $3c

	inc a                                            ; $7821: $3c
	push af                                          ; $7822: $f5
	sbc b                                            ; $7823: $98

jr_018_7824:
	rla                                              ; $7824: $17
	ld d, $14                                        ; $7825: $16 $14
	inc de                                           ; $7827: $13
	ld [de], a                                       ; $7828: $12
	ld de, $db10                                     ; $7829: $11 $10 $db
	add hl, hl                                       ; $782c: $29
	sbc b                                            ; $782d: $98
	rrca                                             ; $782e: $0f
	ld c, $0d                                        ; $782f: $0e $0d
	inc c                                            ; $7831: $0c
	dec bc                                           ; $7832: $0b
	ld a, [bc]                                       ; $7833: $0a
	add hl, bc                                       ; $7834: $09
	push af                                          ; $7835: $f5
	sbc h                                            ; $7836: $9c
	ld [$0607], sp                                   ; $7837: $08 $07 $06
	db $d3                                           ; $783a: $d3
	add hl, hl                                       ; $783b: $29
	sbc h                                            ; $783c: $9c
	dec b                                            ; $783d: $05
	inc b                                            ; $783e: $04

jr_018_783f:
	inc bc                                           ; $783f: $03
	push af                                          ; $7840: $f5
	call $0302                                       ; $7841: $cd $02 $03
	ldh [$03], a                                     ; $7844: $e0 $03
	ldh [$03], a                                     ; $7846: $e0 $03
	ldh [$03], a                                     ; $7848: $e0 $03
	ldh [$03], a                                     ; $784a: $e0 $03
	ldh [$03], a                                     ; $784c: $e0 $03
	ldh [$03], a                                     ; $784e: $e0 $03
	ldh [$03], a                                     ; $7850: $e0 $03
	ldh [$03], a                                     ; $7852: $e0 $03
	ldh [$2b], a                                     ; $7854: $e0 $2b
	ldh [rAUD3LEN], a                                ; $7856: $e0 $1b
	nop                                              ; $7858: $00
	rst SubAFromHL                                          ; $7859: $d7
	inc sp                                           ; $785a: $33
	ei                                               ; $785b: $fb
	rst SubAFromHL                                          ; $785c: $d7

jr_018_785d:
	ld [hl+], a                                      ; $785d: $22
	ld e, a                                          ; $785e: $5f
	ldh a, [$9d]                                     ; $785f: $f0 $9d
	dec d                                            ; $7861: $15
	ld d, c                                          ; $7862: $51
	ld d, e                                          ; $7863: $53
	ldh a, [$9b]                                     ; $7864: $f0 $9b
	dec h                                            ; $7866: $25
	ld [hl+], a                                      ; $7867: $22
	ld [hl+], a                                      ; $7868: $22
	ld d, d                                          ; $7869: $52
	ld d, e                                          ; $786a: $53
	ldh [rBGP], a                                    ; $786b: $e0 $47
	ret nc                                           ; $786d: $d0

	rla                                              ; $786e: $17
	ldh a, [$e0]                                     ; $786f: $f0 $e0
	ld d, a                                          ; $7871: $57
	ld c, h                                          ; $7872: $4c
	nop                                              ; $7873: $00
	add b                                            ; $7874: $80
	ld b, a                                          ; $7875: $47
	ld c, b                                          ; $7876: $48
	cpl                                              ; $7877: $2f
	ld c, d                                          ; $7878: $4a
	ld sp, $4d4c                                     ; $7879: $31 $4c $4d
	ld c, [hl]                                       ; $787c: $4e
	dec [hl]                                         ; $787d: $35
	ld [hl], $51                                     ; $787e: $36 $51
	ld d, d                                          ; $7880: $52
	ld d, e                                          ; $7881: $53
	ld d, h                                          ; $7882: $54
	ld d, l                                          ; $7883: $55
	ld d, [hl]                                       ; $7884: $56
	ld d, a                                          ; $7885: $57
	ld e, b                                          ; $7886: $58
	ld e, c                                          ; $7887: $59
	ld e, d                                          ; $7888: $5a
	ld e, e                                          ; $7889: $5b
	ld e, h                                          ; $788a: $5c
	ld e, l                                          ; $788b: $5d
	ld e, [hl]                                       ; $788c: $5e
	ld e, a                                          ; $788d: $5f
	ld h, b                                          ; $788e: $60
	ld h, c                                          ; $788f: $61
	ld h, d                                          ; $7890: $62
	ld h, e                                          ; $7891: $63
	daa                                              ; $7892: $27
	ld h, $89                                        ; $7893: $26 $89
	dec h                                            ; $7895: $25
	ld h, a                                          ; $7896: $67
	ld l, b                                          ; $7897: $68
	ld l, c                                          ; $7898: $69
	ld a, [de]                                       ; $7899: $1a
	ld l, e                                          ; $789a: $6b
	ld l, h                                          ; $789b: $6c
	ld l, l                                          ; $789c: $6d
	ld l, [hl]                                       ; $789d: $6e
	ld l, a                                          ; $789e: $6f
	ld [hl], b                                       ; $789f: $70
	ld [hl], c                                       ; $78a0: $71
	ld [hl], c                                       ; $78a1: $71
	ld [hl], e                                       ; $78a2: $73
	ld [hl], h                                       ; $78a3: $74
	ld c, $0d                                        ; $78a4: $0e $0d
	ld [hl], a                                       ; $78a6: $77
	ld a, b                                          ; $78a7: $78
	ld a, c                                          ; $78a8: $79
	ld a, d                                          ; $78a9: $7a
	halt                                             ; $78aa: $76
	sbc $71                                          ; $78ab: $de $71
	adc a                                            ; $78ad: $8f
	ld [hl], l                                       ; $78ae: $75
	ld [hl], d                                       ; $78af: $72
	ld [hl], c                                       ; $78b0: $71
	ld [hl], c                                       ; $78b1: $71
	ld l, d                                          ; $78b2: $6a
	ld h, [hl]                                       ; $78b3: $66
	ld h, l                                          ; $78b4: $65
	ld h, h                                          ; $78b5: $64
	ld d, b                                          ; $78b6: $50
	ld c, a                                          ; $78b7: $4f
	ld [bc], a                                       ; $78b8: $02
	ld [bc], a                                       ; $78b9: $02
	ld c, e                                          ; $78ba: $4b
	ld c, c                                          ; $78bb: $49
	ld [bc], a                                       ; $78bc: $02
	ld [bc], a                                       ; $78bd: $02
	inc e                                            ; $78be: $1c
	nop                                              ; $78bf: $00
	rst SubAFromDE                                          ; $78c0: $df
	inc h                                            ; $78c1: $24
	rst SubAFromDE                                          ; $78c2: $df
	ld de, $22df                                     ; $78c3: $11 $df $22
	sbc h                                            ; $78c6: $9c
	inc b                                            ; $78c7: $04
	ld b, b                                          ; $78c8: $40
	inc b                                            ; $78c9: $04
	sbc $44                                          ; $78ca: $de $44
	sbc c                                            ; $78cc: $99
	inc h                                            ; $78cd: $24
	ld b, h                                          ; $78ce: $44
	ld b, d                                          ; $78cf: $42
	ld [hl+], a                                      ; $78d0: $22
	ld b, h                                          ; $78d1: $44
	ld [hl+], a                                      ; $78d2: $22
	call c, Call_018_6f44                            ; $78d3: $dc $44 $6f
	ld a, [$449e]                                    ; $78d6: $fa $9e $44
	ei                                               ; $78d9: $fb
	jr z, jr_018_78dd                                ; $78da: $28 $01

	db $dd                                           ; $78dc: $dd

jr_018_78dd:
	ld bc, $3ddd                                     ; $78dd: $01 $dd $3d
	reti                                             ; $78e0: $d9


	ld a, c                                          ; $78e1: $79
	ld h, a                                          ; $78e2: $67
	ldh a, [$97]                                     ; $78e3: $f0 $97
	ld a, l                                          ; $78e5: $7d
	ld a, [hl]                                       ; $78e6: $7e
	ld a, a                                          ; $78e7: $7f
	ld a, c                                          ; $78e8: $79
	or d                                             ; $78e9: $b2
	or c                                             ; $78ea: $b1
	or b                                             ; $78eb: $b0
	xor a                                            ; $78ec: $af
	ld h, a                                          ; $78ed: $67
	ldh a, [$97]                                     ; $78ee: $f0 $97
	add c                                            ; $78f0: $81
	add d                                            ; $78f1: $82
	ld a, c                                          ; $78f2: $79
	add h                                            ; $78f3: $84
	xor [hl]                                         ; $78f4: $ae
	xor l                                            ; $78f5: $ad
	xor a                                            ; $78f6: $af
	xor h                                            ; $78f7: $ac
	ld h, a                                          ; $78f8: $67
	ldh a, [$97]                                     ; $78f9: $f0 $97
	add l                                            ; $78fb: $85
	ld a, c                                          ; $78fc: $79
	add a                                            ; $78fd: $87
	adc b                                            ; $78fe: $88
	xor e                                            ; $78ff: $ab
	xor a                                            ; $7900: $af
	xor d                                            ; $7901: $aa
	xor c                                            ; $7902: $a9
	ld h, e                                          ; $7903: $63
	ret nz                                           ; $7904: $c0

	sub a                                            ; $7905: $97
	adc d                                            ; $7906: $8a
	ld a, [hl]                                       ; $7907: $7e
	ld a, [hl]                                       ; $7908: $7e
	xor a                                            ; $7909: $af
	xor b                                            ; $790a: $a8
	or c                                             ; $790b: $b1
	and a                                            ; $790c: $a7
	ld [bc], a                                       ; $790d: $02
	sbc $0d                                          ; $790e: $de $0d
	db $dd                                           ; $7910: $dd
	inc c                                            ; $7911: $0c
	db $dd                                           ; $7912: $dd
	dec c                                            ; $7913: $0d
	ld [hl], e                                       ; $7914: $73
	ld hl, sp-$62                                    ; $7915: $f8 $9e
	ld b, $7b                                        ; $7917: $06 $7b
	ld hl, sp-$65                                    ; $7919: $f8 $9b
	dec b                                            ; $791b: $05
	inc c                                            ; $791c: $0c
	inc c                                            ; $791d: $0c
	inc b                                            ; $791e: $04
	sbc $0d                                          ; $791f: $de $0d
	sbc [hl]                                         ; $7921: $9e
	inc bc                                           ; $7922: $03
	sbc $0c                                          ; $7923: $de $0c
	ld h, a                                          ; $7925: $67
	ret nc                                           ; $7926: $d0

	db $fd                                           ; $7927: $fd
	sbc e                                            ; $7928: $9b
	ld a, c                                          ; $7929: $79
	and [hl]                                         ; $792a: $a6
	and l                                            ; $792b: $a5
	and [hl]                                         ; $792c: $a6
	ld d, a                                          ; $792d: $57
	ldh a, [$de]                                     ; $792e: $f0 $de
	and l                                            ; $7930: $a5
	sbc b                                            ; $7931: $98
	ld a, c                                          ; $7932: $79
	dec c                                            ; $7933: $0d
	dec bc                                           ; $7934: $0b
	ld a, [bc]                                       ; $7935: $0a
	dec c                                            ; $7936: $0d
	inc c                                            ; $7937: $0c
	add hl, bc                                       ; $7938: $09
	ld a, e                                          ; $7939: $7b
	ret z                                            ; $793a: $c8

	sbc [hl]                                         ; $793b: $9e
	ld [$c87b], sp                                   ; $793c: $08 $7b $c8
	sbc [hl]                                         ; $793f: $9e
	rlca                                             ; $7940: $07
	ld e, e                                          ; $7941: $5b
	cp b                                             ; $7942: $b8
	ld l, e                                          ; $7943: $6b
	ld hl, sp+$5f                                    ; $7944: $f8 $5f
	ret nc                                           ; $7946: $d0

	sbc $79                                          ; $7947: $de $79
	cp a                                             ; $7949: $bf
	ld a, c                                          ; $794a: $79
	add [hl]                                         ; $794b: $86
	add b                                            ; $794c: $80
	add e                                            ; $794d: $83
	add b                                            ; $794e: $80
	ld a, c                                          ; $794f: $79
	ld e, b                                          ; $7950: $58
	ld d, a                                          ; $7951: $57
	ld d, [hl]                                       ; $7952: $56
	ld d, l                                          ; $7953: $55
	inc a                                            ; $7954: $3c
	dec sp                                           ; $7955: $3b
	jr nc, jr_018_7987                               ; $7956: $30 $2f

	add hl, de                                       ; $7958: $19
	jr jr_018_7972                                   ; $7959: $18 $17

	ld c, $79                                        ; $795b: $0e $79
	adc h                                            ; $795d: $8c
	adc e                                            ; $795e: $8b
	adc c                                            ; $795f: $89
	ld l, c                                          ; $7960: $69
	ld e, e                                          ; $7961: $5b
	ld e, d                                          ; $7962: $5a
	ld e, c                                          ; $7963: $59
	ld b, c                                          ; $7964: $41
	ld b, b                                          ; $7965: $40
	ccf                                              ; $7966: $3f
	ld a, $1d                                        ; $7967: $3e $1d
	inc e                                            ; $7969: $1c
	dec de                                           ; $796a: $1b
	ld a, [de]                                       ; $796b: $1a
	adc a                                            ; $796c: $8f
	and h                                            ; $796d: $a4
	and e                                            ; $796e: $a3
	and d                                            ; $796f: $a2
	ld a, c                                          ; $7970: $79
	ld a, h                                          ; $7971: $7c

jr_018_7972:
	ld a, e                                          ; $7972: $7b
	ld a, d                                          ; $7973: $7a
	ld a, b                                          ; $7974: $78
	ld sp, $5253                                     ; $7975: $31 $53 $52
	ld d, h                                          ; $7978: $54
	ld l, $2d                                        ; $7979: $2e $2d
	inc l                                            ; $797b: $2c
	dec hl                                           ; $797c: $2b
	ld h, a                                          ; $797d: $67
	ldh a, [$9e]                                     ; $797e: $f0 $9e
	ld d, h                                          ; $7980: $54
	ld l, e                                          ; $7981: $6b
	ldh a, [$80]                                     ; $7982: $f0 $80
	and c                                            ; $7984: $a1
	and b                                            ; $7985: $a0
	sbc a                                            ; $7986: $9f

jr_018_7987:
	sbc [hl]                                         ; $7987: $9e
	ld [hl], a                                       ; $7988: $77
	halt                                             ; $7989: $76
	ld [hl], l                                       ; $798a: $75
	ld [hl], h                                       ; $798b: $74
	ld d, c                                          ; $798c: $51
	ld d, b                                          ; $798d: $50
	ld c, a                                          ; $798e: $4f
	ld c, [hl]                                       ; $798f: $4e
	ld a, [hl+]                                      ; $7990: $2a
	add hl, hl                                       ; $7991: $29
	jr z, jr_018_79bb                                ; $7992: $28 $27

	sbc l                                            ; $7994: $9d
	sbc h                                            ; $7995: $9c
	sbc [hl]                                         ; $7996: $9e
	sbc e                                            ; $7997: $9b
	ld [hl], e                                       ; $7998: $73
	ld [hl], d                                       ; $7999: $72
	ld [hl], c                                       ; $799a: $71
	ld [hl], b                                       ; $799b: $70
	ld c, l                                          ; $799c: $4d
	ld c, h                                          ; $799d: $4c
	ld c, e                                          ; $799e: $4b
	ld c, d                                          ; $799f: $4a
	ld h, $25                                        ; $79a0: $26 $25
	inc h                                            ; $79a2: $24
	add b                                            ; $79a3: $80
	inc hl                                           ; $79a4: $23
	sbc d                                            ; $79a5: $9a
	sbc [hl]                                         ; $79a6: $9e
	sbc c                                            ; $79a7: $99
	sbc b                                            ; $79a8: $98
	ld l, a                                          ; $79a9: $6f
	ld l, [hl]                                       ; $79aa: $6e
	ld l, l                                          ; $79ab: $6d
	ld l, h                                          ; $79ac: $6c
	ld c, c                                          ; $79ad: $49
	ld c, b                                          ; $79ae: $48
	ld b, a                                          ; $79af: $47
	ld b, [hl]                                       ; $79b0: $46
	ld [hl+], a                                      ; $79b1: $22
	dec hl                                           ; $79b2: $2b
	ld hl, $9e20                                     ; $79b3: $21 $20 $9e
	sub a                                            ; $79b6: $97
	sub [hl]                                         ; $79b7: $96
	sub l                                            ; $79b8: $95
	ld l, e                                          ; $79b9: $6b
	ld l, d                                          ; $79ba: $6a

jr_018_79bb:
	sub [hl]                                         ; $79bb: $96
	sub l                                            ; $79bc: $95
	ld b, l                                          ; $79bd: $45
	ld b, h                                          ; $79be: $44
	ld b, e                                          ; $79bf: $43
	ld b, d                                          ; $79c0: $42
	rra                                              ; $79c1: $1f
	ld e, $df                                        ; $79c2: $1e $df
	dec hl                                           ; $79c4: $2b
	sub a                                            ; $79c5: $97
	ld a, c                                          ; $79c6: $79
	sub h                                            ; $79c7: $94
	sub e                                            ; $79c8: $93
	sub d                                            ; $79c9: $92
	ld l, c                                          ; $79ca: $69
	ld l, b                                          ; $79cb: $68
	ld h, a                                          ; $79cc: $67
	ld h, [hl]                                       ; $79cd: $66
	ld h, a                                          ; $79ce: $67
	sub b                                            ; $79cf: $90
	sub e                                            ; $79d0: $93
	sub c                                            ; $79d1: $91
	sub b                                            ; $79d2: $90
	adc a                                            ; $79d3: $8f
	ld a, c                                          ; $79d4: $79
	ld h, l                                          ; $79d5: $65
	ld h, h                                          ; $79d6: $64
	ld h, e                                          ; $79d7: $63
	ld h, d                                          ; $79d8: $62
	inc a                                            ; $79d9: $3c
	dec sp                                           ; $79da: $3b
	ld a, [hl-]                                      ; $79db: $3a
	add hl, sp                                       ; $79dc: $39
	ld a, e                                          ; $79dd: $7b
	ld [hl], b                                       ; $79de: $70
	add b                                            ; $79df: $80
	ld d, $79                                        ; $79e0: $16 $79
	adc [hl]                                         ; $79e2: $8e
	adc l                                            ; $79e3: $8d
	adc [hl]                                         ; $79e4: $8e
	ld h, c                                          ; $79e5: $61
	ld h, b                                          ; $79e6: $60
	ld e, a                                          ; $79e7: $5f
	ld e, [hl]                                       ; $79e8: $5e
	jr c, jr_018_7a22                                ; $79e9: $38 $37

	ld [hl], $35                                     ; $79eb: $36 $35
	dec d                                            ; $79ed: $15
	inc d                                            ; $79ee: $14
	inc de                                           ; $79ef: $13
	ld [de], a                                       ; $79f0: $12
	adc l                                            ; $79f1: $8d
	adc [hl]                                         ; $79f2: $8e
	adc l                                            ; $79f3: $8d
	ld a, c                                          ; $79f4: $79
	ld e, [hl]                                       ; $79f5: $5e
	ld e, l                                          ; $79f6: $5d
	ld e, h                                          ; $79f7: $5c
	ld a, b                                          ; $79f8: $78
	inc [hl]                                         ; $79f9: $34
	inc sp                                           ; $79fa: $33
	ld [hl-], a                                      ; $79fb: $32
	ld d, h                                          ; $79fc: $54
	ld de, $9d10                                     ; $79fd: $11 $10 $9d
	rrca                                             ; $7a00: $0f
	dec hl                                           ; $7a01: $2b
	ld c, h                                          ; $7a02: $4c
	nop                                              ; $7a03: $00
	push de                                          ; $7a04: $d5
	ld [hl+], a                                      ; $7a05: $22
	sbc e                                            ; $7a06: $9b
	ld b, h                                          ; $7a07: $44
	ld b, d                                          ; $7a08: $42
	ld b, h                                          ; $7a09: $44
	ld b, h                                          ; $7a0a: $44
	ld [hl], e                                       ; $7a0b: $73
	ld hl, sp-$62                                    ; $7a0c: $f8 $9e
	inc h                                            ; $7a0e: $24
	ld l, a                                          ; $7a0f: $6f
	ld hl, sp+$7b                                    ; $7a10: $f8 $7b
	pop af                                           ; $7a12: $f1
	ld [hl], e                                       ; $7a13: $73
	ld hl, sp+$7b                                    ; $7a14: $f8 $7b
	pop af                                           ; $7a16: $f1
	sbc [hl]                                         ; $7a17: $9e
	ld b, h                                          ; $7a18: $44
	pop de                                           ; $7a19: $d1
	ld de, $22dd                                     ; $7a1a: $11 $dd $22
	rst $38                                          ; $7a1d: $ff
	sbc l                                            ; $7a1e: $9d
	jr nz, jr_018_7a21                               ; $7a1f: $20 $00

jr_018_7a21:
	ld l, a                                          ; $7a21: $6f

jr_018_7a22:
	ld hl, sp-$63                                    ; $7a22: $f8 $9d
	nop                                              ; $7a24: $00
	ld [bc], a                                       ; $7a25: $02
	inc sp                                           ; $7a26: $33
	ldh [$99], a                                     ; $7a27: $e0 $99
	ld [hl+], a                                      ; $7a29: $22
	jr nz, jr_018_7a4c                               ; $7a2a: $20 $20

	ld d, l                                          ; $7a2c: $55
	ld d, d                                          ; $7a2d: $52
	ld d, l                                          ; $7a2e: $55
	db $fc                                           ; $7a2f: $fc
	sbc h                                            ; $7a30: $9c
	dec h                                            ; $7a31: $25
	ld d, l                                          ; $7a32: $55
	dec b                                            ; $7a33: $05
	ld l, a                                          ; $7a34: $6f
	rst FarCall                                          ; $7a35: $f7
	sbc [hl]                                         ; $7a36: $9e
	ld [bc], a                                       ; $7a37: $02
	ld a, [$f86b]                                    ; $7a38: $fa $6b $f8
	db $dd                                           ; $7a3b: $dd
	ld b, h                                          ; $7a3c: $44
	sbc l                                            ; $7a3d: $9d
	inc b                                            ; $7a3e: $04
	ld b, b                                          ; $7a3f: $40
	ld l, a                                          ; $7a40: $6f
	ld hl, sp+$67                                    ; $7a41: $f8 $67
	ldh a, [$63]                                     ; $7a43: $f0 $63
	ld hl, sp+$7b                                    ; $7a45: $f8 $7b
	or $7f                                           ; $7a47: $f6 $7f
	sbc [hl]                                         ; $7a49: $9e
	ld c, a                                          ; $7a4a: $4f
	ret nc                                           ; $7a4b: $d0

jr_018_7a4c:
	ld b, a                                          ; $7a4c: $47
	ldh a, [$fe]                                     ; $7a4d: $f0 $fe
	nop                                              ; $7a4f: $00
	call c, $9401                                    ; $7a50: $dc $01 $94
	ld [hl+], a                                      ; $7a53: $22
	inc hl                                           ; $7a54: $23
	inc h                                            ; $7a55: $24
	ld bc, $4342                                     ; $7a56: $01 $42 $43
	ld b, h                                          ; $7a59: $44
	ld bc, $6362                                     ; $7a5a: $01 $62 $63
	ld h, h                                          ; $7a5d: $64
	pop de                                           ; $7a5e: $d1
	ld bc, $03dd                                     ; $7a5f: $01 $dd $03
	db $dd                                           ; $7a62: $dd
	ld [bc], a                                       ; $7a63: $02
	ld sp, hl                                        ; $7a64: $f9
	sub a                                            ; $7a65: $97
	ld c, l                                          ; $7a66: $4d
	dec e                                            ; $7a67: $1d
	inc e                                            ; $7a68: $1c
	dec de                                           ; $7a69: $1b
	ld [$0607], sp                                   ; $7a6a: $08 $07 $06
	inc c                                            ; $7a6d: $0c
	ld sp, hl                                        ; $7a6e: $f9
	call c, $9401                                    ; $7a6f: $dc $01 $94
	ld [hl-], a                                      ; $7a72: $32
	ld bc, $5101                                     ; $7a73: $01 $01 $51
	ld d, d                                          ; $7a76: $52
	ld d, e                                          ; $7a77: $53
	ld bc, $7271                                     ; $7a78: $01 $71 $72
	ld [hl], e                                       ; $7a7b: $73
	ld bc, $97f1                                     ; $7a7c: $01 $f1 $97
	jr nz, jr_018_7aa0                               ; $7a7f: $20 $1f

	ld e, $4d                                        ; $7a81: $1e $4d
	inc c                                            ; $7a83: $0c
	dec bc                                           ; $7a84: $0b
	ld a, [bc]                                       ; $7a85: $0a
	add hl, bc                                       ; $7a86: $09
	ld sp, hl                                        ; $7a87: $f9
	sub a                                            ; $7a88: $97
	daa                                              ; $7a89: $27
	ld h, $25                                        ; $7a8a: $26 $25
	ld hl, $0d0e                                     ; $7a8c: $21 $0e $0d
	ld de, $dd10                                     ; $7a8f: $11 $10 $dd
	dec b                                            ; $7a92: $05
	db $dd                                           ; $7a93: $dd
	inc b                                            ; $7a94: $04
	sbc [hl]                                         ; $7a95: $9e
	ld a, l                                          ; $7a96: $7d
	sbc $7c                                          ; $7a97: $de $7c
	db $dd                                           ; $7a99: $dd
	ld bc, $7a97                                     ; $7a9a: $01 $97 $7a
	ld a, c                                          ; $7a9d: $79
	ld a, b                                          ; $7a9e: $78
	ld [hl], a                                       ; $7a9f: $77

jr_018_7aa0:
	ld [hl], b                                       ; $7aa0: $70
	ld l, a                                          ; $7aa1: $6f
	ld l, [hl]                                       ; $7aa2: $6e
	ld l, l                                          ; $7aa3: $6d
	sbc $7c                                          ; $7aa4: $de $7c
	sbc [hl]                                         ; $7aa6: $9e
	ld a, e                                          ; $7aa7: $7b
	db $dd                                           ; $7aa8: $dd
	ld bc, $7697                                     ; $7aa9: $01 $97 $76
	ld [hl], l                                       ; $7aac: $75
	ld [hl], h                                       ; $7aad: $74
	ld a, d                                          ; $7aae: $7a
	ld l, h                                          ; $7aaf: $6c
	ld l, e                                          ; $7ab0: $6b
	ld l, d                                          ; $7ab1: $6a
	ld [hl], b                                       ; $7ab2: $70
	reti                                             ; $7ab3: $d9


	ld bc, $e17b                                     ; $7ab4: $01 $7b $e1
	sbc [hl]                                         ; $7ab7: $9e
	halt                                             ; $7ab8: $76
	ld a, e                                          ; $7ab9: $7b
	pop hl                                           ; $7aba: $e1
	sbc [hl]                                         ; $7abb: $9e
	ld l, h                                          ; $7abc: $6c
	reti                                             ; $7abd: $d9


	ld bc, $e17b                                     ; $7abe: $01 $7b $e1
	sbc [hl]                                         ; $7ac1: $9e
	ld a, c                                          ; $7ac2: $79
	ld a, e                                          ; $7ac3: $7b
	pop hl                                           ; $7ac4: $e1
	sbc [hl]                                         ; $7ac5: $9e
	ld l, a                                          ; $7ac6: $6f
	reti                                             ; $7ac7: $d9


	ld bc, $e17b                                     ; $7ac8: $01 $7b $e1
	sbc [hl]                                         ; $7acb: $9e
	ld [hl], l                                       ; $7acc: $75
	ld a, e                                          ; $7acd: $7b
	pop hl                                           ; $7ace: $e1
	sub [hl]                                         ; $7acf: $96
	ld l, e                                          ; $7ad0: $6b
	dec hl                                           ; $7ad1: $2b
	ld a, [hl+]                                      ; $7ad2: $2a
	add hl, hl                                       ; $7ad3: $29
	jr z, @+$14                                      ; $7ad4: $28 $12

	ld de, $0f10                                     ; $7ad6: $11 $10 $0f
	ld h, a                                          ; $7ad9: $67

Jump_018_7ada:
	and b                                            ; $7ada: $a0
	sub a                                            ; $7adb: $97
	cpl                                              ; $7adc: $2f
	ld l, $2d                                        ; $7add: $2e $2d
	inc l                                            ; $7adf: $2c
	ld c, l                                          ; $7ae0: $4d
	inc d                                            ; $7ae1: $14
	inc de                                           ; $7ae2: $13
	ld c, l                                          ; $7ae3: $4d
	ld h, a                                          ; $7ae4: $67
	ldh a, [$97]                                     ; $7ae5: $f0 $97
	ld sp, $3536                                     ; $7ae7: $31 $36 $35
	jr nc, jr_018_7b02                               ; $7aea: $30 $16

	ld a, [de]                                       ; $7aec: $1a
	add hl, de                                       ; $7aed: $19
	dec d                                            ; $7aee: $15
	ld h, a                                          ; $7aef: $67
	ldh a, [$80]                                     ; $7af0: $f0 $80
	ld l, c                                          ; $7af2: $69
	ld l, b                                          ; $7af3: $68
	ld h, a                                          ; $7af4: $67
	ld h, [hl]                                       ; $7af5: $66
	ld e, a                                          ; $7af6: $5f
	ld e, [hl]                                       ; $7af7: $5e
	ld e, l                                          ; $7af8: $5d
	ld e, h                                          ; $7af9: $5c
	ld e, b                                          ; $7afa: $58
	ld d, a                                          ; $7afb: $57
	ld d, [hl]                                       ; $7afc: $56

Call_018_7afd:
	ld d, l                                          ; $7afd: $55
	ld b, l                                          ; $7afe: $45
	ld b, c                                          ; $7aff: $41
	ld b, b                                          ; $7b00: $40
	ccf                                              ; $7b01: $3f

jr_018_7b02:
	ld h, l                                          ; $7b02: $65
	ld h, c                                          ; $7b03: $61
	ld h, b                                          ; $7b04: $60
	ld l, c                                          ; $7b05: $69
	ld e, e                                          ; $7b06: $5b
	ld e, d                                          ; $7b07: $5a
	ld e, c                                          ; $7b08: $59
	ld e, a                                          ; $7b09: $5f
	ld d, h                                          ; $7b0a: $54
	ld d, b                                          ; $7b0b: $50
	ld c, a                                          ; $7b0c: $4f
	ld c, [hl]                                       ; $7b0d: $4e
	ld a, $3d                                        ; $7b0e: $3e $3d
	inc a                                            ; $7b10: $3c
	sbc [hl]                                         ; $7b11: $9e
	ld c, l                                          ; $7b12: $4d
	ld a, e                                          ; $7b13: $7b
	pop hl                                           ; $7b14: $e1
	sbc [hl]                                         ; $7b15: $9e
	ld h, l                                          ; $7b16: $65
	ld a, e                                          ; $7b17: $7b
	pop hl                                           ; $7b18: $e1
	sbc [hl]                                         ; $7b19: $9e
	ld e, e                                          ; $7b1a: $5b
	reti                                             ; $7b1b: $d9


	ld c, l                                          ; $7b1c: $4d

jr_018_7b1d:
	ld a, e                                          ; $7b1d: $7b
	pop hl                                           ; $7b1e: $e1
	sbc [hl]                                         ; $7b1f: $9e
	ld l, b                                          ; $7b20: $68
	ld a, e                                          ; $7b21: $7b
	pop hl                                           ; $7b22: $e1
	sub [hl]                                         ; $7b23: $96
	ld e, [hl]                                       ; $7b24: $5e
	ld c, h                                          ; $7b25: $4c
	ld c, e                                          ; $7b26: $4b
	ld c, d                                          ; $7b27: $4a
	ld c, c                                          ; $7b28: $49
	ld c, l                                          ; $7b29: $4d
	dec sp                                           ; $7b2a: $3b
	ld a, [hl-]                                      ; $7b2b: $3a
	add hl, sp                                       ; $7b2c: $39
	ld a, e                                          ; $7b2d: $7b
	pop hl                                           ; $7b2e: $e1
	sbc [hl]                                         ; $7b2f: $9e
	ld h, c                                          ; $7b30: $61
	ld a, e                                          ; $7b31: $7b
	pop hl                                           ; $7b32: $e1
	sub [hl]                                         ; $7b33: $96
	ld e, d                                          ; $7b34: $5a
	ld c, b                                          ; $7b35: $48
	ld b, a                                          ; $7b36: $47
	ld b, [hl]                                       ; $7b37: $46
	ld c, d                                          ; $7b38: $4a
	jr c, @+$39                                      ; $7b39: $38 $37

	dec sp                                           ; $7b3b: $3b
	ld a, [hl-]                                      ; $7b3c: $3a
	ld h, d                                          ; $7b3d: $62
	ret c                                            ; $7b3e: $d8

	jp c, Jump_018_7f4d                              ; $7b3f: $da $4d $7f

Jump_018_7b42:
	sub c                                            ; $7b42: $91
	sbc c                                            ; $7b43: $99
	inc [hl]                                         ; $7b44: $34
	inc sp                                           ; $7b45: $33
	ld a, [de]                                       ; $7b46: $1a
	add hl, de                                       ; $7b47: $19
	jr @+$19                                         ; $7b48: $18 $17

	ld h, a                                          ; $7b4a: $67
	sub b                                            ; $7b4b: $90
	ld d, a                                          ; $7b4c: $57
	nop                                              ; $7b4d: $00
	pop de                                           ; $7b4e: $d1
	ld [hl], a                                       ; $7b4f: $77
	db $dd                                           ; $7b50: $dd
	inc sp                                           ; $7b51: $33
	db $fd                                           ; $7b52: $fd
	db $dd                                           ; $7b53: $dd
	ld de, $d9fd                                     ; $7b54: $11 $fd $d9
	ld [hl], a                                       ; $7b57: $77
	ld sp, hl                                        ; $7b58: $f9
	ld h, a                                          ; $7b59: $67
	add sp, -$62                                     ; $7b5a: $e8 $9e
	jr nz, jr_018_7b1d                               ; $7b5c: $20 $bf

	ld [hl+], a                                      ; $7b5e: $22
	inc sp                                           ; $7b5f: $33
	sbc $33                                          ; $7b60: $de $33
	sbc l                                            ; $7b62: $9d
	halt                                             ; $7b63: $76
	ld h, [hl]                                       ; $7b64: $66
	db $dd                                           ; $7b65: $dd
	ld [hl], a                                       ; $7b66: $77
	rst SubAFromDE                                          ; $7b67: $df
	ld d, l                                          ; $7b68: $55
	sbc l                                            ; $7b69: $9d
	ld h, [hl]                                       ; $7b6a: $66
	ld h, a                                          ; $7b6b: $67
	ld l, a                                          ; $7b6c: $6f
	ld hl, sp-$25                                    ; $7b6d: $f8 $db
	ld [hl], a                                       ; $7b6f: $77
	ccf                                              ; $7b70: $3f
	ld hl, sp-$41                                    ; $7b71: $f8 $bf
	ld [bc], a                                       ; $7b73: $02
	ld [bc], a                                       ; $7b74: $02
	db $dd                                           ; $7b75: $dd
	inc sp                                           ; $7b76: $33
	db $dd                                           ; $7b77: $dd
	ld de, $33dd                                     ; $7b78: $11 $dd $33
	sbc [hl]                                         ; $7b7b: $9e

Call_018_7b7c:
	db $10                                           ; $7b7c: $10
	cp a                                             ; $7b7d: $bf
	db $10                                           ; $7b7e: $10
	inc sp                                           ; $7b7f: $33
	sbc $33                                          ; $7b80: $de $33
	rst SubAFromDE                                          ; $7b82: $df
	ld d, l                                          ; $7b83: $55
	rst SubAFromDE                                          ; $7b84: $df
	ld b, h                                          ; $7b85: $44
	cp a                                             ; $7b86: $bf
	ld de, $7711                                     ; $7b87: $11 $11 $77
	ld hl, sp+$77                                    ; $7b8a: $f8 $77
	db $ec                                           ; $7b8c: $ec
	ld [hl], a                                       ; $7b8d: $77
	ld hl, sp-$23                                    ; $7b8e: $f8 $dd
	ld de, $e873                                     ; $7b90: $11 $73 $e8
	ld a, e                                          ; $7b93: $7b
	call z, $f877                                    ; $7b94: $cc $77 $f8
	ld a, a                                          ; $7b97: $7f
	sub [hl]                                         ; $7b98: $96
	ld a, a                                          ; $7b99: $7f
	cp $63                                           ; $7b9a: $fe $63
	add h                                            ; $7b9c: $84
	sbc h                                            ; $7b9d: $9c
	ld bc, $1200                                     ; $7b9e: $01 $00 $12
	db $dd                                           ; $7ba1: $dd
	inc sp                                           ; $7ba2: $33
	ret c                                            ; $7ba3: $d8

	nop                                              ; $7ba4: $00
	add b                                            ; $7ba5: $80
	ld a, [hl]                                       ; $7ba6: $7e
	ld a, a                                          ; $7ba7: $7f
	add b                                            ; $7ba8: $80
	add c                                            ; $7ba9: $81
	sbc [hl]                                         ; $7baa: $9e
	sbc a                                            ; $7bab: $9f
	and b                                            ; $7bac: $a0
	and c                                            ; $7bad: $a1
	cp [hl]                                          ; $7bae: $be
	cp a                                             ; $7baf: $bf
	ret nz                                           ; $7bb0: $c0

	pop bc                                           ; $7bb1: $c1
	sbc $df                                          ; $7bb2: $de $df
	ldh [$e1], a                                     ; $7bb4: $e0 $e1
	add d                                            ; $7bb6: $82
	add e                                            ; $7bb7: $83
	add h                                            ; $7bb8: $84
	ld c, l                                          ; $7bb9: $4d
	and d                                            ; $7bba: $a2
	and e                                            ; $7bbb: $a3
	and h                                            ; $7bbc: $a4
	ld c, l                                          ; $7bbd: $4d
	jp nz, $bfbe                                     ; $7bbe: $c2 $be $bf

	push bc                                          ; $7bc1: $c5
	ldh [c], a                                       ; $7bc2: $e2
	db $e3                                           ; $7bc3: $e3
	rst SubAFromDE                                          ; $7bc4: $df
	sbc [hl]                                         ; $7bc5: $9e
	ldh [$d9], a                                     ; $7bc6: $e0 $d9
	ld c, l                                          ; $7bc8: $4d
	add b                                            ; $7bc9: $80
	cpl                                              ; $7bca: $2f
	ld l, $2d                                        ; $7bcb: $2e $2d
	inc l                                            ; $7bcd: $2c
	ld c, l                                          ; $7bce: $4d
	inc d                                            ; $7bcf: $14
	inc de                                           ; $7bd0: $13
	ld c, l                                          ; $7bd1: $4d
	ld c, l                                          ; $7bd2: $4d
	adc e                                            ; $7bd3: $8b
	adc h                                            ; $7bd4: $8c
	adc l                                            ; $7bd5: $8d
	ld c, l                                          ; $7bd6: $4d
	xor e                                            ; $7bd7: $ab
	xor h                                            ; $7bd8: $ac
	xor l                                            ; $7bd9: $ad
	jp z, $cccb                                      ; $7bda: $ca $cb $cc

	call $ebea                                       ; $7bdd: $cd $ea $eb
	db $ec                                           ; $7be0: $ec
	db $ed                                           ; $7be1: $ed
	adc [hl]                                         ; $7be2: $8e
	adc a                                            ; $7be3: $8f
	sub b                                            ; $7be4: $90
	adc h                                            ; $7be5: $8c
	xor [hl]                                         ; $7be6: $ae
	xor a                                            ; $7be7: $af
	or b                                             ; $7be8: $b0
	sub [hl]                                         ; $7be9: $96
	or c                                             ; $7bea: $b1
	adc $cf                                          ; $7beb: $ce $cf
	set 2, c                                         ; $7bed: $cb $d1
	xor $ea                                          ; $7bef: $ee $ea
	db $eb                                           ; $7bf1: $eb
	pop af                                           ; $7bf2: $f1
	reti                                             ; $7bf3: $d9


	ld c, l                                          ; $7bf4: $4d
	add a                                            ; $7bf5: $87
	jr nz, jr_018_7c17                               ; $7bf6: $20 $1f

	ld e, $4d                                        ; $7bf8: $1e $4d
	inc c                                            ; $7bfa: $0c
	dec bc                                           ; $7bfb: $0b
	ld a, [bc]                                       ; $7bfc: $0a
	add hl, bc                                       ; $7bfd: $09
	ret c                                            ; $7bfe: $d8

Call_018_7bff:
	rst SubAFromHL                                          ; $7bff: $d7
	sub $da                                          ; $7c00: $d6 $da
	sub c                                            ; $7c02: $91
	cp l                                             ; $7c03: $bd
	cp h                                             ; $7c04: $bc
	cp e                                             ; $7c05: $bb
	xor b                                            ; $7c06: $a8
	and a                                            ; $7c07: $a7
	or d                                             ; $7c08: $b2
	xor d                                            ; $7c09: $aa
	add a                                            ; $7c0a: $87
	add [hl]                                         ; $7c0b: $86
	adc d                                            ; $7c0c: $8a
	add l                                            ; $7c0d: $85
	ret c                                            ; $7c0e: $d8

	ld c, l                                          ; $7c0f: $4d
	sbc b                                            ; $7c10: $98
	dec e                                            ; $7c11: $1d
	inc e                                            ; $7c12: $1c
	dec de                                           ; $7c13: $1b
	ld [$0607], sp                                   ; $7c14: $08 $07 $06

jr_018_7c17:
	inc c                                            ; $7c17: $0c
	ld l, e                                          ; $7c18: $6b
	add b                                            ; $7c19: $80
	sub l                                            ; $7c1a: $95
	ld hl, sp-$42                                    ; $7c1b: $f8 $be
	cp a                                             ; $7c1d: $bf
	push af                                          ; $7c1e: $f5
	pop bc                                           ; $7c1f: $c1
	db $f4                                           ; $7c20: $f4
	di                                               ; $7c21: $f3
	ldh a, [c]                                       ; $7c22: $f2
	ldh a, [$f9]                                     ; $7c23: $f0 $f9
	ld a, e                                          ; $7c25: $7b
	add b                                            ; $7c26: $80
	sbc l                                            ; $7c27: $9d
	rst FarCall                                          ; $7c28: $f7
	or $6f                                           ; $7c29: $f6 $6f
	add b                                            ; $7c2b: $80
	adc e                                            ; $7c2c: $8b
	rst AddAOntoHL                                          ; $7c2d: $ef
	jp hl                                            ; $7c2e: $e9


	di                                               ; $7c2f: $f3
	ldh [rKEY1], a                                   ; $7c30: $e0 $4d
	db $db                                           ; $7c32: $db
	jp c, Jump_018_4d93                              ; $7c33: $da $93 $4d

	rst JumpTable                                          ; $7c36: $c7
	cp e                                             ; $7c37: $bb
	sub d                                            ; $7c38: $92
	or e                                             ; $7c39: $b3
	or d                                             ; $7c3a: $b2
	xor d                                            ; $7c3b: $aa
	xor c                                            ; $7c3c: $a9
	sbc c                                            ; $7c3d: $99
	adc d                                            ; $7c3e: $8a
	adc c                                            ; $7c3f: $89
	adc b                                            ; $7c40: $88
	ld [hl], a                                       ; $7c41: $77
	or b                                             ; $7c42: $b0
	sbc [hl]                                         ; $7c43: $9e
	jp $b06b                                         ; $7c44: $c3 $6b $b0


	sbc e                                            ; $7c47: $9b
	sub l                                            ; $7c48: $95
	sbc c                                            ; $7c49: $99
	sbc b                                            ; $7c4a: $98
	sub h                                            ; $7c4b: $94
	ld a, e                                          ; $7c4c: $7b
	ldh [$9a], a                                     ; $7c4d: $e0 $9a
	reti                                             ; $7c4f: $d9


	ld c, l                                          ; $7c50: $4d
	rst JumpTable                                          ; $7c51: $c7
	add $c4                                          ; $7c52: $c6 $c4
	ld [hl], e                                       ; $7c54: $73
	ldh [$80], a                                     ; $7c55: $e0 $80
	sbc b                                            ; $7c57: $98
	sub a                                            ; $7c58: $97
	sub [hl]                                         ; $7c59: $96
	db $e4                                           ; $7c5a: $e4
	db $dd                                           ; $7c5b: $dd
	call c, $d04d                                    ; $7c5c: $dc $4d $d0
	ret                                              ; $7c5f: $c9


	ret z                                            ; $7c60: $c8

	ld c, l                                          ; $7c61: $4d
	or [hl]                                          ; $7c62: $b6
	or l                                             ; $7c63: $b5
	cp c                                             ; $7c64: $b9
	or h                                             ; $7c65: $b4
	sbc e                                            ; $7c66: $9b
	sbc d                                            ; $7c67: $9a
	and l                                            ; $7c68: $a5
	sbc l                                            ; $7c69: $9d
	add sp, -$19                                     ; $7c6a: $e8 $e7
	and $e5                                          ; $7c6c: $e6 $e5
	push de                                          ; $7c6e: $d5
	call nc, $d2d3                                   ; $7c6f: $d4 $d3 $d2
	cp d                                             ; $7c72: $ba
	cp c                                             ; $7c73: $b9
	cp b                                             ; $7c74: $b8
	or a                                             ; $7c75: $b7
	sbc e                                            ; $7c76: $9b
	and [hl]                                         ; $7c77: $a6
	and l                                            ; $7c78: $a5
	sbc l                                            ; $7c79: $9d
	sbc h                                            ; $7c7a: $9c
	scf                                              ; $7c7b: $37
	nop                                              ; $7c7c: $00
	sbc l                                            ; $7c7d: $9d
	nop                                              ; $7c7e: $00
	ld de, $fe73                                     ; $7c7f: $11 $73 $fe
	sbc h                                            ; $7c82: $9c
	ld [bc], a                                       ; $7c83: $02
	stop                                             ; $7c84: $10 $00
	ld l, a                                          ; $7c86: $6f
	cp $d9                                           ; $7c87: $fe $d9
	ld de, $ee7f                                     ; $7c89: $11 $7f $ee
	ld l, a                                          ; $7c8c: $6f
	cp $9a                                           ; $7c8d: $fe $9a
	ld [hl+], a                                      ; $7c8f: $22
	nop                                              ; $7c90: $00
	ld [hl+], a                                      ; $7c91: $22
	nop                                              ; $7c92: $00
	jr nz, jr_018_7d10                               ; $7c93: $20 $7b

	cp $d9                                           ; $7c95: $fe $d9
	ld de, $f077                                     ; $7c97: $11 $77 $f0
	ld [hl], a                                       ; $7c9a: $77
	xor $63                                          ; $7c9b: $ee $63
	ret c                                            ; $7c9d: $d8

	ld c, e                                          ; $7c9e: $4b
	ret nz                                           ; $7c9f: $c0

	ld l, e                                          ; $7ca0: $6b
	ret z                                            ; $7ca1: $c8

	sbc [hl]                                         ; $7ca2: $9e
	ld bc, $d867                                     ; $7ca3: $01 $67 $d8
	ld h, a                                          ; $7ca6: $67
	ldh a, [$63]                                     ; $7ca7: $f0 $63
	ldh [$9e], a                                     ; $7ca9: $e0 $9e
	ld bc, $d27b                                     ; $7cab: $01 $7b $d2
	ld a, a                                          ; $7cae: $7f
	db $fc                                           ; $7caf: $fc
	sbc [hl]                                         ; $7cb0: $9e
	ld [bc], a                                       ; $7cb1: $02
	cp a                                             ; $7cb2: $bf
	nop                                              ; $7cb3: $00
	call $d54a                                       ; $7cb4: $cd $4a $d5
	ld c, c                                          ; $7cb7: $49
	sub a                                            ; $7cb8: $97
	ld c, b                                          ; $7cb9: $48
	ld b, a                                          ; $7cba: $47
	ld b, [hl]                                       ; $7cbb: $46
	ld b, [hl]                                       ; $7cbc: $46
	ld b, l                                          ; $7cbd: $45
	ld b, [hl]                                       ; $7cbe: $46
	ld b, [hl]                                       ; $7cbf: $46
	ld b, h                                          ; $7cc0: $44
	ld h, a                                          ; $7cc1: $67
	db $fc                                           ; $7cc2: $fc
	rst SubAFromDE                                          ; $7cc3: $df
	ld b, [hl]                                       ; $7cc4: $46
	sbc l                                            ; $7cc5: $9d
	ld b, e                                          ; $7cc6: $43
	ld c, b                                          ; $7cc7: $48
	push de                                          ; $7cc8: $d5
	ld c, c                                          ; $7cc9: $49
	adc e                                            ; $7cca: $8b
	ld b, d                                          ; $7ccb: $42
	ld b, c                                          ; $7ccc: $41
	ld b, b                                          ; $7ccd: $40
	ccf                                              ; $7cce: $3f
	ld a, $3d                                        ; $7ccf: $3e $3d
	inc a                                            ; $7cd1: $3c
	dec sp                                           ; $7cd2: $3b
	ld a, [hl-]                                      ; $7cd3: $3a
	add hl, sp                                       ; $7cd4: $39
	jr c, jr_018_7d0e                                ; $7cd5: $38 $37

	ld [hl], $35                                     ; $7cd7: $36 $35
	inc [hl]                                         ; $7cd9: $34
	inc sp                                           ; $7cda: $33
	ld [hl-], a                                      ; $7cdb: $32
	ld sp, $4230                                     ; $7cdc: $31 $30 $42
	ld d, e                                          ; $7cdf: $53
	ldh [$8d], a                                     ; $7ce0: $e0 $8d
	cpl                                              ; $7ce2: $2f
	dec sp                                           ; $7ce3: $3b
	ld l, $2d                                        ; $7ce4: $2e $2d
	inc l                                            ; $7ce6: $2c
	dec hl                                           ; $7ce7: $2b
	dec sp                                           ; $7ce8: $3b
	ld a, [hl+]                                      ; $7ce9: $2a
	add hl, hl                                       ; $7cea: $29
	jr z, jr_018_7d14                                ; $7ceb: $28 $27

	ld h, $25                                        ; $7ced: $26 $25
	inc h                                            ; $7cef: $24
	inc hl                                           ; $7cf0: $23
	ld [hl+], a                                      ; $7cf1: $22
	ld hl, $5320                                     ; $7cf2: $21 $20 $53
	ldh [$9d], a                                     ; $7cf5: $e0 $9d
	rra                                              ; $7cf7: $1f
	ld e, $d1                                        ; $7cf8: $1e $d1
	dec e                                            ; $7cfa: $1d
	sbc l                                            ; $7cfb: $9d
	inc e                                            ; $7cfc: $1c
	rra                                              ; $7cfd: $1f
	push de                                          ; $7cfe: $d5
	ld c, c                                          ; $7cff: $49
	sbc [hl]                                         ; $7d00: $9e
	dec de                                           ; $7d01: $1b
	ld b, e                                          ; $7d02: $43
	ldh [$9d], a                                     ; $7d03: $e0 $9d
	ld a, [de]                                       ; $7d05: $1a
	dec de                                           ; $7d06: $1b
	push de                                          ; $7d07: $d5
	ld c, c                                          ; $7d08: $49
	sbc l                                            ; $7d09: $9d
	add hl, de                                       ; $7d0a: $19
	jr @-$2d                                         ; $7d0b: $18 $d1

	dec e                                            ; $7d0d: $1d

jr_018_7d0e:
	sbc l                                            ; $7d0e: $9d
	rla                                              ; $7d0f: $17

jr_018_7d10:
	add hl, de                                       ; $7d10: $19
	push de                                          ; $7d11: $d5
	ld c, c                                          ; $7d12: $49
	sbc l                                            ; $7d13: $9d

jr_018_7d14:
	ld d, $1c                                        ; $7d14: $16 $1c
	pop de                                           ; $7d16: $d1
	dec e                                            ; $7d17: $1d
	sbc l                                            ; $7d18: $9d
	dec d                                            ; $7d19: $15
	ld d, $d5                                        ; $7d1a: $16 $d5
	ld c, c                                          ; $7d1c: $49
	sbc [hl]                                         ; $7d1d: $9e
	inc d                                            ; $7d1e: $14
	ld b, e                                          ; $7d1f: $43
	ldh [$9d], a                                     ; $7d20: $e0 $9d
	inc e                                            ; $7d22: $1c
	inc d                                            ; $7d23: $14
	push de                                          ; $7d24: $d5
	ld c, c                                          ; $7d25: $49
	sbc l                                            ; $7d26: $9d
	inc de                                           ; $7d27: $13
	ld [de], a                                       ; $7d28: $12
	pop de                                           ; $7d29: $d1
	dec e                                            ; $7d2a: $1d
	sbc l                                            ; $7d2b: $9d
	ld de, $5313                                     ; $7d2c: $11 $13 $53
	ret nz                                           ; $7d2f: $c0

	sbc [hl]                                         ; $7d30: $9e
	nop                                              ; $7d31: $00
	pop de                                           ; $7d32: $d1
	dec e                                            ; $7d33: $1d
	sbc [hl]                                         ; $7d34: $9e
	db $10                                           ; $7d35: $10
	ld d, e                                          ; $7d36: $53
	ret nz                                           ; $7d37: $c0

	sbc l                                            ; $7d38: $9d
	rrca                                             ; $7d39: $0f
	ld c, $43                                        ; $7d3a: $0e $43
	ld b, b                                          ; $7d3c: $40
	sbc [hl]                                         ; $7d3d: $9e
	rrca                                             ; $7d3e: $0f
	ld d, e                                          ; $7d3f: $53
	ret nz                                           ; $7d40: $c0

	sbc [hl]                                         ; $7d41: $9e
	dec c                                            ; $7d42: $0d
	ld b, e                                          ; $7d43: $43
	ld b, b                                          ; $7d44: $40
	ld c, a                                          ; $7d45: $4f
	ret nz                                           ; $7d46: $c0

	ld b, e                                          ; $7d47: $43
	ld h, b                                          ; $7d48: $60
	sbc [hl]                                         ; $7d49: $9e
	inc c                                            ; $7d4a: $0c
	ld c, a                                          ; $7d4b: $4f
	ret nz                                           ; $7d4c: $c0

	dec bc                                           ; $7d4d: $0b
	ld b, b                                          ; $7d4e: $40
	sbc l                                            ; $7d4f: $9d
	rrca                                             ; $7d50: $0f
	dec bc                                           ; $7d51: $0b
	pop de                                           ; $7d52: $d1
	dec e                                            ; $7d53: $1d
	sbc [hl]                                         ; $7d54: $9e
	ld a, [bc]                                       ; $7d55: $0a
	ld c, a                                          ; $7d56: $4f
	ret nz                                           ; $7d57: $c0

	sbc [hl]                                         ; $7d58: $9e
	add hl, bc                                       ; $7d59: $09
	pop de                                           ; $7d5a: $d1
	dec e                                            ; $7d5b: $1d
	sbc [hl]                                         ; $7d5c: $9e
	ld [$c04f], sp                                   ; $7d5d: $08 $4f $c0
	sbc e                                            ; $7d60: $9b
	rlca                                             ; $7d61: $07
	ld b, $05                                        ; $7d62: $06 $05
	inc b                                            ; $7d64: $04
	ld a, e                                          ; $7d65: $7b
	db $fd                                           ; $7d66: $fd
	ld [hl], e                                       ; $7d67: $73
	ei                                               ; $7d68: $fb
	sbc b                                            ; $7d69: $98
	inc bc                                           ; $7d6a: $03
	ld [bc], a                                       ; $7d6b: $02
	inc b                                            ; $7d6c: $04
	ld b, $06                                        ; $7d6d: $06 $06
	ld bc, $340f                                     ; $7d6f: $01 $0f $34
	nop                                              ; $7d72: $00
	pop de                                           ; $7d73: $d1
	ld [hl+], a                                      ; $7d74: $22
	sbc [hl]                                         ; $7d75: $9e
	inc h                                            ; $7d76: $24
	reti                                             ; $7d77: $d9


	ld b, h                                          ; $7d78: $44
	sbc [hl]                                         ; $7d79: $9e
	ld b, d                                          ; $7d7a: $42
	db $db                                           ; $7d7b: $db
	ld [hl+], a                                      ; $7d7c: $22
	sbc [hl]                                         ; $7d7d: $9e
	ld hl, $44d9                                     ; $7d7e: $21 $d9 $44
	sbc [hl]                                         ; $7d81: $9e
	ld [de], a                                       ; $7d82: $12
	cpl                                              ; $7d83: $2f
	ldh a, [$9e]                                     ; $7d84: $f0 $9e
	inc b                                            ; $7d86: $04
	reti                                             ; $7d87: $d9


	ld [hl], a                                       ; $7d88: $77
	sbc [hl]                                         ; $7d89: $9e
	db $10                                           ; $7d8a: $10
	cpl                                              ; $7d8b: $2f
	ldh a, [$9e]                                     ; $7d8c: $f0 $9e
	ld bc, $f00b                                     ; $7d8e: $01 $0b $f0
	sbc [hl]                                         ; $7d91: $9e
	ld de, $77d9                                     ; $7d92: $11 $d9 $77
	sbc [hl]                                         ; $7d95: $9e
	ld de, $f02f                                     ; $7d96: $11 $2f $f0
	sbc [hl]                                         ; $7d99: $9e
	db $10                                           ; $7d9a: $10
	dec bc                                           ; $7d9b: $0b
	ldh [$03], a                                     ; $7d9c: $e0 $03
	ldh a, [$03]                                     ; $7d9e: $f0 $03
	ldh a, [rWX]                                     ; $7da0: $f0 $4b
	ldh a, [$d8]                                     ; $7da2: $f0 $d8
	ld de, $00bf                                     ; $7da4: $11 $bf $00
	call $d54a                                       ; $7da7: $cd $4a $d5
	ld c, c                                          ; $7daa: $49
	sub a                                            ; $7dab: $97
	ld c, b                                          ; $7dac: $48
	ld b, a                                          ; $7dad: $47
	ld b, [hl]                                       ; $7dae: $46
	ld b, [hl]                                       ; $7daf: $46
	ld b, l                                          ; $7db0: $45
	ld b, [hl]                                       ; $7db1: $46
	ld b, [hl]                                       ; $7db2: $46
	ld b, h                                          ; $7db3: $44
	ld h, a                                          ; $7db4: $67
	db $fc                                           ; $7db5: $fc
	rst SubAFromDE                                          ; $7db6: $df
	ld b, [hl]                                       ; $7db7: $46
	sbc l                                            ; $7db8: $9d
	ld b, e                                          ; $7db9: $43
	ld c, b                                          ; $7dba: $48
	push de                                          ; $7dbb: $d5
	ld c, c                                          ; $7dbc: $49
	adc e                                            ; $7dbd: $8b
	ld b, d                                          ; $7dbe: $42
	ld b, c                                          ; $7dbf: $41
	ld b, b                                          ; $7dc0: $40
	ccf                                              ; $7dc1: $3f
	ld a, $3d                                        ; $7dc2: $3e $3d
	inc a                                            ; $7dc4: $3c
	dec sp                                           ; $7dc5: $3b
	ld a, [hl-]                                      ; $7dc6: $3a
	add hl, sp                                       ; $7dc7: $39
	dec sp                                           ; $7dc8: $3b
	jr c, jr_018_7e02                                ; $7dc9: $38 $37

	ld [hl], $35                                     ; $7dcb: $36 $35
	inc [hl]                                         ; $7dcd: $34
	inc sp                                           ; $7dce: $33
	ld [hl-], a                                      ; $7dcf: $32
	ld sp, $5342                                     ; $7dd0: $31 $42 $53
	ldh [$8d], a                                     ; $7dd3: $e0 $8d
	jr nc, jr_018_7e06                               ; $7dd5: $30 $2f

	ld l, $2d                                        ; $7dd7: $2e $2d
	inc l                                            ; $7dd9: $2c
	dec hl                                           ; $7dda: $2b
	dec sp                                           ; $7ddb: $3b
	ld a, [hl+]                                      ; $7ddc: $2a
	add hl, hl                                       ; $7ddd: $29
	jr z, jr_018_7e07                                ; $7dde: $28 $27

	ld h, $25                                        ; $7de0: $26 $25
	inc h                                            ; $7de2: $24
	inc hl                                           ; $7de3: $23
	ld [hl+], a                                      ; $7de4: $22
	ld hl, $5320                                     ; $7de5: $21 $20 $53
	ldh [$9d], a                                     ; $7de8: $e0 $9d
	rra                                              ; $7dea: $1f
	ld e, $d1                                        ; $7deb: $1e $d1
	dec e                                            ; $7ded: $1d
	sbc l                                            ; $7dee: $9d
	inc e                                            ; $7def: $1c
	rra                                              ; $7df0: $1f
	push de                                          ; $7df1: $d5
	ld c, c                                          ; $7df2: $49
	sbc [hl]                                         ; $7df3: $9e
	dec de                                           ; $7df4: $1b
	ld b, e                                          ; $7df5: $43
	ldh [$9d], a                                     ; $7df6: $e0 $9d
	ld a, [de]                                       ; $7df8: $1a
	dec de                                           ; $7df9: $1b
	push de                                          ; $7dfa: $d5
	ld c, c                                          ; $7dfb: $49
	sbc l                                            ; $7dfc: $9d
	add hl, de                                       ; $7dfd: $19
	jr @-$2d                                         ; $7dfe: $18 $d1

	dec e                                            ; $7e00: $1d
	sbc l                                            ; $7e01: $9d

jr_018_7e02:
	rla                                              ; $7e02: $17
	add hl, de                                       ; $7e03: $19
	push de                                          ; $7e04: $d5
	ld c, c                                          ; $7e05: $49

jr_018_7e06:
	sbc l                                            ; $7e06: $9d

jr_018_7e07:
	ld d, $1c                                        ; $7e07: $16 $1c
	pop de                                           ; $7e09: $d1
	dec e                                            ; $7e0a: $1d
	sbc l                                            ; $7e0b: $9d
	dec d                                            ; $7e0c: $15
	ld d, $d5                                        ; $7e0d: $16 $d5
	ld c, c                                          ; $7e0f: $49
	sbc [hl]                                         ; $7e10: $9e
	inc d                                            ; $7e11: $14
	ld b, e                                          ; $7e12: $43
	ldh [$9d], a                                     ; $7e13: $e0 $9d
	inc e                                            ; $7e15: $1c
	inc d                                            ; $7e16: $14
	push de                                          ; $7e17: $d5
	ld c, c                                          ; $7e18: $49
	sbc l                                            ; $7e19: $9d
	inc de                                           ; $7e1a: $13
	ld [de], a                                       ; $7e1b: $12
	pop de                                           ; $7e1c: $d1
	dec e                                            ; $7e1d: $1d
	sbc l                                            ; $7e1e: $9d
	ld de, $5313                                     ; $7e1f: $11 $13 $53
	ret nz                                           ; $7e22: $c0

	sbc [hl]                                         ; $7e23: $9e
	nop                                              ; $7e24: $00
	pop de                                           ; $7e25: $d1
	dec e                                            ; $7e26: $1d
	sbc [hl]                                         ; $7e27: $9e
	db $10                                           ; $7e28: $10
	ld d, e                                          ; $7e29: $53
	ret nz                                           ; $7e2a: $c0

	sbc l                                            ; $7e2b: $9d
	rrca                                             ; $7e2c: $0f
	ld c, $43                                        ; $7e2d: $0e $43
	ld b, b                                          ; $7e2f: $40
	sbc [hl]                                         ; $7e30: $9e
	rrca                                             ; $7e31: $0f
	ld d, e                                          ; $7e32: $53
	ret nz                                           ; $7e33: $c0

	sbc [hl]                                         ; $7e34: $9e
	dec c                                            ; $7e35: $0d
	ld b, e                                          ; $7e36: $43
	ld b, b                                          ; $7e37: $40
	ld c, a                                          ; $7e38: $4f
	ret nz                                           ; $7e39: $c0

	ld b, e                                          ; $7e3a: $43
	ld h, b                                          ; $7e3b: $60
	sbc [hl]                                         ; $7e3c: $9e
	inc c                                            ; $7e3d: $0c
	ld c, a                                          ; $7e3e: $4f
	ret nz                                           ; $7e3f: $c0

	dec bc                                           ; $7e40: $0b
	ld b, b                                          ; $7e41: $40
	sbc l                                            ; $7e42: $9d
	rrca                                             ; $7e43: $0f
	dec bc                                           ; $7e44: $0b
	pop de                                           ; $7e45: $d1
	dec e                                            ; $7e46: $1d
	sbc [hl]                                         ; $7e47: $9e
	ld a, [bc]                                       ; $7e48: $0a
	ld c, a                                          ; $7e49: $4f
	ret nz                                           ; $7e4a: $c0

	sbc [hl]                                         ; $7e4b: $9e
	add hl, bc                                       ; $7e4c: $09
	pop de                                           ; $7e4d: $d1
	dec e                                            ; $7e4e: $1d
	sbc [hl]                                         ; $7e4f: $9e
	ld [$c04f], sp                                   ; $7e50: $08 $4f $c0
	sbc e                                            ; $7e53: $9b
	rlca                                             ; $7e54: $07
	ld b, $05                                        ; $7e55: $06 $05
	inc b                                            ; $7e57: $04
	ld a, e                                          ; $7e58: $7b
	db $fd                                           ; $7e59: $fd
	ld [hl], e                                       ; $7e5a: $73
	ei                                               ; $7e5b: $fb
	sbc b                                            ; $7e5c: $98
	inc bc                                           ; $7e5d: $03
	ld [bc], a                                       ; $7e5e: $02
	inc b                                            ; $7e5f: $04
	ld b, $06                                        ; $7e60: $06 $06
	ld bc, $340f                                     ; $7e62: $01 $0f $34
	nop                                              ; $7e65: $00
	pop de                                           ; $7e66: $d1
	ld [hl+], a                                      ; $7e67: $22
	sbc [hl]                                         ; $7e68: $9e
	inc h                                            ; $7e69: $24
	reti                                             ; $7e6a: $d9


	ld b, h                                          ; $7e6b: $44
	sbc [hl]                                         ; $7e6c: $9e
	ld b, d                                          ; $7e6d: $42
	db $db                                           ; $7e6e: $db
	ld [hl+], a                                      ; $7e6f: $22
	sbc [hl]                                         ; $7e70: $9e
	ld hl, $44d9                                     ; $7e71: $21 $d9 $44
	sbc [hl]                                         ; $7e74: $9e
	ld [de], a                                       ; $7e75: $12
	cpl                                              ; $7e76: $2f
	ldh a, [$9e]                                     ; $7e77: $f0 $9e
	inc b                                            ; $7e79: $04
	reti                                             ; $7e7a: $d9


	ld [hl], a                                       ; $7e7b: $77
	sbc [hl]                                         ; $7e7c: $9e
	db $10                                           ; $7e7d: $10
	cpl                                              ; $7e7e: $2f
	ldh a, [$9e]                                     ; $7e7f: $f0 $9e
	ld bc, $f00b                                     ; $7e81: $01 $0b $f0
	sbc [hl]                                         ; $7e84: $9e
	ld de, $77d9                                     ; $7e85: $11 $d9 $77
	sbc [hl]                                         ; $7e88: $9e
	ld de, $f02f                                     ; $7e89: $11 $2f $f0
	sbc [hl]                                         ; $7e8c: $9e
	db $10                                           ; $7e8d: $10
	dec bc                                           ; $7e8e: $0b
	ldh [$03], a                                     ; $7e8f: $e0 $03
	ldh a, [$03]                                     ; $7e91: $f0 $03
	ldh a, [rWX]                                     ; $7e93: $f0 $4b
	ldh a, [$d8]                                     ; $7e95: $f0 $d8
	ld de, rIE                                     ; $7e97: $11 $ff $ff
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

Jump_018_7ec1:
	rst $38                                          ; $7ec1: $ff
	rst $38                                          ; $7ec2: $ff
	rst $38                                          ; $7ec3: $ff
	rst $38                                          ; $7ec4: $ff
	rst $38                                          ; $7ec5: $ff
	rst $38                                          ; $7ec6: $ff
	rst $38                                          ; $7ec7: $ff
	rst $38                                          ; $7ec8: $ff
	rst $38                                          ; $7ec9: $ff

Call_018_7eca:
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

Call_018_7edf:
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

Jump_018_7f4d:
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

Jump_018_7ffe:
	rst $38                                          ; $7ffe: $ff

Call_018_7fff:
Jump_018_7fff:
	rst $38                                          ; $7fff: $ff
