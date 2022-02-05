; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $042", ROMX[$4000], BANK[$42]

	ei                                               ; $4000: $fb
	ld a, [$0607]                                    ; $4001: $fa $07 $06
	db $db                                           ; $4004: $db
	rlca                                             ; $4005: $07
	rst SubAFromDE                                          ; $4006: $df
	rst $38                                          ; $4007: $ff
	sub a                                            ; $4008: $97
	db $ec                                           ; $4009: $ec
	call nc, $88b8                                   ; $400a: $d4 $b8 $88
	add b                                            ; $400d: $80
	nop                                              ; $400e: $00
	nop                                              ; $400f: $00
	ret nz                                           ; $4010: $c0

	reti                                             ; $4011: $d9


	rst $38                                          ; $4012: $ff
	sub h                                            ; $4013: $94
	ld e, d                                          ; $4014: $5a
	jr nc, jr_042_4067                               ; $4015: $30 $50

	ccf                                              ; $4017: $3f
	ld d, c                                          ; $4018: $51
	ccf                                              ; $4019: $3f
	ld d, a                                          ; $401a: $57
	ld a, [hl+]                                      ; $401b: $2a
	ldh [$e0], a                                     ; $401c: $e0 $e0
	rst AddAOntoHL                                          ; $401e: $ef
	sbc $e0                                          ; $401f: $de $e0
	ld a, a                                          ; $4021: $7f
	sbc d                                            ; $4022: $9a
	ld a, l                                          ; $4023: $7d
	or c                                             ; $4024: $b1
	sub l                                            ; $4025: $95
	db $fc                                           ; $4026: $fc
	nop                                              ; $4027: $00
	db $10                                           ; $4028: $10
	ld a, h                                          ; $4029: $7c
	ld a, h                                          ; $402a: $7c
	db $fc                                           ; $402b: $fc
	ld sp, hl                                        ; $402c: $f9
	inc e                                            ; $402d: $1c
	db $fc                                           ; $402e: $fc
	db $fd                                           ; $402f: $fd
	ld [hl], a                                       ; $4030: $77
	ld hl, sp-$23                                    ; $4031: $f8 $dd
	ld a, h                                          ; $4033: $7c
	sbc [hl]                                         ; $4034: $9e
	inc e                                            ; $4035: $1c
	sbc $0e                                          ; $4036: $de $0e
	call c, $dffe                                    ; $4038: $dc $fe $df
	sbc $7f                                          ; $403b: $de $7f
	ld h, b                                          ; $403d: $60
	sub [hl]                                         ; $403e: $96
	rrca                                             ; $403f: $0f
	inc bc                                           ; $4040: $03
	nop                                              ; $4041: $00
	jr nc, jr_042_407c                               ; $4042: $30 $38

	jr jr_042_4046                                   ; $4044: $18 $00

jr_042_4046:
	ld a, a                                          ; $4046: $7f
	ccf                                              ; $4047: $3f
	ld [hl], a                                       ; $4048: $77
	cp $7f                                           ; $4049: $fe $7f
	db $fd                                           ; $404b: $fd
	halt                                             ; $404c: $76
	or d                                             ; $404d: $b2
	sbc e                                            ; $404e: $9b
	ld a, [hl]                                       ; $404f: $7e
	rra                                              ; $4050: $1f
	ld c, a                                          ; $4051: $4f
	ld [hl], b                                       ; $4052: $70
	ld l, $d0                                        ; $4053: $2e $d0
	ld a, e                                          ; $4055: $7b
	db $d3                                           ; $4056: $d3
	ld a, [$7fdf]                                    ; $4057: $fa $df $7f
	dec e                                            ; $405a: $1d
	add b                                            ; $405b: $80
	cp $99                                           ; $405c: $fe $99
	ld [bc], a                                       ; $405e: $02
	adc a                                            ; $405f: $8f
	cp a                                             ; $4060: $bf
	sbc a                                            ; $4061: $9f
	cp a                                             ; $4062: $bf
	sbc a                                            ; $4063: $9f
	ld l, a                                          ; $4064: $6f
	ldh a, [$7a]                                     ; $4065: $f0 $7a

jr_042_4067:
	ret nc                                           ; $4067: $d0

	ld a, a                                          ; $4068: $7f
	cp $63                                           ; $4069: $fe $63
	ldh [$98], a                                     ; $406b: $e0 $98
	ld bc, $0703                                     ; $406d: $01 $03 $07
	sub d                                            ; $4070: $92
	ld b, b                                          ; $4071: $40
	or b                                             ; $4072: $b0
	jr jr_042_40e3                                   ; $4073: $18 $6e

	ldh [c], a                                       ; $4075: $e2
	rst SubAFromDE                                          ; $4076: $df
	cp $97                                           ; $4077: $fe $97
	ld a, a                                          ; $4079: $7f
	xor e                                            ; $407a: $ab
	rrca                                             ; $407b: $0f

jr_042_407c:
	ld b, e                                          ; $407c: $43
	ld b, a                                          ; $407d: $47
	inc bc                                           ; $407e: $03
	rlca                                             ; $407f: $07
	inc bc                                           ; $4080: $03
	sbc $e7                                          ; $4081: $de $e7

Jump_042_4083:
	sub d                                            ; $4083: $92
	and a                                            ; $4084: $a7
	daa                                              ; $4085: $27
	daa                                              ; $4086: $27
	ld h, a                                          ; $4087: $67
	ld h, a                                          ; $4088: $67
	adc b                                            ; $4089: $88
	ret nz                                           ; $408a: $c0

	ld h, a                                          ; $408b: $67
	rst $38                                          ; $408c: $ff
	rst GetHLinHL                                          ; $408d: $cf
	or a                                             ; $408e: $b7
	ld a, a                                          ; $408f: $7f
	or a                                             ; $4090: $b7
	ld h, l                                          ; $4091: $65
	add b                                            ; $4092: $80
	rst $38                                          ; $4093: $ff
	sbc b                                            ; $4094: $98
	ld b, c                                          ; $4095: $41
	db $fc                                           ; $4096: $fc
	ld a, [de]                                       ; $4097: $1a
	jp z, $f0f8                                      ; $4098: $ca $f8 $f0

	ld d, h                                          ; $409b: $54
	ld l, [hl]                                       ; $409c: $6e
	ld e, a                                          ; $409d: $5f
	sbc [hl]                                         ; $409e: $9e
	db $fd                                           ; $409f: $fd
	ld a, e                                          ; $40a0: $7b
	sub [hl]                                         ; $40a1: $96
	sbc d                                            ; $40a2: $9a
	add b                                            ; $40a3: $80
	ld a, a                                          ; $40a4: $7f
	rst $38                                          ; $40a5: $ff
	cp a                                             ; $40a6: $bf
	rst SubAFromHL                                          ; $40a7: $d7
	db $dd                                           ; $40a8: $dd
	rst $38                                          ; $40a9: $ff
	rst SubAFromDE                                          ; $40aa: $df
	ret nz                                           ; $40ab: $c0

	ld a, a                                          ; $40ac: $7f
	ld d, h                                          ; $40ad: $54
	ld a, e                                          ; $40ae: $7b
	ldh a, [$7f]                                     ; $40af: $f0 $7f
	cp $9d                                           ; $40b1: $fe $9d
	cp $0d                                           ; $40b3: $fe $0d
	ld [hl], e                                       ; $40b5: $73
	ldh [c], a                                       ; $40b6: $e2
	ld a, a                                          ; $40b7: $7f
	and h                                            ; $40b8: $a4
	sbc c                                            ; $40b9: $99
	di                                               ; $40ba: $f3
	rlca                                             ; $40bb: $07
	nop                                              ; $40bc: $00
	ld bc, $fafe                                     ; $40bd: $01 $fe $fa

jr_042_40c0:
	ld a, b                                          ; $40c0: $78
	inc h                                            ; $40c1: $24
	sbc [hl]                                         ; $40c2: $9e
	ld l, d                                          ; $40c3: $6a
	ld [hl], a                                       ; $40c4: $77
	ld d, e                                          ; $40c5: $53
	ld [hl], h                                       ; $40c6: $74
	adc e                                            ; $40c7: $8b
	sub a                                            ; $40c8: $97
	call nc, $1549                                   ; $40c9: $d4 $49 $15
	adc d                                            ; $40cc: $8a
	ld d, l                                          ; $40cd: $55
	xor d                                            ; $40ce: $aa
	ld d, l                                          ; $40cf: $55
	xor [hl]                                         ; $40d0: $ae
	ld a, b                                          ; $40d1: $78
	ld h, [hl]                                       ; $40d2: $66
	ld a, a                                          ; $40d3: $7f
	sub h                                            ; $40d4: $94
	ld a, [hl]                                       ; $40d5: $7e
	ld a, a                                          ; $40d6: $7f
	sbc [hl]                                         ; $40d7: $9e
	cp $7a                                           ; $40d8: $fe $7a
	call z, $e59a                                    ; $40da: $cc $9a $e5
	ld h, b                                          ; $40dd: $60
	ldh a, [$b8]                                     ; $40de: $f0 $b8
	or l                                             ; $40e0: $b5
	reti                                             ; $40e1: $d9


	rst $38                                          ; $40e2: $ff

jr_042_40e3:
	ld a, e                                          ; $40e3: $7b
	db $e4                                           ; $40e4: $e4
	sbc [hl]                                         ; $40e5: $9e
	ld a, [hl+]                                      ; $40e6: $2a
	ld a, d                                          ; $40e7: $7a
	ld l, $9e                                        ; $40e8: $2e $9e
	ld [bc], a                                       ; $40ea: $02
	reti                                             ; $40eb: $d9


	rst $38                                          ; $40ec: $ff
	ld a, [hl]                                       ; $40ed: $7e
	inc [hl]                                         ; $40ee: $34
	ld l, [hl]                                       ; $40ef: $6e
	ld a, [hl+]                                      ; $40f0: $2a
	reti                                             ; $40f1: $d9


	rst $38                                          ; $40f2: $ff
	sbc d                                            ; $40f3: $9a
	jr c, jr_042_40c0                                ; $40f4: $38 $ca

	ldh a, [c]                                       ; $40f6: $f2
	ld sp, hl                                        ; $40f7: $f9
	cp $7b                                           ; $40f8: $fe $7b
	ld d, [hl]                                       ; $40fa: $56
	sbc $fc                                          ; $40fb: $de $fc
	ld a, e                                          ; $40fd: $7b
	ld sp, hl                                        ; $40fe: $f9
	rst SubAFromDE                                          ; $40ff: $df
	rst $38                                          ; $4100: $ff
	ld a, a                                          ; $4101: $7f
	ld a, [$0677]                                    ; $4102: $fa $77 $06
	rst SubAFromDE                                          ; $4105: $df
	sbc [hl]                                         ; $4106: $9e
	ld [hl], e                                       ; $4107: $73
	di                                               ; $4108: $f3
	ld [hl], c                                       ; $4109: $71
	add b                                            ; $410a: $80
	ld a, a                                          ; $410b: $7f
	ld a, e                                          ; $410c: $7b
	sbc $f0                                          ; $410d: $de $f0
	sbc [hl]                                         ; $410f: $9e
	db $10                                           ; $4110: $10
	ld h, l                                          ; $4111: $65
	ld a, a                                          ; $4112: $7f
	sub l                                            ; $4113: $95
	ld a, b                                          ; $4114: $78
	ld a, h                                          ; $4115: $7c
	inc e                                            ; $4116: $1c
	ld bc, $7343                                     ; $4117: $01 $43 $73
	ld [hl], e                                       ; $411a: $73
	di                                               ; $411b: $f3
	db $fc                                           ; $411c: $fc
	cp $6f                                           ; $411d: $fe $6f
	sbc $97                                          ; $411f: $de $97
	ld bc, $f53e                                     ; $4121: $01 $3e $f5
	cp $ef                                           ; $4124: $fe $ef
	or $fd                                           ; $4126: $f6 $fd
	cp $7b                                           ; $4128: $fe $7b
	sbc l                                            ; $412a: $9d
	sbc l                                            ; $412b: $9d
	pop hl                                           ; $412c: $e1
	or $79                                           ; $412d: $f6 $79
	ld l, a                                          ; $412f: $6f
	ei                                               ; $4130: $fb
	sbc l                                            ; $4131: $9d
	ret nz                                           ; $4132: $c0

	ldh [$79], a                                     ; $4133: $e0 $79
	di                                               ; $4135: $f3
	ld [hl], a                                       ; $4136: $77
	ld h, c                                          ; $4137: $61
	ld b, d                                          ; $4138: $42
	ret nz                                           ; $4139: $c0

	ld a, l                                          ; $413a: $7d
	ld d, [hl]                                       ; $413b: $56
	ld a, d                                          ; $413c: $7a
	dec h                                            ; $413d: $25
	rst SubAFromDE                                          ; $413e: $df
	ld b, $9e                                        ; $413f: $06 $9e
	ld c, $d9                                        ; $4141: $0e $d9
	rst $38                                          ; $4143: $ff
	sbc h                                            ; $4144: $9c
	inc hl                                           ; $4145: $23
	db $e3                                           ; $4146: $e3
	rst FarCall                                          ; $4147: $f7
	call nc, $93ff                                   ; $4148: $d4 $ff $93
	ret nc                                           ; $414b: $d0

	and b                                            ; $414c: $a0
	ld a, b                                          ; $414d: $78
	rst $38                                          ; $414e: $ff
	ld a, a                                          ; $414f: $7f
	rst $38                                          ; $4150: $ff
	db $fc                                           ; $4151: $fc
	ld a, [$5828]                                    ; $4152: $fa $28 $58
	cp b                                             ; $4155: $b8
	ld a, c                                          ; $4156: $79
	ld a, e                                          ; $4157: $7b
	add c                                            ; $4158: $81
	sbc [hl]                                         ; $4159: $9e
	db $fd                                           ; $415a: $fd
	ld a, d                                          ; $415b: $7a
	add $8b                                          ; $415c: $c6 $8b
	jp $8367                                         ; $415e: $c3 $67 $83


	ld h, [hl]                                       ; $4161: $66
	inc hl                                           ; $4162: $23
	ld h, a                                          ; $4163: $67
	rlca                                             ; $4164: $07
	rlca                                             ; $4165: $07
	rst SubAFromBC                                          ; $4166: $e7
	add a                                            ; $4167: $87
	rlca                                             ; $4168: $07
	rlca                                             ; $4169: $07
	rst JumpTable                                          ; $416a: $c7
	ld e, [hl]                                       ; $416b: $5e
	rst $38                                          ; $416c: $ff
	ld a, a                                          ; $416d: $7f
	xor e                                            ; $416e: $ab
	ld e, l                                          ; $416f: $5d
	xor a                                            ; $4170: $af
	rst SubAFromDE                                          ; $4171: $df
	ld [hl], l                                       ; $4172: $75
	dec b                                            ; $4173: $05
	call c, $dfff                                    ; $4174: $dc $ff $df
	db $fc                                           ; $4177: $fc
	sbc c                                            ; $4178: $99
	rst SubAFromDE                                          ; $4179: $df
	adc a                                            ; $417a: $8f
	nop                                              ; $417b: $00
	and e                                            ; $417c: $a3
	pop bc                                           ; $417d: $c1
	ldh [c], a                                       ; $417e: $e2
	reti                                             ; $417f: $d9


	rst $38                                          ; $4180: $ff
	sub e                                            ; $4181: $93
	add sp, -$10                                     ; $4182: $e8 $f0
	ld hl, sp-$12                                    ; $4184: $f8 $ee
	db $ec                                           ; $4186: $ec
	cp $fc                                           ; $4187: $fe $fc
	rst $38                                          ; $4189: $ff
	ld hl, sp-$08                                    ; $418a: $f8 $f8
	ldh a, [$f0]                                     ; $418c: $f0 $f0
	db $dd                                           ; $418e: $dd
	cp $73                                           ; $418f: $fe $73
	add h                                            ; $4191: $84
	ld [hl], e                                       ; $4192: $73
	db $fd                                           ; $4193: $fd
	rst FarCall                                          ; $4194: $f7
	ld b, a                                          ; $4195: $47
	ldh a, [$9c]                                     ; $4196: $f0 $9c
	ld a, [$0202]                                    ; $4198: $fa $02 $02
	ld [hl], e                                       ; $419b: $73
	ret c                                            ; $419c: $d8

	db $dd                                           ; $419d: $dd
	ld bc, $588c                                     ; $419e: $01 $8c $58
	ccf                                              ; $41a1: $3f
	rra                                              ; $41a2: $1f
	ld a, a                                          ; $41a3: $7f
	srl a                                            ; $41a4: $cb $3f
	ccf                                              ; $41a6: $3f
	sla a                                            ; $41a7: $cb $27
	nop                                              ; $41a9: $00
	jr nz, jr_042_41ac                               ; $41aa: $20 $00

jr_042_41ac:
	inc [hl]                                         ; $41ac: $34
	nop                                              ; $41ad: $00
	nop                                              ; $41ae: $00
	inc [hl]                                         ; $41af: $34
	ld bc, $8182                                     ; $41b0: $01 $82 $81
	ld [hl], e                                       ; $41b3: $73
	cp $78                                           ; $41b4: $fe $78
	or l                                             ; $41b6: $b5
	call c, Call_042_747f                            ; $41b7: $dc $7f $74
	ldh a, [$7f]                                     ; $41ba: $f0 $7f
	cp $9e                                           ; $41bc: $fe $9e
	rst SubAFromDE                                          ; $41be: $df
	sbc $ff                                          ; $41bf: $de $ff
	sub l                                            ; $41c1: $95
	rst SubAFromBC                                          ; $41c2: $e7
	di                                               ; $41c3: $f3
	jp hl                                            ; $41c4: $e9


	db $f4                                           ; $41c5: $f4
	ld [$fcf5], a                                    ; $41c6: $ea $f5 $fc
	ld hl, sp-$10                                    ; $41c9: $f8 $f0
	ldh [$de], a                                     ; $41cb: $e0 $de
	ret nz                                           ; $41cd: $c0

	sbc [hl]                                         ; $41ce: $9e
	pop hl                                           ; $41cf: $e1
	ld l, b                                          ; $41d0: $68
	sub b                                            ; $41d1: $90
	sbc [hl]                                         ; $41d2: $9e
	ld e, [hl]                                       ; $41d3: $5e
	sbc $1e                                          ; $41d4: $de $1e
	call c, Call_042_7b1f                            ; $41d6: $dc $1f $7b
	ld b, h                                          ; $41d9: $44
	db $db                                           ; $41da: $db
	rst $38                                          ; $41db: $ff
	sub [hl]                                         ; $41dc: $96
	ldh a, [c]                                       ; $41dd: $f2
	rst $38                                          ; $41de: $ff
	add sp, -$30                                     ; $41df: $e8 $d0
	ldh [$d0], a                                     ; $41e1: $e0 $d0
	ldh [rP1], a                                     ; $41e3: $e0 $00
	dec c                                            ; $41e5: $0d
	ld l, [hl]                                       ; $41e6: $6e
	db $fd                                           ; $41e7: $fd
	sbc h                                            ; $41e8: $9c
	inc sp                                           ; $41e9: $33
	inc bc                                           ; $41ea: $03
	inc bc                                           ; $41eb: $03
	db $dd                                           ; $41ec: $dd
	di                                               ; $41ed: $f3
	sbc [hl]                                         ; $41ee: $9e
	pop af                                           ; $41ef: $f1
	reti                                             ; $41f0: $d9


	rst $38                                          ; $41f1: $ff
	ld a, [hl]                                       ; $41f2: $7e
	add $7f                                          ; $41f3: $c6 $7f
	cp $7f                                           ; $41f5: $fe $7f
	ei                                               ; $41f7: $fb
	sbc l                                            ; $41f8: $9d
	ei                                               ; $41f9: $fb
	push af                                          ; $41fa: $f5
	ld [hl], d                                       ; $41fb: $72
	ld d, h                                          ; $41fc: $54
	sbc h                                            ; $41fd: $9c
	and d                                            ; $41fe: $a2
	ld b, l                                          ; $41ff: $45
	ld a, [bc]                                       ; $4200: $0a
	sbc $e0                                          ; $4201: $de $e0
	rst SubAFromDE                                          ; $4203: $df
	ret nz                                           ; $4204: $c0

	dec a                                            ; $4205: $3d
	sub b                                            ; $4206: $90
	ld h, e                                          ; $4207: $63
	ldh a, [$df]                                     ; $4208: $f0 $df
	rrca                                             ; $420a: $0f
	sbc c                                            ; $420b: $99
	rlca                                             ; $420c: $07
	rrca                                             ; $420d: $0f
	ld c, $2e                                        ; $420e: $0e $2e
	ld a, [bc]                                       ; $4210: $0a
	inc b                                            ; $4211: $04
	ret c                                            ; $4212: $d8

	rst $38                                          ; $4213: $ff
	jp c, Jump_042_76f8                              ; $4214: $da $f8 $76

	call nc, $fe77                                   ; $4217: $d4 $77 $fe
	sub d                                            ; $421a: $92
	add hl, hl                                       ; $421b: $29
	ld a, a                                          ; $421c: $7f
	ei                                               ; $421d: $fb
	ld l, a                                          ; $421e: $6f
	rst FarCall                                          ; $421f: $f7
	cpl                                              ; $4220: $2f
	rst FarCall                                          ; $4221: $f7
	ld l, a                                          ; $4222: $6f
	rst $38                                          ; $4223: $ff
	ccf                                              ; $4224: $3f
	rla                                              ; $4225: $17
	ccf                                              ; $4226: $3f
	rra                                              ; $4227: $1f
	ld a, e                                          ; $4228: $7b
	cp $97                                           ; $4229: $fe $97
	ld b, d                                          ; $422b: $42
	and e                                            ; $422c: $a3
	ld b, e                                          ; $422d: $43
	ldh [c], a                                       ; $422e: $e2
	ld b, e                                          ; $422f: $43
	and d                                            ; $4230: $a2
	ld b, e                                          ; $4231: $43
	add e                                            ; $4232: $83
	reti                                             ; $4233: $d9


	rst SubAFromBC                                          ; $4234: $e7
	sbc b                                            ; $4235: $98
	db $fc                                           ; $4236: $fc
	rst AddAOntoHL                                          ; $4237: $ef
	sub a                                            ; $4238: $97
	ld a, [$7ef7]                                    ; $4239: $fa $f7 $7e
	db $ed                                           ; $423c: $ed
	ret c                                            ; $423d: $d8

	rst $38                                          ; $423e: $ff
	sub l                                            ; $423f: $95
	pop bc                                           ; $4240: $c1
	rra                                              ; $4241: $1f
	rst SubAFromDE                                          ; $4242: $df
	sbc a                                            ; $4243: $9f
	cp a                                             ; $4244: $bf
	rst GetHLinHL                                          ; $4245: $cf
	and $f7                                          ; $4246: $e6 $f7
	rst $38                                          ; $4248: $ff
	rst SubAFromDE                                          ; $4249: $df
	ld [hl], a                                       ; $424a: $77
	inc l                                            ; $424b: $2c
	halt                                             ; $424c: $76
	nop                                              ; $424d: $00
	sbc d                                            ; $424e: $9a
	sbc l                                            ; $424f: $9d
	cp $9c                                           ; $4250: $fe $9c
	rst $38                                          ; $4252: $ff
	dec a                                            ; $4253: $3d
	ret c                                            ; $4254: $d8

	cp $7b                                           ; $4255: $fe $7b
	add [hl]                                         ; $4257: $86
	sbc d                                            ; $4258: $9a
	ld d, l                                          ; $4259: $55
	xor b                                            ; $425a: $a8
	rst $38                                          ; $425b: $ff
	xor d                                            ; $425c: $aa
	ld d, l                                          ; $425d: $55
	ld e, d                                          ; $425e: $5a
	jp nz, Jump_042_559a                             ; $425f: $c2 $9a $55

	jr nc, @+$01                                     ; $4262: $30 $ff

	xor d                                            ; $4264: $aa
	ld d, b                                          ; $4265: $50
	ld sp, hl                                        ; $4266: $f9
	rst SubAFromDE                                          ; $4267: $df
	ld [bc], a                                       ; $4268: $02
	ld a, h                                          ; $4269: $7c
	add b                                            ; $426a: $80
	sbc l                                            ; $426b: $9d
	nop                                              ; $426c: $00
	xor e                                            ; $426d: $ab
	halt                                             ; $426e: $76
	call nz, $c56c                                   ; $426f: $c4 $6c $c5
	rst SubAFromDE                                          ; $4272: $df
	ld a, a                                          ; $4273: $7f
	sbc [hl]                                         ; $4274: $9e
	rst SubAFromHL                                          ; $4275: $d7
	ld [hl], e                                       ; $4276: $73
	db $fd                                           ; $4277: $fd
	rst $38                                          ; $4278: $ff
	sbc [hl]                                         ; $4279: $9e
	jr z, jr_042_42ef                                ; $427a: $28 $73

	db $fd                                           ; $427c: $fd
	sbc d                                            ; $427d: $9a
	add c                                            ; $427e: $81
	sub d                                            ; $427f: $92
	and c                                            ; $4280: $a1
	rst SubAFromHL                                          ; $4281: $d7
	and e                                            ; $4282: $a3
	sbc $fd                                          ; $4283: $de $fd
	sbc $7f                                          ; $4285: $de $7f
	rst SubAFromDE                                          ; $4287: $df
	ld a, h                                          ; $4288: $7c
	sbc $02                                          ; $4289: $de $02
	sbc h                                            ; $428b: $9c
	rst SubAFromDE                                          ; $428c: $df
	xor a                                            ; $428d: $af
	rst JumpTable                                          ; $428e: $c7
	ld [hl], c                                       ; $428f: $71
	or l                                             ; $4290: $b5
	ld a, [hl]                                       ; $4291: $7e
	add $95                                          ; $4292: $c6 $95
	ld a, [$0285]                                    ; $4294: $fa $85 $02
	dec b                                            ; $4297: $05
	ld a, [bc]                                       ; $4298: $0a
	dec b                                            ; $4299: $05
	pop hl                                           ; $429a: $e1
	pop hl                                           ; $429b: $e1
	db $e3                                           ; $429c: $e3
	rst SubAFromBC                                          ; $429d: $e7
	halt                                             ; $429e: $76
	inc sp                                           ; $429f: $33
	sub a                                            ; $42a0: $97
	sbc [hl]                                         ; $42a1: $9e
	ld e, [hl]                                       ; $42a2: $5e
	sbc h                                            ; $42a3: $9c
	ld e, b                                          ; $42a4: $58
	sub d                                            ; $42a5: $92
	ld b, [hl]                                       ; $42a6: $46
	adc [hl]                                         ; $42a7: $8e
	ld e, [hl]                                       ; $42a8: $5e
	jp c, Jump_042_651f                              ; $42a9: $da $1f $65

	sub c                                            ; $42ac: $91
	ld a, l                                          ; $42ad: $7d
	ldh a, [$7e]                                     ; $42ae: $f0 $7e
	add $9d                                          ; $42b0: $c6 $9d
	ld a, a                                          ; $42b2: $7f
	ld a, d                                          ; $42b3: $7a
	ld a, c                                          ; $42b4: $79
	dec sp                                           ; $42b5: $3b
	sbc $ff                                          ; $42b6: $de $ff
	sbc l                                            ; $42b8: $9d
	add b                                            ; $42b9: $80
	add a                                            ; $42ba: $87
	ld a, c                                          ; $42bb: $79
	ld c, d                                          ; $42bc: $4a
	sub h                                            ; $42bd: $94
	and d                                            ; $42be: $a2
	ld d, d                                          ; $42bf: $52
	dec l                                            ; $42c0: $2d
	rla                                              ; $42c1: $17
	ld [$aa55], a                                    ; $42c2: $ea $55 $aa
	ld e, l                                          ; $42c5: $5d
	db $fd                                           ; $42c6: $fd
	db $fd                                           ; $42c7: $fd
	di                                               ; $42c8: $f3
	ld l, l                                          ; $42c9: $6d
	add b                                            ; $42ca: $80
	sbc l                                            ; $42cb: $9d
	ld d, a                                          ; $42cc: $57
	xor e                                            ; $42cd: $ab
	ld a, e                                          ; $42ce: $7b
	ldh [c], a                                       ; $42cf: $e2
	ld [hl], e                                       ; $42d0: $73
	ldh [$da], a                                     ; $42d1: $e0 $da
	rst $38                                          ; $42d3: $ff
	sbc [hl]                                         ; $42d4: $9e
	xor a                                            ; $42d5: $af
	ld d, e                                          ; $42d6: $53
	ldh a, [$9c]                                     ; $42d7: $f0 $9c
	ldh a, [c]                                       ; $42d9: $f2
	db $fd                                           ; $42da: $fd
	cp $53                                           ; $42db: $fe $53
	ldh a, [$97]                                     ; $42dd: $f0 $97
	ei                                               ; $42df: $fb
	ld e, l                                          ; $42e0: $5d
	cp e                                             ; $42e1: $bb
	ld d, l                                          ; $42e2: $55
	xor e                                            ; $42e3: $ab
	ld d, l                                          ; $42e4: $55
	xor e                                            ; $42e5: $ab
	ld d, [hl]                                       ; $42e6: $56
	reti                                             ; $42e7: $d9


	rst $38                                          ; $42e8: $ff
	sub a                                            ; $42e9: $97
	ld d, d                                          ; $42ea: $52
	and l                                            ; $42eb: $a5
	ld d, d                                          ; $42ec: $52
	and l                                            ; $42ed: $a5
	ld e, b                                          ; $42ee: $58

jr_042_42ef:
	adc h                                            ; $42ef: $8c
	ld d, [hl]                                       ; $42f0: $56
	adc e                                            ; $42f1: $8b
	db $dd                                           ; $42f2: $dd
	ld hl, sp-$21                                    ; $42f3: $f8 $df
	ldh a, [hDisp1_BGP]                                     ; $42f5: $f0 $92
	ldh [$f0], a                                     ; $42f7: $e0 $f0
	push de                                          ; $42f9: $d5
	ld c, e                                          ; $42fa: $4b
	xor c                                            ; $42fb: $a9
	ld d, b                                          ; $42fc: $50
	xor b                                            ; $42fd: $a8
	ld d, h                                          ; $42fe: $54
	jr z, @-$6a                                      ; $42ff: $28 $94

	ccf                                              ; $4301: $3f
	ccf                                              ; $4302: $3f
	rlca                                             ; $4303: $07
	db $fc                                           ; $4304: $fc
	sub a                                            ; $4305: $97
	ld b, d                                          ; $4306: $42
	add e                                            ; $4307: $83
	ld b, d                                          ; $4308: $42
	inc bc                                           ; $4309: $03
	ld [hl+], a                                      ; $430a: $22
	inc hl                                           ; $430b: $23
	ld h, d                                          ; $430c: $62
	ld b, e                                          ; $430d: $43
	sbc $e7                                          ; $430e: $de $e7
	ld a, l                                          ; $4310: $7d
	ld a, l                                          ; $4311: $7d
	rst SubAFromDE                                          ; $4312: $df
	ld b, a                                          ; $4313: $47
	ld a, h                                          ; $4314: $7c
	ld b, e                                          ; $4315: $43
	sbc l                                            ; $4316: $9d
	rst $38                                          ; $4317: $ff
	rst AddAOntoHL                                          ; $4318: $ef
	ld a, e                                          ; $4319: $7b
	cp $d7                                           ; $431a: $fe $d7
	rst $38                                          ; $431c: $ff
	sbc c                                            ; $431d: $99
	db $eb                                           ; $431e: $eb
	push af                                          ; $431f: $f5
	rst SubAFromBC                                          ; $4320: $e7
	rst $38                                          ; $4321: $ff
	rst AddAOntoHL                                          ; $4322: $ef
	sub a                                            ; $4323: $97
	ld l, [hl]                                       ; $4324: $6e
	call nz, $3072                                   ; $4325: $c4 $72 $30
	ld a, e                                          ; $4328: $7b
	ld e, h                                          ; $4329: $5c
	sbc d                                            ; $432a: $9a
	cp l                                             ; $432b: $bd
	rst $38                                          ; $432c: $ff
	db $fd                                           ; $432d: $fd
	rst SubAFromDE                                          ; $432e: $df
	cp $78                                           ; $432f: $fe $78
	xor [hl]                                         ; $4331: $ae
	ld a, a                                          ; $4332: $7f
	db $fd                                           ; $4333: $fd
	ld a, c                                          ; $4334: $79
	ld [hl], a                                       ; $4335: $77
	ld a, e                                          ; $4336: $7b
	add l                                            ; $4337: $85
	ld a, a                                          ; $4338: $7f
	add c                                            ; $4339: $81
	ld a, a                                          ; $433a: $7f
	db $fd                                           ; $433b: $fd
	ld h, d                                          ; $433c: $62
	jp nz, $a89d                                     ; $433d: $c2 $9d $a8

	ld b, b                                          ; $4340: $40
	halt                                             ; $4341: $76
	xor a                                            ; $4342: $af
	sbc [hl]                                         ; $4343: $9e
	ld b, b                                          ; $4344: $40
	ld sp, hl                                        ; $4345: $f9
	sbc [hl]                                         ; $4346: $9e
	ld d, a                                          ; $4347: $57
	ld c, c                                          ; $4348: $49
	ld [hl], c                                       ; $4349: $71
	ld a, [hl]                                       ; $434a: $7e
	push bc                                          ; $434b: $c5
	add l                                            ; $434c: $85
	ld a, h                                          ; $434d: $7c
	rst SubAFromHL                                          ; $434e: $d7
	ld a, a                                          ; $434f: $7f
	ld e, a                                          ; $4350: $5f
	ld hl, sp+$0f                                    ; $4351: $f8 $0f
	jr z, jr_042_4355                                ; $4353: $28 $00

jr_042_4355:
	inc bc                                           ; $4355: $03
	jr z, jr_042_4358                                ; $4356: $28 $00

jr_042_4358:
	jr nz, jr_042_4361                               ; $4358: $20 $07

	ld a, a                                          ; $435a: $7f
	ld [hl], l                                       ; $435b: $75
	db $fd                                           ; $435c: $fd
	ld a, h                                          ; $435d: $7c
	rst $38                                          ; $435e: $ff
	ld a, [hl+]                                      ; $435f: $2a
	push de                                          ; $4360: $d5

jr_042_4361:
	xor d                                            ; $4361: $aa
	ld d, l                                          ; $4362: $55
	ld [bc], a                                       ; $4363: $02
	ld [bc], a                                       ; $4364: $02
	inc bc                                           ; $4365: $03
	inc bc                                           ; $4366: $03
	ld [hl], h                                       ; $4367: $74
	ld h, [hl]                                       ; $4368: $66
	sbc l                                            ; $4369: $9d
	rst FarCall                                          ; $436a: $f7
	push bc                                          ; $436b: $c5
	ld [hl], a                                       ; $436c: $77
	ld [hl-], a                                      ; $436d: $32
	sbc h                                            ; $436e: $9c
	xor e                                            ; $436f: $ab
	ld e, a                                          ; $4370: $5f
	rrca                                             ; $4371: $0f
	ld [hl], b                                       ; $4372: $70
	and d                                            ; $4373: $a2
	rst SubAFromDE                                          ; $4374: $df
	rst $38                                          ; $4375: $ff
	sbc l                                            ; $4376: $9d
	adc d                                            ; $4377: $8a
	ld e, l                                          ; $4378: $5d
	ld a, e                                          ; $4379: $7b
	ldh a, [$9c]                                     ; $437a: $f0 $9c
	ld a, l                                          ; $437c: $7d
	ld [$d9d5], a                                    ; $437d: $ea $d5 $d9
	rst $38                                          ; $4380: $ff
	sbc [hl]                                         ; $4381: $9e
	cp [hl]                                          ; $4382: $be
	ld [hl], e                                       ; $4383: $73
	ld [de], a                                       ; $4384: $12
	sbc l                                            ; $4385: $9d
	xor d                                            ; $4386: $aa
	ld b, b                                          ; $4387: $40
	reti                                             ; $4388: $d9


	rst $38                                          ; $4389: $ff
	ld [hl], e                                       ; $438a: $73
	ldh a, [c]                                       ; $438b: $f2
	ld a, a                                          ; $438c: $7f
	adc a                                            ; $438d: $8f
	ld h, c                                          ; $438e: $61
	ret nz                                           ; $438f: $c0

	sbc [hl]                                         ; $4390: $9e
	cp d                                             ; $4391: $ba
	ld [hl], e                                       ; $4392: $73
	ldh a, [$5d]                                     ; $4393: $f0 $5d
	or b                                             ; $4395: $b0
	ld l, a                                          ; $4396: $6f
	ldh [$0b], a                                     ; $4397: $e0 $0b
	ldh a, [$9d]                                     ; $4399: $f0 $9d
	ld d, a                                          ; $439b: $57
	dec b                                            ; $439c: $05
	ld h, e                                          ; $439d: $63
	ldh a, [rPCM12]                                  ; $439e: $f0 $76
	sub d                                            ; $43a0: $92
	sbc h                                            ; $43a1: $9c
	ldh a, [c]                                       ; $43a2: $f2
	xor c                                            ; $43a3: $a9
	ld d, d                                          ; $43a4: $52
	ld h, c                                          ; $43a5: $61
	add b                                            ; $43a6: $80
	sub e                                            ; $43a7: $93
	adc l                                            ; $43a8: $8d
	ld c, [hl]                                       ; $43a9: $4e
	and a                                            ; $43aa: $a7
	rst SubAFromHL                                          ; $43ab: $d7
	db $eb                                           ; $43ac: $eb
	ld [hl], a                                       ; $43ad: $77
	xor c                                            ; $43ae: $a9
	ld d, h                                          ; $43af: $54
	ldh a, [$f0]                                     ; $43b0: $f0 $f0
	ld hl, sp-$08                                    ; $43b2: $f8 $f8
	ld a, e                                          ; $43b4: $7b
	ld c, $63                                        ; $43b5: $0e $63
	scf                                              ; $43b7: $37
	adc l                                            ; $43b8: $8d
	ld b, d                                          ; $43b9: $42
	and b                                            ; $43ba: $a0
	ld d, b                                          ; $43bb: $50
	xor h                                            ; $43bc: $ac
	push de                                          ; $43bd: $d5
	xor d                                            ; $43be: $aa
	push de                                          ; $43bf: $d5
	ld [$0122], a                                    ; $43c0: $ea $22 $01
	ld [hl+], a                                      ; $43c3: $22
	add hl, bc                                       ; $43c4: $09
	ld a, [hl+]                                      ; $43c5: $2a
	adc c                                            ; $43c6: $89
	ld a, [hl+]                                      ; $43c7: $2a
	xor c                                            ; $43c8: $a9
	ld b, a                                          ; $43c9: $47
	ld h, a                                          ; $43ca: $67
	ld [hl], e                                       ; $43cb: $73
	cp $9e                                           ; $43cc: $fe $9e
	ld b, a                                          ; $43ce: $47
	ld l, h                                          ; $43cf: $6c
	reti                                             ; $43d0: $d9


	ld l, [hl]                                       ; $43d1: $6e
	cp l                                             ; $43d2: $bd
	sbc e                                            ; $43d3: $9b
	inc b                                            ; $43d4: $04
	add h                                            ; $43d5: $84
	nop                                              ; $43d6: $00
	db $10                                           ; $43d7: $10
	jp c, Jump_042_7dff                              ; $43d8: $da $ff $7d

	add b                                            ; $43db: $80
	ld a, l                                          ; $43dc: $7d
	add [hl]                                         ; $43dd: $86
	sbc [hl]                                         ; $43de: $9e
	add b                                            ; $43df: $80
	cp $9d                                           ; $43e0: $fe $9d
	ld [$d2af], sp                                   ; $43e2: $08 $af $d2
	rst $38                                          ; $43e5: $ff
	sub [hl]                                         ; $43e6: $96
	inc bc                                           ; $43e7: $03
	ld a, [$f5ff]                                    ; $43e8: $fa $ff $f5
	ld [$eaf5], a                                    ; $43eb: $ea $f5 $ea
	push de                                          ; $43ee: $d5
	db $fc                                           ; $43ef: $fc
	ld h, l                                          ; $43f0: $65
	ld de, $1098                                     ; $43f1: $11 $98 $10
	xor d                                            ; $43f4: $aa
	ld d, l                                          ; $43f5: $55
	cp d                                             ; $43f6: $ba
	ld [hl], l                                       ; $43f7: $75
	xor d                                            ; $43f8: $aa
	ld d, c                                          ; $43f9: $51
	ld h, a                                          ; $43fa: $67
	ld l, a                                          ; $43fb: $6f
	rst $38                                          ; $43fc: $ff
	ld l, a                                          ; $43fd: $6f
	jr nz, jr_042_4467                               ; $43fe: $20 $67

	ldh a, [$9d]                                     ; $4400: $f0 $9d
	ld c, e                                          ; $4402: $4b
	dec d                                            ; $4403: $15
	ld a, e                                          ; $4404: $7b
	ldh a, [$79]                                     ; $4405: $f0 $79
	ld h, d                                          ; $4407: $62
	ld l, d                                          ; $4408: $6a
	pop hl                                           ; $4409: $e1
	sbc $ff                                          ; $440a: $de $ff
	sbc h                                            ; $440c: $9c
	xor [hl]                                         ; $440d: $ae
	ld d, l                                          ; $440e: $55
	and b                                            ; $440f: $a0
	ld e, b                                          ; $4410: $58
	ret nz                                           ; $4411: $c0

	sbc e                                            ; $4412: $9b
	cp $d5                                           ; $4413: $fe $d5
	and d                                            ; $4415: $a2
	ld b, b                                          ; $4416: $40
	ld d, a                                          ; $4417: $57
	ldh a, [$7e]                                     ; $4418: $f0 $7e
	ld [hl], c                                       ; $441a: $71
	ld c, h                                          ; $441b: $4c
	and b                                            ; $441c: $a0
	ld b, h                                          ; $441d: $44
	sub b                                            ; $441e: $90
	inc bc                                           ; $441f: $03
	ldh a, [$03]                                     ; $4420: $f0 $03
	ldh a, [rIF]                                     ; $4422: $f0 $0f
	ldh a, [$7f]                                     ; $4424: $f0 $7f
	ld d, d                                          ; $4426: $52
	ld a, h                                          ; $4427: $7c
	db $fc                                           ; $4428: $fc
	ld d, a                                          ; $4429: $57
	ldh a, [hDisp1_OBP0]                                     ; $442a: $f0 $93
	push af                                          ; $442c: $f5
	ld l, d                                          ; $442d: $6a
	or l                                             ; $442e: $b5
	ld e, d                                          ; $442f: $5a
	adc l                                            ; $4430: $8d
	ld b, [hl]                                       ; $4431: $46
	rlca                                             ; $4432: $07
	dec bc                                           ; $4433: $0b
	nop                                              ; $4434: $00
	add b                                            ; $4435: $80
	ret nz                                           ; $4436: $c0

	ldh [$7a], a                                     ; $4437: $e0 $7a
	xor l                                            ; $4439: $ad
	sub [hl]                                         ; $443a: $96
	db $f4                                           ; $443b: $f4
	ld a, [hl+]                                      ; $443c: $2a
	adc c                                            ; $443d: $89
	dec hl                                           ; $443e: $2b
	ret                                              ; $443f: $c9


	db $eb                                           ; $4440: $eb
	ret                                              ; $4441: $c9


	xor d                                            ; $4442: $aa
	ld c, d                                          ; $4443: $4a

Call_042_4444:
	sbc $47                                          ; $4444: $de $47
	call c, $9d07                                    ; $4446: $dc $07 $9d
	cpl                                              ; $4449: $2f
	ld a, [$f379]                                    ; $444a: $fa $79 $f3
	ld a, e                                          ; $444d: $7b
	cp $9a                                           ; $444e: $fe $9a
	ret nc                                           ; $4450: $d0

	dec b                                            ; $4451: $05
	ld a, [hl+]                                      ; $4452: $2a
	ld d, l                                          ; $4453: $55
	add d                                            ; $4454: $82
	ld [hl], l                                       ; $4455: $75
	ret nc                                           ; $4456: $d0

	ld a, l                                          ; $4457: $7d
	ld sp, $f077                                     ; $4458: $31 $77 $f0
	sbc h                                            ; $445b: $9c
	and b                                            ; $445c: $a0
	jr z, jr_042_44a3                                ; $445d: $28 $44

	ld a, e                                          ; $445f: $7b
	or [hl]                                          ; $4460: $b6
	rst $38                                          ; $4461: $ff
	sbc e                                            ; $4462: $9b
	rrca                                             ; $4463: $0f
	rst $38                                          ; $4464: $ff
	db $fd                                           ; $4465: $fd
	xor d                                            ; $4466: $aa

jr_042_4467:
	ld a, e                                          ; $4467: $7b
	rst SubAFromDE                                          ; $4468: $df
	ld e, l                                          ; $4469: $5d
	ldh a, [$97]                                     ; $446a: $f0 $97
	xor b                                            ; $446c: $a8
	ld d, l                                          ; $446d: $55
	and b                                            ; $446e: $a0
	ld b, b                                          ; $446f: $40
	and b                                            ; $4470: $a0
	ld d, b                                          ; $4471: $50
	and c                                            ; $4472: $a1
	ld d, e                                          ; $4473: $53
	ld l, e                                          ; $4474: $6b
	ld [bc], a                                       ; $4475: $02
	halt                                             ; $4476: $76
	sbc e                                            ; $4477: $9b
	sbc h                                            ; $4478: $9c
	ld [bc], a                                       ; $4479: $02
	dec d                                            ; $447a: $15
	xor d                                            ; $447b: $aa
	ld [hl], b                                       ; $447c: $70
	and c                                            ; $447d: $a1
	sbc h                                            ; $447e: $9c
	db $fd                                           ; $447f: $fd
	ld [$7655], a                                    ; $4480: $ea $55 $76
	adc l                                            ; $4483: $8d
	halt                                             ; $4484: $76
	cp a                                             ; $4485: $bf
	call c, Call_042_72ff                            ; $4486: $dc $ff $72
	ld [$7aff], sp                                   ; $4489: $08 $ff $7a
	cp a                                             ; $448c: $bf
	call c, Call_042_78ff                            ; $448d: $dc $ff $78
	sbc d                                            ; $4490: $9a
	db $fd                                           ; $4491: $fd
	sbc [hl]                                         ; $4492: $9e
	ld [bc], a                                       ; $4493: $02
	ld a, d                                          ; $4494: $7a
	ld bc, $d273                                     ; $4495: $01 $73 $d2
	ld [hl], d                                       ; $4498: $72
	sbc d                                            ; $4499: $9a
	ld b, e                                          ; $449a: $43
	jp nc, $f003                                     ; $449b: $d2 $03 $f0

	inc bc                                           ; $449e: $03
	ldh a, [$0b]                                     ; $449f: $f0 $0b
	ldh a, [$9b]                                     ; $44a1: $f0 $9b

jr_042_44a3:
	and b                                            ; $44a3: $a0
	ld d, l                                          ; $44a4: $55
	xor d                                            ; $44a5: $aa
	push af                                          ; $44a6: $f5
	db $dd                                           ; $44a7: $dd
	rst $38                                          ; $44a8: $ff
	sbc [hl]                                         ; $44a9: $9e
	ld e, a                                          ; $44aa: $5f
	ld [hl], e                                       ; $44ab: $73

jr_042_44ac:
	jr nz, jr_042_44ac                               ; $44ac: $20 $fe

	ld h, h                                          ; $44ae: $64
	inc sp                                           ; $44af: $33
	ld a, e                                          ; $44b0: $7b
	rst SubAFromHL                                          ; $44b1: $d7
	db $fc                                           ; $44b2: $fc
	sbc e                                            ; $44b3: $9b
	ld d, b                                          ; $44b4: $50
	xor d                                            ; $44b5: $aa
	ld d, l                                          ; $44b6: $55
	ld a, [$ffdd]                                    ; $44b7: $fa $dd $ff
	sbc h                                            ; $44ba: $9c
	xor a                                            ; $44bb: $af
	ld d, l                                          ; $44bc: $55
	xor d                                            ; $44bd: $aa
	ld a, d                                          ; $44be: $7a
	or [hl]                                          ; $44bf: $b6
	sbc d                                            ; $44c0: $9a
	ld b, $2a                                        ; $44c1: $06 $2a
	ld d, [hl]                                       ; $44c3: $56
	cp [hl]                                          ; $44c4: $be
	ld [hl], a                                       ; $44c5: $77
	sbc $ff                                          ; $44c6: $de $ff
	sbc d                                            ; $44c8: $9a
	ld sp, hl                                        ; $44c9: $f9
	push de                                          ; $44ca: $d5
	xor c                                            ; $44cb: $a9
	ld b, c                                          ; $44cc: $41
	adc b                                            ; $44cd: $88
	cp $97                                           ; $44ce: $fe $97
	adc d                                            ; $44d0: $8a
	ld a, [bc]                                       ; $44d1: $0a
	ld a, [bc]                                       ; $44d2: $0a
	ld [$e9ea], sp                                   ; $44d3: $08 $ea $e9
	ld [$d9fb], a                                    ; $44d6: $ea $fb $d9
	rlca                                             ; $44d9: $07
	sbc l                                            ; $44da: $9d
	ld d, l                                          ; $44db: $55
	xor a                                            ; $44dc: $af
	ld [hl], e                                       ; $44dd: $73
	inc b                                            ; $44de: $04
	db $d3                                           ; $44df: $d3
	rst $38                                          ; $44e0: $ff
	ld a, [hl]                                       ; $44e1: $7e
	or $9e                                           ; $44e2: $f6 $9e
	db $fd                                           ; $44e4: $fd
	reti                                             ; $44e5: $d9


	rst $38                                          ; $44e6: $ff
	ld a, a                                          ; $44e7: $7f
	or $9d                                           ; $44e8: $f6 $9d
	ld a, [$76f5]                                    ; $44ea: $fa $f5 $76
	xor a                                            ; $44ed: $af
	reti                                             ; $44ee: $d9


	rst $38                                          ; $44ef: $ff
	sbc d                                            ; $44f0: $9a
	and a                                            ; $44f1: $a7
	dec bc                                           ; $44f2: $0b
	dec d                                            ; $44f3: $15
	ld [bc], a                                       ; $44f4: $02
	and b                                            ; $44f5: $a0
	ld a, e                                          ; $44f6: $7b
	sbc l                                            ; $44f7: $9d
	ld a, [hl]                                       ; $44f8: $7e
	halt                                             ; $44f9: $76
	ld h, a                                          ; $44fa: $67
	call c, Call_042_777f                            ; $44fb: $dc $7f $77
	sbc [hl]                                         ; $44fe: $9e
	dec d                                            ; $44ff: $15
	ld a, e                                          ; $4500: $7b
	ld e, e                                          ; $4501: $5b
	ld [hl], a                                       ; $4502: $77
	ld h, a                                          ; $4503: $67
	sbc [hl]                                         ; $4504: $9e
	ld [$ffdb], a                                    ; $4505: $ea $db $ff
	ld a, a                                          ; $4508: $7f
	add a                                            ; $4509: $87
	sbc l                                            ; $450a: $9d
	ld a, [bc]                                       ; $450b: $0a
	and b                                            ; $450c: $a0
	ld [hl], a                                       ; $450d: $77
	ld d, h                                          ; $450e: $54
	ld a, a                                          ; $450f: $7f
	jp c, Jump_042_5773                              ; $4510: $da $73 $57

	ld [hl], a                                       ; $4513: $77
	ld b, l                                          ; $4514: $45
	sbc l                                            ; $4515: $9d
	ld b, l                                          ; $4516: $45
	db $10                                           ; $4517: $10
	ld l, a                                          ; $4518: $6f
	dec [hl]                                         ; $4519: $35
	sbc [hl]                                         ; $451a: $9e
	cp d                                             ; $451b: $ba
	ld l, l                                          ; $451c: $6d
	ld de, $356b                                     ; $451d: $11 $6b $35
	sbc [hl]                                         ; $4520: $9e
	add b                                            ; $4521: $80
	ld l, e                                          ; $4522: $6b
	dec h                                            ; $4523: $25
	ld a, e                                          ; $4524: $7b
	ld b, l                                          ; $4525: $45
	sbc [hl]                                         ; $4526: $9e
	ld a, [hl+]                                      ; $4527: $2a
	ld l, e                                          ; $4528: $6b
	dec [hl]                                         ; $4529: $35
	ld l, [hl]                                       ; $452a: $6e
	ld e, b                                          ; $452b: $58
	ld h, a                                          ; $452c: $67
	dec [hl]                                         ; $452d: $35
	ld h, a                                          ; $452e: $67
	adc b                                            ; $452f: $88
	sbc [hl]                                         ; $4530: $9e
	cp a                                             ; $4531: $bf
	ld l, e                                          ; $4532: $6b
	ldh a, [$9e]                                     ; $4533: $f0 $9e
	ld b, b                                          ; $4535: $40
	ld h, a                                          ; $4536: $67
	ld a, b                                          ; $4537: $78
	ld l, e                                          ; $4538: $6b
	ldh a, [$7b]                                     ; $4539: $f0 $7b
	xor [hl]                                         ; $453b: $ae
	inc sp                                           ; $453c: $33
	ldh a, [$9e]                                     ; $453d: $f0 $9e
	cp [hl]                                          ; $453f: $be
	ld l, e                                          ; $4540: $6b
	ldh a, [$9e]                                     ; $4541: $f0 $9e
	ld b, c                                          ; $4543: $41
	ld c, [hl]                                       ; $4544: $4e
	ld b, l                                          ; $4545: $45
	ld h, [hl]                                       ; $4546: $66
	dec [hl]                                         ; $4547: $35
	ld a, c                                          ; $4548: $79
	rst AddAOntoHL                                          ; $4549: $ef
	ld [hl], d                                       ; $454a: $72
	rla                                              ; $454b: $17
	ld a, l                                          ; $454c: $7d
	adc $72                                          ; $454d: $ce $72
	rlca                                             ; $454f: $07
	sbc [hl]                                         ; $4550: $9e
	ld a, [$df70]                                    ; $4551: $fa $70 $df
	rst $38                                          ; $4554: $ff
	sbc h                                            ; $4555: $9c
	dec b                                            ; $4556: $05
	xor d                                            ; $4557: $aa
	ld d, l                                          ; $4558: $55
	ld [hl], b                                       ; $4559: $70
	sub d                                            ; $455a: $92
	ld c, e                                          ; $455b: $4b
	add d                                            ; $455c: $82
	ld a, e                                          ; $455d: $7b
	jp nc, $df7c                                     ; $455e: $d2 $7c $df

	sbc [hl]                                         ; $4561: $9e
	ld de, $d273                                     ; $4562: $11 $73 $d2
	sub a                                            ; $4565: $97
	ld e, a                                          ; $4566: $5f
	rst $38                                          ; $4567: $ff
	rst $38                                          ; $4568: $ff
	ldh a, [c]                                       ; $4569: $f2
	xor b                                            ; $456a: $a8
	ld d, b                                          ; $456b: $50
	and c                                            ; $456c: $a1
	ld [bc], a                                       ; $456d: $02
	ld a, c                                          ; $456e: $79
	sub h                                            ; $456f: $94
	sbc h                                            ; $4570: $9c
	rrca                                             ; $4571: $0f
	ld d, a                                          ; $4572: $57
	xor a                                            ; $4573: $af
	ld a, e                                          ; $4574: $7b
	ldh a, [c]                                       ; $4575: $f2
	inc bc                                           ; $4576: $03
	rst $38                                          ; $4577: $ff
	ld a, a                                          ; $4578: $7f
	add l                                            ; $4579: $85
	jp nc, Jump_042_6bff                             ; $457a: $d2 $ff $6b

	ld e, $5f                                        ; $457d: $1e $5f
	ldh a, [$62]                                     ; $457f: $f0 $62
	and [hl]                                         ; $4581: $a6
	ld h, a                                          ; $4582: $67
	ldh a, [$9e]                                     ; $4583: $f0 $9e
	xor d                                            ; $4585: $aa
	ld h, d                                          ; $4586: $62
	add h                                            ; $4587: $84
	ld l, e                                          ; $4588: $6b
	ldh a, [$9e]                                     ; $4589: $f0 $9e
	ld a, l                                          ; $458b: $7d
	ld c, e                                          ; $458c: $4b
	ldh a, [rHDMA3]                                  ; $458d: $f0 $53
	adc $7a                                          ; $458f: $ce $7a
	cp h                                             ; $4591: $bc
	sbc l                                            ; $4592: $9d
	ld d, l                                          ; $4593: $55
	cp $d6                                           ; $4594: $fe $d6
	rst $38                                          ; $4596: $ff
	ld [hl], a                                       ; $4597: $77
	ld c, d                                          ; $4598: $4a
	ld d, a                                          ; $4599: $57
	adc h                                            ; $459a: $8c
	sbc [hl]                                         ; $459b: $9e
	inc d                                            ; $459c: $14
	ld a, d                                          ; $459d: $7a
	db $fc                                           ; $459e: $fc
	ld [hl], a                                       ; $459f: $77
	ldh a, [$9e]                                     ; $45a0: $f0 $9e
	db $eb                                           ; $45a2: $eb
	jp c, $9eff                                      ; $45a3: $da $ff $9e

	dec d                                            ; $45a6: $15
	ld a, d                                          ; $45a7: $7a
	cp h                                             ; $45a8: $bc
	halt                                             ; $45a9: $76
	adc d                                            ; $45aa: $8a
	ld h, a                                          ; $45ab: $67
	call c, Call_042_767e                            ; $45ac: $dc $7e $76
	ld a, e                                          ; $45af: $7b
	ldh a, [$9e]                                     ; $45b0: $f0 $9e
	rst SubAFromDE                                          ; $45b2: $df
	ld a, e                                          ; $45b3: $7b
	xor b                                            ; $45b4: $a8
	ld e, e                                          ; $45b5: $5b
	ret nc                                           ; $45b6: $d0

	sbc l                                            ; $45b7: $9d
	xor d                                            ; $45b8: $aa
	rst FarCall                                          ; $45b9: $f7
	ld e, a                                          ; $45ba: $5f
	ret nc                                           ; $45bb: $d0

	sbc l                                            ; $45bc: $9d
	ld b, b                                          ; $45bd: $40
	ld bc, $f07b                                     ; $45be: $01 $7b $f0
	ld a, d                                          ; $45c1: $7a
	jp c, $bf9e                                      ; $45c2: $da $9e $bf

	ld e, e                                          ; $45c5: $5b
	and b                                            ; $45c6: $a0
	ld h, a                                          ; $45c7: $67
	call nc, $ffdd                                   ; $45c8: $d4 $dd $ff
	sbc [hl]                                         ; $45cb: $9e
	ld a, [bc]                                       ; $45cc: $0a
	ld a, e                                          ; $45cd: $7b
	ldh a, [$9e]                                     ; $45ce: $f0 $9e
	xor [hl]                                         ; $45d0: $ae
	sub $ff                                          ; $45d1: $d6 $ff
	ld a, d                                          ; $45d3: $7a
	jp c, $1a6a                                      ; $45d4: $da $6a $1a

	cpl                                              ; $45d7: $2f
	ld d, b                                          ; $45d8: $50
	ld a, h                                          ; $45d9: $7c
	jp $9c72                                         ; $45da: $c3 $72 $9c


	ret c                                            ; $45dd: $d8

	rst $38                                          ; $45de: $ff

jr_042_45df:
	ld [hl], $00                                     ; $45df: $36 $00
	sbc d                                            ; $45e1: $9a
	ld h, [hl]                                       ; $45e2: $66
	ld h, h                                          ; $45e3: $64
	ld b, h                                          ; $45e4: $44
	ld b, h                                          ; $45e5: $44
	dec [hl]                                         ; $45e6: $35
	db $dd                                           ; $45e7: $dd
	ld d, l                                          ; $45e8: $55
	sbc [hl]                                         ; $45e9: $9e
	ld d, a                                          ; $45ea: $57
	ld c, a                                          ; $45eb: $4f
	or $9e                                           ; $45ec: $f6 $9e
	ld b, l                                          ; $45ee: $45
	ld l, a                                          ; $45ef: $6f
	or $95                                           ; $45f0: $f6 $95
	ld b, h                                          ; $45f2: $44
	ld b, [hl]                                       ; $45f3: $46
	ld b, h                                          ; $45f4: $44
	inc sp                                           ; $45f5: $33
	ld d, l                                          ; $45f6: $55
	ld d, e                                          ; $45f7: $53
	ld d, l                                          ; $45f8: $55
	ld d, l                                          ; $45f9: $55
	scf                                              ; $45fa: $37
	ld h, [hl]                                       ; $45fb: $66
	sbc $44                                          ; $45fc: $de $44
	sbc l                                            ; $45fe: $9d
	inc sp                                           ; $45ff: $33
	ld d, a                                          ; $4600: $57
	ld l, e                                          ; $4601: $6b
	or $9c                                           ; $4602: $f6 $9c
	ld b, a                                          ; $4604: $47
	inc sp                                           ; $4605: $33
	ld d, a                                          ; $4606: $57
	db $dd                                           ; $4607: $dd
	ld [hl], a                                       ; $4608: $77
	ld [hl], a                                       ; $4609: $77
	or $dc                                           ; $460a: $f6 $dc
	ld [hl], a                                       ; $460c: $77
	ld a, a                                          ; $460d: $7f
	ret c                                            ; $460e: $d8

	ret c                                            ; $460f: $d8

	ld [hl], a                                       ; $4610: $77
	ld e, a                                          ; $4611: $5f
	or $cd                                           ; $4612: $f6 $cd
	ld [hl], a                                       ; $4614: $77
	add $8a                                          ; $4615: $c6 $8a
	db $fc                                           ; $4617: $fc
	sbc h                                            ; $4618: $9c
	ld c, h                                          ; $4619: $4c
	inc sp                                           ; $461a: $33
	adc b                                            ; $461b: $88
	call c, $9cff                                    ; $461c: $dc $ff $9c
	or e                                             ; $461f: $b3
	call z, $fc77                                    ; $4620: $cc $77 $fc
	sbc h                                            ; $4623: $9c
	ld c, b                                          ; $4624: $48
	ld sp, $dc8a                                     ; $4625: $31 $8a $dc
	rst $38                                          ; $4628: $ff
	sbc h                                            ; $4629: $9c
	or a                                             ; $462a: $b7
	adc $75                                          ; $462b: $ce $75
	db $fc                                           ; $462d: $fc
	sbc h                                            ; $462e: $9c
	add b                                            ; $462f: $80
	inc de                                           ; $4630: $13
	xor b                                            ; $4631: $a8
	call c, $9cff                                    ; $4632: $dc $ff $9c
	ld a, a                                          ; $4635: $7f
	db $ec                                           ; $4636: $ec
	ld d, a                                          ; $4637: $57
	ei                                               ; $4638: $fb
	sbc l                                            ; $4639: $9d
	jr jr_042_45df                                   ; $463a: $18 $a3

	db $db                                           ; $463c: $db
	rst $38                                          ; $463d: $ff
	sbc l                                            ; $463e: $9d
	rst SubAFromBC                                          ; $463f: $e7
	ld e, h                                          ; $4640: $5c
	db $fc                                           ; $4641: $fc
	sbc h                                            ; $4642: $9c
	ld [$3ac4], sp                                   ; $4643: $08 $c4 $3a
	call c, $9cff                                    ; $4646: $dc $ff $9c
	rst FarCall                                          ; $4649: $f7
	dec sp                                           ; $464a: $3b
	push bc                                          ; $464b: $c5
	ld l, a                                          ; $464c: $6f
	ldh a, [$9e]                                     ; $464d: $f0 $9e
	ld h, [hl]                                       ; $464f: $66
	ld l, a                                          ; $4650: $6f
	or b                                             ; $4651: $b0
	sbc l                                            ; $4652: $9d
	rst FarCall                                          ; $4653: $f7
	sbc c                                            ; $4654: $99
	ld l, a                                          ; $4655: $6f
	or b                                             ; $4656: $b0
	sbc [hl]                                         ; $4657: $9e
	ld b, h                                          ; $4658: $44
	ld l, e                                          ; $4659: $6b
	and b                                            ; $465a: $a0

jr_042_465b:
	sbc [hl]                                         ; $465b: $9e
	cp e                                             ; $465c: $bb
	ld l, e                                          ; $465d: $6b
	and b                                            ; $465e: $a0

jr_042_465f:
	sbc h                                            ; $465f: $9c
	jr nz, jr_042_467b                               ; $4660: $20 $19

	and d                                            ; $4662: $a2
	call c, $9cff                                    ; $4663: $dc $ff $9c
	rst SubAFromDE                                          ; $4666: $df
	and $5d                                          ; $4667: $e6 $5d
	db $fc                                           ; $4669: $fc
	sbc h                                            ; $466a: $9c
	ld b, d                                          ; $466b: $42
	adc h                                            ; $466c: $8c
	ld [hl+], a                                      ; $466d: $22
	call c, $9cff                                    ; $466e: $dc $ff $9c
	cp l                                             ; $4671: $bd
	ld [hl], e                                       ; $4672: $73
	db $dd                                           ; $4673: $dd
	ei                                               ; $4674: $fb
	sbc [hl]                                         ; $4675: $9e
	ld h, h                                          ; $4676: $64
	ld l, a                                          ; $4677: $6f
	add b                                            ; $4678: $80
	sbc l                                            ; $4679: $9d
	rst $38                                          ; $467a: $ff

jr_042_467b:
	sbc e                                            ; $467b: $9b
	ld l, a                                          ; $467c: $6f
	add b                                            ; $467d: $80
	sbc h                                            ; $467e: $9c
	nop                                              ; $467f: $00
	ld h, $51                                        ; $4680: $26 $51
	db $db                                           ; $4682: $db
	rst $38                                          ; $4683: $ff
	sbc l                                            ; $4684: $9d
	reti                                             ; $4685: $d9


	xor [hl]                                         ; $4686: $ae
	ld l, a                                          ; $4687: $6f
	ret nc                                           ; $4688: $d0

	sbc l                                            ; $4689: $9d
	ld sp, $6f44                                     ; $468a: $31 $44 $6f
	ret nc                                           ; $468d: $d0

	sbc l                                            ; $468e: $9d
	adc $bb                                          ; $468f: $ce $bb
	db $fc                                           ; $4691: $fc
	sbc h                                            ; $4692: $9c
	inc b                                            ; $4693: $04
	sbc b                                            ; $4694: $98
	ld b, l                                          ; $4695: $45
	call c, $9cff                                    ; $4696: $dc $ff $9c
	ei                                               ; $4699: $fb
	ld h, a                                          ; $469a: $67
	cp d                                             ; $469b: $ba
	db $fc                                           ; $469c: $fc
	sbc h                                            ; $469d: $9c
	ld [hl+], a                                      ; $469e: $22
	call z, $dc11                                    ; $469f: $cc $11 $dc
	rst $38                                          ; $46a2: $ff
	sbc h                                            ; $46a3: $9c
	db $dd                                           ; $46a4: $dd
	inc sp                                           ; $46a5: $33
	xor $fc                                          ; $46a6: $ee $fc
	sbc l                                            ; $46a8: $9d
	db $10                                           ; $46a9: $10
	ld h, [hl]                                       ; $46aa: $66
	ld l, a                                          ; $46ab: $6f
	ldh a, [$9d]                                     ; $46ac: $f0 $9d
	rst AddAOntoHL                                          ; $46ae: $ef
	sbc c                                            ; $46af: $99
	ld l, e                                          ; $46b0: $6b
	ldh a, [$9d]                                     ; $46b1: $f0 $9d
	inc hl                                           ; $46b3: $23
	ld e, h                                          ; $46b4: $5c
	ld l, a                                          ; $46b5: $6f
	ldh a, [$9d]                                     ; $46b6: $f0 $9d
	call c, Call_042_6ba3                            ; $46b8: $dc $a3 $6b
	jr nc, jr_042_465b                               ; $46bb: $30 $9e

	push bc                                          ; $46bd: $c5
	ld l, e                                          ; $46be: $6b
	jr nc, jr_042_465f                               ; $46bf: $30 $9e

	ld a, [hl-]                                      ; $46c1: $3a
	db $fc                                           ; $46c2: $fc
	sbc h                                            ; $46c3: $9c
	ld bc, $15c8                                     ; $46c4: $01 $c8 $15
	call c, $9cff                                    ; $46c7: $dc $ff $9c
	cp $37                                           ; $46ca: $fe $37
	ld [$9dfc], a                                    ; $46cc: $ea $fc $9d
	ld [de], a                                       ; $46cf: $12
	adc h                                            ; $46d0: $8c
	ld l, a                                          ; $46d1: $6f
	add b                                            ; $46d2: $80
	sbc l                                            ; $46d3: $9d
	db $ed                                           ; $46d4: $ed
	ld [hl], e                                       ; $46d5: $73
	ld l, a                                          ; $46d6: $6f
	add b                                            ; $46d7: $80
	sbc [hl]                                         ; $46d8: $9e
	ld [hl-], a                                      ; $46d9: $32
	ld l, e                                          ; $46da: $6b
	and b                                            ; $46db: $a0
	add b                                            ; $46dc: $80
	call $ee33                                       ; $46dd: $cd $33 $ee
	ld d, l                                          ; $46e0: $55
	ld a, [$e2fb]                                    ; $46e1: $fa $fb $e2
	ld l, d                                          ; $46e4: $6a
	ld bc, $3265                                     ; $46e5: $01 $65 $32
	xor d                                            ; $46e8: $aa
	dec b                                            ; $46e9: $05
	inc b                                            ; $46ea: $04
	dec e                                            ; $46eb: $1d
	sbc l                                            ; $46ec: $9d
	rst $38                                          ; $46ed: $ff
	ei                                               ; $46ee: $fb
	rst $38                                          ; $46ef: $ff
	ld d, l                                          ; $46f0: $55
	cp [hl]                                          ; $46f1: $be
	rst $38                                          ; $46f2: $ff
	ld a, [hl]                                       ; $46f3: $7e
	jr c, jr_042_46f6                                ; $46f4: $38 $00

jr_042_46f6:
	nop                                              ; $46f6: $00
	rra                                              ; $46f7: $1f
	xor d                                            ; $46f8: $aa
	ld b, c                                          ; $46f9: $41
	nop                                              ; $46fa: $00
	add c                                            ; $46fb: $81
	sbc [hl]                                         ; $46fc: $9e
	rst JumpTable                                          ; $46fd: $c7
	sbc $ff                                          ; $46fe: $de $ff
	adc l                                            ; $4700: $8d
	ld d, l                                          ; $4701: $55
	rst AddAOntoHL                                          ; $4702: $ef
	rst $38                                          ; $4703: $ff
	ld a, a                                          ; $4704: $7f
	ld a, a                                          ; $4705: $7f
	ccf                                              ; $4706: $3f
	rst SubAFromDE                                          ; $4707: $df
	rst $38                                          ; $4708: $ff
	xor d                                            ; $4709: $aa
	stop                                             ; $470a: $10 $00
	add b                                            ; $470c: $80
	add b                                            ; $470d: $80
	ret nz                                           ; $470e: $c0

	and b                                            ; $470f: $a0
	add b                                            ; $4710: $80
	ld d, h                                          ; $4711: $54
	xor e                                            ; $4712: $ab
	db $db                                           ; $4713: $db
	rst $38                                          ; $4714: $ff
	sbc l                                            ; $4715: $9d
	xor e                                            ; $4716: $ab
	ld d, h                                          ; $4717: $54
	ei                                               ; $4718: $fb
	sbc l                                            ; $4719: $9d
	push de                                          ; $471a: $d5
	cp d                                             ; $471b: $ba
	db $db                                           ; $471c: $db
	rst $38                                          ; $471d: $ff
	sbc l                                            ; $471e: $9d
	ld a, [hl+]                                      ; $471f: $2a
	ld b, l                                          ; $4720: $45
	ei                                               ; $4721: $fb
	ld a, e                                          ; $4722: $7b
	ret nc                                           ; $4723: $d0

	ld [hl], e                                       ; $4724: $73
	add [hl]                                         ; $4725: $86
	ld a, e                                          ; $4726: $7b
	ret nc                                           ; $4727: $d0

	ld [hl], e                                       ; $4728: $73
	halt                                             ; $4729: $76
	sbc l                                            ; $472a: $9d
	ld d, l                                          ; $472b: $55
	xor a                                            ; $472c: $af
	ld a, e                                          ; $472d: $7b
	di                                               ; $472e: $f3
	sbc d                                            ; $472f: $9a
	rst FarCall                                          ; $4730: $f7
	ccf                                              ; $4731: $3f
	rst SubAFromBC                                          ; $4732: $e7
	xor d                                            ; $4733: $aa
	ld d, b                                          ; $4734: $50
	ld a, e                                          ; $4735: $7b
	di                                               ; $4736: $f3
	add b                                            ; $4737: $80
	rrca                                             ; $4738: $0f
	rst $38                                          ; $4739: $ff
	cp $55                                           ; $473a: $fe $55
	ld [$cffc], a                                    ; $473c: $ea $fc $cf
	rst FarCall                                          ; $473f: $f7
	db $e3                                           ; $4740: $e3
	ld h, b                                          ; $4741: $60
	rst SubAFromDE                                          ; $4742: $df
	xor d                                            ; $4743: $aa
	dec d                                            ; $4744: $15
	inc bc                                           ; $4745: $03
	ccf                                              ; $4746: $3f
	ld hl, sp-$04                                    ; $4747: $f8 $fc
	sbc a                                            ; $4749: $9f
	inc sp                                           ; $474a: $33
	ld d, l                                          ; $474b: $55
	add sp, $3f                                      ; $474c: $e8 $3f
	db $fd                                           ; $474e: $fd
	ld hl, sp+$0e                                    ; $474f: $f8 $0e
	add [hl]                                         ; $4751: $86
	ld d, a                                          ; $4752: $57
	xor d                                            ; $4753: $aa
	rla                                              ; $4754: $17
	rst $38                                          ; $4755: $ff
	cp $80                                           ; $4756: $fe $80
	rlca                                             ; $4758: $07
	pop af                                           ; $4759: $f1
	ld sp, hl                                        ; $475a: $f9
	adc c                                            ; $475b: $89
	ld d, l                                          ; $475c: $55
	nop                                              ; $475d: $00
	rst $38                                          ; $475e: $ff
	xor b                                            ; $475f: $a8
	ld e, a                                          ; $4760: $5f
	rst $38                                          ; $4761: $ff
	cp a                                             ; $4762: $bf
	rst SubAFromDE                                          ; $4763: $df
	xor d                                            ; $4764: $aa
	rst $38                                          ; $4765: $ff
	rst $38                                          ; $4766: $ff
	ld [hl], a                                       ; $4767: $77
	ldh [$c0], a                                     ; $4768: $e0 $c0
	ret nz                                           ; $476a: $c0

	ldh [$aa], a                                     ; $476b: $e0 $aa
	nop                                              ; $476d: $00
	rst $38                                          ; $476e: $ff
	dec d                                            ; $476f: $15
	ld a, [$fdff]                                    ; $4770: $fa $ff $fd
	ei                                               ; $4773: $fb
	ld d, l                                          ; $4774: $55
	rst $38                                          ; $4775: $ff
	rst $38                                          ; $4776: $ff
	add b                                            ; $4777: $80
	xor $07                                          ; $4778: $ee $07
	inc bc                                           ; $477a: $03
	inc bc                                           ; $477b: $03
	rlca                                             ; $477c: $07
	xor d                                            ; $477d: $aa
	rla                                              ; $477e: $17
	db $fc                                           ; $477f: $fc
	cp a                                             ; $4780: $bf
	rra                                              ; $4781: $1f
	ld [hl], b                                       ; $4782: $70
	ld h, c                                          ; $4783: $61
	ld [$e855], a                                    ; $4784: $ea $55 $e8
	rst $38                                          ; $4787: $ff
	ld a, a                                          ; $4788: $7f
	ldh [hDisp1_LCDC], a                                     ; $4789: $e0 $8f
	sbc a                                            ; $478b: $9f
	sub c                                            ; $478c: $91
	xor d                                            ; $478d: $aa
	ld d, a                                          ; $478e: $57
	ccf                                              ; $478f: $3f
	di                                               ; $4790: $f3
	rst AddAOntoHL                                          ; $4791: $ef
	rst JumpTable                                          ; $4792: $c7
	ld b, $fb                                        ; $4793: $06 $fb
	ld d, l                                          ; $4795: $55
	xor b                                            ; $4796: $a8
	sub a                                            ; $4797: $97
	ret nz                                           ; $4798: $c0

	db $fc                                           ; $4799: $fc
	rra                                              ; $479a: $1f
	ccf                                              ; $479b: $3f
	ld sp, hl                                        ; $479c: $f9
	call z, $f5aa                                    ; $479d: $cc $aa $f5
	ld a, d                                          ; $47a0: $7a
	add hl, de                                       ; $47a1: $19
	sbc d                                            ; $47a2: $9a
	rst AddAOntoHL                                          ; $47a3: $ef
	db $fc                                           ; $47a4: $fc
	rst SubAFromBC                                          ; $47a5: $e7
	ld d, l                                          ; $47a6: $55
	ld a, [bc]                                       ; $47a7: $0a
	ld a, d                                          ; $47a8: $7a
	add hl, bc                                       ; $47a9: $09
	sbc d                                            ; $47aa: $9a
	ldh a, [rIE]                                     ; $47ab: $f0 $ff

jr_042_47ad:
	ld a, a                                          ; $47ad: $7f
	xor d                                            ; $47ae: $aa
	rst FarCall                                          ; $47af: $f7
	ld l, [hl]                                       ; $47b0: $6e
	ld b, $9d                                        ; $47b1: $06 $9d
	ld d, l                                          ; $47b3: $55
	ld [$f66d], sp                                   ; $47b4: $08 $6d $f6
	sbc l                                            ; $47b7: $9d
	xor e                                            ; $47b8: $ab
	ld e, l                                          ; $47b9: $5d
	db $db                                           ; $47ba: $db
	rst $38                                          ; $47bb: $ff
	sbc l                                            ; $47bc: $9d
	ld d, h                                          ; $47bd: $54
	and d                                            ; $47be: $a2
	ei                                               ; $47bf: $fb
	sbc l                                            ; $47c0: $9d
	ld a, [hl+]                                      ; $47c1: $2a
	push de                                          ; $47c2: $d5
	db $db                                           ; $47c3: $db
	rst $38                                          ; $47c4: $ff
	sbc l                                            ; $47c5: $9d
	push de                                          ; $47c6: $d5
	ld a, [hl+]                                      ; $47c7: $2a
	ei                                               ; $47c8: $fb
	ld a, e                                          ; $47c9: $7b
	ret nc                                           ; $47ca: $d0

	rst SubAFromDE                                          ; $47cb: $df
	cp $9e                                           ; $47cc: $fe $9e
	db $fc                                           ; $47ce: $fc
	ld a, d                                          ; $47cf: $7a
	ld hl, sp+$7f                                    ; $47d0: $f8 $7f
	ret nc                                           ; $47d2: $d0

	rst SubAFromDE                                          ; $47d3: $df
	ld bc, $038f                                     ; $47d4: $01 $8f $03
	dec b                                            ; $47d7: $05
	ld bc, $7daa                                     ; $47d8: $01 $aa $7d
	rst $38                                          ; $47db: $ff
	ld a, [hl]                                       ; $47dc: $7e
	inc e                                            ; $47dd: $1c
	nop                                              ; $47de: $00
	nop                                              ; $47df: $00
	ld hl, sp+$55                                    ; $47e0: $f8 $55
	add d                                            ; $47e2: $82
	nop                                              ; $47e3: $00
	add c                                            ; $47e4: $81
	db $e3                                           ; $47e5: $e3
	sbc $ff                                          ; $47e6: $de $ff
	add a                                            ; $47e8: $87
	xor d                                            ; $47e9: $aa
	ld e, a                                          ; $47ea: $5f
	rst SubAFromDE                                          ; $47eb: $df
	ld b, a                                          ; $47ec: $47
	ld d, [hl]                                       ; $47ed: $56
	add b                                            ; $47ee: $80
	and [hl]                                         ; $47ef: $a6
	ld c, h                                          ; $47f0: $4c
	ld d, l                                          ; $47f1: $55
	and b                                            ; $47f2: $a0
	jr nz, jr_042_47ad                               ; $47f3: $20 $b8

	cp c                                             ; $47f5: $b9
	rst $38                                          ; $47f6: $ff
	rst SubAFromDE                                          ; $47f7: $df
	rst $38                                          ; $47f8: $ff
	jr c, jr_042_486b                                ; $47f9: $38 $70

	pop bc                                           ; $47fb: $c1
	db $e3                                           ; $47fc: $e3
	ld hl, $fecc                                     ; $47fd: $21 $cc $fe
	ld sp, hl                                        ; $4800: $f9
	reti                                             ; $4801: $d9


	rst $38                                          ; $4802: $ff
	sbc b                                            ; $4803: $98
	inc bc                                           ; $4804: $03
	sub b                                            ; $4805: $90
	ld a, b                                          ; $4806: $78
	jr c, jr_042_4881                                ; $4807: $38 $78

	ld [hl], c                                       ; $4809: $71
	ld d, c                                          ; $480a: $51
	ld l, [hl]                                       ; $480b: $6e
	and b                                            ; $480c: $a0
	ld [hl], a                                       ; $480d: $77
	add a                                            ; $480e: $87
	sub h                                            ; $480f: $94
	rrca                                             ; $4810: $0f
	rlca                                             ; $4811: $07
	ld b, a                                          ; $4812: $47
	rst SubAFromBC                                          ; $4813: $e7
	rst FarCall                                          ; $4814: $f7
	rst JumpTable                                          ; $4815: $c7
	ld c, a                                          ; $4816: $4f
	add b                                            ; $4817: $80
	ldh a, [$f8]                                     ; $4818: $f0 $f8
	cp b                                             ; $481a: $b8
	sbc $f8                                          ; $481b: $de $f8
	ld a, a                                          ; $481d: $7f
	ld l, [hl]                                       ; $481e: $6e
	ld l, [hl]                                       ; $481f: $6e
	pop hl                                           ; $4820: $e1
	sbc [hl]                                         ; $4821: $9e
	ei                                               ; $4822: $fb
	ei                                               ; $4823: $fb
	sbc l                                            ; $4824: $9d
	ld bc, $de07                                     ; $4825: $01 $07 $de
	rst $38                                          ; $4828: $ff
	sbc d                                            ; $4829: $9a
	ld sp, hl                                        ; $482a: $f9
	rst SubAFromBC                                          ; $482b: $e7
	sbc l                                            ; $482c: $9d
	ld sp, hl                                        ; $482d: $f9
	rst $38                                          ; $482e: $ff
	cp $85                                           ; $482f: $fe $85
	rlca                                             ; $4831: $07
	rra                                              ; $4832: $1f
	ld a, a                                          ; $4833: $7f
	rst $38                                          ; $4834: $ff
	sub c                                            ; $4835: $91
	rst FarCall                                          ; $4836: $f7
	rst SubAFromDE                                          ; $4837: $df
	ld [hl], d                                       ; $4838: $72
	add $f7                                          ; $4839: $c6 $f7
	ei                                               ; $483b: $fb
	or a                                             ; $483c: $b7
	rst GetHLinHL                                          ; $483d: $cf
	rrca                                             ; $483e: $0f
	ccf                                              ; $483f: $3f
	rst $38                                          ; $4840: $ff
	db $fd                                           ; $4841: $fd
	adc h                                            ; $4842: $8c
	adc h                                            ; $4843: $8c
	ret c                                            ; $4844: $d8

	ldh a, [$d5]                                     ; $4845: $f0 $d5
	rst SubAFromHL                                          ; $4847: $d7
	cp [hl]                                          ; $4848: $be
	rst AddAOntoHL                                          ; $4849: $ef
	sbc a                                            ; $484a: $9f
	sbc $ff                                          ; $484b: $de $ff
	sbc d                                            ; $484d: $9a
	xor $ed                                          ; $484e: $ee $ed
	rst GetHLinHL                                          ; $4850: $cf
	sbc b                                            ; $4851: $98
	ldh a, [$fe]                                     ; $4852: $f0 $fe
	sbc l                                            ; $4854: $9d
	adc [hl]                                         ; $4855: $8e
	ld h, l                                          ; $4856: $65
	db $db                                           ; $4857: $db
	rst $38                                          ; $4858: $ff
	sbc l                                            ; $4859: $9d
	inc sp                                           ; $485a: $33
	sbc [hl]                                         ; $485b: $9e
	ei                                               ; $485c: $fb
	sbc l                                            ; $485d: $9d
	ld h, l                                          ; $485e: $65
	ld h, c                                          ; $485f: $61
	db $db                                           ; $4860: $db
	rst $38                                          ; $4861: $ff
	sbc l                                            ; $4862: $9d
	add e                                            ; $4863: $83
	cp $fb                                           ; $4864: $fe $fb
	sbc [hl]                                         ; $4866: $9e
	cp h                                             ; $4867: $bc
	ld [hl], a                                       ; $4868: $77
	db $10                                           ; $4869: $10
	sbc d                                            ; $486a: $9a

jr_042_486b:
	cp $fd                                           ; $486b: $fe $fd
	ld a, [$0f7f]                                    ; $486d: $fa $7f $0f
	ld [hl], a                                       ; $4870: $77
	and c                                            ; $4871: $a1
	ld a, [hl]                                       ; $4872: $7e
	ret nc                                           ; $4873: $d0

	sbc [hl]                                         ; $4874: $9e
	dec a                                            ; $4875: $3d
	halt                                             ; $4876: $76
	ld [hl], b                                       ; $4877: $70
	sbc e                                            ; $4878: $9b
	ld a, a                                          ; $4879: $7f
	cp a                                             ; $487a: $bf
	ld e, a                                          ; $487b: $5f
	cp $77                                           ; $487c: $fe $77
	jp $3f7e                                         ; $487e: $c3 $7e $3f


jr_042_4881:
	sbc h                                            ; $4881: $9c
	ldh [$be], a                                     ; $4882: $e0 $be

Jump_042_4884:
	add [hl]                                         ; $4884: $86
	db $db                                           ; $4885: $db
	rst $38                                          ; $4886: $ff
	sbc l                                            ; $4887: $9d
	pop bc                                           ; $4888: $c1
	ld a, a                                          ; $4889: $7f
	ei                                               ; $488a: $fb
	sbc l                                            ; $488b: $9d
	ld [hl], e                                       ; $488c: $73
	and [hl]                                         ; $488d: $a6
	db $db                                           ; $488e: $db
	rst $38                                          ; $488f: $ff
	sbc l                                            ; $4890: $9d
	call z, $fb79                                    ; $4891: $cc $79 $fb
	sbc e                                            ; $4894: $9b
	xor e                                            ; $4895: $ab
	db $eb                                           ; $4896: $eb
	ld [hl], l                                       ; $4897: $75
	di                                               ; $4898: $f3
	ld [hl], a                                       ; $4899: $77
	inc sp                                           ; $489a: $33
	sbc e                                            ; $489b: $9b
	ld [hl], a                                       ; $489c: $77
	or a                                             ; $489d: $b7
	di                                               ; $489e: $f3
	add hl, de                                       ; $489f: $19
	ld [hl], a                                       ; $48a0: $77
	cp l                                             ; $48a1: $bd
	adc a                                            ; $48a2: $8f
	rst AddAOntoHL                                          ; $48a3: $ef
	ei                                               ; $48a4: $fb
	ld c, [hl]                                       ; $48a5: $4e
	ld h, e                                          ; $48a6: $63
	rst AddAOntoHL                                          ; $48a7: $ef
	rst SubAFromDE                                          ; $48a8: $df
	db $ed                                           ; $48a9: $ed
	di                                               ; $48aa: $f3
	ldh a, [$fc]                                     ; $48ab: $f0 $fc
	rst $38                                          ; $48ad: $ff
	cp a                                             ; $48ae: $bf
	ld sp, $1b31                                     ; $48af: $31 $31 $1b
	rrca                                             ; $48b2: $0f
	sbc $ff                                          ; $48b3: $de $ff
	sbc e                                            ; $48b5: $9b
	sbc a                                            ; $48b6: $9f
	rst SubAFromBC                                          ; $48b7: $e7
	cp c                                             ; $48b8: $b9
	sbc a                                            ; $48b9: $9f
	ld [hl], a                                       ; $48ba: $77
	ld d, b                                          ; $48bb: $50
	sbc d                                            ; $48bc: $9a
	ldh [$f8], a                                     ; $48bd: $e0 $f8
	cp $ff                                           ; $48bf: $fe $ff
	adc c                                            ; $48c1: $89
	ld l, e                                          ; $48c2: $6b
	ld a, [de]                                       ; $48c3: $1a
	sbc [hl]                                         ; $48c4: $9e
	rst SubAFromDE                                          ; $48c5: $df
	ei                                               ; $48c6: $fb
	sub c                                            ; $48c7: $91
	add b                                            ; $48c8: $80
	ldh [$fe], a                                     ; $48c9: $e0 $fe
	ldh a, [$e0]                                     ; $48cb: $f0 $e0
	ldh [c], a                                       ; $48cd: $e2
	rst SubAFromBC                                          ; $48ce: $e7
	rst AddAOntoHL                                          ; $48cf: $ef
	db $e3                                           ; $48d0: $e3
	ldh a, [c]                                       ; $48d1: $f2
	ld bc, $1f0f                                     ; $48d2: $01 $0f $1f
	dec e                                            ; $48d5: $1d
	sbc $1f                                          ; $48d6: $de $1f
	sub a                                            ; $48d8: $97
	rrca                                             ; $48d9: $0f
	ret nz                                           ; $48da: $c0

	add hl, bc                                       ; $48db: $09
	ld e, $1c                                        ; $48dc: $1e $1c
	ld e, $8e                                        ; $48de: $1e $8e
	adc d                                            ; $48e0: $8a
	ld l, h                                          ; $48e1: $6c
	ret nz                                           ; $48e2: $c0

	sbc $ff                                          ; $48e3: $de $ff
	sbc b                                            ; $48e5: $98
	inc e                                            ; $48e6: $1c
	ld c, $83                                        ; $48e7: $0e $83
	rst JumpTable                                          ; $48e9: $c7
	add h                                            ; $48ea: $84
	inc sp                                           ; $48eb: $33
	ld a, a                                          ; $48ec: $7f
	ld [hl], a                                       ; $48ed: $77
	dec l                                            ; $48ee: $2d
	call c, $9dff                                    ; $48ef: $dc $ff $9d
	rra                                              ; $48f2: $1f
	ld a, e                                          ; $48f3: $7b
	ld a, b                                          ; $48f4: $78
	sbc c                                            ; $48f5: $99
	sbc h                                            ; $48f6: $9c
	cp a                                             ; $48f7: $bf
	ld l, a                                          ; $48f8: $6f
	ld a, a                                          ; $48f9: $7f
	reti                                             ; $48fa: $d9


	rst $38                                          ; $48fb: $ff
	sbc b                                            ; $48fc: $98
	ld a, [$fbda]                                    ; $48fd: $fa $da $fb
	rst $38                                          ; $4900: $ff
	rst $38                                          ; $4901: $ff
	di                                               ; $4902: $f3
	pop af                                           ; $4903: $f1
	ld a, e                                          ; $4904: $7b
	ei                                               ; $4905: $fb
	db $db                                           ; $4906: $db
	rst $38                                          ; $4907: $ff
	ld a, [hl]                                       ; $4908: $7e
	pop bc                                           ; $4909: $c1
	add b                                            ; $490a: $80
	push hl                                          ; $490b: $e5
	add $97                                          ; $490c: $c6 $97
	adc $0d                                          ; $490e: $ce $0d
	dec de                                           ; $4910: $1b
	ldh a, [$f8]                                     ; $4911: $f0 $f8
	ei                                               ; $4913: $fb
	rst $38                                          ; $4914: $ff
	ld hl, sp-$0f                                    ; $4915: $f8 $f1
	di                                               ; $4917: $f3
	rst SubAFromBC                                          ; $4918: $e7
	xor $3d                                          ; $4919: $ee $3d
	sbc l                                            ; $491b: $9d
	cp [hl]                                          ; $491c: $be
	ld [hl], e                                       ; $491d: $73
	rst SubAFromDE                                          ; $491e: $df
	cp a                                             ; $491f: $bf
	rst $38                                          ; $4920: $ff
	rra                                              ; $4921: $1f
	cp $fe                                           ; $4922: $fe $fe
	ld a, a                                          ; $4924: $7f
	rst $38                                          ; $4925: $ff
	ldh [$c0], a                                     ; $4926: $e0 $c0
	add b                                            ; $4928: $80
	rst SubAFromBC                                          ; $4929: $e7
	ld a, [hl]                                       ; $492a: $7e
	reti                                             ; $492b: $d9


	sbc l                                            ; $492c: $9d
	rst $38                                          ; $492d: $ff
	add a                                            ; $492e: $87
	sbc $ff                                          ; $492f: $de $ff
	sbc d                                            ; $4931: $9a
	add hl, de                                       ; $4932: $19
	inc bc                                           ; $4933: $03
	ld [bc], a                                       ; $4934: $02
	inc c                                            ; $4935: $0c
	ld hl, sp-$02                                    ; $4936: $f8 $fe
	reti                                             ; $4938: $d9


	rst $38                                          ; $4939: $ff
	ld sp, hl                                        ; $493a: $f9
	dec hl                                           ; $493b: $2b
	ldh a, [rPCM34]                                  ; $493c: $f0 $77
	push de                                          ; $493e: $d5
	db $fd                                           ; $493f: $fd
	halt                                             ; $4940: $76
	add b                                            ; $4941: $80
	ld [hl], h                                       ; $4942: $74
	or a                                             ; $4943: $b7
	sbc [hl]                                         ; $4944: $9e
	ld a, b                                          ; $4945: $78
	ei                                               ; $4946: $fb
	add b                                            ; $4947: $80
	db $10                                           ; $4948: $10
	adc a                                            ; $4949: $8f
	db $fd                                           ; $494a: $fd
	ld a, [$fefe]                                    ; $494b: $fa $fe $fe
	rst $38                                          ; $494e: $ff
	sbc $be                                          ; $494f: $de $be
	ld a, [hl]                                       ; $4951: $7e
	ld b, $0c                                        ; $4952: $06 $0c
	inc b                                            ; $4954: $04
	inc b                                            ; $4955: $04
	inc c                                            ; $4956: $0c
	jr nc, @+$62                                     ; $4957: $30 $60

	ret nz                                           ; $4959: $c0

	cp a                                             ; $495a: $bf
	ld e, a                                          ; $495b: $5f
	ld a, a                                          ; $495c: $7f
	ld a, a                                          ; $495d: $7f
	rst $38                                          ; $495e: $ff
	ld a, e                                          ; $495f: $7b
	ld a, l                                          ; $4960: $7d
	ld a, [hl]                                       ; $4961: $7e
	ld h, b                                          ; $4962: $60
	jr nc, jr_042_4985                               ; $4963: $30 $20

	jr nz, @+$32                                     ; $4965: $20 $30

	sbc h                                            ; $4967: $9c
	inc c                                            ; $4968: $0c
	ld b, $03                                        ; $4969: $06 $03
	db $db                                           ; $496b: $db
	rst $38                                          ; $496c: $ff
	sbc l                                            ; $496d: $9d
	rst FarCall                                          ; $496e: $f7
	ld e, $fb                                        ; $496f: $1e $fb
	sbc l                                            ; $4971: $9d
	ld [$67f1], sp                                   ; $4972: $08 $f1 $67
	add hl, sp                                       ; $4975: $39
	ld a, [$e09e]                                    ; $4976: $fa $9e $e0
	rlca                                             ; $4979: $07
	add b                                            ; $497a: $80
	ld a, a                                          ; $497b: $7f
	ld d, b                                          ; $497c: $50
	ld a, a                                          ; $497d: $7f
	ld b, h                                          ; $497e: $44
	sbc [hl]                                         ; $497f: $9e
	pop hl                                           ; $4980: $e1
	sbc $ff                                          ; $4981: $de $ff
	sbc e                                            ; $4983: $9b
	sbc b                                            ; $4984: $98

jr_042_4985:
	ret nz                                           ; $4985: $c0

	ld b, b                                          ; $4986: $40
	jr nc, jr_042_4a00                               ; $4987: $30 $77

	res 0, b                                         ; $4989: $cb $80
	ld [hl], a                                       ; $498b: $77
	cp h                                             ; $498c: $bc
	cp c                                             ; $498d: $b9
	ld a, l                                          ; $498e: $7d
	adc $fb                                          ; $498f: $ce $fb
	db $fd                                           ; $4991: $fd
	rst $38                                          ; $4992: $ff
	ld hl, sp+$7f                                    ; $4993: $f8 $7f
	ld a, a                                          ; $4995: $7f
	cp $ff                                           ; $4996: $fe $ff
	rlca                                             ; $4998: $07
	inc bc                                           ; $4999: $03
	ld bc, $e0f0                                     ; $499a: $01 $f0 $e0
	and a                                            ; $499d: $a7
	ld h, e                                          ; $499e: $63
	jp hl                                            ; $499f: $e9


	ld [hl], e                                       ; $49a0: $73
	or b                                             ; $49a1: $b0
	ret c                                            ; $49a2: $d8

	rrca                                             ; $49a3: $0f
	rra                                              ; $49a4: $1f
	rst SubAFromDE                                          ; $49a5: $df
	rst $38                                          ; $49a6: $ff
	rra                                              ; $49a7: $1f
	adc a                                            ; $49a8: $8f
	rst GetHLinHL                                          ; $49a9: $cf
	sub a                                            ; $49aa: $97
	rst SubAFromBC                                          ; $49ab: $e7
	ld e, a                                          ; $49ac: $5f
	ld e, e                                          ; $49ad: $5b
	rst SubAFromDE                                          ; $49ae: $df
	rst $38                                          ; $49af: $ff
	rst $38                                          ; $49b0: $ff
	rst GetHLinHL                                          ; $49b1: $cf
	adc a                                            ; $49b2: $8f
	ld a, e                                          ; $49b3: $7b
	ei                                               ; $49b4: $fb
	ld l, e                                          ; $49b5: $6b
	ld b, a                                          ; $49b6: $47
	sbc [hl]                                         ; $49b7: $9e
	sbc $7b                                          ; $49b8: $de $7b
	ld d, d                                          ; $49ba: $52
	sbc h                                            ; $49bb: $9c
	db $fd                                           ; $49bc: $fd
	or $fe                                           ; $49bd: $f6 $fe
	sub $ff                                          ; $49bf: $d6 $ff
	sbc d                                            ; $49c1: $9a
	xor [hl]                                         ; $49c2: $ae
	ld e, l                                          ; $49c3: $5d
	ld a, [hl+]                                      ; $49c4: $2a
	inc b                                            ; $49c5: $04
	add b                                            ; $49c6: $80
	ld e, a                                          ; $49c7: $5f
	sub b                                            ; $49c8: $90
	ld a, h                                          ; $49c9: $7c
	ld d, d                                          ; $49ca: $52
	sbc e                                            ; $49cb: $9b
	ld e, a                                          ; $49cc: $5f
	ccf                                              ; $49cd: $3f
	ld e, a                                          ; $49ce: $5f
	cpl                                              ; $49cf: $2f
	ld sp, hl                                        ; $49d0: $f9
	adc a                                            ; $49d1: $8f
	ld b, a                                          ; $49d2: $47
	ld a, l                                          ; $49d3: $7d
	ld a, e                                          ; $49d4: $7b
	ld e, d                                          ; $49d5: $5a
	ld l, a                                          ; $49d6: $6f
	ld l, a                                          ; $49d7: $6f
	ld l, l                                          ; $49d8: $6d
	ld l, a                                          ; $49d9: $6f
	ccf                                              ; $49da: $3f
	rrca                                             ; $49db: $0f
	inc a                                            ; $49dc: $3c
	dec a                                            ; $49dd: $3d
	rra                                              ; $49de: $1f
	rra                                              ; $49df: $1f
	ld e, $1c                                        ; $49e0: $1e $1c
	db $dd                                           ; $49e2: $dd
	rst $38                                          ; $49e3: $ff
	sbc e                                            ; $49e4: $9b
	rst SubAFromDE                                          ; $49e5: $df
	ld l, [hl]                                       ; $49e6: $6e
	sub b                                            ; $49e7: $90
	adc $73                                          ; $49e8: $ce $73
	ld d, e                                          ; $49ea: $53
	sbc h                                            ; $49eb: $9c
	pop af                                           ; $49ec: $f1
	ccf                                              ; $49ed: $3f
	rra                                              ; $49ee: $1f
	sbc $ff                                          ; $49ef: $de $ff
	sbc [hl]                                         ; $49f1: $9e
	pop af                                           ; $49f2: $f1
	ld [hl], a                                       ; $49f3: $77
	ret                                              ; $49f4: $c9


	cp $9d                                           ; $49f5: $fe $9d
	ld c, $f3                                        ; $49f7: $0e $f3
	ld a, e                                          ; $49f9: $7b
	ld e, c                                          ; $49fa: $59
	sbc $ff                                          ; $49fb: $de $ff
	ld a, a                                          ; $49fd: $7f
	db $e4                                           ; $49fe: $e4
	rst SubAFromDE                                          ; $49ff: $df

jr_042_4a00:
	ld bc, $e19e                                     ; $4a00: $01 $9e $e1
	cp $91                                           ; $4a03: $fe $91
	ld sp, $fecf                                     ; $4a05: $31 $cf $fe
	cp $1e                                           ; $4a08: $fe $1e
	rst $38                                          ; $4a0a: $ff
	add b                                            ; $4a0b: $80
	ld bc, $00ff                                     ; $4a0c: $01 $ff $00
	cp $f3                                           ; $4a0f: $fe $f3
	cp [hl]                                          ; $4a11: $be
	nop                                              ; $4a12: $00
	halt                                             ; $4a13: $76
	ld e, [hl]                                       ; $4a14: $5e
	ld a, [hl]                                       ; $4a15: $7e
	dec hl                                           ; $4a16: $2b
	add c                                            ; $4a17: $81
	ld a, a                                          ; $4a18: $7f
	di                                               ; $4a19: $f3
	rra                                              ; $4a1a: $1f
	rst AddAOntoHL                                          ; $4a1b: $ef
	call z, Call_042_7e13                            ; $4a1c: $cc $13 $7e
	rst JumpTable                                          ; $4a1f: $c7
	ld l, a                                          ; $4a20: $6f
	rrca                                             ; $4a21: $0f
	ldh a, [$f0]                                     ; $4a22: $f0 $f0
	di                                               ; $4a24: $f3
	rst AddAOntoHL                                          ; $4a25: $ef
	rst $38                                          ; $4a26: $ff
	ld hl, sp-$70                                    ; $4a27: $f8 $90
	rst SubAFromHL                                          ; $4a29: $d7
	sub $d6                                          ; $4a2a: $d6 $d6
	nop                                              ; $4a2c: $00
	rst $38                                          ; $4a2d: $ff
	rst FarCall                                          ; $4a2e: $f7
	sub $d6                                          ; $4a2f: $d6 $d6
	adc a                                            ; $4a31: $8f
	ld [$ff8a], sp                                   ; $4a32: $08 $8a $ff
	rst $38                                          ; $4a35: $ff
	sbc $08                                          ; $4a36: $de $08
	sub [hl]                                         ; $4a38: $96
	rst $38                                          ; $4a39: $ff
	sub a                                            ; $4a3a: $97
	ld l, a                                          ; $4a3b: $6f
	rra                                              ; $4a3c: $1f
	rst $38                                          ; $4a3d: $ff
	rst FarCall                                          ; $4a3e: $f7
	rst SubAFromBC                                          ; $4a3f: $e7
	ld h, l                                          ; $4a40: $65
	add b                                            ; $4a41: $80
	ld a, e                                          ; $4a42: $7b
	ld sp, hl                                        ; $4a43: $f9
	ld a, d                                          ; $4a44: $7a
	ld b, e                                          ; $4a45: $43
	ld a, l                                          ; $4a46: $7d
	ret nc                                           ; $4a47: $d0

	sub a                                            ; $4a48: $97
	jp hl                                            ; $4a49: $e9


	or $f8                                           ; $4a4a: $f6 $f8
	rst $38                                          ; $4a4c: $ff
	rst AddAOntoHL                                          ; $4a4d: $ef
	rst SubAFromBC                                          ; $4a4e: $e7
	and [hl]                                         ; $4a4f: $a6
	ld bc, $f97b                                     ; $4a50: $01 $7b $f9
	adc [hl]                                         ; $4a53: $8e
	rst $38                                          ; $4a54: $ff
	ldh a, [$e0]                                     ; $4a55: $f0 $e0
	ldh a, [$eb]                                     ; $4a57: $f0 $eb
	ld l, e                                          ; $4a59: $6b
	ld l, e                                          ; $4a5a: $6b
	nop                                              ; $4a5b: $00
	rst $38                                          ; $4a5c: $ff
	rst AddAOntoHL                                          ; $4a5d: $ef
	ld l, e                                          ; $4a5e: $6b
	ld l, e                                          ; $4a5f: $6b
	pop af                                           ; $4a60: $f1
	db $10                                           ; $4a61: $10
	ld d, c                                          ; $4a62: $51
	rst $38                                          ; $4a63: $ff
	rst $38                                          ; $4a64: $ff
	sbc $10                                          ; $4a65: $de $10
	add [hl]                                         ; $4a67: $86
	rst GetHLinHL                                          ; $4a68: $cf
	ld hl, sp-$09                                    ; $4a69: $f8 $f7
	inc sp                                           ; $4a6b: $33
	ret z                                            ; $4a6c: $c8

	ld a, [hl]                                       ; $4a6d: $7e
	db $e3                                           ; $4a6e: $e3
	or $f0                                           ; $4a6f: $f6 $f0
	rrca                                             ; $4a71: $0f
	rrca                                             ; $4a72: $0f
	rst GetHLinHL                                          ; $4a73: $cf
	rst FarCall                                          ; $4a74: $f7
	rst $38                                          ; $4a75: $ff
	rra                                              ; $4a76: $1f
	add hl, bc                                       ; $4a77: $09
	rst $38                                          ; $4a78: $ff
	ld bc, $ff80                                     ; $4a79: $01 $80 $ff
	nop                                              ; $4a7c: $00
	ld a, a                                          ; $4a7d: $7f
	rst GetHLinHL                                          ; $4a7e: $cf
	ld a, l                                          ; $4a7f: $7d
	nop                                              ; $4a80: $00
	ld [hl], a                                       ; $4a81: $77
	ld e, $7c                                        ; $4a82: $1e $7c
	bit 6, a                                         ; $4a84: $cb $77
	ld a, [$739a]                                    ; $4a86: $fa $9a $73
	nop                                              ; $4a89: $00
	add b                                            ; $4a8a: $80
	add b                                            ; $4a8b: $80
	add a                                            ; $4a8c: $87
	cp $9a                                           ; $4a8d: $fe $9a
	adc h                                            ; $4a8f: $8c
	di                                               ; $4a90: $f3
	ld a, a                                          ; $4a91: $7f
	ld a, a                                          ; $4a92: $7f
	ld a, b                                          ; $4a93: $78
	sbc $ff                                          ; $4a94: $de $ff
	sbc [hl]                                         ; $4a96: $9e
	adc a                                            ; $4a97: $8f
	ld l, e                                          ; $4a98: $6b
	ld d, b                                          ; $4a99: $50
	sbc l                                            ; $4a9a: $9d
	ld [hl], b                                       ; $4a9b: $70
	rst GetHLinHL                                          ; $4a9c: $cf
	ld l, a                                          ; $4a9d: $6f
	ld d, b                                          ; $4a9e: $50
	sbc d                                            ; $4a9f: $9a
	rst $38                                          ; $4aa0: $ff
	ei                                               ; $4aa1: $fb
	halt                                             ; $4aa2: $76
	add hl, bc                                       ; $4aa3: $09
	ld [hl], e                                       ; $4aa4: $73
	ld [hl], d                                       ; $4aa5: $72
	inc sp                                           ; $4aa6: $33
	adc h                                            ; $4aa7: $8c
	adc a                                            ; $4aa8: $8f
	db $fc                                           ; $4aa9: $fc
	ld hl, sp-$1e                                    ; $4aaa: $f8 $e2
	cp [hl]                                          ; $4aac: $be
	sbc $5a                                          ; $4aad: $de $5a
	or $f6                                           ; $4aaf: $f6 $f6
	or [hl]                                          ; $4ab1: $b6
	or $fc                                           ; $4ab2: $f6 $fc
	ldh a, [$3c]                                     ; $4ab4: $f0 $3c
	cp h                                             ; $4ab6: $bc
	ld hl, sp-$08                                    ; $4ab7: $f8 $f8
	ld a, b                                          ; $4ab9: $78
	jr c, jr_042_4b34                                ; $4aba: $38 $78

	di                                               ; $4abc: $f3
	sbc d                                            ; $4abd: $9a
	db $fc                                           ; $4abe: $fc
	ld a, [$fafc]                                    ; $4abf: $fa $fc $fa
	db $f4                                           ; $4ac2: $f4
	ld e, d                                          ; $4ac3: $5a
	ld [hl], b                                       ; $4ac4: $70
	sbc d                                            ; $4ac5: $9a
	ld [hl], l                                       ; $4ac6: $75
	cp d                                             ; $4ac7: $ba
	ld d, h                                          ; $4ac8: $54
	jr nz, jr_042_4acc                               ; $4ac9: $20 $01

	ld sp, hl                                        ; $4acb: $f9

jr_042_4acc:
	sub a                                            ; $4acc: $97
	ld b, b                                          ; $4acd: $40
	jr nz, jr_042_4ae0                               ; $4ace: $20 $10

	ld [$8404], sp                                   ; $4ad0: $08 $04 $84
	call nz, Call_042_78c4                           ; $4ad3: $c4 $c4 $78
	push hl                                          ; $4ad6: $e5
	ld a, l                                          ; $4ad7: $7d
	sbc l                                            ; $4ad8: $9d
	ld a, e                                          ; $4ad9: $7b
	ret nc                                           ; $4ada: $d0

	ld a, l                                          ; $4adb: $7d
	ld c, [hl]                                       ; $4adc: $4e
	sbc c                                            ; $4add: $99
	rla                                              ; $4ade: $17
	rrca                                             ; $4adf: $0f

jr_042_4ae0:
	rlca                                             ; $4ae0: $07
	dec bc                                           ; $4ae1: $0b
	rlca                                             ; $4ae2: $07
	inc bc                                           ; $4ae3: $03
	ld sp, hl                                        ; $4ae4: $f9
	sub a                                            ; $4ae5: $97
	ld l, b                                          ; $4ae6: $68
	ld l, a                                          ; $4ae7: $6f
	ld h, a                                          ; $4ae8: $67

jr_042_4ae9:
	halt                                             ; $4ae9: $76
	ld a, l                                          ; $4aea: $7d
	ld [hl], l                                       ; $4aeb: $75
	ld [hl], a                                       ; $4aec: $77
	halt                                             ; $4aed: $76
	ld [hl], l                                       ; $4aee: $75
	inc [hl]                                         ; $4aef: $34
	rst SubAFromDE                                          ; $4af0: $df
	ld c, $df                                        ; $4af1: $0e $df
	rrca                                             ; $4af3: $0f
	add b                                            ; $4af4: $80
	rlca                                             ; $4af5: $07
	ld sp, hl                                        ; $4af6: $f9
	xor [hl]                                         ; $4af7: $ae
	jr jr_042_4ae9                                   ; $4af8: $18 $ef

	ld c, [hl]                                       ; $4afa: $4e
	ld [hl], $05                                     ; $4afb: $36 $05
	rst $38                                          ; $4afd: $ff
	rst $38                                          ; $4afe: $ff
	reti                                             ; $4aff: $d9


	db $f4                                           ; $4b00: $f4
	inc [hl]                                         ; $4b01: $34
	cp a                                             ; $4b02: $bf
	call z, $01ff                                    ; $4b03: $cc $ff $01
	db $fc                                           ; $4b06: $fc
	push hl                                          ; $4b07: $e5
	ld h, b                                          ; $4b08: $60
	ld h, a                                          ; $4b09: $67
	ld e, a                                          ; $4b0a: $5f
	ld a, [hl]                                       ; $4b0b: $7e
	ld a, [$fffe]                                    ; $4b0c: $fa $fe $ff
	add b                                            ; $4b0f: $80
	rst JumpTable                                          ; $4b10: $c7
	ld e, a                                          ; $4b11: $5f
	ld a, a                                          ; $4b12: $7f
	rst $38                                          ; $4b13: $ff
	ld a, h                                          ; $4b14: $7c
	jp c, $0887                                      ; $4b15: $da $87 $08

	ld [hl], d                                       ; $4b18: $72
	db $fd                                           ; $4b19: $fd
	rst $38                                          ; $4b1a: $ff
	jp hl                                            ; $4b1b: $e9


	ld d, d                                          ; $4b1c: $52
	call $f000                                       ; $4b1d: $cd $00 $f0
	db $fc                                           ; $4b20: $fc
	cp $ff                                           ; $4b21: $fe $ff
	di                                               ; $4b23: $f3
	pop hl                                           ; $4b24: $e1
	ld h, b                                          ; $4b25: $60
	rrca                                             ; $4b26: $0f
	inc hl                                           ; $4b27: $23
	sbc a                                            ; $4b28: $9f
	ld a, a                                          ; $4b29: $7f
	rst $38                                          ; $4b2a: $ff
	sub e                                            ; $4b2b: $93
	ld e, c                                          ; $4b2c: $59
	ld hl, $78f0                                     ; $4b2d: $21 $f0 $78
	inc hl                                           ; $4b30: $23
	adc [hl]                                         ; $4b31: $8e
	rst $38                                          ; $4b32: $ff
	rst JumpTable                                          ; $4b33: $c7

jr_042_4b34:
	add e                                            ; $4b34: $83
	add e                                            ; $4b35: $83
	add b                                            ; $4b36: $80
	rst $38                                          ; $4b37: $ff
	ld l, a                                          ; $4b38: $6f
	inc bc                                           ; $4b39: $03
	db $e3                                           ; $4b3a: $e3
	ld hl, sp-$01                                    ; $4b3b: $f8 $ff
	ld c, a                                          ; $4b3d: $4f
	ld a, a                                          ; $4b3e: $7f
	rst $38                                          ; $4b3f: $ff
	sub b                                            ; $4b40: $90
	ldh a, [$f0]                                     ; $4b41: $f0 $f0
	ld a, b                                          ; $4b43: $78
	or h                                             ; $4b44: $b4
	add a                                            ; $4b45: $87
	nop                                              ; $4b46: $00
	db $fd                                           ; $4b47: $fd
	add d                                            ; $4b48: $82
	ld a, b                                          ; $4b49: $78
	inc h                                            ; $4b4a: $24
	call $8483                                       ; $4b4b: $cd $83 $84
	rst $38                                          ; $4b4e: $ff
	rst $38                                          ; $4b4f: $ff
	ld a, l                                          ; $4b50: $7d
	add a                                            ; $4b51: $87
	sub e                                            ; $4b52: $93
	sub e                                            ; $4b53: $93
	adc a                                            ; $4b54: $8f
	jp $f90d                                         ; $4b55: $c3 $0d $f9


	ld [hl], l                                       ; $4b58: $75
	ld sp, hl                                        ; $4b59: $f9
	cp c                                             ; $4b5a: $b9
	ld e, l                                          ; $4b5b: $5d
	adc c                                            ; $4b5c: $89
	dec c                                            ; $4b5d: $0d
	ld [hl], l                                       ; $4b5e: $75
	xor h                                            ; $4b5f: $ac
	rst SubAFromDE                                          ; $4b60: $df
	rrca                                             ; $4b61: $0f
	sub l                                            ; $4b62: $95
	rst AddAOntoHL                                          ; $4b63: $ef
	cp a                                             ; $4b64: $bf
	or b                                             ; $4b65: $b0
	sbc a                                            ; $4b66: $9f
	xor [hl]                                         ; $4b67: $ae
	sbc a                                            ; $4b68: $9f
	sbc l                                            ; $4b69: $9d
	cp d                                             ; $4b6a: $ba
	sub c                                            ; $4b6b: $91
	or b                                             ; $4b6c: $b0
	halt                                             ; $4b6d: $76
	dec b                                            ; $4b6e: $05
	rst SubAFromDE                                          ; $4b6f: $df
	ldh a, [hLCDCIntHandlerIdx]                                     ; $4b70: $f0 $81
	rst FarCall                                          ; $4b72: $f7
	db $fd                                           ; $4b73: $fd
	nop                                              ; $4b74: $00
	cp a                                             ; $4b75: $bf
	ld b, c                                          ; $4b76: $41
	ld e, $24                                        ; $4b77: $1e $24
	or e                                             ; $4b79: $b3
	pop bc                                           ; $4b7a: $c1
	ld hl, rIE                                     ; $4b7b: $21 $ff $ff
	cp [hl]                                          ; $4b7e: $be
	pop hl                                           ; $4b7f: $e1
	ret                                              ; $4b80: $c9


	ret                                              ; $4b81: $c9


	pop af                                           ; $4b82: $f1
	jp $ff01                                         ; $4b83: $c3 $01 $ff


	or $c0                                           ; $4b86: $f6 $c0
	rst JumpTable                                          ; $4b88: $c7
	rra                                              ; $4b89: $1f
	rst $38                                          ; $4b8a: $ff
	ldh a, [c]                                       ; $4b8b: $f2
	cp $ff                                           ; $4b8c: $fe $ff
	add hl, bc                                       ; $4b8e: $09
	rrca                                             ; $4b8f: $0f
	ld a, b                                          ; $4b90: $78
	ld h, e                                          ; $4b91: $63
	sub l                                            ; $4b92: $95
	ld sp, hl                                        ; $4b93: $f9
	ldh a, [$c4]                                     ; $4b94: $f0 $c4
	ld sp, hl                                        ; $4b96: $f9
	cp $ff                                           ; $4b97: $fe $ff
	ret                                              ; $4b99: $c9


	sbc d                                            ; $4b9a: $9a
	add h                                            ; $4b9b: $84
	rrca                                             ; $4b9c: $0f

jr_042_4b9d:
	ld a, b                                          ; $4b9d: $78
	ld h, e                                          ; $4b9e: $63
	add h                                            ; $4b9f: $84
	rst $38                                          ; $4ba0: $ff
	db $e3                                           ; $4ba1: $e3
	pop bc                                           ; $4ba2: $c1
	pop bc                                           ; $4ba3: $c1
	rst $38                                          ; $4ba4: $ff
	db $10                                           ; $4ba5: $10
	ld c, [hl]                                       ; $4ba6: $4e
	cp a                                             ; $4ba7: $bf
	rst $38                                          ; $4ba8: $ff
	sub a                                            ; $4ba9: $97
	ld c, d                                          ; $4baa: $4a
	or e                                             ; $4bab: $b3
	nop                                              ; $4bac: $00
	rrca                                             ; $4bad: $0f
	ccf                                              ; $4bae: $3f
	ld a, a                                          ; $4baf: $7f
	rst $38                                          ; $4bb0: $ff
	rst GetHLinHL                                          ; $4bb1: $cf
	add a                                            ; $4bb2: $87
	ld b, $80                                        ; $4bb3: $06 $80
	ccf                                              ; $4bb5: $3f
	and a                                            ; $4bb6: $a7
	ld b, $e6                                        ; $4bb7: $06 $e6
	ld a, [$7b7e]                                    ; $4bb9: $fa $7e $7b
	ld d, l                                          ; $4bbc: $55
	sbc l                                            ; $4bbd: $9d
	ld bc, $7be3                                     ; $4bbe: $01 $e3 $7b
	ld c, e                                          ; $4bc1: $4b
	add [hl]                                         ; $4bc2: $86
	ccf                                              ; $4bc3: $3f
	ldh [$9f], a                                     ; $4bc4: $e0 $9f
	ld [hl], l                                       ; $4bc6: $75
	jr @-$07                                         ; $4bc7: $18 $f7

	ld [hl], d                                       ; $4bc9: $72
	ld l, h                                          ; $4bca: $6c
	and b                                            ; $4bcb: $a0
	rst $38                                          ; $4bcc: $ff
	rst $38                                          ; $4bcd: $ff
	sbc e                                            ; $4bce: $9b
	cpl                                              ; $4bcf: $2f
	inc l                                            ; $4bd0: $2c
	db $fd                                           ; $4bd1: $fd
	inc sp                                           ; $4bd2: $33
	rst $38                                          ; $4bd3: $ff
	ld d, $f6                                        ; $4bd4: $16 $f6
	and $6e                                          ; $4bd6: $e6 $6e
	cp [hl]                                          ; $4bd8: $be
	xor [hl]                                         ; $4bd9: $ae
	xor $6e                                          ; $4bda: $ee $6e
	sbc $f8                                          ; $4bdc: $de $f8
	sub d                                            ; $4bde: $92
	ldh a, [rSVBK]                                   ; $4bdf: $f0 $70
	ld [hl], b                                       ; $4be1: $70
	ldh a, [$f0]                                     ; $4be2: $f0 $f0
	ld hl, sp-$10                                    ; $4be4: $f8 $f0
	add sp, -$10                                     ; $4be6: $e8 $f0
	ldh [$d0], a                                     ; $4be8: $e0 $d0
	ldh [$c0], a                                     ; $4bea: $e0 $c0
	ld sp, hl                                        ; $4bec: $f9
	sub e                                            ; $4bed: $93
	ld [bc], a                                       ; $4bee: $02
	inc b                                            ; $4bef: $04
	ld [$2010], sp                                   ; $4bf0: $08 $10 $20
	ld hl, $2323                                     ; $4bf3: $21 $23 $23
	ld bc, $0703                                     ; $4bf6: $01 $03 $07
	rrca                                             ; $4bf9: $0f
	ld [hl], l                                       ; $4bfa: $75
	or b                                             ; $4bfb: $b0
	sbc $c4                                          ; $4bfc: $de $c4
	sbc d                                            ; $4bfe: $9a
	add h                                            ; $4bff: $84
	inc b                                            ; $4c00: $04
	ld b, h                                          ; $4c01: $44
	call nz, $dec4                                   ; $4c02: $c4 $c4 $de
	jr c, jr_042_4b9d                                ; $4c05: $38 $96

	ld a, b                                          ; $4c07: $78
	ld hl, sp-$08                                    ; $4c08: $f8 $f8
	cp b                                             ; $4c0a: $b8
	jr c, jr_042_4c10                                ; $4c0b: $38 $03

	dec b                                            ; $4c0d: $05
	inc bc                                           ; $4c0e: $03
	rlca                                             ; $4c0f: $07

jr_042_4c10:
	ld a, e                                          ; $4c10: $7b
	db $fc                                           ; $4c11: $fc
	sbc [hl]                                         ; $4c12: $9e
	dec b                                            ; $4c13: $05
	ld sp, hl                                        ; $4c14: $f9
	sbc h                                            ; $4c15: $9c
	ld [hl], l                                       ; $4c16: $75
	ld a, l                                          ; $4c17: $7d
	halt                                             ; $4c18: $76
	call c, Call_042_7677                            ; $4c19: $dc $77 $76
	call nz, $0cdd                                   ; $4c1c: $c4 $dd $0c
	sub e                                            ; $4c1f: $93
	sbc e                                            ; $4c20: $9b
	rst SubAFromDE                                          ; $4c21: $df
	cpl                                              ; $4c22: $2f
	ccf                                              ; $4c23: $3f
	rst SubAFromDE                                          ; $4c24: $df
	rst SubAFromDE                                          ; $4c25: $df
	db $fc                                           ; $4c26: $fc
	cp c                                             ; $4c27: $b9
	ld a, a                                          ; $4c28: $7f
	ld l, a                                          ; $4c29: $6f
	rst $38                                          ; $4c2a: $ff
	rst $38                                          ; $4c2b: $ff
	sbc $3f                                          ; $4c2c: $de $3f
	add d                                            ; $4c2e: $82
	ld a, [hl]                                       ; $4c2f: $7e

Jump_042_4c30:
	db $fc                                           ; $4c30: $fc
	ei                                               ; $4c31: $fb
	xor l                                            ; $4c32: $ad
	ld [hl], d                                       ; $4c33: $72
	ld a, l                                          ; $4c34: $7d
	sbc [hl]                                         ; $4c35: $9e
	ld [hl], a                                       ; $4c36: $77
	call z, $f8f8                                    ; $4c37: $cc $f8 $f8
	sbc $8f                                          ; $4c3a: $de $8f
	add e                                            ; $4c3c: $83
	pop hl                                           ; $4c3d: $e1
	ld sp, hl                                        ; $4c3e: $f9
	ccf                                              ; $4c3f: $3f
	add hl, sp                                       ; $4c40: $39
	rst FarCall                                          ; $4c41: $f7
	sbc $dd                                          ; $4c42: $de $dd
	ld a, [hl+]                                      ; $4c44: $2a
	ldh [$4e], a                                     ; $4c45: $e0 $4e
	sub a                                            ; $4c47: $97
	ld h, b                                          ; $4c48: $60
	jr nz, @+$33                                     ; $4c49: $20 $31

	ccf                                              ; $4c4b: $3f
	db $dd                                           ; $4c4c: $dd
	rst $38                                          ; $4c4d: $ff
	sub h                                            ; $4c4e: $94
	inc b                                            ; $4c4f: $04
	ld a, e                                          ; $4c50: $7b
	or l                                             ; $4c51: $b5
	ld e, l                                          ; $4c52: $5d
	xor [hl]                                         ; $4c53: $ae
	inc bc                                           ; $4c54: $03
	ld hl, $8354                                     ; $4c55: $21 $54 $83
	add d                                            ; $4c58: $82
	adc $71                                          ; $4c59: $ce $71
	inc c                                            ; $4c5b: $0c
	add b                                            ; $4c5c: $80
	rst JumpTable                                          ; $4c5d: $c7
	cp e                                             ; $4c5e: $bb
	rst FarCall                                          ; $4c5f: $f7
	db $eb                                           ; $4c60: $eb
	sbc a                                            ; $4c61: $9f
	ld e, a                                          ; $4c62: $5f
	rst $38                                          ; $4c63: $ff
	ret c                                            ; $4c64: $d8

	rlca                                             ; $4c65: $07
	rlca                                             ; $4c66: $07
	rrca                                             ; $4c67: $0f
	inc e                                            ; $4c68: $1c
	ld [hl], b                                       ; $4c69: $70
	ldh [$c0], a                                     ; $4c6a: $e0 $c0
	rst SubAFromBC                                          ; $4c6c: $e7
	pop de                                           ; $4c6d: $d1
	xor $ff                                          ; $4c6e: $ee $ff
	ld a, e                                          ; $4c70: $7b
	cp b                                             ; $4c71: $b8
	db $fd                                           ; $4c72: $fd
	ccf                                              ; $4c73: $3f
	rst $38                                          ; $4c74: $ff
	xor $f9                                          ; $4c75: $ee $f9
	ld hl, sp-$04                                    ; $4c77: $f8 $fc
	ld a, a                                          ; $4c79: $7f
	ccf                                              ; $4c7a: $3f
	cp $94                                           ; $4c7b: $fe $94
	cp $a9                                           ; $4c7d: $fe $a9
	dec l                                            ; $4c7f: $2d
	reti                                             ; $4c80: $d9


	cp c                                             ; $4c81: $b9
	ld l, c                                          ; $4c82: $69
	push af                                          ; $4c83: $f5
	jp hl                                            ; $4c84: $e9


	push af                                          ; $4c85: $f5
	rra                                              ; $4c86: $1f
	rst SubAFromDE                                          ; $4c87: $df
	ld a, e                                          ; $4c88: $7b
	db $10                                           ; $4c89: $10
	sbc $3f                                          ; $4c8a: $de $3f
	sub l                                            ; $4c8c: $95
	sub l                                            ; $4c8d: $95
	or h                                             ; $4c8e: $b4
	sbc e                                            ; $4c8f: $9b
	sbc l                                            ; $4c90: $9d
	sub [hl]                                         ; $4c91: $96
	xor a                                            ; $4c92: $af
	sub a                                            ; $4c93: $97
	xor a                                            ; $4c94: $af
	ld hl, sp-$05                                    ; $4c95: $f8 $fb
	ld a, d                                          ; $4c97: $7a
	ld [hl], b                                       ; $4c98: $70
	sbc $fc                                          ; $4c99: $de $fc
	add b                                            ; $4c9b: $80
	adc e                                            ; $4c9c: $8b

jr_042_4c9d:
	ld [hl], a                                       ; $4c9d: $77
	rst $38                                          ; $4c9e: $ff
	sbc $1d                                          ; $4c9f: $de $1d
	cp a                                             ; $4ca1: $bf
	db $fc                                           ; $4ca2: $fc
	rst $38                                          ; $4ca3: $ff
	ld [hl], a                                       ; $4ca4: $77
	sbc a                                            ; $4ca5: $9f
	rra                                              ; $4ca6: $1f
	ccf                                              ; $4ca7: $3f
	cp $fc                                           ; $4ca8: $fe $fc
	ld a, a                                          ; $4caa: $7f
	ld a, a                                          ; $4cab: $7f
	db $e3                                           ; $4cac: $e3
	db $dd                                           ; $4cad: $dd
	rst AddAOntoHL                                          ; $4cae: $ef
	rst SubAFromHL                                          ; $4caf: $d7
	ld sp, hl                                        ; $4cb0: $f9
	ld a, [$1bff]                                    ; $4cb1: $fa $ff $1b
	ldh [$e0], a                                     ; $4cb4: $e0 $e0
	ldh a, [$38]                                     ; $4cb6: $f0 $38
	ld c, $07                                        ; $4cb8: $0e $07
	inc bc                                           ; $4cba: $03
	sub e                                            ; $4cbb: $93
	rst SubAFromBC                                          ; $4cbc: $e7
	jr nz, jr_042_4c9d                               ; $4cbd: $20 $de

	xor l                                            ; $4cbf: $ad
	cp d                                             ; $4cc0: $ba
	ld [hl], l                                       ; $4cc1: $75
	ret nz                                           ; $4cc2: $c0

	add h                                            ; $4cc3: $84
	ld a, [hl+]                                      ; $4cc4: $2a
	pop bc                                           ; $4cc5: $c1
	ld b, c                                          ; $4cc6: $41
	ld [hl], e                                       ; $4cc7: $73
	ld [hl], l                                       ; $4cc8: $75
	ld c, $92                                        ; $4cc9: $0e $92
	rst $38                                          ; $4ccb: $ff
	sbc h                                            ; $4ccc: $9c
	rst AddAOntoHL                                          ; $4ccd: $ef
	ld a, e                                          ; $4cce: $7b
	cp e                                             ; $4ccf: $bb
	ld d, h                                          ; $4cd0: $54
	rlca                                             ; $4cd1: $07
	ld [hl], d                                       ; $4cd2: $72
	jp hl                                            ; $4cd3: $e9


	ld b, $04                                        ; $4cd4: $06 $04
	adc h                                            ; $4cd6: $8c
	db $fc                                           ; $4cd7: $fc
	db $dd                                           ; $4cd8: $dd
	rst $38                                          ; $4cd9: $ff
	ld a, a                                          ; $4cda: $7f
	ld b, e                                          ; $4cdb: $43
	add [hl]                                         ; $4cdc: $86
	or l                                             ; $4cdd: $b5
	ld c, [hl]                                       ; $4cde: $4e
	cp [hl]                                          ; $4cdf: $be
	ld a, c                                          ; $4ce0: $79
	xor $33                                          ; $4ce1: $ee $33
	rra                                              ; $4ce3: $1f
	rra                                              ; $4ce4: $1f
	ld a, e                                          ; $4ce5: $7b
	pop af                                           ; $4ce6: $f1
	pop bc                                           ; $4ce7: $c1
	add a                                            ; $4ce8: $87
	sbc a                                            ; $4ce9: $9f
	db $fc                                           ; $4cea: $fc
	reti                                             ; $4ceb: $d9


	ei                                               ; $4cec: $fb
	db $f4                                           ; $4ced: $f4
	db $fc                                           ; $4cee: $fc
	ei                                               ; $4cef: $fb
	ei                                               ; $4cf0: $fb
	ccf                                              ; $4cf1: $3f
	sbc l                                            ; $4cf2: $9d
	cp $f6                                           ; $4cf3: $fe $f6
	rst $38                                          ; $4cf5: $ff
	ld [hl], a                                       ; $4cf6: $77
	and c                                            ; $4cf7: $a1
	sbc e                                            ; $4cf8: $9b
	ld a, [hl]                                       ; $4cf9: $7e
	xor [hl]                                         ; $4cfa: $ae
	cp [hl]                                          ; $4cfb: $be
	ld l, [hl]                                       ; $4cfc: $6e
	call c, $76ee                                    ; $4cfd: $dc $ee $76
	call nz, $30dd                                   ; $4d00: $c4 $dd $30
	sbc e                                            ; $4d03: $9b
	ret nz                                           ; $4d04: $c0

	and b                                            ; $4d05: $a0
	ret nz                                           ; $4d06: $c0

	ldh [$7b], a                                     ; $4d07: $e0 $7b
	db $fc                                           ; $4d09: $fc
	sbc [hl]                                         ; $4d0a: $9e
	and b                                            ; $4d0b: $a0
	ld sp, hl                                        ; $4d0c: $f9
	sbc $23                                          ; $4d0d: $de $23
	sbc d                                            ; $4d0f: $9a
	ld hl, $2220                                     ; $4d10: $21 $20 $22
	inc hl                                           ; $4d13: $23
	inc hl                                           ; $4d14: $23
	sbc $1c                                          ; $4d15: $de $1c
	sub a                                            ; $4d17: $97
	ld e, $1f                                        ; $4d18: $1e $1f
	rra                                              ; $4d1a: $1f
	dec e                                            ; $4d1b: $1d
	inc e                                            ; $4d1c: $1c
	call nz, Call_042_4444                           ; $4d1d: $c4 $44 $44
	ld [hl], l                                       ; $4d20: $75
	add c                                            ; $4d21: $81
	ld a, [hl]                                       ; $4d22: $7e
	ret nz                                           ; $4d23: $c0

	rst SubAFromDE                                          ; $4d24: $df
	cp b                                             ; $4d25: $b8
	ld a, c                                          ; $4d26: $79
	add c                                            ; $4d27: $81
	ld a, l                                          ; $4d28: $7d
	add b                                            ; $4d29: $80
	sbc d                                            ; $4d2a: $9a
	inc bc                                           ; $4d2b: $03
	ld bc, $0301                                     ; $4d2c: $01 $01 $03
	ld bc, $03de                                     ; $4d2f: $01 $de $03
	ld sp, hl                                        ; $4d32: $f9
	sbc h                                            ; $4d33: $9c
	ld a, a                                          ; $4d34: $7f
	ld [hl], a                                       ; $4d35: $77
	ld a, a                                          ; $4d36: $7f
	sbc $77                                          ; $4d37: $de $77
	ld a, a                                          ; $4d39: $7f
	db $fc                                           ; $4d3a: $fc
	reti                                             ; $4d3b: $d9


	inc c                                            ; $4d3c: $0c
	sub d                                            ; $4d3d: $92
	cp e                                             ; $4d3e: $bb
	cp b                                             ; $4d3f: $b8
	cp h                                             ; $4d40: $bc
	db $fd                                           ; $4d41: $fd
	cp c                                             ; $4d42: $b9
	ld a, [hl-]                                      ; $4d43: $3a
	cp c                                             ; $4d44: $b9
	ld a, [hl-]                                      ; $4d45: $3a
	ld a, h                                          ; $4d46: $7c
	ld a, [hl]                                       ; $4d47: $7e
	ld a, a                                          ; $4d48: $7f
	ccf                                              ; $4d49: $3f
	ld a, [hl]                                       ; $4d4a: $7e
	sbc $7c                                          ; $4d4b: $de $7c
	adc b                                            ; $4d4d: $88
	rst $38                                          ; $4d4e: $ff
	jp c, $1e33                                      ; $4d4f: $da $33 $1e

	add $b2                                          ; $4d52: $c6 $b2
	dec bc                                           ; $4d54: $0b
	ld b, $07                                        ; $4d55: $06 $07
	rlca                                             ; $4d57: $07
	add a                                            ; $4d58: $87
	rst $38                                          ; $4d59: $ff
	rra                                              ; $4d5a: $1f
	rlca                                             ; $4d5b: $07
	rlca                                             ; $4d5c: $07
	rra                                              ; $4d5d: $1f
	ld a, [hl-]                                      ; $4d5e: $3a
	ld a, l                                          ; $4d5f: $7d
	ld a, [hl]                                       ; $4d60: $7e
	ld a, d                                          ; $4d61: $7a
	ld a, c                                          ; $4d62: $79
	ld a, h                                          ; $4d63: $7c
	ld a, a                                          ; $4d64: $7f
	halt                                             ; $4d65: $76
	call nz, $0f7b                                   ; $4d66: $c4 $7b $0f
	rst SubAFromDE                                          ; $4d69: $df
	rst $38                                          ; $4d6a: $ff
	sbc b                                            ; $4d6b: $98
	xor b                                            ; $4d6c: $a8
	ld d, [hl]                                       ; $4d6d: $56
	xor [hl]                                         ; $4d6e: $ae
	ld e, [hl]                                       ; $4d6f: $5e
	sbc [hl]                                         ; $4d70: $9e
	ld a, $fe                                        ; $4d71: $3e $fe
	ld [hl], a                                       ; $4d73: $77
	ld b, h                                          ; $4d74: $44
	ld a, d                                          ; $4d75: $7a
	rst AddAOntoHL                                          ; $4d76: $ef
	rst SubAFromDE                                          ; $4d77: $df
	rst $38                                          ; $4d78: $ff
	adc a                                            ; $4d79: $8f
	pop af                                           ; $4d7a: $f1
	ld e, a                                          ; $4d7b: $5f
	rst SubAFromDE                                          ; $4d7c: $df
	ld [hl], c                                       ; $4d7d: $71
	ld a, b                                          ; $4d7e: $78
	ld e, a                                          ; $4d7f: $5f
	rst SubAFromDE                                          ; $4d80: $df
	ld [hl], b                                       ; $4d81: $70
	cp $e0                                           ; $4d82: $fe $e0
	ldh [$fe], a                                     ; $4d84: $e0 $fe
	rst $38                                          ; $4d86: $ff
	ldh [$e0], a                                     ; $4d87: $e0 $e0
	db $fc                                           ; $4d89: $fc
	sbc $ee                                          ; $4d8a: $de $ee
	sbc l                                            ; $4d8c: $9d
	rst SubAFromDE                                          ; $4d8d: $df
	ld a, $de                                        ; $4d8e: $3e $de
	xor $de                                          ; $4d90: $ee $de
	rra                                              ; $4d92: $1f
	ld a, a                                          ; $4d93: $7f
	call z, $1fde                                    ; $4d94: $cc $de $1f
	sbc [hl]                                         ; $4d97: $9e
	ld sp, hl                                        ; $4d98: $f9
	sbc $d9                                          ; $4d99: $de $d9
	sbc e                                            ; $4d9b: $9b
	push af                                          ; $4d9c: $f5
	ld sp, hl                                        ; $4d9d: $f9
	db $fd                                           ; $4d9e: $fd
	ld sp, hl                                        ; $4d9f: $f9
	db $dd                                           ; $4da0: $dd
	ccf                                              ; $4da1: $3f
	sbc d                                            ; $4da2: $9a
	cp a                                             ; $4da3: $bf

jr_042_4da4:
	ld a, a                                          ; $4da4: $7f
	ccf                                              ; $4da5: $3f
	ccf                                              ; $4da6: $3f
	sbc a                                            ; $4da7: $9f
	sbc $9b                                          ; $4da8: $de $9b
	sbc e                                            ; $4daa: $9b
	xor a                                            ; $4dab: $af
	sbc a                                            ; $4dac: $9f
	cp a                                             ; $4dad: $bf
	sbc a                                            ; $4dae: $9f
	db $dd                                           ; $4daf: $dd
	db $fc                                           ; $4db0: $fc
	sbc e                                            ; $4db1: $9b
	db $fd                                           ; $4db2: $fd
	cp $fc                                           ; $4db3: $fe $fc
	db $fc                                           ; $4db5: $fc
	sbc $77                                          ; $4db6: $de $77
	sbc l                                            ; $4db8: $9d
	ei                                               ; $4db9: $fb
	ld a, h                                          ; $4dba: $7c
	sbc $77                                          ; $4dbb: $de $77
	sbc $f8                                          ; $4dbd: $de $f8
	ld a, a                                          ; $4dbf: $7f
	xor h                                            ; $4dc0: $ac
	sbc $f8                                          ; $4dc1: $de $f8
	adc h                                            ; $4dc3: $8c
	adc a                                            ; $4dc4: $8f
	ld a, [$8efb]                                    ; $4dc5: $fa $fb $8e
	ld e, $fa                                        ; $4dc8: $1e $fa
	ei                                               ; $4dca: $fb
	ld c, $7f                                        ; $4dcb: $0e $7f
	rlca                                             ; $4dcd: $07
	rlca                                             ; $4dce: $07
	ld a, a                                          ; $4dcf: $7f
	rst $38                                          ; $4dd0: $ff
	rlca                                             ; $4dd1: $07
	rlca                                             ; $4dd2: $07
	ccf                                              ; $4dd3: $3f
	dec d                                            ; $4dd4: $15
	ld l, d                                          ; $4dd5: $6a
	ld [hl], l                                       ; $4dd6: $75
	ld d, e                                          ; $4dd7: $53
	add b                                            ; $4dd8: $80
	sbc h                                            ; $4dd9: $9c
	ld e, h                                          ; $4dda: $5c
	cp [hl]                                          ; $4ddb: $be
	ld a, [hl]                                       ; $4ddc: $7e
	ld d, e                                          ; $4ddd: $53
	add b                                            ; $4dde: $80
	add d                                            ; $4ddf: $82
	rst $38                                          ; $4de0: $ff
	ld e, e                                          ; $4de1: $5b
	call z, Call_042_6378                            ; $4de2: $cc $78 $63
	ld c, l                                          ; $4de5: $4d
	ret nc                                           ; $4de6: $d0

	ld h, b                                          ; $4de7: $60
	ldh [$e0], a                                     ; $4de8: $e0 $e0
	pop hl                                           ; $4dea: $e1
	rst $38                                          ; $4deb: $ff
	ld hl, sp-$20                                    ; $4dec: $f8 $e0
	ldh [$f8], a                                     ; $4dee: $e0 $f8
	db $dd                                           ; $4df0: $dd
	dec e                                            ; $4df1: $1d
	dec a                                            ; $4df2: $3d
	cp a                                             ; $4df3: $bf
	sbc l                                            ; $4df4: $9d
	ld e, h                                          ; $4df5: $5c
	sbc l                                            ; $4df6: $9d
	ld e, h                                          ; $4df7: $5c
	ld a, $7e                                        ; $4df8: $3e $7e
	cp $fc                                           ; $4dfa: $fe $fc
	ld a, [hl]                                       ; $4dfc: $7e
	sbc $3e                                          ; $4dfd: $de $3e
	sbc h                                            ; $4dff: $9c
	cp $ee                                           ; $4e00: $fe $ee
	cp $de                                           ; $4e02: $fe $de
	xor $7f                                          ; $4e04: $ee $7f
	db $fc                                           ; $4e06: $fc
	reti                                             ; $4e07: $d9


	jr nc, jr_042_4da4                               ; $4e08: $30 $9a

	ret nz                                           ; $4e0a: $c0

	add b                                            ; $4e0b: $80
	add b                                            ; $4e0c: $80
	ret nz                                           ; $4e0d: $c0

	add b                                            ; $4e0e: $80
	sbc $c0                                          ; $4e0f: $de $c0
	ld h, d                                          ; $4e11: $62
	ret nz                                           ; $4e12: $c0

	rst SubAFromDE                                          ; $4e13: $df
	ld [hl+], a                                      ; $4e14: $22
	ld [hl], l                                       ; $4e15: $75
	add c                                            ; $4e16: $81
	ld a, [hl]                                       ; $4e17: $7e
	ret nz                                           ; $4e18: $c0

	rst SubAFromDE                                          ; $4e19: $df
	dec e                                            ; $4e1a: $1d
	ld a, c                                          ; $4e1b: $79
	add c                                            ; $4e1c: $81
	ld [hl], c                                       ; $4e1d: $71
	add b                                            ; $4e1e: $80
	call c, Call_042_72c4                            ; $4e1f: $dc $c4 $72
	ret nz                                           ; $4e22: $c0

	sbc $f8                                          ; $4e23: $de $f8
	sbc $03                                          ; $4e25: $de $03
	halt                                             ; $4e27: $76
	cp a                                             ; $4e28: $bf
	ld h, c                                          ; $4e29: $61
	add b                                            ; $4e2a: $80
	halt                                             ; $4e2b: $76
	jp nz, $c17e                                     ; $4e2c: $c2 $7e $c1

	sbc l                                            ; $4e2f: $9d
	halt                                             ; $4e30: $76
	ld [hl], c                                       ; $4e31: $71
	db $db                                           ; $4e32: $db
	inc c                                            ; $4e33: $0c
	sub l                                            ; $4e34: $95
	dec c                                            ; $4e35: $0d
	rrca                                             ; $4e36: $0f
	cp h                                             ; $4e37: $bc
	ld a, a                                          ; $4e38: $7f
	sbc $7d                                          ; $4e39: $de $7d
	ld l, $5f                                        ; $4e3b: $2e $5f
	rlca                                             ; $4e3d: $07
	ld h, a                                          ; $4e3e: $67
	ld a, e                                          ; $4e3f: $7b
	dec h                                            ; $4e40: $25
	ld a, [hl]                                       ; $4e41: $7e
	add b                                            ; $4e42: $80
	ld a, h                                          ; $4e43: $7c
	rst GetHLinHL                                          ; $4e44: $cf
	add [hl]                                         ; $4e45: $86
	sbc a                                            ; $4e46: $9f
	ld l, e                                          ; $4e47: $6b
	ld a, a                                          ; $4e48: $7f
	cp l                                             ; $4e49: $bd
	db $db                                           ; $4e4a: $db
	scf                                              ; $4e4b: $37
	ld b, a                                          ; $4e4c: $47
	db $eb                                           ; $4e4d: $eb
	rst SubAFromBC                                          ; $4e4e: $e7
	rst FarCall                                          ; $4e4f: $f7
	add e                                            ; $4e50: $83
	inc bc                                           ; $4e51: $03
	rlca                                             ; $4e52: $07
	inc c                                            ; $4e53: $0c
	cp b                                             ; $4e54: $b8
	ldh a, [$e0]                                     ; $4e55: $f0 $e0
	ccf                                              ; $4e57: $3f
	rra                                              ; $4e58: $1f
	add a                                            ; $4e59: $87
	ldh [$ec], a                                     ; $4e5a: $e0 $ec
	rst SubAFromHL                                          ; $4e5c: $d7
	xor $9f                                          ; $4e5d: $ee $9f
	db $dd                                           ; $4e5f: $dd
	rst $38                                          ; $4e60: $ff
	ld a, a                                          ; $4e61: $7f
	call c, $3195                                    ; $4e62: $dc $95 $31
	ld h, b                                          ; $4e65: $60
	db $fc                                           ; $4e66: $fc
	ld hl, sp-$1f                                    ; $4e67: $f8 $e1
	rlca                                             ; $4e69: $07
	ld a, [de]                                       ; $4e6a: $1a
	db $f4                                           ; $4e6b: $f4
	add d                                            ; $4e6c: $82
	add b                                            ; $4e6d: $80
	db $dd                                           ; $4e6e: $dd
	rst $38                                          ; $4e6f: $ff
	ld a, a                                          ; $4e70: $7f
	ld e, [hl]                                       ; $4e71: $5e
	add c                                            ; $4e72: $81
	add $83                                          ; $4e73: $c6 $83
	db $eb                                           ; $4e75: $eb
	jp c, $cad7                                      ; $4e76: $da $d7 $ca

	ld hl, $0700                                     ; $4e79: $21 $00 $07
	rlca                                             ; $4e7c: $07
	rst FarCall                                          ; $4e7d: $f7
	pop hl                                           ; $4e7e: $e1
	ret nz                                           ; $4e7f: $c0

	ldh [$30], a                                     ; $4e80: $e0 $30
	dec e                                            ; $4e82: $1d
	rrca                                             ; $4e83: $0f
	rlca                                             ; $4e84: $07
	ld e, $7f                                        ; $4e85: $1e $7f
	inc a                                            ; $4e87: $3c
	dec e                                            ; $4e88: $1d
	ld a, b                                          ; $4e89: $78
	db $fd                                           ; $4e8a: $fd
	cp $f8                                           ; $4e8b: $fe $f8
	rst $38                                          ; $4e8d: $ff
	cp $fe                                           ; $4e8e: $fe $fe
	ld a, [hl]                                       ; $4e90: $7e
	ld a, e                                          ; $4e91: $7b
	dec de                                           ; $4e92: $1b
	sub [hl]                                         ; $4e93: $96
	ld hl, sp-$0f                                    ; $4e94: $f8 $f1
	add hl, hl                                       ; $4e96: $29
	pop af                                           ; $4e97: $f1
	ld l, c                                          ; $4e98: $69
	push af                                          ; $4e99: $f5
	ld l, c                                          ; $4e9a: $69
	push af                                          ; $4e9b: $f5
	ld a, l                                          ; $4e9c: $7d
	db $dd                                           ; $4e9d: $dd
	ccf                                              ; $4e9e: $3f
	ld a, e                                          ; $4e9f: $7b
	db $10                                           ; $4ea0: $10
	sub [hl]                                         ; $4ea1: $96
	ld a, a                                          ; $4ea2: $7f
	adc a                                            ; $4ea3: $8f
	sub h                                            ; $4ea4: $94
	adc a                                            ; $4ea5: $8f
	sub [hl]                                         ; $4ea6: $96

jr_042_4ea7:
	xor a                                            ; $4ea7: $af
	sub [hl]                                         ; $4ea8: $96
	xor a                                            ; $4ea9: $af
	cp [hl]                                          ; $4eaa: $be
	db $dd                                           ; $4eab: $dd
	db $fc                                           ; $4eac: $fc
	ld a, d                                          ; $4ead: $7a
	ldh a, [hDisp1_BGP]                                     ; $4eae: $f0 $92
	cp $78                                           ; $4eb0: $fe $78
	cp $3c                                           ; $4eb2: $fe $3c
	cp b                                             ; $4eb4: $b8
	ld e, $bf                                        ; $4eb5: $1e $bf
	ld a, a                                          ; $4eb7: $7f
	rra                                              ; $4eb8: $1f
	rst $38                                          ; $4eb9: $ff
	ld a, a                                          ; $4eba: $7f
	ld a, a                                          ; $4ebb: $7f
	ld a, [hl]                                       ; $4ebc: $7e
	ld a, d                                          ; $4ebd: $7a
	db $db                                           ; $4ebe: $db
	sub h                                            ; $4ebf: $94
	rra                                              ; $4ec0: $1f
	rst SubAFromHL                                          ; $4ec1: $d7
	ld e, e                                          ; $4ec2: $5b
	db $eb                                           ; $4ec3: $eb
	ld d, e                                          ; $4ec4: $53
	add h                                            ; $4ec5: $84
	nop                                              ; $4ec6: $00
	ldh [$e0], a                                     ; $4ec7: $e0 $e0
	rst AddAOntoHL                                          ; $4ec9: $ef
	add a                                            ; $4eca: $87
	ld e, a                                          ; $4ecb: $5f
	add b                                            ; $4ecc: $80
	sbc e                                            ; $4ecd: $9b
	ld e, b                                          ; $4ece: $58
	cpl                                              ; $4ecf: $2f
	ld b, c                                          ; $4ed0: $41
	ld bc, $806f                                     ; $4ed1: $01 $6f $80
	sbc l                                            ; $4ed4: $9d
	ld h, e                                          ; $4ed5: $63
	pop bc                                           ; $4ed6: $c1
	ld [hl], a                                       ; $4ed7: $77
	add b                                            ; $4ed8: $80
	sbc e                                            ; $4ed9: $9b
	scf                                              ; $4eda: $37
	db $eb                                           ; $4edb: $eb
	ld [hl], a                                       ; $4edc: $77
	ld sp, hl                                        ; $4edd: $f9
	ld l, a                                          ; $4ede: $6f
	add b                                            ; $4edf: $80
	sub e                                            ; $4ee0: $93
	adc h                                            ; $4ee1: $8c
	ld b, $d6                                        ; $4ee2: $06 $d6
	cp $bd                                           ; $4ee4: $fe $bd
	db $db                                           ; $4ee6: $db
	db $ec                                           ; $4ee7: $ec
	ldh [c], a                                       ; $4ee8: $e2
	rst SubAFromHL                                          ; $4ee9: $d7
	rst SubAFromBC                                          ; $4eea: $e7
	rst AddAOntoHL                                          ; $4eeb: $ef
	pop bc                                           ; $4eec: $c1
	ld l, a                                          ; $4eed: $6f
	add b                                            ; $4eee: $80
	sub a                                            ; $4eef: $97
	dec a                                            ; $4ef0: $3d
	cp $7b                                           ; $4ef1: $fe $7b
	cp [hl]                                          ; $4ef3: $be
	ld [hl], h                                       ; $4ef4: $74
	ld a, [$e6e0]                                    ; $4ef5: $fa $e0 $e6
	ld a, d                                          ; $4ef8: $7a
	ld h, l                                          ; $4ef9: $65
	ld a, h                                          ; $4efa: $7c
	add b                                            ; $4efb: $80
	sbc h                                            ; $4efc: $9c
	ldh a, [rIE]                                     ; $4efd: $f0 $ff
	ld sp, hl                                        ; $4eff: $f9
	halt                                             ; $4f00: $76
	jp nz, $c17e                                     ; $4f01: $c2 $7e $c1

	sbc l                                            ; $4f04: $9d
	ld l, [hl]                                       ; $4f05: $6e
	adc [hl]                                         ; $4f06: $8e
	db $db                                           ; $4f07: $db
	jr nc, jr_042_4ea7                               ; $4f08: $30 $9d

	or b                                             ; $4f0a: $b0
	ldh a, [$de]                                     ; $4f0b: $f0 $de
	ret nz                                           ; $4f0d: $c0

	halt                                             ; $4f0e: $76
	cp a                                             ; $4f0f: $bf
	ld d, l                                          ; $4f10: $55
	add b                                            ; $4f11: $80
	call c, Call_042_7223                            ; $4f12: $dc $23 $72
	ret nz                                           ; $4f15: $c0

	sbc $1f                                          ; $4f16: $de $1f
	ld a, h                                          ; $4f18: $7c
	ld b, h                                          ; $4f19: $44
	rst SubAFromDE                                          ; $4f1a: $df
	ld b, h                                          ; $4f1b: $44
	sbc e                                            ; $4f1c: $9b
	call nz, $0404                                   ; $4f1d: $c4 $04 $04
	rlca                                             ; $4f20: $07
	reti                                             ; $4f21: $d9


	ld hl, sp+$7e                                    ; $4f22: $f8 $7e
	add $99                                          ; $4f24: $c6 $99
	dec bc                                           ; $4f26: $0b
	rlca                                             ; $4f27: $07
	dec hl                                           ; $4f28: $2b
	rla                                              ; $4f29: $17
	ld a, a                                          ; $4f2a: $7f
	rst $38                                          ; $4f2b: $ff
	ld sp, hl                                        ; $4f2c: $f9
	sub a                                            ; $4f2d: $97
	ld [hl], a                                       ; $4f2e: $77
	ld [hl], h                                       ; $4f2f: $74
	ld a, l                                          ; $4f30: $7d
	ld [hl], a                                       ; $4f31: $77
	ld a, [hl]                                       ; $4f32: $7e
	ld a, a                                          ; $4f33: $7f
	ld [hl], d                                       ; $4f34: $72
	ld a, h                                          ; $4f35: $7c
	ld a, b                                          ; $4f36: $78
	ld b, c                                          ; $4f37: $41
	rst SubAFromDE                                          ; $4f38: $df
	rrca                                             ; $4f39: $0f
	ld a, e                                          ; $4f3a: $7b
	ei                                               ; $4f3b: $fb
	sub b                                            ; $4f3c: $90
	set 1, b                                         ; $4f3d: $cb $c8
	dec b                                            ; $4f3f: $05
	ld d, c                                          ; $4f40: $51
	ret z                                            ; $4f41: $c8

	db $dd                                           ; $4f42: $dd
	and c                                            ; $4f43: $a1
	ld c, l                                          ; $4f44: $4d
	scf                                              ; $4f45: $37
	scf                                              ; $4f46: $37
	ld a, [$37be]                                    ; $4f47: $fa $be $37
	inc sp                                           ; $4f4a: $33
	ld a, a                                          ; $4f4b: $7f
	ld a, c                                          ; $4f4c: $79
	inc c                                            ; $4f4d: $0c
	sbc b                                            ; $4f4e: $98
	ld a, a                                          ; $4f4f: $7f
	ld e, a                                          ; $4f50: $5f
	and a                                            ; $4f51: $a7
	cp b                                             ; $4f52: $b8
	ld e, $ff                                        ; $4f53: $1e $ff
	ldh a, [$de]                                     ; $4f55: $f0 $de
	rst $38                                          ; $4f57: $ff
	add b                                            ; $4f58: $80
	rst SubAFromDE                                          ; $4f59: $df
	rst JumpTable                                          ; $4f5a: $c7
	pop hl                                           ; $4f5b: $e1
	rst $38                                          ; $4f5c: $ff
	ccf                                              ; $4f5d: $3f
	cp a                                             ; $4f5e: $bf
	sbc $e9                                          ; $4f5f: $de $e9
	cp $fd                                           ; $4f61: $fe $fd
	ld e, $86                                        ; $4f63: $1e $86
	ret nz                                           ; $4f65: $c0

	ret nz                                           ; $4f66: $c0

	pop hl                                           ; $4f67: $e1
	rst FarCall                                          ; $4f68: $f7
	rst $38                                          ; $4f69: $ff
	cp $ff                                           ; $4f6a: $fe $ff
	ld hl, sp-$02                                    ; $4f6c: $f8 $fe
	cp $bd                                           ; $4f6e: $fe $bd
	srl a                                            ; $4f70: $cb $3f
	rst SubAFromDE                                          ; $4f72: $df
	ld a, h                                          ; $4f73: $7c
	jr nc, @-$7d                                     ; $4f74: $30 $81

	add c                                            ; $4f76: $81
	jp $f07f                                         ; $4f77: $c3 $7f $f0


	ld a, a                                          ; $4f7a: $7f
	rrca                                             ; $4f7b: $0f
	sub l                                            ; $4f7c: $95
	rrca                                             ; $4f7d: $0f
	ld a, a                                          ; $4f7e: $7f
	sbc a                                            ; $4f7f: $9f
	rst $38                                          ; $4f80: $ff
	db $fd                                           ; $4f81: $fd
	ldh a, [c]                                       ; $4f82: $f2
	adc [hl]                                         ; $4f83: $8e
	nop                                              ; $4f84: $00
	ccf                                              ; $4f85: $3f
	adc a                                            ; $4f86: $8f
	ld a, e                                          ; $4f87: $7b
	ld sp, $fd81                                     ; $4f88: $31 $81 $fd
	pop af                                           ; $4f8b: $f1
	rst $38                                          ; $4f8c: $ff
	rst $38                                          ; $4f8d: $ff
	db $ed                                           ; $4f8e: $ed
	db $db                                           ; $4f8f: $db
	cp l                                             ; $4f90: $bd
	or $6b                                           ; $4f91: $f6 $6b
	cp $bd                                           ; $4f93: $fe $bd
	rst $38                                          ; $4f95: $ff
	or $e4                                           ; $4f96: $f6 $e4
	jp $969b                                         ; $4f98: $c3 $9b $96


	add e                                            ; $4f9b: $83
	jp $f5ff                                         ; $4f9c: $c3 $ff $f5


	push hl                                          ; $4f9f: $e5
	db $ed                                           ; $4fa0: $ed
	or l                                             ; $4fa1: $b5
	ld sp, hl                                        ; $4fa2: $f9
	db $fd                                           ; $4fa3: $fd
	db $fd                                           ; $4fa4: $fd
	ei                                               ; $4fa5: $fb
	ccf                                              ; $4fa6: $3f
	ccf                                              ; $4fa7: $3f
	ld a, e                                          ; $4fa8: $7b
	ld bc, $df7a                                     ; $4fa9: $01 $7a $df
	sub l                                            ; $4fac: $95
	xor a                                            ; $4fad: $af
	and a                                            ; $4fae: $a7
	or a                                             ; $4faf: $b7
	xor l                                            ; $4fb0: $ad
	sbc a                                            ; $4fb1: $9f
	cp a                                             ; $4fb2: $bf
	cp a                                             ; $4fb3: $bf
	rst SubAFromDE                                          ; $4fb4: $df
	db $fc                                           ; $4fb5: $fc
	db $fc                                           ; $4fb6: $fc
	ld a, e                                          ; $4fb7: $7b
	ld bc, $9f7a                                     ; $4fb8: $01 $7a $9f
	add a                                            ; $4fbb: $87
	or a                                             ; $4fbc: $b7
	db $db                                           ; $4fbd: $db
	cp l                                             ; $4fbe: $bd
	ld l, a                                          ; $4fbf: $6f
	sub $7f                                          ; $4fc0: $d6 $7f
	cp l                                             ; $4fc2: $bd
	rst $38                                          ; $4fc3: $ff
	ld l, a                                          ; $4fc4: $6f
	daa                                              ; $4fc5: $27
	jp Jump_042_69d9                                 ; $4fc6: $c3 $d9 $69


	pop bc                                           ; $4fc9: $c1
	jp $feff                                         ; $4fca: $c3 $ff $fe


	ld sp, hl                                        ; $4fcd: $f9
	rst $38                                          ; $4fce: $ff
	cp a                                             ; $4fcf: $bf
	ld c, a                                          ; $4fd0: $4f
	ld [hl], c                                       ; $4fd1: $71
	nop                                              ; $4fd2: $00
	db $fc                                           ; $4fd3: $fc
	ld a, e                                          ; $4fd4: $7b
	or l                                             ; $4fd5: $b5
	sbc l                                            ; $4fd6: $9d
	ld a, a                                          ; $4fd7: $7f
	cp a                                             ; $4fd8: $bf
	ld a, e                                          ; $4fd9: $7b
	xor e                                            ; $4fda: $ab
	rst SubAFromDE                                          ; $4fdb: $df
	ld a, a                                          ; $4fdc: $7f
	sbc c                                            ; $4fdd: $99
	cp l                                             ; $4fde: $bd
	db $d3                                           ; $4fdf: $d3
	db $fc                                           ; $4fe0: $fc
	ei                                               ; $4fe1: $fb
	ld a, $0c                                        ; $4fe2: $3e $0c
	ld a, e                                          ; $4fe4: $7b
	sub b                                            ; $4fe5: $90
	add c                                            ; $4fe6: $81
	rst AddAOntoHL                                          ; $4fe7: $ef
	rst $38                                          ; $4fe8: $ff
	db $fc                                           ; $4fe9: $fc
	rst $38                                          ; $4fea: $ff
	ldh a, [$fc]                                     ; $4feb: $f0 $fc
	db $fd                                           ; $4fed: $fd
	ld a, e                                          ; $4fee: $7b
	sub a                                            ; $4fef: $97
	ld a, a                                          ; $4ff0: $7f
	cp a                                             ; $4ff1: $bf
	ld a, b                                          ; $4ff2: $78
	ld h, c                                          ; $4ff3: $61
	inc bc                                           ; $4ff4: $03
	inc bc                                           ; $4ff5: $03
	add a                                            ; $4ff6: $87
	rst AddAOntoHL                                          ; $4ff7: $ef
	rst $38                                          ; $4ff8: $ff
	ld a, a                                          ; $4ff9: $7f
	rst $38                                          ; $4ffa: $ff
	rra                                              ; $4ffb: $1f
	ccf                                              ; $4ffc: $3f
	ccf                                              ; $4ffd: $3f
	cp $fa                                           ; $4ffe: $fe $fa
	push hl                                          ; $5000: $e5
	dec e                                            ; $5001: $1d
	ld a, b                                          ; $5002: $78
	rst $38                                          ; $5003: $ff
	rrca                                             ; $5004: $0f
	sbc $ff                                          ; $5005: $de $ff
	add e                                            ; $5007: $83
	ei                                               ; $5008: $fb
	db $e3                                           ; $5009: $e3
	add a                                            ; $500a: $87
	rst $38                                          ; $500b: $ff
	db $d3                                           ; $500c: $d3
	inc de                                           ; $500d: $13
	and b                                            ; $500e: $a0
	adc d                                            ; $500f: $8a
	inc de                                           ; $5010: $13
	cp e                                             ; $5011: $bb
	add l                                            ; $5012: $85
	or d                                             ; $5013: $b2
	db $ec                                           ; $5014: $ec
	db $ec                                           ; $5015: $ec
	ld e, a                                          ; $5016: $5f
	ld a, l                                          ; $5017: $7d
	db $ec                                           ; $5018: $ec
	call z, $fffe                                    ; $5019: $cc $fe $ff
	xor $2e                                          ; $501c: $ee $2e
	cp [hl]                                          ; $501e: $be
	xor $7e                                          ; $501f: $ee $7e
	cp $4e                                           ; $5021: $fe $4e
	ld a, $78                                        ; $5023: $3e $78
	ld b, c                                          ; $5025: $41
	rst SubAFromDE                                          ; $5026: $df
	ldh a, [$7b]                                     ; $5027: $f0 $7b
	ei                                               ; $5029: $fb
	ld a, [hl]                                       ; $502a: $7e
	add $9a                                          ; $502b: $c6 $9a
	ret nc                                           ; $502d: $d0

	ldh [$d4], a                                     ; $502e: $e0 $d4
	add sp, -$02                                     ; $5030: $e8 $fe
	ld h, d                                          ; $5032: $62
	ldh a, [$7c]                                     ; $5033: $f0 $7c
	ld b, h                                          ; $5035: $44
	rst SubAFromDE                                          ; $5036: $df
	ld [hl+], a                                      ; $5037: $22
	sbc e                                            ; $5038: $9b
	inc hl                                           ; $5039: $23
	jr nz, jr_042_505c                               ; $503a: $20 $20

	ldh [$d9], a                                     ; $503c: $e0 $d9
	rra                                              ; $503e: $1f
	sub a                                            ; $503f: $97
	jp Jump_042_60c0                                 ; $5040: $c3 $c0 $60


	ldh a, [$fa]                                     ; $5043: $f0 $fa
	ret nz                                           ; $5045: $c0

	rst $38                                          ; $5046: $ff
	or [hl]                                          ; $5047: $b6
	db $db                                           ; $5048: $db
	rst $38                                          ; $5049: $ff
	ld sp, hl                                        ; $504a: $f9
	sbc l                                            ; $504b: $9d
	rst $38                                          ; $504c: $ff
	ld [hl], a                                       ; $504d: $77
	ld h, a                                          ; $504e: $67
	ldh a, [$99]                                     ; $504f: $f0 $99
	ld e, a                                          ; $5051: $5f
	ld d, b                                          ; $5052: $50
	ld d, b                                          ; $5053: $50
	ld h, b                                          ; $5054: $60
	ld h, b                                          ; $5055: $60
	ld h, a                                          ; $5056: $67
	jp c, $9eff                                      ; $5057: $da $ff $9e

	ld hl, sp+$7b                                    ; $505a: $f8 $7b

jr_042_505c:
	and $7d                                          ; $505c: $e6 $7d
	call nz, $3d9a                                   ; $505e: $c4 $9a $3d
	di                                               ; $5061: $f3
	db $fc                                           ; $5062: $fc
	ld a, a                                          ; $5063: $7f
	rst AddAOntoHL                                          ; $5064: $ef
	ld a, e                                          ; $5065: $7b
	di                                               ; $5066: $f3
	ld [hl], c                                       ; $5067: $71
	inc l                                            ; $5068: $2c
	rst SubAFromDE                                          ; $5069: $df
	rst $38                                          ; $506a: $ff
	sbc c                                            ; $506b: $99
	rst JumpTable                                          ; $506c: $c7
	jp hl                                            ; $506d: $e9


	nop                                              ; $506e: $00
	nop                                              ; $506f: $00
	add b                                            ; $5070: $80
	cp a                                             ; $5071: $bf
	ld h, a                                          ; $5072: $67
	push bc                                          ; $5073: $c5
	ld a, l                                          ; $5074: $7d
	or a                                             ; $5075: $b7
	rst SubAFromDE                                          ; $5076: $df
	rst $38                                          ; $5077: $ff
	ld a, l                                          ; $5078: $7d
	and e                                            ; $5079: $a3
	ld e, a                                          ; $507a: $5f
	or l                                             ; $507b: $b5
	ld [hl], a                                       ; $507c: $77
	ld e, b                                          ; $507d: $58
	ld a, d                                          ; $507e: $7a
	push de                                          ; $507f: $d5
	ld a, l                                          ; $5080: $7d
	ldh a, [$67]                                     ; $5081: $f0 $67
	and [hl]                                         ; $5083: $a6
	reti                                             ; $5084: $d9


	rst $38                                          ; $5085: $ff
	dec hl                                           ; $5086: $2b
	ldh a, [$9d]                                     ; $5087: $f0 $9d
	ld sp, hl                                        ; $5089: $f9
	db $eb                                           ; $508a: $eb
	jp c, Jump_042_7dff                              ; $508b: $da $ff $7d

	inc hl                                           ; $508e: $23
	sbc [hl]                                         ; $508f: $9e
	ccf                                              ; $5090: $3f
	db $fd                                           ; $5091: $fd
	sbc l                                            ; $5092: $9d
	sbc a                                            ; $5093: $9f
	rst SubAFromHL                                          ; $5094: $d7
	ld h, a                                          ; $5095: $67
	add h                                            ; $5096: $84
	ld a, [hl]                                       ; $5097: $7e
	push af                                          ; $5098: $f5
	inc bc                                           ; $5099: $03
	ret nz                                           ; $509a: $c0

	cp $76                                           ; $509b: $fe $76
	jr c, jr_042_5119                                ; $509d: $38 $7a

	cp d                                             ; $509f: $ba
	ld a, l                                          ; $50a0: $7d
	db $10                                           ; $50a1: $10
	ld a, [$577d]                                    ; $50a2: $fa $7d $57
	rst SubAFromDE                                          ; $50a5: $df
	rst $38                                          ; $50a6: $ff
	ld a, l                                          ; $50a7: $7d
	ld h, e                                          ; $50a8: $63
	ld d, a                                          ; $50a9: $57
	ret nc                                           ; $50aa: $d0

	sbc c                                            ; $50ab: $99
	db $e3                                           ; $50ac: $e3
	sub a                                            ; $50ad: $97
	nop                                              ; $50ae: $00
	nop                                              ; $50af: $00
	ld bc, $63fd                                     ; $50b0: $01 $fd $63
	ldh a, [$7d]                                     ; $50b3: $f0 $7d
	ld b, h                                          ; $50b5: $44
	sbc e                                            ; $50b6: $9b
	cp h                                             ; $50b7: $bc
	rst GetHLinHL                                          ; $50b8: $cf
	ccf                                              ; $50b9: $3f
	cp $7b                                           ; $50ba: $fe $7b
	ld c, [hl]                                       ; $50bc: $4e
	sbc l                                            ; $50bd: $9d
	rra                                              ; $50be: $1f
	inc bc                                           ; $50bf: $03
	db $fd                                           ; $50c0: $fd
	sbc c                                            ; $50c1: $99
	ld a, [$0a0a]                                    ; $50c2: $fa $0a $0a
	ld b, $06                                        ; $50c5: $06 $06
	and $67                                          ; $50c7: $e6 $67
	ld a, h                                          ; $50c9: $7c
	ld h, d                                          ; $50ca: $62
	ldh a, [$9e]                                     ; $50cb: $f0 $9e
	xor $67                                          ; $50cd: $ee $67
	sbc e                                            ; $50cf: $9b
	sub a                                            ; $50d0: $97
	jp $0603                                         ; $50d1: $c3 $03 $06


	rrca                                             ; $50d4: $0f
	ld e, a                                          ; $50d5: $5f
	inc bc                                           ; $50d6: $03
	rst $38                                          ; $50d7: $ff
	ld l, l                                          ; $50d8: $6d
	ld h, a                                          ; $50d9: $67
	ldh a, [$2c]                                     ; $50da: $f0 $2c
	nop                                              ; $50dc: $00
	rst SubAFromHL                                          ; $50dd: $d7
	ld d, l                                          ; $50de: $55
	sbc l                                            ; $50df: $9d
	ld b, h                                          ; $50e0: $44
	ld b, l                                          ; $50e1: $45
	db $db                                           ; $50e2: $db
	ld d, l                                          ; $50e3: $55
	sbc [hl]                                         ; $50e4: $9e
	ld d, h                                          ; $50e5: $54
	sbc $44                                          ; $50e6: $de $44
	ccf                                              ; $50e8: $3f
	or $9d                                           ; $50e9: $f6 $9d
	ld [hl], a                                       ; $50eb: $77
	inc [hl]                                         ; $50ec: $34
	db $db                                           ; $50ed: $db
	ld b, h                                          ; $50ee: $44
	sbc h                                            ; $50ef: $9c
	ld d, e                                          ; $50f0: $53
	ld [hl], a                                       ; $50f1: $77
	ld b, a                                          ; $50f2: $47
	ld l, e                                          ; $50f3: $6b
	or $9c                                           ; $50f4: $f6 $9c
	ld b, e                                          ; $50f6: $43
	ld [hl], h                                       ; $50f7: $74
	ld b, a                                          ; $50f8: $47
	reti                                             ; $50f9: $d9


	inc sp                                           ; $50fa: $33
	ld d, a                                          ; $50fb: $57
	or $7f                                           ; $50fc: $f6 $7f
	ldh [c], a                                       ; $50fe: $e2
	db $dd                                           ; $50ff: $dd
	inc sp                                           ; $5100: $33
	ld [hl], a                                       ; $5101: $77
	ldh [c], a                                       ; $5102: $e2
	ld h, e                                          ; $5103: $63
	ret c                                            ; $5104: $d8

	rst SubAFromHL                                          ; $5105: $d7
	ld [hl], a                                       ; $5106: $77
	dec b                                            ; $5107: $05
	adc d                                            ; $5108: $8a
	sub a                                            ; $5109: $97
	ld [bc], a                                       ; $510a: $02
	ld [de], a                                       ; $510b: $12
	ld d, d                                          ; $510c: $52
	or d                                             ; $510d: $b2
	ld d, d                                          ; $510e: $52
	ldh a, [c]                                       ; $510f: $f2
	or d                                             ; $5110: $b2
	ldh a, [c]                                       ; $5111: $f2
	reti                                             ; $5112: $d9


	ld bc, $80df                                     ; $5113: $01 $df $80
	sbc c                                            ; $5116: $99
	push de                                          ; $5117: $d5
	xor d                                            ; $5118: $aa

jr_042_5119:
	push de                                          ; $5119: $d5
	rst $38                                          ; $511a: $ff
	xor d                                            ; $511b: $aa
	rst $38                                          ; $511c: $ff
	reti                                             ; $511d: $d9


	add b                                            ; $511e: $80
	rst $38                                          ; $511f: $ff
	sbc h                                            ; $5120: $9c
	ld d, l                                          ; $5121: $55
	xor d                                            ; $5122: $aa
	ld d, l                                          ; $5123: $55
	ld a, e                                          ; $5124: $7b
	ldh a, [$f7]                                     ; $5125: $f0 $f7
	ld c, a                                          ; $5127: $4f
	ldh a, [$8e]                                     ; $5128: $f0 $8e
	dec c                                            ; $512a: $0d
	ld de, $b27b                                     ; $512b: $11 $7b $b2
	halt                                             ; $512e: $76
	or $ed                                           ; $512f: $f6 $ed
	ei                                               ; $5131: $fb
	ld [bc], a                                       ; $5132: $02
	ld b, $04                                        ; $5133: $06 $04
	inc c                                            ; $5135: $0c
	add hl, bc                                       ; $5136: $09
	rrca                                             ; $5137: $0f
	ld a, [de]                                       ; $5138: $1a
	rla                                              ; $5139: $17
	or a                                             ; $513a: $b7
	sbc $77                                          ; $513b: $de $77
	sbc e                                            ; $513d: $9b
	cp $b6                                           ; $513e: $fe $b6
	cp e                                             ; $5140: $bb
	push de                                          ; $5141: $d5
	cp $92                                           ; $5142: $fe $92
	adc a                                            ; $5144: $8f
	ldh a, [$09]                                     ; $5145: $f0 $09
	ld a, a                                          ; $5147: $7f
	ei                                               ; $5148: $fb
	cp e                                             ; $5149: $bb
	cp e                                             ; $514a: $bb
	cp l                                             ; $514b: $bd
	cp l                                             ; $514c: $bd
	db $fc                                           ; $514d: $fc
	jp c, $e7f6                                      ; $514e: $da $f6 $e7

	cp $8a                                           ; $5151: $fe $8a
	ret nz                                           ; $5153: $c0

	ld a, $21                                        ; $5154: $3e $21
	ld sp, hl                                        ; $5156: $f9
	ccf                                              ; $5157: $3f
	or b                                             ; $5158: $b0
	xor b                                            ; $5159: $a8
	db $dd                                           ; $515a: $dd
	sbc $ef                                          ; $515b: $de $ef
	rst GetHLinHL                                          ; $515d: $cf
	rst AddAOntoHL                                          ; $515e: $ef
	ld a, a                                          ; $515f: $7f
	ld b, b                                          ; $5160: $40
	ld b, b                                          ; $5161: $40
	jr nz, jr_042_5184                               ; $5162: $20 $20

	db $10                                           ; $5164: $10
	ldh a, [$30]                                     ; $5165: $f0 $30
	sub b                                            ; $5167: $90
	ld [hl], a                                       ; $5168: $77
	or b                                             ; $5169: $b0
	sbc h                                            ; $516a: $9c
	rst $38                                          ; $516b: $ff
	ld d, l                                          ; $516c: $55
	rst $38                                          ; $516d: $ff
	ld d, e                                          ; $516e: $53
	and b                                            ; $516f: $a0
	inc bc                                           ; $5170: $03
	ldh a, [$57]                                     ; $5171: $f0 $57
	ldh a, [$98]                                     ; $5173: $f0 $98
	inc c                                            ; $5175: $0c
	ld d, h                                          ; $5176: $54
	xor h                                            ; $5177: $ac
	db $fc                                           ; $5178: $fc
	ld d, h                                          ; $5179: $54
	db $fc                                           ; $517a: $fc
	db $fc                                           ; $517b: $fc
	ld sp, hl                                        ; $517c: $f9
	rst SubAFromDE                                          ; $517d: $df
	ld h, e                                          ; $517e: $63
	adc [hl]                                         ; $517f: $8e
	ld h, c                                          ; $5180: $61
	ld h, h                                          ; $5181: $64
	ld h, a                                          ; $5182: $67
	ld a, a                                          ; $5183: $7f

jr_042_5184:
	ld [hl], a                                       ; $5184: $77
	ld a, a                                          ; $5185: $7f
	jr nz, jr_042_51a9                               ; $5186: $20 $21

	jr nz, jr_042_51aa                               ; $5188: $20 $20

	ld hl, $0021                                     ; $518a: $21 $21 $00
	nop                                              ; $518d: $00
	rst $38                                          ; $518e: $ff
	rst $38                                          ; $518f: $ff
	cp a                                             ; $5190: $bf
	sbc $ff                                          ; $5191: $de $ff
	sub l                                            ; $5193: $95
	db $fd                                           ; $5194: $fd
	ld a, [$cf3f]                                    ; $5195: $fa $3f $cf
	rra                                              ; $5198: $1f
	ld a, a                                          ; $5199: $7f
	db $fd                                           ; $519a: $fd
	ei                                               ; $519b: $fb
	ld l, b                                          ; $519c: $68
	ldh a, [$dd]                                     ; $519d: $f0 $dd
	rst $38                                          ; $519f: $ff
	ld a, a                                          ; $51a0: $7f
	add b                                            ; $51a1: $80
	sbc l                                            ; $51a2: $9d
	adc a                                            ; $51a3: $8f
	ld [hl], a                                       ; $51a4: $77
	db $dd                                           ; $51a5: $dd
	rst $38                                          ; $51a6: $ff
	sbc e                                            ; $51a7: $9b
	adc a                                            ; $51a8: $8f

jr_042_51a9:
	add a                                            ; $51a9: $87

jr_042_51aa:
	rlca                                             ; $51aa: $07
	rlca                                             ; $51ab: $07
	db $db                                           ; $51ac: $db
	rst $38                                          ; $51ad: $ff
	sbc [hl]                                         ; $51ae: $9e
	sbc a                                            ; $51af: $9f
	call c, $9bff                                    ; $51b0: $dc $ff $9b
	ei                                               ; $51b3: $fb
	sbc a                                            ; $51b4: $9f
	dec de                                           ; $51b5: $1b
	ld e, $dd                                        ; $51b6: $1e $dd
	rst $38                                          ; $51b8: $ff
	rst SubAFromDE                                          ; $51b9: $df
	db $fd                                           ; $51ba: $fd
	sbc l                                            ; $51bb: $9d
	sbc a                                            ; $51bc: $9f
	rra                                              ; $51bd: $1f
	ld [hl], a                                       ; $51be: $77
	db $eb                                           ; $51bf: $eb
	sbc b                                            ; $51c0: $98
	ld [de], a                                       ; $51c1: $12
	add d                                            ; $51c2: $82
	inc c                                            ; $51c3: $0c
	add hl, de                                       ; $51c4: $19
	rst $38                                          ; $51c5: $ff
	rst $38                                          ; $51c6: $ff
	ld sp, hl                                        ; $51c7: $f9
	db $dd                                           ; $51c8: $dd
	rst $38                                          ; $51c9: $ff
	adc [hl]                                         ; $51ca: $8e
	rst GetHLinHL                                          ; $51cb: $cf
	ldh a, [c]                                       ; $51cc: $f2
	db $fc                                           ; $51cd: $fc
	ld hl, sp-$08                                    ; $51ce: $f8 $f8
	ld a, e                                          ; $51d0: $7b
	inc a                                            ; $51d1: $3c
	rra                                              ; $51d2: $1f
	rst FarCall                                          ; $51d3: $f7
	nop                                              ; $51d4: $00
	nop                                              ; $51d5: $00
	ld h, b                                          ; $51d6: $60
	ldh [rP1], a                                     ; $51d7: $e0 $00
	db $ec                                           ; $51d9: $ec
	db $fc                                           ; $51da: $fc
	ret nz                                           ; $51db: $c0

	ei                                               ; $51dc: $fb
	adc d                                            ; $51dd: $8a
	ret nz                                           ; $51de: $c0

	add b                                            ; $51df: $80
	jp nc, $12d2                                     ; $51e0: $d2 $d2 $12

	jp nc, $92d2                                     ; $51e3: $d2 $d2 $92

	ld d, d                                          ; $51e6: $52
	sub b                                            ; $51e7: $90
	ld hl, $e121                                     ; $51e8: $21 $21 $e1
	ld hl, $6121                                     ; $51eb: $21 $21 $61
	and c                                            ; $51ee: $a1
	ld h, e                                          ; $51ef: $63
	rst $38                                          ; $51f0: $ff
	rst $38                                          ; $51f1: $ff
	add d                                            ; $51f2: $82
	sbc $ff                                          ; $51f3: $de $ff
	sbc e                                            ; $51f5: $9b
	rst SubAFromHL                                          ; $51f6: $d7
	adc e                                            ; $51f7: $8b
	add b                                            ; $51f8: $80
	add b                                            ; $51f9: $80
	halt                                             ; $51fa: $76
	cp l                                             ; $51fb: $bd
	sbc d                                            ; $51fc: $9a
	xor b                                            ; $51fd: $a8
	db $f4                                           ; $51fe: $f4
	rst $38                                          ; $51ff: $ff
	rst $38                                          ; $5200: $ff
	cp h                                             ; $5201: $bc
	sbc $fd                                          ; $5202: $de $fd
	sbc d                                            ; $5204: $9a
	cp c                                             ; $5205: $b9
	ld d, l                                          ; $5206: $55
	nop                                              ; $5207: $00
	nop                                              ; $5208: $00
	db $fd                                           ; $5209: $fd
	cp $9a                                           ; $520a: $fe $9a
	ld b, h                                          ; $520c: $44
	xor b                                            ; $520d: $a8
	rst $38                                          ; $520e: $ff
	rst $38                                          ; $520f: $ff
	rra                                              ; $5210: $1f
	sbc $bf                                          ; $5211: $de $bf
	sbc l                                            ; $5213: $9d
	or a                                             ; $5214: $b7
	xor d                                            ; $5215: $aa
	ld a, e                                          ; $5216: $7b
	ld h, [hl]                                       ; $5217: $66
	add b                                            ; $5218: $80
	ld b, b                                          ; $5219: $40
	ld h, b                                          ; $521a: $60
	ld h, b                                          ; $521b: $60
	ld l, b                                          ; $521c: $68
	ld [hl], l                                       ; $521d: $75
	add sp, -$02                                     ; $521e: $e8 $fe
	ei                                               ; $5220: $fb
	db $f4                                           ; $5221: $f4
	ld sp, hl                                        ; $5222: $f9
	cp [hl]                                          ; $5223: $be
	ld e, a                                          ; $5224: $5f
	rlca                                             ; $5225: $07
	rra                                              ; $5226: $1f
	ld bc, $0040                                     ; $5227: $01 $40 $00
	nop                                              ; $522a: $00
	ld b, b                                          ; $522b: $40
	and b                                            ; $522c: $a0
	ld hl, sp-$13                                    ; $522d: $f8 $ed
	dec d                                            ; $522f: $15
	ld a, b                                          ; $5230: $78
	call nc, $2572                                   ; $5231: $d4 $72 $25
	ld d, d                                          ; $5234: $52
	db $eb                                           ; $5235: $eb
	sub d                                            ; $5236: $92
	ld [$96fb], a                                    ; $5237: $ea $fb $96
	rst GetHLinHL                                          ; $523a: $cf
	and a                                            ; $523b: $a7
	call $f8aa                                       ; $523c: $cd $aa $f8
	and h                                            ; $523f: $a4
	res 5, a                                         ; $5240: $cb $af
	ld [hl-], a                                      ; $5242: $32
	ld a, [$af8f]                                    ; $5243: $fa $8f $af
	rst SubAFromDE                                          ; $5246: $df
	ccf                                              ; $5247: $3f
	sbc h                                            ; $5248: $9c
	ld a, b                                          ; $5249: $78
	ldh a, [$e5]                                     ; $524a: $f0 $e5
	ret nz                                           ; $524c: $c0

	ldh a, [rP1]                                     ; $524d: $f0 $00
	ld bc, $0703                                     ; $524f: $01 $03 $07
	rrca                                             ; $5252: $0f
	rra                                              ; $5253: $1f
	ccf                                              ; $5254: $3f
	sbc $ff                                          ; $5255: $de $ff
	sbc l                                            ; $5257: $9d
	ccf                                              ; $5258: $3f
	ld e, a                                          ; $5259: $5f
	ld a, e                                          ; $525a: $7b
	or h                                             ; $525b: $b4
	rst $38                                          ; $525c: $ff
	sbc h                                            ; $525d: $9c
	ld l, a                                          ; $525e: $6f
	ret nz                                           ; $525f: $c0

	and b                                            ; $5260: $a0
	call c, $91ff                                    ; $5261: $dc $ff $91
	ld hl, sp-$05                                    ; $5264: $f8 $fb
	ei                                               ; $5266: $fb
	ld a, e                                          ; $5267: $7b
	ei                                               ; $5268: $fb
	dec sp                                           ; $5269: $3b
	nop                                              ; $526a: $00
	nop                                              ; $526b: $00
	ei                                               ; $526c: $fb
	nop                                              ; $526d: $00
	nop                                              ; $526e: $00
	ldh a, [$e0]                                     ; $526f: $f0 $e0
	ldh [$7b], a                                     ; $5271: $e0 $7b
	pop hl                                           ; $5273: $e1
	sbc $3f                                          ; $5274: $de $3f
	sbc l                                            ; $5276: $9d
	dec hl                                           ; $5277: $2b
	dec h                                            ; $5278: $25
	ld a, e                                          ; $5279: $7b
	sub b                                            ; $527a: $90
	sbc $e0                                          ; $527b: $de $e0
	sbc l                                            ; $527d: $9d
	db $f4                                           ; $527e: $f4
	ld a, [$ffdb]                                    ; $527f: $fa $db $ff
	sbc l                                            ; $5282: $9d
	push af                                          ; $5283: $f5
	ld c, d                                          ; $5284: $4a
	ld a, e                                          ; $5285: $7b
	ldh a, [$fe]                                     ; $5286: $f0 $fe
	sbc l                                            ; $5288: $9d
	ld a, [bc]                                       ; $5289: $0a
	or l                                             ; $528a: $b5
	db $dd                                           ; $528b: $dd
	db $fc                                           ; $528c: $fc
	add e                                            ; $528d: $83
	db $f4                                           ; $528e: $f4
	db $ec                                           ; $528f: $ec
	ld b, h                                          ; $5290: $44
	inc b                                            ; $5291: $04
	nop                                              ; $5292: $00
	nop                                              ; $5293: $00
	ld hl, sp+$00                                    ; $5294: $f8 $00
	ld [$b810], sp                                   ; $5296: $08 $10 $b8
	ld hl, sp+$77                                    ; $5299: $f8 $77
	rst $38                                          ; $529b: $ff
	ld a, [hl]                                       ; $529c: $7e
	cp a                                             ; $529d: $bf
	cp $be                                           ; $529e: $fe $be
	sbc a                                            ; $52a0: $9f
	ccf                                              ; $52a1: $3f
	ld bc, $9c02                                     ; $52a2: $01 $02 $9c
	nop                                              ; $52a5: $00
	jr nz, jr_042_5326                               ; $52a6: $20 $7e

	ld l, h                                          ; $52a8: $6c
	ld d, $dd                                        ; $52a9: $16 $dd
	rst $38                                          ; $52ab: $ff
	add b                                            ; $52ac: $80
	db $fc                                           ; $52ad: $fc
	ld [hl], $bf                                     ; $52ae: $36 $bf
	rst $38                                          ; $52b0: $ff
	ldh a, [$fc]                                     ; $52b1: $f0 $fc
	rlca                                             ; $52b3: $07
	rra                                              ; $52b4: $1f
	ldh a, [$e0]                                     ; $52b5: $f0 $e0
	ret c                                            ; $52b7: $d8

	ld a, a                                          ; $52b8: $7f
	xor $fe                                          ; $52b9: $ee $fe
	sbc $ff                                          ; $52bb: $de $ff
	ld a, a                                          ; $52bd: $7f
	ld a, a                                          ; $52be: $7f
	rst GetHLinHL                                          ; $52bf: $cf
	sbc a                                            ; $52c0: $9f
	ld b, b                                          ; $52c1: $40
	ld c, c                                          ; $52c2: $49
	sbc a                                            ; $52c3: $9f
	ld a, $1e                                        ; $52c4: $3e $1e
	rra                                              ; $52c6: $1f
	sbc b                                            ; $52c7: $98
	sbc a                                            ; $52c8: $9f
	ld a, a                                          ; $52c9: $7f
	rst $38                                          ; $52ca: $ff
	ld a, a                                          ; $52cb: $7f
	adc h                                            ; $52cc: $8c
	ld a, e                                          ; $52cd: $7b
	cp $f3                                           ; $52ce: $fe $f3
	rst SubAFromBC                                          ; $52d0: $e7
	rst $38                                          ; $52d1: $ff
	ccf                                              ; $52d2: $3f
	rlca                                             ; $52d3: $07
	db $eb                                           ; $52d4: $eb
	nop                                              ; $52d5: $00
	db $10                                           ; $52d6: $10
	jr nz, jr_042_52dc                               ; $52d7: $20 $03

	sbc a                                            ; $52d9: $9f
	rst $38                                          ; $52da: $ff
	rst AddAOntoHL                                          ; $52db: $ef

jr_042_52dc:
	rst AddAOntoHL                                          ; $52dc: $ef
	rst $38                                          ; $52dd: $ff
	rst SubAFromBC                                          ; $52de: $e7
	sub a                                            ; $52df: $97
	sbc $ff                                          ; $52e0: $de $ff
	sub a                                            ; $52e2: $97
	rst SubAFromBC                                          ; $52e3: $e7
	rst JumpTable                                          ; $52e4: $c7
	rrca                                             ; $52e5: $0f
	inc bc                                           ; $52e6: $03
	inc bc                                           ; $52e7: $03
	rra                                              ; $52e8: $1f
	adc c                                            ; $52e9: $89
	db $db                                           ; $52ea: $db
	jp c, $82ff                                      ; $52eb: $da $ff $82

	ldh a, [$f3]                                     ; $52ee: $f0 $f3
	db $e3                                           ; $52f0: $e3
	ei                                               ; $52f1: $fb
	ld a, [$777a]                                    ; $52f2: $fa $7a $77

Jump_042_52f5:
	rst FarCall                                          ; $52f5: $f7
	rst $38                                          ; $52f6: $ff
	rst SubAFromDE                                          ; $52f7: $df
	ld hl, sp-$02                                    ; $52f8: $f8 $fe
	rst $38                                          ; $52fa: $ff
	set 1, a                                         ; $52fb: $cb $cf
	rst SubAFromHL                                          ; $52fd: $d7

jr_042_52fe:
	inc c                                            ; $52fe: $0c
	ret z                                            ; $52ff: $c8

	ret nc                                           ; $5300: $d0

	or b                                             ; $5301: $b0
	nop                                              ; $5302: $00
	ld [hl], b                                       ; $5303: $70
	rst $38                                          ; $5304: $ff
	rst $38                                          ; $5305: $ff
	db $10                                           ; $5306: $10
	ld [de], a                                       ; $5307: $12
	db $10                                           ; $5308: $10
	ld [de], a                                       ; $5309: $12
	ld [de], a                                       ; $530a: $12
	sbc $10                                          ; $530b: $de $10
	sbc d                                            ; $530d: $9a
	db $e3                                           ; $530e: $e3
	pop hl                                           ; $530f: $e1
	db $e3                                           ; $5310: $e3
	pop hl                                           ; $5311: $e1
	pop hl                                           ; $5312: $e1
	sbc $e3                                          ; $5313: $de $e3
	reti                                             ; $5315: $d9


	add b                                            ; $5316: $80
	reti                                             ; $5317: $d9


	rst $38                                          ; $5318: $ff
	reti                                             ; $5319: $d9


	ld bc, $fcd9                                     ; $531a: $01 $d9 $fc
	call c, $dea0                                    ; $531d: $dc $a0 $de
	jr nz, jr_042_52fe                               ; $5320: $20 $dc

	ld a, a                                          ; $5322: $7f
	sbc $ff                                          ; $5323: $de $ff
	sbc l                                            ; $5325: $9d

jr_042_5326:
	dec bc                                           ; $5326: $0b
	dec b                                            ; $5327: $05
	ei                                               ; $5328: $fb
	ld h, a                                          ; $5329: $67
	ld h, $7f                                        ; $532a: $26 $7f
	ld [hl], c                                       ; $532c: $71
	sub h                                            ; $532d: $94
	cp e                                             ; $532e: $bb
	dec d                                            ; $532f: $15
	ld a, [bc]                                       ; $5330: $0a
	nop                                              ; $5331: $00
	nop                                              ; $5332: $00
	ld [$8000], sp                                   ; $5333: $08 $00 $80
	ld b, h                                          ; $5336: $44
	ld [$7af5], a                                    ; $5337: $ea $f5 $7a
	dec d                                            ; $533a: $15
	ld a, [hl]                                       ; $533b: $7e
	inc sp                                           ; $533c: $33
	sbc h                                            ; $533d: $9c
	db $eb                                           ; $533e: $eb
	ld d, l                                          ; $533f: $55
	add l                                            ; $5340: $85
	sbc $25                                          ; $5341: $de $25
	sbc d                                            ; $5343: $9a
	nop                                              ; $5344: $00
	ld [bc], a                                       ; $5345: $02
	dec d                                            ; $5346: $15
	xor e                                            ; $5347: $ab
	ld a, e                                          ; $5348: $7b
	sbc $fb                                          ; $5349: $de $fb
	sub h                                            ; $534b: $94
	ld h, c                                          ; $534c: $61
	and l                                            ; $534d: $a5
	ld b, d                                          ; $534e: $42
	ldh [$c0], a                                     ; $534f: $e0 $c0
	add sp, -$0c                                     ; $5351: $e8 $f4
	rst $38                                          ; $5353: $ff
	sbc [hl]                                         ; $5354: $9e
	ld a, d                                          ; $5355: $7a
	db $fd                                           ; $5356: $fd
	call c, $87ff                                    ; $5357: $dc $ff $87
	ld b, l                                          ; $535a: $45
	ld d, [hl]                                       ; $535b: $56
	ld l, a                                          ; $535c: $6f
	ld d, [hl]                                       ; $535d: $56
	ld b, l                                          ; $535e: $45
	ld l, d                                          ; $535f: $6a
	ld [hl], l                                       ; $5360: $75
	ld a, l                                          ; $5361: $7d
	ld a, [$d0e9]                                    ; $5362: $fa $e9 $d0
	jp hl                                            ; $5365: $e9


	ld a, [$fffd]                                    ; $5366: $fa $fd $ff
	db $fc                                           ; $5369: $fc
	ld a, e                                          ; $536a: $7b
	ei                                               ; $536b: $fb
	ld a, e                                          ; $536c: $7b
	cp e                                             ; $536d: $bb
	ld a, e                                          ; $536e: $7b
	cp e                                             ; $536f: $bb
	ld a, d                                          ; $5370: $7a
	ld a, [$e0db]                                    ; $5371: $fa $db $e0
	rst SubAFromDE                                          ; $5374: $df
	pop hl                                           ; $5375: $e1
	reti                                             ; $5376: $d9


jr_042_5377:
	jr nz, @-$25                                     ; $5377: $20 $d9

	rst $38                                          ; $5379: $ff
	ld sp, hl                                        ; $537a: $f9
	reti                                             ; $537b: $d9


	rst $38                                          ; $537c: $ff
	rst SubAFromDE                                          ; $537d: $df
	inc b                                            ; $537e: $04
	db $dd                                           ; $537f: $dd
	ld b, $9d                                        ; $5380: $06 $9d
	dec b                                            ; $5382: $05
	inc b                                            ; $5383: $04
	db $db                                           ; $5384: $db
	ld hl, sp-$73                                    ; $5385: $f8 $8d
	ld a, [$dffb]                                    ; $5387: $fa $fb $df
	ld a, a                                          ; $538a: $7f
	rra                                              ; $538b: $1f
	ccf                                              ; $538c: $3f
	rlca                                             ; $538d: $07
	add $f8                                          ; $538e: $c6 $f8
	db $fc                                           ; $5390: $fc
	db $10                                           ; $5391: $10
	jr jr_042_53af                                   ; $5392: $18 $1b

	rlca                                             ; $5394: $07
	ld bc, $8000                                     ; $5395: $01 $00 $80
	jr c, jr_042_5377                                ; $5398: $38 $dd

	rst $38                                          ; $539a: $ff
	sbc e                                            ; $539b: $9b
	add b                                            ; $539c: $80
	call nz, $1fc4                                   ; $539d: $c4 $c4 $1f
	ld a, d                                          ; $53a0: $7a
	ld d, l                                          ; $53a1: $55
	sbc [hl]                                         ; $53a2: $9e
	sbc e                                            ; $53a3: $9b
	ld a, d                                          ; $53a4: $7a
	rra                                              ; $53a5: $1f
	add b                                            ; $53a6: $80
	rrca                                             ; $53a7: $0f
	rst $38                                          ; $53a8: $ff
	rst $38                                          ; $53a9: $ff
	rst SubAFromDE                                          ; $53aa: $df
	ld c, a                                          ; $53ab: $4f
	rst $38                                          ; $53ac: $ff
	ld [hl], b                                       ; $53ad: $70
	ld b, b                                          ; $53ae: $40

jr_042_53af:
	add a                                            ; $53af: $87
	rst $38                                          ; $53b0: $ff
	sbc [hl]                                         ; $53b1: $9e
	ld a, $bf                                        ; $53b2: $3e $bf
	ld a, h                                          ; $53b4: $7c
	jr nc, jr_042_53b7                               ; $53b5: $30 $00

jr_042_53b7:
	nop                                              ; $53b7: $00
	rst SubAFromBC                                          ; $53b8: $e7
	rst JumpTable                                          ; $53b9: $c7
	rst AddAOntoHL                                          ; $53ba: $ef
	rst $38                                          ; $53bb: $ff
	adc a                                            ; $53bc: $8f
	inc bc                                           ; $53bd: $03
	ld b, a                                          ; $53be: $47
	rst $38                                          ; $53bf: $ff
	ei                                               ; $53c0: $fb
	rst $38                                          ; $53c1: $ff
	dec de                                           ; $53c2: $1b
	rst AddAOntoHL                                          ; $53c3: $ef
	add b                                            ; $53c4: $80
	nop                                              ; $53c5: $00
	sbc e                                            ; $53c6: $9b
	inc bc                                           ; $53c7: $03
	ld bc, $fbfb                                     ; $53c8: $01 $fb $fb
	db $dd                                           ; $53cb: $dd
	rst $38                                          ; $53cc: $ff
	sbc l                                            ; $53cd: $9d
	rst FarCall                                          ; $53ce: $f7
	di                                               ; $53cf: $f3
	sbc $e1                                          ; $53d0: $de $e1
	ld a, [hl]                                       ; $53d2: $7e
	ld a, e                                          ; $53d3: $7b
	sbc b                                            ; $53d4: $98
	ccf                                              ; $53d5: $3f
	inc sp                                           ; $53d6: $33
	pop hl                                           ; $53d7: $e1
	ccf                                              ; $53d8: $3f
	ld a, a                                          ; $53d9: $7f
	db $fc                                           ; $53da: $fc
	db $fc                                           ; $53db: $fc
	ld a, c                                          ; $53dc: $79
	ld a, [hl]                                       ; $53dd: $7e
	sbc d                                            ; $53de: $9a
	db $fc                                           ; $53df: $fc
	rst AddAOntoHL                                          ; $53e0: $ef
	rst GetHLinHL                                          ; $53e1: $cf
	rst SubAFromDE                                          ; $53e2: $df
	dec sp                                           ; $53e3: $3b
	ld a, d                                          ; $53e4: $7a
	inc h                                            ; $53e5: $24
	sbc [hl]                                         ; $53e6: $9e

jr_042_53e7:
	ld hl, sp+$73                                    ; $53e7: $f8 $73
	dec e                                            ; $53e9: $1d
	sbc $ff                                          ; $53ea: $de $ff
	rst SubAFromDE                                          ; $53ec: $df
	cp $9a                                           ; $53ed: $fe $9a
	di                                               ; $53ef: $f3
	ldh a, [$fe]                                     ; $53f0: $f0 $fe
	rst $38                                          ; $53f2: $ff
	rst FarCall                                          ; $53f3: $f7
	ld l, e                                          ; $53f4: $6b
	ld l, a                                          ; $53f5: $6f
	ld h, e                                          ; $53f6: $63
	ld l, b                                          ; $53f7: $68
	inc bc                                           ; $53f8: $03
	ldh a, [$37]                                     ; $53f9: $f0 $37
	ldh a, [$7d]                                     ; $53fb: $f0 $7d
	or [hl]                                          ; $53fd: $b6
	sbc [hl]                                         ; $53fe: $9e
	cp $75                                           ; $53ff: $fe $75
	ld h, e                                          ; $5401: $63

Call_042_5402:
	db $fd                                           ; $5402: $fd
	sub l                                            ; $5403: $95
	ld hl, sp-$14                                    ; $5404: $f8 $ec
	inc c                                            ; $5406: $0c
	ld c, h                                          ; $5407: $4c
	adc h                                            ; $5408: $8c
	xor h                                            ; $5409: $ac
	ld l, h                                          ; $540a: $6c
	rst AddAOntoHL                                          ; $540b: $ef
	ld b, b                                          ; $540c: $40
	rlca                                             ; $540d: $07
	call c, $9d03                                    ; $540e: $dc $03 $9d
	ld [$db8f], sp                                   ; $5411: $08 $8f $db
	dec h                                            ; $5414: $25
	ld a, a                                          ; $5415: $7f
	adc l                                            ; $5416: $8d
	db $db                                           ; $5417: $db
	ei                                               ; $5418: $fb
	ld a, a                                          ; $5419: $7f
	cpl                                              ; $541a: $2f
	jp c, Jump_042_6bff                              ; $541b: $da $ff $6b

	ld hl, sp-$73                                    ; $541e: $f8 $8d
	nop                                              ; $5420: $00
	ld a, a                                          ; $5421: $7f
	ld a, b                                          ; $5422: $78
	ld a, h                                          ; $5423: $7c
	ld a, l                                          ; $5424: $7d
	ld a, b                                          ; $5425: $78
	ld a, c                                          ; $5426: $79
	ld [hl], e                                       ; $5427: $73
	xor c                                            ; $5428: $a9
	ld e, c                                          ; $5429: $59
	db $fd                                           ; $542a: $fd
	ld sp, hl                                        ; $542b: $f9
	ld sp, hl                                        ; $542c: $f9
	pop af                                           ; $542d: $f1
	pop af                                           ; $542e: $f1
	pop hl                                           ; $542f: $e1
	ld b, e                                          ; $5430: $43
	add e                                            ; $5431: $83
	inc bc                                           ; $5432: $03
	sub b                                            ; $5433: $90
	ld b, a                                          ; $5434: $47
	ldh a, [$df]                                     ; $5435: $f0 $df
	ld bc, $1c9a                                     ; $5437: $01 $9a $1c
	ccf                                              ; $543a: $3f
	dec a                                            ; $543b: $3d
	rst FarCall                                          ; $543c: $f7
	call c, $8afe                                    ; $543d: $dc $fe $8a
	db $10                                           ; $5440: $10
	ld [$3f0d], sp                                   ; $5441: $08 $0d $3f
	cp h                                             ; $5444: $bc
	db $fd                                           ; $5445: $fd
	adc a                                            ; $5446: $8f
	sbc a                                            ; $5447: $9f
	rst $38                                          ; $5448: $ff
	dec bc                                           ; $5449: $0b
	rst SubAFromHL                                          ; $544a: $d7
	pop hl                                           ; $544b: $e1
	db $e3                                           ; $544c: $e3
	inc b                                            ; $544d: $04
	pop hl                                           ; $544e: $e1
	pop hl                                           ; $544f: $e1
	rra                                              ; $5450: $1f
	inc bc                                           ; $5451: $03
	jp nz, $1850                                     ; $5452: $c2 $50 $18

	db $dd                                           ; $5455: $dd
	rst $38                                          ; $5456: $ff
	sbc l                                            ; $5457: $9d
	or a                                             ; $5458: $b7
	sbc e                                            ; $5459: $9b
	ld a, e                                          ; $545a: $7b
	inc c                                            ; $545b: $0c
	sbc b                                            ; $545c: $98
	ld a, a                                          ; $545d: $7f
	cp $e2                                           ; $545e: $fe $e2
	ld [bc], a                                       ; $5460: $02
	ld bc, $c5c5                                     ; $5461: $01 $c5 $c5
	ld a, c                                          ; $5464: $79
	jr nc, jr_042_53e7                               ; $5465: $30 $80

	cp a                                             ; $5467: $bf
	ccf                                              ; $5468: $3f
	rst SubAFromDE                                          ; $5469: $df
	sbc a                                            ; $546a: $9f
	rst $38                                          ; $546b: $ff
	add a                                            ; $546c: $87
	rra                                              ; $546d: $1f
	dec e                                            ; $546e: $1d
	inc de                                           ; $546f: $13
	ld [de], a                                       ; $5470: $12
	ld a, h                                          ; $5471: $7c
	pop hl                                           ; $5472: $e1
	db $e3                                           ; $5473: $e3
	add e                                            ; $5474: $83
	rst FarCall                                          ; $5475: $f7
	di                                               ; $5476: $f3
	push af                                          ; $5477: $f5
	ei                                               ; $5478: $fb
	ei                                               ; $5479: $fb
	di                                               ; $547a: $f3
	db $fd                                           ; $547b: $fd
	inc bc                                           ; $547c: $03
	ld h, e                                          ; $547d: $63
	rst SubAFromBC                                          ; $547e: $e7
	di                                               ; $547f: $f3
	ld [hl], b                                       ; $5480: $70
	ld [hl], l                                       ; $5481: $75
	ld a, [hl]                                       ; $5482: $7e
	add b                                            ; $5483: $80
	rst $38                                          ; $5484: $ff
	add e                                            ; $5485: $83
	sbc h                                            ; $5486: $9c
	jp $ebe3                                         ; $5487: $c3 $e3 $eb


	sbc $ff                                          ; $548a: $de $ff
	add h                                            ; $548c: $84
	ldh a, [c]                                       ; $548d: $f2
	ldh a, [$a0]                                     ; $548e: $f0 $a0
	ld h, b                                          ; $5490: $60
	ld h, e                                          ; $5491: $63
	sbc l                                            ; $5492: $9d
	ld a, h                                          ; $5493: $7c
	rst $38                                          ; $5494: $ff
	ccf                                              ; $5495: $3f
	cp $27                                           ; $5496: $fe $27
	ld h, a                                          ; $5498: $67
	ei                                               ; $5499: $fb
	rst $38                                          ; $549a: $ff
	rst SubAFromDE                                          ; $549b: $df
	rst $38                                          ; $549c: $ff
	nop                                              ; $549d: $00
	or b                                             ; $549e: $b0
	inc e                                            ; $549f: $1c
	ccf                                              ; $54a0: $3f
	rst AddAOntoHL                                          ; $54a1: $ef
	rst $38                                          ; $54a2: $ff
	rrca                                             ; $54a3: $0f
	rrca                                             ; $54a4: $0f
	sbc a                                            ; $54a5: $9f
	rrca                                             ; $54a6: $0f
	ld a, e                                          ; $54a7: $7b
	ld a, d                                          ; $54a8: $7a
	call nz, $ffdf                                   ; $54a9: $c4 $df $ff
	sbc d                                            ; $54ac: $9a
	ld l, h                                          ; $54ad: $6c
	ld [hl], e                                       ; $54ae: $73
	inc bc                                           ; $54af: $03
	jp $7ab4                                         ; $54b0: $c3 $b4 $7a


	pop bc                                           ; $54b3: $c1
	sub a                                            ; $54b4: $97
	rst AddAOntoHL                                          ; $54b5: $ef
	db $e3                                           ; $54b6: $e3
	ldh [$f8], a                                     ; $54b7: $e0 $f8
	db $fc                                           ; $54b9: $fc
	ldh a, [c]                                       ; $54ba: $f2
	ld d, c                                          ; $54bb: $51
	ld sp, $4e75                                     ; $54bc: $31 $75 $4e
	sbc e                                            ; $54bf: $9b
	db $e3                                           ; $54c0: $e3
	ld bc, $c0a0                                     ; $54c1: $01 $a0 $c0
	db $db                                           ; $54c4: $db
	rst $38                                          ; $54c5: $ff
	sbc l                                            ; $54c6: $9d
	cp e                                             ; $54c7: $bb
	sub l                                            ; $54c8: $95
	ld l, a                                          ; $54c9: $6f
	ld a, [de]                                       ; $54ca: $1a
	sbc l                                            ; $54cb: $9d
	call nz, $dbea                                   ; $54cc: $c4 $ea $db
	rst $38                                          ; $54cf: $ff
	sbc l                                            ; $54d0: $9d
	jp c, Jump_042_6fa4                              ; $54d1: $da $a4 $6f

	ld de, $259d                                     ; $54d4: $11 $9d $25
	ld e, e                                          ; $54d7: $5b
	call c, $9dff                                    ; $54d8: $dc $ff $9d
	cp $98                                           ; $54db: $fe $98
	ld l, e                                          ; $54dd: $6b
	ld bc, $6083                                     ; $54de: $01 $83 $60
	ldh a, [$fb]                                     ; $54e1: $f0 $fb
	rst FarCall                                          ; $54e3: $f7
	rst AddAOntoHL                                          ; $54e4: $ef
	sbc $bd                                          ; $54e5: $de $bd
	ld a, e                                          ; $54e7: $7b
	rst FarCall                                          ; $54e8: $f7
	rst AddAOntoHL                                          ; $54e9: $ef
	pop af                                           ; $54ea: $f1
	db $e3                                           ; $54eb: $e3
	rst JumpTable                                          ; $54ec: $c7
	adc [hl]                                         ; $54ed: $8e
	dec e                                            ; $54ee: $1d
	inc bc                                           ; $54ef: $03
	inc b                                            ; $54f0: $04
	rrca                                             ; $54f1: $0f
	sbc a                                            ; $54f2: $9f
	jr c, @+$81                                      ; $54f3: $38 $7f

	ldh a, [rIE]                                     ; $54f5: $f0 $ff
	ret nz                                           ; $54f7: $c0

	cp $80                                           ; $54f8: $fe $80
	ret nz                                           ; $54fa: $c0

	cp a                                             ; $54fb: $bf
	ld a, b                                          ; $54fc: $78
	sbc a                                            ; $54fd: $9f
	ld a, e                                          ; $54fe: $7b
	cp $7c                                           ; $54ff: $fe $7c
	xor d                                            ; $5501: $aa
	sbc d                                            ; $5502: $9a
	ldh [rP1], a                                     ; $5503: $e0 $00
	add c                                            ; $5505: $81
	nop                                              ; $5506: $00
	inc bc                                           ; $5507: $03
	ld [hl], h                                       ; $5508: $74
	sub c                                            ; $5509: $91
	ld [hl], e                                       ; $550a: $73
	cp $80                                           ; $550b: $fe $80
	ld e, $00                                        ; $550d: $1e $00
	ld a, a                                          ; $550f: $7f
	nop                                              ; $5510: $00
	cp $00                                           ; $5511: $fe $00
	db $fd                                           ; $5513: $fd
	ld [bc], a                                       ; $5514: $02
	ld bc, $01ff                                     ; $5515: $01 $ff $01
	rst $38                                          ; $5518: $ff
	ld [bc], a                                       ; $5519: $02
	cp $04                                           ; $551a: $fe $04
	ld sp, hl                                        ; $551c: $f9
	inc de                                           ; $551d: $13
	daa                                              ; $551e: $27
	sub e                                            ; $551f: $93
	ld c, a                                          ; $5520: $4f
	and a                                            ; $5521: $a7
	rlca                                             ; $5522: $07
	ld e, a                                          ; $5523: $5f
	xor a                                            ; $5524: $af
	jp $2793                                         ; $5525: $c3 $93 $27


	daa                                              ; $5528: $27
	ld c, a                                          ; $5529: $4f
	rst GetHLinHL                                          ; $552a: $cf
	adc a                                            ; $552b: $8f
	sbc [hl]                                         ; $552c: $9e
	rra                                              ; $552d: $1f
	call c, $9cff                                    ; $552e: $dc $ff $9c
	rst AddAOntoHL                                          ; $5531: $ef
	ld a, [$6cf4]                                    ; $5532: $fa $f4 $6c
	bit 7, a                                         ; $5535: $cb $7f
	dec h                                            ; $5537: $25
	db $db                                           ; $5538: $db
	rst $38                                          ; $5539: $ff
	sbc l                                            ; $553a: $9d
	xor l                                            ; $553b: $ad
	ld d, d                                          ; $553c: $52
	ld l, a                                          ; $553d: $6f
	sub b                                            ; $553e: $90
	sbc l                                            ; $553f: $9d
	ld d, d                                          ; $5540: $52
	xor l                                            ; $5541: $ad
	db $db                                           ; $5542: $db
	rst $38                                          ; $5543: $ff
	sbc l                                            ; $5544: $9d
	ld l, d                                          ; $5545: $6a
	sub c                                            ; $5546: $91
	ld l, a                                          ; $5547: $6f
	ldh a, [$9c]                                     ; $5548: $f0 $9c
	sub l                                            ; $554a: $95
	ld l, [hl]                                       ; $554b: $6e
	rst SubAFromDE                                          ; $554c: $df
	ld a, e                                          ; $554d: $7b
	inc a                                            ; $554e: $3c
	sbc [hl]                                         ; $554f: $9e
	db $fc                                           ; $5550: $fc
	ld a, d                                          ; $5551: $7a
	pop hl                                           ; $5552: $e1
	sub a                                            ; $5553: $97
	sbc e                                            ; $5554: $9b
	rst FarCall                                          ; $5555: $f7
	cp $f8                                           ; $5556: $fe $f8
	ldh [$6c], a                                     ; $5558: $e0 $6c
	rra                                              ; $555a: $1f
	rlca                                             ; $555b: $07
	sbc $ff                                          ; $555c: $de $ff
	sbc [hl]                                         ; $555e: $9e
	cp a                                             ; $555f: $bf
	ld [hl], a                                       ; $5560: $77
	cp e                                             ; $5561: $bb
	sub [hl]                                         ; $5562: $96
	db $e3                                           ; $5563: $e3
	rst SubAFromDE                                          ; $5564: $df
	rst SubAFromDE                                          ; $5565: $df
	ld [hl], e                                       ; $5566: $73
	ld [hl], a                                       ; $5567: $77
	halt                                             ; $5568: $76
	rst AddAOntoHL                                          ; $5569: $ef
	rst $38                                          ; $556a: $ff
	sbc l                                            ; $556b: $9d
	ld l, a                                          ; $556c: $6f
	xor a                                            ; $556d: $af
	sub [hl]                                         ; $556e: $96
	db $e3                                           ; $556f: $e3
	dec c                                            ; $5570: $0d
	adc b                                            ; $5571: $88
	db $fc                                           ; $5572: $fc
	cp $fc                                           ; $5573: $fe $fc
	ld sp, hl                                        ; $5575: $f9
	rst JumpTable                                          ; $5576: $c7
	adc $73                                          ; $5577: $ce $73
	ld b, c                                          ; $5579: $41
	sbc l                                            ; $557a: $9d
	rst $38                                          ; $557b: $ff
	rst GetHLinHL                                          ; $557c: $cf
	ld a, e                                          ; $557d: $7b
	jp c, $bf89                                      ; $557e: $da $89 $bf

	ld h, b                                          ; $5581: $60
	add hl, bc                                       ; $5582: $09
	sbc a                                            ; $5583: $9f
	rrca                                             ; $5584: $0f
	daa                                              ; $5585: $27
	reti                                             ; $5586: $d9


	ei                                               ; $5587: $fb
	or a                                             ; $5588: $b7
	add a                                            ; $5589: $87
	rst AddAOntoHL                                          ; $558a: $ef
	cp $fd                                           ; $558b: $fe $fd
	ei                                               ; $558d: $fb
	add b                                            ; $558e: $80
	or d                                             ; $558f: $b2
	rst FarCall                                          ; $5590: $f7
	ld l, a                                          ; $5591: $6f
	rst GetHLinHL                                          ; $5592: $cf
	sbc h                                            ; $5593: $9c
	nop                                              ; $5594: $00
	pop bc                                           ; $5595: $c1
	halt                                             ; $5596: $76
	ld hl, sp+$7f                                    ; $5597: $f8 $7f
	inc sp                                           ; $5599: $33

Jump_042_559a:
	ld [hl], c                                       ; $559a: $71
	sbc e                                            ; $559b: $9b
	sbc e                                            ; $559c: $9b
	db $fd                                           ; $559d: $fd
	sub h                                            ; $559e: $94
	nop                                              ; $559f: $00
	ld d, e                                          ; $55a0: $53
	ld [hl], a                                       ; $55a1: $77
	or b                                             ; $55a2: $b0
	db $dd                                           ; $55a3: $dd
	rst $38                                          ; $55a4: $ff
	ld a, [hl]                                       ; $55a5: $7e
	adc a                                            ; $55a6: $8f
	ld a, [hl]                                       ; $55a7: $7e
	cp h                                             ; $55a8: $bc
	ld a, l                                          ; $55a9: $7d
	ld [hl], b                                       ; $55aa: $70
	sbc l                                            ; $55ab: $9d
	rst FarCall                                          ; $55ac: $f7
	ccf                                              ; $55ad: $3f
	ld a, c                                          ; $55ae: $79
	ld a, h                                          ; $55af: $7c
	ld [hl], l                                       ; $55b0: $75
	ld h, c                                          ; $55b1: $61
	ld a, e                                          ; $55b2: $7b
	adc e                                            ; $55b3: $8b
	call c, Call_042_7eff                            ; $55b4: $dc $ff $7e
	xor b                                            ; $55b7: $a8
	jp c, $9e11                                      ; $55b8: $da $11 $9e

	inc de                                           ; $55bb: $13
	reti                                             ; $55bc: $d9


	ldh [$de], a                                     ; $55bd: $e0 $de
	add b                                            ; $55bf: $80
	sbc [hl]                                         ; $55c0: $9e
	add c                                            ; $55c1: $81
	ld l, b                                          ; $55c2: $68
	ld b, b                                          ; $55c3: $40
	call c, $defe                                    ; $55c4: $dc $fe $de
	ld bc, $f47e                                     ; $55c7: $01 $7e $f4
	sbc h                                            ; $55ca: $9c
	add e                                            ; $55cb: $83
	sbc l                                            ; $55cc: $9d
	ret c                                            ; $55cd: $d8

	ld a, e                                          ; $55ce: $7b
	pop af                                           ; $55cf: $f1
	sbc c                                            ; $55d0: $99
	ld a, b                                          ; $55d1: $78
	rlca                                             ; $55d2: $07
	ld e, a                                          ; $55d3: $5f
	ld c, [hl]                                       ; $55d4: $4e
	dec bc                                           ; $55d5: $0b
	adc l                                            ; $55d6: $8d
	ld a, e                                          ; $55d7: $7b
	rst FarCall                                          ; $55d8: $f7
	ld a, a                                          ; $55d9: $7f
	dec hl                                           ; $55da: $2b
	adc d                                            ; $55db: $8a
	ld bc, $ccbe                                     ; $55dc: $01 $be $cc
	db $fc                                           ; $55df: $fc
	db $fc                                           ; $55e0: $fc
	ld a, b                                          ; $55e1: $78
	ld [hl], a                                       ; $55e2: $77
	add a                                            ; $55e3: $87
	rrca                                             ; $55e4: $0f
	ld bc, $bedf                                     ; $55e5: $01 $df $be
	ld a, a                                          ; $55e8: $7f
	ld hl, sp-$01                                    ; $55e9: $f8 $ff
	ldh [rIE], a                                     ; $55eb: $e0 $ff
	add b                                            ; $55ed: $80
	db $10                                           ; $55ee: $10
	ccf                                              ; $55ef: $3f
	ld b, b                                          ; $55f0: $40
	ld a, d                                          ; $55f1: $7a
	ldh [c], a                                       ; $55f2: $e2
	ld a, a                                          ; $55f3: $7f
	ret                                              ; $55f4: $c9


	sbc d                                            ; $55f5: $9a
	db $fc                                           ; $55f6: $fc
	nop                                              ; $55f7: $00
	ldh a, [rP1]                                     ; $55f8: $f0 $00
	ret nz                                           ; $55fa: $c0

	ld [hl], c                                       ; $55fb: $71
	and $6f                                          ; $55fc: $e6 $6f
	cp $9a                                           ; $55fe: $fe $9a
	rlca                                             ; $5600: $07
	nop                                              ; $5601: $00
	rra                                              ; $5602: $1f
	nop                                              ; $5603: $00
	ld a, [hl]                                       ; $5604: $7e
	ld a, d                                          ; $5605: $7a
	adc $7b                                          ; $5606: $ce $7b
	db $f4                                           ; $5608: $f4
	ld a, a                                          ; $5609: $7f
	ei                                               ; $560a: $fb
	ld a, e                                          ; $560b: $7b
	cp $8c                                           ; $560c: $fe $8c
	or $00                                           ; $560e: $f6 $00
	ld l, h                                          ; $5610: $6c
	ld d, d                                          ; $5611: $52
	ld a, l                                          ; $5612: $7d
	ld c, d                                          ; $5613: $4a
	ld h, l                                          ; $5614: $65
	ld l, e                                          ; $5615: $6b
	ld de, $22f7                                     ; $5616: $11 $f7 $22
	inc c                                            ; $5619: $0c
	nop                                              ; $561a: $00
	ld sp, $0713                                     ; $561b: $31 $13 $07
	sbc a                                            ; $561e: $9f
	ld a, a                                          ; $561f: $7f
	ccf                                              ; $5620: $3f
	ld [hl], h                                       ; $5621: $74
	pop af                                           ; $5622: $f1
	ld a, [hl]                                       ; $5623: $7e
	jr jr_042_5695                                   ; $5624: $18 $6f

jr_042_5626:
	ld sp, hl                                        ; $5626: $f9
	ld a, [hl]                                       ; $5627: $7e
	sub b                                            ; $5628: $90
	sbc d                                            ; $5629: $9a
	db $fc                                           ; $562a: $fc
	sbc $9a                                          ; $562b: $de $9a
	rst SubAFromBC                                          ; $562d: $e7
	rst FarCall                                          ; $562e: $f7
	ld [hl], a                                       ; $562f: $77
	ld d, b                                          ; $5630: $50
	sbc e                                            ; $5631: $9b
	rst $38                                          ; $5632: $ff
	rst JumpTable                                          ; $5633: $c7
	rst $38                                          ; $5634: $ff
	cp a                                             ; $5635: $bf
	ld [hl], l                                       ; $5636: $75
	and c                                            ; $5637: $a1
	sbc $03                                          ; $5638: $de $03
	rst SubAFromDE                                          ; $563a: $df
	add d                                            ; $563b: $82
	ld a, e                                          ; $563c: $7b
	jr z, jr_042_56bd                                ; $563d: $28 $7e

	jp c, $ff7e                                      ; $563f: $da $7e $ff

	ld a, [hl]                                       ; $5642: $7e
	db $fc                                           ; $5643: $fc
	ld a, a                                          ; $5644: $7f
	ld e, a                                          ; $5645: $5f
	sub l                                            ; $5646: $95
	ldh [$f0], a                                     ; $5647: $e0 $f0
	db $10                                           ; $5649: $10
	ldh a, [rAUD1SWEEP]                              ; $564a: $f0 $10
	jr nz, @+$01                                     ; $564c: $20 $ff

	rra                                              ; $564e: $1f
	rst $38                                          ; $564f: $ff
	rra                                              ; $5650: $1f
	sbc $0f                                          ; $5651: $de $0f
	halt                                             ; $5653: $76
	push de                                          ; $5654: $d5
	add b                                            ; $5655: $80
	ld [hl], e                                       ; $5656: $73
	ld h, b                                          ; $5657: $60
	ldh a, [$e0]                                     ; $5658: $f0 $e0
	inc hl                                           ; $565a: $23
	ld b, b                                          ; $565b: $40
	ret z                                            ; $565c: $c8

	sbc c                                            ; $565d: $99
	jr nz, jr_042_5626                               ; $565e: $20 $c6

	ld [bc], a                                       ; $5660: $02
	nop                                              ; $5661: $00
	ret nz                                           ; $5662: $c0

	ld hl, sp+$7f                                    ; $5663: $f8 $7f
	rst FarCall                                          ; $5665: $f7
	inc hl                                           ; $5666: $23
	inc de                                           ; $5667: $13
	scf                                              ; $5668: $37
	rst $38                                          ; $5669: $ff
	ld [$7ff0], a                                    ; $566a: $ea $f0 $7f
	rst AddAOntoHL                                          ; $566d: $ef
	rra                                              ; $566e: $1f
	dec b                                            ; $566f: $05
	add hl, bc                                       ; $5670: $09
	ld [hl], c                                       ; $5671: $71
	ldh [rIE], a                                     ; $5672: $e0 $ff
	rst $38                                          ; $5674: $ff
	sub c                                            ; $5675: $91
	ei                                               ; $5676: $fb
	ldh a, [$e1]                                     ; $5677: $f0 $e1
	rst AddAOntoHL                                          ; $5679: $ef
	rst $38                                          ; $567a: $ff
	rst $38                                          ; $567b: $ff
	ld a, h                                          ; $567c: $7c
	or $f0                                           ; $567d: $f6 $f0
	ldh [$c0], a                                     ; $567f: $e0 $c0
	pop bc                                           ; $5681: $c1
	ldh [c], a                                       ; $5682: $e2
	sbc [hl]                                         ; $5683: $9e
	ld [hl], e                                       ; $5684: $73
	dec bc                                           ; $5685: $0b
	ld a, b                                          ; $5686: $78
	ld d, d                                          ; $5687: $52
	rst SubAFromDE                                          ; $5688: $df
	rst $38                                          ; $5689: $ff
	sbc c                                            ; $568a: $99
	push af                                          ; $568b: $f5
	ld c, $5e                                        ; $568c: $0e $5e
	rst $38                                          ; $568e: $ff
	rst FarCall                                          ; $568f: $f7
	ld [hl], h                                       ; $5690: $74
	ld a, e                                          ; $5691: $7b
	push hl                                          ; $5692: $e5
	rst SubAFromDE                                          ; $5693: $df
	ccf                                              ; $5694: $3f

jr_042_5695:
	rst SubAFromDE                                          ; $5695: $df
	rst $38                                          ; $5696: $ff
	sub e                                            ; $5697: $93
	db $ec                                           ; $5698: $ec
	pop bc                                           ; $5699: $c1
	ld e, l                                          ; $569a: $5d
	ld a, l                                          ; $569b: $7d
	ld [hl], l                                       ; $569c: $75
	ld [hl], a                                       ; $569d: $77
	dec e                                            ; $569e: $1d
	ld b, c                                          ; $569f: $41
	inc bc                                           ; $56a0: $03
	rst SubAFromBC                                          ; $56a1: $e7
	pop hl                                           ; $56a2: $e1
	db $fd                                           ; $56a3: $fd
	call c, Call_042_7fff                            ; $56a4: $dc $ff $7f
	rst FarCall                                          ; $56a7: $f7
	ld a, d                                          ; $56a8: $7a
	call c, $fe9c                                    ; $56a9: $dc $9c $fe
	sbc c                                            ; $56ac: $99
	add hl, bc                                       ; $56ad: $09
	ld a, e                                          ; $56ae: $7b
	db $d3                                           ; $56af: $d3
	rst SubAFromDE                                          ; $56b0: $df
	rst $38                                          ; $56b1: $ff
	sbc [hl]                                         ; $56b2: $9e
	ld e, $73                                        ; $56b3: $1e $73
	ld a, [$ff9b]                                    ; $56b5: $fa $9b $ff
	ld a, [hl]                                       ; $56b8: $7e
	ld a, l                                          ; $56b9: $7d
	db $eb                                           ; $56ba: $eb
	ld [hl], a                                       ; $56bb: $77
	ld l, b                                          ; $56bc: $68

jr_042_56bd:
	halt                                             ; $56bd: $76
	ld [hl], b                                       ; $56be: $70
	halt                                             ; $56bf: $76
	ld e, c                                          ; $56c0: $59
	ld l, [hl]                                       ; $56c1: $6e
	cp a                                             ; $56c2: $bf
	sbc [hl]                                         ; $56c3: $9e
	ld c, $fd                                        ; $56c4: $0e $fd
	sbc l                                            ; $56c6: $9d
	ld bc, $7b07                                     ; $56c7: $01 $07 $7b
	sub a                                            ; $56ca: $97
	ld l, [hl]                                       ; $56cb: $6e
	call $f173                                       ; $56cc: $cd $73 $f1
	sbc l                                            ; $56cf: $9d
	inc e                                            ; $56d0: $1c
	rst GetHLinHL                                          ; $56d1: $cf
	call c, Call_042_7efe                            ; $56d2: $dc $fe $7e
	ld a, [hl-]                                      ; $56d5: $3a
	add b                                            ; $56d6: $80
	ccf                                              ; $56d7: $3f
	sbc $9b                                          ; $56d8: $de $9b
	sbc e                                            ; $56da: $9b
	bit 7, c                                         ; $56db: $cb $79
	db $d3                                           ; $56dd: $d3
	dec de                                           ; $56de: $1b
	ld a, a                                          ; $56df: $7f
	ld c, c                                          ; $56e0: $49
	ld c, l                                          ; $56e1: $4d
	ld c, l                                          ; $56e2: $4d
	dec c                                            ; $56e3: $0d
	ccf                                              ; $56e4: $3f
	rst $38                                          ; $56e5: $ff
	rst FarCall                                          ; $56e6: $f7
	sbc a                                            ; $56e7: $9f
	ld a, [$79f5]                                    ; $56e8: $fa $f5 $79
	ld c, c                                          ; $56eb: $49
	inc sp                                           ; $56ec: $33
	ld c, e                                          ; $56ed: $4b
	ld sp, $0521                                     ; $56ee: $31 $21 $05
	dec bc                                           ; $56f1: $0b
	sub a                                            ; $56f2: $97
	cp a                                             ; $56f3: $bf
	rst SubAFromDE                                          ; $56f4: $df
	cp a                                             ; $56f5: $bf
	ld a, a                                          ; $56f6: $7f
	pop bc                                           ; $56f7: $c1
	sbc b                                            ; $56f8: $98
	db $fc                                           ; $56f9: $fc
	ret nz                                           ; $56fa: $c0

	ldh a, [$c0]                                     ; $56fb: $f0 $c0
	ldh [$c0], a                                     ; $56fd: $e0 $c0
	ret nz                                           ; $56ff: $c0

	ld a, d                                          ; $5700: $7a
	add $7f                                          ; $5701: $c6 $7f
	db $fc                                           ; $5703: $fc
	ld a, c                                          ; $5704: $79
	ld b, e                                          ; $5705: $43
	sub [hl]                                         ; $5706: $96
	ret nz                                           ; $5707: $c0

	inc bc                                           ; $5708: $03
	nop                                              ; $5709: $00
	rrca                                             ; $570a: $0f
	nop                                              ; $570b: $00
	dec sp                                           ; $570c: $3b
	nop                                              ; $570d: $00
	nop                                              ; $570e: $00
	and $76                                          ; $570f: $e6 $76
	call nz, $049b                                   ; $5711: $c4 $9b $04
	rst $38                                          ; $5714: $ff
	rst $38                                          ; $5715: $ff
	add hl, de                                       ; $5716: $19
	halt                                             ; $5717: $76
	or b                                             ; $5718: $b0
	adc c                                            ; $5719: $89
	ld a, h                                          ; $571a: $7c
	nop                                              ; $571b: $00
	ld bc, $0210                                     ; $571c: $01 $10 $02
	cp $0e                                           ; $571f: $fe $0e
	cp $82                                           ; $5721: $fe $82
	cp $fe                                           ; $5723: $fe $fe
	rst AddAOntoHL                                          ; $5725: $ef
	ld l, a                                          ; $5726: $6f
	ld e, a                                          ; $5727: $5f
	ld a, a                                          ; $5728: $7f
	ld a, b                                          ; $5729: $78
	ld h, b                                          ; $572a: $60
	add [hl]                                         ; $572b: $86
	add c                                            ; $572c: $81
	ccf                                              ; $572d: $3f
	rlca                                             ; $572e: $07
	rrca                                             ; $572f: $0f
	sbc $3f                                          ; $5730: $de $3f
	sub e                                            ; $5732: $93
	ld a, c                                          ; $5733: $79
	ld a, [hl]                                       ; $5734: $7e
	cp $fd                                           ; $5735: $fe $fd
	pop hl                                           ; $5737: $e1
	ld [bc], a                                       ; $5738: $02
	ld [bc], a                                       ; $5739: $02
	nop                                              ; $573a: $00
	dec b                                            ; $573b: $05
	dec h                                            ; $573c: $25
	add hl, sp                                       ; $573d: $39
	cp $7a                                           ; $573e: $fe $7a
	db $e3                                           ; $5740: $e3
	sub d                                            ; $5741: $92
	db $fc                                           ; $5742: $fc
	ld hl, sp-$27                                    ; $5743: $f8 $d9
	pop bc                                           ; $5745: $c1
	ld a, $1e                                        ; $5746: $3e $1e
	ld a, $ff                                        ; $5748: $3e $ff
	rst $38                                          ; $574a: $ff
	sbc [hl]                                         ; $574b: $9e
	ld a, [hl+]                                      ; $574c: $2a
	ld h, $1d                                        ; $574d: $26 $1d
	sbc $1c                                          ; $574f: $de $1c
	add b                                            ; $5751: $80
	sbc h                                            ; $5752: $9c
	inc e                                            ; $5753: $1c
	sbc h                                            ; $5754: $9c
	sbc d                                            ; $5755: $9a
	nop                                              ; $5756: $00
	rrca                                             ; $5757: $0f
	add hl, de                                       ; $5758: $19
	rrca                                             ; $5759: $0f
	sbc e                                            ; $575a: $9b
	jr c, jr_042_5795                                ; $575b: $38 $38

	ld a, a                                          ; $575d: $7f
	cp $f8                                           ; $575e: $fe $f8
	ldh a, [$e7]                                     ; $5760: $f0 $e7
	ld l, d                                          ; $5762: $6a
	ld l, b                                          ; $5763: $68
	ld l, b                                          ; $5764: $68
	ld h, [hl]                                       ; $5765: $66
	ret nz                                           ; $5766: $c0

	inc l                                            ; $5767: $2c
	ldh a, [c]                                       ; $5768: $f2
	ld a, [$0f3f]                                    ; $5769: $fa $3f $0f
	rra                                              ; $576c: $1f
	ld a, a                                          ; $576d: $7f
	rra                                              ; $576e: $1f
	rlca                                             ; $576f: $07
	inc bc                                           ; $5770: $03
	add a                                            ; $5771: $87
	pop af                                           ; $5772: $f1

Jump_042_5773:
	add hl, de                                       ; $5773: $19
	ld [$3c04], sp                                   ; $5774: $08 $04 $3c
	scf                                              ; $5777: $37
	rrca                                             ; $5778: $0f
	di                                               ; $5779: $f3
	cp [hl]                                          ; $577a: $be
	rst $38                                          ; $577b: $ff
	db $fd                                           ; $577c: $fd
	rst $38                                          ; $577d: $ff
	rra                                              ; $577e: $1f
	pop bc                                           ; $577f: $c1
	db $e3                                           ; $5780: $e3
	and d                                            ; $5781: $a2
	sbc $96                                          ; $5782: $de $96
	or h                                             ; $5784: $b4
	ld hl, sp-$05                                    ; $5785: $f8 $fb
	sub l                                            ; $5787: $95
	cp d                                             ; $5788: $ba
	ld a, a                                          ; $5789: $7f
	ld a, b                                          ; $578a: $78
	and d                                            ; $578b: $a2
	ld a, c                                          ; $578c: $79
	ld h, l                                          ; $578d: $65
	sbc $10                                          ; $578e: $de $10
	sbc b                                            ; $5790: $98
	inc [hl]                                         ; $5791: $34
	ld a, [$fbf5]                                    ; $5792: $fa $f5 $fb

jr_042_5795:
	xor a                                            ; $5795: $af
	rst SubAFromDE                                          ; $5796: $df
	rst AddAOntoHL                                          ; $5797: $ef
	ld a, e                                          ; $5798: $7b
	ldh a, [$df]                                     ; $5799: $f0 $df
	cp $95                                           ; $579b: $fe $95
	rlca                                             ; $579d: $07
	adc a                                            ; $579e: $8f
	adc [hl]                                         ; $579f: $8e
	ld l, $5e                                        ; $57a0: $2e $5e
	xor $fe                                          ; $57a2: $ee $fe
	xor $fb                                          ; $57a4: $ee $fb
	rst AddAOntoHL                                          ; $57a6: $ef
	ld a, b                                          ; $57a7: $78
	dec [hl]                                         ; $57a8: $35
	ld a, a                                          ; $57a9: $7f
	db $fd                                           ; $57aa: $fd
	sbc h                                            ; $57ab: $9c
	ccf                                              ; $57ac: $3f
	ld bc, $7687                                     ; $57ad: $01 $87 $76
	ei                                               ; $57b0: $fb
	sbc e                                            ; $57b1: $9b
	ld a, $3f                                        ; $57b2: $3e $3f
	call $75ff                                       ; $57b4: $cd $ff $75
	or h                                             ; $57b7: $b4
	rst SubAFromDE                                          ; $57b8: $df
	ld sp, hl                                        ; $57b9: $f9
	adc b                                            ; $57ba: $88
	add d                                            ; $57bb: $82
	add b                                            ; $57bc: $80
	ld [hl+], a                                      ; $57bd: $22
	add c                                            ; $57be: $81
	ei                                               ; $57bf: $fb
	db $fd                                           ; $57c0: $fd
	ld [hl], c                                       ; $57c1: $71
	ldh a, [$ef]                                     ; $57c2: $f0 $ef
	ld e, a                                          ; $57c4: $5f
	rst $38                                          ; $57c5: $ff
	db $ec                                           ; $57c6: $ec
	ld sp, hl                                        ; $57c7: $f9
	di                                               ; $57c8: $f3
	rst AddAOntoHL                                          ; $57c9: $ef
	rst $38                                          ; $57ca: $ff
	ld b, h                                          ; $57cb: $44
	nop                                              ; $57cc: $00
	ld e, c                                          ; $57cd: $59
	rst AddAOntoHL                                          ; $57ce: $ef
	dec de                                           ; $57cf: $1b
	di                                               ; $57d0: $f3
	rst SubAFromBC                                          ; $57d1: $e7
	db $dd                                           ; $57d2: $dd
	rst $38                                          ; $57d3: $ff
	sbc [hl]                                         ; $57d4: $9e
	pop af                                           ; $57d5: $f1
	ld a, d                                          ; $57d6: $7a
	xor [hl]                                         ; $57d7: $ae
	sub [hl]                                         ; $57d8: $96
	cp $1f                                           ; $57d9: $fe $1f
	ccf                                              ; $57db: $3f
	sbc a                                            ; $57dc: $9f
	sbc a                                            ; $57dd: $9f
	ld a, a                                          ; $57de: $7f
	rst AddAOntoHL                                          ; $57df: $ef
	ld l, a                                          ; $57e0: $6f
	adc a                                            ; $57e1: $8f
	db $dd                                           ; $57e2: $dd
	rst $38                                          ; $57e3: $ff
	sub c                                            ; $57e4: $91
	adc [hl]                                         ; $57e5: $8e
	db $fc                                           ; $57e6: $fc
	cp $df                                           ; $57e7: $fe $df
	rst SubAFromDE                                          ; $57e9: $df
	rst $38                                          ; $57ea: $ff
	sbc a                                            ; $57eb: $9f
	sbc a                                            ; $57ec: $9f
	cp $fc                                           ; $57ed: $fe $fc
	sbc $b8                                          ; $57ef: $de $b8
	inc c                                            ; $57f1: $0c
	ld c, $78                                        ; $57f2: $0e $78
	and h                                            ; $57f4: $a4
	ld [hl], l                                       ; $57f5: $75
	pop de                                           ; $57f6: $d1
	jp c, $9bff                                      ; $57f7: $da $ff $9b

	pop af                                           ; $57fa: $f1
	ld c, $c0                                        ; $57fb: $0e $c0
	ld a, l                                          ; $57fd: $7d
	db $fd                                           ; $57fe: $fd
	ld a, a                                          ; $57ff: $7f
	cp [hl]                                          ; $5800: $be
	ld [hl], d                                       ; $5801: $72
	and b                                            ; $5802: $a0
	ld a, a                                          ; $5803: $7f
	rst JumpTable                                          ; $5804: $c7
	sub [hl]                                         ; $5805: $96
	adc [hl]                                         ; $5806: $8e
	ld c, $07                                        ; $5807: $0e $07
	rst $38                                          ; $5809: $ff
	rlca                                             ; $580a: $07
	inc bc                                           ; $580b: $03
	rlca                                             ; $580c: $07
	rst FarCall                                          ; $580d: $f7
	ld [hl], a                                       ; $580e: $77
	db $db                                           ; $580f: $db
	rst $38                                          ; $5810: $ff
	sbc $01                                          ; $5811: $de $01
	db $dd                                           ; $5813: $dd
	rst $38                                          ; $5814: $ff
	ld l, b                                          ; $5815: $68
	xor b                                            ; $5816: $a8
	sbc $ff                                          ; $5817: $de $ff
	sbc e                                            ; $5819: $9b
	add b                                            ; $581a: $80
	cp l                                             ; $581b: $bd
	adc l                                            ; $581c: $8d
	rst $38                                          ; $581d: $ff
	cp $79                                           ; $581e: $fe $79
	ld c, a                                          ; $5820: $4f
	sbc [hl]                                         ; $5821: $9e
	ldh a, [c]                                       ; $5822: $f2
	ld [hl], e                                       ; $5823: $73
	pop af                                           ; $5824: $f1
	ld a, a                                          ; $5825: $7f
	or $9e                                           ; $5826: $f6 $9e
	db $10                                           ; $5828: $10
	ld [hl], a                                       ; $5829: $77
	ldh a, [$79]                                     ; $582a: $f0 $79
	or d                                             ; $582c: $b2
	halt                                             ; $582d: $76
	ld e, e                                          ; $582e: $5b
	sbc c                                            ; $582f: $99
	rst $38                                          ; $5830: $ff
	rrca                                             ; $5831: $0f
	ld c, $00                                        ; $5832: $0e $00
	ld a, a                                          ; $5834: $7f
	ld a, h                                          ; $5835: $7c
	ld [hl], a                                       ; $5836: $77
	and b                                            ; $5837: $a0
	ld a, h                                          ; $5838: $7c
	db $ec                                           ; $5839: $ec
	sbc [hl]                                         ; $583a: $9e
	add c                                            ; $583b: $81
	db $dd                                           ; $583c: $dd
	rst $38                                          ; $583d: $ff
	sbc h                                            ; $583e: $9c
	pop bc                                           ; $583f: $c1
	nop                                              ; $5840: $00
	ld a, a                                          ; $5841: $7f
	ld [hl], d                                       ; $5842: $72
	ld e, l                                          ; $5843: $5d
	ld a, a                                          ; $5844: $7f
	dec hl                                           ; $5845: $2b
	ld [hl], e                                       ; $5846: $73
	pop af                                           ; $5847: $f1
	sbc d                                            ; $5848: $9a
	rst $38                                          ; $5849: $ff
	ld a, e                                          ; $584a: $7b
	inc bc                                           ; $584b: $03
	ei                                               ; $584c: $fb
	rlca                                             ; $584d: $07
	ld a, e                                          ; $584e: $7b
	ld a, [hl]                                       ; $584f: $7e
	sbc c                                            ; $5850: $99
	ld [bc], a                                       ; $5851: $02
	ldh a, [$f2]                                     ; $5852: $f0 $f2
	ldh a, [$f8]                                     ; $5854: $f0 $f8
	db $fc                                           ; $5856: $fc
	sbc $fe                                          ; $5857: $de $fe
	sub l                                            ; $5859: $95
	cp a                                             ; $585a: $bf
	adc a                                            ; $585b: $8f
	ld b, $02                                        ; $585c: $06 $02
	ld [bc], a                                       ; $585e: $02
	inc e                                            ; $585f: $1c
	inc a                                            ; $5860: $3c
	inc a                                            ; $5861: $3c
	ld [bc], a                                       ; $5862: $02
	nop                                              ; $5863: $00
	sbc $01                                          ; $5864: $de $01
	sbc $03                                          ; $5866: $de $03
	adc l                                            ; $5868: $8d
	xor [hl]                                         ; $5869: $ae
	and [hl]                                         ; $586a: $a6
	rst SubAFromHL                                          ; $586b: $d7
	ld l, a                                          ; $586c: $6f
	dec c                                            ; $586d: $0d
	add hl, bc                                       ; $586e: $09
	dec de                                           ; $586f: $1b
	inc de                                           ; $5870: $13
	inc l                                            ; $5871: $2c
	inc c                                            ; $5872: $0c
	sbc a                                            ; $5873: $9f
	db $fd                                           ; $5874: $fd
	ld sp, hl                                        ; $5875: $f9
	ldh a, [$f1]                                     ; $5876: $f0 $f1
	ldh a, [c]                                       ; $5878: $f2
	ld a, e                                          ; $5879: $7b
	jr nc, @+$7d                                     ; $587a: $30 $7b

	ret c                                            ; $587c: $d8

	sub c                                            ; $587d: $91
	ld a, h                                          ; $587e: $7c
	ld a, [hl]                                       ; $587f: $7e
	ld [hl], $0c                                     ; $5880: $36 $0c
	inc e                                            ; $5882: $1c
	db $fc                                           ; $5883: $fc
	db $fc                                           ; $5884: $fc
	ld a, h                                          ; $5885: $7c
	ld l, h                                          ; $5886: $6c
	ld h, $36                                        ; $5887: $26 $36
	sbc a                                            ; $5889: $9f
	sbc a                                            ; $588a: $9f
	rrca                                             ; $588b: $0f
	call c, $db03                                    ; $588c: $dc $03 $db
	rst $38                                          ; $588f: $ff
	sbc l                                            ; $5890: $9d
	cp $7e                                           ; $5891: $fe $7e
	sub $ff                                          ; $5893: $d6 $ff
	sbc d                                            ; $5895: $9a
	cp a                                             ; $5896: $bf
	ccf                                              ; $5897: $3f
	ld e, a                                          ; $5898: $5f
	ld l, $1c                                        ; $5899: $2e $1c
	db $db                                           ; $589b: $db
	rst $38                                          ; $589c: $ff
	ld a, c                                          ; $589d: $79
	ld b, a                                          ; $589e: $47
	ld a, [hl]                                       ; $589f: $7e
	sbc e                                            ; $58a0: $9b
	sbc d                                            ; $58a1: $9a
	db $fd                                           ; $58a2: $fd
	rst SubAFromDE                                          ; $58a3: $df
	ld c, a                                          ; $58a4: $4f
	rrca                                             ; $58a5: $0f
	ld b, a                                          ; $58a6: $47
	ld [hl], a                                       ; $58a7: $77
	ld b, h                                          ; $58a8: $44
	sub [hl]                                         ; $58a9: $96
	db $fd                                           ; $58aa: $fd
	ld b, [hl]                                       ; $58ab: $46
	nop                                              ; $58ac: $00
	ld bc, $6f2f                                     ; $58ad: $01 $2f $6f
	rst SubAFromHL                                          ; $58b0: $d7
	ldh a, [$dd]                                     ; $58b1: $f0 $dd
	ld [hl], l                                       ; $58b3: $75
	db $dd                                           ; $58b4: $dd
	sub d                                            ; $58b5: $92
	rst FarCall                                          ; $58b6: $f7
	or a                                             ; $58b7: $b7
	ld l, l                                          ; $58b8: $6d
	call c, $fc3c                                    ; $58b9: $dc $3c $fc
	db $fc                                           ; $58bc: $fc
	rst $38                                          ; $58bd: $ff
	rst FarCall                                          ; $58be: $f7
	scf                                              ; $58bf: $37
	ld l, a                                          ; $58c0: $6f
	rst GetHLinHL                                          ; $58c1: $cf
	rra                                              ; $58c2: $1f
	ld a, d                                          ; $58c3: $7a
	and l                                            ; $58c4: $a5
	rst SubAFromDE                                          ; $58c5: $df
	db $fd                                           ; $58c6: $fd

jr_042_58c7:
	sbc h                                            ; $58c7: $9c
	rst $38                                          ; $58c8: $ff
	and h                                            ; $58c9: $a4
	inc b                                            ; $58ca: $04
	ld e, [hl]                                       ; $58cb: $5e
	ldh a, [hDisp1_OBP0]                                     ; $58cc: $f0 $93
	cp [hl]                                          ; $58ce: $be
	db $fd                                           ; $58cf: $fd
	cp $e4                                           ; $58d0: $fe $e4
	db $f4                                           ; $58d2: $f4
	jr c, jr_042_58d5                                ; $58d3: $38 $00

jr_042_58d5:
	nop                                              ; $58d5: $00
	call c, $eef9                                    ; $58d6: $dc $f9 $ee
	di                                               ; $58d9: $f3
	ld [hl], a                                       ; $58da: $77
	dec bc                                           ; $58db: $0b
	sub h                                            ; $58dc: $94
	inc a                                            ; $58dd: $3c
	ld a, $6c                                        ; $58de: $3e $6c
	adc $ce                                          ; $58e0: $ce $ce
	ld c, $07                                        ; $58e2: $0e $07
	nop                                              ; $58e4: $00
	ld e, b                                          ; $58e5: $58
	or b                                             ; $58e6: $b0
	jr nc, jr_042_58c7                               ; $58e7: $30 $de

	ldh a, [$dd]                                     ; $58e9: $f0 $dd
	rst $38                                          ; $58eb: $ff
	sbc e                                            ; $58ec: $9b
	jr nc, jr_042_58d5                               ; $58ed: $30 $e6

	rst GetHLinHL                                          ; $58ef: $cf
	rlca                                             ; $58f0: $07
	ld [hl], h                                       ; $58f1: $74
	and c                                            ; $58f2: $a1
	sbc h                                            ; $58f3: $9c
	ldh [$c3], a                                     ; $58f4: $e0 $c3
	ld bc, $f876                                     ; $58f6: $01 $76 $f8
	sub c                                            ; $58f9: $91

jr_042_58fa:
	db $fc                                           ; $58fa: $fc
	ld b, a                                          ; $58fb: $47
	jr jr_042_58fa                                   ; $58fc: $18 $fc

	ld hl, sp+$01                                    ; $58fe: $f8 $01
	ccf                                              ; $5900: $3f
	rst $38                                          ; $5901: $ff
	ccf                                              ; $5902: $3f
	nop                                              ; $5903: $00
	ldh a, [$e0]                                     ; $5904: $f0 $e0
	nop                                              ; $5906: $00
	nop                                              ; $5907: $00
	db $dd                                           ; $5908: $dd
	rlca                                             ; $5909: $07
	sbc $03                                          ; $590a: $de $03
	sbc l                                            ; $590c: $9d
	ld b, e                                          ; $590d: $43
	jp $ffde                                         ; $590e: $c3 $de $ff


	ld a, [hl]                                       ; $5911: $7e
	ld c, e                                          ; $5912: $4b
	sbc $3f                                          ; $5913: $de $3f
	sbc l                                            ; $5915: $9d
	ld [hl], a                                       ; $5916: $77
	inc sp                                           ; $5917: $33
	sbc $77                                          ; $5918: $de $77
	sbc d                                            ; $591a: $9a
	inc de                                           ; $591b: $13
	ld [hl], e                                       ; $591c: $73
	ld [hl], a                                       ; $591d: $77
	rst $38                                          ; $591e: $ff

jr_042_591f:
	rst SubAFromDE                                          ; $591f: $df
	sbc $9b                                          ; $5920: $de $9b
	halt                                             ; $5922: $76
	jr jr_042_591f                                   ; $5923: $18 $fa

	reti                                             ; $5925: $d9


	rst $38                                          ; $5926: $ff
	inc bc                                           ; $5927: $03
	ldh a, [rWX]                                     ; $5928: $f0 $4b
	ldh a, [$df]                                     ; $592a: $f0 $df
	ld [bc], a                                       ; $592c: $02
	call c, $7e01                                    ; $592d: $dc $01 $7e
	or b                                             ; $5930: $b0
	ld a, c                                          ; $5931: $79
	add b                                            ; $5932: $80
	ld a, e                                          ; $5933: $7b
	ld b, l                                          ; $5934: $45
	ld a, h                                          ; $5935: $7c
	push de                                          ; $5936: $d5
	sbc b                                            ; $5937: $98
	ld c, $02                                        ; $5938: $0e $02
	ld b, $86                                        ; $593a: $06 $86
	adc [hl]                                         ; $593c: $8e
	call nz, $dbc5                                   ; $593d: $c4 $c5 $db
	ld bc, $0393                                     ; $5940: $01 $93 $03
	add e                                            ; $5943: $83
	ld [hl-], a                                      ; $5944: $32
	inc sp                                           ; $5945: $33
	ld [hl+], a                                      ; $5946: $22
	jr nc, @+$24                                     ; $5947: $30 $22

	ld b, b                                          ; $5949: $40
	ld h, b                                          ; $594a: $60
	ld b, b                                          ; $594b: $40
	ldh [$e2], a                                     ; $594c: $e0 $e2
	call c, $9dc0                                    ; $594e: $dc $c0 $9d
	add b                                            ; $5951: $80
	ld a, a                                          ; $5952: $7f
	db $dd                                           ; $5953: $dd
	dec sp                                           ; $5954: $3b
	sub h                                            ; $5955: $94
	inc de                                           ; $5956: $13
	dec bc                                           ; $5957: $0b
	ld de, $1222                                     ; $5958: $11 $22 $12
	ld de, $1110                                     ; $595b: $11 $10 $11
	nop                                              ; $595e: $00
	ld bc, $dd00                                     ; $595f: $01 $00 $dd
	inc bc                                           ; $5962: $03
	ld [hl], a                                       ; $5963: $77
	ld c, b                                          ; $5964: $48
	sbc $7e                                          ; $5965: $de $7e
	call nc, $9cff                                   ; $5967: $d4 $ff $9c
	ld l, $15                                        ; $596a: $2e $15
	ld a, [hl+]                                      ; $596c: $2a
	ld [hl], b                                       ; $596d: $70
	and c                                            ; $596e: $a1
	ld a, e                                          ; $596f: $7b
	xor d                                            ; $5970: $aa
	call c, $9dff                                    ; $5971: $dc $ff $9d
	rrca                                             ; $5974: $0f
	ld d, a                                          ; $5975: $57
	halt                                             ; $5976: $76
	cp d                                             ; $5977: $ba
	rst SubAFromDE                                          ; $5978: $df
	ld hl, sp+$72                                    ; $5979: $f8 $72
	ld bc, $3f9d                                     ; $597b: $01 $9d $3f
	add b                                            ; $597e: $80
	ld a, e                                          ; $597f: $7b
	sub b                                            ; $5980: $90
	ld a, [hl]                                       ; $5981: $7e
	cpl                                              ; $5982: $2f
	ld a, e                                          ; $5983: $7b
	ld [hl], e                                       ; $5984: $73
	sbc [hl]                                         ; $5985: $9e
	ldh [$7a], a                                     ; $5986: $e0 $7a
	ld c, h                                          ; $5988: $4c
	ld a, d                                          ; $5989: $7a
	adc c                                            ; $598a: $89
	sbc d                                            ; $598b: $9a
	inc b                                            ; $598c: $04
	inc bc                                           ; $598d: $03
	ld a, a                                          ; $598e: $7f
	rst $38                                          ; $598f: $ff
	db $fc                                           ; $5990: $fc
	ld l, e                                          ; $5991: $6b
	ld h, e                                          ; $5992: $63
	sub d                                            ; $5993: $92
	ld hl, sp-$01                                    ; $5994: $f8 $ff
	ldh a, [rTAC]                                    ; $5996: $f0 $07
	db $fd                                           ; $5998: $fd
	ld d, [hl]                                       ; $5999: $56
	rst $38                                          ; $599a: $ff
	rst $38                                          ; $599b: $ff
	rlca                                             ; $599c: $07
	ld hl, sp-$20                                    ; $599d: $f8 $e0
	nop                                              ; $599f: $00
	inc bc                                           ; $59a0: $03
	ld [hl], a                                       ; $59a1: $77
	db $ed                                           ; $59a2: $ed
	ld a, h                                          ; $59a3: $7c
	and b                                            ; $59a4: $a0
	sbc l                                            ; $59a5: $9d
	ldh a, [$50]                                     ; $59a6: $f0 $50
	halt                                             ; $59a8: $76
	sub $9a                                          ; $59a9: $d6 $9a
	ccf                                              ; $59ab: $3f
	rra                                              ; $59ac: $1f
	ccf                                              ; $59ad: $3f
	rst $38                                          ; $59ae: $ff
	adc a                                            ; $59af: $8f
	ld b, a                                          ; $59b0: $47
	ld b, b                                          ; $59b1: $40
	sbc [hl]                                         ; $59b2: $9e
	ld [hl], a                                       ; $59b3: $77
	db $dd                                           ; $59b4: $dd
	ld [hl], e                                       ; $59b5: $73
	rst SubAFromDE                                          ; $59b6: $df
	ld [hl], a                                       ; $59b7: $77
	sbc c                                            ; $59b8: $99
	halt                                             ; $59b9: $76
	inc sp                                           ; $59ba: $33
	ld [hl], e                                       ; $59bb: $73
	ld [hl], d                                       ; $59bc: $72
	ld [hl], d                                       ; $59bd: $72
	ld [hl], e                                       ; $59be: $73
	ld a, e                                          ; $59bf: $7b
	ei                                               ; $59c0: $fb
	sbc h                                            ; $59c1: $9c
	rrca                                             ; $59c2: $0f
	ld a, a                                          ; $59c3: $7f
	ccf                                              ; $59c4: $3f
	db $dd                                           ; $59c5: $dd
	dec sp                                           ; $59c6: $3b
	ld a, [hl]                                       ; $59c7: $7e
	jp nz, $dffa                                     ; $59c8: $c2 $fa $df

	jp $c79d                                         ; $59cb: $c3 $9d $c7


	pop bc                                           ; $59ce: $c1
	db $dd                                           ; $59cf: $dd
	ret nz                                           ; $59d0: $c0

	rst SubAFromDE                                          ; $59d1: $df
	ccf                                              ; $59d2: $3f
	sbc [hl]                                         ; $59d3: $9e
	add hl, sp                                       ; $59d4: $39
	call c, $9e3f                                    ; $59d5: $dc $3f $9e
	di                                               ; $59d8: $f3
	ld a, c                                          ; $59d9: $79
	sbc d                                            ; $59da: $9a
	ld c, [hl]                                       ; $59db: $4e
	ldh a, [$9d]                                     ; $59dc: $f0 $9d
	ret nz                                           ; $59de: $c0

	ld hl, sp+$02                                    ; $59df: $f8 $02
	ret nc                                           ; $59e1: $d0

	rlca                                             ; $59e2: $07
	ldh a, [$7a]                                     ; $59e3: $f0 $7a
	cp e                                             ; $59e5: $bb
	ld l, c                                          ; $59e6: $69
	reti                                             ; $59e7: $d9


	ld a, a                                          ; $59e8: $7f
	ld c, $80                                        ; $59e9: $0e $80
	xor c                                            ; $59eb: $a9
	sbc c                                            ; $59ec: $99
	sbc e                                            ; $59ed: $9b
	adc e                                            ; $59ee: $8b
	inc hl                                           ; $59ef: $23
	inc de                                           ; $59f0: $13
	rst $38                                          ; $59f1: $ff
	and [hl]                                         ; $59f2: $a6
	sub [hl]                                         ; $59f3: $96
	add a                                            ; $59f4: $87
	add a                                            ; $59f5: $87
	sub l                                            ; $59f6: $95
	dec e                                            ; $59f7: $1d
	dec c                                            ; $59f8: $0d
	sbc e                                            ; $59f9: $9b
	ld b, b                                          ; $59fa: $40
	ld h, b                                          ; $59fb: $60
	ld h, c                                          ; $59fc: $61
	ldh [$a1], a                                     ; $59fd: $e0 $a1
	ld h, c                                          ; $59ff: $61
	or c                                             ; $5a00: $b1
	ld l, e                                          ; $5a01: $6b
	add b                                            ; $5a02: $80
	and b                                            ; $5a03: $a0
	add c                                            ; $5a04: $81
	jr nz, @+$03                                     ; $5a05: $20 $01

	jr nz, @+$23                                     ; $5a07: $20 $21

	ld hl, $039e                                     ; $5a09: $21 $9e $03
	halt                                             ; $5a0c: $76
	res 3, l                                         ; $5a0d: $cb $9d
	ld bc, $7682                                     ; $5a0f: $01 $82 $76
	call $dbf4                                       ; $5a12: $cd $f4 $db
	ld a, a                                          ; $5a15: $7f
	rst SubAFromDE                                          ; $5a16: $df
	ccf                                              ; $5a17: $3f
	ld [hl], l                                       ; $5a18: $75
	ld a, [bc]                                       ; $5a19: $0a
	sub d                                            ; $5a1a: $92
	rst AddAOntoHL                                          ; $5a1b: $ef
	rst FarCall                                          ; $5a1c: $f7
	rst SubAFromBC                                          ; $5a1d: $e7
	rst FarCall                                          ; $5a1e: $f7
	rst SubAFromDE                                          ; $5a1f: $df
	rst $38                                          ; $5a20: $ff
	rst SubAFromDE                                          ; $5a21: $df
	rst AddAOntoHL                                          ; $5a22: $ef
	set 1, a                                         ; $5a23: $cb $cf
	ret                                              ; $5a25: $c9


	jp nz, $ddf9                                     ; $5a26: $c2 $f9 $dd

	ld hl, sp+$7e                                    ; $5a29: $f8 $7e
	ld h, h                                          ; $5a2b: $64
	sub l                                            ; $5a2c: $95
	ld a, [$f8f8]                                    ; $5a2d: $fa $f8 $f8
	ret c                                            ; $5a30: $d8

	cp b                                             ; $5a31: $b8
	rst SubAFromDE                                          ; $5a32: $df
	xor c                                            ; $5a33: $a9
	ret c                                            ; $5a34: $d8

	xor h                                            ; $5a35: $ac
	add b                                            ; $5a36: $80
	ld h, a                                          ; $5a37: $67
	ret nc                                           ; $5a38: $d0

	db $fd                                           ; $5a39: $fd
	sbc l                                            ; $5a3a: $9d
	ldh [$3f], a                                     ; $5a3b: $e0 $3f
	ld a, c                                          ; $5a3d: $79
	ld a, [de]                                       ; $5a3e: $1a
	ld a, h                                          ; $5a3f: $7c
	and c                                            ; $5a40: $a1
	sbc e                                            ; $5a41: $9b
	cpl                                              ; $5a42: $2f
	ld [de], a                                       ; $5a43: $12
	dec c                                            ; $5a44: $0d
	cpl                                              ; $5a45: $2f
	ld [hl], e                                       ; $5a46: $73
	ld [hl], a                                       ; $5a47: $77
	ld a, a                                          ; $5a48: $7f
	push af                                          ; $5a49: $f5
	sbc l                                            ; $5a4a: $9d
	nop                                              ; $5a4b: $00
	xor a                                            ; $5a4c: $af
	sbc $ff                                          ; $5a4d: $de $ff
	sbc d                                            ; $5a4f: $9a
	push af                                          ; $5a50: $f5
	xor e                                            ; $5a51: $ab
	ld a, a                                          ; $5a52: $7f
	rst $38                                          ; $5a53: $ff
	ldh a, [$fe]                                     ; $5a54: $f0 $fe
	sbc h                                            ; $5a56: $9c
	rrca                                             ; $5a57: $0f
	rst $38                                          ; $5a58: $ff
	ret nz                                           ; $5a59: $c0

	ld a, c                                          ; $5a5a: $79
	cp e                                             ; $5a5b: $bb
	sbc h                                            ; $5a5c: $9c
	ldh [$b7], a                                     ; $5a5d: $e0 $b7
	ld a, e                                          ; $5a5f: $7b
	halt                                             ; $5a60: $76
	add b                                            ; $5a61: $80
	rst SubAFromDE                                          ; $5a62: $df
	rra                                              ; $5a63: $1f
	ld a, d                                          ; $5a64: $7a
	cp [hl]                                          ; $5a65: $be
	rst SubAFromDE                                          ; $5a66: $df
	ld a, a                                          ; $5a67: $7f
	rst $38                                          ; $5a68: $ff
	sbc l                                            ; $5a69: $9d
	db $10                                           ; $5a6a: $10
	ld a, c                                          ; $5a6b: $79
	sbc $ff                                          ; $5a6c: $de $ff
	ld [hl], b                                       ; $5a6e: $70
	daa                                              ; $5a6f: $27
	db $dd                                           ; $5a70: $dd
	rst $38                                          ; $5a71: $ff
	adc l                                            ; $5a72: $8d
	ld a, [hl]                                       ; $5a73: $7e
	ld [hl], a                                       ; $5a74: $77
	ld a, a                                          ; $5a75: $7f
	ld [hl], a                                       ; $5a76: $77
	ld a, [hl]                                       ; $5a77: $7e
	ld a, $3e                                        ; $5a78: $3e $3e
	ld d, $72                                        ; $5a7a: $16 $72
	halt                                             ; $5a7c: $76
	ld [hl], $36                                     ; $5a7d: $36 $36
	ld a, $1e                                        ; $5a7f: $3e $1e
	ld e, $12                                        ; $5a81: $1e $12
	ccf                                              ; $5a83: $3f
	dec sp                                           ; $5a84: $3b
	db $dd                                           ; $5a85: $dd
	ld a, e                                          ; $5a86: $7b
	sbc l                                            ; $5a87: $9d
	ld a, b                                          ; $5a88: $78
	dec sp                                           ; $5a89: $3b
	ld a, [$0f9b]                                    ; $5a8a: $fa $9b $0f
	add b                                            ; $5a8d: $80
	add b                                            ; $5a8e: $80
	or b                                             ; $5a8f: $b0
	sbc $bf                                          ; $5a90: $de $bf
	ld a, [hl]                                       ; $5a92: $7e
	ld e, [hl]                                       ; $5a93: $5e
	db $db                                           ; $5a94: $db
	ccf                                              ; $5a95: $3f
	ld [hl], e                                       ; $5a96: $73
	db $10                                           ; $5a97: $10
	sbc e                                            ; $5a98: $9b
	ldh a, [$fe]                                     ; $5a99: $f0 $fe
	db $fc                                           ; $5a9b: $fc
	ldh [rSC], a                                     ; $5a9c: $e0 $02
	ldh [$03], a                                     ; $5a9e: $e0 $03
	ldh a, [$03]                                     ; $5aa0: $f0 $03
	ldh a, [$db]                                     ; $5aa2: $f0 $db
	rst $38                                          ; $5aa4: $ff
	add b                                            ; $5aa5: $80
	or c                                             ; $5aa6: $b1
	ld [hl], e                                       ; $5aa7: $73
	or c                                             ; $5aa8: $b1
	ld [hl], e                                       ; $5aa9: $73
	di                                               ; $5aaa: $f3
	ld [hl], e                                       ; $5aab: $73
	dec de                                           ; $5aac: $1b
	ld bc, $2121                                     ; $5aad: $01 $21 $21
	ld sp, $9111                                     ; $5ab0: $31 $11 $91
	pop bc                                           ; $5ab3: $c1
	ld sp, hl                                        ; $5ab4: $f9
	rst $38                                          ; $5ab5: $ff
	add d                                            ; $5ab6: $82
	ld b, a                                          ; $5ab7: $47
	add d                                            ; $5ab8: $82
	rst JumpTable                                          ; $5ab9: $c7
	rst AddAOntoHL                                          ; $5aba: $ef
	rst SubAFromBC                                          ; $5abb: $e7
	cp $f0                                           ; $5abc: $fe $f0
	ld [bc], a                                       ; $5abe: $02
	ld [bc], a                                       ; $5abf: $02
	add d                                            ; $5ac0: $82
	add e                                            ; $5ac1: $83
	add e                                            ; $5ac2: $83
	jp $63c7                                         ; $5ac3: $c3 $c7 $63


	ret nc                                           ; $5ac6: $d0

	db $dd                                           ; $5ac7: $dd
	ccf                                              ; $5ac8: $3f
	ld a, a                                          ; $5ac9: $7f
	ld a, [bc]                                       ; $5aca: $0a
	rst SubAFromDE                                          ; $5acb: $df
	rst $38                                          ; $5acc: $ff
	sbc e                                            ; $5acd: $9b
	ld a, e                                          ; $5ace: $7b
	ld [hl], l                                       ; $5acf: $75
	ld a, d                                          ; $5ad0: $7a
	ld a, l                                          ; $5ad1: $7d
	db $dd                                           ; $5ad2: $dd
	ld a, a                                          ; $5ad3: $7f
	ld a, d                                          ; $5ad4: $7a
	dec bc                                           ; $5ad5: $0b
	sub [hl]                                         ; $5ad6: $96
	ldh [$f1], a                                     ; $5ad7: $e0 $f1
	add sp, -$03                                     ; $5ad9: $e8 $fd
	ei                                               ; $5adb: $fb
	cp e                                             ; $5adc: $bb
	reti                                             ; $5add: $d9


	xor b                                            ; $5ade: $a8
	ret c                                            ; $5adf: $d8

	db $dd                                           ; $5ae0: $dd
	ld hl, sp-$62                                    ; $5ae1: $f8 $9e
	sbc [hl]                                         ; $5ae3: $9e
	sbc $8f                                          ; $5ae4: $de $8f
	sbc b                                            ; $5ae6: $98
	rst GetHLinHL                                          ; $5ae7: $cf
	xor a                                            ; $5ae8: $af
	rst SubAFromDE                                          ; $5ae9: $df
	rst $38                                          ; $5aea: $ff
	nop                                              ; $5aeb: $00
	cp $7f                                           ; $5aec: $fe $7f
	ld a, b                                          ; $5aee: $78
	sub d                                            ; $5aef: $92
	db $fd                                           ; $5af0: $fd
	ld a, c                                          ; $5af1: $79
	sub b                                            ; $5af2: $90
	sbc $ff                                          ; $5af3: $de $ff
	sbc [hl]                                         ; $5af5: $9e
	ld e, a                                          ; $5af6: $5f
	ld e, a                                          ; $5af7: $5f
	adc h                                            ; $5af8: $8c
	reti                                             ; $5af9: $d9


	rst $38                                          ; $5afa: $ff
	sbc [hl]                                         ; $5afb: $9e
	db $fc                                           ; $5afc: $fc
	db $fc                                           ; $5afd: $fc
	ld a, c                                          ; $5afe: $79
	ld l, [hl]                                       ; $5aff: $6e
	db $db                                           ; $5b00: $db
	rst $38                                          ; $5b01: $ff
	halt                                             ; $5b02: $76
	or [hl]                                          ; $5b03: $b6
	ld e, a                                          ; $5b04: $5f
	db $e3                                           ; $5b05: $e3
	sbc h                                            ; $5b06: $9c
	rst $38                                          ; $5b07: $ff
	pop de                                           ; $5b08: $d1
	inc bc                                           ; $5b09: $03
	ld d, e                                          ; $5b0a: $53
	ldh a, [rHDMA5]                                  ; $5b0b: $f0 $55
	nop                                              ; $5b0d: $00
	rst SubAFromDE                                          ; $5b0e: $df
	inc sp                                           ; $5b0f: $33
	sbc d                                            ; $5b10: $9a
	dec [hl]                                         ; $5b11: $35
	ld d, e                                          ; $5b12: $53
	inc sp                                           ; $5b13: $33
	inc sp                                           ; $5b14: $33
	inc [hl]                                         ; $5b15: $34
	sbc $44                                          ; $5b16: $de $44
	ld l, e                                          ; $5b18: $6b
	or $9e                                           ; $5b19: $f6 $9e
	ld h, [hl]                                       ; $5b1b: $66
	ld [hl], a                                       ; $5b1c: $77
	or $dd                                           ; $5b1d: $f6 $dd
	inc sp                                           ; $5b1f: $33
	sbc e                                            ; $5b20: $9b
	inc [hl]                                         ; $5b21: $34
	ld h, h                                          ; $5b22: $64
	ld b, h                                          ; $5b23: $44
	ld h, h                                          ; $5b24: $64
	db $db                                           ; $5b25: $db
	inc sp                                           ; $5b26: $33
	db $dd                                           ; $5b27: $dd
	ld b, h                                          ; $5b28: $44
	rst SubAFromDE                                          ; $5b29: $df
	inc sp                                           ; $5b2a: $33
	rst SubAFromDE                                          ; $5b2b: $df
	ld d, l                                          ; $5b2c: $55
	ld [hl], a                                       ; $5b2d: $77
	or $7f                                           ; $5b2e: $f6 $7f
	db $eb                                           ; $5b30: $eb
	ld l, a                                          ; $5b31: $6f
	or $9a                                           ; $5b32: $f6 $9a
	ld b, [hl]                                       ; $5b34: $46
	ld b, h                                          ; $5b35: $44
	ld b, [hl]                                       ; $5b36: $46
	ld b, h                                          ; $5b37: $44
	ld d, l                                          ; $5b38: $55
	ld a, e                                          ; $5b39: $7b
	or $9c                                           ; $5b3a: $f6 $9c
	ld d, e                                          ; $5b3c: $53
	ld [hl], a                                       ; $5b3d: $77
	ld b, [hl]                                       ; $5b3e: $46
	ld a, e                                          ; $5b3f: $7b
	ret c                                            ; $5b40: $d8

	sbc l                                            ; $5b41: $9d
	ld b, l                                          ; $5b42: $45
	ld d, e                                          ; $5b43: $53
	ld [hl], e                                       ; $5b44: $73
	or $df                                           ; $5b45: $f6 $df
	ld b, h                                          ; $5b47: $44
	sbc d                                            ; $5b48: $9a
	ld b, l                                          ; $5b49: $45
	ld [hl], a                                       ; $5b4a: $77
	ld d, e                                          ; $5b4b: $53
	ld b, h                                          ; $5b4c: $44
	ld b, h                                          ; $5b4d: $44
	ld [hl], e                                       ; $5b4e: $73
	or $99                                           ; $5b4f: $f6 $99
	ld b, h                                          ; $5b51: $44
	ld [hl], l                                       ; $5b52: $75
	ld d, l                                          ; $5b53: $55
	ld b, h                                          ; $5b54: $44
	ld b, h                                          ; $5b55: $44
	ld b, e                                          ; $5b56: $43
	ld l, a                                          ; $5b57: $6f
	or $9e                                           ; $5b58: $f6 $9e
	ld d, h                                          ; $5b5a: $54
	sbc $44                                          ; $5b5b: $de $44
	sbc [hl]                                         ; $5b5d: $9e
	ld [hl], a                                       ; $5b5e: $77
	db $dd                                           ; $5b5f: $dd
	ld b, h                                          ; $5b60: $44
	call c, $9d08                                    ; $5b61: $dc $08 $9d
	rst $38                                          ; $5b64: $ff
	nop                                              ; $5b65: $00
	ld [hl], a                                       ; $5b66: $77
	cp $ff                                           ; $5b67: $fe $ff
	ld l, a                                          ; $5b69: $6f
	ld hl, sp+$7f                                    ; $5b6a: $f8 $7f
	cp $95                                           ; $5b6c: $fe $95
	ei                                               ; $5b6e: $fb
	ld e, $fb                                        ; $5b6f: $1e $fb
	ld e, $ef                                        ; $5b71: $1e $ef
	inc e                                            ; $5b73: $1c
	ld c, $0c                                        ; $5b74: $0e $0c
	rst AddAOntoHL                                          ; $5b76: $ef
	db $10                                           ; $5b77: $10
	ld l, e                                          ; $5b78: $6b
	ldh a, [$99]                                     ; $5b79: $f0 $99
	rlca                                             ; $5b7b: $07
	db $fd                                           ; $5b7c: $fd
	inc bc                                           ; $5b7d: $03
	db $fd                                           ; $5b7e: $fd
	nop                                              ; $5b7f: $00
	rlca                                             ; $5b80: $07
	ld h, e                                          ; $5b81: $63
	ldh [$9d], a                                     ; $5b82: $e0 $9d
	rst $38                                          ; $5b84: $ff
	add e                                            ; $5b85: $83
	ld [hl], a                                       ; $5b86: $77
	ld a, [$c09e]                                    ; $5b87: $fa $9e $c0
	ld h, e                                          ; $5b8a: $63
	ldh a, [hDisp1_WY]                                     ; $5b8b: $f0 $95
	cp $03                                           ; $5b8d: $fe $03
	cp $07                                           ; $5b8f: $fe $07

jr_042_5b91:
	cp $07                                           ; $5b91: $fe $07
	inc bc                                           ; $5b93: $03
	rlca                                             ; $5b94: $07
	rst FarCall                                          ; $5b95: $f7
	inc bc                                           ; $5b96: $03
	ld l, a                                          ; $5b97: $6f
	ldh a, [hDisp1_WY]                                     ; $5b98: $f0 $95
	ld [hl], e                                       ; $5b9a: $73
	sbc h                                            ; $5b9b: $9c
	rst FarCall                                          ; $5b9c: $f7
	cp h                                             ; $5b9d: $bc
	ld a, a                                          ; $5b9e: $7f
	cp h                                             ; $5b9f: $bc
	cp h                                             ; $5ba0: $bc
	inc e                                            ; $5ba1: $1c
	xor l                                            ; $5ba2: $ad
	jr jr_042_5c0c                                   ; $5ba3: $18 $67

	sbc $91                                          ; $5ba5: $de $91
	rst SubAFromHL                                          ; $5ba7: $d7
	jr c, jr_042_5b91                                ; $5ba8: $38 $e7

	jr c, @+$6a                                      ; $5baa: $38 $68

	ld a, b                                          ; $5bac: $78
	add sp, $78                                      ; $5bad: $e8 $78
	rst $38                                          ; $5baf: $ff
	ld a, b                                          ; $5bb0: $78
	rst $38                                          ; $5bb1: $ff
	jr c, @-$2f                                      ; $5bb2: $38 $cf

	jr nc, @+$69                                     ; $5bb4: $30 $67

	sub b                                            ; $5bb6: $90
	rst $38                                          ; $5bb7: $ff
	sbc c                                            ; $5bb8: $99
	call $f01e                                       ; $5bb9: $cd $1e $f0
	ld e, $b3                                        ; $5bbc: $1e $b3
	ld e, $5f                                        ; $5bbe: $1e $5f
	ldh a, [rOCPD]                                   ; $5bc0: $f0 $6b
	or b                                             ; $5bc2: $b0
	sbc c                                            ; $5bc3: $99
	rra                                              ; $5bc4: $1f
	rst $38                                          ; $5bc5: $ff
	ld c, $fb                                        ; $5bc6: $0e $fb
	inc b                                            ; $5bc8: $04
	ld c, $5b                                        ; $5bc9: $0e $5b
	ld l, [hl]                                       ; $5bcb: $6e
	ld a, e                                          ; $5bcc: $7b
	cp $9b                                           ; $5bcd: $fe $9b
	jr nc, jr_042_5c42                               ; $5bcf: $30 $71

	ld a, b                                          ; $5bd1: $78
	ld c, b                                          ; $5bd2: $48
	ld a, e                                          ; $5bd3: $7b
	ret nz                                           ; $5bd4: $c0

	sbc [hl]                                         ; $5bd5: $9e
	cp a                                             ; $5bd6: $bf
	ld [hl], a                                       ; $5bd7: $77
	cp h                                             ; $5bd8: $bc
	sub [hl]                                         ; $5bd9: $96
	inc e                                            ; $5bda: $1c
	db $dd                                           ; $5bdb: $dd
	ld a, $ff                                        ; $5bdc: $3e $ff
	inc a                                            ; $5bde: $3c
	ldh [c], a                                       ; $5bdf: $e2
	inc e                                            ; $5be0: $1c
	rst $38                                          ; $5be1: $ff
	ld bc, $fe7b                                     ; $5be2: $01 $7b $fe
	ld h, e                                          ; $5be5: $63
	sbc $8c                                          ; $5be6: $de $8c
	rst FarCall                                          ; $5be8: $f7
	ldh [$80], a                                     ; $5be9: $e0 $80
	ldh [$9f], a                                     ; $5beb: $e0 $9f
	ldh a, [$bf]                                     ; $5bed: $f0 $bf
	ldh a, [$e7]                                     ; $5bef: $f0 $e7
	ldh a, [rIE]                                     ; $5bf1: $f0 $ff
	rrca                                             ; $5bf3: $0f
	cp $0f                                           ; $5bf4: $fe $0f
	rst $38                                          ; $5bf6: $ff
	rrca                                             ; $5bf7: $0f
	xor h                                            ; $5bf8: $ac
	nop                                              ; $5bf9: $00
	ld c, $6f                                        ; $5bfa: $0e $6f
	or d                                             ; $5bfc: $b2
	ld a, a                                          ; $5bfd: $7f
	db $fc                                           ; $5bfe: $fc
	sbc e                                            ; $5bff: $9b
	inc bc                                           ; $5c00: $03
	ld a, a                                          ; $5c01: $7f
	inc bc                                           ; $5c02: $03
	db $fc                                           ; $5c03: $fc
	ld a, e                                          ; $5c04: $7b
	ld h, h                                          ; $5c05: $64
	rst $38                                          ; $5c06: $ff
	sub a                                            ; $5c07: $97
	rst SubAFromDE                                          ; $5c08: $df
	jr nz, @+$01                                     ; $5c09: $20 $ff

	ld [hl], b                                       ; $5c0b: $70

jr_042_5c0c:
	ld l, e                                          ; $5c0c: $6b
	ret nc                                           ; $5c0d: $d0

	rst $38                                          ; $5c0e: $ff
	pop bc                                           ; $5c0f: $c1
	ld a, e                                          ; $5c10: $7b
	cp $9b                                           ; $5c11: $fe $9b
	ld bc, $01fb                                     ; $5c13: $01 $fb $01
	inc bc                                           ; $5c16: $03
	ld l, e                                          ; $5c17: $6b
	add $8d                                          ; $5c18: $c6 $8d
	ccf                                              ; $5c1a: $3f
	pop hl                                           ; $5c1b: $e1
	cp $e1                                           ; $5c1c: $fe $e1
	rst $38                                          ; $5c1e: $ff
	ldh [rIE], a                                     ; $5c1f: $e0 $ff
	ld h, b                                          ; $5c21: $60
	ldh [$c0], a                                     ; $5c22: $e0 $c0
	ld a, l                                          ; $5c24: $7d
	add b                                            ; $5c25: $80
	db $fd                                           ; $5c26: $fd
	ld bc, $01fd                                     ; $5c27: $01 $fd $01
	rst $38                                          ; $5c2a: $ff
	ret nz                                           ; $5c2b: $c0

	ld l, a                                          ; $5c2c: $6f
	add sp, -$69                                     ; $5c2d: $e8 $97
	ld b, b                                          ; $5c2f: $40
	nop                                              ; $5c30: $00
	rst AddAOntoHL                                          ; $5c31: $ef
	ldh [$df], a                                     ; $5c32: $e0 $df
	and b                                            ; $5c34: $a0
	or a                                             ; $5c35: $b7
	ldh [$67], a                                     ; $5c36: $e0 $67
	sbc [hl]                                         ; $5c38: $9e
	ld d, e                                          ; $5c39: $53
	ld [hl], b                                       ; $5c3a: $70
	sbc l                                            ; $5c3b: $9d
	nop                                              ; $5c3c: $00
	cp a                                             ; $5c3d: $bf
	cp $9e                                           ; $5c3e: $fe $9e
	ld sp, hl                                        ; $5c40: $f9
	ld [hl], a                                       ; $5c41: $77

jr_042_5c42:
	ld a, [hl]                                       ; $5c42: $7e
	ld e, e                                          ; $5c43: $5b
	ld a, h                                          ; $5c44: $7c
	ld l, a                                          ; $5c45: $6f
	sub b                                            ; $5c46: $90
	ld a, a                                          ; $5c47: $7f
	cp [hl]                                          ; $5c48: $be
	ld a, a                                          ; $5c49: $7f
	and h                                            ; $5c4a: $a4
	sbc l                                            ; $5c4b: $9d
	ei                                               ; $5c4c: $fb
	inc bc                                           ; $5c4d: $03
	ld a, e                                          ; $5c4e: $7b
	cp $95                                           ; $5c4f: $fe $95
	ld bc, $01e2                                     ; $5c51: $01 $e2 $01
	db $db                                           ; $5c54: $db
	inc c                                            ; $5c55: $0c
	cpl                                              ; $5c56: $2f
	inc e                                            ; $5c57: $1c
	rst AddAOntoHL                                          ; $5c58: $ef
	ret nz                                           ; $5c59: $c0

	ld l, [hl]                                       ; $5c5a: $6e
	ld a, e                                          ; $5c5b: $7b
	cp $99                                           ; $5c5c: $fe $99
	xor b                                            ; $5c5e: $a8
	ret nz                                           ; $5c5f: $c0

	db $ed                                           ; $5c60: $ed
	pop bc                                           ; $5c61: $c1
	db $fd                                           ; $5c62: $fd
	add c                                            ; $5c63: $81
	ld [hl], a                                       ; $5c64: $77
	sbc $98                                          ; $5c65: $de $98
	adc a                                            ; $5c67: $8f
	rlca                                             ; $5c68: $07
	rrca                                             ; $5c69: $0f
	ld h, a                                          ; $5c6a: $67
	ldh [rPCM34], a                                  ; $5c6b: $e0 $77
	adc a                                            ; $5c6d: $8f
	sbc $ff                                          ; $5c6e: $de $ff
	adc c                                            ; $5c70: $89
	or a                                             ; $5c71: $b7
	rst FarCall                                          ; $5c72: $f7
	rst FarCall                                          ; $5c73: $f7
	rst SubAFromBC                                          ; $5c74: $e7
	rst FarCall                                          ; $5c75: $f7
	ld h, [hl]                                       ; $5c76: $66
	ei                                               ; $5c77: $fb
	inc bc                                           ; $5c78: $03
	or [hl]                                          ; $5c79: $b6
	add e                                            ; $5c7a: $83
	cp $87                                           ; $5c7b: $fe $87
	rst AddAOntoHL                                          ; $5c7d: $ef
	rst SubAFromBC                                          ; $5c7e: $e7
	rst AddAOntoHL                                          ; $5c7f: $ef
	add a                                            ; $5c80: $87
	rra                                              ; $5c81: $1f
	add e                                            ; $5c82: $83
	cp a                                             ; $5c83: $bf
	add b                                            ; $5c84: $80
	rst $38                                          ; $5c85: $ff
	add b                                            ; $5c86: $80
	ld [hl], a                                       ; $5c87: $77
	db $fc                                           ; $5c88: $fc
	sub e                                            ; $5c89: $93
	rst FarCall                                          ; $5c8a: $f7
	add a                                            ; $5c8b: $87
	inc a                                            ; $5c8c: $3c
	add a                                            ; $5c8d: $87
	dec a                                            ; $5c8e: $3d
	adc a                                            ; $5c8f: $8f
	db $ed                                           ; $5c90: $ed
	rrca                                             ; $5c91: $0f
	rst FarCall                                          ; $5c92: $f7
	rrca                                             ; $5c93: $0f
	rst $38                                          ; $5c94: $ff
	rlca                                             ; $5c95: $07
	ld e, a                                          ; $5c96: $5f
	adc [hl]                                         ; $5c97: $8e
	ld a, a                                          ; $5c98: $7f
	cp $73                                           ; $5c99: $fe $73
	or $98                                           ; $5c9b: $f6 $98
	ld e, $ad                                        ; $5c9d: $1e $ad
	ld e, $ff                                        ; $5c9f: $1e $ff
	ld e, $f7                                        ; $5ca1: $1e $f7
	ld [$f477], sp                                   ; $5ca3: $08 $77 $f4
	sbc h                                            ; $5ca6: $9c
	rst GetHLinHL                                          ; $5ca7: $cf
	nop                                              ; $5ca8: $00
	ldh a, [rHDMA3]                                  ; $5ca9: $f0 $53
	add d                                            ; $5cab: $82
	sbc h                                            ; $5cac: $9c
	add h                                            ; $5cad: $84
	nop                                              ; $5cae: $00
	ld bc, $f053                                     ; $5caf: $01 $53 $f0
	sbc c                                            ; $5cb2: $99
	inc a                                            ; $5cb3: $3c
	nop                                              ; $5cb4: $00
	jp $cf00                                         ; $5cb5: $c3 $00 $cf


	jr nc, jr_042_5d29                               ; $5cb8: $30 $6f

	call nc, $fe63                                   ; $5cba: $d4 $63 $fe
	ld e, e                                          ; $5cbd: $5b
	ld c, [hl]                                       ; $5cbe: $4e
	sbc b                                            ; $5cbf: $98
	rst SubAFromBC                                          ; $5cc0: $e7
	nop                                              ; $5cc1: $00
	rst SubAFromBC                                          ; $5cc2: $e7
	jr @+$01                                         ; $5cc3: $18 $ff

	ldh a, [$1f]                                     ; $5cc5: $f0 $1f
	ld h, e                                          ; $5cc7: $63
	inc e                                            ; $5cc8: $1c
	sbc d                                            ; $5cc9: $9a
	di                                               ; $5cca: $f3
	nop                                              ; $5ccb: $00
	rst GetHLinHL                                          ; $5ccc: $cf
	ld a, b                                          ; $5ccd: $78
	cp $7b                                           ; $5cce: $fe $7b
	inc a                                            ; $5cd0: $3c
	ld a, d                                          ; $5cd1: $7a
	jp z, $fe73                                      ; $5cd2: $ca $73 $fe

	adc h                                            ; $5cd5: $8c
	ld a, [hl]                                       ; $5cd6: $7e
	nop                                              ; $5cd7: $00
	ret nc                                           ; $5cd8: $d0

	nop                                              ; $5cd9: $00
	db $db                                           ; $5cda: $db
	ld hl, sp-$05                                    ; $5cdb: $f8 $fb
	ld hl, sp+$73                                    ; $5cdd: $f8 $73
	ld hl, sp-$01                                    ; $5cdf: $f8 $ff
	ld hl, sp-$61                                    ; $5ce1: $f8 $9f
	ld h, b                                          ; $5ce3: $60
	cp $60                                           ; $5ce4: $fe $60
	db $fc                                           ; $5ce6: $fc
	nop                                              ; $5ce7: $00
	add b                                            ; $5ce8: $80
	ld l, l                                          ; $5ce9: $6d
	db $ec                                           ; $5cea: $ec
	sbc l                                            ; $5ceb: $9d
	nop                                              ; $5cec: $00
	db $e3                                           ; $5ced: $e3
	ld hl, sp-$6a                                    ; $5cee: $f8 $96
	db $fc                                           ; $5cf0: $fc
	ld bc, $01fc                                     ; $5cf1: $01 $fc $01
	push hl                                          ; $5cf4: $e5
	ld bc, $0007                                     ; $5cf5: $01 $07 $00
	inc bc                                           ; $5cf8: $03
	ld a, e                                          ; $5cf9: $7b
	add h                                            ; $5cfa: $84
	db $fd                                           ; $5cfb: $fd
	ld a, [hl]                                       ; $5cfc: $7e
	ld a, [hl]                                       ; $5cfd: $7e
	sub d                                            ; $5cfe: $92
	ldh [c], a                                       ; $5cff: $e2
	ldh a, [$f1]                                     ; $5d00: $f0 $f1
	ldh [$b7], a                                     ; $5d02: $e0 $b7
	ld b, e                                          ; $5d04: $43
	db $f4                                           ; $5d05: $f4
	inc bc                                           ; $5d06: $03
	rst SubAFromBC                                          ; $5d07: $e7
	rlca                                             ; $5d08: $07
	rrca                                             ; $5d09: $0f
	rlca                                             ; $5d0a: $07
	inc bc                                           ; $5d0b: $03
	ld a, d                                          ; $5d0c: $7a
	add [hl]                                         ; $5d0d: $86
	add b                                            ; $5d0e: $80
	ld l, [hl]                                       ; $5d0f: $6e
	nop                                              ; $5d10: $00
	add c                                            ; $5d11: $81
	nop                                              ; $5d12: $00
	pop bc                                           ; $5d13: $c1
	add e                                            ; $5d14: $83
	ld b, d                                          ; $5d15: $42
	add e                                            ; $5d16: $83
	add $83                                          ; $5d17: $c6 $83
	db $e3                                           ; $5d19: $e3
	jp $e3e1                                         ; $5d1a: $c3 $e1 $e3


	ei                                               ; $5d1d: $fb
	inc bc                                           ; $5d1e: $03
	ld a, e                                          ; $5d1f: $7b
	ld bc, $01bf                                     ; $5d20: $01 $bf $01
	sbc a                                            ; $5d23: $9f
	ret nz                                           ; $5d24: $c0

	rra                                              ; $5d25: $1f
	ret nz                                           ; $5d26: $c0

	ld l, a                                          ; $5d27: $6f
	ret nz                                           ; $5d28: $c0

jr_042_5d29:
	rst AddAOntoHL                                          ; $5d29: $ef
	ret nz                                           ; $5d2a: $c0

	rst SubAFromBC                                          ; $5d2b: $e7
	ret nz                                           ; $5d2c: $c0

	ld hl, sp+$79                                    ; $5d2d: $f8 $79
	or h                                             ; $5d2f: $b4
	rst FarCall                                          ; $5d30: $f7
	rst SubAFromDE                                          ; $5d31: $df
	add b                                            ; $5d32: $80
	sub d                                            ; $5d33: $92
	ld d, $1c                                        ; $5d34: $16 $1c
	ld [hl], $3c                                     ; $5d36: $36 $3c
	ld a, $3c                                        ; $5d38: $3e $3c
	ld a, $1c                                        ; $5d3a: $3e $1c
	ld e, h                                          ; $5d3c: $5c
	ld [$007e], sp                                   ; $5d3d: $08 $7e $00
	ld e, $fe                                        ; $5d40: $1e $fe
	ld a, a                                          ; $5d42: $7f
	ld [hl], h                                       ; $5d43: $74
	rst $38                                          ; $5d44: $ff
	add b                                            ; $5d45: $80
	ld b, $03                                        ; $5d46: $06 $03
	inc b                                            ; $5d48: $04
	rlca                                             ; $5d49: $07
	dec c                                            ; $5d4a: $0d
	rrca                                             ; $5d4b: $0f
	rra                                              ; $5d4c: $1f
	rrca                                             ; $5d4d: $0f
	ld e, $0f                                        ; $5d4e: $1e $0f
	rrca                                             ; $5d50: $0f
	rlca                                             ; $5d51: $07
	rst AddAOntoHL                                          ; $5d52: $ef
	rrca                                             ; $5d53: $0f
	db $eb                                           ; $5d54: $eb
	ld b, $00                                        ; $5d55: $06 $00
	nop                                              ; $5d57: $00
	ld [$0100], sp                                   ; $5d58: $08 $00 $01
	jr jr_042_5d68                                   ; $5d5b: $18 $0b

	jr jr_042_5d6d                                   ; $5d5d: $18 $0e

	jr jr_042_5d78                                   ; $5d5f: $18 $17

	jr jr_042_5de2                                   ; $5d61: $18 $7f

	add b                                            ; $5d63: $80
	rst SubAFromDE                                          ; $5d64: $df
	sub [hl]                                         ; $5d65: $96
	nop                                              ; $5d66: $00
	ld d, b                                          ; $5d67: $50

jr_042_5d68:
	ccf                                              ; $5d68: $3f
	ldh [$7f], a                                     ; $5d69: $e0 $7f
	and b                                            ; $5d6b: $a0
	ld a, a                                          ; $5d6c: $7f

jr_042_5d6d:
	ld h, b                                          ; $5d6d: $60
	ccf                                              ; $5d6e: $3f
	ld [hl], a                                       ; $5d6f: $77
	cp $7a                                           ; $5d70: $fe $7a
	ld a, h                                          ; $5d72: $7c
	ld d, d                                          ; $5d73: $52
	ei                                               ; $5d74: $fb
	ld a, l                                          ; $5d75: $7d
	ld b, h                                          ; $5d76: $44
	ld a, a                                          ; $5d77: $7f

jr_042_5d78:
	sbc $77                                          ; $5d78: $de $77
	dec bc                                           ; $5d7a: $0b
	ld a, [hl]                                       ; $5d7b: $7e
	or a                                             ; $5d7c: $b7
	ld l, [hl]                                       ; $5d7d: $6e
	ld d, e                                          ; $5d7e: $53
	sbc l                                            ; $5d7f: $9d
	jr nz, jr_042_5db2                               ; $5d80: $20 $30

	ld a, e                                          ; $5d82: $7b
	cp $80                                           ; $5d83: $fe $80
	db $10                                           ; $5d85: $10
	and b                                            ; $5d86: $a0
	rra                                              ; $5d87: $1f
	xor l                                            ; $5d88: $ad
	ld e, $ae                                        ; $5d89: $1e $ae
	add hl, de                                       ; $5d8b: $19
	xor a                                            ; $5d8c: $af
	inc e                                            ; $5d8d: $1c
	cpl                                              ; $5d8e: $2f
	ret c                                            ; $5d8f: $d8

jr_042_5d90:
	nop                                              ; $5d90: $00
	nop                                              ; $5d91: $00
	rrca                                             ; $5d92: $0f
	inc b                                            ; $5d93: $04
	ld hl, $291b                                     ; $5d94: $21 $1b $29
	push af                                          ; $5d97: $f5
	or h                                             ; $5d98: $b4
	xor $c9                                          ; $5d99: $ee $c9
	ld [hl], l                                       ; $5d9b: $75
	halt                                             ; $5d9c: $76
	or l                                             ; $5d9d: $b5
	dec c                                            ; $5d9e: $0d
	cp [hl]                                          ; $5d9f: $be
	ld a, [hl]                                       ; $5da0: $7e
	ldh [hDisp0_SCX], a                                     ; $5da1: $e0 $84
	ld c, a                                          ; $5da3: $4f
	add b                                            ; $5da4: $80
	or b                                             ; $5da5: $b0
	xor c                                            ; $5da6: $a9
	ld a, [hl+]                                      ; $5da7: $2a
	and l                                            ; $5da8: $a5
	inc h                                            ; $5da9: $24
	ld c, d                                          ; $5daa: $4a
	ldh [c], a                                       ; $5dab: $e2
	cp c                                             ; $5dac: $b9
	sbc [hl]                                         ; $5dad: $9e
	ld sp, hl                                        ; $5dae: $f9
	and d                                            ; $5daf: $a2
	cp a                                             ; $5db0: $bf
	inc de                                           ; $5db1: $13

jr_042_5db2:
	rst AddAOntoHL                                          ; $5db2: $ef
	cp b                                             ; $5db3: $b8
	ld a, [hl-]                                      ; $5db4: $3a
	ld [hl], $26                                     ; $5db5: $36 $26
	xor c                                            ; $5db7: $a9
	rla                                              ; $5db8: $17
	ld h, h                                          ; $5db9: $64
	ret c                                            ; $5dba: $d8

	push bc                                          ; $5dbb: $c5
	sub [hl]                                         ; $5dbc: $96
	add $7a                                          ; $5dbd: $c6 $7a
	add sp, -$14                                     ; $5dbf: $e8 $ec
	push af                                          ; $5dc1: $f5
	cp d                                             ; $5dc2: $ba
	dec c                                            ; $5dc3: $0d
	add b                                            ; $5dc4: $80
	ld [hl], a                                       ; $5dc5: $77
	nop                                              ; $5dc6: $00

jr_042_5dc7:
	and e                                            ; $5dc7: $a3
	inc hl                                           ; $5dc8: $23
	db $ec                                           ; $5dc9: $ec
	call c, Call_042_66a0                            ; $5dca: $dc $a0 $66
	jp hl                                            ; $5dcd: $e9


	ld d, a                                          ; $5dce: $57
	ld h, a                                          ; $5dcf: $67
	jp $d62e                                         ; $5dd0: $c3 $2e $d6


	ld l, c                                          ; $5dd3: $69
	jp Jump_042_52f5                                 ; $5dd4: $c3 $f5 $52


	jr nc, @+$31                                     ; $5dd7: $30 $2f

	ld e, e                                          ; $5dd9: $5b
	add $e9                                          ; $5dda: $c6 $e9
	ld b, [hl]                                       ; $5ddc: $46
	ld l, b                                          ; $5ddd: $68
	ld e, b                                          ; $5dde: $58
	xor c                                            ; $5ddf: $a9
	dec sp                                           ; $5de0: $3b
	ld l, e                                          ; $5de1: $6b

jr_042_5de2:
	ld [hl+], a                                      ; $5de2: $22
	ret nz                                           ; $5de3: $c0

	add c                                            ; $5de4: $81
	rst FarCall                                          ; $5de5: $f7
	xor [hl]                                         ; $5de6: $ae
	jr nz, jr_042_5d90                               ; $5de7: $20 $a7

	ld [hl], a                                       ; $5de9: $77
	ld [hl], l                                       ; $5dea: $75
	daa                                              ; $5deb: $27
	rra                                              ; $5dec: $1f
	ld [$f158], a                                    ; $5ded: $ea $58 $f1
	jp nc, $ca92                                     ; $5df0: $d2 $92 $ca

	nop                                              ; $5df3: $00
	nop                                              ; $5df4: $00
	ld [hl], b                                       ; $5df5: $70
	nop                                              ; $5df6: $00
	sub b                                            ; $5df7: $90
	ld a, b                                          ; $5df8: $78
	ld b, [hl]                                       ; $5df9: $46
	push af                                          ; $5dfa: $f5
	ld h, [hl]                                       ; $5dfb: $66
	rst JumpTable                                          ; $5dfc: $c7
	dec [hl]                                         ; $5dfd: $35
	jp c, $bae4                                      ; $5dfe: $da $e4 $ba

	ld [hl-], a                                      ; $5e01: $32
	sub h                                            ; $5e02: $94
	ei                                               ; $5e03: $fb
	sub l                                            ; $5e04: $95
	jr z, jr_042_5dc7                                ; $5e05: $28 $c0

	jr nc, @-$1f                                     ; $5e07: $30 $df

	ld e, e                                          ; $5e09: $5b
	cp a                                             ; $5e0a: $bf
	ld a, h                                          ; $5e0b: $7c
	db $ed                                           ; $5e0c: $ed
	sub b                                            ; $5e0d: $90
	sub a                                            ; $5e0e: $97
	ld sp, hl                                        ; $5e0f: $f9
	sub a                                            ; $5e10: $97
	cp $80                                           ; $5e11: $fe $80
	add d                                            ; $5e13: $82
	ld a, h                                          ; $5e14: $7c
	cp $3c                                           ; $5e15: $fe $3c
	ld c, h                                          ; $5e17: $4c
	cp [hl]                                          ; $5e18: $be
	ld a, b                                          ; $5e19: $78
	or l                                             ; $5e1a: $b5
	ld a, a                                          ; $5e1b: $7f
	cp $9c                                           ; $5e1c: $fe $9c
	rlca                                             ; $5e1e: $07
	dec b                                            ; $5e1f: $05
	inc bc                                           ; $5e20: $03
	ld l, [hl]                                       ; $5e21: $6e
	or d                                             ; $5e22: $b2
	rst $38                                          ; $5e23: $ff
	sbc e                                            ; $5e24: $9b
	and a                                            ; $5e25: $a7
	add e                                            ; $5e26: $83
	adc [hl]                                         ; $5e27: $8e
	add c                                            ; $5e28: $81
	ld a, c                                          ; $5e29: $79
	ld [$c09c], a                                    ; $5e2a: $ea $9c $c0
	ld [hl], a                                       ; $5e2d: $77
	add b                                            ; $5e2e: $80
	ei                                               ; $5e2f: $fb
	ld a, [hl]                                       ; $5e30: $7e
	call z, $307f                                    ; $5e31: $cc $7f $30
	ld l, [hl]                                       ; $5e34: $6e
	ld d, h                                          ; $5e35: $54
	ld a, [hl]                                       ; $5e36: $7e
	adc [hl]                                         ; $5e37: $8e
	sbc [hl]                                         ; $5e38: $9e
	add hl, bc                                       ; $5e39: $09
	halt                                             ; $5e3a: $76
	adc h                                            ; $5e3b: $8c
	sbc $80                                          ; $5e3c: $de $80
	ld a, d                                          ; $5e3e: $7a
	ld l, c                                          ; $5e3f: $69
	ld a, e                                          ; $5e40: $7b
	db $fd                                           ; $5e41: $fd
	sbc [hl]                                         ; $5e42: $9e
	ldh [$7b], a                                     ; $5e43: $e0 $7b
	cp $56                                           ; $5e45: $fe $56
	or h                                             ; $5e47: $b4
	ei                                               ; $5e48: $fb
	sbc c                                            ; $5e49: $99
	ld [$3b06], sp                                   ; $5e4a: $08 $06 $3b
	rlca                                             ; $5e4d: $07
	inc e                                            ; $5e4e: $1c
	inc b                                            ; $5e4f: $04
	rst FarCall                                          ; $5e50: $f7
	sub b                                            ; $5e51: $90
	ld d, $0a                                        ; $5e52: $16 $0a
	sub a                                            ; $5e54: $97
	dec c                                            ; $5e55: $0d
	sbc [hl]                                         ; $5e56: $9e
	add hl, de                                       ; $5e57: $19
	ld [$141b], sp                                   ; $5e58: $08 $1b $14
	dec de                                           ; $5e5b: $1b
	ld [hl-], a                                      ; $5e5c: $32
	rra                                              ; $5e5d: $1f
	daa                                              ; $5e5e: $27
	ccf                                              ; $5e5f: $3f
	rlca                                             ; $5e60: $07
	ld [hl], d                                       ; $5e61: $72
	call z, $c07e                                    ; $5e62: $cc $7e $c0
	ld l, a                                          ; $5e65: $6f
	db $fc                                           ; $5e66: $fc
	sbc e                                            ; $5e67: $9b
	ld [hl], h                                       ; $5e68: $74
	ccf                                              ; $5e69: $3f
	ld l, d                                          ; $5e6a: $6a
	ccf                                              ; $5e6b: $3f
	ld d, c                                          ; $5e6c: $51
	cp a                                             ; $5e6d: $bf
	sbc l                                            ; $5e6e: $9d
	rst $38                                          ; $5e6f: $ff
	add d                                            ; $5e70: $82
	ld l, e                                          ; $5e71: $6b
	ld hl, sp-$62                                    ; $5e72: $f8 $9e
	ld [bc], a                                       ; $5e74: $02
	ld [hl], e                                       ; $5e75: $73
	db $fc                                           ; $5e76: $fc
	add b                                            ; $5e77: $80
	inc b                                            ; $5e78: $04
	rst $38                                          ; $5e79: $ff
	ld a, [hl+]                                      ; $5e7a: $2a
	rst $38                                          ; $5e7b: $ff
	db $ec                                           ; $5e7c: $ec
	sbc $2e                                          ; $5e7d: $de $2e
	reti                                             ; $5e7f: $d9


	dec hl                                           ; $5e80: $2b
	sbc $2e                                          ; $5e81: $de $2e
	db $dd                                           ; $5e83: $dd
	ld a, [hl+]                                      ; $5e84: $2a
	call c, $db2c                                    ; $5e85: $dc $2c $db
	dec l                                            ; $5e88: $2d
	ret c                                            ; $5e89: $d8

	cpl                                              ; $5e8a: $2f
	ret c                                            ; $5e8b: $d8

	ld b, h                                          ; $5e8c: $44
	sbc $19                                          ; $5e8d: $de $19
	or h                                             ; $5e8f: $b4
	db $eb                                           ; $5e90: $eb
	ld e, c                                          ; $5e91: $59
	cp e                                             ; $5e92: $bb
	cp a                                             ; $5e93: $bf
	db $e4                                           ; $5e94: $e4
	ld d, e                                          ; $5e95: $53
	ld [hl-], a                                      ; $5e96: $32
	add b                                            ; $5e97: $80
	cp d                                             ; $5e98: $ba
	ret z                                            ; $5e99: $c8

	db $fd                                           ; $5e9a: $fd
	ld d, b                                          ; $5e9b: $50
	sbc $e5                                          ; $5e9c: $de $e5
	ld l, d                                          ; $5e9e: $6a
	ld e, c                                          ; $5e9f: $59
	ei                                               ; $5ea0: $fb
	xor e                                            ; $5ea1: $ab
	ld c, [hl]                                       ; $5ea2: $4e
	ld c, h                                          ; $5ea3: $4c
	ld h, [hl]                                       ; $5ea4: $66
	db $d3                                           ; $5ea5: $d3
	ld d, c                                          ; $5ea6: $51
	sbc a                                            ; $5ea7: $9f
	ld c, b                                          ; $5ea8: $48
	push af                                          ; $5ea9: $f5
	ld a, l                                          ; $5eaa: $7d
	ld a, h                                          ; $5eab: $7c
	ld e, c                                          ; $5eac: $59
	inc a                                            ; $5ead: $3c
	ld c, c                                          ; $5eae: $49
	inc sp                                           ; $5eaf: $33
	ld d, a                                          ; $5eb0: $57
	ld a, [hl+]                                      ; $5eb1: $2a
	inc e                                            ; $5eb2: $1c
	rst $38                                          ; $5eb3: $ff
	push hl                                          ; $5eb4: $e5
	xor h                                            ; $5eb5: $ac
	add a                                            ; $5eb6: $87
	add b                                            ; $5eb7: $80
	and [hl]                                         ; $5eb8: $a6
	db $ed                                           ; $5eb9: $ed
	ld e, a                                          ; $5eba: $5f
	cp [hl]                                          ; $5ebb: $be
	db $eb                                           ; $5ebc: $eb
	ccf                                              ; $5ebd: $3f
	daa                                              ; $5ebe: $27
	ld d, c                                          ; $5ebf: $51
	rst SubAFromDE                                          ; $5ec0: $df
	ld d, $32                                        ; $5ec1: $16 $32
	xor l                                            ; $5ec3: $ad
	ld a, l                                          ; $5ec4: $7d
	inc a                                            ; $5ec5: $3c
	ld c, d                                          ; $5ec6: $4a
	adc h                                            ; $5ec7: $8c
	ld l, d                                          ; $5ec8: $6a
	jp Jump_042_5f3f                                 ; $5ec9: $c3 $3f $5f


	add [hl]                                         ; $5ecc: $86
	ld [hl], c                                       ; $5ecd: $71
	dec l                                            ; $5ece: $2d
	rst GetHLinHL                                          ; $5ecf: $cf
	ld [$7bbe], sp                                   ; $5ed0: $08 $be $7b
	ld [hl], l                                       ; $5ed3: $75
	dec hl                                           ; $5ed4: $2b
	or e                                             ; $5ed5: $b3
	ld e, [hl]                                       ; $5ed6: $5e
	add b                                            ; $5ed7: $80
	ld h, [hl]                                       ; $5ed8: $66
	rst SubAFromBC                                          ; $5ed9: $e7
	sub [hl]                                         ; $5eda: $96
	ld c, h                                          ; $5edb: $4c
	jr nc, @+$7b                                     ; $5edc: $30 $79

	rst $38                                          ; $5ede: $ff

jr_042_5edf:
	ld b, [hl]                                       ; $5edf: $46
	or [hl]                                          ; $5ee0: $b6
	ld h, [hl]                                       ; $5ee1: $66
	add sp, -$5b                                     ; $5ee2: $e8 $a5
	ld a, c                                          ; $5ee4: $79
	inc bc                                           ; $5ee5: $03
	inc h                                            ; $5ee6: $24
	or a                                             ; $5ee7: $b7
	rst GetHLinHL                                          ; $5ee8: $cf
	ld l, l                                          ; $5ee9: $6d
	ld h, d                                          ; $5eea: $62
	rst FarCall                                          ; $5eeb: $f7
	ret c                                            ; $5eec: $d8

	ld b, [hl]                                       ; $5eed: $46
	sbc [hl]                                         ; $5eee: $9e
	add hl, de                                       ; $5eef: $19
	push hl                                          ; $5ef0: $e5
	xor e                                            ; $5ef1: $ab
	sub h                                            ; $5ef2: $94
	cp b                                             ; $5ef3: $b8
	push hl                                          ; $5ef4: $e5
	adc c                                            ; $5ef5: $89
	jp hl                                            ; $5ef6: $e9


	add b                                            ; $5ef7: $80
	sub $b6                                          ; $5ef8: $d6 $b6
	dec hl                                           ; $5efa: $2b
	xor [hl]                                         ; $5efb: $ae
	di                                               ; $5efc: $f3
	sbc l                                            ; $5efd: $9d
	db $dd                                           ; $5efe: $dd
	and d                                            ; $5eff: $a2
	add b                                            ; $5f00: $80
	push de                                          ; $5f01: $d5
	jr z, jr_042_5edf                                ; $5f02: $28 $db

	ret                                              ; $5f04: $c9


	ld a, a                                          ; $5f05: $7f
	jp $0472                                         ; $5f06: $c3 $72 $04


	db $db                                           ; $5f09: $db
	add hl, de                                       ; $5f0a: $19
	dec l                                            ; $5f0b: $2d
	ld a, [hl+]                                      ; $5f0c: $2a
	cp $98                                           ; $5f0d: $fe $98
	ld a, [bc]                                       ; $5f0f: $0a
	inc c                                            ; $5f10: $0c
	ld a, [hl]                                       ; $5f11: $7e
	call z, $dc3e                                    ; $5f12: $cc $3e $dc
	xor [hl]                                         ; $5f15: $ae
	db $fd                                           ; $5f16: $fd
	sub [hl]                                         ; $5f17: $96
	adc $7f                                          ; $5f18: $ce $7f
	ld l, [hl]                                       ; $5f1a: $6e
	xor $17                                          ; $5f1b: $ee $17
	sub [hl]                                         ; $5f1d: $96
	cpl                                              ; $5f1e: $2f
	adc $3f                                          ; $5f1f: $ce $3f
	ld a, c                                          ; $5f21: $79
	jp nc, $009c                                     ; $5f22: $d2 $9c $00

	inc c                                            ; $5f25: $0c
	ld b, $79                                        ; $5f26: $06 $79
	db $dd                                           ; $5f28: $dd
	ldh a, [hDisp1_WX]                                     ; $5f29: $f0 $96
	jr @+$0a                                         ; $5f2b: $18 $08

	sbc h                                            ; $5f2d: $9c
	ld c, h                                          ; $5f2e: $4c
	inc h                                            ; $5f2f: $24
	ld a, h                                          ; $5f30: $7c
	inc bc                                           ; $5f31: $03
	nop                                              ; $5f32: $00
	ld [bc], a                                       ; $5f33: $02
	add sp, -$65                                     ; $5f34: $e8 $9b
	jr @+$3a                                         ; $5f36: $18 $38

	jr nc, jr_042_5f72                               ; $5f38: $30 $38

	pop hl                                           ; $5f3a: $e1
	sbc h                                            ; $5f3b: $9c
	rrca                                             ; $5f3c: $0f
	ccf                                              ; $5f3d: $3f
	ld c, a                                          ; $5f3e: $4f

Jump_042_5f3f:
	ld [hl], e                                       ; $5f3f: $73
	cp $9a                                           ; $5f40: $fe $9a
	ld b, e                                          ; $5f42: $43
	ccf                                              ; $5f43: $3f
	ld b, c                                          ; $5f44: $41
	ccf                                              ; $5f45: $3f
	ld b, b                                          ; $5f46: $40
	ld a, e                                          ; $5f47: $7b
	cp $8e                                           ; $5f48: $fe $8e
	ld [hl], l                                       ; $5f4a: $75
	ccf                                              ; $5f4b: $3f
	ld [$f43f], a                                    ; $5f4c: $ea $3f $f4
	ccf                                              ; $5f4f: $3f
	ld hl, sp+$3f                                    ; $5f50: $f8 $3f
	cp $3f                                           ; $5f52: $fe $3f
	cp a                                             ; $5f54: $bf
	ld a, a                                          ; $5f55: $7f
	ldh [rIE], a                                     ; $5f56: $e0 $ff
	ret nz                                           ; $5f58: $c0

	ldh [rSB], a                                     ; $5f59: $e0 $01
	ld a, d                                          ; $5f5b: $7a
	call z, $fc7f                                    ; $5f5c: $cc $7f $fc
	ld a, [hl]                                       ; $5f5f: $7e
	call nc, $457c                                   ; $5f60: $d4 $7c $45
	rst SubAFromDE                                          ; $5f63: $df
	rst $38                                          ; $5f64: $ff
	ld a, l                                          ; $5f65: $7d
	adc h                                            ; $5f66: $8c
	ld a, h                                          ; $5f67: $7c
	db $fd                                           ; $5f68: $fd
	sbc b                                            ; $5f69: $98
	ld d, h                                          ; $5f6a: $54
	rst $38                                          ; $5f6b: $ff
	xor d                                            ; $5f6c: $aa
	rst $38                                          ; $5f6d: $ff
	call c, $feff                                    ; $5f6e: $dc $ff $fe

jr_042_5f71:
	ld a, e                                          ; $5f71: $7b

jr_042_5f72:
	cp $dd                                           ; $5f72: $fe $dd
	rst $38                                          ; $5f74: $ff
	adc d                                            ; $5f75: $8a
	dec [hl]                                         ; $5f76: $35
	ei                                               ; $5f77: $fb
	jr z, @-$21                                      ; $5f78: $28 $dd

	ld l, c                                          ; $5f7a: $69
	sbc $6a                                          ; $5f7b: $de $6a
	db $dd                                           ; $5f7d: $dd
	ld l, e                                          ; $5f7e: $6b
	call c, $fa5e                                    ; $5f7f: $dc $5e $fa
	sbc $fb                                          ; $5f82: $de $fb
	jp z, $cffd                                      ; $5f84: $ca $fd $cf

	ld sp, hl                                        ; $5f87: $f9
	push de                                          ; $5f88: $d5
	ld [hl], a                                       ; $5f89: $77
	ld l, h                                          ; $5f8a: $6c
	sbc $af                                          ; $5f8b: $de $af
	add b                                            ; $5f8d: $80
	cp c                                             ; $5f8e: $b9
	ei                                               ; $5f8f: $fb
	ld [hl], l                                       ; $5f90: $75
	di                                               ; $5f91: $f3
	ret c                                            ; $5f92: $d8

	sbc [hl]                                         ; $5f93: $9e
	sub $ed                                          ; $5f94: $d6 $ed
	ld c, l                                          ; $5f96: $4d
	rst $38                                          ; $5f97: $ff
	ld c, $e5                                        ; $5f98: $0e $e5
	pop af                                           ; $5f9a: $f1
	cp d                                             ; $5f9b: $ba
	jp nc, $86ab                                     ; $5f9c: $d2 $ab $86

	ld a, e                                          ; $5f9f: $7b
	db $10                                           ; $5fa0: $10
	cp $2a                                           ; $5fa1: $fe $2a
	xor a                                            ; $5fa3: $af
	cp e                                             ; $5fa4: $bb
	rst FarCall                                          ; $5fa5: $f7
	rst FarCall                                          ; $5fa6: $f7
	sbc a                                            ; $5fa7: $9f
	add hl, hl                                       ; $5fa8: $29
	db $fd                                           ; $5fa9: $fd
	ld b, h                                          ; $5faa: $44
	rst $38                                          ; $5fab: $ff
	ld [hl], b                                       ; $5fac: $70
	add b                                            ; $5fad: $80
	or [hl]                                          ; $5fae: $b6
	rst GetHLinHL                                          ; $5faf: $cf
	ld [hl], e                                       ; $5fb0: $73
	dec hl                                           ; $5fb1: $2b
	cp $c1                                           ; $5fb2: $fe $c1
	adc $05                                          ; $5fb4: $ce $05
	rst $38                                          ; $5fb6: $ff
	sbc c                                            ; $5fb7: $99
	rst $38                                          ; $5fb8: $ff
	inc [hl]                                         ; $5fb9: $34
	set 6, [hl]                                      ; $5fba: $cb $f6
	rra                                              ; $5fbc: $1f
	ld b, [hl]                                       ; $5fbd: $46
	di                                               ; $5fbe: $f3
	reti                                             ; $5fbf: $d9


	ld l, [hl]                                       ; $5fc0: $6e
	ld a, h                                          ; $5fc1: $7c
	ld a, e                                          ; $5fc2: $7b
	call z, $0ff4                                    ; $5fc3: $cc $f4 $0f
	xor a                                            ; $5fc6: $af
	inc d                                            ; $5fc7: $14
	rst $38                                          ; $5fc8: $ff
	cp h                                             ; $5fc9: $bc
	ld h, d                                          ; $5fca: $62

jr_042_5fcb:
	sbc h                                            ; $5fcb: $9c
	ld c, a                                          ; $5fcc: $4f
	add b                                            ; $5fcd: $80
	ld h, l                                          ; $5fce: $65
	ei                                               ; $5fcf: $fb
	jr c, jr_042_5f71                                ; $5fd0: $38 $9f

	dec c                                            ; $5fd2: $0d
	rst FarCall                                          ; $5fd3: $f7
	xor l                                            ; $5fd4: $ad
	or $ca                                           ; $5fd5: $f6 $ca
	cp e                                             ; $5fd7: $bb
	dec sp                                           ; $5fd8: $3b
	rst $38                                          ; $5fd9: $ff
	ld a, l                                          ; $5fda: $7d
	sbc [hl]                                         ; $5fdb: $9e
	inc c                                            ; $5fdc: $0c
	rst SubAFromHL                                          ; $5fdd: $d7
	ld l, d                                          ; $5fde: $6a
	and $a6                                          ; $5fdf: $e6 $a6
	rst SubAFromDE                                          ; $5fe1: $df
	dec e                                            ; $5fe2: $1d
	ei                                               ; $5fe3: $fb
	sub $f8                                          ; $5fe4: $d6 $f8
	db $ec                                           ; $5fe6: $ec
	halt                                             ; $5fe7: $76
	adc l                                            ; $5fe8: $8d
	rst $38                                          ; $5fe9: $ff
	jr nz, jr_042_5fcb                               ; $5fea: $20 $df

	adc [hl]                                         ; $5fec: $8e
	add b                                            ; $5fed: $80
	or $07                                           ; $5fee: $f6 $07
	xor $e4                                          ; $5ff0: $ee $e4
	db $fd                                           ; $5ff2: $fd
	xor l                                            ; $5ff3: $ad
	ld h, e                                          ; $5ff4: $63
	ld [$776f], sp                                   ; $5ff5: $08 $6f $77
	sbc $d2                                          ; $5ff8: $de $d2
	di                                               ; $5ffa: $f3
	or h                                             ; $5ffb: $b4
	ld d, a                                          ; $5ffc: $57
	ld a, [$7771]                                    ; $5ffd: $fa $71 $77
	xor a                                            ; $6000: $af
	ld [$6df3], a                                    ; $6001: $ea $f3 $6d
	xor [hl]                                         ; $6004: $ae
	sub l                                            ; $6005: $95
	db $fd                                           ; $6006: $fd
	ld e, a                                          ; $6007: $5f
	cp a                                             ; $6008: $bf
	ld d, [hl]                                       ; $6009: $56
	ei                                               ; $600a: $fb
	ld c, [hl]                                       ; $600b: $4e
	scf                                              ; $600c: $37
	sub b                                            ; $600d: $90
	rst FarCall                                          ; $600e: $f7
	ld a, [hl]                                       ; $600f: $7e
	ld d, a                                          ; $6010: $57
	ld a, [hl+]                                      ; $6011: $2a
	adc a                                            ; $6012: $8f
	ld d, d                                          ; $6013: $52
	or a                                             ; $6014: $b7
	jp c, $be0b                                      ; $6015: $da $0b $be

	ld a, e                                          ; $6018: $7b
	cp [hl]                                          ; $6019: $be
	add e                                            ; $601a: $83
	ld a, [hl]                                       ; $601b: $7e
	nop                                              ; $601c: $00
	ld a, c                                          ; $601d: $79
	xor h                                            ; $601e: $ac
	sbc e                                            ; $601f: $9b
	add d                                            ; $6020: $82
	ld bc, $0182                                     ; $6021: $01 $82 $01
	ld [hl], l                                       ; $6024: $75
	xor e                                            ; $6025: $ab
	ld [hl], a                                       ; $6026: $77
	cp $92                                           ; $6027: $fe $92
	ccf                                              ; $6029: $3f
	ld e, $0f                                        ; $602a: $1e $0f
	rra                                              ; $602c: $1f
	sbc h                                            ; $602d: $9c
	inc e                                            ; $602e: $1c
	cp d                                             ; $602f: $ba
	inc e                                            ; $6030: $1c
	nop                                              ; $6031: $00
	inc c                                            ; $6032: $0c
	ld a, l                                          ; $6033: $7d
	ld bc, $7876                                     ; $6034: $01 $76 $78
	cpl                                              ; $6037: $2f
	ld h, b                                          ; $6038: $60
	ld d, [hl]                                       ; $6039: $56
	ld a, l                                          ; $603a: $7d
	sub h                                            ; $603b: $94
	rst SubAFromDE                                          ; $603c: $df
	add b                                            ; $603d: $80
	ld a, a                                          ; $603e: $7f
	ld de, $c08f                                     ; $603f: $11 $8f $c0
	ld a, $3f                                        ; $6042: $3e $3f
	ld a, $3f                                        ; $6044: $3e $3f
	jr c, jr_042_6080                                ; $6046: $38 $38

	ld a, h                                          ; $6048: $7c
	jr c, jr_042_6053                                ; $6049: $38 $08

	jr nc, @+$62                                     ; $604b: $30 $60

	db $10                                           ; $604d: $10
	ld a, [hl]                                       ; $604e: $7e
	jr jr_042_608f                                   ; $604f: $18 $3e

	or $7e                                           ; $6051: $f6 $7e

jr_042_6053:
	ld a, h                                          ; $6053: $7c
	sbc h                                            ; $6054: $9c
	rrca                                             ; $6055: $0f
	ld b, $0c                                        ; $6056: $06 $0c
	ld b, d                                          ; $6058: $42
	ld [hl], a                                       ; $6059: $77
	add l                                            ; $605a: $85
	ld h, c                                          ; $605b: $61
	ccf                                              ; $605c: $3f
	ld h, e                                          ; $605d: $63
	ccf                                              ; $605e: $3f
	ld [hl], e                                       ; $605f: $73
	ld e, $73                                        ; $6060: $1e $73
	rra                                              ; $6062: $1f
	ccf                                              ; $6063: $3f
	ld c, e                                          ; $6064: $4b
	ld e, a                                          ; $6065: $5f
	dec hl                                           ; $6066: $2b
	add hl, sp                                       ; $6067: $39
	ccf                                              ; $6068: $3f
	ccf                                              ; $6069: $3f
	rra                                              ; $606a: $1f
	ld bc, $029a                                     ; $606b: $01 $9a $02

jr_042_606e:
	dec [hl]                                         ; $606e: $35
	rlca                                             ; $606f: $07
	ld c, b                                          ; $6070: $48
	ld de, $0fee                                     ; $6071: $11 $ee $0f
	ldh a, [$74]                                     ; $6074: $f0 $74
	ld c, b                                          ; $6076: $48
	rst SubAFromDE                                          ; $6077: $df
	rst $38                                          ; $6078: $ff
	add b                                            ; $6079: $80
	ld a, [bc]                                       ; $607a: $0a
	push af                                          ; $607b: $f5
	add e                                            ; $607c: $83
	ld l, h                                          ; $607d: $6c
	ld b, e                                          ; $607e: $43
	adc h                                            ; $607f: $8c

jr_042_6080:
	rst GetHLinHL                                          ; $6080: $cf
	jr nc, @+$05                                     ; $6081: $30 $03

	db $fc                                           ; $6083: $fc
	rra                                              ; $6084: $1f
	ldh [$1f], a                                     ; $6085: $e0 $1f
	rst $38                                          ; $6087: $ff
	db $fc                                           ; $6088: $fc
	rst $38                                          ; $6089: $ff
	jp nz, $0621                                     ; $608a: $c2 $21 $06

	add c                                            ; $608d: $81
	ld e, a                                          ; $608e: $5f

jr_042_608f:
	and b                                            ; $608f: $a0
	rra                                              ; $6090: $1f
	ldh [$fe], a                                     ; $6091: $e0 $fe
	ld bc, $03fc                                     ; $6093: $01 $fc $03
	ld sp, hl                                        ; $6096: $f9
	rst $38                                          ; $6097: $ff
	cpl                                              ; $6098: $2f
	adc [hl]                                         ; $6099: $8e
	rst $38                                          ; $609a: $ff
	ccf                                              ; $609b: $3f
	ret nz                                           ; $609c: $c0

	jr nc, jr_042_606e                               ; $609d: $30 $cf

	ccf                                              ; $609f: $3f
	rst GetHLinHL                                          ; $60a0: $cf
	add hl, sp                                       ; $60a1: $39
	adc $3b                                          ; $60a2: $ce $3b
	call z, $dc6b                                    ; $60a4: $cc $6b $dc
	sbc a                                            ; $60a7: $9f
	rst $38                                          ; $60a8: $ff
	sbc a                                            ; $60a9: $9f
	ccf                                              ; $60aa: $3f
	ld l, a                                          ; $60ab: $6f
	jp z, $5969                                      ; $60ac: $ca $69 $59

	ld [hl], e                                       ; $60af: $73
	or $47                                           ; $60b0: $f6 $47
	ldh a, [hDisp1_WX]                                     ; $60b2: $f0 $96
	or b                                             ; $60b4: $b0
	ld c, a                                          ; $60b5: $4f
	rst $38                                          ; $60b6: $ff
	rst $38                                          ; $60b7: $ff
	ld hl, sp+$07                                    ; $60b8: $f8 $07
	db $fc                                           ; $60ba: $fc
	inc bc                                           ; $60bb: $03
	ldh a, [$7a]                                     ; $60bc: $f0 $7a
	ld l, l                                          ; $60be: $6d
	ld a, d                                          ; $60bf: $7a

Jump_042_60c0:
	ld a, d                                          ; $60c0: $7a

Jump_042_60c1:
	ld [hl], e                                       ; $60c1: $73
	ldh [$99], a                                     ; $60c2: $e0 $99
	ld bc, $03fe                                     ; $60c4: $01 $fe $03
	db $fc                                           ; $60c7: $fc
	rlca                                             ; $60c8: $07
	ld hl, sp+$4f                                    ; $60c9: $f8 $4f
	ret nc                                           ; $60cb: $d0

	sbc c                                            ; $60cc: $99
	sbc a                                            ; $60cd: $9f
	ld h, b                                          ; $60ce: $60
	sbc e                                            ; $60cf: $9b
	daa                                              ; $60d0: $27
	sub a                                            ; $60d1: $97

jr_042_60d2:
	adc a                                            ; $60d2: $8f
	ld l, a                                          ; $60d3: $6f
	ldh a, [$9d]                                     ; $60d4: $f0 $9d
	add b                                            ; $60d6: $80
	ld a, a                                          ; $60d7: $7f
	ccf                                              ; $60d8: $3f
	or b                                             ; $60d9: $b0
	ld a, a                                          ; $60da: $7f
	add [hl]                                         ; $60db: $86
	sbc e                                            ; $60dc: $9b
	cp b                                             ; $60dd: $b8
	rra                                              ; $60de: $1f
	cp a                                             ; $60df: $bf
	rra                                              ; $60e0: $1f
	ld l, a                                          ; $60e1: $6f
	ldh a, [hDisp1_WY]                                     ; $60e2: $f0 $95
	pop bc                                           ; $60e4: $c1
	ld a, $ff                                        ; $60e5: $3e $ff
	nop                                              ; $60e7: $00
	db $fd                                           ; $60e8: $fd
	ld [bc], a                                       ; $60e9: $02
	ld a, [de]                                       ; $60ea: $1a
	db $fd                                           ; $60eb: $fd
	db $fc                                           ; $60ec: $fc
	db $fc                                           ; $60ed: $fc
	ld [hl], a                                       ; $60ee: $77
	ldh a, [$7b]                                     ; $60ef: $f0 $7b
	xor d                                            ; $60f1: $aa
	sbc b                                            ; $60f2: $98
	ld [bc], a                                       ; $60f3: $02
	push af                                          ; $60f4: $f5
	ld a, [bc]                                       ; $60f5: $0a
	ld [bc], a                                       ; $60f6: $02
	rst $38                                          ; $60f7: $ff
	ld b, b                                          ; $60f8: $40
	cp a                                             ; $60f9: $bf
	ld a, d                                          ; $60fa: $7a
	db $ec                                           ; $60fb: $ec
	ld [hl], h                                       ; $60fc: $74
	ld [hl], b                                       ; $60fd: $70
	or $df                                           ; $60fe: $f6 $df
	ld bc, $357c                                     ; $6100: $01 $7c $35
	ld a, d                                          ; $6103: $7a
	jp z, $fa7f                                      ; $6104: $ca $7f $fa

	ld a, b                                          ; $6107: $78
	ld d, b                                          ; $6108: $50
	db $fd                                           ; $6109: $fd
	rst SubAFromDE                                          ; $610a: $df
	ldh [$7a], a                                     ; $610b: $e0 $7a
	ret                                              ; $610d: $c9


	sbc c                                            ; $610e: $99
	ret nz                                           ; $610f: $c0

	jr c, jr_042_60d2                                ; $6110: $38 $c0

	cp c                                             ; $6112: $b9
	ld h, c                                          ; $6113: $61
	ld hl, sp+$62                                    ; $6114: $f8 $62
	ret c                                            ; $6116: $d8

	ld [hl], a                                       ; $6117: $77
	cp $9e                                           ; $6118: $fe $9e
	ld b, [hl]                                       ; $611a: $46
	ld l, b                                          ; $611b: $68
	adc l                                            ; $611c: $8d
	rst SubAFromDE                                          ; $611d: $df
	rrca                                             ; $611e: $0f
	adc [hl]                                         ; $611f: $8e
	rst AddAOntoHL                                          ; $6120: $ef
	ld h, a                                          ; $6121: $67
	rst GetHLinHL                                          ; $6122: $cf
	ld l, [hl]                                       ; $6123: $6e
	rst $38                                          ; $6124: $ff
	ld a, [hl]                                       ; $6125: $7e
	ld sp, hl                                        ; $6126: $f9
	ld a, [hl]                                       ; $6127: $7e
	ld sp, hl                                        ; $6128: $f9
	and $ff                                          ; $6129: $e6 $ff
	and $3f                                          ; $612b: $e6 $3f
	ldh [$80], a                                     ; $612d: $e0 $80
	ret nz                                           ; $612f: $c0

	add b                                            ; $6130: $80
	ld [hl], b                                       ; $6131: $70
	dec hl                                           ; $6132: $2b
	rst SubAFromDE                                          ; $6133: $df
	inc bc                                           ; $6134: $03
	sbc h                                            ; $6135: $9c
	add d                                            ; $6136: $82
	inc bc                                           ; $6137: $03
	rst SubAFromBC                                          ; $6138: $e7
	sbc $03                                          ; $6139: $de $03
	sbc h                                            ; $613b: $9c
	ld a, $0f                                        ; $613c: $3e $0f
	inc b                                            ; $613e: $04
	halt                                             ; $613f: $76
	ld e, [hl]                                       ; $6140: $5e
	sbc c                                            ; $6141: $99
	inc b                                            ; $6142: $04
	ld b, $8e                                        ; $6143: $06 $8e
	adc d                                            ; $6145: $8a
	inc c                                            ; $6146: $0c
	rst $38                                          ; $6147: $ff
	sbc $ef                                          ; $6148: $de $ef
	rst SubAFromDE                                          ; $614a: $df
	rst $38                                          ; $614b: $ff
	ld a, e                                          ; $614c: $7b
	ld d, l                                          ; $614d: $55
	ld h, d                                          ; $614e: $62
	ld l, h                                          ; $614f: $6c
	ld a, a                                          ; $6150: $7f
	cp $99                                           ; $6151: $fe $99
	cp h                                             ; $6153: $bc
	ei                                               ; $6154: $fb
	ld e, $3f                                        ; $6155: $1e $3f
	inc c                                            ; $6157: $0c
	dec de                                           ; $6158: $1b
	ld e, a                                          ; $6159: $5f
	add c                                            ; $615a: $81
	sbc c                                            ; $615b: $99
	sbc [hl]                                         ; $615c: $9e
	ld a, [hl]                                       ; $615d: $7e
	inc e                                            ; $615e: $1c
	cp $08                                           ; $615f: $fe $08
	db $f4                                           ; $6161: $f4
	ld l, a                                          ; $6162: $6f
	add [hl]                                         ; $6163: $86
	rst SubAFromDE                                          ; $6164: $df
	ldh [$df], a                                     ; $6165: $e0 $df
	db $fc                                           ; $6167: $fc
	ld [hl], a                                       ; $6168: $77
	ld a, $9e                                        ; $6169: $3e $9e
	ldh a, [$f6]                                     ; $616b: $f0 $f6
	ld [hl], e                                       ; $616d: $73
	ld e, $f8                                        ; $616e: $1e $f8
	ld a, a                                          ; $6170: $7f
	sub l                                            ; $6171: $95
	ld c, a                                          ; $6172: $4f
	ldh a, [rPCM34]                                  ; $6173: $f0 $77
	ldh [$9e], a                                     ; $6175: $e0 $9e
	rst FarCall                                          ; $6177: $f7
	sbc $0f                                          ; $6178: $de $0f
	ld a, [hl]                                       ; $617a: $7e
	ld e, b                                          ; $617b: $58
	rst SubAFromDE                                          ; $617c: $df
	rrca                                             ; $617d: $0f
	sbc c                                            ; $617e: $99
	ld [$0507], sp                                   ; $617f: $08 $07 $05
	ld [bc], a                                       ; $6182: $02
	rra                                              ; $6183: $1f
	rlca                                             ; $6184: $07
	ld a, d                                          ; $6185: $7a
	adc h                                            ; $6186: $8c
	sbc l                                            ; $6187: $9d
	ldh [$f0], a                                     ; $6188: $e0 $f0
	ld l, e                                          ; $618a: $6b
	add hl, de                                       ; $618b: $19
	ld [hl], a                                       ; $618c: $77
	cp $df                                           ; $618d: $fe $df
	adc a                                            ; $618f: $8f
	ld a, l                                          ; $6190: $7d
	inc e                                            ; $6191: $1c
	sbc l                                            ; $6192: $9d
	nop                                              ; $6193: $00
	rlca                                             ; $6194: $07
	ei                                               ; $6195: $fb
	sbc [hl]                                         ; $6196: $9e
	inc b                                            ; $6197: $04
	sbc $0e                                          ; $6198: $de $0e
	sbc c                                            ; $619a: $99
	ld h, a                                          ; $619b: $67
	sbc a                                            ; $619c: $9f
	ld b, a                                          ; $619d: $47
	cp a                                             ; $619e: $bf
	xor d                                            ; $619f: $aa
	db $fc                                           ; $61a0: $fc
	ld h, e                                          ; $61a1: $63
	or b                                             ; $61a2: $b0
	sbc c                                            ; $61a3: $99
	ret nz                                           ; $61a4: $c0

	sbc a                                            ; $61a5: $9f
	cp a                                             ; $61a6: $bf
	ccf                                              ; $61a7: $3f
	sbc a                                            ; $61a8: $9f
	adc $de                                          ; $61a9: $ce $de
	rra                                              ; $61ab: $1f
	sbc $3f                                          ; $61ac: $de $3f
	sub l                                            ; $61ae: $95
	ld a, $1f                                        ; $61af: $3e $1f
	ld e, $02                                        ; $61b1: $1e $02
	inc c                                            ; $61b3: $0c
	inc e                                            ; $61b4: $1c
	db $fc                                           ; $61b5: $fc
	ld a, h                                          ; $61b6: $7c
	cp h                                             ; $61b7: $bc
	ld e, b                                          ; $61b8: $58
	ld h, a                                          ; $61b9: $67
	dec b                                            ; $61ba: $05
	cp $9b                                           ; $61bb: $fe $9b
	ld hl, sp+$40                                    ; $61bd: $f8 $40
	db $fc                                           ; $61bf: $fc
	nop                                              ; $61c0: $00
	ld [hl], a                                       ; $61c1: $77
	pop de                                           ; $61c2: $d1
	sub c                                            ; $61c3: $91
	jr jr_042_61d2                                   ; $61c4: $18 $0c

	ld c, $1c                                        ; $61c6: $0e $1c
	inc c                                            ; $61c8: $0c
	inc c                                            ; $61c9: $0c
	ccf                                              ; $61ca: $3f
	ld e, $1b                                        ; $61cb: $1e $1b
	add hl, sp                                       ; $61cd: $39
	add hl, de                                       ; $61ce: $19
	dec sp                                           ; $61cf: $3b
	dec sp                                           ; $61d0: $3b
	add hl, sp                                       ; $61d1: $39

jr_042_61d2:
	db $db                                           ; $61d2: $db
	ld a, a                                          ; $61d3: $7f
	sbc e                                            ; $61d4: $9b
	jr nz, @+$1b                                     ; $61d5: $20 $19

	ld [bc], a                                       ; $61d7: $02
	add hl, de                                       ; $61d8: $19
	ld a, e                                          ; $61d9: $7b
	ld bc, $fe7b                                     ; $61da: $01 $7b $fe
	sbc $e0                                          ; $61dd: $de $e0
	sbc $c0                                          ; $61df: $de $c0
	sbc [hl]                                         ; $61e1: $9e
	ld b, b                                          ; $61e2: $40
	ld [hl], a                                       ; $61e3: $77
	adc a                                            ; $61e4: $8f
	ld a, e                                          ; $61e5: $7b
	ld [bc], a                                       ; $61e6: $02
	ld a, a                                          ; $61e7: $7f
	cp $ff                                           ; $61e8: $fe $ff
	sub a                                            ; $61ea: $97
	jr nz, jr_042_61fd                               ; $61eb: $20 $10

	jr @+$3a                                         ; $61ed: $18 $38

	jr jr_042_622a                                   ; $61ef: $18 $39

	db $fc                                           ; $61f1: $fc
	ld sp, hl                                        ; $61f2: $f9
	ld l, d                                          ; $61f3: $6a
	ld d, $63                                        ; $61f4: $16 $63
	cp $9b                                           ; $61f6: $fe $9b
	sbc a                                            ; $61f8: $9f
	ld b, b                                          ; $61f9: $40
	cp $60                                           ; $61fa: $fe $60
	ld h, a                                          ; $61fc: $67

jr_042_61fd:
	db $f4                                           ; $61fd: $f4
	sub h                                            ; $61fe: $94
	rst SubAFromDE                                          ; $61ff: $df
	jr nz, jr_042_6271                               ; $6200: $20 $6f

	ldh a, [rAUD2ENV]                                ; $6202: $f0 $17
	inc bc                                           ; $6204: $03
	scf                                              ; $6205: $37
	dec sp                                           ; $6206: $3b
	jr z, jr_042_623c                                ; $6207: $28 $33

	cp $78                                           ; $6209: $fe $78
	ld h, b                                          ; $620b: $60
	adc a                                            ; $620c: $8f
	rst $38                                          ; $620d: $ff
	jr c, @+$01                                      ; $620e: $38 $ff

	ld a, b                                          ; $6210: $78
	rst GetHLinHL                                          ; $6211: $cf
	jr nc, @-$60                                     ; $6212: $30 $9e

	adc [hl]                                         ; $6214: $8e
	rst SubAFromDE                                          ; $6215: $df
	adc [hl]                                         ; $6216: $8e
	ld l, d                                          ; $6217: $6a
	add h                                            ; $6218: $84
	ld a, d                                          ; $6219: $7a
	add h                                            ; $621a: $84
	rst $38                                          ; $621b: $ff
	add [hl]                                         ; $621c: $86
	ld l, a                                          ; $621d: $6f
	call c, $91ff                                    ; $621e: $dc $ff $91
	jr nc, jr_042_6223                               ; $6221: $30 $00

jr_042_6223:
	ld [hl], b                                       ; $6223: $70
	jr nc, jr_042_6286                               ; $6224: $30 $60

	jr nc, jr_042_62a4                               ; $6226: $30 $7c

	ld a, $7e                                        ; $6228: $3e $7e

jr_042_622a:
	inc a                                            ; $622a: $3c
	ld hl, sp+$30                                    ; $622b: $f8 $30
	ld hl, sp+$70                                    ; $622d: $f8 $70
	db $dd                                           ; $622f: $dd
	inc bc                                           ; $6230: $03
	rst SubAFromDE                                          ; $6231: $df
	ld bc, $497a                                     ; $6232: $01 $7a $49
	halt                                             ; $6235: $76
	ld c, b                                          ; $6236: $48
	sbc d                                            ; $6237: $9a
	rlca                                             ; $6238: $07
	dec c                                            ; $6239: $0d
	ld b, $fc                                        ; $623a: $06 $fc

jr_042_623c:
	ldh a, [$db]                                     ; $623c: $f0 $db
	ldh [$98], a                                     ; $623e: $e0 $98
	ld sp, hl                                        ; $6240: $f9
	ldh [$fc], a                                     ; $6241: $e0 $fc
	pop hl                                           ; $6243: $e1
	db $fd                                           ; $6244: $fd
	ldh [$3f], a                                     ; $6245: $e0 $3f
	ld a, e                                          ; $6247: $7b
	push hl                                          ; $6248: $e5
	halt                                             ; $6249: $76
	inc l                                            ; $624a: $2c
	rst SubAFromDE                                          ; $624b: $df
	ld bc, $e596                                     ; $624c: $01 $96 $e5
	jp $e7c7                                         ; $624f: $c3 $c7 $e7


	and $c7                                          ; $6252: $e6 $c7
	rst AddAOntoHL                                          ; $6254: $ef
	rst FarCall                                          ; $6255: $f7
	ret nz                                           ; $6256: $c0

	ld a, e                                          ; $6257: $7b
	ld h, [hl]                                       ; $6258: $66
	ld a, [hl]                                       ; $6259: $7e
	rst AddAOntoHL                                          ; $625a: $ef
	rst SubAFromDE                                          ; $625b: $df
	ldh a, [$97]                                     ; $625c: $f0 $97
	pop af                                           ; $625e: $f1
	ldh [$fd], a                                     ; $625f: $e0 $fd
	ldh [$3d], a                                     ; $6261: $e0 $3d
	pop bc                                           ; $6263: $c1
	cp a                                             ; $6264: $bf
	jp $0767                                         ; $6265: $c3 $67 $07


	sbc e                                            ; $6268: $9b
	ldh [$cc], a                                     ; $6269: $e0 $cc
	ldh a, [$cc]                                     ; $626b: $f0 $cc
	sbc $f8                                          ; $626d: $de $f8
	ld a, l                                          ; $626f: $7d
	adc e                                            ; $6270: $8b

jr_042_6271:
	ld a, [$118c]                                    ; $6271: $fa $8c $11
	jr c, jr_042_62b3                                ; $6274: $38 $3d

	jr c, @+$3b                                      ; $6276: $38 $39

	jr @+$7f                                         ; $6278: $18 $7d

	ccf                                              ; $627a: $3f

Jump_042_627b:
	nop                                              ; $627b: $00
	nop                                              ; $627c: $00
	db $e3                                           ; $627d: $e3

Call_042_627e:
	ld b, b                                          ; $627e: $40
	ld [hl], a                                       ; $627f: $77
	db $e3                                           ; $6280: $e3
	db $e3                                           ; $6281: $e3
	ld h, e                                          ; $6282: $63
	rst $38                                          ; $6283: $ff
	di                                               ; $6284: $f3
	rst $38                                          ; $6285: $ff

jr_042_6286:
	sbc $f7                                          ; $6286: $de $f7
	rst SubAFromDE                                          ; $6288: $df
	rst $38                                          ; $6289: $ff
	rst SubAFromDE                                          ; $628a: $df
	rrca                                             ; $628b: $0f
	rst SubAFromDE                                          ; $628c: $df
	rra                                              ; $628d: $1f
	sub d                                            ; $628e: $92
	cp a                                             ; $628f: $bf
	ld e, $9f                                        ; $6290: $1e $9f
	rra                                              ; $6292: $1f
	rst JumpTable                                          ; $6293: $c7
	ld c, $c1                                        ; $6294: $0e $c1
	adc $df                                          ; $6296: $ce $df
	add [hl]                                         ; $6298: $86
	rst $38                                          ; $6299: $ff
	add a                                            ; $629a: $87
	adc a                                            ; $629b: $8f
	sbc $87                                          ; $629c: $de $87
	sbc [hl]                                         ; $629e: $9e
	adc a                                            ; $629f: $8f
	ld a, e                                          ; $62a0: $7b
	db $ec                                           ; $62a1: $ec
	ld a, d                                          ; $62a2: $7a
	adc a                                            ; $62a3: $8f

jr_042_62a4:
	ld a, [hl]                                       ; $62a4: $7e
	and a                                            ; $62a5: $a7
	sub a                                            ; $62a6: $97
	rlca                                             ; $62a7: $07
	xor l                                            ; $62a8: $ad
	rlca                                             ; $62a9: $07
	or e                                             ; $62aa: $b3
	inc c                                            ; $62ab: $0c
	ccf                                              ; $62ac: $3f
	inc c                                            ; $62ad: $0c
	rst SubAFromDE                                          ; $62ae: $df
	ld a, c                                          ; $62af: $79
	adc $7e                                          ; $62b0: $ce $7e
	db $fc                                           ; $62b2: $fc

jr_042_62b3:
	sbc h                                            ; $62b3: $9c
	add a                                            ; $62b4: $87
	inc bc                                           ; $62b5: $03
	or a                                             ; $62b6: $b7
	ld a, e                                          ; $62b7: $7b
	cp $7c                                           ; $62b8: $fe $7c
	ld hl, $8e92                                     ; $62ba: $21 $92 $8e
	inc c                                            ; $62bd: $0c
	rra                                              ; $62be: $1f
	inc c                                            ; $62bf: $0c
	ccf                                              ; $62c0: $3f
	rra                                              ; $62c1: $1f
	ccf                                              ; $62c2: $3f
	ld e, $bf                                        ; $62c3: $1e $bf
	ld e, $9c                                        ; $62c5: $1e $9c

Jump_042_62c7:
	ld c, $9e                                        ; $62c7: $0e $9e
	ld a, d                                          ; $62c9: $7a
	adc $7f                                          ; $62ca: $ce $7f

Jump_042_62cc:
	cp $99                                           ; $62cc: $fe $99
	ld a, $1e                                        ; $62ce: $3e $1e
	ld sp, $ff0c                                     ; $62d0: $31 $0c $ff
	inc c                                            ; $62d3: $0c
	ld l, a                                          ; $62d4: $6f
	jr nc, @-$67                                     ; $62d5: $30 $97

	ccf                                              ; $62d7: $3f
	jr nc, jr_042_6359                               ; $62d8: $30 $7f

	ld sp, $317b                                     ; $62da: $31 $7b $31
	ld sp, hl                                        ; $62dd: $f9
	ld sp, $e979                                     ; $62de: $31 $79 $e9
	sbc c                                            ; $62e1: $99
	ld a, e                                          ; $62e2: $7b
	rst $38                                          ; $62e3: $ff
	ld a, e                                          ; $62e4: $7b
	rst GetHLinHL                                          ; $62e5: $cf
	inc sp                                           ; $62e6: $33
	ret nz                                           ; $62e7: $c0

jr_042_62e8:
	ld [hl], b                                       ; $62e8: $70
	ld e, b                                          ; $62e9: $58
	ld a, a                                          ; $62ea: $7f
	db $fc                                           ; $62eb: $fc
	sub l                                            ; $62ec: $95
	rst FarCall                                          ; $62ed: $f7
	ldh [$e7], a                                     ; $62ee: $e0 $e7
	ldh [$f7], a                                     ; $62f0: $e0 $f7
	ld hl, sp-$09                                    ; $62f2: $f8 $f7
	ld hl, sp-$0f                                    ; $62f4: $f8 $f1
	jr c, @-$20                                      ; $62f6: $38 $de

	ccf                                              ; $62f8: $3f
	sbc b                                            ; $62f9: $98
	add hl, sp                                       ; $62fa: $39
	jp $ff19                                         ; $62fb: $c3 $19 $ff


	add hl, de                                       ; $62fe: $19
	cp $01                                           ; $62ff: $fe $01
	ld a, e                                          ; $6301: $7b
	ret nc                                           ; $6302: $d0

	sbc [hl]                                         ; $6303: $9e
	jr jr_042_634c                                   ; $6304: $18 $46

	ret nz                                           ; $6306: $c0

	adc l                                            ; $6307: $8d
	rst SubAFromDE                                          ; $6308: $df
	ld h, b                                          ; $6309: $60
	ei                                               ; $630a: $fb
	ld l, h                                          ; $630b: $6c
	ei                                               ; $630c: $fb
	ld a, h                                          ; $630d: $7c
	rst AddAOntoHL                                          ; $630e: $ef
	ldh a, [rIE]                                     ; $630f: $f0 $ff
	ldh a, [$9f]                                     ; $6311: $f0 $9f
	ld h, b                                          ; $6313: $60
	rst SubAFromDE                                          ; $6314: $df
	ld h, b                                          ; $6315: $60
	rst $38                                          ; $6316: $ff
	jr nc, jr_042_62e8                               ; $6317: $30 $cf

	jr nc, jr_042_635a                               ; $6319: $30 $3f

	call c, $d053                                    ; $631b: $dc $53 $d0
	sbc d                                            ; $631e: $9a
	jr nz, @+$01                                     ; $631f: $20 $ff

	jr nz, @+$01                                     ; $6321: $20 $ff

	db $10                                           ; $6323: $10
	ld e, a                                          ; $6324: $5f
	ldh a, [$9b]                                     ; $6325: $f0 $9b
	db $ed                                           ; $6327: $ed
	ld b, $ff                                        ; $6328: $06 $ff
	rlca                                             ; $632a: $07
	ld a, e                                          ; $632b: $7b
	cp $7c                                           ; $632c: $fe $7c
	sub h                                            ; $632e: $94
	sbc l                                            ; $632f: $9d
	rlca                                             ; $6330: $07
	ld sp, hl                                        ; $6331: $f9
	ld [hl], a                                       ; $6332: $77
	or $7f                                           ; $6333: $f6 $7f
	xor $99                                          ; $6335: $ee $99
	ld bc, $c19f                                     ; $6337: $01 $9f $c1
	rst $38                                          ; $633a: $ff
	nop                                              ; $633b: $00
	ld a, a                                          ; $633c: $7f
	ld e, a                                          ; $633d: $5f
	adc $7d                                          ; $633e: $ce $7d
	ld c, [hl]                                       ; $6340: $4e
	sbc b                                            ; $6341: $98
	rst AddAOntoHL                                          ; $6342: $ef
	sbc l                                            ; $6343: $9d
	rst SubAFromBC                                          ; $6344: $e7
	inc a                                            ; $6345: $3c
	jp $c7ff                                         ; $6346: $c3 $ff $c7


	ld l, e                                          ; $6349: $6b
	ldh a, [$9a]                                     ; $634a: $f0 $9a

jr_042_634c:
	add e                                            ; $634c: $83
	rst $38                                          ; $634d: $ff
	add c                                            ; $634e: $81
	rst $38                                          ; $634f: $ff
	add b                                            ; $6350: $80
	ld [hl], a                                       ; $6351: $77
	ret c                                            ; $6352: $d8

	ld l, a                                          ; $6353: $6f
	ldh a, [$7e]                                     ; $6354: $f0 $7e
	sub c                                            ; $6356: $91
	ld a, a                                          ; $6357: $7f
	ld d, [hl]                                       ; $6358: $56

jr_042_6359:
	ld a, h                                          ; $6359: $7c

jr_042_635a:
	sub [hl]                                         ; $635a: $96
	sbc l                                            ; $635b: $9d
	ld a, a                                          ; $635c: $7f
	ldh [$73], a                                     ; $635d: $e0 $73
	db $ec                                           ; $635f: $ec
	ld [hl], a                                       ; $6360: $77
	cp $7e                                           ; $6361: $fe $7e
	ld c, b                                          ; $6363: $48
	sub [hl]                                         ; $6364: $96
	dec a                                            ; $6365: $3d
	rst SubAFromBC                                          ; $6366: $e7
	ccf                                              ; $6367: $3f
	db $eb                                           ; $6368: $eb
	rla                                              ; $6369: $17
	rst $38                                          ; $636a: $ff
	ccf                                              ; $636b: $3f
	cp $03                                           ; $636c: $fe $03
	ld a, e                                          ; $636e: $7b
	ld c, [hl]                                       ; $636f: $4e
	sbc e                                            ; $6370: $9b
	ld bc, $df8c                                     ; $6371: $01 $8c $df
	sbc h                                            ; $6374: $9c
	ld a, c                                          ; $6375: $79
	inc c                                            ; $6376: $0c
	sbc l                                            ; $6377: $9d

Call_042_6378:
	rst $38                                          ; $6378: $ff
	sbc $7b                                          ; $6379: $de $7b
	cp $99                                           ; $637b: $fe $99
	sbc [hl]                                         ; $637d: $9e
	ld [hl], e                                       ; $637e: $73
	adc h                                            ; $637f: $8c
	rst $38                                          ; $6380: $ff
	adc h                                            ; $6381: $8c
	di                                               ; $6382: $f3
	ld [hl], a                                       ; $6383: $77
	sub h                                            ; $6384: $94
	ld [hl], e                                       ; $6385: $73
	cp $9d                                           ; $6386: $fe $9d
	db $fc                                           ; $6388: $fc
	inc bc                                           ; $6389: $03
	ld [hl], a                                       ; $638a: $77
	sub b                                            ; $638b: $90
	sbc e                                            ; $638c: $9b
	ld a, a                                          ; $638d: $7f
	rrca                                             ; $638e: $0f
	ld a, a                                          ; $638f: $7f
	add a                                            ; $6390: $87
	ld a, e                                          ; $6391: $7b
	call nz, $fe77                                   ; $6392: $c4 $77 $fe
	ld l, a                                          ; $6395: $6f
	ret nz                                           ; $6396: $c0

	ld [hl], a                                       ; $6397: $77
	ld [hl], d                                       ; $6398: $72
	sbc h                                            ; $6399: $9c
	rlca                                             ; $639a: $07
	cp $07                                           ; $639b: $fe $07
	ld a, e                                          ; $639d: $7b
	ldh [c], a                                       ; $639e: $e2
	ld a, a                                          ; $639f: $7f
	cp $77                                           ; $63a0: $fe $77
	ldh a, [$9e]                                     ; $63a2: $f0 $9e
	rst SubAFromDE                                          ; $63a4: $df
	ld a, e                                          ; $63a5: $7b
	cp $9a                                           ; $63a6: $fe $9a
	sbc [hl]                                         ; $63a8: $9e
	ei                                               ; $63a9: $fb
	sbc [hl]                                         ; $63aa: $9e
	di                                               ; $63ab: $f3
	ld [$ce66], sp                                   ; $63ac: $08 $66 $ce
	ld c, a                                          ; $63af: $4f
	cp $7e                                           ; $63b0: $fe $7e
	adc $9d                                          ; $63b2: $ce $9d
	rst $38                                          ; $63b4: $ff
	scf                                              ; $63b5: $37
	ld l, a                                          ; $63b6: $6f
	call z, $ce6f                                    ; $63b7: $cc $6f $ce
	sbc l                                            ; $63ba: $9d
	scf                                              ; $63bb: $37
	cp b                                             ; $63bc: $b8
	ld a, b                                          ; $63bd: $78
	ld [hl+], a                                      ; $63be: $22
	ld a, a                                          ; $63bf: $7f
	db $fd                                           ; $63c0: $fd
	sbc h                                            ; $63c1: $9c
	ld hl, sp-$01                                    ; $63c2: $f8 $ff
	ld hl, sp+$7a                                    ; $63c4: $f8 $7a
	or $7f                                           ; $63c6: $f6 $7f
	cp $98                                           ; $63c8: $fe $98
	nop                                              ; $63ca: $00
	rst AddAOntoHL                                          ; $63cb: $ef
	jr jr_042_644d                                   ; $63cc: $18 $7f

	ld hl, sp-$01                                    ; $63ce: $f8 $ff
	ld a, b                                          ; $63d0: $78
	ld a, d                                          ; $63d1: $7a
	db $ec                                           ; $63d2: $ec
	sbc b                                            ; $63d3: $98
	inc e                                            ; $63d4: $1c
	rst SubAFromBC                                          ; $63d5: $e7
	jr @-$0f                                         ; $63d6: $18 $ef

	jr @+$01                                         ; $63d8: $18 $ff

	db $10                                           ; $63da: $10
	ld [hl], h                                       ; $63db: $74
	sbc $73                                          ; $63dc: $de $73
	db $fd                                           ; $63de: $fd
	ld [hl], h                                       ; $63df: $74
	add $70                                          ; $63e0: $c6 $70
	jp $f003                                         ; $63e2: $c3 $03 $f0


	ld h, e                                          ; $63e5: $63
	ldh a, [$7f]                                     ; $63e6: $f0 $7f
	dec de                                           ; $63e8: $1b
	sbc [hl]                                         ; $63e9: $9e
	ret nz                                           ; $63ea: $c0

	ld d, e                                          ; $63eb: $53
	ldh a, [$6d]                                     ; $63ec: $f0 $6d
	ld l, a                                          ; $63ee: $6f
	ld e, a                                          ; $63ef: $5f
	ldh a, [$78]                                     ; $63f0: $f0 $78
	ld d, l                                          ; $63f2: $55
	ld d, e                                          ; $63f3: $53
	ldh a, [$7e]                                     ; $63f4: $f0 $7e
	ld l, e                                          ; $63f6: $6b
	ld d, a                                          ; $63f7: $57
	ldh a, [rOCPD]                                   ; $63f8: $f0 $6b
	rra                                              ; $63fa: $1f
	ld h, e                                          ; $63fb: $63
	ldh a, [rOCPD]                                   ; $63fc: $f0 $6b
	ccf                                              ; $63fe: $3f
	inc bc                                           ; $63ff: $03
	ldh a, [$03]                                     ; $6400: $f0 $03
	ldh a, [$03]                                     ; $6402: $f0 $03
	ldh a, [$03]                                     ; $6404: $f0 $03
	ldh a, [$73]                                     ; $6406: $f0 $73
	ldh a, [$9e]                                     ; $6408: $f0 $9e
	dec b                                            ; $640a: $05
	ld b, e                                          ; $640b: $43
	jr nc, jr_042_648c                               ; $640c: $30 $7e

	dec [hl]                                         ; $640e: $35
	ld a, c                                          ; $640f: $79
	rst SubAFromHL                                          ; $6410: $d7
	ld d, d                                          ; $6411: $52
	ldh a, [$7f]                                     ; $6412: $f0 $7f
	ei                                               ; $6414: $fb
	sbc [hl]                                         ; $6415: $9e
	db $ec                                           ; $6416: $ec
	jp nc, Jump_042_6aff                             ; $6417: $d2 $ff $6a

	reti                                             ; $641a: $d9


	ld e, e                                          ; $641b: $5b
	ldh a, [$7a]                                     ; $641c: $f0 $7a
	add b                                            ; $641e: $80
	ld d, e                                          ; $641f: $53
	ldh a, [$7f]                                     ; $6420: $f0 $7f
	cp $9c                                           ; $6422: $fe $9c
	inc b                                            ; $6424: $04
	rst $38                                          ; $6425: $ff
	cp a                                             ; $6426: $bf
	ld e, e                                          ; $6427: $5b
	ldh a, [$9e]                                     ; $6428: $f0 $9e
	dec c                                            ; $642a: $0d
	ld a, e                                          ; $642b: $7b
	xor b                                            ; $642c: $a8
	rla                                              ; $642d: $17
	ret nz                                           ; $642e: $c0

	inc bc                                           ; $642f: $03
	ldh a, [$03]                                     ; $6430: $f0 $03
	ldh a, [$03]                                     ; $6432: $f0 $03
	ldh a, [$03]                                     ; $6434: $f0 $03
	ldh a, [$03]                                     ; $6436: $f0 $03
	ldh a, [$03]                                     ; $6438: $f0 $03
	ldh a, [$27]                                     ; $643a: $f0 $27
	ldh a, [rAUD4POLY]                               ; $643c: $f0 $22
	nop                                              ; $643e: $00
	call z, $9755                                    ; $643f: $cc $55 $97
	ld d, e                                          ; $6442: $53
	inc sp                                           ; $6443: $33
	inc [hl]                                         ; $6444: $34
	halt                                             ; $6445: $76
	ld h, [hl]                                       ; $6446: $66
	ld h, [hl]                                       ; $6447: $66
	ld h, a                                          ; $6448: $67
	ld b, l                                          ; $6449: $45
	ld c, e                                          ; $644a: $4b
	or $dd                                           ; $644b: $f6 $dd

jr_042_644d:
	ld [hl], a                                       ; $644d: $77
	ld [hl], a                                       ; $644e: $77
	or $db                                           ; $644f: $f6 $db
	ld b, h                                          ; $6451: $44
	ld a, e                                          ; $6452: $7b
	or $9e                                           ; $6453: $f6 $9e
	ld d, l                                          ; $6455: $55
	ld [hl], a                                       ; $6456: $77
	ei                                               ; $6457: $fb
	sbc l                                            ; $6458: $9d
	ld b, h                                          ; $6459: $44
	ld d, h                                          ; $645a: $54
	bit 2, l                                         ; $645b: $cb $55
	call $e633                                       ; $645d: $cd $33 $e6
	adc e                                            ; $6460: $8b
	rst SubAFromDE                                          ; $6461: $df
	rst GetHLinHL                                          ; $6462: $cf
	sbc d                                            ; $6463: $9a
	set 5, l                                         ; $6464: $cb $ed
	ret                                              ; $6466: $c9


	ld l, a                                          ; $6467: $6f
	rst SubAFromDE                                          ; $6468: $df
	db $dd                                           ; $6469: $dd
	ld a, a                                          ; $646a: $7f
	sbc e                                            ; $646b: $9b
	ld e, a                                          ; $646c: $5f
	ld a, a                                          ; $646d: $7f
	rst SubAFromDE                                          ; $646e: $df
	ccf                                              ; $646f: $3f
	call c, $9bff                                    ; $6470: $dc $ff $9b
	or $d6                                           ; $6473: $f6 $d6
	pop bc                                           ; $6475: $c1
	adc $db                                          ; $6476: $ce $db
	rst $38                                          ; $6478: $ff
	sub l                                            ; $6479: $95
	cp $ff                                           ; $647a: $fe $ff
	db $e3                                           ; $647c: $e3
	di                                               ; $647d: $f3
	add d                                            ; $647e: $82
	add e                                            ; $647f: $83
	ld a, a                                          ; $6480: $7f
	di                                               ; $6481: $f3
	di                                               ; $6482: $f3
	ld [hl], e                                       ; $6483: $73
	call c, $dfff                                    ; $6484: $dc $ff $df
	ld a, a                                          ; $6487: $7f
	sub c                                            ; $6488: $91
	rst $38                                          ; $6489: $ff
	and $e6                                          ; $648a: $e6 $e6

jr_042_648c:
	db $f4                                           ; $648c: $f4
	db $10                                           ; $648d: $10
	db $db                                           ; $648e: $db
	rst SubAFromHL                                          ; $648f: $d7
	call c, $f3dc                                    ; $6490: $dc $dc $f3
	di                                               ; $6493: $f3
	inc bc                                           ; $6494: $03
	rst AddAOntoHL                                          ; $6495: $ef
	rst SubAFromBC                                          ; $6496: $e7
	sbc $e3                                          ; $6497: $de $e3
	sbc $09                                          ; $6499: $de $09
	sbc d                                            ; $649b: $9a
	ld bc, $0119                                     ; $649c: $01 $19 $01
	ld b, b                                          ; $649f: $40
	nop                                              ; $64a0: $00
	reti                                             ; $64a1: $d9


	rst $38                                          ; $64a2: $ff
	rst SubAFromDE                                          ; $64a3: $df
	ccf                                              ; $64a4: $3f
	sbc d                                            ; $64a5: $9a
	inc bc                                           ; $64a6: $03
	ld [hl], b                                       ; $64a7: $70
	ld a, a                                          ; $64a8: $7f
	ld a, a                                          ; $64a9: $7f
	ccf                                              ; $64aa: $3f
	ld h, e                                          ; $64ab: $63
	ldh a, [$97]                                     ; $64ac: $f0 $97
	ld hl, sp-$02                                    ; $64ae: $f8 $fe
	ei                                               ; $64b0: $fb
	ld b, $e3                                        ; $64b1: $06 $e3
	cp $f2                                           ; $64b3: $fe $f2
	ld [hl], $d9                                     ; $64b5: $36 $d9
	rst $38                                          ; $64b7: $ff
	reti                                             ; $64b8: $d9


	ld a, a                                          ; $64b9: $7f
	reti                                             ; $64ba: $d9


	rst $38                                          ; $64bb: $ff
	adc [hl]                                         ; $64bc: $8e
	ld c, a                                          ; $64bd: $4f
	jr nc, @+$32                                     ; $64be: $30 $30

	sub b                                            ; $64c0: $90
	ld [hl], b                                       ; $64c1: $70
	ld d, b                                          ; $64c2: $50
	jr nc, jr_042_6515                               ; $64c3: $30 $50

	or b                                             ; $64c5: $b0
	add b                                            ; $64c6: $80
	add b                                            ; $64c7: $80
	ldh [$80], a                                     ; $64c8: $e0 $80
	and b                                            ; $64ca: $a0
	add b                                            ; $64cb: $80
	and b                                            ; $64cc: $a0
	rst $38                                          ; $64cd: $ff
	db $fc                                           ; $64ce: $fc
	sbc l                                            ; $64cf: $9d
	dec b                                            ; $64d0: $05
	ld [$9cfb], sp                                   ; $64d1: $08 $fb $9c
	ld [bc], a                                       ; $64d4: $02
	inc b                                            ; $64d5: $04
	cp b                                             ; $64d6: $b8
	sbc $0a                                          ; $64d7: $de $0a
	sbc d                                            ; $64d9: $9a
	ld c, $0a                                        ; $64da: $0e $0a
	rst JumpTable                                          ; $64dc: $c7
	ld a, [bc]                                       ; $64dd: $0a
	ld b, [hl]                                       ; $64de: $46
	sbc $04                                          ; $64df: $de $04
	sbc c                                            ; $64e1: $99
	nop                                              ; $64e2: $00
	inc b                                            ; $64e3: $04
	jr nz, jr_042_64ea                               ; $64e4: $20 $04

	ld [bc], a                                       ; $64e6: $02
	ld bc, $07de                                     ; $64e7: $01 $de $07

jr_042_64ea:
	sbc d                                            ; $64ea: $9a
	nop                                              ; $64eb: $00
	ei                                               ; $64ec: $fb
	dec b                                            ; $64ed: $05
	ld bc, $fd02                                     ; $64ee: $01 $02 $fd
	ld a, a                                          ; $64f1: $7f
	pop af                                           ; $64f2: $f1
	add b                                            ; $64f3: $80
	db $eb                                           ; $64f4: $eb
	ld e, a                                          ; $64f5: $5f
	xor d                                            ; $64f6: $aa
	jp c, $3fab                                      ; $64f7: $da $ab $3f

	rst AddAOntoHL                                          ; $64fa: $ef
	ld d, h                                          ; $64fb: $54
	inc d                                            ; $64fc: $14
	and e                                            ; $64fd: $a3
	ld d, a                                          ; $64fe: $57
	daa                                              ; $64ff: $27
	ld d, a                                          ; $6500: $57
	nop                                              ; $6501: $00
	db $10                                           ; $6502: $10
	xor e                                            ; $6503: $ab
	ld a, [hl]                                       ; $6504: $7e
	jp Jump_042_7987                                 ; $6505: $c3 $87 $79


	ld a, l                                          ; $6508: $7d
	db $ec                                           ; $6509: $ec
	ld d, h                                          ; $650a: $54
	sbc e                                            ; $650b: $9b
	rst $38                                          ; $650c: $ff
	rst $38                                          ; $650d: $ff
	ei                                               ; $650e: $fb
	jp $1383                                         ; $650f: $c3 $83 $13


	xor e                                            ; $6512: $ab
	add b                                            ; $6513: $80
	ld h, [hl]                                       ; $6514: $66

jr_042_6515:
	ld d, d                                          ; $6515: $52
	xor a                                            ; $6516: $af
	ld e, e                                          ; $6517: $5b
	inc sp                                           ; $6518: $33
	daa                                              ; $6519: $27
	scf                                              ; $651a: $37
	and a                                            ; $651b: $a7
	ld [hl], l                                       ; $651c: $75
	db $ed                                           ; $651d: $ed
	pop de                                           ; $651e: $d1

Jump_042_651f:
	add l                                            ; $651f: $85
	call $c9d9                                       ; $6520: $cd $d9 $c9
	ld e, c                                          ; $6523: $59
	adc e                                            ; $6524: $8b
	adc $08                                          ; $6525: $ce $08
	ld c, b                                          ; $6527: $48
	ld a, [hl-]                                      ; $6528: $3a
	ld e, b                                          ; $6529: $58
	ld a, [hl+]                                      ; $652a: $2a

jr_042_652b:
	db $10                                           ; $652b: $10
	jr nc, jr_042_652b                               ; $652c: $30 $fd

	rst $38                                          ; $652e: $ff
	cp a                                             ; $652f: $bf
	db $dd                                           ; $6530: $dd
	cp a                                             ; $6531: $bf
	db $dd                                           ; $6532: $dd
	sub l                                            ; $6533: $95
	rst $38                                          ; $6534: $ff
	rst SubAFromDE                                          ; $6535: $df
	cp $05                                           ; $6536: $fe $05
	ld bc, $0301                                     ; $6538: $01 $01 $03
	ld [bc], a                                       ; $653b: $02
	inc b                                            ; $653c: $04
	ld b, $6f                                        ; $653d: $06 $6f
	ld de, $fedf                                     ; $653f: $11 $df $fe
	sbc [hl]                                         ; $6542: $9e
	nop                                              ; $6543: $00
	db $dd                                           ; $6544: $dd
	add b                                            ; $6545: $80
	ld a, a                                          ; $6546: $7f
	adc b                                            ; $6547: $88
	rst $38                                          ; $6548: $ff
	sbc e                                            ; $6549: $9b
	add b                                            ; $654a: $80
	ret nz                                           ; $654b: $c0

	ret nz                                           ; $654c: $c0

	add b                                            ; $654d: $80
	ld a, [$069b]                                    ; $654e: $fa $9b $06
	nop                                              ; $6551: $00

jr_042_6552:
	inc bc                                           ; $6552: $03
	rra                                              ; $6553: $1f
	ld sp, hl                                        ; $6554: $f9
	add e                                            ; $6555: $83
	scf                                              ; $6556: $37
	ld [hl], a                                       ; $6557: $77
	ld h, b                                          ; $6558: $60
	nop                                              ; $6559: $00
	ld [bc], a                                       ; $655a: $02
	jr c, jr_042_6552                                ; $655b: $38 $f5

	ld bc, $2000                                     ; $655d: $01 $00 $20
	nop                                              ; $6560: $00
	nop                                              ; $6561: $00
	ld bc, $0207                                     ; $6562: $01 $07 $02
	ld b, $87                                        ; $6565: $06 $87
	cpl                                              ; $6567: $2f
	rst $38                                          ; $6568: $ff
	push af                                          ; $6569: $f5
	ld a, h                                          ; $656a: $7c
	ld a, [hl]                                       ; $656b: $7e
	ld a, a                                          ; $656c: $7f
	di                                               ; $656d: $f3
	rst $38                                          ; $656e: $ff
	ldh a, [rSVBK]                                   ; $656f: $f0 $70
	ld a, [hl]                                       ; $6571: $7e
	db $dd                                           ; $6572: $dd
	ccf                                              ; $6573: $3f
	add a                                            ; $6574: $87
	rst GetHLinHL                                          ; $6575: $cf
	ld hl, $c870                                     ; $6576: $21 $70 $c8
	inc l                                            ; $6579: $2c
	inc b                                            ; $657a: $04
	ld d, h                                          ; $657b: $54
	cp h                                             ; $657c: $bc
	rst $38                                          ; $657d: $ff
	rst $38                                          ; $657e: $ff
	rra                                              ; $657f: $1f
	rrca                                             ; $6580: $0f
	rst JumpTable                                          ; $6581: $c7
	rst SubAFromBC                                          ; $6582: $e7
	rst SubAFromBC                                          ; $6583: $e7
	rst JumpTable                                          ; $6584: $c7
	inc sp                                           ; $6585: $33
	inc sp                                           ; $6586: $33
	ld [hl], e                                       ; $6587: $73
	ld h, e                                          ; $6588: $63
	ld [hl], e                                       ; $6589: $73
	ld h, e                                          ; $658a: $63
	ld l, e                                          ; $658b: $6b
	ld h, a                                          ; $658c: $67
	db $db                                           ; $658d: $db
	rst $38                                          ; $658e: $ff
	sub l                                            ; $658f: $95
	rst FarCall                                          ; $6590: $f7
	rst $38                                          ; $6591: $ff
	call nc, $f4f4                                   ; $6592: $d4 $f4 $f4
	call nc, $ccfc                                   ; $6595: $d4 $fc $cc
	call c, $dd0f                                    ; $6598: $dc $0f $dd
	db $e3                                           ; $659b: $e3
	sbc e                                            ; $659c: $9b
	jp $e3f3                                         ; $659d: $c3 $f3 $e3


	di                                               ; $65a0: $f3
	cp $9d                                           ; $65a1: $fe $9d
	ld de, $6e0f                                     ; $65a3: $11 $0f $6e
	ldh a, [c]                                       ; $65a6: $f2
	sbc c                                            ; $65a7: $99
	rst AddAOntoHL                                          ; $65a8: $ef
	rst $38                                          ; $65a9: $ff
	pop hl                                           ; $65aa: $e1
	add a                                            ; $65ab: $87
	ccf                                              ; $65ac: $3f
	ld a, [hl]                                       ; $65ad: $7e
	ld e, d                                          ; $65ae: $5a
	call nz, $ffdd                                   ; $65af: $c4 $dd $ff
	sub [hl]                                         ; $65b2: $96
	ld a, [hl]                                       ; $65b3: $7e
	ld a, [$02fe]                                    ; $65b4: $fa $fe $02
	ld [bc], a                                       ; $65b7: $02
	cp $f2                                           ; $65b8: $fe $f2
	ld a, [$6283]                                    ; $65ba: $fa $83 $62
	ret nz                                           ; $65bd: $c0

	call c, Call_042_627e                            ; $65be: $dc $7e $62
	ret nz                                           ; $65c1: $c0

	sub d                                            ; $65c2: $92
	ld d, b                                          ; $65c3: $50
	ld b, b                                          ; $65c4: $40
	ld c, b                                          ; $65c5: $48
	jr nz, jr_042_65ff                               ; $65c6: $20 $37

	jr c, jr_042_65ea                                ; $65c8: $38 $20

	db $fc                                           ; $65ca: $fc
	and b                                            ; $65cb: $a0
	or b                                             ; $65cc: $b0
	or b                                             ; $65cd: $b0
	rst $38                                          ; $65ce: $ff
	ld hl, sp-$22                                    ; $65cf: $f8 $de
	rst $38                                          ; $65d1: $ff
	sbc e                                            ; $65d2: $9b
	inc c                                            ; $65d3: $0c
	call z, $1eec                                    ; $65d4: $cc $ec $1e
	ld l, a                                          ; $65d7: $6f
	ld c, b                                          ; $65d8: $48
	sbc l                                            ; $65d9: $9d
	ldh [$e1], a                                     ; $65da: $e0 $e1
	ld [hl], a                                       ; $65dc: $77
	db $db                                           ; $65dd: $db
	adc h                                            ; $65de: $8c
	ld a, [de]                                       ; $65df: $1a
	ld de, $0006                                     ; $65e0: $11 $06 $00
	ld b, b                                          ; $65e3: $40
	add hl, sp                                       ; $65e4: $39
	rrca                                             ; $65e5: $0f
	ccf                                              ; $65e6: $3f
	ld b, $0e                                        ; $65e7: $06 $0e
	rrca                                             ; $65e9: $0f

jr_042_65ea:
	ret nz                                           ; $65ea: $c0

	ret nz                                           ; $65eb: $c0

	cp $ff                                           ; $65ec: $fe $ff
	rst $38                                          ; $65ee: $ff
	nop                                              ; $65ef: $00
	ret c                                            ; $65f0: $d8

	nop                                              ; $65f1: $00

jr_042_65f2:
	call c, $ff07                                    ; $65f2: $dc $07 $ff
	ld l, [hl]                                       ; $65f5: $6e
	sub [hl]                                         ; $65f6: $96
	add b                                            ; $65f7: $80
	nop                                              ; $65f8: $00
	ccf                                              ; $65f9: $3f
	xor l                                            ; $65fa: $ad
	cp a                                             ; $65fb: $bf
	rst AddAOntoHL                                          ; $65fc: $ef
	xor a                                            ; $65fd: $af
	xor a                                            ; $65fe: $af

jr_042_65ff:
	xor c                                            ; $65ff: $a9
	nop                                              ; $6600: $00
	nop                                              ; $6601: $00
	ld [hl], d                                       ; $6602: $72
	ld h, b                                          ; $6603: $60
	jr nc, jr_042_6616                               ; $6604: $30 $10

	db $10                                           ; $6606: $10
	rla                                              ; $6607: $17
	adc $ae                                          ; $6608: $ce $ae
	ld d, [hl]                                       ; $660a: $56
	xor d                                            ; $660b: $aa
	rst SubAFromBC                                          ; $660c: $e7
	ret z                                            ; $660d: $c8

	rst GetHLinHL                                          ; $660e: $cf
	ei                                               ; $660f: $fb
	inc sp                                           ; $6610: $33
	ld d, e                                          ; $6611: $53
	db $eb                                           ; $6612: $eb
	ld [hl], a                                       ; $6613: $77
	ld a, [hl-]                                      ; $6614: $3a
	scf                                              ; $6615: $37

jr_042_6616:
	ccf                                              ; $6616: $3f
	add c                                            ; $6617: $81
	rst $38                                          ; $6618: $ff
	dec hl                                           ; $6619: $2b
	ld [hl], l                                       ; $661a: $75
	ld a, e                                          ; $661b: $7b
	dec [hl]                                         ; $661c: $35
	ei                                               ; $661d: $fb
	cp a                                             ; $661e: $bf
	di                                               ; $661f: $f3
	dec b                                            ; $6620: $05
	push de                                          ; $6621: $d5
	adc e                                            ; $6622: $8b
	add l                                            ; $6623: $85
	rlc l                                            ; $6624: $cb $05
	ld a, a                                          ; $6626: $7f
	rst $38                                          ; $6627: $ff
	ei                                               ; $6628: $fb
	ld d, b                                          ; $6629: $50
	db $10                                           ; $662a: $10
	ld [hl], b                                       ; $662b: $70
	ld a, b                                          ; $662c: $78
	push af                                          ; $662d: $f5

jr_042_662e:
	ld hl, sp+$17                                    ; $662e: $f8 $17
	db $10                                           ; $6630: $10
	cp a                                             ; $6631: $bf
	rst $38                                          ; $6632: $ff
	sbc a                                            ; $6633: $9f
	sbc a                                            ; $6634: $9f
	ld a, [de]                                       ; $6635: $1a
	sbc $ff                                          ; $6636: $de $ff
	rst SubAFromDE                                          ; $6638: $df
	ld b, $99                                        ; $6639: $06 $99
	inc b                                            ; $663b: $04
	inc bc                                           ; $663c: $03
	ld b, d                                          ; $663d: $42
	jr c, jr_042_662e                                ; $663e: $38 $ee

	rra                                              ; $6640: $1f
	db $dd                                           ; $6641: $dd
	cp $93                                           ; $6642: $fe $93
	cp a                                             ; $6644: $bf
	add $f0                                          ; $6645: $c6 $f0
	cp $01                                           ; $6647: $fe $01
	rra                                              ; $6649: $1f
	ld [hl], c                                       ; $664a: $71
	pop hl                                           ; $664b: $e1
	ld b, b                                          ; $664c: $40
	ld b, b                                          ; $664d: $40
	ld b, a                                          ; $664e: $47
	ccf                                              ; $664f: $3f
	ld [hl], e                                       ; $6650: $73
	ld a, [hl]                                       ; $6651: $7e
	rst SubAFromDE                                          ; $6652: $df
	jr nz, jr_042_65f2                               ; $6653: $20 $9d

	ld a, a                                          ; $6655: $7f
	ld hl, sp-$02                                    ; $6656: $f8 $fe
	ld a, [hl]                                       ; $6658: $7e
	ret c                                            ; $6659: $d8

	sbc [hl]                                         ; $665a: $9e
	dec b                                            ; $665b: $05
	ld a, d                                          ; $665c: $7a
	jp nc, $8afc                                     ; $665d: $d2 $fc $8a

	ret nz                                           ; $6660: $c0

	dec b                                            ; $6661: $05
	ld b, c                                          ; $6662: $41
	dec b                                            ; $6663: $05
	ld h, c                                          ; $6664: $61
	push hl                                          ; $6665: $e5
	jp $3705                                         ; $6666: $c3 $05 $37


	ld [hl+], a                                      ; $6669: $22
	ld h, $22                                        ; $666a: $26 $22
	ld b, $02                                        ; $666c: $06 $02
	inc b                                            ; $666e: $04
	ld [bc], a                                       ; $666f: $02
	rrca                                             ; $6670: $0f
	ldh [c], a                                       ; $6671: $e2
	jp nz, $ffe3                                     ; $6672: $c2 $e3 $ff

	sbc $c3                                          ; $6675: $de $c3
	sbc [hl]                                         ; $6677: $9e
	rst JumpTable                                          ; $6678: $c7
	jp c, $9a3f                                      ; $6679: $da $3f $9a

	dec sp                                           ; $667c: $3b
	or d                                             ; $667d: $b2
	jp c, $dff8                                      ; $667e: $da $f8 $df

	db $dd                                           ; $6681: $dd
	ret c                                            ; $6682: $d8

	ld a, [hl]                                       ; $6683: $7e
	call nz, $c27a                                   ; $6684: $c4 $7a $c2
	sbc $e7                                          ; $6687: $de $e7
	sbc e                                            ; $6689: $9b
	ld l, e                                          ; $668a: $6b
	daa                                              ; $668b: $27
	daa                                              ; $668c: $27
	di                                               ; $668d: $f3
	sbc $67                                          ; $668e: $de $67
	sbc l                                            ; $6690: $9d
	ld b, a                                          ; $6691: $47
	rst FarCall                                          ; $6692: $f7
	jp c, $8fff                                      ; $6693: $da $ff $8f

	sbc e                                            ; $6696: $9b
	adc a                                            ; $6697: $8f
	adc a                                            ; $6698: $8f
	rrca                                             ; $6699: $0f
	rrca                                             ; $669a: $0f
	ld l, $5f                                        ; $669b: $2e $5f
	ccf                                              ; $669d: $3f
	or $f4                                           ; $669e: $f6 $f4

Call_042_66a0:
	or $f7                                           ; $66a0: $f6 $f7
	di                                               ; $66a2: $f3
	pop af                                           ; $66a3: $f1
	and b                                            ; $66a4: $a0
	ret nz                                           ; $66a5: $c0

	ld [hl], a                                       ; $66a6: $77
	inc e                                            ; $66a7: $1c
	sbc h                                            ; $66a8: $9c
	cp $f0                                           ; $66a9: $fe $f0
	pop bc                                           ; $66ab: $c1
	ret c                                            ; $66ac: $d8

	rst $38                                          ; $66ad: $ff
	sub a                                            ; $66ae: $97
	db $fc                                           ; $66af: $fc
	db $fd                                           ; $66b0: $fd
	cp $ce                                           ; $66b1: $fe $ce
	ld e, $33                                        ; $66b3: $1e $33
	db $e3                                           ; $66b5: $e3
	db $e3                                           ; $66b6: $e3
	halt                                             ; $66b7: $76
	inc sp                                           ; $66b8: $33
	ld a, [hl]                                       ; $66b9: $7e
	sub c                                            ; $66ba: $91
	rst SubAFromDE                                          ; $66bb: $df
	rst SubAFromBC                                          ; $66bc: $e7
	adc c                                            ; $66bd: $89
	ld h, d                                          ; $66be: $62
	cp $fa                                           ; $66bf: $fe $fa
	ld a, d                                          ; $66c1: $7a
	ld e, $86                                        ; $66c2: $1e $86
	add a                                            ; $66c4: $87
	inc bc                                           ; $66c5: $03
	sbc a                                            ; $66c6: $9f
	rst $38                                          ; $66c7: $ff
	ld a, a                                          ; $66c8: $7f
	ccf                                              ; $66c9: $3f
	rrca                                             ; $66ca: $0f
	rlca                                             ; $66cb: $07
	inc bc                                           ; $66cc: $03
	inc bc                                           ; $66cd: $03
	ld a, a                                          ; $66ce: $7f
	ld a, l                                          ; $66cf: $7d
	ld a, l                                          ; $66d0: $7d
	ld a, [hl]                                       ; $66d1: $7e
	ld a, a                                          ; $66d2: $7f
	cp $79                                           ; $66d3: $fe $79
	daa                                              ; $66d5: $27
	sbc h                                            ; $66d6: $9c
	db $fc                                           ; $66d7: $fc
	ld hl, sp-$07                                    ; $66d8: $f8 $f9
	ld a, e                                          ; $66da: $7b
	db $d3                                           ; $66db: $d3
	sub l                                            ; $66dc: $95
	db $fc                                           ; $66dd: $fc
	rst $38                                          ; $66de: $ff
	ld [hl], a                                       ; $66df: $77
	ld a, a                                          ; $66e0: $7f
	rst $38                                          ; $66e1: $ff
	ld b, a                                          ; $66e2: $47
	ld bc, $4199                                     ; $66e3: $01 $99 $41
	rst FarCall                                          ; $66e6: $f7
	ld [hl], a                                       ; $66e7: $77
	call $0393                                       ; $66e8: $cd $93 $03
	adc l                                            ; $66eb: $8d
	add c                                            ; $66ec: $81
	rrca                                             ; $66ed: $0f
	add b                                            ; $66ee: $80
	add c                                            ; $66ef: $81
	add a                                            ; $66f0: $87
	ld e, $3e                                        ; $66f1: $1e $3e
	db $fc                                           ; $66f3: $fc
	db $fc                                           ; $66f4: $fc
	ldh a, [$dd]                                     ; $66f5: $f0 $dd
	rst $38                                          ; $66f7: $ff
	ld a, l                                          ; $66f8: $7d
	db $db                                           ; $66f9: $db
	halt                                             ; $66fa: $76
	adc [hl]                                         ; $66fb: $8e
	sbc d                                            ; $66fc: $9a
	rst $38                                          ; $66fd: $ff
	sub b                                            ; $66fe: $90
	nop                                              ; $66ff: $00
	and e                                            ; $6700: $a3
	sub b                                            ; $6701: $90
	ld [hl], d                                       ; $6702: $72
	ld e, a                                          ; $6703: $5f
	sub a                                            ; $6704: $97
	add b                                            ; $6705: $80
	ld [hl], e                                       ; $6706: $73
	add b                                            ; $6707: $80
	add b                                            ; $6708: $80
	db $db                                           ; $6709: $db
	db $e3                                           ; $670a: $e3
	rst SubAFromHL                                          ; $670b: $d7
	rst GetHLinHL                                          ; $670c: $cf
	ld a, e                                          ; $670d: $7b
	db $eb                                           ; $670e: $eb
	ld a, l                                          ; $670f: $7d
	ld d, d                                          ; $6710: $52
	ld a, d                                          ; $6711: $7a
	ld d, b                                          ; $6712: $50
	ld a, a                                          ; $6713: $7f
	push hl                                          ; $6714: $e5
	sub e                                            ; $6715: $93
	ld a, a                                          ; $6716: $7f
	rra                                              ; $6717: $1f
	ld l, e                                          ; $6718: $6b
	di                                               ; $6719: $f3
	rst SubAFromBC                                          ; $671a: $e7
	ldh a, [$f0]                                     ; $671b: $f0 $f0
	sub [hl]                                         ; $671d: $96
	sub b                                            ; $671e: $90
	rra                                              ; $671f: $1f
	rst FarCall                                          ; $6720: $f7
	rst SubAFromBC                                          ; $6721: $e7
	ld a, e                                          ; $6722: $7b
	xor l                                            ; $6723: $ad
	add c                                            ; $6724: $81
	sbc $d0                                          ; $6725: $de $d0
	sbc h                                            ; $6727: $9c
	sbc h                                            ; $6728: $9c
	dec a                                            ; $6729: $3d
	sbc $1d                                          ; $672a: $de $1d
	ld c, $6d                                        ; $672c: $0e $6d
	rrca                                             ; $672e: $0f
	rst $38                                          ; $672f: $ff
	sbc [hl]                                         ; $6730: $9e
	sbc h                                            ; $6731: $9c
	db $fc                                           ; $6732: $fc
	inc a                                            ; $6733: $3c
	inc e                                            ; $6734: $1c
	ld a, l                                          ; $6735: $7d
	rra                                              ; $6736: $1f
	ld bc, $4b07                                     ; $6737: $01 $07 $4b
	rrca                                             ; $673a: $0f
	scf                                              ; $673b: $37
	db $f4                                           ; $673c: $f4
	push hl                                          ; $673d: $e5
	rst SubAFromBC                                          ; $673e: $e7
	add e                                            ; $673f: $83
	rrca                                             ; $6740: $0f
	rrca                                             ; $6741: $0f
	sbc a                                            ; $6742: $9f
	ld a, e                                          ; $6743: $7b
	ld l, l                                          ; $6744: $6d
	sbc l                                            ; $6745: $9d
	db $ed                                           ; $6746: $ed
	ld hl, sp+$7a                                    ; $6747: $f8 $7a
	ld a, h                                          ; $6749: $7c
	ld a, a                                          ; $674a: $7f
	sbc b                                            ; $674b: $98
	sbc l                                            ; $674c: $9d
	dec bc                                           ; $674d: $0b
	sbc l                                            ; $674e: $9d
	call c, $dfff                                    ; $674f: $dc $ff $df
	rlca                                             ; $6752: $07
	sub [hl]                                         ; $6753: $96
	sbc e                                            ; $6754: $9b
	ld h, [hl]                                       ; $6755: $66
	rra                                              ; $6756: $1f
	rra                                              ; $6757: $1f
	ccf                                              ; $6758: $3f
	ld a, a                                          ; $6759: $7f
	rst SubAFromDE                                          ; $675a: $df
	cp $fe                                           ; $675b: $fe $fe
	ld a, c                                          ; $675d: $79
	ld c, a                                          ; $675e: $4f
	ld [hl], c                                       ; $675f: $71
	ld a, a                                          ; $6760: $7f
	sub h                                            ; $6761: $94
	ld a, $ff                                        ; $6762: $3e $ff
	sbc $ff                                          ; $6764: $de $ff
	ret nz                                           ; $6766: $c0

	pop af                                           ; $6767: $f1
	ld b, b                                          ; $6768: $40
	ld b, b                                          ; $6769: $40
	call c, $bf9c                                    ; $676a: $dc $9c $bf
	ld a, e                                          ; $676d: $7b
	ld hl, sp-$63                                    ; $676e: $f8 $9d
	ld e, c                                          ; $6770: $59
	ld l, b                                          ; $6771: $68
	sbc $e0                                          ; $6772: $de $e0
	sub c                                            ; $6774: $91
	pop hl                                           ; $6775: $e1
	cp a                                             ; $6776: $bf
	rst $38                                          ; $6777: $ff
	ld a, [hl]                                       ; $6778: $7e
	cp $e0                                           ; $6779: $fe $e0
	ldh a, [$f0]                                     ; $677b: $f0 $f0
	di                                               ; $677d: $f3
	ld a, a                                          ; $677e: $7f
	rst $38                                          ; $677f: $ff
	cp a                                             ; $6780: $bf
	rst $38                                          ; $6781: $ff
	ccf                                              ; $6782: $3f
	ld a, e                                          ; $6783: $7b
	rrca                                             ; $6784: $0f
	sbc d                                            ; $6785: $9a
	pop hl                                           ; $6786: $e1
	nop                                              ; $6787: $00
	stop                                             ; $6788: $10 $00
	ccf                                              ; $678a: $3f
	ld a, b                                          ; $678b: $78
	cp l                                             ; $678c: $bd
	sub c                                            ; $678d: $91
	rst AddAOntoHL                                          ; $678e: $ef
	ld h, c                                          ; $678f: $61
	ld a, c                                          ; $6790: $79
	ld l, l                                          ; $6791: $6d
	rst JumpTable                                          ; $6792: $c7
	jp $83c3                                         ; $6793: $c3 $c3 $83


	add e                                            ; $6796: $83
	and e                                            ; $6797: $a3
	ld a, a                                          ; $6798: $7f
	rst $38                                          ; $6799: $ff
	dec sp                                           ; $679a: $3b
	ccf                                              ; $679b: $3f
	ld a, e                                          ; $679c: $7b
	xor $90                                          ; $679d: $ee $90
	ld e, a                                          ; $679f: $5f
	rst $38                                          ; $67a0: $ff
	rst $38                                          ; $67a1: $ff
	ret c                                            ; $67a2: $d8

	sub b                                            ; $67a3: $90
	add b                                            ; $67a4: $80
	adc b                                            ; $67a5: $88
	ld [$ffc0], sp                                   ; $67a6: $08 $c0 $ff
	rst $38                                          ; $67a9: $ff
	rst SubAFromBC                                          ; $67aa: $e7
	rst AddAOntoHL                                          ; $67ab: $ef
	rst $38                                          ; $67ac: $ff
	rst FarCall                                          ; $67ad: $f7
	halt                                             ; $67ae: $76
	call z, $0fde                                    ; $67af: $cc $de $0f
	ld a, a                                          ; $67b2: $7f
	sbc a                                            ; $67b3: $9f
	sbc [hl]                                         ; $67b4: $9e
	rlca                                             ; $67b5: $07
	ld a, c                                          ; $67b6: $79
	add [hl]                                         ; $67b7: $86
	rst SubAFromDE                                          ; $67b8: $df
	rst FarCall                                          ; $67b9: $f7
	ld a, [hl]                                       ; $67ba: $7e
	xor [hl]                                         ; $67bb: $ae
	ld [hl], a                                       ; $67bc: $77
	ld [hl-], a                                      ; $67bd: $32
	sbc h                                            ; $67be: $9c
	ld l, a                                          ; $67bf: $6f
	ld a, a                                          ; $67c0: $7f
	jr nc, jr_042_683e                               ; $67c1: $30 $7b

	sbc b                                            ; $67c3: $98
	rst SubAFromDE                                          ; $67c4: $df
	add b                                            ; $67c5: $80
	ld a, a                                          ; $67c6: $7f
	ret c                                            ; $67c7: $d8

	rst SubAFromDE                                          ; $67c8: $df
	rst $38                                          ; $67c9: $ff
	sbc l                                            ; $67ca: $9d
	cp a                                             ; $67cb: $bf
	ldh [$79], a                                     ; $67cc: $e0 $79
	sub h                                            ; $67ce: $94
	sbc b                                            ; $67cf: $98
	db $f4                                           ; $67d0: $f4
	ld a, a                                          ; $67d1: $7f
	rst GetHLinHL                                          ; $67d2: $cf
	rst GetHLinHL                                          ; $67d3: $cf
	ld a, [hl]                                       ; $67d4: $7e
	nop                                              ; $67d5: $00
	rst $38                                          ; $67d6: $ff
	ld a, e                                          ; $67d7: $7b
	jp hl                                            ; $67d8: $e9


	rst SubAFromDE                                          ; $67d9: $df
	add b                                            ; $67da: $80
	sub d                                            ; $67db: $92
	jr jr_042_67ee                                   ; $67dc: $18 $10

	ldh [$c4], a                                     ; $67de: $e0 $c4
	ld [$ffa9], sp                                   ; $67e0: $08 $a9 $ff
	rst $38                                          ; $67e3: $ff
	adc a                                            ; $67e4: $8f
	nop                                              ; $67e5: $00
	rst JumpTable                                          ; $67e6: $c7
	add e                                            ; $67e7: $83
	rlca                                             ; $67e8: $07
	ld a, e                                          ; $67e9: $7b
	add hl, de                                       ; $67ea: $19
	rst $38                                          ; $67eb: $ff
	sbc c                                            ; $67ec: $99
	add a                                            ; $67ed: $87

jr_042_67ee:
	ld e, a                                          ; $67ee: $5f
	ld l, h                                          ; $67ef: $6c
	xor [hl]                                         ; $67f0: $ae
	cpl                                              ; $67f1: $2f
	rla                                              ; $67f2: $17
	ld a, e                                          ; $67f3: $7b
	ld c, l                                          ; $67f4: $4d
	sbc c                                            ; $67f5: $99
	adc a                                            ; $67f6: $8f

jr_042_67f7:
	di                                               ; $67f7: $f3
	pop af                                           ; $67f8: $f1
	ldh a, [$f8]                                     ; $67f9: $f0 $f8
	db $fc                                           ; $67fb: $fc
	ld [hl], h                                       ; $67fc: $74
	ret c                                            ; $67fd: $d8

	ld a, e                                          ; $67fe: $7b
	xor c                                            ; $67ff: $a9
	ld a, a                                          ; $6800: $7f
	add hl, bc                                       ; $6801: $09
	ld a, a                                          ; $6802: $7f
	add hl, sp                                       ; $6803: $39
	rst SubAFromDE                                          ; $6804: $df
	ld a, a                                          ; $6805: $7f
	sbc d                                            ; $6806: $9a
	dec a                                            ; $6807: $3d
	ld a, $1d                                        ; $6808: $3e $1d
	dec c                                            ; $680a: $0d
	di                                               ; $680b: $f3
	halt                                             ; $680c: $76
	adc h                                            ; $680d: $8c
	sbc e                                            ; $680e: $9b
	or l                                             ; $680f: $b5
	ld a, [bc]                                       ; $6810: $0a
	dec d                                            ; $6811: $15
	rrca                                             ; $6812: $0f
	db $dd                                           ; $6813: $dd
	rst $38                                          ; $6814: $ff
	sub c                                            ; $6815: $91
	ld a, d                                          ; $6816: $7a
	dec b                                            ; $6817: $05
	adc e                                            ; $6818: $8b
	ld a, [$f8fc]                                    ; $6819: $fa $fc $f8
	ld a, [hl]                                       ; $681c: $7e
	jp hl                                            ; $681d: $e9


	ld a, a                                          ; $681e: $7f
	adc c                                            ; $681f: $89
	ld d, c                                          ; $6820: $51
	db $fd                                           ; $6821: $fd
	ei                                               ; $6822: $fb
	rst FarCall                                          ; $6823: $f7
	ld a, c                                          ; $6824: $79
	add b                                            ; $6825: $80
	sbc h                                            ; $6826: $9c
	rst FarCall                                          ; $6827: $f7
	xor [hl]                                         ; $6828: $ae
	and c                                            ; $6829: $a1
	ld a, d                                          ; $682a: $7a
	cp d                                             ; $682b: $ba
	sbc d                                            ; $682c: $9a
	ld a, d                                          ; $682d: $7a
	sub a                                            ; $682e: $97
	sbc a                                            ; $682f: $9f
	ld a, a                                          ; $6830: $7f
	ret nc                                           ; $6831: $d0

	ld a, e                                          ; $6832: $7b
	adc e                                            ; $6833: $8b
	sbc e                                            ; $6834: $9b
	db $fd                                           ; $6835: $fd
	ld hl, sp-$10                                    ; $6836: $f8 $f0
	ldh [$7b], a                                     ; $6838: $e0 $7b
	inc a                                            ; $683a: $3c
	adc b                                            ; $683b: $88
	ld c, l                                          ; $683c: $4d
	xor e                                            ; $683d: $ab

jr_042_683e:
	ld c, e                                          ; $683e: $4b
	db $ec                                           ; $683f: $ec
	call rIE                                       ; $6840: $cd $ff $ff
	rst SubAFromDE                                          ; $6843: $df
	cp a                                             ; $6844: $bf
	rst $38                                          ; $6845: $ff
	cp a                                             ; $6846: $bf
	rra                                              ; $6847: $1f
	ld a, [hl-]                                      ; $6848: $3a
	sbc a                                            ; $6849: $9f
	rra                                              ; $684a: $1f
	rst $38                                          ; $684b: $ff
	rst AddAOntoHL                                          ; $684c: $ef
	rst GetHLinHL                                          ; $684d: $cf
	add sp, $10                                      ; $684e: $e8 $10
	ret c                                            ; $6850: $d8

	sbc $1f                                          ; $6851: $de $1f
	sbc $ff                                          ; $6853: $de $ff
	sbc h                                            ; $6855: $9c
	ret c                                            ; $6856: $d8

	ld hl, sp+$30                                    ; $6857: $f8 $30
	halt                                             ; $6859: $76
	jr nc, jr_042_67f7                               ; $685a: $30 $9b

	di                                               ; $685c: $f3
	adc e                                            ; $685d: $8b
	rlca                                             ; $685e: $07
	add sp, $72                                      ; $685f: $e8 $72
	sub b                                            ; $6861: $90
	add b                                            ; $6862: $80
	ld [hl], a                                       ; $6863: $77
	ld a, $57                                        ; $6864: $3e $57
	db $e4                                           ; $6866: $e4
	rst JumpTable                                          ; $6867: $c7
	rst SubAFromHL                                          ; $6868: $d7
	and a                                            ; $6869: $a7
	rlca                                             ; $686a: $07
	xor c                                            ; $686b: $a9
	ld bc, $fca1                                     ; $686c: $01 $a1 $fc
	xor $ef                                          ; $686f: $ee $ef
	sub a                                            ; $6871: $97
	cpl                                              ; $6872: $2f
	ld e, a                                          ; $6873: $5f
	rst $38                                          ; $6874: $ff
	ld a, a                                          ; $6875: $7f
	add e                                            ; $6876: $83
	ld d, $fd                                        ; $6877: $16 $fd
	rst AddAOntoHL                                          ; $6879: $ef
	db $fd                                           ; $687a: $fd
	cp [hl]                                          ; $687b: $be
	ld a, l                                          ; $687c: $7d
	ld sp, hl                                        ; $687d: $f9
	inc bc                                           ; $687e: $03
	adc a                                            ; $687f: $8f
	cp $f1                                           ; $6880: $fe $f1
	sub c                                            ; $6882: $91
	jp nz, $82c1                                     ; $6883: $c2 $c1 $82

	rlca                                             ; $6886: $07
	ld a, [$2ff8]                                    ; $6887: $fa $f8 $2f
	rra                                              ; $688a: $1f
	rst SubAFromDE                                          ; $688b: $df
	ld l, e                                          ; $688c: $6b
	rst $38                                          ; $688d: $ff
	sbc [hl]                                         ; $688e: $9e
	cp $fa                                           ; $688f: $fe $fa
	sbc $ff                                          ; $6891: $de $ff
	sbc h                                            ; $6893: $9c
	push af                                          ; $6894: $f5
	pop bc                                           ; $6895: $c1
	pop hl                                           ; $6896: $e1
	ld a, d                                          ; $6897: $7a
	jp hl                                            ; $6898: $e9


	sbc d                                            ; $6899: $9a
	rst $38                                          ; $689a: $ff
	add a                                            ; $689b: $87
	ld b, b                                          ; $689c: $40
	ret nz                                           ; $689d: $c0

	or b                                             ; $689e: $b0
	ld a, e                                          ; $689f: $7b
	ld hl, sp-$6e                                    ; $68a0: $f8 $92
	cp a                                             ; $68a2: $bf
	ld l, a                                          ; $68a3: $6f
	and b                                            ; $68a4: $a0
	ldh a, [$73]                                     ; $68a5: $f0 $73
	cp $fc                                           ; $68a7: $fe $fc
	ld hl, sp-$70                                    ; $68a9: $f8 $90
	ret c                                            ; $68ab: $d8

	xor c                                            ; $68ac: $a9
	push de                                          ; $68ad: $d5
	cp $7b                                           ; $68ae: $fe $7b
	ld hl, sp-$70                                    ; $68b0: $f8 $90
	ld hl, sp-$48                                    ; $68b2: $f8 $b8
	rst SubAFromDE                                          ; $68b4: $df
	cp d                                             ; $68b5: $ba
	push af                                          ; $68b6: $f5
	inc h                                            ; $68b7: $24
	ccf                                              ; $68b8: $3f
	ld a, a                                          ; $68b9: $7f
	ccf                                              ; $68ba: $3f
	rst SubAFromDE                                          ; $68bb: $df
	rst JumpTable                                          ; $68bc: $c7
	inc de                                           ; $68bd: $13
	push bc                                          ; $68be: $c5
	ld a, c                                          ; $68bf: $79
	ld a, a                                          ; $68c0: $7f
	halt                                             ; $68c1: $76
	cp [hl]                                          ; $68c2: $be
	sbc h                                            ; $68c3: $9c
	cp $be                                           ; $68c4: $fe $be
	ldh [$75], a                                     ; $68c6: $e0 $75
	ld h, c                                          ; $68c8: $61
	sbc e                                            ; $68c9: $9b
	ld c, $1d                                        ; $68ca: $0e $1d
	scf                                              ; $68cc: $37
	ret nz                                           ; $68cd: $c0

	ld [hl], h                                       ; $68ce: $74
	res 2, [hl]                                      ; $68cf: $cb $96
	ld bc, $0f03                                     ; $68d1: $01 $03 $0f
	nop                                              ; $68d4: $00
	ld c, $77                                        ; $68d5: $0e $77
	rst SubAFromDE                                          ; $68d7: $df
	ccf                                              ; $68d8: $3f
	ccf                                              ; $68d9: $3f
	ld a, e                                          ; $68da: $7b
	ld b, $9d                                        ; $68db: $06 $9d
	ld bc, $7b0f                                     ; $68dd: $01 $0f $7b
	ld a, [$5a7b]                                    ; $68e0: $fa $7b $5a
	ld a, e                                          ; $68e3: $7b
	dec sp                                           ; $68e4: $3b
	ld a, e                                          ; $68e5: $7b
	ld c, b                                          ; $68e6: $48
	sbc l                                            ; $68e7: $9d
	ld [$dd3e], a                                    ; $68e8: $ea $3e $dd
	cp $7f                                           ; $68eb: $fe $7f
	dec [hl]                                         ; $68ed: $35
	sbc d                                            ; $68ee: $9a
	db $fd                                           ; $68ef: $fd
	nop                                              ; $68f0: $00
	dec d                                            ; $68f1: $15
	xor d                                            ; $68f2: $aa
	ld d, l                                          ; $68f3: $55
	ld [hl], a                                       ; $68f4: $77
	cp $f9                                           ; $68f5: $fe $f9
	sbc l                                            ; $68f7: $9d
	xor d                                            ; $68f8: $aa
	ld b, l                                          ; $68f9: $45
	ld l, a                                          ; $68fa: $6f
	cp $d9                                           ; $68fb: $fe $d9
	db $10                                           ; $68fd: $10
	ld [hl], a                                       ; $68fe: $77
	db $e4                                           ; $68ff: $e4
	sbc e                                            ; $6900: $9b
	xor e                                            ; $6901: $ab
	ld d, h                                          ; $6902: $54
	xor e                                            ; $6903: $ab
	ld d, a                                          ; $6904: $57
	db $fc                                           ; $6905: $fc
	add b                                            ; $6906: $80
	inc bc                                           ; $6907: $03
	nop                                              ; $6908: $00
	nop                                              ; $6909: $00
	dec l                                            ; $690a: $2d
	ld b, d                                          ; $690b: $42
	cp h                                             ; $690c: $bc
	sub $75                                          ; $690d: $d6 $75
	ld e, $dd                                        ; $690f: $1e $dd
	rst SubAFromHL                                          ; $6911: $d7
	inc bc                                           ; $6912: $03
	add hl, de                                       ; $6913: $19
	ld de, $f839                                     ; $6914: $11 $39 $f8
	ldh a, [$30]                                     ; $6917: $f0 $30
	jr c, jr_042_6975                                ; $6919: $38 $5a

	rst SubAFromDE                                          ; $691b: $df
	cp c                                             ; $691c: $b9
	db $ed                                           ; $691d: $ed
	call nz, $e6bf                                   ; $691e: $c4 $bf $e6
	cpl                                              ; $6921: $2f
	add a                                            ; $6922: $87
	db $e3                                           ; $6923: $e3
	rst $38                                          ; $6924: $ff
	sbc a                                            ; $6925: $9f
	sbc [hl]                                         ; $6926: $9e
	dec de                                           ; $6927: $1b
	ld a, b                                          ; $6928: $78
	ldh a, [$80]                                     ; $6929: $f0 $80
	ld a, [de]                                       ; $692b: $1a
	dec [hl]                                         ; $692c: $35
	ld l, $9e                                        ; $692d: $2e $9e
	rst $38                                          ; $692f: $ff
	ld e, a                                          ; $6930: $5f
	ld l, d                                          ; $6931: $6a
	ld d, a                                          ; $6932: $57
	sbc a                                            ; $6933: $9f
	jp c, $e1f1                                      ; $6934: $da $f1 $e1

	ret nz                                           ; $6937: $c0

	ldh [$d5], a                                     ; $6938: $e0 $d5
	add sp, $26                                      ; $693a: $e8 $26
	ld b, c                                          ; $693c: $41
	ld h, d                                          ; $693d: $62
	push af                                          ; $693e: $f5
	xor d                                            ; $693f: $aa
	push af                                          ; $6940: $f5
	and l                                            ; $6941: $a5
	push bc                                          ; $6942: $c5
	db $dd                                           ; $6943: $dd
	cp [hl]                                          ; $6944: $be
	sbc l                                            ; $6945: $9d
	ei                                               ; $6946: $fb
	ld d, l                                          ; $6947: $55
	ld a, [bc]                                       ; $6948: $0a
	ld e, [hl]                                       ; $6949: $5e
	add b                                            ; $694a: $80
	ld a, $0f                                        ; $694b: $3e $0f
	dec a                                            ; $694d: $3d
	ld [$fbf5], a                                    ; $694e: $ea $f5 $fb
	push af                                          ; $6951: $f5
	ld [$f0dc], a                                    ; $6952: $ea $dc $f0
	jp nz, $0a95                                     ; $6955: $c2 $95 $0a

	dec b                                            ; $6958: $05
	rrca                                             ; $6959: $0f
	dec d                                            ; $695a: $15
	inc hl                                           ; $695b: $23
	sbc a                                            ; $695c: $9f
	rla                                              ; $695d: $17
	cp e                                             ; $695e: $bb
	ld d, c                                          ; $695f: $51
	cp h                                             ; $6960: $bc
	push de                                          ; $6961: $d5
	sub b                                            ; $6962: $90
	dec [hl]                                         ; $6963: $35
	ld [hl], b                                       ; $6964: $70
	ld hl, sp+$74                                    ; $6965: $f8 $74
	cp $df                                           ; $6967: $fe $df
	cp [hl]                                          ; $6969: $be
	add b                                            ; $696a: $80
	rst $38                                          ; $696b: $ff
	ld a, [$f6e0]                                    ; $696c: $fa $e0 $f6
	db $fd                                           ; $696f: $fd
	ld [hl], e                                       ; $6970: $73
	rst $38                                          ; $6971: $ff
	ld [hl], a                                       ; $6972: $77
	xor a                                            ; $6973: $af
	rst JumpTable                                          ; $6974: $c7

jr_042_6975:
	jr jr_042_6986                                   ; $6975: $18 $0f

	ld b, $8c                                        ; $6977: $06 $8c
	inc b                                            ; $6979: $04
	adc h                                            ; $697a: $8c
	ld d, h                                          ; $697b: $54
	inc a                                            ; $697c: $3c
	or b                                             ; $697d: $b0
	ld a, [$e7f1]                                    ; $697e: $fa $f1 $e7
	push af                                          ; $6981: $f5
	xor d                                            ; $6982: $aa
	ld d, a                                          ; $6983: $57
	xor [hl]                                         ; $6984: $ae
	rst GetHLinHL                                          ; $6985: $cf

jr_042_6986:
	dec b                                            ; $6986: $05
	ld c, $1f                                        ; $6987: $0e $1f
	ld a, [bc]                                       ; $6989: $0a
	add b                                            ; $698a: $80
	ld d, l                                          ; $698b: $55
	db $eb                                           ; $698c: $eb
	pop bc                                           ; $698d: $c1
	ld b, d                                          ; $698e: $42
	cp [hl]                                          ; $698f: $be
	ld [hl], a                                       ; $6990: $77
	rst $38                                          ; $6991: $ff
	ld l, a                                          ; $6992: $6f
	xor a                                            ; $6993: $af
	cp a                                             ; $6994: $bf
	xor $bf                                          ; $6995: $ee $bf
	ld e, l                                          ; $6997: $5d
	cp b                                             ; $6998: $b8
	ret nc                                           ; $6999: $d0

	or b                                             ; $699a: $b0
	ld [hl], b                                       ; $699b: $70
	ldh [$71], a                                     ; $699c: $e0 $71
	ld [hl], l                                       ; $699e: $75
	ld [$8646], a                                    ; $699f: $ea $46 $86
	ld e, a                                          ; $69a2: $5f
	and a                                            ; $69a3: $a7
	ld b, h                                          ; $69a4: $44
	adc b                                            ; $69a5: $88
	adc e                                            ; $69a6: $8b
	rla                                              ; $69a7: $17
	cp a                                             ; $69a8: $bf
	ld a, a                                          ; $69a9: $7f
	add b                                            ; $69aa: $80
	xor a                                            ; $69ab: $af
	ld e, a                                          ; $69ac: $5f
	cp a                                             ; $69ad: $bf
	ld a, a                                          ; $69ae: $7f
	cpl                                              ; $69af: $2f
	ld d, a                                          ; $69b0: $57
	inc sp                                           ; $69b1: $33
	dec [hl]                                         ; $69b2: $35
	ld [hl-], a                                      ; $69b3: $32
	ld a, h                                          ; $69b4: $7c
	ld l, d                                          ; $69b5: $6a
	rst JumpTable                                          ; $69b6: $c7
	ret nc                                           ; $69b7: $d0

	xor b                                            ; $69b8: $a8
	db $fc                                           ; $69b9: $fc
	ld a, [$fffd]                                    ; $69ba: $fa $fd $ff
	push af                                          ; $69bd: $f5
	ld hl, sp-$2d                                    ; $69be: $f8 $d3
	rst FarCall                                          ; $69c0: $f7
	rst AddAOntoHL                                          ; $69c1: $ef
	rst FarCall                                          ; $69c2: $f7
	rst SubAFromDE                                          ; $69c3: $df
	halt                                             ; $69c4: $76
	rst SubAFromDE                                          ; $69c5: $df
	or [hl]                                          ; $69c6: $b6
	ld a, $18                                        ; $69c7: $3e $18
	db $10                                           ; $69c9: $10
	add b                                            ; $69ca: $80
	jr jr_042_69fd                                   ; $69cb: $18 $30

	sbc c                                            ; $69cd: $99
	or b                                             ; $69ce: $b0
	reti                                             ; $69cf: $d9


	ld b, h                                          ; $69d0: $44
	db $eb                                           ; $69d1: $eb
	sub $e1                                          ; $69d2: $d6 $e1
	rst SubAFromDE                                          ; $69d4: $df
	jr nz, @-$09                                     ; $69d5: $20 $f5

	ld a, c                                          ; $69d7: $79
	cp e                                             ; $69d8: $bb

Jump_042_69d9:
	dec d                                            ; $69d9: $15
	ccf                                              ; $69da: $3f
	ld e, $20                                        ; $69db: $1e $20
	rst SubAFromDE                                          ; $69dd: $df
	dec bc                                           ; $69de: $0b
	add a                                            ; $69df: $87
	dec c                                            ; $69e0: $0d
	ld e, e                                          ; $69e1: $5b
	add a                                            ; $69e2: $87
	ld c, a                                          ; $69e3: $4f
	rst $38                                          ; $69e4: $ff
	ld c, $dd                                        ; $69e5: $0e $dd
	jp z, $acf6                                      ; $69e7: $ca $f6 $ac

	sub [hl]                                         ; $69ea: $96
	ld a, b                                          ; $69eb: $78
	ldh a, [$60]                                     ; $69ec: $f0 $60
	pop af                                           ; $69ee: $f1
	ldh [c], a                                       ; $69ef: $e2
	push af                                          ; $69f0: $f5
	nop                                              ; $69f1: $00
	dec d                                            ; $69f2: $15
	ld a, [hl+]                                      ; $69f3: $2a
	ld a, e                                          ; $69f4: $7b
	ld c, $9a                                        ; $69f5: $0e $9a
	jr nz, jr_042_6a4e                               ; $69f7: $20 $55

	rst $38                                          ; $69f9: $ff
	nop                                              ; $69fa: $00
	push de                                          ; $69fb: $d5
	ld a, e                                          ; $69fc: $7b

jr_042_69fd:
	dec b                                            ; $69fd: $05
	sbc h                                            ; $69fe: $9c
	rst SubAFromDE                                          ; $69ff: $df
	xor d                                            ; $6a00: $aa
	nop                                              ; $6a01: $00
	ld l, [hl]                                       ; $6a02: $6e
	ldh [c], a                                       ; $6a03: $e2
	ld a, a                                          ; $6a04: $7f
	ldh a, [$9e]                                     ; $6a05: $f0 $9e
	ld [bc], a                                       ; $6a07: $02
	ld [hl], a                                       ; $6a08: $77
	rst FarCall                                          ; $6a09: $f7
	sub h                                            ; $6a0a: $94
	rst $38                                          ; $6a0b: $ff
	xor d                                            ; $6a0c: $aa
	db $fc                                           ; $6a0d: $fc
	ld [bc], a                                       ; $6a0e: $02
	dec b                                            ; $6a0f: $05
	ld a, [bc]                                       ; $6a10: $0a
	dec c                                            ; $6a11: $0d
	ld a, [bc]                                       ; $6a12: $0a
	db $fd                                           ; $6a13: $fd
	ld a, [bc]                                       ; $6a14: $0a
	db $fd                                           ; $6a15: $fd
	ld a, d                                          ; $6a16: $7a
	add b                                            ; $6a17: $80
	db $dd                                           ; $6a18: $dd
	ld hl, sp-$6d                                    ; $6a19: $f8 $93
	ld a, [hl+]                                      ; $6a1b: $2a
	push de                                          ; $6a1c: $d5
	xor d                                            ; $6a1d: $aa
	ld [hl], l                                       ; $6a1e: $75
	ld c, d                                          ; $6a1f: $4a
	push de                                          ; $6a20: $d5
	ld a, a                                          ; $6a21: $7f
	db $db                                           ; $6a22: $db
	add b                                            ; $6a23: $80
	add b                                            ; $6a24: $80
	ret nz                                           ; $6a25: $c0

	ret nz                                           ; $6a26: $c0

	db $dd                                           ; $6a27: $dd
	ld h, b                                          ; $6a28: $60
	add a                                            ; $6a29: $87
	xor d                                            ; $6a2a: $aa
	ld c, l                                          ; $6a2b: $4d
	and d                                            ; $6a2c: $a2
	ld b, a                                          ; $6a2d: $47
	or [hl]                                          ; $6a2e: $b6
	halt                                             ; $6a2f: $76
	ld a, e                                          ; $6a30: $7b
	db $ed                                           ; $6a31: $ed
	db $10                                           ; $6a32: $10
	db $10                                           ; $6a33: $10
	jr jr_042_6a4e                                   ; $6a34: $18 $18

	add hl, de                                       ; $6a36: $19
	rra                                              ; $6a37: $1f
	db $fc                                           ; $6a38: $fc
	jr @-$53                                         ; $6a39: $18 $ab

	ld d, a                                          ; $6a3b: $57
	xor a                                            ; $6a3c: $af
	cp $7c                                           ; $6a3d: $fe $7c
	cp $ae                                           ; $6a3f: $fe $ae
	ld e, l                                          ; $6a41: $5d
	halt                                             ; $6a42: $76
	ld [hl], d                                       ; $6a43: $72
	sbc e                                            ; $6a44: $9b
	add e                                            ; $6a45: $83
	ld bc, $0201                                     ; $6a46: $01 $01 $02
	ld [hl], b                                       ; $6a49: $70
	db $eb                                           ; $6a4a: $eb
	sbc e                                            ; $6a4b: $9b
	or $f3                                           ; $6a4c: $f6 $f3

jr_042_6a4e:
	ldh a, [rAUD1LEN]                                ; $6a4e: $f0 $11
	ld a, b                                          ; $6a50: $78
	reti                                             ; $6a51: $d9


	rst SubAFromDE                                          ; $6a52: $df
	ld a, a                                          ; $6a53: $7f
	rst SubAFromDE                                          ; $6a54: $df
	ccf                                              ; $6a55: $3f
	sub l                                            ; $6a56: $95
	rst SubAFromDE                                          ; $6a57: $df
	rst $38                                          ; $6a58: $ff
	cp $ec                                           ; $6a59: $fe $ec
	ld c, b                                          ; $6a5b: $48
	ld c, b                                          ; $6a5c: $48
	ld hl, sp+$19                                    ; $6a5d: $f8 $19
	ld bc, $db03                                     ; $6a5f: $01 $03 $db
	rst $38                                          ; $6a62: $ff
	add a                                            ; $6a63: $87
	or a                                             ; $6a64: $b7
	reti                                             ; $6a65: $d9


	and e                                            ; $6a66: $a3
	jp z, $c2b7                                      ; $6a67: $ca $b7 $c2

	rst SubAFromBC                                          ; $6a6a: $e7
	ld d, l                                          ; $6a6b: $55
	ret c                                            ; $6a6c: $d8

	cp [hl]                                          ; $6a6d: $be
	rst SubAFromDE                                          ; $6a6e: $df
	or l                                             ; $6a6f: $b5
	ret c                                            ; $6a70: $d8

	cp l                                             ; $6a71: $bd
	sbc a                                            ; $6a72: $9f
	xor d                                            ; $6a73: $aa
	xor $3e                                          ; $6a74: $ee $3e
	add $26                                          ; $6a76: $c6 $26
	ld c, l                                          ; $6a78: $4d
	xor a                                            ; $6a79: $af
	db $fd                                           ; $6a7a: $fd
	ld a, [hl]                                       ; $6a7b: $7e
	ld a, c                                          ; $6a7c: $79
	or c                                             ; $6a7d: $b1
	ld a, [hl]                                       ; $6a7e: $7e
	pop hl                                           ; $6a7f: $e1
	add b                                            ; $6a80: $80
	call c, $fdfe                                    ; $6a81: $dc $fe $fd
	add sp, $5b                                      ; $6a84: $e8 $5b
	adc a                                            ; $6a86: $8f
	ld a, l                                          ; $6a87: $7d
	ld b, h                                          ; $6a88: $44
	xor l                                            ; $6a89: $ad
	ld c, [hl]                                       ; $6a8a: $4e
	xor [hl]                                         ; $6a8b: $ae
	rla                                              ; $6a8c: $17
	xor a                                            ; $6a8d: $af
	rst $38                                          ; $6a8e: $ff
	cp $bf                                           ; $6a8f: $fe $bf
	ld e, [hl]                                       ; $6a91: $5e
	cp a                                             ; $6a92: $bf
	ld e, l                                          ; $6a93: $5d
	ld [hl], e                                       ; $6a94: $73
	ldh [$aa], a                                     ; $6a95: $e0 $aa
	dec [hl]                                         ; $6a97: $35
	xor b                                            ; $6a98: $a8
	ld d, a                                          ; $6a99: $57
	dec de                                           ; $6a9a: $1b
	and h                                            ; $6a9b: $a4
	db $fc                                           ; $6a9c: $fc
	rst $38                                          ; $6a9d: $ff
	ld [hl], a                                       ; $6a9e: $77
	ld [$7780], a                                    ; $6a9f: $ea $80 $77
	cp a                                             ; $6aa2: $bf
	rst $38                                          ; $6aa3: $ff
	ld e, e                                          ; $6aa4: $5b
	cp e                                             ; $6aa5: $bb
	di                                               ; $6aa6: $f3
	cp d                                             ; $6aa7: $ba
	ldh [c], a                                       ; $6aa8: $e2
	adc e                                            ; $6aa9: $8b
	inc bc                                           ; $6aaa: $03
	add c                                            ; $6aab: $81
	sub b                                            ; $6aac: $90
	ld [hl], h                                       ; $6aad: $74
	db $fc                                           ; $6aae: $fc
	ld [hl], l                                       ; $6aaf: $75
	dec a                                            ; $6ab0: $3d
	ld [hl], h                                       ; $6ab1: $74
	db $fc                                           ; $6ab2: $fc
	cp $ef                                           ; $6ab3: $fe $ef
	db $dd                                           ; $6ab5: $dd
	xor b                                            ; $6ab6: $a8
	push hl                                          ; $6ab7: $e5
	cp [hl]                                          ; $6ab8: $be
	ld d, l                                          ; $6ab9: $55
	ld hl, sp+$3f                                    ; $6aba: $f8 $3f
	xor d                                            ; $6abc: $aa
	ldh [c], a                                       ; $6abd: $e2
	rst SubAFromHL                                          ; $6abe: $d7
	sbc [hl]                                         ; $6abf: $9e
	add d                                            ; $6ac0: $82
	push bc                                          ; $6ac1: $c5
	xor [hl]                                         ; $6ac2: $ae
	ld a, a                                          ; $6ac3: $7f
	rst $38                                          ; $6ac4: $ff
	ld d, l                                          ; $6ac5: $55
	ld [hl], a                                       ; $6ac6: $77
	ret nz                                           ; $6ac7: $c0

	ld d, l                                          ; $6ac8: $55
	xor $7f                                          ; $6ac9: $ee $7f
	ld l, [hl]                                       ; $6acb: $6e
	ld a, l                                          ; $6acc: $7d
	ld l, e                                          ; $6acd: $6b
	ld hl, sp-$01                                    ; $6ace: $f8 $ff
	db $eb                                           ; $6ad0: $eb
	ld [hl], c                                       ; $6ad1: $71
	ldh [$f1], a                                     ; $6ad2: $e0 $f1
	ldh [c], a                                       ; $6ad4: $e2
	db $f4                                           ; $6ad5: $f4
	inc bc                                           ; $6ad6: $03
	rra                                              ; $6ad7: $1f
	di                                               ; $6ad8: $f3
	push af                                          ; $6ad9: $f5
	ld a, c                                          ; $6ada: $79
	push af                                          ; $6adb: $f5
	ld l, d                                          ; $6adc: $6a
	pop af                                           ; $6add: $f1
	sbc $ff                                          ; $6ade: $de $ff
	add b                                            ; $6ae0: $80
	ld a, e                                          ; $6ae1: $7b
	rst FarCall                                          ; $6ae2: $f7
	ld a, e                                          ; $6ae3: $7b
	push af                                          ; $6ae4: $f5
	ld a, a                                          ; $6ae5: $7f
	set 3, h                                         ; $6ae6: $cb $dc
	sbc d                                            ; $6ae8: $9a
	xor h                                            ; $6ae9: $ac
	adc d                                            ; $6aea: $8a
	rst $38                                          ; $6aeb: $ff
	ret nc                                           ; $6aec: $d0

	add $f5                                          ; $6aed: $c6 $f5
	rst $38                                          ; $6aef: $ff
	db $ed                                           ; $6af0: $ed
	db $db                                           ; $6af1: $db
	db $fd                                           ; $6af2: $fd
	rst $38                                          ; $6af3: $ff
	ld l, a                                          ; $6af4: $6f
	rst $38                                          ; $6af5: $ff
	db $dd                                           ; $6af6: $dd
	or [hl]                                          ; $6af7: $b6
	call z, $cda6                                    ; $6af8: $cc $a6 $cd
	xor a                                            ; $6afb: $af
	ld d, l                                          ; $6afc: $55
	ld [hl], b                                       ; $6afd: $70
	or e                                             ; $6afe: $b3

Jump_042_6aff:
	reti                                             ; $6aff: $d9


	ld a, e                                          ; $6b00: $7b
	cp $90                                           ; $6b01: $fe $90
	pop de                                           ; $6b03: $d1
	xor d                                            ; $6b04: $aa
	rst $38                                          ; $6b05: $ff
	ld d, a                                          ; $6b06: $57
	sub e                                            ; $6b07: $93
	ld d, l                                          ; $6b08: $55
	cp e                                             ; $6b09: $bb
	ld bc, $02ff                                     ; $6b0a: $01 $ff $02
	rrca                                             ; $6b0d: $0f
	rst AddAOntoHL                                          ; $6b0e: $ef
	ld a, l                                          ; $6b0f: $7d
	cp e                                             ; $6b10: $bb
	ld d, l                                          ; $6b11: $55
	db $dd                                           ; $6b12: $dd
	rst $38                                          ; $6b13: $ff
	adc a                                            ; $6b14: $8f
	push af                                          ; $6b15: $f5
	jp hl                                            ; $6b16: $e9


	pop de                                           ; $6b17: $d1
	ld a, [$defd]                                    ; $6b18: $fa $fd $de
	db $ed                                           ; $6b1b: $ed
	add $eb                                          ; $6b1c: $c6 $eb
	rst FarCall                                          ; $6b1e: $f7
	rst AddAOntoHL                                          ; $6b1f: $ef
	push bc                                          ; $6b20: $c5
	jp nz, $d2e1                                     ; $6b21: $c2 $e1 $d2

	ld sp, hl                                        ; $6b24: $f9
	ld a, d                                          ; $6b25: $7a
	db $db                                           ; $6b26: $db
	ld a, a                                          ; $6b27: $7f
	pop hl                                           ; $6b28: $e1
	ld a, [hl]                                       ; $6b29: $7e
	reti                                             ; $6b2a: $d9


	ld a, a                                          ; $6b2b: $7f
	sub a                                            ; $6b2c: $97
	ld [hl], c                                       ; $6b2d: $71
	xor l                                            ; $6b2e: $ad
	ld a, a                                          ; $6b2f: $7f
	db $dd                                           ; $6b30: $dd
	ld a, e                                          ; $6b31: $7b
	ldh a, [$9e]                                     ; $6b32: $f0 $9e
	dec h                                            ; $6b34: $25
	ld d, a                                          ; $6b35: $57
	ldh a, [$97]                                     ; $6b36: $f0 $97
	dec c                                            ; $6b38: $0d
	dec bc                                           ; $6b39: $0b
	dec c                                            ; $6b3a: $0d
	dec bc                                           ; $6b3b: $0b
	rlca                                             ; $6b3c: $07
	inc bc                                           ; $6b3d: $03
	rrca                                             ; $6b3e: $0f
	ei                                               ; $6b3f: $fb
	sbc $f8                                          ; $6b40: $de $f8
	add b                                            ; $6b42: $80
	ld e, c                                          ; $6b43: $59
	ei                                               ; $6b44: $fb
	ei                                               ; $6b45: $fb
	ld sp, hl                                        ; $6b46: $f9
	ld sp, hl                                        ; $6b47: $f9
	ld [hl], l                                       ; $6b48: $75
	ld a, [$ff18]                                    ; $6b49: $fa $18 $ff
	ccf                                              ; $6b4c: $3f
	ld a, d                                          ; $6b4d: $7a
	push af                                          ; $6b4e: $f5
	ld [$e0e0], a                                    ; $6b4f: $ea $e0 $e0
	ccf                                              ; $6b52: $3f
	ld a, $3f                                        ; $6b53: $3e $3f
	ld sp, $e060                                     ; $6b55: $31 $60 $e0
	ld c, d                                          ; $6b58: $4a
	xor l                                            ; $6b59: $ad
	ld a, a                                          ; $6b5a: $7f
	ld d, [hl]                                       ; $6b5b: $56
	rst $38                                          ; $6b5c: $ff
	nop                                              ; $6b5d: $00
	ld h, e                                          ; $6b5e: $63
	xor d                                            ; $6b5f: $aa
	jr jr_042_6b7a                                   ; $6b60: $18 $18

	sbc [hl]                                         ; $6b62: $9e
	rst $38                                          ; $6b63: $ff
	ld a, e                                          ; $6b64: $7b
	cp b                                             ; $6b65: $b8
	sub h                                            ; $6b66: $94
	inc e                                            ; $6b67: $1c
	nop                                              ; $6b68: $00
	cp [hl]                                          ; $6b69: $be
	ld d, a                                          ; $6b6a: $57
	pop bc                                           ; $6b6b: $c1
	cpl                                              ; $6b6c: $2f
	rst $38                                          ; $6b6d: $ff
	ld bc, $bcfc                                     ; $6b6e: $01 $fc $bc
	nop                                              ; $6b71: $00
	ld a, b                                          ; $6b72: $78
	ld h, $78                                        ; $6b73: $26 $78
	ld c, d                                          ; $6b75: $4a
	add b                                            ; $6b76: $80
	inc bc                                           ; $6b77: $03
	ld a, c                                          ; $6b78: $79
	ld [hl], l                                       ; $6b79: $75

jr_042_6b7a:
	db $eb                                           ; $6b7a: $eb
	push de                                          ; $6b7b: $d5
	rst AddAOntoHL                                          ; $6b7c: $ef
	ei                                               ; $6b7d: $fb
	cp a                                             ; $6b7e: $bf
	ld a, [$fbf7]                                    ; $6b7f: $fa $f7 $fb
	push af                                          ; $6b82: $f5
	rst AddAOntoHL                                          ; $6b83: $ef
	rst $38                                          ; $6b84: $ff
	rst $38                                          ; $6b85: $ff
	ei                                               ; $6b86: $fb
	rst $38                                          ; $6b87: $ff
	rra                                              ; $6b88: $1f
	call z, $ffc4                                    ; $6b89: $cc $c4 $ff
	daa                                              ; $6b8c: $27
	xor c                                            ; $6b8d: $a9
	ld [hl], e                                       ; $6b8e: $73
	ld hl, sp-$01                                    ; $6b8f: $f8 $ff
	cp $fc                                           ; $6b91: $fe $fc
	rst $38                                          ; $6b93: $ff
	rst $38                                          ; $6b94: $ff
	rst SubAFromHL                                          ; $6b95: $d7
	add l                                            ; $6b96: $85
	adc a                                            ; $6b97: $8f
	rlca                                             ; $6b98: $07
	rst JumpTable                                          ; $6b99: $c7
	ld a, $6a                                        ; $6b9a: $3e $6a
	rst $38                                          ; $6b9c: $ff
	dec d                                            ; $6b9d: $15
	jp z, $2e55                                      ; $6b9e: $ca $55 $2e

	rst $38                                          ; $6ba1: $ff
	ld a, a                                          ; $6ba2: $7f

Call_042_6ba3:
	scf                                              ; $6ba3: $37
	rst $38                                          ; $6ba4: $ff
	ld [$aaf5], a                                    ; $6ba5: $ea $f5 $aa
	pop de                                           ; $6ba8: $d1
	cp $be                                           ; $6ba9: $fe $be
	rst $38                                          ; $6bab: $ff
	db $fd                                           ; $6bac: $fd
	dec c                                            ; $6bad: $0d
	adc d                                            ; $6bae: $8a
	ld c, e                                          ; $6baf: $4b
	xor d                                            ; $6bb0: $aa
	halt                                             ; $6bb1: $76
	adc c                                            ; $6bb2: $89
	adc e                                            ; $6bb3: $8b
	cp $7d                                           ; $6bb4: $fe $7d
	cp h                                             ; $6bb6: $bc
	ld e, l                                          ; $6bb7: $5d
	db $dd                                           ; $6bb8: $dd
	and a                                            ; $6bb9: $a7
	rst JumpTable                                          ; $6bba: $c7
	add a                                            ; $6bbb: $87
	call nc, $c4a5                                   ; $6bbc: $d4 $a5 $c4
	adc [hl]                                         ; $6bbf: $8e
	cpl                                              ; $6bc0: $2f
	ld e, a                                          ; $6bc1: $5f
	ccf                                              ; $6bc2: $3f
	ld a, a                                          ; $6bc3: $7f
	cpl                                              ; $6bc4: $2f
	ld e, [hl]                                       ; $6bc5: $5e
	ccf                                              ; $6bc6: $3f
	ld a, a                                          ; $6bc7: $7f
	ld a, c                                          ; $6bc8: $79
	db $db                                           ; $6bc9: $db
	sbc d                                            ; $6bca: $9a
	rst $38                                          ; $6bcb: $ff
	db $fc                                           ; $6bcc: $fc
	ld l, h                                          ; $6bcd: $6c
	ld b, l                                          ; $6bce: $45
	ld l, a                                          ; $6bcf: $6f
	ld a, e                                          ; $6bd0: $7b
	ld sp, hl                                        ; $6bd1: $f9
	ld a, a                                          ; $6bd2: $7f
	call $817d                                       ; $6bd3: $cd $7d $81
	add b                                            ; $6bd6: $80
	ldh a, [rIE]                                     ; $6bd7: $f0 $ff
	ld e, c                                          ; $6bd9: $59
	jp $ce37                                         ; $6bda: $c3 $37 $ce


	ld a, [$e2d7]                                    ; $6bdd: $fa $d7 $e2

Jump_042_6be0:
	rst $38                                          ; $6be0: $ff
	di                                               ; $6be1: $f3
	ld [hl], c                                       ; $6be2: $71
	rst SubAFromDE                                          ; $6be3: $df
	cp a                                             ; $6be4: $bf
	dec b                                            ; $6be5: $05
	jr z, @+$1f                                      ; $6be6: $28 $1d

	cp $94                                           ; $6be8: $fe $94
	call nc, Call_042_5402                           ; $6bea: $d4 $02 $54
	cp d                                             ; $6bed: $ba
	db $fc                                           ; $6bee: $fc
	ld hl, sp-$01                                    ; $6bef: $f8 $ff
	rst $38                                          ; $6bf1: $ff
	cp a                                             ; $6bf2: $bf
	db $fd                                           ; $6bf3: $fd
	xor e                                            ; $6bf4: $ab
	ld b, l                                          ; $6bf5: $45
	sub l                                            ; $6bf6: $95
	inc bc                                           ; $6bf7: $03
	rlca                                             ; $6bf8: $07
	push hl                                          ; $6bf9: $e5
	ld a, e                                          ; $6bfa: $7b
	rst FarCall                                          ; $6bfb: $f7
	ld [hl], a                                       ; $6bfc: $77
	rst AddAOntoHL                                          ; $6bfd: $ef
	ld a, a                                          ; $6bfe: $7f

Jump_042_6bff:
	ld c, a                                          ; $6bff: $4f
	ld e, [hl]                                       ; $6c00: $5e
	ld [hl], h                                       ; $6c01: $74
	add b                                            ; $6c02: $80
	add h                                            ; $6c03: $84
	ldh a, [$e0]                                     ; $6c04: $f0 $e0
	ldh a, [$e1]                                     ; $6c06: $f0 $e1
	ld l, d                                          ; $6c08: $6a
	ccf                                              ; $6c09: $3f
	ld a, a                                          ; $6c0a: $7f
	cp a                                             ; $6c0b: $bf
	ld a, a                                          ; $6c0c: $7f
	cp c                                             ; $6c0d: $b9
	ld [hl], l                                       ; $6c0e: $75
	or c                                             ; $6c0f: $b1
	push af                                          ; $6c10: $f5
	rst $38                                          ; $6c11: $ff
	cp a                                             ; $6c12: $bf
	ld a, a                                          ; $6c13: $7f
	cp a                                             ; $6c14: $bf
	ld [hl], a                                       ; $6c15: $77
	cp e                                             ; $6c16: $bb
	ld a, a                                          ; $6c17: $7f
	cp a                                             ; $6c18: $bf
	ld hl, sp-$07                                    ; $6c19: $f8 $f9
	cp a                                             ; $6c1b: $bf
	or e                                             ; $6c1c: $b3
	dec h                                            ; $6c1d: $25
	ld e, [hl]                                       ; $6c1e: $5e
	ld a, b                                          ; $6c1f: $78
	sbc c                                            ; $6c20: $99
	ld a, e                                          ; $6c21: $7b
	ld l, [hl]                                       ; $6c22: $6e
	add h                                            ; $6c23: $84
	ld a, [$e0e1]                                    ; $6c24: $fa $e1 $e0
	rra                                              ; $6c27: $1f
	inc b                                            ; $6c28: $04
	ld e, [hl]                                       ; $6c29: $5e
	ld a, c                                          ; $6c2a: $79
	and d                                            ; $6c2b: $a2
	ld d, l                                          ; $6c2c: $55
	ld a, d                                          ; $6c2d: $7a
	ld b, l                                          ; $6c2e: $45
	rst $38                                          ; $6c2f: $ff
	add a                                            ; $6c30: $87
	sbc a                                            ; $6c31: $9f
	cp $5d                                           ; $6c32: $fe $5d
	xor d                                            ; $6c34: $aa
	push af                                          ; $6c35: $f5
	cp d                                             ; $6c36: $ba
	di                                               ; $6c37: $f3
	inc de                                           ; $6c38: $13
	ld e, a                                          ; $6c39: $5f
	ld d, c                                          ; $6c3a: $51
	ld [$aa54], a                                    ; $6c3b: $ea $54 $aa
	db $f4                                           ; $6c3e: $f4
	sbc $ff                                          ; $6c3f: $de $ff
	adc d                                            ; $6c41: $8a
	xor a                                            ; $6c42: $af
	dec d                                            ; $6c43: $15
	xor e                                            ; $6c44: $ab
	ld d, l                                          ; $6c45: $55
	dec bc                                           ; $6c46: $0b
	ld l, a                                          ; $6c47: $6f
	sbc $dd                                          ; $6c48: $de $dd
	cp $dc                                           ; $6c4a: $fe $dc
	cp $dc                                           ; $6c4c: $fe $dc
	ld a, [$e1f0]                                    ; $6c4e: $fa $f0 $e1
	ldh [c], a                                       ; $6c51: $e2
	pop bc                                           ; $6c52: $c1
	db $e3                                           ; $6c53: $e3
	pop bc                                           ; $6c54: $c1
	db $e3                                           ; $6c55: $e3
	push bc                                          ; $6c56: $c5
	cp $d4                                           ; $6c57: $fe $d4
	rst $38                                          ; $6c59: $ff
	ld a, d                                          ; $6c5a: $7a
	call $ffdb                                       ; $6c5b: $cd $db $ff
	ld a, e                                          ; $6c5e: $7b
	ld a, $dd                                        ; $6c5f: $3e $dd
	rst $38                                          ; $6c61: $ff
	sub a                                            ; $6c62: $97
	dec c                                            ; $6c63: $0d
	rrca                                             ; $6c64: $0f
	db $fd                                           ; $6c65: $fd
	rst $38                                          ; $6c66: $ff
	db $fd                                           ; $6c67: $fd
	rst $38                                          ; $6c68: $ff
	cp $ff                                           ; $6c69: $fe $ff
	sbc $f9                                          ; $6c6b: $de $f9
	sbc [hl]                                         ; $6c6d: $9e
	ld hl, sp-$22                                    ; $6c6e: $f8 $de
	db $fc                                           ; $6c70: $fc
	sub l                                            ; $6c71: $95
	rst $38                                          ; $6c72: $ff
	push de                                          ; $6c73: $d5
	ld [$aa95], a                                    ; $6c74: $ea $95 $aa
	sub l                                            ; $6c77: $95
	ld l, d                                          ; $6c78: $6a
	ld d, l                                          ; $6c79: $55

Jump_042_6c7a:
	ld [$dde0], a                                    ; $6c7a: $ea $e0 $dd
	ret nz                                           ; $6c7d: $c0

	sbc $80                                          ; $6c7e: $de $80
	ld a, d                                          ; $6c80: $7a
	sbc b                                            ; $6c81: $98
	sbc d                                            ; $6c82: $9a
	and d                                            ; $6c83: $a2
	ld e, l                                          ; $6c84: $5d
	xor d                                            ; $6c85: $aa
	ld e, c                                          ; $6c86: $59
	cp [hl]                                          ; $6c87: $be
	cp $df                                           ; $6c88: $fe $df
	ld [$1cde], sp                                   ; $6c8a: $08 $de $1c
	sbc h                                            ; $6c8d: $9c
	ld d, h                                          ; $6c8e: $54
	xor a                                            ; $6c8f: $af
	ld d, a                                          ; $6c90: $57
	ld [hl], a                                       ; $6c91: $77
	cp $9e                                           ; $6c92: $fe $9e
	xor e                                            ; $6c94: $ab
	ld a, b                                          ; $6c95: $78
	ld b, l                                          ; $6c96: $45
	db $fc                                           ; $6c97: $fc
	sub h                                            ; $6c98: $94
	db $fd                                           ; $6c99: $fd
	ld e, l                                          ; $6c9a: $5d
	ld a, e                                          ; $6c9b: $7b
	add hl, sp                                       ; $6c9c: $39
	ccf                                              ; $6c9d: $3f
	dec a                                            ; $6c9e: $3d
	ccf                                              ; $6c9f: $3f
	ccf                                              ; $6ca0: $3f
	cp $fe                                           ; $6ca1: $fe $fe
	db $fc                                           ; $6ca3: $fc
	ld [hl], a                                       ; $6ca4: $77
	cp $80                                           ; $6ca5: $fe $80
	db $fc                                           ; $6ca7: $fc
	db $fd                                           ; $6ca8: $fd
	ld hl, sp-$03                                    ; $6ca9: $f8 $fd
	ld e, d                                          ; $6cab: $5a
	add a                                            ; $6cac: $87
	adc $e7                                          ; $6cad: $ce $e7
	db $f4                                           ; $6caf: $f4
	ld [bc], a                                       ; $6cb0: $02
	rlca                                             ; $6cb1: $07
	ld [bc], a                                       ; $6cb2: $02
	and a                                            ; $6cb3: $a7
	ld a, d                                          ; $6cb4: $7a
	ccf                                              ; $6cb5: $3f
	rra                                              ; $6cb6: $1f
	dec bc                                           ; $6cb7: $0b
	ld e, a                                          ; $6cb8: $5f
	cp $7d                                           ; $6cb9: $fe $7d
	ld a, [$a075]                                    ; $6cbb: $fa $75 $a0
	db $fd                                           ; $6cbe: $fd
	xor [hl]                                         ; $6cbf: $ae
	and b                                            ; $6cc0: $a0
	ld bc, $0582                                     ; $6cc1: $01 $82 $05
	adc d                                            ; $6cc4: $8a
	ld e, a                                          ; $6cc5: $5f
	sub b                                            ; $6cc6: $90
	cp $d1                                           ; $6cc7: $fe $d1
	ld e, e                                          ; $6cc9: $5b
	xor d                                            ; $6cca: $aa
	ld c, h                                          ; $6ccb: $4c
	xor h                                            ; $6ccc: $ac
	ld c, l                                          ; $6ccd: $4d
	xor a                                            ; $6cce: $af
	ld e, a                                          ; $6ccf: $5f
	sub e                                            ; $6cd0: $93
	xor h                                            ; $6cd1: $ac
	ld e, l                                          ; $6cd2: $5d
	cp a                                             ; $6cd3: $bf
	ld e, a                                          ; $6cd4: $5f
	cp [hl]                                          ; $6cd5: $be
	ld a, b                                          ; $6cd6: $78
	and b                                            ; $6cd7: $a0
	sub d                                            ; $6cd8: $92
	call z, $ec8c                                    ; $6cd9: $cc $8c $ec
	jr c, jr_042_6d2e                                ; $6cdc: $38 $50

	di                                               ; $6cde: $f3
	rst SubAFromBC                                          ; $6cdf: $e7
	rst AddAOntoHL                                          ; $6ce0: $ef
	ccf                                              ; $6ce1: $3f
	ld a, a                                          ; $6ce2: $7f
	rst $38                                          ; $6ce3: $ff
	rst SubAFromDE                                          ; $6ce4: $df
	cp a                                             ; $6ce5: $bf
	sbc $ff                                          ; $6ce6: $de $ff
	add b                                            ; $6ce8: $80
	daa                                              ; $6ce9: $27
	rrca                                             ; $6cea: $0f
	rlca                                             ; $6ceb: $07
	rrca                                             ; $6cec: $0f
	dec c                                            ; $6ced: $0d
	ld c, $8f                                        ; $6cee: $0e $8f
	ld c, $f8                                        ; $6cf0: $0e $f8
	ldh a, [$f8]                                     ; $6cf2: $f0 $f8
	ldh a, [$f2]                                     ; $6cf4: $f0 $f2
	pop af                                           ; $6cf6: $f1
	ldh a, [$f1]                                     ; $6cf7: $f0 $f1
	push af                                          ; $6cf9: $f5
	or $f7                                           ; $6cfa: $f6 $f7
	ldh [c], a                                       ; $6cfc: $e2
	ld d, l                                          ; $6cfd: $55
	jp z, $9f3d                                      ; $6cfe: $ca $3d $9f

	ld a, [bc]                                       ; $6d01: $0a
	add hl, bc                                       ; $6d02: $09
	ld [$aa1d], sp                                   ; $6d03: $08 $1d $aa
	db $fd                                           ; $6d06: $fd
	rst $38                                          ; $6d07: $ff
	sub h                                            ; $6d08: $94
	ld a, a                                          ; $6d09: $7f
	ld d, c                                          ; $6d0a: $51
	ld a, [$fafd]                                    ; $6d0b: $fa $fd $fa
	push af                                          ; $6d0e: $f5
	xor d                                            ; $6d0f: $aa
	call nc, $ae29                                   ; $6d10: $d4 $29 $ae
	dec b                                            ; $6d13: $05
	ld a, b                                          ; $6d14: $78
	rst JumpTable                                          ; $6d15: $c7
	ld a, h                                          ; $6d16: $7c
	ld b, b                                          ; $6d17: $40
	sub h                                            ; $6d18: $94
	sub $55                                          ; $6d19: $d6 $55
	ld h, [hl]                                       ; $6d1b: $66
	ld e, c                                          ; $6d1c: $59
	inc [hl]                                         ; $6d1d: $34
	rra                                              ; $6d1e: $1f
	ccf                                              ; $6d1f: $3f
	cp a                                             ; $6d20: $bf
	ld a, a                                          ; $6d21: $7f
	ld [$7adf], a                                    ; $6d22: $ea $df $7a
	ld b, e                                          ; $6d25: $43
	ld a, d                                          ; $6d26: $7a
	adc [hl]                                         ; $6d27: $8e
	sub c                                            ; $6d28: $91
	ld [hl], b                                       ; $6d29: $70
	xor c                                            ; $6d2a: $a9
	ldh [$e1], a                                     ; $6d2b: $e0 $e1
	ret nc                                           ; $6d2d: $d0

jr_042_6d2e:
	pop hl                                           ; $6d2e: $e1
	add b                                            ; $6d2f: $80
	add hl, de                                       ; $6d30: $19
	cp a                                             ; $6d31: $bf
	halt                                             ; $6d32: $76
	rst $38                                          ; $6d33: $ff
	cp $ef                                           ; $6d34: $fe $ef
	sbc $7b                                          ; $6d36: $de $7b
	daa                                              ; $6d38: $27
	ld a, [hl]                                       ; $6d39: $7e
	ld l, b                                          ; $6d3a: $68
	add d                                            ; $6d3b: $82
	rra                                              ; $6d3c: $1f
	ld a, [hl+]                                      ; $6d3d: $2a
	inc d                                            ; $6d3e: $14
	ld a, [hl+]                                      ; $6d3f: $2a
	inc d                                            ; $6d40: $14
	ret nz                                           ; $6d41: $c0

	ldh [$c0], a                                     ; $6d42: $e0 $c0
	ldh [$d5], a                                     ; $6d44: $e0 $d5
	db $eb                                           ; $6d46: $eb
	push de                                          ; $6d47: $d5
	db $eb                                           ; $6d48: $eb
	xor a                                            ; $6d49: $af
	rst JumpTable                                          ; $6d4a: $c7
	xor a                                            ; $6d4b: $af
	rst JumpTable                                          ; $6d4c: $c7
	adc [hl]                                         ; $6d4d: $8e
	dec [hl]                                         ; $6d4e: $35
	ld a, d                                          ; $6d4f: $7a
	rst $38                                          ; $6d50: $ff
	ld d, b                                          ; $6d51: $50
	jr c, jr_042_6da4                                ; $6d52: $38 $50

	jr c, @+$73                                      ; $6d54: $38 $71

	ld a, [rIE]                                    ; $6d56: $fa $ff $ff
	ld a, e                                          ; $6d59: $7b
	or c                                             ; $6d5a: $b1
	sbc d                                            ; $6d5b: $9a
	db $fc                                           ; $6d5c: $fc
	xor d                                            ; $6d5d: $aa
	ld d, l                                          ; $6d5e: $55
	ld [$7b5c], sp                                   ; $6d5f: $08 $5c $7b
	or c                                             ; $6d62: $b1
	adc [hl]                                         ; $6d63: $8e
	inc bc                                           ; $6d64: $03
	ld d, l                                          ; $6d65: $55
	xor d                                            ; $6d66: $aa
	rst FarCall                                          ; $6d67: $f7
	and e                                            ; $6d68: $a3
	ret nc                                           ; $6d69: $d0

	ld a, a                                          ; $6d6a: $7f
	ld [hl], l                                       ; $6d6b: $75
	ld l, e                                          ; $6d6c: $6b
	ld a, a                                          ; $6d6d: $7f
	ld a, l                                          ; $6d6e: $7d
	ld a, a                                          ; $6d6f: $7f
	ld a, a                                          ; $6d70: $7f
	rst AddAOntoHL                                          ; $6d71: $ef
	rst $38                                          ; $6d72: $ff
	db $eb                                           ; $6d73: $eb
	rst FarCall                                          ; $6d74: $f7
	pop bc                                           ; $6d75: $c1
	rst $38                                          ; $6d76: $ff
	call c, $99ff                                    ; $6d77: $dc $ff $99
	push af                                          ; $6d7a: $f5
	ld hl, sp-$0c                                    ; $6d7b: $f8 $f4
	ldh a, [c]                                       ; $6d7d: $f2
	cp $fe                                           ; $6d7e: $fe $fe
	ld a, c                                          ; $6d80: $79
	push bc                                          ; $6d81: $c5
	sbc l                                            ; $6d82: $9d
	ldh a, [c]                                       ; $6d83: $f2
	ld a, [$f977]                                    ; $6d84: $fa $77 $f9
	ld a, [hl]                                       ; $6d87: $7e
	jp $3c8e                                         ; $6d88: $c3 $8e $3c


	rra                                              ; $6d8b: $1f
	inc bc                                           ; $6d8c: $03
	dec [hl]                                         ; $6d8d: $35
	dec sp                                           ; $6d8e: $3b
	dec [hl]                                         ; $6d8f: $35
	push de                                          ; $6d90: $d5
	ld [$3f1f], a                                    ; $6d91: $ea $1f $3f
	ccf                                              ; $6d94: $3f
	dec de                                           ; $6d95: $1b
	dec d                                            ; $6d96: $15
	dec de                                           ; $6d97: $1b
	ld e, l                                          ; $6d98: $5d
	cp h                                             ; $6d99: $bc
	ccf                                              ; $6d9a: $3f
	ld a, d                                          ; $6d9b: $7a
	sbc e                                            ; $6d9c: $9b
	sbc e                                            ; $6d9d: $9b
	ld c, $0f                                        ; $6d9e: $0e $0f
	ld a, $3e                                        ; $6da0: $3e $3e
	ld a, e                                          ; $6da2: $7b
	db $e3                                           ; $6da3: $e3

jr_042_6da4:
	ld a, d                                          ; $6da4: $7a
	ldh [$8d], a                                     ; $6da5: $e0 $8d
	ld d, a                                          ; $6da7: $57
	xor [hl]                                         ; $6da8: $ae
	ld e, b                                          ; $6da9: $58
	rst $38                                          ; $6daa: $ff
	rst $38                                          ; $6dab: $ff
	ld e, b                                          ; $6dac: $58
	db $fc                                           ; $6dad: $fc
	jr jr_042_6db0                                   ; $6dae: $18 $00

jr_042_6db0:
	ld bc, $ff07                                     ; $6db0: $01 $07 $ff
	rst $38                                          ; $6db3: $ff
	rst SubAFromBC                                          ; $6db4: $e7
	ld b, e                                          ; $6db5: $43
	ld h, a                                          ; $6db6: $67
	ccf                                              ; $6db7: $3f
	ld a, l                                          ; $6db8: $7d
	ld a, c                                          ; $6db9: $79
	ld c, e                                          ; $6dba: $4b
	sbc h                                            ; $6dbb: $9c
	ld a, l                                          ; $6dbc: $7d
	ld a, b                                          ; $6dbd: $78
	ld a, l                                          ; $6dbe: $7d
	halt                                             ; $6dbf: $76
	jp nz, $fe97                                     ; $6dc0: $c2 $97 $fe

	ld a, [$faff]                                    ; $6dc3: $fa $ff $fa
	ld a, [$faf4]                                    ; $6dc6: $fa $f4 $fa
	db $fc                                           ; $6dc9: $fc
	ld [hl], a                                       ; $6dca: $77
	cp $9b                                           ; $6dcb: $fe $9b
	dec b                                            ; $6dcd: $05
	dec bc                                           ; $6dce: $0b
	dec b                                            ; $6dcf: $05
	inc bc                                           ; $6dd0: $03
	ld [hl], a                                       ; $6dd1: $77
	cp $7d                                           ; $6dd2: $fe $7d
	ld sp, hl                                        ; $6dd4: $f9
	adc h                                            ; $6dd5: $8c
	rst $38                                          ; $6dd6: $ff
	cp [hl]                                          ; $6dd7: $be
	rst $38                                          ; $6dd8: $ff
	cp [hl]                                          ; $6dd9: $be
	cp a                                             ; $6dda: $bf
	cp [hl]                                          ; $6ddb: $be
	add b                                            ; $6ddc: $80
	ret nz                                           ; $6ddd: $c0

	add b                                            ; $6dde: $80
	pop bc                                           ; $6ddf: $c1
	add b                                            ; $6de0: $80
	pop bc                                           ; $6de1: $c1
	ret nz                                           ; $6de2: $c0

	pop bc                                           ; $6de3: $c1
	ld [hl], a                                       ; $6de4: $77
	cp e                                             ; $6de5: $bb
	ld b, a                                          ; $6de6: $47
	adc e                                            ; $6de7: $8b
	ld d, e                                          ; $6de8: $53
	ld a, e                                          ; $6de9: $7b
	xor b                                            ; $6dea: $a8
	adc a                                            ; $6deb: $8f
	cp e                                             ; $6dec: $bb
	ld [hl], a                                       ; $6ded: $77
	cp a                                             ; $6dee: $bf
	ld [hl], a                                       ; $6def: $77
	cp a                                             ; $6df0: $bf
	push af                                          ; $6df1: $f5
	ei                                               ; $6df2: $fb
	rst FarCall                                          ; $6df3: $f7
	db $ec                                           ; $6df4: $ec
	add sp, -$08                                     ; $6df5: $e8 $f8
	add sp, -$14                                     ; $6df7: $e8 $ec
	call c, $9cdc                                    ; $6df9: $dc $dc $9c
	reti                                             ; $6dfc: $d9


	rst $38                                          ; $6dfd: $ff
	sub e                                            ; $6dfe: $93
	cpl                                              ; $6dff: $2f
	ld l, a                                          ; $6e00: $6f
	ld l, a                                          ; $6e01: $6f
	rlca                                             ; $6e02: $07
	cpl                                              ; $6e03: $2f
	rlca                                             ; $6e04: $07
	cpl                                              ; $6e05: $2f
	ld b, a                                          ; $6e06: $47
	ldh a, [$f0]                                     ; $6e07: $f0 $f0
	ret nc                                           ; $6e09: $d0

	ld hl, sp+$77                                    ; $6e0a: $f8 $77
	cp $9c                                           ; $6e0c: $fe $9c
	rlca                                             ; $6e0e: $07
	adc d                                            ; $6e0f: $8a
	jp $fe73                                         ; $6e10: $c3 $73 $fe


	sbc h                                            ; $6e13: $9c
	cp $77                                           ; $6e14: $fe $77
	ld a, $73                                        ; $6e16: $3e $73
	cp $9b                                           ; $6e18: $fe $9b
	ld [hl], h                                       ; $6e1a: $74
	ld hl, sp-$10                                    ; $6e1b: $f8 $f0
	ld sp, hl                                        ; $6e1d: $f9
	ld [hl], a                                       ; $6e1e: $77
	cp $9b                                           ; $6e1f: $fe $9b
	adc e                                            ; $6e21: $8b
	rlca                                             ; $6e22: $07
	rrca                                             ; $6e23: $0f
	ld b, $77                                        ; $6e24: $06 $77
	cp $8b                                           ; $6e26: $fe $8b
	cp a                                             ; $6e28: $bf
	ld l, a                                          ; $6e29: $6f
	cp a                                             ; $6e2a: $bf
	ld e, a                                          ; $6e2b: $5f
	ld l, $7e                                        ; $6e2c: $2e $7e
	inc l                                            ; $6e2e: $2c
	ld d, h                                          ; $6e2f: $54
	ld e, a                                          ; $6e30: $5f
	sbc a                                            ; $6e31: $9f
	rst SubAFromDE                                          ; $6e32: $df
	cp a                                             ; $6e33: $bf
	rst SubAFromDE                                          ; $6e34: $df
	adc a                                            ; $6e35: $8f
	rst SubAFromDE                                          ; $6e36: $df
	xor a                                            ; $6e37: $af
	ld hl, sp-$7f                                    ; $6e38: $f8 $81
	push bc                                          ; $6e3a: $c5
	and c                                            ; $6e3b: $a1
	db $dd                                           ; $6e3c: $dd
	add c                                            ; $6e3d: $81
	ld a, a                                          ; $6e3e: $7f
	adc c                                            ; $6e3f: $89
	sbc l                                            ; $6e40: $9d
	cp e                                             ; $6e41: $bb
	rst SubAFromDE                                          ; $6e42: $df
	db $dd                                           ; $6e43: $dd
	rst $38                                          ; $6e44: $ff
	adc l                                            ; $6e45: $8d
	cp [hl]                                          ; $6e46: $be
	dec e                                            ; $6e47: $1d
	ld a, $1f                                        ; $6e48: $3e $1f
	ld a, $1f                                        ; $6e4a: $3e $1f
	ld e, $9f                                        ; $6e4c: $1e $9f
	pop bc                                           ; $6e4e: $c1
	ldh [c], a                                       ; $6e4f: $e2
	pop bc                                           ; $6e50: $c1
	ldh [$c1], a                                     ; $6e51: $e0 $c1
	ldh [$e1], a                                     ; $6e53: $e0 $e1
	ld h, b                                          ; $6e55: $60
	ld a, b                                          ; $6e56: $78
	add hl, sp                                       ; $6e57: $39
	db $dd                                           ; $6e58: $dd
	dec de                                           ; $6e59: $1b
	ld a, d                                          ; $6e5a: $7a
	ld d, d                                          ; $6e5b: $52
	ld a, e                                          ; $6e5c: $7b
	inc [hl]                                         ; $6e5d: $34
	db $dd                                           ; $6e5e: $dd
	db $fc                                           ; $6e5f: $fc
	sbc l                                            ; $6e60: $9d
	ld a, [$6ff6]                                    ; $6e61: $fa $f6 $6f
	cp $9d                                           ; $6e64: $fe $9d
	rlca                                             ; $6e66: $07
	dec bc                                           ; $6e67: $0b
	ld l, a                                          ; $6e68: $6f
	cp $95                                           ; $6e69: $fe $95
	cp l                                             ; $6e6b: $bd
	ld a, l                                          ; $6e6c: $7d
	rst $38                                          ; $6e6d: $ff
	cp l                                             ; $6e6e: $bd
	or l                                             ; $6e6f: $b5
	and l                                            ; $6e70: $a5
	sub l                                            ; $6e71: $95
	push de                                          ; $6e72: $d5
	ld a, a                                          ; $6e73: $7f
	rst $38                                          ; $6e74: $ff
	ld a, d                                          ; $6e75: $7a
	cp e                                             ; $6e76: $bb
	rst SubAFromDE                                          ; $6e77: $df
	ld a, a                                          ; $6e78: $7f
	ld a, e                                          ; $6e79: $7b
	inc bc                                           ; $6e7a: $03
	inc bc                                           ; $6e7b: $03
	rst $38                                          ; $6e7c: $ff
	call nc, $9bff                                   ; $6e7d: $d4 $ff $9b
	dec sp                                           ; $6e80: $3b
	dec d                                            ; $6e81: $15
	ei                                               ; $6e82: $fb
	push af                                          ; $6e83: $f5
	ld [hl], a                                       ; $6e84: $77
	cp $9d                                           ; $6e85: $fe $9d
	dec d                                            ; $6e87: $15
	cp e                                             ; $6e88: $bb
	ld [hl], e                                       ; $6e89: $73
	ld sp, hl                                        ; $6e8a: $f9
	sbc d                                            ; $6e8b: $9a
	ei                                               ; $6e8c: $fb
	ld c, $0f                                        ; $6e8d: $0e $0f
	inc c                                            ; $6e8f: $0c
	dec c                                            ; $6e90: $0d
	ld a, e                                          ; $6e91: $7b
	cp $9d                                           ; $6e92: $fe $9d
	dec b                                            ; $6e94: $05
	db $fc                                           ; $6e95: $fc
	ld a, d                                          ; $6e96: $7a
	pop hl                                           ; $6e97: $e1
	db $dd                                           ; $6e98: $dd
	cp $9b                                           ; $6e99: $fe $9b
	ld hl, sp+$70                                    ; $6e9b: $f8 $70
	ldh [$60], a                                     ; $6e9d: $e0 $60
	ld [hl], a                                       ; $6e9f: $77
	cp $9d                                           ; $6ea0: $fe $9d
	daa                                              ; $6ea2: $27
	cpl                                              ; $6ea3: $2f
	db $db                                           ; $6ea4: $db
	ccf                                              ; $6ea5: $3f
	sbc d                                            ; $6ea6: $9a
	ld a, b                                          ; $6ea7: $78
	ld a, h                                          ; $6ea8: $7c
	ld a, d                                          ; $6ea9: $7a
	ld a, l                                          ; $6eaa: $7d
	ld a, e                                          ; $6eab: $7b
	sbc $7f                                          ; $6eac: $de $7f
	ld a, [hl]                                       ; $6eae: $7e
	add b                                            ; $6eaf: $80
	sbc l                                            ; $6eb0: $9d
	db $fd                                           ; $6eb1: $fd
	ei                                               ; $6eb2: $fb
	ld [hl], h                                       ; $6eb3: $74
	adc h                                            ; $6eb4: $8c
	ld a, d                                          ; $6eb5: $7a
	jr nc, @+$81                                     ; $6eb6: $30 $7f

	cp $79                                           ; $6eb8: $fe $79
	adc l                                            ; $6eba: $8d
	ld a, d                                          ; $6ebb: $7a
	jr nc, jr_042_6f3d                               ; $6ebc: $30 $7f

	cp $79                                           ; $6ebe: $fe $79
	adc l                                            ; $6ec0: $8d
	sub [hl]                                         ; $6ec1: $96
	cp a                                             ; $6ec2: $bf
	cp $ff                                           ; $6ec3: $fe $ff
	ld a, [hl]                                       ; $6ec5: $7e
	ld a, a                                          ; $6ec6: $7f
	ld a, [hl]                                       ; $6ec7: $7e
	ld a, l                                          ; $6ec8: $7d
	ld a, [hl]                                       ; $6ec9: $7e
	ret nz                                           ; $6eca: $c0

	ld a, d                                          ; $6ecb: $7a
	call nz, $fe7f                                   ; $6ecc: $c4 $7f $fe
	sub e                                            ; $6ecf: $93
	jp nz, $14c1                                     ; $6ed0: $c2 $c1 $14

	ld e, $14                                        ; $6ed3: $1e $14
	jr @+$11                                         ; $6ed5: $18 $0f

	ld c, $0c                                        ; $6ed7: $0e $0c
	inc c                                            ; $6ed9: $0c
	ei                                               ; $6eda: $fb
	pop af                                           ; $6edb: $f1
	ld a, c                                          ; $6edc: $79
	pop de                                           ; $6edd: $d1
	sbc $ff                                          ; $6ede: $de $ff
	rst SubAFromDE                                          ; $6ee0: $df
	ret c                                            ; $6ee1: $d8

	rst SubAFromDE                                          ; $6ee2: $df
	sbc b                                            ; $6ee3: $98
	db $dd                                           ; $6ee4: $dd
	jr jr_042_6f49                                   ; $6ee5: $18 $62

	ret nz                                           ; $6ee7: $c0

	sub l                                            ; $6ee8: $95
	ld d, a                                          ; $6ee9: $57
	inc sp                                           ; $6eea: $33
	rla                                              ; $6eeb: $17
	dec de                                           ; $6eec: $1b
	rrca                                             ; $6eed: $0f
	dec bc                                           ; $6eee: $0b
	dec b                                            ; $6eef: $05
	ret nc                                           ; $6ef0: $d0

	ld hl, sp-$04                                    ; $6ef1: $f8 $fc
	ld [hl], a                                       ; $6ef3: $77
	cp $8e                                           ; $6ef4: $fe $8e
	cp $c3                                           ; $6ef6: $fe $c3

jr_042_6ef8:
	adc d                                            ; $6ef8: $8a
	jp nz, $c68a                                     ; $6ef9: $c2 $8a $c6

	db $eb                                           ; $6efc: $eb
	rst JumpTable                                          ; $6efd: $c7
	db $eb                                           ; $6efe: $eb
	ld a, $77                                        ; $6eff: $3e $77
	ccf                                              ; $6f01: $3f
	ld [hl], a                                       ; $6f02: $77
	dec sp                                           ; $6f03: $3b
	rla                                              ; $6f04: $17
	dec sp                                           ; $6f05: $3b
	rla                                              ; $6f06: $17
	ld l, [hl]                                       ; $6f07: $6e
	jp nz, $fe7f                                     ; $6f08: $c2 $7f $fe

	ld l, [hl]                                       ; $6f0b: $6e
	jp nz, $fe7f                                     ; $6f0c: $c2 $7f $fe

	adc l                                            ; $6f0f: $8d
	inc h                                            ; $6f10: $24
	ld d, h                                          ; $6f11: $54
	inc h                                            ; $6f12: $24
	inc e                                            ; $6f13: $1c
	cp b                                             ; $6f14: $b8
	inc [hl]                                         ; $6f15: $34
	cp d                                             ; $6f16: $ba
	jr nc, jr_042_6ef8                               ; $6f17: $30 $df

	xor a                                            ; $6f19: $af
	rst SubAFromDE                                          ; $6f1a: $df
	rst AddAOntoHL                                          ; $6f1b: $ef
	ld a, a                                          ; $6f1c: $7f
	ei                                               ; $6f1d: $fb
	ld [hl], l                                       ; $6f1e: $75
	rst $38                                          ; $6f1f: $ff
	add c                                            ; $6f20: $81
	add c                                            ; $6f21: $81
	db $db                                           ; $6f22: $db
	ret nz                                           ; $6f23: $c0

	reti                                             ; $6f24: $d9


	rst $38                                          ; $6f25: $ff
	sub e                                            ; $6f26: $93
	ld c, a                                          ; $6f27: $4f
	sbc a                                            ; $6f28: $9f
	rst GetHLinHL                                          ; $6f29: $cf
	sbc a                                            ; $6f2a: $9f
	ld l, a                                          ; $6f2b: $6f
	cpl                                              ; $6f2c: $2f
	rrca                                             ; $6f2d: $0f
	rla                                              ; $6f2e: $17
	or b                                             ; $6f2f: $b0
	ld h, b                                          ; $6f30: $60
	or b                                             ; $6f31: $b0
	ldh [$de], a                                     ; $6f32: $e0 $de
	ldh a, [hDisp1_OBP0]                                     ; $6f34: $f0 $93
	ld hl, sp-$01                                    ; $6f36: $f8 $ff
	ld a, a                                          ; $6f38: $7f
	db $fd                                           ; $6f39: $fd
	ccf                                              ; $6f3a: $3f
	adc l                                            ; $6f3b: $8d
	rrca                                             ; $6f3c: $0f

jr_042_6f3d:
	adc l                                            ; $6f3d: $8d
	rrca                                             ; $6f3e: $0f
	ld a, h                                          ; $6f3f: $7c
	db $fc                                           ; $6f40: $fc
	ld a, [hl]                                       ; $6f41: $7e
	ld [hl], e                                       ; $6f42: $73
	cp $7e                                           ; $6f43: $fe $7e
	add $9c                                          ; $6f45: $c6 $9c
	ld hl, sp-$0b                                    ; $6f47: $f8 $f5

jr_042_6f49:
	ld sp, hl                                        ; $6f49: $f9
	ld a, c                                          ; $6f4a: $79
	inc d                                            ; $6f4b: $14
	ld [hl], d                                       ; $6f4c: $72
	jp nz, $0479                                     ; $6f4d: $c2 $79 $04

	sub [hl]                                         ; $6f50: $96
	and l                                            ; $6f51: $a5
	dec h                                            ; $6f52: $25

jr_042_6f53:
	add l                                            ; $6f53: $85
	ld h, l                                          ; $6f54: $65
	push bc                                          ; $6f55: $c5
	ld b, l                                          ; $6f56: $45
	push bc                                          ; $6f57: $c5
	rst JumpTable                                          ; $6f58: $c7
	ld a, a                                          ; $6f59: $7f
	ld a, c                                          ; $6f5a: $79
	inc [hl]                                         ; $6f5b: $34
	reti                                             ; $6f5c: $d9


	rst $38                                          ; $6f5d: $ff
	sbc [hl]                                         ; $6f5e: $9e
	ldh a, [$4c]                                     ; $6f5f: $f0 $4c
	dec sp                                           ; $6f61: $3b
	sbc [hl]                                         ; $6f62: $9e
	ldh [$fd], a                                     ; $6f63: $e0 $fd
	ret c                                            ; $6f65: $d8

	rst $38                                          ; $6f66: $ff
	sbc [hl]                                         ; $6f67: $9e
	ld hl, sp-$05                                    ; $6f68: $f8 $fb
	reti                                             ; $6f6a: $d9


	rst $38                                          ; $6f6b: $ff
	sbc e                                            ; $6f6c: $9b
	db $f4                                           ; $6f6d: $f4
	ld a, [bc]                                       ; $6f6e: $0a
	dec c                                            ; $6f6f: $0d
	dec bc                                           ; $6f70: $0b
	ld [hl], a                                       ; $6f71: $77
	cp $7c                                           ; $6f72: $fe $7c
	ld [hl-], a                                      ; $6f74: $32
	call c, $9bf8                                    ; $6f75: $dc $f8 $9b
	db $fc                                           ; $6f78: $fc
	inc b                                            ; $6f79: $04
	add l                                            ; $6f7a: $85
	add h                                            ; $6f7b: $84
	ld [hl], e                                       ; $6f7c: $73
	cp $d9                                           ; $6f7d: $fe $d9
	cp $6e                                           ; $6f7f: $fe $6e
	jp nz, $fe7f                                     ; $6f81: $c2 $7f $fe

	reti                                             ; $6f84: $d9


	ccf                                              ; $6f85: $3f
	pop de                                           ; $6f86: $d1
	rst $38                                          ; $6f87: $ff
	ld a, h                                          ; $6f88: $7c
	and e                                            ; $6f89: $a3
	add c                                            ; $6f8a: $81
	cp [hl]                                          ; $6f8b: $be
	db $fd                                           ; $6f8c: $fd
	cp b                                             ; $6f8d: $b8
	ldh a, [$a0]                                     ; $6f8e: $f0 $a0
	ldh a, [rTIMA]                                   ; $6f90: $f0 $05
	adc d                                            ; $6f92: $8a
	pop bc                                           ; $6f93: $c1
	add d                                            ; $6f94: $82
	rst JumpTable                                          ; $6f95: $c7
	adc a                                            ; $6f96: $8f
	rst SubAFromDE                                          ; $6f97: $df
	adc a                                            ; $6f98: $8f
	ld a, h                                          ; $6f99: $7c
	ld a, [hl]                                       ; $6f9a: $7e
	rst SubAFromDE                                          ; $6f9b: $df
	ld e, [hl]                                       ; $6f9c: $5e
	ld e, l                                          ; $6f9d: $5d
	ld e, [hl]                                       ; $6f9e: $5e
	ld e, h                                          ; $6f9f: $5c
	ld l, d                                          ; $6fa0: $6a
	jp Jump_042_60c1                                 ; $6fa1: $c3 $c1 $60


Jump_042_6fa4:
	pop hl                                           ; $6fa4: $e1
	ldh [c], a                                       ; $6fa5: $e2
	pop hl                                           ; $6fa6: $e1
	db $e3                                           ; $6fa7: $e3
	push af                                          ; $6fa8: $f5
	sbc $04                                          ; $6fa9: $de $04
	sbc [hl]                                         ; $6fab: $9e
	add h                                            ; $6fac: $84
	db $dd                                           ; $6fad: $dd
	inc b                                            ; $6fae: $04
	sbc $ff                                          ; $6faf: $de $ff
	ld [hl], e                                       ; $6fb1: $73
	ld e, a                                          ; $6fb2: $5f
	db $db                                           ; $6fb3: $db
	jr jr_042_6f53                                   ; $6fb4: $18 $9d

	ld [$d90c], sp                                   ; $6fb6: $08 $0c $d9
	rst $38                                          ; $6fb9: $ff
	rst SubAFromDE                                          ; $6fba: $df
	dec b                                            ; $6fbb: $05
	rst SubAFromDE                                          ; $6fbc: $df
	rlca                                             ; $6fbd: $07
	sbc e                                            ; $6fbe: $9b
	ld b, $03                                        ; $6fbf: $06 $03
	ld [bc], a                                       ; $6fc1: $02
	ld [bc], a                                       ; $6fc2: $02
	db $dd                                           ; $6fc3: $dd
	cp $78                                           ; $6fc4: $fe $78
	add d                                            ; $6fc6: $82
	sbc h                                            ; $6fc7: $9c
	rst $38                                          ; $6fc8: $ff
	push bc                                          ; $6fc9: $c5
	pop hl                                           ; $6fca: $e1
	ld a, e                                          ; $6fcb: $7b
	cp $9a                                           ; $6fcc: $fe $9a
	db $e3                                           ; $6fce: $e3
	call nz, $3bf2                                   ; $6fcf: $c4 $f2 $3b
	rra                                              ; $6fd2: $1f
	ld a, e                                          ; $6fd3: $7b
	cp $82                                           ; $6fd4: $fe $82
	dec e                                            ; $6fd6: $1d
	dec sp                                           ; $6fd7: $3b
	dec e                                            ; $6fd8: $1d
	db $f4                                           ; $6fd9: $f4
	ld sp, hl                                        ; $6fda: $f9
	ld a, h                                          ; $6fdb: $7c
	ld hl, sp-$04                                    ; $6fdc: $f8 $fc
	cp b                                             ; $6fde: $b8
	db $fc                                           ; $6fdf: $fc
	cp b                                             ; $6fe0: $b8
	dec bc                                           ; $6fe1: $0b
	ld b, $83                                        ; $6fe2: $06 $83
	rlca                                             ; $6fe4: $07
	add e                                            ; $6fe5: $83
	rst JumpTable                                          ; $6fe6: $c7
	add e                                            ; $6fe7: $83
	rst JumpTable                                          ; $6fe8: $c7
	cp b                                             ; $6fe9: $b8
	inc [hl]                                         ; $6fea: $34
	cp b                                             ; $6feb: $b8
	inc [hl]                                         ; $6fec: $34
	xor b                                            ; $6fed: $a8
	ld [hl], b                                       ; $6fee: $70
	or b                                             ; $6fef: $b0
	ld [hl], h                                       ; $6ff0: $74
	ld [hl], a                                       ; $6ff1: $77
	ei                                               ; $6ff2: $fb
	ld a, e                                          ; $6ff3: $7b
	cp $7c                                           ; $6ff4: $fe $7c
	add hl, sp                                       ; $6ff6: $39
	adc l                                            ; $6ff7: $8d
	cp e                                             ; $6ff8: $bb
	ret nz                                           ; $6ff9: $c0

	ret nz                                           ; $6ffa: $c0

	ret z                                            ; $6ffb: $c8

	ret nc                                           ; $6ffc: $d0

	ret z                                            ; $6ffd: $c8

	ld [hl], c                                       ; $6ffe: $71
	ld c, b                                          ; $6fff: $48
	db $10                                           ; $7000: $10
	rst $38                                          ; $7001: $ff
	rst $38                                          ; $7002: $ff
	rst FarCall                                          ; $7003: $f7
	rst AddAOntoHL                                          ; $7004: $ef
	rst FarCall                                          ; $7005: $f7
	xor $f7                                          ; $7006: $ee $f7
	rst AddAOntoHL                                          ; $7008: $ef
	rra                                              ; $7009: $1f
	ld a, d                                          ; $700a: $7a
	db $eb                                           ; $700b: $eb
	sbc e                                            ; $700c: $9b
	rlca                                             ; $700d: $07
	inc bc                                           ; $700e: $03
	rlca                                             ; $700f: $07
	inc de                                           ; $7010: $13
	ld a, d                                          ; $7011: $7a
	db $dd                                           ; $7012: $dd
	ld a, e                                          ; $7013: $7b
	ld [hl-], a                                      ; $7014: $32
	adc e                                            ; $7015: $8b
	ld hl, sp-$14                                    ; $7016: $f8 $ec
	adc l                                            ; $7018: $8d
	adc $87                                          ; $7019: $ce $87
	ld b, [hl]                                       ; $701b: $46
	add a                                            ; $701c: $87
	ld b, a                                          ; $701d: $47
	add l                                            ; $701e: $85
	inc l                                            ; $701f: $2c
	ld a, [hl]                                       ; $7020: $7e
	ccf                                              ; $7021: $3f
	ld a, [hl]                                       ; $7022: $7e
	cp a                                             ; $7023: $bf
	ld a, [hl]                                       ; $7024: $7e
	cp [hl]                                          ; $7025: $be
	ld a, [hl]                                       ; $7026: $7e
	rst $38                                          ; $7027: $ff
	ld sp, hl                                        ; $7028: $f9
	pop af                                           ; $7029: $f1
	ld a, e                                          ; $702a: $7b
	cp $9e                                           ; $702b: $fe $9e
	db $f4                                           ; $702d: $f4
	ld a, d                                          ; $702e: $7a
	ret nz                                           ; $702f: $c0

	ld a, d                                          ; $7030: $7a
	call nz, $be76                                   ; $7031: $c4 $76 $be
	sub e                                            ; $7034: $93
	jp $93a3                                         ; $7035: $c3 $a3 $93


	and c                                            ; $7038: $a1
	add c                                            ; $7039: $81
	pop hl                                           ; $703a: $e1
	pop de                                           ; $703b: $d1
	ld b, c                                          ; $703c: $41
	rst $38                                          ; $703d: $ff
	rst SubAFromDE                                          ; $703e: $df
	rst AddAOntoHL                                          ; $703f: $ef
	rst SubAFromDE                                          ; $7040: $df
	ld a, e                                          ; $7041: $7b
	db $fc                                           ; $7042: $fc
	sbc [hl]                                         ; $7043: $9e
	rst $38                                          ; $7044: $ff
	jr c, jr_042_7047                                ; $7045: $38 $00

jr_042_7047:
	db $dd                                           ; $7047: $dd
	ld d, l                                          ; $7048: $55
	db $db                                           ; $7049: $db
	ld b, h                                          ; $704a: $44
	ld d, a                                          ; $704b: $57
	or $9d                                           ; $704c: $f6 $9d
	inc sp                                           ; $704e: $33
	ld b, l                                          ; $704f: $45
	call c, $9e33                                    ; $7050: $dc $33 $9e
	ld h, e                                          ; $7053: $63
	sbc $55                                          ; $7054: $de $55
	sbc b                                            ; $7056: $98
	ld b, l                                          ; $7057: $45
	ld h, e                                          ; $7058: $63
	inc sp                                           ; $7059: $33
	ld h, [hl]                                       ; $705a: $66
	inc sp                                           ; $705b: $33
	ld [hl], $63                                     ; $705c: $36 $63
	ld [hl], a                                       ; $705e: $77
	pop hl                                           ; $705f: $e1
	jp c, $9c33                                      ; $7060: $da $33 $9c

	ld [hl], l                                       ; $7063: $75
	ld d, l                                          ; $7064: $55
	ld [hl], a                                       ; $7065: $77
	ld h, e                                          ; $7066: $63
	or $7f                                           ; $7067: $f6 $7f
	rst SubAFromBC                                          ; $7069: $e7
	ld a, a                                          ; $706a: $7f
	db $db                                           ; $706b: $db
	ld a, a                                          ; $706c: $7f
	ldh [c], a                                       ; $706d: $e2
	ld [hl], a                                       ; $706e: $77
	or $d9                                           ; $706f: $f6 $d9
	inc sp                                           ; $7071: $33
	sbc [hl]                                         ; $7072: $9e
	ld h, h                                          ; $7073: $64
	ld h, a                                          ; $7074: $67
	or $9d                                           ; $7075: $f6 $9d
	ld d, l                                          ; $7077: $55

Call_042_7078:
	ld d, h                                          ; $7078: $54
	ld h, e                                          ; $7079: $63
	or $63                                           ; $707a: $f6 $63
	push bc                                          ; $707c: $c5
	ld l, c                                          ; $707d: $69
	adc d                                            ; $707e: $8a
	reti                                             ; $707f: $d9


	rst $38                                          ; $7080: $ff
	ld sp, hl                                        ; $7081: $f9
	inc bc                                           ; $7082: $03
	ldh a, [$df]                                     ; $7083: $f0 $df
	rst $38                                          ; $7085: $ff
	sbc d                                            ; $7086: $9a
	add b                                            ; $7087: $80
	rst $38                                          ; $7088: $ff
	ldh [rIE], a                                     ; $7089: $e0 $ff
	db $fc                                           ; $708b: $fc
	cp $9a                                           ; $708c: $fe $9a
	ld b, b                                          ; $708e: $40
	nop                                              ; $708f: $00
	rra                                              ; $7090: $1f
	rra                                              ; $7091: $1f
	rrca                                             ; $7092: $0f
	ld [hl], a                                       ; $7093: $77
	push hl                                          ; $7094: $e5
	sbc [hl]                                         ; $7095: $9e
	ld l, c                                          ; $7096: $69
	ld a, e                                          ; $7097: $7b
	ld [$e36b], a                                    ; $7098: $ea $6b $e3
	ld [hl], a                                       ; $709b: $77
	ldh [$9d], a                                     ; $709c: $e0 $9d
	nop                                              ; $709e: $00
	ld h, h                                          ; $709f: $64
	ld c, e                                          ; $70a0: $4b
	ldh a, [$9e]                                     ; $70a1: $f0 $9e
	rst GetHLinHL                                          ; $70a3: $cf
	ld c, e                                          ; $70a4: $4b
	ldh a, [$9e]                                     ; $70a5: $f0 $9e
	rst FarCall                                          ; $70a7: $f7

jr_042_70a8:
	ld c, e                                          ; $70a8: $4b
	ldh a, [$9b]                                     ; $70a9: $f0 $9b
	jp hl                                            ; $70ab: $e9


	nop                                              ; $70ac: $00
	db $fc                                           ; $70ad: $fc
	ld hl, sp-$02                                    ; $70ae: $f8 $fe
	rst SubAFromDE                                          ; $70b0: $df
	inc b                                            ; $70b1: $04
	rst SubAFromDE                                          ; $70b2: $df
	db $fd                                           ; $70b3: $fd
	sbc [hl]                                         ; $70b4: $9e
	dec b                                            ; $70b5: $05
	ld [hl], a                                       ; $70b6: $77
	ldh a, [$9b]                                     ; $70b7: $f0 $9b
	ld b, b                                          ; $70b9: $40
	rst $38                                          ; $70ba: $ff
	rst $38                                          ; $70bb: $ff
	reti                                             ; $70bc: $d9


	ld e, e                                          ; $70bd: $5b
	add h                                            ; $70be: $84
	sbc d                                            ; $70bf: $9a
	nop                                              ; $70c0: $00
	sbc b                                            ; $70c1: $98
	nop                                              ; $70c2: $00
	ccf                                              ; $70c3: $3f
	xor a                                            ; $70c4: $af
	cp $df                                           ; $70c5: $fe $df
	jr nz, jr_042_70a8                               ; $70c7: $20 $df

	cp a                                             ; $70c9: $bf
	sbc [hl]                                         ; $70ca: $9e
	jr nc, @+$79                                     ; $70cb: $30 $77

	ldh a, [$9e]                                     ; $70cd: $f0 $9e
	ld h, b                                          ; $70cf: $60
	ld c, e                                          ; $70d0: $4b
	ret nz                                           ; $70d1: $c0

	sbc [hl]                                         ; $70d2: $9e
	ld [hl], c                                       ; $70d3: $71
	ld c, e                                          ; $70d4: $4b
	ldh a, [$9b]                                     ; $70d5: $f0 $9b
	jr jr_042_70d9                                   ; $70d7: $18 $00

jr_042_70d9:
	rst $38                                          ; $70d9: $ff
	rst FarCall                                          ; $70da: $f7
	ld l, e                                          ; $70db: $6b
	ldh a, [$9e]                                     ; $70dc: $f0 $9e
	ld [$f077], sp                                   ; $70de: $08 $77 $f0
	sbc [hl]                                         ; $70e1: $9e
	adc h                                            ; $70e2: $8c
	ld c, e                                          ; $70e3: $4b
	ldh [$9d], a                                     ; $70e4: $e0 $9d
	ld a, l                                          ; $70e6: $7d
	inc bc                                           ; $70e7: $03
	ld [hl], e                                       ; $70e8: $73
	ldh a, [$9a]                                     ; $70e9: $f0 $9a
	ld bc, $fc02                                     ; $70eb: $01 $02 $fc
	db $fc                                           ; $70ee: $fc
	jr @+$05                                         ; $70ef: $18 $03

	db $10                                           ; $70f1: $10
	inc bc                                           ; $70f2: $03
	ldh a, [$3f]                                     ; $70f3: $f0 $3f
	ldh a, [$9b]                                     ; $70f5: $f0 $9b
	db $fd                                           ; $70f7: $fd
	cp $ff                                           ; $70f8: $fe $ff
	cp $fd                                           ; $70fa: $fe $fd
	sbc l                                            ; $70fc: $9d
	inc bc                                           ; $70fd: $03
	ld bc, $e06b                                     ; $70fe: $01 $6b $e0
	sbc l                                            ; $7101: $9d
	xor a                                            ; $7102: $af
	ld e, a                                          ; $7103: $5f
	ld l, a                                          ; $7104: $6f
	ldh [$9d], a                                     ; $7105: $e0 $9d
	ldh a, [$e0]                                     ; $7107: $f0 $e0
	ld h, e                                          ; $7109: $63
	ret nc                                           ; $710a: $d0

	sbc [hl]                                         ; $710b: $9e
	inc bc                                           ; $710c: $03
	ld d, e                                          ; $710d: $53
	ret nz                                           ; $710e: $c0

	sbc l                                            ; $710f: $9d
	ret nz                                           ; $7110: $c0

	push bc                                          ; $7111: $c5
	ld l, e                                          ; $7112: $6b
	cp a                                             ; $7113: $bf
	sbc l                                            ; $7114: $9d
	jr nz, @+$01                                     ; $7115: $20 $ff

	call c, $9df8                                    ; $7117: $dc $f8 $9d
	nop                                              ; $711a: $00
	ld d, b                                          ; $711b: $50
	ld h, a                                          ; $711c: $67
	xor a                                            ; $711d: $af
	sbc [hl]                                         ; $711e: $9e
	rst $38                                          ; $711f: $ff
	call c, $9c5f                                    ; $7120: $dc $5f $9c
	ld b, b                                          ; $7123: $40
	ld c, d                                          ; $7124: $4a
	rst $38                                          ; $7125: $ff
	jp c, Jump_042_6be0                              ; $7126: $da $e0 $6b

	sub d                                            ; $7129: $92
	ld a, [hl]                                       ; $712a: $7e
	ld hl, sp-$06                                    ; $712b: $f8 $fa
	rst SubAFromDE                                          ; $712d: $df
	db $fc                                           ; $712e: $fc
	sbc $fd                                          ; $712f: $de $fd
	sbc e                                            ; $7131: $9b
	db $fc                                           ; $7132: $fc
	ld bc, $fce0                                     ; $7133: $01 $e0 $fc
	ld a, e                                          ; $7136: $7b
	sub h                                            ; $7137: $94
	ld a, a                                          ; $7138: $7f
	ld l, $95                                        ; $7139: $2e $95
	inc b                                            ; $713b: $04
	dec b                                            ; $713c: $05
	db $db                                           ; $713d: $db
	rst $38                                          ; $713e: $ff
	rst JumpTable                                          ; $713f: $c7
	db $dd                                           ; $7140: $dd
	db $fc                                           ; $7141: $fc
	rst $38                                          ; $7142: $ff
	ldh [$ab], a                                     ; $7143: $e0 $ab
	db $db                                           ; $7145: $db
	rst $38                                          ; $7146: $ff
	sbc l                                            ; $7147: $9d
	sbc a                                            ; $7148: $9f
	rst $38                                          ; $7149: $ff
	db $dd                                           ; $714a: $dd
	ccf                                              ; $714b: $3f
	sbc d                                            ; $714c: $9a
	cp a                                             ; $714d: $bf
	ccf                                              ; $714e: $3f
	nop                                              ; $714f: $00
	nop                                              ; $7150: $00
	cp a                                             ; $7151: $bf
	sbc $80                                          ; $7152: $de $80
	sbc e                                            ; $7154: $9b
	nop                                              ; $7155: $00
	add b                                            ; $7156: $80
	and b                                            ; $7157: $a0
	and b                                            ; $7158: $a0
	ld l, e                                          ; $7159: $6b
	ret nz                                           ; $715a: $c0

	sbc [hl]                                         ; $715b: $9e
	inc sp                                           ; $715c: $33
	ld h, e                                          ; $715d: $63
	and b                                            ; $715e: $a0
	ld l, a                                          ; $715f: $6f
	ldh a, [$9e]                                     ; $7160: $f0 $9e
	call nc, $f063                                   ; $7162: $d4 $63 $f0
	sbc l                                            ; $7165: $9d
	ld l, e                                          ; $7166: $6b
	dec bc                                           ; $7167: $0b
	ld a, d                                          ; $7168: $7a
	ld a, [hl+]                                      ; $7169: $2a
	sbc d                                            ; $716a: $9a
	inc c                                            ; $716b: $0c
	rlca                                             ; $716c: $07
	rst $38                                          ; $716d: $ff
	inc e                                            ; $716e: $1c
	inc e                                            ; $716f: $1c
	sbc $0c                                          ; $7170: $de $0c
	rst SubAFromDE                                          ; $7172: $df
	ld c, $6b                                        ; $7173: $0e $6b
	ldh [$7f], a                                     ; $7175: $e0 $7f
	ld l, $fb                                        ; $7177: $2e $fb
	sbc [hl]                                         ; $7179: $9e
	ld bc, $ffd9                                     ; $717a: $01 $d9 $ff
	ld a, a                                          ; $717d: $7f
	ld [hl], $02                                     ; $717e: $36 $02
	ldh a, [$03]                                     ; $7180: $f0 $03
	ldh a, [$fd]                                     ; $7182: $f0 $fd
	sbc b                                            ; $7184: $98
	ld l, l                                          ; $7185: $6d
	sub d                                            ; $7186: $92
	inc h                                            ; $7187: $24
	nop                                              ; $7188: $00
	nop                                              ; $7189: $00
	ld h, b                                          ; $718a: $60
	ldh a, [$fc]                                     ; $718b: $f0 $fc
	sub e                                            ; $718d: $93
	ld [hl], b                                       ; $718e: $70
	ret nc                                           ; $718f: $d0

	add sp, -$04                                     ; $7190: $e8 $fc
	or [hl]                                          ; $7192: $b6
	ld c, c                                          ; $7193: $49
	and d                                            ; $7194: $a2
	ld [bc], a                                       ; $7195: $02
	inc b                                            ; $7196: $04
	ld [$2010], sp                                   ; $7197: $08 $10 $20
	ld sp, hl                                        ; $719a: $f9
	sbc h                                            ; $719b: $9c
	db $db                                           ; $719c: $db
	inc h                                            ; $719d: $24
	sub d                                            ; $719e: $92
	db $f4                                           ; $719f: $f4
	ld a, a                                          ; $71a0: $7f
	ret nc                                           ; $71a1: $d0

	sbc [hl]                                         ; $71a2: $9e
	ld b, l                                          ; $71a3: $45
	cp $9d                                           ; $71a4: $fe $9d
	inc de                                           ; $71a6: $13
	dec hl                                           ; $71a7: $2b
	ld l, d                                          ; $71a8: $6a
	pop de                                           ; $71a9: $d1
	sbc h                                            ; $71aa: $9c
	rla                                              ; $71ab: $17
	adc d                                            ; $71ac: $8a
	ld b, b                                          ; $71ad: $40
	ld a, e                                          ; $71ae: $7b
	inc hl                                           ; $71af: $23
	ld a, a                                          ; $71b0: $7f
	daa                                              ; $71b1: $27
	sbc e                                            ; $71b2: $9b
	ld a, h                                          ; $71b3: $7c
	inc [hl]                                         ; $71b4: $34
	rra                                              ; $71b5: $1f
	rra                                              ; $71b6: $1f
	db $fd                                           ; $71b7: $fd
	sbc h                                            ; $71b8: $9c
	add b                                            ; $71b9: $80
	ld [$7500], sp                                   ; $71ba: $08 $00 $75
	or l                                             ; $71bd: $b5
	rst $38                                          ; $71be: $ff
	sbc [hl]                                         ; $71bf: $9e
	or b                                             ; $71c0: $b0
	ld a, d                                          ; $71c1: $7a
	cp e                                             ; $71c2: $bb
	db $fd                                           ; $71c3: $fd
	sbc h                                            ; $71c4: $9c
	ld l, b                                          ; $71c5: $68
	ld l, a                                          ; $71c6: $6f
	ld a, a                                          ; $71c7: $7f
	call c, $9c80                                    ; $71c8: $dc $80 $9c
	rst FarCall                                          ; $71cb: $f7
	ldh a, [rIE]                                     ; $71cc: $f0 $ff
	call c, $9dc0                                    ; $71ce: $dc $c0 $9d
	add h                                            ; $71d1: $84
	adc $6f                                          ; $71d2: $ce $6f
	add l                                            ; $71d4: $85
	sbc l                                            ; $71d5: $9d
	ld a, e                                          ; $71d6: $7b
	ld sp, $f86f                                     ; $71d7: $31 $6f $f8
	ld a, [hl]                                       ; $71da: $7e
	ret                                              ; $71db: $c9


	ld l, a                                          ; $71dc: $6f
	ld hl, sp-$63                                    ; $71dd: $f8 $9d
	db $ec                                           ; $71df: $ec
	add h                                            ; $71e0: $84
	ld l, a                                          ; $71e1: $6f
	ld hl, sp-$62                                    ; $71e2: $f8 $9e
	ld d, h                                          ; $71e4: $54
	ld l, e                                          ; $71e5: $6b
	ldh a, [$9e]                                     ; $71e6: $f0 $9e
	xor e                                            ; $71e8: $ab
	ld l, e                                          ; $71e9: $6b
	ld hl, sp-$62                                    ; $71ea: $f8 $9e
	adc b                                            ; $71ec: $88
	ld l, e                                          ; $71ed: $6b
	ld hl, sp-$63                                    ; $71ee: $f8 $9d
	daa                                              ; $71f0: $27
	jr nz, jr_042_7262                               ; $71f1: $20 $6f

	ld hl, sp-$63                                    ; $71f3: $f8 $9d
	rrca                                             ; $71f5: $0f
	inc b                                            ; $71f6: $04
	ld l, d                                          ; $71f7: $6a
	dec [hl]                                         ; $71f8: $35
	ld a, l                                          ; $71f9: $7d
	cp h                                             ; $71fa: $bc
	db $fc                                           ; $71fb: $fc
	sbc e                                            ; $71fc: $9b
	jr z, jr_042_7256                                ; $71fd: $28 $57

	rst $38                                          ; $71ff: $ff
	ld a, [hl]                                       ; $7200: $7e
	db $fd                                           ; $7201: $fd
	sbc h                                            ; $7202: $9c
	rst SubAFromHL                                          ; $7203: $d7
	xor b                                            ; $7204: $a8
	rst $38                                          ; $7205: $ff
	halt                                             ; $7206: $76
	ld a, [hl]                                       ; $7207: $7e
	adc h                                            ; $7208: $8c
	nop                                              ; $7209: $00
	ld b, $8e                                        ; $720a: $06 $8e
	rrca                                             ; $720c: $0f
	add h                                            ; $720d: $84
	inc b                                            ; $720e: $04
	inc c                                            ; $720f: $0c
	ld c, $06                                        ; $7210: $0e $06
	rrca                                             ; $7212: $0f
	rlca                                             ; $7213: $07
	add a                                            ; $7214: $87
	ld c, $0e                                        ; $7215: $0e $0e
	ld b, $06                                        ; $7217: $06 $06
	ld c, $00                                        ; $7219: $0e $00
	ld a, [$8569]                                    ; $721b: $fa $69 $85
	sbc [hl]                                         ; $721e: $9e
	inc b                                            ; $721f: $04
	ld [hl], c                                       ; $7220: $71
	db $ed                                           ; $7221: $ed
	ld a, e                                          ; $7222: $7b

Call_042_7223:
	ld b, b                                          ; $7223: $40
	sbc [hl]                                         ; $7224: $9e
	add hl, hl                                       ; $7225: $29
	db $f4                                           ; $7226: $f4
	ld a, a                                          ; $7227: $7f
	db $10                                           ; $7228: $10
	sbc [hl]                                         ; $7229: $9e
	inc d                                            ; $722a: $14
	db $f4                                           ; $722b: $f4
	ld c, e                                          ; $722c: $4b
	db $10                                           ; $722d: $10
	sbc [hl]                                         ; $722e: $9e
	ld e, $6f                                        ; $722f: $1e $6f
	db $10                                           ; $7231: $10
	ld d, a                                          ; $7232: $57
	ret nc                                           ; $7233: $d0

	sbc [hl]                                         ; $7234: $9e
	ld [hl+], a                                      ; $7235: $22
	db $fd                                           ; $7236: $fd
	sbc [hl]                                         ; $7237: $9e
	cp a                                             ; $7238: $bf
	ld a, [$7f9e]                                    ; $7239: $fa $9e $7f
	ld [hl], a                                       ; $723c: $77
	ld a, [de]                                       ; $723d: $1a
	sbc c                                            ; $723e: $99
	add b                                            ; $723f: $80
	ld a, [hl]                                       ; $7240: $7e
	nop                                              ; $7241: $00
	add c                                            ; $7242: $81
	ld hl, sp-$04                                    ; $7243: $f8 $fc
	db $dd                                           ; $7245: $dd
	rst $38                                          ; $7246: $ff
	ld a, a                                          ; $7247: $7f
	inc d                                            ; $7248: $14
	ld a, b                                          ; $7249: $78
	ld l, c                                          ; $724a: $69
	sbc d                                            ; $724b: $9a
	jr c, jr_042_7255                                ; $724c: $38 $07

	nop                                              ; $724e: $00
	nop                                              ; $724f: $00
	rst SubAFromDE                                          ; $7250: $df
	ld a, e                                          ; $7251: $7b
	ld e, [hl]                                       ; $7252: $5e
	db $dd                                           ; $7253: $dd
	rst $38                                          ; $7254: $ff

jr_042_7255:
	sub e                                            ; $7255: $93

jr_042_7256:
	ccf                                              ; $7256: $3f
	ld c, $f8                                        ; $7257: $0e $f8
	add sp, $03                                      ; $7259: $e8 $03
	db $ec                                           ; $725b: $ec
	or $f8                                           ; $725c: $f6 $f8
	db $fc                                           ; $725e: $fc
	ld bc, $1f07                                     ; $725f: $01 $07 $1f

jr_042_7262:
	ld l, [hl]                                       ; $7262: $6e
	adc b                                            ; $7263: $88
	sbc b                                            ; $7264: $98
	inc bc                                           ; $7265: $03
	adc a                                            ; $7266: $8f
	rst AddAOntoHL                                          ; $7267: $ef
	rst SubAFromBC                                          ; $7268: $e7
	rst SubAFromDE                                          ; $7269: $df
	rst $38                                          ; $726a: $ff
	cp e                                             ; $726b: $bb
	db $db                                           ; $726c: $db
	rst $38                                          ; $726d: $ff
	rst SubAFromDE                                          ; $726e: $df
	ld a, a                                          ; $726f: $7f
	sub a                                            ; $7270: $97
	rrca                                             ; $7271: $0f
	ret z                                            ; $7272: $c8

	ret z                                            ; $7273: $c8

	cp $ef                                           ; $7274: $fe $ef
	sbc d                                            ; $7276: $9a
	cp a                                             ; $7277: $bf

Call_042_7278:
	sbc a                                            ; $7278: $9f
	ld [hl], a                                       ; $7279: $77
	pop bc                                           ; $727a: $c1
	ld a, [hl]                                       ; $727b: $7e
	dec de                                           ; $727c: $1b
	rst SubAFromDE                                          ; $727d: $df
	rst FarCall                                          ; $727e: $f7
	ld a, a                                          ; $727f: $7f
	or [hl]                                          ; $7280: $b6
	rst SubAFromDE                                          ; $7281: $df
	add c                                            ; $7282: $81
	sbc e                                            ; $7283: $9b
	add b                                            ; $7284: $80
	ret nz                                           ; $7285: $c0

	add b                                            ; $7286: $80
	db $10                                           ; $7287: $10
	ld [hl], d                                       ; $7288: $72
	db $e4                                           ; $7289: $e4
	sbc h                                            ; $728a: $9c
	add c                                            ; $728b: $81
	pop hl                                           ; $728c: $e1
	pop hl                                           ; $728d: $e1
	db $dd                                           ; $728e: $dd

jr_042_728f:
	add b                                            ; $728f: $80
	sbc e                                            ; $7290: $9b
	add e                                            ; $7291: $83
	add $c0                                          ; $7292: $c6 $c0
	ldh [$dc], a                                     ; $7294: $e0 $dc
	ret nz                                           ; $7296: $c0

	sbc h                                            ; $7297: $9c
	add e                                            ; $7298: $83
	sbc e                                            ; $7299: $9b
	sbc h                                            ; $729a: $9c
	db $fc                                           ; $729b: $fc
	sbc h                                            ; $729c: $9c
	and b                                            ; $729d: $a0
	ld bc, $fb6b                                     ; $729e: $01 $6b $fb
	sbc l                                            ; $72a1: $9d
	pop af                                           ; $72a2: $f1
	di                                               ; $72a3: $f3
	cp $7f                                           ; $72a4: $fe $7f
	or d                                             ; $72a6: $b2
	sbc l                                            ; $72a7: $9d
	rst $38                                          ; $72a8: $ff
	adc a                                            ; $72a9: $8f
	ld [hl], a                                       ; $72aa: $77
	inc b                                            ; $72ab: $04
	sbc [hl]                                         ; $72ac: $9e
	ld h, b                                          ; $72ad: $60
	ld l, d                                          ; $72ae: $6a
	jr z, jr_042_728f                                ; $72af: $28 $de

	rst $38                                          ; $72b1: $ff
	sbc [hl]                                         ; $72b2: $9e
	db $e4                                           ; $72b3: $e4
	ld [hl], d                                       ; $72b4: $72
	ld [hl], e                                       ; $72b5: $73
	ld e, a                                          ; $72b6: $5f
	ldh a, [$6e]                                     ; $72b7: $f0 $6e
	db $10                                           ; $72b9: $10
	ld l, e                                          ; $72ba: $6b
	ld hl, sp-$65                                    ; $72bb: $f8 $9b
	or b                                             ; $72bd: $b0
	ldh a, [$f0]                                     ; $72be: $f0 $f0
	ei                                               ; $72c0: $fb
	halt                                             ; $72c1: $76
	di                                               ; $72c2: $f3
	ld a, [hl]                                       ; $72c3: $7e

Call_042_72c4:
	ld a, [bc]                                       ; $72c4: $0a
	sbc l                                            ; $72c5: $9d
	ldh a, [$f9]                                     ; $72c6: $f0 $f9
	ld [hl], e                                       ; $72c8: $73
	add sp, -$65                                     ; $72c9: $e8 $9b
	ld b, l                                          ; $72cb: $45
	sub l                                            ; $72cc: $95
	jr jr_042_72e9                                   ; $72cd: $18 $1a

	db $fd                                           ; $72cf: $fd
	sub e                                            ; $72d0: $93
	ld [bc], a                                       ; $72d1: $02
	ld l, [hl]                                       ; $72d2: $6e
	rst $38                                          ; $72d3: $ff
	rst $38                                          ; $72d4: $ff
	ld b, $06                                        ; $72d5: $06 $06
	rlca                                             ; $72d7: $07
	inc bc                                           ; $72d8: $03
	inc bc                                           ; $72d9: $03
	add e                                            ; $72da: $83
	add e                                            ; $72db: $83
	ld b, d                                          ; $72dc: $42
	jp c, $9e06                                      ; $72dd: $da $06 $9e

	add a                                            ; $72e0: $87
	db $fc                                           ; $72e1: $fc
	sbc h                                            ; $72e2: $9c
	ld a, d                                          ; $72e3: $7a
	inc bc                                           ; $72e4: $03
	adc e                                            ; $72e5: $8b
	ei                                               ; $72e6: $fb
	rst SubAFromDE                                          ; $72e7: $df
	ld a, h                                          ; $72e8: $7c

jr_042_72e9:
	sub h                                            ; $72e9: $94
	rla                                              ; $72ea: $17
	ccf                                              ; $72eb: $3f
	ld l, a                                          ; $72ec: $6f
	ld h, e                                          ; $72ed: $63
	ldh a, [$7f]                                     ; $72ee: $f0 $7f
	rst SubAFromDE                                          ; $72f0: $df
	rst $38                                          ; $72f1: $ff
	rrca                                             ; $72f2: $0f
	ccf                                              ; $72f3: $3f
	ld a, a                                          ; $72f4: $7f
	ld a, e                                          ; $72f5: $7b
	ld b, d                                          ; $72f6: $42
	sub a                                            ; $72f7: $97
	ld a, a                                          ; $72f8: $7f
	ld e, a                                          ; $72f9: $5f
	add b                                            ; $72fa: $80
	pop hl                                           ; $72fb: $e1
	jp nc, $3a9d                                     ; $72fc: $d2 $9d $3a

Call_042_72ff:
	db $fd                                           ; $72ff: $fd
	ld a, b                                          ; $7300: $78
	cp [hl]                                          ; $7301: $be
	sbc h                                            ; $7302: $9c
	ldh a, [$f8]                                     ; $7303: $f0 $f8
	ld hl, sp+$78                                    ; $7305: $f8 $78
	db $f4                                           ; $7307: $f4
	sbc d                                            ; $7308: $9a
	rst $38                                          ; $7309: $ff
	ldh [c], a                                       ; $730a: $e2
	dec [hl]                                         ; $730b: $35
	rra                                              ; $730c: $1f
	rra                                              ; $730d: $1f
	ld a, e                                          ; $730e: $7b
	push hl                                          ; $730f: $e5
	ld a, a                                          ; $7310: $7f
	db $e4                                           ; $7311: $e4
	jp c, $96ff                                      ; $7312: $da $ff $96

	adc e                                            ; $7315: $8b
	cp $f8                                           ; $7316: $fe $f8
	ldh [$c0], a                                     ; $7318: $e0 $c0
	add b                                            ; $731a: $80
	ld a, [hl]                                       ; $731b: $7e
	sub b                                            ; $731c: $90
	add a                                            ; $731d: $87
	ld l, c                                          ; $731e: $69
	ld c, c                                          ; $731f: $49
	add [hl]                                         ; $7320: $86
	rst $38                                          ; $7321: $ff
	dec c                                            ; $7322: $0d
	dec de                                           ; $7323: $1b
	scf                                              ; $7324: $37
	ld l, [hl]                                       ; $7325: $6e
	call c, Call_042_7078                            ; $7326: $dc $78 $70
	rst $38                                          ; $7329: $ff
	cp $fd                                           ; $732a: $fe $fd
	ei                                               ; $732c: $fb
	rst FarCall                                          ; $732d: $f7
	rst AddAOntoHL                                          ; $732e: $ef
	sbc [hl]                                         ; $732f: $9e
	inc a                                            ; $7330: $3c
	cp b                                             ; $7331: $b8
	ld a, h                                          ; $7332: $7c
	ld b, b                                          ; $7333: $40
	nop                                              ; $7334: $00
	ld b, b                                          ; $7335: $40
	ld h, b                                          ; $7336: $60
	nop                                              ; $7337: $00
	nop                                              ; $7338: $00
	ret nz                                           ; $7339: $c0

	call c, $9aff                                    ; $733a: $dc $ff $9a
	ld b, b                                          ; $733d: $40
	rst $38                                          ; $733e: $ff
	ld l, [hl]                                       ; $733f: $6e
	jr nz, jr_042_73c1                               ; $7340: $20 $7f

	db $fc                                           ; $7342: $fc
	sbc [hl]                                         ; $7343: $9e
	db $10                                           ; $7344: $10
	ld [hl], d                                       ; $7345: $72
	pop bc                                           ; $7346: $c1
	sub c                                            ; $7347: $91
	ld [$0aff], sp                                   ; $7348: $08 $ff $0a
	inc d                                            ; $734b: $14
	db $fc                                           ; $734c: $fc
	inc b                                            ; $734d: $04
	rlca                                             ; $734e: $07
	rla                                              ; $734f: $17
	rla                                              ; $7350: $17
	ld a, [hl]                                       ; $7351: $7e
	ld c, $08                                        ; $7352: $0e $08
	ei                                               ; $7354: $fb
	ei                                               ; $7355: $fb
	ld a, c                                          ; $7356: $79
	xor l                                            ; $7357: $ad
	sub l                                            ; $7358: $95
	rst $38                                          ; $7359: $ff
	cp d                                             ; $735a: $ba
	ld hl, sp-$03                                    ; $735b: $f8 $fd
	db $fc                                           ; $735d: $fc
	ccf                                              ; $735e: $3f
	ld a, a                                          ; $735f: $7f
	ld [hl], a                                       ; $7360: $77
	ld [bc], a                                       ; $7361: $02
	ld a, a                                          ; $7362: $7f
	ld l, e                                          ; $7363: $6b
	sbc a                                            ; $7364: $9f
	sub a                                            ; $7365: $97
	ld h, b                                          ; $7366: $60
	ld a, h                                          ; $7367: $7c
	or $fd                                           ; $7368: $f6 $fd
	ei                                               ; $736a: $fb
	ccf                                              ; $736b: $3f
	rst SubAFromDE                                          ; $736c: $df
	ld a, c                                          ; $736d: $79
	reti                                             ; $736e: $d9


	rst $38                                          ; $736f: $ff
	adc a                                            ; $7370: $8f
	db $10                                           ; $7371: $10
	and e                                            ; $7372: $a3
	sub e                                            ; $7373: $93
	or d                                             ; $7374: $b2
	and e                                            ; $7375: $a3
	jp $2cc3                                         ; $7376: $c3 $c3 $2c


	pop hl                                           ; $7379: $e1
	pop bc                                           ; $737a: $c1
	db $e3                                           ; $737b: $e3
	rst JumpTable                                          ; $737c: $c7
	rst JumpTable                                          ; $737d: $c7
	rst SubAFromBC                                          ; $737e: $e7
	rst SubAFromBC                                          ; $737f: $e7
	rst GetHLinHL                                          ; $7380: $cf
	jp c, $8eff                                      ; $7381: $da $ff $8e

	rst FarCall                                          ; $7384: $f7
	push af                                          ; $7385: $f5
	rst $38                                          ; $7386: $ff
	xor $1e                                          ; $7387: $ee $1e
	cp $fc                                           ; $7389: $fe $fc
	db $fc                                           ; $738b: $fc
	ld a, [bc]                                       ; $738c: $0a
	call z, $9fb0                                    ; $738d: $cc $b0 $9f
	ld c, a                                          ; $7390: $4f
	rst AddAOntoHL                                          ; $7391: $ef
	ld a, e                                          ; $7392: $7b
	add hl, sp                                       ; $7393: $39
	add hl, bc                                       ; $7394: $09
	db $db                                           ; $7395: $db
	rst $38                                          ; $7396: $ff
	sub b                                            ; $7397: $90
	ei                                               ; $7398: $fb
	ld sp, hl                                        ; $7399: $f9
	ld bc, $fc0f                                     ; $739a: $01 $0f $fc
	ld a, a                                          ; $739d: $7f
	add b                                            ; $739e: $80
	push de                                          ; $739f: $d5
	cp a                                             ; $73a0: $bf
	rst $38                                          ; $73a1: $ff
	rrca                                             ; $73a2: $0f
	rst $38                                          ; $73a3: $ff
	ld hl, sp-$01                                    ; $73a4: $f8 $ff
	rst $38                                          ; $73a6: $ff
	sbc $80                                          ; $73a7: $de $80
	sub h                                            ; $73a9: $94
	ldh a, [$8d]                                     ; $73aa: $f0 $8d
	ccf                                              ; $73ac: $3f
	rst $38                                          ; $73ad: $ff
	rst $38                                          ; $73ae: $ff
	db $eb                                           ; $73af: $eb
	rst SubAFromHL                                          ; $73b0: $d7
	rst AddAOntoHL                                          ; $73b1: $ef
	rst $38                                          ; $73b2: $ff
	ldh a, [c]                                       ; $73b3: $f2
	ret nz                                           ; $73b4: $c0

	db $db                                           ; $73b5: $db
	ld a, a                                          ; $73b6: $7f
	sub [hl]                                         ; $73b7: $96
	adc a                                            ; $73b8: $8f
	ldh [$f7], a                                     ; $73b9: $e0 $f7
	db $f4                                           ; $73bb: $f4
	cp l                                             ; $73bc: $bd
	rst SubAFromDE                                          ; $73bd: $df
	cp a                                             ; $73be: $bf
	rst $38                                          ; $73bf: $ff
	ld a, a                                          ; $73c0: $7f

jr_042_73c1:
	ld a, d                                          ; $73c1: $7a
	ld b, b                                          ; $73c2: $40
	sbc $f6                                          ; $73c3: $de $f6
	sbc [hl]                                         ; $73c5: $9e
	rst $38                                          ; $73c6: $ff
	ld a, e                                          ; $73c7: $7b
	inc d                                            ; $73c8: $14
	sbc e                                            ; $73c9: $9b
	adc a                                            ; $73ca: $8f
	ld e, a                                          ; $73cb: $5f
	cp b                                             ; $73cc: $b8
	cp l                                             ; $73cd: $bd
	ld [hl], d                                       ; $73ce: $72
	ld b, d                                          ; $73cf: $42
	sub h                                            ; $73d0: $94
	ld c, b                                          ; $73d1: $48
	ld a, a                                          ; $73d2: $7f
	rst AddAOntoHL                                          ; $73d3: $ef
	xor $cf                                          ; $73d4: $ee $cf
	rst $38                                          ; $73d6: $ff
	db $fd                                           ; $73d7: $fd
	ret z                                            ; $73d8: $c8

	halt                                             ; $73d9: $76
	ld h, [hl]                                       ; $73da: $66
	rst AddAOntoHL                                          ; $73db: $ef
	jp c, $95ff                                      ; $73dc: $da $ff $95

	rst SubAFromDE                                          ; $73df: $df
	ld [bc], a                                       ; $73e0: $02
	ld b, $87                                        ; $73e1: $06 $87
	add e                                            ; $73e3: $83
	inc bc                                           ; $73e4: $03
	rst SubAFromDE                                          ; $73e5: $df
	ld e, c                                          ; $73e6: $59
	ld h, c                                          ; $73e7: $61
	rst JumpTable                                          ; $73e8: $c7
	db $dd                                           ; $73e9: $dd
	jp $1b94                                         ; $73ea: $c3 $94 $1b


	sbc a                                            ; $73ed: $9f
	cp a                                             ; $73ee: $bf
	add h                                            ; $73ef: $84
	ld b, $13                                        ; $73f0: $06 $13
	ld [hl], l                                       ; $73f2: $75
	ld l, a                                          ; $73f3: $6f
	ccf                                              ; $73f4: $3f
	ld a, a                                          ; $73f5: $7f
	sbc $66                                          ; $73f6: $de $66
	ldh a, [$9b]                                     ; $73f8: $f0 $9b
	rst AddAOntoHL                                          ; $73fa: $ef
	rst SubAFromHL                                          ; $73fb: $d7
	db $eb                                           ; $73fc: $eb
	sbc $7b                                          ; $73fd: $de $7b

Call_042_73ff:
	cp l                                             ; $73ff: $bd
	sbc d                                            ; $7400: $9a
	rst $38                                          ; $7401: $ff
	ld e, a                                          ; $7402: $5f
	ld l, a                                          ; $7403: $6f
	rst FarCall                                          ; $7404: $f7
	cp a                                             ; $7405: $bf
	ld a, d                                          ; $7406: $7a
	jp z, Jump_042_6c7a                              ; $7407: $ca $7a $6c

	sbc c                                            ; $740a: $99
	ldh a, [c]                                       ; $740b: $f2
	sbc [hl]                                         ; $740c: $9e
	ld c, h                                          ; $740d: $4c
	cp $f7                                           ; $740e: $fe $f7
	ld a, [$ffdb]                                    ; $7410: $fa $db $ff
	sbc e                                            ; $7413: $9b
	rrca                                             ; $7414: $0f
	dec b                                            ; $7415: $05
	ld bc, $dd8e                                     ; $7416: $01 $8e $dd
	ret nz                                           ; $7419: $c0

	sbc e                                            ; $741a: $9b
	add b                                            ; $741b: $80
	rst AddAOntoHL                                          ; $741c: $ef
	pop bc                                           ; $741d: $c1
	rrca                                             ; $741e: $0f
	db $dd                                           ; $741f: $dd
	ld a, a                                          ; $7420: $7f
	ld a, a                                          ; $7421: $7f
	ld l, e                                          ; $7422: $6b
	ld a, [hl]                                       ; $7423: $7e
	add sp, -$80                                     ; $7424: $e8 $80
	ld [$eae5], a                                    ; $7426: $ea $e5 $ea
	ld hl, sp+$00                                    ; $7429: $f8 $00
	cp $c0                                           ; $742b: $fe $c0
	ld a, a                                          ; $742d: $7f
	ld a, l                                          ; $742e: $7d
	ld a, d                                          ; $742f: $7a
	ld [hl], l                                       ; $7430: $75
	ld a, a                                          ; $7431: $7f
	rst $38                                          ; $7432: $ff
	ld [hl], e                                       ; $7433: $73
	ld l, a                                          ; $7434: $6f
	push hl                                          ; $7435: $e5
	ld [$aa65], a                                    ; $7436: $ea $65 $aa
	jr nz, jr_042_743b                               ; $7439: $20 $00

jr_042_743b:
	db $db                                           ; $743b: $db
	ccf                                              ; $743c: $3f
	ld a, [$ba35]                                    ; $743d: $fa $35 $ba
	ld [hl], l                                       ; $7440: $75
	rst $38                                          ; $7441: $ff
	rst $38                                          ; $7442: $ff
	inc [hl]                                         ; $7443: $34
	rst SubAFromDE                                          ; $7444: $df
	ld a, [hl]                                       ; $7445: $7e
	pop bc                                           ; $7446: $c1
	ld a, a                                          ; $7447: $7f
	or c                                             ; $7448: $b1
	cp $df                                           ; $7449: $fe $df
	ldh [c], a                                       ; $744b: $e2
	ld l, d                                          ; $744c: $6a
	inc e                                            ; $744d: $1c
	ld a, l                                          ; $744e: $7d
	sbc a                                            ; $744f: $9f
	ld a, a                                          ; $7450: $7f
	ld h, h                                          ; $7451: $64
	cp $df                                           ; $7452: $fe $df
	inc h                                            ; $7454: $24
	ld h, a                                          ; $7455: $67
	ldh a, [$7a]                                     ; $7456: $f0 $7a
	or a                                             ; $7458: $b7
	ld d, a                                          ; $7459: $57
	ldh a, [hDisp0_SCX]                                     ; $745a: $f0 $84
	inc bc                                           ; $745c: $03
	rrca                                             ; $745d: $0f
	pop af                                           ; $745e: $f1
	db $fd                                           ; $745f: $fd
	dec de                                           ; $7460: $1b
	dec sp                                           ; $7461: $3b
	dec sp                                           ; $7462: $3b
	ld [bc], a                                       ; $7463: $02
	ld [bc], a                                       ; $7464: $02
	rst $38                                          ; $7465: $ff

jr_042_7466:
	cp $0e                                           ; $7466: $fe $0e
	dec e                                            ; $7468: $1d
	dec a                                            ; $7469: $3d
	ld a, l                                          ; $746a: $7d
	rst AddAOntoHL                                          ; $746b: $ef
	cp h                                             ; $746c: $bc
	ld l, a                                          ; $746d: $6f
	cp a                                             ; $746e: $bf
	adc $f6                                          ; $746f: $ce $f6
	adc [hl]                                         ; $7471: $8e
	adc a                                            ; $7472: $8f
	jr jr_042_74e5                                   ; $7473: $18 $70

	ld hl, sp-$33                                    ; $7475: $f8 $cd
	ld a, e                                          ; $7477: $7b
	ld b, $80                                        ; $7478: $06 $80
	cp $fb                                           ; $747a: $fe $fb
	inc sp                                           ; $747c: $33
	push de                                          ; $747d: $d5
	ld l, e                                          ; $747e: $6b

Call_042_747f:
	rst SubAFromDE                                          ; $747f: $df
	ld a, a                                          ; $7480: $7f
	ld a, $5e                                        ; $7481: $3e $5e
	rrca                                             ; $7483: $0f
	jr c, jr_042_7466                                ; $7484: $38 $e0

	add b                                            ; $7486: $80
	nop                                              ; $7487: $00
	add b                                            ; $7488: $80
	pop bc                                           ; $7489: $c1
	pop hl                                           ; $748a: $e1
	ld sp, hl                                        ; $748b: $f9
	ld e, $b5                                        ; $748c: $1e $b5
	cp d                                             ; $748e: $ba
	cp [hl]                                          ; $748f: $be
	ld a, [hl]                                       ; $7490: $7e
	ccf                                              ; $7491: $3f
	adc a                                            ; $7492: $8f
	rst $38                                          ; $7493: $ff
	pop hl                                           ; $7494: $e1
	ld b, b                                          ; $7495: $40
	ld b, b                                          ; $7496: $40
	ld b, c                                          ; $7497: $41
	add c                                            ; $7498: $81
	ld a, [hl]                                       ; $7499: $7e
	ld a, [de]                                       ; $749a: $1a
	ld a, l                                          ; $749b: $7d
	ld e, b                                          ; $749c: $58
	sub [hl]                                         ; $749d: $96
	ld [hl], b                                       ; $749e: $70
	add sp, -$18                                     ; $749f: $e8 $e8
	db $ec                                           ; $74a1: $ec
	ld e, h                                          ; $74a2: $5c
	ld c, a                                          ; $74a3: $4f
	rrca                                             ; $74a4: $0f
	cp a                                             ; $74a5: $bf
	ld a, a                                          ; $74a6: $7f
	sbc $1f                                          ; $74a7: $de $1f
	rst SubAFromDE                                          ; $74a9: $df
	cp a                                             ; $74aa: $bf
	ld a, d                                          ; $74ab: $7a
	adc [hl]                                         ; $74ac: $8e
	sub a                                            ; $74ad: $97
	jr nz, jr_042_74f0                               ; $74ae: $20 $40

	ld b, b                                          ; $74b0: $40
	ret nz                                           ; $74b1: $c0

	ld e, a                                          ; $74b2: $5f
	rst $38                                          ; $74b3: $ff
	ldh [$e0], a                                     ; $74b4: $e0 $e0
	call c, $80f0                                    ; $74b6: $dc $f0 $80
	db $fd                                           ; $74b9: $fd
	ld a, [$7b7a]                                    ; $74ba: $fa $7a $7b
	ld a, e                                          ; $74bd: $7b
	dec hl                                           ; $74be: $2b
	scf                                              ; $74bf: $37
	db $f4                                           ; $74c0: $f4
	cp $7d                                           ; $74c1: $fe $7d
	ld a, l                                          ; $74c3: $7d
	ld l, h                                          ; $74c4: $6c
	inc l                                            ; $74c5: $2c
	inc a                                            ; $74c6: $3c
	ccf                                              ; $74c7: $3f
	ccf                                              ; $74c8: $3f
	ld c, a                                          ; $74c9: $4f
	or a                                             ; $74ca: $b7
	sub a                                            ; $74cb: $97
	rst SubAFromHL                                          ; $74cc: $d7
	or $f3                                           ; $74cd: $f6 $f3
	ldh a, [c]                                       ; $74cf: $f2
	ld d, b                                          ; $74d0: $50
	ld sp, hl                                        ; $74d1: $f9
	ld a, c                                          ; $74d2: $79
	ld [hl], l                                       ; $74d3: $75
	dec [hl]                                         ; $74d4: $35
	ld [hl], a                                       ; $74d5: $77
	halt                                             ; $74d6: $76
	ldh a, [c]                                       ; $74d7: $f2
	ld a, [hl]                                       ; $74d8: $7e
	adc [hl]                                         ; $74d9: $8e
	add b                                            ; $74da: $80
	cp a                                             ; $74db: $bf
	dec sp                                           ; $74dc: $3b
	inc c                                            ; $74dd: $0c
	inc c                                            ; $74de: $0c
	cp [hl]                                          ; $74df: $be
	db $e3                                           ; $74e0: $e3
	add [hl]                                         ; $74e1: $86
	db $ec                                           ; $74e2: $ec
	ld hl, sp-$54                                    ; $74e3: $f8 $ac

jr_042_74e5:
	rlca                                             ; $74e5: $07
	rlca                                             ; $74e6: $07
	dec de                                           ; $74e7: $1b
	ld a, b                                          ; $74e8: $78
	ld sp, hl                                        ; $74e9: $f9
	rst SubAFromDE                                          ; $74ea: $df
	ld e, e                                          ; $74eb: $5b
	rst $38                                          ; $74ec: $ff
	sbc a                                            ; $74ed: $9f
	db $db                                           ; $74ee: $db
	ei                                               ; $74ef: $fb

jr_042_74f0:
	ld a, a                                          ; $74f0: $7f
	rst $38                                          ; $74f1: $ff
	ld h, c                                          ; $74f2: $61
	rst AddAOntoHL                                          ; $74f3: $ef
	ld l, a                                          ; $74f4: $6f
	rst GetHLinHL                                          ; $74f5: $cf
	ld sp, hl                                        ; $74f6: $f9
	ld a, l                                          ; $74f7: $7d
	adc c                                            ; $74f8: $89
	dec c                                            ; $74f9: $0d
	sbc e                                            ; $74fa: $9b
	ld h, a                                          ; $74fb: $67
	rst FarCall                                          ; $74fc: $f7
	rst SubAFromBC                                          ; $74fd: $e7
	rst SubAFromBC                                          ; $74fe: $e7
	db $dd                                           ; $74ff: $dd
	rst $38                                          ; $7500: $ff
	adc a                                            ; $7501: $8f
	push bc                                          ; $7502: $c5
	inc de                                           ; $7503: $13
	inc bc                                           ; $7504: $03
	dec de                                           ; $7505: $1b
	cp a                                             ; $7506: $bf
	ld c, a                                          ; $7507: $4f
	ld b, a                                          ; $7508: $47
	add $9c                                          ; $7509: $c6 $9c
	or [hl]                                          ; $750b: $b6
	ei                                               ; $750c: $fb
	ld h, l                                          ; $750d: $65
	ld b, e                                          ; $750e: $43
	push bc                                          ; $750f: $c5
	res 6, a                                         ; $7510: $cb $b7
	sbc $3f                                          ; $7512: $de $3f
	ld l, h                                          ; $7514: $6c
	adc $83                                          ; $7515: $ce $83
	ld a, [hl+]                                      ; $7517: $2a
	add l                                            ; $7518: $85
	jp z, $d2d5                                      ; $7519: $ca $d5 $d2

	push af                                          ; $751c: $f5
	ldh a, [c]                                       ; $751d: $f2
	add b                                            ; $751e: $80
	push de                                          ; $751f: $d5
	ld a, [$faf5]                                    ; $7520: $fa $f5 $fa
	db $fd                                           ; $7523: $fd
	ld a, [$7dfd]                                    ; $7524: $fa $fd $7d
	xor d                                            ; $7527: $aa
	ld d, l                                          ; $7528: $55
	xor d                                            ; $7529: $aa
	ld b, h                                          ; $752a: $44
	add b                                            ; $752b: $80
	ld [$8290], sp                                   ; $752c: $08 $90 $82
	ld d, l                                          ; $752f: $55
	xor d                                            ; $7530: $aa
	ld d, l                                          ; $7531: $55
	cp e                                             ; $7532: $bb
	ld a, c                                          ; $7533: $79
	ld l, l                                          ; $7534: $6d
	sub h                                            ; $7535: $94
	ld [hl], b                                       ; $7536: $70
	ld a, a                                          ; $7537: $7f
	add hl, sp                                       ; $7538: $39
	jr c, jr_042_7573                                ; $7539: $38 $38

	inc a                                            ; $753b: $3c
	inc a                                            ; $753c: $3c
	ld a, h                                          ; $753d: $7c
	ld hl, sp-$08                                    ; $753e: $f8 $f8
	rst $38                                          ; $7540: $ff
	ld [hl], l                                       ; $7541: $75
	ld l, a                                          ; $7542: $6f
	sub c                                            ; $7543: $91
	db $fc                                           ; $7544: $fc
	ld a, $f9                                        ; $7545: $3e $f9
	ld l, c                                          ; $7547: $69
	ld l, a                                          ; $7548: $6f
	ld a, l                                          ; $7549: $7d
	ld a, c                                          ; $754a: $79
	ld a, c                                          ; $754b: $79
	ld a, a                                          ; $754c: $7f
	ld a, e                                          ; $754d: $7b
	ld l, h                                          ; $754e: $6c
	db $fc                                           ; $754f: $fc
	ld a, a                                          ; $7550: $7f
	ld a, a                                          ; $7551: $7f
	sbc $3f                                          ; $7552: $de $3f
	sbc e                                            ; $7554: $9b
	adc e                                            ; $7555: $8b
	ld h, b                                          ; $7556: $60
	ld l, [hl]                                       ; $7557: $6e
	ld l, a                                          ; $7558: $6f
	ld a, b                                          ; $7559: $78
	ld e, e                                          ; $755a: $5b
	sbc e                                            ; $755b: $9b
	nop                                              ; $755c: $00
	inc d                                            ; $755d: $14
	sbc a                                            ; $755e: $9f
	rst SubAFromDE                                          ; $755f: $df
	ld [hl], d                                       ; $7560: $72
	ldh a, [$7e]                                     ; $7561: $f0 $7e
	rst AddAOntoHL                                          ; $7563: $ef
	sbc [hl]                                         ; $7564: $9e
	add e                                            ; $7565: $83
	call c, $df81                                    ; $7566: $dc $81 $df
	rst $38                                          ; $7569: $ff
	db $db                                           ; $756a: $db
	add e                                            ; $756b: $83
	rst SubAFromDE                                          ; $756c: $df
	rst $38                                          ; $756d: $ff
	ld a, h                                          ; $756e: $7c
	ld d, a                                          ; $756f: $57
	sub h                                            ; $7570: $94
	ccf                                              ; $7571: $3f
	ei                                               ; $7572: $fb

jr_042_7573:
	ld [hl], a                                       ; $7573: $77
	ld a, [$ff00]                                    ; $7574: $fa $00 $ff
	ld bc, $1f0f                                     ; $7577: $01 $0f $1f
	db $fd                                           ; $757a: $fd
	cp a                                             ; $757b: $bf
	ld a, b                                          ; $757c: $78
	ld l, c                                          ; $757d: $69
	sub h                                            ; $757e: $94
	ret nz                                           ; $757f: $c0

	ld b, b                                          ; $7580: $40
	and b                                            ; $7581: $a0
	ldh [$c0], a                                     ; $7582: $e0 $c0
	ld b, b                                          ; $7584: $40
	nop                                              ; $7585: $00
	rst $38                                          ; $7586: $ff
	ldh [$a0], a                                     ; $7587: $e0 $a0
	ldh [$78], a                                     ; $7589: $e0 $78
	ld a, d                                          ; $758b: $7a
	sub a                                            ; $758c: $97
	rst $38                                          ; $758d: $ff
	ld e, [hl]                                       ; $758e: $5e
	ld c, [hl]                                       ; $758f: $4e
	rst SubAFromDE                                          ; $7590: $df
	rst $38                                          ; $7591: $ff
	ccf                                              ; $7592: $3f
	ld a, l                                          ; $7593: $7d
	ccf                                              ; $7594: $3f
	sbc $f9                                          ; $7595: $de $f9
	sbc [hl]                                         ; $7597: $9e
	db $fd                                           ; $7598: $fd
	ld a, e                                          ; $7599: $7b
	xor a                                            ; $759a: $af
	sbc h                                            ; $759b: $9c
	ld a, a                                          ; $759c: $7f
	adc h                                            ; $759d: $8c
	sbc h                                            ; $759e: $9c
	ld a, c                                          ; $759f: $79
	push af                                          ; $75a0: $f5
	sbc h                                            ; $75a1: $9c
	ld a, [$fdb8]                                    ; $75a2: $fa $b8 $fd
	sbc $fe                                          ; $75a5: $de $fe
	ld [hl], l                                       ; $75a7: $75
	ld bc, $ff80                                     ; $75a8: $01 $80 $ff
	ld e, h                                          ; $75ab: $5c
	ld e, d                                          ; $75ac: $5a
	ld e, h                                          ; $75ad: $5c
	ld d, e                                          ; $75ae: $53
	ld l, b                                          ; $75af: $68
	ld [hl], a                                       ; $75b0: $77
	db $db                                           ; $75b1: $db
	reti                                             ; $75b2: $d9


	db $e3                                           ; $75b3: $e3
	push hl                                          ; $75b4: $e5
	db $e3                                           ; $75b5: $e3
	db $ed                                           ; $75b6: $ed
	rst FarCall                                          ; $75b7: $f7
	ld sp, hl                                        ; $75b8: $f9
	db $fc                                           ; $75b9: $fc
	xor $d6                                          ; $75ba: $ee $d6
	xor c                                            ; $75bc: $a9
	jp nc, $c7a7                                     ; $75bd: $d2 $a7 $c7

	adc a                                            ; $75c0: $8f
	call $a963                                       ; $75c1: $cd $63 $a9
	rst SubAFromHL                                          ; $75c4: $d7
	rst AddAOntoHL                                          ; $75c5: $ef
	cp $fc                                           ; $75c6: $fe $fc
	ld sp, hl                                        ; $75c8: $f9
	sub e                                            ; $75c9: $93
	or e                                             ; $75ca: $b3
	sbc a                                            ; $75cb: $9f
	inc d                                            ; $75cc: $14
	rlca                                             ; $75cd: $07
	ld c, a                                          ; $75ce: $4f
	ld c, l                                          ; $75cf: $4d
	ld e, [hl]                                       ; $75d0: $5e
	db $dd                                           ; $75d1: $dd
	sbc $4d                                          ; $75d2: $de $4d
	rst AddAOntoHL                                          ; $75d4: $ef
	rst AddAOntoHL                                          ; $75d5: $ef
	call c, $9ae7                                    ; $75d6: $dc $e7 $9a
	rst FarCall                                          ; $75d9: $f7
	ret nc                                           ; $75da: $d0

	rst SubAFromBC                                          ; $75db: $e7
	rst FarCall                                          ; $75dc: $f7
	cp $7b                                           ; $75dd: $fe $7b
	sbc e                                            ; $75df: $9b
	rst SubAFromDE                                          ; $75e0: $df
	rst SubAFromDE                                          ; $75e1: $df
	add b                                            ; $75e2: $80
	di                                               ; $75e3: $f3
	db $ed                                           ; $75e4: $ed
	jp z, Jump_042_62cc                              ; $75e5: $ca $cc $62

	pop af                                           ; $75e8: $f1
	ld [hl], e                                       ; $75e9: $73
	rst $38                                          ; $75ea: $ff
	ld [bc], a                                       ; $75eb: $02
	adc b                                            ; $75ec: $88
	ret nz                                           ; $75ed: $c0

	ld b, a                                          ; $75ee: $47
	rst SubAFromDE                                          ; $75ef: $df
	ret nz                                           ; $75f0: $c0

	and b                                            ; $75f1: $a0
	dec c                                            ; $75f2: $0d
	dec c                                            ; $75f3: $0d
	add a                                            ; $75f4: $87
	rst JumpTable                                          ; $75f5: $c7
	jp Jump_042_4083                                 ; $75f6: $c3 $83 $40


	ld h, b                                          ; $75f9: $60
	ld e, a                                          ; $75fa: $5f
	add c                                            ; $75fb: $81
	pop bc                                           ; $75fc: $c1
	ld bc, $0f81                                     ; $75fd: $01 $81 $0f
	ld bc, $df01                                     ; $7600: $01 $01 $df
	rst $38                                          ; $7603: $ff
	sbc $81                                          ; $7604: $de $81
	sbc $01                                          ; $7606: $de $01
	add b                                            ; $7608: $80
	di                                               ; $7609: $f3
	rst $38                                          ; $760a: $ff
	ld hl, sp-$60                                    ; $760b: $f8 $a0
	cp b                                             ; $760d: $b8
	or a                                             ; $760e: $b7
	cp b                                             ; $760f: $b8
	db $e4                                           ; $7610: $e4
	xor [hl]                                         ; $7611: $ae
	scf                                              ; $7612: $37
	jr nc, jr_042_7685                               ; $7613: $30 $70

	ld [hl], b                                       ; $7615: $70
	ld a, a                                          ; $7616: $7f
	ld a, b                                          ; $7617: $78
	cpl                                              ; $7618: $2f
	rst $38                                          ; $7619: $ff
	rst $38                                          ; $761a: $ff
	ld a, [hl]                                       ; $761b: $7e
	rra                                              ; $761c: $1f
	ccf                                              ; $761d: $3f
	cp $3e                                           ; $761e: $fe $3e
	db $fc                                           ; $7620: $fc
	daa                                              ; $7621: $27
	rst SubAFromBC                                          ; $7622: $e7
	ld [hl], a                                       ; $7623: $77
	rla                                              ; $7624: $17
	rla                                              ; $7625: $17
	rst FarCall                                          ; $7626: $f7
	scf                                              ; $7627: $37
	adc b                                            ; $7628: $88
	ld [hl], a                                       ; $7629: $77
	rst $38                                          ; $762a: $ff
	dec a                                            ; $762b: $3d
	dec a                                            ; $762c: $3d
	add hl, sp                                       ; $762d: $39
	cp c                                             ; $762e: $b9
	ld e, c                                          ; $762f: $59
	db $fd                                           ; $7630: $fd
	inc bc                                           ; $7631: $03
	push hl                                          ; $7632: $e5
	ld h, a                                          ; $7633: $67
	and e                                            ; $7634: $a3
	push hl                                          ; $7635: $e5
	ret z                                            ; $7636: $c8

	ld sp, hl                                        ; $7637: $f9
	db $fd                                           ; $7638: $fd
	rst $38                                          ; $7639: $ff
	dec hl                                           ; $763a: $2b
	scf                                              ; $763b: $37
	cp a                                             ; $763c: $bf
	ld d, a                                          ; $763d: $57
	rst SubAFromDE                                          ; $763e: $df
	ld a, a                                          ; $763f: $7f
	ld h, l                                          ; $7640: $65
	ld h, c                                          ; $7641: $61
	rst SubAFromDE                                          ; $7642: $df
	rst $38                                          ; $7643: $ff
	sub [hl]                                         ; $7644: $96
	ld sp, hl                                        ; $7645: $f9
	or $e8                                           ; $7646: $f6 $e8
	push de                                          ; $7648: $d5
	ld [$ebf7], a                                    ; $7649: $ea $f7 $eb
	rst SubAFromHL                                          ; $764c: $d7
	cp $75                                           ; $764d: $fe $75
	ld a, e                                          ; $764f: $7b
	sbc $ff                                          ; $7650: $de $ff
	sub a                                            ; $7652: $97
	jr z, @+$52                                      ; $7653: $28 $50

	and b                                            ; $7655: $a0
	ld [hl], c                                       ; $7656: $71
	db $eb                                           ; $7657: $eb
	push af                                          ; $7658: $f5
	db $eb                                           ; $7659: $eb
	rst SubAFromHL                                          ; $765a: $d7
	reti                                             ; $765b: $d9


	rst $38                                          ; $765c: $ff
	sbc b                                            ; $765d: $98
	ld a, [hl]                                       ; $765e: $7e
	db $fd                                           ; $765f: $fd
	rst FarCall                                          ; $7660: $f7
	rst $38                                          ; $7661: $ff
	or $7b                                           ; $7662: $f6 $7b
	or a                                             ; $7664: $b7
	ld h, l                                          ; $7665: $65
	ld d, c                                          ; $7666: $51
	ld a, a                                          ; $7667: $7f
	ldh a, [$d8]                                     ; $7668: $f0 $d8
	rst $38                                          ; $766a: $ff
	ld a, a                                          ; $766b: $7f
	ld h, h                                          ; $766c: $64
	sbc [hl]                                         ; $766d: $9e
	inc bc                                           ; $766e: $03
	ld a, b                                          ; $766f: $78
	dec sp                                           ; $7670: $3b
	ld a, [hl]                                       ; $7671: $7e
	ld hl, sp-$23                                    ; $7672: $f8 $dd
	add b                                            ; $7674: $80
	rst SubAFromDE                                          ; $7675: $df
	add d                                            ; $7676: $82

Call_042_7677:
	ld h, [hl]                                       ; $7677: $66
	ret nc                                           ; $7678: $d0

	db $db                                           ; $7679: $db
	add c                                            ; $767a: $81
	sbc l                                            ; $767b: $9d
	db $fd                                           ; $767c: $fd
	add c                                            ; $767d: $81

Call_042_767e:
	call c, Call_042_7f83                            ; $767e: $dc $83 $7f
	ld h, e                                          ; $7681: $63
	adc [hl]                                         ; $7682: $8e
	cp $b7                                           ; $7683: $fe $b7

jr_042_7685:
	cp a                                             ; $7685: $bf
	sub l                                            ; $7686: $95
	rst $38                                          ; $7687: $ff
	ld [$9fff], a                                    ; $7688: $ea $ff $9f
	rst SubAFromBC                                          ; $768b: $e7
	db $fc                                           ; $768c: $fc
	or b                                             ; $768d: $b0
	cp e                                             ; $768e: $bb
	rst $38                                          ; $768f: $ff
	ld a, a                                          ; $7690: $7f
	ld hl, sp-$03                                    ; $7691: $f8 $fd
	ld e, a                                          ; $7693: $5f
	ld a, c                                          ; $7694: $79
	db $e4                                           ; $7695: $e4
	add d                                            ; $7696: $82
	ld hl, sp-$28                                    ; $7697: $f8 $d8
	db $f4                                           ; $7699: $f4
	ei                                               ; $769a: $fb
	db $fd                                           ; $769b: $fd
	ret nz                                           ; $769c: $c0

	ld b, b                                          ; $769d: $40
	ld b, b                                          ; $769e: $40
	ldh a, [$9c]                                     ; $769f: $f0 $9c
	or a                                             ; $76a1: $b7
	di                                               ; $76a2: $f3
	ld sp, $c747                                     ; $76a3: $31 $47 $c7
	adc a                                            ; $76a6: $8f
	xor a                                            ; $76a7: $af
	add a                                            ; $76a8: $87
	ld a, a                                          ; $76a9: $7f
	rst $38                                          ; $76aa: $ff
	rst AddAOntoHL                                          ; $76ab: $ef
	ld a, l                                          ; $76ac: $7d
	ld e, a                                          ; $76ad: $5f
	db $dd                                           ; $76ae: $dd
	rst SubAFromDE                                          ; $76af: $df
	db $fd                                           ; $76b0: $fd
	cp $fd                                           ; $76b1: $fe $fd
	adc [hl]                                         ; $76b3: $8e
	db $dd                                           ; $76b4: $dd
	rst $38                                          ; $76b5: $ff
	rst SubAFromDE                                          ; $76b6: $df
	cp h                                             ; $76b7: $bc
	rst SubAFromDE                                          ; $76b8: $df
	cp c                                             ; $76b9: $b9
	ld a, a                                          ; $76ba: $7f
	db $ed                                           ; $76bb: $ed
	sbc [hl]                                         ; $76bc: $9e
	rra                                              ; $76bd: $1f
	call c, $889f                                    ; $76be: $dc $9f $88
	call nz, $f0eb                                   ; $76c1: $c4 $eb $f0
	rst JumpTable                                          ; $76c4: $c7
	add c                                            ; $76c5: $81
	sub h                                            ; $76c6: $94
	adc d                                            ; $76c7: $8a
	sub a                                            ; $76c8: $97
	ei                                               ; $76c9: $fb
	rst FarCall                                          ; $76ca: $f7
	rst $38                                          ; $76cb: $ff
	ld hl, sp-$02                                    ; $76cc: $f8 $fe
	db $eb                                           ; $76ce: $eb
	push af                                          ; $76cf: $f5
	add sp, $0e                                      ; $76d0: $e8 $0e
	sbc b                                            ; $76d2: $98
	ld h, d                                          ; $76d3: $62
	ccf                                              ; $76d4: $3f
	ld l, e                                          ; $76d5: $6b
	rlca                                             ; $76d6: $07
	cpl                                              ; $76d7: $2f
	ld a, e                                          ; $76d8: $7b
	ld a, c                                          ; $76d9: $79
	ld a, a                                          ; $76da: $7f
	cp l                                             ; $76db: $bd
	sub d                                            ; $76dc: $92
	sub h                                            ; $76dd: $94
	ld hl, sp-$2c                                    ; $76de: $f8 $d4
	cp c                                             ; $76e0: $b9
	xor $f7                                          ; $76e1: $ee $f7
	rst $38                                          ; $76e3: $ff
	ld a, a                                          ; $76e4: $7f
	ld a, [hl]                                       ; $76e5: $7e
	rst $38                                          ; $76e6: $ff
	ld h, a                                          ; $76e7: $67
	ld e, a                                          ; $76e8: $5f
	rst FarCall                                          ; $76e9: $f7
	db $dd                                           ; $76ea: $dd
	rst $38                                          ; $76eb: $ff
	ld a, l                                          ; $76ec: $7d
	call $e780                                       ; $76ed: $cd $80 $e7
	cp a                                             ; $76f0: $bf
	cp a                                             ; $76f1: $bf
	sbc a                                            ; $76f2: $9f
	adc a                                            ; $76f3: $8f
	adc h                                            ; $76f4: $8c
	sbc d                                            ; $76f5: $9a
	dec e                                            ; $76f6: $1d
	adc e                                            ; $76f7: $8b

Jump_042_76f8:
	db $e3                                           ; $76f8: $e3
	pop hl                                           ; $76f9: $e1
	di                                               ; $76fa: $f3
	db $fc                                           ; $76fb: $fc
	ld hl, sp-$10                                    ; $76fc: $f8 $f0
	ld hl, sp+$7b                                    ; $76fe: $f8 $7b
	ld h, b                                          ; $7700: $60
	ld h, b                                          ; $7701: $60
	ldh [$c0], a                                     ; $7702: $e0 $c0
	rst $38                                          ; $7704: $ff
	add d                                            ; $7705: $82
	add d                                            ; $7706: $82
	nop                                              ; $7707: $00
	ccf                                              ; $7708: $3f
	jr nz, jr_042_774a                               ; $7709: $20 $3f

	ld a, a                                          ; $770b: $7f
	rst $38                                          ; $770c: $ff
	jp $ffdf                                         ; $770d: $c3 $df $ff


	db $dd                                           ; $7710: $dd
	ld bc, $e19e                                     ; $7711: $01 $9e $e1
	sbc $01                                          ; $7714: $de $01
	sbc e                                            ; $7716: $9b
	ld sp, hl                                        ; $7717: $f9
	add c                                            ; $7718: $81
	db $fd                                           ; $7719: $fd
	jp hl                                            ; $771a: $e9


	db $dd                                           ; $771b: $dd
	rst $38                                          ; $771c: $ff
	add b                                            ; $771d: $80
	di                                               ; $771e: $f3
	ld [$ffea], a                                    ; $771f: $ea $ea $ff
	ldh [c], a                                       ; $7722: $e2
	rst JumpTable                                          ; $7723: $c7
	jp z, $33cf                                      ; $7724: $ca $cf $33

	ld a, e                                          ; $7727: $7b
	ld a, a                                          ; $7728: $7f
	ld a, a                                          ; $7729: $7f
	ld h, l                                          ; $772a: $65
	ld c, b                                          ; $772b: $48
	ld d, h                                          ; $772c: $54
	ld d, b                                          ; $772d: $50
	db $fc                                           ; $772e: $fc
	db $e4                                           ; $772f: $e4
	add sp, -$04                                     ; $7730: $e8 $fc
	ld sp, hl                                        ; $7732: $f9
	ld hl, sp-$50                                    ; $7733: $f8 $b0
	ld [hl], b                                       ; $7735: $70
	rst $38                                          ; $7736: $ff
	cpl                                              ; $7737: $2f
	cpl                                              ; $7738: $2f
	ccf                                              ; $7739: $3f
	ccf                                              ; $773a: $3f
	sbc a                                            ; $773b: $9f
	ld e, a                                          ; $773c: $5f
	adc b                                            ; $773d: $88
	sbc a                                            ; $773e: $9f
	nop                                              ; $773f: $00
	ld a, a                                          ; $7740: $7f
	inc b                                            ; $7741: $04
	ld bc, $17ff                                     ; $7742: $01 $ff $17
	nop                                              ; $7745: $00
	nop                                              ; $7746: $00
	pop bc                                           ; $7747: $c1
	add b                                            ; $7748: $80
	ei                                               ; $7749: $fb

jr_042_774a:
	cp $f7                                           ; $774a: $fe $f7
	add sp, $33                                      ; $774c: $e8 $33
	ldh a, [rIE]                                     ; $774e: $f0 $ff
	ld a, a                                          ; $7750: $7f
	rra                                              ; $7751: $1f
	rrca                                             ; $7752: $0f
	db $e3                                           ; $7753: $e3
	db $fd                                           ; $7754: $fd
	halt                                             ; $7755: $76
	add b                                            ; $7756: $80
	sub a                                            ; $7757: $97
	ld a, a                                          ; $7758: $7f
	sbc a                                            ; $7759: $9f
	rst $38                                          ; $775a: $ff
	inc bc                                           ; $775b: $03
	rst $38                                          ; $775c: $ff
	ld b, e                                          ; $775d: $43
	rst AddAOntoHL                                          ; $775e: $ef
	rst SubAFromDE                                          ; $775f: $df
	ld a, c                                          ; $7760: $79
	dec c                                            ; $7761: $0d
	sbc h                                            ; $7762: $9c
	rst $38                                          ; $7763: $ff
	dec sp                                           ; $7764: $3b
	dec a                                            ; $7765: $3d
	db $db                                           ; $7766: $db
	rst $38                                          ; $7767: $ff
	sbc e                                            ; $7768: $9b

jr_042_7769:
	rst JumpTable                                          ; $7769: $c7
	jp nz, $ddee                                     ; $776a: $c2 $ee $dd

	ld a, d                                          ; $776d: $7a
	nop                                              ; $776e: $00
	ld a, [hl]                                       ; $776f: $7e
	ld a, $9e                                        ; $7770: $3e $9e
	cp h                                             ; $7772: $bc
	jp c, $99ff                                      ; $7773: $da $ff $99

	ld b, e                                          ; $7776: $43
	cp h                                             ; $7777: $bc
	ld a, h                                          ; $7778: $7c
	ei                                               ; $7779: $fb
	jp Jump_042_7bfe                                 ; $777a: $c3 $fe $7b


	ld d, e                                          ; $777d: $53
	ld a, l                                          ; $777e: $7d

Call_042_777f:
	db $f4                                           ; $777f: $f4
	ld a, a                                          ; $7780: $7f
	ld hl, sp+$7e                                    ; $7781: $f8 $7e
	pop de                                           ; $7783: $d1
	sub a                                            ; $7784: $97
	adc l                                            ; $7785: $8d
	adc b                                            ; $7786: $88
	rst $38                                          ; $7787: $ff
	cp $37                                           ; $7788: $fe $37
	rst $38                                          ; $778a: $ff
	rst $38                                          ; $778b: $ff
	ld a, c                                          ; $778c: $79
	ld [hl], a                                       ; $778d: $77
	call z, $a799                                    ; $778e: $cc $99 $a7
	adc a                                            ; $7791: $8f
	ldh [rIE], a                                     ; $7792: $e0 $ff
	rst $38                                          ; $7794: $ff
	rst FarCall                                          ; $7795: $f7
	sbc $82                                          ; $7796: $de $82
	sub a                                            ; $7798: $97
	jp $ffe3                                         ; $7799: $c3 $e3 $ff


	rst FarCall                                          ; $779c: $f7
	ld sp, hl                                        ; $779d: $f9
	add e                                            ; $779e: $83
	add e                                            ; $779f: $83
	jp Jump_042_627b                                 ; $77a0: $c3 $7b $62


	rst SubAFromDE                                          ; $77a3: $df
	rst SubAFromDE                                          ; $77a4: $df
	adc a                                            ; $77a5: $8f
	ld [bc], a                                       ; $77a6: $02
	dec b                                            ; $77a7: $05
	dec bc                                           ; $77a8: $0b
	rrca                                             ; $77a9: $0f
	dec de                                           ; $77aa: $1b
	ld e, $04                                        ; $77ab: $1e $04
	nop                                              ; $77ad: $00
	add [hl]                                         ; $77ae: $86
	inc b                                            ; $77af: $04
	ld [$1819], sp                                   ; $77b0: $08 $19 $18
	rra                                              ; $77b3: $1f
	inc c                                            ; $77b4: $0c
	nop                                              ; $77b5: $00
	ld l, l                                          ; $77b6: $6d
	dec de                                           ; $77b7: $1b
	rst SubAFromDE                                          ; $77b8: $df
	ld a, a                                          ; $77b9: $7f
	sub a                                            ; $77ba: $97
	ld b, a                                          ; $77bb: $47
	ld b, d                                          ; $77bc: $42
	rst JumpTable                                          ; $77bd: $c7
	jp nz, Jump_042_62c7                             ; $77be: $c2 $c7 $62

	ld h, d                                          ; $77c1: $62
	ld a, d                                          ; $77c2: $7a
	sbc $ff                                          ; $77c3: $de $ff
	ld a, a                                          ; $77c5: $7f
	or h                                             ; $77c6: $b4
	sbc $fc                                          ; $77c7: $de $fc
	rst SubAFromDE                                          ; $77c9: $df
	jr c, jr_042_7769                                ; $77ca: $38 $9d

	ld a, $3d                                        ; $77cc: $3e $3d
	sbc $1c                                          ; $77ce: $de $1c
	adc [hl]                                         ; $77d0: $8e
	inc a                                            ; $77d1: $3c
	rst GetHLinHL                                          ; $77d2: $cf
	rst FarCall                                          ; $77d3: $f7
	ld h, a                                          ; $77d4: $67
	rst SubAFromBC                                          ; $77d5: $e7
	db $e3                                           ; $77d6: $e3
	jp $0101                                         ; $77d7: $c3 $01 $01


	call Call_042_7d6e                               ; $77da: $cd $6e $7d
	or [hl]                                          ; $77dd: $b6
	rst FarCall                                          ; $77de: $f7
	ld h, e                                          ; $77df: $63
	ld bc, $de7f                                     ; $77e0: $01 $7f $de
	ld sp, hl                                        ; $77e3: $f9
	sbc d                                            ; $77e4: $9a

Jump_042_77e5:
	ei                                               ; $77e5: $fb
	di                                               ; $77e6: $f3
	di                                               ; $77e7: $f3
	rst FarCall                                          ; $77e8: $f7
	rst FarCall                                          ; $77e9: $f7
	db $dd                                           ; $77ea: $dd
	sbc a                                            ; $77eb: $9f
	sbc $df                                          ; $77ec: $de $df
	add b                                            ; $77ee: $80
	sbc a                                            ; $77ef: $9f
	ld l, $5c                                        ; $77f0: $2e $5c
	dec a                                            ; $77f2: $3d
	ld d, a                                          ; $77f3: $57
	dec hl                                           ; $77f4: $2b
	ld d, c                                          ; $77f5: $51
	dec a                                            ; $77f6: $3d
	dec a                                            ; $77f7: $3d
	pop de                                           ; $77f8: $d1
	and e                                            ; $77f9: $a3
	jp $dfaf                                         ; $77fa: $c3 $af $df


	xor [hl]                                         ; $77fd: $ae
	jp nz, Jump_042_7ec2                             ; $77fe: $c2 $c2 $7e

	call c, Call_042_79bd                            ; $7801: $dc $bd $79
	rst $38                                          ; $7804: $ff
	di                                               ; $7805: $f3
	rst AddAOntoHL                                          ; $7806: $ef
	rst SubAFromDE                                          ; $7807: $df
	pop hl                                           ; $7808: $e1
	db $e3                                           ; $7809: $e3
	jp $0287                                         ; $780a: $c3 $87 $02


	ld c, $9d                                        ; $780d: $0e $9d
	ld d, $2e                                        ; $780f: $16 $2e
	sbc $ff                                          ; $7811: $de $ff
	adc l                                            ; $7813: $8d
	ld hl, sp-$12                                    ; $7814: $f8 $ee
	ldh [$e0], a                                     ; $7816: $e0 $e0
	ld h, b                                          ; $7818: $60
	ld a, a                                          ; $7819: $7f
	ld a, a                                          ; $781a: $7f
	ld b, b                                          ; $781b: $40
	ld b, a                                          ; $781c: $47
	ld d, c                                          ; $781d: $51
	ld e, a                                          ; $781e: $5f
	ld a, a                                          ; $781f: $7f
	rst $38                                          ; $7820: $ff
	ld hl, sp-$40                                    ; $7821: $f8 $c0
	rst $38                                          ; $7823: $ff
	rst $38                                          ; $7824: $ff
	rra                                              ; $7825: $1f
	ld [hl], h                                       ; $7826: $74
	ld sp, hl                                        ; $7827: $f9
	sbc h                                            ; $7828: $9c
	ld hl, sp+$03                                    ; $7829: $f8 $03
	nop                                              ; $782b: $00
	ld a, e                                          ; $782c: $7b
	ld h, b                                          ; $782d: $60
	sbc c                                            ; $782e: $99
	rst $38                                          ; $782f: $ff
	rrca                                             ; $7830: $0f
	nop                                              ; $7831: $00
	ld e, a                                          ; $7832: $5f
	rst $38                                          ; $7833: $ff
	ret nz                                           ; $7834: $c0

	cp $7c                                           ; $7835: $fe $7c
	ld d, [hl]                                       ; $7837: $56
	ld a, [hl]                                       ; $7838: $7e
	dec d                                            ; $7839: $15
	ld [hl], h                                       ; $783a: $74
	adc [hl]                                         ; $783b: $8e
	rst $38                                          ; $783c: $ff
	sbc l                                            ; $783d: $9d
	ret c                                            ; $783e: $d8

	db $e3                                           ; $783f: $e3
	cp $9e                                           ; $7840: $fe $9e
	rrca                                             ; $7842: $0f
	sbc $ff                                          ; $7843: $de $ff
	sbc [hl]                                         ; $7845: $9e
	inc e                                            ; $7846: $1c
	sbc $ff                                          ; $7847: $de $ff
	adc d                                            ; $7849: $8a
	ldh a, [$de]                                     ; $784a: $f0 $de
	db $ed                                           ; $784c: $ed
	ld e, [hl]                                       ; $784d: $5e
	ld a, l                                          ; $784e: $7d
	ld a, [hl-]                                      ; $784f: $3a
	dec a                                            ; $7850: $3d
	dec sp                                           ; $7851: $3b
	dec [hl]                                         ; $7852: $35
	pop hl                                           ; $7853: $e1
	jp nc, $c2e1                                     ; $7854: $d2 $e1 $c2

	push bc                                          ; $7857: $c5
	jp nz, $eae4                                     ; $7858: $c2 $e4 $ea

	or b                                             ; $785b: $b0
	ld [hl], b                                       ; $785c: $70
	pop af                                           ; $785d: $f1
	ld [hl], b                                       ; $785e: $70
	sbc $e0                                          ; $785f: $de $e0
	ld a, l                                          ; $7861: $7d
	ld e, b                                          ; $7862: $58
	sbc h                                            ; $7863: $9c
	sbc a                                            ; $7864: $9f
	rra                                              ; $7865: $1f
	sbc a                                            ; $7866: $9f
	sbc $1f                                          ; $7867: $de $1f
	ld a, [hl]                                       ; $7869: $7e
	ret nz                                           ; $786a: $c0

	sub l                                            ; $786b: $95
	ld bc, $0074                                     ; $786c: $01 $74 $00
	ld bc, $0001                                     ; $786f: $01 $01 $00
	or b                                             ; $7872: $b0
	db $fc                                           ; $7873: $fc
	cp $ff                                           ; $7874: $fe $ff
	ld [hl], a                                       ; $7876: $77
	cp $92                                           ; $7877: $fe $92
	ld c, a                                          ; $7879: $4f
	inc bc                                           ; $787a: $03
	inc bc                                           ; $787b: $03
	inc sp                                           ; $787c: $33
	ld b, e                                          ; $787d: $43
	inc bc                                           ; $787e: $03
	add e                                            ; $787f: $83
	jp nz, $6362                                     ; $7880: $c2 $62 $63

	inc sp                                           ; $7883: $33
	rst GetHLinHL                                          ; $7884: $cf
	scf                                              ; $7885: $37
	sbc $7f                                          ; $7886: $de $7f
	sbc c                                            ; $7888: $99
	cp a                                             ; $7889: $bf
	ccf                                              ; $788a: $3f
	ld a, [hl]                                       ; $788b: $7e
	ret nz                                           ; $788c: $c0

	sbc a                                            ; $788d: $9f
	rst SubAFromBC                                          ; $788e: $e7
	sbc $f3                                          ; $788f: $de $f3
	sbc h                                            ; $7891: $9c
	ret nz                                           ; $7892: $c0

	add c                                            ; $7893: $81
	ccf                                              ; $7894: $3f
	ld a, d                                          ; $7895: $7a
	and [hl]                                         ; $7896: $a6
	rst SubAFromDE                                          ; $7897: $df
	rrca                                             ; $7898: $0f
	sub l                                            ; $7899: $95
	db $f4                                           ; $789a: $f4
	ld hl, $fdc7                                     ; $789b: $21 $c7 $fd
	db $fd                                           ; $789e: $fd
	jp $ffdd                                         ; $789f: $c3 $dd $ff


	dec bc                                           ; $78a2: $0b
	rst SubAFromDE                                          ; $78a3: $df
	db $dd                                           ; $78a4: $dd
	rst $38                                          ; $78a5: $ff
	sub b                                            ; $78a6: $90
	db $e3                                           ; $78a7: $e3
	pop bc                                           ; $78a8: $c1
	sbc l                                            ; $78a9: $9d
	di                                               ; $78aa: $f3
	or $fd                                           ; $78ab: $f6 $fd
	or e                                             ; $78ad: $b3
	ccf                                              ; $78ae: $3f
	rst JumpTable                                          ; $78af: $c7
	add a                                            ; $78b0: $87
	sbc b                                            ; $78b1: $98
	sbc b                                            ; $78b2: $98
	or c                                             ; $78b3: $b1
	db $e3                                           ; $78b4: $e3
	rst AddAOntoHL                                          ; $78b5: $ef
	ld a, d                                          ; $78b6: $7a
	ret                                              ; $78b7: $c9


	add b                                            ; $78b8: $80
	rst SubAFromDE                                          ; $78b9: $df
	ld e, a                                          ; $78ba: $5f
	cp $fd                                           ; $78bb: $fe $fd
	cp c                                             ; $78bd: $b9
	ld a, d                                          ; $78be: $7a
	halt                                             ; $78bf: $76
	inc a                                            ; $78c0: $3c
	ld h, a                                          ; $78c1: $67
	ldh [$c1], a                                     ; $78c2: $e0 $c1

Call_042_78c4:
	jp nz, $85c6                                     ; $78c4: $c2 $c6 $85

	adc c                                            ; $78c7: $89
	jp $dcfc                                         ; $78c8: $c3 $fc $dc


	db $fc                                           ; $78cb: $fc
	db $ec                                           ; $78cc: $ec
	ld a, d                                          ; $78cd: $7a
	ld a, d                                          ; $78ce: $7a
	or $f0                                           ; $78cf: $f6 $f0
	ld c, a                                          ; $78d1: $4f
	ld h, h                                          ; $78d2: $64
	ld h, h                                          ; $78d3: $64
	halt                                             ; $78d4: $76
	cp $fa                                           ; $78d5: $fe $fa
	cp $9e                                           ; $78d7: $fe $9e
	db $fc                                           ; $78d9: $fc
	db $fd                                           ; $78da: $fd
	sbc e                                            ; $78db: $9b
	ld bc, $1f07                                     ; $78dc: $01 $07 $1f
	ld a, a                                          ; $78df: $7f
	ld [hl], a                                       ; $78e0: $77
	ld sp, hl                                        ; $78e1: $f9
	sub a                                            ; $78e2: $97
	ld b, $18                                        ; $78e3: $06 $18
	ld h, b                                          ; $78e5: $60
	add b                                            ; $78e6: $80
	ld [hl], a                                       ; $78e7: $77
	scf                                              ; $78e8: $37
	cpl                                              ; $78e9: $2f
	ld a, [hl]                                       ; $78ea: $7e
	sbc $df                                          ; $78eb: $de $df
	sub h                                            ; $78ed: $94
	rst AddAOntoHL                                          ; $78ee: $ef
	ld h, a                                          ; $78ef: $67
	ld [hl], d                                       ; $78f0: $72
	ld l, a                                          ; $78f1: $6f
	xor [hl]                                         ; $78f2: $ae
	ld [hl], $36                                     ; $78f3: $36 $36
	ld a, $1f                                        ; $78f5: $3e $1f
	call z, Call_042_7a38                            ; $78f7: $cc $38 $7a
	ld h, d                                          ; $78fa: $62
	rst SubAFromDE                                          ; $78fb: $df
	di                                               ; $78fc: $f3
	sbc c                                            ; $78fd: $99
	rst SubAFromBC                                          ; $78fe: $e7

Call_042_78ff:
	rst JumpTable                                          ; $78ff: $c7
	rra                                              ; $7900: $1f
	ld hl, sp-$07                                    ; $7901: $f8 $f9
	ei                                               ; $7903: $fb
	ld [hl], e                                       ; $7904: $73
	jr nc, jr_042_7980                               ; $7905: $30 $79

	dec a                                            ; $7907: $3d
	call c, Call_042_73ff                            ; $7908: $dc $ff $73
	ld sp, hl                                        ; $790b: $f9
	sub d                                            ; $790c: $92
	cp $fb                                           ; $790d: $fe $fb
	ld sp, hl                                        ; $790f: $f9
	ldh a, [$f8]                                     ; $7910: $f0 $f8
	ldh a, [$fe]                                     ; $7912: $f0 $fe
	rst FarCall                                          ; $7914: $f7
	ret nz                                           ; $7915: $c0

	sbc a                                            ; $7916: $9f
	rst SubAFromDE                                          ; $7917: $df
	db $db                                           ; $7918: $db
	di                                               ; $7919: $f3
	ld a, d                                          ; $791a: $7a
	push hl                                          ; $791b: $e5
	sbc c                                            ; $791c: $99
	ccf                                              ; $791d: $3f
	cp a                                             ; $791e: $bf
	db $fd                                           ; $791f: $fd
	ld a, [$3f7c]                                    ; $7920: $fa $7c $3f
	sbc $1f                                          ; $7923: $de $1f
	sbc h                                            ; $7925: $9c

jr_042_7926:
	ret nz                                           ; $7926: $c0

	jp nz, Jump_042_77e5                             ; $7927: $c2 $e5 $77

	pop de                                           ; $792a: $d1
	sub l                                            ; $792b: $95
	rst $38                                          ; $792c: $ff
	xor a                                            ; $792d: $af
	ld e, e                                          ; $792e: $5b
	cp e                                             ; $792f: $bb
	ld l, h                                          ; $7930: $6c
	rst SubAFromHL                                          ; $7931: $d7
	xor a                                            ; $7932: $af
	rst $38                                          ; $7933: $ff
	db $fd                                           ; $7934: $fd
	ld e, h                                          ; $7935: $5c
	ld a, d                                          ; $7936: $7a
	daa                                              ; $7937: $27
	db $dd                                           ; $7938: $dd
	rst $38                                          ; $7939: $ff
	rst SubAFromDE                                          ; $793a: $df
	ld h, b                                          ; $793b: $60
	ld a, [hl]                                       ; $793c: $7e
	pop hl                                           ; $793d: $e1
	sbc h                                            ; $793e: $9c
	sub b                                            ; $793f: $90
	ccf                                              ; $7940: $3f
	rrca                                             ; $7941: $0f
	ld a, e                                          ; $7942: $7b
	jp $d27e                                         ; $7943: $c3 $7e $d2


	add c                                            ; $7946: $81
	rst AddAOntoHL                                          ; $7947: $ef
	ret nz                                           ; $7948: $c0

	ldh a, [rIE]                                     ; $7949: $f0 $ff
	nop                                              ; $794b: $00
	ld bc, $00b8                                     ; $794c: $01 $b8 $00
	ld a, [hl]                                       ; $794f: $7e
	ldh a, [$c0]                                     ; $7950: $f0 $c0
	rlca                                             ; $7952: $07
	rst $38                                          ; $7953: $ff
	rst $38                                          ; $7954: $ff
	ld b, a                                          ; $7955: $47
	rst $38                                          ; $7956: $ff
	add c                                            ; $7957: $81
	rrca                                             ; $7958: $0f
	ccf                                              ; $7959: $3f
	ld hl, sp+$00                                    ; $795a: $f8 $00
	cp a                                             ; $795c: $bf
	ld a, a                                          ; $795d: $7f
	ld [bc], a                                       ; $795e: $02
	nop                                              ; $795f: $00
	ld [bc], a                                       ; $7960: $02
	add e                                            ; $7961: $83
	jp nz, rIE                                     ; $7962: $c2 $ff $ff

	ld a, b                                          ; $7965: $78
	db $dd                                           ; $7966: $dd
	ld a, [hl]                                       ; $7967: $7e
	scf                                              ; $7968: $37
	sbc h                                            ; $7969: $9c
	ccf                                              ; $796a: $3f
	nop                                              ; $796b: $00
	rst $38                                          ; $796c: $ff
	ld [hl], e                                       ; $796d: $73
	ld e, l                                          ; $796e: $5d
	ld a, l                                          ; $796f: $7d
	add $79                                          ; $7970: $c6 $79
	jp $ffdd                                         ; $7972: $c3 $dd $ff


	adc l                                            ; $7975: $8d
	ld a, [hl-]                                      ; $7976: $3a
	db $f4                                           ; $7977: $f4
	jr z, jr_042_79aa                                ; $7978: $28 $30

	jr nz, jr_042_799c                               ; $797a: $20 $20

	jr jr_042_799c                                   ; $797c: $18 $1e

	push hl                                          ; $797e: $e5
	db $eb                                           ; $797f: $eb

jr_042_7980:
	db $f4                                           ; $7980: $f4
	add sp, -$08                                     ; $7981: $e8 $f8
	rst $38                                          ; $7983: $ff
	rst FarCall                                          ; $7984: $f7
	ld hl, sp-$60                                    ; $7985: $f8 $a0

Jump_042_7987:
	ccf                                              ; $7987: $3f
	db $dd                                           ; $7988: $dd
	jr nz, jr_042_7926                               ; $7989: $20 $9b

	ld b, b                                          ; $798b: $40
	add c                                            ; $798c: $81
	ld a, a                                          ; $798d: $7f
	rst $38                                          ; $798e: $ff
	sbc $3f                                          ; $798f: $de $3f
	ld a, e                                          ; $7991: $7b
	rst GetHLinHL                                          ; $7992: $cf
	sbc e                                            ; $7993: $9b
	cp b                                             ; $7994: $b8
	rst $38                                          ; $7995: $ff
	rst FarCall                                          ; $7996: $f7
	ld b, d                                          ; $7997: $42
	cp $9b                                           ; $7998: $fe $9b
	add b                                            ; $799a: $80
	ld b, a                                          ; $799b: $47

jr_042_799c:
	rst $38                                          ; $799c: $ff
	ld [$a779], sp                                   ; $799d: $08 $79 $a7
	rst SubAFromDE                                          ; $79a0: $df
	rst $38                                          ; $79a1: $ff
	sbc e                                            ; $79a2: $9b
	ld [hl-], a                                      ; $79a3: $32
	cp $0e                                           ; $79a4: $fe $0e
	ld d, $dd                                        ; $79a6: $16 $dd
	ld [bc], a                                       ; $79a8: $02
	ld a, [hl]                                       ; $79a9: $7e

jr_042_79aa:
	pop hl                                           ; $79aa: $e1
	sbc l                                            ; $79ab: $9d
	di                                               ; $79ac: $f3
	db $eb                                           ; $79ad: $eb
	db $dd                                           ; $79ae: $dd
	rst $38                                          ; $79af: $ff
	sbc d                                            ; $79b0: $9a
	or $f5                                           ; $79b1: $f6 $f5
	pop af                                           ; $79b3: $f1
	di                                               ; $79b4: $f3
	rst SubAFromBC                                          ; $79b5: $e7
	halt                                             ; $79b6: $76
	ld e, b                                          ; $79b7: $58
	rst SubAFromDE                                          ; $79b8: $df
	rrca                                             ; $79b9: $0f
	sbc l                                            ; $79ba: $9d
	dec c                                            ; $79bb: $0d
	add hl, de                                       ; $79bc: $19

Call_042_79bd:
	sbc $01                                          ; $79bd: $de $01
	sbc $ff                                          ; $79bf: $de $ff
	rst SubAFromDE                                          ; $79c1: $df
	rst SubAFromDE                                          ; $79c2: $df
	rst SubAFromDE                                          ; $79c3: $df
	db $dd                                           ; $79c4: $dd
	sbc [hl]                                         ; $79c5: $9e
	reti                                             ; $79c6: $d9


	sbc $c1                                          ; $79c7: $de $c1
	rst SubAFromDE                                          ; $79c9: $df
	pop hl                                           ; $79ca: $e1
	rst SubAFromDE                                          ; $79cb: $df
	db $e3                                           ; $79cc: $e3
	sbc d                                            ; $79cd: $9a
	rst SubAFromBC                                          ; $79ce: $e7
	sbc e                                            ; $79cf: $9b
	rst $38                                          ; $79d0: $ff
	rst $38                                          ; $79d1: $ff
	adc a                                            ; $79d2: $8f
	db $dd                                           ; $79d3: $dd
	add e                                            ; $79d4: $83
	ld a, a                                          ; $79d5: $7f
	call c, Call_042_7278                            ; $79d6: $dc $78 $72
	ld l, a                                          ; $79d9: $6f
	ld a, [de]                                       ; $79da: $1a
	sbc e                                            ; $79db: $9b
	cp l                                             ; $79dc: $bd
	ld e, e                                          ; $79dd: $5b
	cp l                                             ; $79de: $bd
	ld e, e                                          ; $79df: $5b
	ld [hl], l                                       ; $79e0: $75
	ld a, a                                          ; $79e1: $7f
	adc e                                            ; $79e2: $8b
	ld a, e                                          ; $79e3: $7b
	dec a                                            ; $79e4: $3d
	ld e, e                                          ; $79e5: $5b
	scf                                              ; $79e6: $37
	ld e, a                                          ; $79e7: $5f
	ldh [$e0], a                                     ; $79e8: $e0 $e0
	ldh a, [$fc]                                     ; $79ea: $f0 $fc
	rst $38                                          ; $79ec: $ff
	ccf                                              ; $79ed: $3f
	ld c, e                                          ; $79ee: $4b
	nop                                              ; $79ef: $00
	ldh a, [$e0]                                     ; $79f0: $f0 $e0
	ldh a, [$8c]                                     ; $79f2: $f0 $8c
	add e                                            ; $79f4: $83
	ret nz                                           ; $79f5: $c0

	or h                                             ; $79f6: $b4
	ld [hl], a                                       ; $79f7: $77
	rst SubAFromDE                                          ; $79f8: $df
	sub c                                            ; $79f9: $91
	rlca                                             ; $79fa: $07
	nop                                              ; $79fb: $00
	rlca                                             ; $79fc: $07
	rlca                                             ; $79fd: $07
	ld bc, $ff00                                     ; $79fe: $01 $00 $ff
	rrca                                             ; $7a01: $0f
	ld hl, sp-$01                                    ; $7a02: $f8 $ff
	ei                                               ; $7a04: $fb
	ld hl, sp-$01                                    ; $7a05: $f8 $ff
	di                                               ; $7a07: $f3
	ld l, a                                          ; $7a08: $6f
	ld d, [hl]                                       ; $7a09: $56
	adc [hl]                                         ; $7a0a: $8e
	db $fd                                           ; $7a0b: $fd
	rrca                                             ; $7a0c: $0f
	rst $38                                          ; $7a0d: $ff
	cp $02                                           ; $7a0e: $fe $02
	cp $ff                                           ; $7a10: $fe $ff
	ld a, a                                          ; $7a12: $7f
	di                                               ; $7a13: $f3
	db $e3                                           ; $7a14: $e3
	ldh [$fe], a                                     ; $7a15: $e0 $fe
	ldh [$f8], a                                     ; $7a17: $e0 $f8
	db $fc                                           ; $7a19: $fc
	rst $38                                          ; $7a1a: $ff
	rst $38                                          ; $7a1b: $ff
	ld a, e                                          ; $7a1c: $7b
	db $fd                                           ; $7a1d: $fd
	sub d                                            ; $7a1e: $92
	rst $38                                          ; $7a1f: $ff
	rst SubAFromBC                                          ; $7a20: $e7
	ld [hl], e                                       ; $7a21: $73
	rst $38                                          ; $7a22: $ff
	db $fc                                           ; $7a23: $fc
	ld hl, sp+$00                                    ; $7a24: $f8 $00
	rst $38                                          ; $7a26: $ff
	ld bc, $0103                                     ; $7a27: $01 $03 $01
	add a                                            ; $7a2a: $87
	ld e, $7b                                        ; $7a2b: $1e $7b
	rrca                                             ; $7a2d: $0f
	sbc $ff                                          ; $7a2e: $de $ff
	sbc l                                            ; $7a30: $9d
	ld a, [hl]                                       ; $7a31: $7e
	db $fd                                           ; $7a32: $fd
	ld a, d                                          ; $7a33: $7a
	or b                                             ; $7a34: $b0
	ld a, [hl]                                       ; $7a35: $7e
	rst AddAOntoHL                                          ; $7a36: $ef
	sbc [hl]                                         ; $7a37: $9e

Call_042_7a38:
	add b                                            ; $7a38: $80
	ld [hl], a                                       ; $7a39: $77
	ld a, [$f97f]                                    ; $7a3a: $fa $7f $f9
	ld a, a                                          ; $7a3d: $7f
	dec b                                            ; $7a3e: $05
	rst SubAFromDE                                          ; $7a3f: $df
	rst $38                                          ; $7a40: $ff
	sbc b                                            ; $7a41: $98
	dec de                                           ; $7a42: $1b
	dec e                                            ; $7a43: $1d
	dec bc                                           ; $7a44: $0b
	dec c                                            ; $7a45: $0d
	dec bc                                           ; $7a46: $0b
	dec c                                            ; $7a47: $0d
	rrca                                             ; $7a48: $0f
	ld [hl], l                                       ; $7a49: $75
	ret nc                                           ; $7a4a: $d0

	call c, $97ff                                    ; $7a4b: $dc $ff $97
	cp $d6                                           ; $7a4e: $fe $d6
	rst AddAOntoHL                                          ; $7a50: $ef
	rst SubAFromHL                                          ; $7a51: $d7
	xor h                                            ; $7a52: $ac
	call c, $d8a8                                    ; $7a53: $dc $a8 $d8
	sbc $ff                                          ; $7a56: $de $ff
	ld [hl], a                                       ; $7a58: $77
	cp l                                             ; $7a59: $bd
	ld a, a                                          ; $7a5a: $7f
	sub c                                            ; $7a5b: $91
	sbc h                                            ; $7a5c: $9c
	ld hl, $87bf                                     ; $7a5d: $21 $bf $87
	db $fd                                           ; $7a60: $fd
	sbc $ff                                          ; $7a61: $de $ff
	sbc [hl]                                         ; $7a63: $9e
	ld a, b                                          ; $7a64: $78
	db $dd                                           ; $7a65: $dd
	rst $38                                          ; $7a66: $ff
	sbc h                                            ; $7a67: $9c
	ccf                                              ; $7a68: $3f
	inc bc                                           ; $7a69: $03
	ld hl, sp+$7a                                    ; $7a6a: $f8 $7a
	ld l, h                                          ; $7a6c: $6c
	rst $38                                          ; $7a6d: $ff
	sbc l                                            ; $7a6e: $9d
	ret nz                                           ; $7a6f: $c0

	db $fc                                           ; $7a70: $fc
	ld l, [hl]                                       ; $7a71: $6e
	ld l, a                                          ; $7a72: $6f
	sbc e                                            ; $7a73: $9b
	ldh [$f3], a                                     ; $7a74: $e0 $f3
	ld [bc], a                                       ; $7a76: $02
	cp $fd                                           ; $7a77: $fe $fd
	ld a, l                                          ; $7a79: $7d
	db $e4                                           ; $7a7a: $e4
	ld a, a                                          ; $7a7b: $7f
	sbc b                                            ; $7a7c: $98
	ld [hl], e                                       ; $7a7d: $73
	ldh [$7e], a                                     ; $7a7e: $e0 $7e
	sub l                                            ; $7a80: $95
	ld a, l                                          ; $7a81: $7d
	ld h, a                                          ; $7a82: $67
	ld l, a                                          ; $7a83: $6f
	ret nc                                           ; $7a84: $d0

	ld [hl], e                                       ; $7a85: $73
	ret nz                                           ; $7a86: $c0

	ld a, b                                          ; $7a87: $78
	and h                                            ; $7a88: $a4
	ld [hl], e                                       ; $7a89: $73
	ret nc                                           ; $7a8a: $d0

	ld h, [hl]                                       ; $7a8b: $66
	ccf                                              ; $7a8c: $3f
	sbc l                                            ; $7a8d: $9d
	ret nz                                           ; $7a8e: $c0

	cp $7b                                           ; $7a8f: $fe $7b
	ld l, l                                          ; $7a91: $6d
	ld l, a                                          ; $7a92: $6f

jr_042_7a93:
	ldh a, [$73]                                     ; $7a93: $f0 $73
	ld l, l                                          ; $7a95: $6d
	sbc [hl]                                         ; $7a96: $9e
	jr jr_042_7a93                                   ; $7a97: $18 $fa

	reti                                             ; $7a99: $d9


	rst $38                                          ; $7a9a: $ff
	sbc h                                            ; $7a9b: $9c
	ld c, $02                                        ; $7a9c: $0e $02
	cp $dc                                           ; $7a9e: $fe $dc
	inc bc                                           ; $7aa0: $03
	ld [hl], d                                       ; $7aa1: $72
	di                                               ; $7aa2: $f3
	sbc $ff                                          ; $7aa3: $de $ff
	ld a, a                                          ; $7aa5: $7f
	cpl                                              ; $7aa6: $2f
	add b                                            ; $7aa7: $80
	add a                                            ; $7aa8: $87
	db $fd                                           ; $7aa9: $fd
	pop af                                           ; $7aaa: $f1
	di                                               ; $7aab: $f3
	db $e3                                           ; $7aac: $e3
	db $e3                                           ; $7aad: $e3
	dec c                                            ; $7aae: $0d
	dec e                                            ; $7aaf: $1d
	ld a, c                                          ; $7ab0: $79
	inc bc                                           ; $7ab1: $03
	rrca                                             ; $7ab2: $0f
	ld c, $1e                                        ; $7ab3: $0e $1e
	ld e, $9b                                        ; $7ab5: $1e $9b
	sbc e                                            ; $7ab7: $9b
	ei                                               ; $7ab8: $fb
	ei                                               ; $7ab9: $fb
	db $fd                                           ; $7aba: $fd
	db $fd                                           ; $7abb: $fd
	rst $38                                          ; $7abc: $ff
	cp $e7                                           ; $7abd: $fe $e7
	rst SubAFromBC                                          ; $7abf: $e7
	add a                                            ; $7ac0: $87
	add a                                            ; $7ac1: $87
	add e                                            ; $7ac2: $83
	add e                                            ; $7ac3: $83
	pop bc                                           ; $7ac4: $c1
	pop bc                                           ; $7ac5: $c1
	add e                                            ; $7ac6: $83
	sbc c                                            ; $7ac7: $99
	add e                                            ; $7ac8: $83
	xor e                                            ; $7ac9: $ab
	add c                                            ; $7aca: $81
	add c                                            ; $7acb: $81
	ret nz                                           ; $7acc: $c0

	ret nz                                           ; $7acd: $c0

	ld [hl], h                                       ; $7ace: $74
	push af                                          ; $7acf: $f5
	call c, $90ff                                    ; $7ad0: $dc $ff $90
	ld e, a                                          ; $7ad3: $5f
	cp e                                             ; $7ad4: $bb
	ld c, a                                          ; $7ad5: $4f
	xor a                                            ; $7ad6: $af
	sub $a6                                          ; $7ad7: $d6 $a6
	sub $6e                                          ; $7ad9: $d6 $6e
	dec sp                                           ; $7adb: $3b
	ld e, a                                          ; $7adc: $5f
	cp e                                             ; $7add: $bb
	sbc a                                            ; $7ade: $9f
	adc a                                            ; $7adf: $8f
	rst SubAFromDE                                          ; $7ae0: $df
	rst AddAOntoHL                                          ; $7ae1: $ef
	ld [hl], c                                       ; $7ae2: $71
	ret nz                                           ; $7ae3: $c0

	ld d, a                                          ; $7ae4: $57
	and b                                            ; $7ae5: $a0
	ccf                                              ; $7ae6: $3f
	nop                                              ; $7ae7: $00
	jp $9e55                                         ; $7ae8: $c3 $55 $9e


	inc sp                                           ; $7aeb: $33
	ld h, e                                          ; $7aec: $63
	rst FarCall                                          ; $7aed: $f7
	sub a                                            ; $7aee: $97
	ld h, [hl]                                       ; $7aef: $66
	ld h, l                                          ; $7af0: $65
	ld d, l                                          ; $7af1: $55
	ld h, h                                          ; $7af2: $64
	ld [hl], $63                                     ; $7af3: $36 $63
	ld d, l                                          ; $7af5: $55
	ld d, [hl]                                       ; $7af6: $56
	db $db                                           ; $7af7: $db
	ld h, [hl]                                       ; $7af8: $66
	sbc h                                            ; $7af9: $9c
	ld h, a                                          ; $7afa: $67
	halt                                             ; $7afb: $76
	ld b, h                                          ; $7afc: $44
	sbc $66                                          ; $7afd: $de $66
	ld [hl], a                                       ; $7aff: $77
	di                                               ; $7b00: $f3
	sbc l                                            ; $7b01: $9d
	ld b, [hl]                                       ; $7b02: $46
	ld h, h                                          ; $7b03: $64
	ld a, e                                          ; $7b04: $7b
	or $8f                                           ; $7b05: $f6 $8f
	ld [hl], l                                       ; $7b07: $75
	ld d, [hl]                                       ; $7b08: $56
	ld [hl], l                                       ; $7b09: $75
	ld d, [hl]                                       ; $7b0a: $56
	ld h, [hl]                                       ; $7b0b: $66
	ld b, h                                          ; $7b0c: $44
	ld d, h                                          ; $7b0d: $54
	ld b, l                                          ; $7b0e: $45
	ld d, [hl]                                       ; $7b0f: $56
	ld h, [hl]                                       ; $7b10: $66
	ld d, l                                          ; $7b11: $55
	ld [hl], a                                       ; $7b12: $77
	ld [hl], l                                       ; $7b13: $75
	ld d, [hl]                                       ; $7b14: $56
	ld h, l                                          ; $7b15: $65
	ld d, l                                          ; $7b16: $55
	ld a, e                                          ; $7b17: $7b
	or $7f                                           ; $7b18: $f6 $7f
	ei                                               ; $7b1a: $fb
	rst SubAFromDE                                          ; $7b1b: $df
	ld d, l                                          ; $7b1c: $55
	sbc [hl]                                         ; $7b1d: $9e
	ld d, a                                          ; $7b1e: $57

Call_042_7b1f:
	ld h, e                                          ; $7b1f: $63
	or $dc                                           ; $7b20: $f6 $dc
	ld d, l                                          ; $7b22: $55
	ld a, e                                          ; $7b23: $7b
	or $16                                           ; $7b24: $f6 $16
	adc e                                            ; $7b26: $8b
	rst SubAFromDE                                          ; $7b27: $df
	rst GetHLinHL                                          ; $7b28: $cf
	sbc c                                            ; $7b29: $99
	sub $45                                          ; $7b2a: $d6 $45
	ld e, d                                          ; $7b2c: $5a
	ld b, l                                          ; $7b2d: $45
	ld b, e                                          ; $7b2e: $43
	ld e, b                                          ; $7b2f: $58
	db $db                                           ; $7b30: $db
	rst $38                                          ; $7b31: $ff
	sub l                                            ; $7b32: $95
	rst SubAFromBC                                          ; $7b33: $e7
	db $e3                                           ; $7b34: $e3
	ccf                                              ; $7b35: $3f
	push de                                          ; $7b36: $d5
	ld [$aa55], a                                    ; $7b37: $ea $55 $aa
	ld d, b                                          ; $7b3a: $50
	xor b                                            ; $7b3b: $a8
	ret nc                                           ; $7b3c: $d0

	ret c                                            ; $7b3d: $d8

	rst $38                                          ; $7b3e: $ff
	sbc b                                            ; $7b3f: $98
	ccf                                              ; $7b40: $3f
	dec de                                           ; $7b41: $1b
	sbc d                                            ; $7b42: $9a
	ld c, c                                          ; $7b43: $49
	xor c                                            ; $7b44: $a9
	ret                                              ; $7b45: $c9


	db $ed                                           ; $7b46: $ed
	sbc $ff                                          ; $7b47: $de $ff
	sub [hl]                                         ; $7b49: $96
	ld a, a                                          ; $7b4a: $7f
	cp a                                             ; $7b4b: $bf
	ld e, a                                          ; $7b4c: $5f
	ccf                                              ; $7b4d: $3f
	dec de                                           ; $7b4e: $1b
	rst $38                                          ; $7b4f: $ff
	rst $38                                          ; $7b50: $ff
	push de                                          ; $7b51: $d5
	cp $d4                                           ; $7b52: $fe $d4
	rst $38                                          ; $7b54: $ff
	ld a, a                                          ; $7b55: $7f
	pop de                                           ; $7b56: $d1
	sbc l                                            ; $7b57: $9d
	xor e                                            ; $7b58: $ab
	rst SubAFromHL                                          ; $7b59: $d7
	sub $ff                                          ; $7b5a: $d6 $ff
	sbc d                                            ; $7b5c: $9a
	rst SubAFromHL                                          ; $7b5d: $d7
	xor a                                            ; $7b5e: $af
	ld d, l                                          ; $7b5f: $55
	xor [hl]                                         ; $7b60: $ae
	push de                                          ; $7b61: $d5
	sbc $ff                                          ; $7b62: $de $ff
	sbc e                                            ; $7b64: $9b
	db $fd                                           ; $7b65: $fd
	ld a, [$fbff]                                    ; $7b66: $fa $ff $fb
	db $dd                                           ; $7b69: $dd
	rst $38                                          ; $7b6a: $ff
	sub [hl]                                         ; $7b6b: $96
	ld [hl], a                                       ; $7b6c: $77
	xor d                                            ; $7b6d: $aa
	ld d, l                                          ; $7b6e: $55
	xor e                                            ; $7b6f: $ab
	ld d, a                                          ; $7b70: $57
	rst $38                                          ; $7b71: $ff
	rst $38                                          ; $7b72: $ff
	ld d, [hl]                                       ; $7b73: $56
	db $dd                                           ; $7b74: $dd
	jp c, $9cff                                      ; $7b75: $da $ff $9c

	ld e, a                                          ; $7b78: $5f
	cp a                                             ; $7b79: $bf
	ld a, a                                          ; $7b7a: $7f
	db $dd                                           ; $7b7b: $dd
	rst $38                                          ; $7b7c: $ff
	sbc [hl]                                         ; $7b7d: $9e
	cp b                                             ; $7b7e: $b8
	jp nc, $9eff                                     ; $7b7f: $d2 $ff $9e

	nop                                              ; $7b82: $00
	rst SubAFromHL                                          ; $7b83: $d7
	rst $38                                          ; $7b84: $ff
	sbc c                                            ; $7b85: $99
	db $fd                                           ; $7b86: $fd
	db $d3                                           ; $7b87: $d3
	db $e4                                           ; $7b88: $e4
	sub b                                            ; $7b89: $90
	rst $38                                          ; $7b8a: $ff
	dec hl                                           ; $7b8b: $2b
	jp c, $96ff                                      ; $7b8c: $da $ff $96

	call nc, rIE                                   ; $7b8f: $d4 $ff $ff
	or a                                             ; $7b92: $b7
	ld c, l                                          ; $7b93: $4d
	xor d                                            ; $7b94: $aa
	dec b                                            ; $7b95: $05
	rst $38                                          ; $7b96: $ff
	cp a                                             ; $7b97: $bf
	jp c, $96ff                                      ; $7b98: $da $ff $96

	ld b, b                                          ; $7b9b: $40
	push af                                          ; $7b9c: $f5
	rst $38                                          ; $7b9d: $ff
	ld a, a                                          ; $7b9e: $7f
	rst $38                                          ; $7b9f: $ff
	xor a                                            ; $7ba0: $af
	ld d, e                                          ; $7ba1: $53
	rst $38                                          ; $7ba2: $ff
	ld b, h                                          ; $7ba3: $44
	jp c, $9aff                                      ; $7ba4: $da $ff $9a

	cp e                                             ; $7ba7: $bb
	ld d, l                                          ; $7ba8: $55
	xor d                                            ; $7ba9: $aa
	ld d, a                                          ; $7baa: $57
	xor a                                            ; $7bab: $af
	sbc $ff                                          ; $7bac: $de $ff
	sbc [hl]                                         ; $7bae: $9e
	ld h, [hl]                                       ; $7baf: $66
	jp c, $9cff                                      ; $7bb0: $da $ff $9c

	sbc a                                            ; $7bb3: $9f
	ld d, h                                          ; $7bb4: $54
	xor e                                            ; $7bb5: $ab
	call c, $9eff                                    ; $7bb6: $dc $ff $9e
	ld l, [hl]                                       ; $7bb9: $6e
	ld h, a                                          ; $7bba: $67
	or e                                             ; $7bbb: $b3
	sbc h                                            ; $7bbc: $9c
	and c                                            ; $7bbd: $a1
	ld d, d                                          ; $7bbe: $52
	db $fd                                           ; $7bbf: $fd
	ld [hl], a                                       ; $7bc0: $77
	ld d, b                                          ; $7bc1: $50
	sbc [hl]                                         ; $7bc2: $9e
	ldh [$d9], a                                     ; $7bc3: $e0 $d9
	rst $38                                          ; $7bc5: $ff
	ld a, a                                          ; $7bc6: $7f
	dec sp                                           ; $7bc7: $3b
	sbc c                                            ; $7bc8: $99
	ld [hl], l                                       ; $7bc9: $75
	ld [$fffd], a                                    ; $7bca: $ea $fd $ff
	rst $38                                          ; $7bcd: $ff
	dec d                                            ; $7bce: $15
	rst SubAFromHL                                          ; $7bcf: $d7
	rst $38                                          ; $7bd0: $ff
	ld [hl], e                                       ; $7bd1: $73
	ld h, b                                          ; $7bd2: $60
	sbc [hl]                                         ; $7bd3: $9e
	rrca                                             ; $7bd4: $0f
	ret c                                            ; $7bd5: $d8

	rst $38                                          ; $7bd6: $ff
	sbc [hl]                                         ; $7bd7: $9e
	xor c                                            ; $7bd8: $a9
	ld [hl], e                                       ; $7bd9: $73
	ld h, b                                          ; $7bda: $60
	ret c                                            ; $7bdb: $d8

	rst $38                                          ; $7bdc: $ff
	add b                                            ; $7bdd: $80
	push bc                                          ; $7bde: $c5
	adc d                                            ; $7bdf: $8a
	dec [hl]                                         ; $7be0: $35
	ld [$2dd5], a                                    ; $7be1: $ea $d5 $2d
	rst SubAFromDE                                          ; $7be4: $df
	cp l                                             ; $7be5: $bd
	ld a, [$eaf5]                                    ; $7be6: $fa $f5 $ea
	push af                                          ; $7be9: $f5
	xor d                                            ; $7bea: $aa
	rst FarCall                                          ; $7beb: $f7
	xor $fb                                          ; $7bec: $ee $fb
	ld d, e                                          ; $7bee: $53
	cp [hl]                                          ; $7bef: $be
	ld a, e                                          ; $7bf0: $7b
	rst $38                                          ; $7bf1: $ff
	di                                               ; $7bf2: $f3
	and a                                            ; $7bf3: $a7
	rst SubAFromDE                                          ; $7bf4: $df
	adc e                                            ; $7bf5: $8b
	xor a                                            ; $7bf6: $af
	ld e, l                                          ; $7bf7: $5d
	or a                                             ; $7bf8: $b7
	ld l, a                                          ; $7bf9: $6f
	rst SubAFromDE                                          ; $7bfa: $df
	ld a, e                                          ; $7bfb: $7b
	rst AddAOntoHL                                          ; $7bfc: $ef
	ld a, a                                          ; $7bfd: $7f

Jump_042_7bfe:
	db $fd                                           ; $7bfe: $fd
	add b                                            ; $7bff: $80
	ld a, a                                          ; $7c00: $7f
	ld [hl], a                                       ; $7c01: $77
	ld l, a                                          ; $7c02: $6f
	scf                                              ; $7c03: $37
	dec sp                                           ; $7c04: $3b
	dec a                                            ; $7c05: $3d
	ccf                                              ; $7c06: $3f
	db $f4                                           ; $7c07: $f4
	ld hl, sp-$12                                    ; $7c08: $f8 $ee
	pop af                                           ; $7c0a: $f1
	add sp, -$0c                                     ; $7c0b: $e8 $f4
	ld a, [$3bff]                                    ; $7c0d: $fa $ff $3b
	dec c                                            ; $7c10: $0d
	add $f1                                          ; $7c11: $c6 $f1
	ld hl, sp-$0c                                    ; $7c13: $f8 $f4
	ld a, e                                          ; $7c15: $7b
	cp l                                             ; $7c16: $bd
	cp $3f                                           ; $7c17: $fe $3f
	rrca                                             ; $7c19: $0f
	rlca                                             ; $7c1a: $07
	pop bc                                           ; $7c1b: $c1
	ld l, d                                          ; $7c1c: $6a
	cp l                                             ; $7c1d: $bd
	ld d, [hl]                                       ; $7c1e: $56
	sub l                                            ; $7c1f: $95
	ld a, e                                          ; $7c20: $7b
	db $db                                           ; $7c21: $db
	xor e                                            ; $7c22: $ab
	ld e, e                                          ; $7c23: $5b
	rst AddAOntoHL                                          ; $7c24: $ef
	dec sp                                           ; $7c25: $3b
	adc e                                            ; $7c26: $8b
	db $e3                                           ; $7c27: $e3
	cp a                                             ; $7c28: $bf
	ccf                                              ; $7c29: $3f
	ld [hl], a                                       ; $7c2a: $77
	add e                                            ; $7c2b: $83
	sbc b                                            ; $7c2c: $98
	rra                                              ; $7c2d: $1f
	and a                                            ; $7c2e: $a7
	jp c, $f8f5                                      ; $7c2f: $da $f5 $f8

	push af                                          ; $7c32: $f5
	ld [$085b], a                                    ; $7c33: $ea $5b $08
	sbc d                                            ; $7c36: $9a
	or l                                             ; $7c37: $b5
	ld c, b                                          ; $7c38: $48
	nop                                              ; $7c39: $00
	ld b, b                                          ; $7c3a: $40
	ldh a, [$5b]                                     ; $7c3b: $f0 $5b
	ldh a, [$9a]                                     ; $7c3d: $f0 $9a
	ld [hl], a                                       ; $7c3f: $77
	adc d                                            ; $7c40: $8a
	nop                                              ; $7c41: $00
	inc e                                            ; $7c42: $1c
	add hl, bc                                       ; $7c43: $09
	db $db                                           ; $7c44: $db
	rst $38                                          ; $7c45: $ff
	sbc [hl]                                         ; $7c46: $9e
	db $e3                                           ; $7c47: $e3
	ld [hl], a                                       ; $7c48: $77
	ldh a, [$9b]                                     ; $7c49: $f0 $9b
	and l                                            ; $7c4b: $a5
	ld l, e                                          ; $7c4c: $6b
	dec h                                            ; $7c4d: $25
	inc bc                                           ; $7c4e: $03
	ld [hl], e                                       ; $7c4f: $73
	ld d, e                                          ; $7c50: $53
	sbc l                                            ; $7c51: $9d
	sbc a                                            ; $7c52: $9f
	rst SubAFromDE                                          ; $7c53: $df
	ld [hl], e                                       ; $7c54: $73
	ldh [$99], a                                     ; $7c55: $e0 $99
	db $e4                                           ; $7c57: $e4
	rst $38                                          ; $7c58: $ff
	cp $fe                                           ; $7c59: $fe $fe
	ld d, l                                          ; $7c5b: $55
	ld a, [$d05f]                                    ; $7c5c: $fa $5f $d0
	sub l                                            ; $7c5f: $95
	nop                                              ; $7c60: $00
	inc d                                            ; $7c61: $14
	nop                                              ; $7c62: $00
	ld b, $0d                                        ; $7c63: $06 $0d
	nop                                              ; $7c65: $00
	ld sp, hl                                        ; $7c66: $f9
	rst $38                                          ; $7c67: $ff
	rst $38                                          ; $7c68: $ff
	db $eb                                           ; $7c69: $eb
	ld l, a                                          ; $7c6a: $6f
	ldh a, [hDisp1_LCDC]                                     ; $7c6b: $f0 $8f
	rla                                              ; $7c6d: $17
	xor a                                            ; $7c6e: $af
	rra                                              ; $7c6f: $1f
	xor a                                            ; $7c70: $af
	ld e, a                                          ; $7c71: $5f
	rlca                                             ; $7c72: $07
	nop                                              ; $7c73: $00
	rst SubAFromHL                                          ; $7c74: $d7
	add sp, $50                                      ; $7c75: $e8 $50
	ldh [$50], a                                     ; $7c77: $e0 $50
	and b                                            ; $7c79: $a0
	ld hl, sp-$01                                    ; $7c7a: $f8 $ff
	nop                                              ; $7c7c: $00
	ld a, e                                          ; $7c7d: $7b
	inc bc                                           ; $7c7e: $03
	sbc c                                            ; $7c7f: $99
	rst SubAFromDE                                          ; $7c80: $df
	xor a                                            ; $7c81: $af
	rst JumpTable                                          ; $7c82: $c7
	cp h                                             ; $7c83: $bc
	ld l, d                                          ; $7c84: $6a
	ld bc, $99fd                                     ; $7c85: $01 $fd $99
	db $10                                           ; $7c88: $10
	inc bc                                           ; $7c89: $03
	nop                                              ; $7c8a: $00
	xor d                                            ; $7c8b: $aa
	push de                                          ; $7c8c: $d5
	ld [$367b], a                                    ; $7c8d: $ea $7b $36
	add b                                            ; $7c90: $80
	rra                                              ; $7c91: $1f
	xor e                                            ; $7c92: $ab
	ld d, l                                          ; $7c93: $55
	ld a, [hl+]                                      ; $7c94: $2a
	dec d                                            ; $7c95: $15
	ld a, [bc]                                       ; $7c96: $0a
	dec d                                            ; $7c97: $15
	ld a, [bc]                                       ; $7c98: $0a
	rst $38                                          ; $7c99: $ff
	nop                                              ; $7c9a: $00
	sbc [hl]                                         ; $7c9b: $9e
	ld b, [hl]                                       ; $7c9c: $46
	add h                                            ; $7c9d: $84
	ld d, h                                          ; $7c9e: $54
	xor b                                            ; $7c9f: $a8
	ld e, h                                          ; $7ca0: $5c
	rst $38                                          ; $7ca1: $ff
	db $fd                                           ; $7ca2: $fd
	ld a, c                                          ; $7ca3: $79
	cp a                                             ; $7ca4: $bf
	ld a, e                                          ; $7ca5: $7b
	xor e                                            ; $7ca6: $ab
	ld d, a                                          ; $7ca7: $57
	cp a                                             ; $7ca8: $bf
	db $ec                                           ; $7ca9: $ec
	inc b                                            ; $7caa: $04
	ld d, $6d                                        ; $7cab: $16 $6d
	scf                                              ; $7cad: $37
	ld d, [hl]                                       ; $7cae: $56
	nop                                              ; $7caf: $00
	sbc [hl]                                         ; $7cb0: $9e
	ld d, l                                          ; $7cb1: $55
	ld a, d                                          ; $7cb2: $7a
	sbc e                                            ; $7cb3: $9b
	ld l, e                                          ; $7cb4: $6b
	and b                                            ; $7cb5: $a0
	ld a, l                                          ; $7cb6: $7d
	push af                                          ; $7cb7: $f5
	sbc h                                            ; $7cb8: $9c
	call c, $0093                                    ; $7cb9: $dc $93 $00
	ld a, d                                          ; $7cbc: $7a
	rst SubAFromDE                                          ; $7cbd: $df
	ld h, a                                          ; $7cbe: $67
	ldh a, [$9b]                                     ; $7cbf: $f0 $9b
	ld a, [hl+]                                      ; $7cc1: $2a
	ld d, l                                          ; $7cc2: $55
	xor d                                            ; $7cc3: $aa
	ld d, l                                          ; $7cc4: $55
	ld e, d                                          ; $7cc5: $5a
	ld d, e                                          ; $7cc6: $53
	sbc l                                            ; $7cc7: $9d
	nop                                              ; $7cc8: $00
	xor e                                            ; $7cc9: $ab
	ld c, e                                          ; $7cca: $4b
	ldh a, [$9e]                                     ; $7ccb: $f0 $9e
	sbc a                                            ; $7ccd: $9f
	ld a, c                                          ; $7cce: $79
	jp c, $0b9b                                      ; $7ccf: $da $9b $0b

	cp $fd                                           ; $7cd2: $fe $fd
	ldh a, [c]                                       ; $7cd4: $f2
	sbc $ff                                          ; $7cd5: $de $ff
	ld a, a                                          ; $7cd7: $7f
	ld a, [$fd7f]                                    ; $7cd8: $fa $7f $fd
	add [hl]                                         ; $7cdb: $86
	inc c                                            ; $7cdc: $0c
	cp $e9                                           ; $7cdd: $fe $e9
	or $49                                           ; $7cdf: $f6 $49
	add d                                            ; $7ce1: $82
	ld c, a                                          ; $7ce2: $4f
	sub e                                            ; $7ce3: $93
	cpl                                              ; $7ce4: $2f
	rst FarCall                                          ; $7ce5: $f7
	sbc $b8                                          ; $7ce6: $de $b8
	pop af                                           ; $7ce8: $f1
	rst SubAFromBC                                          ; $7ce9: $e7
	sbc a                                            ; $7cea: $9f
	dec a                                            ; $7ceb: $3d
	ld [hl], d                                       ; $7cec: $72
	dec de                                           ; $7ced: $1b
	ld [hl], a                                       ; $7cee: $77
	rst JumpTable                                          ; $7cef: $c7
	adc e                                            ; $7cf0: $8b
	inc sp                                           ; $7cf1: $33
	ld d, a                                          ; $7cf2: $57
	sbc e                                            ; $7cf3: $9b
	ld b, e                                          ; $7cf4: $43
	ld [hl], c                                       ; $7cf5: $71
	ld sp, hl                                        ; $7cf6: $f9
	sbc c                                            ; $7cf7: $99
	db $e3                                           ; $7cf8: $e3
	rst SubAFromBC                                          ; $7cf9: $e7
	rst $38                                          ; $7cfa: $ff
	ccf                                              ; $7cfb: $3f
	cpl                                              ; $7cfc: $2f
	add hl, sp                                       ; $7cfd: $39
	call c, $803f                                    ; $7cfe: $dc $3f $80
	rst AddAOntoHL                                          ; $7d01: $ef
	db $e3                                           ; $7d02: $e3
	ld hl, sp-$01                                    ; $7d03: $f8 $ff
	db $eb                                           ; $7d05: $eb
	rst FarCall                                          ; $7d06: $f7
	cp $e0                                           ; $7d07: $fe $e0
	ld e, a                                          ; $7d09: $5f
	rst $38                                          ; $7d0a: $ff
	db $fc                                           ; $7d0b: $fc
	dec a                                            ; $7d0c: $3d
	rra                                              ; $7d0d: $1f
	rst FarCall                                          ; $7d0e: $f7
	ld hl, sp+$1f                                    ; $7d0f: $f8 $1f
	xor a                                            ; $7d11: $af
	rst SubAFromDE                                          ; $7d12: $df
	ld a, h                                          ; $7d13: $7c
	inc bc                                           ; $7d14: $03
	rst $38                                          ; $7d15: $ff
	ld hl, sp+$07                                    ; $7d16: $f8 $07
	rst $38                                          ; $7d18: $ff
	pop af                                           ; $7d19: $f1
	pop bc                                           ; $7d1a: $c1
	ld [hl], c                                       ; $7d1b: $71
	pop af                                           ; $7d1c: $f1
	pop af                                           ; $7d1d: $f1
	add c                                            ; $7d1e: $81
	ld sp, $f199                                     ; $7d1f: $31 $99 $f1
	rst $38                                          ; $7d22: $ff
	rst GetHLinHL                                          ; $7d23: $cf
	ccf                                              ; $7d24: $3f
	rst $38                                          ; $7d25: $ff
	adc a                                            ; $7d26: $8f
	ld a, e                                          ; $7d27: $7b
	call z, $fd7f                                    ; $7d28: $cc $7f $fd
	sub h                                            ; $7d2b: $94
	adc a                                            ; $7d2c: $8f
	bit 6, e                                         ; $7d2d: $cb $73
	dec e                                            ; $7d2f: $1d
	rst $38                                          ; $7d30: $ff
	ld sp, hl                                        ; $7d31: $f9
	add b                                            ; $7d32: $80
	ccf                                              ; $7d33: $3f
	sbc a                                            ; $7d34: $9f
	rst JumpTable                                          ; $7d35: $c7
	pop af                                           ; $7d36: $f1
	halt                                             ; $7d37: $76
	ld h, $98                                        ; $7d38: $26 $98
	ld sp, hl                                        ; $7d3a: $f9
	and $cb                                          ; $7d3b: $e6 $cb
	call nz, $954a                                   ; $7d3d: $c4 $4a $95
	cp b                                             ; $7d40: $b8
	ld l, a                                          ; $7d41: $6f
	ld a, h                                          ; $7d42: $7c
	sbc b                                            ; $7d43: $98
	ld l, [hl]                                       ; $7d44: $6e
	ld b, a                                          ; $7d45: $47
	rst $38                                          ; $7d46: $ff
	rst $38                                          ; $7d47: $ff
	xor d                                            ; $7d48: $aa
	ld d, l                                          ; $7d49: $55
	ld a, [bc]                                       ; $7d4a: $0a
	db $fd                                           ; $7d4b: $fd
	ld h, c                                          ; $7d4c: $61
	ld l, a                                          ; $7d4d: $6f
	sbc l                                            ; $7d4e: $9d
	xor b                                            ; $7d4f: $a8
	ld d, b                                          ; $7d50: $50
	db $fc                                           ; $7d51: $fc
	ld h, l                                          ; $7d52: $65
	ld d, c                                          ; $7d53: $51
	ld a, a                                          ; $7d54: $7f
	ld e, l                                          ; $7d55: $5d
	sbc d                                            ; $7d56: $9a
	ld bc, $190f                                     ; $7d57: $01 $0f $19
	ld de, $7315                                     ; $7d5a: $11 $15 $73
	ldh a, [$df]                                     ; $7d5d: $f0 $df
	cp $9b                                           ; $7d5f: $fe $9b
	ld hl, sp-$56                                    ; $7d61: $f8 $aa

jr_042_7d63:
	rst $38                                          ; $7d63: $ff
	jr nz, jr_042_7d63                               ; $7d64: $20 $fd

	sbc [hl]                                         ; $7d66: $9e
	sbc a                                            ; $7d67: $9f
	ld h, a                                          ; $7d68: $67
	ldh [$73], a                                     ; $7d69: $e0 $73
	ldh a, [$9c]                                     ; $7d6b: $f0 $9c
	inc de                                           ; $7d6d: $13

Call_042_7d6e:
	inc e                                            ; $7d6e: $1c
	add b                                            ; $7d6f: $80
	ld [hl], e                                       ; $7d70: $73
	ldh a, [$9b]                                     ; $7d71: $f0 $9b
	push af                                          ; $7d73: $f5
	ei                                               ; $7d74: $fb
	push af                                          ; $7d75: $f5
	cp l                                             ; $7d76: $bd
	ld a, e                                          ; $7d77: $7b
	ret nc                                           ; $7d78: $d0

	sbc h                                            ; $7d79: $9c
	add c                                            ; $7d7a: $81
	ld bc, $6380                                     ; $7d7b: $01 $80 $63
	ret nz                                           ; $7d7e: $c0

	add b                                            ; $7d7f: $80
	ld e, l                                          ; $7d80: $5d
	rst $38                                          ; $7d81: $ff
	or b                                             ; $7d82: $b0
	cpl                                              ; $7d83: $2f
	ld [hl+], a                                      ; $7d84: $22
	ld c, h                                          ; $7d85: $4c
	xor [hl]                                         ; $7d86: $ae
	ld d, b                                          ; $7d87: $50
	nop                                              ; $7d88: $00
	rst $38                                          ; $7d89: $ff
	rst SubAFromDE                                          ; $7d8a: $df
	rst SubAFromDE                                          ; $7d8b: $df
	adc l                                            ; $7d8c: $8d
	sub a                                            ; $7d8d: $97
	call nc, $5e8e                                   ; $7d8e: $d4 $8e $5e
	rst $38                                          ; $7d91: $ff
	dec c                                            ; $7d92: $0d
	push bc                                          ; $7d93: $c5
	add [hl]                                         ; $7d94: $86
	db $e4                                           ; $7d95: $e4
	ldh [c], a                                       ; $7d96: $e2
	ld l, b                                          ; $7d97: $68
	ld [bc], a                                       ; $7d98: $02
	cp $fe                                           ; $7d99: $fe $fe
	db $fc                                           ; $7d9b: $fc
	ld a, h                                          ; $7d9c: $7c
	cp $3c                                           ; $7d9d: $fe $3c
	sbc [hl]                                         ; $7d9f: $9e
	jr nc, jr_042_7e1b                               ; $7da0: $30 $79

	ld e, l                                          ; $7da2: $5d
	sub [hl]                                         ; $7da3: $96
	nop                                              ; $7da4: $00
	ret nz                                           ; $7da5: $c0

	ld b, b                                          ; $7da6: $40
	nop                                              ; $7da7: $00
	add b                                            ; $7da8: $80
	ld b, b                                          ; $7da9: $40
	ld a, a                                          ; $7daa: $7f
	rst $38                                          ; $7dab: $ff
	ld a, a                                          ; $7dac: $7f
	ld [hl], e                                       ; $7dad: $73
	ld d, c                                          ; $7dae: $51
	ld a, l                                          ; $7daf: $7d
	sub l                                            ; $7db0: $95
	sbc [hl]                                         ; $7db1: $9e
	ld [bc], a                                       ; $7db2: $02
	ld d, a                                          ; $7db3: $57
	add b                                            ; $7db4: $80
	ld a, c                                          ; $7db5: $79
	sub b                                            ; $7db6: $90
	sbc l                                            ; $7db7: $9d
	adc d                                            ; $7db8: $8a
	dec b                                            ; $7db9: $05
	ld d, e                                          ; $7dba: $53
	ldh a, [$99]                                     ; $7dbb: $f0 $99
	rst $38                                          ; $7dbd: $ff
	cp h                                             ; $7dbe: $bc
	ld e, e                                          ; $7dbf: $5b
	inc h                                            ; $7dc0: $24
	nop                                              ; $7dc1: $00
	ld bc, $f07b                                     ; $7dc2: $01 $7b $f0
	ld a, a                                          ; $7dc5: $7f
	ld [hl], e                                       ; $7dc6: $73
	sub b                                            ; $7dc7: $90
	di                                               ; $7dc8: $f3
	rst $38                                          ; $7dc9: $ff
	rst $38                                          ; $7dca: $ff
	rst GetHLinHL                                          ; $7dcb: $cf
	sbc a                                            ; $7dcc: $9f
	ld a, [hl]                                       ; $7dcd: $7e
	sbc h                                            ; $7dce: $9c
	jr jr_042_7de9                                   ; $7dcf: $18 $18

	ld [hl], b                                       ; $7dd1: $70
	pop de                                           ; $7dd2: $d1
	ccf                                              ; $7dd3: $3f
	rst GetHLinHL                                          ; $7dd4: $cf
	rrca                                             ; $7dd5: $0f
	ld l, a                                          ; $7dd6: $6f
	sbc $ef                                          ; $7dd7: $de $ef
	adc d                                            ; $7dd9: $8a
	xor $3e                                          ; $7dda: $ee $3e
	dec de                                           ; $7ddc: $1b
	ld l, $fc                                        ; $7ddd: $2e $fc
	inc hl                                           ; $7ddf: $23
	ld c, $f8                                        ; $7de0: $0e $f8
	nop                                              ; $7de2: $00
	call $f1f4                                       ; $7de3: $cd $f4 $f1
	jp $fcdf                                         ; $7de6: $c3 $df $fc


jr_042_7de9:
	jr nc, jr_042_7deb                               ; $7de9: $30 $00

jr_042_7deb:
	rst SubAFromBC                                          ; $7deb: $e7
	res 6, e                                         ; $7dec: $cb $b3
	jp $07dd                                         ; $7dee: $c3 $dd $07


	ld a, h                                          ; $7df1: $7c
	and d                                            ; $7df2: $a2
	sbc h                                            ; $7df3: $9c
	di                                               ; $7df4: $f3
	jp $de83                                         ; $7df5: $c3 $83 $de


	inc bc                                           ; $7df8: $03
	sub l                                            ; $7df9: $95
	ret nz                                           ; $7dfa: $c0

	rst SubAFromDE                                          ; $7dfb: $df
	rst AddAOntoHL                                          ; $7dfc: $ef
	add sp, -$11                                     ; $7dfd: $e8 $ef

Jump_042_7dff:
	db $ec                                           ; $7dff: $ec
	add sp, -$16                                     ; $7e00: $e8 $ea
	ccf                                              ; $7e02: $3f
	jr c, @-$22                                      ; $7e03: $38 $dc

	rra                                              ; $7e05: $1f
	sub [hl]                                         ; $7e06: $96
	dec e                                            ; $7e07: $1d
	rrca                                             ; $7e08: $0f
	rst $38                                          ; $7e09: $ff
	cp a                                             ; $7e0a: $bf
	nop                                              ; $7e0b: $00
	add b                                            ; $7e0c: $80
	db $10                                           ; $7e0d: $10
	xor b                                            ; $7e0e: $a8
	ld d, h                                          ; $7e0f: $54
	ld [hl], b                                       ; $7e10: $70
	xor [hl]                                         ; $7e11: $ae
	sbc h                                            ; $7e12: $9c

Call_042_7e13:
	rst AddAOntoHL                                          ; $7e13: $ef
	ld d, a                                          ; $7e14: $57
	xor e                                            ; $7e15: $ab
	sbc $fe                                          ; $7e16: $de $fe
	rst SubAFromDE                                          ; $7e18: $df
	adc [hl]                                         ; $7e19: $8e
	sbc d                                            ; $7e1a: $9a

jr_042_7e1b:
	adc a                                            ; $7e1b: $8f
	rrca                                             ; $7e1c: $0f
	adc a                                            ; $7e1d: $8f
	pop af                                           ; $7e1e: $f1
	ld bc, $f1de                                     ; $7e1f: $01 $de $f1
	sbc d                                            ; $7e22: $9a
	di                                               ; $7e23: $f3
	rst FarCall                                          ; $7e24: $f7
	rst FarCall                                          ; $7e25: $f7
	and e                                            ; $7e26: $a3
	rst $38                                          ; $7e27: $ff
	sbc $01                                          ; $7e28: $de $01
	ld a, a                                          ; $7e2a: $7f
	sbc $9e                                          ; $7e2b: $de $9e
	ret nz                                           ; $7e2d: $c0

	reti                                             ; $7e2e: $d9


	rst $38                                          ; $7e2f: $ff
	add b                                            ; $7e30: $80
	or c                                             ; $7e31: $b1
	ld sp, hl                                        ; $7e32: $f9
	cp c                                             ; $7e33: $b9
	db $fd                                           ; $7e34: $fd
	db $fd                                           ; $7e35: $fd
	rst AddAOntoHL                                          ; $7e36: $ef
	rst FarCall                                          ; $7e37: $f7
	rla                                              ; $7e38: $17
	ld c, [hl]                                       ; $7e39: $4e
	ld b, $46                                        ; $7e3a: $06 $46
	ld [bc], a                                       ; $7e3c: $02
	ld [bc], a                                       ; $7e3d: $02
	inc e                                            ; $7e3e: $1c
	inc e                                            ; $7e3f: $1c
	db $fc                                           ; $7e40: $fc
	nop                                              ; $7e41: $00
	nop                                              ; $7e42: $00
	ld [$3c18], sp                                   ; $7e43: $08 $18 $3c
	cp l                                             ; $7e46: $bd
	rst GetHLinHL                                          ; $7e47: $cf
	add a                                            ; $7e48: $87
	rst $38                                          ; $7e49: $ff
	rst $38                                          ; $7e4a: $ff
	rst FarCall                                          ; $7e4b: $f7
	rst SubAFromBC                                          ; $7e4c: $e7
	jp $3242                                         ; $7e4d: $c3 $42 $32


	sub a                                            ; $7e50: $97
	ld a, b                                          ; $7e51: $78
	nop                                              ; $7e52: $00
	ld hl, $6422                                     ; $7e53: $21 $22 $64
	db $e4                                           ; $7e56: $e4
	db $fc                                           ; $7e57: $fc
	db $e4                                           ; $7e58: $e4
	ld a, c                                          ; $7e59: $79
	cp d                                             ; $7e5a: $ba
	sbc l                                            ; $7e5b: $9d
	sbc $9c                                          ; $7e5c: $de $9c
	sbc $1c                                          ; $7e5e: $de $1c
	add l                                            ; $7e60: $85
	ld [bc], a                                       ; $7e61: $02
	ld [hl], h                                       ; $7e62: $74
	jp Jump_042_4884                                 ; $7e63: $c3 $84 $48


	ld h, b                                          ; $7e66: $60
	rra                                              ; $7e67: $1f
	dec h                                            ; $7e68: $25
	nop                                              ; $7e69: $00
	adc c                                            ; $7e6a: $89
	inc b                                            ; $7e6b: $04
	nop                                              ; $7e6c: $00
	inc h                                            ; $7e6d: $24
	db $10                                           ; $7e6e: $10
	ld b, b                                          ; $7e6f: $40
	ld e, a                                          ; $7e70: $5f
	ccf                                              ; $7e71: $3f
	ei                                               ; $7e72: $fb
	inc c                                            ; $7e73: $0c
	ld b, h                                          ; $7e74: $44
	ld b, b                                          ; $7e75: $40
	ret nz                                           ; $7e76: $c0

	ld h, c                                          ; $7e77: $61
	nop                                              ; $7e78: $00
	ld h, b                                          ; $7e79: $60
	inc b                                            ; $7e7a: $04
	db $fd                                           ; $7e7b: $fd
	ld a, e                                          ; $7e7c: $7b
	xor d                                            ; $7e7d: $aa
	adc b                                            ; $7e7e: $88

jr_042_7e7f:
	xor b                                            ; $7e7f: $a8
	jr nc, jr_042_7ebe                               ; $7e80: $30 $3c

	adc l                                            ; $7e82: $8d
	jp nc, Jump_042_4c30                             ; $7e83: $d2 $30 $4c

	nop                                              ; $7e86: $00
	ld c, a                                          ; $7e87: $4f
	ld c, a                                          ; $7e88: $4f
	ld a, a                                          ; $7e89: $7f
	ld [hl], e                                       ; $7e8a: $73
	ld a, l                                          ; $7e8b: $7d
	rst $38                                          ; $7e8c: $ff
	cp e                                             ; $7e8d: $bb
	rst $38                                          ; $7e8e: $ff
	nop                                              ; $7e8f: $00
	ccf                                              ; $7e90: $3f
	ld bc, $6921                                     ; $7e91: $01 $21 $69
	ld c, $10                                        ; $7e94: $0e $10
	ld [hl], a                                       ; $7e96: $77
	ld [hl], d                                       ; $7e97: $72
	rst SubAFromDE                                          ; $7e98: $df
	rst SubAFromDE                                          ; $7e99: $df
	sub h                                            ; $7e9a: $94
	pop af                                           ; $7e9b: $f1
	rst AddAOntoHL                                          ; $7e9c: $ef
	rst $38                                          ; $7e9d: $ff
	add a                                            ; $7e9e: $87
	jr nz, jr_042_7f06                               ; $7e9f: $20 $65

	ld b, d                                          ; $7ea1: $42
	ld c, $48                                        ; $7ea2: $0e $48
	ld [hl], e                                       ; $7ea4: $73
	rlca                                             ; $7ea5: $07
	cp $92                                           ; $7ea6: $fe $92
	add h                                            ; $7ea8: $84
	add b                                            ; $7ea9: $80
	add a                                            ; $7eaa: $87
	adc a                                            ; $7eab: $8f
	rst $38                                          ; $7eac: $ff
	jp nz, $0080                                     ; $7ead: $c2 $80 $00

	inc e                                            ; $7eb0: $1c
	reti                                             ; $7eb1: $d9


	ld [bc], a                                       ; $7eb2: $02
	jp hl                                            ; $7eb3: $e9


	db $ed                                           ; $7eb4: $ed
	ld a, e                                          ; $7eb5: $7b
	ld l, e                                          ; $7eb6: $6b
	sub h                                            ; $7eb7: $94
	nop                                              ; $7eb8: $00
	inc c                                            ; $7eb9: $0c
	db $fd                                           ; $7eba: $fd
	cp $f2                                           ; $7ebb: $fe $f2
	nop                                              ; $7ebd: $00

jr_042_7ebe:
	nop                                              ; $7ebe: $00
	sub b                                            ; $7ebf: $90
	or c                                             ; $7ec0: $b1
	ld [hl], c                                       ; $7ec1: $71

Jump_042_7ec2:
	ld a, e                                          ; $7ec2: $7b
	ld a, d                                          ; $7ec3: $7a
	call nz, Call_042_7f9a                           ; $7ec4: $c4 $9a $7f
	ld l, a                                          ; $7ec7: $6f
	ld c, [hl]                                       ; $7ec8: $4e
	adc [hl]                                         ; $7ec9: $8e
	add h                                            ; $7eca: $84
	db $fc                                           ; $7ecb: $fc
	sbc d                                            ; $7ecc: $9a
	jr nz, jr_042_7e7f                               ; $7ecd: $20 $b0

	or a                                             ; $7ecf: $b7
	rst $38                                          ; $7ed0: $ff
	sbc a                                            ; $7ed1: $9f
	ld [hl], a                                       ; $7ed2: $77
	ret nz                                           ; $7ed3: $c0

	add e                                            ; $7ed4: $83
	ld c, a                                          ; $7ed5: $4f
	ld c, b                                          ; $7ed6: $48
	nop                                              ; $7ed7: $00
	ld h, b                                          ; $7ed8: $60
	nop                                              ; $7ed9: $00
	nop                                              ; $7eda: $00
	inc b                                            ; $7edb: $04
	ld e, h                                          ; $7edc: $5c
	db $dd                                           ; $7edd: $dd
	reti                                             ; $7ede: $d9


	rst AddAOntoHL                                          ; $7edf: $ef
	db $ed                                           ; $7ee0: $ed
	rst $38                                          ; $7ee1: $ff
	rst $38                                          ; $7ee2: $ff
	ei                                               ; $7ee3: $fb
	and e                                            ; $7ee4: $a3
	ld [hl+], a                                      ; $7ee5: $22
	ld h, $1c                                        ; $7ee6: $26 $1c
	ld e, $f6                                        ; $7ee8: $1e $f6
	or $f7                                           ; $7eea: $f6 $f7
	cp $47                                           ; $7eec: $fe $47
	ld b, h                                          ; $7eee: $44
	ld b, h                                          ; $7eef: $44
	ld b, l                                          ; $7ef0: $45
	reti                                             ; $7ef1: $d9


	rst $38                                          ; $7ef2: $ff
	adc c                                            ; $7ef3: $89
	ldh a, [hDisp1_SCX]                                     ; $7ef4: $f0 $91
	ret nc                                           ; $7ef6: $d0

	pop de                                           ; $7ef7: $d1
	db $d3                                           ; $7ef8: $d3
	di                                               ; $7ef9: $f3
	di                                               ; $7efa: $f3
	db $d3                                           ; $7efb: $d3
	cpl                                              ; $7efc: $2f
	ld l, [hl]                                       ; $7efd: $6e

Call_042_7efe:
	cpl                                              ; $7efe: $2f

Call_042_7eff:
	ld l, $2c                                        ; $7eff: $2e $2c
	adc h                                            ; $7f01: $8c
	call z, $002c                                    ; $7f02: $cc $2c $00
	inc b                                            ; $7f05: $04

jr_042_7f06:
	db $fd                                           ; $7f06: $fd
	adc l                                            ; $7f07: $8d
	adc a                                            ; $7f08: $8f
	ld [$94fa], sp                                   ; $7f09: $08 $fa $94
	rla                                              ; $7f0c: $17
	sbc a                                            ; $7f0d: $9f
	rst $38                                          ; $7f0e: $ff
	rst SubAFromBC                                          ; $7f0f: $e7
	rst SubAFromBC                                          ; $7f10: $e7
	or $fe                                           ; $7f11: $f6 $fe
	rst $38                                          ; $7f13: $ff
	ei                                               ; $7f14: $fb
	inc de                                           ; $7f15: $13
	ld e, d                                          ; $7f16: $5a
	db $dd                                           ; $7f17: $dd
	inc bc                                           ; $7f18: $03
	adc [hl]                                         ; $7f19: $8e
	ld [bc], a                                       ; $7f1a: $02
	ld b, $ee                                        ; $7f1b: $06 $ee
	xor a                                            ; $7f1d: $af
	ldh [c], a                                       ; $7f1e: $e2
	db $eb                                           ; $7f1f: $eb
	db $e3                                           ; $7f20: $e3
	ldh [rIE], a                                     ; $7f21: $e0 $ff
	pop hl                                           ; $7f23: $e1
	ldh [rIE], a                                     ; $7f24: $e0 $ff
	dec e                                            ; $7f26: $1d
	inc e                                            ; $7f27: $1c
	inc e                                            ; $7f28: $1c
	nop                                              ; $7f29: $00
	nop                                              ; $7f2a: $00
	ld a, e                                          ; $7f2b: $7b
	db $fd                                           ; $7f2c: $fd
	ld a, [hl]                                       ; $7f2d: $7e
	add $80                                          ; $7f2e: $c6 $80
	xor d                                            ; $7f30: $aa
	nop                                              ; $7f31: $00
	rst $38                                          ; $7f32: $ff
	inc b                                            ; $7f33: $04
	nop                                              ; $7f34: $00
	db $fc                                           ; $7f35: $fc
	ld d, a                                          ; $7f36: $57
	xor e                                            ; $7f37: $ab
	ld d, l                                          ; $7f38: $55
	nop                                              ; $7f39: $00
	nop                                              ; $7f3a: $00
	di                                               ; $7f3b: $f3
	nop                                              ; $7f3c: $00
	inc bc                                           ; $7f3d: $03
	dec bc                                           ; $7f3e: $0b
	dec d                                            ; $7f3f: $15
	inc e                                            ; $7f40: $1c
	xor $34                                          ; $7f41: $ee $34
	ld a, [de]                                       ; $7f43: $1a
	call z, $f443                                    ; $7f44: $cc $43 $f4
	ldh [$e1], a                                     ; $7f47: $e0 $e1
	db $10                                           ; $7f49: $10
	ret nz                                           ; $7f4a: $c0

	db $e4                                           ; $7f4b: $e4
	inc hl                                           ; $7f4c: $23
	add b                                            ; $7f4d: $80
	add b                                            ; $7f4e: $80
	add b                                            ; $7f4f: $80
	ld b, b                                          ; $7f50: $40
	ldh [rHDMA1], a                                  ; $7f51: $e0 $51
	ld de, $f0a1                                     ; $7f53: $11 $a1 $f0
	ld [bc], a                                       ; $7f56: $02
	ld a, a                                          ; $7f57: $7f
	cp a                                             ; $7f58: $bf
	rra                                              ; $7f59: $1f
	ld c, $0e                                        ; $7f5a: $0e $0e
	ld e, [hl]                                       ; $7f5c: $5e
	rrca                                             ; $7f5d: $0f
	inc c                                            ; $7f5e: $0c
	and h                                            ; $7f5f: $a4
	add [hl]                                         ; $7f60: $86
	jr z, jr_042_7f67                                ; $7f61: $28 $04

	nop                                              ; $7f63: $00
	ld b, b                                          ; $7f64: $40
	ld a, [hl-]                                      ; $7f65: $3a
	nop                                              ; $7f66: $00

jr_042_7f67:
	ld d, e                                          ; $7f67: $53
	ld e, c                                          ; $7f68: $59
	sub h                                            ; $7f69: $94
	jr nz, jr_042_7f8c                               ; $7f6a: $20 $20

	and c                                            ; $7f6c: $a1
	inc b                                            ; $7f6d: $04
	ld [$3398], sp                                   ; $7f6e: $08 $98 $33
	add d                                            ; $7f71: $82
	ld a, $3e                                        ; $7f72: $3e $3e
	ld a, b                                          ; $7f74: $78
	rst JumpTable                                          ; $7f75: $c7
	ld b, b                                          ; $7f76: $40
	ld a, e                                          ; $7f77: $7b
	ld d, b                                          ; $7f78: $50
	rst SubAFromDE                                          ; $7f79: $df
	add c                                            ; $7f7a: $81
	ld a, a                                          ; $7f7b: $7f
	dec h                                            ; $7f7c: $25
	ld a, a                                          ; $7f7d: $7f
	jp nc, $fa85                                     ; $7f7e: $d2 $85 $fa

	ld d, b                                          ; $7f81: $50
	rrca                                             ; $7f82: $0f

Call_042_7f83:
	ld a, l                                          ; $7f83: $7d
	cp $fc                                           ; $7f84: $fe $fc
	ld [$67fd], sp                                   ; $7f86: $08 $fd $67
	rst AddAOntoHL                                          ; $7f89: $ef
	pop af                                           ; $7f8a: $f1
	di                                               ; $7f8b: $f3

jr_042_7f8c:
	ld bc, $0303                                     ; $7f8c: $01 $03 $03
	nop                                              ; $7f8f: $00
	ld b, a                                          ; $7f90: $47
	cp e                                             ; $7f91: $bb
	ld a, [hl-]                                      ; $7f92: $3a
	ld a, [de]                                       ; $7f93: $1a
	ld a, [hl-]                                      ; $7f94: $3a
	ld a, [hl-]                                      ; $7f95: $3a
	ld b, $68                                        ; $7f96: $06 $68
	ccf                                              ; $7f98: $3f
	ld e, a                                          ; $7f99: $5f

Call_042_7f9a:
	call c, $92ff                                    ; $7f9a: $dc $ff $92
	add a                                            ; $7f9d: $87
	db $eb                                           ; $7f9e: $eb
	or $f0                                           ; $7f9f: $f6 $f0
	ld hl, sp+$7d                                    ; $7fa1: $f8 $7d
	ld a, l                                          ; $7fa3: $7d
	dec [hl]                                         ; $7fa4: $35
	add e                                            ; $7fa5: $83
	db $f4                                           ; $7fa6: $f4
	ld sp, hl                                        ; $7fa7: $f9
	rst $38                                          ; $7fa8: $ff
	rst AddAOntoHL                                          ; $7fa9: $ef
	sbc $fe                                          ; $7faa: $de $fe
	add h                                            ; $7fac: $84
	ld [hl], b                                       ; $7fad: $70
	rst $38                                          ; $7fae: $ff
	ld e, $70                                        ; $7faf: $1e $70
	cp b                                             ; $7fb1: $b8
	add b                                            ; $7fb2: $80
	ld e, $1f                                        ; $7fb3: $1e $1f
	ret nz                                           ; $7fb5: $c0

	ld bc, $f8e1                                     ; $7fb6: $01 $e1 $f8
	ld [hl], a                                       ; $7fb9: $77
	ld a, a                                          ; $7fba: $7f
	rst $38                                          ; $7fbb: $ff
	nop                                              ; $7fbc: $00
	add b                                            ; $7fbd: $80
	cp d                                             ; $7fbe: $ba
	ld [$181c], a                                    ; $7fbf: $ea $1c $18
	and b                                            ; $7fc2: $a0
	ldh [hDisp0_BGP], a                                     ; $7fc3: $e0 $85
	dec bc                                           ; $7fc5: $0b
	db $fd                                           ; $7fc6: $fd
	dec e                                            ; $7fc7: $1d
	ld a, c                                          ; $7fc8: $79
	ld l, b                                          ; $7fc9: $68
	sub b                                            ; $7fca: $90
	ldh a, [$78]                                     ; $7fcb: $f0 $78
	nop                                              ; $7fcd: $00
	add a                                            ; $7fce: $87
	rst GetHLinHL                                          ; $7fcf: $cf
	sbc a                                            ; $7fd0: $9f
	ccf                                              ; $7fd1: $3f
	ld a, a                                          ; $7fd2: $7f
	ld a, [hl]                                       ; $7fd3: $7e
	ld a, [hl]                                       ; $7fd4: $7e
	ld b, c                                          ; $7fd5: $41
	ld a, e                                          ; $7fd6: $7b
	ccf                                              ; $7fd7: $3f
	ld a, e                                          ; $7fd8: $7b
	ei                                               ; $7fd9: $fb
	ld a, c                                          ; $7fda: $79
	jp nc, $8e80                                     ; $7fdb: $d2 $80 $8e

	ld sp, hl                                        ; $7fde: $f9
	db $fd                                           ; $7fdf: $fd
	db $fd                                           ; $7fe0: $fd
	ld a, [hl]                                       ; $7fe1: $7e
	cp [hl]                                          ; $7fe2: $be
	rst $38                                          ; $7fe3: $ff
	db $fd                                           ; $7fe4: $fd
	jp z, $f2f2                                      ; $7fe5: $ca $f2 $f2

	or [hl]                                          ; $7fe8: $b6
	or a                                             ; $7fe9: $b7
	ld a, a                                          ; $7fea: $7f
	ccf                                              ; $7feb: $3f
	ccf                                              ; $7fec: $3f
	ld sp, $8320                                     ; $7fed: $31 $20 $83
	ld e, [hl]                                       ; $7ff0: $5e
	db $fc                                           ; $7ff1: $fc
	inc b                                            ; $7ff2: $04
	ld h, b                                          ; $7ff3: $60
	ld b, h                                          ; $7ff4: $44
	add h                                            ; $7ff5: $84
	rra                                              ; $7ff6: $1f
	rst $38                                          ; $7ff7: $ff
	ldh [rP1], a                                     ; $7ff8: $e0 $00
	nop                                              ; $7ffa: $00
	add b                                            ; $7ffb: $80
	ld a, a                                          ; $7ffc: $7f
	ld a, [hl]                                       ; $7ffd: $7e
	sub l                                            ; $7ffe: $95

Call_042_7fff:
	rrca                                             ; $7fff: $0f
